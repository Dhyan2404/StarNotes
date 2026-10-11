.class public final Lcom/onyx/galaxy/note/editor/handler/QuickFunctionEventHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/onyx/android/sdk/universal/editor/eventhandler/EventHandler;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nQuickFunctionEventHandler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 QuickFunctionEventHandler.kt\ncom/onyx/galaxy/note/editor/handler/QuickFunctionEventHandler\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,246:1\n1855#2,2:247\n1855#2,2:249\n1#3:251\n*S KotlinDebug\n*F\n+ 1 QuickFunctionEventHandler.kt\ncom/onyx/galaxy/note/editor/handler/QuickFunctionEventHandler\n*L\n70#1:247,2\n78#1:249,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00a2\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u00101\u001a\u00020.\u00a2\u0006\u0004\u0008<\u0010=J\u0008\u0010\u0003\u001a\u00020\u0002H\u0016J\u0008\u0010\u0004\u001a\u00020\u0002H\u0016J\u0010\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0005H\u0007J\u0010\u0010\t\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0008H\u0007J\u0010\u0010\u000b\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\nH\u0007J\u0010\u0010\r\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u000cH\u0007J\u0010\u0010\u000f\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u000eH\u0007J\u0010\u0010\u0011\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0010H\u0007J\u0010\u0010\u0013\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0012H\u0007J\u0010\u0010\u0015\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0014H\u0007J\u0010\u0010\u0017\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0016H\u0007J\u0010\u0010\u0019\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0018H\u0007J\u0010\u0010\u001b\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u001aH\u0007J\u0010\u0010\u001d\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u001cH\u0007J\u0010\u0010\u001f\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u001eH\u0007J\u0010\u0010!\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020 H\u0007J\u0010\u0010#\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\"H\u0007J\u0010\u0010%\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020$H\u0007J\u0010\u0010\'\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020&H\u0007J\u0010\u0010)\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020(H\u0007J\u0010\u0010+\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020*H\u0007J\u0008\u0010-\u001a\u00020,H\u0002R\u0014\u00101\u001a\u00020.8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008/\u00100R\u0016\u00105\u001a\u0002028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00083\u00104R\u001b\u0010;\u001a\u0002068BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u00087\u00108\u001a\u0004\u00089\u0010:\u00a8\u0006>"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/editor/handler/QuickFunctionEventHandler;",
        "Lcom/onyx/android/sdk/universal/editor/eventhandler/EventHandler;",
        "",
        "init",
        "destroy",
        "Lcom/onyx/android/sdk/universal/editor/events/note/FunctionSwitchUndoEvent;",
        "event",
        "onFunctionUndo",
        "Lcom/onyx/android/sdk/universal/editor/events/note/FunctionSwitchRedoEvent;",
        "onFunctionRedo",
        "Lcom/onyx/android/sdk/universal/editor/events/note/FunctionScreenShotEvent;",
        "onFunctionScreenShot",
        "Lcom/onyx/android/sdk/universal/editor/events/note/FunctionPaperAdaptiveEvent;",
        "onFunctionPaperAdaptive",
        "Lcom/onyx/android/sdk/universal/editor/events/note/FunctionSwitchEraserEvent;",
        "onFunctionSwitchEraser",
        "Lcom/onyx/android/sdk/universal/editor/events/note/FunctionSwitchPenBushEvent;",
        "onFunctionSwitchPenBush",
        "Lcom/onyx/android/sdk/universal/editor/events/note/FunctionSwitchTapePenEvent;",
        "onFunctionSwitchTape",
        "Lcom/onyx/android/sdk/universal/editor/events/note/FunctionSwitchLastToolEvent;",
        "onFunctionSwitchLastShapeTool",
        "Lcom/onyx/android/sdk/universal/editor/events/note/FunctionSwitchColorChangeEvent;",
        "onFunctionSwitchColorChange",
        "Lcom/onyx/android/sdk/universal/editor/events/note/FunctionSwitchLassoEvent;",
        "onFunctionSwitchLasso",
        "Lcom/onyx/android/sdk/universal/editor/events/note/FunctionLongPressEraserEvent;",
        "onStylusLongPressEraser",
        "Lcom/onyx/android/sdk/universal/editor/events/app/FingerClickEvent;",
        "onFingerClicked",
        "Lcom/onyx/android/sdk/universal/editor/events/app/SingleClickEvent;",
        "onSingleClickEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/app/StylusLongPressEvent;",
        "onStylusLongPress",
        "Lcom/onyx/android/sdk/universal/editor/events/app/CancelFingerClickTimerEvent;",
        "onCancelFingerClickTimerEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/note/FullScreenEvent;",
        "onFullScreenEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/note/StylusFunctionInvalidEvent;",
        "onStylusFunctionInvalidEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/note/FunctionMouseScrollEvent;",
        "onMouseScrollEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/note/FunctionMouseScaleEvent;",
        "onMouseScaleEvent",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "a",
        "Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;",
        "e",
        "Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;",
        "scribbleFragment",
        "",
        "f",
        "I",
        "fingerClickTimerKey",
        "Lcom/onyx/galaxy/note/editor/utils/FullScreenHelper;",
        "g",
        "Lkotlin/Lazy;",
        "b",
        "()Lcom/onyx/galaxy/note/editor/utils/FullScreenHelper;",
        "fullScreenHelper",
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
        "SMAP\nQuickFunctionEventHandler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 QuickFunctionEventHandler.kt\ncom/onyx/galaxy/note/editor/handler/QuickFunctionEventHandler\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,246:1\n1855#2,2:247\n1855#2,2:249\n1#3:251\n*S KotlinDebug\n*F\n+ 1 QuickFunctionEventHandler.kt\ncom/onyx/galaxy/note/editor/handler/QuickFunctionEventHandler\n*L\n70#1:247,2\n78#1:249,2\n*E\n"
    }
.end annotation


# instance fields
.field public final e:Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public f:I

.field public final g:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
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

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/handler/QuickFunctionEventHandler;->e:Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;

    const/4 p1, -0x1

    iput p1, p0, Lcom/onyx/galaxy/note/editor/handler/QuickFunctionEventHandler;->f:I

    new-instance p1, Lcom/onyx/galaxy/note/editor/handler/QuickFunctionEventHandler$fullScreenHelper$2;

    invoke-direct {p1, p0}, Lcom/onyx/galaxy/note/editor/handler/QuickFunctionEventHandler$fullScreenHelper$2;-><init>(Lcom/onyx/galaxy/note/editor/handler/QuickFunctionEventHandler;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/handler/QuickFunctionEventHandler;->g:Lkotlin/Lazy;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/handler/QuickFunctionEventHandler;->init()V

    return-void
.end method

.method public static final synthetic access$editorBundle(Lcom/onyx/galaxy/note/editor/handler/QuickFunctionEventHandler;)Lcom/onyx/android/sdk/universal/editor/EditorBundle;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/handler/QuickFunctionEventHandler;->a()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getScribbleFragment$p(Lcom/onyx/galaxy/note/editor/handler/QuickFunctionEventHandler;)Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/handler/QuickFunctionEventHandler;->e:Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;

    return-object p0
.end method


# virtual methods
.method public final a()Lcom/onyx/android/sdk/universal/editor/EditorBundle;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/handler/QuickFunctionEventHandler;->e:Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->editorBundle$note_overseasRelease()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    return-object p0
.end method

.method public final b()Lcom/onyx/galaxy/note/editor/utils/FullScreenHelper;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/handler/QuickFunctionEventHandler;->g:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/editor/utils/FullScreenHelper;

    return-object p0
.end method

.method public destroy()V
    .locals 2

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/eventhandler/EventHandler$DefaultImpls;->destroy(Lcom/onyx/android/sdk/universal/editor/eventhandler/EventHandler;)V

    sget-object v0, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/GlobalBundle;

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->unregister(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/handler/QuickFunctionEventHandler;->e:Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;

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

.method public init()V
    .locals 2

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/eventhandler/EventHandler$DefaultImpls;->init(Lcom/onyx/android/sdk/universal/editor/eventhandler/EventHandler;)V

    sget-object v0, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/GlobalBundle;

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->register(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/handler/QuickFunctionEventHandler;->e:Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;

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

    invoke-static {v1, p0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->register(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onCancelFingerClickTimerEvent(Lcom/onyx/android/sdk/universal/editor/events/app/CancelFingerClickTimerEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/app/CancelFingerClickTimerEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lcom/onyx/android/sdk/base/utils/RxTimerUtil;->INSTANCE:Lcom/onyx/android/sdk/base/utils/RxTimerUtil;

    iget p0, p0, Lcom/onyx/galaxy/note/editor/handler/QuickFunctionEventHandler;->f:I

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/base/utils/RxTimerUtil;->cancel(I)V

    return-void
.end method

.method public final onFingerClicked(Lcom/onyx/android/sdk/universal/editor/events/app/FingerClickEvent;)V
    .locals 5
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/app/FingerClickEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/base/utils/RxTimerUtil;->INSTANCE:Lcom/onyx/android/sdk/base/utils/RxTimerUtil;

    iget v1, p0, Lcom/onyx/galaxy/note/editor/handler/QuickFunctionEventHandler;->f:I

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/RxTimerUtil;->cancel(I)V

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v2, Lcom/onyx/galaxy/note/editor/handler/QuickFunctionEventHandler$onFingerClicked$1;

    invoke-direct {v2, p0, p1}, Lcom/onyx/galaxy/note/editor/handler/QuickFunctionEventHandler$onFingerClicked$1;-><init>(Lcom/onyx/galaxy/note/editor/handler/QuickFunctionEventHandler;Lcom/onyx/android/sdk/universal/editor/events/app/FingerClickEvent;)V

    const-wide/16 v3, 0x32

    invoke-virtual {v0, v3, v4, v1, v2}, Lcom/onyx/android/sdk/base/utils/RxTimerUtil;->timer(JLjava/util/concurrent/TimeUnit;Lkotlin/jvm/functions/Function1;)I

    move-result p1

    iput p1, p0, Lcom/onyx/galaxy/note/editor/handler/QuickFunctionEventHandler;->f:I

    return-void
.end method

.method public final onFullScreenEvent(Lcom/onyx/android/sdk/universal/editor/events/note/FullScreenEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/note/FullScreenEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/handler/QuickFunctionEventHandler;->b()Lcom/onyx/galaxy/note/editor/utils/FullScreenHelper;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/utils/FullScreenHelper;->onFullScreen(Lcom/onyx/android/sdk/universal/editor/events/note/FullScreenEvent;)V

    return-void
.end method

.method public final onFunctionPaperAdaptive(Lcom/onyx/android/sdk/universal/editor/events/note/FunctionPaperAdaptiveEvent;)V
    .locals 7
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/note/FunctionPaperAdaptiveEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/onyx/galaxy/note/editor/action/AdaptiveScaleAction;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/handler/QuickFunctionEventHandler;->a()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/editor/action/AdaptiveScaleAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x7

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->execute$default(Lcom/onyx/android/sdk/base/rx/RxBaseAction;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Action;ILjava/lang/Object;)Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final onFunctionRedo(Lcom/onyx/android/sdk/universal/editor/events/note/FunctionSwitchRedoEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/note/FunctionSwitchRedoEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/handler/QuickFunctionEventHandler;->a()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/EditorBundle;->getUiBundle()Lcom/onyx/android/sdk/universal/editor/UIBundle;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/UIBundle;->getCommandDataInfo()Lcom/onyx/android/sdk/universal/editor/data/CommandDataInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/data/CommandDataInfo;->getCanRedo()Landroidx/databinding/ObservableBoolean;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/databinding/ObservableBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/EditorBundle;->getUiBundle()Lcom/onyx/android/sdk/universal/editor/UIBundle;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/UIBundle;->getCommandDataInfo()Lcom/onyx/android/sdk/universal/editor/data/CommandDataInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/data/CommandDataInfo;->guardRedoing()Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    :cond_1
    new-instance p1, Lcom/onyx/android/sdk/universal/editor/events/note/EditorRedoEvent;

    invoke-direct {p1}, Lcom/onyx/android/sdk/universal/editor/events/note/EditorRedoEvent;-><init>()V

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    return-void
.end method

.method public final onFunctionScreenShot(Lcom/onyx/android/sdk/universal/editor/events/note/FunctionScreenShotEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/note/FunctionScreenShotEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/handler/QuickFunctionEventHandler;->a()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    new-instance p1, Lcom/onyx/android/sdk/universal/editor/events/note/TakeScreenCaptureEvent;

    invoke-direct {p1}, Lcom/onyx/android/sdk/universal/editor/events/note/TakeScreenCaptureEvent;-><init>()V

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    return-void
.end method

.method public final onFunctionSwitchColorChange(Lcom/onyx/android/sdk/universal/editor/events/note/FunctionSwitchColorChangeEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/note/FunctionSwitchColorChangeEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/handler/QuickFunctionEventHandler;->e:Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->getBinding$note_overseasRelease()Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;->shapeAndTool:Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer;->getToolDragView()Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;->getParamsContainer()Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeParamsContainer;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeParamsContainer;->colorChange()V

    return-void
.end method

.method public final onFunctionSwitchEraser(Lcom/onyx/android/sdk/universal/editor/events/note/FunctionSwitchEraserEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/note/FunctionSwitchEraserEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lcom/onyx/android/sdk/universal/editor/helper/PencilBoxManager;->Companion:Lcom/onyx/android/sdk/universal/editor/helper/PencilBoxManager$Companion;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/helper/PencilBoxManager$Companion;->hasSelectedPen()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/handler/QuickFunctionEventHandler;->e:Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;

    sget-object p1, Lcom/onyx/galaxy/note/editor/data/ShapeToolType;->ERASER:Lcom/onyx/galaxy/note/editor/data/ShapeToolType;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->ensureSwitchUserTool$note_overseasRelease(Lcom/onyx/galaxy/note/editor/data/ShapeToolType;)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/handler/QuickFunctionEventHandler;->e:Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->getPenViewModel$note_overseasRelease()Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;->getPenType()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    sget-object v0, Lcom/onyx/galaxy/note/editor/data/ShapeToolType;->ERASER:Lcom/onyx/galaxy/note/editor/data/ShapeToolType;

    if-ne p1, v0, :cond_1

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/handler/QuickFunctionEventHandler;->e:Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->switchToLastTool$note_overseasRelease()V

    return-void

    :cond_1
    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/handler/QuickFunctionEventHandler;->e:Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->ensureSwitchUserTool$note_overseasRelease(Lcom/onyx/galaxy/note/editor/data/ShapeToolType;)V

    return-void
.end method

.method public final onFunctionSwitchLasso(Lcom/onyx/android/sdk/universal/editor/events/note/FunctionSwitchLassoEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/note/FunctionSwitchLassoEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lcom/onyx/android/sdk/universal/editor/helper/PencilBoxManager;->Companion:Lcom/onyx/android/sdk/universal/editor/helper/PencilBoxManager$Companion;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/helper/PencilBoxManager$Companion;->hasSelectedPen()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/handler/QuickFunctionEventHandler;->e:Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;

    sget-object p1, Lcom/onyx/galaxy/note/editor/data/ShapeToolType;->LASSO:Lcom/onyx/galaxy/note/editor/data/ShapeToolType;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->ensureSwitchUserTool$note_overseasRelease(Lcom/onyx/galaxy/note/editor/data/ShapeToolType;)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/handler/QuickFunctionEventHandler;->e:Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->getPenViewModel$note_overseasRelease()Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;->getPenType()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    sget-object v0, Lcom/onyx/galaxy/note/editor/data/ShapeToolType;->LASSO:Lcom/onyx/galaxy/note/editor/data/ShapeToolType;

    if-ne p1, v0, :cond_1

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/handler/QuickFunctionEventHandler;->e:Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->switchToLastTool$note_overseasRelease()V

    return-void

    :cond_1
    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/handler/QuickFunctionEventHandler;->e:Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->ensureSwitchUserTool$note_overseasRelease(Lcom/onyx/galaxy/note/editor/data/ShapeToolType;)V

    return-void
.end method

.method public final onFunctionSwitchLastShapeTool(Lcom/onyx/android/sdk/universal/editor/events/note/FunctionSwitchLastToolEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/note/FunctionSwitchLastToolEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/handler/QuickFunctionEventHandler;->e:Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->switchToLastTool$note_overseasRelease()V

    return-void
.end method

.method public final onFunctionSwitchPenBush(Lcom/onyx/android/sdk/universal/editor/events/note/FunctionSwitchPenBushEvent;)V
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/note/FunctionSwitchPenBushEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Lcom/onyx/galaxy/note/editor/action/SwitchPenBrushAction;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/handler/QuickFunctionEventHandler;->a()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v0

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/handler/QuickFunctionEventHandler;->e:Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->getPenViewModel$note_overseasRelease()Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;->getPenType()Landroidx/lifecycle/MutableLiveData;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v1, Lcom/onyx/galaxy/note/editor/data/ShapeToolType;

    invoke-direct {p1, v0, v1}, Lcom/onyx/galaxy/note/editor/action/SwitchPenBrushAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/galaxy/note/editor/data/ShapeToolType;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/onyx/galaxy/note/editor/handler/QuickFunctionEventHandler$a;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/editor/handler/QuickFunctionEventHandler$a;-><init>(Lcom/onyx/galaxy/note/editor/handler/QuickFunctionEventHandler;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final onFunctionSwitchTape(Lcom/onyx/android/sdk/universal/editor/events/note/FunctionSwitchTapePenEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/note/FunctionSwitchTapePenEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lcom/onyx/android/sdk/universal/editor/helper/PencilBoxManager;->Companion:Lcom/onyx/android/sdk/universal/editor/helper/PencilBoxManager$Companion;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/helper/PencilBoxManager$Companion;->hasSelectedPen()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/handler/QuickFunctionEventHandler;->e:Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;

    sget-object p1, Lcom/onyx/galaxy/note/editor/data/ShapeToolType;->TAPE_PEN:Lcom/onyx/galaxy/note/editor/data/ShapeToolType;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->ensureSwitchUserTool$note_overseasRelease(Lcom/onyx/galaxy/note/editor/data/ShapeToolType;)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/handler/QuickFunctionEventHandler;->e:Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->getPenViewModel$note_overseasRelease()Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;->getPenType()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    sget-object v0, Lcom/onyx/galaxy/note/editor/data/ShapeToolType;->TAPE_PEN:Lcom/onyx/galaxy/note/editor/data/ShapeToolType;

    if-ne p1, v0, :cond_1

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/handler/QuickFunctionEventHandler;->e:Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->switchToLastTool$note_overseasRelease()V

    return-void

    :cond_1
    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/handler/QuickFunctionEventHandler;->e:Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->ensureSwitchUserTool$note_overseasRelease(Lcom/onyx/galaxy/note/editor/data/ShapeToolType;)V

    return-void
.end method

.method public final onFunctionUndo(Lcom/onyx/android/sdk/universal/editor/events/note/FunctionSwitchUndoEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/note/FunctionSwitchUndoEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/handler/QuickFunctionEventHandler;->a()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/EditorBundle;->getUiBundle()Lcom/onyx/android/sdk/universal/editor/UIBundle;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/UIBundle;->getCommandDataInfo()Lcom/onyx/android/sdk/universal/editor/data/CommandDataInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/data/CommandDataInfo;->getCanUndo()Landroidx/databinding/ObservableBoolean;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/databinding/ObservableBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/EditorBundle;->getUiBundle()Lcom/onyx/android/sdk/universal/editor/UIBundle;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/UIBundle;->getCommandDataInfo()Lcom/onyx/android/sdk/universal/editor/data/CommandDataInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/data/CommandDataInfo;->guardUndoing()Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    :cond_1
    new-instance p1, Lcom/onyx/android/sdk/universal/editor/events/note/EditorUndoEvent;

    invoke-direct {p1}, Lcom/onyx/android/sdk/universal/editor/events/note/EditorUndoEvent;-><init>()V

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    return-void
.end method

.method public final onMouseScaleEvent(Lcom/onyx/android/sdk/universal/editor/events/note/FunctionMouseScaleEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/note/FunctionMouseScaleEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/handler/QuickFunctionEventHandler;->a()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/events/app/MouseScaleEvent;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/note/FunctionMouseScaleEvent;->getScale()F

    move-result p1

    invoke-direct {v0, p1}, Lcom/onyx/android/sdk/universal/editor/events/app/MouseScaleEvent;-><init>(F)V

    invoke-static {p0, v0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    return-void
.end method

.method public final onMouseScrollEvent(Lcom/onyx/android/sdk/universal/editor/events/note/FunctionMouseScrollEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/note/FunctionMouseScrollEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/handler/QuickFunctionEventHandler;->a()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/events/app/MouseScrollEvent;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/note/FunctionMouseScrollEvent;->getScroll()F

    move-result p1

    invoke-direct {v0, p1}, Lcom/onyx/android/sdk/universal/editor/events/app/MouseScrollEvent;-><init>(F)V

    invoke-static {p0, v0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    return-void
.end method

.method public final onSingleClickEvent(Lcom/onyx/android/sdk/universal/editor/events/app/SingleClickEvent;)V
    .locals 5
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/app/SingleClickEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/base/utils/RxTimerUtil;->INSTANCE:Lcom/onyx/android/sdk/base/utils/RxTimerUtil;

    iget v1, p0, Lcom/onyx/galaxy/note/editor/handler/QuickFunctionEventHandler;->f:I

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/RxTimerUtil;->cancel(I)V

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v2, Lcom/onyx/galaxy/note/editor/handler/QuickFunctionEventHandler$onSingleClickEvent$1;

    invoke-direct {v2, p0, p1}, Lcom/onyx/galaxy/note/editor/handler/QuickFunctionEventHandler$onSingleClickEvent$1;-><init>(Lcom/onyx/galaxy/note/editor/handler/QuickFunctionEventHandler;Lcom/onyx/android/sdk/universal/editor/events/app/SingleClickEvent;)V

    const-wide/16 v3, 0x32

    invoke-virtual {v0, v3, v4, v1, v2}, Lcom/onyx/android/sdk/base/utils/RxTimerUtil;->timer(JLjava/util/concurrent/TimeUnit;Lkotlin/jvm/functions/Function1;)I

    move-result p1

    iput p1, p0, Lcom/onyx/galaxy/note/editor/handler/QuickFunctionEventHandler;->f:I

    return-void
.end method

.method public final onStylusFunctionInvalidEvent(Lcom/onyx/android/sdk/universal/editor/events/note/StylusFunctionInvalidEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/note/StylusFunctionInvalidEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/handler/QuickFunctionEventHandler;->a()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    new-instance p1, Lcom/onyx/android/sdk/universal/editor/events/note/ShowStylusFunctionInvalidEvent;

    invoke-direct {p1}, Lcom/onyx/android/sdk/universal/editor/events/note/ShowStylusFunctionInvalidEvent;-><init>()V

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    return-void
.end method

.method public final onStylusLongPress(Lcom/onyx/android/sdk/universal/editor/events/app/StylusLongPressEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/app/StylusLongPressEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/app/StylusLongPressEvent;->isLongPressActive()Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p0, Landroid/content/Intent;

    const-string p1, "action_on_stylus_click"

    invoke-direct {p0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p1, "key_code_click_key"

    const-string v0, "settings_stylus_long_press"

    invoke-virtual {p0, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object p1, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getAppContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/handler/QuickFunctionEventHandler;->e:Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->getPenViewModel$note_overseasRelease()Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;->getLastPenType()Lcom/onyx/galaxy/note/editor/data/PenContext;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/data/PenContext;->getLastShapeTool()Lcom/onyx/galaxy/note/editor/data/ShapeToolType;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/handler/QuickFunctionEventHandler;->e:Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->ensureSwitchUserTool$note_overseasRelease(Lcom/onyx/galaxy/note/editor/data/ShapeToolType;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final onStylusLongPressEraser(Lcom/onyx/android/sdk/universal/editor/events/note/FunctionLongPressEraserEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/note/FunctionLongPressEraserEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/handler/QuickFunctionEventHandler;->a()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/EditorBundle;->getUiBundle()Lcom/onyx/android/sdk/universal/editor/UIBundle;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/UIBundle;->getHandlerManager()Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;

    move-result-object p0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/note/FunctionLongPressEraserEvent;->isPressed()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;->setStylusLongPressActive(Z)V

    return-void
.end method
