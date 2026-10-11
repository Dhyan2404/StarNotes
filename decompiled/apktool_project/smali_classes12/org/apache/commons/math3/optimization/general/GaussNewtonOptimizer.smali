.class public Lorg/apache/commons/math3/optimization/general/GaussNewtonOptimizer;
.super Lorg/apache/commons/math3/optimization/general/AbstractLeastSquaresOptimizer;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public final k:Z


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0}, Lorg/apache/commons/math3/optimization/general/GaussNewtonOptimizer;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/optimization/ConvergenceChecker;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/optimization/ConvergenceChecker<",
            "Lorg/apache/commons/math3/optimization/PointVectorValuePair;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, v0, p1}, Lorg/apache/commons/math3/optimization/general/GaussNewtonOptimizer;-><init>(ZLorg/apache/commons/math3/optimization/ConvergenceChecker;)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3
    new-instance v0, Lorg/apache/commons/math3/optimization/SimpleVectorValueChecker;

    invoke-direct {v0}, Lorg/apache/commons/math3/optimization/SimpleVectorValueChecker;-><init>()V

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/math3/optimization/general/GaussNewtonOptimizer;-><init>(ZLorg/apache/commons/math3/optimization/ConvergenceChecker;)V

    return-void
.end method

.method public constructor <init>(ZLorg/apache/commons/math3/optimization/ConvergenceChecker;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lorg/apache/commons/math3/optimization/ConvergenceChecker<",
            "Lorg/apache/commons/math3/optimization/PointVectorValuePair;",
            ">;)V"
        }
    .end annotation

    .line 4
    invoke-direct {p0, p2}, Lorg/apache/commons/math3/optimization/general/AbstractLeastSquaresOptimizer;-><init>(Lorg/apache/commons/math3/optimization/ConvergenceChecker;)V

    .line 5
    iput-boolean p1, p0, Lorg/apache/commons/math3/optimization/general/GaussNewtonOptimizer;->k:Z

    return-void
.end method


# virtual methods
.method public doOptimize()Lorg/apache/commons/math3/optimization/PointVectorValuePair;
    .locals 27

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateVectorOptimizer;->getConvergenceChecker()Lorg/apache/commons/math3/optimization/ConvergenceChecker;

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateVectorOptimizer;->getTarget()[D

    move-result-object v2

    array-length v2, v2

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateVectorOptimizer;->getWeight()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v3

    new-array v4, v2, [D

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v2, :cond_0

    invoke-interface {v3, v6, v6}, Lorg/apache/commons/math3/linear/RealMatrix;->getEntry(II)D

    move-result-wide v7

    aput-wide v7, v4, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateVectorOptimizer;->getStartPoint()[D

    move-result-object v3

    array-length v6, v3

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_1
    if-nez v8, :cond_8

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v0, v3}, Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateVectorOptimizer;->computeObjectiveValue([D)[D

    move-result-object v10

    invoke-virtual {v0, v10}, Lorg/apache/commons/math3/optimization/general/AbstractLeastSquaresOptimizer;->computeResiduals([D)[D

    move-result-object v11

    invoke-virtual {v0, v3}, Lorg/apache/commons/math3/optimization/general/AbstractLeastSquaresOptimizer;->computeWeightedJacobian([D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v12

    new-instance v13, Lorg/apache/commons/math3/optimization/PointVectorValuePair;

    invoke-direct {v13, v3, v10}, Lorg/apache/commons/math3/optimization/PointVectorValuePair;-><init>([D[D)V

    new-array v10, v6, [D

    filled-new-array {v6, v6}, [I

    move-result-object v14

    sget-object v15, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v15, v14}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [[D

    const/4 v15, 0x0

    :goto_2
    if-ge v15, v2, :cond_4

    invoke-interface {v12, v15}, Lorg/apache/commons/math3/linear/RealMatrix;->getRow(I)[D

    move-result-object v16

    aget-wide v17, v4, v15

    aget-wide v19, v11, v15

    mul-double v19, v19, v17

    const/4 v5, 0x0

    :goto_3
    if-ge v5, v6, :cond_1

    aget-wide v21, v10, v5

    aget-wide v23, v16, v5

    mul-double v23, v23, v19

    add-double v21, v21, v23

    aput-wide v21, v10, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_1
    const/4 v5, 0x0

    :goto_4
    if-ge v5, v6, :cond_3

    aget-object v19, v14, v5

    aget-wide v21, v16, v5

    mul-double v21, v21, v17

    move/from16 v20, v2

    const/4 v2, 0x0

    :goto_5
    if-ge v2, v6, :cond_2

    aget-wide v23, v19, v2

    aget-wide v25, v16, v2

    mul-double v25, v25, v21

    add-double v23, v23, v25

    aput-wide v23, v19, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_2
    add-int/lit8 v5, v5, 0x1

    move/from16 v2, v20

    goto :goto_4

    :cond_3
    move/from16 v20, v2

    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    :cond_4
    move/from16 v20, v2

    :try_start_0
    new-instance v2, Lorg/apache/commons/math3/linear/BlockRealMatrix;

    invoke-direct {v2, v14}, Lorg/apache/commons/math3/linear/BlockRealMatrix;-><init>([[D)V

    iget-boolean v5, v0, Lorg/apache/commons/math3/optimization/general/GaussNewtonOptimizer;->k:Z

    if-eqz v5, :cond_5

    new-instance v5, Lorg/apache/commons/math3/linear/LUDecomposition;

    invoke-direct {v5, v2}, Lorg/apache/commons/math3/linear/LUDecomposition;-><init>(Lorg/apache/commons/math3/linear/RealMatrix;)V

    invoke-virtual {v5}, Lorg/apache/commons/math3/linear/LUDecomposition;->getSolver()Lorg/apache/commons/math3/linear/DecompositionSolver;

    move-result-object v2

    goto :goto_6

    :cond_5
    new-instance v5, Lorg/apache/commons/math3/linear/QRDecomposition;

    invoke-direct {v5, v2}, Lorg/apache/commons/math3/linear/QRDecomposition;-><init>(Lorg/apache/commons/math3/linear/RealMatrix;)V

    invoke-virtual {v5}, Lorg/apache/commons/math3/linear/QRDecomposition;->getSolver()Lorg/apache/commons/math3/linear/DecompositionSolver;

    move-result-object v2

    :goto_6
    new-instance v5, Lorg/apache/commons/math3/linear/ArrayRealVector;

    const/4 v12, 0x0

    invoke-direct {v5, v10, v12}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>([DZ)V

    invoke-interface {v2, v5}, Lorg/apache/commons/math3/linear/DecompositionSolver;->solve(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/commons/math3/linear/RealVector;->toArray()[D

    move-result-object v2

    const/4 v12, 0x0

    :goto_7
    if-ge v12, v6, :cond_6

    aget-wide v14, v3, v12

    aget-wide v16, v2, v12

    add-double v14, v14, v16

    aput-wide v14, v3, v12
    :try_end_0
    .catch Lorg/apache/commons/math3/linear/SingularMatrixException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v12, v12, 0x1

    goto :goto_7

    :cond_6
    if-eqz v7, :cond_7

    invoke-interface {v1, v9, v7, v13}, Lorg/apache/commons/math3/optimization/ConvergenceChecker;->converged(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-virtual {v0, v11}, Lorg/apache/commons/math3/optimization/general/AbstractLeastSquaresOptimizer;->computeCost([D)D

    move-result-wide v1

    iput-wide v1, v0, Lorg/apache/commons/math3/optimization/general/AbstractLeastSquaresOptimizer;->cost:D

    invoke-virtual {v13}, Lorg/apache/commons/math3/optimization/PointVectorValuePair;->getPoint()[D

    move-result-object v1

    iput-object v1, v0, Lorg/apache/commons/math3/optimization/general/AbstractLeastSquaresOptimizer;->point:[D

    return-object v13

    :cond_7
    move-object v7, v13

    move/from16 v2, v20

    goto/16 :goto_1

    :catch_0
    new-instance v0, Lorg/apache/commons/math3/exception/ConvergenceException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->UNABLE_TO_SOLVE_SINGULAR_PROBLEM:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/ConvergenceException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v0

    :cond_8
    new-instance v0, Lorg/apache/commons/math3/exception/MathInternalError;

    invoke-direct {v0}, Lorg/apache/commons/math3/exception/MathInternalError;-><init>()V

    throw v0

    :cond_9
    new-instance v0, Lorg/apache/commons/math3/exception/NullArgumentException;

    invoke-direct {v0}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>()V

    throw v0
.end method
