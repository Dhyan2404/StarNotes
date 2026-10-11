.class public abstract Lsun/awt/geom/Curve;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DECREASING:I = -0x1

.field public static final INCREASING:I = 0x1

.field public static final RECT_INTERSECTS:I = -0x80000000

.field public static final TMIN:D = 0.001


# instance fields
.field protected direction:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lsun/awt/geom/Curve;->direction:I

    return-void
.end method

.method public static diffbits(DD)J
    .locals 0

    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide p0

    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide p2

    sub-long/2addr p0, p2

    invoke-static {p0, p1}, Ljava/lang/Math;->abs(J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static insertCubic(Ljava/util/Vector;DD[D)V
    .locals 19

    const/4 v0, 0x5

    aget-wide v16, p5, v0

    cmpl-double v0, p3, v16

    const/4 v1, 0x0

    const/4 v4, 0x2

    const/4 v2, 0x4

    const/4 v5, 0x1

    const/4 v12, 0x3

    if-lez v0, :cond_0

    aget-wide v2, p5, v2

    aget-wide v6, p5, v4

    aget-wide v8, p5, v12

    aget-wide v10, p5, v1

    aget-wide v12, p5, v5

    const/16 v18, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move-wide/from16 v4, v16

    move-wide/from16 v14, p1

    move-wide/from16 v16, p3

    invoke-static/range {v0 .. v18}, Lsun/awt/geom/Order3;->insert(Ljava/util/Vector;[DDDDDDDDDI)V

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    aget-wide v6, p5, v5

    cmpl-double v0, p3, v6

    if-nez v0, :cond_1

    aget-wide v6, p5, v12

    cmpl-double v0, p3, v6

    if-nez v0, :cond_1

    return-void

    :cond_1
    aget-wide v6, p5, v1

    aget-wide v8, p5, v5

    aget-wide v10, p5, v4

    aget-wide v12, p5, v12

    aget-wide v14, p5, v2

    const/16 v18, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move-wide/from16 v2, p1

    move-wide/from16 v4, p3

    invoke-static/range {v0 .. v18}, Lsun/awt/geom/Order3;->insert(Ljava/util/Vector;[DDDDDDDDDI)V

    :goto_0
    return-void
.end method

.method public static insertLine(Ljava/util/Vector;DDDD)V
    .locals 12

    move-object v0, p0

    cmpg-double v1, p3, p7

    if-gez v1, :cond_0

    new-instance v11, Lsun/awt/geom/Order1;

    const/4 v10, 0x1

    move-object v1, v11

    move-wide v2, p1

    move-wide v4, p3

    move-wide/from16 v6, p5

    move-wide/from16 v8, p7

    invoke-direct/range {v1 .. v10}, Lsun/awt/geom/Order1;-><init>(DDDDI)V

    invoke-virtual {p0, v11}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    cmpl-double v1, p3, p7

    if-lez v1, :cond_1

    new-instance v11, Lsun/awt/geom/Order1;

    const/4 v10, -0x1

    move-object v1, v11

    move-wide/from16 v2, p5

    move-wide/from16 v4, p7

    move-wide v6, p1

    move-wide v8, p3

    invoke-direct/range {v1 .. v10}, Lsun/awt/geom/Order1;-><init>(DDDDI)V

    invoke-virtual {p0, v11}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public static insertMove(Ljava/util/Vector;DD)V
    .locals 1

    new-instance v0, Lsun/awt/geom/Order0;

    invoke-direct {v0, p1, p2, p3, p4}, Lsun/awt/geom/Order0;-><init>(DD)V

    invoke-virtual {p0, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static insertQuad(Ljava/util/Vector;DD[D)V
    .locals 15

    const/4 v0, 0x3

    aget-wide v12, p5, v0

    cmpl-double v0, p3, v12

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-lez v0, :cond_0

    aget-wide v4, p5, v2

    aget-wide v6, p5, v1

    aget-wide v8, p5, v3

    const/4 v14, -0x1

    move-object v0, p0

    move-object/from16 v1, p5

    move-wide v2, v4

    move-wide v4, v12

    move-wide/from16 v10, p1

    move-wide/from16 v12, p3

    invoke-static/range {v0 .. v14}, Lsun/awt/geom/Order2;->insert(Ljava/util/Vector;[DDDDDDDI)V

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    aget-wide v4, p5, v3

    cmpl-double v0, p3, v4

    if-nez v0, :cond_1

    return-void

    :cond_1
    aget-wide v6, p5, v1

    aget-wide v8, p5, v3

    aget-wide v10, p5, v2

    const/4 v14, 0x1

    move-object v0, p0

    move-object/from16 v1, p5

    move-wide/from16 v2, p1

    move-wide/from16 v4, p3

    invoke-static/range {v0 .. v14}, Lsun/awt/geom/Order2;->insert(Ljava/util/Vector;[DDDDDDDI)V

    :goto_0
    return-void
.end method

.method public static next(D)D
    .locals 2

    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide p0

    const-wide/16 v0, 0x1

    add-long/2addr p0, v0

    invoke-static {p0, p1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide p0

    return-wide p0
.end method

.method public static orderof(DD)I
    .locals 1

    cmpg-double v0, p0, p2

    if-gez v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    cmpl-double p0, p0, p2

    if-lez p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static pointCrossingsForCubic(DDDDDDDDDDI)I
    .locals 42

    move/from16 v0, p20

    cmpg-double v1, p2, p6

    const/4 v2, 0x0

    if-gez v1, :cond_0

    cmpg-double v1, p2, p10

    if-gez v1, :cond_0

    cmpg-double v1, p2, p14

    if-gez v1, :cond_0

    cmpg-double v1, p2, p18

    if-gez v1, :cond_0

    return v2

    :cond_0
    cmpl-double v1, p2, p6

    if-ltz v1, :cond_1

    cmpl-double v3, p2, p10

    if-ltz v3, :cond_1

    cmpl-double v3, p2, p14

    if-ltz v3, :cond_1

    cmpl-double v3, p2, p18

    if-ltz v3, :cond_1

    return v2

    :cond_1
    cmpl-double v3, p0, p4

    if-ltz v3, :cond_2

    cmpl-double v3, p0, p8

    if-ltz v3, :cond_2

    cmpl-double v3, p0, p12

    if-ltz v3, :cond_2

    cmpl-double v3, p0, p16

    if-ltz v3, :cond_2

    return v2

    :cond_2
    cmpg-double v3, p0, p4

    const/4 v4, 0x1

    if-gez v3, :cond_5

    cmpg-double v3, p0, p8

    if-gez v3, :cond_5

    cmpg-double v3, p0, p12

    if-gez v3, :cond_5

    cmpg-double v3, p0, p16

    if-gez v3, :cond_5

    if-ltz v1, :cond_3

    cmpg-double v0, p2, p18

    if-gez v0, :cond_4

    return v4

    :cond_3
    cmpl-double v0, p2, p18

    if-ltz v0, :cond_4

    const/4 v0, -0x1

    return v0

    :cond_4
    return v2

    :cond_5
    const/16 v1, 0x34

    if-le v0, v1, :cond_6

    move-wide/from16 v0, p0

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    move-wide/from16 v8, p16

    move-wide/from16 v10, p18

    invoke-static/range {v0 .. v11}, Lsun/awt/geom/Curve;->pointCrossingsForLine(DDDDDD)I

    move-result v0

    return v0

    :cond_6
    add-double v5, p8, p12

    const-wide/high16 v7, 0x4000000000000000L    # 2.0

    div-double/2addr v5, v7

    add-double v9, p10, p14

    div-double/2addr v9, v7

    add-double v11, p4, p8

    div-double/2addr v11, v7

    add-double v13, p6, p10

    div-double/2addr v13, v7

    add-double v15, p12, p16

    div-double v33, v15, v7

    add-double v15, p14, p18

    div-double v35, v15, v7

    add-double v15, v11, v5

    div-double/2addr v15, v7

    add-double v17, v13, v9

    div-double v17, v17, v7

    add-double v5, v5, v33

    div-double v29, v5, v7

    add-double v9, v9, v35

    div-double v31, v9, v7

    add-double v5, v15, v29

    div-double v25, v5, v7

    add-double v5, v17, v31

    div-double v27, v5, v7

    invoke-static/range {v25 .. v26}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    if-nez v1, :cond_8

    invoke-static/range {v27 .. v28}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    if-eqz v1, :cond_7

    goto :goto_0

    :cond_7
    add-int/lit8 v20, v0, 0x1

    move/from16 v41, v20

    move-wide/from16 v0, p0

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    move-wide v8, v11

    move-wide v10, v13

    move-wide v12, v15

    move-wide/from16 v14, v17

    move-wide/from16 v16, v25

    move-wide/from16 v18, v27

    invoke-static/range {v0 .. v20}, Lsun/awt/geom/Curve;->pointCrossingsForCubic(DDDDDDDDDDI)I

    move-result v0

    move-wide/from16 v21, p0

    move-wide/from16 v23, p2

    move-wide/from16 v37, p16

    move-wide/from16 v39, p18

    invoke-static/range {v21 .. v41}, Lsun/awt/geom/Curve;->pointCrossingsForCubic(DDDDDDDDDDI)I

    move-result v1

    add-int/2addr v0, v1

    return v0

    :cond_8
    :goto_0
    return v2
.end method

.method public static pointCrossingsForLine(DDDDDD)I
    .locals 4

    cmpg-double v0, p2, p6

    const/4 v1, 0x0

    if-gez v0, :cond_0

    cmpg-double v0, p2, p10

    if-gez v0, :cond_0

    return v1

    :cond_0
    cmpl-double v0, p2, p6

    if-ltz v0, :cond_1

    cmpl-double v0, p2, p10

    if-ltz v0, :cond_1

    return v1

    :cond_1
    cmpl-double v0, p0, p4

    if-ltz v0, :cond_2

    cmpl-double v0, p0, p8

    if-ltz v0, :cond_2

    return v1

    :cond_2
    cmpg-double v0, p0, p4

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-gez v0, :cond_4

    cmpg-double v0, p0, p8

    if-gez v0, :cond_4

    cmpg-double p0, p6, p10

    if-gez p0, :cond_3

    goto :goto_0

    :cond_3
    move v2, v3

    :goto_0
    return v2

    :cond_4
    sub-double/2addr p2, p6

    sub-double/2addr p8, p4

    mul-double/2addr p2, p8

    sub-double p8, p10, p6

    div-double/2addr p2, p8

    add-double/2addr p4, p2

    cmpl-double p0, p0, p4

    if-ltz p0, :cond_5

    return v1

    :cond_5
    cmpg-double p0, p6, p10

    if-gez p0, :cond_6

    goto :goto_1

    :cond_6
    move v2, v3

    :goto_1
    return v2
.end method

.method public static pointCrossingsForPath(Ljava/awt/geom/PathIterator;DD)I
    .locals 34

    move-object/from16 v0, p0

    invoke-interface/range {p0 .. p0}, Ljava/awt/geom/PathIterator;->isDone()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    :cond_0
    const/4 v1, 0x6

    new-array v1, v1, [D

    invoke-interface {v0, v1}, Ljava/awt/geom/PathIterator;->currentSegment([D)I

    move-result v3

    if-nez v3, :cond_a

    invoke-interface/range {p0 .. p0}, Ljava/awt/geom/PathIterator;->next()V

    aget-wide v3, v1, v2

    const/4 v5, 0x1

    aget-wide v6, v1, v5

    move/from16 v29, v2

    move-wide v12, v3

    move-wide v14, v6

    :goto_0
    invoke-interface/range {p0 .. p0}, Ljava/awt/geom/PathIterator;->isDone()Z

    move-result v8

    if-nez v8, :cond_8

    invoke-interface {v0, v1}, Ljava/awt/geom/PathIterator;->currentSegment([D)I

    move-result v8

    if-eqz v8, :cond_5

    if-eq v8, v5, :cond_4

    const/4 v9, 0x3

    const/4 v10, 0x2

    if-eq v8, v10, :cond_3

    const/4 v11, 0x4

    if-eq v8, v9, :cond_2

    if-eq v8, v11, :cond_1

    goto/16 :goto_2

    :cond_1
    cmpl-double v8, v14, v6

    if-eqz v8, :cond_7

    move-wide/from16 v8, p1

    move-wide/from16 v10, p3

    move-wide/from16 v16, v3

    move-wide/from16 v18, v6

    invoke-static/range {v8 .. v19}, Lsun/awt/geom/Curve;->pointCrossingsForLine(DDDDDD)I

    move-result v8

    add-int v29, v29, v8

    goto/16 :goto_1

    :cond_2
    aget-wide v30, v1, v11

    move-wide/from16 v24, v30

    const/4 v8, 0x5

    aget-wide v32, v1, v8

    move-wide/from16 v26, v32

    aget-wide v16, v1, v2

    aget-wide v18, v1, v5

    aget-wide v20, v1, v10

    aget-wide v22, v1, v9

    const/16 v28, 0x0

    move-wide/from16 v8, p1

    move-wide/from16 v10, p3

    invoke-static/range {v8 .. v28}, Lsun/awt/geom/Curve;->pointCrossingsForCubic(DDDDDDDDDDI)I

    move-result v8

    add-int v29, v29, v8

    move-wide/from16 v12, v30

    move-wide/from16 v14, v32

    goto :goto_2

    :cond_3
    aget-wide v25, v1, v10

    move-wide/from16 v20, v25

    aget-wide v27, v1, v9

    move-wide/from16 v22, v27

    aget-wide v16, v1, v2

    aget-wide v18, v1, v5

    const/16 v24, 0x0

    move-wide/from16 v8, p1

    move-wide/from16 v10, p3

    invoke-static/range {v8 .. v24}, Lsun/awt/geom/Curve;->pointCrossingsForQuad(DDDDDDDDI)I

    move-result v8

    add-int v29, v29, v8

    move-wide/from16 v12, v25

    move-wide/from16 v14, v27

    goto :goto_2

    :cond_4
    aget-wide v20, v1, v2

    aget-wide v22, v1, v5

    move-wide/from16 v8, p1

    move-wide/from16 v10, p3

    move-wide/from16 v16, v20

    move-wide/from16 v18, v22

    invoke-static/range {v8 .. v19}, Lsun/awt/geom/Curve;->pointCrossingsForLine(DDDDDD)I

    move-result v8

    add-int v29, v29, v8

    move-wide/from16 v12, v20

    move-wide/from16 v14, v22

    goto :goto_2

    :cond_5
    cmpl-double v8, v14, v6

    if-eqz v8, :cond_6

    move-wide/from16 v8, p1

    move-wide/from16 v10, p3

    move-wide/from16 v16, v3

    move-wide/from16 v18, v6

    invoke-static/range {v8 .. v19}, Lsun/awt/geom/Curve;->pointCrossingsForLine(DDDDDD)I

    move-result v3

    add-int v29, v29, v3

    :cond_6
    aget-wide v3, v1, v2

    aget-wide v6, v1, v5

    :cond_7
    :goto_1
    move-wide v12, v3

    move-wide v14, v6

    :goto_2
    invoke-interface/range {p0 .. p0}, Ljava/awt/geom/PathIterator;->next()V

    goto/16 :goto_0

    :cond_8
    cmpl-double v0, v14, v6

    if-eqz v0, :cond_9

    move-wide/from16 v8, p1

    move-wide/from16 v10, p3

    move-wide/from16 v16, v3

    move-wide/from16 v18, v6

    invoke-static/range {v8 .. v19}, Lsun/awt/geom/Curve;->pointCrossingsForLine(DDDDDD)I

    move-result v0

    add-int v29, v29, v0

    :cond_9
    return v29

    :cond_a
    new-instance v0, Ljava/awt/geom/IllegalPathStateException;

    const-string v1, "missing initial moveto in path definition"

    invoke-direct {v0, v1}, Ljava/awt/geom/IllegalPathStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static pointCrossingsForQuad(DDDDDDDDI)I
    .locals 34

    move/from16 v0, p16

    cmpg-double v1, p2, p6

    const/4 v2, 0x0

    if-gez v1, :cond_0

    cmpg-double v1, p2, p10

    if-gez v1, :cond_0

    cmpg-double v1, p2, p14

    if-gez v1, :cond_0

    return v2

    :cond_0
    cmpl-double v1, p2, p6

    if-ltz v1, :cond_1

    cmpl-double v3, p2, p10

    if-ltz v3, :cond_1

    cmpl-double v3, p2, p14

    if-ltz v3, :cond_1

    return v2

    :cond_1
    cmpl-double v3, p0, p4

    if-ltz v3, :cond_2

    cmpl-double v3, p0, p8

    if-ltz v3, :cond_2

    cmpl-double v3, p0, p12

    if-ltz v3, :cond_2

    return v2

    :cond_2
    cmpg-double v3, p0, p4

    const/4 v4, 0x1

    if-gez v3, :cond_5

    cmpg-double v3, p0, p8

    if-gez v3, :cond_5

    cmpg-double v3, p0, p12

    if-gez v3, :cond_5

    if-ltz v1, :cond_3

    cmpg-double v0, p2, p14

    if-gez v0, :cond_4

    return v4

    :cond_3
    cmpl-double v0, p2, p14

    if-ltz v0, :cond_4

    const/4 v0, -0x1

    return v0

    :cond_4
    return v2

    :cond_5
    const/16 v1, 0x34

    if-le v0, v1, :cond_6

    move-wide/from16 v0, p0

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    move-wide/from16 v8, p12

    move-wide/from16 v10, p14

    invoke-static/range {v0 .. v11}, Lsun/awt/geom/Curve;->pointCrossingsForLine(DDDDDD)I

    move-result v0

    return v0

    :cond_6
    add-double v5, p4, p8

    const-wide/high16 v7, 0x4000000000000000L    # 2.0

    div-double v9, v5, v7

    add-double v5, p6, p10

    div-double v11, v5, v7

    add-double v5, p8, p12

    div-double v25, v5, v7

    add-double v5, p10, p14

    div-double v27, v5, v7

    add-double v5, v9, v25

    div-double v21, v5, v7

    add-double v5, v11, v27

    div-double v23, v5, v7

    invoke-static/range {v21 .. v22}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    if-nez v1, :cond_8

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    if-eqz v1, :cond_7

    goto :goto_0

    :cond_7
    add-int/lit8 v16, v0, 0x1

    move/from16 v33, v16

    move-wide/from16 v0, p0

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    move-wide v8, v9

    move-wide v10, v11

    move-wide/from16 v12, v21

    move-wide/from16 v14, v23

    invoke-static/range {v0 .. v16}, Lsun/awt/geom/Curve;->pointCrossingsForQuad(DDDDDDDDI)I

    move-result v0

    move-wide/from16 v17, p0

    move-wide/from16 v19, p2

    move-wide/from16 v29, p12

    move-wide/from16 v31, p14

    invoke-static/range {v17 .. v33}, Lsun/awt/geom/Curve;->pointCrossingsForQuad(DDDDDDDDI)I

    move-result v1

    add-int/2addr v0, v1

    return v0

    :cond_8
    :goto_0
    return v2
.end method

.method public static prev(D)D
    .locals 2

    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide p0

    const-wide/16 v0, 0x1

    sub-long/2addr p0, v0

    invoke-static {p0, p1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide p0

    return-wide p0
.end method

.method public static rectCrossingsForCubic(IDDDDDDDDDDDDI)I
    .locals 39

    move/from16 v0, p25

    cmpl-double v1, p11, p7

    if-ltz v1, :cond_0

    cmpl-double v2, p15, p7

    if-ltz v2, :cond_0

    cmpl-double v2, p19, p7

    if-ltz v2, :cond_0

    cmpl-double v2, p23, p7

    if-ltz v2, :cond_0

    return p0

    :cond_0
    cmpg-double v2, p11, p3

    if-gtz v2, :cond_1

    cmpg-double v3, p15, p3

    if-gtz v3, :cond_1

    cmpg-double v3, p19, p3

    if-gtz v3, :cond_1

    cmpg-double v3, p23, p3

    if-gtz v3, :cond_1

    return p0

    :cond_1
    cmpg-double v3, p9, p1

    if-gtz v3, :cond_2

    cmpg-double v3, p13, p1

    if-gtz v3, :cond_2

    cmpg-double v3, p17, p1

    if-gtz v3, :cond_2

    cmpg-double v3, p21, p1

    if-gtz v3, :cond_2

    return p0

    :cond_2
    cmpl-double v3, p9, p5

    if-ltz v3, :cond_8

    cmpl-double v3, p13, p5

    if-ltz v3, :cond_8

    cmpl-double v3, p17, p5

    if-ltz v3, :cond_8

    cmpl-double v3, p21, p5

    if-ltz v3, :cond_8

    cmpg-double v0, p11, p23

    if-gez v0, :cond_4

    if-gtz v2, :cond_3

    cmpl-double v0, p23, p3

    if-lez v0, :cond_3

    add-int/lit8 v0, p0, 0x1

    goto :goto_0

    :cond_3
    move/from16 v0, p0

    :goto_0
    cmpg-double v1, p11, p7

    if-gez v1, :cond_7

    cmpl-double v1, p23, p7

    if-ltz v1, :cond_7

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    cmpg-double v0, p23, p11

    if-gez v0, :cond_6

    cmpg-double v0, p23, p3

    if-gtz v0, :cond_5

    cmpl-double v0, p11, p3

    if-lez v0, :cond_5

    add-int/lit8 v0, p0, -0x1

    goto :goto_1

    :cond_5
    move/from16 v0, p0

    :goto_1
    cmpg-double v2, p23, p7

    if-gez v2, :cond_7

    if-ltz v1, :cond_7

    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_6
    move/from16 v0, p0

    :cond_7
    :goto_2
    return v0

    :cond_8
    cmpl-double v1, p9, p1

    const/high16 v15, -0x80000000

    if-lez v1, :cond_9

    cmpg-double v1, p9, p5

    if-gez v1, :cond_9

    cmpl-double v1, p11, p3

    if-lez v1, :cond_9

    cmpg-double v1, p11, p7

    if-ltz v1, :cond_a

    :cond_9
    cmpl-double v1, p21, p1

    if-lez v1, :cond_b

    cmpg-double v1, p21, p5

    if-gez v1, :cond_b

    cmpl-double v1, p23, p3

    if-lez v1, :cond_b

    cmpg-double v1, p23, p7

    if-gez v1, :cond_b

    :cond_a
    return v15

    :cond_b
    const/16 v1, 0x34

    if-le v0, v1, :cond_c

    move/from16 v0, p0

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    move-wide/from16 v5, p5

    move-wide/from16 v7, p7

    move-wide/from16 v9, p9

    move-wide/from16 v11, p11

    move-wide/from16 v13, p21

    move-wide/from16 v15, p23

    invoke-static/range {v0 .. v16}, Lsun/awt/geom/Curve;->rectCrossingsForLine(IDDDDDDDD)I

    move-result v0

    return v0

    :cond_c
    add-double v1, p13, p17

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    div-double/2addr v1, v3

    add-double v5, p15, p19

    div-double/2addr v5, v3

    add-double v7, p9, p13

    div-double v13, v7, v3

    add-double v7, p11, p15

    div-double v16, v7, v3

    add-double v7, p17, p21

    div-double v26, v7, v3

    add-double v7, p19, p23

    div-double v28, v7, v3

    add-double v7, v13, v1

    div-double v18, v7, v3

    add-double v7, v16, v5

    div-double v20, v7, v3

    add-double v1, v1, v26

    div-double v30, v1, v3

    add-double v5, v5, v28

    div-double v32, v5, v3

    add-double v1, v18, v30

    div-double v34, v1, v3

    add-double v1, v20, v32

    div-double v36, v1, v3

    invoke-static/range {v34 .. v35}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    if-nez v1, :cond_f

    invoke-static/range {v36 .. v37}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    if-eqz v1, :cond_d

    goto :goto_3

    :cond_d
    add-int/lit8 v38, v0, 0x1

    move/from16 v25, v38

    move/from16 v0, p0

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    move-wide/from16 v5, p5

    move-wide/from16 v7, p7

    move-wide/from16 v9, p9

    move-wide/from16 v11, p11

    move-wide/from16 v15, v16

    move-wide/from16 v17, v18

    move-wide/from16 v19, v20

    move-wide/from16 v21, v34

    move-wide/from16 v23, v36

    invoke-static/range {v0 .. v25}, Lsun/awt/geom/Curve;->rectCrossingsForCubic(IDDDDDDDDDDDDI)I

    move-result v0

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_e

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    move-wide/from16 v5, p5

    move-wide/from16 v7, p7

    move-wide/from16 v9, v34

    move-wide/from16 v11, v36

    move-wide/from16 v13, v30

    move-wide/from16 v15, v32

    move-wide/from16 v17, v26

    move-wide/from16 v19, v28

    move-wide/from16 v21, p21

    move-wide/from16 v23, p23

    move/from16 v25, v38

    invoke-static/range {v0 .. v25}, Lsun/awt/geom/Curve;->rectCrossingsForCubic(IDDDDDDDDDDDDI)I

    move-result v0

    :cond_e
    return v0

    :cond_f
    :goto_3
    const/4 v0, 0x0

    return v0
.end method

.method public static rectCrossingsForLine(IDDDDDDDD)I
    .locals 10

    cmpl-double v0, p11, p7

    if-ltz v0, :cond_0

    cmpl-double v1, p15, p7

    if-ltz v1, :cond_0

    return p0

    :cond_0
    cmpg-double v1, p11, p3

    if-gtz v1, :cond_1

    cmpg-double v2, p15, p3

    if-gtz v2, :cond_1

    return p0

    :cond_1
    cmpg-double v2, p9, p1

    if-gtz v2, :cond_2

    cmpg-double v2, p13, p1

    if-gtz v2, :cond_2

    return p0

    :cond_2
    cmpl-double v2, p9, p5

    if-ltz v2, :cond_9

    cmpl-double v2, p13, p5

    if-ltz v2, :cond_9

    cmpg-double v2, p11, p15

    if-gez v2, :cond_4

    if-gtz v1, :cond_3

    add-int/lit8 v0, p0, 0x1

    goto :goto_0

    :cond_3
    move v0, p0

    :goto_0
    cmpl-double v1, p15, p7

    if-ltz v1, :cond_8

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    cmpg-double v1, p15, p11

    if-gez v1, :cond_7

    cmpg-double v1, p15, p3

    if-gtz v1, :cond_5

    add-int/lit8 v1, p0, -0x1

    goto :goto_1

    :cond_5
    move v1, p0

    :goto_1
    if-ltz v0, :cond_6

    add-int/lit8 v0, v1, -0x1

    goto :goto_2

    :cond_6
    move v0, v1

    goto :goto_2

    :cond_7
    move v0, p0

    :cond_8
    :goto_2
    return v0

    :cond_9
    cmpl-double v2, p9, p1

    const/high16 v3, -0x80000000

    if-lez v2, :cond_a

    cmpg-double v2, p9, p5

    if-gez v2, :cond_a

    cmpl-double v2, p11, p3

    if-lez v2, :cond_a

    cmpg-double v2, p11, p7

    if-ltz v2, :cond_b

    :cond_a
    cmpl-double v2, p13, p1

    if-lez v2, :cond_c

    cmpg-double v2, p13, p5

    if-gez v2, :cond_c

    cmpl-double v2, p15, p3

    if-lez v2, :cond_c

    cmpg-double v2, p15, p7

    if-gez v2, :cond_c

    :cond_b
    return v3

    :cond_c
    if-gez v1, :cond_d

    sub-double v4, p3, p11

    :goto_3
    sub-double v6, p13, p9

    mul-double/2addr v4, v6

    sub-double v6, p15, p11

    div-double/2addr v4, v6

    add-double v4, p9, v4

    goto :goto_4

    :cond_d
    if-lez v0, :cond_e

    sub-double v4, p7, p11

    goto :goto_3

    :cond_e
    move-wide/from16 v4, p9

    :goto_4
    cmpg-double v2, p15, p3

    if-gez v2, :cond_f

    sub-double v6, p3, p15

    :goto_5
    sub-double v8, p9, p13

    mul-double/2addr v6, v8

    sub-double v8, p11, p15

    div-double/2addr v6, v8

    add-double v6, p13, v6

    goto :goto_6

    :cond_f
    cmpl-double v6, p15, p7

    if-lez v6, :cond_10

    sub-double v6, p7, p15

    goto :goto_5

    :cond_10
    move-wide/from16 v6, p13

    :goto_6
    cmpg-double v8, v4, p1

    if-gtz v8, :cond_11

    cmpg-double v8, v6, p1

    if-gtz v8, :cond_11

    return p0

    :cond_11
    cmpl-double v4, v4, p5

    if-ltz v4, :cond_18

    cmpl-double v4, v6, p5

    if-ltz v4, :cond_18

    cmpg-double v3, p11, p15

    if-gez v3, :cond_13

    if-gtz v1, :cond_12

    add-int/lit8 v0, p0, 0x1

    goto :goto_7

    :cond_12
    move v0, p0

    :goto_7
    cmpl-double v1, p15, p7

    if-ltz v1, :cond_17

    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_13
    cmpg-double v1, p15, p11

    if-gez v1, :cond_16

    if-gtz v2, :cond_14

    add-int/lit8 v1, p0, -0x1

    goto :goto_8

    :cond_14
    move v1, p0

    :goto_8
    if-ltz v0, :cond_15

    add-int/lit8 v0, v1, -0x1

    goto :goto_9

    :cond_15
    move v0, v1

    goto :goto_9

    :cond_16
    move v0, p0

    :cond_17
    :goto_9
    return v0

    :cond_18
    return v3
.end method

.method public static rectCrossingsForPath(Ljava/awt/geom/PathIterator;DDDD)I
    .locals 38

    move-object/from16 v0, p0

    cmpg-double v1, p5, p1

    const/16 v27, 0x0

    if-lez v1, :cond_f

    cmpg-double v1, p7, p3

    if-gtz v1, :cond_0

    goto/16 :goto_4

    :cond_0
    invoke-interface/range {p0 .. p0}, Ljava/awt/geom/PathIterator;->isDone()Z

    move-result v1

    if-eqz v1, :cond_1

    return v27

    :cond_1
    const/4 v1, 0x6

    new-array v14, v1, [D

    invoke-interface {v0, v14}, Ljava/awt/geom/PathIterator;->currentSegment([D)I

    move-result v1

    if-nez v1, :cond_e

    invoke-interface/range {p0 .. p0}, Ljava/awt/geom/PathIterator;->next()V

    aget-wide v1, v14, v27

    const/4 v15, 0x1

    aget-wide v3, v14, v15

    move-wide v10, v1

    move-wide/from16 v28, v10

    move-wide v12, v3

    move-wide/from16 v30, v12

    move/from16 v1, v27

    :goto_0
    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_b

    invoke-interface/range {p0 .. p0}, Ljava/awt/geom/PathIterator;->isDone()Z

    move-result v3

    if-nez v3, :cond_b

    invoke-interface {v0, v14}, Ljava/awt/geom/PathIterator;->currentSegment([D)I

    move-result v2

    if-eqz v2, :cond_8

    if-eq v2, v15, :cond_7

    const/4 v3, 0x3

    const/4 v4, 0x2

    if-eq v2, v4, :cond_6

    const/4 v5, 0x4

    if-eq v2, v3, :cond_5

    if-eq v2, v5, :cond_2

    move-object/from16 v32, v14

    move/from16 v33, v15

    goto/16 :goto_3

    :cond_2
    cmpl-double v2, v10, v28

    if-nez v2, :cond_4

    cmpl-double v2, v12, v30

    if-eqz v2, :cond_3

    goto :goto_1

    :cond_3
    move-object/from16 v32, v14

    move/from16 v33, v15

    goto :goto_2

    :cond_4
    :goto_1
    move-wide/from16 v2, p1

    move-wide/from16 v4, p3

    move-wide/from16 v6, p5

    move-wide/from16 v8, p7

    move-object/from16 v32, v14

    move/from16 v33, v15

    move-wide/from16 v14, v28

    move-wide/from16 v16, v30

    invoke-static/range {v1 .. v17}, Lsun/awt/geom/Curve;->rectCrossingsForLine(IDDDDDDDD)I

    move-result v1

    :goto_2
    move-wide/from16 v10, v28

    move-wide/from16 v12, v30

    goto/16 :goto_3

    :cond_5
    move-object/from16 v32, v14

    move/from16 v33, v15

    aget-wide v34, v32, v5

    move-wide/from16 v22, v34

    const/4 v2, 0x5

    aget-wide v36, v32, v2

    move-wide/from16 v24, v36

    aget-wide v14, v32, v27

    aget-wide v16, v32, v33

    aget-wide v18, v32, v4

    aget-wide v20, v32, v3

    const/16 v26, 0x0

    move-wide/from16 v2, p1

    move-wide/from16 v4, p3

    move-wide/from16 v6, p5

    move-wide/from16 v8, p7

    invoke-static/range {v1 .. v26}, Lsun/awt/geom/Curve;->rectCrossingsForCubic(IDDDDDDDDDDDDI)I

    move-result v1

    move-wide/from16 v10, v34

    move-wide/from16 v12, v36

    goto/16 :goto_3

    :cond_6
    move-object/from16 v32, v14

    move/from16 v33, v15

    aget-wide v23, v32, v4

    move-wide/from16 v18, v23

    aget-wide v25, v32, v3

    move-wide/from16 v20, v25

    aget-wide v14, v32, v27

    aget-wide v16, v32, v33

    const/16 v22, 0x0

    move-wide/from16 v2, p1

    move-wide/from16 v4, p3

    move-wide/from16 v6, p5

    move-wide/from16 v8, p7

    invoke-static/range {v1 .. v22}, Lsun/awt/geom/Curve;->rectCrossingsForQuad(IDDDDDDDDDDI)I

    move-result v1

    move-wide/from16 v10, v23

    move-wide/from16 v12, v25

    goto :goto_3

    :cond_7
    move-object/from16 v32, v14

    move/from16 v33, v15

    aget-wide v18, v32, v27

    move-wide/from16 v14, v18

    aget-wide v20, v32, v33

    move-wide/from16 v16, v20

    move-wide/from16 v2, p1

    move-wide/from16 v4, p3

    move-wide/from16 v6, p5

    move-wide/from16 v8, p7

    invoke-static/range {v1 .. v17}, Lsun/awt/geom/Curve;->rectCrossingsForLine(IDDDDDDDD)I

    move-result v1

    move-wide/from16 v10, v18

    move-wide/from16 v12, v20

    goto :goto_3

    :cond_8
    move-object/from16 v32, v14

    move/from16 v33, v15

    cmpl-double v2, v10, v28

    if-nez v2, :cond_9

    cmpl-double v2, v12, v30

    if-eqz v2, :cond_a

    :cond_9
    move-wide/from16 v2, p1

    move-wide/from16 v4, p3

    move-wide/from16 v6, p5

    move-wide/from16 v8, p7

    move-wide/from16 v14, v28

    move-wide/from16 v16, v30

    invoke-static/range {v1 .. v17}, Lsun/awt/geom/Curve;->rectCrossingsForLine(IDDDDDDDD)I

    move-result v1

    :cond_a
    aget-wide v10, v32, v27

    aget-wide v12, v32, v33

    move-wide/from16 v28, v10

    move-wide/from16 v30, v12

    :goto_3
    invoke-interface/range {p0 .. p0}, Ljava/awt/geom/PathIterator;->next()V

    move-object/from16 v14, v32

    move/from16 v15, v33

    goto/16 :goto_0

    :cond_b
    if-eq v1, v2, :cond_d

    cmpl-double v0, v10, v28

    if-nez v0, :cond_c

    cmpl-double v0, v12, v30

    if-eqz v0, :cond_d

    :cond_c
    move v0, v1

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    move-wide/from16 v5, p5

    move-wide/from16 v7, p7

    move-wide v9, v10

    move-wide v11, v12

    move-wide/from16 v13, v28

    move-wide/from16 v15, v30

    invoke-static/range {v0 .. v16}, Lsun/awt/geom/Curve;->rectCrossingsForLine(IDDDDDDDD)I

    move-result v1

    :cond_d
    return v1

    :cond_e
    new-instance v0, Ljava/awt/geom/IllegalPathStateException;

    const-string v1, "missing initial moveto in path definition"

    invoke-direct {v0, v1}, Ljava/awt/geom/IllegalPathStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    :goto_4
    return v27
.end method

.method public static rectCrossingsForQuad(IDDDDDDDDDDI)I
    .locals 31

    move/from16 v0, p21

    cmpl-double v1, p11, p7

    if-ltz v1, :cond_0

    cmpl-double v2, p15, p7

    if-ltz v2, :cond_0

    cmpl-double v2, p19, p7

    if-ltz v2, :cond_0

    return p0

    :cond_0
    cmpg-double v2, p11, p3

    if-gtz v2, :cond_1

    cmpg-double v3, p15, p3

    if-gtz v3, :cond_1

    cmpg-double v3, p19, p3

    if-gtz v3, :cond_1

    return p0

    :cond_1
    cmpg-double v3, p9, p1

    if-gtz v3, :cond_2

    cmpg-double v3, p13, p1

    if-gtz v3, :cond_2

    cmpg-double v3, p17, p1

    if-gtz v3, :cond_2

    return p0

    :cond_2
    cmpl-double v3, p9, p5

    if-ltz v3, :cond_8

    cmpl-double v3, p13, p5

    if-ltz v3, :cond_8

    cmpl-double v3, p17, p5

    if-ltz v3, :cond_8

    cmpg-double v0, p11, p19

    if-gez v0, :cond_4

    if-gtz v2, :cond_3

    cmpl-double v0, p19, p3

    if-lez v0, :cond_3

    add-int/lit8 v0, p0, 0x1

    goto :goto_0

    :cond_3
    move/from16 v0, p0

    :goto_0
    cmpg-double v1, p11, p7

    if-gez v1, :cond_7

    cmpl-double v1, p19, p7

    if-ltz v1, :cond_7

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    cmpg-double v0, p19, p11

    if-gez v0, :cond_6

    cmpg-double v0, p19, p3

    if-gtz v0, :cond_5

    cmpl-double v0, p11, p3

    if-lez v0, :cond_5

    add-int/lit8 v0, p0, -0x1

    goto :goto_1

    :cond_5
    move/from16 v0, p0

    :goto_1
    cmpg-double v2, p19, p7

    if-gez v2, :cond_7

    if-ltz v1, :cond_7

    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_6
    move/from16 v0, p0

    :cond_7
    :goto_2
    return v0

    :cond_8
    cmpg-double v1, p9, p5

    const/high16 v15, -0x80000000

    if-gez v1, :cond_9

    cmpl-double v1, p9, p1

    if-lez v1, :cond_9

    cmpg-double v1, p11, p7

    if-gez v1, :cond_9

    cmpl-double v1, p11, p3

    if-gtz v1, :cond_a

    :cond_9
    cmpg-double v1, p17, p5

    if-gez v1, :cond_b

    cmpl-double v1, p17, p1

    if-lez v1, :cond_b

    cmpg-double v1, p19, p7

    if-gez v1, :cond_b

    cmpl-double v1, p19, p3

    if-lez v1, :cond_b

    :cond_a
    return v15

    :cond_b
    const/16 v1, 0x34

    if-le v0, v1, :cond_c

    move/from16 v0, p0

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    move-wide/from16 v5, p5

    move-wide/from16 v7, p7

    move-wide/from16 v9, p9

    move-wide/from16 v11, p11

    move-wide/from16 v13, p17

    move-wide/from16 v15, p19

    invoke-static/range {v0 .. v16}, Lsun/awt/geom/Curve;->rectCrossingsForLine(IDDDDDDDD)I

    move-result v0

    return v0

    :cond_c
    add-double v1, p9, p13

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    div-double v13, v1, v3

    add-double v1, p11, p15

    div-double v16, v1, v3

    add-double v1, p13, p17

    div-double v22, v1, v3

    add-double v1, p15, p19

    div-double v24, v1, v3

    add-double v1, v13, v22

    div-double v26, v1, v3

    add-double v1, v16, v24

    div-double v28, v1, v3

    invoke-static/range {v26 .. v27}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    if-nez v1, :cond_f

    invoke-static/range {v28 .. v29}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    if-eqz v1, :cond_d

    goto :goto_3

    :cond_d
    add-int/lit8 v30, v0, 0x1

    move/from16 v21, v30

    move/from16 v0, p0

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    move-wide/from16 v5, p5

    move-wide/from16 v7, p7

    move-wide/from16 v9, p9

    move-wide/from16 v11, p11

    move-wide/from16 v15, v16

    move-wide/from16 v17, v26

    move-wide/from16 v19, v28

    invoke-static/range {v0 .. v21}, Lsun/awt/geom/Curve;->rectCrossingsForQuad(IDDDDDDDDDDI)I

    move-result v0

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_e

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    move-wide/from16 v5, p5

    move-wide/from16 v7, p7

    move-wide/from16 v9, v26

    move-wide/from16 v11, v28

    move-wide/from16 v13, v22

    move-wide/from16 v15, v24

    move-wide/from16 v17, p17

    move-wide/from16 v19, p19

    move/from16 v21, v30

    invoke-static/range {v0 .. v21}, Lsun/awt/geom/Curve;->rectCrossingsForQuad(IDDDDDDDDDDI)I

    move-result v0

    :cond_e
    return v0

    :cond_f
    :goto_3
    const/4 v0, 0x0

    return v0
.end method

.method public static round(D)D
    .locals 0

    return-wide p0
.end method

.method public static signeddiffbits(DD)J
    .locals 0

    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide p0

    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide p2

    sub-long/2addr p0, p2

    return-wide p0
.end method


# virtual methods
.method public abstract TforY(D)D
.end method

.method public abstract XforT(D)D
.end method

.method public abstract XforY(D)D
.end method

.method public abstract YforT(D)D
.end method

.method public accumulateCrossings(Lsun/awt/geom/Crossings;)Z
    .locals 21

    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Lsun/awt/geom/Crossings;->getXHi()D

    move-result-wide v1

    invoke-virtual/range {p0 .. p0}, Lsun/awt/geom/Curve;->getXMin()D

    move-result-wide v3

    cmpl-double v3, v3, v1

    const/4 v4, 0x0

    if-ltz v3, :cond_0

    return v4

    :cond_0
    invoke-virtual/range {p1 .. p1}, Lsun/awt/geom/Crossings;->getXLo()D

    move-result-wide v5

    invoke-virtual/range {p1 .. p1}, Lsun/awt/geom/Crossings;->getYLo()D

    move-result-wide v7

    invoke-virtual/range {p1 .. p1}, Lsun/awt/geom/Crossings;->getYHi()D

    move-result-wide v9

    invoke-virtual/range {p0 .. p0}, Lsun/awt/geom/Curve;->getYTop()D

    move-result-wide v11

    invoke-virtual/range {p0 .. p0}, Lsun/awt/geom/Curve;->getYBot()D

    move-result-wide v13

    cmpg-double v3, v11, v7

    if-gez v3, :cond_2

    cmpg-double v3, v13, v7

    if-gtz v3, :cond_1

    return v4

    :cond_1
    invoke-virtual {v0, v7, v8}, Lsun/awt/geom/Curve;->TforY(D)D

    move-result-wide v11

    move-wide/from16 v16, v7

    goto :goto_0

    :cond_2
    cmpl-double v3, v11, v9

    if-ltz v3, :cond_3

    return v4

    :cond_3
    const-wide/16 v7, 0x0

    move-wide/from16 v16, v11

    move-wide v11, v7

    :goto_0
    cmpl-double v3, v13, v9

    if-lez v3, :cond_4

    invoke-virtual {v0, v9, v10}, Lsun/awt/geom/Curve;->TforY(D)D

    move-result-wide v7

    move-wide/from16 v18, v9

    goto :goto_1

    :cond_4
    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v18, v13

    :goto_1
    move v3, v4

    move v9, v3

    :goto_2
    invoke-virtual {v0, v11, v12}, Lsun/awt/geom/Curve;->XforT(D)D

    move-result-wide v13

    cmpg-double v10, v13, v1

    const/4 v15, 0x1

    if-gez v10, :cond_7

    if-nez v9, :cond_6

    cmpl-double v3, v13, v5

    if-lez v3, :cond_5

    goto :goto_3

    :cond_5
    move v3, v15

    goto :goto_4

    :cond_6
    :goto_3
    return v15

    :cond_7
    if-eqz v3, :cond_8

    return v15

    :cond_8
    move v9, v15

    :goto_4
    cmpl-double v10, v11, v7

    if-ltz v10, :cond_a

    if-eqz v3, :cond_9

    iget v0, v0, Lsun/awt/geom/Curve;->direction:I

    move-object/from16 v15, p1

    move/from16 v20, v0

    invoke-virtual/range {v15 .. v20}, Lsun/awt/geom/Crossings;->record(DDI)V

    :cond_9
    return v4

    :cond_a
    invoke-virtual {v0, v11, v12, v7, v8}, Lsun/awt/geom/Curve;->nextVertical(DD)D

    move-result-wide v11

    goto :goto_2
.end method

.method public compareTo(Lsun/awt/geom/Curve;[D)I
    .locals 67

    move-object/from16 v0, p0

    move-object/from16 v14, p1

    const/16 v32, 0x0

    aget-wide v8, p2, v32

    const/16 v33, 0x1

    aget-wide v1, p2, v33

    invoke-virtual/range {p0 .. p0}, Lsun/awt/geom/Curve;->getYBot()D

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(DD)D

    move-result-wide v1

    invoke-virtual/range {p1 .. p1}, Lsun/awt/geom/Curve;->getYBot()D

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(DD)D

    move-result-wide v10

    aget-wide v1, p2, v32

    cmpg-double v1, v10, v1

    const-string v15, "=>"

    if-lez v1, :cond_15

    aput-wide v10, p2, v33

    invoke-virtual/range {p0 .. p0}, Lsun/awt/geom/Curve;->getXMax()D

    move-result-wide v1

    invoke-virtual/range {p1 .. p1}, Lsun/awt/geom/Curve;->getXMin()D

    move-result-wide v3

    cmpg-double v1, v1, v3

    if-gtz v1, :cond_1

    invoke-virtual/range {p0 .. p0}, Lsun/awt/geom/Curve;->getXMin()D

    move-result-wide v0

    invoke-virtual/range {p1 .. p1}, Lsun/awt/geom/Curve;->getXMax()D

    move-result-wide v2

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    return v32

    :cond_0
    const/4 v0, -0x1

    return v0

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lsun/awt/geom/Curve;->getXMin()D

    move-result-wide v1

    invoke-virtual/range {p1 .. p1}, Lsun/awt/geom/Curve;->getXMax()D

    move-result-wide v3

    cmpl-double v1, v1, v3

    if-ltz v1, :cond_2

    return v33

    :cond_2
    invoke-virtual {v0, v8, v9}, Lsun/awt/geom/Curve;->TforY(D)D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lsun/awt/geom/Curve;->YforT(D)D

    move-result-wide v4

    cmpg-double v1, v4, v8

    if-gez v1, :cond_3

    move-object/from16 v1, p0

    move-wide v6, v8

    invoke-virtual/range {v1 .. v7}, Lsun/awt/geom/Curve;->refineTforY(DDD)D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lsun/awt/geom/Curve;->YforT(D)D

    move-result-wide v4

    :cond_3
    move-wide v12, v2

    move-wide/from16 v16, v4

    invoke-virtual {v0, v10, v11}, Lsun/awt/geom/Curve;->TforY(D)D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lsun/awt/geom/Curve;->YforT(D)D

    move-result-wide v4

    cmpg-double v1, v4, v8

    if-gez v1, :cond_4

    invoke-virtual {v0, v2, v3}, Lsun/awt/geom/Curve;->YforT(D)D

    move-result-wide v4

    move-object/from16 v1, p0

    move-wide v6, v8

    invoke-virtual/range {v1 .. v7}, Lsun/awt/geom/Curve;->refineTforY(DDD)D

    move-result-wide v2

    :cond_4
    move-wide v6, v2

    invoke-virtual {v14, v8, v9}, Lsun/awt/geom/Curve;->TforY(D)D

    move-result-wide v2

    invoke-virtual {v14, v2, v3}, Lsun/awt/geom/Curve;->YforT(D)D

    move-result-wide v4

    cmpg-double v1, v4, v8

    if-gez v1, :cond_5

    move-object/from16 v1, p1

    move-wide/from16 v34, v6

    move-wide v6, v8

    invoke-virtual/range {v1 .. v7}, Lsun/awt/geom/Curve;->refineTforY(DDD)D

    move-result-wide v2

    invoke-virtual {v14, v2, v3}, Lsun/awt/geom/Curve;->YforT(D)D

    move-result-wide v4

    goto :goto_0

    :cond_5
    move-wide/from16 v34, v6

    :goto_0
    move-wide v6, v2

    move-wide/from16 v18, v4

    invoke-virtual {v14, v10, v11}, Lsun/awt/geom/Curve;->TforY(D)D

    move-result-wide v2

    invoke-virtual {v14, v2, v3}, Lsun/awt/geom/Curve;->YforT(D)D

    move-result-wide v4

    cmpg-double v1, v4, v8

    if-gez v1, :cond_6

    invoke-virtual {v14, v2, v3}, Lsun/awt/geom/Curve;->YforT(D)D

    move-result-wide v4

    move-object/from16 v1, p1

    move-wide/from16 v20, v10

    move-wide v10, v6

    move-wide v6, v8

    invoke-virtual/range {v1 .. v7}, Lsun/awt/geom/Curve;->refineTforY(DDD)D

    move-result-wide v2

    goto :goto_1

    :cond_6
    move-wide/from16 v20, v10

    move-wide v10, v6

    :goto_1
    move-wide v4, v2

    invoke-virtual {v0, v12, v13}, Lsun/awt/geom/Curve;->XforT(D)D

    move-result-wide v1

    invoke-virtual {v14, v10, v11}, Lsun/awt/geom/Curve;->XforT(D)D

    move-result-wide v6

    move-wide/from16 v22, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v10

    move-wide/from16 v24, v12

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->abs(D)D

    move-result-wide v12

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->max(DD)D

    move-result-wide v10

    const-wide v12, 0x3d06849b86a12b9bL    # 1.0E-14

    mul-double/2addr v10, v12

    const-wide v12, 0x1a56e1fc2f8f359L    # 1.0E-300

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->max(DD)D

    move-result-wide v12

    invoke-virtual {v0, v1, v2, v6, v7}, Lsun/awt/geom/Curve;->fairlyClose(DD)Z

    move-result v3

    const-wide/high16 v36, 0x4000000000000000L    # 2.0

    if-eqz v3, :cond_d

    const-wide v10, 0x42a2309ce5400000L    # 1.0E13

    mul-double/2addr v10, v12

    sub-double v26, v20, v8

    const-wide v28, 0x3fb999999999999aL    # 0.1

    move-wide/from16 v30, v1

    mul-double v1, v26, v28

    invoke-static {v10, v11, v1, v2}, Ljava/lang/Math;->min(DD)D

    move-result-wide v1

    add-double v10, v8, v12

    move-wide/from16 v26, v12

    :goto_2
    cmpg-double v3, v10, v20

    if-gtz v3, :cond_b

    move-wide/from16 v28, v6

    invoke-virtual {v0, v10, v11}, Lsun/awt/geom/Curve;->XforY(D)D

    move-result-wide v6

    move-wide/from16 v38, v4

    invoke-virtual {v14, v10, v11}, Lsun/awt/geom/Curve;->XforY(D)D

    move-result-wide v3

    invoke-virtual {v0, v6, v7, v3, v4}, Lsun/awt/geom/Curve;->fairlyClose(DD)Z

    move-result v3

    if-eqz v3, :cond_8

    mul-double v26, v26, v36

    cmpl-double v3, v26, v1

    if-lez v3, :cond_7

    move-wide/from16 v26, v1

    :cond_7
    add-double v10, v10, v26

    move-wide/from16 v6, v28

    move-wide/from16 v4, v38

    goto :goto_2

    :cond_8
    sub-double v10, v10, v26

    :cond_9
    :goto_3
    div-double v26, v26, v36

    add-double v1, v10, v26

    cmpg-double v3, v1, v10

    if-gtz v3, :cond_a

    goto :goto_4

    :cond_a
    invoke-virtual {v0, v1, v2}, Lsun/awt/geom/Curve;->XforY(D)D

    move-result-wide v3

    invoke-virtual {v14, v1, v2}, Lsun/awt/geom/Curve;->XforY(D)D

    move-result-wide v5

    invoke-virtual {v0, v3, v4, v5, v6}, Lsun/awt/geom/Curve;->fairlyClose(DD)Z

    move-result v3

    if-eqz v3, :cond_9

    move-wide v10, v1

    goto :goto_3

    :cond_b
    move-wide/from16 v38, v4

    move-wide/from16 v28, v6

    :goto_4
    cmpl-double v1, v10, v8

    if-lez v1, :cond_e

    cmpg-double v0, v10, v20

    if-gez v0, :cond_c

    aput-wide v10, p2, v33

    :cond_c
    return v32

    :cond_d
    move-wide/from16 v30, v1

    move-wide/from16 v38, v4

    move-wide/from16 v28, v6

    :cond_e
    const-wide/16 v1, 0x0

    cmpg-double v1, v12, v1

    if-gtz v1, :cond_f

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ymin = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12, v13}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_f
    move-wide/from16 v4, v16

    move-wide/from16 v2, v18

    move-wide/from16 v10, v22

    move-wide/from16 v8, v24

    move-wide/from16 v40, v28

    move-wide/from16 v6, v34

    move-wide/from16 v34, v30

    :goto_5
    cmpg-double v1, v8, v6

    if-gez v1, :cond_14

    cmpg-double v1, v10, v38

    if-gez v1, :cond_14

    move-wide/from16 v16, v4

    invoke-virtual {v0, v8, v9, v6, v7}, Lsun/awt/geom/Curve;->nextVertical(DD)D

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lsun/awt/geom/Curve;->XforT(D)D

    move-result-wide v42

    move-wide/from16 v20, v6

    move-wide/from16 v18, v8

    invoke-virtual {v0, v4, v5}, Lsun/awt/geom/Curve;->YforT(D)D

    move-result-wide v7

    move-wide/from16 v24, v4

    move-wide/from16 v22, v7

    move-wide/from16 v7, v38

    invoke-virtual {v14, v10, v11, v7, v8}, Lsun/awt/geom/Curve;->nextVertical(DD)D

    move-result-wide v4

    invoke-virtual {v14, v4, v5}, Lsun/awt/geom/Curve;->XforT(D)D

    move-result-wide v38

    move-wide/from16 v26, v7

    invoke-virtual {v14, v4, v5}, Lsun/awt/geom/Curve;->YforT(D)D

    move-result-wide v7

    const/4 v6, 0x0

    move-wide/from16 v44, v20

    const/4 v1, 0x0

    move-wide/from16 v46, v7

    move-wide/from16 v8, v22

    move-wide/from16 v20, v26

    move v7, v1

    move-object/from16 v1, p0

    move-wide/from16 v48, v2

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-wide/from16 v52, v4

    move-wide/from16 v54, v16

    move-wide/from16 v56, v20

    move-wide/from16 v50, v24

    move-wide v4, v12

    move-wide/from16 v60, v8

    move-wide/from16 v58, v18

    move-wide/from16 v8, v58

    move-wide/from16 v62, v10

    move-wide/from16 v10, v34

    move-wide/from16 v64, v12

    move-wide/from16 v12, v54

    move-object/from16 v66, v15

    move-wide/from16 v14, v50

    move-wide/from16 v16, v42

    move-wide/from16 v18, v60

    move-wide/from16 v20, v62

    move-wide/from16 v22, v40

    move-wide/from16 v24, v48

    move-wide/from16 v26, v52

    move-wide/from16 v28, v38

    move-wide/from16 v30, v46

    :try_start_0
    invoke-virtual/range {v1 .. v31}, Lsun/awt/geom/Curve;->findIntersect(Lsun/awt/geom/Curve;[DDIIDDDDDDDDDDDD)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_10

    goto/16 :goto_7

    :cond_10
    move-wide/from16 v3, v46

    move-wide/from16 v1, v60

    cmpg-double v5, v1, v3

    if-gez v5, :cond_12

    aget-wide v3, p2, v32

    cmpl-double v3, v1, v3

    if-lez v3, :cond_11

    aget-wide v3, p2, v33

    cmpg-double v3, v1, v3

    if-gez v3, :cond_14

    aput-wide v1, p2, v33

    goto/16 :goto_7

    :cond_11
    move-wide v4, v1

    move-wide/from16 v34, v42

    move-wide/from16 v2, v48

    move-wide/from16 v8, v50

    move-wide/from16 v10, v62

    goto :goto_6

    :cond_12
    aget-wide v1, p2, v32

    cmpl-double v1, v3, v1

    if-lez v1, :cond_13

    aget-wide v1, p2, v33

    cmpg-double v1, v3, v1

    if-gez v1, :cond_14

    aput-wide v3, p2, v33

    goto/16 :goto_7

    :cond_13
    move-wide v2, v3

    move-wide/from16 v40, v38

    move-wide/from16 v10, v52

    move-wide/from16 v4, v54

    move-wide/from16 v8, v58

    :goto_6
    move-object/from16 v14, p1

    move-wide/from16 v6, v44

    move-wide/from16 v38, v56

    move-wide/from16 v12, v64

    move-object/from16 v15, v66

    goto/16 :goto_5

    :catchall_0
    move-exception v0

    move-wide/from16 v3, v46

    move-wide/from16 v1, v60

    move-object v5, v0

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "y range was "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v6, p2, v32

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-object/from16 v6, v66

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v7, p2, v33

    invoke-virtual {v5, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "s y range is "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v7, v54

    invoke-virtual {v5, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "t y range is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v7, v48

    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ymin is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v2, v64

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return v32

    :cond_14
    :goto_7
    aget-wide v1, p2, v32

    aget-wide v3, p2, v33

    add-double/2addr v1, v3

    div-double v1, v1, v36

    invoke-virtual {v0, v1, v2}, Lsun/awt/geom/Curve;->XforY(D)D

    move-result-wide v3

    move-object/from16 v5, p1

    invoke-virtual {v5, v1, v2}, Lsun/awt/geom/Curve;->XforY(D)D

    move-result-wide v0

    invoke-static {v3, v4, v0, v1}, Lsun/awt/geom/Curve;->orderof(DD)I

    move-result v0

    return v0

    :cond_15
    move-wide/from16 v20, v10

    move-object v5, v14

    move-object v6, v15

    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "this == "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "that == "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "target range = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v2, p2, v32

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v2, p2, v33

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/InternalError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "backstepping from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v2, p2, v32

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v2, v20

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public controlPointString()Ljava/lang/String;
    .locals 0

    const-string p0, ""

    return-object p0
.end method

.method public crossingsFor(DD)I
    .locals 2

    invoke-virtual {p0}, Lsun/awt/geom/Curve;->getYTop()D

    move-result-wide v0

    cmpl-double v0, p3, v0

    if-ltz v0, :cond_1

    invoke-virtual {p0}, Lsun/awt/geom/Curve;->getYBot()D

    move-result-wide v0

    cmpg-double v0, p3, v0

    if-gez v0, :cond_1

    invoke-virtual {p0}, Lsun/awt/geom/Curve;->getXMax()D

    move-result-wide v0

    cmpg-double v0, p1, v0

    if-gez v0, :cond_1

    invoke-virtual {p0}, Lsun/awt/geom/Curve;->getXMin()D

    move-result-wide v0

    cmpg-double v0, p1, v0

    if-ltz v0, :cond_0

    invoke-virtual {p0, p3, p4}, Lsun/awt/geom/Curve;->XforY(D)D

    move-result-wide p3

    cmpg-double p0, p1, p3

    if-gez p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public abstract dXforT(DI)D
.end method

.method public abstract dYforT(DI)D
.end method

.method public abstract enlarge(Ljava/awt/geom/Rectangle2D;)V
.end method

.method public fairlyClose(DD)Z
    .locals 2

    sub-double v0, p1, p3

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    invoke-static {p1, p2}, Ljava/lang/Math;->abs(D)D

    move-result-wide p0

    invoke-static {p3, p4}, Ljava/lang/Math;->abs(D)D

    move-result-wide p2

    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->max(DD)D

    move-result-wide p0

    const-wide p2, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    mul-double/2addr p0, p2

    cmpg-double p0, v0, p0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public findIntersect(Lsun/awt/geom/Curve;[DDIIDDDDDDDDDDDD)Z
    .locals 47

    move-object/from16 v15, p0

    move-object/from16 v13, p1

    move-wide/from16 v11, p7

    move-wide/from16 v9, p9

    move-wide/from16 v7, p13

    move-wide/from16 v3, p15

    move-wide/from16 v1, p19

    move-wide/from16 v5, p21

    move-wide/from16 v13, p25

    move-wide/from16 v0, p27

    cmpl-double v2, p11, p29

    const/16 v31, 0x0

    if-gtz v2, :cond_11

    cmpl-double v2, p23, p17

    if-lez v2, :cond_0

    goto/16 :goto_0

    :cond_0
    invoke-static {v9, v10, v3, v4}, Ljava/lang/Math;->min(DD)D

    move-result-wide v16

    invoke-static {v5, v6, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v18

    cmpl-double v2, v16, v18

    if-gtz v2, :cond_11

    invoke-static {v9, v10, v3, v4}, Ljava/lang/Math;->max(DD)D

    move-result-wide v16

    invoke-static {v5, v6, v0, v1}, Ljava/lang/Math;->min(DD)D

    move-result-wide v18

    cmpg-double v2, v16, v18

    if-gez v2, :cond_1

    goto/16 :goto_0

    :cond_1
    sub-double v16, v7, v11

    const-wide v18, 0x3f50624dd2f1a9fcL    # 0.001

    cmpl-double v2, v16, v18

    const-string v0, "no t progress!"

    const-string v1, "t1 = "

    const-string v3, "t0 = "

    const-wide/high16 v20, 0x4000000000000000L    # 2.0

    const/16 v32, 0x1

    if-lez v2, :cond_a

    add-double v16, v11, v7

    div-double v9, v16, v20

    invoke-virtual {v15, v9, v10}, Lsun/awt/geom/Curve;->XforT(D)D

    move-result-wide v33

    invoke-virtual {v15, v9, v10}, Lsun/awt/geom/Curve;->YforT(D)D

    move-result-wide v35

    cmpl-double v2, v9, v11

    if-eqz v2, :cond_9

    cmpl-double v2, v9, v7

    if-eqz v2, :cond_9

    sub-double v16, v13, p19

    cmpl-double v2, v16, v18

    if-lez v2, :cond_7

    add-double v16, p19, v13

    div-double v13, v16, v20

    move-object/from16 v4, p1

    move-wide/from16 v11, p25

    invoke-virtual {v4, v13, v14}, Lsun/awt/geom/Curve;->XforT(D)D

    move-result-wide v37

    invoke-virtual {v4, v13, v14}, Lsun/awt/geom/Curve;->YforT(D)D

    move-result-wide v39

    cmpl-double v2, v13, p19

    if-eqz v2, :cond_6

    cmpl-double v2, v13, v11

    if-eqz v2, :cond_6

    cmpl-double v0, v35, p23

    if-ltz v0, :cond_2

    cmpl-double v0, v39, p11

    if-ltz v0, :cond_2

    add-int/lit8 v0, p5, 0x1

    move v5, v0

    add-int/lit8 v6, p6, 0x1

    move-object/from16 v0, p0

    move-wide/from16 v2, p19

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-wide/from16 v3, p3

    move-wide/from16 v7, p7

    move-wide/from16 v41, v9

    move-wide/from16 v9, p9

    move-wide/from16 v11, p11

    move-wide/from16 v43, v13

    move-wide/from16 v13, v41

    move-wide/from16 v15, v33

    move-wide/from16 v17, v35

    move-wide/from16 v19, p19

    move-wide/from16 v21, p21

    move-wide/from16 v23, p23

    move-wide/from16 v25, v43

    move-wide/from16 v27, v37

    move-wide/from16 v29, v39

    invoke-virtual/range {v0 .. v30}, Lsun/awt/geom/Curve;->findIntersect(Lsun/awt/geom/Curve;[DDIIDDDDDDDDDDDD)Z

    move-result v0

    if-eqz v0, :cond_3

    return v32

    :cond_2
    move-wide/from16 v41, v9

    move-wide/from16 v43, v13

    :cond_3
    cmpl-double v0, v35, v39

    if-ltz v0, :cond_4

    add-int/lit8 v5, p5, 0x1

    add-int/lit8 v6, p6, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-wide/from16 v3, p3

    move-wide/from16 v7, p7

    move-wide/from16 v9, p9

    move-wide/from16 v11, p11

    move-wide/from16 v13, v41

    move-wide/from16 v15, v33

    move-wide/from16 v17, v35

    move-wide/from16 v19, v43

    move-wide/from16 v21, v37

    move-wide/from16 v23, v39

    move-wide/from16 v25, p25

    move-wide/from16 v27, p27

    move-wide/from16 v29, p29

    invoke-virtual/range {v0 .. v30}, Lsun/awt/geom/Curve;->findIntersect(Lsun/awt/geom/Curve;[DDIIDDDDDDDDDDDD)Z

    move-result v0

    if-eqz v0, :cond_4

    return v32

    :cond_4
    cmpl-double v0, v39, v35

    if-ltz v0, :cond_5

    add-int/lit8 v5, p5, 0x1

    add-int/lit8 v6, p6, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-wide/from16 v3, p3

    move-wide/from16 v7, v41

    move-wide/from16 v9, v33

    move-wide/from16 v11, v35

    move-wide/from16 v13, p13

    move-wide/from16 v15, p15

    move-wide/from16 v17, p17

    move-wide/from16 v19, p19

    move-wide/from16 v21, p21

    move-wide/from16 v23, p23

    move-wide/from16 v25, v43

    move-wide/from16 v27, v37

    move-wide/from16 v29, v39

    invoke-virtual/range {v0 .. v30}, Lsun/awt/geom/Curve;->findIntersect(Lsun/awt/geom/Curve;[DDIIDDDDDDDDDDDD)Z

    move-result v0

    if-eqz v0, :cond_5

    return v32

    :cond_5
    cmpl-double v0, p17, v39

    if-ltz v0, :cond_11

    cmpl-double v0, p29, v35

    if-ltz v0, :cond_11

    add-int/lit8 v5, p5, 0x1

    add-int/lit8 v6, p6, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-wide/from16 v3, p3

    move-wide/from16 v7, v41

    move-wide/from16 v9, v33

    move-wide/from16 v11, v35

    move-wide/from16 v13, p13

    move-wide/from16 v15, p15

    move-wide/from16 v17, p17

    move-wide/from16 v19, v43

    move-wide/from16 v21, v37

    move-wide/from16 v23, v39

    move-wide/from16 v25, p25

    move-wide/from16 v27, p27

    move-wide/from16 v29, p29

    invoke-virtual/range {v0 .. v30}, Lsun/awt/geom/Curve;->findIntersect(Lsun/awt/geom/Curve;[DDIIDDDDDDDDDDDD)Z

    move-result v0

    if-eqz v0, :cond_11

    return v32

    :cond_6
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v13, p19

    invoke-virtual {v4, v13, v14}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v11, p25

    invoke-virtual {v3, v11, v12}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/InternalError;

    invoke-direct {v1, v0}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_7
    move-wide/from16 v41, v9

    move-wide v11, v13

    move-wide/from16 v13, p19

    cmpl-double v0, v35, p23

    if-ltz v0, :cond_8

    add-int/lit8 v5, p5, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-wide/from16 v3, p3

    move/from16 v6, p6

    move-wide/from16 v7, p7

    move-wide/from16 v9, p9

    move-wide/from16 v11, p11

    move-wide/from16 v13, v41

    move-wide/from16 v15, v33

    move-wide/from16 v17, v35

    move-wide/from16 v19, p19

    move-wide/from16 v21, p21

    move-wide/from16 v23, p23

    move-wide/from16 v25, p25

    move-wide/from16 v27, p27

    move-wide/from16 v29, p29

    invoke-virtual/range {v0 .. v30}, Lsun/awt/geom/Curve;->findIntersect(Lsun/awt/geom/Curve;[DDIIDDDDDDDDDDDD)Z

    move-result v0

    if-eqz v0, :cond_8

    return v32

    :cond_8
    cmpl-double v0, p29, v35

    if-ltz v0, :cond_11

    add-int/lit8 v5, p5, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-wide/from16 v3, p3

    move/from16 v6, p6

    move-wide/from16 v7, v41

    move-wide/from16 v9, v33

    move-wide/from16 v11, v35

    move-wide/from16 v13, p13

    move-wide/from16 v15, p15

    move-wide/from16 v17, p17

    move-wide/from16 v19, p19

    move-wide/from16 v21, p21

    move-wide/from16 v23, p23

    move-wide/from16 v25, p25

    move-wide/from16 v27, p27

    move-wide/from16 v29, p29

    invoke-virtual/range {v0 .. v30}, Lsun/awt/geom/Curve;->findIntersect(Lsun/awt/geom/Curve;[DDIIDDDDDDDDDDDD)Z

    move-result v0

    if-eqz v0, :cond_11

    return v32

    :cond_9
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "s0 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v13, p7

    invoke-virtual {v1, v13, v14}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "s1 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v11, p13

    invoke-virtual {v1, v11, v12}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/InternalError;

    const-string v1, "no s progress!"

    invoke-direct {v0, v1}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    move-wide/from16 v9, p19

    move-wide/from16 v45, v7

    move-wide v7, v13

    move-wide v13, v11

    move-wide/from16 v11, v45

    sub-double v4, v7, v9

    cmpl-double v2, v4, v18

    if-lez v2, :cond_e

    add-double v4, v9, v7

    div-double v4, v4, v20

    move-object/from16 v15, p1

    invoke-virtual {v15, v4, v5}, Lsun/awt/geom/Curve;->XforT(D)D

    move-result-wide v33

    invoke-virtual {v15, v4, v5}, Lsun/awt/geom/Curve;->YforT(D)D

    move-result-wide v35

    cmpl-double v2, v4, v9

    if-eqz v2, :cond_d

    cmpl-double v2, v4, v7

    if-eqz v2, :cond_d

    cmpl-double v0, v35, p11

    if-ltz v0, :cond_b

    add-int/lit8 v6, p6, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-wide/from16 v37, v4

    move-wide/from16 v3, p3

    move/from16 v5, p5

    move-wide/from16 v7, p7

    move-wide/from16 v9, p9

    move-wide/from16 v11, p11

    move-wide/from16 v13, p13

    move-wide/from16 v15, p15

    move-wide/from16 v17, p17

    move-wide/from16 v19, p19

    move-wide/from16 v21, p21

    move-wide/from16 v23, p23

    move-wide/from16 v25, v37

    move-wide/from16 v27, v33

    move-wide/from16 v29, v35

    invoke-virtual/range {v0 .. v30}, Lsun/awt/geom/Curve;->findIntersect(Lsun/awt/geom/Curve;[DDIIDDDDDDDDDDDD)Z

    move-result v0

    if-eqz v0, :cond_c

    return v32

    :cond_b
    move-wide/from16 v37, v4

    :cond_c
    cmpl-double v0, p17, v35

    if-ltz v0, :cond_11

    add-int/lit8 v6, p6, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-wide/from16 v3, p3

    move/from16 v5, p5

    move-wide/from16 v7, p7

    move-wide/from16 v9, p9

    move-wide/from16 v11, p11

    move-wide/from16 v13, p13

    move-wide/from16 v15, p15

    move-wide/from16 v17, p17

    move-wide/from16 v19, v37

    move-wide/from16 v21, v33

    move-wide/from16 v23, v35

    move-wide/from16 v25, p25

    move-wide/from16 v27, p27

    move-wide/from16 v29, p29

    invoke-virtual/range {v0 .. v30}, Lsun/awt/geom/Curve;->findIntersect(Lsun/awt/geom/Curve;[DDIIDDDDDDDDDDDD)Z

    move-result v0

    if-eqz v0, :cond_11

    return v32

    :cond_d
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v6, p19

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v4, p25

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/InternalError;

    invoke-direct {v1, v0}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_e
    move-wide v6, v9

    sub-double v0, p15, p9

    sub-double v2, p17, p11

    sub-double v8, p27, p21

    sub-double v10, p29, p23

    sub-double v12, p21, p9

    sub-double v14, p23, p11

    mul-double v18, v8, v2

    mul-double v22, v10, v0

    sub-double v18, v18, v22

    const-wide/16 v22, 0x0

    cmpl-double v24, v18, v22

    if-eqz v24, :cond_11

    const-wide/high16 v24, 0x3ff0000000000000L    # 1.0

    div-double v18, v24, v18

    mul-double/2addr v8, v14

    mul-double/2addr v10, v12

    sub-double/2addr v8, v10

    mul-double v8, v8, v18

    mul-double/2addr v0, v14

    mul-double/2addr v2, v12

    sub-double/2addr v0, v2

    mul-double v0, v0, v18

    cmpl-double v2, v8, v22

    if-ltz v2, :cond_11

    cmpg-double v2, v8, v24

    if-gtz v2, :cond_11

    cmpl-double v2, v0, v22

    if-ltz v2, :cond_11

    cmpg-double v2, v0, v24

    if-gtz v2, :cond_11

    mul-double v8, v8, v16

    add-double v2, p7, v8

    mul-double/2addr v0, v4

    add-double/2addr v0, v6

    cmpg-double v4, v2, v22

    if-ltz v4, :cond_f

    cmpl-double v4, v2, v24

    if-gtz v4, :cond_f

    cmpg-double v4, v0, v22

    if-ltz v4, :cond_f

    cmpl-double v4, v0, v24

    if-lez v4, :cond_10

    :cond_f
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, "Uh oh!"

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_10
    move-object/from16 v4, p0

    invoke-virtual {v4, v2, v3}, Lsun/awt/geom/Curve;->YforT(D)D

    move-result-wide v2

    move-object/from16 v4, p1

    invoke-virtual {v4, v0, v1}, Lsun/awt/geom/Curve;->YforT(D)D

    move-result-wide v0

    add-double/2addr v2, v0

    div-double v2, v2, v20

    aget-wide v0, p2, v32

    cmpg-double v0, v2, v0

    if-gtz v0, :cond_11

    aget-wide v0, p2, v31

    cmpl-double v0, v2, v0

    if-lez v0, :cond_11

    aput-wide v2, p2, v32

    return v32

    :cond_11
    :goto_0
    return v31
.end method

.method public final getDirection()I
    .locals 0

    iget p0, p0, Lsun/awt/geom/Curve;->direction:I

    return p0
.end method

.method public abstract getOrder()I
.end method

.method public abstract getReversedCurve()Lsun/awt/geom/Curve;
.end method

.method public abstract getSegment([D)I
.end method

.method public getSubCurve(DD)Lsun/awt/geom/Curve;
    .locals 6

    .line 1
    iget v5, p0, Lsun/awt/geom/Curve;->direction:I

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    invoke-virtual/range {v0 .. v5}, Lsun/awt/geom/Curve;->getSubCurve(DDI)Lsun/awt/geom/Curve;

    move-result-object p0

    return-object p0
.end method

.method public abstract getSubCurve(DDI)Lsun/awt/geom/Curve;
.end method

.method public final getWithDirection(I)Lsun/awt/geom/Curve;
    .locals 1

    iget v0, p0, Lsun/awt/geom/Curve;->direction:I

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lsun/awt/geom/Curve;->getReversedCurve()Lsun/awt/geom/Curve;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public abstract getX0()D
.end method

.method public abstract getX1()D
.end method

.method public abstract getXBot()D
.end method

.method public abstract getXMax()D
.end method

.method public abstract getXMin()D
.end method

.method public abstract getXTop()D
.end method

.method public abstract getY0()D
.end method

.method public abstract getY1()D
.end method

.method public abstract getYBot()D
.end method

.method public abstract getYTop()D
.end method

.method public abstract nextVertical(DD)D
.end method

.method public refineTforY(DDD)D
    .locals 5

    const-wide/high16 p3, 0x3ff0000000000000L    # 1.0

    :goto_0
    add-double v0, p1, p3

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    div-double/2addr v0, v2

    cmpl-double v2, v0, p1

    if-eqz v2, :cond_2

    cmpl-double v2, v0, p3

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0, v0, v1}, Lsun/awt/geom/Curve;->YforT(D)D

    move-result-wide v2

    cmpg-double v4, v2, p5

    if-gez v4, :cond_1

    move-wide p1, v0

    goto :goto_0

    :cond_1
    cmpl-double v2, v2, p5

    if-lez v2, :cond_2

    move-wide p3, v0

    goto :goto_0

    :cond_2
    :goto_1
    return-wide p3
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Curve["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lsun/awt/geom/Curve;->getOrder()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lsun/awt/geom/Curve;->getX0()D

    move-result-wide v3

    invoke-static {v3, v4}, Lsun/awt/geom/Curve;->round(D)D

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lsun/awt/geom/Curve;->getY0()D

    move-result-wide v3

    invoke-static {v3, v4}, Lsun/awt/geom/Curve;->round(D)D

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v3, "), "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lsun/awt/geom/Curve;->controlPointString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lsun/awt/geom/Curve;->getX1()D

    move-result-wide v4

    invoke-static {v4, v5}, Lsun/awt/geom/Curve;->round(D)D

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lsun/awt/geom/Curve;->getY1()D

    move-result-wide v1

    invoke-static {v1, v2}, Lsun/awt/geom/Curve;->round(D)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lsun/awt/geom/Curve;->direction:I

    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    const-string p0, "D"

    goto :goto_0

    :cond_0
    const-string p0, "U"

    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
