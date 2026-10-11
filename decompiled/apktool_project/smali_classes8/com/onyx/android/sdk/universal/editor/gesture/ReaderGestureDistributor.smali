.class public final Lcom/onyx/android/sdk/universal/editor/gesture/ReaderGestureDistributor;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/universal/editor/gesture/ReaderGestureDistributor$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u0000 \"2\u00020\u0001:\u0001\"B\u0007\u00a2\u0006\u0004\u0008 \u0010!J\u0006\u0010\u0002\u001a\u00020\u0000J\u0016\u0010\u0008\u001a\u00020\u00072\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0005J\u000e\u0010\n\u001a\u00020\t2\u0006\u0010\u0006\u001a\u00020\u0005J\u0006\u0010\u000b\u001a\u00020\tJ\u0006\u0010\u000c\u001a\u00020\tJ\u0016\u0010\r\u001a\u00020\u00072\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0005J\u0006\u0010\u000e\u001a\u00020\u0000J\u0006\u0010\u000f\u001a\u00020\u0007J\u0006\u0010\u0010\u001a\u00020\u0007J\u0006\u0010\u0011\u001a\u00020\u0007J\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0005J\u0008\u0010\u0013\u001a\u00020\u0007H\u0002R\"\u0010\u0015\u001a\u00020\u00148\u0006@\u0006X\u0086.\u00a2\u0006\u0012\n\u0004\u0008\u0015\u0010\u0016\u001a\u0004\u0008\u0017\u0010\u0018\"\u0004\u0008\u0019\u0010\u001aR\u0017\u0010\u001f\u001a\u00020\u001b8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0013\u0010\u001c\u001a\u0004\u0008\u001d\u0010\u001e\u00a8\u0006#"
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/editor/gesture/ReaderGestureDistributor;",
        "",
        "subscribe",
        "Landroid/view/View;",
        "view",
        "Landroid/view/MotionEvent;",
        "event",
        "",
        "onTouchEvent",
        "",
        "dispatchTouchEvent",
        "onPause",
        "onResume",
        "onHover",
        "dispose",
        "isMultiFingersMoved",
        "isSingleFingerMoved",
        "isLongPress",
        "getCurMoveMotionEvent",
        "a",
        "Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;",
        "handlerManager",
        "Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;",
        "getHandlerManager",
        "()Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;",
        "setHandlerManager",
        "(Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;)V",
        "Lcom/onyx/android/sdk/rxgesture/RxGesture;",
        "Lcom/onyx/android/sdk/rxgesture/RxGesture;",
        "getRxGesture",
        "()Lcom/onyx/android/sdk/rxgesture/RxGesture;",
        "rxGesture",
        "<init>",
        "()V",
        "Companion",
        "sdk-universal_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# static fields
.field public static final Companion:Lcom/onyx/android/sdk/universal/editor/gesture/ReaderGestureDistributor$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final DOUBLE_TAP_TIME_MS_THRESHOLD:J = 0x12cL

.field public static final NORMAL_MODEL_FLING_DISTANCE:F = 0.05f

.field public static final SINGLE_TAP_CONFIRMED_TIME_MS_THRESHOLD:J = 0x12cL

.field public static final SINGLE_TAP_POINT_COUNT_THRESHOLD:I = 0xf

.field public static final SINGLE_TAP_TIME_MS_THRESHOLD:J = 0x12cL


# instance fields
.field public final a:Lcom/onyx/android/sdk/rxgesture/RxGesture;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public handlerManager:Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/gesture/ReaderGestureDistributor$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/universal/editor/gesture/ReaderGestureDistributor$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/universal/editor/gesture/ReaderGestureDistributor;->Companion:Lcom/onyx/android/sdk/universal/editor/gesture/ReaderGestureDistributor$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/onyx/android/sdk/rxgesture/RxGesture;

    invoke-direct {v0}, Lcom/onyx/android/sdk/rxgesture/RxGesture;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/universal/editor/gesture/ReaderGestureDistributor;->a:Lcom/onyx/android/sdk/rxgesture/RxGesture;

    return-void
.end method

.method public static final synthetic access$isPinchZooming(Lcom/onyx/android/sdk/universal/editor/gesture/ReaderGestureDistributor;)Z
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/gesture/ReaderGestureDistributor;->a()Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final a()Z
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/gesture/ReaderGestureDistributor;->getHandlerManager()Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;->getTouchStateInfo()Lcom/onyx/android/sdk/universal/editor/gesture/TouchStateInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/gesture/TouchStateInfo;->isPinchZooming()Z

    move-result p0

    return p0
.end method

.method public final dispatchTouchEvent(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/gesture/ReaderGestureDistributor;->a:Lcom/onyx/android/sdk/rxgesture/RxGesture;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/rxgesture/RxGesture;->dispatchTouchEvent(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public final dispose()Lcom/onyx/android/sdk/universal/editor/gesture/ReaderGestureDistributor;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/gesture/ReaderGestureDistributor;->a:Lcom/onyx/android/sdk/rxgesture/RxGesture;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/rxgesture/RxGesture;->dispose()V

    return-object p0
.end method

.method public final getCurMoveMotionEvent()Landroid/view/MotionEvent;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/gesture/ReaderGestureDistributor;->isMultiFingersMoved()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/gesture/ReaderGestureDistributor;->a:Lcom/onyx/android/sdk/rxgesture/RxGesture;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/rxgesture/RxGesture;->getGestureContext()Lcom/onyx/android/sdk/rxgesture/RxGestureContext;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->getPointerCurMotionEvent()Landroid/view/MotionEvent;

    move-result-object p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/gesture/ReaderGestureDistributor;->a:Lcom/onyx/android/sdk/rxgesture/RxGesture;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/rxgesture/RxGesture;->getGestureContext()Lcom/onyx/android/sdk/rxgesture/RxGestureContext;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->getCurMotionEvent()Landroid/view/MotionEvent;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public final getHandlerManager()Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/gesture/ReaderGestureDistributor;->handlerManager:Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "handlerManager"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getRxGesture()Lcom/onyx/android/sdk/rxgesture/RxGesture;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/gesture/ReaderGestureDistributor;->a:Lcom/onyx/android/sdk/rxgesture/RxGesture;

    return-object p0
.end method

.method public final isLongPress()Z
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/gesture/ReaderGestureDistributor;->a:Lcom/onyx/android/sdk/rxgesture/RxGesture;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/rxgesture/RxGesture;->getGestureContext()Lcom/onyx/android/sdk/rxgesture/RxGestureContext;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->isLongPress()Z

    move-result p0

    return p0
.end method

.method public final isMultiFingersMoved()Z
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/gesture/ReaderGestureDistributor;->a:Lcom/onyx/android/sdk/rxgesture/RxGesture;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/rxgesture/RxGesture;->getGestureContext()Lcom/onyx/android/sdk/rxgesture/RxGestureContext;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->hasMultipleMoved()Z

    move-result p0

    return p0
.end method

.method public final isSingleFingerMoved()Z
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/gesture/ReaderGestureDistributor;->a:Lcom/onyx/android/sdk/rxgesture/RxGesture;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/rxgesture/RxGesture;->getGestureContext()Lcom/onyx/android/sdk/rxgesture/RxGestureContext;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->hasSingleMoved()Z

    move-result p0

    return p0
.end method

.method public final onHover(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "event"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/gesture/ReaderGestureDistributor;->a:Lcom/onyx/android/sdk/rxgesture/RxGesture;

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/rxgesture/RxGesture;->onHover(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public final onPause()V
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/gesture/ReaderGestureDistributor;->a:Lcom/onyx/android/sdk/rxgesture/RxGesture;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/rxgesture/RxGesture;->onPause()V

    return-void
.end method

.method public final onResume()V
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/gesture/ReaderGestureDistributor;->a:Lcom/onyx/android/sdk/rxgesture/RxGesture;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/rxgesture/RxGesture;->onResume()V

    return-void
.end method

.method public final onTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "event"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/gesture/ReaderGestureDistributor;->a:Lcom/onyx/android/sdk/rxgesture/RxGesture;

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/rxgesture/RxGesture;->onTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public final setHandlerManager(Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/gesture/ReaderGestureDistributor;->handlerManager:Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;

    return-void
.end method

.method public final subscribe()Lcom/onyx/android/sdk/universal/editor/gesture/ReaderGestureDistributor;
    .locals 5
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Lcom/onyx/android/sdk/rxgesture/RxGestureConfig;

    invoke-direct {v0}, Lcom/onyx/android/sdk/rxgesture/RxGestureConfig;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/rxgesture/RxGestureConfig;->setEnableMoveGesture(Z)V

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/rxgesture/RxGestureConfig;->setEnableFlingGesture(Z)V

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/rxgesture/RxGestureConfig;->setEnableCommonGesture(Z)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/onyx/android/sdk/rxgesture/RxGestureConfig;->setEnableDoubleGesture(Z)V

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/rxgesture/RxGestureConfig;->setEnableLongPressGesture(Z)V

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/rxgesture/RxGestureConfig;->setEnabledPenTouch(Z)V

    invoke-virtual {v0, v2}, Lcom/onyx/android/sdk/rxgesture/RxGestureConfig;->setEnabledPalmReject(Z)V

    invoke-virtual {v0, v2}, Lcom/onyx/android/sdk/rxgesture/RxGestureConfig;->setEnableScaleGesture(Z)V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/onyx/android/sdk/rxgesture/RxGestureConfig;->setScaleIntervalTimeMs(J)V

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/onyx/android/sdk/rxgesture/RxGestureConfig;->setScaleFactorIntervalThreshold(F)V

    invoke-virtual {v0, v2, v3}, Lcom/onyx/android/sdk/rxgesture/RxGestureConfig;->setMoveIntervalTimeMs(J)V

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/rxgesture/RxGestureConfig;->setMoveDistanceThreshold(I)V

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/gesture/ReaderGestureDistributor;->a:Lcom/onyx/android/sdk/rxgesture/RxGesture;

    new-instance v2, Lcom/onyx/android/sdk/universal/editor/gesture/ReaderGestureDistributor$subscribe$1;

    invoke-direct {v2, p0}, Lcom/onyx/android/sdk/universal/editor/gesture/ReaderGestureDistributor$subscribe$1;-><init>(Lcom/onyx/android/sdk/universal/editor/gesture/ReaderGestureDistributor;)V

    invoke-virtual {v1, v0, v2}, Lcom/onyx/android/sdk/rxgesture/RxGesture;->subscribe(Lcom/onyx/android/sdk/rxgesture/RxGestureConfig;Lcom/onyx/android/sdk/rxgesture/RxGestureListener;)V

    return-object p0
.end method
