.class public Ljava/awt/geom/CubicCurve2D$Float;
.super Ljava/awt/geom/CubicCurve2D;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/awt/geom/CubicCurve2D;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Float"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x11a71b721ee8b921L


# instance fields
.field public ctrlx1:F

.field public ctrlx2:F

.field public ctrly1:F

.field public ctrly2:F

.field public x1:F

.field public x2:F

.field public y1:F

.field public y2:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/awt/geom/CubicCurve2D;-><init>()V

    return-void
.end method

.method public constructor <init>(FFFFFFFF)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/awt/geom/CubicCurve2D;-><init>()V

    .line 3
    invoke-virtual/range {p0 .. p8}, Ljava/awt/geom/CubicCurve2D$Float;->setCurve(FFFFFFFF)V

    return-void
.end method


# virtual methods
.method public getBounds2D()Ljava/awt/geom/Rectangle2D;
    .locals 5

    iget v0, p0, Ljava/awt/geom/CubicCurve2D$Float;->x1:F

    iget v1, p0, Ljava/awt/geom/CubicCurve2D$Float;->x2:F

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iget v1, p0, Ljava/awt/geom/CubicCurve2D$Float;->ctrlx1:F

    iget v2, p0, Ljava/awt/geom/CubicCurve2D$Float;->ctrlx2:F

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iget v1, p0, Ljava/awt/geom/CubicCurve2D$Float;->y1:F

    iget v2, p0, Ljava/awt/geom/CubicCurve2D$Float;->y2:F

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iget v2, p0, Ljava/awt/geom/CubicCurve2D$Float;->ctrly1:F

    iget v3, p0, Ljava/awt/geom/CubicCurve2D$Float;->ctrly2:F

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iget v2, p0, Ljava/awt/geom/CubicCurve2D$Float;->x1:F

    iget v3, p0, Ljava/awt/geom/CubicCurve2D$Float;->x2:F

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iget v3, p0, Ljava/awt/geom/CubicCurve2D$Float;->ctrlx1:F

    iget v4, p0, Ljava/awt/geom/CubicCurve2D$Float;->ctrlx2:F

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iget v3, p0, Ljava/awt/geom/CubicCurve2D$Float;->y1:F

    iget v4, p0, Ljava/awt/geom/CubicCurve2D$Float;->y2:F

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    iget v4, p0, Ljava/awt/geom/CubicCurve2D$Float;->ctrly1:F

    iget p0, p0, Ljava/awt/geom/CubicCurve2D$Float;->ctrly2:F

    invoke-static {v4, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    invoke-static {v3, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    new-instance v3, Ljava/awt/geom/Rectangle2D$Float;

    sub-float/2addr v2, v0

    sub-float/2addr p0, v1

    invoke-direct {v3, v0, v1, v2, p0}, Ljava/awt/geom/Rectangle2D$Float;-><init>(FFFF)V

    return-object v3
.end method

.method public getCtrlP1()Ljava/awt/geom/Point2D;
    .locals 2

    new-instance v0, Ljava/awt/geom/Point2D$Float;

    iget v1, p0, Ljava/awt/geom/CubicCurve2D$Float;->ctrlx1:F

    iget p0, p0, Ljava/awt/geom/CubicCurve2D$Float;->ctrly1:F

    invoke-direct {v0, v1, p0}, Ljava/awt/geom/Point2D$Float;-><init>(FF)V

    return-object v0
.end method

.method public getCtrlP2()Ljava/awt/geom/Point2D;
    .locals 2

    new-instance v0, Ljava/awt/geom/Point2D$Float;

    iget v1, p0, Ljava/awt/geom/CubicCurve2D$Float;->ctrlx2:F

    iget p0, p0, Ljava/awt/geom/CubicCurve2D$Float;->ctrly2:F

    invoke-direct {v0, v1, p0}, Ljava/awt/geom/Point2D$Float;-><init>(FF)V

    return-object v0
.end method

.method public getCtrlX1()D
    .locals 2

    iget p0, p0, Ljava/awt/geom/CubicCurve2D$Float;->ctrlx1:F

    float-to-double v0, p0

    return-wide v0
.end method

.method public getCtrlX2()D
    .locals 2

    iget p0, p0, Ljava/awt/geom/CubicCurve2D$Float;->ctrlx2:F

    float-to-double v0, p0

    return-wide v0
.end method

.method public getCtrlY1()D
    .locals 2

    iget p0, p0, Ljava/awt/geom/CubicCurve2D$Float;->ctrly1:F

    float-to-double v0, p0

    return-wide v0
.end method

.method public getCtrlY2()D
    .locals 2

    iget p0, p0, Ljava/awt/geom/CubicCurve2D$Float;->ctrly2:F

    float-to-double v0, p0

    return-wide v0
.end method

.method public getP1()Ljava/awt/geom/Point2D;
    .locals 2

    new-instance v0, Ljava/awt/geom/Point2D$Float;

    iget v1, p0, Ljava/awt/geom/CubicCurve2D$Float;->x1:F

    iget p0, p0, Ljava/awt/geom/CubicCurve2D$Float;->y1:F

    invoke-direct {v0, v1, p0}, Ljava/awt/geom/Point2D$Float;-><init>(FF)V

    return-object v0
.end method

.method public getP2()Ljava/awt/geom/Point2D;
    .locals 2

    new-instance v0, Ljava/awt/geom/Point2D$Float;

    iget v1, p0, Ljava/awt/geom/CubicCurve2D$Float;->x2:F

    iget p0, p0, Ljava/awt/geom/CubicCurve2D$Float;->y2:F

    invoke-direct {v0, v1, p0}, Ljava/awt/geom/Point2D$Float;-><init>(FF)V

    return-object v0
.end method

.method public getX1()D
    .locals 2

    iget p0, p0, Ljava/awt/geom/CubicCurve2D$Float;->x1:F

    float-to-double v0, p0

    return-wide v0
.end method

.method public getX2()D
    .locals 2

    iget p0, p0, Ljava/awt/geom/CubicCurve2D$Float;->x2:F

    float-to-double v0, p0

    return-wide v0
.end method

.method public getY1()D
    .locals 2

    iget p0, p0, Ljava/awt/geom/CubicCurve2D$Float;->y1:F

    float-to-double v0, p0

    return-wide v0
.end method

.method public getY2()D
    .locals 2

    iget p0, p0, Ljava/awt/geom/CubicCurve2D$Float;->y2:F

    float-to-double v0, p0

    return-wide v0
.end method

.method public setCurve(DDDDDDDD)V
    .locals 3

    move-object v0, p0

    move-wide v1, p1

    double-to-float v1, v1

    .line 1
    iput v1, v0, Ljava/awt/geom/CubicCurve2D$Float;->x1:F

    move-wide v1, p3

    double-to-float v1, v1

    .line 2
    iput v1, v0, Ljava/awt/geom/CubicCurve2D$Float;->y1:F

    move-wide v1, p5

    double-to-float v1, v1

    .line 3
    iput v1, v0, Ljava/awt/geom/CubicCurve2D$Float;->ctrlx1:F

    move-wide v1, p7

    double-to-float v1, v1

    .line 4
    iput v1, v0, Ljava/awt/geom/CubicCurve2D$Float;->ctrly1:F

    move-wide v1, p9

    double-to-float v1, v1

    .line 5
    iput v1, v0, Ljava/awt/geom/CubicCurve2D$Float;->ctrlx2:F

    move-wide v1, p11

    double-to-float v1, v1

    .line 6
    iput v1, v0, Ljava/awt/geom/CubicCurve2D$Float;->ctrly2:F

    move-wide/from16 v1, p13

    double-to-float v1, v1

    .line 7
    iput v1, v0, Ljava/awt/geom/CubicCurve2D$Float;->x2:F

    move-wide/from16 v1, p15

    double-to-float v1, v1

    .line 8
    iput v1, v0, Ljava/awt/geom/CubicCurve2D$Float;->y2:F

    return-void
.end method

.method public setCurve(FFFFFFFF)V
    .locals 0

    .line 9
    iput p1, p0, Ljava/awt/geom/CubicCurve2D$Float;->x1:F

    .line 10
    iput p2, p0, Ljava/awt/geom/CubicCurve2D$Float;->y1:F

    .line 11
    iput p3, p0, Ljava/awt/geom/CubicCurve2D$Float;->ctrlx1:F

    .line 12
    iput p4, p0, Ljava/awt/geom/CubicCurve2D$Float;->ctrly1:F

    .line 13
    iput p5, p0, Ljava/awt/geom/CubicCurve2D$Float;->ctrlx2:F

    .line 14
    iput p6, p0, Ljava/awt/geom/CubicCurve2D$Float;->ctrly2:F

    .line 15
    iput p7, p0, Ljava/awt/geom/CubicCurve2D$Float;->x2:F

    .line 16
    iput p8, p0, Ljava/awt/geom/CubicCurve2D$Float;->y2:F

    return-void
.end method
