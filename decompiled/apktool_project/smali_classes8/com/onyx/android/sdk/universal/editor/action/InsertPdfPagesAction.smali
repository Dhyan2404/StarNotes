.class public final Lcom/onyx/android/sdk/universal/editor/action/InsertPdfPagesAction;
.super Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction<",
        "Lcom/onyx/android/sdk/universal/editor/action/InsertPdfPagesAction;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0019\u0012\u0006\u0010\u0018\u001a\u00020\u0017\u0012\u0008\u0008\u0002\u0010\u0016\u001a\u00020\u0013\u00a2\u0006\u0004\u0008\u0019\u0010\u001aJ\u000e\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\u000e\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0002H\u0002J\u001e\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u00022\u0006\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0004H\u0002J\u000e\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u0002H\u0002J\u000e\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u0002H\u0002J\u0016\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\r0\u00022\u0006\u0010\u000c\u001a\u00020\u000bH\u0002J\u0016\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u00022\u0006\u0010\u000f\u001a\u00020\rH\u0002J\u000c\u0010\u0012\u001a\u0006\u0012\u0002\u0008\u00030\u0002H\u0002R\u0014\u0010\u0016\u001a\u00020\u00138\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0014\u0010\u0015\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/editor/action/InsertPdfPagesAction;",
        "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;",
        "Lio/reactivex/rxjava3/core/Observable;",
        "create",
        "",
        "m",
        "copyPath",
        "password",
        "s",
        "q",
        "o",
        "",
        "pageIndex",
        "Lcom/onyx/android/sdk/reader/data/ReaderPageInfo;",
        "p",
        "readerPageInfo",
        "Lcom/onyx/android/sdk/universal/editor/request/InsertPageRequest;",
        "n",
        "r",
        "Lcom/onyx/android/sdk/universal/editor/data/InsertPageArgs;",
        "h",
        "Lcom/onyx/android/sdk/universal/editor/data/InsertPageArgs;",
        "insertPageArgs",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "editorBundle",
        "<init>",
        "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/editor/data/InsertPageArgs;)V",
        "sdk-universal_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field public final h:Lcom/onyx/android/sdk/universal/editor/data/InsertPageArgs;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/editor/data/InsertPageArgs;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/EditorBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/universal/editor/data/InsertPageArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "editorBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "insertPageArgs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    .line 4
    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/action/InsertPdfPagesAction;->h:Lcom/onyx/android/sdk/universal/editor/data/InsertPageArgs;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/editor/data/InsertPageArgs;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 1
    new-instance p2, Lcom/onyx/android/sdk/universal/editor/data/InsertPageArgs;

    invoke-direct {p2}, Lcom/onyx/android/sdk/universal/editor/data/InsertPageArgs;-><init>()V

    .line 2
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/onyx/android/sdk/universal/editor/action/InsertPdfPagesAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/editor/data/InsertPageArgs;)V

    return-void
.end method

.method public static final synthetic access$copyPdfWithUri(Lcom/onyx/android/sdk/universal/editor/action/InsertPdfPagesAction;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/InsertPdfPagesAction;->m()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getInsertPageArgs$p(Lcom/onyx/android/sdk/universal/editor/action/InsertPdfPagesAction;)Lcom/onyx/android/sdk/universal/editor/data/InsertPageArgs;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/InsertPdfPagesAction;->h:Lcom/onyx/android/sdk/universal/editor/data/InsertPageArgs;

    return-object p0
.end method

.method public static final synthetic access$insertPage(Lcom/onyx/android/sdk/universal/editor/action/InsertPdfPagesAction;Lcom/onyx/android/sdk/reader/data/ReaderPageInfo;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/InsertPdfPagesAction;->n(Lcom/onyx/android/sdk/reader/data/ReaderPageInfo;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$insertPages(Lcom/onyx/android/sdk/universal/editor/action/InsertPdfPagesAction;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/InsertPdfPagesAction;->o()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$loadReaderPageInfo(Lcom/onyx/android/sdk/universal/editor/action/InsertPdfPagesAction;I)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/InsertPdfPagesAction;->p(I)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$openReaderDocument(Lcom/onyx/android/sdk/universal/editor/action/InsertPdfPagesAction;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/InsertPdfPagesAction;->q()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$saveNotePages(Lcom/onyx/android/sdk/universal/editor/action/InsertPdfPagesAction;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/InsertPdfPagesAction;->r()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$savePageAsPdf(Lcom/onyx/android/sdk/universal/editor/action/InsertPdfPagesAction;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/universal/editor/action/InsertPdfPagesAction;->s(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic l(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/action/InsertPdfPagesAction;->t(Ljava/lang/String;)V

    return-void
.end method

.method public static final t(Ljava/lang/String;)V
    .locals 1

    const-string v0, "$copyPath"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/base/utils/FileUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/FileUtils;

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/base/utils/FileUtils;->deleteFile(Ljava/lang/String;)Z

    return-void
.end method


# virtual methods
.method public create()Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/universal/editor/action/InsertPdfPagesAction;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/InsertPdfPagesAction$b;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/InsertPdfPagesAction$b;-><init>(Lcom/onyx/android/sdk/universal/editor/action/InsertPdfPagesAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/InsertPdfPagesAction$c;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/InsertPdfPagesAction$c;-><init>(Lcom/onyx/android/sdk/universal/editor/action/InsertPdfPagesAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/InsertPdfPagesAction$d;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/InsertPdfPagesAction$d;-><init>(Lcom/onyx/android/sdk/universal/editor/action/InsertPdfPagesAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/InsertPdfPagesAction$e;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/InsertPdfPagesAction$e;-><init>(Lcom/onyx/android/sdk/universal/editor/action/InsertPdfPagesAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/InsertPdfPagesAction$f;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/InsertPdfPagesAction$f;-><init>(Lcom/onyx/android/sdk/universal/editor/action/InsertPdfPagesAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/InsertPdfPagesAction$g;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/InsertPdfPagesAction$g;-><init>(Lcom/onyx/android/sdk/universal/editor/action/InsertPdfPagesAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/InsertPdfPagesAction$h;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/InsertPdfPagesAction$h;-><init>(Lcom/onyx/android/sdk/universal/editor/action/InsertPdfPagesAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/InsertPdfPagesAction$i;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/InsertPdfPagesAction$i;-><init>(Lcom/onyx/android/sdk/universal/editor/action/InsertPdfPagesAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "map(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final m()Lio/reactivex/rxjava3/core/Observable;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/InsertPdfPagesAction;->h:Lcom/onyx/android/sdk/universal/editor/data/InsertPageArgs;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/data/InsertPageArgs;->getTemplateUri()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p0, ""

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "just(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_0
    new-instance v1, Lcom/onyx/android/sdk/universal/editor/request/CopyDocumentWithUriRequest;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onyx/android/sdk/universal/editor/EditorBundle;->getWorkBundle()Lcom/onyx/android/sdk/universal/editor/WorkBundle;

    move-result-object v2

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-direct {v1, v2, v4, v3, v4}, Lcom/onyx/android/sdk/universal/editor/request/CopyDocumentWithUriRequest;-><init>(Lcom/onyx/android/sdk/universal/editor/WorkBundle;Ljava/nio/file/Path;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v1, v0}, Lcom/onyx/android/sdk/universal/editor/request/CopyDocumentWithUriRequest;->setUri(Landroid/net/Uri;)V

    invoke-static {p0, v1}, Lcom/onyx/android/sdk/universal/editor/action/extension/RxBaseAppActionKt;->submitRequestToIOSequence(Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;Lcom/onyx/android/sdk/base/rx/RxBaseRequest;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    sget-object v0, Lcom/onyx/android/sdk/universal/editor/action/InsertPdfPagesAction$a;->e:Lcom/onyx/android/sdk/universal/editor/action/InsertPdfPagesAction$a;

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "map(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final n(Lcom/onyx/android/sdk/reader/data/ReaderPageInfo;)Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/reader/data/ReaderPageInfo;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/universal/editor/request/InsertPageRequest;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/request/InsertPageRequest;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/editor/EditorBundle;->getWorkBundle()Lcom/onyx/android/sdk/universal/editor/WorkBundle;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/universal/editor/request/InsertPageRequest;-><init>(Lcom/onyx/android/sdk/universal/editor/WorkBundle;)V

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/InsertPdfPagesAction;->h:Lcom/onyx/android/sdk/universal/editor/data/InsertPageArgs;

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/universal/editor/request/InsertPageRequest;->setInsertPageArgs(Lcom/onyx/android/sdk/universal/editor/data/InsertPageArgs;)V

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/universal/editor/request/InsertPageRequest;->setReaderPageInfo(Lcom/onyx/android/sdk/reader/data/ReaderPageInfo;)V

    invoke-static {p0, v0}, Lcom/onyx/android/sdk/universal/editor/action/extension/RxBaseAppActionKt;->submitRequestToCore(Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;Lcom/onyx/android/sdk/base/rx/RxBaseRequest;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    new-instance p1, Lcom/onyx/android/sdk/universal/editor/action/InsertPdfPagesAction$j;

    invoke-direct {p1, v0}, Lcom/onyx/android/sdk/universal/editor/action/InsertPdfPagesAction$j;-><init>(Lcom/onyx/android/sdk/universal/editor/request/InsertPageRequest;)V

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "map(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final o()Lio/reactivex/rxjava3/core/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/universal/editor/action/InsertPdfPagesAction;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/InsertPdfPagesAction;->h:Lcom/onyx/android/sdk/universal/editor/data/InsertPageArgs;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/data/InsertPageArgs;->getTemplatePageIndexList()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    invoke-static {v1}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/InsertPdfPagesAction;->h:Lcom/onyx/android/sdk/universal/editor/data/InsertPageArgs;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/editor/data/InsertPageArgs;->getTemplatePageIndex()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->sortDescending(Ljava/util/List;)V

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/InsertPdfPagesAction$insertPages$1;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/InsertPdfPagesAction$insertPages$1;-><init>(Lcom/onyx/android/sdk/universal/editor/action/InsertPdfPagesAction;)V

    invoke-static {p0, v1}, Lcom/onyx/android/sdk/universal/editor/action/extension/DocCommonActionsKt;->createCoreObservable(Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;Lkotlin/jvm/functions/Function1;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    new-instance v2, Lcom/onyx/android/sdk/universal/editor/action/InsertPdfPagesAction$k;

    invoke-direct {v2, v0}, Lcom/onyx/android/sdk/universal/editor/action/InsertPdfPagesAction$k;-><init>(Ljava/util/List;)V

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/InsertPdfPagesAction$l;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/InsertPdfPagesAction$l;-><init>(Lcom/onyx/android/sdk/universal/editor/action/InsertPdfPagesAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->concatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/InsertPdfPagesAction$m;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/InsertPdfPagesAction$m;-><init>(Lcom/onyx/android/sdk/universal/editor/action/InsertPdfPagesAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->concatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->takeLast(I)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/InsertPdfPagesAction$n;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/InsertPdfPagesAction$n;-><init>(Lcom/onyx/android/sdk/universal/editor/action/InsertPdfPagesAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "map(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final p(I)Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/reader/data/ReaderPageInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/onyx/android/sdk/reader/request/LoadReaderPageInfoRequest;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    invoke-static {v1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->readerBundle(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lcom/onyx/android/sdk/reader/ReaderBundle;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/reader/request/LoadReaderPageInfoRequest;-><init>(Lcom/onyx/android/sdk/reader/ReaderBundle;)V

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/InsertPdfPagesAction;->h:Lcom/onyx/android/sdk/universal/editor/data/InsertPageArgs;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/editor/data/InsertPageArgs;->getTemplatePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/reader/request/LoadReaderPageInfoRequest;->setPath(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/reader/request/LoadReaderPageInfoRequest;->setPageIndex(I)V

    invoke-static {p0, v0}, Lcom/onyx/android/sdk/universal/editor/action/extension/RxBaseAppActionKt;->submitRequestToReader(Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;Lcom/onyx/android/sdk/base/rx/RxBaseRequest;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    new-instance p1, Lcom/onyx/android/sdk/universal/editor/action/InsertPdfPagesAction$o;

    invoke-direct {p1, v0}, Lcom/onyx/android/sdk/universal/editor/action/InsertPdfPagesAction$o;-><init>(Lcom/onyx/android/sdk/reader/request/LoadReaderPageInfoRequest;)V

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "map(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final q()Lio/reactivex/rxjava3/core/Observable;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/universal/editor/action/InsertPdfPagesAction;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/InsertPdfPagesAction;->h:Lcom/onyx/android/sdk/universal/editor/data/InsertPageArgs;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/data/InsertPageArgs;->getTemplatePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/StringKt;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "just(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_0
    new-instance v0, Lcom/onyx/android/sdk/reader/request/OpenRequest;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    invoke-static {v1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->readerBundle(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lcom/onyx/android/sdk/reader/ReaderBundle;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/reader/request/OpenRequest;-><init>(Lcom/onyx/android/sdk/reader/ReaderBundle;)V

    new-instance v1, Lcom/onyx/android/sdk/reader/data/OpenDocumentArgs;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onyx/android/sdk/universal/editor/EditorBundle;->getWorkBundle()Lcom/onyx/android/sdk/universal/editor/WorkBundle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onyx/android/sdk/universal/editor/WorkBundle;->getOpenDocArgs()Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;->getDocumentId()Ljava/lang/String;

    move-result-object v3

    iget-object v2, p0, Lcom/onyx/android/sdk/universal/editor/action/InsertPdfPagesAction;->h:Lcom/onyx/android/sdk/universal/editor/data/InsertPageArgs;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/universal/editor/data/InsertPageArgs;->getTemplatePath()Ljava/lang/String;

    move-result-object v4

    iget-object v2, p0, Lcom/onyx/android/sdk/universal/editor/action/InsertPdfPagesAction;->h:Lcom/onyx/android/sdk/universal/editor/data/InsertPageArgs;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/universal/editor/data/InsertPageArgs;->getPassword()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v2

    invoke-static {v2}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->viewSize(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lcom/onyx/android/sdk/base/data/Size;

    move-result-object v6

    const/4 v7, 0x0

    const/16 v8, 0x10

    const/4 v9, 0x0

    move-object v2, v1

    invoke-direct/range {v2 .. v9}, Lcom/onyx/android/sdk/reader/data/OpenDocumentArgs;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/onyx/android/sdk/base/data/Size;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/reader/request/OpenRequest;->setOpenDocumentArgs(Lcom/onyx/android/sdk/reader/data/OpenDocumentArgs;)V

    invoke-static {p0, v0}, Lcom/onyx/android/sdk/universal/editor/action/extension/RxBaseAppActionKt;->submitRequestToReader(Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;Lcom/onyx/android/sdk/base/rx/RxBaseRequest;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/InsertPdfPagesAction$p;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/InsertPdfPagesAction$p;-><init>(Lcom/onyx/android/sdk/universal/editor/action/InsertPdfPagesAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "map(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final r()Lio/reactivex/rxjava3/core/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "*>;"
        }
    .end annotation

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/page/SaveNotePagesAction;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {v0, p0, v1, v2, v1}, Lcom/onyx/android/sdk/universal/editor/action/page/SaveNotePagesAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public final s(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/rxjava3/core/Observable;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/universal/editor/action/InsertPdfPagesAction;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Lcom/onyx/android/sdk/base/extension/StringKt;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    const-class p2, Lcom/onyx/android/sdk/universal/editor/action/InsertPdfPagesAction;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "savePageAsPdf fail, path empty"

    invoke-virtual {p1, p2, v1, v0}, Lcom/onyx/android/sdk/base/utils/Debug;->d(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "just(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_0
    new-instance v0, Lcom/onyx/android/sdk/reader/api/ReaderExportArgs;

    invoke-direct {v0}, Lcom/onyx/android/sdk/reader/api/ReaderExportArgs;-><init>()V

    sget-object v1, Lcom/onyx/android/sdk/base/extension/Paths;->INSTANCE:Lcom/onyx/android/sdk/base/extension/Paths;

    sget-object v2, Lcom/onyx/android/sdk/data/common/path/ResourcePaths;->INSTANCE:Lcom/onyx/android/sdk/data/common/path/ResourcePaths;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v3

    invoke-static {v3}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->noteBundle(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lcom/onyx/android/sdk/note/NoteBundle;

    move-result-object v3

    invoke-virtual {v3}, Lcom/onyx/android/sdk/note/NoteBundle;->getDocumentId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/onyx/android/sdk/data/common/path/ResourcePaths;->appDocResourceContentDir(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/onyx/android/sdk/neopdf/lib/UUIDUtils;->INSTANCE:Lcom/onyx/android/sdk/neopdf/lib/UUIDUtils;

    invoke-virtual {v4}, Lcom/onyx/android/sdk/neopdf/lib/UUIDUtils;->rawUUID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".pdf"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/onyx/android/sdk/base/extension/Paths;->append(Ljava/nio/file/Path;Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v1

    invoke-interface {v1}, Ljava/nio/file/Path;->toAbsolutePath()Ljava/nio/file/Path;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/reader/api/ReaderExportArgs;->setOutputPath(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/InsertPdfPagesAction;->h:Lcom/onyx/android/sdk/universal/editor/data/InsertPageArgs;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/editor/data/InsertPageArgs;->getTemplatePageIndexList()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->sort(Ljava/util/List;)V

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/InsertPdfPagesAction;->h:Lcom/onyx/android/sdk/universal/editor/data/InsertPageArgs;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/editor/data/InsertPageArgs;->getTemplatePageIndexList()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->toIntArray(Ljava/util/Collection;)[I

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/reader/api/ReaderExportArgs;->setPages([I)V

    invoke-virtual {v0, p2}, Lcom/onyx/android/sdk/reader/api/ReaderExportArgs;->setSourceFilePassword(Ljava/lang/String;)V

    invoke-static {p2}, Lcom/onyx/android/sdk/base/extension/StringKt;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/InsertPdfPagesAction;->h:Lcom/onyx/android/sdk/universal/editor/data/InsertPageArgs;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/editor/data/InsertPageArgs;->getSelectAllPage()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p2

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    invoke-static {v1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->ioSequenceScheduler(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {p2, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p2

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/InsertPdfPagesAction$q;

    invoke-direct {v1, p1, v0}, Lcom/onyx/android/sdk/universal/editor/action/InsertPdfPagesAction$q;-><init>(Ljava/lang/String;Lcom/onyx/android/sdk/reader/api/ReaderExportArgs;)V

    invoke-virtual {p2, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p2

    goto :goto_0

    :cond_1
    new-instance v1, Lcom/onyx/android/sdk/reader/data/ExportPagesArgs;

    invoke-direct {v1, p1, p2, v0}, Lcom/onyx/android/sdk/reader/data/ExportPagesArgs;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/onyx/android/sdk/reader/api/ReaderExportArgs;)V

    new-instance p2, Lcom/onyx/android/sdk/reader/request/ExportPagesRequest;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v2

    invoke-static {v2}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->readerBundle(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lcom/onyx/android/sdk/reader/ReaderBundle;

    move-result-object v2

    invoke-direct {p2, v2, v1}, Lcom/onyx/android/sdk/reader/request/ExportPagesRequest;-><init>(Lcom/onyx/android/sdk/reader/ReaderBundle;Lcom/onyx/android/sdk/reader/data/ExportPagesArgs;)V

    invoke-static {p0, p2}, Lcom/onyx/android/sdk/universal/editor/action/extension/RxBaseAppActionKt;->submitRequestToReader(Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;Lcom/onyx/android/sdk/base/rx/RxBaseRequest;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p2

    :goto_0
    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/InsertPdfPagesAction$r;

    invoke-direct {v1, p0, v0}, Lcom/onyx/android/sdk/universal/editor/action/InsertPdfPagesAction$r;-><init>(Lcom/onyx/android/sdk/universal/editor/action/InsertPdfPagesAction;Lcom/onyx/android/sdk/reader/api/ReaderExportArgs;)V

    invoke-virtual {p2, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p2

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->ioSequenceScheduler(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object p0

    invoke-virtual {p2, p0}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    new-instance p2, Lcom/sunia/HTREnginev2/fmi;

    invoke-direct {p2, p1}, Lcom/sunia/HTREnginev2/fmi;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lio/reactivex/rxjava3/core/Observable;->doFinally(Lio/reactivex/rxjava3/functions/Action;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "doFinally(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
