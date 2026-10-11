.class public final Lcom/onyx/galaxy/note/ui/sticker/MoveSubCategoryAction;
.super Lcom/onyx/galaxy/note/ui/sticker/StickerUiBaseAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/galaxy/note/ui/sticker/StickerUiBaseAction<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B%\u0012\u0006\u0010\u0014\u001a\u00020\u0013\u0012\u0006\u0010\t\u001a\u00020\u0006\u0012\u000c\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\n\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\u000e\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0003H\u0014J\u0008\u0010\u0005\u001a\u00020\u0002H\u0002R\u0014\u0010\t\u001a\u00020\u00068\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0007\u0010\u0008R\u001a\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\n8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000c\u0010\rR\u0016\u0010\u0012\u001a\u00020\u000f8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0010\u0010\u0011\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/ui/sticker/MoveSubCategoryAction;",
        "Lcom/onyx/galaxy/note/ui/sticker/StickerUiBaseAction;",
        "",
        "Lio/reactivex/rxjava3/core/Observable;",
        "create",
        "n",
        "Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;",
        "f",
        "Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;",
        "mainCategory",
        "",
        "Lcom/onyx/android/sdk/replicator/sticker/model/StickerModel;",
        "g",
        "Ljava/util/List;",
        "stickers",
        "",
        "h",
        "Ljava/lang/String;",
        "newCategoryId",
        "Lcom/onyx/galaxy/note/ui/sticker/StickerUiBundle;",
        "bundle",
        "<init>",
        "(Lcom/onyx/galaxy/note/ui/sticker/StickerUiBundle;Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;Ljava/util/List;)V",
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

.field public final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/sticker/model/StickerModel;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public h:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/ui/sticker/StickerUiBundle;Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;Ljava/util/List;)V
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/ui/sticker/StickerUiBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/galaxy/note/ui/sticker/StickerUiBundle;",
            "Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/sticker/model/StickerModel;",
            ">;)V"
        }
    .end annotation

    const-string v0, "bundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mainCategory"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "stickers"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/onyx/galaxy/note/ui/sticker/StickerUiBaseAction;-><init>(Lcom/onyx/galaxy/note/ui/sticker/StickerUiBundle;)V

    iput-object p2, p0, Lcom/onyx/galaxy/note/ui/sticker/MoveSubCategoryAction;->f:Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;

    iput-object p3, p0, Lcom/onyx/galaxy/note/ui/sticker/MoveSubCategoryAction;->g:Ljava/util/List;

    const-string p1, ""

    iput-object p1, p0, Lcom/onyx/galaxy/note/ui/sticker/MoveSubCategoryAction;->h:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$getMainCategory$p(Lcom/onyx/galaxy/note/ui/sticker/MoveSubCategoryAction;)Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/ui/sticker/MoveSubCategoryAction;->f:Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;

    return-object p0
.end method

.method public static final synthetic access$getNewCategoryId$p(Lcom/onyx/galaxy/note/ui/sticker/MoveSubCategoryAction;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/ui/sticker/MoveSubCategoryAction;->h:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$getStickers$p(Lcom/onyx/galaxy/note/ui/sticker/MoveSubCategoryAction;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/ui/sticker/MoveSubCategoryAction;->g:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic access$setNewCategoryId$p(Lcom/onyx/galaxy/note/ui/sticker/MoveSubCategoryAction;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/ui/sticker/MoveSubCategoryAction;->h:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$updateBundleState(Lcom/onyx/galaxy/note/ui/sticker/MoveSubCategoryAction;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/ui/sticker/MoveSubCategoryAction;->n()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic l(Lcom/onyx/galaxy/note/ui/sticker/MoveSubCategoryAction;)V
    .locals 0

    invoke-static {p0}, Lcom/onyx/galaxy/note/ui/sticker/MoveSubCategoryAction;->m(Lcom/onyx/galaxy/note/ui/sticker/MoveSubCategoryAction;)V

    return-void
.end method

.method public static final m(Lcom/onyx/galaxy/note/ui/sticker/MoveSubCategoryAction;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/ui/sticker/StickerUiBaseAction;->getBundle$note_overseasRelease()Lcom/onyx/galaxy/note/ui/sticker/StickerUiBundle;

    move-result-object p0

    new-instance v0, Lcom/onyx/galaxy/note/ui/sticker/MoveStickerDoneEvent;

    invoke-direct {v0}, Lcom/onyx/galaxy/note/ui/sticker/MoveStickerDoneEvent;-><init>()V

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/ui/sticker/StickerUiBundle;->postEvent(Ljava/lang/Object;)V

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

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/ui/sticker/StickerUiBaseAction;->createObservable()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/ui/sticker/MoveSubCategoryAction$a;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/ui/sticker/MoveSubCategoryAction$a;-><init>(Lcom/onyx/galaxy/note/ui/sticker/MoveSubCategoryAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/ui/sticker/MoveSubCategoryAction$b;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/ui/sticker/MoveSubCategoryAction$b;-><init>(Lcom/onyx/galaxy/note/ui/sticker/MoveSubCategoryAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/ui/sticker/MoveSubCategoryAction$c;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/ui/sticker/MoveSubCategoryAction$c;-><init>(Lcom/onyx/galaxy/note/ui/sticker/MoveSubCategoryAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/ui/sticker/MoveSubCategoryAction$d;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/ui/sticker/MoveSubCategoryAction$d;-><init>(Lcom/onyx/galaxy/note/ui/sticker/MoveSubCategoryAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/ui/sticker/MoveSubCategoryAction$e;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/ui/sticker/MoveSubCategoryAction$e;-><init>(Lcom/onyx/galaxy/note/ui/sticker/MoveSubCategoryAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/ui/sticker/MoveSubCategoryAction$f;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/ui/sticker/MoveSubCategoryAction$f;-><init>(Lcom/onyx/galaxy/note/ui/sticker/MoveSubCategoryAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    const-string v1, "map(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->takeLastOne(Lio/reactivex/rxjava3/core/Observable;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    sget-object v1, Lcom/onyx/galaxy/note/ui/sticker/MoveSubCategoryAction$g;->e:Lcom/onyx/galaxy/note/ui/sticker/MoveSubCategoryAction$g;

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/sunia/HTREnginev2/cpj;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/cpj;-><init>(Lcom/onyx/galaxy/note/ui/sticker/MoveSubCategoryAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doFinally(Lio/reactivex/rxjava3/functions/Action;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "doFinally(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final n()Ljava/lang/Object;
    .locals 2

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/ui/sticker/StickerUiBaseAction;->getBundle$note_overseasRelease()Lcom/onyx/galaxy/note/ui/sticker/StickerUiBundle;

    move-result-object v0

    iget-object v1, p0, Lcom/onyx/galaxy/note/ui/sticker/MoveSubCategoryAction;->f:Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;

    invoke-virtual {v0, v1}, Lcom/onyx/galaxy/note/ui/sticker/StickerUiBundle;->clearSelectedItems(Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;)V

    return-object p0
.end method
