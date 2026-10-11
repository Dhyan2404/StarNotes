.class public Lcom/vivo/trackpredictor/utils/HwPoint;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private actionCode:I

.field private pointTime:I

.field private pointX:F

.field private pointY:F

.field private pressure:F


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/vivo/trackpredictor/utils/HwPoint;->pointX:F

    iput v0, p0, Lcom/vivo/trackpredictor/utils/HwPoint;->pointY:F

    const/4 v1, 0x0

    iput v1, p0, Lcom/vivo/trackpredictor/utils/HwPoint;->actionCode:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    long-to-int v1, v1

    iput v1, p0, Lcom/vivo/trackpredictor/utils/HwPoint;->pointTime:I

    iput v0, p0, Lcom/vivo/trackpredictor/utils/HwPoint;->pressure:F

    return-void
.end method


# virtual methods
.method public getActionCode()I
    .locals 0

    iget p0, p0, Lcom/vivo/trackpredictor/utils/HwPoint;->actionCode:I

    return p0
.end method

.method public getPointPressure()F
    .locals 0

    iget p0, p0, Lcom/vivo/trackpredictor/utils/HwPoint;->pressure:F

    return p0
.end method

.method public getPointTime()I
    .locals 0

    iget p0, p0, Lcom/vivo/trackpredictor/utils/HwPoint;->pointTime:I

    return p0
.end method

.method public getPointX()F
    .locals 0

    iget p0, p0, Lcom/vivo/trackpredictor/utils/HwPoint;->pointX:F

    return p0
.end method

.method public getPointY()F
    .locals 0

    iget p0, p0, Lcom/vivo/trackpredictor/utils/HwPoint;->pointY:F

    return p0
.end method

.method public setActionCode(I)V
    .locals 0

    iput p1, p0, Lcom/vivo/trackpredictor/utils/HwPoint;->actionCode:I

    return-void
.end method

.method public setPointTime(I)V
    .locals 0

    iput p1, p0, Lcom/vivo/trackpredictor/utils/HwPoint;->pointTime:I

    return-void
.end method

.method public setPointX(F)V
    .locals 0

    iput p1, p0, Lcom/vivo/trackpredictor/utils/HwPoint;->pointX:F

    return-void
.end method

.method public setPointY(F)V
    .locals 0

    iput p1, p0, Lcom/vivo/trackpredictor/utils/HwPoint;->pointY:F

    return-void
.end method

.method public setPressure(F)V
    .locals 0

    iput p1, p0, Lcom/vivo/trackpredictor/utils/HwPoint;->pressure:F

    return-void
.end method
