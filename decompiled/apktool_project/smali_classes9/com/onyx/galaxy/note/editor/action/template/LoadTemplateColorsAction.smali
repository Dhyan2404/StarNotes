.class public final Lcom/onyx/galaxy/note/editor/action/template/LoadTemplateColorsAction;
.super Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction<",
        "Lcom/onyx/galaxy/note/editor/action/template/LoadTemplateColorsAction;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0010\u0008\n\u0002\u0008\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\u0012\u0006\u0010\u001e\u001a\u00020\u001d\u00a2\u0006\u0004\u0008\u001f\u0010 J\u000e\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\u0010\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u000e\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u0002H\u0002J\u0010\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\tH\u0002R(\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\r8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000f\u0010\u0010\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014R\"\u0010\u001c\u001a\u00020\u000e8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0016\u0010\u0017\u001a\u0004\u0008\u0018\u0010\u0019\"\u0004\u0008\u001a\u0010\u001b\u00a8\u0006!"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/editor/action/template/LoadTemplateColorsAction;",
        "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;",
        "Lio/reactivex/rxjava3/core/Observable;",
        "create",
        "Lcom/onyx/galaxy/note/category/action/template/LoadTemplateByJsonBeanAction;",
        "action",
        "",
        "n",
        "o",
        "",
        "pageId",
        "Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;",
        "p",
        "",
        "",
        "h",
        "Ljava/util/List;",
        "getColorList",
        "()Ljava/util/List;",
        "setColorList",
        "(Ljava/util/List;)V",
        "colorList",
        "i",
        "I",
        "getTemplateFillColor",
        "()I",
        "setTemplateFillColor",
        "(I)V",
        "templateFillColor",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "editorBundle",
        "<init>",
        "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V",
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
.field public h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public i:I


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/EditorBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "editorBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    sget-object p1, Lcom/onyx/galaxy/note/settings/data/NoteConfigConst;->INSTANCE:Lcom/onyx/galaxy/note/settings/data/NoteConfigConst;

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/settings/data/NoteConfigConst;->getDEFAULT_TEMPLATE_PAGE_COLOR_LIST()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/action/template/LoadTemplateColorsAction;->h:Ljava/util/List;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    iput p1, p0, Lcom/onyx/galaxy/note/editor/action/template/LoadTemplateColorsAction;->i:I

    return-void
.end method

.method public static final synthetic access$load(Lcom/onyx/galaxy/note/editor/action/template/LoadTemplateColorsAction;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/action/template/LoadTemplateColorsAction;->o()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$loadTemplateJsonBean(Lcom/onyx/galaxy/note/editor/action/template/LoadTemplateColorsAction;Ljava/lang/String;)Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/action/template/LoadTemplateColorsAction;->p(Ljava/lang/String;)Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic l(Lcom/onyx/galaxy/note/editor/action/template/LoadTemplateColorsAction;Lcom/onyx/galaxy/note/category/action/template/LoadTemplateByJsonBeanAction;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/action/template/LoadTemplateColorsAction;->m(Lcom/onyx/galaxy/note/editor/action/template/LoadTemplateColorsAction;Lcom/onyx/galaxy/note/category/action/template/LoadTemplateByJsonBeanAction;)V

    return-void
.end method

.method public static final m(Lcom/onyx/galaxy/note/editor/action/template/LoadTemplateColorsAction;Lcom/onyx/galaxy/note/category/action/template/LoadTemplateByJsonBeanAction;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/action/template/LoadTemplateColorsAction;->n(Lcom/onyx/galaxy/note/category/action/template/LoadTemplateByJsonBeanAction;)V

    return-void
.end method


# virtual methods
.method public create()Lio/reactivex/rxjava3/core/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/galaxy/note/editor/action/template/LoadTemplateColorsAction;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/editor/action/template/LoadTemplateColorsAction$a;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/editor/action/template/LoadTemplateColorsAction$a;-><init>(Lcom/onyx/galaxy/note/editor/action/template/LoadTemplateColorsAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/editor/action/template/LoadTemplateColorsAction$b;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/editor/action/template/LoadTemplateColorsAction$b;-><init>(Lcom/onyx/galaxy/note/editor/action/template/LoadTemplateColorsAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    invoke-static {v1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->coreScheduler(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/editor/action/template/LoadTemplateColorsAction$c;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/editor/action/template/LoadTemplateColorsAction$c;-><init>(Lcom/onyx/galaxy/note/editor/action/template/LoadTemplateColorsAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->getMainUIScheduler()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    sget-object v1, Lcom/onyx/galaxy/note/editor/action/template/LoadTemplateColorsAction$d;->e:Lcom/onyx/galaxy/note/editor/action/template/LoadTemplateColorsAction$d;

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    const-string v1, "flatMap(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lcom/onyx/galaxy/note/editor/action/template/LoadTemplateColorsAction$create$5;->INSTANCE:Lcom/onyx/galaxy/note/editor/action/template/LoadTemplateColorsAction$create$5;

    new-instance v2, Lcom/sunia/HTREnginev2/e0j;

    invoke-direct {v2, p0}, Lcom/sunia/HTREnginev2/e0j;-><init>(Lcom/onyx/galaxy/note/editor/action/template/LoadTemplateColorsAction;)V

    invoke-static {v0, v1, v2}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->doOnNextIf(Lio/reactivex/rxjava3/core/Observable;Lkotlin/jvm/functions/Function1;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->getMainUIScheduler()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/editor/action/template/LoadTemplateColorsAction$e;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/editor/action/template/LoadTemplateColorsAction$e;-><init>(Lcom/onyx/galaxy/note/editor/action/template/LoadTemplateColorsAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "map(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final getColorList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/action/template/LoadTemplateColorsAction;->h:Ljava/util/List;

    return-object p0
.end method

.method public final getTemplateFillColor()I
    .locals 0

    iget p0, p0, Lcom/onyx/galaxy/note/editor/action/template/LoadTemplateColorsAction;->i:I

    return p0
.end method

.method public final n(Lcom/onyx/galaxy/note/category/action/template/LoadTemplateByJsonBeanAction;)V
    .locals 4

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/category/action/template/LoadTemplateByJsonBeanAction;->getTemplateModel()Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;->getTemplateResourceWrapper()Lcom/onyx/android/sdk/replicator/note/bean/TemplateResourceWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/bean/TemplateResourceWrapper;->getFillColorList()Ljava/util/List;

    move-result-object v0

    sget-object v1, Lcom/onyx/galaxy/note/settings/data/NoteConfigConst;->INSTANCE:Lcom/onyx/galaxy/note/settings/data/NoteConfigConst;

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/settings/data/NoteConfigConst;->getDEFAULT_TEMPLATE_PAGE_COLOR_LIST()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v0, v3, v2}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->safelySubList(Ljava/util/List;II)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/settings/data/NoteConfigConst;->getDEFAULT_TEMPLATE_PAGE_COLOR_LIST()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v2, v1, :cond_0

    check-cast v0, Ljava/util/Collection;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/galaxy/note/editor/action/template/LoadTemplateColorsAction;->h:Ljava/util/List;

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/category/action/template/LoadTemplateByJsonBeanAction;->getTemplateModel()Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;->getTemplateResourceWrapper()Lcom/onyx/android/sdk/replicator/note/bean/TemplateResourceWrapper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/bean/TemplateResourceWrapper;->getCurFillColor()I

    move-result p1

    iput p1, p0, Lcom/onyx/galaxy/note/editor/action/template/LoadTemplateColorsAction;->i:I

    :cond_0
    return-void
.end method

.method public final o()Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/galaxy/note/editor/action/template/LoadTemplateColorsAction;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/onyx/galaxy/note/editor/action/template/LoadTemplateColorsAction$load$1;->INSTANCE:Lcom/onyx/galaxy/note/editor/action/template/LoadTemplateColorsAction$load$1;

    invoke-static {p0, v0}, Lcom/onyx/android/sdk/universal/editor/action/extension/DocCommonActionsKt;->createCoreObservable(Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;Lkotlin/jvm/functions/Function1;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/editor/action/template/LoadTemplateColorsAction$f;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/editor/action/template/LoadTemplateColorsAction$f;-><init>(Lcom/onyx/galaxy/note/editor/action/template/LoadTemplateColorsAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "map(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final p(Ljava/lang/String;)Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/EditorBundle;->getWorkBundle()Lcom/onyx/android/sdk/universal/editor/WorkBundle;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/WorkBundle;->getVirtualPolicy()Lcom/onyx/android/sdk/universal/editor/doc/VirtualDocPolicy;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualDocPolicy;->getVirtualPage(Ljava/lang/String;)Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;->getConfig()Lcom/onyx/android/sdk/universal/editor/doc/VirtualPageConfig;

    move-result-object p0

    if-eqz p0, :cond_0

    sget-object p1, Lcom/onyx/android/sdk/universal/ui/data/Templates;->INSTANCE:Lcom/onyx/android/sdk/universal/ui/data/Templates;

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/universal/ui/data/Templates;->pageConfigToTemplateJson(Lcom/onyx/android/sdk/universal/editor/doc/VirtualPageConfig;)Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;

    move-result-object p0

    if-nez p0, :cond_1

    :cond_0
    sget-object p0, Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;->Companion:Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean$Companion;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean$Companion;->defaultPaper()Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;

    move-result-object p0

    :cond_1
    return-object p0
.end method

.method public final setColorList(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/action/template/LoadTemplateColorsAction;->h:Ljava/util/List;

    return-void
.end method

.method public final setTemplateFillColor(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/galaxy/note/editor/action/template/LoadTemplateColorsAction;->i:I

    return-void
.end method
