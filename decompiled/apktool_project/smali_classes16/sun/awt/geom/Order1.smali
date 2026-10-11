.class final Lsun/awt/geom/Order1;
.super Lsun/awt/geom/Curve;
.source "SourceFile"


# instance fields
.field private x0:D

.field private x1:D

.field private xmax:D

.field private xmin:D

.field private y0:D

.field private y1:D


# direct methods
.method public constructor <init>(DDDDI)V
    .locals 0

    invoke-direct {p0, p9}, Lsun/awt/geom/Curve;-><init>(I)V

    iput-wide p1, p0, Lsun/awt/geom/Order1;->x0:D

    iput-wide p3, p0, Lsun/awt/geom/Order1;->y0:D

    iput-wide p5, p0, Lsun/awt/geom/Order1;->x1:D

    iput-wide p7, p0, Lsun/awt/geom/Order1;->y1:D

    cmpg-double p3, p1, p5

    if-gez p3, :cond_0

    iput-wide p1, p0, Lsun/awt/geom/Order1;->xmin:D

    iput-wide p5, p0, Lsun/awt/geom/Order1;->xmax:D

    goto :goto_0

    :cond_0
    iput-wide p5, p0, Lsun/awt/geom/Order1;->xmin:D

    iput-wide p1, p0, Lsun/awt/geom/Order1;->xmax:D

    :goto_0
    return-void
.end method


# virtual methods
.method public TforY(D)D
    .locals 4

    iget-wide v0, p0, Lsun/awt/geom/Order1;->y0:D

    cmpg-double v2, p1, v0

    if-gtz v2, :cond_0

    const-wide/16 p0, 0x0

    return-wide p0

    :cond_0
    iget-wide v2, p0, Lsun/awt/geom/Order1;->y1:D

    cmpl-double p0, p1, v2

    if-ltz p0, :cond_1

    const-wide/high16 p0, 0x3ff0000000000000L    # 1.0

    return-wide p0

    :cond_1
    sub-double/2addr p1, v0

    sub-double/2addr v2, v0

    div-double/2addr p1, v2

    return-wide p1
.end method

.method public XforT(D)D
    .locals 4

    iget-wide v0, p0, Lsun/awt/geom/Order1;->x0:D

    iget-wide v2, p0, Lsun/awt/geom/Order1;->x1:D

    sub-double/2addr v2, v0

    mul-double/2addr p1, v2

    add-double/2addr v0, p1

    return-wide v0
.end method

.method public XforY(D)D
    .locals 8

    iget-wide v0, p0, Lsun/awt/geom/Order1;->x0:D

    iget-wide v2, p0, Lsun/awt/geom/Order1;->x1:D

    cmpl-double v4, v0, v2

    if-eqz v4, :cond_2

    iget-wide v4, p0, Lsun/awt/geom/Order1;->y0:D

    cmpg-double v6, p1, v4

    if-gtz v6, :cond_0

    goto :goto_0

    :cond_0
    iget-wide v6, p0, Lsun/awt/geom/Order1;->y1:D

    cmpl-double p0, p1, v6

    if-ltz p0, :cond_1

    return-wide v2

    :cond_1
    sub-double/2addr p1, v4

    sub-double/2addr v2, v0

    mul-double/2addr p1, v2

    sub-double/2addr v6, v4

    div-double/2addr p1, v6

    add-double/2addr v0, p1

    :cond_2
    :goto_0
    return-wide v0
.end method

.method public YforT(D)D
    .locals 4

    iget-wide v0, p0, Lsun/awt/geom/Order1;->y0:D

    iget-wide v2, p0, Lsun/awt/geom/Order1;->y1:D

    sub-double/2addr v2, v0

    mul-double/2addr p1, v2

    add-double/2addr v0, p1

    return-wide v0
.end method

.method public accumulateCrossings(Lsun/awt/geom/Crossings;)Z
    .locals 19

    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Lsun/awt/geom/Crossings;->getXLo()D

    move-result-wide v1

    invoke-virtual/range {p1 .. p1}, Lsun/awt/geom/Crossings;->getYLo()D

    move-result-wide v3

    invoke-virtual/range {p1 .. p1}, Lsun/awt/geom/Crossings;->getXHi()D

    move-result-wide v5

    invoke-virtual/range {p1 .. p1}, Lsun/awt/geom/Crossings;->getYHi()D

    move-result-wide v7

    iget-wide v9, v0, Lsun/awt/geom/Order1;->xmin:D

    cmpl-double v9, v9, v5

    const/4 v10, 0x0

    if-ltz v9, :cond_0

    return v10

    :cond_0
    iget-wide v11, v0, Lsun/awt/geom/Order1;->y0:D

    cmpg-double v9, v11, v3

    if-gez v9, :cond_2

    iget-wide v11, v0, Lsun/awt/geom/Order1;->y1:D

    cmpg-double v9, v11, v3

    if-gtz v9, :cond_1

    return v10

    :cond_1
    invoke-virtual {v0, v3, v4}, Lsun/awt/geom/Order1;->XforY(D)D

    move-result-wide v11

    move-wide v14, v3

    goto :goto_0

    :cond_2
    cmpl-double v3, v11, v7

    if-ltz v3, :cond_3

    return v10

    :cond_3
    iget-wide v3, v0, Lsun/awt/geom/Order1;->x0:D

    move-wide v14, v11

    move-wide v11, v3

    :goto_0
    iget-wide v3, v0, Lsun/awt/geom/Order1;->y1:D

    cmpl-double v9, v3, v7

    if-lez v9, :cond_4

    invoke-virtual {v0, v7, v8}, Lsun/awt/geom/Order1;->XforY(D)D

    move-result-wide v3

    move-wide/from16 v16, v7

    goto :goto_1

    :cond_4
    iget-wide v7, v0, Lsun/awt/geom/Order1;->x1:D

    move-wide/from16 v16, v3

    move-wide v3, v7

    :goto_1
    cmpl-double v7, v11, v5

    if-ltz v7, :cond_5

    cmpl-double v5, v3, v5

    if-ltz v5, :cond_5

    return v10

    :cond_5
    cmpl-double v5, v11, v1

    if-gtz v5, :cond_7

    cmpl-double v1, v3, v1

    if-lez v1, :cond_6

    goto :goto_2

    :cond_6
    iget v0, v0, Lsun/awt/geom/Curve;->direction:I

    move-object/from16 v13, p1

    move/from16 v18, v0

    invoke-virtual/range {v13 .. v18}, Lsun/awt/geom/Crossings;->record(DDI)V

    return v10

    :cond_7
    :goto_2
    const/4 v0, 0x1

    return v0
.end method

.method public compareTo(Lsun/awt/geom/Curve;[D)I
    .locals 30

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    instance-of v2, v1, Lsun/awt/geom/Order1;

    if-nez v2, :cond_0

    invoke-super/range {p0 .. p2}, Lsun/awt/geom/Curve;->compareTo(Lsun/awt/geom/Curve;[D)I

    move-result v0

    return v0

    :cond_0
    check-cast v1, Lsun/awt/geom/Order1;

    const/4 v2, 0x1

    aget-wide v3, p2, v2

    const/4 v5, 0x0

    aget-wide v6, p2, v5

    cmpg-double v6, v3, v6

    if-lez v6, :cond_8

    iget-wide v6, v0, Lsun/awt/geom/Order1;->y1:D

    invoke-static {v3, v4, v6, v7}, Ljava/lang/Math;->min(DD)D

    move-result-wide v3

    iget-wide v6, v1, Lsun/awt/geom/Order1;->y1:D

    invoke-static {v3, v4, v6, v7}, Ljava/lang/Math;->min(DD)D

    move-result-wide v3

    aput-wide v3, p2, v2

    aget-wide v6, p2, v5

    cmpg-double v8, v3, v6

    if-lez v8, :cond_7

    iget-wide v8, v0, Lsun/awt/geom/Order1;->xmax:D

    iget-wide v10, v1, Lsun/awt/geom/Order1;->xmin:D

    cmpg-double v8, v8, v10

    if-gtz v8, :cond_2

    iget-wide v2, v0, Lsun/awt/geom/Order1;->xmin:D

    iget-wide v0, v1, Lsun/awt/geom/Order1;->xmax:D

    cmpl-double v0, v2, v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v5, -0x1

    :goto_0
    return v5

    :cond_2
    iget-wide v8, v0, Lsun/awt/geom/Order1;->xmin:D

    iget-wide v10, v1, Lsun/awt/geom/Order1;->xmax:D

    cmpl-double v5, v8, v10

    if-ltz v5, :cond_3

    return v2

    :cond_3
    iget-wide v8, v0, Lsun/awt/geom/Order1;->x1:D

    iget-wide v10, v0, Lsun/awt/geom/Order1;->x0:D

    sub-double/2addr v8, v10

    iget-wide v12, v0, Lsun/awt/geom/Order1;->y1:D

    iget-wide v14, v0, Lsun/awt/geom/Order1;->y0:D

    sub-double v16, v12, v14

    move-wide/from16 v18, v3

    iget-wide v2, v1, Lsun/awt/geom/Order1;->x1:D

    iget-wide v4, v1, Lsun/awt/geom/Order1;->x0:D

    sub-double/2addr v2, v4

    move-wide/from16 v20, v12

    iget-wide v12, v1, Lsun/awt/geom/Order1;->y1:D

    move-wide/from16 v22, v6

    iget-wide v6, v1, Lsun/awt/geom/Order1;->y0:D

    sub-double v24, v12, v6

    mul-double v26, v2, v16

    mul-double v28, v8, v24

    sub-double v26, v26, v28

    const-wide/16 v28, 0x0

    cmpl-double v28, v26, v28

    if-eqz v28, :cond_6

    sub-double/2addr v10, v4

    mul-double v10, v10, v16

    mul-double v10, v10, v24

    mul-double/2addr v8, v14

    mul-double v8, v8, v24

    sub-double/2addr v10, v8

    mul-double/2addr v2, v6

    mul-double v2, v2, v16

    add-double/2addr v10, v2

    div-double v10, v10, v26

    cmpg-double v2, v10, v22

    if-gtz v2, :cond_4

    move-wide/from16 v2, v20

    invoke-static {v2, v3, v12, v13}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    goto :goto_1

    :cond_4
    cmpg-double v2, v10, v18

    if-gez v2, :cond_5

    const/4 v2, 0x1

    aput-wide v10, p2, v2

    :cond_5
    invoke-static {v14, v15, v6, v7}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    goto :goto_1

    :cond_6
    invoke-static {v14, v15, v6, v7}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    :goto_1
    invoke-virtual {v0, v2, v3}, Lsun/awt/geom/Order1;->XforY(D)D

    move-result-wide v4

    invoke-virtual {v1, v2, v3}, Lsun/awt/geom/Order1;->XforY(D)D

    move-result-wide v0

    invoke-static {v4, v5, v0, v1}, Lsun/awt/geom/Curve;->orderof(DD)I

    move-result v0

    return v0

    :cond_7
    new-instance v0, Ljava/lang/InternalError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "backstepping from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v2, p2, v5

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    aget-wide v2, p2, v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    new-instance v0, Ljava/lang/InternalError;

    const-string v1, "yrange already screwed up..."

    invoke-direct {v0, v1}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public dXforT(DI)D
    .locals 4

    if-eqz p3, :cond_1

    const/4 p1, 0x1

    if-eq p3, p1, :cond_0

    const-wide/16 p0, 0x0

    return-wide p0

    :cond_0
    iget-wide p1, p0, Lsun/awt/geom/Order1;->x1:D

    iget-wide v0, p0, Lsun/awt/geom/Order1;->x0:D

    sub-double/2addr p1, v0

    return-wide p1

    :cond_1
    iget-wide v0, p0, Lsun/awt/geom/Order1;->x0:D

    iget-wide v2, p0, Lsun/awt/geom/Order1;->x1:D

    sub-double/2addr v2, v0

    mul-double/2addr p1, v2

    add-double/2addr v0, p1

    return-wide v0
.end method

.method public dYforT(DI)D
    .locals 4

    if-eqz p3, :cond_1

    const/4 p1, 0x1

    if-eq p3, p1, :cond_0

    const-wide/16 p0, 0x0

    return-wide p0

    :cond_0
    iget-wide p1, p0, Lsun/awt/geom/Order1;->y1:D

    iget-wide v0, p0, Lsun/awt/geom/Order1;->y0:D

    sub-double/2addr p1, v0

    return-wide p1

    :cond_1
    iget-wide v0, p0, Lsun/awt/geom/Order1;->y0:D

    iget-wide v2, p0, Lsun/awt/geom/Order1;->y1:D

    sub-double/2addr v2, v0

    mul-double/2addr p1, v2

    add-double/2addr v0, p1

    return-wide v0
.end method

.method public enlarge(Ljava/awt/geom/Rectangle2D;)V
    .locals 4

    iget-wide v0, p0, Lsun/awt/geom/Order1;->x0:D

    iget-wide v2, p0, Lsun/awt/geom/Order1;->y0:D

    invoke-virtual {p1, v0, v1, v2, v3}, Ljava/awt/geom/Rectangle2D;->add(DD)V

    iget-wide v0, p0, Lsun/awt/geom/Order1;->x1:D

    iget-wide v2, p0, Lsun/awt/geom/Order1;->y1:D

    invoke-virtual {p1, v0, v1, v2, v3}, Ljava/awt/geom/Rectangle2D;->add(DD)V

    return-void
.end method

.method public getOrder()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public getReversedCurve()Lsun/awt/geom/Curve;
    .locals 11

    new-instance v10, Lsun/awt/geom/Order1;

    iget-wide v1, p0, Lsun/awt/geom/Order1;->x0:D

    iget-wide v3, p0, Lsun/awt/geom/Order1;->y0:D

    iget-wide v5, p0, Lsun/awt/geom/Order1;->x1:D

    iget-wide v7, p0, Lsun/awt/geom/Order1;->y1:D

    iget p0, p0, Lsun/awt/geom/Curve;->direction:I

    neg-int v9, p0

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Lsun/awt/geom/Order1;-><init>(DDDDI)V

    return-object v10
.end method

.method public getSegment([D)I
    .locals 5

    iget v0, p0, Lsun/awt/geom/Curve;->direction:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    iget-wide v3, p0, Lsun/awt/geom/Order1;->x1:D

    aput-wide v3, p1, v1

    iget-wide v0, p0, Lsun/awt/geom/Order1;->y1:D

    aput-wide v0, p1, v2

    goto :goto_0

    :cond_0
    iget-wide v3, p0, Lsun/awt/geom/Order1;->x0:D

    aput-wide v3, p1, v1

    iget-wide v0, p0, Lsun/awt/geom/Order1;->y0:D

    aput-wide v0, p1, v2

    :goto_0
    return v2
.end method

.method public getSubCurve(DDI)Lsun/awt/geom/Curve;
    .locals 13

    move-object v0, p0

    iget-wide v1, v0, Lsun/awt/geom/Order1;->y0:D

    cmpl-double v3, p1, v1

    if-nez v3, :cond_0

    iget-wide v3, v0, Lsun/awt/geom/Order1;->y1:D

    cmpl-double v3, p3, v3

    if-nez v3, :cond_0

    move/from16 v9, p5

    invoke-virtual {p0, v9}, Lsun/awt/geom/Curve;->getWithDirection(I)Lsun/awt/geom/Curve;

    move-result-object v0

    return-object v0

    :cond_0
    move/from16 v9, p5

    iget-wide v3, v0, Lsun/awt/geom/Order1;->x0:D

    iget-wide v5, v0, Lsun/awt/geom/Order1;->x1:D

    cmpl-double v7, v3, v5

    if-nez v7, :cond_1

    new-instance v10, Lsun/awt/geom/Order1;

    move-object v0, v10

    move-wide v1, v3

    move-wide v3, p1

    move-wide/from16 v7, p3

    move/from16 v9, p5

    invoke-direct/range {v0 .. v9}, Lsun/awt/geom/Order1;-><init>(DDDDI)V

    return-object v10

    :cond_1
    sub-double v5, v3, v5

    iget-wide v7, v0, Lsun/awt/geom/Order1;->y1:D

    sub-double v7, v1, v7

    sub-double v10, p1, v1

    mul-double/2addr v10, v5

    div-double/2addr v10, v7

    add-double/2addr v10, v3

    sub-double v0, p3, v1

    mul-double/2addr v0, v5

    div-double/2addr v0, v7

    add-double v5, v3, v0

    new-instance v12, Lsun/awt/geom/Order1;

    move-object v0, v12

    move-wide v1, v10

    move-wide v3, p1

    move-wide/from16 v7, p3

    move/from16 v9, p5

    invoke-direct/range {v0 .. v9}, Lsun/awt/geom/Order1;-><init>(DDDDI)V

    return-object v12
.end method

.method public getX0()D
    .locals 2

    iget v0, p0, Lsun/awt/geom/Curve;->direction:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, Lsun/awt/geom/Order1;->x0:D

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lsun/awt/geom/Order1;->x1:D

    :goto_0
    return-wide v0
.end method

.method public getX1()D
    .locals 2

    iget v0, p0, Lsun/awt/geom/Curve;->direction:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, Lsun/awt/geom/Order1;->x0:D

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lsun/awt/geom/Order1;->x1:D

    :goto_0
    return-wide v0
.end method

.method public getXBot()D
    .locals 2

    iget-wide v0, p0, Lsun/awt/geom/Order1;->x1:D

    return-wide v0
.end method

.method public getXMax()D
    .locals 2

    iget-wide v0, p0, Lsun/awt/geom/Order1;->xmax:D

    return-wide v0
.end method

.method public getXMin()D
    .locals 2

    iget-wide v0, p0, Lsun/awt/geom/Order1;->xmin:D

    return-wide v0
.end method

.method public getXTop()D
    .locals 2

    iget-wide v0, p0, Lsun/awt/geom/Order1;->x0:D

    return-wide v0
.end method

.method public getY0()D
    .locals 2

    iget v0, p0, Lsun/awt/geom/Curve;->direction:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, Lsun/awt/geom/Order1;->y0:D

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lsun/awt/geom/Order1;->y1:D

    :goto_0
    return-wide v0
.end method

.method public getY1()D
    .locals 2

    iget v0, p0, Lsun/awt/geom/Curve;->direction:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, Lsun/awt/geom/Order1;->y0:D

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lsun/awt/geom/Order1;->y1:D

    :goto_0
    return-wide v0
.end method

.method public getYBot()D
    .locals 2

    iget-wide v0, p0, Lsun/awt/geom/Order1;->y1:D

    return-wide v0
.end method

.method public getYTop()D
    .locals 2

    iget-wide v0, p0, Lsun/awt/geom/Order1;->y0:D

    return-wide v0
.end method

.method public nextVertical(DD)D
    .locals 0

    return-wide p3
.end method
