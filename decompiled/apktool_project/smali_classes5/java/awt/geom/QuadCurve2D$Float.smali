.class public Ljava/awt/geom/QuadCurve2D$Float;
.super Ljava/awt/geom/QuadCurve2D;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/awt/geom/QuadCurve2D;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Float"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x761dd0c1ed6d1379L


# instance fields
.field public ctrlx:F

.field public ctrly:F

.field public x1:F

.field public x2:F

.field public y1:F

.field public y2:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/awt/geom/QuadCurve2D;-><init>()V

    return-void
.end method

.method public constructor <init>(FFFFFF)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/awt/geom/QuadCurve2D;-><init>()V

    .line 3
    invoke-virtual/range {p0 .. p6}, Ljava/awt/geom/QuadCurve2D$Float;->setCurve(FFFFFF)V

    return-void
.end method


# virtual methods
.method public getBounds2D()Ljava/awt/geom/Rectangle2D;
    .locals 5

    iget v0, p0, Ljava/awt/geom/QuadCurve2D$Float;->x1:F

    iget v1, p0, Ljava/awt/geom/QuadCurve2D$Float;->x2:F

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iget v1, p0, Ljava/awt/geom/QuadCurve2D$Float;->ctrlx:F

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iget v1, p0, Ljava/awt/geom/QuadCurve2D$Float;->y1:F

    iget v2, p0, Ljava/awt/geom/QuadCurve2D$Float;->y2:F

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iget v2, p0, Ljava/awt/geom/QuadCurve2D$Float;->ctrly:F

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iget v2, p0, Ljava/awt/geom/QuadCurve2D$Float;->x1:F

    iget v3, p0, Ljava/awt/geom/QuadCurve2D$Float;->x2:F

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iget v3, p0, Ljava/awt/geom/QuadCurve2D$Float;->ctrlx:F

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iget v3, p0, Ljava/awt/geom/QuadCurve2D$Float;->y1:F

    iget v4, p0, Ljava/awt/geom/QuadCurve2D$Float;->y2:F

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    iget p0, p0, Ljava/awt/geom/QuadCurve2D$Float;->ctrly:F

    invoke-static {v3, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    new-instance v3, Ljava/awt/geom/Rectangle2D$Float;

    sub-float/2addr v2, v0

    sub-float/2addr p0, v1

    invoke-direct {v3, v0, v1, v2, p0}, Ljava/awt/geom/Rectangle2D$Float;-><init>(FFFF)V

    return-object v3
.end method

.method public getCtrlPt()Ljava/awt/geom/Point2D;
    .locals 2

    new-instance v0, Ljava/awt/geom/Point2D$Float;

    iget v1, p0, Ljava/awt/geom/QuadCurve2D$Float;->ctrlx:F

    iget p0, p0, Ljava/awt/geom/QuadCurve2D$Float;->ctrly:F

    invoke-direct {v0, v1, p0}, Ljava/awt/geom/Point2D$Float;-><init>(FF)V

    return-object v0
.end method

.method public getCtrlX()D
    .locals 2

    iget p0, p0, Ljava/awt/geom/QuadCurve2D$Float;->ctrlx:F

    float-to-double v0, p0

    return-wide v0
.end method

.method public getCtrlY()D
    .locals 2

    iget p0, p0, Ljava/awt/geom/QuadCurve2D$Float;->ctrly:F

    float-to-double v0, p0

    return-wide v0
.end method

.method public getP1()Ljava/awt/geom/Point2D;
    .locals 2

    new-instance v0, Ljava/awt/geom/Point2D$Float;

    iget v1, p0, Ljava/awt/geom/QuadCurve2D$Float;->x1:F

    iget p0, p0, Ljava/awt/geom/QuadCurve2D$Float;->y1:F

    invoke-direct {v0, v1, p0}, Ljava/awt/geom/Point2D$Float;-><init>(FF)V

    return-object v0
.end method

.method public getP2()Ljava/awt/geom/Point2D;
    .locals 2

    new-instance v0, Ljava/awt/geom/Point2D$Float;

    iget v1, p0, Ljava/awt/geom/QuadCurve2D$Float;->x2:F

    iget p0, p0, Ljava/awt/geom/QuadCurve2D$Float;->y2:F

    invoke-direct {v0, v1, p0}, Ljava/awt/geom/Point2D$Float;-><init>(FF)V

    return-object v0
.end method

.method public getX1()D
    .locals 2

    iget p0, p0, Ljava/awt/geom/QuadCurve2D$Float;->x1:F

    float-to-double v0, p0

    return-wide v0
.end method

.method public getX2()D
    .locals 2

    iget p0, p0, Ljava/awt/geom/QuadCurve2D$Float;->x2:F

    float-to-double v0, p0

    return-wide v0
.end method

.method public getY1()D
    .locals 2

    iget p0, p0, Ljava/awt/geom/QuadCurve2D$Float;->y1:F

    float-to-double v0, p0

    return-wide v0
.end method

.method public getY2()D
    .locals 2

    iget p0, p0, Ljava/awt/geom/QuadCurve2D$Float;->y2:F

    float-to-double v0, p0

    return-wide v0
.end method

.method public setCurve(DDDDDD)V
    .locals 0

    double-to-float p1, p1

    .line 1
    iput p1, p0, Ljava/awt/geom/QuadCurve2D$Float;->x1:F

    double-to-float p1, p3

    .line 2
    iput p1, p0, Ljava/awt/geom/QuadCurve2D$Float;->y1:F

    double-to-float p1, p5

    .line 3
    iput p1, p0, Ljava/awt/geom/QuadCurve2D$Float;->ctrlx:F

    double-to-float p1, p7

    .line 4
    iput p1, p0, Ljava/awt/geom/QuadCurve2D$Float;->ctrly:F

    double-to-float p1, p9

    .line 5
    iput p1, p0, Ljava/awt/geom/QuadCurve2D$Float;->x2:F

    double-to-float p1, p11

    .line 6
    iput p1, p0, Ljava/awt/geom/QuadCurve2D$Float;->y2:F

    return-void
.end method

.method public setCurve(FFFFFF)V
    .locals 0

    .line 7
    iput p1, p0, Ljava/awt/geom/QuadCurve2D$Float;->x1:F

    .line 8
    iput p2, p0, Ljava/awt/geom/QuadCurve2D$Float;->y1:F

    .line 9
    iput p3, p0, Ljava/awt/geom/QuadCurve2D$Float;->ctrlx:F

    .line 10
    iput p4, p0, Ljava/awt/geom/QuadCurve2D$Float;->ctrly:F

    .line 11
    iput p5, p0, Ljava/awt/geom/QuadCurve2D$Float;->x2:F

    .line 12
    iput p6, p0, Ljava/awt/geom/QuadCurve2D$Float;->y2:F

    return-void
.end method
