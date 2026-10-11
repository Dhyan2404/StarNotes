.class public final Lcom/onyx/galaxy/note/ui/sticker/AddSubCategoryAction;
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
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0017\u0012\u0006\u0010\u000c\u001a\u00020\u000b\u0012\u0006\u0010\n\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u000e\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0003H\u0014J\u0010\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0005H\u0002R\u0014\u0010\n\u001a\u00020\u00058\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0008\u0010\t\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/ui/sticker/AddSubCategoryAction;",
        "Lcom/onyx/galaxy/note/ui/sticker/StickerUiBaseAction;",
        "",
        "Lio/reactivex/rxjava3/core/Observable;",
        "create",
        "Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;",
        "subCategory",
        "l",
        "f",
        "Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;",
        "mainCategory",
        "Lcom/onyx/galaxy/note/ui/sticker/StickerUiBundle;",
        "bundle",
        "<init>",
        "(Lcom/onyx/galaxy/note/ui/sticker/StickerUiBundle;Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;)V",
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


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/ui/sticker/StickerUiBundle;Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;)V
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/ui/sticker/StickerUiBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "bundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mainCategory"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/onyx/galaxy/note/ui/sticker/StickerUiBaseAction;-><init>(Lcom/onyx/galaxy/note/ui/sticker/StickerUiBundle;)V

    iput-object p2, p0, Lcom/onyx/galaxy/note/ui/sticker/AddSubCategoryAction;->f:Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;

    return-void
.end method

.method public static final synthetic access$getMainCategory$p(Lcom/onyx/galaxy/note/ui/sticker/AddSubCategoryAction;)Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/ui/sticker/AddSubCategoryAction;->f:Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;

    return-object p0
.end method

.method public static final synthetic access$updateBundleState(Lcom/onyx/galaxy/note/ui/sticker/AddSubCategoryAction;Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/ui/sticker/AddSubCategoryAction;->l(Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;)Ljava/lang/Object;

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
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/ui/sticker/StickerUiBaseAction;->createObservable()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/ui/sticker/AddSubCategoryAction$a;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/ui/sticker/AddSubCategoryAction$a;-><init>(Lcom/onyx/galaxy/note/ui/sticker/AddSubCategoryAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/ui/sticker/AddSubCategoryAction$b;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/ui/sticker/AddSubCategoryAction$b;-><init>(Lcom/onyx/galaxy/note/ui/sticker/AddSubCategoryAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/ui/sticker/AddSubCategoryAction$c;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/ui/sticker/AddSubCategoryAction$c;-><init>(Lcom/onyx/galaxy/note/ui/sticker/AddSubCategoryAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/ui/sticker/AddSubCategoryAction$d;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/ui/sticker/AddSubCategoryAction$d;-><init>(Lcom/onyx/galaxy/note/ui/sticker/AddSubCategoryAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "map(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final l(Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/ui/sticker/StickerUiBaseAction;->getBundle$note_overseasRelease()Lcom/onyx/galaxy/note/ui/sticker/StickerUiBundle;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/onyx/galaxy/note/ui/sticker/StickerUiBundle;->addSubCategory(Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;)V

    return-object p0
.end method
