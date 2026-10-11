.class public Landroidx/input/motionprediction/kalman/BatchedMotionEvent$IterableMotionEvent$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/input/motionprediction/kalman/BatchedMotionEvent$IterableMotionEvent;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Landroidx/input/motionprediction/kalman/BatchedMotionEvent;",
        ">;"
    }
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Landroidx/input/motionprediction/kalman/BatchedMotionEvent$IterableMotionEvent;


# direct methods
.method public constructor <init>(Landroidx/input/motionprediction/kalman/BatchedMotionEvent$IterableMotionEvent;)V
    .locals 0

    iput-object p1, p0, Landroidx/input/motionprediction/kalman/BatchedMotionEvent$IterableMotionEvent$a;->f:Landroidx/input/motionprediction/kalman/BatchedMotionEvent$IterableMotionEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Landroidx/input/motionprediction/kalman/BatchedMotionEvent$IterableMotionEvent$a;->e:I

    return-void
.end method


# virtual methods
.method public a()Landroidx/input/motionprediction/kalman/BatchedMotionEvent;
    .locals 6

    iget-object v0, p0, Landroidx/input/motionprediction/kalman/BatchedMotionEvent$IterableMotionEvent$a;->f:Landroidx/input/motionprediction/kalman/BatchedMotionEvent$IterableMotionEvent;

    invoke-virtual {v0}, Landroidx/input/motionprediction/kalman/BatchedMotionEvent$IterableMotionEvent;->getMotionEvent()Landroid/view/MotionEvent;

    move-result-object v0

    iget-object v1, p0, Landroidx/input/motionprediction/kalman/BatchedMotionEvent$IterableMotionEvent$a;->f:Landroidx/input/motionprediction/kalman/BatchedMotionEvent$IterableMotionEvent;

    invoke-virtual {v1}, Landroidx/input/motionprediction/kalman/BatchedMotionEvent$IterableMotionEvent;->getPointerCount()I

    move-result v1

    iget v2, p0, Landroidx/input/motionprediction/kalman/BatchedMotionEvent$IterableMotionEvent$a;->e:I

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v3

    if-le v2, v3, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v2, Landroidx/input/motionprediction/kalman/BatchedMotionEvent;

    invoke-direct {v2, v1}, Landroidx/input/motionprediction/kalman/BatchedMotionEvent;-><init>(I)V

    iget v3, p0, Landroidx/input/motionprediction/kalman/BatchedMotionEvent$IterableMotionEvent$a;->e:I

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v4

    const/4 v5, 0x0

    if-ge v3, v4, :cond_2

    :goto_0
    if-ge v5, v1, :cond_1

    iget v3, p0, Landroidx/input/motionprediction/kalman/BatchedMotionEvent$IterableMotionEvent$a;->e:I

    iget-object v4, v2, Landroidx/input/motionprediction/kalman/BatchedMotionEvent;->coords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v4, v4, v5

    invoke-virtual {v0, v5, v3, v4}, Landroid/view/MotionEvent;->getHistoricalPointerCoords(IILandroid/view/MotionEvent$PointerCoords;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    iget v1, p0, Landroidx/input/motionprediction/kalman/BatchedMotionEvent$IterableMotionEvent$a;->e:I

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getHistoricalEventTime(I)J

    move-result-wide v0

    iput-wide v0, v2, Landroidx/input/motionprediction/kalman/BatchedMotionEvent;->timeMs:J

    goto :goto_2

    :cond_2
    :goto_1
    if-ge v5, v1, :cond_3

    iget-object v3, v2, Landroidx/input/motionprediction/kalman/BatchedMotionEvent;->coords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v3, v3, v5

    invoke-virtual {v0, v5, v3}, Landroid/view/MotionEvent;->getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    iput-wide v0, v2, Landroidx/input/motionprediction/kalman/BatchedMotionEvent;->timeMs:J

    :goto_2
    iget v0, p0, Landroidx/input/motionprediction/kalman/BatchedMotionEvent$IterableMotionEvent$a;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/input/motionprediction/kalman/BatchedMotionEvent$IterableMotionEvent$a;->e:I

    return-object v2
.end method

.method public hasNext()Z
    .locals 2

    iget v0, p0, Landroidx/input/motionprediction/kalman/BatchedMotionEvent$IterableMotionEvent$a;->e:I

    iget-object p0, p0, Landroidx/input/motionprediction/kalman/BatchedMotionEvent$IterableMotionEvent$a;->f:Landroidx/input/motionprediction/kalman/BatchedMotionEvent$IterableMotionEvent;

    invoke-virtual {p0}, Landroidx/input/motionprediction/kalman/BatchedMotionEvent$IterableMotionEvent;->getMotionEvent()Landroid/view/MotionEvent;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result p0

    const/4 v1, 0x1

    add-int/2addr p0, v1

    if-ge v0, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Landroidx/input/motionprediction/kalman/BatchedMotionEvent$IterableMotionEvent$a;->a()Landroidx/input/motionprediction/kalman/BatchedMotionEvent;

    move-result-object p0

    return-object p0
.end method
