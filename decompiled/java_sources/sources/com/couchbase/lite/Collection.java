package com.couchbase.lite;

import androidx.annotation.GuardedBy;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.couchbase.lite.CBLError;
import com.couchbase.lite.Collection;
import com.couchbase.lite.Document;
import com.couchbase.lite.ListenerToken;
import com.couchbase.lite.internal.BaseCollection;
import com.couchbase.lite.internal.CouchbaseLiteInternal;
import com.couchbase.lite.internal.core.C4Collection;
import com.couchbase.lite.internal.core.C4CollectionObserver;
import com.couchbase.lite.internal.core.C4Document;
import com.couchbase.lite.internal.core.C4DocumentObserver;
import com.couchbase.lite.internal.core.C4Index;
import com.couchbase.lite.internal.exec.ExecutionService;
import com.couchbase.lite.internal.fleece.FLDict;
import com.couchbase.lite.internal.fleece.FLSliceResult;
import com.couchbase.lite.internal.fleece.FLValue;
import com.couchbase.lite.internal.listener.ChangeListenerToken;
import com.couchbase.lite.internal.listener.Listenable;
import com.couchbase.lite.internal.utils.InterfaceC2217Fn;
import com.couchbase.lite.internal.utils.Preconditions;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.onyx.android.sdk.universal.editor.config.EditorConstants;
import com.sunia.HTREnginev2.k0e;
import edu.umd.cs.findbugs.annotations.SuppressFBWarnings;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import java.util.concurrent.Executor;
import org.mortbay.jetty.HttpStatus;

/* loaded from: classes4.dex */
public final class Collection extends BaseCollection implements Listenable<CollectionChange, CollectionChangeListener>, AutoCloseable {
    public static final String DEFAULT_NAME = "_default";

    @VisibleForTesting
    static final String INDEX_KEY_EXPR = "expr";

    @VisibleForTesting
    static final String INDEX_KEY_LANG = "lang";

    @VisibleForTesting
    static final String INDEX_KEY_NAME = "name";

    @VisibleForTesting
    static final String INDEX_KEY_TYPE = "type";
    static final int MAX_CONFLICT_RESOLUTION_RETRIES = 13;

    @NonNull
    private final C4Collection c4Collection;

    @GuardedBy("getDbLock()")
    private CollectionChangeNotifier collectionChangeNotifier;

    @GuardedBy("getDbLock()")
    private final Map<String, DocumentChangeNotifier> docChangeNotifiers;
    private final ExecutionService.CloseableExecutor postExecutor;

    /* renamed from: com.couchbase.lite.Collection$1 */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C21491 {
        static final /* synthetic */ int[] $SwitchMap$com$couchbase$lite$ConcurrencyControl;

        static {
            int[] iArr = new int[ConcurrencyControl.values().length];
            $SwitchMap$com$couchbase$lite$ConcurrencyControl = iArr;
            try {
                iArr[ConcurrencyControl.FAIL_ON_CONFLICT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$couchbase$lite$ConcurrencyControl[ConcurrencyControl.LAST_WRITE_WINS.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public Collection(@NonNull Database database, @NonNull C4Collection c4Collection) {
        super(database);
        this.docChangeNotifiers = new HashMap();
        this.c4Collection = c4Collection;
        this.postExecutor = CouchbaseLiteInternal.getExecutionService().getSerialExecutor();
    }

    @GuardedBy("dbLock")
    private void assertOpen() throws CouchbaseLiteException {
        if (!this.f16292db.isOpenLocked()) {
            throw new CouchbaseLiteException(com.couchbase.lite.internal.logging.Log.lookupStandardMessage("DBClosedOrCollectionDeleted"), CBLError.Domain.CBLITE, 6);
        }
    }

    @GuardedBy("dbLock")
    private void assertOpenChecked() throws CouchbaseLiteException {
        if (!this.f16292db.isOpenLocked()) {
            throw new CouchbaseLiteException(com.couchbase.lite.internal.logging.Log.lookupStandardMessage("DBClosedOrCollectionDeleted"), CBLError.Domain.CBLITE, 6);
        }
    }

    private void closeCollectionChangeNotifierLocked() {
        CollectionChangeNotifier collectionChangeNotifier = this.collectionChangeNotifier;
        this.collectionChangeNotifier = null;
        if (collectionChangeNotifier != null) {
            collectionChangeNotifier.close();
        }
    }

    @NonNull
    public static Collection createCollection(@NonNull Database database, @NonNull String str, @NonNull String str2) throws CouchbaseLiteException {
        try {
            return new Collection(database, database.addC4Collection(str, str2));
        } catch (LiteCoreException e) {
            throw CouchbaseLiteException.convertException(e);
        }
    }

    @Nullable
    public static Collection getCollection(@NonNull Database database, @NonNull String str, @NonNull String str2) throws CouchbaseLiteException {
        try {
            C4Collection c4Collection = database.getC4Collection(str, str2);
            if (c4Collection == null) {
                return null;
            }
            return new Collection(database, c4Collection);
        } catch (LiteCoreException e) {
            throw CouchbaseLiteException.convertException(e);
        }
    }

    @NonNull
    public static Collection getDefaultCollection(@NonNull Database database) throws CouchbaseLiteException {
        try {
            return new Collection(database, database.getDefaultC4Collection());
        } catch (LiteCoreException e) {
            throw CouchbaseLiteException.convertException(e);
        }
    }

    @NonNull
    @GuardedBy("dbLock")
    private C4Collection getOpenC4CollectionLocked() throws CouchbaseLiteException {
        assertOpenChecked();
        return (C4Collection) Preconditions.assertNotNull(this.c4Collection, "c4collection");
    }

    public /* synthetic */ Object lambda$delete$3(Document document, ConcurrencyControl concurrencyControl) throws CouchbaseLiteException {
        saveLocked(document, null, true, concurrencyControl);
        return null;
    }

    public /* synthetic */ Long lambda$getCount$0() {
        return Long.valueOf(!this.f16292db.isOpenLocked() ? 0L : this.c4Collection.getDocumentCount());
    }

    public /* synthetic */ Document lambda$getDocument$1(String str) throws CouchbaseLiteException {
        return Document.getDocumentOrNull(this, str);
    }

    public /* synthetic */ Date lambda$getDocumentExpiration$7(String str) throws CouchbaseLiteException {
        try {
            long documentExpiration = this.c4Collection.getDocumentExpiration(str);
            if (documentExpiration == 0) {
                return null;
            }
            return new Date(documentExpiration);
        } catch (LiteCoreException e) {
            throw CouchbaseLiteException.convertException(e);
        }
    }

    public /* synthetic */ Object lambda$purge$4(Document document) throws CouchbaseLiteException {
        prepareDocument(document);
        try {
            purgeLocked(document.getId());
        } catch (CouchbaseLiteException e) {
            if (e.getCode() != 7) {
                throw e;
            }
        }
        document.replaceC4Document(null);
        return null;
    }

    public /* synthetic */ Object lambda$purge$5(String str) throws CouchbaseLiteException {
        purgeLocked(str);
        return null;
    }

    public /* synthetic */ Object lambda$save$2(MutableDocument mutableDocument, ConcurrencyControl concurrencyControl) throws CouchbaseLiteException {
        saveLocked(mutableDocument, null, false, concurrencyControl);
        return null;
    }

    public /* synthetic */ Object lambda$setDocumentExpiration$6(String str, Date date) throws CouchbaseLiteException {
        try {
            this.c4Collection.setDocumentExpiration(str, date == null ? 0L : date.getTime());
            return null;
        } catch (LiteCoreException e) {
            throw CouchbaseLiteException.convertException(e);
        }
    }

    @GuardedBy("getDbLock()")
    private void prepareDocument(@NonNull Document document) throws CouchbaseLiteException {
        Collection collection = document.getCollection();
        if (collection == null) {
            document.setCollection(this);
        } else if (!equals(collection)) {
            throw new CouchbaseLiteException("DocumentAnotherDatabase", CBLError.Domain.CBLITE, 9);
        }
    }

    @GuardedBy("getDbLock()")
    private void purgeLocked(@NonNull String str) throws CouchbaseLiteException {
        try {
            this.c4Collection.purgeDocument(str);
        } catch (LiteCoreException e) {
            throw CouchbaseLiteException.convertException(e, "Purge failed");
        }
    }

    @GuardedBy("getDbLock()")
    private boolean saveConflicted(@NonNull Document document, boolean z) throws CouchbaseLiteException {
        C4Document c4Document = getC4Document(document.getId());
        if (c4Document == null) {
            return false;
        }
        if (z && c4Document.isDocDeleted()) {
            document.replaceC4Document(c4Document);
            return false;
        }
        saveInTransaction(document, c4Document, z);
        return true;
    }

    @SuppressFBWarnings({"RCN_REDUNDANT_NULLCHECK_OF_NONNULL_VALUE"})
    @GuardedBy("getDbLock()")
    private void saveInTransaction(@NonNull Document document, @Nullable C4Document c4Document, boolean z) throws CouchbaseLiteException {
        int i;
        C4Document createC4Document;
        FLSliceResult fLSliceResult = null;
        try {
            if (z) {
                i = 1;
            } else {
                try {
                    if (!document.isEmpty()) {
                        fLSliceResult = document.encode();
                        if (C4Document.dictContainsBlobs(fLSliceResult, this.f16292db.getSharedKeys())) {
                            i = 8;
                        }
                    }
                    i = 0;
                } catch (LiteCoreException e) {
                    throw CouchbaseLiteException.convertException(e);
                }
            }
            if (c4Document == null) {
                c4Document = document.getC4doc();
            }
            if (c4Document != null) {
                createC4Document = c4Document.update(fLSliceResult, i);
            } else {
                Collection collection = document.getCollection();
                if (collection == null) {
                    throw new CouchbaseLiteError("Attempt to save document in null collection");
                }
                createC4Document = collection.createC4Document(document.getId(), fLSliceResult, i);
            }
            document.replaceC4Document(createC4Document);
        } finally {
            if (0 != 0) {
                fLSliceResult.close();
            }
        }
    }

    public void scheduleImmediateOnPostExecutor(@NonNull Runnable runnable) {
        CouchbaseLiteInternal.getExecutionService().postDelayedOnExecutor(0L, this.postExecutor, runnable);
    }

    @Nullable
    private <T> T withLock(@NonNull InterfaceC2217Fn.Provider<T> provider) {
        T t;
        synchronized (getDbLock()) {
            t = provider.get();
        }
        return t;
    }

    @Nullable
    private <T> T withLockAndOpenDb(@NonNull InterfaceC2217Fn.ProviderThrows<T, CouchbaseLiteException> providerThrows) throws CouchbaseLiteException {
        T t;
        synchronized (getDbLock()) {
            assertOpen();
            t = providerThrows.get();
        }
        return t;
    }

    @NonNull
    @GuardedBy("getDbLock()")
    /* renamed from: addCollectionChangeListenerLocked */
    public ListenerToken lambda$addChangeListener$8(@Nullable Executor executor, @NonNull CollectionChangeListener collectionChangeListener) {
        if (this.collectionChangeNotifier == null) {
            this.collectionChangeNotifier = new CollectionChangeNotifier(this);
            if (isOpenLocked()) {
                try {
                    this.collectionChangeNotifier.start(new k0e(this));
                } catch (CouchbaseLiteException e) {
                    com.couchbase.lite.internal.logging.Log.m9897d(LogDomain.LISTENER, "Listener failed", e);
                    return ChangeListenerToken.DUMMY;
                }
            }
        }
        return this.collectionChangeNotifier.addChangeListener(executor, collectionChangeListener, new InterfaceC2217Fn.Consumer() { // from class: com.sunia.HTREnginev2.o0e
            @Override // com.couchbase.lite.internal.utils.InterfaceC2217Fn.Consumer
            public final void accept(Object obj) {
                Collection.this.removeCollectionChangeListener((ListenerToken) obj);
            }
        });
    }

    @NonNull
    public ListenerToken addDocumentChangeListener(@NonNull String str, @NonNull DocumentChangeListener documentChangeListener) {
        return addDocumentChangeListener(str, null, documentChangeListener);
    }

    @NonNull
    @GuardedBy("getDbLock()")
    /* renamed from: addDocumentChangeListenerLocked */
    public ListenerToken lambda$addDocumentChangeListener$9(@NonNull String str, @Nullable Executor executor, @NonNull DocumentChangeListener documentChangeListener) {
        DocumentChangeNotifier documentChangeNotifier = this.docChangeNotifiers.get(str);
        if (documentChangeNotifier == null) {
            documentChangeNotifier = new DocumentChangeNotifier(this, str);
            this.docChangeNotifiers.put(str, documentChangeNotifier);
            if (isOpenLocked()) {
                try {
                    documentChangeNotifier.start(new k0e(this));
                } catch (CouchbaseLiteException e) {
                    com.couchbase.lite.internal.logging.Log.m9897d(LogDomain.LISTENER, "Listener failed", e);
                    return ChangeListenerToken.DUMMY;
                }
            }
        }
        ChangeListenerToken<DocumentChange> addChangeListener = documentChangeNotifier.addChangeListener(executor, documentChangeListener, new InterfaceC2217Fn.Consumer() { // from class: com.sunia.HTREnginev2.l0e
            @Override // com.couchbase.lite.internal.utils.InterfaceC2217Fn.Consumer
            public final void accept(Object obj) {
                Collection.this.removeDocumentChangeListener((ListenerToken) obj);
            }
        });
        addChangeListener.setKey(str);
        return addChangeListener;
    }

    @Override // java.lang.AutoCloseable
    public void close() {
        synchronized (getDbLock()) {
            closeCollectionChangeNotifierLocked();
            Iterator<DocumentChangeNotifier> it2 = this.docChangeNotifiers.values().iterator();
            while (it2.hasNext()) {
                it2.next().close();
            }
            this.docChangeNotifiers.clear();
            this.c4Collection.close();
        }
    }

    @NonNull
    public C4Document createC4Document(@NonNull String str, @Nullable FLSliceResult fLSliceResult, int i) throws CouchbaseLiteException {
        C4Document createDocument;
        try {
            synchronized (getDbLock()) {
                createDocument = this.c4Collection.createDocument(str, fLSliceResult, i);
            }
            return createDocument;
        } catch (LiteCoreException e) {
            throw CouchbaseLiteException.convertException(e, "Could not create document: " + str);
        }
    }

    @NonNull
    public C4CollectionObserver createCollectionObserver(@NonNull Runnable runnable) throws CouchbaseLiteException {
        try {
            return this.c4Collection.createCollectionObserver(runnable);
        } catch (LiteCoreException e) {
            throw CouchbaseLiteException.convertException(e, "Invalid collection: it has either been deleted or its database closed");
        }
    }

    @NonNull
    public C4DocumentObserver createDocumentObserver(@NonNull String str, @NonNull Runnable runnable) throws CouchbaseLiteException {
        try {
            return this.c4Collection.createDocumentObserver(str, runnable);
        } catch (LiteCoreException e) {
            throw CouchbaseLiteException.convertException(e, "Invalid collection: it has either been deleted or its database closed");
        }
    }

    @Override // com.couchbase.lite.internal.BaseCollection
    @NonNull
    public Document createFilterDocument(@NonNull String str, @NonNull String str2, @NonNull FLDict fLDict) {
        return new Document(this, str, str2, fLDict);
    }

    public void createIndex(@NonNull String str, @NonNull IndexConfiguration indexConfiguration) throws CouchbaseLiteException {
        createIndexInternal(str, indexConfiguration);
    }

    public void createIndexInternal(@NonNull String str, @NonNull AbstractIndex abstractIndex) throws CouchbaseLiteException {
        Preconditions.assertNotNull(str, "name");
        Preconditions.assertNotNull(abstractIndex, FirebaseAnalytics.Param.INDEX);
        synchronized (getDbLock()) {
            try {
                try {
                    abstractIndex.createIndex(str, this.c4Collection);
                } catch (LiteCoreException e) {
                    throw CouchbaseLiteException.convertException(e);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void delete(@NonNull Document document) throws CouchbaseLiteException {
        delete(document, ConcurrencyControl.LAST_WRITE_WINS);
    }

    public void deleteIndex(@NonNull String str) throws CouchbaseLiteException {
        try {
            this.c4Collection.deleteIndex(str);
        } catch (LiteCoreException e) {
            throw CouchbaseLiteException.convertException(e);
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Collection)) {
            return false;
        }
        Collection collection = (Collection) obj;
        return this.f16292db == collection.f16292db && this.c4Collection.getScope().equals(collection.c4Collection.getScope()) && this.c4Collection.getName().equals(collection.c4Collection.getName());
    }

    @Nullable
    public C4Document getC4Document(@NonNull String str) throws CouchbaseLiteException {
        C4Document document;
        try {
            synchronized (getDbLock()) {
                document = this.c4Collection.getDocument(str);
            }
            return document;
        } catch (LiteCoreException e) {
            throw CouchbaseLiteException.convertException(e, "Failed retrieving document: " + str);
        }
    }

    @Nullable
    public C4Document getC4DocumentWithRevs(@NonNull String str) throws CouchbaseLiteException {
        C4Document documentWithRevs;
        try {
            synchronized (getDbLock()) {
                documentWithRevs = this.c4Collection.getDocumentWithRevs(str);
            }
            return documentWithRevs;
        } catch (LiteCoreException e) {
            throw CouchbaseLiteException.convertException(e, "Failed retrieving document: " + str);
        }
    }

    @Nullable
    @VisibleForTesting
    public C4Index getC4Index(@NonNull String str) throws CouchbaseLiteException {
        C4Index index;
        try {
            synchronized (getDbLock()) {
                this.f16292db.assertOpenChecked();
                index = this.c4Collection.getIndex(str);
            }
            return index;
        } catch (LiteCoreException e) {
            throw CouchbaseLiteException.convertException(e);
        }
    }

    @VisibleForTesting
    public int getCollectionListenerCount() {
        int listenerCount;
        synchronized (getDbLock()) {
            CollectionChangeNotifier collectionChangeNotifier = this.collectionChangeNotifier;
            listenerCount = collectionChangeNotifier == null ? 0 : collectionChangeNotifier.getListenerCount();
        }
        return listenerCount;
    }

    public long getCount() {
        return ((Long) Preconditions.assertNotNull((Long) withLock(new InterfaceC2217Fn.Provider() { // from class: com.sunia.HTREnginev2.p0e
            @Override // com.couchbase.lite.internal.utils.InterfaceC2217Fn.Provider
            public final Object get() {
                Long lambda$getCount$0;
                lambda$getCount$0 = Collection.this.lambda$getCount$0();
                return lambda$getCount$0;
            }
        }), "token")).longValue();
    }

    @NonNull
    public Database getDatabase() {
        return this.f16292db;
    }

    @NonNull
    public Object getDbLock() {
        return this.f16292db.getDbLock();
    }

    @Nullable
    public Document getDocument(@NonNull final String str) throws CouchbaseLiteException {
        return (Document) withLockAndOpenDb(new InterfaceC2217Fn.ProviderThrows() { // from class: com.sunia.HTREnginev2.j0e
            @Override // com.couchbase.lite.internal.utils.InterfaceC2217Fn.ProviderThrows
            public final Object get() {
                Document lambda$getDocument$1;
                lambda$getDocument$1 = Collection.this.lambda$getDocument$1(str);
                return lambda$getDocument$1;
            }
        });
    }

    @Nullable
    public Date getDocumentExpiration(@NonNull final String str) throws CouchbaseLiteException {
        Preconditions.assertNotNull(str, "id");
        return (Date) withLockAndOpenDb(new InterfaceC2217Fn.ProviderThrows() { // from class: com.sunia.HTREnginev2.q0e
            @Override // com.couchbase.lite.internal.utils.InterfaceC2217Fn.ProviderThrows
            public final Object get() {
                Date lambda$getDocumentExpiration$7;
                lambda$getDocumentExpiration$7 = Collection.this.lambda$getDocumentExpiration$7(str);
                return lambda$getDocumentExpiration$7;
            }
        });
    }

    @NonNull
    public String getFullName() {
        return this.c4Collection.getScope() + "." + this.c4Collection.getName();
    }

    @Nullable
    public QueryIndex getIndex(@NonNull String str) throws CouchbaseLiteException {
        C4Index c4Index = getC4Index(str);
        if (c4Index == null) {
            return null;
        }
        return new QueryIndex(this, str, c4Index);
    }

    @NonNull
    @VisibleForTesting
    public List<Map<String, ?>> getIndexInfo() throws CouchbaseLiteException {
        FLValue indexesInfo;
        synchronized (getDbLock()) {
            try {
                indexesInfo = this.c4Collection.getIndexesInfo();
            } catch (LiteCoreException e) {
                throw CouchbaseLiteException.convertException(e);
            }
        }
        ArrayList arrayList = new ArrayList();
        Object asObject = indexesInfo.asObject();
        if (!(asObject instanceof List)) {
            return arrayList;
        }
        for (Object obj : (List) asObject) {
            if (obj instanceof Map) {
                arrayList.add((Map) obj);
            }
        }
        return arrayList;
    }

    @NonNull
    public Set<String> getIndexes() throws CouchbaseLiteException {
        HashSet hashSet = new HashSet();
        List<Map<String, ?>> indexInfo = getIndexInfo();
        if (indexInfo.isEmpty()) {
            return hashSet;
        }
        Iterator<Map<String, ?>> it2 = indexInfo.iterator();
        while (it2.hasNext()) {
            Object obj = it2.next().get("name");
            if (obj instanceof String) {
                hashSet.add((String) obj);
            }
        }
        return hashSet;
    }

    @NonNull
    public String getName() {
        return this.c4Collection.getName();
    }

    @NonNull
    public C4Collection getOpenC4Collection() throws CouchbaseLiteException {
        C4Collection openC4CollectionLocked;
        synchronized (getDbLock()) {
            openC4CollectionLocked = getOpenC4CollectionLocked();
        }
        return openC4CollectionLocked;
    }

    @NonNull
    public Scope getScope() {
        return new Scope(this.c4Collection.getScope(), this.f16292db);
    }

    public int hashCode() {
        return Objects.hash(this.c4Collection.getScope(), this.c4Collection.getName());
    }

    public boolean isDefault() {
        return "_default".equals(getScope().getName()) && "_default".equals(getName());
    }

    @GuardedBy("getDbLock()")
    public boolean isOpenLocked() {
        return this.f16292db.isOpenLocked();
    }

    public boolean isValid() {
        return this.c4Collection.isValid();
    }

    public void purge(@NonNull final Document document) throws CouchbaseLiteException {
        Preconditions.assertNotNull(document, "document");
        if (!document.isNewDocument()) {
            withLockAndOpenDb(new InterfaceC2217Fn.ProviderThrows() { // from class: com.sunia.HTREnginev2.g0e
                @Override // com.couchbase.lite.internal.utils.InterfaceC2217Fn.ProviderThrows
                public final Object get() {
                    Object lambda$purge$4;
                    lambda$purge$4 = Collection.this.lambda$purge$4(document);
                    return lambda$purge$4;
                }
            });
            return;
        }
        throw new CouchbaseLiteException("DocumentNotFound", CBLError.Domain.CBLITE, 7);
    }

    public void removeCollectionChangeListener(@NonNull ListenerToken listenerToken) {
        if (!(listenerToken instanceof ChangeListenerToken)) {
            com.couchbase.lite.internal.logging.Log.m9896d(LogDomain.DATABASE, "Attempt to remove unrecognized db change listener: " + listenerToken);
            return;
        }
        synchronized (getDbLock()) {
            CollectionChangeNotifier collectionChangeNotifier = this.collectionChangeNotifier;
            if (collectionChangeNotifier != null && collectionChangeNotifier.removeChangeListener(listenerToken)) {
                closeCollectionChangeNotifierLocked();
            }
        }
    }

    public void removeDocumentChangeListener(@NonNull ListenerToken listenerToken) {
        if (!(listenerToken instanceof ChangeListenerToken)) {
            com.couchbase.lite.internal.logging.Log.m9896d(LogDomain.DATABASE, "Attempt to remove unrecognized doc change listener: " + listenerToken);
            return;
        }
        String key = ((ChangeListenerToken) listenerToken).getKey();
        synchronized (getDbLock()) {
            DocumentChangeNotifier documentChangeNotifier = this.docChangeNotifiers.get(key);
            if (documentChangeNotifier == null) {
                return;
            }
            if (documentChangeNotifier.removeChangeListener(listenerToken)) {
                documentChangeNotifier.close();
                this.docChangeNotifiers.remove(key);
            }
        }
    }

    public void save(@NonNull MutableDocument mutableDocument) throws CouchbaseLiteException {
        save(mutableDocument, ConcurrencyControl.LAST_WRITE_WINS);
    }

    @GuardedBy("getDbLock()")
    public void saveLocked(@NonNull Document document, @Nullable Document document2, boolean z, @NonNull ConcurrencyControl concurrencyControl) throws CouchbaseLiteException {
        C4Document c4doc;
        Preconditions.assertNotNull(document, "document");
        Preconditions.assertNotNull(concurrencyControl, "concurrencyControl");
        if (z && !document.exists()) {
            throw new CouchbaseLiteException("DeleteDocFailedNotSaved", CBLError.Domain.CBLITE, 7);
        }
        this.f16292db.beginTransaction();
        if (document2 == null) {
            c4doc = null;
        } else {
            try {
                try {
                    c4doc = document2.getC4doc();
                } catch (CouchbaseLiteException e) {
                    if (!CouchbaseLiteException.isConflict(e)) {
                        throw e;
                    }
                    int i = C21491.$SwitchMap$com$couchbase$lite$ConcurrencyControl[concurrencyControl.ordinal()];
                    if (i == 1) {
                        throw new CouchbaseLiteException(HttpStatus.Conflict, CBLError.Domain.CBLITE, 8);
                    }
                    if (i == 2) {
                        this.f16292db.endTransaction(saveConflicted(document, z));
                        return;
                    } else {
                        throw new CouchbaseLiteException("Unrecognized concurrency control: " + concurrencyControl);
                    }
                }
            } catch (Throwable th) {
                this.f16292db.endTransaction(false);
                throw th;
            }
        }
        saveInTransaction(document, c4doc, z);
        this.f16292db.endTransaction(true);
    }

    public boolean saveWithConflictHandler(@NonNull MutableDocument mutableDocument, @NonNull ConflictHandler conflictHandler) throws CouchbaseLiteException {
        Document document = null;
        int i = 0;
        while (true) {
            int i2 = i + 1;
            if (i > 13) {
                throw new CouchbaseLiteException("Too many attempts to resolve a conflicted document: " + i2, CBLError.Domain.CBLITE, 10);
            }
            synchronized (getDbLock()) {
                assertOpen();
                try {
                    saveLocked(mutableDocument, document, false, ConcurrencyControl.FAIL_ON_CONFLICT);
                } catch (CouchbaseLiteException e) {
                    if (!CouchbaseLiteException.isConflict(e)) {
                        throw e;
                    }
                    document = Document.getDocumentWithDeleted(this, mutableDocument.getId());
                    try {
                        if (!conflictHandler.handle(mutableDocument, document.isDeleted() ? null : document)) {
                            return false;
                        }
                        i = i2;
                    } catch (Exception e2) {
                        throw new CouchbaseLiteException("Conflict handler threw an exception", e2, CBLError.Domain.CBLITE, 8);
                    }
                }
            }
            return true;
        }
    }

    public void setDocumentExpiration(@NonNull final String str, @Nullable final Date date) throws CouchbaseLiteException {
        Preconditions.assertNotNull(str, "id");
        withLockAndOpenDb(new InterfaceC2217Fn.ProviderThrows() { // from class: com.sunia.HTREnginev2.i0e
            @Override // com.couchbase.lite.internal.utils.InterfaceC2217Fn.ProviderThrows
            public final Object get() {
                Object lambda$setDocumentExpiration$6;
                lambda$setDocumentExpiration$6 = Collection.this.lambda$setDocumentExpiration$6(str, date);
                return lambda$setDocumentExpiration$6;
            }
        });
    }

    @NonNull
    public String toString() {
        return this.c4Collection.getDb() + "." + getFullName();
    }

    @NonNull
    public ListenerToken addDocumentChangeListener(@NonNull final String str, @Nullable final Executor executor, @NonNull final DocumentChangeListener documentChangeListener) {
        Preconditions.assertNotNull(str, EditorConstants.ARGS_DOC_ID);
        Preconditions.assertNotNull(documentChangeListener, ServiceSpecificExtraArgs.CastExtraArgs.LISTENER);
        return (ListenerToken) Preconditions.assertNotNull((ListenerToken) withLock(new InterfaceC2217Fn.Provider() { // from class: com.sunia.HTREnginev2.h0e
            @Override // com.couchbase.lite.internal.utils.InterfaceC2217Fn.Provider
            public final Object get() {
                ListenerToken lambda$addDocumentChangeListener$9;
                lambda$addDocumentChangeListener$9 = Collection.this.lambda$addDocumentChangeListener$9(str, executor, documentChangeListener);
                return lambda$addDocumentChangeListener$9;
            }
        }), "token");
    }

    public void createIndex(@NonNull String str, @NonNull Index index) throws CouchbaseLiteException {
        createIndexInternal(str, index);
    }

    public boolean delete(@NonNull final Document document, @NonNull final ConcurrencyControl concurrencyControl) throws CouchbaseLiteException {
        try {
            prepareDocument(document);
            withLockAndOpenDb(new InterfaceC2217Fn.ProviderThrows() { // from class: com.sunia.HTREnginev2.r0e
                @Override // com.couchbase.lite.internal.utils.InterfaceC2217Fn.ProviderThrows
                public final Object get() {
                    Object lambda$delete$3;
                    lambda$delete$3 = Collection.this.lambda$delete$3(document, concurrencyControl);
                    return lambda$delete$3;
                }
            });
            return true;
        } catch (CouchbaseLiteException e) {
            if (CouchbaseLiteException.isConflict(e)) {
                return false;
            }
            throw e;
        }
    }

    public boolean save(@NonNull final MutableDocument mutableDocument, @NonNull final ConcurrencyControl concurrencyControl) throws CouchbaseLiteException {
        try {
            prepareDocument(mutableDocument);
            withLockAndOpenDb(new InterfaceC2217Fn.ProviderThrows() { // from class: com.sunia.HTREnginev2.n0e
                @Override // com.couchbase.lite.internal.utils.InterfaceC2217Fn.ProviderThrows
                public final Object get() {
                    Object lambda$save$2;
                    lambda$save$2 = Collection.this.lambda$save$2(mutableDocument, concurrencyControl);
                    return lambda$save$2;
                }
            });
            return true;
        } catch (CouchbaseLiteException e) {
            if (CouchbaseLiteException.isConflict(e)) {
                return false;
            }
            throw e;
        }
    }

    @Override // com.couchbase.lite.internal.listener.Listenable
    @NonNull
    public ListenerToken addChangeListener(@NonNull CollectionChangeListener collectionChangeListener) {
        return addChangeListener((Executor) null, collectionChangeListener);
    }

    @Override // com.couchbase.lite.internal.listener.Listenable
    @NonNull
    public ListenerToken addChangeListener(@Nullable final Executor executor, @NonNull final CollectionChangeListener collectionChangeListener) {
        Preconditions.assertNotNull(collectionChangeListener, ServiceSpecificExtraArgs.CastExtraArgs.LISTENER);
        return (ListenerToken) Preconditions.assertNotNull((ListenerToken) withLock(new InterfaceC2217Fn.Provider() { // from class: com.sunia.HTREnginev2.m0e
            @Override // com.couchbase.lite.internal.utils.InterfaceC2217Fn.Provider
            public final Object get() {
                ListenerToken lambda$addChangeListener$8;
                lambda$addChangeListener$8 = Collection.this.lambda$addChangeListener$8(executor, collectionChangeListener);
                return lambda$addChangeListener$8;
            }
        }), "token");
    }

    public void purge(@NonNull final String str) throws CouchbaseLiteException {
        Preconditions.assertNotNull(str, "id");
        withLockAndOpenDb(new InterfaceC2217Fn.ProviderThrows() { // from class: com.sunia.HTREnginev2.s0e
            @Override // com.couchbase.lite.internal.utils.InterfaceC2217Fn.ProviderThrows
            public final Object get() {
                Object lambda$purge$5;
                lambda$purge$5 = Collection.this.lambda$purge$5(str);
                return lambda$purge$5;
            }
        });
    }

    public boolean save(@NonNull MutableDocument mutableDocument, @NonNull ConflictHandler conflictHandler) throws CouchbaseLiteException {
        Preconditions.assertNotNull(mutableDocument, "document");
        Preconditions.assertNotNull(conflictHandler, "conflictHandler");
        prepareDocument(mutableDocument);
        return saveWithConflictHandler(mutableDocument, conflictHandler);
    }
}
