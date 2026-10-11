.class public Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;
.super Lorg/apache/commons/math3/optimization/general/AbstractLeastSquaresOptimizer;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public k:I

.field public l:[D

.field public m:[D

.field public n:[D

.field public o:[I

.field public p:I

.field public q:D

.field public r:[D

.field public final s:D

.field public final t:D

.field public final u:D

.field public final v:D

.field public final w:D

.field public x:[D

.field public y:[[D


# direct methods
.method public constructor <init>()V
    .locals 11

    const-wide/high16 v1, 0x4059000000000000L    # 100.0

    const-wide v3, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    const-wide v5, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    const-wide v7, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    .line 1
    sget-wide v9, Lorg/apache/commons/math3/util/Precision;->SAFE_MIN:D

    move-object v0, p0

    invoke-direct/range {v0 .. v10}, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;-><init>(DDDDD)V

    return-void
.end method

.method public constructor <init>(DDD)V
    .locals 11

    const-wide/high16 v1, 0x4059000000000000L    # 100.0

    .line 9
    sget-wide v9, Lorg/apache/commons/math3/util/Precision;->SAFE_MIN:D

    move-object v0, p0

    move-wide v3, p1

    move-wide v5, p3

    move-wide/from16 v7, p5

    invoke-direct/range {v0 .. v10}, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;-><init>(DDDDD)V

    return-void
.end method

.method public constructor <init>(DDDDD)V
    .locals 1

    const/4 v0, 0x0

    .line 10
    invoke-direct {p0, v0}, Lorg/apache/commons/math3/optimization/general/AbstractLeastSquaresOptimizer;-><init>(Lorg/apache/commons/math3/optimization/ConvergenceChecker;)V

    .line 11
    iput-wide p1, p0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->s:D

    .line 12
    iput-wide p3, p0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->t:D

    .line 13
    iput-wide p5, p0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->u:D

    .line 14
    iput-wide p7, p0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->v:D

    .line 15
    iput-wide p9, p0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->w:D

    return-void
.end method

.method public constructor <init>(DLorg/apache/commons/math3/optimization/ConvergenceChecker;DDDD)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D",
            "Lorg/apache/commons/math3/optimization/ConvergenceChecker<",
            "Lorg/apache/commons/math3/optimization/PointVectorValuePair;",
            ">;DDDD)V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p3}, Lorg/apache/commons/math3/optimization/general/AbstractLeastSquaresOptimizer;-><init>(Lorg/apache/commons/math3/optimization/ConvergenceChecker;)V

    .line 4
    iput-wide p1, p0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->s:D

    .line 5
    iput-wide p4, p0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->t:D

    .line 6
    iput-wide p6, p0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->u:D

    .line 7
    iput-wide p8, p0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->v:D

    .line 8
    iput-wide p10, p0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->w:D

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/optimization/ConvergenceChecker;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/optimization/ConvergenceChecker<",
            "Lorg/apache/commons/math3/optimization/PointVectorValuePair;",
            ">;)V"
        }
    .end annotation

    const-wide/high16 v1, 0x4059000000000000L    # 100.0

    const-wide v4, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    const-wide v6, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    const-wide v8, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    .line 2
    sget-wide v10, Lorg/apache/commons/math3/util/Precision;->SAFE_MIN:D

    move-object v0, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v11}, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;-><init>(DLorg/apache/commons/math3/optimization/ConvergenceChecker;DDDD)V

    return-void
.end method


# virtual methods
.method public final d([D[D[D[D)V
    .locals 29

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    iget v4, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->k:I

    if-ge v3, v4, :cond_1

    iget-object v4, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->o:[I

    aget v4, v4, v3

    add-int/lit8 v5, v3, 0x1

    move v6, v5

    :goto_1
    iget v7, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->k:I

    if-ge v6, v7, :cond_0

    iget-object v7, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->y:[[D

    aget-object v8, v7, v6

    aget-object v7, v7, v3

    iget-object v9, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->o:[I

    aget v9, v9, v6

    aget-wide v9, v7, v9

    aput-wide v9, v8, v4

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_0
    iget-object v6, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->r:[D

    iget-object v7, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->l:[D

    aget-wide v7, v7, v4

    aput-wide v7, v6, v3

    aget-wide v6, p1, v3

    aput-wide v6, p4, v3

    move v3, v5

    goto :goto_0

    :cond_1
    move v3, v2

    :goto_2
    iget v4, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->k:I

    const-wide/16 v5, 0x0

    if-ge v3, v4, :cond_6

    iget-object v4, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->o:[I

    aget v4, v4, v3

    aget-wide v7, p2, v4

    cmpl-double v4, v7, v5

    if-eqz v4, :cond_2

    add-int/lit8 v4, v3, 0x1

    array-length v9, v1

    invoke-static {v1, v4, v9, v5, v6}, Ljava/util/Arrays;->fill([DIID)V

    :cond_2
    aput-wide v7, v1, v3

    move v4, v3

    move-wide v7, v5

    :goto_3
    iget v9, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->k:I

    if-ge v4, v9, :cond_5

    iget-object v9, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->o:[I

    aget v9, v9, v4

    aget-wide v10, v1, v4

    cmpl-double v10, v10, v5

    if-eqz v10, :cond_4

    iget-object v10, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->y:[[D

    aget-object v10, v10, v4

    aget-wide v10, v10, v9

    invoke-static {v10, v11}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v12

    aget-wide v14, v1, v4

    invoke-static {v14, v15}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v14

    cmpg-double v12, v12, v14

    const-wide/high16 v13, 0x3ff0000000000000L    # 1.0

    if-gez v12, :cond_3

    aget-wide v15, v1, v4

    div-double v15, v10, v15

    mul-double v17, v15, v15

    add-double v17, v17, v13

    invoke-static/range {v17 .. v18}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v17

    div-double v13, v13, v17

    mul-double/2addr v15, v13

    goto :goto_4

    :cond_3
    aget-wide v15, v1, v4

    div-double/2addr v15, v10

    mul-double v17, v15, v15

    add-double v17, v17, v13

    invoke-static/range {v17 .. v18}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v17

    div-double v12, v13, v17

    mul-double v14, v12, v15

    move-wide/from16 v27, v12

    move-wide v13, v14

    move-wide/from16 v15, v27

    :goto_4
    iget-object v12, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->y:[[D

    aget-object v12, v12, v4

    mul-double/2addr v10, v15

    aget-wide v17, v1, v4

    mul-double v17, v17, v13

    add-double v10, v10, v17

    aput-wide v10, v12, v9

    aget-wide v10, p4, v4

    mul-double v17, v15, v10

    mul-double v19, v13, v7

    add-double v17, v17, v19

    neg-double v5, v13

    mul-double/2addr v10, v5

    mul-double/2addr v7, v15

    add-double/2addr v7, v10

    aput-wide v17, p4, v4

    add-int/lit8 v10, v4, 0x1

    :goto_5
    iget v11, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->k:I

    if-ge v10, v11, :cond_4

    iget-object v11, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->y:[[D

    aget-object v11, v11, v10

    aget-wide v17, v11, v9

    mul-double v21, v15, v17

    aget-wide v23, v1, v10

    mul-double v25, v13, v23

    add-double v21, v21, v25

    mul-double v17, v17, v5

    mul-double v23, v23, v15

    add-double v17, v17, v23

    aput-wide v17, v1, v10

    aput-wide v21, v11, v9

    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    :cond_4
    add-int/lit8 v4, v4, 0x1

    const-wide/16 v5, 0x0

    goto/16 :goto_3

    :cond_5
    iget-object v4, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->y:[[D

    aget-object v4, v4, v3

    iget-object v5, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->o:[I

    aget v5, v5, v3

    aget-wide v6, v4, v5

    aput-wide v6, v1, v3

    iget-object v6, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->r:[D

    aget-wide v6, v6, v3

    aput-wide v6, v4, v5

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_2

    :cond_6
    move v3, v2

    :goto_6
    iget v5, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->k:I

    if-ge v3, v5, :cond_9

    aget-wide v6, v1, v3

    const-wide/16 v8, 0x0

    cmpl-double v6, v6, v8

    if-nez v6, :cond_7

    if-ne v4, v5, :cond_7

    move v4, v3

    :cond_7
    if-ge v4, v5, :cond_8

    aput-wide v8, p4, v3

    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_9
    const-wide/16 v8, 0x0

    if-lez v4, :cond_b

    add-int/lit8 v3, v4, -0x1

    :goto_7
    if-ltz v3, :cond_b

    iget-object v5, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->o:[I

    aget v5, v5, v3

    add-int/lit8 v6, v3, 0x1

    move-wide v10, v8

    :goto_8
    if-ge v6, v4, :cond_a

    iget-object v7, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->y:[[D

    aget-object v7, v7, v6

    aget-wide v12, v7, v5

    aget-wide v14, p4, v6

    mul-double/2addr v12, v14

    add-double/2addr v10, v12

    add-int/lit8 v6, v6, 0x1

    goto :goto_8

    :cond_a
    aget-wide v5, p4, v3

    sub-double/2addr v5, v10

    aget-wide v10, v1, v3

    div-double/2addr v5, v10

    aput-wide v5, p4, v3

    add-int/lit8 v3, v3, -0x1

    goto :goto_7

    :cond_b
    :goto_9
    iget-object v1, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->r:[D

    array-length v3, v1

    if-ge v2, v3, :cond_c

    iget-object v3, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->o:[I

    aget v3, v3, v2

    aget-wide v4, p4, v2

    aput-wide v4, v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_c
    return-void
.end method

.method public doOptimize()Lorg/apache/commons/math3/optimization/PointVectorValuePair;
    .locals 61

    move-object/from16 v8, p0

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateVectorOptimizer;->getTarget()[D

    move-result-object v0

    array-length v9, v0

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateVectorOptimizer;->getStartPoint()[D

    move-result-object v10

    array-length v11, v10

    invoke-static {v9, v11}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v0

    iput v0, v8, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->k:I

    new-array v0, v11, [D

    iput-object v0, v8, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->l:[D

    new-array v0, v11, [D

    iput-object v0, v8, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->m:[D

    new-array v0, v11, [D

    iput-object v0, v8, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->n:[D

    new-array v0, v11, [I

    iput-object v0, v8, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->o:[I

    new-array v0, v11, [D

    iput-object v0, v8, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->r:[D

    new-array v12, v11, [D

    new-array v13, v11, [D

    new-array v0, v9, [D

    new-array v1, v9, [D

    new-array v14, v9, [D

    new-array v15, v11, [D

    new-array v7, v11, [D

    new-array v6, v11, [D

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/optimization/general/AbstractLeastSquaresOptimizer;->getWeightSquareRoot()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v5

    invoke-virtual {v8, v10}, Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateVectorOptimizer;->computeObjectiveValue([D)[D

    move-result-object v1

    invoke-virtual {v8, v1}, Lorg/apache/commons/math3/optimization/general/AbstractLeastSquaresOptimizer;->computeResiduals([D)[D

    move-result-object v2

    new-instance v3, Lorg/apache/commons/math3/optimization/PointVectorValuePair;

    invoke-direct {v3, v10, v1}, Lorg/apache/commons/math3/optimization/PointVectorValuePair;-><init>([D[D)V

    invoke-virtual {v8, v2}, Lorg/apache/commons/math3/optimization/general/AbstractLeastSquaresOptimizer;->computeCost([D)D

    move-result-wide v16

    move-object/from16 v19, v6

    move-object/from16 v18, v7

    const-wide/16 v6, 0x0

    iput-wide v6, v8, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->q:D

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateVectorOptimizer;->getConvergenceChecker()Lorg/apache/commons/math3/optimization/ConvergenceChecker;

    move-result-object v4

    const/16 v20, 0x1

    const/16 v21, 0x0

    move-wide/from16 v24, v6

    move-wide/from16 v26, v24

    move-wide/from16 v22, v16

    move/from16 v17, v20

    move/from16 v16, v21

    :goto_0
    add-int/lit8 v6, v16, 0x1

    invoke-virtual {v8, v10}, Lorg/apache/commons/math3/optimization/general/AbstractLeastSquaresOptimizer;->computeWeightedJacobian([D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v7

    invoke-virtual {v8, v7}, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->g(Lorg/apache/commons/math3/linear/RealMatrix;)V

    invoke-interface {v5, v2}, Lorg/apache/commons/math3/linear/RealMatrix;->operate([D)[D

    move-result-object v7

    iput-object v7, v8, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->x:[D

    move/from16 v7, v21

    :goto_1
    if-ge v7, v9, :cond_0

    move-object/from16 v16, v0

    iget-object v0, v8, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->x:[D

    aget-wide v30, v0, v7

    aput-wide v30, v14, v7

    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, v16

    goto :goto_1

    :cond_0
    move-object/from16 v16, v0

    invoke-virtual {v8, v14}, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->f([D)V

    move/from16 v0, v21

    :goto_2
    iget v7, v8, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->k:I

    if-ge v0, v7, :cond_1

    iget-object v7, v8, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->o:[I

    aget v7, v7, v0

    move-object/from16 v30, v1

    iget-object v1, v8, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->y:[[D

    aget-object v1, v1, v0

    move-object/from16 v31, v2

    iget-object v2, v8, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->l:[D

    aget-wide v32, v2, v7

    aput-wide v32, v1, v7

    add-int/lit8 v0, v0, 0x1

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    goto :goto_2

    :cond_1
    move-object/from16 v30, v1

    move-object/from16 v31, v2

    const-wide/high16 v32, 0x3ff0000000000000L    # 1.0

    if-eqz v17, :cond_5

    move/from16 v0, v21

    const-wide/16 v1, 0x0

    :goto_3
    if-ge v0, v11, :cond_3

    iget-object v7, v8, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->m:[D

    aget-wide v24, v7, v0

    const-wide/16 v26, 0x0

    cmpl-double v7, v24, v26

    if-nez v7, :cond_2

    move-wide/from16 v24, v32

    :cond_2
    aget-wide v26, v10, v0

    mul-double v26, v26, v24

    mul-double v26, v26, v26

    add-double v1, v1, v26

    aput-wide v24, v12, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_3
    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v26

    const-wide/16 v28, 0x0

    cmpl-double v0, v26, v28

    if-nez v0, :cond_4

    iget-wide v0, v8, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->s:D

    goto :goto_4

    :cond_4
    iget-wide v0, v8, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->s:D

    mul-double v0, v0, v26

    :goto_4
    move-wide/from16 v24, v0

    goto :goto_5

    :cond_5
    const-wide/16 v28, 0x0

    :goto_5
    move-wide/from16 v0, v22

    cmpl-double v2, v0, v28

    move-object/from16 v22, v4

    if-eqz v2, :cond_9

    move-object v7, v5

    move/from16 v23, v6

    move/from16 v2, v21

    move-wide/from16 v4, v28

    :goto_6
    iget v6, v8, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->k:I

    if-ge v2, v6, :cond_8

    iget-object v6, v8, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->o:[I

    aget v6, v6, v2

    move-object/from16 v34, v7

    iget-object v7, v8, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->m:[D

    aget-wide v35, v7, v6

    cmpl-double v7, v35, v28

    if-eqz v7, :cond_7

    move/from16 v7, v21

    move-wide/from16 v37, v28

    :goto_7
    if-gt v7, v2, :cond_6

    move/from16 v39, v9

    iget-object v9, v8, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->y:[[D

    aget-object v9, v9, v7

    aget-wide v40, v9, v6

    aget-wide v42, v14, v7

    mul-double v40, v40, v42

    add-double v37, v37, v40

    add-int/lit8 v7, v7, 0x1

    move/from16 v9, v39

    goto :goto_7

    :cond_6
    move/from16 v39, v9

    invoke-static/range {v37 .. v38}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v6

    mul-double v35, v35, v0

    div-double v6, v6, v35

    invoke-static {v4, v5, v6, v7}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v4

    goto :goto_8

    :cond_7
    move/from16 v39, v9

    :goto_8
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v7, v34

    move/from16 v9, v39

    goto :goto_6

    :cond_8
    move-object/from16 v34, v7

    move/from16 v39, v9

    move-wide/from16 v35, v4

    goto :goto_9

    :cond_9
    move-object/from16 v34, v5

    move/from16 v23, v6

    move/from16 v39, v9

    move-wide/from16 v35, v28

    :goto_9
    iget-wide v4, v8, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->v:D

    cmpg-double v2, v35, v4

    if-gtz v2, :cond_a

    invoke-virtual {v8, v0, v1}, Lorg/apache/commons/math3/optimization/general/AbstractLeastSquaresOptimizer;->setCost(D)V

    invoke-virtual {v3}, Lorg/apache/commons/math3/optimization/PointVectorValuePair;->getPoint()[D

    move-result-object v0

    iput-object v0, v8, Lorg/apache/commons/math3/optimization/general/AbstractLeastSquaresOptimizer;->point:[D

    return-object v3

    :cond_a
    move/from16 v2, v21

    :goto_a
    if-ge v2, v11, :cond_b

    aget-wide v4, v12, v2

    iget-object v6, v8, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->m:[D

    aget-wide v6, v6, v2

    invoke-static {v4, v5, v6, v7}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v4

    aput-wide v4, v12, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_b
    move-wide/from16 v6, v24

    move-object/from16 v9, v30

    move-object/from16 v2, v31

    move-wide/from16 v24, v0

    move-object v1, v3

    move-object/from16 v0, v16

    move-wide/from16 v30, v26

    move-wide/from16 v26, v28

    :goto_b
    const-wide v37, 0x3f1a36e2eb1c432dL    # 1.0E-4

    cmpg-double v4, v26, v37

    if-gez v4, :cond_26

    move/from16 v1, v21

    :goto_c
    iget v2, v8, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->k:I

    if-ge v1, v2, :cond_c

    iget-object v2, v8, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->o:[I

    aget v2, v2, v1

    aget-wide v4, v10, v2

    aput-wide v4, v13, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_c
    iget-object v5, v8, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->x:[D

    iput-object v0, v8, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->x:[D

    move-object/from16 v0, p0

    move-object v1, v14

    move-object v4, v3

    move-wide v2, v6

    move-object/from16 v16, v14

    move-object v14, v4

    move-object/from16 v60, v22

    move-object/from16 v22, v9

    move-object/from16 v9, v60

    move-object v4, v12

    move-object/from16 v44, v5

    move-object/from16 v26, v34

    move-object v5, v15

    move-wide/from16 v27, v28

    move-object/from16 v29, v19

    move-object/from16 v19, v15

    move/from16 v60, v23

    move-object/from16 v23, v14

    move-wide v14, v6

    move/from16 v7, v60

    move-object/from16 v6, v18

    move/from16 v45, v7

    move-object/from16 v7, v29

    invoke-virtual/range {v0 .. v7}, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->e([DD[D[D[D[D)V

    move/from16 v0, v21

    move-wide/from16 v6, v27

    :goto_d
    iget v1, v8, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->k:I

    if-ge v0, v1, :cond_d

    iget-object v1, v8, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->o:[I

    aget v1, v1, v0

    iget-object v2, v8, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->r:[D

    aget-wide v3, v2, v1

    neg-double v3, v3

    aput-wide v3, v2, v1

    aget-wide v40, v13, v1

    add-double v40, v40, v3

    aput-wide v40, v10, v1

    aget-wide v3, v12, v1

    aget-wide v1, v2, v1

    mul-double/2addr v3, v1

    mul-double/2addr v3, v3

    add-double/2addr v6, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_d
    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v0

    if-eqz v17, :cond_e

    invoke-static {v14, v15, v0, v1}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v6

    goto :goto_e

    :cond_e
    move-wide v6, v14

    :goto_e
    invoke-virtual {v8, v10}, Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateVectorOptimizer;->computeObjectiveValue([D)[D

    move-result-object v2

    invoke-virtual {v8, v2}, Lorg/apache/commons/math3/optimization/general/AbstractLeastSquaresOptimizer;->computeResiduals([D)[D

    move-result-object v3

    new-instance v4, Lorg/apache/commons/math3/optimization/PointVectorValuePair;

    invoke-direct {v4, v10, v2}, Lorg/apache/commons/math3/optimization/PointVectorValuePair;-><init>([D[D)V

    invoke-virtual {v8, v3}, Lorg/apache/commons/math3/optimization/general/AbstractLeastSquaresOptimizer;->computeCost([D)D

    move-result-wide v14

    const-wide v40, 0x3fb999999999999aL    # 0.1

    mul-double v42, v14, v40

    cmpg-double v5, v42, v24

    if-gez v5, :cond_f

    div-double v46, v14, v24

    mul-double v46, v46, v46

    sub-double v46, v32, v46

    goto :goto_f

    :cond_f
    const-wide/high16 v46, -0x4010000000000000L    # -1.0

    :goto_f
    move-object/from16 v34, v2

    move/from16 v5, v21

    :goto_10
    iget v2, v8, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->k:I

    if-ge v5, v2, :cond_11

    iget-object v2, v8, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->o:[I

    aget v2, v2, v5

    move-object/from16 v48, v3

    iget-object v3, v8, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->r:[D

    aget-wide v49, v3, v2

    aput-wide v27, v19, v5

    move/from16 v3, v21

    :goto_11
    if-gt v3, v5, :cond_10

    aget-wide v51, v19, v3

    move-object/from16 v53, v13

    iget-object v13, v8, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->y:[[D

    aget-object v13, v13, v3

    aget-wide v54, v13, v2

    mul-double v54, v54, v49

    add-double v51, v51, v54

    aput-wide v51, v19, v3

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v13, v53

    goto :goto_11

    :cond_10
    move-object/from16 v53, v13

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v3, v48

    goto :goto_10

    :cond_11
    move-object/from16 v48, v3

    move-object/from16 v53, v13

    move/from16 v5, v21

    move-wide/from16 v2, v27

    :goto_12
    iget v13, v8, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->k:I

    if-ge v5, v13, :cond_12

    aget-wide v49, v19, v5

    mul-double v49, v49, v49

    add-double v2, v2, v49

    add-int/lit8 v5, v5, 0x1

    goto :goto_12

    :cond_12
    mul-double v49, v24, v24

    div-double v2, v2, v49

    move-wide/from16 v51, v14

    iget-wide v13, v8, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->q:D

    mul-double v54, v13, v0

    mul-double v54, v54, v0

    div-double v54, v54, v49

    const-wide/high16 v49, 0x4000000000000000L    # 2.0

    mul-double v56, v54, v49

    add-double v56, v2, v56

    add-double v2, v2, v54

    neg-double v2, v2

    cmpl-double v5, v56, v27

    if-nez v5, :cond_13

    move-wide/from16 v54, v27

    goto :goto_13

    :cond_13
    div-double v54, v46, v56

    :goto_13
    const-wide/high16 v58, 0x3fd0000000000000L    # 0.25

    cmpg-double v5, v54, v58

    const-wide/high16 v58, 0x3fe0000000000000L    # 0.5

    if-gtz v5, :cond_17

    cmpg-double v5, v46, v27

    if-gez v5, :cond_14

    mul-double v13, v2, v58

    mul-double v58, v58, v46

    add-double v2, v2, v58

    div-double v58, v13, v2

    :cond_14
    cmpl-double v2, v42, v24

    if-gez v2, :cond_16

    cmpg-double v2, v58, v40

    if-gez v2, :cond_15

    goto :goto_14

    :cond_15
    move-wide/from16 v40, v58

    :cond_16
    :goto_14
    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    mul-double/2addr v0, v2

    invoke-static {v6, v7, v0, v1}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v0

    mul-double v0, v0, v40

    iget-wide v2, v8, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->q:D

    div-double v2, v2, v40

    iput-wide v2, v8, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->q:D

    goto :goto_15

    :cond_17
    cmpl-double v2, v13, v27

    if-eqz v2, :cond_18

    const-wide/high16 v2, 0x3fe8000000000000L    # 0.75

    cmpl-double v2, v54, v2

    if-ltz v2, :cond_19

    :cond_18
    mul-double v0, v0, v49

    mul-double v13, v13, v58

    iput-wide v13, v8, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->q:D

    :goto_15
    move-wide v6, v0

    :cond_19
    cmpl-double v0, v54, v37

    if-ltz v0, :cond_1d

    move/from16 v2, v21

    move-wide/from16 v0, v27

    :goto_16
    if-ge v2, v11, :cond_1a

    aget-wide v13, v12, v2

    aget-wide v24, v10, v2

    mul-double v13, v13, v24

    mul-double/2addr v13, v13

    add-double/2addr v0, v13

    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    :cond_1a
    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v30

    move-object/from16 v1, v23

    move/from16 v3, v45

    if-eqz v9, :cond_1b

    invoke-interface {v9, v3, v1, v4}, Lorg/apache/commons/math3/optimization/ConvergenceChecker;->converged(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    move-wide/from16 v13, v51

    if-eqz v0, :cond_1c

    invoke-virtual {v8, v13, v14}, Lorg/apache/commons/math3/optimization/general/AbstractLeastSquaresOptimizer;->setCost(D)V

    invoke-virtual {v4}, Lorg/apache/commons/math3/optimization/PointVectorValuePair;->getPoint()[D

    move-result-object v0

    iput-object v0, v8, Lorg/apache/commons/math3/optimization/general/AbstractLeastSquaresOptimizer;->point:[D

    return-object v4

    :cond_1b
    move-wide/from16 v13, v51

    :cond_1c
    move-object v2, v4

    move/from16 v17, v21

    move-object/from16 v0, v44

    goto :goto_18

    :cond_1d
    move-object/from16 v1, v23

    move/from16 v3, v45

    move/from16 v0, v21

    :goto_17
    iget v2, v8, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->k:I

    if-ge v0, v2, :cond_1e

    iget-object v2, v8, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->o:[I

    aget v2, v2, v0

    aget-wide v4, v53, v2

    aput-wide v4, v10, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    :cond_1e
    iget-object v0, v8, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->x:[D

    move-object/from16 v2, v44

    iput-object v2, v8, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->x:[D

    new-instance v2, Lorg/apache/commons/math3/optimization/PointVectorValuePair;

    move-object/from16 v4, v22

    invoke-direct {v2, v10, v4}, Lorg/apache/commons/math3/optimization/PointVectorValuePair;-><init>([D[D)V

    move-object/from16 v34, v4

    move-wide/from16 v13, v24

    :goto_18
    invoke-static/range {v46 .. v47}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v4

    move-object v15, v0

    move-object/from16 v23, v1

    iget-wide v0, v8, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->t:D

    cmpg-double v4, v4, v0

    if-gtz v4, :cond_1f

    cmpg-double v0, v56, v0

    if-gtz v0, :cond_1f

    cmpg-double v0, v54, v49

    if-lez v0, :cond_20

    :cond_1f
    iget-wide v0, v8, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->u:D

    mul-double v0, v0, v30

    cmpg-double v0, v6, v0

    if-gtz v0, :cond_21

    :cond_20
    invoke-virtual {v8, v13, v14}, Lorg/apache/commons/math3/optimization/general/AbstractLeastSquaresOptimizer;->setCost(D)V

    invoke-virtual {v2}, Lorg/apache/commons/math3/optimization/PointVectorValuePair;->getPoint()[D

    move-result-object v0

    iput-object v0, v8, Lorg/apache/commons/math3/optimization/general/AbstractLeastSquaresOptimizer;->point:[D

    return-object v2

    :cond_21
    invoke-static/range {v46 .. v47}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v0

    const-wide v4, 0x3cafffd481f97682L    # 2.2204E-16

    cmpg-double v0, v0, v4

    if-gtz v0, :cond_23

    cmpg-double v0, v56, v4

    if-gtz v0, :cond_23

    cmpg-double v0, v54, v49

    if-lez v0, :cond_22

    goto :goto_19

    :cond_22
    new-instance v0, Lorg/apache/commons/math3/exception/ConvergenceException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->TOO_SMALL_COST_RELATIVE_TOLERANCE:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    iget-wide v2, v8, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->t:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/ConvergenceException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v0

    :cond_23
    :goto_19
    mul-double v0, v30, v4

    cmpg-double v0, v6, v0

    if-lez v0, :cond_25

    cmpg-double v0, v35, v4

    if-lez v0, :cond_24

    move-object v1, v2

    move-object/from16 v22, v9

    move-wide/from16 v24, v13

    move-object v0, v15

    move-object/from16 v14, v16

    move-object/from16 v15, v19

    move-object/from16 v19, v29

    move-object/from16 v9, v34

    move-object/from16 v2, v48

    move-object/from16 v13, v53

    move-object/from16 v34, v26

    move-wide/from16 v28, v27

    move-wide/from16 v26, v54

    move-object/from16 v60, v23

    move/from16 v23, v3

    move-object/from16 v3, v60

    goto/16 :goto_b

    :cond_24
    new-instance v0, Lorg/apache/commons/math3/exception/ConvergenceException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->TOO_SMALL_ORTHOGONALITY_TOLERANCE:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    iget-wide v2, v8, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->v:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/ConvergenceException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v0

    :cond_25
    new-instance v0, Lorg/apache/commons/math3/exception/ConvergenceException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->TOO_SMALL_PARAMETERS_RELATIVE_TOLERANCE:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    iget-wide v2, v8, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->u:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/ConvergenceException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v0

    :cond_26
    move-object v4, v9

    move-object/from16 v16, v14

    move/from16 v3, v23

    move-wide/from16 v27, v28

    move-object/from16 v29, v19

    move-object/from16 v19, v15

    move-wide v14, v6

    move-wide/from16 v26, v30

    move-object/from16 v5, v34

    move/from16 v9, v39

    move/from16 v60, v3

    move-object v3, v1

    move-object v1, v4

    move-object/from16 v4, v22

    move-wide/from16 v22, v24

    move-wide/from16 v24, v14

    move-object/from16 v14, v16

    move-object/from16 v15, v19

    move-object/from16 v19, v29

    move/from16 v16, v60

    goto/16 :goto_0
.end method

.method public final e([DD[D[D[D[D)V
    .locals 31

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    iget-object v7, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->y:[[D

    const/4 v8, 0x0

    aget-object v7, v7, v8

    array-length v7, v7

    move v9, v8

    :goto_0
    iget v10, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->p:I

    if-ge v9, v10, :cond_0

    iget-object v10, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->r:[D

    iget-object v11, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->o:[I

    aget v11, v11, v9

    aget-wide v12, v1, v9

    aput-wide v12, v10, v11

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    const-wide/16 v11, 0x0

    if-ge v10, v7, :cond_1

    iget-object v9, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->r:[D

    iget-object v13, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->o:[I

    aget v13, v13, v10

    aput-wide v11, v9, v13

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_1
    iget v7, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->p:I

    add-int/lit8 v7, v7, -0x1

    :goto_2
    if-ltz v7, :cond_3

    iget-object v9, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->o:[I

    aget v9, v9, v7

    iget-object v10, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->r:[D

    aget-wide v13, v10, v9

    iget-object v10, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->l:[D

    aget-wide v15, v10, v9

    div-double/2addr v13, v15

    move v10, v8

    :goto_3
    if-ge v10, v7, :cond_2

    iget-object v15, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->r:[D

    iget-object v8, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->o:[I

    aget v8, v8, v10

    aget-wide v17, v15, v8

    iget-object v11, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->y:[[D

    aget-object v11, v11, v10

    aget-wide v11, v11, v9

    mul-double/2addr v11, v13

    sub-double v17, v17, v11

    aput-wide v17, v15, v8

    add-int/lit8 v10, v10, 0x1

    const/4 v8, 0x0

    const-wide/16 v11, 0x0

    goto :goto_3

    :cond_2
    iget-object v8, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->r:[D

    aput-wide v13, v8, v9

    add-int/lit8 v7, v7, -0x1

    const/4 v8, 0x0

    const-wide/16 v11, 0x0

    goto :goto_2

    :cond_3
    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    :goto_4
    iget v10, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->k:I

    if-ge v9, v10, :cond_4

    iget-object v10, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->o:[I

    aget v10, v10, v9

    aget-wide v11, p4, v10

    iget-object v13, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->r:[D

    aget-wide v13, v13, v10

    mul-double/2addr v11, v13

    aput-wide v11, v4, v10

    mul-double/2addr v11, v11

    add-double/2addr v7, v11

    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    :cond_4
    invoke-static {v7, v8}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v7

    sub-double v9, v7, v2

    const-wide v11, 0x3fb999999999999aL    # 0.1

    mul-double v13, v2, v11

    cmpg-double v15, v9, v13

    if-gtz v15, :cond_5

    const-wide/16 v11, 0x0

    iput-wide v11, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->q:D

    return-void

    :cond_5
    iget v11, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->p:I

    iget v12, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->k:I

    if-ne v11, v12, :cond_9

    const/4 v11, 0x0

    :goto_5
    iget v12, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->k:I

    if-ge v11, v12, :cond_6

    iget-object v12, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->o:[I

    aget v12, v12, v11

    aget-wide v21, v4, v12

    aget-wide v23, p4, v12

    div-double v23, v23, v7

    mul-double v21, v21, v23

    aput-wide v21, v4, v12

    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    :cond_6
    move-wide/from16 v21, v13

    const-wide/16 v11, 0x0

    const/4 v15, 0x0

    :goto_6
    iget v13, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->k:I

    if-ge v15, v13, :cond_8

    iget-object v13, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->o:[I

    aget v13, v13, v15

    const/4 v14, 0x0

    const-wide/16 v23, 0x0

    :goto_7
    if-ge v14, v15, :cond_7

    iget-object v5, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->y:[[D

    aget-object v5, v5, v14

    aget-wide v25, v5, v13

    iget-object v5, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->o:[I

    aget v5, v5, v14

    aget-wide v27, v4, v5

    mul-double v25, v25, v27

    add-double v23, v23, v25

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v5, p6

    goto :goto_7

    :cond_7
    aget-wide v25, v4, v13

    sub-double v25, v25, v23

    iget-object v5, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->l:[D

    aget-wide v23, v5, v13

    div-double v25, v25, v23

    aput-wide v25, v4, v13

    mul-double v25, v25, v25

    add-double v11, v11, v25

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v5, p6

    goto :goto_6

    :cond_8
    mul-double/2addr v11, v2

    div-double v11, v9, v11

    goto :goto_8

    :cond_9
    move-wide/from16 v21, v13

    const-wide/16 v11, 0x0

    :goto_8
    const/4 v5, 0x0

    const-wide/16 v13, 0x0

    :goto_9
    iget v15, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->k:I

    if-ge v5, v15, :cond_b

    iget-object v15, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->o:[I

    aget v15, v15, v5

    move-wide/from16 v25, v9

    const/4 v9, 0x0

    const-wide/16 v23, 0x0

    :goto_a
    if-gt v9, v5, :cond_a

    iget-object v10, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->y:[[D

    aget-object v10, v10, v9

    aget-wide v27, v10, v15

    aget-wide v29, v1, v9

    mul-double v27, v27, v29

    add-double v23, v23, v27

    add-int/lit8 v9, v9, 0x1

    goto :goto_a

    :cond_a
    aget-wide v9, p4, v15

    div-double v23, v23, v9

    mul-double v23, v23, v23

    add-double v13, v13, v23

    add-int/lit8 v5, v5, 0x1

    move-wide/from16 v9, v25

    goto :goto_9

    :cond_b
    move-wide/from16 v25, v9

    invoke-static {v13, v14}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v9

    div-double v13, v9, v2

    const-wide/16 v19, 0x0

    cmpl-double v5, v13, v19

    move-wide/from16 v23, v13

    const-wide v13, 0x10000c51bd5669L    # 2.2251E-308

    if-nez v5, :cond_c

    const-wide v5, 0x3fb999999999999aL    # 0.1

    invoke-static {v2, v3, v5, v6}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v5

    div-double v5, v13, v5

    goto :goto_b

    :cond_c
    move-wide/from16 v5, v23

    :goto_b
    iget-wide v13, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->q:D

    invoke-static {v13, v14, v11, v12}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v13

    invoke-static {v5, v6, v13, v14}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v13

    iput-wide v13, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->q:D

    cmpl-double v13, v13, v19

    if-nez v13, :cond_d

    div-double/2addr v9, v7

    iput-wide v9, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->q:D

    :cond_d
    const/16 v7, 0xa

    move-wide/from16 v9, v25

    :goto_c
    if-ltz v7, :cond_18

    iget-wide v13, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->q:D

    cmpl-double v8, v13, v19

    if-nez v8, :cond_e

    const-wide v13, 0x3f50624dd2f1a9fcL    # 0.001

    mul-double/2addr v13, v5

    move v15, v7

    const-wide v7, 0x10000c51bd5669L    # 2.2251E-308

    invoke-static {v7, v8, v13, v14}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v13

    iput-wide v13, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->q:D

    goto :goto_d

    :cond_e
    move v15, v7

    const-wide v7, 0x10000c51bd5669L    # 2.2251E-308

    :goto_d
    iget-wide v13, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->q:D

    invoke-static {v13, v14}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v13

    const/4 v7, 0x0

    :goto_e
    iget v8, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->k:I

    if-ge v7, v8, :cond_f

    iget-object v8, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->o:[I

    aget v8, v8, v7

    aget-wide v23, p4, v8

    mul-double v23, v23, v13

    aput-wide v23, v4, v8

    add-int/lit8 v7, v7, 0x1

    goto :goto_e

    :cond_f
    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-virtual {v0, v1, v4, v7, v8}, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->d([D[D[D[D)V

    move/from16 v23, v15

    const/4 v1, 0x0

    const-wide/16 v13, 0x0

    :goto_f
    iget v15, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->k:I

    if-ge v1, v15, :cond_10

    iget-object v15, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->o:[I

    aget v15, v15, v1

    aget-wide v24, p4, v15

    move-wide/from16 v26, v5

    iget-object v5, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->r:[D

    aget-wide v5, v5, v15

    mul-double v24, v24, v5

    aput-wide v24, v8, v15

    mul-double v24, v24, v24

    add-double v13, v13, v24

    add-int/lit8 v1, v1, 0x1

    move-wide/from16 v5, v26

    goto :goto_f

    :cond_10
    move-wide/from16 v26, v5

    invoke-static {v13, v14}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v5

    sub-double v13, v5, v2

    invoke-static {v13, v14}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v24

    cmpg-double v1, v24, v21

    if-lez v1, :cond_18

    const-wide/16 v19, 0x0

    cmpl-double v1, v11, v19

    if-nez v1, :cond_11

    cmpg-double v1, v13, v9

    if-gtz v1, :cond_11

    cmpg-double v1, v9, v19

    if-gez v1, :cond_11

    goto/16 :goto_16

    :cond_11
    const/4 v1, 0x0

    :goto_10
    iget v9, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->k:I

    if-ge v1, v9, :cond_12

    iget-object v9, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->o:[I

    aget v9, v9, v1

    aget-wide v24, v8, v9

    aget-wide v28, p4, v9

    mul-double v24, v24, v28

    div-double v24, v24, v5

    aput-wide v24, v4, v9

    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    :cond_12
    const/4 v1, 0x0

    :goto_11
    iget v5, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->k:I

    if-ge v1, v5, :cond_14

    iget-object v5, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->o:[I

    aget v5, v5, v1

    aget-wide v9, v4, v5

    aget-wide v24, v7, v1

    div-double v9, v9, v24

    aput-wide v9, v4, v5

    add-int/lit8 v1, v1, 0x1

    move v6, v1

    :goto_12
    iget v15, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->k:I

    if-ge v6, v15, :cond_13

    iget-object v15, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->o:[I

    aget v15, v15, v6

    aget-wide v24, v4, v15

    move/from16 v28, v1

    iget-object v1, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->y:[[D

    aget-object v1, v1, v6

    aget-wide v29, v1, v5

    mul-double v29, v29, v9

    sub-double v24, v24, v29

    aput-wide v24, v4, v15

    add-int/lit8 v6, v6, 0x1

    move/from16 v1, v28

    goto :goto_12

    :cond_13
    move/from16 v28, v1

    goto :goto_11

    :cond_14
    const/4 v1, 0x0

    const-wide/16 v5, 0x0

    :goto_13
    iget v9, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->k:I

    if-ge v1, v9, :cond_15

    iget-object v9, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->o:[I

    aget v9, v9, v1

    aget-wide v9, v4, v9

    mul-double/2addr v9, v9

    add-double/2addr v5, v9

    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    :cond_15
    mul-double/2addr v5, v2

    div-double v5, v13, v5

    const-wide/16 v9, 0x0

    cmpl-double v1, v13, v9

    if-lez v1, :cond_16

    iget-wide v9, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->q:D

    invoke-static {v11, v12, v9, v10}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v9

    move-wide v11, v9

    goto :goto_14

    :cond_16
    cmpg-double v1, v13, v9

    if-gez v1, :cond_17

    iget-wide v9, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->q:D

    move-wide/from16 v1, v26

    invoke-static {v1, v2, v9, v10}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v1

    goto :goto_15

    :cond_17
    :goto_14
    move-wide/from16 v1, v26

    :goto_15
    iget-wide v9, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->q:D

    add-double/2addr v9, v5

    invoke-static {v11, v12, v9, v10}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v5

    iput-wide v5, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->q:D

    add-int/lit8 v3, v23, -0x1

    move-wide v5, v1

    move v7, v3

    move-wide v9, v13

    const-wide/16 v19, 0x0

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    goto/16 :goto_c

    :cond_18
    :goto_16
    return-void
.end method

.method public final f([D)V
    .locals 11

    iget-object v0, p0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->y:[[D

    array-length v1, v0

    const/4 v2, 0x0

    aget-object v0, v0, v2

    array-length v0, v0

    :goto_0
    if-ge v2, v0, :cond_2

    iget-object v3, p0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->o:[I

    aget v3, v3, v2

    const-wide/16 v4, 0x0

    move v6, v2

    :goto_1
    if-ge v6, v1, :cond_0

    iget-object v7, p0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->y:[[D

    aget-object v7, v7, v6

    aget-wide v7, v7, v3

    aget-wide v9, p1, v6

    mul-double/2addr v7, v9

    add-double/2addr v4, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_0
    iget-object v6, p0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->n:[D

    aget-wide v6, v6, v3

    mul-double/2addr v4, v6

    move v6, v2

    :goto_2
    if-ge v6, v1, :cond_1

    aget-wide v7, p1, v6

    iget-object v9, p0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->y:[[D

    aget-object v9, v9, v6

    aget-wide v9, v9, v3

    mul-double/2addr v9, v4

    sub-double/2addr v7, v9

    aput-wide v7, p1, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final g(Lorg/apache/commons/math3/linear/RealMatrix;)V
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/ConvergenceException;
        }
    .end annotation

    move-object/from16 v0, p0

    const-wide/high16 v1, -0x4010000000000000L    # -1.0

    move-object/from16 v3, p1

    invoke-interface {v3, v1, v2}, Lorg/apache/commons/math3/linear/RealMatrix;->scalarMultiply(D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/commons/math3/linear/RealMatrix;->getData()[[D

    move-result-object v1

    iput-object v1, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->y:[[D

    array-length v2, v1

    const/4 v3, 0x0

    aget-object v1, v1, v3

    array-length v1, v1

    move v4, v3

    :goto_0
    const-wide/16 v5, 0x0

    if-ge v4, v1, :cond_1

    iget-object v7, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->o:[I

    aput v4, v7, v4

    move v7, v3

    :goto_1
    if-ge v7, v2, :cond_0

    iget-object v8, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->y:[[D

    aget-object v8, v8, v7

    aget-wide v8, v8, v4

    mul-double/2addr v8, v8

    add-double/2addr v5, v8

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_0
    iget-object v7, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->m:[D

    invoke-static {v5, v6}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v5

    aput-wide v5, v7, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    :goto_2
    if-ge v3, v1, :cond_b

    const/4 v4, -0x1

    const-wide/high16 v7, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    move v9, v3

    :goto_3
    if-ge v9, v1, :cond_5

    move v10, v3

    move-wide v11, v5

    :goto_4
    if-ge v10, v2, :cond_2

    iget-object v13, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->y:[[D

    aget-object v13, v13, v10

    iget-object v14, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->o:[I

    aget v14, v14, v9

    aget-wide v13, v13, v14

    mul-double/2addr v13, v13

    add-double/2addr v11, v13

    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    :cond_2
    invoke-static {v11, v12}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v10

    if-nez v10, :cond_4

    invoke-static {v11, v12}, Ljava/lang/Double;->isNaN(D)Z

    move-result v10

    if-nez v10, :cond_4

    cmpl-double v10, v11, v7

    if-lez v10, :cond_3

    move v4, v9

    move-wide v7, v11

    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_4
    new-instance v0, Lorg/apache/commons/math3/exception/ConvergenceException;

    sget-object v3, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->UNABLE_TO_PERFORM_QR_DECOMPOSITION_ON_JACOBIAN:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v2, v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v3, v1}, Lorg/apache/commons/math3/exception/ConvergenceException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v0

    :cond_5
    iget-wide v9, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->w:D

    cmpg-double v9, v7, v9

    if-gtz v9, :cond_6

    iput v3, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->p:I

    return-void

    :cond_6
    iget-object v9, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->o:[I

    aget v10, v9, v4

    aget v11, v9, v3

    aput v11, v9, v4

    aput v10, v9, v3

    iget-object v4, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->y:[[D

    aget-object v4, v4, v3

    aget-wide v11, v4, v10

    cmpl-double v4, v11, v5

    invoke-static {v7, v8}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v13

    if-lez v4, :cond_7

    neg-double v13, v13

    :cond_7
    mul-double/2addr v11, v13

    sub-double/2addr v7, v11

    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    div-double/2addr v11, v7

    iget-object v4, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->n:[D

    aput-wide v11, v4, v10

    iget-object v4, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->l:[D

    aput-wide v13, v4, v10

    iget-object v4, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->y:[[D

    aget-object v4, v4, v3

    aget-wide v7, v4, v10

    sub-double/2addr v7, v13

    aput-wide v7, v4, v10

    add-int/lit8 v4, v1, -0x1

    sub-int/2addr v4, v3

    :goto_5
    if-lez v4, :cond_a

    move v7, v3

    move-wide v8, v5

    :goto_6
    if-ge v7, v2, :cond_8

    iget-object v13, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->y:[[D

    aget-object v13, v13, v7

    aget-wide v14, v13, v10

    iget-object v5, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->o:[I

    add-int v6, v3, v4

    aget v5, v5, v6

    aget-wide v5, v13, v5

    mul-double/2addr v14, v5

    add-double/2addr v8, v14

    add-int/lit8 v7, v7, 0x1

    const-wide/16 v5, 0x0

    goto :goto_6

    :cond_8
    mul-double/2addr v8, v11

    move v5, v3

    :goto_7
    if-ge v5, v2, :cond_9

    iget-object v6, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->y:[[D

    aget-object v6, v6, v5

    iget-object v7, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->o:[I

    add-int v13, v3, v4

    aget v7, v7, v13

    aget-wide v13, v6, v7

    aget-wide v16, v6, v10

    mul-double v16, v16, v8

    sub-double v13, v13, v16

    aput-wide v13, v6, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    :cond_9
    add-int/lit8 v4, v4, -0x1

    const-wide/16 v5, 0x0

    goto :goto_5

    :cond_a
    add-int/lit8 v3, v3, 0x1

    const-wide/16 v5, 0x0

    goto/16 :goto_2

    :cond_b
    iget v1, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->k:I

    iput v1, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->p:I

    return-void
.end method
