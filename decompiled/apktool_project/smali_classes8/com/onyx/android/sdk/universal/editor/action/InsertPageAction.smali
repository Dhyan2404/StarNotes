.class public final Lcom/onyx/android/sdk/universal/editor/action/InsertPageAction;
.super Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction<",
        "Lcom/onyx/android/sdk/universal/editor/action/InsertPageAction;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0017\u0012\u0006\u0010\u001a\u001a\u00020\u0019\u0012\u0006\u0010\u0010\u001a\u00020\r\u00a2\u0006\u0004\u0008\u001b\u0010\u001cJ\u000e\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\u000e\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u0002H\u0002J\u000e\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u0002H\u0002J\u000e\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u0002H\u0002J\u000e\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0002H\u0002J\u0016\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\n0\u00022\u0006\u0010\t\u001a\u00020\u0007H\u0002J\u000c\u0010\u000c\u001a\u0006\u0012\u0002\u0008\u00030\u0002H\u0002R\u0014\u0010\u0010\u001a\u00020\r8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000e\u0010\u000fR\u0016\u0010\u0014\u001a\u00020\u00118\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0012\u0010\u0013R\u0016\u0010\u0018\u001a\u00020\u00158\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0016\u0010\u0017\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/editor/action/InsertPageAction;",
        "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;",
        "Lio/reactivex/rxjava3/core/Observable;",
        "create",
        "l",
        "m",
        "p",
        "Lcom/onyx/android/sdk/reader/data/ReaderPageInfo;",
        "o",
        "readerPageInfo",
        "Lcom/onyx/android/sdk/universal/editor/request/InsertPageRequest;",
        "n",
        "q",
        "Lcom/onyx/android/sdk/universal/editor/data/InsertPageArgs;",
        "h",
        "Lcom/onyx/android/sdk/universal/editor/data/InsertPageArgs;",
        "insertPageArgs",
        "Lcom/onyx/android/sdk/universal/editor/data/EditorAnimatorContext;",
        "i",
        "Lcom/onyx/android/sdk/universal/editor/data/EditorAnimatorContext;",
        "context",
        "",
        "j",
        "Ljava/lang/String;",
        "pageId",
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

.field public i:Lcom/onyx/android/sdk/universal/editor/data/EditorAnimatorContext;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public j:Ljava/lang/String;
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

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/action/InsertPageAction;->h:Lcom/onyx/android/sdk/universal/editor/data/InsertPageArgs;

    new-instance p1, Lcom/onyx/android/sdk/universal/editor/data/EditorAnimatorContext;

    invoke-direct {p1}, Lcom/onyx/android/sdk/universal/editor/data/EditorAnimatorContext;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/InsertPageAction;->i:Lcom/onyx/android/sdk/universal/editor/data/EditorAnimatorContext;

    const-string p1, ""

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/InsertPageAction;->j:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$copyPdfWithUri(Lcom/onyx/android/sdk/universal/editor/action/InsertPageAction;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/InsertPageAction;->l()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$ensurePdfTemplatePath(Lcom/onyx/android/sdk/universal/editor/action/InsertPageAction;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/InsertPageAction;->m()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getContext$p(Lcom/onyx/android/sdk/universal/editor/action/InsertPageAction;)Lcom/onyx/android/sdk/universal/editor/data/EditorAnimatorContext;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/InsertPageAction;->i:Lcom/onyx/android/sdk/universal/editor/data/EditorAnimatorContext;

    return-object p0
.end method

.method public static final synthetic access$getInsertPageArgs$p(Lcom/onyx/android/sdk/universal/editor/action/InsertPageAction;)Lcom/onyx/android/sdk/universal/editor/data/InsertPageArgs;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/InsertPageAction;->h:Lcom/onyx/android/sdk/universal/editor/data/InsertPageArgs;

    return-object p0
.end method

.method public static final synthetic access$insertPage(Lcom/onyx/android/sdk/universal/editor/action/InsertPageAction;Lcom/onyx/android/sdk/reader/data/ReaderPageInfo;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/InsertPageAction;->n(Lcom/onyx/android/sdk/reader/data/ReaderPageInfo;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$loadReaderPageInfo(Lcom/onyx/android/sdk/universal/editor/action/InsertPageAction;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/InsertPageAction;->o()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$openReaderDocument(Lcom/onyx/android/sdk/universal/editor/action/InsertPageAction;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/InsertPageAction;->p()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$saveNotePages(Lcom/onyx/android/sdk/universal/editor/action/InsertPageAction;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/InsertPageAction;->q()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$setPageId$p(Lcom/onyx/android/sdk/universal/editor/action/InsertPageAction;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/InsertPageAction;->j:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public create()Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/universal/editor/action/InsertPageAction;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/InsertPageAction$d;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/InsertPageAction$d;-><init>(Lcom/onyx/android/sdk/universal/editor/action/InsertPageAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/InsertPageAction$e;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/InsertPageAction$e;-><init>(Lcom/onyx/android/sdk/universal/editor/action/InsertPageAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/InsertPageAction$f;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/InsertPageAction$f;-><init>(Lcom/onyx/android/sdk/universal/editor/action/InsertPageAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/InsertPageAction$g;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/InsertPageAction$g;-><init>(Lcom/onyx/android/sdk/universal/editor/action/InsertPageAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/InsertPageAction$h;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/InsertPageAction$h;-><init>(Lcom/onyx/android/sdk/universal/editor/action/InsertPageAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/InsertPageAction$i;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/InsertPageAction$i;-><init>(Lcom/onyx/android/sdk/universal/editor/action/InsertPageAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/InsertPageAction$j;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/InsertPageAction$j;-><init>(Lcom/onyx/android/sdk/universal/editor/action/InsertPageAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/InsertPageAction$k;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/InsertPageAction$k;-><init>(Lcom/onyx/android/sdk/universal/editor/action/InsertPageAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/InsertPageAction$l;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/InsertPageAction$l;-><init>(Lcom/onyx/android/sdk/universal/editor/action/InsertPageAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/InsertPageAction$b;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/InsertPageAction$b;-><init>(Lcom/onyx/android/sdk/universal/editor/action/InsertPageAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/InsertPageAction$c;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/InsertPageAction$c;-><init>(Lcom/onyx/android/sdk/universal/editor/action/InsertPageAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "map(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final l()Lio/reactivex/rxjava3/core/Observable;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/universal/editor/action/InsertPageAction;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/InsertPageAction;->h:Lcom/onyx/android/sdk/universal/editor/data/InsertPageArgs;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/data/InsertPageArgs;->getTemplateUri()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_0

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

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/InsertPageAction$a;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/InsertPageAction$a;-><init>(Lcom/onyx/android/sdk/universal/editor/action/InsertPageAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "map(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final m()Lio/reactivex/rxjava3/core/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/universal/editor/action/InsertPageAction;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/InsertPageAction;->h:Lcom/onyx/android/sdk/universal/editor/data/InsertPageArgs;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/data/InsertPageArgs;->getTemplateJsonBean()Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;

    move-result-object v0

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/InsertPageAction;->h:Lcom/onyx/android/sdk/universal/editor/data/InsertPageArgs;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/editor/data/InsertPageArgs;->getTemplatePath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_2

    if-eqz v0, :cond_2

    sget-object v1, Lcom/onyx/android/sdk/base/data/ContentConstants;->INSTANCE:Lcom/onyx/android/sdk/base/data/ContentConstants;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;->getContentType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/base/data/ContentConstants;->isTemplatePDF(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    new-instance v2, Lcom/onyx/android/sdk/universal/editor/action/InsertPageAction$ensurePdfTemplatePath$1;

    invoke-direct {v2, v0, p0}, Lcom/onyx/android/sdk/universal/editor/action/InsertPageAction$ensurePdfTemplatePath$1;-><init>(Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;Lcom/onyx/android/sdk/universal/editor/action/InsertPageAction;)V

    invoke-static {v1, v2}, Lcom/onyx/android/sdk/universal/editor/action/extension/DocCommonActionsKt;->createCoreObservable(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lkotlin/jvm/functions/Function1;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/InsertPageAction$m;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/InsertPageAction$m;-><init>(Lcom/onyx/android/sdk/universal/editor/action/InsertPageAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "map(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_2
    :goto_1
    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "just(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final n(Lcom/onyx/android/sdk/reader/data/ReaderPageInfo;)Lio/reactivex/rxjava3/core/Observable;
    .locals 6
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

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/InsertPageAction;->h:Lcom/onyx/android/sdk/universal/editor/data/InsertPageArgs;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/editor/data/InsertPageArgs;->getTemplateJsonBean()Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;

    move-result-object v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/onyx/android/sdk/universal/editor/extension/MMKVNote;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/extension/MMKVNote;

    const/4 v3, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-static {v2, v5, v3, v4, v5}, Lcom/onyx/android/sdk/universal/editor/extension/MMKVNote;->getTemplateOption$default(Lcom/onyx/android/sdk/universal/editor/extension/MMKVNote;Ljava/lang/String;IILjava/lang/Object;)Lcom/onyx/android/sdk/data/utils/JSONObjectOption;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onyx/android/sdk/data/utils/JSONObjectOption;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;

    :cond_0
    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/universal/editor/data/InsertPageArgs;->setTemplateJsonBean(Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;)V

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/InsertPageAction;->h:Lcom/onyx/android/sdk/universal/editor/data/InsertPageArgs;

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/universal/editor/request/InsertPageRequest;->setInsertPageArgs(Lcom/onyx/android/sdk/universal/editor/data/InsertPageArgs;)V

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/universal/editor/request/InsertPageRequest;->setReaderPageInfo(Lcom/onyx/android/sdk/reader/data/ReaderPageInfo;)V

    invoke-static {p0, v0}, Lcom/onyx/android/sdk/universal/editor/action/extension/RxBaseAppActionKt;->submitRequestToCore(Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;Lcom/onyx/android/sdk/base/rx/RxBaseRequest;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    new-instance p1, Lcom/onyx/android/sdk/universal/editor/action/InsertPageAction$n;

    invoke-direct {p1, v0}, Lcom/onyx/android/sdk/universal/editor/action/InsertPageAction$n;-><init>(Lcom/onyx/android/sdk/universal/editor/request/InsertPageRequest;)V

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "map(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final o()Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
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

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/InsertPageAction;->h:Lcom/onyx/android/sdk/universal/editor/data/InsertPageArgs;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/editor/data/InsertPageArgs;->getTemplatePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/reader/request/LoadReaderPageInfoRequest;->setPath(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/InsertPageAction;->h:Lcom/onyx/android/sdk/universal/editor/data/InsertPageArgs;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/editor/data/InsertPageArgs;->getTemplatePageIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/reader/request/LoadReaderPageInfoRequest;->setPageIndex(I)V

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/InsertPageAction;->h:Lcom/onyx/android/sdk/universal/editor/data/InsertPageArgs;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/editor/data/InsertPageArgs;->getPassword()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/reader/request/LoadReaderPageInfoRequest;->setPassword(Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/onyx/android/sdk/universal/editor/action/extension/RxBaseAppActionKt;->submitRequestToReader(Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;Lcom/onyx/android/sdk/base/rx/RxBaseRequest;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/InsertPageAction$o;

    invoke-direct {v1, v0}, Lcom/onyx/android/sdk/universal/editor/action/InsertPageAction$o;-><init>(Lcom/onyx/android/sdk/reader/request/LoadReaderPageInfoRequest;)V

    invoke-virtual {p0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "map(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final p()Lio/reactivex/rxjava3/core/Observable;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/universal/editor/action/InsertPageAction;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/InsertPageAction;->h:Lcom/onyx/android/sdk/universal/editor/data/InsertPageArgs;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/data/InsertPageArgs;->getTemplatePath()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "just(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_1
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

    iget-object v2, p0, Lcom/onyx/android/sdk/universal/editor/action/InsertPageAction;->h:Lcom/onyx/android/sdk/universal/editor/data/InsertPageArgs;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/universal/editor/data/InsertPageArgs;->getTemplatePath()Ljava/lang/String;

    move-result-object v4

    iget-object v2, p0, Lcom/onyx/android/sdk/universal/editor/action/InsertPageAction;->h:Lcom/onyx/android/sdk/universal/editor/data/InsertPageArgs;

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

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/InsertPageAction$p;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/InsertPageAction$p;-><init>(Lcom/onyx/android/sdk/universal/editor/action/InsertPageAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "map(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final q()Lio/reactivex/rxjava3/core/Observable;
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
