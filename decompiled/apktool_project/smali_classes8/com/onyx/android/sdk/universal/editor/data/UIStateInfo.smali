.class public final Lcom/onyx/android/sdk/universal/editor/data/UIStateInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000+\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0018\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002*\u0001\u001d\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\u001f\u001a\u00020 J\u0006\u0010!\u001a\u00020\u0004J\u0006\u0010\"\u001a\u00020\u0004J\u000e\u0010#\u001a\u00020\u00042\u0006\u0010$\u001a\u00020%J\u0006\u0010&\u001a\u00020\u0004R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001a\u0010\t\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u0006\"\u0004\u0008\u000b\u0010\u0008R\u001a\u0010\u000c\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\u0006\"\u0004\u0008\r\u0010\u0008R\u001a\u0010\u000e\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000e\u0010\u0006\"\u0004\u0008\u000f\u0010\u0008R\u001a\u0010\u0010\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\u0006\"\u0004\u0008\u0011\u0010\u0008R\u001a\u0010\u0012\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0012\u0010\u0006\"\u0004\u0008\u0013\u0010\u0008R\u000e\u0010\u0014\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R$\u0010\u0016\u001a\u00020\u00042\u0006\u0010\u0015\u001a\u00020\u0004@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0016\u0010\u0006\"\u0004\u0008\u0017\u0010\u0008R\u001a\u0010\u0018\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0018\u0010\u0006\"\u0004\u0008\u0019\u0010\u0008R\u001a\u0010\u001a\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001a\u0010\u0006\"\u0004\u0008\u001b\u0010\u0008R\u0010\u0010\u001c\u001a\u00020\u001dX\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u001e\u00a8\u0006\'"
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/editor/data/UIStateInfo;",
        "",
        "()V",
        "animatingStartSplitScreen",
        "",
        "getAnimatingStartSplitScreen",
        "()Z",
        "setAnimatingStartSplitScreen",
        "(Z)V",
        "animationUpdateEditorView",
        "getAnimationUpdateEditorView",
        "setAnimationUpdateEditorView",
        "isClosingDocumentAfterExitSplitScreen",
        "setClosingDocumentAfterExitSplitScreen",
        "isDragAppendingPage",
        "setDragAppendingPage",
        "isDragStateIdle",
        "setDragStateIdle",
        "isEnabledAbortFlingAnimation",
        "setEnabledAbortFlingAnimation",
        "isEnabledTouch",
        "value",
        "isFling",
        "setFling",
        "isPageScrollerScrolling",
        "setPageScrollerScrolling",
        "isScaleEnding",
        "setScaleEnding",
        "resetDragStateIdleObserver",
        "com/onyx/android/sdk/universal/editor/data/UIStateInfo$resetDragStateIdleObserver$1",
        "Lcom/onyx/android/sdk/universal/editor/data/UIStateInfo$resetDragStateIdleObserver$1;",
        "delayResetDragStateIdleIf",
        "",
        "isConsumeTouchEventWhenDisableTouchEvent",
        "isEnabledEditShape",
        "isEnabledTouchEvent",
        "event",
        "Landroid/view/MotionEvent;",
        "isEnabledTouchEventByUIState",
        "sdk-universal_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private animatingStartSplitScreen:Z

.field private animationUpdateEditorView:Z

.field private isClosingDocumentAfterExitSplitScreen:Z

.field private isDragAppendingPage:Z

.field private isDragStateIdle:Z

.field private isEnabledAbortFlingAnimation:Z

.field private isEnabledTouch:Z

.field private isFling:Z

.field private isPageScrollerScrolling:Z

.field private isScaleEnding:Z

.field private final resetDragStateIdleObserver:Lcom/onyx/android/sdk/universal/editor/data/UIStateInfo$resetDragStateIdleObserver$1;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/onyx/android/sdk/universal/editor/data/UIStateInfo;->isEnabledAbortFlingAnimation:Z

    iput-boolean v0, p0, Lcom/onyx/android/sdk/universal/editor/data/UIStateInfo;->isDragStateIdle:Z

    iput-boolean v0, p0, Lcom/onyx/android/sdk/universal/editor/data/UIStateInfo;->isEnabledTouch:Z

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/data/UIStateInfo$resetDragStateIdleObserver$1;

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/universal/editor/data/UIStateInfo$resetDragStateIdleObserver$1;-><init>(Lcom/onyx/android/sdk/universal/editor/data/UIStateInfo;)V

    iput-object v0, p0, Lcom/onyx/android/sdk/universal/editor/data/UIStateInfo;->resetDragStateIdleObserver:Lcom/onyx/android/sdk/universal/editor/data/UIStateInfo$resetDragStateIdleObserver$1;

    return-void
.end method


# virtual methods
.method public final delayResetDragStateIdleIf()V
    .locals 2

    iget-boolean v0, p0, Lcom/onyx/android/sdk/universal/editor/data/UIStateInfo;->isDragStateIdle:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/onyx/android/sdk/base/utils/RxTimerUtil;->INSTANCE:Lcom/onyx/android/sdk/base/utils/RxTimerUtil;

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/data/UIStateInfo;->resetDragStateIdleObserver:Lcom/onyx/android/sdk/universal/editor/data/UIStateInfo$resetDragStateIdleObserver$1;

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/RxTimerUtil;->cancel(Lcom/onyx/android/sdk/base/utils/RxTimerUtil$TimerObserver;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/data/UIStateInfo;->resetDragStateIdleObserver:Lcom/onyx/android/sdk/universal/editor/data/UIStateInfo$resetDragStateIdleObserver$1;

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/base/utils/RxTimerUtil;->shortTimer(Lcom/onyx/android/sdk/base/utils/RxTimerUtil$TimerObserver;)I

    return-void
.end method

.method public final getAnimatingStartSplitScreen()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/universal/editor/data/UIStateInfo;->animatingStartSplitScreen:Z

    return p0
.end method

.method public final getAnimationUpdateEditorView()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/universal/editor/data/UIStateInfo;->animationUpdateEditorView:Z

    return p0
.end method

.method public final isClosingDocumentAfterExitSplitScreen()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/universal/editor/data/UIStateInfo;->isClosingDocumentAfterExitSplitScreen:Z

    return p0
.end method

.method public final isConsumeTouchEventWhenDisableTouchEvent()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final isDragAppendingPage()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/universal/editor/data/UIStateInfo;->isDragAppendingPage:Z

    return p0
.end method

.method public final isDragStateIdle()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/universal/editor/data/UIStateInfo;->isDragStateIdle:Z

    return p0
.end method

.method public final isEnabledAbortFlingAnimation()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/universal/editor/data/UIStateInfo;->isEnabledAbortFlingAnimation:Z

    return p0
.end method

.method public final isEnabledEditShape()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/universal/editor/data/UIStateInfo;->isScaleEnding:Z

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public final isEnabledTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/onyx/android/sdk/base/extension/MotionEventKt;->isDoneAction(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/onyx/android/sdk/universal/editor/data/UIStateInfo;->isEnabledTouch:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/onyx/android/sdk/universal/editor/data/UIStateInfo;->isEnabledTouch:Z

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/data/UIStateInfo;->isEnabledTouchEventByUIState()Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/universal/editor/data/UIStateInfo;->isEnabledTouch:Z

    goto :goto_0

    :cond_1
    iget-boolean p1, p0, Lcom/onyx/android/sdk/universal/editor/data/UIStateInfo;->isEnabledTouch:Z

    :goto_0
    return p1
.end method

.method public final isEnabledTouchEventByUIState()Z
    .locals 2

    iget-boolean v0, p0, Lcom/onyx/android/sdk/universal/editor/data/UIStateInfo;->animationUpdateEditorView:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-boolean v0, p0, Lcom/onyx/android/sdk/universal/editor/data/UIStateInfo;->isEnabledAbortFlingAnimation:Z

    if-nez v0, :cond_1

    return v1

    :cond_1
    iget-boolean v0, p0, Lcom/onyx/android/sdk/universal/editor/data/UIStateInfo;->isPageScrollerScrolling:Z

    if-eqz v0, :cond_2

    return v1

    :cond_2
    iget-boolean v0, p0, Lcom/onyx/android/sdk/universal/editor/data/UIStateInfo;->isDragStateIdle:Z

    if-nez v0, :cond_3

    return v1

    :cond_3
    iget-boolean p0, p0, Lcom/onyx/android/sdk/universal/editor/data/UIStateInfo;->isDragAppendingPage:Z

    if-eqz p0, :cond_4

    return v1

    :cond_4
    const/4 p0, 0x1

    return p0
.end method

.method public final isFling()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/universal/editor/data/UIStateInfo;->isFling:Z

    return p0
.end method

.method public final isPageScrollerScrolling()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/universal/editor/data/UIStateInfo;->isPageScrollerScrolling:Z

    return p0
.end method

.method public final isScaleEnding()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/universal/editor/data/UIStateInfo;->isScaleEnding:Z

    return p0
.end method

.method public final setAnimatingStartSplitScreen(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/universal/editor/data/UIStateInfo;->animatingStartSplitScreen:Z

    return-void
.end method

.method public final setAnimationUpdateEditorView(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/universal/editor/data/UIStateInfo;->animationUpdateEditorView:Z

    return-void
.end method

.method public final setClosingDocumentAfterExitSplitScreen(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/universal/editor/data/UIStateInfo;->isClosingDocumentAfterExitSplitScreen:Z

    return-void
.end method

.method public final setDragAppendingPage(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/universal/editor/data/UIStateInfo;->isDragAppendingPage:Z

    return-void
.end method

.method public final setDragStateIdle(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/universal/editor/data/UIStateInfo;->isDragStateIdle:Z

    return-void
.end method

.method public final setEnabledAbortFlingAnimation(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/universal/editor/data/UIStateInfo;->isEnabledAbortFlingAnimation:Z

    return-void
.end method

.method public final setFling(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/universal/editor/data/UIStateInfo;->isFling:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/onyx/android/sdk/universal/editor/data/UIStateInfo;->isEnabledAbortFlingAnimation:Z

    :cond_0
    return-void
.end method

.method public final setPageScrollerScrolling(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/universal/editor/data/UIStateInfo;->isPageScrollerScrolling:Z

    return-void
.end method

.method public final setScaleEnding(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/universal/editor/data/UIStateInfo;->isScaleEnding:Z

    return-void
.end method
