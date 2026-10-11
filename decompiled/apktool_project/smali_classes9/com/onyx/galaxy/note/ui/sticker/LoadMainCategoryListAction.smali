.class public final Lcom/onyx/galaxy/note/ui/sticker/LoadMainCategoryListAction;
.super Lcom/onyx/galaxy/note/ui/sticker/StickerUiBaseAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/galaxy/note/ui/sticker/StickerUiBaseAction<",
        "Ljava/util/List<",
        "+",
        "Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;",
        ">;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLoadMainCategoryListAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LoadMainCategoryListAction.kt\ncom/onyx/galaxy/note/ui/sticker/LoadMainCategoryListAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,67:1\n1855#2,2:68\n*S KotlinDebug\n*F\n+ 1 LoadMainCategoryListAction.kt\ncom/onyx/galaxy/note/ui/sticker/LoadMainCategoryListAction\n*L\n36#1:68,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u00020\u0001B\u000f\u0012\u0006\u0010\u0010\u001a\u00020\u000f\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u0014\u0010\u0005\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u00020\u0004H\u0014J\u001c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u00062\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0006H\u0002J\u000e\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0006H\u0002J\u0018\u0010\r\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\u000c\u001a\u00020\nH\u0002J\u0008\u0010\u000e\u001a\u00020\u0003H\u0002\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/ui/sticker/LoadMainCategoryListAction;",
        "Lcom/onyx/galaxy/note/ui/sticker/StickerUiBaseAction;",
        "",
        "Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;",
        "Lio/reactivex/rxjava3/core/Observable;",
        "create",
        "",
        "mainCategories",
        "o",
        "l",
        "",
        "type",
        "nameResId",
        "n",
        "m",
        "Lcom/onyx/galaxy/note/ui/sticker/StickerUiBundle;",
        "bundle",
        "<init>",
        "(Lcom/onyx/galaxy/note/ui/sticker/StickerUiBundle;)V",
        "note_overseasRelease"
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
        "SMAP\nLoadMainCategoryListAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LoadMainCategoryListAction.kt\ncom/onyx/galaxy/note/ui/sticker/LoadMainCategoryListAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,67:1\n1855#2,2:68\n*S KotlinDebug\n*F\n+ 1 LoadMainCategoryListAction.kt\ncom/onyx/galaxy/note/ui/sticker/LoadMainCategoryListAction\n*L\n36#1:68,2\n*E\n"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/ui/sticker/StickerUiBundle;)V
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/ui/sticker/StickerUiBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "bundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/onyx/galaxy/note/ui/sticker/StickerUiBaseAction;-><init>(Lcom/onyx/galaxy/note/ui/sticker/StickerUiBundle;)V

    return-void
.end method

.method public static final synthetic access$updateBundleState(Lcom/onyx/galaxy/note/ui/sticker/LoadMainCategoryListAction;Ljava/util/List;)Ljava/util/List;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/ui/sticker/LoadMainCategoryListAction;->o(Ljava/util/List;)Ljava/util/List;

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
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/ui/sticker/StickerUiBaseAction;->createObservable()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    sget-object v1, Lcom/onyx/galaxy/note/ui/sticker/LoadMainCategoryListAction$a;->e:Lcom/onyx/galaxy/note/ui/sticker/LoadMainCategoryListAction$a;

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/ui/sticker/LoadMainCategoryListAction$b;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/ui/sticker/LoadMainCategoryListAction$b;-><init>(Lcom/onyx/galaxy/note/ui/sticker/LoadMainCategoryListAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "map(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final l()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, -0x2

    sget v2, Lcom/onyx/android/sdk/replicator/R$string;->sticker_category_recent:I

    invoke-virtual {p0, v1, v2}, Lcom/onyx/galaxy/note/ui/sticker/LoadMainCategoryListAction;->n(II)Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/ui/sticker/LoadMainCategoryListAction;->m()Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x2

    sget v2, Lcom/onyx/android/sdk/replicator/R$string;->sticker_category_custom:I

    invoke-virtual {p0, v1, v2}, Lcom/onyx/galaxy/note/ui/sticker/LoadMainCategoryListAction;->n(II)Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x3

    sget v2, Lcom/onyx/android/sdk/replicator/R$string;->sticker_category_hot:I

    invoke-virtual {p0, v1, v2}, Lcom/onyx/galaxy/note/ui/sticker/LoadMainCategoryListAction;->n(II)Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public final m()Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;
    .locals 3

    new-instance p0, Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;

    invoke-direct {p0}, Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;-><init>()V

    const-string v0, "category_type_materials"

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->setUniqueId(Ljava/lang/String;)V

    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;->setType(I)V

    sget-object v1, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v2, Lcom/onyx/galaxy/note/R$string;->added_sticker:I

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/base/utils/ResManager;->getStringSafely(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;->setName(Ljava/lang/String;)V

    sget-object v1, Lcom/onyx/android/sdk/replicator/KSyncBundle;->INSTANCE:Lcom/onyx/android/sdk/replicator/KSyncBundle;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/replicator/KSyncBundle;->getUserStickerProvider()Lcom/onyx/android/sdk/replicator/sticker/db/StickerProvider;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/onyx/android/sdk/replicator/sticker/db/StickerProvider;->loadSubCategories(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;->setSubCategory(Ljava/util/List;)V

    return-object p0
.end method

.method public final n(II)Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;
    .locals 1

    new-instance p0, Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;

    invoke-direct {p0}, Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;-><init>()V

    sget-object v0, Lcom/onyx/android/sdk/data/utils/UUIDUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/UUIDUtils;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/utils/UUIDUtils;->shortUUID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->setUniqueId(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;->setType(I)V

    sget-object p1, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    invoke-virtual {p1, p2}, Lcom/onyx/android/sdk/base/utils/ResManager;->getStringSafely(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;->setName(Ljava/lang/String;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;->setPlaceholder(Z)V

    return-object p0
.end method

.method public final o(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;",
            ">;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/ui/sticker/LoadMainCategoryListAction;->l()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    invoke-interface {p1, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModelKt;->createCategoryRecent()Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/ui/sticker/LoadMainCategoryListAction;->m()Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;

    move-result-object p0

    invoke-interface {p1, v0, p0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :goto_0
    move-object p0, p1

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModelKt;->createCategoryAll(Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;

    move-result-object v2

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;->getSubCategory()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_1

    :cond_1
    return-object p1
.end method
