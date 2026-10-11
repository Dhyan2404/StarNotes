.class public Landroidx/input/motionprediction/kalman/KalmanMotionEventPredictor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/input/motionprediction/MotionEventPredictor;


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# instance fields
.field public final a:Landroidx/input/motionprediction/kalman/MultiPointerPredictor;

.field public final b:Landroidx/input/motionprediction/utils/PredictionEstimator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/input/motionprediction/kalman/MultiPointerPredictor;

    invoke-direct {v0}, Landroidx/input/motionprediction/kalman/MultiPointerPredictor;-><init>()V

    iput-object v0, p0, Landroidx/input/motionprediction/kalman/KalmanMotionEventPredictor;->a:Landroidx/input/motionprediction/kalman/MultiPointerPredictor;

    new-instance v0, Landroidx/input/motionprediction/utils/PredictionEstimator;

    invoke-direct {v0, p1}, Landroidx/input/motionprediction/utils/PredictionEstimator;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroidx/input/motionprediction/kalman/KalmanMotionEventPredictor;->b:Landroidx/input/motionprediction/utils/PredictionEstimator;

    return-void
.end method


# virtual methods
.method public predict()Landroid/view/MotionEvent;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Landroidx/input/motionprediction/kalman/KalmanMotionEventPredictor;->b:Landroidx/input/motionprediction/utils/PredictionEstimator;

    invoke-virtual {v0}, Landroidx/input/motionprediction/utils/PredictionEstimator;->estimate()I

    move-result v0

    iget-object p0, p0, Landroidx/input/motionprediction/kalman/KalmanMotionEventPredictor;->a:Landroidx/input/motionprediction/kalman/MultiPointerPredictor;

    invoke-virtual {p0, v0}, Landroidx/input/motionprediction/kalman/MultiPointerPredictor;->predict(I)Landroid/view/MotionEvent;

    move-result-object p0

    return-object p0
.end method

.method public record(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Landroidx/input/motionprediction/kalman/KalmanMotionEventPredictor;->b:Landroidx/input/motionprediction/utils/PredictionEstimator;

    invoke-virtual {v0, p1}, Landroidx/input/motionprediction/utils/PredictionEstimator;->record(Landroid/view/MotionEvent;)V

    iget-object p0, p0, Landroidx/input/motionprediction/kalman/KalmanMotionEventPredictor;->a:Landroidx/input/motionprediction/kalman/MultiPointerPredictor;

    invoke-virtual {p0, p1}, Landroidx/input/motionprediction/kalman/MultiPointerPredictor;->onTouchEvent(Landroid/view/MotionEvent;)Z

    return-void
.end method
