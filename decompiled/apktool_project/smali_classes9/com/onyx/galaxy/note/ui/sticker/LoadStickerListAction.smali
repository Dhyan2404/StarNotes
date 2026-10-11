.class public final Lcom/onyx/galaxy/note/ui/sticker/LoadStickerListAction;
.super Lcom/onyx/galaxy/note/ui/sticker/StickerUiBaseAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/galaxy/note/ui/sticker/StickerUiBaseAction<",
        "Ljava/util/List<",
        "+",
        "Lcom/onyx/android/sdk/replicator/sticker/model/StickerModel;",
        ">;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u00020\u0001B\u001f\u0012\u0006\u0010\u000e\u001a\u00020\r\u0012\u0006\u0010\n\u001a\u00020\u0007\u0012\u0006\u0010\u000c\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u0014\u0010\u0005\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u00020\u0004H\u0014J\u0014\u0010\u0006\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u00020\u0004H\u0002R\u0014\u0010\n\u001a\u00020\u00078\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0008\u0010\tR\u0014\u0010\u000c\u001a\u00020\u00078\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000b\u0010\t\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/ui/sticker/LoadStickerListAction;",
        "Lcom/onyx/galaxy/note/ui/sticker/StickerUiBaseAction;",
        "",
        "Lcom/onyx/android/sdk/replicator/sticker/model/StickerModel;",
        "Lio/reactivex/rxjava3/core/Observable;",
        "create",
        "l",
        "Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;",
        "f",
        "Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;",
        "mainCategory",
        "g",
        "subCategory",
        "Lcom/onyx/galaxy/note/ui/sticker/StickerUiBundle;",
        "bundle",
        "<init>",
        "(Lcom/onyx/galaxy/note/ui/sticker/StickerUiBundle;Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;)V",
        "note_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field public final f:Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final g:Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/ui/sticker/StickerUiBundle;Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;)V
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/ui/sticker/StickerUiBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "bundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mainCategory"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "subCategory"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/onyx/galaxy/note/ui/sticker/StickerUiBaseAction;-><init>(Lcom/onyx/galaxy/note/ui/sticker/StickerUiBundle;)V

    iput-object p2, p0, Lcom/onyx/galaxy/note/ui/sticker/LoadStickerListAction;->f:Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;

    iput-object p3, p0, Lcom/onyx/galaxy/note/ui/sticker/LoadStickerListAction;->g:Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;

    return-void
.end method

.method public static final synthetic access$loadStickersByCategoryType(Lcom/onyx/galaxy/note/ui/sticker/LoadStickerListAction;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/ui/sticker/LoadStickerListAction;->l()Lio/reactivex/rxjava3/core/Observable;

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
            "Lcom/onyx/android/sdk/replicator/sticker/model/StickerModel;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/ui/sticker/StickerUiBaseAction;->createObservable()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/ui/sticker/LoadStickerListAction$a;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/ui/sticker/LoadStickerListAction$a;-><init>(Lcom/onyx/galaxy/note/ui/sticker/LoadStickerListAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "flatMap(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final l()Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/sticker/model/StickerModel;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/onyx/galaxy/note/ui/sticker/LoadStickerListAction;->f:Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;->getType()I

    move-result v0

    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    new-instance p0, Lcom/onyx/android/sdk/replicator/sticker/action/LoadRecentUsageAction;

    invoke-direct {p0}, Lcom/onyx/android/sdk/replicator/sticker/action/LoadRecentUsageAction;-><init>()V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/onyx/galaxy/note/ui/sticker/LoadStickerListAction;->g:Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;->getType()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    new-instance v0, Lcom/onyx/android/sdk/replicator/sticker/action/LoadStickerByParentCategoryAction;

    iget-object p0, p0, Lcom/onyx/galaxy/note/ui/sticker/LoadStickerListAction;->f:Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/replicator/sticker/action/LoadStickerByParentCategoryAction;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/onyx/android/sdk/replicator/sticker/action/LoadStickerByCategoryAction;

    iget-object p0, p0, Lcom/onyx/galaxy/note/ui/sticker/LoadStickerListAction;->g:Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/replicator/sticker/action/LoadStickerByCategoryAction;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    :goto_0
    return-object p0
.end method
