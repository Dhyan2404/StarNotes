.class public final Lcom/sun/javafx/geom/Order3;
.super Lcom/sun/javafx/geom/Curve;
.source "SourceFile"


# instance fields
.field private TforY1:D

.field private TforY2:D

.field private TforY3:D

.field private YforT1:D

.field private YforT2:D

.field private YforT3:D

.field private cx0:D

.field private cx1:D

.field private cy0:D

.field private cy1:D

.field private x0:D

.field private x1:D

.field private xcoeff0:D

.field private xcoeff1:D

.field private xcoeff2:D

.field private xcoeff3:D

.field private xmax:D

.field private xmin:D

.field private y0:D

.field private y1:D

.field private ycoeff0:D

.field private ycoeff1:D

.field private ycoeff2:D

.field private ycoeff3:D


# direct methods
.method public constructor <init>(DDDDDDDDI)V
    .locals 17

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    move-wide/from16 v5, p5

    move-wide/from16 v7, p9

    move-wide/from16 v9, p13

    move-wide/from16 v11, p15

    move/from16 v13, p17

    invoke-direct {v0, v13}, Lcom/sun/javafx/geom/Curve;-><init>(I)V

    cmpg-double v13, p7, v3

    if-gez v13, :cond_0

    move-wide v13, v3

    goto :goto_0

    :cond_0
    move-wide/from16 v13, p7

    :goto_0
    cmpl-double v15, p11, v11

    if-lez v15, :cond_1

    goto :goto_1

    :cond_1
    move-wide/from16 v11, p11

    :goto_1
    iput-wide v1, v0, Lcom/sun/javafx/geom/Order3;->x0:D

    iput-wide v3, v0, Lcom/sun/javafx/geom/Order3;->y0:D

    iput-wide v5, v0, Lcom/sun/javafx/geom/Order3;->cx0:D

    iput-wide v13, v0, Lcom/sun/javafx/geom/Order3;->cy0:D

    iput-wide v7, v0, Lcom/sun/javafx/geom/Order3;->cx1:D

    iput-wide v11, v0, Lcom/sun/javafx/geom/Order3;->cy1:D

    iput-wide v9, v0, Lcom/sun/javafx/geom/Order3;->x1:D

    move-wide v15, v11

    move-wide/from16 v11, p15

    iput-wide v11, v0, Lcom/sun/javafx/geom/Order3;->y1:D

    invoke-static {v1, v2, v9, v10}, Ljava/lang/Math;->min(DD)D

    move-result-wide v11

    move-wide/from16 p7, v13

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->min(DD)D

    move-result-wide v13

    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->min(DD)D

    move-result-wide v11

    iput-wide v11, v0, Lcom/sun/javafx/geom/Order3;->xmin:D

    invoke-static {v1, v2, v9, v10}, Ljava/lang/Math;->max(DD)D

    move-result-wide v11

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->max(DD)D

    move-result-wide v13

    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->max(DD)D

    move-result-wide v11

    iput-wide v11, v0, Lcom/sun/javafx/geom/Order3;->xmax:D

    iput-wide v1, v0, Lcom/sun/javafx/geom/Order3;->xcoeff0:D

    sub-double v11, v5, v1

    const-wide/high16 v13, 0x4008000000000000L    # 3.0

    mul-double/2addr v11, v13

    iput-wide v11, v0, Lcom/sun/javafx/geom/Order3;->xcoeff1:D

    sub-double/2addr v7, v5

    sub-double v5, v7, v5

    add-double/2addr v5, v1

    mul-double/2addr v5, v13

    iput-wide v5, v0, Lcom/sun/javafx/geom/Order3;->xcoeff2:D

    mul-double/2addr v7, v13

    sub-double v5, v9, v7

    sub-double/2addr v5, v1

    iput-wide v5, v0, Lcom/sun/javafx/geom/Order3;->xcoeff3:D

    iput-wide v3, v0, Lcom/sun/javafx/geom/Order3;->ycoeff0:D

    move-wide/from16 v1, p7

    sub-double v5, v1, v3

    mul-double/2addr v5, v13

    iput-wide v5, v0, Lcom/sun/javafx/geom/Order3;->ycoeff1:D

    sub-double v11, v15, v1

    sub-double v1, v11, v1

    add-double/2addr v1, v3

    mul-double/2addr v1, v13

    iput-wide v1, v0, Lcom/sun/javafx/geom/Order3;->ycoeff2:D

    mul-double/2addr v11, v13

    sub-double v1, p15, v11

    sub-double/2addr v1, v3

    iput-wide v1, v0, Lcom/sun/javafx/geom/Order3;->ycoeff3:D

    iput-wide v3, v0, Lcom/sun/javafx/geom/Order3;->YforT3:D

    iput-wide v3, v0, Lcom/sun/javafx/geom/Order3;->YforT2:D

    iput-wide v3, v0, Lcom/sun/javafx/geom/Order3;->YforT1:D

    return-void
.end method

.method public static addInstance(Ljava/util/Vector;DDDDDDDDI)V
    .locals 21

    move-object/from16 v0, p0

    cmpl-double v1, p3, p15

    if-lez v1, :cond_0

    new-instance v14, Lcom/sun/javafx/geom/Order3;

    move-object v1, v14

    move/from16 v15, p17

    neg-int v2, v15

    move/from16 v18, v2

    move-wide/from16 v2, p13

    move-wide/from16 v4, p15

    move-wide/from16 v6, p9

    move-wide/from16 v8, p11

    move-wide/from16 v10, p5

    move-wide/from16 v12, p7

    move-object/from16 v19, v14

    move-wide/from16 v14, p1

    move-wide/from16 v16, p3

    invoke-direct/range {v1 .. v18}, Lcom/sun/javafx/geom/Order3;-><init>(DDDDDDDDI)V

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    move/from16 v15, p17

    cmpl-double v1, p15, p3

    if-lez v1, :cond_1

    new-instance v14, Lcom/sun/javafx/geom/Order3;

    move-object v1, v14

    move-wide/from16 v2, p1

    move-wide/from16 v4, p3

    move-wide/from16 v6, p5

    move-wide/from16 v8, p7

    move-wide/from16 v10, p9

    move-wide/from16 v12, p11

    move-object/from16 v20, v14

    move-wide/from16 v14, p13

    move-wide/from16 v16, p15

    move/from16 v18, p17

    invoke-direct/range {v1 .. v18}, Lcom/sun/javafx/geom/Order3;-><init>(DDDDDDDDI)V

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public static getHorizontalParams(DDDD[D)I
    .locals 4

    cmpg-double v0, p0, p2

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    cmpg-double v0, p2, p4

    if-gtz v0, :cond_0

    cmpg-double v0, p4, p6

    if-gtz v0, :cond_0

    return v1

    :cond_0
    sub-double/2addr p6, p4

    sub-double/2addr p4, p2

    sub-double/2addr p2, p0

    aput-wide p2, p8, v1

    sub-double p0, p4, p2

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    mul-double/2addr p0, v2

    const/4 v0, 0x1

    aput-wide p0, p8, v0

    sub-double/2addr p6, p4

    sub-double/2addr p6, p4

    add-double/2addr p6, p2

    const/4 p0, 0x2

    aput-wide p6, p8, p0

    invoke-static {p8, p8}, Lcom/sun/javafx/geom/Order3;->solveQuadratic([D[D)I

    move-result p0

    move p1, v1

    :goto_0
    if-ge v1, p0, :cond_3

    aget-wide p2, p8, v1

    const-wide/16 p4, 0x0

    cmpl-double p4, p2, p4

    if-lez p4, :cond_2

    const-wide/high16 p4, 0x3ff0000000000000L    # 1.0

    cmpg-double p4, p2, p4

    if-gez p4, :cond_2

    if-ge p1, v1, :cond_1

    aput-wide p2, p8, p1

    :cond_1
    add-int/lit8 p1, p1, 0x1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return p1
.end method

.method public static insert(Ljava/util/Vector;[DDDDDDDDDI)V
    .locals 28

    move-object/from16 v9, p1

    move/from16 v15, p18

    move-wide/from16 v0, p4

    move-wide/from16 v2, p8

    move-wide/from16 v4, p12

    move-wide/from16 v6, p16

    move-object/from16 v8, p1

    invoke-static/range {v0 .. v8}, Lcom/sun/javafx/geom/Order3;->getHorizontalParams(DDDD[D)I

    move-result v0

    if-nez v0, :cond_0

    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    move-wide/from16 v3, p4

    move-wide/from16 v5, p6

    move-wide/from16 v7, p8

    move-wide/from16 v9, p10

    move-wide/from16 v11, p12

    move-wide/from16 v13, p14

    move-wide/from16 v15, p16

    move/from16 v17, p18

    invoke-static/range {v0 .. v17}, Lcom/sun/javafx/geom/Order3;->addInstance(Ljava/util/Vector;DDDDDDDDI)V

    return-void

    :cond_0
    const/4 v1, 0x3

    aput-wide p2, v9, v1

    const/4 v2, 0x4

    aput-wide p4, v9, v2

    const/4 v2, 0x5

    aput-wide p6, v9, v2

    const/4 v2, 0x6

    aput-wide p8, v9, v2

    const/4 v2, 0x7

    aput-wide p10, v9, v2

    const/16 v2, 0x8

    aput-wide p12, v9, v2

    const/16 v2, 0x9

    aput-wide p14, v9, v2

    const/16 v3, 0xa

    aput-wide p16, v9, v3

    const/4 v3, 0x0

    aget-wide v4, v9, v3

    const/4 v6, 0x1

    if-le v0, v6, :cond_1

    aget-wide v7, v9, v6

    cmpl-double v10, v4, v7

    if-lez v10, :cond_1

    aput-wide v7, v9, v3

    aput-wide v4, v9, v6

    move-wide v4, v7

    :cond_1
    invoke-static {v9, v1, v4, v5}, Lcom/sun/javafx/geom/Order3;->split([DID)V

    if-le v0, v6, :cond_2

    aget-wide v7, v9, v6

    sub-double/2addr v7, v4

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v10, v4

    div-double/2addr v7, v10

    invoke-static {v9, v2, v7, v8}, Lcom/sun/javafx/geom/Order3;->split([DID)V

    :cond_2
    const/4 v2, -0x1

    move/from16 v3, p18

    if-ne v3, v2, :cond_3

    mul-int/lit8 v2, v0, 0x6

    add-int/2addr v1, v2

    :cond_3
    :goto_0
    if-ltz v0, :cond_5

    add-int/lit8 v2, v1, 0x0

    aget-wide v11, v9, v2

    add-int/lit8 v2, v1, 0x1

    aget-wide v13, v9, v2

    add-int/lit8 v2, v1, 0x2

    aget-wide v15, v9, v2

    add-int/lit8 v2, v1, 0x3

    aget-wide v17, v9, v2

    add-int/lit8 v2, v1, 0x4

    aget-wide v19, v9, v2

    add-int/lit8 v2, v1, 0x5

    aget-wide v21, v9, v2

    add-int/lit8 v2, v1, 0x6

    aget-wide v23, v9, v2

    add-int/lit8 v4, v1, 0x7

    aget-wide v25, v9, v4

    move-object/from16 v10, p0

    move/from16 v27, p18

    invoke-static/range {v10 .. v27}, Lcom/sun/javafx/geom/Order3;->addInstance(Ljava/util/Vector;DDDDDDDDI)V

    add-int/lit8 v0, v0, -0x1

    if-ne v3, v6, :cond_4

    move v1, v2

    goto :goto_0

    :cond_4
    add-int/lit8 v1, v1, -0x6

    goto :goto_0

    :cond_5
    return-void
.end method

.method public static solveQuadratic([D[D)I
    .locals 15

    const/4 v0, 0x2

    aget-wide v1, p0, v0

    const/4 v3, 0x1

    aget-wide v4, p0, v3

    const/4 v6, 0x0

    aget-wide v7, p0, v6

    const-wide/16 v9, 0x0

    cmpl-double v11, v1, v9

    if-nez v11, :cond_2

    cmpl-double v0, v4, v9

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    neg-double v0, v7

    div-double/2addr v0, v4

    aput-wide v0, p1, v6

    :cond_1
    move v0, v3

    goto :goto_0

    :cond_2
    mul-double v11, v4, v4

    const-wide/high16 v13, 0x4010000000000000L    # 4.0

    mul-double/2addr v13, v1

    mul-double/2addr v13, v7

    sub-double/2addr v11, v13

    cmpg-double v13, v11, v9

    if-gez v13, :cond_3

    return v6

    :cond_3
    invoke-static {v11, v12}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v11

    cmpg-double v13, v4, v9

    if-gez v13, :cond_4

    neg-double v11, v11

    :cond_4
    add-double/2addr v4, v11

    const-wide/high16 v11, -0x4000000000000000L    # -2.0

    div-double/2addr v4, v11

    div-double v1, v4, v1

    aput-wide v1, p1, v6

    cmpl-double v1, v4, v9

    if-eqz v1, :cond_1

    div-double/2addr v7, v4

    aput-wide v7, p1, v3

    :goto_0
    return v0
.end method

.method public static split([DID)V
    .locals 24

    add-int/lit8 v0, p1, 0xc

    add-int/lit8 v1, p1, 0x6

    aget-wide v2, p0, v1

    aput-wide v2, p0, v0

    add-int/lit8 v0, p1, 0xd

    add-int/lit8 v4, p1, 0x7

    aget-wide v5, p0, v4

    aput-wide v5, p0, v0

    add-int/lit8 v0, p1, 0x4

    aget-wide v7, p0, v0

    add-int/lit8 v9, p1, 0x5

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

    add-int/lit8 v16, p1, 0x2

    aget-wide v17, p0, v16

    add-int/lit8 v19, p1, 0x3

    aget-wide v20, p0, v19

    sub-double v22, v17, v12

    mul-double v22, v22, p2

    add-double v12, v12, v22

    sub-double v22, v20, v14

    mul-double v22, v22, p2

    add-double v14, v14, v22

    sub-double v7, v7, v17

    mul-double v7, v7, p2

    add-double v17, v17, v7

    sub-double v10, v10, v20

    mul-double v10, v10, p2

    add-double v20, v20, v10

    sub-double v7, v2, v17

    mul-double v7, v7, p2

    add-double v7, v17, v7

    sub-double v10, v5, v20

    mul-double v10, v10, p2

    add-double v10, v20, v10

    sub-double v17, v17, v12

    mul-double v17, v17, p2

    add-double v17, v12, v17

    sub-double v20, v20, v14

    mul-double v20, v20, p2

    add-double v20, v14, v20

    aput-wide v12, p0, v16

    aput-wide v14, p0, v19

    aput-wide v17, p0, v0

    aput-wide v20, p0, v9

    sub-double v12, v7, v17

    mul-double v12, v12, p2

    add-double v17, v17, v12

    aput-wide v17, p0, v1

    sub-double v0, v10, v20

    mul-double v0, v0, p2

    add-double v20, v20, v0

    aput-wide v20, p0, v4

    add-int/lit8 v0, p1, 0x8

    aput-wide v7, p0, v0

    add-int/lit8 v0, p1, 0x9

    aput-wide v10, p0, v0

    add-int/lit8 v0, p1, 0xa

    aput-wide v2, p0, v0

    add-int/lit8 v0, p1, 0xb

    aput-wide v5, p0, v0

    return-void
.end method


# virtual methods
.method public TforY(D)D
    .locals 36

    move-object/from16 v11, p0

    move-wide/from16 v12, p1

    iget-wide v0, v11, Lcom/sun/javafx/geom/Order3;->y0:D

    cmpg-double v0, v12, v0

    const-wide/16 v14, 0x0

    if-gtz v0, :cond_0

    return-wide v14

    :cond_0
    iget-wide v0, v11, Lcom/sun/javafx/geom/Order3;->y1:D

    cmpl-double v0, v12, v0

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    if-ltz v0, :cond_1

    return-wide v16

    :cond_1
    iget-wide v0, v11, Lcom/sun/javafx/geom/Order3;->YforT1:D

    cmpl-double v0, v12, v0

    if-nez v0, :cond_2

    iget-wide v0, v11, Lcom/sun/javafx/geom/Order3;->TforY1:D

    return-wide v0

    :cond_2
    iget-wide v0, v11, Lcom/sun/javafx/geom/Order3;->YforT2:D

    cmpl-double v0, v12, v0

    if-nez v0, :cond_3

    iget-wide v0, v11, Lcom/sun/javafx/geom/Order3;->TforY2:D

    return-wide v0

    :cond_3
    iget-wide v0, v11, Lcom/sun/javafx/geom/Order3;->YforT3:D

    cmpl-double v0, v12, v0

    if-nez v0, :cond_4

    iget-wide v0, v11, Lcom/sun/javafx/geom/Order3;->TforY3:D

    return-wide v0

    :cond_4
    iget-wide v0, v11, Lcom/sun/javafx/geom/Order3;->ycoeff3:D

    cmpl-double v2, v0, v14

    if-nez v2, :cond_5

    iget-wide v2, v11, Lcom/sun/javafx/geom/Order3;->ycoeff0:D

    iget-wide v4, v11, Lcom/sun/javafx/geom/Order3;->ycoeff1:D

    iget-wide v6, v11, Lcom/sun/javafx/geom/Order3;->ycoeff2:D

    move-wide/from16 v0, p1

    invoke-static/range {v0 .. v7}, Lcom/sun/javafx/geom/Order2;->TforY(DDDD)D

    move-result-wide v0

    return-wide v0

    :cond_5
    iget-wide v2, v11, Lcom/sun/javafx/geom/Order3;->ycoeff2:D

    div-double v18, v2, v0

    iget-wide v2, v11, Lcom/sun/javafx/geom/Order3;->ycoeff1:D

    div-double v20, v2, v0

    iget-wide v2, v11, Lcom/sun/javafx/geom/Order3;->ycoeff0:D

    sub-double/2addr v2, v12

    div-double v22, v2, v0

    mul-double v0, v18, v18

    const-wide/high16 v24, 0x4008000000000000L    # 3.0

    mul-double v2, v20, v24

    sub-double/2addr v0, v2

    const-wide/high16 v2, 0x4022000000000000L    # 9.0

    div-double/2addr v0, v2

    const-wide/high16 v26, 0x4000000000000000L    # 2.0

    mul-double v4, v18, v26

    mul-double v4, v4, v18

    mul-double v4, v4, v18

    mul-double v2, v2, v18

    mul-double v2, v2, v20

    sub-double/2addr v4, v2

    const-wide/high16 v2, 0x403b000000000000L    # 27.0

    mul-double v2, v2, v22

    add-double/2addr v4, v2

    const-wide/high16 v2, 0x404b000000000000L    # 54.0

    div-double/2addr v4, v2

    mul-double v2, v4, v4

    mul-double v6, v0, v0

    mul-double/2addr v6, v0

    div-double v28, v18, v24

    cmpg-double v8, v2, v6

    if-gez v8, :cond_7

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    div-double/2addr v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->acos(D)D

    move-result-wide v30

    const-wide/high16 v2, -0x4000000000000000L    # -2.0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    mul-double v32, v0, v2

    div-double v0, v30, v24

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    mul-double v0, v0, v32

    sub-double v9, v0, v28

    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    move-wide/from16 v3, v20

    move-wide/from16 v5, v22

    move-wide/from16 v7, p1

    invoke-virtual/range {v0 .. v10}, Lcom/sun/javafx/geom/Order3;->refine(DDDDD)D

    move-result-wide v0

    cmpg-double v2, v0, v14

    const-wide v34, 0x401921fb54442d18L    # 6.283185307179586

    if-gez v2, :cond_6

    add-double v0, v30, v34

    div-double v0, v0, v24

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    mul-double v0, v0, v32

    sub-double v9, v0, v28

    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    move-wide/from16 v3, v20

    move-wide/from16 v5, v22

    move-wide/from16 v7, p1

    invoke-virtual/range {v0 .. v10}, Lcom/sun/javafx/geom/Order3;->refine(DDDDD)D

    move-result-wide v0

    :cond_6
    cmpg-double v2, v0, v14

    if-gez v2, :cond_c

    sub-double v30, v30, v34

    div-double v30, v30, v24

    invoke-static/range {v30 .. v31}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    mul-double v32, v32, v0

    sub-double v9, v32, v28

    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    move-wide/from16 v3, v20

    move-wide/from16 v5, v22

    move-wide/from16 v7, p1

    invoke-virtual/range {v0 .. v10}, Lcom/sun/javafx/geom/Order3;->refine(DDDDD)D

    move-result-wide v0

    goto :goto_2

    :cond_7
    cmpg-double v8, v4, v14

    if-gez v8, :cond_8

    const/4 v8, 0x1

    goto :goto_0

    :cond_8
    const/4 v8, 0x0

    :goto_0
    sub-double/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    if-eqz v8, :cond_9

    neg-double v4, v4

    :cond_9
    add-double/2addr v4, v2

    const-wide v2, 0x3fd5555555555555L    # 0.3333333333333333

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    if-nez v8, :cond_a

    neg-double v2, v2

    :cond_a
    cmpl-double v4, v2, v14

    if-nez v4, :cond_b

    move-wide v0, v14

    goto :goto_1

    :cond_b
    div-double/2addr v0, v2

    :goto_1
    add-double/2addr v2, v0

    sub-double v9, v2, v28

    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    move-wide/from16 v3, v20

    move-wide/from16 v5, v22

    move-wide/from16 v7, p1

    invoke-virtual/range {v0 .. v10}, Lcom/sun/javafx/geom/Order3;->refine(DDDDD)D

    move-result-wide v0

    :cond_c
    :goto_2
    cmpg-double v2, v0, v14

    if-gez v2, :cond_10

    move-wide v0, v14

    :goto_3
    add-double v2, v0, v16

    div-double v2, v2, v26

    cmpl-double v4, v2, v0

    if-eqz v4, :cond_f

    cmpl-double v4, v2, v16

    if-nez v4, :cond_d

    goto :goto_4

    :cond_d
    invoke-virtual {v11, v2, v3}, Lcom/sun/javafx/geom/Order3;->YforT(D)D

    move-result-wide v4

    cmpg-double v6, v4, v12

    if-gez v6, :cond_e

    move-wide v0, v2

    goto :goto_3

    :cond_e
    cmpl-double v4, v4, v12

    if-lez v4, :cond_f

    move-wide/from16 v16, v2

    goto :goto_3

    :cond_f
    :goto_4
    move-wide v0, v2

    :cond_10
    cmpl-double v2, v0, v14

    if-ltz v2, :cond_11

    iget-wide v2, v11, Lcom/sun/javafx/geom/Order3;->TforY2:D

    iput-wide v2, v11, Lcom/sun/javafx/geom/Order3;->TforY3:D

    iget-wide v2, v11, Lcom/sun/javafx/geom/Order3;->YforT2:D

    iput-wide v2, v11, Lcom/sun/javafx/geom/Order3;->YforT3:D

    iget-wide v2, v11, Lcom/sun/javafx/geom/Order3;->TforY1:D

    iput-wide v2, v11, Lcom/sun/javafx/geom/Order3;->TforY2:D

    iget-wide v2, v11, Lcom/sun/javafx/geom/Order3;->YforT1:D

    iput-wide v2, v11, Lcom/sun/javafx/geom/Order3;->YforT2:D

    iput-wide v0, v11, Lcom/sun/javafx/geom/Order3;->TforY1:D

    iput-wide v12, v11, Lcom/sun/javafx/geom/Order3;->YforT1:D

    :cond_11
    return-wide v0
.end method

.method public XforT(D)D
    .locals 4

    iget-wide v0, p0, Lcom/sun/javafx/geom/Order3;->xcoeff3:D

    mul-double/2addr v0, p1

    iget-wide v2, p0, Lcom/sun/javafx/geom/Order3;->xcoeff2:D

    add-double/2addr v0, v2

    mul-double/2addr v0, p1

    iget-wide v2, p0, Lcom/sun/javafx/geom/Order3;->xcoeff1:D

    add-double/2addr v0, v2

    mul-double/2addr v0, p1

    iget-wide p0, p0, Lcom/sun/javafx/geom/Order3;->xcoeff0:D

    add-double/2addr v0, p0

    return-wide v0
.end method

.method public XforY(D)D
    .locals 2

    iget-wide v0, p0, Lcom/sun/javafx/geom/Order3;->y0:D

    cmpg-double v0, p1, v0

    if-gtz v0, :cond_0

    iget-wide p0, p0, Lcom/sun/javafx/geom/Order3;->x0:D

    return-wide p0

    :cond_0
    iget-wide v0, p0, Lcom/sun/javafx/geom/Order3;->y1:D

    cmpl-double v0, p1, v0

    if-ltz v0, :cond_1

    iget-wide p0, p0, Lcom/sun/javafx/geom/Order3;->x1:D

    return-wide p0

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/sun/javafx/geom/Order3;->TforY(D)D

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/sun/javafx/geom/Order3;->XforT(D)D

    move-result-wide p0

    return-wide p0
.end method

.method public YforT(D)D
    .locals 4

    iget-wide v0, p0, Lcom/sun/javafx/geom/Order3;->ycoeff3:D

    mul-double/2addr v0, p1

    iget-wide v2, p0, Lcom/sun/javafx/geom/Order3;->ycoeff2:D

    add-double/2addr v0, v2

    mul-double/2addr v0, p1

    iget-wide v2, p0, Lcom/sun/javafx/geom/Order3;->ycoeff1:D

    add-double/2addr v0, v2

    mul-double/2addr v0, p1

    iget-wide p0, p0, Lcom/sun/javafx/geom/Order3;->ycoeff0:D

    add-double/2addr v0, p0

    return-wide v0
.end method

.method public controlPointString()Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sun/javafx/geom/Order3;->getCX0()D

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/sun/javafx/geom/Curve;->round(D)D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sun/javafx/geom/Order3;->getCY0()D

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/sun/javafx/geom/Curve;->round(D)D

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v3, "), "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sun/javafx/geom/Order3;->getCX1()D

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/sun/javafx/geom/Curve;->round(D)D

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sun/javafx/geom/Order3;->getCY1()D

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/sun/javafx/geom/Curve;->round(D)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public dXforT(DI)D
    .locals 7

    if-eqz p3, :cond_3

    const/4 v0, 0x1

    const-wide/high16 v1, 0x4000000000000000L    # 2.0

    if-eq p3, v0, :cond_2

    const/4 v0, 0x2

    const-wide/high16 v3, 0x4018000000000000L    # 6.0

    if-eq p3, v0, :cond_1

    const/4 p1, 0x3

    if-eq p3, p1, :cond_0

    const-wide/16 p0, 0x0

    return-wide p0

    :cond_0
    iget-wide p0, p0, Lcom/sun/javafx/geom/Order3;->xcoeff3:D

    mul-double/2addr p0, v3

    return-wide p0

    :cond_1
    iget-wide v5, p0, Lcom/sun/javafx/geom/Order3;->xcoeff3:D

    mul-double/2addr v5, v3

    mul-double/2addr v5, p1

    iget-wide p0, p0, Lcom/sun/javafx/geom/Order3;->xcoeff2:D

    mul-double/2addr p0, v1

    :goto_0
    add-double/2addr v5, p0

    return-wide v5

    :cond_2
    const-wide/high16 v3, 0x4008000000000000L    # 3.0

    iget-wide v5, p0, Lcom/sun/javafx/geom/Order3;->xcoeff3:D

    mul-double/2addr v5, v3

    mul-double/2addr v5, p1

    iget-wide v3, p0, Lcom/sun/javafx/geom/Order3;->xcoeff2:D

    mul-double/2addr v3, v1

    add-double/2addr v5, v3

    mul-double/2addr v5, p1

    iget-wide p0, p0, Lcom/sun/javafx/geom/Order3;->xcoeff1:D

    goto :goto_0

    :cond_3
    iget-wide v0, p0, Lcom/sun/javafx/geom/Order3;->xcoeff3:D

    mul-double/2addr v0, p1

    iget-wide v2, p0, Lcom/sun/javafx/geom/Order3;->xcoeff2:D

    add-double/2addr v0, v2

    mul-double/2addr v0, p1

    iget-wide v2, p0, Lcom/sun/javafx/geom/Order3;->xcoeff1:D

    add-double/2addr v0, v2

    mul-double/2addr v0, p1

    iget-wide p0, p0, Lcom/sun/javafx/geom/Order3;->xcoeff0:D

    add-double/2addr v0, p0

    return-wide v0
.end method

.method public dYforT(DI)D
    .locals 7

    if-eqz p3, :cond_3

    const/4 v0, 0x1

    const-wide/high16 v1, 0x4000000000000000L    # 2.0

    if-eq p3, v0, :cond_2

    const/4 v0, 0x2

    const-wide/high16 v3, 0x4018000000000000L    # 6.0

    if-eq p3, v0, :cond_1

    const/4 p1, 0x3

    if-eq p3, p1, :cond_0

    const-wide/16 p0, 0x0

    return-wide p0

    :cond_0
    iget-wide p0, p0, Lcom/sun/javafx/geom/Order3;->ycoeff3:D

    mul-double/2addr p0, v3

    return-wide p0

    :cond_1
    iget-wide v5, p0, Lcom/sun/javafx/geom/Order3;->ycoeff3:D

    mul-double/2addr v5, v3

    mul-double/2addr v5, p1

    iget-wide p0, p0, Lcom/sun/javafx/geom/Order3;->ycoeff2:D

    mul-double/2addr p0, v1

    :goto_0
    add-double/2addr v5, p0

    return-wide v5

    :cond_2
    const-wide/high16 v3, 0x4008000000000000L    # 3.0

    iget-wide v5, p0, Lcom/sun/javafx/geom/Order3;->ycoeff3:D

    mul-double/2addr v5, v3

    mul-double/2addr v5, p1

    iget-wide v3, p0, Lcom/sun/javafx/geom/Order3;->ycoeff2:D

    mul-double/2addr v3, v1

    add-double/2addr v5, v3

    mul-double/2addr v5, p1

    iget-wide p0, p0, Lcom/sun/javafx/geom/Order3;->ycoeff1:D

    goto :goto_0

    :cond_3
    iget-wide v0, p0, Lcom/sun/javafx/geom/Order3;->ycoeff3:D

    mul-double/2addr v0, p1

    iget-wide v2, p0, Lcom/sun/javafx/geom/Order3;->ycoeff2:D

    add-double/2addr v0, v2

    mul-double/2addr v0, p1

    iget-wide v2, p0, Lcom/sun/javafx/geom/Order3;->ycoeff1:D

    add-double/2addr v0, v2

    mul-double/2addr v0, p1

    iget-wide p0, p0, Lcom/sun/javafx/geom/Order3;->ycoeff0:D

    add-double/2addr v0, p0

    return-wide v0
.end method

.method public enlarge(Lcom/sun/javafx/geom/RectBounds;)V
    .locals 8

    iget-wide v0, p0, Lcom/sun/javafx/geom/Order3;->x0:D

    double-to-float v0, v0

    iget-wide v1, p0, Lcom/sun/javafx/geom/Order3;->y0:D

    double-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Lcom/sun/javafx/geom/RectBounds;->add(FF)V

    const/4 v0, 0x3

    new-array v0, v0, [D

    iget-wide v1, p0, Lcom/sun/javafx/geom/Order3;->xcoeff1:D

    const/4 v3, 0x0

    aput-wide v1, v0, v3

    const-wide/high16 v1, 0x4000000000000000L    # 2.0

    iget-wide v4, p0, Lcom/sun/javafx/geom/Order3;->xcoeff2:D

    mul-double/2addr v4, v1

    const/4 v1, 0x1

    aput-wide v4, v0, v1

    const-wide/high16 v1, 0x4008000000000000L    # 3.0

    iget-wide v4, p0, Lcom/sun/javafx/geom/Order3;->xcoeff3:D

    mul-double/2addr v4, v1

    const/4 v1, 0x2

    aput-wide v4, v0, v1

    invoke-static {v0, v0}, Lcom/sun/javafx/geom/Order3;->solveQuadratic([D[D)I

    move-result v1

    :goto_0
    if-ge v3, v1, :cond_1

    aget-wide v4, v0, v3

    const-wide/16 v6, 0x0

    cmpl-double v2, v4, v6

    if-lez v2, :cond_0

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    cmpg-double v2, v4, v6

    if-gez v2, :cond_0

    invoke-virtual {p0, v4, v5}, Lcom/sun/javafx/geom/Order3;->XforT(D)D

    move-result-wide v6

    double-to-float v2, v6

    invoke-virtual {p0, v4, v5}, Lcom/sun/javafx/geom/Order3;->YforT(D)D

    move-result-wide v4

    double-to-float v4, v4

    invoke-virtual {p1, v2, v4}, Lcom/sun/javafx/geom/RectBounds;->add(FF)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iget-wide v0, p0, Lcom/sun/javafx/geom/Order3;->x1:D

    double-to-float v0, v0

    iget-wide v1, p0, Lcom/sun/javafx/geom/Order3;->y1:D

    double-to-float p0, v1

    invoke-virtual {p1, v0, p0}, Lcom/sun/javafx/geom/RectBounds;->add(FF)V

    return-void
.end method

.method public getCX0()D
    .locals 2

    iget v0, p0, Lcom/sun/javafx/geom/Curve;->direction:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, Lcom/sun/javafx/geom/Order3;->cx0:D

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/sun/javafx/geom/Order3;->cx1:D

    :goto_0
    return-wide v0
.end method

.method public getCX1()D
    .locals 2

    iget v0, p0, Lcom/sun/javafx/geom/Curve;->direction:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, Lcom/sun/javafx/geom/Order3;->cx0:D

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/sun/javafx/geom/Order3;->cx1:D

    :goto_0
    return-wide v0
.end method

.method public getCY0()D
    .locals 2

    iget v0, p0, Lcom/sun/javafx/geom/Curve;->direction:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, Lcom/sun/javafx/geom/Order3;->cy0:D

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/sun/javafx/geom/Order3;->cy1:D

    :goto_0
    return-wide v0
.end method

.method public getCY1()D
    .locals 2

    iget v0, p0, Lcom/sun/javafx/geom/Curve;->direction:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, Lcom/sun/javafx/geom/Order3;->cy0:D

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/sun/javafx/geom/Order3;->cy1:D

    :goto_0
    return-wide v0
.end method

.method public getOrder()I
    .locals 0

    const/4 p0, 0x3

    return p0
.end method

.method public getReversedCurve()Lcom/sun/javafx/geom/Curve;
    .locals 23

    move-object/from16 v0, p0

    new-instance v19, Lcom/sun/javafx/geom/Order3;

    move-object/from16 v1, v19

    iget-wide v2, v0, Lcom/sun/javafx/geom/Order3;->x0:D

    iget-wide v4, v0, Lcom/sun/javafx/geom/Order3;->y0:D

    iget-wide v6, v0, Lcom/sun/javafx/geom/Order3;->cx0:D

    iget-wide v8, v0, Lcom/sun/javafx/geom/Order3;->cy0:D

    iget-wide v10, v0, Lcom/sun/javafx/geom/Order3;->cx1:D

    iget-wide v12, v0, Lcom/sun/javafx/geom/Order3;->cy1:D

    iget-wide v14, v0, Lcom/sun/javafx/geom/Order3;->x1:D

    move-object/from16 v20, v1

    move-wide/from16 v21, v2

    iget-wide v1, v0, Lcom/sun/javafx/geom/Order3;->y1:D

    move-wide/from16 v16, v1

    iget v0, v0, Lcom/sun/javafx/geom/Curve;->direction:I

    neg-int v0, v0

    move/from16 v18, v0

    move-object/from16 v1, v20

    move-wide/from16 v2, v21

    invoke-direct/range {v1 .. v18}, Lcom/sun/javafx/geom/Order3;-><init>(DDDDDDDDI)V

    return-object v19
.end method

.method public getSegment([F)I
    .locals 9

    iget v0, p0, Lcom/sun/javafx/geom/Curve;->direction:I

    const/4 v1, 0x5

    const/4 v2, 0x4

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x1

    if-ne v0, v6, :cond_0

    iget-wide v7, p0, Lcom/sun/javafx/geom/Order3;->cx0:D

    double-to-float v0, v7

    aput v0, p1, v4

    iget-wide v7, p0, Lcom/sun/javafx/geom/Order3;->cy0:D

    double-to-float v0, v7

    aput v0, p1, v6

    iget-wide v6, p0, Lcom/sun/javafx/geom/Order3;->cx1:D

    double-to-float v0, v6

    aput v0, p1, v3

    iget-wide v3, p0, Lcom/sun/javafx/geom/Order3;->cy1:D

    double-to-float v0, v3

    aput v0, p1, v5

    iget-wide v3, p0, Lcom/sun/javafx/geom/Order3;->x1:D

    double-to-float v0, v3

    aput v0, p1, v2

    iget-wide v2, p0, Lcom/sun/javafx/geom/Order3;->y1:D

    double-to-float p0, v2

    aput p0, p1, v1

    goto :goto_0

    :cond_0
    iget-wide v7, p0, Lcom/sun/javafx/geom/Order3;->cx1:D

    double-to-float v0, v7

    aput v0, p1, v4

    iget-wide v7, p0, Lcom/sun/javafx/geom/Order3;->cy1:D

    double-to-float v0, v7

    aput v0, p1, v6

    iget-wide v6, p0, Lcom/sun/javafx/geom/Order3;->cx0:D

    double-to-float v0, v6

    aput v0, p1, v3

    iget-wide v3, p0, Lcom/sun/javafx/geom/Order3;->cy0:D

    double-to-float v0, v3

    aput v0, p1, v5

    iget-wide v3, p0, Lcom/sun/javafx/geom/Order3;->x0:D

    double-to-float v0, v3

    aput v0, p1, v2

    iget-wide v2, p0, Lcom/sun/javafx/geom/Order3;->y0:D

    double-to-float p0, v2

    aput p0, p1, v1

    :goto_0
    return v5
.end method

.method public getSubCurve(DDI)Lcom/sun/javafx/geom/Curve;
    .locals 21

    move-object/from16 v0, p0

    move-wide/from16 v3, p3

    iget-wide v1, v0, Lcom/sun/javafx/geom/Order3;->y0:D

    cmpg-double v1, p1, v1

    if-gtz v1, :cond_0

    iget-wide v1, v0, Lcom/sun/javafx/geom/Order3;->y1:D

    cmpl-double v1, v3, v1

    if-ltz v1, :cond_0

    move/from16 v15, p5

    invoke-virtual {v0, v15}, Lcom/sun/javafx/geom/Curve;->getWithDirection(I)Lcom/sun/javafx/geom/Curve;

    move-result-object v0

    return-object v0

    :cond_0
    move/from16 v15, p5

    const/16 v1, 0xe

    new-array v13, v1, [D

    invoke-virtual/range {p0 .. p2}, Lcom/sun/javafx/geom/Order3;->TforY(D)D

    move-result-wide v1

    invoke-virtual {v0, v3, v4}, Lcom/sun/javafx/geom/Order3;->TforY(D)D

    move-result-wide v5

    iget-wide v7, v0, Lcom/sun/javafx/geom/Order3;->x0:D

    const/4 v9, 0x0

    aput-wide v7, v13, v9

    const/4 v7, 0x1

    iget-wide v10, v0, Lcom/sun/javafx/geom/Order3;->y0:D

    aput-wide v10, v13, v7

    iget-wide v7, v0, Lcom/sun/javafx/geom/Order3;->cx0:D

    const/4 v10, 0x2

    aput-wide v7, v13, v10

    iget-wide v7, v0, Lcom/sun/javafx/geom/Order3;->cy0:D

    const/4 v10, 0x3

    aput-wide v7, v13, v10

    iget-wide v7, v0, Lcom/sun/javafx/geom/Order3;->cx1:D

    const/4 v10, 0x4

    aput-wide v7, v13, v10

    iget-wide v7, v0, Lcom/sun/javafx/geom/Order3;->cy1:D

    const/4 v10, 0x5

    aput-wide v7, v13, v10

    iget-wide v7, v0, Lcom/sun/javafx/geom/Order3;->x1:D

    const/4 v14, 0x6

    aput-wide v7, v13, v14

    const/4 v7, 0x7

    iget-wide v10, v0, Lcom/sun/javafx/geom/Order3;->y1:D

    aput-wide v10, v13, v7

    cmpl-double v0, v1, v5

    if-lez v0, :cond_1

    goto :goto_0

    :cond_1
    move-wide/from16 v19, v1

    move-wide v1, v5

    move-wide/from16 v5, v19

    :goto_0
    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    cmpg-double v0, v1, v7

    if-gez v0, :cond_2

    invoke-static {v13, v9, v1, v2}, Lcom/sun/javafx/geom/Order3;->split([DID)V

    :cond_2
    const-wide/16 v7, 0x0

    cmpg-double v0, v5, v7

    if-gtz v0, :cond_3

    move/from16 v16, v9

    goto :goto_1

    :cond_3
    div-double/2addr v5, v1

    invoke-static {v13, v9, v5, v6}, Lcom/sun/javafx/geom/Order3;->split([DID)V

    move/from16 v16, v14

    :goto_1
    new-instance v18, Lcom/sun/javafx/geom/Order3;

    move-object/from16 v0, v18

    add-int/lit8 v1, v16, 0x0

    aget-wide v1, v13, v1

    add-int/lit8 v5, v16, 0x2

    aget-wide v5, v13, v5

    add-int/lit8 v7, v16, 0x3

    aget-wide v7, v13, v7

    add-int/lit8 v9, v16, 0x4

    aget-wide v9, v13, v9

    add-int/lit8 v11, v16, 0x5

    aget-wide v11, v13, v11

    add-int/lit8 v16, v16, 0x6

    aget-wide v13, v13, v16

    move-wide/from16 v3, p1

    move-wide/from16 v15, p3

    move/from16 v17, p5

    invoke-direct/range {v0 .. v17}, Lcom/sun/javafx/geom/Order3;-><init>(DDDDDDDDI)V

    return-object v18
.end method

.method public getX0()D
    .locals 2

    iget v0, p0, Lcom/sun/javafx/geom/Curve;->direction:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, Lcom/sun/javafx/geom/Order3;->x0:D

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/sun/javafx/geom/Order3;->x1:D

    :goto_0
    return-wide v0
.end method

.method public getX1()D
    .locals 2

    iget v0, p0, Lcom/sun/javafx/geom/Curve;->direction:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, Lcom/sun/javafx/geom/Order3;->x0:D

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/sun/javafx/geom/Order3;->x1:D

    :goto_0
    return-wide v0
.end method

.method public getXBot()D
    .locals 2

    iget-wide v0, p0, Lcom/sun/javafx/geom/Order3;->x1:D

    return-wide v0
.end method

.method public getXMax()D
    .locals 2

    iget-wide v0, p0, Lcom/sun/javafx/geom/Order3;->xmax:D

    return-wide v0
.end method

.method public getXMin()D
    .locals 2

    iget-wide v0, p0, Lcom/sun/javafx/geom/Order3;->xmin:D

    return-wide v0
.end method

.method public getXTop()D
    .locals 2

    iget-wide v0, p0, Lcom/sun/javafx/geom/Order3;->x0:D

    return-wide v0
.end method

.method public getY0()D
    .locals 2

    iget v0, p0, Lcom/sun/javafx/geom/Curve;->direction:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, Lcom/sun/javafx/geom/Order3;->y0:D

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/sun/javafx/geom/Order3;->y1:D

    :goto_0
    return-wide v0
.end method

.method public getY1()D
    .locals 2

    iget v0, p0, Lcom/sun/javafx/geom/Curve;->direction:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, Lcom/sun/javafx/geom/Order3;->y0:D

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/sun/javafx/geom/Order3;->y1:D

    :goto_0
    return-wide v0
.end method

.method public getYBot()D
    .locals 2

    iget-wide v0, p0, Lcom/sun/javafx/geom/Order3;->y1:D

    return-wide v0
.end method

.method public getYTop()D
    .locals 2

    iget-wide v0, p0, Lcom/sun/javafx/geom/Order3;->y0:D

    return-wide v0
.end method

.method public nextVertical(DD)D
    .locals 6

    const/4 v0, 0x3

    new-array v0, v0, [D

    iget-wide v1, p0, Lcom/sun/javafx/geom/Order3;->xcoeff1:D

    const/4 v3, 0x0

    aput-wide v1, v0, v3

    const-wide/high16 v1, 0x4000000000000000L    # 2.0

    iget-wide v4, p0, Lcom/sun/javafx/geom/Order3;->xcoeff2:D

    mul-double/2addr v4, v1

    const/4 v1, 0x1

    aput-wide v4, v0, v1

    const-wide/high16 v1, 0x4008000000000000L    # 3.0

    iget-wide v4, p0, Lcom/sun/javafx/geom/Order3;->xcoeff3:D

    mul-double/2addr v4, v1

    const/4 p0, 0x2

    aput-wide v4, v0, p0

    invoke-static {v0, v0}, Lcom/sun/javafx/geom/Order3;->solveQuadratic([D[D)I

    move-result p0

    :goto_0
    if-ge v3, p0, :cond_1

    aget-wide v1, v0, v3

    cmpl-double v4, v1, p1

    if-lez v4, :cond_0

    cmpg-double v4, v1, p3

    if-gez v4, :cond_0

    move-wide p3, v1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-wide p3
.end method

.method public refine(DDDDD)D
    .locals 23

    move-object/from16 v0, p0

    move-wide/from16 v1, p9

    const-wide v3, -0x4046666666666666L    # -0.1

    cmpg-double v3, v1, v3

    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    if-ltz v3, :cond_a

    const-wide v6, 0x3ff199999999999aL    # 1.1

    cmpl-double v3, v1, v6

    if-lez v3, :cond_0

    goto/16 :goto_5

    :cond_0
    invoke-virtual {v0, v1, v2}, Lcom/sun/javafx/geom/Order3;->YforT(D)D

    move-result-wide v6

    cmpg-double v3, v6, p7

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    const-wide/16 v10, 0x0

    if-gez v3, :cond_1

    move-wide v12, v1

    move-wide v14, v8

    goto :goto_0

    :cond_1
    move-wide v14, v1

    move-wide v12, v10

    :goto_0
    const/4 v3, 0x1

    move/from16 v16, v3

    :goto_1
    cmpl-double v17, v6, p7

    if-eqz v17, :cond_8

    if-nez v16, :cond_3

    add-double v6, v12, v14

    const-wide/high16 v17, 0x4000000000000000L    # 2.0

    div-double v6, v6, v17

    cmpl-double v17, v6, v12

    if-eqz v17, :cond_8

    cmpl-double v17, v6, v14

    if-nez v17, :cond_2

    goto :goto_4

    :cond_2
    move-wide v1, v6

    goto :goto_3

    :cond_3
    invoke-virtual {v0, v1, v2, v3}, Lcom/sun/javafx/geom/Order3;->dYforT(DI)D

    move-result-wide v17

    cmpl-double v19, v17, v10

    const/16 v20, 0x0

    if-nez v19, :cond_5

    :cond_4
    :goto_2
    move/from16 v16, v20

    goto :goto_1

    :cond_5
    sub-double v21, p7, v6

    div-double v21, v21, v17

    add-double v21, v1, v21

    cmpl-double v17, v21, v1

    if-eqz v17, :cond_4

    cmpg-double v17, v21, v12

    if-lez v17, :cond_4

    cmpl-double v17, v21, v14

    if-ltz v17, :cond_6

    goto :goto_2

    :cond_6
    move-wide/from16 v1, v21

    :goto_3
    invoke-virtual {v0, v1, v2}, Lcom/sun/javafx/geom/Order3;->YforT(D)D

    move-result-wide v6

    cmpg-double v17, v6, p7

    if-gez v17, :cond_7

    move-wide v12, v1

    goto :goto_1

    :cond_7
    cmpl-double v14, v6, p7

    if-lez v14, :cond_8

    move-wide v14, v1

    goto :goto_1

    :cond_8
    :goto_4
    cmpl-double v0, v1, v8

    if-lez v0, :cond_9

    goto :goto_5

    :cond_9
    move-wide v4, v1

    :cond_a
    :goto_5
    return-wide v4
.end method
