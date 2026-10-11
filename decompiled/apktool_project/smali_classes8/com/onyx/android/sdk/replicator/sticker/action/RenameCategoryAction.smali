.class public final Lcom/onyx/android/sdk/replicator/sticker/action/RenameCategoryAction;
.super Lcom/onyx/android/sdk/replicator/sticker/action/StickerBaseAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/replicator/sticker/action/StickerBaseAction<",
        "Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000e\n\u0002\u0008\u0006\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0017\u0012\u0006\u0010\t\u001a\u00020\u0002\u0012\u0006\u0010\r\u001a\u00020\n\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u000e\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0003H\u0014J\u0008\u0010\u0005\u001a\u00020\u0002H\u0002J\u0008\u0010\u0006\u001a\u00020\u0002H\u0002R\u0014\u0010\t\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0007\u0010\u0008R\u0014\u0010\r\u001a\u00020\n8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/onyx/android/sdk/replicator/sticker/action/RenameCategoryAction;",
        "Lcom/onyx/android/sdk/replicator/sticker/action/StickerBaseAction;",
        "Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;",
        "Lio/reactivex/rxjava3/core/Observable;",
        "create",
        "l",
        "m",
        "e",
        "Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;",
        "category",
        "",
        "f",
        "Ljava/lang/String;",
        "newName",
        "<init>",
        "(Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;Ljava/lang/String;)V",
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

.field public final f:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;Ljava/lang/String;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "category"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "newName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/onyx/android/sdk/replicator/sticker/action/StickerBaseAction;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/sticker/action/RenameCategoryAction;->e:Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;

    iput-object p2, p0, Lcom/onyx/android/sdk/replicator/sticker/action/RenameCategoryAction;->f:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$updateToCloud(Lcom/onyx/android/sdk/replicator/sticker/action/RenameCategoryAction;)Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/sticker/action/RenameCategoryAction;->l()Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$updateToDatabase(Lcom/onyx/android/sdk/replicator/sticker/action/RenameCategoryAction;)Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/sticker/action/RenameCategoryAction;->m()Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public create()Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;",
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

    new-instance v1, Lcom/onyx/android/sdk/replicator/sticker/action/RenameCategoryAction$a;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/replicator/sticker/action/RenameCategoryAction$a;-><init>(Lcom/onyx/android/sdk/replicator/sticker/action/RenameCategoryAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/sticker/action/StickerBaseAction;->getStickerObserveOn()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/replicator/sticker/action/RenameCategoryAction$b;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/replicator/sticker/action/RenameCategoryAction$b;-><init>(Lcom/onyx/android/sdk/replicator/sticker/action/RenameCategoryAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "map(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final l()Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;
    .locals 3

    sget-object v0, Lcom/onyx/android/sdk/replicator/sticker/api/StickerCallExecutor;->INSTANCE:Lcom/onyx/android/sdk/replicator/sticker/api/StickerCallExecutor;

    iget-object v1, p0, Lcom/onyx/android/sdk/replicator/sticker/action/RenameCategoryAction;->e:Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/onyx/android/sdk/replicator/sticker/action/RenameCategoryAction;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/onyx/android/sdk/replicator/sticker/api/StickerCallExecutor;->updateStickerCategory(Ljava/lang/String;Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/sticker/http/StickerCategoryUpdateResponse;

    move-result-object v0

    invoke-static {v0}, Lcom/onyx/android/sdk/data/common/data/ResponeDataKt;->success(Lcom/onyx/android/sdk/data/common/data/ResponeData;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/sticker/action/RenameCategoryAction;->e:Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;

    return-object p0

    :cond_0
    sget-object p0, Lcom/onyx/android/sdk/base/common/error/OnyxException;->Companion:Lcom/onyx/android/sdk/base/common/error/OnyxException$Companion;

    const-string v0, "Request Fail"

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/base/common/error/OnyxException$Companion;->of(Ljava/lang/String;)Lcom/onyx/android/sdk/base/common/error/OnyxException;

    move-result-object p0

    throw p0
.end method

.method public final m()Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/sticker/action/RenameCategoryAction;->e:Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;

    iget-object v1, p0, Lcom/onyx/android/sdk/replicator/sticker/action/RenameCategoryAction;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;->setName(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/sticker/action/StickerBaseAction;->getStickerProvider()Lcom/onyx/android/sdk/replicator/sticker/db/StickerProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/onyx/android/sdk/replicator/sticker/action/RenameCategoryAction;->e:Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/replicator/sticker/db/StickerProvider;->updateCategory(Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/sticker/action/RenameCategoryAction;->e:Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;

    return-object p0
.end method
