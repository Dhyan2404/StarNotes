.class public abstract Lorg/apache/commons/math3/stat/regression/AbstractMultipleLinearRegression;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/math3/stat/regression/MultipleLinearRegression;


# instance fields
.field public a:Lorg/apache/commons/math3/linear/RealMatrix;

.field public b:Lorg/apache/commons/math3/linear/RealVector;

.field public c:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/math3/stat/regression/AbstractMultipleLinearRegression;->c:Z

    return-void
.end method


# virtual methods
.method public abstract calculateBeta()Lorg/apache/commons/math3/linear/RealVector;
.end method

.method public abstract calculateBetaVariance()Lorg/apache/commons/math3/linear/RealMatrix;
.end method

.method public calculateErrorVariance()D
    .locals 4

    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/regression/AbstractMultipleLinearRegression;->calculateResiduals()Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v0

    invoke-virtual {v0, v0}, Lorg/apache/commons/math3/linear/RealVector;->dotProduct(Lorg/apache/commons/math3/linear/RealVector;)D

    move-result-wide v0

    iget-object v2, p0, Lorg/apache/commons/math3/stat/regression/AbstractMultipleLinearRegression;->a:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v2}, Lorg/apache/commons/math3/linear/AnyMatrix;->getRowDimension()I

    move-result v2

    iget-object p0, p0, Lorg/apache/commons/math3/stat/regression/AbstractMultipleLinearRegression;->a:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {p0}, Lorg/apache/commons/math3/linear/AnyMatrix;->getColumnDimension()I

    move-result p0

    sub-int/2addr v2, p0

    int-to-double v2, v2

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public calculateResiduals()Lorg/apache/commons/math3/linear/RealVector;
    .locals 2

    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/regression/AbstractMultipleLinearRegression;->calculateBeta()Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/math3/stat/regression/AbstractMultipleLinearRegression;->b:Lorg/apache/commons/math3/linear/RealVector;

    iget-object p0, p0, Lorg/apache/commons/math3/stat/regression/AbstractMultipleLinearRegression;->a:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {p0, v0}, Lorg/apache/commons/math3/linear/RealMatrix;->operate(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object p0

    invoke-virtual {v1, p0}, Lorg/apache/commons/math3/linear/RealVector;->subtract(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object p0

    return-object p0
.end method

.method public calculateYVariance()D
    .locals 2

    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;-><init>()V

    iget-object p0, p0, Lorg/apache/commons/math3/stat/regression/AbstractMultipleLinearRegression;->b:Lorg/apache/commons/math3/linear/RealVector;

    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/RealVector;->toArray()[D

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->evaluate([D)D

    move-result-wide v0

    return-wide v0
.end method

.method public estimateErrorVariance()D
    .locals 2

    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/regression/AbstractMultipleLinearRegression;->calculateErrorVariance()D

    move-result-wide v0

    return-wide v0
.end method

.method public estimateRegressandVariance()D
    .locals 2

    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/regression/AbstractMultipleLinearRegression;->calculateYVariance()D

    move-result-wide v0

    return-wide v0
.end method

.method public estimateRegressionParameters()[D
    .locals 0

    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/regression/AbstractMultipleLinearRegression;->calculateBeta()Lorg/apache/commons/math3/linear/RealVector;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/RealVector;->toArray()[D

    move-result-object p0

    return-object p0
.end method

.method public estimateRegressionParametersStandardErrors()[D
    .locals 7

    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/regression/AbstractMultipleLinearRegression;->estimateRegressionParametersVariance()[[D

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/regression/AbstractMultipleLinearRegression;->calculateErrorVariance()D

    move-result-wide v1

    const/4 p0, 0x0

    aget-object v3, v0, p0

    array-length v3, v3

    new-array v4, v3, [D

    :goto_0
    if-ge p0, v3, :cond_0

    aget-object v5, v0, p0

    aget-wide v5, v5, p0

    mul-double/2addr v5, v1

    invoke-static {v5, v6}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v5

    aput-wide v5, v4, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    return-object v4
.end method

.method public estimateRegressionParametersVariance()[[D
    .locals 0

    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/regression/AbstractMultipleLinearRegression;->calculateBetaVariance()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object p0

    invoke-interface {p0}, Lorg/apache/commons/math3/linear/RealMatrix;->getData()[[D

    move-result-object p0

    return-object p0
.end method

.method public estimateRegressionStandardError()D
    .locals 2

    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/regression/AbstractMultipleLinearRegression;->estimateErrorVariance()D

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public estimateResiduals()[D
    .locals 2

    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/regression/AbstractMultipleLinearRegression;->calculateBeta()Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/math3/stat/regression/AbstractMultipleLinearRegression;->b:Lorg/apache/commons/math3/linear/RealVector;

    iget-object p0, p0, Lorg/apache/commons/math3/stat/regression/AbstractMultipleLinearRegression;->a:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {p0, v0}, Lorg/apache/commons/math3/linear/RealMatrix;->operate(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object p0

    invoke-virtual {v1, p0}, Lorg/apache/commons/math3/linear/RealVector;->subtract(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/RealVector;->toArray()[D

    move-result-object p0

    return-object p0
.end method

.method public getX()Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/stat/regression/AbstractMultipleLinearRegression;->a:Lorg/apache/commons/math3/linear/RealMatrix;

    return-object p0
.end method

.method public getY()Lorg/apache/commons/math3/linear/RealVector;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/stat/regression/AbstractMultipleLinearRegression;->b:Lorg/apache/commons/math3/linear/RealVector;

    return-object p0
.end method

.method public isNoIntercept()Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/commons/math3/stat/regression/AbstractMultipleLinearRegression;->c:Z

    return p0
.end method

.method public newSampleData([DII)V
    .locals 10

    if-eqz p1, :cond_6

    array-length v0, p1

    add-int/lit8 v1, p3, 0x1

    mul-int v2, p2, v1

    if-ne v0, v2, :cond_5

    if-le p2, p3, :cond_4

    new-array v0, p2, [D

    iget-boolean v2, p0, Lorg/apache/commons/math3/stat/regression/AbstractMultipleLinearRegression;->c:Z

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move p3, v1

    :goto_0
    filled-new-array {p2, p3}, [I

    move-result-object v1

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[D

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_1
    if-ge v3, p2, :cond_3

    add-int/lit8 v5, v4, 0x1

    aget-wide v6, p1, v4

    aput-wide v6, v0, v3

    iget-boolean v4, p0, Lorg/apache/commons/math3/stat/regression/AbstractMultipleLinearRegression;->c:Z

    if-nez v4, :cond_1

    aget-object v6, v1, v3

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    aput-wide v7, v6, v2

    :cond_1
    xor-int/lit8 v4, v4, 0x1

    :goto_2
    if-ge v4, p3, :cond_2

    aget-object v6, v1, v3

    add-int/lit8 v7, v5, 0x1

    aget-wide v8, p1, v5

    aput-wide v8, v6, v4

    add-int/lit8 v4, v4, 0x1

    move v5, v7

    goto :goto_2

    :cond_2
    add-int/lit8 v3, v3, 0x1

    move v4, v5

    goto :goto_1

    :cond_3
    new-instance p1, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-direct {p1, v1}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;-><init>([[D)V

    iput-object p1, p0, Lorg/apache/commons/math3/stat/regression/AbstractMultipleLinearRegression;->a:Lorg/apache/commons/math3/linear/RealMatrix;

    new-instance p1, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-direct {p1, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>([D)V

    iput-object p1, p0, Lorg/apache/commons/math3/stat/regression/AbstractMultipleLinearRegression;->b:Lorg/apache/commons/math3/linear/RealVector;

    return-void

    :cond_4
    new-instance p0, Lorg/apache/commons/math3/exception/InsufficientDataException;

    sget-object p1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->INSUFFICIENT_OBSERVED_POINTS_IN_SAMPLE:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    filled-new-array {p2, p3}, [Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/exception/InsufficientDataException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw p0

    :cond_5
    new-instance p0, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length p1, p1

    invoke-direct {p0, p1, v2}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw p0

    :cond_6
    new-instance p0, Lorg/apache/commons/math3/exception/NullArgumentException;

    invoke-direct {p0}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>()V

    throw p0
.end method

.method public newXSampleData([[D)V
    .locals 9

    if-eqz p1, :cond_4

    array-length v0, p1

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lorg/apache/commons/math3/stat/regression/AbstractMultipleLinearRegression;->c:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    new-instance v0, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-direct {v0, p1, v1}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;-><init>([[DZ)V

    iput-object v0, p0, Lorg/apache/commons/math3/stat/regression/AbstractMultipleLinearRegression;->a:Lorg/apache/commons/math3/linear/RealMatrix;

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    aget-object v2, p1, v0

    array-length v2, v2

    array-length v3, p1

    add-int/lit8 v4, v2, 0x1

    filled-new-array {v3, v4}, [I

    move-result-object v3

    sget-object v4, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[D

    move v4, v0

    :goto_0
    array-length v5, p1

    if-ge v4, v5, :cond_2

    aget-object v5, p1, v4

    array-length v6, v5

    if-ne v6, v2, :cond_1

    aget-object v6, v3, v4

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    aput-wide v7, v6, v0

    invoke-static {v5, v0, v6, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    new-instance p0, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    aget-object p1, p1, v4

    array-length p1, p1

    invoke-direct {p0, p1, v2}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw p0

    :cond_2
    new-instance p1, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-direct {p1, v3, v0}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;-><init>([[DZ)V

    iput-object p1, p0, Lorg/apache/commons/math3/stat/regression/AbstractMultipleLinearRegression;->a:Lorg/apache/commons/math3/linear/RealMatrix;

    :goto_1
    return-void

    :cond_3
    new-instance p0, Lorg/apache/commons/math3/exception/NoDataException;

    invoke-direct {p0}, Lorg/apache/commons/math3/exception/NoDataException;-><init>()V

    throw p0

    :cond_4
    new-instance p0, Lorg/apache/commons/math3/exception/NullArgumentException;

    invoke-direct {p0}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>()V

    throw p0
.end method

.method public newYSampleData([D)V
    .locals 1

    if-eqz p1, :cond_1

    array-length v0, p1

    if-eqz v0, :cond_0

    new-instance v0, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-direct {v0, p1}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>([D)V

    iput-object v0, p0, Lorg/apache/commons/math3/stat/regression/AbstractMultipleLinearRegression;->b:Lorg/apache/commons/math3/linear/RealVector;

    return-void

    :cond_0
    new-instance p0, Lorg/apache/commons/math3/exception/NoDataException;

    invoke-direct {p0}, Lorg/apache/commons/math3/exception/NoDataException;-><init>()V

    throw p0

    :cond_1
    new-instance p0, Lorg/apache/commons/math3/exception/NullArgumentException;

    invoke-direct {p0}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>()V

    throw p0
.end method

.method public setNoIntercept(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/commons/math3/stat/regression/AbstractMultipleLinearRegression;->c:Z

    return-void
.end method

.method public validateCovarianceData([[D[[D)V
    .locals 1

    array-length p0, p1

    array-length v0, p2

    if-ne p0, v0, :cond_2

    array-length p0, p2

    if-lez p0, :cond_1

    array-length p0, p2

    const/4 p1, 0x0

    aget-object v0, p2, p1

    array-length v0, v0

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lorg/apache/commons/math3/linear/NonSquareMatrixException;

    array-length v0, p2

    aget-object p1, p2, p1

    array-length p1, p1

    invoke-direct {p0, v0, p1}, Lorg/apache/commons/math3/linear/NonSquareMatrixException;-><init>(II)V

    throw p0

    :cond_1
    :goto_0
    return-void

    :cond_2
    new-instance p0, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length p1, p1

    array-length p2, p2

    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw p0
.end method

.method public validateSampleData([[D[D)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    array-length p0, p1

    array-length v0, p2

    if-ne p0, v0, :cond_2

    array-length p0, p1

    if-eqz p0, :cond_1

    const/4 p0, 0x0

    aget-object p2, p1, p0

    array-length p2, p2

    add-int/lit8 p2, p2, 0x1

    array-length v0, p1

    if-gt p2, v0, :cond_0

    return-void

    :cond_0
    new-instance p2, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;

    sget-object v0, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->NOT_ENOUGH_DATA_FOR_NUMBER_OF_PREDICTORS:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    array-length v1, p1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aget-object p0, p1, p0

    array-length p0, p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v1, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-direct {p2, v0, p0}, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw p2

    :cond_1
    new-instance p0, Lorg/apache/commons/math3/exception/NoDataException;

    invoke-direct {p0}, Lorg/apache/commons/math3/exception/NoDataException;-><init>()V

    throw p0

    :cond_2
    new-instance p0, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length p2, p2

    array-length p1, p1

    invoke-direct {p0, p2, p1}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw p0

    :cond_3
    new-instance p0, Lorg/apache/commons/math3/exception/NullArgumentException;

    invoke-direct {p0}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>()V

    throw p0
.end method
