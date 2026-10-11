.class public Lorg/apache/commons/math3/analysis/interpolation/SmoothingPolynomialBicubicSplineInterpolator;
.super Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolator;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public final b:Lorg/apache/commons/math3/fitting/PolynomialFitter;

.field public final c:I

.field public final d:Lorg/apache/commons/math3/fitting/PolynomialFitter;

.field public final e:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x3

    .line 1
    invoke-direct {p0, v0}, Lorg/apache/commons/math3/analysis/interpolation/SmoothingPolynomialBicubicSplineInterpolator;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotPositiveException;
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1, p1}, Lorg/apache/commons/math3/analysis/interpolation/SmoothingPolynomialBicubicSplineInterpolator;-><init>(II)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotPositiveException;
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolator;-><init>()V

    if-ltz p1, :cond_1

    if-ltz p2, :cond_0

    .line 4
    iput p1, p0, Lorg/apache/commons/math3/analysis/interpolation/SmoothingPolynomialBicubicSplineInterpolator;->c:I

    .line 5
    iput p2, p0, Lorg/apache/commons/math3/analysis/interpolation/SmoothingPolynomialBicubicSplineInterpolator;->e:I

    .line 6
    new-instance p1, Lorg/apache/commons/math3/optim/SimpleVectorValueChecker;

    sget-wide v0, Lorg/apache/commons/math3/util/Precision;->EPSILON:D

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    mul-double/2addr v0, v2

    sget-wide v4, Lorg/apache/commons/math3/util/Precision;->SAFE_MIN:D

    mul-double/2addr v4, v2

    invoke-direct {p1, v0, v1, v4, v5}, Lorg/apache/commons/math3/optim/SimpleVectorValueChecker;-><init>(DD)V

    .line 7
    new-instance p2, Lorg/apache/commons/math3/fitting/PolynomialFitter;

    new-instance v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/GaussNewtonOptimizer;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/GaussNewtonOptimizer;-><init>(ZLorg/apache/commons/math3/optim/ConvergenceChecker;)V

    invoke-direct {p2, v0}, Lorg/apache/commons/math3/fitting/PolynomialFitter;-><init>(Lorg/apache/commons/math3/optim/nonlinear/vector/MultivariateVectorOptimizer;)V

    iput-object p2, p0, Lorg/apache/commons/math3/analysis/interpolation/SmoothingPolynomialBicubicSplineInterpolator;->b:Lorg/apache/commons/math3/fitting/PolynomialFitter;

    .line 8
    new-instance p2, Lorg/apache/commons/math3/fitting/PolynomialFitter;

    new-instance v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/GaussNewtonOptimizer;

    invoke-direct {v0, v1, p1}, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/GaussNewtonOptimizer;-><init>(ZLorg/apache/commons/math3/optim/ConvergenceChecker;)V

    invoke-direct {p2, v0}, Lorg/apache/commons/math3/fitting/PolynomialFitter;-><init>(Lorg/apache/commons/math3/optim/nonlinear/vector/MultivariateVectorOptimizer;)V

    iput-object p2, p0, Lorg/apache/commons/math3/analysis/interpolation/SmoothingPolynomialBicubicSplineInterpolator;->d:Lorg/apache/commons/math3/fitting/PolynomialFitter;

    return-void

    .line 9
    :cond_0
    new-instance p0, Lorg/apache/commons/math3/exception/NotPositiveException;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/commons/math3/exception/NotPositiveException;-><init>(Ljava/lang/Number;)V

    throw p0

    .line 10
    :cond_1
    new-instance p0, Lorg/apache/commons/math3/exception/NotPositiveException;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/commons/math3/exception/NotPositiveException;-><init>(Ljava/lang/Number;)V

    throw p0
.end method


# virtual methods
.method public bridge synthetic interpolate([D[D[[D)Lorg/apache/commons/math3/analysis/BivariateFunction;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NoDataException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NonMonotonicSequenceException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/math3/analysis/interpolation/SmoothingPolynomialBicubicSplineInterpolator;->interpolate([D[D[[D)Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolatingFunction;

    move-result-object p0

    return-object p0
.end method

.method public interpolate([D[D[[D)Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolatingFunction;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NoDataException;,
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NonMonotonicSequenceException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    .line 2
    array-length v4, v1

    if-eqz v4, :cond_b

    array-length v4, v2

    if-eqz v4, :cond_b

    array-length v4, v3

    if-eqz v4, :cond_b

    .line 3
    array-length v4, v1

    array-length v5, v3

    if-ne v4, v5, :cond_a

    .line 4
    array-length v4, v1

    .line 5
    array-length v5, v2

    const/4 v6, 0x0

    move v7, v6

    :goto_0
    if-ge v7, v4, :cond_1

    .line 6
    aget-object v8, v3, v7

    array-length v8, v8

    if-ne v8, v5, :cond_0

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 7
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    aget-object v1, v3, v7

    array-length v1, v1

    invoke-direct {v0, v1, v5}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v0

    .line 8
    :cond_1
    invoke-static/range {p1 .. p1}, Lorg/apache/commons/math3/util/MathArrays;->checkOrder([D)V

    .line 9
    invoke-static/range {p2 .. p2}, Lorg/apache/commons/math3/util/MathArrays;->checkOrder([D)V

    .line 10
    new-array v7, v5, [Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;

    move v8, v6

    :goto_1
    if-ge v8, v5, :cond_3

    .line 11
    iget-object v9, v0, Lorg/apache/commons/math3/analysis/interpolation/SmoothingPolynomialBicubicSplineInterpolator;->b:Lorg/apache/commons/math3/fitting/PolynomialFitter;

    invoke-virtual {v9}, Lorg/apache/commons/math3/fitting/CurveFitter;->clearObservations()V

    move v9, v6

    :goto_2
    if-ge v9, v4, :cond_2

    .line 12
    iget-object v10, v0, Lorg/apache/commons/math3/analysis/interpolation/SmoothingPolynomialBicubicSplineInterpolator;->b:Lorg/apache/commons/math3/fitting/PolynomialFitter;

    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    aget-wide v13, v1, v9

    aget-object v15, v3, v9

    aget-wide v15, v15, v8

    invoke-virtual/range {v10 .. v16}, Lorg/apache/commons/math3/fitting/CurveFitter;->addObservedPoint(DDD)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 13
    :cond_2
    new-instance v9, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;

    iget-object v10, v0, Lorg/apache/commons/math3/analysis/interpolation/SmoothingPolynomialBicubicSplineInterpolator;->b:Lorg/apache/commons/math3/fitting/PolynomialFitter;

    iget v11, v0, Lorg/apache/commons/math3/analysis/interpolation/SmoothingPolynomialBicubicSplineInterpolator;->c:I

    add-int/lit8 v11, v11, 0x1

    new-array v11, v11, [D

    invoke-virtual {v10, v11}, Lorg/apache/commons/math3/fitting/PolynomialFitter;->fit([D)[D

    move-result-object v10

    invoke-direct {v9, v10}, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;-><init>([D)V

    aput-object v9, v7, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 14
    :cond_3
    filled-new-array {v4, v5}, [I

    move-result-object v3

    sget-object v8, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v8, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[D

    move v8, v6

    :goto_3
    if-ge v8, v5, :cond_5

    .line 15
    aget-object v9, v7, v8

    move v10, v6

    :goto_4
    if-ge v10, v4, :cond_4

    .line 16
    aget-object v11, v3, v10

    aget-wide v12, v1, v10

    invoke-virtual {v9, v12, v13}, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;->value(D)D

    move-result-wide v12

    aput-wide v12, v11, v8

    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 17
    :cond_5
    new-array v7, v4, [Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;

    move v8, v6

    :goto_5
    if-ge v8, v4, :cond_7

    .line 18
    iget-object v9, v0, Lorg/apache/commons/math3/analysis/interpolation/SmoothingPolynomialBicubicSplineInterpolator;->d:Lorg/apache/commons/math3/fitting/PolynomialFitter;

    invoke-virtual {v9}, Lorg/apache/commons/math3/fitting/CurveFitter;->clearObservations()V

    move v9, v6

    :goto_6
    if-ge v9, v5, :cond_6

    .line 19
    iget-object v10, v0, Lorg/apache/commons/math3/analysis/interpolation/SmoothingPolynomialBicubicSplineInterpolator;->d:Lorg/apache/commons/math3/fitting/PolynomialFitter;

    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    aget-wide v13, v2, v9

    aget-object v15, v3, v8

    aget-wide v15, v15, v9

    invoke-virtual/range {v10 .. v16}, Lorg/apache/commons/math3/fitting/CurveFitter;->addObservedPoint(DDD)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    .line 20
    :cond_6
    new-instance v9, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;

    iget-object v10, v0, Lorg/apache/commons/math3/analysis/interpolation/SmoothingPolynomialBicubicSplineInterpolator;->d:Lorg/apache/commons/math3/fitting/PolynomialFitter;

    iget v11, v0, Lorg/apache/commons/math3/analysis/interpolation/SmoothingPolynomialBicubicSplineInterpolator;->e:I

    add-int/lit8 v11, v11, 0x1

    new-array v11, v11, [D

    invoke-virtual {v10, v11}, Lorg/apache/commons/math3/fitting/PolynomialFitter;->fit([D)[D

    move-result-object v10

    invoke-direct {v9, v10}, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;-><init>([D)V

    aput-object v9, v7, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    .line 21
    :cond_7
    filled-new-array {v4, v5}, [I

    move-result-object v3

    sget-object v8, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v8, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[D

    move v8, v6

    :goto_7
    if-ge v8, v4, :cond_9

    .line 22
    aget-object v9, v7, v8

    move v10, v6

    :goto_8
    if-ge v10, v5, :cond_8

    .line 23
    aget-object v11, v3, v8

    aget-wide v12, v2, v10

    invoke-virtual {v9, v12, v13}, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;->value(D)D

    move-result-wide v12

    aput-wide v12, v11, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_8

    :cond_8
    add-int/lit8 v8, v8, 0x1

    goto :goto_7

    .line 24
    :cond_9
    invoke-super {v0, v1, v2, v3}, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolator;->interpolate([D[D[[D)Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolatingFunction;

    move-result-object v0

    return-object v0

    .line 25
    :cond_a
    new-instance v0, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length v1, v1

    array-length v2, v3

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v0

    .line 26
    :cond_b
    new-instance v0, Lorg/apache/commons/math3/exception/NoDataException;

    invoke-direct {v0}, Lorg/apache/commons/math3/exception/NoDataException;-><init>()V

    throw v0
.end method
