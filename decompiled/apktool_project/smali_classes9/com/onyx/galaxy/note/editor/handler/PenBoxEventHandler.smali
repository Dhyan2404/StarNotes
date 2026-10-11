.class public final Lcom/onyx/galaxy/note/editor/handler/PenBoxEventHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/onyx/android/sdk/universal/editor/eventhandler/EventHandler;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPenBoxEventHandler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PenBoxEventHandler.kt\ncom/onyx/galaxy/note/editor/handler/PenBoxEventHandler\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,176:1\n1855#2,2:177\n1855#2,2:179\n*S KotlinDebug\n*F\n+ 1 PenBoxEventHandler.kt\ncom/onyx/galaxy/note/editor/handler/PenBoxEventHandler\n*L\n41#1:177,2\n49#1:179,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000j\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010!\u001a\u00020\u001f\u00a2\u0006\u0004\u0008&\u0010\'J\u0008\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\u0006\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0007J\u0010\u0010\u0008\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0007H\u0007J\u0010\u0010\n\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\tH\u0007J\u0010\u0010\u000c\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u000bH\u0007J\u0010\u0010\u000e\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\rH\u0007J\u0010\u0010\u0010\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u000fH\u0007J\u0010\u0010\u0012\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0011H\u0007J\u0010\u0010\u0014\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0013H\u0007J\u0010\u0010\u0016\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0015H\u0007J\u0010\u0010\u0018\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0017H\u0007J\u0012\u0010\u001b\u001a\u00020\u00022\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u0019H\u0002J\u0008\u0010\u001c\u001a\u00020\u0002H\u0002J\u0008\u0010\u001e\u001a\u00020\u001dH\u0002R\u0014\u0010!\u001a\u00020\u001f8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001c\u0010 R\u0018\u0010%\u001a\u0004\u0018\u00010\"8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008#\u0010$\u00a8\u0006("
    }
    d2 = {
        "Lcom/onyx/galaxy/note/editor/handler/PenBoxEventHandler;",
        "Lcom/onyx/android/sdk/universal/editor/eventhandler/EventHandler;",
        "",
        "destroy",
        "Lcom/onyx/android/sdk/universal/common/events/ShowPenBoxEvent;",
        "event",
        "onShowPenBoxEvent",
        "Lcom/onyx/android/sdk/universal/common/events/StylusClickPenBoxEvent;",
        "onStylusClickPenBoxEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/app/EditorContainerLayoutChangedEvent;",
        "onEditorContainerLayoutChangedEvent",
        "Lcom/onyx/android/sdk/universal/common/events/ResetPenBoxPositionEvent;",
        "onResetPenBoxPositionEvent",
        "Lcom/onyx/galaxy/note/editor/event/ShowPlayerViewEvent;",
        "onShowPlayerViewEvent",
        "Lcom/onyx/android/sdk/universal/common/events/ReactivePenBoxEvent;",
        "onReactivePenBoxEvent",
        "Lcom/onyx/android/sdk/universal/common/events/DeleteAllPenBoxEvent;",
        "onDeleteAllPenBoxEvent",
        "Lcom/onyx/android/sdk/universal/common/events/HidePenBoxEvent;",
        "onHidePenBoxEvent",
        "Lcom/onyx/galaxy/note/editor/event/VisiblePenBoxEvent;",
        "onVisiblePenBoxEvent",
        "Lcom/onyx/galaxy/note/editor/event/VisiblePenBoxByFullScreenEvent;",
        "onVisiblePenBoxByFullScreenEvent",
        "Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;",
        "penArgs",
        "i",
        "e",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "d",
        "Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;",
        "Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;",
        "scribbleFragment",
        "Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;",
        "f",
        "Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;",
        "penBoxPopup",
        "<init>",
        "(Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;)V",
        "note_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nPenBoxEventHandler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PenBoxEventHandler.kt\ncom/onyx/galaxy/note/editor/handler/PenBoxEventHandler\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,176:1\n1855#2,2:177\n1855#2,2:179\n*S KotlinDebug\n*F\n+ 1 PenBoxEventHandler.kt\ncom/onyx/galaxy/note/editor/handler/PenBoxEventHandler\n*L\n41#1:177,2\n49#1:179,2\n*E\n"
    }
.end annotation


# instance fields
.field public final e:Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public f:Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;)V
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "scribbleFragment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/handler/PenBoxEventHandler;->e:Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;

    sget-object v0, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/GlobalBundle;

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->register(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->getEditorBundleManager$note_overseasRelease()Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;->getEditorViewHandlers()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->register(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static synthetic a(Lcom/onyx/galaxy/note/editor/handler/PenBoxEventHandler;Lcom/onyx/android/sdk/universal/common/events/ShowPenBoxEvent;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/handler/PenBoxEventHandler;->g(Lcom/onyx/galaxy/note/editor/handler/PenBoxEventHandler;Lcom/onyx/android/sdk/universal/common/events/ShowPenBoxEvent;)V

    return-void
.end method

.method public static final synthetic access$editorBundle(Lcom/onyx/galaxy/note/editor/handler/PenBoxEventHandler;)Lcom/onyx/android/sdk/universal/editor/EditorBundle;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/handler/PenBoxEventHandler;->d()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getPenBoxPopup$p(Lcom/onyx/galaxy/note/editor/handler/PenBoxEventHandler;)Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/handler/PenBoxEventHandler;->f:Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;

    return-object p0
.end method

.method public static final synthetic access$getScribbleFragment$p(Lcom/onyx/galaxy/note/editor/handler/PenBoxEventHandler;)Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/handler/PenBoxEventHandler;->e:Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;

    return-object p0
.end method

.method public static final synthetic access$setPenBoxPopup$p(Lcom/onyx/galaxy/note/editor/handler/PenBoxEventHandler;Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/handler/PenBoxEventHandler;->f:Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;

    return-void
.end method

.method public static synthetic b(Lcom/onyx/galaxy/note/editor/handler/PenBoxEventHandler;Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/handler/PenBoxEventHandler;->f(Lcom/onyx/galaxy/note/editor/handler/PenBoxEventHandler;Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;)V

    return-void
.end method

.method public static synthetic c(Lcom/onyx/galaxy/note/editor/handler/PenBoxEventHandler;Lcom/onyx/android/sdk/universal/common/events/StylusClickPenBoxEvent;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/handler/PenBoxEventHandler;->h(Lcom/onyx/galaxy/note/editor/handler/PenBoxEventHandler;Lcom/onyx/android/sdk/universal/common/events/StylusClickPenBoxEvent;)V

    return-void
.end method

.method public static final f(Lcom/onyx/galaxy/note/editor/handler/PenBoxEventHandler;Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/onyx/android/sdk/universal/common/events/ResetPenBoxPositionEvent;

    invoke-direct {v0}, Lcom/onyx/android/sdk/universal/common/events/ResetPenBoxPositionEvent;-><init>()V

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/editor/handler/PenBoxEventHandler;->onResetPenBoxPositionEvent(Lcom/onyx/android/sdk/universal/common/events/ResetPenBoxPositionEvent;)V

    const/4 p0, 0x1

    invoke-virtual {p1, p0}, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;->setState(I)V

    return-void
.end method

.method public static final g(Lcom/onyx/galaxy/note/editor/handler/PenBoxEventHandler;Lcom/onyx/android/sdk/universal/common/events/ShowPenBoxEvent;)V
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/handler/PenBoxEventHandler;->f:Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;->isShowing()Z

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v1, v2

    :cond_0
    if-nez v1, :cond_1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/common/events/ShowPenBoxEvent;->getPenArgs()Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/editor/handler/PenBoxEventHandler;->i(Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/handler/PenBoxEventHandler;->f:Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/common/events/ShowPenBoxEvent;->getPenArgs()Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;->applyPenArgs(Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;)V

    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/handler/PenBoxEventHandler;->f:Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;

    if-eqz p0, :cond_3

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/common/events/ShowPenBoxEvent;->getAddPen()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;->reloadPenList(Z)V

    :cond_3
    return-void
.end method

.method public static final h(Lcom/onyx/galaxy/note/editor/handler/PenBoxEventHandler;Lcom/onyx/android/sdk/universal/common/events/StylusClickPenBoxEvent;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/handler/PenBoxEventHandler;->f:Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/common/events/StylusClickPenBoxEvent;->getPenArgs()Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/handler/PenBoxEventHandler;->i(Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;)V

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/common/events/StylusClickPenBoxEvent;->getPenArgs()Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;->applyPenArgs(Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public final d()Lcom/onyx/android/sdk/universal/editor/EditorBundle;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/handler/PenBoxEventHandler;->e:Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->editorBundle$note_overseasRelease()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    return-object p0
.end method

.method public destroy()V
    .locals 2

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/eventhandler/EventHandler$DefaultImpls;->destroy(Lcom/onyx/android/sdk/universal/editor/eventhandler/EventHandler;)V

    sget-object v0, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/GlobalBundle;

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->unregister(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/handler/PenBoxEventHandler;->e:Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->getEditorBundleManager$note_overseasRelease()Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;->getEditorViewHandlers()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    invoke-static {v1, p0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->unregister(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final e()V
    .locals 1

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/handler/PenBoxEventHandler;->f:Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;->hide()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/onyx/galaxy/note/editor/handler/PenBoxEventHandler;->f:Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;

    return-void
.end method

.method public final i(Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;)V
    .locals 2

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/handler/PenBoxEventHandler;->e:Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;

    new-instance v1, Lcom/onyx/galaxy/note/editor/handler/PenBoxEventHandler$showPenBoxPop$1;

    invoke-direct {v1, p0, p1}, Lcom/onyx/galaxy/note/editor/handler/PenBoxEventHandler$showPenBoxPop$1;-><init>(Lcom/onyx/galaxy/note/editor/handler/PenBoxEventHandler;Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;)V

    const/4 p0, 0x1

    const/4 p1, 0x0

    invoke-static {v0, p1, v1, p0, p1}, Lcom/onyx/android/sdk/base/extension/FragmentKt;->requireActivitySafety$default(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/Lifecycle$State;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    return-void
.end method

.method public init()V
    .locals 0

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/eventhandler/EventHandler$DefaultImpls;->init(Lcom/onyx/android/sdk/universal/editor/eventhandler/EventHandler;)V

    return-void
.end method

.method public final onDeleteAllPenBoxEvent(Lcom/onyx/android/sdk/universal/common/events/DeleteAllPenBoxEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/common/events/DeleteAllPenBoxEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/handler/PenBoxEventHandler;->f:Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;

    return-void
.end method

.method public final onEditorContainerLayoutChangedEvent(Lcom/onyx/android/sdk/universal/editor/events/app/EditorContainerLayoutChangedEvent;)V
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/app/EditorContainerLayoutChangedEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/handler/PenBoxEventHandler;->e:Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->getRootLocation$note_overseasRelease()[I

    move-result-object p1

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/handler/PenBoxEventHandler;->f:Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;->getRootLocation()[I

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    :cond_1
    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/handler/PenBoxEventHandler;->f:Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;->getState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    return-void

    :cond_2
    invoke-virtual {p1, v1}, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;->setState(I)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/handler/PenBoxEventHandler;->e:Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->getBinding$note_overseasRelease()Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    new-instance v1, Lcom/sunia/HTREnginev2/y0l;

    invoke-direct {v1, p0, p1}, Lcom/sunia/HTREnginev2/y0l;-><init>(Lcom/onyx/galaxy/note/editor/handler/PenBoxEventHandler;Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;)V

    const-wide/16 p0, 0x12c

    invoke-virtual {v0, v1, p0, p1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3
    return-void
.end method

.method public final onHidePenBoxEvent(Lcom/onyx/android/sdk/universal/common/events/HidePenBoxEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/common/events/HidePenBoxEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/handler/PenBoxEventHandler;->f:Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;->hide()V

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/handler/PenBoxEventHandler;->f:Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;

    return-void
.end method

.method public final onReactivePenBoxEvent(Lcom/onyx/android/sdk/universal/common/events/ReactivePenBoxEvent;)V
    .locals 6
    .param p1    # Lcom/onyx/android/sdk/universal/common/events/ReactivePenBoxEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/common/events/ReactivePenBoxEvent;->getForceHide()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/handler/PenBoxEventHandler;->e()V

    :cond_0
    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/handler/PenBoxEventHandler;->f:Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;->hasSelectedPen()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/common/events/ReactivePenBoxEvent;->getResetPen()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/handler/PenBoxEventHandler;->e:Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->getPenViewModel$note_overseasRelease()Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;->getPenType()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/handler/PenBoxEventHandler;->e:Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->getPenViewModel$note_overseasRelease()Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;->getPenType()Landroidx/lifecycle/MutableLiveData;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    :cond_2
    return-void

    :cond_3
    :goto_0
    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/penbox/ActivatePenBoxViewAction;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/handler/PenBoxEventHandler;->d()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    const/4 p1, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2, p1, v1}, Lcom/onyx/android/sdk/universal/editor/action/penbox/ActivatePenBoxViewAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x7

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->execute$default(Lcom/onyx/android/sdk/base/rx/RxBaseAction;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Action;ILjava/lang/Object;)Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final onResetPenBoxPositionEvent(Lcom/onyx/android/sdk/universal/common/events/ResetPenBoxPositionEvent;)V
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/universal/common/events/ResetPenBoxPositionEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/handler/PenBoxEventHandler;->f:Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/handler/PenBoxEventHandler;->e:Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->getEditorContainerLocation$note_overseasRelease()[I

    move-result-object v0

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/handler/PenBoxEventHandler;->e:Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->getEditorContainerRect$note_overseasRelease()Landroid/graphics/Rect;

    move-result-object v1

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/handler/PenBoxEventHandler;->e:Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->getRootLocation$note_overseasRelease()[I

    move-result-object p0

    invoke-virtual {p1, v0, v1, p0}, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;->resetPosition([ILandroid/graphics/Rect;[I)V

    :cond_0
    return-void
.end method

.method public final onShowPenBoxEvent(Lcom/onyx/android/sdk/universal/common/events/ShowPenBoxEvent;)V
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/universal/common/events/ShowPenBoxEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/universal/editor/feature/touch/TouchModeFeatureManager;->Companion:Lcom/onyx/android/sdk/universal/editor/feature/touch/TouchModeFeatureManager$Companion;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/feature/touch/TouchModeFeatureManager$Companion;->isCurTouchModeSupportEdit()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/handler/PenBoxEventHandler;->f:Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;->dismissAllPopup()V

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/handler/PenBoxEventHandler;->e()V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/handler/PenBoxEventHandler;->e:Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->getBinding$note_overseasRelease()Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    new-instance v1, Lcom/sunia/HTREnginev2/w0l;

    invoke-direct {v1, p0, p1}, Lcom/sunia/HTREnginev2/w0l;-><init>(Lcom/onyx/galaxy/note/editor/handler/PenBoxEventHandler;Lcom/onyx/android/sdk/universal/common/events/ShowPenBoxEvent;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onShowPlayerViewEvent(Lcom/onyx/galaxy/note/editor/event/ShowPlayerViewEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/editor/event/ShowPlayerViewEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Lcom/onyx/android/sdk/universal/common/events/ResetPenBoxPositionEvent;

    invoke-direct {p1}, Lcom/onyx/android/sdk/universal/common/events/ResetPenBoxPositionEvent;-><init>()V

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/handler/PenBoxEventHandler;->onResetPenBoxPositionEvent(Lcom/onyx/android/sdk/universal/common/events/ResetPenBoxPositionEvent;)V

    return-void
.end method

.method public final onStylusClickPenBoxEvent(Lcom/onyx/android/sdk/universal/common/events/StylusClickPenBoxEvent;)V
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/universal/common/events/StylusClickPenBoxEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/handler/PenBoxEventHandler;->e:Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->getBinding$note_overseasRelease()Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    new-instance v1, Lcom/sunia/HTREnginev2/x0l;

    invoke-direct {v1, p0, p1}, Lcom/sunia/HTREnginev2/x0l;-><init>(Lcom/onyx/galaxy/note/editor/handler/PenBoxEventHandler;Lcom/onyx/android/sdk/universal/common/events/StylusClickPenBoxEvent;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onVisiblePenBoxByFullScreenEvent(Lcom/onyx/galaxy/note/editor/event/VisiblePenBoxByFullScreenEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/editor/event/VisiblePenBoxByFullScreenEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/handler/PenBoxEventHandler;->f:Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/event/VisiblePenBoxByFullScreenEvent;->getVisible()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;->setVisible(Z)V

    :cond_0
    return-void
.end method

.method public final onVisiblePenBoxEvent(Lcom/onyx/galaxy/note/editor/event/VisiblePenBoxEvent;)V
    .locals 3
    .param p1    # Lcom/onyx/galaxy/note/editor/event/VisiblePenBoxEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/handler/PenBoxEventHandler;->f:Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/event/VisiblePenBoxEvent;->getSlideBarType()Lcom/onyx/galaxy/note/editor/data/SlideBarType;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;->isPenBoxAlignedWithSidebar(Lcom/onyx/galaxy/note/editor/data/SlideBarType;)Z

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v1, v2

    :cond_0
    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/handler/PenBoxEventHandler;->f:Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;

    if-eqz p0, :cond_1

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/event/VisiblePenBoxEvent;->getVisible()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;->setVisible(Z)V

    :cond_1
    return-void
.end method
