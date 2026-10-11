.class public final Lcom/onyx/android/sdk/rxgesture/RxClickMultiFingerGesture;
.super Lcom/onyx/android/sdk/rxgesture/RxBaseClickMultiFingerGesture;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0011\u001a\u00020\u000e\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\u0008\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\t\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\u000c\u001a\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\r\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016R\u0016\u0010\u0011\u001a\u00020\u000e8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u000f\u0010\u0010\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/onyx/android/sdk/rxgesture/RxClickMultiFingerGesture;",
        "Lcom/onyx/android/sdk/rxgesture/RxBaseClickMultiFingerGesture;",
        "Lcom/onyx/android/sdk/rxgesture/RxGestureContext;",
        "gestureContext",
        "",
        "filterByCancel",
        "filterByMultiTouch",
        "filterByUpToDownDistance",
        "filterByUpToDownTime",
        "filterByTouchUp",
        "",
        "getUpToDownTime",
        "onMultiFingerClicked",
        "filterByPalm",
        "Lcom/onyx/android/sdk/device/IDevice;",
        "h",
        "Lcom/onyx/android/sdk/device/IDevice;",
        "multiClickFilter",
        "<init>",
        "(Lcom/onyx/android/sdk/device/IDevice;)V",
        "sdk-rxgesture_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field public h:Lcom/onyx/android/sdk/device/IDevice;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/device/IDevice;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/device/IDevice;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "multiClickFilter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/onyx/android/sdk/rxgesture/RxBaseClickMultiFingerGesture;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/rxgesture/RxClickMultiFingerGesture;->h:Lcom/onyx/android/sdk/device/IDevice;

    return-void
.end method


# virtual methods
.method public filterByCancel(Lcom/onyx/android/sdk/rxgesture/RxGestureContext;)Z
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/rxgesture/RxGestureContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "gestureContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/rxgesture/RxClickMultiFingerGesture;->h:Lcom/onyx/android/sdk/device/IDevice;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->getCurMotionEvent()Landroid/view/MotionEvent;

    move-result-object v0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->getPointerCount()I

    move-result p1

    invoke-interface {p0, v0, p1}, Lcom/onyx/android/sdk/device/IDevice;->filterByCancel(Landroid/view/MotionEvent;I)Z

    move-result p0

    return p0
.end method

.method public filterByMultiTouch(Lcom/onyx/android/sdk/rxgesture/RxGestureContext;)Z
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/rxgesture/RxGestureContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "gestureContext"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->isHasMultiplePoint()Z

    move-result p0

    if-nez p0, :cond_0

    sget-object p1, Lcom/onyx/android/sdk/rxgesture/RxGestureLog;->INSTANCE:Lcom/onyx/android/sdk/rxgesture/RxGestureLog;

    const-class v0, Lcom/onyx/android/sdk/rxgesture/RxClickMultiFingerGesture;

    const-string v1, "filter by multi touch"

    invoke-virtual {p1, v0, v1}, Lcom/onyx/android/sdk/rxgesture/RxGestureLog;->v(Ljava/lang/Class;Ljava/lang/String;)V

    :cond_0
    return p0
.end method

.method public filterByPalm(Lcom/onyx/android/sdk/rxgesture/RxGestureContext;)Z
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/rxgesture/RxGestureContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "gestureContext"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->isBigPalmPressed()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public filterByTouchUp(Lcom/onyx/android/sdk/rxgesture/RxGestureContext;)Z
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/rxgesture/RxGestureContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "gestureContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/rxgesture/RxClickMultiFingerGesture;->h:Lcom/onyx/android/sdk/device/IDevice;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->getCurMotionEvent()Landroid/view/MotionEvent;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/onyx/android/sdk/device/IDevice;->filterByTouchUp(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public filterByUpToDownDistance(Lcom/onyx/android/sdk/rxgesture/RxGestureContext;)Z
    .locals 7
    .param p1    # Lcom/onyx/android/sdk/rxgesture/RxGestureContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "gestureContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/onyx/android/sdk/rxgesture/RxClickMultiFingerGesture;->h:Lcom/onyx/android/sdk/device/IDevice;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->getCurMotionEvent()Landroid/view/MotionEvent;

    move-result-object v2

    invoke-virtual {p1}, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->getDownPoint()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/onyx/android/sdk/geometry/extension/TouchPointKt;->toPointF(Lcom/onyx/android/sdk/base/data/TouchPoint;)Landroid/graphics/PointF;

    move-result-object p0

    move-object v3, p0

    goto :goto_0

    :cond_0
    move-object v3, v0

    :goto_0
    invoke-virtual {p1}, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->getActiveUpPoint()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-static {p0}, Lcom/onyx/android/sdk/geometry/extension/TouchPointKt;->toPointF(Lcom/onyx/android/sdk/base/data/TouchPoint;)Landroid/graphics/PointF;

    move-result-object p0

    move-object v4, p0

    goto :goto_1

    :cond_1
    move-object v4, v0

    :goto_1
    invoke-virtual {p1}, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->getPointerCount()I

    move-result v5

    invoke-virtual {p1}, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->getConfig()Lcom/onyx/android/sdk/rxgesture/RxGestureConfig;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/rxgesture/RxGestureConfig;->getSingleMoveDistanceThresholdShort()I

    move-result v6

    invoke-interface/range {v1 .. v6}, Lcom/onyx/android/sdk/device/IDevice;->filterByUpToDownDistance(Landroid/view/MotionEvent;Landroid/graphics/PointF;Landroid/graphics/PointF;II)Z

    move-result p0

    return p0
.end method

.method public filterByUpToDownTime(Lcom/onyx/android/sdk/rxgesture/RxGestureContext;)Z
    .locals 12
    .param p1    # Lcom/onyx/android/sdk/rxgesture/RxGestureContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "gestureContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/onyx/android/sdk/rxgesture/RxClickMultiFingerGesture;->h:Lcom/onyx/android/sdk/device/IDevice;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->getDownPoint()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object p0

    const-wide/16 v2, -0x1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getTimestamp()J

    move-result-wide v4

    goto :goto_0

    :cond_0
    move-wide v4, v2

    :goto_0
    invoke-virtual {p1}, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->getUpPoint()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getTimestamp()J

    move-result-wide v2

    :cond_1
    move-wide v6, v2

    invoke-virtual {p1}, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->getPointerCount()I

    move-result p0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->getConfig()Lcom/onyx/android/sdk/rxgesture/RxGestureConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/rxgesture/RxGestureConfig;->getSingleTapTimeMsMin()J

    move-result-wide v8

    invoke-virtual {p1}, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->getConfig()Lcom/onyx/android/sdk/rxgesture/RxGestureConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/rxgesture/RxGestureConfig;->getSingleTapTimeMsMax()J

    move-result-wide v10

    move-wide v2, v4

    move-wide v4, v6

    move v6, p0

    move-wide v7, v8

    move-wide v9, v10

    invoke-interface/range {v1 .. v10}, Lcom/onyx/android/sdk/device/IDevice;->filterByUpToDownTime(JJIJJ)Z

    move-result p0

    return p0
.end method

.method public getUpToDownTime(Lcom/onyx/android/sdk/rxgesture/RxGestureContext;)J
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/rxgesture/RxGestureContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "gestureContext"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->upToDownTime()J

    move-result-wide p0

    return-wide p0
.end method

.method public onMultiFingerClicked(Lcom/onyx/android/sdk/rxgesture/RxGestureContext;)Lcom/onyx/android/sdk/rxgesture/RxGestureContext;
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/rxgesture/RxGestureContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "gestureContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->getCurMotionEvent()Landroid/view/MotionEvent;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->isTwoFingerTouch()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/rxgesture/RxBaseGesture;->getListener()Lcom/onyx/android/sdk/rxgesture/RxGestureListener;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1, p1, v0}, Lcom/onyx/android/sdk/rxgesture/RxGestureListener;->onTwoFingerClicked(Lcom/onyx/android/sdk/rxgesture/RxGestureContext;Landroid/view/MotionEvent;)V

    :cond_0
    invoke-virtual {p1}, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->isThreeFingerTouch()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/rxgesture/RxBaseGesture;->getListener()Lcom/onyx/android/sdk/rxgesture/RxGestureListener;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-interface {p0, p1, v0}, Lcom/onyx/android/sdk/rxgesture/RxGestureListener;->onThreeFingerClicked(Lcom/onyx/android/sdk/rxgesture/RxGestureContext;Landroid/view/MotionEvent;)V

    :cond_1
    return-object p1
.end method
