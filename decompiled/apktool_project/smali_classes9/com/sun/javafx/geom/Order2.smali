.class public final Lcom/sun/javafx/geom/Order2;
.super Lcom/sun/javafx/geom/Curve;
.source "SourceFile"


# instance fields
.field private cx0:D

.field private cy0:D

.field private x0:D

.field private x1:D

.field private xcoeff0:D

.field private xcoeff1:D

.field private xcoeff2:D

.field private xmax:D

.field private xmin:D

.field private y0:D

.field private y1:D

.field private ycoeff0:D

.field private ycoeff1:D

.field private ycoeff2:D


# direct methods
.method public constructor <init>(DDDDDDI)V
    .locals 2

    invoke-direct {p0, p13}, Lcom/sun/javafx/geom/Curve;-><init>(I)V

    cmpg-double p13, p7, p3

    if-gez p13, :cond_0

    move-wide p7, p3

    goto :goto_0

    :cond_0
    cmpl-double p13, p7, p11

    if-lez p13, :cond_1

    move-wide p7, p11

    :cond_1
    :goto_0
    iput-wide p1, p0, Lcom/sun/javafx/geom/Order2;->x0:D

    iput-wide p3, p0, Lcom/sun/javafx/geom/Order2;->y0:D

    iput-wide p5, p0, Lcom/sun/javafx/geom/Order2;->cx0:D

    iput-wide p7, p0, Lcom/sun/javafx/geom/Order2;->cy0:D

    iput-wide p9, p0, Lcom/sun/javafx/geom/Order2;->x1:D

    iput-wide p11, p0, Lcom/sun/javafx/geom/Order2;->y1:D

    invoke-static {p1, p2, p9, p10}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    invoke-static {v0, v1, p5, p6}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/sun/javafx/geom/Order2;->xmin:D

    invoke-static {p1, p2, p9, p10}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    invoke-static {v0, v1, p5, p6}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/sun/javafx/geom/Order2;->xmax:D

    iput-wide p1, p0, Lcom/sun/javafx/geom/Order2;->xcoeff0:D

    add-double v0, p5, p5

    sub-double/2addr v0, p1

    sub-double/2addr v0, p1

    iput-wide v0, p0, Lcom/sun/javafx/geom/Order2;->xcoeff1:D

    sub-double/2addr p1, p5

    sub-double/2addr p1, p5

    add-double/2addr p1, p9

    iput-wide p1, p0, Lcom/sun/javafx/geom/Order2;->xcoeff2:D

    iput-wide p3, p0, Lcom/sun/javafx/geom/Order2;->ycoeff0:D

    add-double p1, p7, p7

    sub-double/2addr p1, p3

    sub-double/2addr p1, p3

    iput-wide p1, p0, Lcom/sun/javafx/geom/Order2;->ycoeff1:D

    sub-double/2addr p3, p7

    sub-double/2addr p3, p7

    add-double/2addr p3, p11

    iput-wide p3, p0, Lcom/sun/javafx/geom/Order2;->ycoeff2:D

    return-void
.end method

.method public static TforY(DDDD)D
    .locals 7

    sub-double/2addr p2, p0

    const-wide/16 p0, 0x0

    cmpl-double v0, p6, p0

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    if-nez v0, :cond_0

    neg-double v3, p2

    div-double/2addr v3, p4

    cmpl-double v0, v3, p0

    if-ltz v0, :cond_3

    cmpg-double v0, v3, v1

    if-gtz v0, :cond_3

    return-wide v3

    :cond_0
    mul-double v3, p4, p4

    const-wide/high16 v5, 0x4010000000000000L    # 4.0

    mul-double/2addr v5, p6

    mul-double/2addr v5, p2

    sub-double/2addr v3, v5

    cmpl-double v0, v3, p0

    if-ltz v0, :cond_3

    .line 4
    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    cmpg-double v0, p4, p0

    if-gez v0, :cond_1

    neg-double v3, v3

    :cond_1
    add-double/2addr v3, p4

    const-wide/high16 v5, -0x4000000000000000L    # -2.0

    div-double/2addr v3, v5

    div-double v5, v3, p6

    cmpl-double v0, v5, p0

    if-ltz v0, :cond_2

    cmpg-double v0, v5, v1

    if-gtz v0, :cond_2

    return-wide v5

    :cond_2
    cmpl-double v0, v3, p0

    if-eqz v0, :cond_3

    div-double v3, p2, v3

    cmpl-double v0, v3, p0

    if-ltz v0, :cond_3

    cmpg-double v0, v3, v1

    if-gtz v0, :cond_3

    return-wide v3

    :cond_3
    add-double/2addr p4, p2

    add-double/2addr p4, p6

    add-double/2addr p2, p4

    const-wide/high16 p4, 0x4000000000000000L    # 2.0

    div-double/2addr p2, p4

    cmpg-double p2, p0, p2

    if-gez p2, :cond_4

    goto :goto_0

    :cond_4
    move-wide p0, v1

    :goto_0
    return-wide p0
.end method

.method public static addInstance(Ljava/util/Vector;DDDDDDI)V
    .locals 16

    move-object/from16 v0, p0

    cmpl-double v1, p3, p11

    if-lez v1, :cond_0

    new-instance v15, Lcom/sun/javafx/geom/Order2;

    move/from16 v14, p13

    neg-int v14, v14

    move-object v1, v15

    move-wide/from16 v2, p9

    move-wide/from16 v4, p11

    move-wide/from16 v6, p5

    move-wide/from16 v8, p7

    move-wide/from16 v10, p1

    move-wide/from16 v12, p3

    invoke-direct/range {v1 .. v14}, Lcom/sun/javafx/geom/Order2;-><init>(DDDDDDI)V

    invoke-virtual {v0, v15}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    move/from16 v14, p13

    cmpl-double v1, p11, p3

    if-lez v1, :cond_1

    new-instance v15, Lcom/sun/javafx/geom/Order2;

    move-object v1, v15

    move-wide/from16 v2, p1

    move-wide/from16 v4, p3

    move-wide/from16 v6, p5

    move-wide/from16 v8, p7

    move-wide/from16 v10, p9

    move-wide/from16 v12, p11

    move/from16 v14, p13

    invoke-direct/range {v1 .. v14}, Lcom/sun/javafx/geom/Order2;-><init>(DDDDDDI)V

    invoke-virtual {v0, v15}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public static getHorizontalParams(DDD[D)I
    .locals 2

    cmpg-double v0, p0, p2

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    cmpg-double v0, p2, p4

    if-gtz v0, :cond_0

    return v1

    :cond_0
    sub-double/2addr p0, p2

    sub-double/2addr p4, p2

    add-double/2addr p4, p0

    const-wide/16 p2, 0x0

    cmpl-double v0, p4, p2

    if-nez v0, :cond_1

    return v1

    :cond_1
    div-double/2addr p0, p4

    cmpg-double p2, p0, p2

    if-lez p2, :cond_3

    const-wide/high16 p2, 0x3ff0000000000000L    # 1.0

    cmpl-double p2, p0, p2

    if-ltz p2, :cond_2

    goto :goto_0

    :cond_2
    aput-wide p0, p6, v1

    const/4 p0, 0x1

    return p0

    :cond_3
    :goto_0
    return v1
.end method

.method public static insert(Ljava/util/Vector;[DDDDDDDI)V
    .locals 22

    move-object/from16 v7, p1

    move-wide/from16 v0, p4

    move-wide/from16 v2, p8

    move-wide/from16 v4, p12

    move-object/from16 v6, p1

    invoke-static/range {v0 .. v6}, Lcom/sun/javafx/geom/Order2;->getHorizontalParams(DDD[D)I

    move-result v0

    if-nez v0, :cond_0

    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    move-wide/from16 v3, p4

    move-wide/from16 v5, p6

    move-wide/from16 v7, p8

    move-wide/from16 v9, p10

    move-wide/from16 v11, p12

    move/from16 v13, p14

    invoke-static/range {v0 .. v13}, Lcom/sun/javafx/geom/Order2;->addInstance(Ljava/util/Vector;DDDDDDI)V

    return-void

    :cond_0
    const/4 v0, 0x0

    aget-wide v1, v7, v0

    aput-wide p2, v7, v0

    const/4 v3, 0x1

    aput-wide p4, v7, v3

    const/4 v4, 0x2

    aput-wide p6, v7, v4

    const/4 v4, 0x3

    aput-wide p8, v7, v4

    const/4 v4, 0x4

    aput-wide p10, v7, v4

    const/4 v5, 0x5

    aput-wide p12, v7, v5

    invoke-static {v7, v0, v1, v2}, Lcom/sun/javafx/geom/Order2;->split([DID)V

    move/from16 v1, p14

    if-ne v1, v3, :cond_1

    goto :goto_0

    :cond_1
    move v0, v4

    :goto_0
    rsub-int/lit8 v2, v0, 0x4

    aget-wide v9, v7, v0

    add-int/lit8 v3, v0, 0x1

    aget-wide v11, v7, v3

    add-int/lit8 v3, v0, 0x2

    aget-wide v13, v7, v3

    add-int/lit8 v3, v0, 0x3

    aget-wide v15, v7, v3

    add-int/lit8 v3, v0, 0x4

    aget-wide v17, v7, v3

    add-int/2addr v0, v5

    aget-wide v19, v7, v0

    move-object/from16 v8, p0

    move/from16 v21, p14

    invoke-static/range {v8 .. v21}, Lcom/sun/javafx/geom/Order2;->addInstance(Ljava/util/Vector;DDDDDDI)V

    aget-wide v3, v7, v2

    add-int/lit8 v0, v2, 0x1

    aget-wide v8, v7, v0

    add-int/lit8 v0, v2, 0x2

    aget-wide v10, v7, v0

    add-int/lit8 v0, v2, 0x3

    aget-wide v12, v7, v0

    add-int/lit8 v0, v2, 0x4

    aget-wide v14, v7, v0

    add-int/2addr v2, v5

    aget-wide v5, v7, v2

    move-wide/from16 p1, v3

    move-wide/from16 p3, v8

    move-wide/from16 p5, v10

    move-wide/from16 p7, v12

    move-wide/from16 p9, v14

    move-wide/from16 p11, v5

    move/from16 p13, p14

    invoke-static/range {p0 .. p13}, Lcom/sun/javafx/geom/Order2;->addInstance(Ljava/util/Vector;DDDDDDI)V

    return-void
.end method

.method public static split([DID)V
    .locals 16

    add-int/lit8 v0, p1, 0x8

    add-int/lit8 v1, p1, 0x4

    aget-wide v2, p0, v1

    aput-wide v2, p0, v0

    add-int/lit8 v0, p1, 0x9

    add-int/lit8 v4, p1, 0x5

    aget-wide v5, p0, v4

    aput-wide v5, p0, v0

    add-int/lit8 v0, p1, 0x2

    aget-wide v7, p0, v0

    add-int/lit8 v9, p1, 0x3

    aget-wide v10, p0, v9

    sub-double/2addr v2, v7

    mul-double v2, v2, p2

    add-double/2addr v2, v7

    sub-double/2addr v5, v10

    mul-double v5, v5, p2

    add-double/2addr v5, v10

    add-int/lit8 v12, p1, 0x0

    aget-wide v12, p0, v12

    add-int/lit8 v14, p1, 0x1

    aget-wide v14, p0, v14

    sub-double/2addr v7, v12

    mul-double v7, v7, p2

    add-double/2addr v12, v7

    sub-double/2addr v10, v14

    mul-double v10, v10, p2

    add-double/2addr v14, v10

    sub-double v7, v2, v12

    mul-double v7, v7, p2

    add-double/2addr v7, v12

    sub-double v10, v5, v14

    mul-double v10, v10, p2

    add-double/2addr v10, v14

    aput-wide v12, p0, v0

    aput-wide v14, p0, v9

    aput-wide v7, p0, v1

    aput-wide v10, p0, v4

    add-int/lit8 v0, p1, 0x6

    aput-wide v2, p0, v0

    add-int/lit8 v0, p1, 0x7

    aput-wide v5, p0, v0

    return-void
.end method


# virtual methods
.method public TforY(D)D
    .locals 8

    .line 1
    iget-wide v0, p0, Lcom/sun/javafx/geom/Order2;->y0:D

    cmpg-double v0, p1, v0

    if-gtz v0, :cond_0

    const-wide/16 p0, 0x0

    return-wide p0

    .line 2
    :cond_0
    iget-wide v0, p0, Lcom/sun/javafx/geom/Order2;->y1:D

    cmpl-double v0, p1, v0

    if-ltz v0, :cond_1

    const-wide/high16 p0, 0x3ff0000000000000L    # 1.0

    return-wide p0

    .line 3
    :cond_1
    iget-wide v2, p0, Lcom/sun/javafx/geom/Order2;->ycoeff0:D

    iget-wide v4, p0, Lcom/sun/javafx/geom/Order2;->ycoeff1:D

    iget-wide v6, p0, Lcom/sun/javafx/geom/Order2;->ycoeff2:D

    move-wide v0, p1

    invoke-static/range {v0 .. v7}, Lcom/sun/javafx/geom/Order2;->TforY(DDDD)D

    move-result-wide p0

    return-wide p0
.end method

.method public XforT(D)D
    .locals 4

    iget-wide v0, p0, Lcom/sun/javafx/geom/Order2;->xcoeff2:D

    mul-double/2addr v0, p1

    iget-wide v2, p0, Lcom/sun/javafx/geom/Order2;->xcoeff1:D

    add-double/2addr v0, v2

    mul-double/2addr v0, p1

    iget-wide p0, p0, Lcom/sun/javafx/geom/Order2;->xcoeff0:D

    add-double/2addr v0, p0

    return-wide v0
.end method

.method public XforY(D)D
    .locals 2

    iget-wide v0, p0, Lcom/sun/javafx/geom/Order2;->y0:D

    cmpg-double v0, p1, v0

    if-gtz v0, :cond_0

    iget-wide p0, p0, Lcom/sun/javafx/geom/Order2;->x0:D

    return-wide p0

    :cond_0
    iget-wide v0, p0, Lcom/sun/javafx/geom/Order2;->y1:D

    cmpl-double v0, p1, v0

    if-ltz v0, :cond_1

    iget-wide p0, p0, Lcom/sun/javafx/geom/Order2;->x1:D

    return-wide p0

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/sun/javafx/geom/Order2;->TforY(D)D

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/sun/javafx/geom/Order2;->XforT(D)D

    move-result-wide p0

    return-wide p0
.end method

.method public YforT(D)D
    .locals 4

    iget-wide v0, p0, Lcom/sun/javafx/geom/Order2;->ycoeff2:D

    mul-double/2addr v0, p1

    iget-wide v2, p0, Lcom/sun/javafx/geom/Order2;->ycoeff1:D

    add-double/2addr v0, v2

    mul-double/2addr v0, p1

    iget-wide p0, p0, Lcom/sun/javafx/geom/Order2;->ycoeff0:D

    add-double/2addr v0, p0

    return-wide v0
.end method

.method public controlPointString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/sun/javafx/geom/Order2;->cx0:D

    invoke-static {v1, v2}, Lcom/sun/javafx/geom/Curve;->round(D)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/sun/javafx/geom/Order2;->cy0:D

    invoke-static {v1, v2}, Lcom/sun/javafx/geom/Curve;->round(D)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p0, "), "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public dXforT(DI)D
    .locals 5

    if-eqz p3, :cond_2

    const/4 v0, 0x1

    const-wide/high16 v1, 0x4000000000000000L    # 2.0

    if-eq p3, v0, :cond_1

    const/4 p1, 0x2

    if-eq p3, p1, :cond_0

    const-wide/16 p0, 0x0

    return-wide p0

    :cond_0
    iget-wide p0, p0, Lcom/sun/javafx/geom/Order2;->xcoeff2:D

    mul-double/2addr p0, v1

    return-wide p0

    :cond_1
    iget-wide v3, p0, Lcom/sun/javafx/geom/Order2;->xcoeff2:D

    mul-double/2addr v3, v1

    mul-double/2addr v3, p1

    iget-wide p0, p0, Lcom/sun/javafx/geom/Order2;->xcoeff1:D

    add-double/2addr v3, p0

    return-wide v3

    :cond_2
    iget-wide v0, p0, Lcom/sun/javafx/geom/Order2;->xcoeff2:D

    mul-double/2addr v0, p1

    iget-wide v2, p0, Lcom/sun/javafx/geom/Order2;->xcoeff1:D

    add-double/2addr v0, v2

    mul-double/2addr v0, p1

    iget-wide p0, p0, Lcom/sun/javafx/geom/Order2;->xcoeff0:D

    add-double/2addr v0, p0

    return-wide v0
.end method

.method public dYforT(DI)D
    .locals 5

    if-eqz p3, :cond_2

    const/4 v0, 0x1

    const-wide/high16 v1, 0x4000000000000000L    # 2.0

    if-eq p3, v0, :cond_1

    const/4 p1, 0x2

    if-eq p3, p1, :cond_0

    const-wide/16 p0, 0x0

    return-wide p0

    :cond_0
    iget-wide p0, p0, Lcom/sun/javafx/geom/Order2;->ycoeff2:D

    mul-double/2addr p0, v1

    return-wide p0

    :cond_1
    iget-wide v3, p0, Lcom/sun/javafx/geom/Order2;->ycoeff2:D

    mul-double/2addr v3, v1

    mul-double/2addr v3, p1

    iget-wide p0, p0, Lcom/sun/javafx/geom/Order2;->ycoeff1:D

    add-double/2addr v3, p0

    return-wide v3

    :cond_2
    iget-wide v0, p0, Lcom/sun/javafx/geom/Order2;->ycoeff2:D

    mul-double/2addr v0, p1

    iget-wide v2, p0, Lcom/sun/javafx/geom/Order2;->ycoeff1:D

    add-double/2addr v0, v2

    mul-double/2addr v0, p1

    iget-wide p0, p0, Lcom/sun/javafx/geom/Order2;->ycoeff0:D

    add-double/2addr v0, p0

    return-wide v0
.end method

.method public enlarge(Lcom/sun/javafx/geom/RectBounds;)V
    .locals 6

    iget-wide v0, p0, Lcom/sun/javafx/geom/Order2;->x0:D

    double-to-float v0, v0

    iget-wide v1, p0, Lcom/sun/javafx/geom/Order2;->y0:D

    double-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Lcom/sun/javafx/geom/RectBounds;->add(FF)V

    iget-wide v0, p0, Lcom/sun/javafx/geom/Order2;->xcoeff1:D

    neg-double v0, v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    iget-wide v4, p0, Lcom/sun/javafx/geom/Order2;->xcoeff2:D

    mul-double/2addr v4, v2

    div-double/2addr v0, v4

    const-wide/16 v2, 0x0

    cmpl-double v2, v0, v2

    if-lez v2, :cond_0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpg-double v2, v0, v2

    if-gez v2, :cond_0

    invoke-virtual {p0, v0, v1}, Lcom/sun/javafx/geom/Order2;->XforT(D)D

    move-result-wide v2

    double-to-float v2, v2

    invoke-virtual {p0, v0, v1}, Lcom/sun/javafx/geom/Order2;->YforT(D)D

    move-result-wide v0

    double-to-float v0, v0

    invoke-virtual {p1, v2, v0}, Lcom/sun/javafx/geom/RectBounds;->add(FF)V

    :cond_0
    iget-wide v0, p0, Lcom/sun/javafx/geom/Order2;->x1:D

    double-to-float v0, v0

    iget-wide v1, p0, Lcom/sun/javafx/geom/Order2;->y1:D

    double-to-float p0, v1

    invoke-virtual {p1, v0, p0}, Lcom/sun/javafx/geom/RectBounds;->add(FF)V

    return-void
.end method

.method public getCX0()D
    .locals 2

    iget-wide v0, p0, Lcom/sun/javafx/geom/Order2;->cx0:D

    return-wide v0
.end method

.method public getCY0()D
    .locals 2

    iget-wide v0, p0, Lcom/sun/javafx/geom/Order2;->cy0:D

    return-wide v0
.end method

.method public getOrder()I
    .locals 0

    const/4 p0, 0x2

    return p0
.end method

.method public getReversedCurve()Lcom/sun/javafx/geom/Curve;
    .locals 15

    new-instance v14, Lcom/sun/javafx/geom/Order2;

    iget-wide v1, p0, Lcom/sun/javafx/geom/Order2;->x0:D

    iget-wide v3, p0, Lcom/sun/javafx/geom/Order2;->y0:D

    iget-wide v5, p0, Lcom/sun/javafx/geom/Order2;->cx0:D

    iget-wide v7, p0, Lcom/sun/javafx/geom/Order2;->cy0:D

    iget-wide v9, p0, Lcom/sun/javafx/geom/Order2;->x1:D

    iget-wide v11, p0, Lcom/sun/javafx/geom/Order2;->y1:D

    iget p0, p0, Lcom/sun/javafx/geom/Curve;->direction:I

    neg-int v13, p0

    move-object v0, v14

    invoke-direct/range {v0 .. v13}, Lcom/sun/javafx/geom/Order2;-><init>(DDDDDDI)V

    return-object v14
.end method

.method public getSegment([F)I
    .locals 4

    iget-wide v0, p0, Lcom/sun/javafx/geom/Order2;->cx0:D

    double-to-float v0, v0

    const/4 v1, 0x0

    aput v0, p1, v1

    iget-wide v0, p0, Lcom/sun/javafx/geom/Order2;->cy0:D

    double-to-float v0, v0

    const/4 v1, 0x1

    aput v0, p1, v1

    iget v0, p0, Lcom/sun/javafx/geom/Curve;->direction:I

    const/4 v2, 0x3

    const/4 v3, 0x2

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, Lcom/sun/javafx/geom/Order2;->x1:D

    double-to-float v0, v0

    aput v0, p1, v3

    iget-wide v0, p0, Lcom/sun/javafx/geom/Order2;->y1:D

    double-to-float p0, v0

    aput p0, p1, v2

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/sun/javafx/geom/Order2;->x0:D

    double-to-float v0, v0

    aput v0, p1, v3

    iget-wide v0, p0, Lcom/sun/javafx/geom/Order2;->y0:D

    double-to-float p0, v0

    aput p0, p1, v2

    :goto_0
    return v3
.end method

.method public getSubCurve(DDI)Lcom/sun/javafx/geom/Curve;
    .locals 16

    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/sun/javafx/geom/Order2;->y0:D

    cmpg-double v1, p1, v1

    const-wide/16 v11, 0x0

    if-gtz v1, :cond_1

    iget-wide v1, v0, Lcom/sun/javafx/geom/Order2;->y1:D

    cmpl-double v1, p3, v1

    if-ltz v1, :cond_0

    move/from16 v13, p5

    invoke-virtual {v0, v13}, Lcom/sun/javafx/geom/Curve;->getWithDirection(I)Lcom/sun/javafx/geom/Curve;

    move-result-object v0

    return-object v0

    :cond_0
    move/from16 v13, p5

    move-wide v9, v11

    goto :goto_0

    :cond_1
    move/from16 v13, p5

    iget-wide v5, v0, Lcom/sun/javafx/geom/Order2;->ycoeff0:D

    iget-wide v7, v0, Lcom/sun/javafx/geom/Order2;->ycoeff1:D

    iget-wide v9, v0, Lcom/sun/javafx/geom/Order2;->ycoeff2:D

    move-wide/from16 v3, p1

    invoke-static/range {v3 .. v10}, Lcom/sun/javafx/geom/Order2;->TforY(DDDD)D

    move-result-wide v1

    move-wide v9, v1

    :goto_0
    iget-wide v1, v0, Lcom/sun/javafx/geom/Order2;->y1:D

    cmpl-double v1, p3, v1

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    if-ltz v1, :cond_2

    move-wide v1, v14

    goto :goto_1

    :cond_2
    iget-wide v3, v0, Lcom/sun/javafx/geom/Order2;->ycoeff0:D

    iget-wide v5, v0, Lcom/sun/javafx/geom/Order2;->ycoeff1:D

    iget-wide v7, v0, Lcom/sun/javafx/geom/Order2;->ycoeff2:D

    move-wide/from16 v1, p3

    invoke-static/range {v1 .. v8}, Lcom/sun/javafx/geom/Order2;->TforY(DDDD)D

    move-result-wide v1

    :goto_1
    const/16 v3, 0xa

    new-array v3, v3, [D

    iget-wide v4, v0, Lcom/sun/javafx/geom/Order2;->x0:D

    const/4 v6, 0x0

    aput-wide v4, v3, v6

    const/4 v4, 0x1

    iget-wide v7, v0, Lcom/sun/javafx/geom/Order2;->y0:D

    aput-wide v7, v3, v4

    iget-wide v4, v0, Lcom/sun/javafx/geom/Order2;->cx0:D

    const/4 v7, 0x2

    aput-wide v4, v3, v7

    iget-wide v4, v0, Lcom/sun/javafx/geom/Order2;->cy0:D

    const/4 v7, 0x3

    aput-wide v4, v3, v7

    iget-wide v4, v0, Lcom/sun/javafx/geom/Order2;->x1:D

    const/4 v7, 0x4

    aput-wide v4, v3, v7

    const/4 v4, 0x5

    iget-wide v7, v0, Lcom/sun/javafx/geom/Order2;->y1:D

    aput-wide v7, v3, v4

    cmpg-double v0, v1, v14

    if-gez v0, :cond_3

    invoke-static {v3, v6, v1, v2}, Lcom/sun/javafx/geom/Order2;->split([DID)V

    :cond_3
    cmpg-double v0, v9, v11

    if-gtz v0, :cond_4

    goto :goto_2

    :cond_4
    div-double/2addr v9, v1

    invoke-static {v3, v6, v9, v10}, Lcom/sun/javafx/geom/Order2;->split([DID)V

    const/4 v6, 0x4

    :goto_2
    new-instance v14, Lcom/sun/javafx/geom/Order2;

    add-int/lit8 v0, v6, 0x0

    aget-wide v1, v3, v0

    add-int/lit8 v0, v6, 0x2

    aget-wide v7, v3, v0

    add-int/lit8 v0, v6, 0x3

    aget-wide v9, v3, v0

    const/4 v0, 0x4

    add-int/2addr v6, v0

    aget-wide v11, v3, v6

    move-object v0, v14

    move-wide/from16 v3, p1

    move-wide v5, v7

    move-wide v7, v9

    move-wide v9, v11

    move-wide/from16 v11, p3

    move/from16 v13, p5

    invoke-direct/range {v0 .. v13}, Lcom/sun/javafx/geom/Order2;-><init>(DDDDDDI)V

    return-object v14
.end method

.method public getX0()D
    .locals 2

    iget v0, p0, Lcom/sun/javafx/geom/Curve;->direction:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, Lcom/sun/javafx/geom/Order2;->x0:D

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/sun/javafx/geom/Order2;->x1:D

    :goto_0
    return-wide v0
.end method

.method public getX1()D
    .locals 2

    iget v0, p0, Lcom/sun/javafx/geom/Curve;->direction:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, Lcom/sun/javafx/geom/Order2;->x0:D

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/sun/javafx/geom/Order2;->x1:D

    :goto_0
    return-wide v0
.end method

.method public getXBot()D
    .locals 2

    iget-wide v0, p0, Lcom/sun/javafx/geom/Order2;->x1:D

    return-wide v0
.end method

.method public getXMax()D
    .locals 2

    iget-wide v0, p0, Lcom/sun/javafx/geom/Order2;->xmax:D

    return-wide v0
.end method

.method public getXMin()D
    .locals 2

    iget-wide v0, p0, Lcom/sun/javafx/geom/Order2;->xmin:D

    return-wide v0
.end method

.method public getXTop()D
    .locals 2

    iget-wide v0, p0, Lcom/sun/javafx/geom/Order2;->x0:D

    return-wide v0
.end method

.method public getY0()D
    .locals 2

    iget v0, p0, Lcom/sun/javafx/geom/Curve;->direction:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, Lcom/sun/javafx/geom/Order2;->y0:D

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/sun/javafx/geom/Order2;->y1:D

    :goto_0
    return-wide v0
.end method

.method public getY1()D
    .locals 2

    iget v0, p0, Lcom/sun/javafx/geom/Curve;->direction:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, Lcom/sun/javafx/geom/Order2;->y0:D

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/sun/javafx/geom/Order2;->y1:D

    :goto_0
    return-wide v0
.end method

.method public getYBot()D
    .locals 2

    iget-wide v0, p0, Lcom/sun/javafx/geom/Order2;->y1:D

    return-wide v0
.end method

.method public getYTop()D
    .locals 2

    iget-wide v0, p0, Lcom/sun/javafx/geom/Order2;->y0:D

    return-wide v0
.end method

.method public nextVertical(DD)D
    .locals 6

    iget-wide v0, p0, Lcom/sun/javafx/geom/Order2;->xcoeff1:D

    neg-double v0, v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    iget-wide v4, p0, Lcom/sun/javafx/geom/Order2;->xcoeff2:D

    mul-double/2addr v4, v2

    div-double/2addr v0, v4

    cmpl-double p0, v0, p1

    if-lez p0, :cond_0

    cmpg-double p0, v0, p3

    if-gez p0, :cond_0

    return-wide v0

    :cond_0
    return-wide p3
.end method
