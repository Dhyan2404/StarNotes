.class public interface abstract Landroidx/input/motionprediction/MotionEventPredictor;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static newInstance(Landroid/view/View;)Landroidx/input/motionprediction/MotionEventPredictor;
    .locals 2
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x22

    if-lt v0, v1, :cond_0

    invoke-static {p0}, Landroidx/input/motionprediction/system/SystemMotionEventPredictor;->newInstance(Landroid/content/Context;)Landroidx/input/motionprediction/system/SystemMotionEventPredictor;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Landroidx/input/motionprediction/kalman/KalmanMotionEventPredictor;

    invoke-direct {v0, p0}, Landroidx/input/motionprediction/kalman/KalmanMotionEventPredictor;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public abstract predict()Landroid/view/MotionEvent;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract record(Landroid/view/MotionEvent;)V
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method
