.class final Lcom/sun/javafx/geom/Order0;
.super Lcom/sun/javafx/geom/Curve;
.source "SourceFile"


# instance fields
.field private x:D

.field private y:D


# direct methods
.method public constructor <init>(DD)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sun/javafx/geom/Curve;-><init>(I)V

    iput-wide p1, p0, Lcom/sun/javafx/geom/Order0;->x:D

    iput-wide p3, p0, Lcom/sun/javafx/geom/Order0;->y:D

    return-void
.end method


# virtual methods
.method public TforY(D)D
    .locals 0

    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public XforT(D)D
    .locals 0

    iget-wide p0, p0, Lcom/sun/javafx/geom/Order0;->x:D

    return-wide p0
.end method

.method public XforY(D)D
    .locals 0

    return-wide p1
.end method

.method public YforT(D)D
    .locals 0

    iget-wide p0, p0, Lcom/sun/javafx/geom/Order0;->y:D

    return-wide p0
.end method

.method public accumulateCrossings(Lsun/awt/geom/Crossings;)Z
    .locals 4

    iget-wide v0, p0, Lcom/sun/javafx/geom/Order0;->x:D

    invoke-virtual {p1}, Lsun/awt/geom/Crossings;->getXLo()D

    move-result-wide v2

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    iget-wide v0, p0, Lcom/sun/javafx/geom/Order0;->x:D

    invoke-virtual {p1}, Lsun/awt/geom/Crossings;->getXHi()D

    move-result-wide v2

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    iget-wide v0, p0, Lcom/sun/javafx/geom/Order0;->y:D

    invoke-virtual {p1}, Lsun/awt/geom/Crossings;->getYLo()D

    move-result-wide v2

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    iget-wide v0, p0, Lcom/sun/javafx/geom/Order0;->y:D

    invoke-virtual {p1}, Lsun/awt/geom/Crossings;->getYHi()D

    move-result-wide p0

    cmpg-double p0, v0, p0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public crossingsFor(DD)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public dXforT(DI)D
    .locals 0

    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public dYforT(DI)D
    .locals 0

    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public enlarge(Lcom/sun/javafx/geom/RectBounds;)V
    .locals 3

    iget-wide v0, p0, Lcom/sun/javafx/geom/Order0;->x:D

    double-to-float v0, v0

    iget-wide v1, p0, Lcom/sun/javafx/geom/Order0;->y:D

    double-to-float p0, v1

    invoke-virtual {p1, v0, p0}, Lcom/sun/javafx/geom/RectBounds;->add(FF)V

    return-void
.end method

.method public getOrder()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getReversedCurve()Lcom/sun/javafx/geom/Curve;
    .locals 0

    return-object p0
.end method

.method public getSegment([F)I
    .locals 4

    iget-wide v0, p0, Lcom/sun/javafx/geom/Order0;->x:D

    double-to-float v0, v0

    const/4 v1, 0x0

    aput v0, p1, v1

    iget-wide v2, p0, Lcom/sun/javafx/geom/Order0;->y:D

    double-to-float p0, v2

    const/4 v0, 0x1

    aput p0, p1, v0

    return v1
.end method

.method public getSubCurve(DDI)Lcom/sun/javafx/geom/Curve;
    .locals 0

    return-object p0
.end method

.method public getX0()D
    .locals 2

    iget-wide v0, p0, Lcom/sun/javafx/geom/Order0;->x:D

    return-wide v0
.end method

.method public getX1()D
    .locals 2

    iget-wide v0, p0, Lcom/sun/javafx/geom/Order0;->x:D

    return-wide v0
.end method

.method public getXBot()D
    .locals 2

    iget-wide v0, p0, Lcom/sun/javafx/geom/Order0;->x:D

    return-wide v0
.end method

.method public getXMax()D
    .locals 2

    iget-wide v0, p0, Lcom/sun/javafx/geom/Order0;->x:D

    return-wide v0
.end method

.method public getXMin()D
    .locals 2

    iget-wide v0, p0, Lcom/sun/javafx/geom/Order0;->x:D

    return-wide v0
.end method

.method public getXTop()D
    .locals 2

    iget-wide v0, p0, Lcom/sun/javafx/geom/Order0;->x:D

    return-wide v0
.end method

.method public getY0()D
    .locals 2

    iget-wide v0, p0, Lcom/sun/javafx/geom/Order0;->y:D

    return-wide v0
.end method

.method public getY1()D
    .locals 2

    iget-wide v0, p0, Lcom/sun/javafx/geom/Order0;->y:D

    return-wide v0
.end method

.method public getYBot()D
    .locals 2

    iget-wide v0, p0, Lcom/sun/javafx/geom/Order0;->y:D

    return-wide v0
.end method

.method public getYTop()D
    .locals 2

    iget-wide v0, p0, Lcom/sun/javafx/geom/Order0;->y:D

    return-wide v0
.end method

.method public nextVertical(DD)D
    .locals 0

    return-wide p3
.end method
