.class public Landroidx/input/motionprediction/system/SystemMotionEventPredictor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/input/motionprediction/MotionEventPredictor;


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x22
.end annotation

.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# instance fields
.field public a:Landroidx/input/motionprediction/kalman/MultiPointerPredictor;

.field public final b:Landroid/view/MotionPredictor;

.field public final c:Landroidx/input/motionprediction/utils/PredictionEstimator;

.field public d:Z

.field public e:I

.field public f:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/input/motionprediction/system/SystemMotionEventPredictor;->a:Landroidx/input/motionprediction/kalman/MultiPointerPredictor;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/input/motionprediction/system/SystemMotionEventPredictor;->d:Z

    const/4 v0, -0x1

    iput v0, p0, Landroidx/input/motionprediction/system/SystemMotionEventPredictor;->e:I

    const/4 v0, -0x2

    iput v0, p0, Landroidx/input/motionprediction/system/SystemMotionEventPredictor;->f:I

    new-instance v0, Landroidx/input/motionprediction/utils/PredictionEstimator;

    invoke-direct {v0, p1}, Landroidx/input/motionprediction/utils/PredictionEstimator;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroidx/input/motionprediction/system/SystemMotionEventPredictor;->c:Landroidx/input/motionprediction/utils/PredictionEstimator;

    new-instance v0, Landroid/view/MotionPredictor;

    invoke-direct {v0, p1}, Landroid/view/MotionPredictor;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroidx/input/motionprediction/system/SystemMotionEventPredictor;->b:Landroid/view/MotionPredictor;

    return-void
.end method

.method public static newInstance(Landroid/content/Context;)Landroidx/input/motionprediction/system/SystemMotionEventPredictor;
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Landroidx/input/motionprediction/system/SystemMotionEventPredictor;

    invoke-direct {v0, p0}, Landroidx/input/motionprediction/system/SystemMotionEventPredictor;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public final a()Landroidx/input/motionprediction/kalman/MultiPointerPredictor;
    .locals 1

    iget-object v0, p0, Landroidx/input/motionprediction/system/SystemMotionEventPredictor;->a:Landroidx/input/motionprediction/kalman/MultiPointerPredictor;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/input/motionprediction/kalman/MultiPointerPredictor;

    invoke-direct {v0}, Landroidx/input/motionprediction/kalman/MultiPointerPredictor;-><init>()V

    iput-object v0, p0, Landroidx/input/motionprediction/system/SystemMotionEventPredictor;->a:Landroidx/input/motionprediction/kalman/MultiPointerPredictor;

    :cond_0
    iget-object p0, p0, Landroidx/input/motionprediction/system/SystemMotionEventPredictor;->a:Landroidx/input/motionprediction/kalman/MultiPointerPredictor;

    return-object p0
.end method

.method public predict()Landroid/view/MotionEvent;
    .locals 6
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Landroidx/input/motionprediction/system/SystemMotionEventPredictor;->c:Landroidx/input/motionprediction/utils/PredictionEstimator;

    invoke-virtual {v0}, Landroidx/input/motionprediction/utils/PredictionEstimator;->estimate()I

    move-result v0

    iget-boolean v1, p0, Landroidx/input/motionprediction/system/SystemMotionEventPredictor;->d:Z

    if-eqz v1, :cond_0

    iget-object p0, p0, Landroidx/input/motionprediction/system/SystemMotionEventPredictor;->b:Landroid/view/MotionPredictor;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    int-to-long v4, v0

    add-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroid/view/MotionPredictor;->predict(J)Landroid/view/MotionEvent;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Landroidx/input/motionprediction/system/SystemMotionEventPredictor;->a()Landroidx/input/motionprediction/kalman/MultiPointerPredictor;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroidx/input/motionprediction/kalman/MultiPointerPredictor;->predict(I)Landroid/view/MotionEvent;

    move-result-object p0

    return-object p0
.end method

.method public record(Landroid/view/MotionEvent;)V
    .locals 3
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Landroidx/input/motionprediction/system/SystemMotionEventPredictor;->c:Landroidx/input/motionprediction/utils/PredictionEstimator;

    invoke-virtual {v0, p1}, Landroidx/input/motionprediction/utils/PredictionEstimator;->record(Landroid/view/MotionEvent;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v1

    iget v2, p0, Landroidx/input/motionprediction/system/SystemMotionEventPredictor;->e:I

    if-ne v2, v0, :cond_0

    iget v2, p0, Landroidx/input/motionprediction/system/SystemMotionEventPredictor;->f:I

    if-eq v2, v1, :cond_1

    :cond_0
    iget-object v2, p0, Landroidx/input/motionprediction/system/SystemMotionEventPredictor;->b:Landroid/view/MotionPredictor;

    invoke-virtual {v2, v1, v0}, Landroid/view/MotionPredictor;->isPredictionAvailable(II)Z

    move-result v2

    iput-boolean v2, p0, Landroidx/input/motionprediction/system/SystemMotionEventPredictor;->d:Z

    iput v1, p0, Landroidx/input/motionprediction/system/SystemMotionEventPredictor;->f:I

    iput v0, p0, Landroidx/input/motionprediction/system/SystemMotionEventPredictor;->e:I

    :cond_1
    iget-boolean v0, p0, Landroidx/input/motionprediction/system/SystemMotionEventPredictor;->d:Z

    if-eqz v0, :cond_2

    iget-object p0, p0, Landroidx/input/motionprediction/system/SystemMotionEventPredictor;->b:Landroid/view/MotionPredictor;

    invoke-virtual {p0, p1}, Landroid/view/MotionPredictor;->record(Landroid/view/MotionEvent;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroidx/input/motionprediction/system/SystemMotionEventPredictor;->a()Landroidx/input/motionprediction/kalman/MultiPointerPredictor;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/input/motionprediction/kalman/MultiPointerPredictor;->onTouchEvent(Landroid/view/MotionEvent;)Z

    :goto_0
    return-void
.end method
