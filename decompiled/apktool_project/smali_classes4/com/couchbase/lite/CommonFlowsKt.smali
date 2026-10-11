.class public final Lcom/couchbase/lite/CommonFlowsKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a\u001c\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u00032\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u001a\u001e\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0001*\u00020\u00082\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0007\u001a$\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\n0\u0001*\u00020\u00032\u0006\u0010\u000b\u001a\u00020\u000c2\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u001a&\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\n0\u0001*\u00020\u00082\u0006\u0010\u000b\u001a\u00020\u000c2\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0007\u001a\u001c\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\u0001*\u00020\u000f2\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u001a\u001c\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u00110\u0001*\u00020\u00122\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u001a\u001c\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00140\u0001*\u00020\u000f2\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a8\u0006\u0015"
    }
    d2 = {
        "collectionChangeFlow",
        "Lkotlinx/coroutines/flow/Flow;",
        "Lcom/couchbase/lite/CollectionChange;",
        "Lcom/couchbase/lite/Collection;",
        "executor",
        "Ljava/util/concurrent/Executor;",
        "databaseChangeFlow",
        "Lcom/couchbase/lite/DatabaseChange;",
        "Lcom/couchbase/lite/Database;",
        "documentChangeFlow",
        "Lcom/couchbase/lite/DocumentChange;",
        "documentId",
        "",
        "documentReplicationFlow",
        "Lcom/couchbase/lite/DocumentReplication;",
        "Lcom/couchbase/lite/Replicator;",
        "queryChangeFlow",
        "Lcom/couchbase/lite/QueryChange;",
        "Lcom/couchbase/lite/Query;",
        "replicatorChangesFlow",
        "Lcom/couchbase/lite/ReplicatorChange;",
        "couchbase-lite-android-ee-ktx-3.2.2-21_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final collectionChangeFlow(Lcom/couchbase/lite/Collection;Ljava/util/concurrent/Executor;)Lkotlinx/coroutines/flow/Flow;
    .locals 2
    .param p0    # Lcom/couchbase/lite/Collection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/util/concurrent/Executor;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/couchbase/lite/Collection;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lkotlinx/coroutines/flow/Flow<",
            "Lcom/couchbase/lite/CollectionChange;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/couchbase/lite/CommonFlowsKt$collectionChangeFlow$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/couchbase/lite/CommonFlowsKt$collectionChangeFlow$1;-><init>(Lcom/couchbase/lite/Collection;Ljava/util/concurrent/Executor;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0}, Lkotlinx/coroutines/flow/FlowKt;->callbackFlow(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic collectionChangeFlow$default(Lcom/couchbase/lite/Collection;Ljava/util/concurrent/Executor;ILjava/lang/Object;)Lkotlinx/coroutines/flow/Flow;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-static {p0, p1}, Lcom/couchbase/lite/CommonFlowsKt;->collectionChangeFlow(Lcom/couchbase/lite/Collection;Ljava/util/concurrent/Executor;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p0

    return-object p0
.end method

.method public static final databaseChangeFlow(Lcom/couchbase/lite/Database;Ljava/util/concurrent/Executor;)Lkotlinx/coroutines/flow/Flow;
    .locals 2
    .param p0    # Lcom/couchbase/lite/Database;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/util/concurrent/Executor;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/couchbase/lite/Database;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lkotlinx/coroutines/flow/Flow<",
            "Lcom/couchbase/lite/DatabaseChange;",
            ">;"
        }
    .end annotation

    .annotation runtime Lkotlin/Deprecated;
        message = "Use Database.getCollection(String, String?).collectionChangeFlow(executor)"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "Database.getCollection(String, String?).collectionChangeFlow(executor)"
            imports = {}
        .end subannotation
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/couchbase/lite/CommonFlowsKt$databaseChangeFlow$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/couchbase/lite/CommonFlowsKt$databaseChangeFlow$1;-><init>(Lcom/couchbase/lite/Database;Ljava/util/concurrent/Executor;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0}, Lkotlinx/coroutines/flow/FlowKt;->callbackFlow(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic databaseChangeFlow$default(Lcom/couchbase/lite/Database;Ljava/util/concurrent/Executor;ILjava/lang/Object;)Lkotlinx/coroutines/flow/Flow;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-static {p0, p1}, Lcom/couchbase/lite/CommonFlowsKt;->databaseChangeFlow(Lcom/couchbase/lite/Database;Ljava/util/concurrent/Executor;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p0

    return-object p0
.end method

.method public static final documentChangeFlow(Lcom/couchbase/lite/Collection;Ljava/lang/String;Ljava/util/concurrent/Executor;)Lkotlinx/coroutines/flow/Flow;
    .locals 2
    .param p0    # Lcom/couchbase/lite/Collection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/concurrent/Executor;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/couchbase/lite/Collection;",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lkotlinx/coroutines/flow/Flow<",
            "Lcom/couchbase/lite/DocumentChange;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "documentId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/couchbase/lite/CommonFlowsKt$documentChangeFlow$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/couchbase/lite/CommonFlowsKt$documentChangeFlow$1;-><init>(Lcom/couchbase/lite/Collection;Ljava/lang/String;Ljava/util/concurrent/Executor;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0}, Lkotlinx/coroutines/flow/FlowKt;->callbackFlow(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p0

    return-object p0
.end method

.method public static final documentChangeFlow(Lcom/couchbase/lite/Database;Ljava/lang/String;Ljava/util/concurrent/Executor;)Lkotlinx/coroutines/flow/Flow;
    .locals 2
    .param p0    # Lcom/couchbase/lite/Database;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/concurrent/Executor;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/couchbase/lite/Database;",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lkotlinx/coroutines/flow/Flow<",
            "Lcom/couchbase/lite/DocumentChange;",
            ">;"
        }
    .end annotation

    .annotation runtime Lkotlin/Deprecated;
        message = "Use Database.getCollection(String, String?).documentChangeFlow(documentId, executor)"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "Database.getCollection(String, String?).documentChangeFlow(documentId, executor)"
            imports = {}
        .end subannotation
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "documentId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcom/couchbase/lite/CommonFlowsKt$documentChangeFlow$2;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/couchbase/lite/CommonFlowsKt$documentChangeFlow$2;-><init>(Lcom/couchbase/lite/Database;Ljava/lang/String;Ljava/util/concurrent/Executor;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0}, Lkotlinx/coroutines/flow/FlowKt;->callbackFlow(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic documentChangeFlow$default(Lcom/couchbase/lite/Collection;Ljava/lang/String;Ljava/util/concurrent/Executor;ILjava/lang/Object;)Lkotlinx/coroutines/flow/Flow;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 1
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/couchbase/lite/CommonFlowsKt;->documentChangeFlow(Lcom/couchbase/lite/Collection;Ljava/lang/String;Ljava/util/concurrent/Executor;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic documentChangeFlow$default(Lcom/couchbase/lite/Database;Ljava/lang/String;Ljava/util/concurrent/Executor;ILjava/lang/Object;)Lkotlinx/coroutines/flow/Flow;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 2
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/couchbase/lite/CommonFlowsKt;->documentChangeFlow(Lcom/couchbase/lite/Database;Ljava/lang/String;Ljava/util/concurrent/Executor;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p0

    return-object p0
.end method

.method public static final documentReplicationFlow(Lcom/couchbase/lite/Replicator;Ljava/util/concurrent/Executor;)Lkotlinx/coroutines/flow/Flow;
    .locals 2
    .param p0    # Lcom/couchbase/lite/Replicator;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/util/concurrent/Executor;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/couchbase/lite/Replicator;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lkotlinx/coroutines/flow/Flow<",
            "Lcom/couchbase/lite/DocumentReplication;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/couchbase/lite/CommonFlowsKt$documentReplicationFlow$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/couchbase/lite/CommonFlowsKt$documentReplicationFlow$1;-><init>(Lcom/couchbase/lite/Replicator;Ljava/util/concurrent/Executor;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0}, Lkotlinx/coroutines/flow/FlowKt;->callbackFlow(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic documentReplicationFlow$default(Lcom/couchbase/lite/Replicator;Ljava/util/concurrent/Executor;ILjava/lang/Object;)Lkotlinx/coroutines/flow/Flow;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-static {p0, p1}, Lcom/couchbase/lite/CommonFlowsKt;->documentReplicationFlow(Lcom/couchbase/lite/Replicator;Ljava/util/concurrent/Executor;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p0

    return-object p0
.end method

.method public static final queryChangeFlow(Lcom/couchbase/lite/Query;Ljava/util/concurrent/Executor;)Lkotlinx/coroutines/flow/Flow;
    .locals 2
    .param p0    # Lcom/couchbase/lite/Query;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/util/concurrent/Executor;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/couchbase/lite/Query;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lkotlinx/coroutines/flow/Flow<",
            "Lcom/couchbase/lite/QueryChange;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/couchbase/lite/CommonFlowsKt$queryChangeFlow$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/couchbase/lite/CommonFlowsKt$queryChangeFlow$1;-><init>(Lcom/couchbase/lite/Query;Ljava/util/concurrent/Executor;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0}, Lkotlinx/coroutines/flow/FlowKt;->callbackFlow(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic queryChangeFlow$default(Lcom/couchbase/lite/Query;Ljava/util/concurrent/Executor;ILjava/lang/Object;)Lkotlinx/coroutines/flow/Flow;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-static {p0, p1}, Lcom/couchbase/lite/CommonFlowsKt;->queryChangeFlow(Lcom/couchbase/lite/Query;Ljava/util/concurrent/Executor;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p0

    return-object p0
.end method

.method public static final replicatorChangesFlow(Lcom/couchbase/lite/Replicator;Ljava/util/concurrent/Executor;)Lkotlinx/coroutines/flow/Flow;
    .locals 2
    .param p0    # Lcom/couchbase/lite/Replicator;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/util/concurrent/Executor;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/couchbase/lite/Replicator;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lkotlinx/coroutines/flow/Flow<",
            "Lcom/couchbase/lite/ReplicatorChange;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/couchbase/lite/CommonFlowsKt$replicatorChangesFlow$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/couchbase/lite/CommonFlowsKt$replicatorChangesFlow$1;-><init>(Lcom/couchbase/lite/Replicator;Ljava/util/concurrent/Executor;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0}, Lkotlinx/coroutines/flow/FlowKt;->callbackFlow(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic replicatorChangesFlow$default(Lcom/couchbase/lite/Replicator;Ljava/util/concurrent/Executor;ILjava/lang/Object;)Lkotlinx/coroutines/flow/Flow;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-static {p0, p1}, Lcom/couchbase/lite/CommonFlowsKt;->replicatorChangesFlow(Lcom/couchbase/lite/Replicator;Ljava/util/concurrent/Executor;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p0

    return-object p0
.end method
