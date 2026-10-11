.class public Landroidx/input/motionprediction/kalman/BatchedMotionEvent$IterableMotionEvent;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/input/motionprediction/kalman/BatchedMotionEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IterableMotionEvent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Landroidx/input/motionprediction/kalman/BatchedMotionEvent;",
        ">;"
    }
.end annotation


# instance fields
.field public final e:I

.field public final f:Landroid/view/MotionEvent;


# direct methods
.method public constructor <init>(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/input/motionprediction/kalman/BatchedMotionEvent$IterableMotionEvent;->f:Landroid/view/MotionEvent;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result p1

    iput p1, p0, Landroidx/input/motionprediction/kalman/BatchedMotionEvent$IterableMotionEvent;->e:I

    return-void
.end method


# virtual methods
.method public getMotionEvent()Landroid/view/MotionEvent;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Landroidx/input/motionprediction/kalman/BatchedMotionEvent$IterableMotionEvent;->f:Landroid/view/MotionEvent;

    return-object p0
.end method

.method public getPointerCount()I
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget p0, p0, Landroidx/input/motionprediction/kalman/BatchedMotionEvent$IterableMotionEvent;->e:I

    return p0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Landroidx/input/motionprediction/kalman/BatchedMotionEvent;",
            ">;"
        }
    .end annotation

    new-instance v0, Landroidx/input/motionprediction/kalman/BatchedMotionEvent$IterableMotionEvent$a;

    invoke-direct {v0, p0}, Landroidx/input/motionprediction/kalman/BatchedMotionEvent$IterableMotionEvent$a;-><init>(Landroidx/input/motionprediction/kalman/BatchedMotionEvent$IterableMotionEvent;)V

    return-object v0
.end method
