.class public final Lcom/onyx/android/sdk/replicator/sticker/action/DeleteCategoryAction;
.super Lcom/onyx/android/sdk/replicator/sticker/action/StickerBaseAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/replicator/sticker/action/StickerBaseAction<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u000f\u0012\u0006\u0010\u000b\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u000e\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0003H\u0014J\u0008\u0010\u0006\u001a\u00020\u0005H\u0002J\u0008\u0010\u0007\u001a\u00020\u0005H\u0002R\u0014\u0010\u000b\u001a\u00020\u00088\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\t\u0010\n\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/onyx/android/sdk/replicator/sticker/action/DeleteCategoryAction;",
        "Lcom/onyx/android/sdk/replicator/sticker/action/StickerBaseAction;",
        "",
        "Lio/reactivex/rxjava3/core/Observable;",
        "create",
        "",
        "l",
        "m",
        "Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;",
        "e",
        "Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;",
        "category",
        "<init>",
        "(Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;)V",
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
.field public final e:Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "category"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/onyx/android/sdk/replicator/sticker/action/StickerBaseAction;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/sticker/action/DeleteCategoryAction;->e:Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;

    return-void
.end method

.method public static final synthetic access$deleteCategoryFromCloud(Lcom/onyx/android/sdk/replicator/sticker/action/DeleteCategoryAction;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/sticker/action/DeleteCategoryAction;->l()V

    return-void
.end method

.method public static final synthetic access$deleteCategoryFromDatabase(Lcom/onyx/android/sdk/replicator/sticker/action/DeleteCategoryAction;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/sticker/action/DeleteCategoryAction;->m()V

    return-void
.end method


# virtual methods
.method public create()Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/data/cluster/ClusterManager;->INSTANCE:Lcom/onyx/android/sdk/data/cluster/ClusterManager;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/cluster/ClusterManager;->getCloudObserveOn()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/replicator/sticker/action/DeleteCategoryAction$a;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/replicator/sticker/action/DeleteCategoryAction$a;-><init>(Lcom/onyx/android/sdk/replicator/sticker/action/DeleteCategoryAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/sticker/action/StickerBaseAction;->getStickerObserveOn()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/replicator/sticker/action/DeleteCategoryAction$b;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/replicator/sticker/action/DeleteCategoryAction$b;-><init>(Lcom/onyx/android/sdk/replicator/sticker/action/DeleteCategoryAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "map(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final l()V
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/replicator/sticker/api/StickerCallExecutor;->INSTANCE:Lcom/onyx/android/sdk/replicator/sticker/api/StickerCallExecutor;

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/sticker/action/DeleteCategoryAction;->e:Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/replicator/sticker/api/StickerCallExecutor;->deleteStickerCategory(Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/sticker/http/StickerCategoryDeleteResponse;

    return-void
.end method

.method public final m()V
    .locals 1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/sticker/action/StickerBaseAction;->getStickerProvider()Lcom/onyx/android/sdk/replicator/sticker/db/StickerProvider;

    move-result-object v0

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/sticker/action/DeleteCategoryAction;->e:Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/replicator/sticker/db/StickerProvider;->deleteCategory(Ljava/lang/String;)V

    return-void
.end method
