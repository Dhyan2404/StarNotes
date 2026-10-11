.class public final Lcom/onyx/android/sdk/replicator/progress/bean/SyncProgress;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010%\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010 \n\u0002\u0008\u0006\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u001e\u0010\u001fJ\u0012\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00040\u0002J\u001a\u0010\t\u001a\u00020\u00082\u0012\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00040\u0006J\u0016\u0010\u000c\u001a\u00020\u00082\u0006\u0010\n\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\u0004J&\u0010\u000c\u001a\u00020\u00082\u0006\u0010\n\u001a\u00020\u00032\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000f\u001a\u00020\u00032\u0006\u0010\u0010\u001a\u00020\rJ(\u0010\u000c\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u00032\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000f\u001a\u00020\u00032\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0011J\u000e\u0010\u0013\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u0003J\u000e\u0010\u0015\u001a\u00020\u00142\u0006\u0010\n\u001a\u00020\u0003J\u000e\u0010\u0016\u001a\u00020\r2\u0006\u0010\n\u001a\u00020\u0003J\u0006\u0010\u0017\u001a\u00020\u0008R\"\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00040\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0018\u0010\u0019R\u0017\u0010\u001d\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u001a8F\u00a2\u0006\u0006\u001a\u0004\u0008\u001b\u0010\u001c\u00a8\u0006 "
    }
    d2 = {
        "Lcom/onyx/android/sdk/replicator/progress/bean/SyncProgress;",
        "",
        "",
        "",
        "Lcom/onyx/android/sdk/replicator/progress/bean/SyncDocProgress;",
        "getProgressMap",
        "",
        "progressMap",
        "",
        "setProgressMap",
        "documentId",
        "docProgress",
        "updateDocProgress",
        "",
        "syncType",
        "accountId",
        "syncStatus",
        "Lcom/onyx/android/sdk/replicator/bean/KSyncStatus;",
        "status",
        "getSyncDocProgress",
        "",
        "isSyncingToThirdParty",
        "getSyncDocStatus",
        "clear",
        "a",
        "Ljava/util/Map;",
        "",
        "getOnyxSyncFailDocList",
        "()Ljava/util/List;",
        "onyxSyncFailDocList",
        "<init>",
        "()V",
        "sdk-replicator_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field public a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/onyx/android/sdk/replicator/progress/bean/SyncDocProgress;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/progress/bean/SyncProgress;->a:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/progress/bean/SyncProgress;->a:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public final getOnyxSyncFailDocList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/progress/bean/SyncProgress;->a:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/replicator/progress/bean/SyncDocProgress;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/replicator/progress/bean/SyncDocProgress;->isOnyxSyncFail()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public final getProgressMap()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/onyx/android/sdk/replicator/progress/bean/SyncDocProgress;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/progress/bean/SyncProgress;->a:Ljava/util/Map;

    return-object p0
.end method

.method public final getSyncDocProgress(Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/progress/bean/SyncDocProgress;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "documentId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/progress/bean/SyncProgress;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/replicator/progress/bean/SyncDocProgress;

    if-nez v0, :cond_0

    new-instance v0, Lcom/onyx/android/sdk/replicator/progress/bean/SyncDocProgress;

    invoke-direct {v0}, Lcom/onyx/android/sdk/replicator/progress/bean/SyncDocProgress;-><init>()V

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/progress/bean/SyncProgress;->a:Ljava/util/Map;

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method public final getSyncDocStatus(Ljava/lang/String;)I
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "documentId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/progress/bean/SyncProgress;->getSyncDocProgress(Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/progress/bean/SyncDocProgress;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/progress/bean/SyncDocProgress;->getSyncStatus()I

    move-result p0

    return p0
.end method

.method public final isSyncingToThirdParty(Ljava/lang/String;)Z
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "documentId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/progress/bean/SyncProgress;->getSyncDocProgress(Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/progress/bean/SyncDocProgress;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/progress/bean/SyncDocProgress;->isSyncingToThirdParty()Z

    move-result p0

    return p0
.end method

.method public final setProgressMap(Ljava/util/Map;)V
    .locals 1
    .param p1    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/onyx/android/sdk/replicator/progress/bean/SyncDocProgress;",
            ">;)V"
        }
    .end annotation

    const-string v0, "progressMap"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/progress/bean/SyncProgress;->a:Ljava/util/Map;

    return-void
.end method

.method public final updateDocProgress(Ljava/lang/String;ILjava/lang/String;Lcom/onyx/android/sdk/replicator/bean/KSyncStatus;)Lcom/onyx/android/sdk/replicator/progress/bean/SyncDocProgress;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcom/onyx/android/sdk/replicator/bean/KSyncStatus;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "documentId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "accountId"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/progress/bean/SyncProgress;->getSyncDocProgress(Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/progress/bean/SyncDocProgress;

    move-result-object p0

    .line 5
    invoke-virtual {p0, p2, p3, p4}, Lcom/onyx/android/sdk/replicator/progress/bean/SyncDocProgress;->addSyncStatus(ILjava/lang/String;Lcom/onyx/android/sdk/replicator/bean/KSyncStatus;)Lcom/onyx/android/sdk/replicator/progress/bean/SyncDocProgress;

    return-object p0
.end method

.method public final updateDocProgress(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "documentId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "accountId"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/progress/bean/SyncProgress;->getSyncDocProgress(Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/progress/bean/SyncDocProgress;

    move-result-object p0

    .line 3
    invoke-virtual {p0, p2, p3, p4}, Lcom/onyx/android/sdk/replicator/progress/bean/SyncDocProgress;->addSyncStatus(ILjava/lang/String;I)V

    return-void
.end method

.method public final updateDocProgress(Ljava/lang/String;Lcom/onyx/android/sdk/replicator/progress/bean/SyncDocProgress;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/replicator/progress/bean/SyncDocProgress;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "documentId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "docProgress"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/progress/bean/SyncProgress;->a:Ljava/util/Map;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
