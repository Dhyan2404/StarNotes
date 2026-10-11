package com.couchbase.lite;

import androidx.annotation.GuardedBy;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.couchbase.lite.AbstractReplicator;
import com.couchbase.lite.CBLError;
import com.couchbase.lite.Collection;
import com.couchbase.lite.Database;
import com.couchbase.lite.ListenerToken;
import com.couchbase.lite.internal.CouchbaseLiteInternal;
import com.couchbase.lite.internal.ImmutableReplicatorConfiguration;
import com.couchbase.lite.internal.ReplicationCollection;
import com.couchbase.lite.internal.SocketFactory;
import com.couchbase.lite.internal.core.C4DocumentEnded;
import com.couchbase.lite.internal.core.C4Replicator;
import com.couchbase.lite.internal.core.C4ReplicatorStatus;
import com.couchbase.lite.internal.fleece.FLEncoder;
import com.couchbase.lite.internal.listener.Listenable;
import com.couchbase.lite.internal.replicator.BaseReplicator;
import com.couchbase.lite.internal.replicator.CBLCookieStore;
import com.couchbase.lite.internal.sockets.MessageFraming;
import com.couchbase.lite.internal.utils.ClassUtils;
import com.couchbase.lite.internal.utils.InterfaceC2217Fn;
import com.couchbase.lite.internal.utils.Preconditions;
import com.couchbase.lite.internal.utils.StringUtils;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.google.android.material.motion.MotionUtils;
import com.sunia.HTREnginev2.C13807h4;
import com.sunia.HTREnginev2.C13861i4;
import java.net.URI;
import java.security.cert.Certificate;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Deque;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicReference;
import org.xmlresolver.logging.AbstractLogger;

/* loaded from: classes4.dex */
public abstract class AbstractReplicator extends BaseReplicator implements Listenable<ReplicatorChange, ReplicatorChangeListener> {
    private static final LogDomain LOG_DOMAIN = LogDomain.REPLICATOR;

    @GuardedBy("getReplicatorLock()")
    private boolean closed;

    @NonNull
    private final ImmutableReplicatorConfiguration config;
    private volatile String desc;

    @Nullable
    @GuardedBy("getReplicatorLock()")
    private CouchbaseLiteException lastError;

    @NonNull
    private final SocketFactory socketFactory;
    private final AtomicReference<List<Certificate>> serverCertificates = new AtomicReference<>();

    @NonNull
    @GuardedBy("getReplicatorLock()")
    private final Set<ReplicatorChangeListenerToken> changeListeners = new HashSet();

    @NonNull
    @GuardedBy("getReplicatorLock()")
    private final Set<DocumentReplicationListenerToken> docEndedListeners = new HashSet();

    @NonNull
    @GuardedBy("getReplicatorLock()")
    private ReplicatorStatus status = ReplicatorStatus.INIT;

    @NonNull
    @GuardedBy("getReplicatorLock()")
    private final Set<InterfaceC2217Fn.NullableConsumer<CouchbaseLiteException>> pendingResolutions = new HashSet();

    @NonNull
    @GuardedBy("getReplicatorLock()")
    private final Deque<C4ReplicatorStatus> pendingStatusNotifications = new LinkedList();

    /* loaded from: classes4.dex */
    public static class ReplicatorCookieStore implements CBLCookieStore {

        /* renamed from: db */
        @NonNull
        private final Database f16262db;

        public ReplicatorCookieStore(@NonNull Database database) {
            this.f16262db = database;
        }

        @Override // com.couchbase.lite.internal.replicator.CBLCookieStore
        @Nullable
        public String getCookies(@NonNull URI uri) {
            String cookies;
            synchronized (this.f16262db.getDbLock()) {
                cookies = !this.f16262db.isOpenLocked() ? null : this.f16262db.getCookies(uri);
            }
            return cookies;
        }

        @Override // com.couchbase.lite.internal.replicator.CBLCookieStore
        public void setCookies(@NonNull URI uri, @NonNull List<String> list, boolean z) {
            this.f16262db.setCookies(uri, list, z);
        }
    }

    public AbstractReplicator(@NonNull ReplicatorConfiguration replicatorConfiguration) {
        Preconditions.assertNotNull(replicatorConfiguration, AbstractLogger.CONFIG);
        this.config = new ImmutableReplicatorConfiguration(replicatorConfiguration);
        this.socketFactory = new SocketFactory(replicatorConfiguration, new ReplicatorCookieStore(getDatabase()), new InterfaceC2217Fn.Consumer() { // from class: com.sunia.HTREnginev2.e4
            @Override // com.couchbase.lite.internal.utils.InterfaceC2217Fn.Consumer
            public final void accept(Object obj) {
                AbstractReplicator.this.setServerCertificates((List) obj);
            }
        });
    }

    @NonNull
    private String baseDesc() {
        StringBuilder sb = new StringBuilder();
        sb.append("Replicator{");
        sb.append(ClassUtils.objId(this));
        sb.append(MotionUtils.f31761c);
        sb.append(this.config.isPull() ? "<" : "");
        sb.append(this.config.isContinuous() ? "*" : C4921e.f26528e);
        sb.append(this.config.isPush() ? ">" : "");
        sb.append(MotionUtils.f31762d);
        return sb.toString();
    }

    @NonNull
    private String description() {
        return baseDesc() + ", " + getDatabase() + " => " + this.config.getTarget() + "}";
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: documentsEnded, reason: merged with bridge method [inline-methods] */
    public void lambda$dispatchDocumentsEnded$1(@NonNull List<C4DocumentEnded> list, boolean z) {
        com.couchbase.lite.internal.logging.Log.m9907i(LOG_DOMAIN, "%s: documents ended: %d", getId(), Integer.valueOf(list.size()));
        ArrayList arrayList = new ArrayList();
        for (C4DocumentEnded c4DocumentEnded : list) {
            if (c4DocumentEnded.docId == null) {
                com.couchbase.lite.internal.logging.Log.m9899d(LOG_DOMAIN, "%s: DocId is null in document end: ", getId(), c4DocumentEnded);
            } else {
                ReplicationCollection binding = ReplicationCollection.getBinding(c4DocumentEnded.token);
                if (binding == null) {
                    com.couchbase.lite.internal.logging.Log.m9899d(LOG_DOMAIN, "%s: No collection for document end: ", getId(), c4DocumentEnded);
                } else {
                    int errorCode = c4DocumentEnded.getErrorCode();
                    CouchbaseLiteException couchbaseLiteException = errorCode == 0 ? null : CouchbaseLiteException.toCouchbaseLiteException(c4DocumentEnded.getErrorDomain(), errorCode, c4DocumentEnded.getErrorInfo());
                    ReplicatedDocument replicatedDocument = new ReplicatedDocument(binding.scope, binding.name, c4DocumentEnded.docId, c4DocumentEnded.flags, couchbaseLiteException);
                    if (z || !CouchbaseLiteException.isConflict(couchbaseLiteException)) {
                        arrayList.add(replicatedDocument);
                    } else {
                        queueConflictResolution(replicatedDocument, binding.getConflictResolver());
                    }
                }
            }
        }
        if (arrayList.isEmpty()) {
            return;
        }
        notifyDocumentEnded(z, arrayList);
    }

    @NonNull
    private Database getDatabase() {
        Database database = this.config.getDatabase();
        if (database != null) {
            return database;
        }
        throw new CouchbaseLiteError("No database in Replicator");
    }

    @NonNull
    private C4Replicator getOrCreateC4Replicator() throws LiteCoreException {
        synchronized (getDatabase().getDbLock()) {
            if (this.closed) {
                throw new CouchbaseLiteError("Attempt to operate on a closed replicator");
            }
            C4Replicator c4Replicator = getC4Replicator();
            Map<String, Object> connectionOptions = this.config.getConnectionOptions();
            if (c4Replicator != null) {
                c4Replicator.setOptions(FLEncoder.encodeMap(connectionOptions));
                synchronized (getReplicatorLock()) {
                    setProgressLevel();
                }
                return c4Replicator;
            }
            C4Replicator createReplicatorForTarget = createReplicatorForTarget(this.config.getTarget());
            synchronized (getReplicatorLock()) {
                setC4Replicator(createReplicatorForTarget);
                setProgressLevel();
            }
            return createReplicatorForTarget;
        }
    }

    @NonNull
    private Set<String> getPendingDocIds(@NonNull String str, @NonNull String str2) throws CouchbaseLiteException {
        if (this.config.getType().equals(ReplicatorType.PULL)) {
            throw new CouchbaseLiteException("PullOnlyPendingDocIDs", CBLError.Domain.CBLITE, 19);
        }
        verifyCollection(str, str2);
        try {
            return Collections.unmodifiableSet(getOrCreateC4Replicator().getPendingDocIDs(str, str2));
        } catch (LiteCoreException e) {
            throw CouchbaseLiteException.convertException(e, "Failed fetching pending documentIds");
        }
    }

    private boolean isDocPending(@NonNull String str, @NonNull String str2, @NonNull String str3) throws CouchbaseLiteException {
        Preconditions.assertNotNull(str, "document ID");
        if (this.config.getType().equals(ReplicatorType.PULL)) {
            throw new CouchbaseLiteException("PullOnlyPendingDocIDs", CBLError.Domain.CBLITE, 19);
        }
        verifyCollection(str2, str3);
        try {
            return getOrCreateC4Replicator().isDocumentPending(str, str2, str3);
        } catch (LiteCoreException e) {
            throw CouchbaseLiteException.convertException(e, "Failed getting document pending status");
        }
    }

    public static boolean isOffline(@NonNull C4ReplicatorStatus c4ReplicatorStatus) {
        return c4ReplicatorStatus.getActivityLevel() == 1;
    }

    public static boolean isStopped(@NonNull C4ReplicatorStatus c4ReplicatorStatus) {
        return c4ReplicatorStatus.getActivityLevel() == 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean lambda$verifyCollection$3(String str, String str2, Collection collection) {
        return str.equals(collection.getScope().getName()) && str2.equals(collection.getName());
    }

    private void postChange(boolean z, final ReplicatorChange replicatorChange, Set<ReplicatorChangeListenerToken> set) {
        if (z) {
            getDatabase().removeActiveReplicator(this);
        }
        InterfaceC2217Fn.forAll(set, new InterfaceC2217Fn.Consumer() { // from class: com.couchbase.lite.g
            @Override // com.couchbase.lite.internal.utils.InterfaceC2217Fn.Consumer
            public final void accept(Object obj) {
                ((ReplicatorChangeListenerToken) obj).postChange(ReplicatorChange.this);
            }
        });
    }

    private void queueConflictResolution(@NonNull final ReplicatedDocument replicatedDocument, @Nullable final ConflictResolver conflictResolver) {
        final Database database = getDatabase();
        com.couchbase.lite.internal.logging.Log.m9907i(LOG_DOMAIN, "%s: found conflicting version of '%s.%s.%s#%s'", getId(), database.getName(), replicatedDocument.getScope(), replicatedDocument.getCollection(), replicatedDocument.getID());
        final InterfaceC2217Fn.NullableConsumer<CouchbaseLiteException> nullableConsumer = new InterfaceC2217Fn.NullableConsumer<CouchbaseLiteException>() { // from class: com.couchbase.lite.AbstractReplicator.1
            @Override // com.couchbase.lite.internal.utils.InterfaceC2217Fn.NullableConsumer
            public void accept(CouchbaseLiteException couchbaseLiteException) {
                replicatedDocument.setError(couchbaseLiteException);
                AbstractReplicator.this.onConflictResolved(this, replicatedDocument);
            }
        };
        Runnable runnable = new Runnable() { // from class: com.sunia.HTREnginev2.d4
            @Override // java.lang.Runnable
            public final void run() {
                Database.this.resolveReplicationConflict(conflictResolver, replicatedDocument, nullableConsumer);
            }
        };
        synchronized (getReplicatorLock()) {
            runTaskConcurrently(runnable);
            this.pendingResolutions.add(nullableConsumer);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void removeDocumentReplicationListener(@NonNull ListenerToken listenerToken) {
        synchronized (getReplicatorLock()) {
            this.docEndedListeners.remove(listenerToken);
            setProgressLevel();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void removeReplicationListener(@NonNull ListenerToken listenerToken) {
        synchronized (getReplicatorLock()) {
            this.changeListeners.remove(listenerToken);
        }
    }

    @GuardedBy("getReplicatorLock()")
    private void setProgressLevel() {
        C4Replicator c4Replicator = getC4Replicator();
        if (c4Replicator == null) {
            return;
        }
        try {
            c4Replicator.setProgressLevel(this.docEndedListeners.isEmpty() ? 0 : 1);
        } catch (LiteCoreException unused) {
            com.couchbase.lite.internal.logging.Log.m9911w(LOG_DOMAIN, "%s: failed setting progress level", getId());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setServerCertificates(List<Certificate> list) {
        this.serverCertificates.set(list);
    }

    @NonNull
    private String simpleDesc() {
        return baseDesc() + "}";
    }

    @NonNull
    private Deque<String> splitPath(@NonNull String str) {
        ArrayDeque arrayDeque = new ArrayDeque();
        for (String str2 : str.split("/")) {
            if (str2.length() > 0) {
                arrayDeque.addLast(str2);
            }
        }
        return arrayDeque;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: statusChanged, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
    public void lambda$onConflictResolved$2(@NonNull C4ReplicatorStatus c4ReplicatorStatus) {
        synchronized (getReplicatorLock()) {
            com.couchbase.lite.internal.logging.Log.m9907i(LOG_DOMAIN, "%s: status changed: (%d, %d) @%s", getId(), Integer.valueOf(this.pendingResolutions.size()), Integer.valueOf(this.pendingStatusNotifications.size()), c4ReplicatorStatus);
            if (this.config.isContinuous()) {
                handleOffline(this.status.getActivityLevel(), isOffline(c4ReplicatorStatus) ? false : true);
            }
            if (!this.pendingResolutions.isEmpty()) {
                this.pendingStatusNotifications.add(c4ReplicatorStatus);
            }
            if (this.pendingStatusNotifications.isEmpty()) {
                updateStatus(c4ReplicatorStatus);
                postChange(isStopped(c4ReplicatorStatus), new ReplicatorChange((Replicator) this, getStatus()), new HashSet(this.changeListeners));
            }
        }
    }

    @NonNull
    @GuardedBy("getReplicatorLock()")
    private C4ReplicatorStatus updateStatus(@NonNull C4ReplicatorStatus c4ReplicatorStatus) {
        ReplicatorStatus replicatorStatus = this.status;
        this.status = new ReplicatorStatus(c4ReplicatorStatus);
        int errorCode = c4ReplicatorStatus.getErrorCode();
        if (errorCode != 0) {
            this.lastError = this.status.getError();
        }
        com.couchbase.lite.internal.logging.Log.m9907i(LOG_DOMAIN, "%s: state changed(%d): %s => %s(%d/%d)", getId(), Integer.valueOf(errorCode), replicatorStatus.getActivityLevel(), this.status.getActivityLevel(), Long.valueOf(c4ReplicatorStatus.getProgressUnitsCompleted()), Long.valueOf(c4ReplicatorStatus.getProgressUnitsTotal()));
        return new C4ReplicatorStatus(c4ReplicatorStatus);
    }

    private void verifyCollection(final String str, final String str2) {
        if (InterfaceC2217Fn.firstOrNull(this.config.getCollectionConfigs().keySet(), new InterfaceC2217Fn.Predicate() { // from class: com.sunia.HTREnginev2.l4
            @Override // com.couchbase.lite.internal.utils.InterfaceC2217Fn.Predicate
            public final boolean test(Object obj) {
                boolean lambda$verifyCollection$3;
                lambda$verifyCollection$3 = AbstractReplicator.lambda$verifyCollection$3(str, str2, (Collection) obj);
                return lambda$verifyCollection$3;
            }
        }) != null) {
            return;
        }
        throw new IllegalArgumentException("This replicator is not replicating the collection " + str + "." + str2);
    }

    @NonNull
    public ListenerToken addDocumentReplicationListener(@NonNull DocumentReplicationListener documentReplicationListener) {
        Preconditions.assertNotNull(documentReplicationListener, ServiceSpecificExtraArgs.CastExtraArgs.LISTENER);
        return addDocumentReplicationListener(null, documentReplicationListener);
    }

    @Override // java.lang.AutoCloseable
    public void close() {
        ReplicatorStatus replicatorStatus;
        synchronized (getReplicatorLock()) {
            if (this.closed) {
                return;
            }
            this.closed = true;
            ReplicatorActivityLevel activityLevel = this.status.getActivityLevel();
            ReplicatorActivityLevel replicatorActivityLevel = ReplicatorActivityLevel.STOPPED;
            HashSet hashSet = null;
            if (activityLevel != replicatorActivityLevel) {
                HashSet hashSet2 = new HashSet(this.changeListeners);
                replicatorStatus = new ReplicatorStatus(replicatorActivityLevel, this.status.getProgress(), null);
                this.status = replicatorStatus;
                hashSet = hashSet2;
            } else {
                replicatorStatus = null;
            }
            closeC4Replicator();
            com.couchbase.lite.internal.logging.Log.m9907i(LOG_DOMAIN, "Replicator(%s) closed: %s", getId(), this);
            if (hashSet == null || hashSet.isEmpty()) {
                return;
            }
            postChange(true, new ReplicatorChange((Replicator) this, replicatorStatus), hashSet);
        }
    }

    @NonNull
    @GuardedBy("getDbLock()")
    public abstract C4Replicator createReplicatorForTarget(@NonNull Endpoint endpoint) throws LiteCoreException;

    public void dispatchDocumentsEnded(@NonNull final List<C4DocumentEnded> list, final boolean z) {
        this.dispatcher.execute(new Runnable() { // from class: com.sunia.HTREnginev2.m4
            @Override // java.lang.Runnable
            public final void run() {
                AbstractReplicator.this.lambda$dispatchDocumentsEnded$1(list, z);
            }
        });
    }

    public void dispatchStatusChange(@NonNull C4Replicator c4Replicator, @NonNull final C4ReplicatorStatus c4ReplicatorStatus) {
        this.dispatcher.execute(new Runnable() { // from class: com.sunia.HTREnginev2.f4
            @Override // java.lang.Runnable
            public final void run() {
                AbstractReplicator.this.lambda$dispatchStatusChange$0(c4ReplicatorStatus);
            }
        });
    }

    @NonNull
    public ReplicatorConfiguration getConfig() {
        return new ReplicatorConfiguration(this.config);
    }

    @VisibleForTesting
    public int getDocEndListenerCount() {
        int size;
        synchronized (getReplicatorLock()) {
            size = this.docEndedListeners.size();
        }
        return size;
    }

    @Nullable
    @VisibleForTesting
    public CouchbaseLiteException getLastError() {
        return this.lastError;
    }

    @VisibleForTesting
    public int getListenerCount() {
        int size;
        synchronized (getReplicatorLock()) {
            size = this.changeListeners.size() + this.docEndedListeners.size();
        }
        return size;
    }

    @NonNull
    @GuardedBy("getDbLock()")
    public final C4Replicator getLocalC4Replicator(@NonNull Database database) throws LiteCoreException {
        return getDatabase().createLocalReplicator(this.config.getCollectionConfigs(), database, this.config.getType(), this.config.isContinuous(), this.config.getConnectionOptions(), new C13807h4(this), new C13861i4(this), (Replicator) this);
    }

    @NonNull
    @GuardedBy("getDbLock()")
    public final C4Replicator getMessageC4Replicator(@NonNull MessageFraming messageFraming) throws LiteCoreException {
        return getDatabase().createRemoteReplicator(this.config.getCollectionConfigs(), C4Replicator.MESSAGE_SCHEME, null, 0, null, null, messageFraming, this.config.getType(), this.config.isContinuous(), this.config.getConnectionOptions(), new C13807h4(this), new C13861i4(this), (Replicator) this, this.socketFactory);
    }

    @NonNull
    @Deprecated
    public Set<String> getPendingDocumentIds() throws CouchbaseLiteException {
        return getPendingDocIds("_default", "_default");
    }

    @NonNull
    @GuardedBy("getDbLock()")
    public final C4Replicator getRemoteC4Replicator(@NonNull URI uri) throws LiteCoreException {
        int max = Math.max(0, uri.getPort());
        Deque<String> splitPath = splitPath(uri.getPath());
        return getDatabase().createRemoteReplicator(this.config.getCollectionConfigs(), uri.getScheme(), uri.getHost(), max, "/" + StringUtils.join("/", splitPath), splitPath.size() <= 0 ? "" : splitPath.removeLast(), MessageFraming.NO_FRAMING, this.config.getType(), this.config.isContinuous(), this.config.getConnectionOptions(), new C13807h4(this), new C13861i4(this), (Replicator) this, this.socketFactory);
    }

    @VisibleForTesting
    public int getReplicatorListenerCount() {
        int size;
        synchronized (getReplicatorLock()) {
            size = this.changeListeners.size();
        }
        return size;
    }

    @Nullable
    public List<Certificate> getServerCertificates() {
        List<Certificate> list = this.serverCertificates.get();
        if (list == null || list.isEmpty()) {
            return null;
        }
        return new ArrayList(list);
    }

    @NonNull
    @VisibleForTesting
    public SocketFactory getSocketFactory() {
        return this.socketFactory;
    }

    @NonNull
    public ReplicatorActivityLevel getState() {
        ReplicatorActivityLevel activityLevel;
        synchronized (getReplicatorLock()) {
            activityLevel = this.status.getActivityLevel();
        }
        return activityLevel;
    }

    @NonNull
    public ReplicatorStatus getStatus() {
        ReplicatorStatus replicatorStatus;
        synchronized (getReplicatorLock()) {
            replicatorStatus = new ReplicatorStatus(this.status);
        }
        return replicatorStatus;
    }

    public abstract void handleOffline(@NonNull ReplicatorActivityLevel replicatorActivityLevel, boolean z);

    public boolean isClosed() {
        boolean z;
        synchronized (getReplicatorLock()) {
            z = this.closed;
        }
        return z;
    }

    @Deprecated
    public boolean isDocumentPending(@NonNull String str) throws CouchbaseLiteException {
        return isDocPending(str, "_default", "_default");
    }

    public void notifyDocumentEnded(boolean z, List<ReplicatedDocument> list) {
        HashSet hashSet;
        DocumentReplication documentReplication = new DocumentReplication((Replicator) this, z, list);
        com.couchbase.lite.internal.logging.Log.m9907i(LOG_DOMAIN, "%s: document end notification: %s", getId(), documentReplication);
        synchronized (getReplicatorLock()) {
            hashSet = new HashSet(this.docEndedListeners);
        }
        Iterator it2 = hashSet.iterator();
        while (it2.hasNext()) {
            ((DocumentReplicationListenerToken) it2.next()).postChange(documentReplication);
        }
    }

    public void onConflictResolved(InterfaceC2217Fn.NullableConsumer<CouchbaseLiteException> nullableConsumer, @NonNull ReplicatedDocument replicatedDocument) {
        ArrayList<C4ReplicatorStatus> arrayList;
        com.couchbase.lite.internal.logging.Log.m9906i(LOG_DOMAIN, "%s: conflict resolved: %s", replicatedDocument.getError(), getId(), replicatedDocument.getID());
        synchronized (getReplicatorLock()) {
            this.pendingResolutions.remove(nullableConsumer);
            if (this.pendingResolutions.isEmpty()) {
                arrayList = new ArrayList(this.pendingStatusNotifications);
                this.pendingStatusNotifications.clear();
            } else {
                arrayList = null;
            }
        }
        notifyDocumentEnded(false, Arrays.asList(replicatedDocument));
        if (arrayList == null || arrayList.isEmpty()) {
            return;
        }
        for (final C4ReplicatorStatus c4ReplicatorStatus : arrayList) {
            this.dispatcher.execute(new Runnable() { // from class: com.sunia.HTREnginev2.k4
                @Override // java.lang.Runnable
                public final void run() {
                    AbstractReplicator.this.lambda$onConflictResolved$2(c4ReplicatorStatus);
                }
            });
        }
    }

    @Deprecated
    public void removeChangeListener(@NonNull ListenerToken listenerToken) {
        Preconditions.assertNotNull(listenerToken, "token");
        synchronized (getReplicatorLock()) {
            if (listenerToken instanceof ReplicatorChangeListenerToken) {
                removeReplicationListener(listenerToken);
            } else {
                if (listenerToken instanceof DocumentReplicationListenerToken) {
                    removeDocumentReplicationListener(listenerToken);
                    return;
                }
                throw new IllegalArgumentException("unexpected token: " + listenerToken);
            }
        }
    }

    @VisibleForTesting
    public void runTaskConcurrently(@NonNull Runnable runnable) {
        CouchbaseLiteInternal.getExecutionService().getConcurrentExecutor().execute(runnable);
    }

    public void start() {
        start(false);
    }

    public void stop() {
        C4Replicator c4Replicator = getC4Replicator();
        com.couchbase.lite.internal.logging.Log.m9907i(LOG_DOMAIN, "Replicator(%s) stopped: %s", getId(), this);
        if (c4Replicator == null) {
            return;
        }
        c4Replicator.stop();
    }

    @NonNull
    public String toString() {
        if (this.desc == null) {
            this.desc = description();
        }
        return this.desc + " $" + getC4Replicator();
    }

    @NonNull
    public Set<String> getPendingDocumentIds(@NonNull Collection collection) throws CouchbaseLiteException {
        return getPendingDocIds(collection.getScope().getName(), collection.getName());
    }

    public boolean isDocumentPending(@NonNull String str, @NonNull Collection collection) throws CouchbaseLiteException {
        return isDocPending(str, collection.getScope().getName(), collection.getName());
    }

    public void start(boolean z) {
        LogDomain logDomain = LOG_DOMAIN;
        com.couchbase.lite.internal.logging.Log.m9907i(logDomain, "Replicator(%s) starting: %s", getId(), this);
        getDatabase().addActiveReplicator(this);
        try {
            C4Replicator orCreateC4Replicator = getOrCreateC4Replicator();
            synchronized (getReplicatorLock()) {
                orCreateC4Replicator.start(z);
                C4ReplicatorStatus status = orCreateC4Replicator.getStatus();
                if (status == null) {
                    status = new C4ReplicatorStatus(0, 1, 10);
                }
                dispatchStatusChange(orCreateC4Replicator, updateStatus(status));
            }
            com.couchbase.lite.internal.logging.Log.m9899d(logDomain, "Replicator(%s) started: %s", getId(), this);
        } catch (LiteCoreException e) {
            throw new CouchbaseLiteError("Failed to create replicator", e);
        }
    }

    @Override // com.couchbase.lite.internal.listener.Listenable
    @NonNull
    public ListenerToken addChangeListener(@NonNull ReplicatorChangeListener replicatorChangeListener) {
        Preconditions.assertNotNull(replicatorChangeListener, ServiceSpecificExtraArgs.CastExtraArgs.LISTENER);
        return addChangeListener((Executor) null, replicatorChangeListener);
    }

    @NonNull
    public ListenerToken addDocumentReplicationListener(@Nullable Executor executor, @NonNull DocumentReplicationListener documentReplicationListener) {
        Preconditions.assertNotNull(documentReplicationListener, ServiceSpecificExtraArgs.CastExtraArgs.LISTENER);
        DocumentReplicationListenerToken documentReplicationListenerToken = new DocumentReplicationListenerToken(executor, documentReplicationListener, new InterfaceC2217Fn.Consumer() { // from class: com.sunia.HTREnginev2.j4
            @Override // com.couchbase.lite.internal.utils.InterfaceC2217Fn.Consumer
            public final void accept(Object obj) {
                AbstractReplicator.this.removeDocumentReplicationListener((ListenerToken) obj);
            }
        });
        synchronized (getReplicatorLock()) {
            this.docEndedListeners.add(documentReplicationListenerToken);
            setProgressLevel();
        }
        return documentReplicationListenerToken;
    }

    @Override // com.couchbase.lite.internal.listener.Listenable
    @NonNull
    public ListenerToken addChangeListener(@Nullable Executor executor, @NonNull ReplicatorChangeListener replicatorChangeListener) {
        Preconditions.assertNotNull(replicatorChangeListener, ServiceSpecificExtraArgs.CastExtraArgs.LISTENER);
        ReplicatorChangeListenerToken replicatorChangeListenerToken = new ReplicatorChangeListenerToken(executor, replicatorChangeListener, new InterfaceC2217Fn.Consumer() { // from class: com.sunia.HTREnginev2.g4
            @Override // com.couchbase.lite.internal.utils.InterfaceC2217Fn.Consumer
            public final void accept(Object obj) {
                AbstractReplicator.this.removeReplicationListener((ListenerToken) obj);
            }
        });
        synchronized (getReplicatorLock()) {
            this.changeListeners.add(replicatorChangeListenerToken);
        }
        return replicatorChangeListenerToken;
    }
}
