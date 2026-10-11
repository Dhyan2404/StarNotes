.class public Lcom/sunia/commonv2/bean/HWEPointV2$PointRecord;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sunia/commonv2/bean/HWEPointV2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PointRecord"
.end annotation


# instance fields
.field private action:I

.field private axisOrientation:F

.field private axisTilt:F

.field private eventTime:J

.field private pressure:F

.field private x:F

.field private y:F


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAction()I
    .locals 0

    iget p0, p0, Lcom/sunia/commonv2/bean/HWEPointV2$PointRecord;->action:I

    return p0
.end method

.method public getAxisOrientation()F
    .locals 0

    iget p0, p0, Lcom/sunia/commonv2/bean/HWEPointV2$PointRecord;->axisOrientation:F

    return p0
.end method

.method public getAxisTilt()F
    .locals 0

    iget p0, p0, Lcom/sunia/commonv2/bean/HWEPointV2$PointRecord;->axisTilt:F

    return p0
.end method

.method public getEventTime()J
    .locals 2

    iget-wide v0, p0, Lcom/sunia/commonv2/bean/HWEPointV2$PointRecord;->eventTime:J

    return-wide v0
.end method

.method public getPressure()F
    .locals 0

    iget p0, p0, Lcom/sunia/commonv2/bean/HWEPointV2$PointRecord;->pressure:F

    return p0
.end method

.method public getX()F
    .locals 0

    iget p0, p0, Lcom/sunia/commonv2/bean/HWEPointV2$PointRecord;->x:F

    return p0
.end method

.method public getY()F
    .locals 0

    iget p0, p0, Lcom/sunia/commonv2/bean/HWEPointV2$PointRecord;->y:F

    return p0
.end method

.method public isDown()Z
    .locals 0

    iget p0, p0, Lcom/sunia/commonv2/bean/HWEPointV2$PointRecord;->action:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isMove()Z
    .locals 1

    iget p0, p0, Lcom/sunia/commonv2/bean/HWEPointV2$PointRecord;->action:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isUp()Z
    .locals 1

    iget p0, p0, Lcom/sunia/commonv2/bean/HWEPointV2$PointRecord;->action:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setAction(I)V
    .locals 0

    iput p1, p0, Lcom/sunia/commonv2/bean/HWEPointV2$PointRecord;->action:I

    return-void
.end method

.method public setEventTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/sunia/commonv2/bean/HWEPointV2$PointRecord;->eventTime:J

    return-void
.end method

.method public setPressure(F)V
    .locals 0

    iput p1, p0, Lcom/sunia/commonv2/bean/HWEPointV2$PointRecord;->pressure:F

    return-void
.end method

.method public setX(F)V
    .locals 0

    iput p1, p0, Lcom/sunia/commonv2/bean/HWEPointV2$PointRecord;->x:F

    return-void
.end method

.method public setY(F)V
    .locals 0

    iput p1, p0, Lcom/sunia/commonv2/bean/HWEPointV2$PointRecord;->y:F

    return-void
.end method
