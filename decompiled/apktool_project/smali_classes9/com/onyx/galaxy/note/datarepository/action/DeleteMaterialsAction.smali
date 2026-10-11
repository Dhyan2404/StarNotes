.class public final Lcom/onyx/galaxy/note/datarepository/action/DeleteMaterialsAction;
.super Lcom/onyx/android/sdk/base/rx/RxBaseAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/base/rx/RxBaseAction<",
        "Lcom/onyx/galaxy/note/datarepository/action/DeleteMaterialsAction;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0008\u0008\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0015\u0012\u000c\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0007\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u000e\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\u0016\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0002R\u001d\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00078\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0008\u0010\t\u001a\u0004\u0008\n\u0010\u000b\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/datarepository/action/DeleteMaterialsAction;",
        "Lcom/onyx/android/sdk/base/rx/RxBaseAction;",
        "Lio/reactivex/rxjava3/core/Observable;",
        "create",
        "Lcom/onyx/galaxy/note/datarepository/bean/LibraryBean;",
        "library",
        "l",
        "",
        "e",
        "Ljava/util/List;",
        "getLibraryList",
        "()Ljava/util/List;",
        "libraryList",
        "<init>",
        "(Ljava/util/List;)V",
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
.field public final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/onyx/galaxy/note/datarepository/bean/LibraryBean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/galaxy/note/datarepository/bean/LibraryBean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "libraryList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;-><init>()V

    iput-object p1, p0, Lcom/onyx/galaxy/note/datarepository/action/DeleteMaterialsAction;->e:Ljava/util/List;

    return-void
.end method

.method public static final synthetic access$handleDelete(Lcom/onyx/galaxy/note/datarepository/action/DeleteMaterialsAction;Lcom/onyx/galaxy/note/datarepository/bean/LibraryBean;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/datarepository/action/DeleteMaterialsAction;->l(Lcom/onyx/galaxy/note/datarepository/bean/LibraryBean;)Lio/reactivex/rxjava3/core/Observable;

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
            "Lcom/onyx/galaxy/note/datarepository/action/DeleteMaterialsAction;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/onyx/galaxy/note/datarepository/action/DeleteMaterialsAction;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "just(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/onyx/galaxy/note/datarepository/action/DeleteMaterialsAction;->e:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lio/reactivex/rxjava3/core/Observable;->fromIterable(Ljava/lang/Iterable;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/datarepository/action/DeleteMaterialsAction$a;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/datarepository/action/DeleteMaterialsAction$a;-><init>(Lcom/onyx/galaxy/note/datarepository/action/DeleteMaterialsAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->concatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    const-string v1, "concatMap(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->takeLastOne(Lio/reactivex/rxjava3/core/Observable;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/datarepository/action/DeleteMaterialsAction$b;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/datarepository/action/DeleteMaterialsAction$b;-><init>(Lcom/onyx/galaxy/note/datarepository/action/DeleteMaterialsAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "map(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final getLibraryList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onyx/galaxy/note/datarepository/bean/LibraryBean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/datarepository/action/DeleteMaterialsAction;->e:Ljava/util/List;

    return-object p0
.end method

.method public final l(Lcom/onyx/galaxy/note/datarepository/bean/LibraryBean;)Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/galaxy/note/datarepository/bean/LibraryBean;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/galaxy/note/datarepository/bean/LibraryBean;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/datarepository/bean/LibraryBean;->getResourceType()Ljava/lang/String;

    move-result-object p0

    const-string v0, "TEMPLATE"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    const-string v0, "doOnNext(...)"

    if-eqz p0, :cond_1

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/datarepository/bean/LibraryBean;->getType()I

    move-result p0

    const/4 v1, 0x3

    if-ne p0, v1, :cond_0

    new-instance p0, Lcom/onyx/galaxy/note/datarepository/action/DeleteMaterialsCoverAction;

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/datarepository/bean/LibraryBean;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/onyx/galaxy/note/datarepository/action/DeleteMaterialsCoverAction;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    new-instance v1, Lcom/onyx/galaxy/note/datarepository/action/DeleteMaterialsAction$c;

    invoke-direct {v1, p1}, Lcom/onyx/galaxy/note/datarepository/action/DeleteMaterialsAction$c;-><init>(Lcom/onyx/galaxy/note/datarepository/bean/LibraryBean;)V

    invoke-virtual {p0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    sget-object p1, Lcom/onyx/galaxy/note/datarepository/action/DeleteMaterialsAction$d;->e:Lcom/onyx/galaxy/note/datarepository/action/DeleteMaterialsAction$d;

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_0
    invoke-virtual {p1}, Lcom/onyx/galaxy/note/datarepository/bean/LibraryBean;->getType()I

    move-result p0

    const/4 v1, 0x2

    if-ne p0, v1, :cond_2

    new-instance p0, Lcom/onyx/galaxy/note/datarepository/action/DeleteMaterialsPaperAction;

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/datarepository/bean/LibraryBean;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/onyx/galaxy/note/datarepository/action/DeleteMaterialsPaperAction;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    new-instance v1, Lcom/onyx/galaxy/note/datarepository/action/DeleteMaterialsAction$e;

    invoke-direct {v1, p1}, Lcom/onyx/galaxy/note/datarepository/action/DeleteMaterialsAction$e;-><init>(Lcom/onyx/galaxy/note/datarepository/bean/LibraryBean;)V

    invoke-virtual {p0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    sget-object p1, Lcom/onyx/galaxy/note/datarepository/action/DeleteMaterialsAction$f;->e:Lcom/onyx/galaxy/note/datarepository/action/DeleteMaterialsAction$f;

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_1
    invoke-virtual {p1}, Lcom/onyx/galaxy/note/datarepository/bean/LibraryBean;->getResourceType()Ljava/lang/String;

    move-result-object p0

    const-string v1, "STICKER"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    new-instance p0, Lcom/onyx/galaxy/note/datarepository/action/DeleteMaterialsStickerAction;

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/datarepository/bean/LibraryBean;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/onyx/galaxy/note/datarepository/action/DeleteMaterialsStickerAction;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    new-instance v1, Lcom/onyx/galaxy/note/datarepository/action/DeleteMaterialsAction$g;

    invoke-direct {v1, p1}, Lcom/onyx/galaxy/note/datarepository/action/DeleteMaterialsAction$g;-><init>(Lcom/onyx/galaxy/note/datarepository/bean/LibraryBean;)V

    invoke-virtual {p0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    sget-object p1, Lcom/onyx/galaxy/note/datarepository/action/DeleteMaterialsAction$h;->e:Lcom/onyx/galaxy/note/datarepository/action/DeleteMaterialsAction$h;

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_2
    invoke-static {p1}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "just(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
