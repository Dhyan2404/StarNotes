package com.couchbase.lite.internal;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.couchbase.lite.Collection;
import com.couchbase.lite.CollectionConfiguration;
import com.couchbase.lite.ConflictResolver;
import com.couchbase.lite.DocumentFlag;
import com.couchbase.lite.LogDomain;
import com.couchbase.lite.ReplicationFilter;
import com.couchbase.lite.internal.ReplicationCollection;
import com.couchbase.lite.internal.core.C4Constants;
import com.couchbase.lite.internal.core.C4Replicator;
import com.couchbase.lite.internal.core.peers.TaggedWeakPeerBinding;
import com.couchbase.lite.internal.exec.ClientTask;
import com.couchbase.lite.internal.fleece.FLDict;
import com.couchbase.lite.internal.fleece.FLEncoder;
import com.couchbase.lite.internal.logging.Log;
import com.google.android.material.motion.MotionUtils;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Callable;

/* loaded from: classes4.dex */
public final class ReplicationCollection implements AutoCloseable {

    @Nullable
    public final C4Filter c4PullFilter;

    @Nullable
    public final C4Filter c4PushFilter;

    @NonNull
    public final String name;

    @Nullable
    @VisibleForTesting
    final byte[] options;

    @Nullable
    public final ConflictResolver resolver;

    @NonNull
    public final String scope;
    public final long token;
    private static final LogDomain LOG_DOMAIN = LogDomain.REPLICATOR;

    @NonNull
    @VisibleForTesting
    static final TaggedWeakPeerBinding<ReplicationCollection> BOUND_COLLECTIONS = new TaggedWeakPeerBinding<>();

    @FunctionalInterface
    /* loaded from: classes4.dex */
    public interface C4Filter {
        boolean test(@NonNull String str, @NonNull String str2, long j, int i);
    }

    /* loaded from: classes4.dex */
    public static final class CollectionFilter implements C4Filter {

        @NonNull
        private final BaseCollection collection;

        @NonNull
        private final ReplicationFilter filter;

        public CollectionFilter(@NonNull Collection collection, @NonNull ReplicationFilter replicationFilter) {
            this.collection = collection;
            this.filter = replicationFilter;
        }

        @NonNull
        private EnumSet<DocumentFlag> getDocumentFlags(int i) {
            EnumSet<DocumentFlag> noneOf = EnumSet.noneOf(DocumentFlag.class);
            if (C4Constants.hasFlags(i, 1)) {
                noneOf.add(DocumentFlag.DELETED);
            }
            if (C4Constants.hasFlags(i, 128)) {
                noneOf.add(DocumentFlag.ACCESS_REMOVED);
            }
            return noneOf;
        }

        @Override // com.couchbase.lite.internal.ReplicationCollection.C4Filter
        public boolean test(@NonNull String str, @NonNull String str2, long j, int i) {
            return this.filter.filtered(this.collection.createFilterDocument(str, str2, FLDict.create(j)), getDocumentFlags(i));
        }
    }

    private ReplicationCollection(long j, @NonNull String str, @NonNull String str2, @Nullable byte[] bArr, @Nullable C4Filter c4Filter, @Nullable C4Filter c4Filter2, @Nullable ConflictResolver conflictResolver) {
        this.token = j;
        this.scope = str;
        this.name = str2;
        this.options = bArr;
        this.c4PushFilter = c4Filter;
        this.c4PullFilter = c4Filter2;
        this.resolver = conflictResolver;
    }

    @NonNull
    public static ReplicationCollection create(@NonNull Collection collection, @NonNull CollectionConfiguration collectionConfiguration) {
        HashMap hashMap = new HashMap();
        List<String> documentIDs = collectionConfiguration.getDocumentIDs();
        if (documentIDs != null && !documentIDs.isEmpty()) {
            hashMap.put(C4Replicator.REPLICATOR_OPTION_DOC_IDS, documentIDs);
        }
        List<String> channels = collectionConfiguration.getChannels();
        if (channels != null && !channels.isEmpty()) {
            hashMap.put("channels", channels);
        }
        return create(collection, hashMap, collectionConfiguration.getPushFilter(), collectionConfiguration.getPullFilter(), collectionConfiguration.getConflictResolver());
    }

    @NonNull
    public static ReplicationCollection[] createAll(@NonNull Set<Collection> set) {
        ReplicationCollection[] replicationCollectionArr = new ReplicationCollection[set.size()];
        Iterator<Collection> it2 = set.iterator();
        int i = 0;
        while (it2.hasNext()) {
            replicationCollectionArr[i] = create(it2.next(), null, null, null, null);
            i++;
        }
        return replicationCollectionArr;
    }

    public static boolean filterCallback(long j, @Nullable String str, @Nullable String str2, @Nullable final String str3, @Nullable final String str4, final int i, final long j2, boolean z) {
        ReplicationCollection replicationCollection = (ReplicationCollection) BOUND_COLLECTIONS.getBinding(j);
        LogDomain logDomain = LOG_DOMAIN;
        Object[] objArr = new Object[5];
        objArr[0] = z ? "push" : "pull";
        objArr[1] = str3;
        objArr[2] = str4;
        objArr[3] = Long.valueOf(j);
        objArr[4] = replicationCollection;
        Log.m9899d(logDomain, "Running %s filter for doc %s@%s, %s@%s", objArr);
        if (replicationCollection == null) {
            Log.m9908w(logDomain, "Request to filter unrecognized collection: " + str + "." + str2);
            return true;
        }
        final C4Filter c4Filter = z ? replicationCollection.c4PushFilter : replicationCollection.c4PullFilter;
        if (c4Filter == null) {
            return true;
        }
        if (str3 == null || str4 == null) {
            Log.m9911w(logDomain, "Ignoring filter request for null %s/%s", str3, str4);
            return true;
        }
        ClientTask clientTask = new ClientTask(new Callable() { // from class: com.couchbase.lite.internal.a
            @Override // java.util.concurrent.Callable
            public final Object call() {
                Boolean lambda$filterCallback$0;
                lambda$filterCallback$0 = ReplicationCollection.lambda$filterCallback$0(ReplicationCollection.C4Filter.this, str3, str4, j2, i);
                return lambda$filterCallback$0;
            }
        });
        clientTask.execute();
        Exception failure = clientTask.getFailure();
        if (failure != null) {
            Log.m9909w(logDomain, "Replication filter failed", failure);
            return false;
        }
        Boolean bool = (Boolean) clientTask.getResult();
        return bool != null && bool.booleanValue();
    }

    @Nullable
    public static ReplicationCollection getBinding(long j) {
        return (ReplicationCollection) BOUND_COLLECTIONS.getBinding(j);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Boolean lambda$filterCallback$0(C4Filter c4Filter, String str, String str2, long j, int i) throws Exception {
        return Boolean.valueOf(c4Filter.test(str, str2, j, i));
    }

    @Override // java.lang.AutoCloseable
    public void close() {
        BOUND_COLLECTIONS.unbind(this.token);
    }

    public void finalize() throws Throwable {
        try {
            close();
        } finally {
            super.finalize();
        }
    }

    @Nullable
    public ConflictResolver getConflictResolver() {
        return this.resolver;
    }

    @NonNull
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("ReplicationCollection{@");
        sb.append(Long.toHexString(this.token));
        sb.append(this.scope);
        sb.append(".");
        sb.append(this.name);
        sb.append(MotionUtils.f31761c);
        sb.append(this.c4PullFilter != null ? "<" : "");
        sb.append(this.resolver != null ? "!" : "");
        sb.append(this.c4PushFilter != null ? ">" : "");
        sb.append(")}");
        return sb.toString();
    }

    @NonNull
    public static ReplicationCollection[] createAll(@NonNull Map<Collection, CollectionConfiguration> map) {
        ReplicationCollection[] replicationCollectionArr = new ReplicationCollection[map.size()];
        int i = 0;
        for (Map.Entry<Collection, CollectionConfiguration> entry : map.entrySet()) {
            replicationCollectionArr[i] = create(entry.getKey(), entry.getValue());
            i++;
        }
        return replicationCollectionArr;
    }

    @NonNull
    public static ReplicationCollection create(@NonNull Collection collection, @Nullable Map<String, Object> map, @Nullable ReplicationFilter replicationFilter, @Nullable ReplicationFilter replicationFilter2, @Nullable ConflictResolver conflictResolver) {
        TaggedWeakPeerBinding<ReplicationCollection> taggedWeakPeerBinding = BOUND_COLLECTIONS;
        long reserveKey = taggedWeakPeerBinding.reserveKey();
        ReplicationCollection replicationCollection = new ReplicationCollection(reserveKey, collection.getScope().getName(), collection.getName(), (map == null || map.isEmpty()) ? null : FLEncoder.encodeMap(map), replicationFilter == null ? null : new CollectionFilter(collection, replicationFilter), replicationFilter2 == null ? null : new CollectionFilter(collection, replicationFilter2), conflictResolver);
        taggedWeakPeerBinding.bind(reserveKey, replicationCollection);
        return replicationCollection;
    }
}
