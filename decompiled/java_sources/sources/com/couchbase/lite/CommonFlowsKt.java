package com.couchbase.lite;

import java.util.concurrent.Executor;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.ReplaceWith;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000F\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a\u001c\u0010\u0000\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u001a\u001e\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00070\u0001*\u00020\b2\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0007\u001a$\u0010\t\u001a\b\u0012\u0004\u0012\u00020\n0\u0001*\u00020\u00032\u0006\u0010\u000b\u001a\u00020\f2\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u001a&\u0010\t\u001a\b\u0012\u0004\u0012\u00020\n0\u0001*\u00020\b2\u0006\u0010\u000b\u001a\u00020\f2\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0007\u001a\u001c\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u000e0\u0001*\u00020\u000f2\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u001a\u001c\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00110\u0001*\u00020\u00122\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u001a\u001c\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00140\u0001*\u00020\u000f2\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005¨\u0006\u0015"}, m61528d2 = {"collectionChangeFlow", "Lkotlinx/coroutines/flow/Flow;", "Lcom/couchbase/lite/CollectionChange;", "Lcom/couchbase/lite/Collection;", "executor", "Ljava/util/concurrent/Executor;", "databaseChangeFlow", "Lcom/couchbase/lite/DatabaseChange;", "Lcom/couchbase/lite/Database;", "documentChangeFlow", "Lcom/couchbase/lite/DocumentChange;", "documentId", "", "documentReplicationFlow", "Lcom/couchbase/lite/DocumentReplication;", "Lcom/couchbase/lite/Replicator;", "queryChangeFlow", "Lcom/couchbase/lite/QueryChange;", "Lcom/couchbase/lite/Query;", "replicatorChangesFlow", "Lcom/couchbase/lite/ReplicatorChange;", "couchbase-lite-android-ee-ktx-3.2.2-21_release"}, m61529k = 2, m61530mv = {1, 8, 0}, m61532xi = 48)
/* loaded from: classes4.dex */
public final class CommonFlowsKt {
    @NotNull
    public static final Flow<CollectionChange> collectionChangeFlow(@NotNull Collection collection, @Nullable Executor executor) {
        Intrinsics.checkNotNullParameter(collection, "<this>");
        return FlowKt.callbackFlow(new CommonFlowsKt$collectionChangeFlow$1(collection, executor, null));
    }

    public static /* synthetic */ Flow collectionChangeFlow$default(Collection collection, Executor executor, int i, Object obj) {
        if ((i & 1) != 0) {
            executor = null;
        }
        return collectionChangeFlow(collection, executor);
    }

    @Deprecated(message = "Use Database.getCollection(String, String?).collectionChangeFlow(executor)", replaceWith = @ReplaceWith(expression = "Database.getCollection(String, String?).collectionChangeFlow(executor)", imports = {}))
    @NotNull
    public static final Flow<DatabaseChange> databaseChangeFlow(@NotNull Database database, @Nullable Executor executor) {
        Intrinsics.checkNotNullParameter(database, "<this>");
        return FlowKt.callbackFlow(new CommonFlowsKt$databaseChangeFlow$1(database, executor, null));
    }

    public static /* synthetic */ Flow databaseChangeFlow$default(Database database, Executor executor, int i, Object obj) {
        if ((i & 1) != 0) {
            executor = null;
        }
        return databaseChangeFlow(database, executor);
    }

    @NotNull
    public static final Flow<DocumentChange> documentChangeFlow(@NotNull Collection collection, @NotNull String documentId, @Nullable Executor executor) {
        Intrinsics.checkNotNullParameter(collection, "<this>");
        Intrinsics.checkNotNullParameter(documentId, "documentId");
        return FlowKt.callbackFlow(new CommonFlowsKt$documentChangeFlow$1(collection, documentId, executor, null));
    }

    public static /* synthetic */ Flow documentChangeFlow$default(Collection collection, String str, Executor executor, int i, Object obj) {
        if ((i & 2) != 0) {
            executor = null;
        }
        return documentChangeFlow(collection, str, executor);
    }

    @NotNull
    public static final Flow<DocumentReplication> documentReplicationFlow(@NotNull Replicator replicator, @Nullable Executor executor) {
        Intrinsics.checkNotNullParameter(replicator, "<this>");
        return FlowKt.callbackFlow(new CommonFlowsKt$documentReplicationFlow$1(replicator, executor, null));
    }

    public static /* synthetic */ Flow documentReplicationFlow$default(Replicator replicator, Executor executor, int i, Object obj) {
        if ((i & 1) != 0) {
            executor = null;
        }
        return documentReplicationFlow(replicator, executor);
    }

    @NotNull
    public static final Flow<QueryChange> queryChangeFlow(@NotNull Query query, @Nullable Executor executor) {
        Intrinsics.checkNotNullParameter(query, "<this>");
        return FlowKt.callbackFlow(new CommonFlowsKt$queryChangeFlow$1(query, executor, null));
    }

    public static /* synthetic */ Flow queryChangeFlow$default(Query query, Executor executor, int i, Object obj) {
        if ((i & 1) != 0) {
            executor = null;
        }
        return queryChangeFlow(query, executor);
    }

    @NotNull
    public static final Flow<ReplicatorChange> replicatorChangesFlow(@NotNull Replicator replicator, @Nullable Executor executor) {
        Intrinsics.checkNotNullParameter(replicator, "<this>");
        return FlowKt.callbackFlow(new CommonFlowsKt$replicatorChangesFlow$1(replicator, executor, null));
    }

    public static /* synthetic */ Flow replicatorChangesFlow$default(Replicator replicator, Executor executor, int i, Object obj) {
        if ((i & 1) != 0) {
            executor = null;
        }
        return replicatorChangesFlow(replicator, executor);
    }

    @Deprecated(message = "Use Database.getCollection(String, String?).documentChangeFlow(documentId, executor)", replaceWith = @ReplaceWith(expression = "Database.getCollection(String, String?).documentChangeFlow(documentId, executor)", imports = {}))
    @NotNull
    public static final Flow<DocumentChange> documentChangeFlow(@NotNull Database database, @NotNull String documentId, @Nullable Executor executor) {
        Intrinsics.checkNotNullParameter(database, "<this>");
        Intrinsics.checkNotNullParameter(documentId, "documentId");
        return FlowKt.callbackFlow(new CommonFlowsKt$documentChangeFlow$2(database, documentId, executor, null));
    }

    public static /* synthetic */ Flow documentChangeFlow$default(Database database, String str, Executor executor, int i, Object obj) {
        if ((i & 2) != 0) {
            executor = null;
        }
        return documentChangeFlow(database, str, executor);
    }
}
