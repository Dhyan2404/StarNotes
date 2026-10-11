.class public final Lcom/onyx/android/sdk/rxgesture/VelocityTrackerWrapper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0014\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0007\n\u0002\u0008\u000e\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u001b\u0010\u001cJ\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u0006\u0010\t\u001a\u00020\u0008J\u0006\u0010\n\u001a\u00020\u0004R\u0018\u0010\u000e\u001a\u0004\u0018\u00010\u000b8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u000c\u0010\rR\"\u0010\u0016\u001a\u00020\u000f8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0010\u0010\u0011\u001a\u0004\u0008\u0012\u0010\u0013\"\u0004\u0008\u0014\u0010\u0015R\"\u0010\u001a\u001a\u00020\u000f8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0017\u0010\u0011\u001a\u0004\u0008\u0018\u0010\u0013\"\u0004\u0008\u0019\u0010\u0015\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/onyx/android/sdk/rxgesture/VelocityTrackerWrapper;",
        "",
        "Landroid/view/MotionEvent;",
        "event",
        "",
        "onDown",
        "onMove",
        "onUp",
        "",
        "getRealtimeVelocity",
        "onRelease",
        "Landroid/view/VelocityTracker;",
        "a",
        "Landroid/view/VelocityTracker;",
        "velocityTracker",
        "",
        "b",
        "F",
        "getVelocityX",
        "()F",
        "setVelocityX",
        "(F)V",
        "velocityX",
        "c",
        "getVelocityY",
        "setVelocityY",
        "velocityY",
        "<init>",
        "()V",
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
.field public a:Landroid/view/VelocityTracker;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public b:F

.field public c:F


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getRealtimeVelocity()[F
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/rxgesture/VelocityTrackerWrapper;->a:Landroid/view/VelocityTracker;

    const/4 v0, 0x2

    if-nez p0, :cond_0

    new-array p0, v0, [F

    fill-array-data p0, :array_0

    return-object p0

    :cond_0
    const/16 v1, 0x3e8

    invoke-virtual {p0, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    invoke-virtual {p0}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v1

    invoke-virtual {p0}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result p0

    new-array v0, v0, [F

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v1, 0x1

    aput p0, v0, v1

    return-object v0

    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public final getVelocityX()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/rxgesture/VelocityTrackerWrapper;->b:F

    return p0
.end method

.method public final getVelocityY()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/rxgesture/VelocityTrackerWrapper;->c:F

    return p0
.end method

.method public final onDown(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/rxgesture/VelocityTrackerWrapper;->a:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/rxgesture/VelocityTrackerWrapper;->a:Landroid/view/VelocityTracker;

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    :cond_1
    :goto_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/onyx/android/sdk/rxgesture/VelocityTrackerWrapper;->b:F

    iput v0, p0, Lcom/onyx/android/sdk/rxgesture/VelocityTrackerWrapper;->c:F

    iget-object p0, p0, Lcom/onyx/android/sdk/rxgesture/VelocityTrackerWrapper;->a:Landroid/view/VelocityTracker;

    if-eqz p0, :cond_2

    invoke-virtual {p0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    :cond_2
    return-void
.end method

.method public final onMove(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/rxgesture/VelocityTrackerWrapper;->a:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/rxgesture/VelocityTrackerWrapper;->a:Landroid/view/VelocityTracker;

    :cond_0
    iget-object p0, p0, Lcom/onyx/android/sdk/rxgesture/VelocityTrackerWrapper;->a:Landroid/view/VelocityTracker;

    if-nez p0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public final onRelease()V
    .locals 1

    iget-object v0, p0, Lcom/onyx/android/sdk/rxgesture/VelocityTrackerWrapper;->a:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/onyx/android/sdk/rxgesture/VelocityTrackerWrapper;->a:Landroid/view/VelocityTracker;

    return-void
.end method

.method public final onUp(Landroid/view/MotionEvent;)V
    .locals 3
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/android/sdk/rxgesture/VelocityTrackerWrapper;->a:Landroid/view/VelocityTracker;

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/rxgesture/VelocityTrackerWrapper;->getRealtimeVelocity()[F

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/ArraysKt;->first([F)F

    move-result v0

    iput v0, p0, Lcom/onyx/android/sdk/rxgesture/VelocityTrackerWrapper;->b:F

    invoke-static {p1}, Lkotlin/collections/ArraysKt;->last([F)F

    move-result p1

    iput p1, p0, Lcom/onyx/android/sdk/rxgesture/VelocityTrackerWrapper;->c:F

    sget-object p1, Lcom/onyx/android/sdk/rxgesture/RxGestureLog;->INSTANCE:Lcom/onyx/android/sdk/rxgesture/RxGestureLog;

    const-class v0, Lcom/onyx/android/sdk/rxgesture/VelocityTrackerWrapper;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "X velocity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/onyx/android/sdk/rxgesture/VelocityTrackerWrapper;->b:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/onyx/android/sdk/rxgesture/RxGestureLog;->v(Ljava/lang/Class;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Y velocity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/onyx/android/sdk/rxgesture/VelocityTrackerWrapper;->c:F

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Lcom/onyx/android/sdk/rxgesture/RxGestureLog;->v(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method

.method public final setVelocityX(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/rxgesture/VelocityTrackerWrapper;->b:F

    return-void
.end method

.method public final setVelocityY(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/rxgesture/VelocityTrackerWrapper;->c:F

    return-void
.end method
