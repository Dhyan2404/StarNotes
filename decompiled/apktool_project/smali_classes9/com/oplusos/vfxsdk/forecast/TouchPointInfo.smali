.class public Lcom/oplusos/vfxsdk/forecast/TouchPointInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public axisTilt:F

.field public pressure:F

.field public timestamp:J

.field public x:F

.field public y:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/oplusos/vfxsdk/forecast/TouchPointInfo;->x:F

    .line 9
    iput v0, p0, Lcom/oplusos/vfxsdk/forecast/TouchPointInfo;->y:F

    .line 10
    iput v0, p0, Lcom/oplusos/vfxsdk/forecast/TouchPointInfo;->pressure:F

    .line 11
    iput v0, p0, Lcom/oplusos/vfxsdk/forecast/TouchPointInfo;->axisTilt:F

    const-wide/16 v0, 0x0

    .line 12
    iput-wide v0, p0, Lcom/oplusos/vfxsdk/forecast/TouchPointInfo;->timestamp:J

    return-void
.end method

.method public constructor <init>(FFFFJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/oplusos/vfxsdk/forecast/TouchPointInfo;->x:F

    .line 3
    iput p2, p0, Lcom/oplusos/vfxsdk/forecast/TouchPointInfo;->y:F

    .line 4
    iput p3, p0, Lcom/oplusos/vfxsdk/forecast/TouchPointInfo;->pressure:F

    .line 5
    iput p4, p0, Lcom/oplusos/vfxsdk/forecast/TouchPointInfo;->axisTilt:F

    .line 6
    iput-wide p5, p0, Lcom/oplusos/vfxsdk/forecast/TouchPointInfo;->timestamp:J

    return-void
.end method
