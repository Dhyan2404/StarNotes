.class public final Lcom/onyx/galaxy/note/category/action/GetNoteCoverTemplateArgsAction;
.super Lcom/onyx/galaxy/note/common/action/BaseNoteManagementAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/galaxy/note/common/action/BaseNoteManagementAction<",
        "Lcom/onyx/galaxy/note/category/data/TemplateFragmentArgs;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u000f\u0012\u0006\u0010\u000b\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u000e\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0003H\u0014J\u0010\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0005H\u0002R\u0014\u0010\u000b\u001a\u00020\u00088\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\t\u0010\nR\u0014\u0010\u000f\u001a\u00020\u000c8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\r\u0010\u000e\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/category/action/GetNoteCoverTemplateArgsAction;",
        "Lcom/onyx/galaxy/note/common/action/BaseNoteManagementAction;",
        "Lcom/onyx/galaxy/note/category/data/TemplateFragmentArgs;",
        "Lio/reactivex/rxjava3/core/Observable;",
        "create",
        "Lcom/onyx/galaxy/note/editor/action/template/LoadPageTemplateJsonAction;",
        "it",
        "n",
        "",
        "g",
        "Ljava/lang/String;",
        "uniqueId",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "h",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "editorBundle",
        "<init>",
        "(Ljava/lang/String;)V",
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
.field public final g:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final h:Lcom/onyx/android/sdk/universal/editor/EditorBundle;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "uniqueId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/onyx/galaxy/note/common/action/BaseNoteManagementAction;-><init>()V

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/action/GetNoteCoverTemplateArgsAction;->g:Ljava/lang/String;

    sget-object p1, Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;->INSTANCE:Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;->docManagerBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/action/GetNoteCoverTemplateArgsAction;->h:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    return-void
.end method

.method public static final synthetic access$getCoverTemplateFragmentArgs(Lcom/onyx/galaxy/note/category/action/GetNoteCoverTemplateArgsAction;Lcom/onyx/galaxy/note/editor/action/template/LoadPageTemplateJsonAction;)Lcom/onyx/galaxy/note/category/data/TemplateFragmentArgs;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/action/GetNoteCoverTemplateArgsAction;->n(Lcom/onyx/galaxy/note/editor/action/template/LoadPageTemplateJsonAction;)Lcom/onyx/galaxy/note/category/data/TemplateFragmentArgs;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getEditorBundle$p(Lcom/onyx/galaxy/note/category/action/GetNoteCoverTemplateArgsAction;)Lcom/onyx/android/sdk/universal/editor/EditorBundle;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/action/GetNoteCoverTemplateArgsAction;->h:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    return-object p0
.end method

.method public static final synthetic access$getUniqueId$p(Lcom/onyx/galaxy/note/category/action/GetNoteCoverTemplateArgsAction;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/action/GetNoteCoverTemplateArgsAction;->g:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic l(Lcom/onyx/galaxy/note/category/action/GetNoteCoverTemplateArgsAction;)V
    .locals 0

    invoke-static {p0}, Lcom/onyx/galaxy/note/category/action/GetNoteCoverTemplateArgsAction;->m(Lcom/onyx/galaxy/note/category/action/GetNoteCoverTemplateArgsAction;)V

    return-void
.end method

.method public static final m(Lcom/onyx/galaxy/note/category/action/GetNoteCoverTemplateArgsAction;)V
    .locals 7

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/doc/CloseDocumentAction;

    iget-object v2, p0, Lcom/onyx/galaxy/note/category/action/GetNoteCoverTemplateArgsAction;->h:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/onyx/android/sdk/universal/editor/action/doc/CloseDocumentAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x7

    invoke-static/range {v1 .. v6}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->execute$default(Lcom/onyx/android/sdk/base/rx/RxBaseAction;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Action;ILjava/lang/Object;)Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method


# virtual methods
.method public create()Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/galaxy/note/category/data/TemplateFragmentArgs;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/action/BaseNoteManagementAction;->createNoteProviderObservable()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/category/action/GetNoteCoverTemplateArgsAction$a;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/category/action/GetNoteCoverTemplateArgsAction$a;-><init>(Lcom/onyx/galaxy/note/category/action/GetNoteCoverTemplateArgsAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/category/action/GetNoteCoverTemplateArgsAction$b;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/category/action/GetNoteCoverTemplateArgsAction$b;-><init>(Lcom/onyx/galaxy/note/category/action/GetNoteCoverTemplateArgsAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/category/action/GetNoteCoverTemplateArgsAction$c;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/category/action/GetNoteCoverTemplateArgsAction$c;-><init>(Lcom/onyx/galaxy/note/category/action/GetNoteCoverTemplateArgsAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/category/action/GetNoteCoverTemplateArgsAction$d;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/category/action/GetNoteCoverTemplateArgsAction$d;-><init>(Lcom/onyx/galaxy/note/category/action/GetNoteCoverTemplateArgsAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/sunia/HTREnginev2/n2h;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/n2h;-><init>(Lcom/onyx/galaxy/note/category/action/GetNoteCoverTemplateArgsAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doFinally(Lio/reactivex/rxjava3/functions/Action;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->getMainUIScheduler()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object p0

    invoke-virtual {v0, p0}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "observeOn(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final n(Lcom/onyx/galaxy/note/editor/action/template/LoadPageTemplateJsonAction;)Lcom/onyx/galaxy/note/category/data/TemplateFragmentArgs;
    .locals 2

    new-instance v0, Lcom/onyx/galaxy/note/category/data/TemplateFragmentArgs;

    invoke-direct {v0}, Lcom/onyx/galaxy/note/category/data/TemplateFragmentArgs;-><init>()V

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/action/template/LoadPageTemplateJsonAction;->getCoverTemplateJsonBean()Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/action/template/LoadPageTemplateJsonAction;->getPaperTemplateJsonBean()Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;

    move-result-object v1

    :cond_0
    invoke-virtual {v0, v1}, Lcom/onyx/galaxy/note/category/data/TemplateFragmentArgs;->setCoverTemplateJsonBean(Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;)V

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/action/template/LoadPageTemplateJsonAction;->getHasPictureOrPDF()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/onyx/galaxy/note/category/data/TemplateFragmentArgs;->setHasPictureOrPDF(Z)V

    const/4 p1, 0x4

    invoke-virtual {v0, p1}, Lcom/onyx/galaxy/note/category/data/TemplateFragmentArgs;->setType(I)V

    sget-object p1, Lcom/onyx/galaxy/note/category/data/TemplateChangeType;->CHANGE_COVER:Lcom/onyx/galaxy/note/category/data/TemplateChangeType;

    invoke-virtual {v0, p1}, Lcom/onyx/galaxy/note/category/data/TemplateFragmentArgs;->setChangeType(Lcom/onyx/galaxy/note/category/data/TemplateChangeType;)V

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/data/TemplateFragmentArgs;->getOnlyCoverChange()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/onyx/galaxy/note/category/data/TemplateFragmentArgs;->setChangeContainsCover(Z)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/action/GetNoteCoverTemplateArgsAction;->g:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/onyx/galaxy/note/category/data/TemplateFragmentArgs;->setNoteId(Ljava/lang/String;)V

    return-object v0
.end method
