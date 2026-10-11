.class public Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;
.super Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/AbstractLeastSquaresOptimizer;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final z:D


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
.method public static constructor <clinit>()V
    .locals 4

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    sget-wide v2, Lorg/apache/commons/math3/util/Precision;->EPSILON:D

    mul-double/2addr v2, v0

    sput-wide v2, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->z:D

    return-void
.end method

.method public constructor <init>()V
    .locals 11

    const-wide/high16 v1, 0x4059000000000000L    # 100.0

    const-wide v3, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    const-wide v5, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    const-wide v7, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    .line 1
    sget-wide v9, Lorg/apache/commons/math3/util/Precision;->SAFE_MIN:D

    move-object v0, p0

    invoke-direct/range {v0 .. v10}, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;-><init>(DDDDD)V

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

    invoke-direct/range {v0 .. v10}, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;-><init>(DDDDD)V

    return-void
.end method

.method public constructor <init>(DDDDD)V
    .locals 1

    const/4 v0, 0x0

    .line 10
    invoke-direct {p0, v0}, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/AbstractLeastSquaresOptimizer;-><init>(Lorg/apache/commons/math3/optim/ConvergenceChecker;)V

    .line 11
    iput-wide p1, p0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->s:D

    .line 12
    iput-wide p3, p0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->t:D

    .line 13
    iput-wide p5, p0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->u:D

    .line 14
    iput-wide p7, p0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->v:D

    .line 15
    iput-wide p9, p0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->w:D

    return-void
.end method

.method public constructor <init>(DLorg/apache/commons/math3/optim/ConvergenceChecker;DDDD)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D",
            "Lorg/apache/commons/math3/optim/ConvergenceChecker<",
            "Lorg/apache/commons/math3/optim/PointVectorValuePair;",
            ">;DDDD)V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p3}, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/AbstractLeastSquaresOptimizer;-><init>(Lorg/apache/commons/math3/optim/ConvergenceChecker;)V

    .line 4
    iput-wide p1, p0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->s:D

    .line 5
    iput-wide p4, p0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->t:D

    .line 6
    iput-wide p6, p0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->u:D

    .line 7
    iput-wide p8, p0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->v:D

    .line 8
    iput-wide p10, p0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->w:D

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/optim/ConvergenceChecker;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/optim/ConvergenceChecker<",
            "Lorg/apache/commons/math3/optim/PointVectorValuePair;",
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

    invoke-direct/range {v0 .. v11}, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;-><init>(DLorg/apache/commons/math3/optim/ConvergenceChecker;DDDD)V

    return-void
.end method

.method private a()V
    .locals 2

    invoke-virtual {p0}, Lorg/apache/commons/math3/optim/BaseMultivariateOptimizer;->getLowerBound()[D

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/commons/math3/optim/BaseMultivariateOptimizer;->getUpperBound()[D

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Lorg/apache/commons/math3/exception/MathUnsupportedOperationException;

    sget-object v0, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->CONSTRAINT:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/math3/exception/MathUnsupportedOperationException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw p0
.end method


# virtual methods
.method public final c([D[D[D[D)V
    .locals 29

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    iget v4, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->k:I

    if-ge v3, v4, :cond_1

    iget-object v4, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->o:[I

    aget v4, v4, v3

    add-int/lit8 v5, v3, 0x1

    move v6, v5

    :goto_1
    iget v7, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->k:I

    if-ge v6, v7, :cond_0

    iget-object v7, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->y:[[D

    aget-object v8, v7, v6

    aget-object v7, v7, v3

    iget-object v9, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->o:[I

    aget v9, v9, v6

    aget-wide v9, v7, v9

    aput-wide v9, v8, v4

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_0
    iget-object v6, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->r:[D

    iget-object v7, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->l:[D

    aget-wide v7, v7, v4

    aput-wide v7, v6, v3

    aget-wide v6, p1, v3

    aput-wide v6, p4, v3

    move v3, v5

    goto :goto_0

    :cond_1
    move v3, v2

    :goto_2
    iget v4, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->k:I

    const-wide/16 v5, 0x0

    if-ge v3, v4, :cond_6

    iget-object v4, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->o:[I

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
    iget v9, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->k:I

    if-ge v4, v9, :cond_5

    iget-object v9, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->o:[I

    aget v9, v9, v4

    aget-wide v10, v1, v4

    cmpl-double v10, v10, v5

    if-eqz v10, :cond_4

    iget-object v10, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->y:[[D

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
    iget-object v12, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->y:[[D

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
    iget v11, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->k:I

    if-ge v10, v11, :cond_4

    iget-object v11, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->y:[[D

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
    iget-object v4, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->y:[[D

    aget-object v4, v4, v3

    iget-object v5, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->o:[I

    aget v5, v5, v3

    aget-wide v6, v4, v5

    aput-wide v6, v1, v3

    iget-object v6, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->r:[D

    aget-wide v6, v6, v3

    aput-wide v6, v4, v5

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_2

    :cond_6
    move v3, v2

    :goto_6
    iget v5, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->k:I

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

    iget-object v5, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->o:[I

    aget v5, v5, v3

    add-int/lit8 v6, v3, 0x1

    move-wide v10, v8

    :goto_8
    if-ge v6, v4, :cond_a

    iget-object v7, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->y:[[D

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
    iget-object v1, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->r:[D

    array-length v3, v1

    if-ge v2, v3, :cond_c

    iget-object v3, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->o:[I

    aget v3, v3, v2

    aget-wide v4, p4, v2

    aput-wide v4, v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_c
    return-void
.end method

.method public final d([DD[D[D[D[D)V
    .locals 31

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    iget-object v7, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->y:[[D

    const/4 v8, 0x0

    aget-object v7, v7, v8

    array-length v7, v7

    move v9, v8

    :goto_0
    iget v10, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->p:I

    if-ge v9, v10, :cond_0

    iget-object v10, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->r:[D

    iget-object v11, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->o:[I

    aget v11, v11, v9

    aget-wide v12, v1, v9

    aput-wide v12, v10, v11

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    const-wide/16 v11, 0x0

    if-ge v10, v7, :cond_1

    iget-object v9, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->r:[D

    iget-object v13, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->o:[I

    aget v13, v13, v10

    aput-wide v11, v9, v13

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_1
    iget v7, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->p:I

    add-int/lit8 v7, v7, -0x1

    :goto_2
    if-ltz v7, :cond_3

    iget-object v9, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->o:[I

    aget v9, v9, v7

    iget-object v10, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->r:[D

    aget-wide v13, v10, v9

    iget-object v10, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->l:[D

    aget-wide v15, v10, v9

    div-double/2addr v13, v15

    move v10, v8

    :goto_3
    if-ge v10, v7, :cond_2

    iget-object v15, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->r:[D

    iget-object v8, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->o:[I

    aget v8, v8, v10

    aget-wide v17, v15, v8

    iget-object v11, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->y:[[D

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
    iget-object v8, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->r:[D

    aput-wide v13, v8, v9

    add-int/lit8 v7, v7, -0x1

    const/4 v8, 0x0

    const-wide/16 v11, 0x0

    goto :goto_2

    :cond_3
    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    :goto_4
    iget v10, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->k:I

    if-ge v9, v10, :cond_4

    iget-object v10, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->o:[I

    aget v10, v10, v9

    aget-wide v11, p4, v10

    iget-object v13, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->r:[D

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

    iput-wide v11, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->q:D

    return-void

    :cond_5
    iget v11, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->p:I

    iget v12, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->k:I

    if-ne v11, v12, :cond_9

    const/4 v11, 0x0

    :goto_5
    iget v12, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->k:I

    if-ge v11, v12, :cond_6

    iget-object v12, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->o:[I

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
    iget v13, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->k:I

    if-ge v15, v13, :cond_8

    iget-object v13, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->o:[I

    aget v13, v13, v15

    const/4 v14, 0x0

    const-wide/16 v23, 0x0

    :goto_7
    if-ge v14, v15, :cond_7

    iget-object v5, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->y:[[D

    aget-object v5, v5, v14

    aget-wide v25, v5, v13

    iget-object v5, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->o:[I

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

    iget-object v5, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->l:[D

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
    iget v15, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->k:I

    if-ge v5, v15, :cond_b

    iget-object v15, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->o:[I

    aget v15, v15, v5

    move-wide/from16 v25, v9

    const/4 v9, 0x0

    const-wide/16 v23, 0x0

    :goto_a
    if-gt v9, v5, :cond_a

    iget-object v10, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->y:[[D

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

    if-nez v5, :cond_c

    sget-wide v13, Lorg/apache/commons/math3/util/Precision;->SAFE_MIN:D

    const-wide v5, 0x3fb999999999999aL    # 0.1

    invoke-static {v2, v3, v5, v6}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v5

    div-double/2addr v13, v5

    :cond_c
    iget-wide v5, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->q:D

    invoke-static {v5, v6, v11, v12}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v5

    invoke-static {v13, v14, v5, v6}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v5

    iput-wide v5, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->q:D

    cmpl-double v5, v5, v19

    if-nez v5, :cond_d

    div-double/2addr v9, v7

    iput-wide v9, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->q:D

    :cond_d
    const/16 v5, 0xa

    move-wide/from16 v9, v25

    :goto_b
    if-ltz v5, :cond_18

    iget-wide v6, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->q:D

    cmpl-double v6, v6, v19

    if-nez v6, :cond_e

    sget-wide v6, Lorg/apache/commons/math3/util/Precision;->SAFE_MIN:D

    const-wide v17, 0x3f50624dd2f1a9fcL    # 0.001

    move-wide/from16 v23, v9

    mul-double v8, v13, v17

    invoke-static {v6, v7, v8, v9}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v6

    iput-wide v6, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->q:D

    goto :goto_c

    :cond_e
    move-wide/from16 v23, v9

    :goto_c
    iget-wide v6, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->q:D

    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v6

    const/4 v8, 0x0

    :goto_d
    iget v9, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->k:I

    if-ge v8, v9, :cond_f

    iget-object v9, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->o:[I

    aget v9, v9, v8

    aget-wide v17, p4, v9

    mul-double v17, v17, v6

    aput-wide v17, v4, v9

    add-int/lit8 v8, v8, 0x1

    goto :goto_d

    :cond_f
    move-object/from16 v8, p6

    move-object/from16 v9, p7

    invoke-virtual {v0, v1, v4, v8, v9}, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->c([D[D[D[D)V

    const-wide/16 v6, 0x0

    const/4 v10, 0x0

    :goto_e
    iget v15, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->k:I

    if-ge v10, v15, :cond_10

    iget-object v15, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->o:[I

    aget v15, v15, v10

    aget-wide v17, p4, v15

    iget-object v1, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->r:[D

    aget-wide v25, v1, v15

    mul-double v17, v17, v25

    aput-wide v17, v9, v15

    mul-double v17, v17, v17

    add-double v6, v6, v17

    add-int/lit8 v10, v10, 0x1

    move-object/from16 v1, p1

    goto :goto_e

    :cond_10
    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v6

    sub-double v17, v6, v2

    invoke-static/range {v17 .. v18}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v25

    cmpg-double v1, v25, v21

    if-lez v1, :cond_18

    const-wide/16 v19, 0x0

    cmpl-double v1, v11, v19

    if-nez v1, :cond_11

    cmpg-double v1, v17, v23

    if-gtz v1, :cond_11

    cmpg-double v1, v23, v19

    if-gez v1, :cond_11

    goto/16 :goto_13

    :cond_11
    const/4 v1, 0x0

    :goto_f
    iget v10, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->k:I

    if-ge v1, v10, :cond_12

    iget-object v10, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->o:[I

    aget v10, v10, v1

    aget-wide v23, v9, v10

    aget-wide v25, p4, v10

    mul-double v23, v23, v25

    div-double v23, v23, v6

    aput-wide v23, v4, v10

    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    :cond_12
    const/4 v1, 0x0

    :cond_13
    iget v6, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->k:I

    if-ge v1, v6, :cond_14

    iget-object v6, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->o:[I

    aget v6, v6, v1

    aget-wide v23, v4, v6

    aget-wide v25, v8, v1

    div-double v23, v23, v25

    aput-wide v23, v4, v6

    add-int/lit8 v1, v1, 0x1

    move v7, v1

    :goto_10
    iget v10, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->k:I

    if-ge v7, v10, :cond_13

    iget-object v10, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->o:[I

    aget v10, v10, v7

    aget-wide v25, v4, v10

    iget-object v15, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->y:[[D

    aget-object v15, v15, v7

    aget-wide v27, v15, v6

    mul-double v27, v27, v23

    sub-double v25, v25, v27

    aput-wide v25, v4, v10

    add-int/lit8 v7, v7, 0x1

    goto :goto_10

    :cond_14
    const/4 v1, 0x0

    const-wide/16 v6, 0x0

    :goto_11
    iget v10, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->k:I

    if-ge v1, v10, :cond_15

    iget-object v10, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->o:[I

    aget v10, v10, v1

    aget-wide v23, v4, v10

    mul-double v23, v23, v23

    add-double v6, v6, v23

    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    :cond_15
    mul-double/2addr v6, v2

    div-double v6, v17, v6

    const-wide/16 v19, 0x0

    cmpl-double v1, v17, v19

    if-lez v1, :cond_16

    iget-wide v1, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->q:D

    invoke-static {v11, v12, v1, v2}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v1

    move-wide v11, v1

    goto :goto_12

    :cond_16
    cmpg-double v1, v17, v19

    if-gez v1, :cond_17

    iget-wide v1, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->q:D

    invoke-static {v13, v14, v1, v2}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v1

    move-wide v13, v1

    :cond_17
    :goto_12
    iget-wide v1, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->q:D

    add-double/2addr v1, v6

    invoke-static {v11, v12, v1, v2}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v1

    iput-wide v1, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->q:D

    add-int/lit8 v5, v5, -0x1

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    move-wide/from16 v9, v17

    goto/16 :goto_b

    :cond_18
    :goto_13
    return-void
.end method

.method public bridge synthetic doOptimize()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->doOptimize()Lorg/apache/commons/math3/optim/PointVectorValuePair;

    move-result-object p0

    return-object p0
.end method

.method public doOptimize()Lorg/apache/commons/math3/optim/PointVectorValuePair;
    .locals 59

    move-object/from16 v8, p0

    .line 2
    invoke-direct/range {p0 .. p0}, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->a()V

    .line 3
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/optim/nonlinear/vector/MultivariateVectorOptimizer;->getTarget()[D

    move-result-object v0

    array-length v9, v0

    .line 4
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/optim/BaseMultivariateOptimizer;->getStartPoint()[D

    move-result-object v10

    .line 5
    array-length v11, v10

    .line 6
    invoke-static {v9, v11}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v0

    iput v0, v8, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->k:I

    .line 7
    new-array v0, v11, [D

    iput-object v0, v8, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->l:[D

    .line 8
    new-array v0, v11, [D

    iput-object v0, v8, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->m:[D

    .line 9
    new-array v0, v11, [D

    iput-object v0, v8, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->n:[D

    .line 10
    new-array v0, v11, [I

    iput-object v0, v8, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->o:[I

    .line 11
    new-array v0, v11, [D

    iput-object v0, v8, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->r:[D

    .line 12
    new-array v12, v11, [D

    .line 13
    new-array v13, v11, [D

    .line 14
    new-array v0, v9, [D

    .line 15
    new-array v1, v9, [D

    .line 16
    new-array v14, v9, [D

    .line 17
    new-array v15, v11, [D

    .line 18
    new-array v7, v11, [D

    .line 19
    new-array v6, v11, [D

    .line 20
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/AbstractLeastSquaresOptimizer;->getWeightSquareRoot()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v5

    .line 21
    invoke-virtual {v8, v10}, Lorg/apache/commons/math3/optim/nonlinear/vector/MultivariateVectorOptimizer;->computeObjectiveValue([D)[D

    move-result-object v1

    .line 22
    invoke-virtual {v8, v1}, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/AbstractLeastSquaresOptimizer;->computeResiduals([D)[D

    move-result-object v2

    .line 23
    new-instance v3, Lorg/apache/commons/math3/optim/PointVectorValuePair;

    invoke-direct {v3, v10, v1}, Lorg/apache/commons/math3/optim/PointVectorValuePair;-><init>([D[D)V

    .line 24
    invoke-virtual {v8, v2}, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/AbstractLeastSquaresOptimizer;->computeCost([D)D

    move-result-wide v16

    move-object/from16 v19, v6

    move-object/from16 v18, v7

    const-wide/16 v6, 0x0

    .line 25
    iput-wide v6, v8, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->q:D

    .line 26
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/optim/BaseOptimizer;->getConvergenceChecker()Lorg/apache/commons/math3/optim/ConvergenceChecker;

    move-result-object v4

    const/16 v20, 0x1

    move-wide/from16 v23, v6

    move-wide/from16 v21, v16

    move-wide/from16 v16, v23

    .line 27
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/optim/BaseOptimizer;->incrementIterationCount()V

    .line 28
    invoke-virtual {v8, v10}, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/AbstractLeastSquaresOptimizer;->computeWeightedJacobian([D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v6

    invoke-virtual {v8, v6}, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->f(Lorg/apache/commons/math3/linear/RealMatrix;)V

    .line 29
    invoke-interface {v5, v2}, Lorg/apache/commons/math3/linear/RealMatrix;->operate([D)[D

    move-result-object v6

    iput-object v6, v8, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->x:[D

    const/16 v27, 0x0

    move/from16 v6, v27

    :goto_1
    if-ge v6, v9, :cond_0

    .line 30
    iget-object v7, v8, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->x:[D

    aget-wide v28, v7, v6

    aput-wide v28, v14, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 31
    :cond_0
    invoke-virtual {v8, v14}, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->e([D)V

    move/from16 v6, v27

    .line 32
    :goto_2
    iget v7, v8, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->k:I

    if-ge v6, v7, :cond_1

    .line 33
    iget-object v7, v8, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->o:[I

    aget v7, v7, v6

    move-object/from16 v28, v0

    .line 34
    iget-object v0, v8, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->y:[[D

    aget-object v0, v0, v6

    move-object/from16 v29, v1

    iget-object v1, v8, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->l:[D

    aget-wide v30, v1, v7

    aput-wide v30, v0, v7

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    goto :goto_2

    :cond_1
    move-object/from16 v28, v0

    move-object/from16 v29, v1

    const-wide/high16 v30, 0x3ff0000000000000L    # 1.0

    if-eqz v20, :cond_5

    move/from16 v0, v27

    const-wide/16 v6, 0x0

    :goto_3
    if-ge v0, v11, :cond_3

    .line 35
    iget-object v1, v8, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->m:[D

    aget-wide v16, v1, v0

    const-wide/16 v23, 0x0

    cmpl-double v1, v16, v23

    if-nez v1, :cond_2

    move-wide/from16 v16, v30

    .line 36
    :cond_2
    aget-wide v23, v10, v0

    mul-double v23, v23, v16

    mul-double v23, v23, v23

    add-double v6, v6, v23

    .line 37
    aput-wide v16, v12, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 38
    :cond_3
    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v23

    const-wide/16 v6, 0x0

    cmpl-double v0, v23, v6

    if-nez v0, :cond_4

    .line 39
    iget-wide v0, v8, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->s:D

    goto :goto_4

    :cond_4
    iget-wide v0, v8, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->s:D

    mul-double v0, v0, v23

    :goto_4
    move-wide/from16 v16, v0

    goto :goto_5

    :cond_5
    const-wide/16 v6, 0x0

    :goto_5
    move-wide/from16 v0, v21

    cmpl-double v21, v0, v6

    if-eqz v21, :cond_9

    move-wide/from16 v32, v6

    move/from16 v6, v27

    .line 40
    :goto_6
    iget v7, v8, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->k:I

    if-ge v6, v7, :cond_8

    .line 41
    iget-object v7, v8, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->o:[I

    aget v7, v7, v6

    move-object/from16 v21, v2

    .line 42
    iget-object v2, v8, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->m:[D

    aget-wide v34, v2, v7

    const-wide/16 v25, 0x0

    cmpl-double v2, v34, v25

    if-eqz v2, :cond_7

    move-wide/from16 v36, v25

    move/from16 v2, v27

    :goto_7
    if-gt v2, v6, :cond_6

    move-object/from16 v22, v4

    .line 43
    iget-object v4, v8, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->y:[[D

    aget-object v4, v4, v2

    aget-wide v38, v4, v7

    aget-wide v40, v14, v2

    mul-double v38, v38, v40

    add-double v36, v36, v38

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v4, v22

    goto :goto_7

    :cond_6
    move-object/from16 v22, v4

    .line 44
    invoke-static/range {v36 .. v37}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v36

    mul-double v34, v34, v0

    move-object v7, v5

    div-double v4, v36, v34

    move-object/from16 v34, v14

    move-object/from16 v35, v15

    move-wide/from16 v14, v32

    invoke-static {v14, v15, v4, v5}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v32

    goto :goto_8

    :cond_7
    move-object/from16 v22, v4

    move-object v7, v5

    move-object/from16 v34, v14

    move-object/from16 v35, v15

    move-wide/from16 v14, v32

    :goto_8
    add-int/lit8 v6, v6, 0x1

    move-object v5, v7

    move-object/from16 v2, v21

    move-object/from16 v4, v22

    move-object/from16 v14, v34

    move-object/from16 v15, v35

    goto :goto_6

    :cond_8
    move-object/from16 v21, v2

    move-object/from16 v22, v4

    move-object v7, v5

    move-object/from16 v34, v14

    move-object/from16 v35, v15

    move-wide/from16 v14, v32

    const-wide/16 v25, 0x0

    goto :goto_9

    :cond_9
    move-object/from16 v21, v2

    move-object/from16 v22, v4

    move-wide/from16 v25, v6

    move-object/from16 v34, v14

    move-object/from16 v35, v15

    move-object v7, v5

    move-wide/from16 v14, v25

    .line 45
    :goto_9
    iget-wide v4, v8, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->v:D

    cmpg-double v2, v14, v4

    if-gtz v2, :cond_a

    .line 46
    invoke-virtual {v8, v0, v1}, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/AbstractLeastSquaresOptimizer;->setCost(D)V

    return-object v3

    :cond_a
    move/from16 v2, v27

    :goto_a
    if-ge v2, v11, :cond_b

    .line 47
    aget-wide v4, v12, v2

    iget-object v6, v8, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->m:[D

    move-wide/from16 v32, v0

    aget-wide v0, v6, v2

    invoke-static {v4, v5, v0, v1}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v0

    aput-wide v0, v12, v2

    add-int/lit8 v2, v2, 0x1

    move-wide/from16 v0, v32

    goto :goto_a

    :cond_b
    move-wide/from16 v32, v0

    move-object v1, v3

    move-wide/from16 v4, v16

    move-object/from16 v2, v21

    move-wide/from16 v16, v23

    move-wide/from16 v23, v25

    move-object/from16 v0, v28

    move-object/from16 v6, v29

    :goto_b
    const-wide v28, 0x3f1a36e2eb1c432dL    # 1.0E-4

    cmpg-double v21, v23, v28

    if-gez v21, :cond_26

    move/from16 v1, v27

    .line 48
    :goto_c
    iget v2, v8, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->k:I

    if-ge v1, v2, :cond_c

    .line 49
    iget-object v2, v8, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->o:[I

    aget v2, v2, v1

    .line 50
    aget-wide v23, v10, v2

    aput-wide v23, v13, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 51
    :cond_c
    iget-object v2, v8, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->x:[D

    .line 52
    iput-object v0, v8, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->x:[D

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    move/from16 v21, v9

    move-wide/from16 v23, v14

    move-object v14, v2

    move-object v9, v3

    move-wide v2, v4

    move-object/from16 v36, v14

    move-wide v14, v4

    move-object/from16 v5, v22

    move-object v4, v12

    move-object/from16 v22, v7

    move-object v7, v5

    move-object/from16 v5, v35

    move-object/from16 v42, v6

    move-object/from16 v6, v18

    move-object/from16 v37, v9

    move-object v9, v7

    move-object/from16 v7, v19

    .line 53
    invoke-virtual/range {v0 .. v7}, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->d([DD[D[D[D[D)V

    move-wide/from16 v6, v25

    move/from16 v0, v27

    .line 54
    :goto_d
    iget v1, v8, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->k:I

    if-ge v0, v1, :cond_d

    .line 55
    iget-object v1, v8, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->o:[I

    aget v1, v1, v0

    .line 56
    iget-object v2, v8, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->r:[D

    aget-wide v3, v2, v1

    neg-double v3, v3

    aput-wide v3, v2, v1

    .line 57
    aget-wide v38, v13, v1

    add-double v38, v38, v3

    aput-wide v38, v10, v1

    .line 58
    aget-wide v3, v12, v1

    aget-wide v1, v2, v1

    mul-double/2addr v3, v1

    mul-double/2addr v3, v3

    add-double/2addr v6, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 59
    :cond_d
    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v0

    if-eqz v20, :cond_e

    .line 60
    invoke-static {v14, v15, v0, v1}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v4

    goto :goto_e

    :cond_e
    move-wide v4, v14

    .line 61
    :goto_e
    invoke-virtual {v8, v10}, Lorg/apache/commons/math3/optim/nonlinear/vector/MultivariateVectorOptimizer;->computeObjectiveValue([D)[D

    move-result-object v6

    .line 62
    invoke-virtual {v8, v6}, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/AbstractLeastSquaresOptimizer;->computeResiduals([D)[D

    move-result-object v2

    .line 63
    new-instance v3, Lorg/apache/commons/math3/optim/PointVectorValuePair;

    invoke-direct {v3, v10, v6}, Lorg/apache/commons/math3/optim/PointVectorValuePair;-><init>([D[D)V

    .line 64
    invoke-virtual {v8, v2}, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/AbstractLeastSquaresOptimizer;->computeCost([D)D

    move-result-wide v14

    const-wide v38, 0x3fb999999999999aL    # 0.1

    mul-double v40, v14, v38

    cmpg-double v7, v40, v32

    if-gez v7, :cond_f

    div-double v43, v14, v32

    mul-double v43, v43, v43

    sub-double v43, v30, v43

    goto :goto_f

    :cond_f
    const-wide/high16 v43, -0x4010000000000000L    # -1.0

    :goto_f
    move-object/from16 v45, v2

    move/from16 v7, v27

    .line 65
    :goto_10
    iget v2, v8, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->k:I

    if-ge v7, v2, :cond_11

    .line 66
    iget-object v2, v8, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->o:[I

    aget v2, v2, v7

    move-object/from16 v46, v6

    .line 67
    iget-object v6, v8, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->r:[D

    aget-wide v47, v6, v2

    .line 68
    aput-wide v25, v35, v7

    move/from16 v6, v27

    :goto_11
    if-gt v6, v7, :cond_10

    .line 69
    aget-wide v49, v35, v6

    move-object/from16 v51, v13

    iget-object v13, v8, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->y:[[D

    aget-object v13, v13, v6

    aget-wide v52, v13, v2

    mul-double v52, v52, v47

    add-double v49, v49, v52

    aput-wide v49, v35, v6

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v13, v51

    goto :goto_11

    :cond_10
    move-object/from16 v51, v13

    add-int/lit8 v7, v7, 0x1

    move-object/from16 v6, v46

    goto :goto_10

    :cond_11
    move-object/from16 v46, v6

    move-object/from16 v51, v13

    move-wide/from16 v6, v25

    move/from16 v2, v27

    .line 70
    :goto_12
    iget v13, v8, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->k:I

    if-ge v2, v13, :cond_12

    .line 71
    aget-wide v47, v35, v2

    mul-double v47, v47, v47

    add-double v6, v6, v47

    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    :cond_12
    mul-double v47, v32, v32

    div-double v6, v6, v47

    move-wide/from16 v49, v14

    .line 72
    iget-wide v13, v8, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->q:D

    mul-double v52, v13, v0

    mul-double v52, v52, v0

    div-double v52, v52, v47

    const-wide/high16 v47, 0x4000000000000000L    # 2.0

    mul-double v54, v52, v47

    add-double v54, v6, v54

    add-double v6, v6, v52

    neg-double v6, v6

    cmpl-double v2, v54, v25

    if-nez v2, :cond_13

    move-wide/from16 v52, v25

    goto :goto_13

    :cond_13
    div-double v52, v43, v54

    :goto_13
    const-wide/high16 v56, 0x3fd0000000000000L    # 0.25

    cmpg-double v2, v52, v56

    const-wide/high16 v56, 0x3fe0000000000000L    # 0.5

    if-gtz v2, :cond_17

    cmpg-double v2, v43, v25

    if-gez v2, :cond_14

    mul-double v13, v6, v56

    mul-double v56, v56, v43

    add-double v6, v6, v56

    div-double v56, v13, v6

    :cond_14
    cmpl-double v2, v40, v32

    if-gez v2, :cond_16

    cmpg-double v2, v56, v38

    if-gez v2, :cond_15

    goto :goto_14

    :cond_15
    move-wide/from16 v38, v56

    :cond_16
    :goto_14
    const-wide/high16 v6, 0x4024000000000000L    # 10.0

    mul-double/2addr v0, v6

    .line 73
    invoke-static {v4, v5, v0, v1}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v0

    mul-double v0, v0, v38

    .line 74
    iget-wide v4, v8, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->q:D

    div-double v4, v4, v38

    iput-wide v4, v8, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->q:D

    goto :goto_15

    :cond_17
    cmpl-double v2, v13, v25

    if-eqz v2, :cond_18

    const-wide/high16 v6, 0x3fe8000000000000L    # 0.75

    cmpl-double v2, v52, v6

    if-ltz v2, :cond_19

    :cond_18
    mul-double v0, v0, v47

    mul-double v13, v13, v56

    .line 75
    iput-wide v13, v8, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->q:D

    :goto_15
    move-wide v4, v0

    :cond_19
    cmpl-double v0, v52, v28

    if-ltz v0, :cond_1d

    move-wide/from16 v6, v25

    move/from16 v0, v27

    :goto_16
    if-ge v0, v11, :cond_1a

    .line 76
    aget-wide v1, v12, v0

    aget-wide v13, v10, v0

    mul-double/2addr v1, v13

    mul-double/2addr v1, v1

    add-double/2addr v6, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    .line 77
    :cond_1a
    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v16

    if-eqz v9, :cond_1b

    .line 78
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/optim/BaseOptimizer;->getIterations()I

    move-result v0

    move-object/from16 v1, v37

    invoke-interface {v9, v0, v1, v3}, Lorg/apache/commons/math3/optim/ConvergenceChecker;->converged(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    move-wide/from16 v6, v49

    if-eqz v0, :cond_1c

    .line 79
    invoke-virtual {v8, v6, v7}, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/AbstractLeastSquaresOptimizer;->setCost(D)V

    return-object v3

    :cond_1b
    move-object/from16 v1, v37

    move-wide/from16 v6, v49

    :cond_1c
    move-object v2, v3

    move-wide v13, v6

    move/from16 v20, v27

    move-object/from16 v0, v36

    move-object/from16 v6, v46

    goto :goto_18

    :cond_1d
    move-object/from16 v1, v37

    move/from16 v0, v27

    .line 80
    :goto_17
    iget v2, v8, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->k:I

    if-ge v0, v2, :cond_1e

    .line 81
    iget-object v2, v8, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->o:[I

    aget v2, v2, v0

    .line 82
    aget-wide v6, v51, v2

    aput-wide v6, v10, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    .line 83
    :cond_1e
    iget-object v0, v8, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->x:[D

    move-object/from16 v2, v36

    .line 84
    iput-object v2, v8, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->x:[D

    .line 85
    new-instance v2, Lorg/apache/commons/math3/optim/PointVectorValuePair;

    move-object/from16 v3, v42

    invoke-direct {v2, v10, v3}, Lorg/apache/commons/math3/optim/PointVectorValuePair;-><init>([D[D)V

    move-object v6, v3

    move-wide/from16 v13, v32

    .line 86
    :goto_18
    invoke-static/range {v43 .. v44}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v28

    move-object v3, v0

    move-object/from16 v37, v1

    iget-wide v0, v8, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->t:D

    cmpg-double v7, v28, v0

    if-gtz v7, :cond_1f

    cmpg-double v0, v54, v0

    if-gtz v0, :cond_1f

    cmpg-double v0, v52, v47

    if-lez v0, :cond_20

    :cond_1f
    iget-wide v0, v8, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->u:D

    mul-double v0, v0, v16

    cmpg-double v0, v4, v0

    if-gtz v0, :cond_21

    .line 87
    :cond_20
    invoke-virtual {v8, v13, v14}, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/AbstractLeastSquaresOptimizer;->setCost(D)V

    return-object v2

    .line 88
    :cond_21
    invoke-static/range {v43 .. v44}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v0

    sget-wide v28, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->z:D

    cmpg-double v0, v0, v28

    if-gtz v0, :cond_23

    cmpg-double v0, v54, v28

    if-gtz v0, :cond_23

    cmpg-double v0, v52, v47

    if-lez v0, :cond_22

    goto :goto_19

    .line 89
    :cond_22
    new-instance v0, Lorg/apache/commons/math3/exception/ConvergenceException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->TOO_SMALL_COST_RELATIVE_TOLERANCE:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    iget-wide v2, v8, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->t:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/ConvergenceException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v0

    :cond_23
    :goto_19
    mul-double v0, v28, v16

    cmpg-double v0, v4, v0

    if-lez v0, :cond_25

    cmpg-double v0, v23, v28

    if-lez v0, :cond_24

    move-object v1, v2

    move-object v0, v3

    move-wide/from16 v32, v13

    move-object/from16 v7, v22

    move-wide/from16 v14, v23

    move-object/from16 v3, v37

    move-object/from16 v2, v45

    move-object/from16 v13, v51

    move-wide/from16 v23, v52

    move-object/from16 v22, v9

    move/from16 v9, v21

    goto/16 :goto_b

    .line 90
    :cond_24
    new-instance v0, Lorg/apache/commons/math3/exception/ConvergenceException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->TOO_SMALL_ORTHOGONALITY_TOLERANCE:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    iget-wide v2, v8, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->v:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/ConvergenceException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v0

    .line 91
    :cond_25
    new-instance v0, Lorg/apache/commons/math3/exception/ConvergenceException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->TOO_SMALL_PARAMETERS_RELATIVE_TOLERANCE:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    iget-wide v2, v8, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->u:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/ConvergenceException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v0

    :cond_26
    move-wide v14, v4

    move-object v3, v6

    move/from16 v21, v9

    move-object/from16 v9, v22

    move-object v5, v7

    move-object v4, v9

    move-wide/from16 v23, v16

    move/from16 v9, v21

    move-wide/from16 v6, v25

    move-wide/from16 v21, v32

    move-wide/from16 v16, v14

    move-object/from16 v14, v34

    move-object/from16 v15, v35

    move-object/from16 v58, v3

    move-object v3, v1

    move-object/from16 v1, v58

    goto/16 :goto_0
.end method

.method public final e([D)V
    .locals 11

    iget-object v0, p0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->y:[[D

    array-length v1, v0

    const/4 v2, 0x0

    aget-object v0, v0, v2

    array-length v0, v0

    :goto_0
    if-ge v2, v0, :cond_2

    iget-object v3, p0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->o:[I

    aget v3, v3, v2

    const-wide/16 v4, 0x0

    move v6, v2

    :goto_1
    if-ge v6, v1, :cond_0

    iget-object v7, p0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->y:[[D

    aget-object v7, v7, v6

    aget-wide v7, v7, v3

    aget-wide v9, p1, v6

    mul-double/2addr v7, v9

    add-double/2addr v4, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_0
    iget-object v6, p0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->n:[D

    aget-wide v6, v6, v3

    mul-double/2addr v4, v6

    move v6, v2

    :goto_2
    if-ge v6, v1, :cond_1

    aget-wide v7, p1, v6

    iget-object v9, p0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->y:[[D

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

.method public final f(Lorg/apache/commons/math3/linear/RealMatrix;)V
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

    iput-object v1, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->y:[[D

    array-length v2, v1

    const/4 v3, 0x0

    aget-object v1, v1, v3

    array-length v1, v1

    move v4, v3

    :goto_0
    const-wide/16 v5, 0x0

    if-ge v4, v1, :cond_1

    iget-object v7, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->o:[I

    aput v4, v7, v4

    move v7, v3

    :goto_1
    if-ge v7, v2, :cond_0

    iget-object v8, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->y:[[D

    aget-object v8, v8, v7

    aget-wide v8, v8, v4

    mul-double/2addr v8, v8

    add-double/2addr v5, v8

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_0
    iget-object v7, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->m:[D

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

    iget-object v13, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->y:[[D

    aget-object v13, v13, v10

    iget-object v14, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->o:[I

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
    iget-wide v9, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->w:D

    cmpg-double v9, v7, v9

    if-gtz v9, :cond_6

    iput v3, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->p:I

    return-void

    :cond_6
    iget-object v9, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->o:[I

    aget v10, v9, v4

    aget v11, v9, v3

    aput v11, v9, v4

    aput v10, v9, v3

    iget-object v4, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->y:[[D

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

    iget-object v4, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->n:[D

    aput-wide v11, v4, v10

    iget-object v4, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->l:[D

    aput-wide v13, v4, v10

    iget-object v4, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->y:[[D

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

    iget-object v13, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->y:[[D

    aget-object v13, v13, v7

    aget-wide v14, v13, v10

    iget-object v5, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->o:[I

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

    iget-object v6, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->y:[[D

    aget-object v6, v6, v5

    iget-object v7, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->o:[I

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
    iget v1, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->k:I

    iput v1, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->p:I

    return-void
.end method
