.class public final Lcom/onyx/galaxy/note/editor/handler/TemplateEventHandler;
.super Lcom/onyx/android/sdk/universal/editor/eventhandler/BaseEventHandler;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0017\u001a\u00020\u0016\u0012\u0006\u0010\u0015\u001a\u00020\u0012\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J\u0008\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\u0006\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0007J\u0010\u0010\u0008\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0007H\u0007J\u0010\u0010\n\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\tH\u0007J\u0010\u0010\u000c\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u000bH\u0007J\u0018\u0010\u0011\u001a\u00020\u00022\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u0010\u001a\u00020\u000fH\u0002R\u0014\u0010\u0015\u001a\u00020\u00128\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0013\u0010\u0014\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/editor/handler/TemplateEventHandler;",
        "Lcom/onyx/android/sdk/universal/editor/eventhandler/BaseEventHandler;",
        "",
        "destroy",
        "Lcom/onyx/galaxy/note/editor/event/ChangeTemplateEvent;",
        "event",
        "onChangeTemplateEvent",
        "Lcom/onyx/galaxy/note/category/event/ApplyTemplateEvent;",
        "onApplyTemplateEvent",
        "Lcom/onyx/galaxy/note/category/event/MoreTemplateForInsertPageEvent;",
        "onMoreTemplateForInsertPageEvent",
        "Lcom/onyx/galaxy/note/category/event/InsertPageWithTemplateEvent;",
        "onInsertPageWithTemplateEvent",
        "Lcom/onyx/galaxy/note/editor/action/template/LoadPageTemplateJsonAction;",
        "action",
        "",
        "changeTemplateKey",
        "c",
        "Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;",
        "f",
        "Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;",
        "scribbleFragment",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "editorBundle",
        "<init>",
        "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;)V",
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
.field public final f:Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/EditorBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "editorBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "scribbleFragment"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/universal/editor/eventhandler/BaseEventHandler;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    iput-object p2, p0, Lcom/onyx/galaxy/note/editor/handler/TemplateEventHandler;->f:Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;

    sget-object p1, Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;->INSTANCE:Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;

    invoke-virtual {p1, p0}, Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;->ensureRegister(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic a(Lcom/onyx/galaxy/note/editor/handler/TemplateEventHandler;Lcom/onyx/galaxy/note/category/event/ApplyTemplateEvent;Lcom/onyx/android/sdk/universal/editor/action/bkground/ApplyTemplateAction;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/onyx/galaxy/note/editor/handler/TemplateEventHandler;->b(Lcom/onyx/galaxy/note/editor/handler/TemplateEventHandler;Lcom/onyx/galaxy/note/category/event/ApplyTemplateEvent;Lcom/onyx/android/sdk/universal/editor/action/bkground/ApplyTemplateAction;)V

    return-void
.end method

.method public static final synthetic access$showChangeTemplateFragment(Lcom/onyx/galaxy/note/editor/handler/TemplateEventHandler;Lcom/onyx/galaxy/note/editor/action/template/LoadPageTemplateJsonAction;I)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/onyx/galaxy/note/editor/handler/TemplateEventHandler;->c(Lcom/onyx/galaxy/note/editor/action/template/LoadPageTemplateJsonAction;I)V

    return-void
.end method

.method public static final b(Lcom/onyx/galaxy/note/editor/handler/TemplateEventHandler;Lcom/onyx/galaxy/note/category/event/ApplyTemplateEvent;Lcom/onyx/android/sdk/universal/editor/action/bkground/ApplyTemplateAction;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "action"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/handler/TemplateEventHandler;->f:Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->getEditorBundleManager$note_overseasRelease()Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/eventhandler/BaseEventHandler;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    new-instance v1, Lcom/onyx/galaxy/note/editor/handler/TemplateEventHandler$onApplyTemplateEvent$2$1;

    invoke-direct {v1, p1, p2}, Lcom/onyx/galaxy/note/editor/handler/TemplateEventHandler$onApplyTemplateEvent$2$1;-><init>(Lcom/onyx/galaxy/note/category/event/ApplyTemplateEvent;Lcom/onyx/android/sdk/universal/editor/action/bkground/ApplyTemplateAction;)V

    invoke-virtual {v0, p0, v1}, Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;->postToAssociatedBundle(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method


# virtual methods
.method public final c(Lcom/onyx/galaxy/note/editor/action/template/LoadPageTemplateJsonAction;I)V
    .locals 4

    new-instance v0, Lcom/onyx/galaxy/note/category/data/TemplateFragmentArgs;

    invoke-direct {v0}, Lcom/onyx/galaxy/note/category/data/TemplateFragmentArgs;-><init>()V

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/action/template/LoadPageTemplateJsonAction;->getCoverTemplateJsonBean()Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/galaxy/note/category/data/TemplateFragmentArgs;->setCoverTemplateJsonBean(Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;)V

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/action/template/LoadPageTemplateJsonAction;->getPaperTemplateJsonBean()Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/galaxy/note/category/data/TemplateFragmentArgs;->setPaperTemplateJsonBean(Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;)V

    const/4 v1, 0x7

    if-ne p2, v1, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/eventhandler/BaseEventHandler;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v2

    invoke-static {v2}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->getUiFeature(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lcom/onyx/android/sdk/universal/editor/feature/ui/UIFeature;

    move-result-object v2

    invoke-interface {v2}, Lcom/onyx/android/sdk/universal/editor/feature/ui/UIFeature;->getTemplateType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    const/4 v3, 0x6

    :cond_1
    :goto_0
    invoke-virtual {v0, v3}, Lcom/onyx/galaxy/note/category/data/TemplateFragmentArgs;->setType(I)V

    if-ne p2, v1, :cond_2

    sget-object p2, Lcom/onyx/galaxy/note/category/data/TemplateChangeType;->CHANGE_PAPER:Lcom/onyx/galaxy/note/category/data/TemplateChangeType;

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/action/template/LoadPageTemplateJsonAction;->getChangeType()Lcom/onyx/galaxy/note/category/data/TemplateChangeType;

    move-result-object p2

    :goto_1
    invoke-virtual {v0, p2}, Lcom/onyx/galaxy/note/category/data/TemplateFragmentArgs;->setChangeType(Lcom/onyx/galaxy/note/category/data/TemplateChangeType;)V

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/action/template/LoadPageTemplateJsonAction;->getHasPictureOrPDF()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/onyx/galaxy/note/category/data/TemplateFragmentArgs;->setHasPictureOrPDF(Z)V

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/data/TemplateFragmentArgs;->getOnlyCoverChange()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/onyx/galaxy/note/category/data/TemplateFragmentArgs;->setChangeContainsCover(Z)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/eventhandler/BaseEventHandler;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p1

    invoke-static {p1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->docId(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/onyx/galaxy/note/category/data/TemplateFragmentArgs;->setNoteId(Ljava/lang/String;)V

    sget-object p1, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->Companion:Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment$Companion;

    invoke-virtual {p1, v0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment$Companion;->newInstance(Lcom/onyx/galaxy/note/category/data/TemplateFragmentArgs;)Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;

    move-result-object p1

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/handler/TemplateEventHandler;->f:Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    const-class p2, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;

    invoke-static {p2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p2

    invoke-interface {p2}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method public destroy()V
    .locals 1

    invoke-super {p0}, Lcom/onyx/android/sdk/universal/editor/eventhandler/BaseEventHandler;->destroy()V

    sget-object v0, Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;->INSTANCE:Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;

    invoke-virtual {v0, p0}, Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;->ensureUnRegister(Ljava/lang/Object;)V

    return-void
.end method

.method public final onApplyTemplateEvent(Lcom/onyx/galaxy/note/category/event/ApplyTemplateEvent;)V
    .locals 3
    .param p1    # Lcom/onyx/galaxy/note/category/event/ApplyTemplateEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/handler/TemplateEventHandler;->f:Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->getEditorBundleManager$note_overseasRelease()Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/eventhandler/BaseEventHandler;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;->isFocusEditorBundle(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/bkground/ApplyTemplateAction;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/eventhandler/BaseEventHandler;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/category/event/ApplyTemplateEvent;->getApplyTemplateInfo()Lcom/onyx/android/sdk/replicator/note/bean/ApplyTemplateInfo;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/onyx/android/sdk/universal/editor/action/bkground/ApplyTemplateAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/replicator/note/bean/ApplyTemplateInfo;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    sget-object v1, Lcom/onyx/galaxy/note/editor/handler/TemplateEventHandler$onApplyTemplateEvent$1;->INSTANCE:Lcom/onyx/galaxy/note/editor/handler/TemplateEventHandler$onApplyTemplateEvent$1;

    new-instance v2, Lcom/sunia/HTREnginev2/van;

    invoke-direct {v2, p0, p1}, Lcom/sunia/HTREnginev2/van;-><init>(Lcom/onyx/galaxy/note/editor/handler/TemplateEventHandler;Lcom/onyx/galaxy/note/category/event/ApplyTemplateEvent;)V

    invoke-static {v0, v1, v2}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->doOnNextIf(Lio/reactivex/rxjava3/core/Observable;Lkotlin/jvm/functions/Function1;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final onChangeTemplateEvent(Lcom/onyx/galaxy/note/editor/event/ChangeTemplateEvent;)V
    .locals 4
    .param p1    # Lcom/onyx/galaxy/note/editor/event/ChangeTemplateEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/event/ChangeTemplateEvent;->getChangeTemplateKey()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-instance v1, Lcom/onyx/galaxy/note/editor/action/template/LoadPageTemplateJsonAction;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/eventhandler/BaseEventHandler;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v2

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/eventhandler/BaseEventHandler;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v3

    invoke-static {v3}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->currentPageIndex(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)I

    move-result v3

    invoke-direct {v1, v2, v3, v0}, Lcom/onyx/galaxy/note/editor/action/template/LoadPageTemplateJsonAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;IZ)V

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/editor/handler/TemplateEventHandler$a;

    invoke-direct {v1, p0, p1}, Lcom/onyx/galaxy/note/editor/handler/TemplateEventHandler$a;-><init>(Lcom/onyx/galaxy/note/editor/handler/TemplateEventHandler;Lcom/onyx/galaxy/note/editor/event/ChangeTemplateEvent;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final onInsertPageWithTemplateEvent(Lcom/onyx/galaxy/note/category/event/InsertPageWithTemplateEvent;)V
    .locals 9
    .param p1    # Lcom/onyx/galaxy/note/category/event/InsertPageWithTemplateEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/handler/TemplateEventHandler;->f:Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->getEditorBundleManager$note_overseasRelease()Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/eventhandler/BaseEventHandler;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;->isFocusEditorBundle(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/onyx/galaxy/note/category/event/InsertPageWithTemplateEvent;->getPageIndex()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/eventhandler/BaseEventHandler;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v0

    invoke-static {v0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->lastPageIndex(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    :goto_0
    new-instance v1, Lcom/onyx/android/sdk/universal/editor/data/InsertPageArgs;

    invoke-direct {v1}, Lcom/onyx/android/sdk/universal/editor/data/InsertPageArgs;-><init>()V

    invoke-virtual {v1, v0}, Lcom/onyx/android/sdk/universal/editor/data/InsertPageArgs;->setInsertAt(I)V

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/category/event/InsertPageWithTemplateEvent;->getTemplateJsonBean()Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/universal/editor/data/InsertPageArgs;->setTemplateJsonBean(Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;)V

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/category/event/InsertPageWithTemplateEvent;->getPageRect()Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/universal/editor/data/InsertPageArgs;->setPageRect(Landroid/graphics/RectF;)V

    new-instance v3, Lcom/onyx/android/sdk/universal/editor/action/InsertPageWithTemplateAction;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/eventhandler/BaseEventHandler;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v2

    invoke-direct {v3, v2, v1}, Lcom/onyx/android/sdk/universal/editor/action/InsertPageWithTemplateAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/editor/data/InsertPageArgs;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x7

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->execute$default(Lcom/onyx/android/sdk/base/rx/RxBaseAction;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Action;ILjava/lang/Object;)Lio/reactivex/rxjava3/disposables/Disposable;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/eventhandler/BaseEventHandler;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/category/event/InsertPageWithTemplateEvent;->getTemplateJsonBean()Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;->getUniqueId()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    if-nez v1, :cond_3

    const-string v1, ""

    :cond_3
    invoke-virtual {p1}, Lcom/onyx/galaxy/note/category/event/InsertPageWithTemplateEvent;->getInsertPageFrom()Lcom/onyx/android/sdk/data/InsertPageFrom;

    move-result-object p1

    invoke-static {p0, v0, v1, p1}, Lcom/onyx/galaxy/note/common/extension/StatisticsExtKt;->reportInsertPageEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;ILjava/lang/String;Lcom/onyx/android/sdk/data/InsertPageFrom;)V

    return-void
.end method

.method public final onMoreTemplateForInsertPageEvent(Lcom/onyx/galaxy/note/category/event/MoreTemplateForInsertPageEvent;)V
    .locals 5
    .param p1    # Lcom/onyx/galaxy/note/category/event/MoreTemplateForInsertPageEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/onyx/galaxy/note/category/data/TemplateFragmentArgs;

    invoke-direct {v0}, Lcom/onyx/galaxy/note/category/data/TemplateFragmentArgs;-><init>()V

    sget-object v1, Lcom/onyx/android/sdk/universal/editor/extension/MMKVNote;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/extension/MMKVNote;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v1, v3, v2, v3}, Lcom/onyx/android/sdk/universal/editor/extension/MMKVNote;->getCoverOption$default(Lcom/onyx/android/sdk/universal/editor/extension/MMKVNote;Ljava/lang/String;ILjava/lang/Object;)Lcom/onyx/android/sdk/data/utils/JSONObjectOption;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onyx/android/sdk/data/utils/JSONObjectOption;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;

    invoke-virtual {v0, v2}, Lcom/onyx/galaxy/note/category/data/TemplateFragmentArgs;->setCoverTemplateJsonBean(Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;)V

    const/4 v2, 0x0

    const/4 v4, 0x3

    invoke-static {v1, v3, v2, v4, v3}, Lcom/onyx/android/sdk/universal/editor/extension/MMKVNote;->getTemplateOption$default(Lcom/onyx/android/sdk/universal/editor/extension/MMKVNote;Ljava/lang/String;IILjava/lang/Object;)Lcom/onyx/android/sdk/data/utils/JSONObjectOption;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/utils/JSONObjectOption;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;

    invoke-virtual {v0, v1}, Lcom/onyx/galaxy/note/category/data/TemplateFragmentArgs;->setPaperTemplateJsonBean(Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;)V

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/onyx/galaxy/note/category/data/TemplateFragmentArgs;->setType(I)V

    sget-object v1, Lcom/onyx/galaxy/note/category/data/TemplateChangeType;->CHANGE_PAPER:Lcom/onyx/galaxy/note/category/data/TemplateChangeType;

    invoke-virtual {v0, v1}, Lcom/onyx/galaxy/note/category/data/TemplateFragmentArgs;->setChangeType(Lcom/onyx/galaxy/note/category/data/TemplateChangeType;)V

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/category/event/MoreTemplateForInsertPageEvent;->getInsertAt()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/onyx/galaxy/note/category/data/TemplateFragmentArgs;->setInsertAtPageIndex(Ljava/lang/Integer;)V

    sget-object p1, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->Companion:Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment$Companion;

    invoke-virtual {p1, v0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment$Companion;->newInstance(Lcom/onyx/galaxy/note/category/data/TemplateFragmentArgs;)Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;

    move-result-object p1

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/handler/TemplateEventHandler;->f:Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    const-class v0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method
