.class public Lcom/oplusos/vfxsdk/forecast/MotionPredictor;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:Ljava/lang/String; = "Forecast:MotionPredictor"

.field public static final d:Ljava/lang/String; = "VERSION_2.0.0"


# instance fields
.field public a:J

.field public b:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/oplusos/vfxsdk/forecast/MotionPredictor;->a:J

    iput-wide v0, p0, Lcom/oplusos/vfxsdk/forecast/MotionPredictor;->b:J

    const-string v0, "Forecast:MotionPredictor"

    const-string v1, "motion predictor version: VERSION_2.0.0"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/oplusos/vfxsdk/forecast/MotionPredictor;->a()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-wide v0, p0, Lcom/oplusos/vfxsdk/forecast/MotionPredictor;->a:J

    invoke-static {v0, v1}, Lcom/oplusos/vfxsdk/forecast/NativeForecast;->create(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oplusos/vfxsdk/forecast/MotionPredictor;->a:J

    return-void
.end method

.method public destroy()V
    .locals 2

    iget-wide v0, p0, Lcom/oplusos/vfxsdk/forecast/MotionPredictor;->a:J

    invoke-static {v0, v1}, Lcom/oplusos/vfxsdk/forecast/NativeForecast;->destroy(J)V

    return-void
.end method

.method public predictTouchPoint()Lcom/oplusos/vfxsdk/forecast/TouchPointInfo;
    .locals 5

    iget-wide v0, p0, Lcom/oplusos/vfxsdk/forecast/MotionPredictor;->a:J

    invoke-static {v0, v1}, Lcom/oplusos/vfxsdk/forecast/NativeForecast;->predictTouchPoint(J)Lcom/oplusos/vfxsdk/forecast/TouchPointInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-wide v1, v0, Lcom/oplusos/vfxsdk/forecast/TouchPointInfo;->timestamp:J

    iget-wide v3, p0, Lcom/oplusos/vfxsdk/forecast/MotionPredictor;->b:J

    add-long/2addr v1, v3

    iput-wide v1, v0, Lcom/oplusos/vfxsdk/forecast/TouchPointInfo;->timestamp:J

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "predict point: x "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v0, Lcom/oplusos/vfxsdk/forecast/TouchPointInfo;->x:F

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", y "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v0, Lcom/oplusos/vfxsdk/forecast/TouchPointInfo;->y:F

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", t "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, v0, Lcom/oplusos/vfxsdk/forecast/TouchPointInfo;->timestamp:J

    invoke-virtual {p0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "Forecast:MotionPredictor"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-object v0
.end method

.method public pushTouchPoint(Lcom/oplusos/vfxsdk/forecast/TouchPointInfo;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "push point: x "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/oplusos/vfxsdk/forecast/TouchPointInfo;->x:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", y "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/oplusos/vfxsdk/forecast/TouchPointInfo;->y:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", t "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p1, Lcom/oplusos/vfxsdk/forecast/TouchPointInfo;->timestamp:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Forecast:MotionPredictor"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide v0, p1, Lcom/oplusos/vfxsdk/forecast/TouchPointInfo;->timestamp:J

    iget-wide v2, p0, Lcom/oplusos/vfxsdk/forecast/MotionPredictor;->b:J

    sub-long/2addr v0, v2

    iput-wide v0, p1, Lcom/oplusos/vfxsdk/forecast/TouchPointInfo;->timestamp:J

    iget-wide v0, p0, Lcom/oplusos/vfxsdk/forecast/MotionPredictor;->a:J

    invoke-static {v0, v1, p1}, Lcom/oplusos/vfxsdk/forecast/NativeForecast;->pushTouchPoint(JLcom/oplusos/vfxsdk/forecast/TouchPointInfo;)V

    return-void
.end method

.method public reset()V
    .locals 4

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/oplusos/vfxsdk/forecast/MotionPredictor;->b:J

    iget-wide v0, p0, Lcom/oplusos/vfxsdk/forecast/MotionPredictor;->a:J

    invoke-static {v0, v1}, Lcom/oplusos/vfxsdk/forecast/NativeForecast;->reset(J)V

    return-void
.end method

.method public setDpi(FF)V
    .locals 2

    iget-wide v0, p0, Lcom/oplusos/vfxsdk/forecast/MotionPredictor;->a:J

    invoke-static {v0, v1, p1, p2}, Lcom/oplusos/vfxsdk/forecast/NativeForecast;->setDpi(JFF)V

    return-void
.end method

.method public setMaxPredictTime(F)V
    .locals 2

    iget-wide v0, p0, Lcom/oplusos/vfxsdk/forecast/MotionPredictor;->a:J

    invoke-static {v0, v1, p1}, Lcom/oplusos/vfxsdk/forecast/NativeForecast;->setMaxPredictTime(JF)V

    return-void
.end method

.method public setRefreshRate(F)V
    .locals 2

    iget-wide v0, p0, Lcom/oplusos/vfxsdk/forecast/MotionPredictor;->a:J

    invoke-static {v0, v1, p1}, Lcom/oplusos/vfxsdk/forecast/NativeForecast;->setRefreshRate(JF)V

    return-void
.end method
