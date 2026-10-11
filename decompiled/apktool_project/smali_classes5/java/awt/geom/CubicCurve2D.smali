.class public abstract Ljava/awt/geom/CubicCurve2D;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/awt/Shape;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/awt/geom/CubicCurve2D$Double;,
        Ljava/awt/geom/CubicCurve2D$Float;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static bisectRoot([DDD)D
    .locals 11

    const/4 v0, 0x3

    invoke-static {p0, v0, p1, p2}, Ljava/awt/geom/CubicCurve2D;->solveEqn([DID)D

    move-result-wide v1

    sub-double v3, p3, p1

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    :goto_0
    div-double/2addr v3, v5

    add-double/2addr v3, p1

    cmpl-double v7, v3, p1

    if-eqz v7, :cond_2

    cmpl-double v7, v3, p3

    if-eqz v7, :cond_2

    invoke-static {p0, v0, v3, v4}, Ljava/awt/geom/CubicCurve2D;->solveEqn([DID)D

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmpl-double v9, v7, v9

    if-nez v9, :cond_0

    return-wide v3

    :cond_0
    invoke-static {v1, v2, v7, v8}, Ljava/awt/geom/CubicCurve2D;->oppositeSigns(DD)Z

    move-result v9

    if-eqz v9, :cond_1

    move-wide p3, v3

    goto :goto_1

    :cond_1
    move-wide p1, v3

    move-wide v1, v7

    :goto_1
    sub-double v3, p3, p1

    goto :goto_0

    :cond_2
    return-wide v3
.end method

.method private static bisectRootWithHint([DDDD)D
    .locals 22

    move-object/from16 v0, p0

    sub-double v1, p5, p1

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    const-wide/high16 v3, 0x4050000000000000L    # 64.0

    div-double/2addr v1, v3

    const-wide/high16 v5, 0x3fb0000000000000L    # 0.0625

    invoke-static {v1, v2, v5, v6}, Ljava/lang/Math;->min(DD)D

    move-result-wide v1

    sub-double v7, p5, p3

    invoke-static {v7, v8}, Ljava/lang/Math;->abs(D)D

    move-result-wide v7

    div-double/2addr v7, v3

    invoke-static {v7, v8, v5, v6}, Ljava/lang/Math;->min(DD)D

    move-result-wide v5

    sub-double v7, p5, v1

    add-double v9, p5, v5

    const/4 v11, 0x3

    invoke-static {v0, v11, v7, v8}, Ljava/awt/geom/CubicCurve2D;->solveEqn([DID)D

    move-result-wide v12

    invoke-static {v0, v11, v9, v10}, Ljava/awt/geom/CubicCurve2D;->solveEqn([DID)D

    move-result-wide v14

    move-wide v3, v12

    move-wide v11, v14

    move-wide v14, v5

    move-wide/from16 v5, p3

    move-wide/from16 v20, p1

    move-wide/from16 p1, v1

    move-wide/from16 v1, v20

    :goto_0
    invoke-static {v3, v4, v11, v12}, Ljava/awt/geom/CubicCurve2D;->oppositeSigns(DD)Z

    move-result v13

    if-eqz v13, :cond_1

    cmpl-double v1, v7, v9

    if-ltz v1, :cond_0

    return-wide v7

    :cond_0
    move-wide/from16 v1, p1

    const-wide/high16 v16, 0x4050000000000000L    # 64.0

    div-double v1, v1, v16

    div-double v14, v14, v16

    sub-double v3, p5, v1

    add-double v5, p5, v14

    const/4 v13, 0x3

    invoke-static {v0, v13, v3, v4}, Ljava/awt/geom/CubicCurve2D;->solveEqn([DID)D

    move-result-wide v11

    invoke-static {v0, v13, v5, v6}, Ljava/awt/geom/CubicCurve2D;->solveEqn([DID)D

    move-result-wide v18

    move-wide/from16 p1, v1

    move-wide v1, v7

    move-wide v7, v3

    move-wide v3, v11

    move-wide/from16 v11, v18

    move-wide/from16 v20, v5

    move-wide v5, v9

    move-wide/from16 v9, v20

    goto :goto_0

    :cond_1
    const-wide/16 v13, 0x0

    cmpl-double v3, v3, v13

    if-nez v3, :cond_2

    return-wide v7

    :cond_2
    cmpl-double v3, v11, v13

    if-nez v3, :cond_3

    return-wide v9

    :cond_3
    invoke-static {v0, v1, v2, v5, v6}, Ljava/awt/geom/CubicCurve2D;->bisectRoot([DDD)D

    move-result-wide v0

    return-wide v0
.end method

.method private static fixRoots([D[DI)I
    .locals 18

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move/from16 v0, p2

    const/4 v9, 0x3

    new-array v10, v9, [D

    const/4 v11, 0x1

    aget-wide v1, v7, v11

    const/4 v12, 0x0

    aput-wide v1, v10, v12

    const/4 v13, 0x2

    aget-wide v1, v7, v13

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    mul-double/2addr v1, v3

    aput-wide v1, v10, v11

    const-wide/high16 v1, 0x4008000000000000L    # 3.0

    aget-wide v3, v7, v9

    mul-double/2addr v3, v1

    aput-wide v3, v10, v13

    invoke-static {v10, v10}, Ljava/awt/geom/QuadCurve2D;->solveQuadratic([D[D)I

    move-result v1

    if-ne v1, v13, :cond_0

    aget-wide v2, v10, v12

    aget-wide v4, v10, v11

    cmpl-double v2, v2, v4

    if-nez v2, :cond_0

    add-int/lit8 v1, v1, -0x1

    :cond_0
    if-ne v1, v13, :cond_1

    aget-wide v2, v10, v12

    aget-wide v4, v10, v11

    cmpl-double v6, v2, v4

    if-lez v6, :cond_1

    aput-wide v4, v10, v12

    aput-wide v2, v10, v11

    :cond_1
    if-ne v0, v9, :cond_6

    invoke-static/range {p0 .. p0}, Ljava/awt/geom/CubicCurve2D;->getRootUpperBound([D)D

    move-result-wide v14

    neg-double v2, v14

    invoke-static {v8, v12, v0}, Ljava/util/Arrays;->sort([DII)V

    if-ne v1, v13, :cond_2

    aget-wide v4, v10, v12

    aget-wide v16, v8, v12

    move-object/from16 v0, p0

    move-wide v1, v2

    move-wide v3, v4

    move-wide/from16 v5, v16

    invoke-static/range {v0 .. v6}, Ljava/awt/geom/CubicCurve2D;->refineRootWithHint([DDDD)D

    move-result-wide v0

    aput-wide v0, v8, v12

    aget-wide v1, v10, v12

    aget-wide v3, v10, v11

    aget-wide v5, v8, v11

    move-object/from16 v0, p0

    invoke-static/range {v0 .. v6}, Ljava/awt/geom/CubicCurve2D;->refineRootWithHint([DDDD)D

    move-result-wide v0

    aput-wide v0, v8, v11

    aget-wide v1, v10, v11

    aget-wide v5, v8, v13

    move-object/from16 v0, p0

    move-wide v3, v14

    invoke-static/range {v0 .. v6}, Ljava/awt/geom/CubicCurve2D;->refineRootWithHint([DDDD)D

    move-result-wide v0

    aput-wide v0, v8, v13

    return v9

    :cond_2
    if-ne v1, v11, :cond_5

    aget-wide v0, v7, v9

    neg-double v4, v0

    move-wide/from16 v16, v14

    aget-wide v13, v10, v12

    invoke-static {v7, v9, v13, v14}, Ljava/awt/geom/CubicCurve2D;->solveEqn([DID)D

    move-result-wide v9

    invoke-static {v4, v5, v9, v10}, Ljava/awt/geom/CubicCurve2D;->oppositeSigns(DD)Z

    move-result v4

    if-eqz v4, :cond_3

    aget-wide v5, v8, v12

    move-object/from16 v0, p0

    move-wide v1, v2

    move-wide v3, v13

    invoke-static/range {v0 .. v6}, Ljava/awt/geom/CubicCurve2D;->bisectRootWithHint([DDDD)D

    move-result-wide v0

    aput-wide v0, v8, v12

    goto/16 :goto_2

    :cond_3
    invoke-static {v9, v10, v0, v1}, Ljava/awt/geom/CubicCurve2D;->oppositeSigns(DD)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x2

    aget-wide v5, v8, v0

    move-object/from16 v0, p0

    move-wide v1, v13

    move-wide/from16 v3, v16

    invoke-static/range {v0 .. v6}, Ljava/awt/geom/CubicCurve2D;->bisectRootWithHint([DDDD)D

    move-result-wide v0

    aput-wide v0, v8, v12

    goto :goto_2

    :cond_4
    aput-wide v13, v8, v12

    goto :goto_2

    :cond_5
    move-wide/from16 v16, v14

    if-nez v1, :cond_9

    aget-wide v5, v8, v11

    move-object/from16 v0, p0

    move-wide v1, v2

    move-wide/from16 v3, v16

    invoke-static/range {v0 .. v6}, Ljava/awt/geom/CubicCurve2D;->bisectRootWithHint([DDDD)D

    move-result-wide v0

    aput-wide v0, v8, v12

    goto :goto_2

    :cond_6
    move v2, v13

    if-ne v0, v2, :cond_9

    if-ne v1, v2, :cond_9

    aget-wide v0, v8, v12

    aget-wide v2, v8, v11

    aget-wide v4, v10, v12

    aget-wide v12, v10, v11

    sub-double v14, v4, v0

    invoke-static {v14, v15}, Ljava/lang/Math;->abs(D)D

    move-result-wide v14

    sub-double v0, v12, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    cmpl-double v0, v14, v0

    if-lez v0, :cond_7

    goto :goto_0

    :cond_7
    move-wide v4, v12

    :goto_0
    invoke-static {v7, v9, v4, v5}, Ljava/awt/geom/CubicCurve2D;->solveEqn([DID)D

    move-result-wide v0

    const-wide v12, 0x416312d000000000L    # 1.0E7

    invoke-static {v4, v5}, Ljava/lang/Math;->ulp(D)D

    move-result-wide v14

    mul-double/2addr v14, v12

    invoke-static {v0, v1, v14, v15}, Ljava/awt/geom/CubicCurve2D;->iszero(DD)Z

    move-result v10

    if-eqz v10, :cond_9

    invoke-static {v7, v9, v2, v3}, Ljava/awt/geom/CubicCurve2D;->solveEqn([DID)D

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Math;->abs(D)D

    move-result-wide v9

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    cmpg-double v0, v9, v0

    if-gez v0, :cond_8

    goto :goto_1

    :cond_8
    move-wide v2, v4

    :goto_1
    aput-wide v2, v8, v11

    const/4 v0, 0x2

    return v0

    :cond_9
    :goto_2
    return v11
.end method

.method public static getFlatness(DDDDDDDD)D
    .locals 0

    .line 1
    invoke-static/range {p0 .. p15}, Ljava/awt/geom/CubicCurve2D;->getFlatnessSq(DDDDDDDD)D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    return-wide p0
.end method

.method public static getFlatness([DI)D
    .locals 17

    add-int/lit8 v0, p1, 0x0

    .line 2
    aget-wide v1, p0, v0

    add-int/lit8 v0, p1, 0x1

    aget-wide v3, p0, v0

    add-int/lit8 v0, p1, 0x2

    aget-wide v5, p0, v0

    add-int/lit8 v0, p1, 0x3

    aget-wide v7, p0, v0

    add-int/lit8 v0, p1, 0x4

    aget-wide v9, p0, v0

    add-int/lit8 v0, p1, 0x5

    aget-wide v11, p0, v0

    add-int/lit8 v0, p1, 0x6

    aget-wide v13, p0, v0

    add-int/lit8 v0, p1, 0x7

    aget-wide v15, p0, v0

    invoke-static/range {v1 .. v16}, Ljava/awt/geom/CubicCurve2D;->getFlatness(DDDDDDDD)D

    move-result-wide v0

    return-wide v0
.end method

.method public static getFlatnessSq(DDDDDDDD)D
    .locals 14

    move-wide v0, p0

    move-wide/from16 v2, p2

    move-wide/from16 v4, p12

    move-wide/from16 v6, p14

    move-wide/from16 v8, p4

    move-wide/from16 v10, p6

    .line 1
    invoke-static/range {v0 .. v11}, Ljava/awt/geom/Line2D;->ptSegDistSq(DDDDDD)D

    move-result-wide v0

    move-wide v2, p0

    move-wide/from16 v4, p2

    move-wide/from16 v6, p12

    move-wide/from16 v8, p14

    move-wide/from16 v10, p8

    move-wide/from16 v12, p10

    .line 2
    invoke-static/range {v2 .. v13}, Ljava/awt/geom/Line2D;->ptSegDistSq(DDDDDD)D

    move-result-wide v2

    .line 3
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public static getFlatnessSq([DI)D
    .locals 17

    add-int/lit8 v0, p1, 0x0

    .line 4
    aget-wide v1, p0, v0

    add-int/lit8 v0, p1, 0x1

    aget-wide v3, p0, v0

    add-int/lit8 v0, p1, 0x2

    aget-wide v5, p0, v0

    add-int/lit8 v0, p1, 0x3

    aget-wide v7, p0, v0

    add-int/lit8 v0, p1, 0x4

    aget-wide v9, p0, v0

    add-int/lit8 v0, p1, 0x5

    aget-wide v11, p0, v0

    add-int/lit8 v0, p1, 0x6

    aget-wide v13, p0, v0

    add-int/lit8 v0, p1, 0x7

    aget-wide v15, p0, v0

    invoke-static/range {v1 .. v16}, Ljava/awt/geom/CubicCurve2D;->getFlatnessSq(DDDDDDDD)D

    move-result-wide v0

    return-wide v0
.end method

.method private static getRootUpperBound([D)D
    .locals 8

    const/4 v0, 0x3

    aget-wide v0, p0, v0

    const/4 v2, 0x2

    aget-wide v2, p0, v2

    const/4 v4, 0x1

    aget-wide v4, p0, v4

    const/4 v6, 0x0

    aget-wide v6, p0, v6

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    div-double/2addr v2, v0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    add-double/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->ulp(D)D

    move-result-wide v4

    add-double/2addr v4, v0

    add-double/2addr v2, v4

    return-wide v2
.end method

.method private static inInterval(DDD)Z
    .locals 0

    cmpg-double p2, p2, p0

    if-gtz p2, :cond_0

    cmpg-double p0, p0, p4

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static iszero(DD)Z
    .locals 6

    const-wide/16 v2, 0x0

    move-wide v0, p0

    move-wide v4, p2

    invoke-static/range {v0 .. v5}, Ljava/awt/geom/CubicCurve2D;->within(DDD)Z

    move-result p0

    return p0
.end method

.method private static oppositeSigns(DD)Z
    .locals 3

    const-wide/16 v0, 0x0

    cmpg-double v2, p0, v0

    if-gez v2, :cond_0

    cmpl-double v2, p2, v0

    if-gtz v2, :cond_1

    :cond_0
    cmpl-double p0, p0, v0

    if-lez p0, :cond_2

    cmpg-double p0, p2, v0

    if-gez p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private rectCrossings(DDDD)I
    .locals 26

    const/4 v0, 0x0

    invoke-virtual/range {p0 .. p0}, Ljava/awt/geom/CubicCurve2D;->getX1()D

    move-result-wide v1

    invoke-virtual/range {p0 .. p0}, Ljava/awt/geom/CubicCurve2D;->getX2()D

    move-result-wide v3

    cmpl-double v1, v1, v3

    if-nez v1, :cond_0

    invoke-virtual/range {p0 .. p0}, Ljava/awt/geom/CubicCurve2D;->getY1()D

    move-result-wide v1

    invoke-virtual/range {p0 .. p0}, Ljava/awt/geom/CubicCurve2D;->getY2()D

    move-result-wide v3

    cmpl-double v1, v1, v3

    if-eqz v1, :cond_1

    :cond_0
    add-double v5, p1, p5

    add-double v7, p3, p7

    invoke-virtual/range {p0 .. p0}, Ljava/awt/geom/CubicCurve2D;->getX1()D

    move-result-wide v9

    invoke-virtual/range {p0 .. p0}, Ljava/awt/geom/CubicCurve2D;->getY1()D

    move-result-wide v11

    invoke-virtual/range {p0 .. p0}, Ljava/awt/geom/CubicCurve2D;->getX2()D

    move-result-wide v13

    invoke-virtual/range {p0 .. p0}, Ljava/awt/geom/CubicCurve2D;->getY2()D

    move-result-wide v15

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    invoke-static/range {v0 .. v16}, Lsun/awt/geom/Curve;->rectCrossingsForLine(IDDDDDDDD)I

    move-result v0

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_1

    return v0

    :cond_1
    add-double v5, p1, p5

    add-double v7, p3, p7

    invoke-virtual/range {p0 .. p0}, Ljava/awt/geom/CubicCurve2D;->getX2()D

    move-result-wide v9

    invoke-virtual/range {p0 .. p0}, Ljava/awt/geom/CubicCurve2D;->getY2()D

    move-result-wide v11

    invoke-virtual/range {p0 .. p0}, Ljava/awt/geom/CubicCurve2D;->getCtrlX2()D

    move-result-wide v13

    invoke-virtual/range {p0 .. p0}, Ljava/awt/geom/CubicCurve2D;->getCtrlY2()D

    move-result-wide v15

    invoke-virtual/range {p0 .. p0}, Ljava/awt/geom/CubicCurve2D;->getCtrlX1()D

    move-result-wide v17

    invoke-virtual/range {p0 .. p0}, Ljava/awt/geom/CubicCurve2D;->getCtrlY1()D

    move-result-wide v19

    invoke-virtual/range {p0 .. p0}, Ljava/awt/geom/CubicCurve2D;->getX1()D

    move-result-wide v21

    invoke-virtual/range {p0 .. p0}, Ljava/awt/geom/CubicCurve2D;->getY1()D

    move-result-wide v23

    const/16 v25, 0x0

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    invoke-static/range {v0 .. v25}, Lsun/awt/geom/Curve;->rectCrossingsForCubic(IDDDDDDDDDDDDI)I

    move-result v0

    return v0
.end method

.method private static refineRootWithHint([DDDD)D
    .locals 16

    move-object/from16 v0, p0

    move-wide/from16 v1, p5

    move-wide/from16 v3, p1

    move-wide/from16 v5, p3

    invoke-static/range {v1 .. v6}, Ljava/awt/geom/CubicCurve2D;->inInterval(DDD)Z

    move-result v1

    if-nez v1, :cond_0

    return-wide p5

    :cond_0
    const/4 v1, 0x3

    new-array v2, v1, [D

    const/4 v3, 0x1

    aget-wide v4, v0, v3

    const/4 v6, 0x0

    aput-wide v4, v2, v6

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    const/4 v7, 0x2

    aget-wide v8, v0, v7

    mul-double/2addr v8, v4

    aput-wide v8, v2, v3

    const-wide/high16 v3, 0x4008000000000000L    # 3.0

    aget-wide v8, v0, v1

    mul-double/2addr v8, v3

    aput-wide v8, v2, v7

    move-wide/from16 v14, p5

    :goto_0
    if-ge v6, v1, :cond_2

    invoke-static {v2, v7, v14, v15}, Ljava/awt/geom/CubicCurve2D;->solveEqn([DID)D

    move-result-wide v3

    invoke-static {v0, v1, v14, v15}, Ljava/awt/geom/CubicCurve2D;->solveEqn([DID)D

    move-result-wide v8

    div-double v10, v8, v3

    neg-double v10, v10

    add-double/2addr v10, v14

    const-wide/16 v12, 0x0

    cmpl-double v3, v3, v12

    if-eqz v3, :cond_2

    cmpl-double v3, v8, v12

    if-eqz v3, :cond_2

    cmpl-double v3, v14, v10

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v6, v6, 0x1

    move-wide v14, v10

    goto :goto_0

    :cond_2
    :goto_1
    const-wide v0, 0x408f400000000000L    # 1000.0

    invoke-static/range {p5 .. p6}, Ljava/lang/Math;->ulp(D)D

    move-result-wide v2

    mul-double v4, v2, v0

    move-wide v0, v14

    move-wide/from16 v2, p5

    invoke-static/range {v0 .. v5}, Ljava/awt/geom/CubicCurve2D;->within(DDD)Z

    move-result v0

    if-eqz v0, :cond_3

    move-wide v8, v14

    move-wide/from16 v10, p1

    move-wide/from16 v12, p3

    invoke-static/range {v8 .. v13}, Ljava/awt/geom/CubicCurve2D;->inInterval(DDD)Z

    move-result v0

    if-eqz v0, :cond_3

    return-wide v14

    :cond_3
    return-wide p5
.end method

.method public static solveCubic([D)I
    .locals 0

    .line 1
    invoke-static {p0, p0}, Ljava/awt/geom/CubicCurve2D;->solveCubic([D[D)I

    move-result p0

    return p0
.end method

.method public static solveCubic([D[D)I
    .locals 28

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x3

    .line 2
    aget-wide v3, v0, v2

    const-wide/16 v5, 0x0

    cmpl-double v7, v3, v5

    if-nez v7, :cond_0

    .line 3
    invoke-static/range {p0 .. p1}, Ljava/awt/geom/QuadCurve2D;->solveQuadratic([D[D)I

    move-result v0

    return v0

    :cond_0
    const/4 v7, 0x2

    .line 4
    aget-wide v8, v0, v7

    div-double/2addr v8, v3

    const/4 v10, 0x1

    .line 5
    aget-wide v11, v0, v10

    div-double/2addr v11, v3

    const/4 v13, 0x0

    .line 6
    aget-wide v14, v0, v13

    div-double/2addr v14, v3

    mul-double v3, v8, v8

    const-wide v16, -0x402aaaaaaaaaaaabL    # -0.3333333333333333

    mul-double v16, v16, v3

    add-double v16, v16, v11

    const-wide v18, 0x3fd5555555555555L    # 0.3333333333333333

    mul-double v5, v16, v18

    const-wide v16, 0x3fb2f684bda12f68L    # 0.07407407407407407

    mul-double v16, v16, v8

    mul-double v16, v16, v3

    mul-double v8, v8, v18

    mul-double/2addr v11, v8

    sub-double v16, v16, v11

    add-double v16, v16, v14

    const-wide/high16 v3, 0x3fe0000000000000L    # 0.5

    mul-double v3, v3, v16

    mul-double v11, v5, v5

    mul-double/2addr v11, v5

    mul-double v14, v3, v3

    add-double/2addr v14, v11

    const-wide/16 v16, 0x0

    cmpg-double v16, v14, v16

    const/4 v2, 0x4

    const-wide/high16 v20, 0x4000000000000000L    # 2.0

    if-gez v16, :cond_3

    neg-double v3, v3

    neg-double v11, v11

    .line 7
    invoke-static {v11, v12}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v11

    div-double/2addr v3, v11

    invoke-static {v3, v4}, Ljava/lang/Math;->acos(D)D

    move-result-wide v3

    mul-double v3, v3, v18

    neg-double v5, v5

    .line 8
    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    mul-double v5, v5, v20

    if-ne v1, v0, :cond_1

    .line 9
    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([DI)[D

    move-result-object v0

    .line 10
    :cond_1
    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v11

    mul-double/2addr v11, v5

    aput-wide v11, v1, v13

    neg-double v5, v5

    const-wide v11, 0x3ff0c152382d7365L    # 1.0471975511965976

    add-double v14, v3, v11

    .line 11
    invoke-static {v14, v15}, Ljava/lang/Math;->cos(D)D

    move-result-wide v14

    mul-double/2addr v14, v5

    aput-wide v14, v1, v10

    sub-double/2addr v3, v11

    .line 12
    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    mul-double/2addr v5, v2

    aput-wide v5, v1, v7

    move v2, v13

    const/4 v3, 0x3

    :goto_0
    if-ge v2, v3, :cond_2

    .line 13
    aget-wide v4, v1, v2

    sub-double/2addr v4, v8

    aput-wide v4, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    move v2, v3

    goto :goto_3

    .line 14
    :cond_3
    invoke-static {v14, v15}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    sub-double v11, v5, v3

    .line 15
    invoke-static {v11, v12}, Ljava/lang/Math;->cbrt(D)D

    move-result-wide v22

    add-double/2addr v5, v3

    .line 16
    invoke-static {v5, v6}, Ljava/lang/Math;->cbrt(D)D

    move-result-wide v3

    neg-double v3, v3

    add-double v5, v22, v3

    .line 17
    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v11

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v16

    add-double v11, v11, v16

    invoke-static {v11, v12}, Ljava/lang/Math;->ulp(D)D

    move-result-wide v11

    const-wide v16, 0x41d1e1a300000000L    # 1.2E9

    mul-double v11, v11, v16

    .line 18
    invoke-static {v14, v15, v11, v12}, Ljava/awt/geom/CubicCurve2D;->iszero(DD)Z

    move-result v14

    if-nez v14, :cond_5

    move-wide/from16 v24, v3

    move-wide/from16 v26, v11

    invoke-static/range {v22 .. v27}, Ljava/awt/geom/CubicCurve2D;->within(DDD)Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_1

    :cond_4
    move v2, v10

    goto :goto_2

    :cond_5
    :goto_1
    if-ne v1, v0, :cond_6

    .line 19
    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([DI)[D

    move-result-object v0

    :cond_6
    div-double v2, v5, v20

    neg-double v2, v2

    sub-double/2addr v2, v8

    .line 20
    aput-wide v2, v1, v10

    move v2, v7

    :goto_2
    sub-double/2addr v5, v8

    .line 21
    aput-wide v5, v1, v13

    :goto_3
    if-le v2, v10, :cond_7

    .line 22
    invoke-static {v0, v1, v2}, Ljava/awt/geom/CubicCurve2D;->fixRoots([D[DI)I

    move-result v2

    :cond_7
    if-le v2, v7, :cond_9

    .line 23
    aget-wide v3, v1, v7

    aget-wide v5, v1, v10

    cmpl-double v0, v3, v5

    if-eqz v0, :cond_8

    aget-wide v5, v1, v13

    cmpl-double v0, v3, v5

    if-nez v0, :cond_9

    :cond_8
    add-int/lit8 v2, v2, -0x1

    :cond_9
    if-le v2, v10, :cond_a

    .line 24
    aget-wide v3, v1, v10

    aget-wide v5, v1, v13

    cmpl-double v0, v3, v5

    if-nez v0, :cond_a

    add-int/lit8 v2, v2, -0x1

    .line 25
    aget-wide v3, v1, v2

    aput-wide v3, v1, v10

    :cond_a
    return v2
.end method

.method private static solveEqn([DID)D
    .locals 4

    aget-wide v0, p0, p1

    :goto_0
    add-int/lit8 p1, p1, -0x1

    if-ltz p1, :cond_0

    mul-double/2addr v0, p2

    aget-wide v2, p0, p1

    add-double/2addr v0, v2

    goto :goto_0

    :cond_0
    return-wide v0
.end method

.method public static subdivide(Ljava/awt/geom/CubicCurve2D;Ljava/awt/geom/CubicCurve2D;Ljava/awt/geom/CubicCurve2D;)V
    .locals 34

    .line 2
    invoke-virtual/range {p0 .. p0}, Ljava/awt/geom/CubicCurve2D;->getX1()D

    move-result-wide v1

    .line 3
    invoke-virtual/range {p0 .. p0}, Ljava/awt/geom/CubicCurve2D;->getY1()D

    move-result-wide v3

    .line 4
    invoke-virtual/range {p0 .. p0}, Ljava/awt/geom/CubicCurve2D;->getCtrlX1()D

    move-result-wide v5

    .line 5
    invoke-virtual/range {p0 .. p0}, Ljava/awt/geom/CubicCurve2D;->getCtrlY1()D

    move-result-wide v7

    .line 6
    invoke-virtual/range {p0 .. p0}, Ljava/awt/geom/CubicCurve2D;->getCtrlX2()D

    move-result-wide v9

    .line 7
    invoke-virtual/range {p0 .. p0}, Ljava/awt/geom/CubicCurve2D;->getCtrlY2()D

    move-result-wide v11

    .line 8
    invoke-virtual/range {p0 .. p0}, Ljava/awt/geom/CubicCurve2D;->getX2()D

    move-result-wide v26

    .line 9
    invoke-virtual/range {p0 .. p0}, Ljava/awt/geom/CubicCurve2D;->getY2()D

    move-result-wide v28

    add-double v13, v5, v9

    const-wide/high16 v15, 0x4000000000000000L    # 2.0

    div-double/2addr v13, v15

    add-double v17, v7, v11

    div-double v17, v17, v15

    add-double/2addr v5, v1

    div-double/2addr v5, v15

    add-double/2addr v7, v3

    div-double/2addr v7, v15

    add-double v9, v26, v9

    div-double v22, v9, v15

    add-double v11, v28, v11

    div-double v24, v11, v15

    add-double v9, v5, v13

    div-double/2addr v9, v15

    add-double v11, v7, v17

    div-double/2addr v11, v15

    add-double v13, v22, v13

    div-double v19, v13, v15

    add-double v17, v24, v17

    div-double v30, v17, v15

    add-double v13, v9, v19

    div-double v17, v13, v15

    add-double v13, v11, v30

    div-double v32, v13, v15

    if-eqz p1, :cond_0

    move-object/from16 v0, p1

    move-wide/from16 v13, v17

    move-wide/from16 v15, v32

    .line 10
    invoke-virtual/range {v0 .. v16}, Ljava/awt/geom/CubicCurve2D;->setCurve(DDDDDDDD)V

    :cond_0
    if-eqz p2, :cond_1

    move-object/from16 v13, p2

    move-wide/from16 v14, v17

    move-wide/from16 v16, v32

    move-wide/from16 v18, v19

    move-wide/from16 v20, v30

    .line 11
    invoke-virtual/range {v13 .. v29}, Ljava/awt/geom/CubicCurve2D;->setCurve(DDDDDDDD)V

    :cond_1
    return-void
.end method

.method public static subdivide([DI[DI[DI)V
    .locals 22

    add-int/lit8 v0, p1, 0x0

    .line 12
    aget-wide v0, p0, v0

    add-int/lit8 v2, p1, 0x1

    .line 13
    aget-wide v2, p0, v2

    add-int/lit8 v4, p1, 0x2

    .line 14
    aget-wide v4, p0, v4

    add-int/lit8 v6, p1, 0x3

    .line 15
    aget-wide v6, p0, v6

    add-int/lit8 v8, p1, 0x4

    .line 16
    aget-wide v8, p0, v8

    add-int/lit8 v10, p1, 0x5

    .line 17
    aget-wide v10, p0, v10

    add-int/lit8 v12, p1, 0x6

    .line 18
    aget-wide v12, p0, v12

    add-int/lit8 v14, p1, 0x7

    .line 19
    aget-wide v14, p0, v14

    if-eqz p2, :cond_0

    add-int/lit8 v16, p3, 0x0

    .line 20
    aput-wide v0, p2, v16

    add-int/lit8 v16, p3, 0x1

    .line 21
    aput-wide v2, p2, v16

    :cond_0
    if-eqz p4, :cond_1

    add-int/lit8 v16, p5, 0x6

    .line 22
    aput-wide v12, p4, v16

    add-int/lit8 v16, p5, 0x7

    .line 23
    aput-wide v14, p4, v16

    :cond_1
    add-double/2addr v0, v4

    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    div-double v0, v0, v16

    add-double/2addr v2, v6

    div-double v2, v2, v16

    add-double/2addr v12, v8

    div-double v12, v12, v16

    add-double/2addr v14, v10

    div-double v14, v14, v16

    add-double/2addr v4, v8

    div-double v4, v4, v16

    add-double/2addr v6, v10

    div-double v6, v6, v16

    add-double v8, v0, v4

    div-double v8, v8, v16

    add-double v10, v2, v6

    div-double v10, v10, v16

    add-double/2addr v4, v12

    div-double v4, v4, v16

    add-double/2addr v6, v14

    div-double v6, v6, v16

    add-double v18, v8, v4

    div-double v18, v18, v16

    add-double v20, v10, v6

    div-double v20, v20, v16

    if-eqz p2, :cond_2

    add-int/lit8 v16, p3, 0x2

    .line 24
    aput-wide v0, p2, v16

    add-int/lit8 v0, p3, 0x3

    .line 25
    aput-wide v2, p2, v0

    add-int/lit8 v0, p3, 0x4

    .line 26
    aput-wide v8, p2, v0

    add-int/lit8 v0, p3, 0x5

    .line 27
    aput-wide v10, p2, v0

    add-int/lit8 v0, p3, 0x6

    .line 28
    aput-wide v18, p2, v0

    add-int/lit8 v0, p3, 0x7

    .line 29
    aput-wide v20, p2, v0

    :cond_2
    if-eqz p4, :cond_3

    add-int/lit8 v0, p5, 0x0

    .line 30
    aput-wide v18, p4, v0

    add-int/lit8 v0, p5, 0x1

    .line 31
    aput-wide v20, p4, v0

    add-int/lit8 v0, p5, 0x2

    .line 32
    aput-wide v4, p4, v0

    add-int/lit8 v0, p5, 0x3

    .line 33
    aput-wide v6, p4, v0

    add-int/lit8 v0, p5, 0x4

    .line 34
    aput-wide v12, p4, v0

    add-int/lit8 v0, p5, 0x5

    .line 35
    aput-wide v14, p4, v0

    :cond_3
    return-void
.end method

.method private static within(DDD)Z
    .locals 0

    sub-double/2addr p2, p0

    cmpg-double p0, p2, p4

    if-gtz p0, :cond_0

    neg-double p0, p4

    cmpl-double p0, p2, p0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public contains(DD)Z
    .locals 35

    const-wide/16 v0, 0x0

    mul-double v2, p1, v0

    mul-double v4, p3, v0

    add-double/2addr v2, v4

    cmpl-double v0, v2, v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 1
    :cond_0
    invoke-virtual/range {p0 .. p0}, Ljava/awt/geom/CubicCurve2D;->getX1()D

    move-result-wide v6

    move-wide/from16 v18, v6

    .line 2
    invoke-virtual/range {p0 .. p0}, Ljava/awt/geom/CubicCurve2D;->getY1()D

    move-result-wide v8

    move-wide/from16 v20, v8

    .line 3
    invoke-virtual/range {p0 .. p0}, Ljava/awt/geom/CubicCurve2D;->getX2()D

    move-result-wide v10

    move-wide/from16 v30, v10

    .line 4
    invoke-virtual/range {p0 .. p0}, Ljava/awt/geom/CubicCurve2D;->getY2()D

    move-result-wide v12

    move-wide/from16 v32, v12

    move-wide/from16 v2, p1

    move-wide/from16 v4, p3

    .line 5
    invoke-static/range {v2 .. v13}, Lsun/awt/geom/Curve;->pointCrossingsForLine(DDDDDD)I

    move-result v0

    .line 6
    invoke-virtual/range {p0 .. p0}, Ljava/awt/geom/CubicCurve2D;->getCtrlX1()D

    move-result-wide v22

    invoke-virtual/range {p0 .. p0}, Ljava/awt/geom/CubicCurve2D;->getCtrlY1()D

    move-result-wide v24

    .line 7
    invoke-virtual/range {p0 .. p0}, Ljava/awt/geom/CubicCurve2D;->getCtrlX2()D

    move-result-wide v26

    invoke-virtual/range {p0 .. p0}, Ljava/awt/geom/CubicCurve2D;->getCtrlY2()D

    move-result-wide v28

    const/16 v34, 0x0

    move-wide/from16 v14, p1

    move-wide/from16 v16, p3

    .line 8
    invoke-static/range {v14 .. v34}, Lsun/awt/geom/Curve;->pointCrossingsForCubic(DDDDDDDDDDI)I

    move-result v2

    add-int/2addr v0, v2

    const/4 v2, 0x1

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_1

    move v1, v2

    :cond_1
    return v1
.end method

.method public contains(DDDD)Z
    .locals 4

    const-wide/16 v0, 0x0

    cmpg-double v2, p5, v0

    const/4 v3, 0x0

    if-lez v2, :cond_1

    cmpg-double v0, p7, v0

    if-gtz v0, :cond_0

    goto :goto_0

    .line 10
    :cond_0
    invoke-direct/range {p0 .. p8}, Ljava/awt/geom/CubicCurve2D;->rectCrossings(DDDD)I

    move-result p0

    if-eqz p0, :cond_1

    const/high16 p1, -0x80000000

    if-eq p0, p1, :cond_1

    const/4 v3, 0x1

    :cond_1
    :goto_0
    return v3
.end method

.method public contains(Ljava/awt/geom/Point2D;)Z
    .locals 4

    .line 9
    invoke-virtual {p1}, Ljava/awt/geom/Point2D;->getX()D

    move-result-wide v0

    invoke-virtual {p1}, Ljava/awt/geom/Point2D;->getY()D

    move-result-wide v2

    invoke-virtual {p0, v0, v1, v2, v3}, Ljava/awt/geom/CubicCurve2D;->contains(DD)Z

    move-result p0

    return p0
.end method

.method public contains(Ljava/awt/geom/Rectangle2D;)Z
    .locals 9

    .line 11
    invoke-virtual {p1}, Ljava/awt/geom/RectangularShape;->getX()D

    move-result-wide v1

    invoke-virtual {p1}, Ljava/awt/geom/RectangularShape;->getY()D

    move-result-wide v3

    invoke-virtual {p1}, Ljava/awt/geom/RectangularShape;->getWidth()D

    move-result-wide v5

    invoke-virtual {p1}, Ljava/awt/geom/RectangularShape;->getHeight()D

    move-result-wide v7

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Ljava/awt/geom/CubicCurve2D;->contains(DDDD)Z

    move-result p0

    return p0
.end method

.method public getBounds()Ljava/awt/Rectangle;
    .locals 0

    invoke-interface {p0}, Ljava/awt/Shape;->getBounds2D()Ljava/awt/geom/Rectangle2D;

    move-result-object p0

    invoke-virtual {p0}, Ljava/awt/geom/RectangularShape;->getBounds()Ljava/awt/Rectangle;

    move-result-object p0

    return-object p0
.end method

.method public abstract getCtrlP1()Ljava/awt/geom/Point2D;
.end method

.method public abstract getCtrlP2()Ljava/awt/geom/Point2D;
.end method

.method public abstract getCtrlX1()D
.end method

.method public abstract getCtrlX2()D
.end method

.method public abstract getCtrlY1()D
.end method

.method public abstract getCtrlY2()D
.end method

.method public getFlatness()D
    .locals 16

    .line 3
    invoke-virtual/range {p0 .. p0}, Ljava/awt/geom/CubicCurve2D;->getX1()D

    move-result-wide v0

    invoke-virtual/range {p0 .. p0}, Ljava/awt/geom/CubicCurve2D;->getY1()D

    move-result-wide v2

    invoke-virtual/range {p0 .. p0}, Ljava/awt/geom/CubicCurve2D;->getCtrlX1()D

    move-result-wide v4

    invoke-virtual/range {p0 .. p0}, Ljava/awt/geom/CubicCurve2D;->getCtrlY1()D

    move-result-wide v6

    .line 4
    invoke-virtual/range {p0 .. p0}, Ljava/awt/geom/CubicCurve2D;->getCtrlX2()D

    move-result-wide v8

    invoke-virtual/range {p0 .. p0}, Ljava/awt/geom/CubicCurve2D;->getCtrlY2()D

    move-result-wide v10

    invoke-virtual/range {p0 .. p0}, Ljava/awt/geom/CubicCurve2D;->getX2()D

    move-result-wide v12

    invoke-virtual/range {p0 .. p0}, Ljava/awt/geom/CubicCurve2D;->getY2()D

    move-result-wide v14

    .line 5
    invoke-static/range {v0 .. v15}, Ljava/awt/geom/CubicCurve2D;->getFlatness(DDDDDDDD)D

    move-result-wide v0

    return-wide v0
.end method

.method public getFlatnessSq()D
    .locals 16

    .line 5
    invoke-virtual/range {p0 .. p0}, Ljava/awt/geom/CubicCurve2D;->getX1()D

    move-result-wide v0

    invoke-virtual/range {p0 .. p0}, Ljava/awt/geom/CubicCurve2D;->getY1()D

    move-result-wide v2

    invoke-virtual/range {p0 .. p0}, Ljava/awt/geom/CubicCurve2D;->getCtrlX1()D

    move-result-wide v4

    invoke-virtual/range {p0 .. p0}, Ljava/awt/geom/CubicCurve2D;->getCtrlY1()D

    move-result-wide v6

    .line 6
    invoke-virtual/range {p0 .. p0}, Ljava/awt/geom/CubicCurve2D;->getCtrlX2()D

    move-result-wide v8

    invoke-virtual/range {p0 .. p0}, Ljava/awt/geom/CubicCurve2D;->getCtrlY2()D

    move-result-wide v10

    invoke-virtual/range {p0 .. p0}, Ljava/awt/geom/CubicCurve2D;->getX2()D

    move-result-wide v12

    invoke-virtual/range {p0 .. p0}, Ljava/awt/geom/CubicCurve2D;->getY2()D

    move-result-wide v14

    .line 7
    invoke-static/range {v0 .. v15}, Ljava/awt/geom/CubicCurve2D;->getFlatnessSq(DDDDDDDD)D

    move-result-wide v0

    return-wide v0
.end method

.method public abstract getP1()Ljava/awt/geom/Point2D;
.end method

.method public abstract getP2()Ljava/awt/geom/Point2D;
.end method

.method public getPathIterator(Ljava/awt/geom/AffineTransform;)Ljava/awt/geom/PathIterator;
    .locals 1

    .line 1
    new-instance v0, Ljava/awt/geom/CubicIterator;

    invoke-direct {v0, p0, p1}, Ljava/awt/geom/CubicIterator;-><init>(Ljava/awt/geom/CubicCurve2D;Ljava/awt/geom/AffineTransform;)V

    return-object v0
.end method

.method public getPathIterator(Ljava/awt/geom/AffineTransform;D)Ljava/awt/geom/PathIterator;
    .locals 1

    .line 2
    new-instance v0, Ljava/awt/geom/FlatteningPathIterator;

    invoke-virtual {p0, p1}, Ljava/awt/geom/CubicCurve2D;->getPathIterator(Ljava/awt/geom/AffineTransform;)Ljava/awt/geom/PathIterator;

    move-result-object p0

    invoke-direct {v0, p0, p2, p3}, Ljava/awt/geom/FlatteningPathIterator;-><init>(Ljava/awt/geom/PathIterator;D)V

    return-object v0
.end method

.method public abstract getX1()D
.end method

.method public abstract getX2()D
.end method

.method public abstract getY1()D
.end method

.method public abstract getY2()D
.end method

.method public intersects(DDDD)Z
    .locals 4

    const-wide/16 v0, 0x0

    cmpg-double v2, p5, v0

    const/4 v3, 0x0

    if-lez v2, :cond_1

    cmpg-double v0, p7, v0

    if-gtz v0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-direct/range {p0 .. p8}, Ljava/awt/geom/CubicCurve2D;->rectCrossings(DDDD)I

    move-result p0

    if-eqz p0, :cond_1

    const/4 v3, 0x1

    :cond_1
    :goto_0
    return v3
.end method

.method public intersects(Ljava/awt/geom/Rectangle2D;)Z
    .locals 9

    .line 2
    invoke-virtual {p1}, Ljava/awt/geom/RectangularShape;->getX()D

    move-result-wide v1

    invoke-virtual {p1}, Ljava/awt/geom/RectangularShape;->getY()D

    move-result-wide v3

    invoke-virtual {p1}, Ljava/awt/geom/RectangularShape;->getWidth()D

    move-result-wide v5

    invoke-virtual {p1}, Ljava/awt/geom/RectangularShape;->getHeight()D

    move-result-wide v7

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Ljava/awt/geom/CubicCurve2D;->intersects(DDDD)Z

    move-result p0

    return p0
.end method

.method public abstract setCurve(DDDDDDDD)V
.end method

.method public setCurve(Ljava/awt/geom/CubicCurve2D;)V
    .locals 17

    move-object/from16 v0, p0

    .line 10
    invoke-virtual/range {p1 .. p1}, Ljava/awt/geom/CubicCurve2D;->getX1()D

    move-result-wide v1

    invoke-virtual/range {p1 .. p1}, Ljava/awt/geom/CubicCurve2D;->getY1()D

    move-result-wide v3

    invoke-virtual/range {p1 .. p1}, Ljava/awt/geom/CubicCurve2D;->getCtrlX1()D

    move-result-wide v5

    invoke-virtual/range {p1 .. p1}, Ljava/awt/geom/CubicCurve2D;->getCtrlY1()D

    move-result-wide v7

    .line 11
    invoke-virtual/range {p1 .. p1}, Ljava/awt/geom/CubicCurve2D;->getCtrlX2()D

    move-result-wide v9

    invoke-virtual/range {p1 .. p1}, Ljava/awt/geom/CubicCurve2D;->getCtrlY2()D

    move-result-wide v11

    invoke-virtual/range {p1 .. p1}, Ljava/awt/geom/CubicCurve2D;->getX2()D

    move-result-wide v13

    invoke-virtual/range {p1 .. p1}, Ljava/awt/geom/CubicCurve2D;->getY2()D

    move-result-wide v15

    .line 12
    invoke-virtual/range {v0 .. v16}, Ljava/awt/geom/CubicCurve2D;->setCurve(DDDDDDDD)V

    return-void
.end method

.method public setCurve(Ljava/awt/geom/Point2D;Ljava/awt/geom/Point2D;Ljava/awt/geom/Point2D;Ljava/awt/geom/Point2D;)V
    .locals 17

    move-object/from16 v0, p0

    .line 2
    invoke-virtual/range {p1 .. p1}, Ljava/awt/geom/Point2D;->getX()D

    move-result-wide v1

    invoke-virtual/range {p1 .. p1}, Ljava/awt/geom/Point2D;->getY()D

    move-result-wide v3

    invoke-virtual/range {p2 .. p2}, Ljava/awt/geom/Point2D;->getX()D

    move-result-wide v5

    invoke-virtual/range {p2 .. p2}, Ljava/awt/geom/Point2D;->getY()D

    move-result-wide v7

    .line 3
    invoke-virtual/range {p3 .. p3}, Ljava/awt/geom/Point2D;->getX()D

    move-result-wide v9

    invoke-virtual/range {p3 .. p3}, Ljava/awt/geom/Point2D;->getY()D

    move-result-wide v11

    invoke-virtual/range {p4 .. p4}, Ljava/awt/geom/Point2D;->getX()D

    move-result-wide v13

    invoke-virtual/range {p4 .. p4}, Ljava/awt/geom/Point2D;->getY()D

    move-result-wide v15

    .line 4
    invoke-virtual/range {v0 .. v16}, Ljava/awt/geom/CubicCurve2D;->setCurve(DDDDDDDD)V

    return-void
.end method

.method public setCurve([DI)V
    .locals 17

    move-object/from16 v0, p0

    add-int/lit8 v1, p2, 0x0

    .line 1
    aget-wide v1, p1, v1

    add-int/lit8 v3, p2, 0x1

    aget-wide v3, p1, v3

    add-int/lit8 v5, p2, 0x2

    aget-wide v5, p1, v5

    add-int/lit8 v7, p2, 0x3

    aget-wide v7, p1, v7

    add-int/lit8 v9, p2, 0x4

    aget-wide v9, p1, v9

    add-int/lit8 v11, p2, 0x5

    aget-wide v11, p1, v11

    add-int/lit8 v13, p2, 0x6

    aget-wide v13, p1, v13

    add-int/lit8 v15, p2, 0x7

    aget-wide v15, p1, v15

    invoke-virtual/range {v0 .. v16}, Ljava/awt/geom/CubicCurve2D;->setCurve(DDDDDDDD)V

    return-void
.end method

.method public setCurve([Ljava/awt/geom/Point2D;I)V
    .locals 17

    move-object/from16 v0, p0

    add-int/lit8 v3, p2, 0x0

    .line 5
    aget-object v1, p1, v3

    invoke-virtual {v1}, Ljava/awt/geom/Point2D;->getX()D

    move-result-wide v1

    aget-object v3, p1, v3

    invoke-virtual {v3}, Ljava/awt/geom/Point2D;->getY()D

    move-result-wide v3

    add-int/lit8 v7, p2, 0x1

    aget-object v5, p1, v7

    .line 6
    invoke-virtual {v5}, Ljava/awt/geom/Point2D;->getX()D

    move-result-wide v5

    aget-object v7, p1, v7

    invoke-virtual {v7}, Ljava/awt/geom/Point2D;->getY()D

    move-result-wide v7

    add-int/lit8 v11, p2, 0x2

    aget-object v9, p1, v11

    .line 7
    invoke-virtual {v9}, Ljava/awt/geom/Point2D;->getX()D

    move-result-wide v9

    aget-object v11, p1, v11

    invoke-virtual {v11}, Ljava/awt/geom/Point2D;->getY()D

    move-result-wide v11

    add-int/lit8 v15, p2, 0x3

    aget-object v13, p1, v15

    .line 8
    invoke-virtual {v13}, Ljava/awt/geom/Point2D;->getX()D

    move-result-wide v13

    aget-object v15, p1, v15

    invoke-virtual {v15}, Ljava/awt/geom/Point2D;->getY()D

    move-result-wide v15

    .line 9
    invoke-virtual/range {v0 .. v16}, Ljava/awt/geom/CubicCurve2D;->setCurve(DDDDDDDD)V

    return-void
.end method

.method public subdivide(Ljava/awt/geom/CubicCurve2D;Ljava/awt/geom/CubicCurve2D;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Ljava/awt/geom/CubicCurve2D;->subdivide(Ljava/awt/geom/CubicCurve2D;Ljava/awt/geom/CubicCurve2D;Ljava/awt/geom/CubicCurve2D;)V

    return-void
.end method
