.class public final Lcom/graphbuilder/curve/BinaryCurveApproximationAlgorithm;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a([[DI)[[D
    .locals 3

    array-length v0, p0

    if-ne p1, v0, :cond_1

    mul-int/lit8 v0, p1, 0x2

    new-array v0, v0, [[D

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    aget-object v2, p0, v1

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    return-object p0
.end method

.method public static genPts(Lcom/graphbuilder/curve/ParametricCurve;DDLcom/graphbuilder/curve/MultiPath;)V
    .locals 27

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    cmpl-double v2, p1, p3

    if-gtz v2, :cond_9

    invoke-virtual/range {p5 .. p5}, Lcom/graphbuilder/curve/MultiPath;->getDimension()I

    move-result v2

    const/16 v3, 0xa

    new-array v3, v3, [[D

    add-int/lit8 v4, v2, 0x1

    new-array v5, v4, [D

    aput-wide p1, v5, v2

    invoke-virtual {v0, v5}, Lcom/graphbuilder/curve/ParametricCurve;->eval([D)V

    new-array v6, v4, [D

    aput-wide p3, v6, v2

    invoke-virtual {v0, v6}, Lcom/graphbuilder/curve/ParametricCurve;->eval([D)V

    const/4 v7, 0x0

    aput-object v6, v3, v7

    invoke-virtual/range {p0 .. p0}, Lcom/graphbuilder/curve/ParametricCurve;->getSampleLimit()I

    move-result v6

    new-array v8, v6, [[D

    invoke-virtual/range {p5 .. p5}, Lcom/graphbuilder/curve/MultiPath;->getFlatness()D

    move-result-wide v9

    invoke-virtual/range {p5 .. p5}, Lcom/graphbuilder/curve/MultiPath;->getFlatness()D

    move-result-wide v11

    mul-double/2addr v9, v11

    new-array v11, v4, [D

    move-wide/from16 v13, p1

    move-wide/from16 v15, p3

    const/4 v7, 0x1

    :goto_0
    add-double v17, v13, v15

    const-wide/high16 v19, 0x4000000000000000L    # 2.0

    div-double v17, v17, v19

    new-array v12, v4, [D

    aput-wide v17, v12, v2

    invoke-virtual {v0, v12}, Lcom/graphbuilder/curve/ParametricCurve;->eval([D)V

    add-int/lit8 v21, v7, -0x1

    move-wide/from16 p1, v15

    aget-object v15, v3, v21

    invoke-static {v5, v15, v12, v11, v2}, Lcom/graphbuilder/geom/Geom;->ptSegDistSq([D[D[D[DI)D

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Double;->isNaN(D)Z

    move-result v21

    if-nez v21, :cond_8

    invoke-static/range {v15 .. v16}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v21

    if-nez v21, :cond_8

    cmpg-double v15, v15, v9

    if-gez v15, :cond_4

    const-wide/16 v15, 0x0

    move-wide/from16 p3, v15

    const/4 v15, 0x0

    :goto_1
    if-ge v15, v6, :cond_1

    add-double v21, v13, v17

    div-double v21, v21, v19

    move-wide/from16 v23, v13

    new-array v13, v4, [D

    aput-object v13, v8, v15

    aput-wide v21, v13, v2

    invoke-virtual {v0, v13}, Lcom/graphbuilder/curve/ParametricCurve;->eval([D)V

    invoke-static {v5, v12, v13, v11, v2}, Lcom/graphbuilder/geom/Geom;->ptSegDistSq([D[D[D[DI)D

    move-result-wide v13

    cmpl-double v13, v13, v9

    if-ltz v13, :cond_0

    goto :goto_2

    :cond_0
    add-int/lit8 v15, v15, 0x1

    move-wide/from16 p3, v21

    move-wide/from16 v17, p3

    move-wide/from16 v13, v23

    goto :goto_1

    :cond_1
    move-wide/from16 v23, v13

    move-wide/from16 v21, p3

    :goto_2
    if-ne v15, v6, :cond_2

    move-wide/from16 v15, p1

    const/4 v13, 0x1

    goto :goto_5

    :cond_2
    invoke-static {v3, v7}, Lcom/graphbuilder/curve/BinaryCurveApproximationAlgorithm;->a([[DI)[[D

    move-result-object v3

    add-int/lit8 v13, v7, 0x1

    aput-object v12, v3, v7

    move v7, v13

    const/4 v13, 0x0

    :goto_3
    if-gt v13, v15, :cond_3

    invoke-static {v3, v7}, Lcom/graphbuilder/curve/BinaryCurveApproximationAlgorithm;->a([[DI)[[D

    move-result-object v3

    add-int/lit8 v14, v7, 0x1

    aget-object v16, v8, v13

    aput-object v16, v3, v7

    add-int/lit8 v13, v13, 0x1

    move v7, v14

    goto :goto_3

    :cond_3
    move-wide/from16 v15, v21

    goto :goto_4

    :cond_4
    move-wide/from16 v23, v13

    move-wide/from16 v15, p1

    :goto_4
    const/4 v13, 0x0

    :goto_5
    if-eqz v13, :cond_6

    invoke-virtual {v1, v5}, Lcom/graphbuilder/curve/MultiPath;->lineTo([D)V

    invoke-virtual {v1, v12}, Lcom/graphbuilder/curve/MultiPath;->lineTo([D)V

    add-int/lit8 v7, v7, -0x1

    aget-object v5, v3, v7

    if-nez v7, :cond_5

    invoke-virtual {v1, v5}, Lcom/graphbuilder/curve/MultiPath;->lineTo([D)V

    return-void

    :cond_5
    add-int/lit8 v12, v7, -0x1

    aget-object v12, v3, v12

    aget-wide v12, v12, v2

    move-wide/from16 v25, v12

    move-wide v13, v15

    move-wide/from16 v15, v25

    goto/16 :goto_0

    :cond_6
    cmpl-double v13, v15, v17

    if-lez v13, :cond_7

    invoke-static {v3, v7}, Lcom/graphbuilder/curve/BinaryCurveApproximationAlgorithm;->a([[DI)[[D

    move-result-object v3

    add-int/lit8 v13, v7, 0x1

    aput-object v12, v3, v7

    move v7, v13

    move-wide/from16 v15, v17

    :cond_7
    move-wide/from16 v13, v23

    goto/16 :goto_0

    :cond_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NaN or infinity resulted from calling the eval method of the "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " class."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "t_min <= t_max required."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
