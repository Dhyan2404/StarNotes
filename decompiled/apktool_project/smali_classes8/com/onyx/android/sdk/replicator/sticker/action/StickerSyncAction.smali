.class public final Lcom/onyx/android/sdk/replicator/sticker/action/StickerSyncAction;
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

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nStickerSyncAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StickerSyncAction.kt\ncom/onyx/android/sdk/replicator/sticker/action/StickerSyncAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,77:1\n1855#2:78\n1855#2,2:79\n1856#2:81\n1855#2,2:82\n*S KotlinDebug\n*F\n+ 1 StickerSyncAction.kt\ncom/onyx/android/sdk/replicator/sticker/action/StickerSyncAction\n*L\n42#1:78\n43#1:79,2\n42#1:81\n61#1:82,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u000e\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0003H\u0014J\u000e\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005H\u0002J\u0016\u0010\n\u001a\u00020\t2\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005H\u0002J\u0008\u0010\u000c\u001a\u00020\u000bH\u0002J\u0010\u0010\u000e\u001a\u00020\u000b2\u0006\u0010\r\u001a\u00020\u000bH\u0002J\u001c\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u00052\u000c\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u0005H\u0002J\u0008\u0010\u0012\u001a\u00020\tH\u0002\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/onyx/android/sdk/replicator/sticker/action/StickerSyncAction;",
        "Lcom/onyx/android/sdk/replicator/sticker/action/StickerBaseAction;",
        "",
        "Lio/reactivex/rxjava3/core/Observable;",
        "create",
        "",
        "Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;",
        "m",
        "categories",
        "",
        "p",
        "Lcom/onyx/android/sdk/replicator/sticker/http/ComposedStickerData;",
        "n",
        "compose",
        "q",
        "Lcom/onyx/android/sdk/replicator/sticker/model/StickerModel;",
        "stickers",
        "l",
        "o",
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

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nStickerSyncAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StickerSyncAction.kt\ncom/onyx/android/sdk/replicator/sticker/action/StickerSyncAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,77:1\n1855#2:78\n1855#2,2:79\n1856#2:81\n1855#2,2:82\n*S KotlinDebug\n*F\n+ 1 StickerSyncAction.kt\ncom/onyx/android/sdk/replicator/sticker/action/StickerSyncAction\n*L\n42#1:78\n43#1:79,2\n42#1:81\n61#1:82,2\n*E\n"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/onyx/android/sdk/replicator/sticker/action/StickerBaseAction;-><init>()V

    return-void
.end method

.method public static final synthetic access$cleanOutdatedFile(Lcom/onyx/android/sdk/replicator/sticker/action/StickerSyncAction;Ljava/util/List;)Ljava/util/List;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/sticker/action/StickerSyncAction;->l(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$loadCategoryFromCloud(Lcom/onyx/android/sdk/replicator/sticker/action/StickerSyncAction;)Ljava/util/List;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/sticker/action/StickerSyncAction;->m()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$loadStickerFromCloud(Lcom/onyx/android/sdk/replicator/sticker/action/StickerSyncAction;)Lcom/onyx/android/sdk/replicator/sticker/http/ComposedStickerData;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/sticker/action/StickerSyncAction;->n()Lcom/onyx/android/sdk/replicator/sticker/http/ComposedStickerData;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$markSyncState(Lcom/onyx/android/sdk/replicator/sticker/action/StickerSyncAction;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/sticker/action/StickerSyncAction;->o()V

    return-void
.end method

.method public static final synthetic access$saveCategoryToLocalDatabase(Lcom/onyx/android/sdk/replicator/sticker/action/StickerSyncAction;Ljava/util/List;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/sticker/action/StickerSyncAction;->p(Ljava/util/List;)V

    return-void
.end method

.method public static final synthetic access$saveStickerToLocalDatabase(Lcom/onyx/android/sdk/replicator/sticker/action/StickerSyncAction;Lcom/onyx/android/sdk/replicator/sticker/http/ComposedStickerData;)Lcom/onyx/android/sdk/replicator/sticker/http/ComposedStickerData;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/sticker/action/StickerSyncAction;->q(Lcom/onyx/android/sdk/replicator/sticker/http/ComposedStickerData;)Lcom/onyx/android/sdk/replicator/sticker/http/ComposedStickerData;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public create()Lio/reactivex/rxjava3/core/Observable;
    .locals 4
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

    sget-object v0, Lcom/onyx/android/sdk/data/common/data/SyncStateOptions;->INSTANCE:Lcom/onyx/android/sdk/data/common/data/SyncStateOptions;

    const-string v1, "sticker"

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/common/data/SyncStateOptions;->hasSynced(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "just(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/sticker/action/StickerBaseAction;->createObservable()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/replicator/KSyncBundle;->INSTANCE:Lcom/onyx/android/sdk/replicator/KSyncBundle;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/replicator/KSyncBundle;->getNetworkScheduler()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v2, Lcom/onyx/android/sdk/replicator/sticker/action/StickerSyncAction$a;

    invoke-direct {v2, p0}, Lcom/onyx/android/sdk/replicator/sticker/action/StickerSyncAction$a;-><init>(Lcom/onyx/android/sdk/replicator/sticker/action/StickerSyncAction;)V

    invoke-virtual {v0, v2}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    sget-object v2, Lcom/onyx/android/sdk/replicator/sticker/data/StickerValues;->INSTANCE:Lcom/onyx/android/sdk/replicator/sticker/data/StickerValues;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/replicator/sticker/data/StickerValues;->getScheduler()Lcom/onyx/android/sdk/base/scheduler/RxScheduler;

    move-result-object v3

    invoke-virtual {v3}, Lcom/onyx/android/sdk/base/scheduler/RxScheduler;->getObserveOn()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v3

    invoke-virtual {v0, v3}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v3, Lcom/onyx/android/sdk/replicator/sticker/action/StickerSyncAction$b;

    invoke-direct {v3, p0}, Lcom/onyx/android/sdk/replicator/sticker/action/StickerSyncAction$b;-><init>(Lcom/onyx/android/sdk/replicator/sticker/action/StickerSyncAction;)V

    invoke-virtual {v0, v3}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {v1}, Lcom/onyx/android/sdk/replicator/KSyncBundle;->getNetworkScheduler()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/replicator/sticker/action/StickerSyncAction$c;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/replicator/sticker/action/StickerSyncAction$c;-><init>(Lcom/onyx/android/sdk/replicator/sticker/action/StickerSyncAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {v2}, Lcom/onyx/android/sdk/replicator/sticker/data/StickerValues;->getScheduler()Lcom/onyx/android/sdk/base/scheduler/RxScheduler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/scheduler/RxScheduler;->getObserveOn()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/replicator/sticker/action/StickerSyncAction$d;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/replicator/sticker/action/StickerSyncAction$d;-><init>(Lcom/onyx/android/sdk/replicator/sticker/action/StickerSyncAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/replicator/sticker/action/StickerSyncAction$e;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/replicator/sticker/action/StickerSyncAction$e;-><init>(Lcom/onyx/android/sdk/replicator/sticker/action/StickerSyncAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/replicator/sticker/action/StickerSyncAction$f;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/replicator/sticker/action/StickerSyncAction$f;-><init>(Lcom/onyx/android/sdk/replicator/sticker/action/StickerSyncAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "map(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final l(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/sticker/model/StickerModel;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/sticker/model/StickerModel;",
            ">;"
        }
    .end annotation

    move-object p0, p1

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/replicator/sticker/model/StickerModel;

    invoke-static {v0}, Lcom/onyx/android/sdk/replicator/sticker/model/StickerModelKt;->getSavedFile(Lcom/onyx/android/sdk/replicator/sticker/model/StickerModel;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/onyx/android/sdk/base/utils/FileUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/FileUtils;

    invoke-virtual {v2, v1}, Lcom/onyx/android/sdk/base/utils/FileUtils;->isFileExist(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v2, v1}, Lcom/onyx/android/sdk/base/utils/FileUtils;->computeFullMD5Safely(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/sticker/model/StickerModel;->getMd5()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v2, v1}, Lcom/onyx/android/sdk/base/utils/FileUtils;->deleteFile(Ljava/lang/String;)Z

    goto :goto_0

    :cond_2
    return-object p1
.end method

.method public final m()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;",
            ">;"
        }
    .end annotation

    sget-object p0, Lcom/onyx/android/sdk/replicator/sticker/api/StickerCallExecutor;->INSTANCE:Lcom/onyx/android/sdk/replicator/sticker/api/StickerCallExecutor;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/sticker/api/StickerCallExecutor;->loadStickerCategory()Lcom/onyx/android/sdk/replicator/sticker/http/StickerCategoryQueryResponse;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/common/data/ResponeData;->getNonNullData()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public final n()Lcom/onyx/android/sdk/replicator/sticker/http/ComposedStickerData;
    .locals 0

    sget-object p0, Lcom/onyx/android/sdk/replicator/sticker/api/StickerCallExecutor;->INSTANCE:Lcom/onyx/android/sdk/replicator/sticker/api/StickerCallExecutor;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/sticker/api/StickerCallExecutor;->loadSticker()Lcom/onyx/android/sdk/replicator/sticker/http/StickerQueryResponse;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/common/data/ResponeData;->getNonNullData()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/replicator/sticker/http/ComposedStickerData;

    return-object p0
.end method

.method public final o()V
    .locals 1

    sget-object p0, Lcom/onyx/android/sdk/data/common/data/SyncStateOptions;->INSTANCE:Lcom/onyx/android/sdk/data/common/data/SyncStateOptions;

    const-string v0, "sticker"

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/data/common/data/SyncStateOptions;->markAsSynced(Ljava/lang/String;)V

    return-void
.end method

.method public final p(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v1, p1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;->getSubCategory()Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;->setParentUniqueId(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    invoke-virtual {v1}, Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;->getSubCategory()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/sticker/action/StickerBaseAction;->getStickerProvider()Lcom/onyx/android/sdk/replicator/sticker/db/StickerProvider;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/replicator/sticker/db/StickerProvider;->syncCategories(Ljava/util/List;)V

    return-void
.end method

.method public final q(Lcom/onyx/android/sdk/replicator/sticker/http/ComposedStickerData;)Lcom/onyx/android/sdk/replicator/sticker/http/ComposedStickerData;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/sticker/action/StickerBaseAction;->getStickerProvider()Lcom/onyx/android/sdk/replicator/sticker/db/StickerProvider;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/sticker/db/StickerProvider;->syncStickers(Lcom/onyx/android/sdk/replicator/sticker/http/ComposedStickerData;)V

    return-object p1
.end method
