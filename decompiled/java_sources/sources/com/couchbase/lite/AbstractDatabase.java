package com.couchbase.lite;

import androidx.annotation.GuardedBy;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.couchbase.lite.CBLError;
import com.couchbase.lite.CollectionChange;
import com.couchbase.lite.DatabaseChangeListener;
import com.couchbase.lite.internal.CouchbaseLiteInternal;
import com.couchbase.lite.internal.ImmutableDatabaseConfiguration;
import com.couchbase.lite.internal.SocketFactory;
import com.couchbase.lite.internal.core.C4Collection;
import com.couchbase.lite.internal.core.C4Database;
import com.couchbase.lite.internal.core.C4Document;
import com.couchbase.lite.internal.core.C4Query;
import com.couchbase.lite.internal.core.C4Replicator;
import com.couchbase.lite.internal.core.C4Socket;
import com.couchbase.lite.internal.exec.ClientTask;
import com.couchbase.lite.internal.exec.ExecutionService;
import com.couchbase.lite.internal.fleece.FLEncoder;
import com.couchbase.lite.internal.fleece.FLSharedKeys;
import com.couchbase.lite.internal.fleece.FLSliceResult;
import com.couchbase.lite.internal.listener.ChangeListenerToken;
import com.couchbase.lite.internal.listener.Listenable;
import com.couchbase.lite.internal.logging.LogSinksImpl;
import com.couchbase.lite.internal.replicator.ConflictResolutionException;
import com.couchbase.lite.internal.sockets.MessageFraming;
import com.couchbase.lite.internal.utils.ClassUtils;
import com.couchbase.lite.internal.utils.FileUtils;
import com.couchbase.lite.internal.utils.InterfaceC2217Fn;
import com.couchbase.lite.internal.utils.PlatformUtils;
import com.couchbase.lite.internal.utils.Preconditions;
import com.dropbox.core.DbxWebAuth;
import java.io.File;
import java.io.IOException;
import java.net.URI;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import java.util.concurrent.Callable;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import org.xmlresolver.logging.AbstractLogger;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public abstract class AbstractDatabase extends BaseDatabase implements Listenable<DatabaseChange, DatabaseChangeListener>, AutoCloseable {
    private static final int DB_CLOSE_MAX_RETRIES = 5;
    private static final int DB_CLOSE_WAIT_SECS = 6;
    private static final String ERROR_RESOLVER_FAILED = "Conflict resolution failed for document '%s': %s";
    private static final int EXECUTOR_CLOSE_MAX_WAIT_SECS = 5;
    private static final String WARN_WRONG_COLLECTION = "Conflict resolution for document '%s' produced a new document belonging to collection '%s', not the collection into which it would be stored (%s)";
    private static final String WARN_WRONG_ID = "Conflict resolution for a document produced a new document with ID '%s', which does not match the IDs of the conflicting document (%s)";

    @GuardedBy("activeProcesses")
    private final Set<ActiveProcess<?>> activeProcesses;
    private volatile CountDownLatch closeLatch;

    @NonNull
    protected final ImmutableDatabaseConfiguration config;

    @GuardedBy("dbLock")
    private Collection defaultCollection;

    @NonNull
    private final String name;
    private final ExecutionService.CloseableExecutor postExecutor;
    private final ExecutionService.CloseableExecutor queryExecutor;
    private final FLSharedKeys sharedKeys;
    private static final LogDomain DOMAIN = LogDomain.DATABASE;

    @NonNull
    @Deprecated
    public static final Log log = new Log();

    /* loaded from: classes4.dex */
    public static class ActiveProcess<T> {

        @NonNull
        private final T process;

        public ActiveProcess(@NonNull T t) {
            this.process = t;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof ActiveProcess) {
                return this.process.equals(((ActiveProcess) obj).process);
            }
            return false;
        }

        public int hashCode() {
            return this.process.hashCode();
        }

        public boolean isActive() {
            return true;
        }

        public void stop() {
        }

        @NonNull
        public String toString() {
            return this.process.toString();
        }
    }

    public AbstractDatabase(@NonNull String str) throws CouchbaseLiteException {
        this(str, new ImmutableDatabaseConfiguration(null));
    }

    public static void copy(@NonNull File file, @NonNull String str, @NonNull String str2, int i, byte[] bArr) throws CouchbaseLiteException {
        CouchbaseLiteException couchbaseLiteException;
        Preconditions.assertNotNull(file, "path");
        Preconditions.assertNotNull(str, "name");
        try {
            C4Database.copyDb(file.getCanonicalPath(), str2, str, i, bArr);
        } catch (LiteCoreException e) {
            couchbaseLiteException = CouchbaseLiteException.convertException(e);
            FileUtils.eraseFileOrDir(C4Database.getDatabaseFile(new File(str2), str));
            throw couchbaseLiteException;
        } catch (IOException e2) {
            couchbaseLiteException = new CouchbaseLiteException("Failed creating canonical path for " + file, e2);
            FileUtils.eraseFileOrDir(C4Database.getDatabaseFile(new File(str2), str));
            throw couchbaseLiteException;
        }
    }

    public static void delete(@NonNull String str, @Nullable File file) throws CouchbaseLiteException {
        Preconditions.assertNotNull(str, "name");
        if (file == null) {
            file = CouchbaseLiteInternal.getDefaultDbDir();
        }
        if (exists(str, file)) {
            com.couchbase.lite.internal.logging.Log.m9899d(DOMAIN, "Delete database %s in %s", str, file);
            try {
                C4Database.deleteNamedDb(file.getCanonicalPath(), str);
                return;
            } catch (LiteCoreException e) {
                throw CouchbaseLiteException.convertException(e);
            } catch (IOException e2) {
                throw new CouchbaseLiteException("No canonical path for " + file, e2);
            }
        }
        throw new CouchbaseLiteException("Database not found for delete", CBLError.Domain.CBLITE, 7);
    }

    public static boolean exists(@NonNull String str, @Nullable File file) {
        Preconditions.assertNotNull(str, "name");
        if (file == null) {
            file = CouchbaseLiteInternal.getDefaultDbDir();
        }
        return C4Database.getDatabaseFile(file, str).exists();
    }

    private void fixHydrogenBug(@NonNull ImmutableDatabaseConfiguration immutableDatabaseConfiguration, @NonNull String str) throws CouchbaseLiteException {
        String absolutePath = CouchbaseLiteInternal.getDefaultDbDir().getAbsolutePath();
        if (absolutePath.equals(immutableDatabaseConfiguration.getDirectory())) {
            File file = new File(absolutePath);
            File file2 = new File(file, ".couchbase");
            if (exists(str, file2) && !exists(str, file)) {
                try {
                    Database.copy(C4Database.getDatabaseFile(file2, str), str, immutableDatabaseConfiguration);
                } catch (CouchbaseLiteException e) {
                    try {
                        FileUtils.eraseFileOrDir(C4Database.getDatabaseFile(file, str));
                    } catch (Exception unused) {
                    }
                    throw e;
                }
            }
        }
    }

    @NonNull
    private Document getConflictingRevision(@NonNull Collection collection, @NonNull String str) throws CouchbaseLiteException, ConflictResolutionException {
        Document documentWithRevisions = Document.getDocumentWithRevisions(collection, str);
        try {
            if (documentWithRevisions.selectConflictingRevision()) {
                return documentWithRevisions;
            }
            throw new ConflictResolutionException("Unable to select conflicting revision for doc '" + str + "'. Skipping.");
        } catch (LiteCoreException e) {
            throw CouchbaseLiteException.convertException(e);
        }
    }

    @Nullable
    public static Database getDbForCollections(@Nullable Set<Collection> set) {
        if (set == null || set.isEmpty()) {
            return null;
        }
        Database database = set.iterator().next().getDatabase();
        database.verifyCollections(set);
        return database;
    }

    @NonNull
    private Collection getDefaultCollectionLocked() throws CouchbaseLiteException {
        Collection collection = this.defaultCollection;
        if (collection == null) {
            this.defaultCollection = Collection.getDefaultCollection(getDatabase());
        } else if (!collection.isValid()) {
            throw new CouchbaseLiteException("Database " + getName() + " default collection is invalid");
        }
        return this.defaultCollection;
    }

    @NonNull
    private Collection getDefaultCollectionOrThrow() {
        Collection defaultCollectionLocked;
        try {
            synchronized (getDbLock()) {
                assertOpenUnchecked();
                defaultCollectionLocked = getDefaultCollectionLocked();
            }
            return defaultCollectionLocked;
        } catch (CouchbaseLiteException e) {
            throw new CouchbaseLiteError(com.couchbase.lite.internal.logging.Log.lookupStandardMessage("DBClosedOrCollectionDeleted"), e);
        }
    }

    @NonNull
    private C4Database openC4Db() throws CouchbaseLiteException {
        String directory = this.config.getDirectory();
        com.couchbase.lite.internal.logging.Log.m9899d(DOMAIN, "Opening db %s at path %s", this, directory);
        try {
            return C4Database.getDatabase(directory, this.name, this.config.isFullSync(), this.config.isMMapEnabled(), getEncryptionAlgorithm(), getEncryptionKey());
        } catch (LiteCoreException e) {
            int i = e.code;
            if (i == 20) {
                throw new CouchbaseLiteException("The provided encryption key was incorrect.", e, CBLError.Domain.CBLITE, e.code);
            }
            if (i == 11) {
                throw new CouchbaseLiteException("CreateDBDirectoryFailed", e, CBLError.Domain.CBLITE, e.code);
            }
            throw CouchbaseLiteException.convertException(e);
        }
    }

    @Nullable
    private Document resolveConflict(@NonNull ConflictResolver conflictResolver, @NonNull String str, @NonNull Document document, @NonNull Document document2) throws CouchbaseLiteException {
        LogDomain logDomain = DOMAIN;
        com.couchbase.lite.internal.logging.Log.m9899d(logDomain, "Resolving doc '%s' (local=%s and remote=%s) with resolver %s", str, document.getRevisionID(), document2.getRevisionID(), conflictResolver);
        Collection collection = document.getCollection();
        if (collection == null) {
            throw new CouchbaseLiteError("Local doc does not belong to any collection: " + str);
        }
        Document runClientResolver = runClientResolver(conflictResolver, str, document, document2);
        if (runClientResolver == null) {
            return null;
        }
        Collection collection2 = runClientResolver.getCollection();
        if (collection2 == null) {
            runClientResolver.setCollection(collection);
            collection2 = collection;
        }
        if (!collection.equals(collection2)) {
            String format = String.format(WARN_WRONG_COLLECTION, str, collection2, collection);
            com.couchbase.lite.internal.logging.Log.m9908w(logDomain, format);
            throw new CouchbaseLiteException(format, CBLError.Domain.CBLITE, 10);
        }
        if (str.equals(runClientResolver.getId())) {
            return runClientResolver;
        }
        com.couchbase.lite.internal.logging.Log.m9911w(logDomain, WARN_WRONG_ID, runClientResolver.getId(), str);
        return new MutableDocument(str, runClientResolver);
    }

    private void resolveConflictOnce(@Nullable ConflictResolver conflictResolver, @NonNull Collection collection, @NonNull String str) throws CouchbaseLiteException, ConflictResolutionException {
        Document documentWithDeleted;
        Document conflictingRevision;
        Document resolveConflict;
        synchronized (getDbLock()) {
            documentWithDeleted = Document.getDocumentWithDeleted(collection, str);
            conflictingRevision = getConflictingRevision(collection, str);
        }
        if (documentWithDeleted.isDeleted() && conflictingRevision.isDeleted()) {
            resolveConflict = conflictingRevision;
        } else {
            if (conflictResolver == null) {
                conflictResolver = ConflictResolver.DEFAULT;
            }
            resolveConflict = resolveConflict(conflictResolver, str, documentWithDeleted, conflictingRevision);
        }
        synchronized (getDbLock()) {
            beginTransaction();
            try {
                saveResolvedDocument(resolveConflict, documentWithDeleted, conflictingRevision);
                endTransaction(true);
            } catch (Throwable th) {
                endTransaction(false);
                throw th;
            }
        }
    }

    @Nullable
    private Document runClientResolver(@NonNull final ConflictResolver conflictResolver, @NonNull String str, @NonNull Document document, @NonNull Document document2) throws CouchbaseLiteException {
        if (document.isDeleted()) {
            document = null;
        }
        if (document2.isDeleted()) {
            document2 = null;
        }
        final Conflict conflict = new Conflict(document, document2);
        ClientTask clientTask = new ClientTask(new Callable() { // from class: com.couchbase.lite.a
            @Override // java.util.concurrent.Callable
            public final Object call() {
                Document resolve;
                resolve = ConflictResolver.this.resolve(conflict);
                return resolve;
            }
        });
        clientTask.execute();
        Exception failure = clientTask.getFailure();
        if (failure == null) {
            return (Document) clientTask.getResult();
        }
        String format = String.format(ERROR_RESOLVER_FAILED, str, failure.getLocalizedMessage());
        com.couchbase.lite.internal.logging.Log.m9909w(DOMAIN, format, failure);
        throw new CouchbaseLiteException(format, failure, CBLError.Domain.CBLITE, 10);
    }

    @GuardedBy("getDbLock()")
    private void saveResolvedDocument(@Nullable Document document, @NonNull Document document2, @NonNull Document document3) throws CouchbaseLiteException {
        C4Document c4doc;
        if (document == null) {
            if (document3.isDeleted()) {
                document = document3;
            } else if (document2.isDeleted()) {
                document = document2;
            }
        }
        try {
            saveResolvedDocumentWithFlags(document, document2, document3, (document == null || (c4doc = document.getC4doc()) == null) ? 0 : c4doc.getSelectedFlags());
        } catch (LiteCoreException e) {
            throw CouchbaseLiteException.convertException(e);
        }
    }

    @GuardedBy("getDbLock()")
    private void saveResolvedDocumentWithFlags(@Nullable Document document, @NonNull Document document2, @NonNull Document document3, int i) throws LiteCoreException {
        byte[] bArr;
        if (document == document3) {
            bArr = null;
        } else if (document == null || document.isDeleted()) {
            i |= 1;
            FLEncoder sharedFleeceEncoder = getSharedFleeceEncoder();
            try {
                sharedFleeceEncoder.writeValue(Collections.emptyMap());
                byte[] finish = sharedFleeceEncoder.finish();
                sharedFleeceEncoder.close();
                bArr = finish;
            } catch (Throwable th) {
                if (sharedFleeceEncoder != null) {
                    try {
                        sharedFleeceEncoder.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                }
                throw th;
            }
        } else {
            FLSliceResult encode = document.encode();
            try {
                if (C4Document.dictContainsBlobs(encode, this.sharedKeys)) {
                    i |= 8;
                }
                bArr = encode.getContent();
                encode.close();
            } catch (Throwable th3) {
                if (encode != null) {
                    try {
                        encode.close();
                    } catch (Throwable th4) {
                        th3.addSuppressed(th4);
                    }
                }
                throw th3;
            }
        }
        C4Document c4Document = (C4Document) Preconditions.assertNotNull(document2.getC4doc(), "raw doc is null");
        c4Document.resolveConflict(document3.getRevisionID(), document2.getRevisionID(), bArr, i);
        c4Document.save(0);
        com.couchbase.lite.internal.logging.Log.m9899d(DOMAIN, "Conflict resolved as doc '%s' rev %s", document2.getId(), c4Document.getRevID());
    }

    /* JADX WARN: Code restructure failed: missing block: B:28:0x006b, code lost:
    
        throw new com.couchbase.lite.CouchbaseLiteException("Shutdown failed", com.couchbase.lite.CBLError.Domain.CBLITE, 16);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void shutdown(boolean r9, com.couchbase.lite.internal.utils.InterfaceC2217Fn.ConsumerThrows<com.couchbase.lite.internal.core.C4Database, com.couchbase.lite.LiteCoreException> r10) throws com.couchbase.lite.CouchbaseLiteException {
        /*
            r8 = this;
            java.lang.Object r0 = r8.getDbLock()
            monitor-enter(r0)
            boolean r1 = r8.isOpenLocked()     // Catch: java.lang.Throwable -> L9a
            com.couchbase.lite.LogDomain r2 = com.couchbase.lite.AbstractDatabase.DOMAIN     // Catch: java.lang.Throwable -> L9a
            java.lang.String r3 = "Shutdown (%b, %b)"
            r4 = 2
            java.lang.Object[] r4 = new java.lang.Object[r4]     // Catch: java.lang.Throwable -> L9a
            java.lang.Boolean r5 = java.lang.Boolean.valueOf(r9)     // Catch: java.lang.Throwable -> L9a
            r6 = 0
            r4[r6] = r5     // Catch: java.lang.Throwable -> L9a
            java.lang.Boolean r5 = java.lang.Boolean.valueOf(r1)     // Catch: java.lang.Throwable -> L9a
            r7 = 1
            r4[r7] = r5     // Catch: java.lang.Throwable -> L9a
            com.couchbase.lite.internal.logging.Log.m9899d(r2, r3, r4)     // Catch: java.lang.Throwable -> L9a
            if (r9 != 0) goto L27
            if (r1 != 0) goto L27
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L9a
            return
        L27:
            com.couchbase.lite.internal.core.C4Database r9 = r8.getOpenC4DbLocked()     // Catch: java.lang.Throwable -> L9a
            r1 = 0
            r8.setC4DatabaseLocked(r1)     // Catch: java.lang.Throwable -> L9a
            java.util.concurrent.CountDownLatch r2 = new java.util.concurrent.CountDownLatch     // Catch: java.lang.Throwable -> L9a
            r2.<init>(r7)     // Catch: java.lang.Throwable -> L9a
            r8.closeLatch = r2     // Catch: java.lang.Throwable -> L9a
            java.util.Set<com.couchbase.lite.AbstractDatabase$ActiveProcess<?>> r2 = r8.activeProcesses     // Catch: java.lang.Throwable -> L9a
            monitor-enter(r2)     // Catch: java.lang.Throwable -> L9a
            java.util.Set<com.couchbase.lite.AbstractDatabase$ActiveProcess<?>> r3 = r8.activeProcesses     // Catch: java.lang.Throwable -> L97
            boolean r3 = r3.isEmpty()     // Catch: java.lang.Throwable -> L97
            if (r3 != 0) goto L48
            java.util.HashSet r1 = new java.util.HashSet     // Catch: java.lang.Throwable -> L97
            java.util.Set<com.couchbase.lite.AbstractDatabase$ActiveProcess<?>> r3 = r8.activeProcesses     // Catch: java.lang.Throwable -> L97
            r1.<init>(r3)     // Catch: java.lang.Throwable -> L97
        L48:
            monitor-exit(r2)     // Catch: java.lang.Throwable -> L97
            r8.shutdownActiveProcesses(r1)     // Catch: java.lang.Throwable -> L9a
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L9a
        L4d:
            r0 = 5
            r8.verifyActiveProcesses()     // Catch: java.lang.InterruptedException -> L7c
            if (r6 < r0) goto L6c
            java.util.concurrent.CountDownLatch r1 = r8.closeLatch     // Catch: java.lang.InterruptedException -> L7c
            long r1 = r1.getCount()     // Catch: java.lang.InterruptedException -> L7c
            r3 = 0
            int r1 = (r1 > r3 ? 1 : (r1 == r3 ? 0 : -1))
            if (r1 > 0) goto L60
            goto L6c
        L60:
            com.couchbase.lite.CouchbaseLiteException r1 = new com.couchbase.lite.CouchbaseLiteException     // Catch: java.lang.InterruptedException -> L7c
            java.lang.String r2 = "Shutdown failed"
            java.lang.String r3 = "CouchbaseLite"
            r4 = 16
            r1.<init>(r2, r3, r4)     // Catch: java.lang.InterruptedException -> L7c
            throw r1     // Catch: java.lang.InterruptedException -> L7c
        L6c:
            java.util.concurrent.CountDownLatch r1 = r8.closeLatch     // Catch: java.lang.InterruptedException -> L7c
            java.util.concurrent.TimeUnit r2 = java.util.concurrent.TimeUnit.SECONDS     // Catch: java.lang.InterruptedException -> L7c
            r3 = 6
            boolean r1 = r1.await(r3, r2)     // Catch: java.lang.InterruptedException -> L7c
            if (r1 == 0) goto L79
            goto L7c
        L79:
            int r6 = r6 + 1
            goto L4d
        L7c:
            java.lang.Object r1 = r8.getDbLock()
            monitor-enter(r1)
            r10.accept(r9)     // Catch: java.lang.Throwable -> L8d com.couchbase.lite.LiteCoreException -> L8f
            monitor-exit(r1)     // Catch: java.lang.Throwable -> L8d
            com.couchbase.lite.internal.exec.ExecutionService$CloseableExecutor r9 = r8.postExecutor
            com.couchbase.lite.internal.exec.ExecutionService$CloseableExecutor r10 = r8.queryExecutor
            r8.shutdownExecutors(r9, r10, r0)
            return
        L8d:
            r8 = move-exception
            goto L95
        L8f:
            r8 = move-exception
            com.couchbase.lite.CouchbaseLiteException r8 = com.couchbase.lite.CouchbaseLiteException.convertException(r8)     // Catch: java.lang.Throwable -> L8d
            throw r8     // Catch: java.lang.Throwable -> L8d
        L95:
            monitor-exit(r1)     // Catch: java.lang.Throwable -> L8d
            throw r8
        L97:
            r8 = move-exception
            monitor-exit(r2)     // Catch: java.lang.Throwable -> L97
            throw r8     // Catch: java.lang.Throwable -> L9a
        L9a:
            r8 = move-exception
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L9a
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.couchbase.lite.AbstractDatabase.shutdown(boolean, com.couchbase.lite.internal.utils.Fn$ConsumerThrows):void");
    }

    private void shutdownActiveProcesses(java.util.Collection<ActiveProcess<?>> collection) {
        if (collection == null) {
            return;
        }
        Iterator<ActiveProcess<?>> it2 = collection.iterator();
        while (it2.hasNext()) {
            it2.next().stop();
        }
    }

    private void shutdownExecutors(ExecutionService.CloseableExecutor closeableExecutor, ExecutionService.CloseableExecutor closeableExecutor2, int i) {
        if (closeableExecutor != null) {
            closeableExecutor.stop(i, TimeUnit.SECONDS);
        }
        if (closeableExecutor2 != null) {
            closeableExecutor2.stop(i, TimeUnit.SECONDS);
        }
    }

    private void verifyActiveProcesses() {
        HashSet<ActiveProcess> hashSet;
        HashSet hashSet2;
        synchronized (this.activeProcesses) {
            hashSet = new HashSet(this.activeProcesses);
        }
        HashSet hashSet3 = new HashSet();
        for (ActiveProcess activeProcess : hashSet) {
            if (!activeProcess.isActive()) {
                com.couchbase.lite.internal.logging.Log.m9904i(DOMAIN, "Found dead db process: " + activeProcess);
                hashSet3.add(activeProcess);
            }
        }
        if (!hashSet3.isEmpty()) {
            synchronized (this.activeProcesses) {
                this.activeProcesses.removeAll(hashSet3);
            }
        }
        if (this.closeLatch == null) {
            return;
        }
        synchronized (this.activeProcesses) {
            hashSet2 = new HashSet(this.activeProcesses);
        }
        int size = hashSet2.size();
        com.couchbase.lite.internal.logging.Log.m9899d(DOMAIN, "Active processes %s: %d", getName(), Integer.valueOf(size));
        if (size <= 0) {
            this.closeLatch.countDown();
            return;
        }
        Iterator it2 = hashSet2.iterator();
        while (it2.hasNext()) {
            com.couchbase.lite.internal.logging.Log.m9899d(DOMAIN, " processes: %s", (ActiveProcess) it2.next());
        }
    }

    public void addActiveReplicator(@NonNull final AbstractReplicator abstractReplicator) {
        synchronized (getDbLock()) {
            assertOpenUnchecked();
            registerProcess(new ActiveProcess<AbstractReplicator>(abstractReplicator) { // from class: com.couchbase.lite.AbstractDatabase.1
                @Override // com.couchbase.lite.AbstractDatabase.ActiveProcess
                public boolean isActive() {
                    return !ReplicatorActivityLevel.STOPPED.equals(abstractReplicator.getState());
                }

                @Override // com.couchbase.lite.AbstractDatabase.ActiveProcess
                public void stop() {
                    abstractReplicator.stop();
                }
            });
        }
    }

    @NonNull
    public C4Collection addC4Collection(@NonNull String str, @NonNull String str2) throws LiteCoreException {
        C4Collection addCollection;
        synchronized (getDbLock()) {
            addCollection = getOpenC4DbLocked().addCollection(str, str2);
        }
        return addCollection;
    }

    @NonNull
    @Deprecated
    public ListenerToken addDocumentChangeListener(@NonNull String str, @NonNull DocumentChangeListener documentChangeListener) {
        return addDocumentChangeListener(str, null, documentChangeListener);
    }

    @GuardedBy("getDbLock()")
    public void beginTransaction() throws CouchbaseLiteException {
        try {
            getOpenC4DbLocked().beginTransaction();
        } catch (LiteCoreException e) {
            throw CouchbaseLiteException.convertException(e);
        }
    }

    @Override // java.lang.AutoCloseable
    public void close() throws CouchbaseLiteException {
        com.couchbase.lite.internal.logging.Log.m9899d(DOMAIN, "Closing %s at path %s", this, getDbPath());
        shutdown(false, new InterfaceC2217Fn.ConsumerThrows() { // from class: com.sunia.HTREnginev2.x2
            @Override // com.couchbase.lite.internal.utils.InterfaceC2217Fn.ConsumerThrows
            public final void accept(Object obj) {
                ((C4Database) obj).closeDb();
            }
        });
    }

    @NonNull
    public Collection createCollection(@NonNull String str) throws CouchbaseLiteException {
        return createCollection(str, "_default");
    }

    @Deprecated
    public void createIndex(@NonNull String str, @NonNull Index index) throws CouchbaseLiteException {
        getDefaultCollectionOrThrow().createIndexInternal(str, index);
    }

    @NonNull
    public C4Query createJsonQuery(@NonNull String str) throws LiteCoreException {
        C4Query createJsonQuery;
        synchronized (getDbLock()) {
            createJsonQuery = getOpenC4DbLocked().createJsonQuery(str);
        }
        return createJsonQuery;
    }

    @NonNull
    public C4Replicator createLocalReplicator(@NonNull Map<Collection, CollectionConfiguration> map, @NonNull Database database, @NonNull ReplicatorType replicatorType, boolean z, @Nullable Map<String, Object> map2, @NonNull C4Replicator.StatusListener statusListener, @NonNull C4Replicator.DocEndsListener docEndsListener, @NonNull Replicator replicator) throws LiteCoreException {
        C4Replicator createLocalReplicator;
        synchronized (getDbLock()) {
            createLocalReplicator = getOpenC4DbLocked().createLocalReplicator(map, database.getOpenC4DbLocked(), replicatorType, z, map2, statusListener, docEndsListener, replicator);
        }
        return createLocalReplicator;
    }

    @NonNull
    public C4Replicator createMessageEndpointReplicator(@NonNull Set<Collection> set, @NonNull C4Socket c4Socket, @Nullable Map<String, Object> map, @NonNull C4Replicator.StatusListener statusListener) throws LiteCoreException {
        C4Replicator createMessageEndpointReplicator;
        synchronized (getDbLock()) {
            createMessageEndpointReplicator = getOpenC4DbLocked().createMessageEndpointReplicator(set, c4Socket, map, statusListener);
        }
        return createMessageEndpointReplicator;
    }

    @NonNull
    public C4Query createN1qlQuery(@NonNull String str) throws LiteCoreException {
        C4Query createN1qlQuery;
        synchronized (getDbLock()) {
            createN1qlQuery = getOpenC4DbLocked().createN1qlQuery(str);
        }
        return createN1qlQuery;
    }

    @NonNull
    public Query createQuery(@NonNull String str) {
        N1qlQuery n1qlQuery;
        synchronized (getDbLock()) {
            assertOpenUnchecked();
            n1qlQuery = new N1qlQuery(this, str);
        }
        return n1qlQuery;
    }

    @NonNull
    public C4Replicator createRemoteReplicator(@NonNull Map<Collection, CollectionConfiguration> map, @Nullable String str, @Nullable String str2, int i, @Nullable String str3, @Nullable String str4, @NonNull MessageFraming messageFraming, @NonNull ReplicatorType replicatorType, boolean z, @Nullable Map<String, Object> map2, @NonNull C4Replicator.StatusListener statusListener, @NonNull C4Replicator.DocEndsListener docEndsListener, @NonNull Replicator replicator, @Nullable SocketFactory socketFactory) throws LiteCoreException {
        C4Replicator createRemoteReplicator;
        synchronized (getDbLock()) {
            createRemoteReplicator = getOpenC4DbLocked().createRemoteReplicator(map, str, str2, i, str3, str4, messageFraming, replicatorType, z, map2, statusListener, docEndsListener, replicator, socketFactory);
        }
        return createRemoteReplicator;
    }

    public final void deleteCollection(@NonNull String str) throws CouchbaseLiteException {
        deleteCollection(str, "_default");
    }

    @Deprecated
    public void deleteIndex(@NonNull String str) throws CouchbaseLiteException {
        getDefaultCollectionOrThrow().deleteIndex(str);
    }

    @GuardedBy("getDbLock()")
    public void endTransaction(boolean z) throws CouchbaseLiteException {
        try {
            getOpenC4DbLocked().endTransaction(z);
        } catch (LiteCoreException e) {
            throw CouchbaseLiteException.convertException(e);
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AbstractDatabase)) {
            return false;
        }
        AbstractDatabase abstractDatabase = (AbstractDatabase) obj;
        return Objects.equals(getPath(), abstractDatabase.getPath()) && this.name.equals(abstractDatabase.name);
    }

    public void finalize() throws Throwable {
        try {
            shutdownActiveProcesses(this.activeProcesses);
            shutdownExecutors(this.postExecutor, this.queryExecutor, 0);
        } finally {
            super.finalize();
        }
    }

    @Nullable
    public Blob getBlob(@NonNull Map<String, Object> map) {
        synchronized (getDbLock()) {
            assertOpenUnchecked();
        }
        if (!Blob.isBlob(map)) {
            throw new IllegalArgumentException("getBlob arg does not specify a blob");
        }
        Blob blob = new Blob(this, map);
        if (blob.updateSize() < 0) {
            return null;
        }
        return blob;
    }

    @Nullable
    public C4Collection getC4Collection(@NonNull String str, @NonNull String str2) throws LiteCoreException {
        C4Collection collection;
        synchronized (getDbLock()) {
            collection = getOpenC4DbLocked().getCollection(str, str2);
        }
        return collection;
    }

    @Nullable
    public Collection getCollection(@NonNull String str) throws CouchbaseLiteException {
        return getCollection(str, "_default");
    }

    @NonNull
    public final Set<Collection> getCollections() throws CouchbaseLiteException {
        return getCollections("_default");
    }

    @NonNull
    public DatabaseConfiguration getConfig() {
        return new DatabaseConfiguration(this.config);
    }

    @Nullable
    public String getCookies(@NonNull URI uri) {
        String cookies;
        try {
            synchronized (getDbLock()) {
                cookies = getOpenC4DbLocked().getCookies(uri);
            }
            return cookies;
        } catch (LiteCoreException e) {
            com.couchbase.lite.internal.logging.Log.m9909w(DOMAIN, "Cannot get cookies for " + uri, e);
            return null;
        }
    }

    @Deprecated
    public long getCount() {
        long count;
        try {
            synchronized (getDbLock()) {
                count = getDefaultCollectionLocked().getCount();
            }
            return count;
        } catch (CouchbaseLiteException e) {
            throw new CouchbaseLiteError("Failed getting default collection", e);
        }
    }

    @NonNull
    public abstract Database getDatabase();

    @Nullable
    public File getDbFile() {
        String dbPath = getDbPath();
        if (dbPath == null) {
            return null;
        }
        return new File(dbPath);
    }

    @NonNull
    public C4Collection getDefaultC4Collection() throws LiteCoreException {
        C4Collection defaultCollection;
        synchronized (getDbLock()) {
            defaultCollection = getOpenC4DbLocked().getDefaultCollection();
        }
        return defaultCollection;
    }

    @NonNull
    public Collection getDefaultCollection() throws CouchbaseLiteException {
        Collection defaultCollectionLocked;
        synchronized (getDbLock()) {
            assertOpenChecked();
            defaultCollectionLocked = getDefaultCollectionLocked();
        }
        return defaultCollectionLocked;
    }

    @NonNull
    public Set<Collection> getDefaultCollectionAsSet() {
        try {
            Collection defaultCollection = Collection.getDefaultCollection(getDatabase());
            HashSet hashSet = new HashSet();
            hashSet.add(defaultCollection);
            return hashSet;
        } catch (CouchbaseLiteException e) {
            throw new CouchbaseLiteError("Can't get default collection", e);
        }
    }

    @NonNull
    public final Scope getDefaultScope() throws CouchbaseLiteException {
        Scope scope;
        synchronized (getDbLock()) {
            assertOpenChecked();
            scope = new Scope(getDatabase());
        }
        return scope;
    }

    @Nullable
    @Deprecated
    public Document getDocument(@NonNull String str) {
        Document document;
        synchronized (getDbLock()) {
            try {
                try {
                    document = getDefaultCollectionOrThrow().getDocument(str);
                } catch (CouchbaseLiteException e) {
                    com.couchbase.lite.internal.logging.Log.m9906i(LogDomain.DATABASE, "Failed retrieving document: %s", e, str);
                    return null;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return document;
    }

    @Nullable
    @Deprecated
    public Date getDocumentExpiration(@NonNull String str) throws CouchbaseLiteException {
        return getDefaultCollectionOrThrow().getDocumentExpiration(str);
    }

    public abstract int getEncryptionAlgorithm();

    @Nullable
    public abstract byte[] getEncryptionKey();

    @Nullable
    public File getFilePath() {
        String path = getPath();
        if (path == null) {
            return null;
        }
        return new File(path);
    }

    @NonNull
    @Deprecated
    public List<String> getIndexes() throws CouchbaseLiteException {
        return new ArrayList(getDefaultCollectionOrThrow().getIndexes());
    }

    @NonNull
    public String getName() {
        return this.name;
    }

    @Nullable
    public String getPath() {
        String dbPath;
        synchronized (getDbLock()) {
            dbPath = !isOpenLocked() ? null : getDbPath();
        }
        return dbPath;
    }

    @Nullable
    public final Scope getScope(@NonNull String str) throws CouchbaseLiteException {
        Scope scope;
        synchronized (getDbLock()) {
            scope = !getC4DbOrThrowLocked().hasScope(str) ? null : new Scope(str, getDatabase());
        }
        return scope;
    }

    @NonNull
    public final Set<Scope> getScopes() throws CouchbaseLiteException {
        HashSet hashSet;
        synchronized (getDbLock()) {
            try {
                Set<String> scopeNames = getC4DbOrThrowLocked().getScopeNames();
                hashSet = new HashSet(scopeNames.size());
                Iterator<String> it2 = scopeNames.iterator();
                while (it2.hasNext()) {
                    hashSet.add(new Scope(it2.next(), getDatabase()));
                }
            } catch (LiteCoreException e) {
                throw CouchbaseLiteException.convertException(e);
            }
        }
        return hashSet;
    }

    @NonNull
    public FLEncoder getSharedFleeceEncoder() {
        FLEncoder sharedFleeceEncoder;
        synchronized (getDbLock()) {
            sharedFleeceEncoder = getOpenC4DbLocked().getSharedFleeceEncoder();
        }
        return sharedFleeceEncoder;
    }

    @NonNull
    public FLSharedKeys getSharedKeys() {
        return this.sharedKeys;
    }

    @Nullable
    public String getUuid() {
        byte[] bArr;
        synchronized (getDbLock()) {
            if (!isOpenLocked()) {
                return null;
            }
            try {
                bArr = getOpenC4DbLocked().getPublicUUID();
                e = null;
            } catch (LiteCoreException e) {
                e = e;
                bArr = null;
            }
            if (e != null) {
                com.couchbase.lite.internal.logging.Log.m9909w(DOMAIN, "Failed retrieving database UUID", e);
            }
            if (bArr == null) {
                return null;
            }
            return PlatformUtils.getEncoder().encodeToString(bArr);
        }
    }

    public int hashCode() {
        return Objects.hash(this.name);
    }

    public <T extends Exception> void inBatch(@NonNull UnitOfWork<T> unitOfWork) throws CouchbaseLiteException, Exception {
        Preconditions.assertNotNull(unitOfWork, DbxWebAuth.ROLE_WORK);
        synchronized (getDbLock()) {
            C4Database openC4DbLocked = getOpenC4DbLocked();
            try {
                openC4DbLocked.beginTransaction();
                try {
                    unitOfWork.run();
                    openC4DbLocked.endTransaction(true);
                } catch (Throwable th) {
                    openC4DbLocked.endTransaction(false);
                    throw th;
                }
            } catch (LiteCoreException e) {
                throw CouchbaseLiteException.convertException(e);
            }
        }
    }

    public boolean performMaintenance(MaintenanceType maintenanceType) throws CouchbaseLiteException {
        boolean performMaintenance;
        synchronized (getDbLock()) {
            try {
                try {
                    performMaintenance = getOpenC4DbLocked().performMaintenance(maintenanceType);
                } catch (LiteCoreException e) {
                    throw CouchbaseLiteException.convertException(e);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return performMaintenance;
    }

    @Deprecated
    public void purge(@NonNull Document document) throws CouchbaseLiteException {
        getDefaultCollectionOrThrow().purge(document);
    }

    public void registerProcess(@NonNull ActiveProcess<?> activeProcess) {
        synchronized (this.activeProcesses) {
            this.activeProcesses.add(activeProcess);
        }
        com.couchbase.lite.internal.logging.Log.m9899d(DOMAIN, "Added active process(%s): %s", getName(), activeProcess);
    }

    public void removeActiveReplicator(@NonNull AbstractReplicator abstractReplicator) {
        unregisterProcess(abstractReplicator);
    }

    @Deprecated
    public void removeChangeListener(@NonNull ListenerToken listenerToken) {
        Preconditions.assertNotNull(listenerToken, "token");
        if (listenerToken instanceof ChangeListenerToken) {
            Collection defaultCollectionOrThrow = getDefaultCollectionOrThrow();
            if (((ChangeListenerToken) listenerToken).getKey() == null) {
                defaultCollectionOrThrow.removeCollectionChangeListener(listenerToken);
            } else {
                defaultCollectionOrThrow.removeDocumentChangeListener(listenerToken);
            }
        }
    }

    public void resolveReplicationConflict(@Nullable ConflictResolver conflictResolver, @NonNull ReplicatedDocument replicatedDocument, @NonNull InterfaceC2217Fn.NullableConsumer<CouchbaseLiteException> nullableConsumer) {
        CouchbaseLiteException couchbaseLiteException;
        int i = 0;
        while (true) {
            int i2 = i + 1;
            if (i > 13) {
                couchbaseLiteException = new CouchbaseLiteException("Too many attempts to resolve a conflicted document(" + i2 + "): " + replicatedDocument, CBLError.Domain.CBLITE, 10);
                break;
            }
            String scope = replicatedDocument.getScope();
            String collection = replicatedDocument.getCollection();
            try {
                Collection collection2 = Collection.getCollection(getDatabase(), scope, collection);
                if (collection2 != null) {
                    resolveConflictOnce(conflictResolver, collection2, replicatedDocument.getID());
                    nullableConsumer.accept(null);
                    return;
                }
                couchbaseLiteException = new CouchbaseLiteException("Cannot find collection " + getName() + "." + scope + "." + collection, CBLError.Domain.CBLITE, 10);
            } catch (CouchbaseLiteException e) {
                try {
                    if (!CouchbaseLiteException.isConflict(e)) {
                        couchbaseLiteException = e;
                        break;
                    }
                    i = i2;
                } catch (RuntimeException e2) {
                    String message = e2.getMessage();
                    if (message == null) {
                        message = "Conflict resolution failed";
                    }
                    couchbaseLiteException = new CouchbaseLiteException(message, e2, CBLError.Domain.CBLITE, 10);
                }
            } catch (ConflictResolutionException e3) {
                com.couchbase.lite.internal.logging.Log.m9911w(DOMAIN, "Conflict already resolved: %s", e3.getMessage());
                couchbaseLiteException = null;
            }
        }
        nullableConsumer.accept(couchbaseLiteException);
    }

    @Deprecated
    public void save(@NonNull MutableDocument mutableDocument) throws CouchbaseLiteException {
        save(mutableDocument, ConcurrencyControl.LAST_WRITE_WINS);
    }

    public void saveBlob(@NonNull Blob blob) {
        synchronized (getDbLock()) {
            assertOpenUnchecked();
        }
        blob.installInDatabase((Database) this);
    }

    public void setCookies(@NonNull URI uri, @NonNull List<String> list, boolean z) {
        try {
            synchronized (getDbLock()) {
                C4Database openC4DbLocked = getOpenC4DbLocked();
                Iterator<String> it2 = list.iterator();
                while (it2.hasNext()) {
                    openC4DbLocked.setCookie(uri, it2.next(), z);
                }
            }
        } catch (LiteCoreException e) {
            com.couchbase.lite.internal.logging.Log.m9909w(DOMAIN, "Cannot save cookies for " + uri, e);
        }
    }

    @Deprecated
    public void setDocumentExpiration(@NonNull String str, @Nullable Date date) throws CouchbaseLiteException {
        getDefaultCollectionOrThrow().setDocumentExpiration(str, date);
    }

    @NonNull
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("Database{@");
        sb.append(ClassUtils.objId(this));
        sb.append(": '");
        sb.append(this.name);
        sb.append(this.config.isFullSync() ? "!" : "");
        sb.append(this.config.isMMapEnabled() ? "*" : "");
        sb.append("'}");
        return sb.toString();
    }

    public <T> void unregisterProcess(T t) {
        synchronized (this.activeProcesses) {
            this.activeProcesses.remove(new ActiveProcess(t));
        }
        com.couchbase.lite.internal.logging.Log.m9899d(DOMAIN, "Removed active process(%s): %s", getName(), t);
        verifyActiveProcesses();
    }

    public void verifyCollections(@NonNull Set<Collection> set) {
        for (Collection collection : set) {
            if (collection == null) {
                throw new IllegalArgumentException("Collection may not be null");
            }
            if (!equals(collection.getDatabase())) {
                throw new IllegalArgumentException("Collection " + collection + " does not belong to database " + getName());
            }
        }
    }

    public AbstractDatabase(@NonNull String str, @NonNull DatabaseConfiguration databaseConfiguration) throws CouchbaseLiteException {
        this(str, new ImmutableDatabaseConfiguration(databaseConfiguration));
    }

    @NonNull
    @Deprecated
    public ListenerToken addDocumentChangeListener(@NonNull String str, @Nullable Executor executor, @NonNull DocumentChangeListener documentChangeListener) {
        return getDefaultCollectionOrThrow().addDocumentChangeListener(str, executor, documentChangeListener);
    }

    @NonNull
    public final Collection createCollection(@NonNull String str, @Nullable String str2) throws CouchbaseLiteException {
        Collection createCollection;
        if (str2 == null) {
            str2 = "_default";
        }
        synchronized (getDbLock()) {
            assertOpenChecked();
            createCollection = Collection.createCollection(getDatabase(), str2, str);
        }
        return createCollection;
    }

    @Deprecated
    public void createIndex(@NonNull String str, @NonNull IndexConfiguration indexConfiguration) throws CouchbaseLiteException {
        getDefaultCollectionOrThrow().createIndexInternal(str, indexConfiguration);
    }

    public final void deleteCollection(@NonNull String str, @Nullable String str2) throws CouchbaseLiteException {
        if (str2 == null) {
            str2 = "_default";
        }
        synchronized (getDbLock()) {
            try {
                try {
                    getC4DbOrThrowLocked().deleteCollection(str2, str);
                } catch (LiteCoreException e) {
                    throw CouchbaseLiteException.convertException(e);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Nullable
    public final Collection getCollection(@NonNull String str, @Nullable String str2) throws CouchbaseLiteException {
        Collection collection;
        if (str2 == null) {
            str2 = "_default";
        }
        synchronized (getDbLock()) {
            assertOpenChecked();
            collection = Collection.getCollection(getDatabase(), str2, str);
        }
        return collection;
    }

    @NonNull
    public final Set<Collection> getCollections(@Nullable String str) throws CouchbaseLiteException {
        Set<String> collectionNames;
        if (str == null) {
            str = "_default";
        }
        synchronized (getDbLock()) {
            try {
                collectionNames = getC4DbOrThrowLocked().getCollectionNames(str);
            } catch (LiteCoreException e) {
                throw CouchbaseLiteException.convertException(e);
            }
        }
        HashSet hashSet = new HashSet();
        Iterator<String> it2 = collectionNames.iterator();
        while (it2.hasNext()) {
            hashSet.add(getCollection(it2.next(), str));
        }
        return hashSet;
    }

    @Deprecated
    public void purge(@NonNull String str) throws CouchbaseLiteException {
        getDefaultCollectionOrThrow().purge(str);
    }

    @Deprecated
    public boolean save(@NonNull MutableDocument mutableDocument, @NonNull ConcurrencyControl concurrencyControl) throws CouchbaseLiteException {
        return getDefaultCollectionOrThrow().save(mutableDocument, concurrencyControl);
    }

    public AbstractDatabase(@NonNull String str, @NonNull ImmutableDatabaseConfiguration immutableDatabaseConfiguration) throws CouchbaseLiteException {
        Preconditions.assertNotEmpty(str, "db name");
        Preconditions.assertNotNull(immutableDatabaseConfiguration, AbstractLogger.CONFIG);
        CouchbaseLiteInternal.requireInit("Cannot create database");
        this.name = str;
        this.config = immutableDatabaseConfiguration;
        this.postExecutor = CouchbaseLiteInternal.getExecutionService().getSerialExecutor();
        this.queryExecutor = CouchbaseLiteInternal.getExecutionService().getSerialExecutor();
        this.activeProcesses = new HashSet();
        fixHydrogenBug(immutableDatabaseConfiguration, str);
        C4Database openC4Db = openC4Db();
        setC4DatabaseLocked(openC4Db);
        this.sharedKeys = openC4Db.getFLSharedKeys();
        LogSinksImpl.warnNoFileLogSink();
    }

    @Override // com.couchbase.lite.internal.listener.Listenable
    @NonNull
    @Deprecated
    public ListenerToken addChangeListener(@NonNull DatabaseChangeListener databaseChangeListener) {
        return addChangeListener((Executor) null, databaseChangeListener);
    }

    @Deprecated
    public boolean save(@NonNull MutableDocument mutableDocument, @NonNull ConflictHandler conflictHandler) throws CouchbaseLiteException {
        Preconditions.assertNotNull(mutableDocument, "document");
        Preconditions.assertNotNull(conflictHandler, "conflictHandler");
        try {
            return getDefaultCollectionOrThrow().save(mutableDocument, conflictHandler);
        } catch (CouchbaseLiteException e) {
            if (CBLError.Domain.CBLITE.equals(e.getDomain()) && 6 == e.getCode()) {
                throw new CouchbaseLiteError(com.couchbase.lite.internal.logging.Log.lookupStandardMessage("DBClosedOrCollectionDeleted"), e);
            }
            throw e;
        }
    }

    @Override // com.couchbase.lite.internal.listener.Listenable
    @NonNull
    @Deprecated
    public ListenerToken addChangeListener(@Nullable Executor executor, @NonNull final DatabaseChangeListener databaseChangeListener) {
        Collection defaultCollectionOrThrow = getDefaultCollectionOrThrow();
        Objects.requireNonNull(databaseChangeListener);
        return defaultCollectionOrThrow.addChangeListener(executor, new CollectionChangeListener() { // from class: com.sunia.HTREnginev2.y2
            @Override // com.couchbase.lite.ChangeListener
            public final void changed(CollectionChange collectionChange) {
                DatabaseChangeListener.this.changed(collectionChange);
            }
        });
    }

    @NonNull
    public Database copy() throws CouchbaseLiteException {
        return new Database(this.name, this.config);
    }

    public void delete() throws CouchbaseLiteException {
        com.couchbase.lite.internal.logging.Log.m9899d(DOMAIN, "Deleting %s at path %s", this, getDbPath());
        shutdown(true, new InterfaceC2217Fn.ConsumerThrows() { // from class: com.sunia.HTREnginev2.z2
            @Override // com.couchbase.lite.internal.utils.InterfaceC2217Fn.ConsumerThrows
            public final void accept(Object obj) {
                ((C4Database) obj).deleteDb();
            }
        });
    }

    @Deprecated
    public void delete(@NonNull Document document) throws CouchbaseLiteException {
        delete(document, ConcurrencyControl.LAST_WRITE_WINS);
    }

    @Deprecated
    public boolean delete(@NonNull Document document, @NonNull ConcurrencyControl concurrencyControl) throws CouchbaseLiteException {
        return getDefaultCollectionOrThrow().delete(document, concurrencyControl);
    }
}
