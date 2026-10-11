.class public final Lcom/onyx/android/sdk/rxgesture/CatchThrowableRxGestureListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/onyx/android/sdk/rxgesture/RxGestureListener;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0013\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u001e\u001a\u00020\u0001\u00a2\u0006\u0004\u0008\u001f\u0010 J\u0018\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016J\u0018\u0010\u0008\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016J\u0018\u0010\t\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016J\u0018\u0010\n\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016J\u0018\u0010\u000b\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016J\u0018\u0010\u000c\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016J\u0018\u0010\r\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016J\u0010\u0010\u0010\u001a\u00020\u00062\u0006\u0010\u000f\u001a\u00020\u000eH\u0016J\u0010\u0010\u0011\u001a\u00020\u00062\u0006\u0010\u000f\u001a\u00020\u000eH\u0016J\u0010\u0010\u0012\u001a\u00020\u00062\u0006\u0010\u000f\u001a\u00020\u000eH\u0016J\u0018\u0010\u0013\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016J\u0018\u0010\u0014\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016J\u0018\u0010\u0015\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016J\u0018\u0010\u0016\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016J\u0018\u0010\u0017\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016J\u0018\u0010\u0018\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016J\u0018\u0010\u0019\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016J\u0008\u0010\u001a\u001a\u00020\u0006H\u0016J\u0018\u0010\u001b\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016R\u0014\u0010\u001e\u001a\u00020\u00018\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001c\u0010\u001d\u00a8\u0006!"
    }
    d2 = {
        "Lcom/onyx/android/sdk/rxgesture/CatchThrowableRxGestureListener;",
        "Lcom/onyx/android/sdk/rxgesture/RxGestureListener;",
        "Lcom/onyx/android/sdk/rxgesture/RxGestureContext;",
        "gestureContext",
        "Landroid/view/MotionEvent;",
        "motionEvent",
        "",
        "onTouchDown",
        "onTouchUp",
        "onTouchCancel",
        "onMoving",
        "onExitSingleMove",
        "onTwoFingerMoving",
        "onFling",
        "Landroid/view/ScaleGestureDetector;",
        "detector",
        "onScaleBegin",
        "onScaling",
        "onScaleEnd",
        "onSingleTap",
        "onDoubleTap",
        "onSingleTapConfirmed",
        "onLongPress",
        "onThreeFingerClicked",
        "onTwoFingerClicked",
        "onPalm",
        "onExitLongPress",
        "onNoGestures",
        "a",
        "Lcom/onyx/android/sdk/rxgesture/RxGestureListener;",
        "listener",
        "<init>",
        "(Lcom/onyx/android/sdk/rxgesture/RxGestureListener;)V",
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
.field public final a:Lcom/onyx/android/sdk/rxgesture/RxGestureListener;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/rxgesture/RxGestureListener;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/rxgesture/RxGestureListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/rxgesture/CatchThrowableRxGestureListener;->a:Lcom/onyx/android/sdk/rxgesture/RxGestureListener;

    return-void
.end method


# virtual methods
.method public onDoubleTap(Lcom/onyx/android/sdk/rxgesture/RxGestureContext;Landroid/view/MotionEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/rxgesture/RxGestureContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "gestureContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "motionEvent"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    iget-object p0, p0, Lcom/onyx/android/sdk/rxgesture/CatchThrowableRxGestureListener;->a:Lcom/onyx/android/sdk/rxgesture/RxGestureListener;

    invoke-interface {p0, p1, p2}, Lcom/onyx/android/sdk/rxgesture/RxGestureListener;->onDoubleTap(Lcom/onyx/android/sdk/rxgesture/RxGestureContext;Landroid/view/MotionEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    sget-object p1, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/base/utils/Debug;->w(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public onExitLongPress()V
    .locals 1

    :try_start_0
    iget-object p0, p0, Lcom/onyx/android/sdk/rxgesture/CatchThrowableRxGestureListener;->a:Lcom/onyx/android/sdk/rxgesture/RxGestureListener;

    invoke-interface {p0}, Lcom/onyx/android/sdk/rxgesture/RxGestureListener;->onExitLongPress()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    sget-object v0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/base/utils/Debug;->w(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public onExitSingleMove(Lcom/onyx/android/sdk/rxgesture/RxGestureContext;Landroid/view/MotionEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/rxgesture/RxGestureContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "gestureContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "motionEvent"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    iget-object p0, p0, Lcom/onyx/android/sdk/rxgesture/CatchThrowableRxGestureListener;->a:Lcom/onyx/android/sdk/rxgesture/RxGestureListener;

    invoke-interface {p0, p1, p2}, Lcom/onyx/android/sdk/rxgesture/RxGestureListener;->onExitSingleMove(Lcom/onyx/android/sdk/rxgesture/RxGestureContext;Landroid/view/MotionEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    sget-object p1, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/base/utils/Debug;->w(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public onFling(Lcom/onyx/android/sdk/rxgesture/RxGestureContext;Landroid/view/MotionEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/rxgesture/RxGestureContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "gestureContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "motionEvent"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    iget-object p0, p0, Lcom/onyx/android/sdk/rxgesture/CatchThrowableRxGestureListener;->a:Lcom/onyx/android/sdk/rxgesture/RxGestureListener;

    invoke-interface {p0, p1, p2}, Lcom/onyx/android/sdk/rxgesture/RxGestureListener;->onFling(Lcom/onyx/android/sdk/rxgesture/RxGestureContext;Landroid/view/MotionEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    sget-object p1, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/base/utils/Debug;->w(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public onLongPress(Lcom/onyx/android/sdk/rxgesture/RxGestureContext;Landroid/view/MotionEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/rxgesture/RxGestureContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "gestureContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "motionEvent"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    iget-object p0, p0, Lcom/onyx/android/sdk/rxgesture/CatchThrowableRxGestureListener;->a:Lcom/onyx/android/sdk/rxgesture/RxGestureListener;

    invoke-interface {p0, p1, p2}, Lcom/onyx/android/sdk/rxgesture/RxGestureListener;->onLongPress(Lcom/onyx/android/sdk/rxgesture/RxGestureContext;Landroid/view/MotionEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    sget-object p1, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/base/utils/Debug;->w(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public onMoving(Lcom/onyx/android/sdk/rxgesture/RxGestureContext;Landroid/view/MotionEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/rxgesture/RxGestureContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "gestureContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "motionEvent"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    iget-object p0, p0, Lcom/onyx/android/sdk/rxgesture/CatchThrowableRxGestureListener;->a:Lcom/onyx/android/sdk/rxgesture/RxGestureListener;

    invoke-interface {p0, p1, p2}, Lcom/onyx/android/sdk/rxgesture/RxGestureListener;->onMoving(Lcom/onyx/android/sdk/rxgesture/RxGestureContext;Landroid/view/MotionEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    sget-object p1, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/base/utils/Debug;->w(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public onNoGestures(Lcom/onyx/android/sdk/rxgesture/RxGestureContext;Landroid/view/MotionEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/rxgesture/RxGestureContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "gestureContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "motionEvent"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    iget-object p0, p0, Lcom/onyx/android/sdk/rxgesture/CatchThrowableRxGestureListener;->a:Lcom/onyx/android/sdk/rxgesture/RxGestureListener;

    invoke-interface {p0, p1, p2}, Lcom/onyx/android/sdk/rxgesture/RxGestureListener;->onNoGestures(Lcom/onyx/android/sdk/rxgesture/RxGestureContext;Landroid/view/MotionEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    sget-object p1, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/base/utils/Debug;->w(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public onPalm(Lcom/onyx/android/sdk/rxgesture/RxGestureContext;Landroid/view/MotionEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/rxgesture/RxGestureContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "gestureContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "motionEvent"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    iget-object p0, p0, Lcom/onyx/android/sdk/rxgesture/CatchThrowableRxGestureListener;->a:Lcom/onyx/android/sdk/rxgesture/RxGestureListener;

    invoke-interface {p0, p1, p2}, Lcom/onyx/android/sdk/rxgesture/RxGestureListener;->onPalm(Lcom/onyx/android/sdk/rxgesture/RxGestureContext;Landroid/view/MotionEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    sget-object p1, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/base/utils/Debug;->w(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)V
    .locals 1
    .param p1    # Landroid/view/ScaleGestureDetector;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "detector"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    iget-object p0, p0, Lcom/onyx/android/sdk/rxgesture/CatchThrowableRxGestureListener;->a:Lcom/onyx/android/sdk/rxgesture/RxGestureListener;

    invoke-interface {p0, p1}, Lcom/onyx/android/sdk/rxgesture/RxGestureListener;->onScaleBegin(Landroid/view/ScaleGestureDetector;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    sget-object p1, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/base/utils/Debug;->w(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 1
    .param p1    # Landroid/view/ScaleGestureDetector;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "detector"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    iget-object p0, p0, Lcom/onyx/android/sdk/rxgesture/CatchThrowableRxGestureListener;->a:Lcom/onyx/android/sdk/rxgesture/RxGestureListener;

    invoke-interface {p0, p1}, Lcom/onyx/android/sdk/rxgesture/RxGestureListener;->onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    sget-object p1, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/base/utils/Debug;->w(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public onScaling(Landroid/view/ScaleGestureDetector;)V
    .locals 1
    .param p1    # Landroid/view/ScaleGestureDetector;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "detector"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    iget-object p0, p0, Lcom/onyx/android/sdk/rxgesture/CatchThrowableRxGestureListener;->a:Lcom/onyx/android/sdk/rxgesture/RxGestureListener;

    invoke-interface {p0, p1}, Lcom/onyx/android/sdk/rxgesture/RxGestureListener;->onScaling(Landroid/view/ScaleGestureDetector;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    sget-object p1, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/base/utils/Debug;->w(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public onSingleTap(Lcom/onyx/android/sdk/rxgesture/RxGestureContext;Landroid/view/MotionEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/rxgesture/RxGestureContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "gestureContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "motionEvent"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    iget-object p0, p0, Lcom/onyx/android/sdk/rxgesture/CatchThrowableRxGestureListener;->a:Lcom/onyx/android/sdk/rxgesture/RxGestureListener;

    invoke-interface {p0, p1, p2}, Lcom/onyx/android/sdk/rxgesture/RxGestureListener;->onSingleTap(Lcom/onyx/android/sdk/rxgesture/RxGestureContext;Landroid/view/MotionEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    sget-object p1, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/base/utils/Debug;->w(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public onSingleTapConfirmed(Lcom/onyx/android/sdk/rxgesture/RxGestureContext;Landroid/view/MotionEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/rxgesture/RxGestureContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "gestureContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "motionEvent"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    iget-object p0, p0, Lcom/onyx/android/sdk/rxgesture/CatchThrowableRxGestureListener;->a:Lcom/onyx/android/sdk/rxgesture/RxGestureListener;

    invoke-interface {p0, p1, p2}, Lcom/onyx/android/sdk/rxgesture/RxGestureListener;->onSingleTapConfirmed(Lcom/onyx/android/sdk/rxgesture/RxGestureContext;Landroid/view/MotionEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    sget-object p1, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/base/utils/Debug;->w(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public onThreeFingerClicked(Lcom/onyx/android/sdk/rxgesture/RxGestureContext;Landroid/view/MotionEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/rxgesture/RxGestureContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "gestureContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "motionEvent"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    iget-object p0, p0, Lcom/onyx/android/sdk/rxgesture/CatchThrowableRxGestureListener;->a:Lcom/onyx/android/sdk/rxgesture/RxGestureListener;

    invoke-interface {p0, p1, p2}, Lcom/onyx/android/sdk/rxgesture/RxGestureListener;->onThreeFingerClicked(Lcom/onyx/android/sdk/rxgesture/RxGestureContext;Landroid/view/MotionEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    sget-object p1, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/base/utils/Debug;->w(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public onTouchCancel(Lcom/onyx/android/sdk/rxgesture/RxGestureContext;Landroid/view/MotionEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/rxgesture/RxGestureContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "gestureContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "motionEvent"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    iget-object p0, p0, Lcom/onyx/android/sdk/rxgesture/CatchThrowableRxGestureListener;->a:Lcom/onyx/android/sdk/rxgesture/RxGestureListener;

    invoke-interface {p0, p1, p2}, Lcom/onyx/android/sdk/rxgesture/RxGestureListener;->onTouchCancel(Lcom/onyx/android/sdk/rxgesture/RxGestureContext;Landroid/view/MotionEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    sget-object p1, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/base/utils/Debug;->w(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public onTouchDown(Lcom/onyx/android/sdk/rxgesture/RxGestureContext;Landroid/view/MotionEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/rxgesture/RxGestureContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "gestureContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "motionEvent"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    iget-object p0, p0, Lcom/onyx/android/sdk/rxgesture/CatchThrowableRxGestureListener;->a:Lcom/onyx/android/sdk/rxgesture/RxGestureListener;

    invoke-interface {p0, p1, p2}, Lcom/onyx/android/sdk/rxgesture/RxGestureListener;->onTouchDown(Lcom/onyx/android/sdk/rxgesture/RxGestureContext;Landroid/view/MotionEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    sget-object p1, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/base/utils/Debug;->w(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public onTouchUp(Lcom/onyx/android/sdk/rxgesture/RxGestureContext;Landroid/view/MotionEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/rxgesture/RxGestureContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "gestureContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "motionEvent"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    iget-object p0, p0, Lcom/onyx/android/sdk/rxgesture/CatchThrowableRxGestureListener;->a:Lcom/onyx/android/sdk/rxgesture/RxGestureListener;

    invoke-interface {p0, p1, p2}, Lcom/onyx/android/sdk/rxgesture/RxGestureListener;->onTouchUp(Lcom/onyx/android/sdk/rxgesture/RxGestureContext;Landroid/view/MotionEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    sget-object p1, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/base/utils/Debug;->w(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public onTwoFingerClicked(Lcom/onyx/android/sdk/rxgesture/RxGestureContext;Landroid/view/MotionEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/rxgesture/RxGestureContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "gestureContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "motionEvent"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    iget-object p0, p0, Lcom/onyx/android/sdk/rxgesture/CatchThrowableRxGestureListener;->a:Lcom/onyx/android/sdk/rxgesture/RxGestureListener;

    invoke-interface {p0, p1, p2}, Lcom/onyx/android/sdk/rxgesture/RxGestureListener;->onTwoFingerClicked(Lcom/onyx/android/sdk/rxgesture/RxGestureContext;Landroid/view/MotionEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    sget-object p1, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/base/utils/Debug;->w(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public onTwoFingerMoving(Lcom/onyx/android/sdk/rxgesture/RxGestureContext;Landroid/view/MotionEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/rxgesture/RxGestureContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "gestureContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "motionEvent"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    iget-object p0, p0, Lcom/onyx/android/sdk/rxgesture/CatchThrowableRxGestureListener;->a:Lcom/onyx/android/sdk/rxgesture/RxGestureListener;

    invoke-interface {p0, p1, p2}, Lcom/onyx/android/sdk/rxgesture/RxGestureListener;->onTwoFingerMoving(Lcom/onyx/android/sdk/rxgesture/RxGestureContext;Landroid/view/MotionEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    sget-object p1, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/base/utils/Debug;->w(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
