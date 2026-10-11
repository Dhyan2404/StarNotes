package com.couchbase.lite;

import androidx.annotation.GuardedBy;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.couchbase.lite.AbstractDatabase;
import com.couchbase.lite.CBLError;
import com.couchbase.lite.internal.CouchbaseLiteInternal;
import com.couchbase.lite.internal.core.C4Query;
import com.couchbase.lite.internal.core.C4QueryEnumerator;
import com.couchbase.lite.internal.core.C4QueryObserver;
import com.couchbase.lite.internal.fleece.FLSliceResult;
import com.couchbase.lite.internal.listener.ChangeListenerToken;
import com.couchbase.lite.internal.listener.Listenable;
import com.couchbase.lite.internal.utils.InterfaceC2217Fn;
import com.couchbase.lite.internal.utils.Preconditions;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.onyx.android.sdk.data.account.bean.DevicePushAction;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Executor;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public abstract class AbstractQuery implements Listenable<QueryChange, QueryChangeListener>, Query {
    protected static final LogDomain DOMAIN = LogDomain.QUERY;

    @GuardedBy(DevicePushAction.LOCK_DEVICE)
    private C4Query c4query;

    @GuardedBy(DevicePushAction.LOCK_DEVICE)
    private Map<String, Integer> columnNames;
    private final LiveQueries liveQueries = new LiveQueries(new Runnable() { // from class: com.couchbase.lite.e
        @Override // java.lang.Runnable
        public final void run() {
            AbstractQuery.this.registerLiveQuery();
        }
    }, new Runnable() { // from class: com.couchbase.lite.f
        @Override // java.lang.Runnable
        public final void run() {
            AbstractQuery.this.unregisterLiveQuery();
        }
    });
    private final Object lock = new Object();

    @Nullable
    private Parameters parameters;

    /* loaded from: classes4.dex */
    public static class LiveQueries {
        private final Map<ListenerToken, C4QueryObserver> liveQueries = new HashMap();

        @NonNull
        private final Runnable onFirst;

        @NonNull
        private final Runnable onLast;

        public LiveQueries(@NonNull Runnable runnable, @NonNull Runnable runnable2) {
            this.onFirst = runnable;
            this.onLast = runnable2;
        }

        @NonNull
        public Set<ListenerToken> getTokens() {
            HashSet hashSet;
            synchronized (this.liveQueries) {
                hashSet = new HashSet(this.liveQueries.keySet());
            }
            return hashSet;
        }

        public boolean isLive() {
            boolean z;
            synchronized (this.liveQueries) {
                z = !this.liveQueries.isEmpty();
            }
            return z;
        }

        @VisibleForTesting
        public int liveCount() {
            int size;
            synchronized (this.liveQueries) {
                size = this.liveQueries.size();
            }
            return size;
        }

        public void put(@NonNull ListenerToken listenerToken, @NonNull C4QueryObserver c4QueryObserver) {
            synchronized (this.liveQueries) {
                if (this.liveQueries.isEmpty()) {
                    this.onFirst.run();
                }
                this.liveQueries.put(listenerToken, c4QueryObserver);
            }
        }

        public void remove(@NonNull ListenerToken listenerToken) {
            synchronized (this.liveQueries) {
                C4QueryObserver remove = this.liveQueries.remove(listenerToken);
                if (remove != null) {
                    remove.close();
                }
                if (this.liveQueries.isEmpty()) {
                    this.onLast.run();
                }
            }
        }

        public void start(@NonNull ChangeListenerToken<QueryChange> changeListenerToken) {
            synchronized (this.liveQueries) {
                C4QueryObserver c4QueryObserver = this.liveQueries.get(changeListenerToken);
                if (c4QueryObserver != null) {
                    c4QueryObserver.enable();
                }
            }
        }

        @VisibleForTesting
        public boolean isLive(@NonNull ListenerToken listenerToken) {
            boolean containsKey;
            synchronized (this.liveQueries) {
                containsKey = this.liveQueries.containsKey(listenerToken);
            }
            return containsKey;
        }
    }

    @NonNull
    @GuardedBy(DevicePushAction.LOCK_DEVICE)
    private C4Query getC4QueryLocked() throws CouchbaseLiteException {
        C4Query c4Query = this.c4query;
        if (c4Query != null) {
            return c4Query;
        }
        AbstractDatabase database = getDatabase();
        if (database == null) {
            throw new CouchbaseLiteException("Attempt to prep query with no database");
        }
        C4Query prepQueryLocked = prepQueryLocked(database);
        int columnCount = prepQueryLocked.getColumnCount();
        HashMap hashMap = new HashMap();
        for (int i = 0; i < columnCount; i++) {
            String columnNameForIndex = prepQueryLocked.getColumnNameForIndex(i);
            if (columnNameForIndex != null) {
                if (hashMap.containsKey(columnNameForIndex)) {
                    throw new CouchbaseLiteException(com.couchbase.lite.internal.logging.Log.formatStandardMessage("DuplicateSelectResultName", columnNameForIndex), CBLError.Domain.CBLITE, 23);
                }
                hashMap.put(columnNameForIndex, Integer.valueOf(i));
            }
        }
        this.columnNames = hashMap;
        this.c4query = prepQueryLocked;
        return prepQueryLocked;
    }

    @NonNull
    private Object getDbLock() {
        AbstractDatabase database = getDatabase();
        if (database != null) {
            return database.getDbLock();
        }
        throw new CouchbaseLiteError("Cannot seize DB lock");
    }

    @NonNull
    private C4QueryObserver getObserver(@NonNull final ChangeListenerToken<QueryChange> changeListenerToken) {
        C4QueryObserver create;
        synchronized (this.lock) {
            try {
                try {
                    create = C4QueryObserver.create(getC4QueryLocked(), new C4QueryObserver.QueryChangeCallback() { // from class: com.couchbase.lite.b
                        @Override // com.couchbase.lite.internal.core.C4QueryObserver.QueryChangeCallback
                        public final void onQueryChanged(C4QueryEnumerator c4QueryEnumerator, LiteCoreException liteCoreException) {
                            AbstractQuery.this.lambda$getObserver$1(changeListenerToken, c4QueryEnumerator, liteCoreException);
                        }
                    });
                } catch (CouchbaseLiteException e) {
                    throw new CouchbaseLiteError("Failed creating query listener", e);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return create;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$addChangeListener$0(ChangeListenerToken changeListenerToken) {
        synchronized (getDbLock()) {
            this.liveQueries.start(changeListenerToken);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: onQueryChanged, reason: merged with bridge method [inline-methods] */
    public void lambda$getObserver$1(@NonNull ChangeListenerToken<QueryChange> changeListenerToken, @Nullable C4QueryEnumerator c4QueryEnumerator, @Nullable LiteCoreException liteCoreException) {
        changeListenerToken.postChange(new QueryChange(this, new ResultSet(this, c4QueryEnumerator, this.columnNames), liteCoreException));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void registerLiveQuery() {
        AbstractDatabase database = getDatabase();
        if (database == null) {
            return;
        }
        database.registerProcess(new AbstractDatabase.ActiveProcess<AbstractQuery>(this) { // from class: com.couchbase.lite.AbstractQuery.1
            @Override // com.couchbase.lite.AbstractDatabase.ActiveProcess
            public boolean isActive() {
                return AbstractQuery.this.liveQueries.isLive();
            }

            @Override // com.couchbase.lite.AbstractDatabase.ActiveProcess
            public void stop() {
                Iterator<ListenerToken> it2 = AbstractQuery.this.liveQueries.getTokens().iterator();
                while (it2.hasNext()) {
                    it2.next().remove();
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void removeListener(@NonNull ListenerToken listenerToken) {
        Preconditions.assertNotNull(listenerToken, "token");
        this.liveQueries.remove(listenerToken);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void unregisterLiveQuery() {
        AbstractDatabase database = getDatabase();
        if (database != null) {
            database.unregisterProcess(this);
        }
    }

    @Override // com.couchbase.lite.Query
    @NonNull
    public ResultSet execute() throws CouchbaseLiteException {
        C4QueryEnumerator run;
        Map<String, Integer> map;
        try {
            if (this.parameters == null) {
                this.parameters = new Parameters();
            }
            FLSliceResult encode = this.parameters.encode();
            synchronized (getDbLock()) {
                synchronized (this.lock) {
                    run = getC4QueryLocked().run(encode);
                    map = this.columnNames;
                }
            }
            return new ResultSet(this, run, new HashMap(map));
        } catch (LiteCoreException e) {
            throw CouchbaseLiteException.convertException(e);
        }
    }

    @Override // com.couchbase.lite.Query
    @NonNull
    public String explain() throws CouchbaseLiteException {
        String explain;
        synchronized (getDbLock()) {
            synchronized (this.lock) {
                explain = getC4QueryLocked().explain();
                if (explain == null) {
                    throw new CouchbaseLiteException("Could not explain query");
                }
            }
        }
        return explain;
    }

    @Nullable
    public abstract AbstractDatabase getDatabase();

    @Override // com.couchbase.lite.Query
    @Nullable
    public Parameters getParameters() {
        return this.parameters;
    }

    @VisibleForTesting
    public boolean isLive(ListenerToken listenerToken) {
        return this.liveQueries.isLive(listenerToken);
    }

    @VisibleForTesting
    public int liveCount() {
        return this.liveQueries.liveCount();
    }

    @NonNull
    @GuardedBy(DevicePushAction.LOCK_DEVICE)
    public abstract C4Query prepQueryLocked(@NonNull AbstractDatabase abstractDatabase) throws CouchbaseLiteException;

    @Override // com.couchbase.lite.Query
    @Deprecated
    public void removeChangeListener(@NonNull ListenerToken listenerToken) {
        removeListener(listenerToken);
    }

    @Override // com.couchbase.lite.Query
    public void setParameters(@Nullable Parameters parameters) throws CouchbaseLiteException {
        synchronized (this.lock) {
            if (parameters != null) {
                parameters = parameters.readonlyCopy();
            }
            this.parameters = parameters;
            if (parameters == null) {
                return;
            }
            try {
                getC4QueryLocked().setParameters(parameters.encode());
            } catch (LiteCoreException e) {
                throw CouchbaseLiteException.convertException(e, "Failed encoding parameters");
            }
        }
    }

    @Override // com.couchbase.lite.internal.listener.Listenable
    @NonNull
    public ListenerToken addChangeListener(@NonNull QueryChangeListener queryChangeListener) {
        return addChangeListener((Executor) null, queryChangeListener);
    }

    @Override // com.couchbase.lite.internal.listener.Listenable
    @NonNull
    public ListenerToken addChangeListener(@Nullable Executor executor, @NonNull QueryChangeListener queryChangeListener) {
        Preconditions.assertNotNull(queryChangeListener, ServiceSpecificExtraArgs.CastExtraArgs.LISTENER);
        final ChangeListenerToken<QueryChange> changeListenerToken = new ChangeListenerToken<>(queryChangeListener, executor, new InterfaceC2217Fn.Consumer() { // from class: com.couchbase.lite.c
            @Override // com.couchbase.lite.internal.utils.InterfaceC2217Fn.Consumer
            public final void accept(Object obj) {
                AbstractQuery.this.removeListener((ListenerToken) obj);
            }
        });
        this.liveQueries.put(changeListenerToken, getObserver(changeListenerToken));
        if (executor == null) {
            executor = CouchbaseLiteInternal.getExecutionService().getDefaultExecutor();
        }
        executor.execute(new Runnable() { // from class: com.couchbase.lite.d
            @Override // java.lang.Runnable
            public final void run() {
                AbstractQuery.this.lambda$addChangeListener$0(changeListenerToken);
            }
        });
        return changeListenerToken;
    }
}
