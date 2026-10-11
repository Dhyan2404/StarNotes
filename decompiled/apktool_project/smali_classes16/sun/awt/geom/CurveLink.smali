.class final Lsun/awt/geom/CurveLink;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field curve:Lsun/awt/geom/Curve;

.field etag:I

.field next:Lsun/awt/geom/CurveLink;

.field ybot:D

.field ytop:D


# direct methods
.method public constructor <init>(Lsun/awt/geom/Curve;DDI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsun/awt/geom/CurveLink;->curve:Lsun/awt/geom/Curve;

    iput-wide p2, p0, Lsun/awt/geom/CurveLink;->ytop:D

    iput-wide p4, p0, Lsun/awt/geom/CurveLink;->ybot:D

    iput p6, p0, Lsun/awt/geom/CurveLink;->etag:I

    invoke-virtual {p1}, Lsun/awt/geom/Curve;->getYTop()D

    move-result-wide p4

    cmpg-double p2, p2, p4

    if-ltz p2, :cond_0

    iget-wide p2, p0, Lsun/awt/geom/CurveLink;->ybot:D

    invoke-virtual {p1}, Lsun/awt/geom/Curve;->getYBot()D

    move-result-wide p4

    cmpl-double p2, p2, p4

    if-gtz p2, :cond_0

    return-void

    :cond_0
    new-instance p2, Ljava/lang/InternalError;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "bad curvelink ["

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide p4, p0, Lsun/awt/geom/CurveLink;->ytop:D

    invoke-virtual {p3, p4, p5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p4, "=>"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide p4, p0, Lsun/awt/geom/CurveLink;->ybot:D

    invoke-virtual {p3, p4, p5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p0, "] for "

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw p2
.end method


# virtual methods
.method public absorb(Lsun/awt/geom/Curve;DDI)Z
    .locals 2

    .line 2
    iget-object v0, p0, Lsun/awt/geom/CurveLink;->curve:Lsun/awt/geom/Curve;

    if-ne v0, p1, :cond_2

    iget v0, p0, Lsun/awt/geom/CurveLink;->etag:I

    if-ne v0, p6, :cond_2

    iget-wide v0, p0, Lsun/awt/geom/CurveLink;->ybot:D

    cmpg-double p6, v0, p2

    if-ltz p6, :cond_2

    iget-wide v0, p0, Lsun/awt/geom/CurveLink;->ytop:D

    cmpl-double p6, v0, p4

    if-lez p6, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1}, Lsun/awt/geom/Curve;->getYTop()D

    move-result-wide v0

    cmpg-double p6, p2, v0

    if-ltz p6, :cond_1

    invoke-virtual {p1}, Lsun/awt/geom/Curve;->getYBot()D

    move-result-wide v0

    cmpl-double p6, p4, v0

    if-gtz p6, :cond_1

    .line 4
    iget-wide v0, p0, Lsun/awt/geom/CurveLink;->ytop:D

    invoke-static {v0, v1, p2, p3}, Ljava/lang/Math;->min(DD)D

    move-result-wide p1

    iput-wide p1, p0, Lsun/awt/geom/CurveLink;->ytop:D

    .line 5
    iget-wide p1, p0, Lsun/awt/geom/CurveLink;->ybot:D

    invoke-static {p1, p2, p4, p5}, Ljava/lang/Math;->max(DD)D

    move-result-wide p1

    iput-wide p1, p0, Lsun/awt/geom/CurveLink;->ybot:D

    const/4 p0, 0x1

    return p0

    .line 6
    :cond_1
    new-instance p0, Ljava/lang/InternalError;

    new-instance p6, Ljava/lang/StringBuilder;

    invoke-direct {p6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "bad curvelink ["

    invoke-virtual {p6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6, p2, p3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p2, "=>"

    invoke-virtual {p6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6, p4, p5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p2, "] for "

    invoke-virtual {p6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public absorb(Lsun/awt/geom/CurveLink;)Z
    .locals 7

    .line 1
    iget-object v1, p1, Lsun/awt/geom/CurveLink;->curve:Lsun/awt/geom/Curve;

    iget-wide v2, p1, Lsun/awt/geom/CurveLink;->ytop:D

    iget-wide v4, p1, Lsun/awt/geom/CurveLink;->ybot:D

    iget v6, p1, Lsun/awt/geom/CurveLink;->etag:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lsun/awt/geom/CurveLink;->absorb(Lsun/awt/geom/Curve;DDI)Z

    move-result p0

    return p0
.end method

.method public getCurve()Lsun/awt/geom/Curve;
    .locals 0

    iget-object p0, p0, Lsun/awt/geom/CurveLink;->curve:Lsun/awt/geom/Curve;

    return-object p0
.end method

.method public getEdgeTag()I
    .locals 0

    iget p0, p0, Lsun/awt/geom/CurveLink;->etag:I

    return p0
.end method

.method public getMoveto()Lsun/awt/geom/Curve;
    .locals 5

    new-instance v0, Lsun/awt/geom/Order0;

    invoke-virtual {p0}, Lsun/awt/geom/CurveLink;->getXTop()D

    move-result-wide v1

    invoke-virtual {p0}, Lsun/awt/geom/CurveLink;->getYTop()D

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Lsun/awt/geom/Order0;-><init>(DD)V

    return-object v0
.end method

.method public getNext()Lsun/awt/geom/CurveLink;
    .locals 0

    iget-object p0, p0, Lsun/awt/geom/CurveLink;->next:Lsun/awt/geom/CurveLink;

    return-object p0
.end method

.method public getSubCurve()Lsun/awt/geom/Curve;
    .locals 6

    iget-wide v0, p0, Lsun/awt/geom/CurveLink;->ytop:D

    iget-object v2, p0, Lsun/awt/geom/CurveLink;->curve:Lsun/awt/geom/Curve;

    invoke-virtual {v2}, Lsun/awt/geom/Curve;->getYTop()D

    move-result-wide v2

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p0, Lsun/awt/geom/CurveLink;->ybot:D

    iget-object v2, p0, Lsun/awt/geom/CurveLink;->curve:Lsun/awt/geom/Curve;

    invoke-virtual {v2}, Lsun/awt/geom/Curve;->getYBot()D

    move-result-wide v2

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lsun/awt/geom/CurveLink;->curve:Lsun/awt/geom/Curve;

    iget p0, p0, Lsun/awt/geom/CurveLink;->etag:I

    invoke-virtual {v0, p0}, Lsun/awt/geom/Curve;->getWithDirection(I)Lsun/awt/geom/Curve;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object v0, p0, Lsun/awt/geom/CurveLink;->curve:Lsun/awt/geom/Curve;

    iget-wide v1, p0, Lsun/awt/geom/CurveLink;->ytop:D

    iget-wide v3, p0, Lsun/awt/geom/CurveLink;->ybot:D

    iget v5, p0, Lsun/awt/geom/CurveLink;->etag:I

    invoke-virtual/range {v0 .. v5}, Lsun/awt/geom/Curve;->getSubCurve(DDI)Lsun/awt/geom/Curve;

    move-result-object p0

    return-object p0
.end method

.method public getX()D
    .locals 3

    iget-object v0, p0, Lsun/awt/geom/CurveLink;->curve:Lsun/awt/geom/Curve;

    iget-wide v1, p0, Lsun/awt/geom/CurveLink;->ytop:D

    invoke-virtual {v0, v1, v2}, Lsun/awt/geom/Curve;->XforY(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public getXBot()D
    .locals 3

    iget-object v0, p0, Lsun/awt/geom/CurveLink;->curve:Lsun/awt/geom/Curve;

    iget-wide v1, p0, Lsun/awt/geom/CurveLink;->ybot:D

    invoke-virtual {v0, v1, v2}, Lsun/awt/geom/Curve;->XforY(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public getXTop()D
    .locals 3

    iget-object v0, p0, Lsun/awt/geom/CurveLink;->curve:Lsun/awt/geom/Curve;

    iget-wide v1, p0, Lsun/awt/geom/CurveLink;->ytop:D

    invoke-virtual {v0, v1, v2}, Lsun/awt/geom/Curve;->XforY(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public getYBot()D
    .locals 2

    iget-wide v0, p0, Lsun/awt/geom/CurveLink;->ybot:D

    return-wide v0
.end method

.method public getYTop()D
    .locals 2

    iget-wide v0, p0, Lsun/awt/geom/CurveLink;->ytop:D

    return-wide v0
.end method

.method public isEmpty()Z
    .locals 4

    iget-wide v0, p0, Lsun/awt/geom/CurveLink;->ytop:D

    iget-wide v2, p0, Lsun/awt/geom/CurveLink;->ybot:D

    cmpl-double p0, v0, v2

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public setNext(Lsun/awt/geom/CurveLink;)V
    .locals 0

    iput-object p1, p0, Lsun/awt/geom/CurveLink;->next:Lsun/awt/geom/CurveLink;

    return-void
.end method
