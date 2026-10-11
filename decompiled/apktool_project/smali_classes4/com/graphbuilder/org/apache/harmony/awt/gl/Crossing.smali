.class public Lcom/graphbuilder/org/apache/harmony/awt/gl/Crossing;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/graphbuilder/org/apache/harmony/awt/gl/Crossing$CubicCurve;,
        Lcom/graphbuilder/org/apache/harmony/awt/gl/Crossing$QuadCurve;
    }
.end annotation


# static fields
.field public static final CROSSING:I = 0xff

.field public static final a:D = 1.0E-5

.field public static final b:D = 1.0E-10

.field public static final c:I = 0xfe


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a([DIDD)I
    .locals 9

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x2

    move v3, v0

    move v4, v3

    move v2, v1

    :goto_0
    const/16 v5, 0xff

    if-ge v2, p1, :cond_3

    aget-wide v6, p0, v2

    cmpg-double v8, v6, p2

    if-gez v8, :cond_1

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    cmpl-double v6, v6, p4

    if-lez v6, :cond_2

    add-int/lit8 v3, v3, 0x1

    :goto_1
    add-int/lit8 v2, v2, 0x4

    goto :goto_0

    :cond_2
    return v5

    :cond_3
    if-nez v3, :cond_4

    return v0

    :cond_4
    if-eqz v4, :cond_8

    invoke-static {p0, p1}, Lcom/graphbuilder/org/apache/harmony/awt/gl/Crossing;->c([DI)V

    aget-wide p2, p0, v1

    cmpl-double p2, p2, p4

    const/4 p3, 0x1

    if-lez p2, :cond_5

    move p2, p3

    goto :goto_2

    :cond_5
    move p2, v0

    :goto_2
    const/4 v1, 0x6

    :goto_3
    if-ge v1, p1, :cond_8

    aget-wide v2, p0, v1

    cmpl-double v2, v2, p4

    if-lez v2, :cond_6

    move v2, p3

    goto :goto_4

    :cond_6
    move v2, v0

    :goto_4
    if-eq p2, v2, :cond_7

    add-int/lit8 p2, v1, 0x1

    aget-wide v3, p0, p2

    add-int/lit8 p2, v1, -0x3

    aget-wide v6, p0, p2

    cmpl-double p2, v3, v6

    if-eqz p2, :cond_7

    return v5

    :cond_7
    add-int/lit8 v1, v1, 0x4

    move p2, v2

    goto :goto_3

    :cond_8
    const/16 p0, 0xfe

    return p0
.end method

.method public static b([DI)I
    .locals 8

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v0, p1, :cond_2

    add-int/lit8 v2, v0, 0x1

    move v3, v2

    :goto_1
    if-ge v3, p1, :cond_1

    aget-wide v4, p0, v0

    aget-wide v6, p0, v3

    sub-double/2addr v4, v6

    invoke-static {v4, v5}, Lcom/graphbuilder/org/apache/harmony/awt/gl/Crossing;->isZero(D)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_2

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v1, 0x1

    aget-wide v4, p0, v0

    aput-wide v4, p0, v1

    move v1, v3

    :goto_2
    move v0, v2

    goto :goto_0

    :cond_2
    return v1
.end method

.method public static c([DI)V
    .locals 9

    const/4 v0, 0x0

    :goto_0
    add-int/lit8 v1, p1, -0x4

    if-ge v0, v1, :cond_3

    add-int/lit8 v1, v0, 0x4

    move v3, v0

    move v2, v1

    :goto_1
    if-ge v2, p1, :cond_1

    aget-wide v4, p0, v3

    aget-wide v6, p0, v2

    cmpl-double v4, v4, v6

    if-lez v4, :cond_0

    move v3, v2

    :cond_0
    add-int/lit8 v2, v2, 0x4

    goto :goto_1

    :cond_1
    if-eq v3, v0, :cond_2

    aget-wide v4, p0, v0

    aget-wide v6, p0, v3

    aput-wide v6, p0, v0

    aput-wide v4, p0, v3

    add-int/lit8 v2, v0, 0x1

    aget-wide v4, p0, v2

    add-int/lit8 v6, v3, 0x1

    aget-wide v7, p0, v6

    aput-wide v7, p0, v2

    aput-wide v4, p0, v6

    add-int/lit8 v2, v0, 0x2

    aget-wide v4, p0, v2

    add-int/lit8 v6, v3, 0x2

    aget-wide v7, p0, v6

    aput-wide v7, p0, v2

    aput-wide v4, p0, v6

    add-int/lit8 v0, v0, 0x3

    aget-wide v4, p0, v0

    add-int/lit8 v3, v3, 0x3

    aget-wide v6, p0, v3

    aput-wide v6, p0, v0

    aput-wide v4, p0, v3

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public static crossCubic(DDDDDDDDDD)I
    .locals 18

    cmpg-double v0, p16, p0

    const/4 v1, 0x0

    if-gez v0, :cond_0

    cmpg-double v2, p16, p4

    if-gez v2, :cond_0

    cmpg-double v2, p16, p8

    if-gez v2, :cond_0

    cmpg-double v2, p16, p12

    if-ltz v2, :cond_3

    :cond_0
    cmpl-double v2, p16, p0

    if-lez v2, :cond_1

    cmpl-double v3, p16, p4

    if-lez v3, :cond_1

    cmpl-double v3, p16, p8

    if-lez v3, :cond_1

    cmpl-double v3, p16, p12

    if-gtz v3, :cond_3

    :cond_1
    cmpl-double v3, p18, p2

    if-lez v3, :cond_2

    cmpl-double v3, p18, p6

    if-lez v3, :cond_2

    cmpl-double v3, p18, p10

    if-lez v3, :cond_2

    cmpl-double v3, p18, p14

    if-gtz v3, :cond_3

    :cond_2
    cmpl-double v3, p0, p4

    if-nez v3, :cond_4

    cmpl-double v3, p4, p8

    if-nez v3, :cond_4

    cmpl-double v3, p8, p12

    if-nez v3, :cond_4

    :cond_3
    return v1

    :cond_4
    cmpg-double v3, p18, p2

    if-gez v3, :cond_8

    cmpg-double v3, p18, p6

    if-gez v3, :cond_8

    cmpg-double v3, p18, p10

    if-gez v3, :cond_8

    cmpg-double v3, p18, p14

    if-gez v3, :cond_8

    if-eqz v2, :cond_8

    cmpl-double v2, p16, p12

    if-eqz v2, :cond_8

    cmpg-double v2, p0, p12

    if-gez v2, :cond_6

    cmpg-double v0, p0, p16

    if-gez v0, :cond_5

    cmpg-double v0, p16, p12

    if-gez v0, :cond_5

    const/4 v1, 0x1

    :cond_5
    return v1

    :cond_6
    cmpg-double v2, p12, p16

    if-gez v2, :cond_7

    if-gez v0, :cond_7

    const/4 v1, -0x1

    :cond_7
    return v1

    :cond_8
    new-instance v15, Lcom/graphbuilder/org/apache/harmony/awt/gl/Crossing$CubicCurve;

    move-object v0, v15

    move-wide/from16 v1, p0

    move-wide/from16 v3, p2

    move-wide/from16 v5, p4

    move-wide/from16 v7, p6

    move-wide/from16 v9, p8

    move-wide/from16 v11, p10

    move-wide/from16 v13, p12

    move-object/from16 v17, v15

    move-wide/from16 v15, p14

    invoke-direct/range {v0 .. v16}, Lcom/graphbuilder/org/apache/harmony/awt/gl/Crossing$CubicCurve;-><init>(DDDDDDDD)V

    sub-double v0, p16, p0

    sub-double v2, p18, p2

    const/4 v4, 0x3

    new-array v4, v4, [D

    move-object/from16 v5, v17

    invoke-virtual {v5, v4, v0, v1}, Lcom/graphbuilder/org/apache/harmony/awt/gl/Crossing$CubicCurve;->e([DD)I

    move-result v0

    move-object/from16 p0, v5

    move-object/from16 p1, v4

    move/from16 p2, v0

    move-wide/from16 p3, v2

    move-wide/from16 p5, v2

    invoke-virtual/range {p0 .. p6}, Lcom/graphbuilder/org/apache/harmony/awt/gl/Crossing$CubicCurve;->b([DIDD)I

    move-result v0

    return v0
.end method

.method public static crossLine(DDDDDD)I
    .locals 4

    cmpg-double v0, p8, p0

    const/4 v1, 0x0

    if-gez v0, :cond_0

    cmpg-double v0, p8, p4

    if-ltz v0, :cond_3

    :cond_0
    cmpl-double v0, p8, p0

    if-lez v0, :cond_1

    cmpl-double v2, p8, p4

    if-gtz v2, :cond_3

    :cond_1
    cmpl-double v2, p10, p2

    if-lez v2, :cond_2

    cmpl-double v2, p10, p6

    if-gtz v2, :cond_3

    :cond_2
    cmpl-double v2, p0, p4

    if-nez v2, :cond_4

    :cond_3
    return v1

    :cond_4
    cmpg-double v2, p10, p2

    if-gez v2, :cond_5

    cmpg-double v2, p10, p6

    if-gez v2, :cond_5

    goto :goto_0

    :cond_5
    sub-double/2addr p6, p2

    sub-double v2, p8, p0

    mul-double/2addr p6, v2

    sub-double v2, p4, p0

    div-double/2addr p6, v2

    sub-double/2addr p10, p2

    cmpg-double p2, p6, p10

    if-gtz p2, :cond_6

    return v1

    :cond_6
    :goto_0
    const/4 p2, -0x1

    if-nez v0, :cond_8

    cmpg-double p0, p0, p4

    if-gez p0, :cond_7

    goto :goto_1

    :cond_7
    move v1, p2

    :goto_1
    return v1

    :cond_8
    cmpl-double p3, p8, p4

    const/4 p6, 0x1

    if-nez p3, :cond_a

    cmpg-double p0, p0, p4

    if-gez p0, :cond_9

    move v1, p6

    :cond_9
    return v1

    :cond_a
    cmpg-double p0, p0, p4

    if-gez p0, :cond_b

    move p2, p6

    :cond_b
    return p2
.end method

.method public static crossPath(Ljava/awt/geom/PathIterator;DD)I
    .locals 33

    const/4 v0, 0x6

    new-array v0, v0, [D

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    move/from16 v26, v1

    move-wide v4, v2

    move-wide v6, v4

    move-wide/from16 v24, v6

    :goto_0
    invoke-interface/range {p0 .. p0}, Ljava/awt/geom/PathIterator;->isDone()Z

    move-result v8

    if-nez v8, :cond_a

    move-object/from16 v14, p0

    invoke-interface {v14, v0}, Ljava/awt/geom/PathIterator;->currentSegment([D)I

    move-result v8

    const/4 v15, 0x1

    if-eqz v8, :cond_5

    if-eq v8, v15, :cond_4

    const/4 v12, 0x3

    const/4 v13, 0x2

    if-eq v8, v13, :cond_3

    const/4 v10, 0x4

    if-eq v8, v12, :cond_2

    if-eq v8, v10, :cond_0

    goto/16 :goto_3

    :cond_0
    cmpl-double v8, v6, v24

    if-nez v8, :cond_1

    cmpl-double v8, v4, v2

    if-eqz v8, :cond_8

    :cond_1
    move-wide v8, v2

    move-wide/from16 v10, v24

    move-wide/from16 v12, p1

    move-wide/from16 v14, p3

    invoke-static/range {v4 .. v15}, Lcom/graphbuilder/org/apache/harmony/awt/gl/Crossing;->crossLine(DDDDDD)I

    move-result v4

    add-int v26, v26, v4

    move-wide v4, v2

    move-wide/from16 v6, v24

    goto/16 :goto_3

    :cond_2
    aget-wide v8, v0, v1

    aget-wide v14, v0, v15

    move/from16 v16, v10

    move-wide v10, v14

    aget-wide v13, v0, v13

    move/from16 v17, v12

    move-wide v12, v13

    aget-wide v14, v0, v17

    aget-wide v27, v0, v16

    move-wide/from16 v16, v27

    const/16 v18, 0x5

    aget-wide v29, v0, v18

    move-wide/from16 v18, v29

    move-wide/from16 v20, p1

    move-wide/from16 v22, p3

    invoke-static/range {v4 .. v23}, Lcom/graphbuilder/org/apache/harmony/awt/gl/Crossing;->crossCubic(DDDDDDDDDD)I

    move-result v4

    add-int v26, v26, v4

    move-wide/from16 v4, v27

    move-wide/from16 v6, v29

    goto/16 :goto_3

    :cond_3
    move/from16 v17, v12

    aget-wide v8, v0, v1

    aget-wide v10, v0, v15

    aget-wide v20, v0, v13

    aget-wide v22, v0, v17

    move-wide/from16 v12, v20

    move-wide/from16 v14, v22

    move-wide/from16 v16, p1

    move-wide/from16 v18, p3

    invoke-static/range {v4 .. v19}, Lcom/graphbuilder/org/apache/harmony/awt/gl/Crossing;->crossQuad(DDDDDDDD)I

    move-result v4

    add-int v26, v26, v4

    move-wide/from16 v4, v20

    move-wide/from16 v6, v22

    goto :goto_3

    :cond_4
    aget-wide v16, v0, v1

    aget-wide v18, v0, v15

    move-wide/from16 v8, v16

    move-wide/from16 v10, v18

    move-wide/from16 v12, p1

    move-wide/from16 v14, p3

    invoke-static/range {v4 .. v15}, Lcom/graphbuilder/org/apache/harmony/awt/gl/Crossing;->crossLine(DDDDDD)I

    move-result v4

    add-int v26, v26, v4

    move-wide/from16 v4, v16

    move-wide/from16 v6, v18

    goto :goto_3

    :cond_5
    cmpl-double v8, v4, v2

    if-nez v8, :cond_7

    cmpl-double v8, v6, v24

    if-eqz v8, :cond_6

    goto :goto_1

    :cond_6
    move v2, v15

    goto :goto_2

    :cond_7
    :goto_1
    move-wide v8, v2

    move-wide/from16 v10, v24

    move-wide/from16 v12, p1

    move v2, v15

    move-wide/from16 v14, p3

    invoke-static/range {v4 .. v15}, Lcom/graphbuilder/org/apache/harmony/awt/gl/Crossing;->crossLine(DDDDDD)I

    move-result v3

    add-int v26, v26, v3

    :goto_2
    aget-wide v3, v0, v1

    aget-wide v5, v0, v2

    move-wide/from16 v24, v5

    move-wide/from16 v6, v24

    move-wide/from16 v31, v3

    move-wide/from16 v4, v31

    move-wide v2, v4

    :cond_8
    :goto_3
    cmpl-double v8, p1, v4

    if-nez v8, :cond_9

    cmpl-double v8, p3, v6

    if-nez v8, :cond_9

    move-wide v12, v2

    move-wide v8, v4

    move-wide/from16 v10, v24

    move-wide v14, v10

    goto :goto_4

    :cond_9
    invoke-interface/range {p0 .. p0}, Ljava/awt/geom/PathIterator;->next()V

    goto/16 :goto_0

    :cond_a
    move-wide v12, v2

    move-wide v8, v4

    move-wide v10, v6

    move-wide/from16 v14, v24

    move/from16 v1, v26

    :goto_4
    cmpl-double v0, v10, v14

    if-eqz v0, :cond_b

    move-wide/from16 v16, p1

    move-wide/from16 v18, p3

    invoke-static/range {v8 .. v19}, Lcom/graphbuilder/org/apache/harmony/awt/gl/Crossing;->crossLine(DDDDDD)I

    move-result v0

    add-int/2addr v1, v0

    :cond_b
    return v1
.end method

.method public static crossQuad(DDDDDDDD)I
    .locals 14

    cmpg-double v0, p12, p0

    const/4 v1, 0x0

    if-gez v0, :cond_0

    cmpg-double v2, p12, p4

    if-gez v2, :cond_0

    cmpg-double v2, p12, p8

    if-ltz v2, :cond_3

    :cond_0
    cmpl-double v2, p12, p0

    if-lez v2, :cond_1

    cmpl-double v3, p12, p4

    if-lez v3, :cond_1

    cmpl-double v3, p12, p8

    if-gtz v3, :cond_3

    :cond_1
    cmpl-double v3, p14, p2

    if-lez v3, :cond_2

    cmpl-double v3, p14, p6

    if-lez v3, :cond_2

    cmpl-double v3, p14, p10

    if-gtz v3, :cond_3

    :cond_2
    cmpl-double v3, p0, p4

    if-nez v3, :cond_4

    cmpl-double v3, p4, p8

    if-nez v3, :cond_4

    :cond_3
    return v1

    :cond_4
    cmpg-double v3, p14, p2

    if-gez v3, :cond_8

    cmpg-double v3, p14, p6

    if-gez v3, :cond_8

    cmpg-double v3, p14, p10

    if-gez v3, :cond_8

    if-eqz v2, :cond_8

    cmpl-double v2, p12, p8

    if-eqz v2, :cond_8

    cmpg-double v2, p0, p8

    if-gez v2, :cond_6

    cmpg-double v0, p0, p12

    if-gez v0, :cond_5

    cmpg-double v0, p12, p8

    if-gez v0, :cond_5

    const/4 v1, 0x1

    :cond_5
    return v1

    :cond_6
    cmpg-double v2, p8, p12

    if-gez v2, :cond_7

    if-gez v0, :cond_7

    const/4 v1, -0x1

    :cond_7
    return v1

    :cond_8
    new-instance v13, Lcom/graphbuilder/org/apache/harmony/awt/gl/Crossing$QuadCurve;

    move-object v0, v13

    move-wide v1, p0

    move-wide/from16 v3, p2

    move-wide/from16 v5, p4

    move-wide/from16 v7, p6

    move-wide/from16 v9, p8

    move-wide/from16 v11, p10

    invoke-direct/range {v0 .. v12}, Lcom/graphbuilder/org/apache/harmony/awt/gl/Crossing$QuadCurve;-><init>(DDDDDD)V

    sub-double v0, p12, p0

    sub-double v2, p14, p2

    const/4 v4, 0x3

    new-array v4, v4, [D

    invoke-virtual {v13, v4, v0, v1}, Lcom/graphbuilder/org/apache/harmony/awt/gl/Crossing$QuadCurve;->d([DD)I

    move-result v0

    move-object p0, v13

    move-object p1, v4

    move/from16 p2, v0

    move-wide/from16 p3, v2

    move-wide/from16 p5, v2

    invoke-virtual/range {p0 .. p6}, Lcom/graphbuilder/org/apache/harmony/awt/gl/Crossing$QuadCurve;->b([DIDD)I

    move-result v0

    return v0
.end method

.method public static crossShape(Ljava/awt/Shape;DD)I
    .locals 1

    invoke-interface {p0}, Ljava/awt/Shape;->getBounds2D()Ljava/awt/geom/Rectangle2D;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Ljava/awt/geom/Rectangle2D;->contains(DD)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/awt/Shape;->getPathIterator(Ljava/awt/geom/AffineTransform;)Ljava/awt/geom/PathIterator;

    move-result-object p0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/graphbuilder/org/apache/harmony/awt/gl/Crossing;->crossPath(Ljava/awt/geom/PathIterator;DD)I

    move-result p0

    return p0
.end method

.method public static intersectCubic(DDDDDDDDDDDD)I
    .locals 25

    cmpg-double v0, p20, p0

    const/16 v17, 0x0

    if-gez v0, :cond_0

    cmpg-double v0, p20, p4

    if-gez v0, :cond_0

    cmpg-double v0, p20, p8

    if-gez v0, :cond_0

    cmpg-double v0, p20, p12

    if-ltz v0, :cond_2

    :cond_0
    cmpl-double v0, p16, p0

    if-lez v0, :cond_1

    cmpl-double v1, p16, p4

    if-lez v1, :cond_1

    cmpl-double v1, p16, p8

    if-lez v1, :cond_1

    cmpl-double v1, p16, p12

    if-gtz v1, :cond_2

    :cond_1
    cmpl-double v1, p18, p2

    if-lez v1, :cond_3

    cmpl-double v1, p18, p6

    if-lez v1, :cond_3

    cmpl-double v1, p18, p10

    if-lez v1, :cond_3

    cmpl-double v1, p18, p14

    if-lez v1, :cond_3

    :cond_2
    return v17

    :cond_3
    cmpg-double v1, p22, p2

    if-gez v1, :cond_7

    cmpg-double v1, p22, p6

    if-gez v1, :cond_7

    cmpg-double v1, p22, p10

    if-gez v1, :cond_7

    cmpg-double v1, p22, p14

    if-gez v1, :cond_7

    if-eqz v0, :cond_7

    cmpl-double v0, p16, p12

    if-eqz v0, :cond_7

    cmpg-double v0, p0, p12

    if-gez v0, :cond_5

    cmpg-double v0, p0, p16

    if-gez v0, :cond_4

    cmpg-double v0, p16, p12

    if-gez v0, :cond_4

    const/16 v17, 0x1

    :cond_4
    return v17

    :cond_5
    cmpg-double v0, p12, p16

    if-gez v0, :cond_6

    cmpg-double v0, p16, p0

    if-gez v0, :cond_6

    const/16 v17, -0x1

    :cond_6
    return v17

    :cond_7
    new-instance v15, Lcom/graphbuilder/org/apache/harmony/awt/gl/Crossing$CubicCurve;

    move-object v0, v15

    move-wide/from16 v1, p0

    move-wide/from16 v3, p2

    move-wide/from16 v5, p4

    move-wide/from16 v7, p6

    move-wide/from16 v9, p8

    move-wide/from16 v11, p10

    move-wide/from16 v13, p12

    move-object/from16 v18, v15

    move-wide/from16 v15, p14

    invoke-direct/range {v0 .. v16}, Lcom/graphbuilder/org/apache/harmony/awt/gl/Crossing$CubicCurve;-><init>(DDDDDDDD)V

    sub-double v0, p16, p0

    sub-double v11, p18, p2

    sub-double v2, p20, p0

    sub-double v13, p22, p2

    const/4 v4, 0x3

    new-array v15, v4, [D

    new-array v10, v4, [D

    move-object/from16 v9, v18

    invoke-virtual {v9, v15, v0, v1}, Lcom/graphbuilder/org/apache/harmony/awt/gl/Crossing$CubicCurve;->e([DD)I

    move-result v16

    invoke-virtual {v9, v10, v2, v3}, Lcom/graphbuilder/org/apache/harmony/awt/gl/Crossing$CubicCurve;->e([DD)I

    move-result v18

    if-nez v16, :cond_8

    if-nez v18, :cond_8

    return v17

    :cond_8
    const-wide v4, 0x3ee4f8b588e368f1L    # 1.0E-5

    sub-double v19, v0, v4

    add-double v21, v2, v4

    const/16 v0, 0x28

    new-array v7, v0, [D

    const/4 v2, 0x0

    const/16 v17, 0x0

    const/16 v23, 0x0

    move-object v0, v9

    move-object v1, v7

    move-object v3, v15

    move/from16 v4, v16

    move-wide/from16 v5, v19

    move-object/from16 v24, v7

    move-wide/from16 v7, v21

    move-object/from16 p6, v9

    move/from16 v9, v17

    move-object/from16 p2, v10

    move/from16 v10, v23

    invoke-virtual/range {v0 .. v10}, Lcom/graphbuilder/org/apache/harmony/awt/gl/Crossing$CubicCurve;->a([DI[DIDDZI)I

    move-result v2

    const/4 v9, 0x0

    const/4 v10, 0x1

    move-object/from16 v0, p6

    move-object/from16 v1, v24

    move-object/from16 v3, p2

    move/from16 v4, v18

    invoke-virtual/range {v0 .. v10}, Lcom/graphbuilder/org/apache/harmony/awt/gl/Crossing$CubicCurve;->a([DI[DIDDZI)I

    move-result v2

    move-object/from16 v9, p2

    move-object/from16 v10, p6

    invoke-virtual {v10, v9}, Lcom/graphbuilder/org/apache/harmony/awt/gl/Crossing$CubicCurve;->c([D)I

    move-result v4

    const/16 v17, 0x1

    const/16 v18, 0x2

    move-object v0, v10

    move-object v3, v9

    move-object/from16 v23, v15

    move-object v15, v9

    move/from16 v9, v17

    move-wide/from16 p6, v13

    move-object v13, v10

    move/from16 v10, v18

    invoke-virtual/range {v0 .. v10}, Lcom/graphbuilder/org/apache/harmony/awt/gl/Crossing$CubicCurve;->a([DI[DIDDZI)I

    move-result v2

    invoke-virtual {v13, v15}, Lcom/graphbuilder/org/apache/harmony/awt/gl/Crossing$CubicCurve;->d([D)I

    move-result v4

    const/4 v9, 0x1

    const/4 v10, 0x4

    move-object v0, v13

    move-object v3, v15

    invoke-virtual/range {v0 .. v10}, Lcom/graphbuilder/org/apache/harmony/awt/gl/Crossing$CubicCurve;->a([DI[DIDDZI)I

    move-result v0

    cmpg-double v1, p16, p0

    if-gez v1, :cond_9

    cmpg-double v1, p0, p20

    if-gez v1, :cond_9

    add-int/lit8 v1, v0, 0x1

    const-wide/16 v2, 0x0

    aput-wide v2, v24, v0

    add-int/lit8 v0, v1, 0x1

    aput-wide v2, v24, v1

    add-int/lit8 v1, v0, 0x1

    aput-wide v2, v24, v0

    add-int/lit8 v0, v1, 0x1

    const-wide/high16 v2, 0x4018000000000000L    # 6.0

    aput-wide v2, v24, v1

    :cond_9
    cmpg-double v1, p16, p12

    if-gez v1, :cond_a

    cmpg-double v1, p12, p20

    if-gez v1, :cond_a

    add-int/lit8 v1, v0, 0x1

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    aput-wide v2, v24, v0

    add-int/lit8 v0, v1, 0x1

    iget-wide v2, v13, Lcom/graphbuilder/org/apache/harmony/awt/gl/Crossing$CubicCurve;->a:D

    aput-wide v2, v24, v1

    add-int/lit8 v1, v0, 0x1

    iget-wide v2, v13, Lcom/graphbuilder/org/apache/harmony/awt/gl/Crossing$CubicCurve;->b:D

    aput-wide v2, v24, v0

    add-int/lit8 v0, v1, 0x1

    const-wide/high16 v2, 0x401c000000000000L    # 7.0

    aput-wide v2, v24, v1

    :cond_a
    move-object/from16 p0, v24

    move/from16 p1, v0

    move-wide/from16 p2, v11

    move-wide/from16 p4, p6

    invoke-static/range {p0 .. p5}, Lcom/graphbuilder/org/apache/harmony/awt/gl/Crossing;->a([DIDD)I

    move-result v0

    const/16 v1, 0xfe

    if-eq v0, v1, :cond_b

    return v0

    :cond_b
    move-object/from16 p0, v13

    move-object/from16 p1, v23

    move/from16 p2, v16

    move-wide/from16 p3, v11

    move-wide/from16 p5, p6

    invoke-virtual/range {p0 .. p6}, Lcom/graphbuilder/org/apache/harmony/awt/gl/Crossing$CubicCurve;->b([DIDD)I

    move-result v0

    return v0
.end method

.method public static intersectLine(DDDDDDDD)I
    .locals 12

    cmpg-double v0, p12, p0

    const/4 v1, 0x0

    if-gez v0, :cond_0

    cmpg-double v0, p12, p4

    if-ltz v0, :cond_2

    :cond_0
    cmpl-double v0, p8, p0

    if-lez v0, :cond_1

    cmpl-double v2, p8, p4

    if-gtz v2, :cond_2

    :cond_1
    cmpl-double v2, p10, p2

    if-lez v2, :cond_3

    cmpl-double v2, p10, p6

    if-lez v2, :cond_3

    :cond_2
    return v1

    :cond_3
    cmpg-double v2, p14, p2

    if-gez v2, :cond_4

    cmpg-double v2, p14, p6

    if-gez v2, :cond_4

    goto :goto_3

    :cond_4
    cmpl-double v2, p0, p4

    const/16 v3, 0xff

    if-nez v2, :cond_5

    return v3

    :cond_5
    cmpg-double v2, p0, p4

    if-gez v2, :cond_8

    cmpg-double v2, p0, p8

    if-gez v2, :cond_6

    move-wide/from16 v4, p8

    goto :goto_0

    :cond_6
    move-wide v4, p0

    :goto_0
    cmpg-double v2, p4, p12

    if-gez v2, :cond_7

    move-wide/from16 v6, p4

    goto :goto_2

    :cond_7
    move-wide/from16 v6, p12

    goto :goto_2

    :cond_8
    cmpg-double v2, p4, p8

    if-gez v2, :cond_9

    move-wide/from16 v4, p8

    goto :goto_1

    :cond_9
    move-wide/from16 v4, p4

    :goto_1
    cmpg-double v2, p0, p12

    if-gez v2, :cond_7

    move-wide v6, p0

    :goto_2
    sub-double v8, p6, p2

    sub-double v10, p4, p0

    div-double/2addr v8, v10

    sub-double/2addr v4, p0

    mul-double/2addr v4, v8

    add-double/2addr v4, p2

    sub-double/2addr v6, p0

    mul-double/2addr v8, v6

    add-double/2addr v8, p2

    cmpg-double v2, v4, p10

    if-gez v2, :cond_a

    cmpg-double v2, v8, p10

    if-gez v2, :cond_a

    return v1

    :cond_a
    cmpl-double v2, v4, p14

    if-lez v2, :cond_13

    cmpl-double v2, v8, p14

    if-lez v2, :cond_13

    :goto_3
    cmpl-double v2, p0, p4

    if-nez v2, :cond_b

    return v1

    :cond_b
    const/4 v2, -0x1

    if-nez v0, :cond_d

    cmpg-double v0, p0, p4

    if-gez v0, :cond_c

    goto :goto_4

    :cond_c
    move v1, v2

    :goto_4
    return v1

    :cond_d
    cmpl-double v0, p8, p4

    const/4 v3, 0x1

    if-nez v0, :cond_f

    cmpg-double v0, p0, p4

    if-gez v0, :cond_e

    move v1, v3

    :cond_e
    return v1

    :cond_f
    cmpg-double v0, p0, p4

    if-gez v0, :cond_11

    cmpg-double v0, p0, p8

    if-gez v0, :cond_10

    cmpg-double v0, p8, p4

    if-gez v0, :cond_10

    move v1, v3

    :cond_10
    return v1

    :cond_11
    cmpg-double v0, p4, p8

    if-gez v0, :cond_12

    cmpg-double v0, p8, p0

    if-gez v0, :cond_12

    move v1, v2

    :cond_12
    return v1

    :cond_13
    return v3
.end method

.method public static intersectPath(Ljava/awt/geom/PathIterator;DDDD)I
    .locals 39

    const/4 v0, 0x6

    new-array v0, v0, [D

    add-double v25, p1, p5

    add-double v27, p3, p7

    const/16 v29, 0x0

    const-wide/16 v1, 0x0

    move-wide v3, v1

    move-wide/from16 v30, v3

    move-wide/from16 v32, v30

    move/from16 v34, v29

    :goto_0
    invoke-interface/range {p0 .. p0}, Ljava/awt/geom/PathIterator;->isDone()Z

    move-result v5

    const/16 v15, 0xff

    if-nez v5, :cond_a

    move-object/from16 v13, p0

    invoke-interface {v13, v0}, Ljava/awt/geom/PathIterator;->currentSegment([D)I

    move-result v5

    const/4 v14, 0x1

    if-eqz v5, :cond_6

    if-eq v5, v14, :cond_5

    const/4 v11, 0x3

    const/4 v9, 0x2

    if-eq v5, v9, :cond_4

    const/4 v12, 0x4

    if-eq v5, v11, :cond_3

    if-eq v5, v12, :cond_0

    move-wide/from16 v5, v30

    move-wide/from16 v30, v1

    move/from16 v1, v29

    goto/16 :goto_6

    :cond_0
    cmpl-double v5, v3, v32

    if-nez v5, :cond_2

    cmpl-double v5, v1, v30

    if-eqz v5, :cond_1

    goto :goto_1

    :cond_1
    move/from16 v1, v29

    goto :goto_2

    :cond_2
    :goto_1
    move-wide/from16 v5, v30

    move-wide/from16 v7, v32

    move-wide/from16 v9, p1

    move-wide/from16 v11, p3

    move-wide/from16 v13, v25

    move-wide/from16 v15, v27

    invoke-static/range {v1 .. v16}, Lcom/graphbuilder/org/apache/harmony/awt/gl/Crossing;->intersectLine(DDDDDDDD)I

    move-result v1

    :goto_2
    move-wide/from16 v5, v30

    move-wide/from16 v3, v32

    goto :goto_3

    :cond_3
    aget-wide v5, v0, v29

    aget-wide v7, v0, v14

    aget-wide v9, v0, v9

    aget-wide v13, v0, v11

    move v15, v12

    move-wide v11, v13

    aget-wide v35, v0, v15

    move-wide/from16 v13, v35

    const/4 v15, 0x5

    aget-wide v37, v0, v15

    move-wide/from16 v15, v37

    move-wide/from16 v17, p1

    move-wide/from16 v19, p3

    move-wide/from16 v21, v25

    move-wide/from16 v23, v27

    invoke-static/range {v1 .. v24}, Lcom/graphbuilder/org/apache/harmony/awt/gl/Crossing;->intersectCubic(DDDDDDDDDDDD)I

    move-result v1

    move-wide/from16 v5, v30

    move-wide/from16 v30, v35

    move-wide/from16 v3, v37

    :goto_3
    const/16 v15, 0xff

    goto/16 :goto_6

    :cond_4
    aget-wide v5, v0, v29

    aget-wide v7, v0, v14

    aget-wide v21, v0, v9

    move-wide/from16 v9, v21

    aget-wide v23, v0, v11

    move-wide/from16 v11, v23

    move-wide/from16 v13, p1

    move-wide/from16 v15, p3

    move-wide/from16 v17, v25

    move-wide/from16 v19, v27

    invoke-static/range {v1 .. v20}, Lcom/graphbuilder/org/apache/harmony/awt/gl/Crossing;->intersectQuad(DDDDDDDDDD)I

    move-result v1

    move-wide/from16 v3, v23

    move-wide/from16 v5, v30

    const/16 v15, 0xff

    move-wide/from16 v30, v21

    goto :goto_6

    :cond_5
    aget-wide v17, v0, v29

    aget-wide v19, v0, v14

    move-wide/from16 v5, v17

    move-wide/from16 v7, v19

    move-wide/from16 v9, p1

    move-wide/from16 v11, p3

    move-wide/from16 v13, v25

    move-wide/from16 v15, v27

    invoke-static/range {v1 .. v16}, Lcom/graphbuilder/org/apache/harmony/awt/gl/Crossing;->intersectLine(DDDDDDDD)I

    move-result v1

    move-wide/from16 v3, v19

    move-wide/from16 v5, v30

    const/16 v15, 0xff

    move-wide/from16 v30, v17

    goto :goto_6

    :cond_6
    cmpl-double v5, v1, v30

    if-nez v5, :cond_8

    cmpl-double v5, v3, v32

    if-eqz v5, :cond_7

    goto :goto_4

    :cond_7
    move/from16 v17, v14

    move/from16 v1, v29

    goto :goto_5

    :cond_8
    :goto_4
    move-wide/from16 v5, v30

    move-wide/from16 v7, v32

    move-wide/from16 v9, p1

    move-wide/from16 v11, p3

    move/from16 v17, v14

    move-wide/from16 v13, v25

    move-wide/from16 v15, v27

    invoke-static/range {v1 .. v16}, Lcom/graphbuilder/org/apache/harmony/awt/gl/Crossing;->intersectLine(DDDDDDDD)I

    move-result v1

    :goto_5
    aget-wide v2, v0, v29

    aget-wide v4, v0, v17

    move-wide/from16 v30, v2

    move-wide/from16 v32, v4

    const/16 v15, 0xff

    move-wide/from16 v3, v32

    move-wide/from16 v5, v30

    :goto_6
    if-ne v1, v15, :cond_9

    return v15

    :cond_9
    add-int v34, v34, v1

    invoke-interface/range {p0 .. p0}, Ljava/awt/geom/PathIterator;->next()V

    move-wide/from16 v1, v30

    move-wide/from16 v30, v5

    goto/16 :goto_0

    :cond_a
    cmpl-double v0, v3, v32

    if-eqz v0, :cond_c

    move-wide/from16 v5, v30

    move-wide/from16 v7, v32

    move-wide/from16 v9, p1

    move-wide/from16 v11, p3

    move-wide/from16 v13, v25

    move v0, v15

    move-wide/from16 v15, v27

    invoke-static/range {v1 .. v16}, Lcom/graphbuilder/org/apache/harmony/awt/gl/Crossing;->intersectLine(DDDDDDDD)I

    move-result v1

    if-ne v1, v0, :cond_b

    return v0

    :cond_b
    add-int v34, v34, v1

    :cond_c
    return v34
.end method

.method public static intersectQuad(DDDDDDDDDD)I
    .locals 25

    cmpg-double v0, p16, p0

    const/4 v13, 0x0

    if-gez v0, :cond_0

    cmpg-double v0, p16, p4

    if-gez v0, :cond_0

    cmpg-double v0, p16, p8

    if-ltz v0, :cond_2

    :cond_0
    cmpl-double v0, p12, p0

    if-lez v0, :cond_1

    cmpl-double v1, p12, p4

    if-lez v1, :cond_1

    cmpl-double v1, p12, p8

    if-gtz v1, :cond_2

    :cond_1
    cmpl-double v1, p14, p2

    if-lez v1, :cond_3

    cmpl-double v1, p14, p6

    if-lez v1, :cond_3

    cmpl-double v1, p14, p10

    if-lez v1, :cond_3

    :cond_2
    return v13

    :cond_3
    cmpg-double v1, p18, p2

    if-gez v1, :cond_7

    cmpg-double v1, p18, p6

    if-gez v1, :cond_7

    cmpg-double v1, p18, p10

    if-gez v1, :cond_7

    if-eqz v0, :cond_7

    cmpl-double v0, p12, p8

    if-eqz v0, :cond_7

    cmpg-double v0, p0, p8

    if-gez v0, :cond_5

    cmpg-double v0, p0, p12

    if-gez v0, :cond_4

    cmpg-double v0, p12, p8

    if-gez v0, :cond_4

    const/4 v13, 0x1

    :cond_4
    return v13

    :cond_5
    cmpg-double v0, p8, p12

    if-gez v0, :cond_6

    cmpg-double v0, p12, p0

    if-gez v0, :cond_6

    const/4 v13, -0x1

    :cond_6
    return v13

    :cond_7
    new-instance v14, Lcom/graphbuilder/org/apache/harmony/awt/gl/Crossing$QuadCurve;

    move-object v0, v14

    move-wide/from16 v1, p0

    move-wide/from16 v3, p2

    move-wide/from16 v5, p4

    move-wide/from16 v7, p6

    move-wide/from16 v9, p8

    move-wide/from16 v11, p10

    invoke-direct/range {v0 .. v12}, Lcom/graphbuilder/org/apache/harmony/awt/gl/Crossing$QuadCurve;-><init>(DDDDDD)V

    sub-double v0, p12, p0

    sub-double v11, p14, p2

    sub-double v2, p16, p0

    sub-double v15, p18, p2

    const/4 v4, 0x3

    new-array v10, v4, [D

    new-array v9, v4, [D

    invoke-virtual {v14, v10, v0, v1}, Lcom/graphbuilder/org/apache/harmony/awt/gl/Crossing$QuadCurve;->d([DD)I

    move-result v17

    invoke-virtual {v14, v9, v2, v3}, Lcom/graphbuilder/org/apache/harmony/awt/gl/Crossing$QuadCurve;->d([DD)I

    move-result v18

    if-nez v17, :cond_8

    if-nez v18, :cond_8

    return v13

    :cond_8
    const-wide v4, 0x3ee4f8b588e368f1L    # 1.0E-5

    sub-double v19, v0, v4

    add-double v21, v2, v4

    const/16 v0, 0x1c

    new-array v13, v0, [D

    const/4 v2, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object v0, v14

    move-object v1, v13

    move-object v3, v10

    move/from16 v4, v17

    move-wide/from16 v5, v19

    move-wide/from16 v7, v21

    move-object/from16 p2, v9

    move/from16 v9, v23

    move-object/from16 v23, v10

    move/from16 v10, v24

    invoke-virtual/range {v0 .. v10}, Lcom/graphbuilder/org/apache/harmony/awt/gl/Crossing$QuadCurve;->a([DI[DIDDZI)I

    move-result v2

    const/4 v9, 0x0

    const/4 v10, 0x1

    move-object/from16 v3, p2

    move/from16 v4, v18

    invoke-virtual/range {v0 .. v10}, Lcom/graphbuilder/org/apache/harmony/awt/gl/Crossing$QuadCurve;->a([DI[DIDDZI)I

    move-result v2

    invoke-virtual {v14, v3}, Lcom/graphbuilder/org/apache/harmony/awt/gl/Crossing$QuadCurve;->c([D)I

    move-result v4

    const/4 v9, 0x1

    const/4 v10, 0x2

    invoke-virtual/range {v0 .. v10}, Lcom/graphbuilder/org/apache/harmony/awt/gl/Crossing$QuadCurve;->a([DI[DIDDZI)I

    move-result v0

    cmpg-double v1, p12, p0

    if-gez v1, :cond_9

    cmpg-double v1, p0, p16

    if-gez v1, :cond_9

    add-int/lit8 v1, v0, 0x1

    const-wide/16 v2, 0x0

    aput-wide v2, v13, v0

    add-int/lit8 v0, v1, 0x1

    aput-wide v2, v13, v1

    add-int/lit8 v1, v0, 0x1

    aput-wide v2, v13, v0

    add-int/lit8 v0, v1, 0x1

    const-wide/high16 v2, 0x4010000000000000L    # 4.0

    aput-wide v2, v13, v1

    :cond_9
    cmpg-double v1, p12, p8

    if-gez v1, :cond_a

    cmpg-double v1, p8, p16

    if-gez v1, :cond_a

    add-int/lit8 v1, v0, 0x1

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    aput-wide v2, v13, v0

    add-int/lit8 v0, v1, 0x1

    iget-wide v2, v14, Lcom/graphbuilder/org/apache/harmony/awt/gl/Crossing$QuadCurve;->a:D

    aput-wide v2, v13, v1

    add-int/lit8 v1, v0, 0x1

    iget-wide v2, v14, Lcom/graphbuilder/org/apache/harmony/awt/gl/Crossing$QuadCurve;->b:D

    aput-wide v2, v13, v0

    add-int/lit8 v0, v1, 0x1

    const-wide/high16 v2, 0x4014000000000000L    # 5.0

    aput-wide v2, v13, v1

    :cond_a
    move-object/from16 p0, v13

    move/from16 p1, v0

    move-wide/from16 p2, v11

    move-wide/from16 p4, v15

    invoke-static/range {p0 .. p5}, Lcom/graphbuilder/org/apache/harmony/awt/gl/Crossing;->a([DIDD)I

    move-result v0

    const/16 v1, 0xfe

    if-eq v0, v1, :cond_b

    return v0

    :cond_b
    move-object/from16 p0, v14

    move-object/from16 p1, v23

    move/from16 p2, v17

    move-wide/from16 p3, v11

    move-wide/from16 p5, v15

    invoke-virtual/range {p0 .. p6}, Lcom/graphbuilder/org/apache/harmony/awt/gl/Crossing$QuadCurve;->b([DIDD)I

    move-result v0

    return v0
.end method

.method public static intersectShape(Ljava/awt/Shape;DDDD)I
    .locals 10

    invoke-interface {p0}, Ljava/awt/Shape;->getBounds2D()Ljava/awt/geom/Rectangle2D;

    move-result-object v0

    move-wide v1, p1

    move-wide v3, p3

    move-wide v5, p5

    move-wide/from16 v7, p7

    invoke-virtual/range {v0 .. v8}, Ljava/awt/geom/Rectangle2D;->intersects(DDDD)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x0

    move-object v1, p0

    invoke-interface {p0, v0}, Ljava/awt/Shape;->getPathIterator(Ljava/awt/geom/AffineTransform;)Ljava/awt/geom/PathIterator;

    move-result-object v1

    move-wide v2, p1

    move-wide v4, p3

    move-wide v6, p5

    move-wide/from16 v8, p7

    invoke-static/range {v1 .. v9}, Lcom/graphbuilder/org/apache/harmony/awt/gl/Crossing;->intersectPath(Ljava/awt/geom/PathIterator;DDDD)I

    move-result v0

    return v0
.end method

.method public static isInsideEvenOdd(I)Z
    .locals 1

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isInsideNonZero(I)Z
    .locals 0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isZero(D)Z
    .locals 2

    const-wide v0, -0x411b074a771c970fL    # -1.0E-5

    cmpg-double v0, v0, p0

    if-gez v0, :cond_0

    const-wide v0, 0x3ee4f8b588e368f1L    # 1.0E-5

    cmpg-double p0, p0, v0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static solveCubic([D[D)I
    .locals 23

    move-object/from16 v0, p1

    const/4 v1, 0x3

    aget-wide v2, p0, v1

    const-wide/16 v4, 0x0

    cmpl-double v6, v2, v4

    if-nez v6, :cond_0

    invoke-static/range {p0 .. p1}, Lcom/graphbuilder/org/apache/harmony/awt/gl/Crossing;->solveQuad([D[D)I

    move-result v0

    return v0

    :cond_0
    const/4 v6, 0x2

    aget-wide v7, p0, v6

    div-double/2addr v7, v2

    const/4 v9, 0x1

    aget-wide v10, p0, v9

    div-double/2addr v10, v2

    const/4 v12, 0x0

    aget-wide v13, p0, v12

    div-double/2addr v13, v2

    mul-double v2, v7, v7

    const-wide/high16 v15, 0x4008000000000000L    # 3.0

    mul-double v17, v10, v15

    sub-double v2, v2, v17

    const-wide/high16 v17, 0x4022000000000000L    # 9.0

    div-double v2, v2, v17

    const-wide/high16 v19, 0x4000000000000000L    # 2.0

    mul-double v21, v7, v19

    mul-double v21, v21, v7

    mul-double v21, v21, v7

    mul-double v17, v17, v7

    mul-double v17, v17, v10

    sub-double v21, v21, v17

    const-wide/high16 v10, 0x403b000000000000L    # 27.0

    mul-double/2addr v13, v10

    add-double v21, v21, v13

    const-wide/high16 v10, 0x404b000000000000L    # 54.0

    div-double v21, v21, v10

    mul-double v10, v2, v2

    mul-double/2addr v10, v2

    mul-double v13, v21, v21

    neg-double v7, v7

    div-double/2addr v7, v15

    cmpg-double v17, v13, v10

    if-gez v17, :cond_1

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    div-double v21, v21, v4

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->acos(D)D

    move-result-wide v4

    div-double/2addr v4, v15

    const-wide/high16 v10, -0x4000000000000000L    # -2.0

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    mul-double/2addr v2, v10

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    mul-double/2addr v10, v2

    add-double/2addr v10, v7

    aput-wide v10, v0, v12

    const-wide v10, 0x4000c152382d7365L    # 2.0943951023931953

    add-double v12, v4, v10

    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    mul-double/2addr v12, v2

    add-double/2addr v12, v7

    aput-wide v12, v0, v9

    sub-double/2addr v4, v10

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    add-double/2addr v2, v7

    aput-wide v2, v0, v6

    goto :goto_1

    :cond_1
    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->abs(D)D

    move-result-wide v15

    sub-double/2addr v13, v10

    invoke-static {v13, v14}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    add-double/2addr v10, v15

    move-wide v15, v7

    const-wide v6, 0x3fd5555555555555L    # 0.3333333333333333

    invoke-static {v10, v11, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    cmpl-double v4, v21, v4

    if-lez v4, :cond_2

    neg-double v6, v6

    :cond_2
    const-wide v4, -0x4224832026284245L    # -1.0E-10

    cmpg-double v8, v4, v6

    const-wide v10, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    if-gez v8, :cond_3

    cmpg-double v8, v6, v10

    if-gez v8, :cond_3

    aput-wide v15, v0, v12

    goto :goto_0

    :cond_3
    div-double/2addr v2, v6

    add-double/2addr v6, v2

    add-double v2, v6, v15

    aput-wide v2, v0, v12

    cmpg-double v2, v4, v13

    if-gez v2, :cond_4

    cmpg-double v2, v13, v10

    if-gez v2, :cond_4

    neg-double v2, v6

    div-double v2, v2, v19

    add-double/2addr v2, v15

    aput-wide v2, v0, v9

    const/4 v1, 0x2

    goto :goto_1

    :cond_4
    :goto_0
    move v1, v9

    :goto_1
    invoke-static {v0, v1}, Lcom/graphbuilder/org/apache/harmony/awt/gl/Crossing;->b([DI)I

    move-result v0

    return v0
.end method

.method public static solveQuad([D[D)I
    .locals 16

    move-object/from16 v0, p1

    const/4 v1, 0x2

    aget-wide v2, p0, v1

    const/4 v4, 0x1

    aget-wide v5, p0, v4

    const/4 v7, 0x0

    aget-wide v8, p0, v7

    const-wide/16 v10, 0x0

    cmpl-double v12, v2, v10

    if-nez v12, :cond_1

    cmpl-double v1, v5, v10

    if-nez v1, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    neg-double v1, v8

    div-double/2addr v1, v5

    aput-wide v1, v0, v7

    goto :goto_0

    :cond_1
    mul-double v12, v5, v5

    const-wide/high16 v14, 0x4010000000000000L    # 4.0

    mul-double/2addr v14, v2

    mul-double/2addr v14, v8

    sub-double/2addr v12, v14

    cmpg-double v8, v12, v10

    if-gez v8, :cond_2

    return v7

    :cond_2
    invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    neg-double v5, v5

    add-double v12, v5, v8

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    mul-double/2addr v2, v14

    div-double/2addr v12, v2

    aput-wide v12, v0, v7

    cmpl-double v7, v8, v10

    if-eqz v7, :cond_3

    sub-double/2addr v5, v8

    div-double/2addr v5, v2

    aput-wide v5, v0, v4

    goto :goto_1

    :cond_3
    :goto_0
    move v1, v4

    :goto_1
    invoke-static {v0, v1}, Lcom/graphbuilder/org/apache/harmony/awt/gl/Crossing;->b([DI)I

    move-result v0

    return v0
.end method
