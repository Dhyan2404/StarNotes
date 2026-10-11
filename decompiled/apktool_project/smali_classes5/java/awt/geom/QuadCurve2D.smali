.class public abstract Ljava/awt/geom/QuadCurve2D;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/awt/Shape;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/awt/geom/QuadCurve2D$Double;,
        Ljava/awt/geom/QuadCurve2D$Float;
    }
.end annotation


# static fields
.field private static final ABOVE:I = 0x2

.field private static final BELOW:I = -0x2

.field private static final HIGHEDGE:I = 0x1

.field private static final INSIDE:I = 0x0

.field private static final LOWEDGE:I = -0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static evalQuadratic([DIZZ[DDDD)I
    .locals 15

    const/4 v0, 0x0

    move/from16 v2, p1

    move v1, v0

    :goto_0
    if-ge v0, v2, :cond_4

    aget-wide v3, p0, v0

    const-wide/16 v5, 0x0

    cmpl-double v7, v3, v5

    if-eqz p2, :cond_0

    if-ltz v7, :cond_3

    goto :goto_1

    :cond_0
    if-lez v7, :cond_3

    :goto_1
    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    cmpg-double v9, v3, v7

    if-eqz p3, :cond_1

    if-gtz v9, :cond_3

    goto :goto_2

    :cond_1
    if-gez v9, :cond_3

    :goto_2
    const-wide/high16 v9, 0x4000000000000000L    # 2.0

    if-eqz p4, :cond_2

    const/4 v11, 0x1

    aget-wide v11, p4, v11

    const/4 v13, 0x2

    aget-wide v13, p4, v13

    mul-double/2addr v13, v9

    mul-double/2addr v13, v3

    add-double/2addr v11, v13

    cmpl-double v5, v11, v5

    if-eqz v5, :cond_3

    :cond_2
    sub-double/2addr v7, v3

    add-int/lit8 v5, v1, 0x1

    mul-double v11, p5, v7

    mul-double/2addr v11, v7

    mul-double v9, v9, p7

    mul-double/2addr v9, v3

    mul-double/2addr v9, v7

    add-double/2addr v11, v9

    mul-double v6, p9, v3

    mul-double/2addr v6, v3

    add-double/2addr v11, v6

    aput-wide v11, p0, v1

    move v1, v5

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    return v1
.end method

.method private static fillEqn([DDDDD)V
    .locals 1

    const/4 v0, 0x0

    sub-double p1, p3, p1

    aput-wide p1, p0, v0

    add-double p1, p5, p5

    sub-double/2addr p1, p3

    sub-double/2addr p1, p3

    const/4 v0, 0x1

    aput-wide p1, p0, v0

    sub-double/2addr p3, p5

    sub-double/2addr p3, p5

    add-double/2addr p3, p7

    const/4 p1, 0x2

    aput-wide p3, p0, p1

    return-void
.end method

.method public static getFlatness(DDDDDD)D
    .locals 12

    move-wide v0, p0

    move-wide v2, p2

    move-wide/from16 v4, p8

    move-wide/from16 v6, p10

    move-wide/from16 v8, p4

    move-wide/from16 v10, p6

    .line 1
    invoke-static/range {v0 .. v11}, Ljava/awt/geom/Line2D;->ptSegDist(DDDDDD)D

    move-result-wide v0

    return-wide v0
.end method

.method public static getFlatness([DI)D
    .locals 13

    add-int/lit8 v0, p1, 0x0

    .line 2
    aget-wide v1, p0, v0

    add-int/lit8 v0, p1, 0x1

    aget-wide v3, p0, v0

    add-int/lit8 v0, p1, 0x4

    aget-wide v5, p0, v0

    add-int/lit8 v0, p1, 0x5

    aget-wide v7, p0, v0

    add-int/lit8 v0, p1, 0x2

    aget-wide v9, p0, v0

    add-int/lit8 p1, p1, 0x3

    aget-wide v11, p0, p1

    invoke-static/range {v1 .. v12}, Ljava/awt/geom/Line2D;->ptSegDist(DDDDDD)D

    move-result-wide p0

    return-wide p0
.end method

.method public static getFlatnessSq(DDDDDD)D
    .locals 12

    move-wide v0, p0

    move-wide v2, p2

    move-wide/from16 v4, p8

    move-wide/from16 v6, p10

    move-wide/from16 v8, p4

    move-wide/from16 v10, p6

    .line 1
    invoke-static/range {v0 .. v11}, Ljava/awt/geom/Line2D;->ptSegDistSq(DDDDDD)D

    move-result-wide v0

    return-wide v0
.end method

.method public static getFlatnessSq([DI)D
    .locals 13

    add-int/lit8 v0, p1, 0x0

    .line 2
    aget-wide v1, p0, v0

    add-int/lit8 v0, p1, 0x1

    aget-wide v3, p0, v0

    add-int/lit8 v0, p1, 0x4

    aget-wide v5, p0, v0

    add-int/lit8 v0, p1, 0x5

    aget-wide v7, p0, v0

    add-int/lit8 v0, p1, 0x2

    aget-wide v9, p0, v0

    add-int/lit8 p1, p1, 0x3

    aget-wide v11, p0, p1

    invoke-static/range {v1 .. v12}, Ljava/awt/geom/Line2D;->ptSegDistSq(DDDDDD)D

    move-result-wide p0

    return-wide p0
.end method

.method private static getTag(DDD)I
    .locals 0

    cmpg-double p2, p0, p2

    if-gtz p2, :cond_1

    if-gez p2, :cond_0

    const/4 p0, -0x2

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0

    :cond_1
    cmpl-double p0, p0, p4

    if-ltz p0, :cond_3

    if-lez p0, :cond_2

    const/4 p0, 0x2

    goto :goto_1

    :cond_2
    const/4 p0, 0x1

    :goto_1
    return p0

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method private static inwards(III)Z
    .locals 3

    const/4 v0, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p0, v0, :cond_4

    if-eqz p0, :cond_3

    if-eq p0, v2, :cond_0

    return v1

    :cond_0
    if-lez p1, :cond_1

    if-gtz p2, :cond_2

    :cond_1
    move v1, v2

    :cond_2
    return v1

    :cond_3
    return v2

    :cond_4
    if-gez p1, :cond_5

    if-ltz p2, :cond_6

    :cond_5
    move v1, v2

    :cond_6
    return v1
.end method

.method public static solveQuadratic([D)I
    .locals 0

    .line 1
    invoke-static {p0, p0}, Ljava/awt/geom/QuadCurve2D;->solveQuadratic([D[D)I

    move-result p0

    return p0
.end method

.method public static solveQuadratic([D[D)I
    .locals 15

    const/4 v0, 0x2

    .line 2
    aget-wide v1, p0, v0

    const/4 v3, 0x1

    .line 3
    aget-wide v4, p0, v3

    const/4 v6, 0x0

    .line 4
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

    .line 5
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

    .line 6
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

    .line 7
    aput-wide v1, p1, v6

    cmpl-double v1, v4, v9

    if-eqz v1, :cond_1

    div-double/2addr v7, v4

    .line 8
    aput-wide v7, p1, v3

    :goto_0
    return v0
.end method

.method public static subdivide(Ljava/awt/geom/QuadCurve2D;Ljava/awt/geom/QuadCurve2D;Ljava/awt/geom/QuadCurve2D;)V
    .locals 28

    .line 2
    invoke-virtual/range {p0 .. p0}, Ljava/awt/geom/QuadCurve2D;->getX1()D

    move-result-wide v1

    .line 3
    invoke-virtual/range {p0 .. p0}, Ljava/awt/geom/QuadCurve2D;->getY1()D

    move-result-wide v3

    .line 4
    invoke-virtual/range {p0 .. p0}, Ljava/awt/geom/QuadCurve2D;->getCtrlX()D

    move-result-wide v5

    .line 5
    invoke-virtual/range {p0 .. p0}, Ljava/awt/geom/QuadCurve2D;->getCtrlY()D

    move-result-wide v7

    .line 6
    invoke-virtual/range {p0 .. p0}, Ljava/awt/geom/QuadCurve2D;->getX2()D

    move-result-wide v18

    .line 7
    invoke-virtual/range {p0 .. p0}, Ljava/awt/geom/QuadCurve2D;->getY2()D

    move-result-wide v20

    add-double v9, v1, v5

    const-wide/high16 v11, 0x4000000000000000L    # 2.0

    div-double/2addr v9, v11

    add-double v13, v3, v7

    div-double/2addr v13, v11

    add-double v5, v18, v5

    div-double v15, v5, v11

    add-double v7, v20, v7

    div-double v22, v7, v11

    add-double v5, v9, v15

    div-double v24, v5, v11

    add-double v5, v13, v22

    div-double v26, v5, v11

    if-eqz p1, :cond_0

    move-object/from16 v0, p1

    move-wide v5, v9

    move-wide v7, v13

    move-wide/from16 v9, v24

    move-wide/from16 v11, v26

    .line 8
    invoke-virtual/range {v0 .. v12}, Ljava/awt/geom/QuadCurve2D;->setCurve(DDDDDD)V

    :cond_0
    if-eqz p2, :cond_1

    move-object/from16 v9, p2

    move-wide/from16 v10, v24

    move-wide/from16 v12, v26

    move-wide v14, v15

    move-wide/from16 v16, v22

    .line 9
    invoke-virtual/range {v9 .. v21}, Ljava/awt/geom/QuadCurve2D;->setCurve(DDDDDD)V

    :cond_1
    return-void
.end method

.method public static subdivide([DI[DI[DI)V
    .locals 14

    add-int/lit8 v0, p1, 0x0

    .line 10
    aget-wide v0, p0, v0

    add-int/lit8 v2, p1, 0x1

    .line 11
    aget-wide v2, p0, v2

    add-int/lit8 v4, p1, 0x2

    .line 12
    aget-wide v4, p0, v4

    add-int/lit8 v6, p1, 0x3

    .line 13
    aget-wide v6, p0, v6

    add-int/lit8 v8, p1, 0x4

    .line 14
    aget-wide v8, p0, v8

    add-int/lit8 v10, p1, 0x5

    .line 15
    aget-wide v10, p0, v10

    if-eqz p2, :cond_0

    add-int/lit8 v12, p3, 0x0

    .line 16
    aput-wide v0, p2, v12

    add-int/lit8 v12, p3, 0x1

    .line 17
    aput-wide v2, p2, v12

    :cond_0
    if-eqz p4, :cond_1

    add-int/lit8 v12, p5, 0x4

    .line 18
    aput-wide v8, p4, v12

    add-int/lit8 v12, p5, 0x5

    .line 19
    aput-wide v10, p4, v12

    :cond_1
    add-double/2addr v0, v4

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    div-double/2addr v0, v12

    add-double/2addr v2, v6

    div-double/2addr v2, v12

    add-double/2addr v8, v4

    div-double/2addr v8, v12

    add-double/2addr v10, v6

    div-double/2addr v10, v12

    add-double v4, v0, v8

    div-double/2addr v4, v12

    add-double v6, v2, v10

    div-double/2addr v6, v12

    if-eqz p2, :cond_2

    add-int/lit8 v12, p3, 0x2

    .line 20
    aput-wide v0, p2, v12

    add-int/lit8 v0, p3, 0x3

    .line 21
    aput-wide v2, p2, v0

    add-int/lit8 v0, p3, 0x4

    .line 22
    aput-wide v4, p2, v0

    add-int/lit8 v0, p3, 0x5

    .line 23
    aput-wide v6, p2, v0

    :cond_2
    if-eqz p4, :cond_3

    add-int/lit8 v0, p5, 0x0

    .line 24
    aput-wide v4, p4, v0

    add-int/lit8 v0, p5, 0x1

    .line 25
    aput-wide v6, p4, v0

    add-int/lit8 v0, p5, 0x2

    .line 26
    aput-wide v8, p4, v0

    add-int/lit8 v0, p5, 0x3

    .line 27
    aput-wide v10, p4, v0

    :cond_3
    return-void
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
    .locals 24

    .line 1
    invoke-virtual/range {p0 .. p0}, Ljava/awt/geom/QuadCurve2D;->getX1()D

    move-result-wide v0

    .line 2
    invoke-virtual/range {p0 .. p0}, Ljava/awt/geom/QuadCurve2D;->getY1()D

    move-result-wide v2

    .line 3
    invoke-virtual/range {p0 .. p0}, Ljava/awt/geom/QuadCurve2D;->getCtrlX()D

    move-result-wide v4

    .line 4
    invoke-virtual/range {p0 .. p0}, Ljava/awt/geom/QuadCurve2D;->getCtrlY()D

    move-result-wide v6

    .line 5
    invoke-virtual/range {p0 .. p0}, Ljava/awt/geom/QuadCurve2D;->getX2()D

    move-result-wide v8

    .line 6
    invoke-virtual/range {p0 .. p0}, Ljava/awt/geom/QuadCurve2D;->getY2()D

    move-result-wide v10

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    mul-double v14, v4, v12

    sub-double v14, v0, v14

    add-double/2addr v14, v8

    mul-double v16, v6, v12

    sub-double v16, v2, v16

    add-double v16, v16, v10

    sub-double v18, p1, v0

    sub-double v20, p3, v2

    sub-double/2addr v8, v0

    sub-double/2addr v10, v2

    mul-double v18, v18, v16

    mul-double v20, v20, v14

    sub-double v18, v18, v20

    mul-double v20, v8, v16

    mul-double v22, v10, v14

    sub-double v20, v20, v22

    div-double v18, v18, v20

    const-wide/16 v20, 0x0

    cmpg-double v20, v18, v20

    const/16 v21, 0x0

    if-ltz v20, :cond_5

    const-wide/high16 v22, 0x3ff0000000000000L    # 1.0

    cmpl-double v20, v18, v22

    if-gtz v20, :cond_5

    cmpl-double v20, v18, v18

    if-eqz v20, :cond_0

    goto :goto_0

    :cond_0
    mul-double v14, v14, v18

    mul-double v14, v14, v18

    sub-double/2addr v4, v0

    mul-double/2addr v4, v12

    mul-double v4, v4, v18

    add-double/2addr v14, v4

    add-double/2addr v14, v0

    mul-double v16, v16, v18

    mul-double v16, v16, v18

    sub-double/2addr v6, v2

    mul-double/2addr v6, v12

    mul-double v6, v6, v18

    add-double v16, v16, v6

    add-double v16, v16, v2

    mul-double v8, v8, v18

    add-double/2addr v8, v0

    mul-double v10, v10, v18

    add-double/2addr v10, v2

    cmpl-double v0, p1, v14

    if-ltz v0, :cond_1

    cmpg-double v0, p1, v8

    if-ltz v0, :cond_4

    :cond_1
    cmpl-double v0, p1, v8

    if-ltz v0, :cond_2

    cmpg-double v0, p1, v14

    if-ltz v0, :cond_4

    :cond_2
    cmpl-double v0, p3, v16

    if-ltz v0, :cond_3

    cmpg-double v0, p3, v10

    if-ltz v0, :cond_4

    :cond_3
    cmpl-double v0, p3, v10

    if-ltz v0, :cond_5

    cmpg-double v0, p3, v16

    if-gez v0, :cond_5

    :cond_4
    const/16 v21, 0x1

    :cond_5
    :goto_0
    return v21
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

    .line 8
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Ljava/awt/geom/QuadCurve2D;->contains(DD)Z

    move-result v0

    if-eqz v0, :cond_1

    add-double/2addr p5, p1

    .line 9
    invoke-virtual {p0, p5, p6, p3, p4}, Ljava/awt/geom/QuadCurve2D;->contains(DD)Z

    move-result v0

    if-eqz v0, :cond_1

    add-double/2addr p3, p7

    .line 10
    invoke-virtual {p0, p5, p6, p3, p4}, Ljava/awt/geom/QuadCurve2D;->contains(DD)Z

    move-result p5

    if-eqz p5, :cond_1

    .line 11
    invoke-virtual {p0, p1, p2, p3, p4}, Ljava/awt/geom/QuadCurve2D;->contains(DD)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v3, 0x1

    :cond_1
    :goto_0
    return v3
.end method

.method public contains(Ljava/awt/geom/Point2D;)Z
    .locals 4

    .line 7
    invoke-virtual {p1}, Ljava/awt/geom/Point2D;->getX()D

    move-result-wide v0

    invoke-virtual {p1}, Ljava/awt/geom/Point2D;->getY()D

    move-result-wide v2

    invoke-virtual {p0, v0, v1, v2, v3}, Ljava/awt/geom/QuadCurve2D;->contains(DD)Z

    move-result p0

    return p0
.end method

.method public contains(Ljava/awt/geom/Rectangle2D;)Z
    .locals 9

    .line 12
    invoke-virtual {p1}, Ljava/awt/geom/RectangularShape;->getX()D

    move-result-wide v1

    invoke-virtual {p1}, Ljava/awt/geom/RectangularShape;->getY()D

    move-result-wide v3

    invoke-virtual {p1}, Ljava/awt/geom/RectangularShape;->getWidth()D

    move-result-wide v5

    invoke-virtual {p1}, Ljava/awt/geom/RectangularShape;->getHeight()D

    move-result-wide v7

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Ljava/awt/geom/QuadCurve2D;->contains(DDDD)Z

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

.method public abstract getCtrlPt()Ljava/awt/geom/Point2D;
.end method

.method public abstract getCtrlX()D
.end method

.method public abstract getCtrlY()D
.end method

.method public getFlatness()D
    .locals 12

    .line 3
    invoke-virtual {p0}, Ljava/awt/geom/QuadCurve2D;->getX1()D

    move-result-wide v0

    invoke-virtual {p0}, Ljava/awt/geom/QuadCurve2D;->getY1()D

    move-result-wide v2

    .line 4
    invoke-virtual {p0}, Ljava/awt/geom/QuadCurve2D;->getX2()D

    move-result-wide v4

    invoke-virtual {p0}, Ljava/awt/geom/QuadCurve2D;->getY2()D

    move-result-wide v6

    .line 5
    invoke-virtual {p0}, Ljava/awt/geom/QuadCurve2D;->getCtrlX()D

    move-result-wide v8

    invoke-virtual {p0}, Ljava/awt/geom/QuadCurve2D;->getCtrlY()D

    move-result-wide v10

    .line 6
    invoke-static/range {v0 .. v11}, Ljava/awt/geom/Line2D;->ptSegDist(DDDDDD)D

    move-result-wide v0

    return-wide v0
.end method

.method public getFlatnessSq()D
    .locals 12

    .line 3
    invoke-virtual {p0}, Ljava/awt/geom/QuadCurve2D;->getX1()D

    move-result-wide v0

    invoke-virtual {p0}, Ljava/awt/geom/QuadCurve2D;->getY1()D

    move-result-wide v2

    .line 4
    invoke-virtual {p0}, Ljava/awt/geom/QuadCurve2D;->getX2()D

    move-result-wide v4

    invoke-virtual {p0}, Ljava/awt/geom/QuadCurve2D;->getY2()D

    move-result-wide v6

    .line 5
    invoke-virtual {p0}, Ljava/awt/geom/QuadCurve2D;->getCtrlX()D

    move-result-wide v8

    invoke-virtual {p0}, Ljava/awt/geom/QuadCurve2D;->getCtrlY()D

    move-result-wide v10

    .line 6
    invoke-static/range {v0 .. v11}, Ljava/awt/geom/Line2D;->ptSegDistSq(DDDDDD)D

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
    new-instance v0, Ljava/awt/geom/QuadIterator;

    invoke-direct {v0, p0, p1}, Ljava/awt/geom/QuadIterator;-><init>(Ljava/awt/geom/QuadCurve2D;Ljava/awt/geom/AffineTransform;)V

    return-object v0
.end method

.method public getPathIterator(Ljava/awt/geom/AffineTransform;D)Ljava/awt/geom/PathIterator;
    .locals 1

    .line 2
    new-instance v0, Ljava/awt/geom/FlatteningPathIterator;

    invoke-virtual {p0, p1}, Ljava/awt/geom/QuadCurve2D;->getPathIterator(Ljava/awt/geom/AffineTransform;)Ljava/awt/geom/PathIterator;

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
    .locals 35

    const-wide/16 v0, 0x0

    cmpg-double v2, p5, v0

    if-lez v2, :cond_1b

    cmpg-double v0, p7, v0

    if-gtz v0, :cond_0

    goto/16 :goto_d

    .line 1
    :cond_0
    invoke-virtual/range {p0 .. p0}, Ljava/awt/geom/QuadCurve2D;->getX1()D

    move-result-wide v0

    .line 2
    invoke-virtual/range {p0 .. p0}, Ljava/awt/geom/QuadCurve2D;->getY1()D

    move-result-wide v13

    add-double v15, p1, p5

    move-wide v4, v0

    move-wide/from16 v6, p1

    move-wide v8, v15

    .line 3
    invoke-static/range {v4 .. v9}, Ljava/awt/geom/QuadCurve2D;->getTag(DDD)I

    move-result v2

    add-double v17, p3, p7

    move-wide v4, v13

    move-wide/from16 v6, p3

    move-wide/from16 v8, v17

    .line 4
    invoke-static/range {v4 .. v9}, Ljava/awt/geom/QuadCurve2D;->getTag(DDD)I

    move-result v10

    const/16 v19, 0x1

    if-nez v2, :cond_1

    if-nez v10, :cond_1

    return v19

    .line 5
    :cond_1
    invoke-virtual/range {p0 .. p0}, Ljava/awt/geom/QuadCurve2D;->getX2()D

    move-result-wide v20

    .line 6
    invoke-virtual/range {p0 .. p0}, Ljava/awt/geom/QuadCurve2D;->getY2()D

    move-result-wide v22

    move-wide/from16 v4, v20

    move-wide/from16 v6, p1

    move-wide v8, v15

    .line 7
    invoke-static/range {v4 .. v9}, Ljava/awt/geom/QuadCurve2D;->getTag(DDD)I

    move-result v11

    move-wide/from16 v4, v22

    move-wide/from16 v6, p3

    move-wide/from16 v8, v17

    .line 8
    invoke-static/range {v4 .. v9}, Ljava/awt/geom/QuadCurve2D;->getTag(DDD)I

    move-result v12

    if-nez v11, :cond_2

    if-nez v12, :cond_2

    return v19

    .line 9
    :cond_2
    invoke-virtual/range {p0 .. p0}, Ljava/awt/geom/QuadCurve2D;->getCtrlX()D

    move-result-wide v24

    .line 10
    invoke-virtual/range {p0 .. p0}, Ljava/awt/geom/QuadCurve2D;->getCtrlY()D

    move-result-wide v26

    move-wide/from16 v4, v24

    move-wide/from16 v6, p1

    move-wide v8, v15

    .line 11
    invoke-static/range {v4 .. v9}, Ljava/awt/geom/QuadCurve2D;->getTag(DDD)I

    move-result v8

    move-wide/from16 v4, v26

    move-wide/from16 v6, p3

    move v3, v8

    move-wide/from16 v8, v17

    .line 12
    invoke-static/range {v4 .. v9}, Ljava/awt/geom/QuadCurve2D;->getTag(DDD)I

    move-result v4

    if-gez v2, :cond_3

    if-gez v11, :cond_3

    if-gez v3, :cond_3

    const/4 v5, 0x0

    return v5

    :cond_3
    const/4 v5, 0x0

    if-gez v10, :cond_4

    if-gez v12, :cond_4

    if-gez v4, :cond_4

    return v5

    :cond_4
    if-lez v2, :cond_5

    if-lez v11, :cond_5

    if-lez v3, :cond_5

    return v5

    :cond_5
    if-lez v10, :cond_6

    if-lez v12, :cond_6

    if-lez v4, :cond_6

    return v5

    .line 13
    :cond_6
    invoke-static {v2, v11, v3}, Ljava/awt/geom/QuadCurve2D;->inwards(III)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 14
    invoke-static {v10, v12, v4}, Ljava/awt/geom/QuadCurve2D;->inwards(III)Z

    move-result v5

    if-eqz v5, :cond_7

    return v19

    .line 15
    :cond_7
    invoke-static {v11, v2, v3}, Ljava/awt/geom/QuadCurve2D;->inwards(III)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 16
    invoke-static {v12, v10, v4}, Ljava/awt/geom/QuadCurve2D;->inwards(III)Z

    move-result v3

    if-eqz v3, :cond_8

    return v19

    :cond_8
    mul-int v3, v2, v11

    if-gtz v3, :cond_9

    move/from16 v3, v19

    goto :goto_0

    :cond_9
    const/4 v3, 0x0

    :goto_0
    mul-int v4, v10, v12

    if-gtz v4, :cond_a

    move/from16 v4, v19

    goto :goto_1

    :cond_a
    const/4 v4, 0x0

    :goto_1
    if-nez v2, :cond_b

    if-nez v11, :cond_b

    if-eqz v4, :cond_b

    return v19

    :cond_b
    if-nez v10, :cond_c

    if-nez v12, :cond_c

    if-eqz v3, :cond_c

    return v19

    :cond_c
    const/4 v5, 0x3

    new-array v9, v5, [D

    new-array v7, v5, [D

    const/4 v8, 0x2

    if-nez v4, :cond_f

    if-gez v10, :cond_d

    move-wide/from16 v5, p3

    goto :goto_2

    :cond_d
    move-wide/from16 v5, v17

    :goto_2
    move-object v4, v9

    move-object v2, v7

    move v3, v8

    move-wide v7, v13

    move-object v13, v9

    move-wide/from16 v9, v26

    move-wide/from16 v11, v22

    .line 17
    invoke-static/range {v4 .. v12}, Ljava/awt/geom/QuadCurve2D;->fillEqn([DDDDD)V

    .line 18
    invoke-static {v13, v2}, Ljava/awt/geom/QuadCurve2D;->solveQuadratic([D[D)I

    move-result v4

    if-ne v4, v3, :cond_e

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v4, v2

    move-wide v9, v0

    move-wide/from16 v11, v24

    move-wide/from16 v13, v20

    .line 19
    invoke-static/range {v4 .. v14}, Ljava/awt/geom/QuadCurve2D;->evalQuadratic([DIZZ[DDDD)I

    move-result v0

    if-ne v0, v3, :cond_e

    const/4 v0, 0x0

    aget-wide v3, v2, v0

    move-wide/from16 p3, v3

    move-wide/from16 p5, p1

    move-wide/from16 p7, v15

    .line 20
    invoke-static/range {p3 .. p8}, Ljava/awt/geom/QuadCurve2D;->getTag(DDD)I

    move-result v0

    aget-wide v1, v2, v19

    move-wide/from16 p3, v1

    invoke-static/range {p3 .. p8}, Ljava/awt/geom/QuadCurve2D;->getTag(DDD)I

    move-result v1

    mul-int/2addr v0, v1

    if-gtz v0, :cond_e

    move/from16 v3, v19

    goto :goto_3

    :cond_e
    const/4 v3, 0x0

    :goto_3
    return v3

    :cond_f
    if-nez v3, :cond_12

    if-gez v2, :cond_10

    move-wide/from16 v5, p1

    goto :goto_4

    :cond_10
    move-wide v5, v15

    :goto_4
    move-object v4, v9

    move-object v3, v7

    move v2, v8

    move-wide v7, v0

    move-object v0, v9

    move-wide/from16 v9, v24

    move-wide/from16 v11, v20

    .line 21
    invoke-static/range {v4 .. v12}, Ljava/awt/geom/QuadCurve2D;->fillEqn([DDDDD)V

    .line 22
    invoke-static {v0, v3}, Ljava/awt/geom/QuadCurve2D;->solveQuadratic([D[D)I

    move-result v0

    if-ne v0, v2, :cond_11

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v4, v3

    move-wide v9, v13

    move-wide/from16 v11, v26

    move-wide/from16 v13, v22

    .line 23
    invoke-static/range {v4 .. v14}, Ljava/awt/geom/QuadCurve2D;->evalQuadratic([DIZZ[DDDD)I

    move-result v0

    if-ne v0, v2, :cond_11

    const/4 v0, 0x0

    aget-wide v4, v3, v0

    move-wide/from16 v6, p3

    move-wide/from16 v8, v17

    .line 24
    invoke-static/range {v4 .. v9}, Ljava/awt/geom/QuadCurve2D;->getTag(DDD)I

    move-result v0

    aget-wide v4, v3, v19

    invoke-static/range {v4 .. v9}, Ljava/awt/geom/QuadCurve2D;->getTag(DDD)I

    move-result v1

    mul-int/2addr v0, v1

    if-gtz v0, :cond_11

    move/from16 v3, v19

    goto :goto_5

    :cond_11
    const/4 v3, 0x0

    :goto_5
    return v3

    :cond_12
    move-object v3, v7

    move-object v8, v9

    sub-double v28, v20, v0

    sub-double v30, v22, v13

    mul-double v4, v22, v0

    mul-double v6, v20, v13

    sub-double v32, v4, v6

    if-nez v10, :cond_13

    move/from16 v34, v2

    move-object/from16 p0, v8

    goto :goto_7

    :cond_13
    if-gez v10, :cond_14

    move-wide/from16 v4, p3

    goto :goto_6

    :cond_14
    move-wide/from16 v4, v17

    :goto_6
    mul-double v4, v4, v28

    add-double v4, v32, v4

    div-double v4, v4, v30

    move-wide/from16 v6, p1

    move-object/from16 p0, v8

    move-wide v8, v15

    .line 25
    invoke-static/range {v4 .. v9}, Ljava/awt/geom/QuadCurve2D;->getTag(DDD)I

    move-result v4

    move/from16 v34, v4

    :goto_7
    if-nez v12, :cond_15

    goto :goto_9

    :cond_15
    if-gez v12, :cond_16

    move-wide/from16 v4, p3

    goto :goto_8

    :cond_16
    move-wide/from16 v4, v17

    :goto_8
    mul-double v28, v28, v4

    add-double v32, v32, v28

    div-double v4, v32, v30

    move-wide/from16 v6, p1

    move-wide v8, v15

    .line 26
    invoke-static/range {v4 .. v9}, Ljava/awt/geom/QuadCurve2D;->getTag(DDD)I

    move-result v11

    :goto_9
    mul-int v4, v34, v11

    if-gtz v4, :cond_17

    return v19

    :cond_17
    mul-int v34, v34, v2

    if-gtz v34, :cond_18

    move v2, v10

    goto :goto_a

    :cond_18
    move v2, v12

    :goto_a
    if-gez v11, :cond_19

    move-wide/from16 v5, p1

    goto :goto_b

    :cond_19
    move-wide v5, v15

    :goto_b
    move-object/from16 v4, p0

    move-wide v7, v0

    move-wide/from16 v9, v24

    move-wide/from16 v11, v20

    .line 27
    invoke-static/range {v4 .. v12}, Ljava/awt/geom/QuadCurve2D;->fillEqn([DDDDD)V

    move-object/from16 v0, p0

    .line 28
    invoke-static {v0, v3}, Ljava/awt/geom/QuadCurve2D;->solveQuadratic([D[D)I

    move-result v5

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v4, v3

    move-wide v9, v13

    move-wide/from16 v11, v26

    move-wide/from16 v13, v22

    .line 29
    invoke-static/range {v4 .. v14}, Ljava/awt/geom/QuadCurve2D;->evalQuadratic([DIZZ[DDDD)I

    const/4 v0, 0x0

    aget-wide v4, v3, v0

    move-wide/from16 v6, p3

    move-wide/from16 v8, v17

    .line 30
    invoke-static/range {v4 .. v9}, Ljava/awt/geom/QuadCurve2D;->getTag(DDD)I

    move-result v1

    mul-int/2addr v2, v1

    if-gtz v2, :cond_1a

    move/from16 v3, v19

    goto :goto_c

    :cond_1a
    move v3, v0

    :goto_c
    return v3

    :cond_1b
    :goto_d
    const/4 v0, 0x0

    return v0
.end method

.method public intersects(Ljava/awt/geom/Rectangle2D;)Z
    .locals 9

    .line 31
    invoke-virtual {p1}, Ljava/awt/geom/RectangularShape;->getX()D

    move-result-wide v1

    invoke-virtual {p1}, Ljava/awt/geom/RectangularShape;->getY()D

    move-result-wide v3

    invoke-virtual {p1}, Ljava/awt/geom/RectangularShape;->getWidth()D

    move-result-wide v5

    invoke-virtual {p1}, Ljava/awt/geom/RectangularShape;->getHeight()D

    move-result-wide v7

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Ljava/awt/geom/QuadCurve2D;->intersects(DDDD)Z

    move-result p0

    return p0
.end method

.method public abstract setCurve(DDDDDD)V
.end method

.method public setCurve(Ljava/awt/geom/Point2D;Ljava/awt/geom/Point2D;Ljava/awt/geom/Point2D;)V
    .locals 13

    .line 2
    invoke-virtual {p1}, Ljava/awt/geom/Point2D;->getX()D

    move-result-wide v1

    invoke-virtual {p1}, Ljava/awt/geom/Point2D;->getY()D

    move-result-wide v3

    .line 3
    invoke-virtual {p2}, Ljava/awt/geom/Point2D;->getX()D

    move-result-wide v5

    invoke-virtual {p2}, Ljava/awt/geom/Point2D;->getY()D

    move-result-wide v7

    .line 4
    invoke-virtual/range {p3 .. p3}, Ljava/awt/geom/Point2D;->getX()D

    move-result-wide v9

    invoke-virtual/range {p3 .. p3}, Ljava/awt/geom/Point2D;->getY()D

    move-result-wide v11

    move-object v0, p0

    .line 5
    invoke-virtual/range {v0 .. v12}, Ljava/awt/geom/QuadCurve2D;->setCurve(DDDDDD)V

    return-void
.end method

.method public setCurve(Ljava/awt/geom/QuadCurve2D;)V
    .locals 13

    .line 10
    invoke-virtual {p1}, Ljava/awt/geom/QuadCurve2D;->getX1()D

    move-result-wide v1

    invoke-virtual {p1}, Ljava/awt/geom/QuadCurve2D;->getY1()D

    move-result-wide v3

    .line 11
    invoke-virtual {p1}, Ljava/awt/geom/QuadCurve2D;->getCtrlX()D

    move-result-wide v5

    invoke-virtual {p1}, Ljava/awt/geom/QuadCurve2D;->getCtrlY()D

    move-result-wide v7

    .line 12
    invoke-virtual {p1}, Ljava/awt/geom/QuadCurve2D;->getX2()D

    move-result-wide v9

    invoke-virtual {p1}, Ljava/awt/geom/QuadCurve2D;->getY2()D

    move-result-wide v11

    move-object v0, p0

    .line 13
    invoke-virtual/range {v0 .. v12}, Ljava/awt/geom/QuadCurve2D;->setCurve(DDDDDD)V

    return-void
.end method

.method public setCurve([DI)V
    .locals 14

    add-int/lit8 v0, p2, 0x0

    .line 1
    aget-wide v2, p1, v0

    add-int/lit8 v0, p2, 0x1

    aget-wide v4, p1, v0

    add-int/lit8 v0, p2, 0x2

    aget-wide v6, p1, v0

    add-int/lit8 v0, p2, 0x3

    aget-wide v8, p1, v0

    add-int/lit8 v0, p2, 0x4

    aget-wide v10, p1, v0

    add-int/lit8 v0, p2, 0x5

    aget-wide v12, p1, v0

    move-object v1, p0

    invoke-virtual/range {v1 .. v13}, Ljava/awt/geom/QuadCurve2D;->setCurve(DDDDDD)V

    return-void
.end method

.method public setCurve([Ljava/awt/geom/Point2D;I)V
    .locals 15

    add-int/lit8 v0, p2, 0x0

    .line 6
    aget-object v1, p1, v0

    invoke-virtual {v1}, Ljava/awt/geom/Point2D;->getX()D

    move-result-wide v3

    aget-object v0, p1, v0

    invoke-virtual {v0}, Ljava/awt/geom/Point2D;->getY()D

    move-result-wide v5

    add-int/lit8 v0, p2, 0x1

    aget-object v1, p1, v0

    .line 7
    invoke-virtual {v1}, Ljava/awt/geom/Point2D;->getX()D

    move-result-wide v7

    aget-object v0, p1, v0

    invoke-virtual {v0}, Ljava/awt/geom/Point2D;->getY()D

    move-result-wide v9

    add-int/lit8 v0, p2, 0x2

    aget-object v1, p1, v0

    .line 8
    invoke-virtual {v1}, Ljava/awt/geom/Point2D;->getX()D

    move-result-wide v11

    aget-object v0, p1, v0

    invoke-virtual {v0}, Ljava/awt/geom/Point2D;->getY()D

    move-result-wide v13

    move-object v2, p0

    .line 9
    invoke-virtual/range {v2 .. v14}, Ljava/awt/geom/QuadCurve2D;->setCurve(DDDDDD)V

    return-void
.end method

.method public subdivide(Ljava/awt/geom/QuadCurve2D;Ljava/awt/geom/QuadCurve2D;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Ljava/awt/geom/QuadCurve2D;->subdivide(Ljava/awt/geom/QuadCurve2D;Ljava/awt/geom/QuadCurve2D;Ljava/awt/geom/QuadCurve2D;)V

    return-void
.end method
