.class public Lcom/huawei/stylus/penengine/estimate/HwMotionEventInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:F

.field public b:F

.field public c:F

.field public d:F

.field public e:J


# direct methods
.method public constructor <init>(FFFFJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/huawei/stylus/penengine/estimate/HwMotionEventInfo;->a:F

    iput p2, p0, Lcom/huawei/stylus/penengine/estimate/HwMotionEventInfo;->b:F

    iput p3, p0, Lcom/huawei/stylus/penengine/estimate/HwMotionEventInfo;->c:F

    iput p4, p0, Lcom/huawei/stylus/penengine/estimate/HwMotionEventInfo;->d:F

    iput-wide p5, p0, Lcom/huawei/stylus/penengine/estimate/HwMotionEventInfo;->e:J

    return-void
.end method


# virtual methods
.method public getEventTime()J
    .locals 2

    iget-wide v0, p0, Lcom/huawei/stylus/penengine/estimate/HwMotionEventInfo;->e:J

    return-wide v0
.end method

.method public getPress()F
    .locals 0

    iget p0, p0, Lcom/huawei/stylus/penengine/estimate/HwMotionEventInfo;->c:F

    return p0
.end method

.method public getTilt()F
    .locals 0

    iget p0, p0, Lcom/huawei/stylus/penengine/estimate/HwMotionEventInfo;->d:F

    return p0
.end method

.method public getX()F
    .locals 0

    iget p0, p0, Lcom/huawei/stylus/penengine/estimate/HwMotionEventInfo;->a:F

    return p0
.end method

.method public getY()F
    .locals 0

    iget p0, p0, Lcom/huawei/stylus/penengine/estimate/HwMotionEventInfo;->b:F

    return p0
.end method

.method public setEventTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/huawei/stylus/penengine/estimate/HwMotionEventInfo;->e:J

    return-void
.end method

.method public setPress(F)V
    .locals 0

    iput p1, p0, Lcom/huawei/stylus/penengine/estimate/HwMotionEventInfo;->c:F

    return-void
.end method

.method public setTilt(F)V
    .locals 0

    iput p1, p0, Lcom/huawei/stylus/penengine/estimate/HwMotionEventInfo;->d:F

    return-void
.end method

.method public setX(F)V
    .locals 0

    iput p1, p0, Lcom/huawei/stylus/penengine/estimate/HwMotionEventInfo;->a:F

    return-void
.end method

.method public setY(F)V
    .locals 0

    iput p1, p0, Lcom/huawei/stylus/penengine/estimate/HwMotionEventInfo;->b:F

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "time: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/huawei/stylus/penengine/estimate/HwMotionEventInfo;->e:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "point: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/huawei/stylus/penengine/estimate/HwMotionEventInfo;->a:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/huawei/stylus/penengine/estimate/HwMotionEventInfo;->b:F

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
