.class public final Lcom/onyx/android/sdk/universal/editor/action/InsertPageAfterSpecifiedPageAction;
.super Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction<",
        "Lcom/onyx/android/sdk/universal/editor/action/InsertPageAfterSpecifiedPageAction;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B!\u0012\u0006\u0010\u0017\u001a\u00020\u0016\u0012\u0006\u0010\u000e\u001a\u00020\u000b\u0012\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J\u000e\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\u000e\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0002H\u0002J\u0008\u0010\u0006\u001a\u00020\u0004H\u0002J\u0008\u0010\u0008\u001a\u00020\u0007H\u0002J\u0008\u0010\t\u001a\u00020\u0007H\u0002J\u0008\u0010\n\u001a\u00020\u0004H\u0002R\u0014\u0010\u000e\u001a\u00020\u000b8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000c\u0010\rR\u0014\u0010\u0011\u001a\u00020\u00078\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000f\u0010\u0010R\u0016\u0010\u0015\u001a\u00020\u00128\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0013\u0010\u0014\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/editor/action/InsertPageAfterSpecifiedPageAction;",
        "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;",
        "Lio/reactivex/rxjava3/core/Observable;",
        "create",
        "",
        "o",
        "p",
        "",
        "n",
        "l",
        "m",
        "",
        "h",
        "I",
        "specifiedPageIndex",
        "i",
        "Z",
        "autoScrollToInsertPage",
        "Lcom/onyx/android/sdk/universal/editor/data/InsertPageArgs;",
        "j",
        "Lcom/onyx/android/sdk/universal/editor/data/InsertPageArgs;",
        "insertPageArgs",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "editorBundle",
        "<init>",
        "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;IZ)V",
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
.field public final h:I

.field public final i:Z

.field public j:Lcom/onyx/android/sdk/universal/editor/data/InsertPageArgs;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;IZ)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/EditorBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "editorBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    .line 3
    iput p2, p0, Lcom/onyx/android/sdk/universal/editor/action/InsertPageAfterSpecifiedPageAction;->h:I

    .line 4
    iput-boolean p3, p0, Lcom/onyx/android/sdk/universal/editor/action/InsertPageAfterSpecifiedPageAction;->i:Z

    .line 5
    new-instance p1, Lcom/onyx/android/sdk/universal/editor/data/InsertPageArgs;

    invoke-direct {p1}, Lcom/onyx/android/sdk/universal/editor/data/InsertPageArgs;-><init>()V

    add-int/lit8 p2, p2, 0x1

    .line 6
    invoke-virtual {p1, p2}, Lcom/onyx/android/sdk/universal/editor/data/InsertPageArgs;->setInsertAt(I)V

    .line 7
    invoke-virtual {p1, p3}, Lcom/onyx/android/sdk/universal/editor/data/InsertPageArgs;->setAutoScrollToInsertPage(Z)V

    .line 8
    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/InsertPageAfterSpecifiedPageAction;->j:Lcom/onyx/android/sdk/universal/editor/data/InsertPageArgs;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;IZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x1

    .line 1
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/onyx/android/sdk/universal/editor/action/InsertPageAfterSpecifiedPageAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;IZ)V

    return-void
.end method

.method public static final synthetic access$insertPage(Lcom/onyx/android/sdk/universal/editor/action/InsertPageAfterSpecifiedPageAction;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/InsertPageAfterSpecifiedPageAction;->o()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$loadSpecifiedPageTemplate(Lcom/onyx/android/sdk/universal/editor/action/InsertPageAfterSpecifiedPageAction;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/InsertPageAfterSpecifiedPageAction;->p()V

    return-void
.end method


# virtual methods
.method public create()Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/universal/editor/action/InsertPageAfterSpecifiedPageAction;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    invoke-static {v1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->coreScheduler(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/InsertPageAfterSpecifiedPageAction$a;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/InsertPageAfterSpecifiedPageAction$a;-><init>(Lcom/onyx/android/sdk/universal/editor/action/InsertPageAfterSpecifiedPageAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/InsertPageAfterSpecifiedPageAction$b;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/InsertPageAfterSpecifiedPageAction$b;-><init>(Lcom/onyx/android/sdk/universal/editor/action/InsertPageAfterSpecifiedPageAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/InsertPageAfterSpecifiedPageAction$c;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/InsertPageAfterSpecifiedPageAction$c;-><init>(Lcom/onyx/android/sdk/universal/editor/action/InsertPageAfterSpecifiedPageAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "map(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final l()Z
    .locals 4

    sget-object v0, Lcom/onyx/android/sdk/universal/editor/extension/MMKVNote;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/extension/MMKVNote;

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v2, v3, v1, v2}, Lcom/onyx/android/sdk/universal/editor/extension/MMKVNote;->getTemplateOption$default(Lcom/onyx/android/sdk/universal/editor/extension/MMKVNote;Ljava/lang/String;IILjava/lang/Object;)Lcom/onyx/android/sdk/data/utils/JSONObjectOption;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/utils/JSONObjectOption;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;

    sget-object v1, Lcom/onyx/android/sdk/replicator/KSyncBundle;->INSTANCE:Lcom/onyx/android/sdk/replicator/KSyncBundle;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/replicator/KSyncBundle;->getUserTemplateProvider()Lcom/onyx/android/sdk/replicator/note/db/TemplateProvider;

    move-result-object v1

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;->getUniqueId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/replicator/note/db/TemplateProvider;->loadTemplateListById(Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;

    move-result-object v1

    if-nez v1, :cond_0

    return v3

    :cond_0
    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;->getSizeFormat()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;->setSizeFormat(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/InsertPageAfterSpecifiedPageAction;->j:Lcom/onyx/android/sdk/universal/editor/data/InsertPageArgs;

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/editor/data/InsertPageArgs;->setTemplateJsonBean(Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;)V

    sget-object v0, Lcom/onyx/android/sdk/universal/ui/data/Templates;->INSTANCE:Lcom/onyx/android/sdk/universal/ui/data/Templates;

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/universal/ui/data/Templates;->paperTemplateRect(Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;)Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/editor/data/InsertPageArgs;->setPageRect(Landroid/graphics/RectF;)V

    const/4 p0, 0x1

    return p0
.end method

.method public final m()V
    .locals 3

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/EditorBundle;->getWorkBundle()Lcom/onyx/android/sdk/universal/editor/WorkBundle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/WorkBundle;->getVirtualPolicy()Lcom/onyx/android/sdk/universal/editor/doc/VirtualDocPolicy;

    move-result-object v0

    iget v1, p0, Lcom/onyx/android/sdk/universal/editor/action/InsertPageAfterSpecifiedPageAction;->h:I

    invoke-interface {v0, v1}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualDocPolicy;->getVirtualPage(I)Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/editor/EditorBundle;->getWorkBundle()Lcom/onyx/android/sdk/universal/editor/WorkBundle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/editor/WorkBundle;->getVirtualPolicy()Lcom/onyx/android/sdk/universal/editor/doc/VirtualDocPolicy;

    move-result-object v1

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;->getConfig()Lcom/onyx/android/sdk/universal/editor/doc/VirtualPageConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPageConfig;->getPageId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualDocPolicy;->isCoverPage(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/EditorBundle;->getWorkBundle()Lcom/onyx/android/sdk/universal/editor/WorkBundle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/WorkBundle;->getVirtualPolicy()Lcom/onyx/android/sdk/universal/editor/doc/VirtualDocPolicy;

    move-result-object v0

    iget v1, p0, Lcom/onyx/android/sdk/universal/editor/action/InsertPageAfterSpecifiedPageAction;->h:I

    add-int/lit8 v1, v1, 0x1

    invoke-interface {v0, v1}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualDocPolicy;->getVirtualPage(I)Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/InsertPageAfterSpecifiedPageAction;->j:Lcom/onyx/android/sdk/universal/editor/data/InsertPageArgs;

    sget-object v1, Lcom/onyx/android/sdk/universal/ui/data/Templates;->INSTANCE:Lcom/onyx/android/sdk/universal/ui/data/Templates;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;->getConfig()Lcom/onyx/android/sdk/universal/editor/doc/VirtualPageConfig;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/universal/ui/data/Templates;->pageConfigToTemplateJson(Lcom/onyx/android/sdk/universal/editor/doc/VirtualPageConfig;)Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/universal/editor/data/InsertPageArgs;->setTemplateJsonBean(Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;->getConfig()Lcom/onyx/android/sdk/universal/editor/doc/VirtualPageConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPageConfig;->getContentOriginRectF()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/editor/data/InsertPageArgs;->setPageRect(Landroid/graphics/RectF;)V

    return-void
.end method

.method public final n()Z
    .locals 4

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/EditorBundle;->getWorkBundle()Lcom/onyx/android/sdk/universal/editor/WorkBundle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/WorkBundle;->getVirtualModelProvider()Lcom/onyx/android/sdk/replicator/note/db/VirtualModelProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/db/VirtualModelProvider;->loadVirtualDocModel()Lcom/onyx/android/sdk/replicator/note/db/model/VirtualDocModel;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualDocModel;->getDefaultTemplate()Lcom/onyx/android/sdk/data/common/data/template/TemplateData;

    move-result-object v2

    if-nez v2, :cond_1

    return v1

    :cond_1
    invoke-virtual {v2}, Lcom/onyx/android/sdk/data/common/data/template/TemplateData;->getContentPageSize()Landroid/graphics/RectF;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    return v1

    :cond_2
    sget-object v3, Lcom/onyx/android/sdk/universal/ui/data/Templates;->INSTANCE:Lcom/onyx/android/sdk/universal/ui/data/Templates;

    invoke-virtual {v3, v0}, Lcom/onyx/android/sdk/universal/ui/data/Templates;->getDefaultTemplate(Lcom/onyx/android/sdk/replicator/note/db/model/VirtualDocModel;)Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;

    move-result-object v0

    if-nez v0, :cond_3

    return v1

    :cond_3
    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/InsertPageAfterSpecifiedPageAction;->j:Lcom/onyx/android/sdk/universal/editor/data/InsertPageArgs;

    invoke-virtual {v1, v0}, Lcom/onyx/android/sdk/universal/editor/data/InsertPageArgs;->setTemplateJsonBean(Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;)V

    invoke-virtual {v2}, Lcom/onyx/android/sdk/data/common/data/template/TemplateData;->getContentPageSize()Landroid/graphics/RectF;

    move-result-object v0

    invoke-static {v0}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->copy(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/onyx/android/sdk/universal/editor/data/InsertPageArgs;->setContentOriginRectF(Landroid/graphics/RectF;)V

    invoke-virtual {v2}, Lcom/onyx/android/sdk/data/common/data/template/TemplateData;->getContentPageSize()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/onyx/android/sdk/universal/editor/data/InsertPageArgs;->setPageRect(Landroid/graphics/RectF;)V

    sget-object v0, Lcom/onyx/android/sdk/universal/editor/action/InsertPageWithTemplateAction;->Companion:Lcom/onyx/android/sdk/universal/editor/action/InsertPageWithTemplateAction$Companion;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/InsertPageAfterSpecifiedPageAction;->j:Lcom/onyx/android/sdk/universal/editor/data/InsertPageArgs;

    invoke-virtual {v0, v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/InsertPageWithTemplateAction$Companion;->initTemplateRectByPreviousPage(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/editor/data/InsertPageArgs;)Z

    const/4 p0, 0x1

    return p0
.end method

.method public final o()Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/InsertPageAction;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/InsertPageAfterSpecifiedPageAction;->j:Lcom/onyx/android/sdk/universal/editor/data/InsertPageArgs;

    invoke-direct {v0, v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/InsertPageAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/editor/data/InsertPageArgs;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    sget-object v0, Lcom/onyx/android/sdk/universal/editor/action/InsertPageAfterSpecifiedPageAction$d;->e:Lcom/onyx/android/sdk/universal/editor/action/InsertPageAfterSpecifiedPageAction$d;

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "map(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final p()V
    .locals 1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/InsertPageAfterSpecifiedPageAction;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/InsertPageAfterSpecifiedPageAction;->l()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/InsertPageAfterSpecifiedPageAction;->m()V

    return-void
.end method
