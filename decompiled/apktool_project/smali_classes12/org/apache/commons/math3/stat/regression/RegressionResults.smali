.class public Lorg/apache/commons/math3/stat/regression/RegressionResults;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final ADJRSQ_IDX:I = 0x4

.field private static final MSE_IDX:I = 0x3

.field private static final RSQ_IDX:I = 0x2

.field private static final SSE_IDX:I = 0x0

.field private static final SST_IDX:I = 0x1

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final containsConstant:Z

.field private final globalFitInfo:[D

.field private final isSymmetricVCD:Z

.field private final nobs:J

.field private final parameters:[D

.field private final rank:I

.field private final varCovData:[[D


# direct methods
.method private constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lorg/apache/commons/math3/stat/regression/RegressionResults;->parameters:[D

    .line 3
    iput-object v0, p0, Lorg/apache/commons/math3/stat/regression/RegressionResults;->varCovData:[[D

    const/4 v1, -0x1

    .line 4
    iput v1, p0, Lorg/apache/commons/math3/stat/regression/RegressionResults;->rank:I

    const-wide/16 v1, -0x1

    .line 5
    iput-wide v1, p0, Lorg/apache/commons/math3/stat/regression/RegressionResults;->nobs:J

    const/4 v1, 0x0

    .line 6
    iput-boolean v1, p0, Lorg/apache/commons/math3/stat/regression/RegressionResults;->containsConstant:Z

    .line 7
    iput-boolean v1, p0, Lorg/apache/commons/math3/stat/regression/RegressionResults;->isSymmetricVCD:Z

    .line 8
    iput-object v0, p0, Lorg/apache/commons/math3/stat/regression/RegressionResults;->globalFitInfo:[D

    return-void
.end method

.method public constructor <init>([D[[DZJIDDDZZ)V
    .locals 14

    move-object v0, p0

    move-object/from16 v1, p2

    move-wide/from16 v2, p4

    move/from16 v4, p6

    move/from16 v5, p13

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v6, 0x0

    if-eqz p14, :cond_0

    .line 10
    invoke-static {p1}, Lorg/apache/commons/math3/util/MathArrays;->copyOf([D)[D

    move-result-object v7

    iput-object v7, v0, Lorg/apache/commons/math3/stat/regression/RegressionResults;->parameters:[D

    .line 11
    array-length v7, v1

    new-array v7, v7, [[D

    iput-object v7, v0, Lorg/apache/commons/math3/stat/regression/RegressionResults;->varCovData:[[D

    move v7, v6

    .line 12
    :goto_0
    array-length v8, v1

    if-ge v7, v8, :cond_1

    .line 13
    iget-object v8, v0, Lorg/apache/commons/math3/stat/regression/RegressionResults;->varCovData:[[D

    aget-object v9, v1, v7

    invoke-static {v9}, Lorg/apache/commons/math3/util/MathArrays;->copyOf([D)[D

    move-result-object v9

    aput-object v9, v8, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_0
    move-object v7, p1

    .line 14
    iput-object v7, v0, Lorg/apache/commons/math3/stat/regression/RegressionResults;->parameters:[D

    .line 15
    iput-object v1, v0, Lorg/apache/commons/math3/stat/regression/RegressionResults;->varCovData:[[D

    :cond_1
    move/from16 v1, p3

    .line 16
    iput-boolean v1, v0, Lorg/apache/commons/math3/stat/regression/RegressionResults;->isSymmetricVCD:Z

    .line 17
    iput-wide v2, v0, Lorg/apache/commons/math3/stat/regression/RegressionResults;->nobs:J

    .line 18
    iput v4, v0, Lorg/apache/commons/math3/stat/regression/RegressionResults;->rank:I

    .line 19
    iput-boolean v5, v0, Lorg/apache/commons/math3/stat/regression/RegressionResults;->containsConstant:Z

    const/4 v1, 0x5

    new-array v1, v1, [D

    .line 20
    iput-object v1, v0, Lorg/apache/commons/math3/stat/regression/RegressionResults;->globalFitInfo:[D

    const-wide/high16 v7, 0x7ff8000000000000L    # Double.NaN

    .line 21
    invoke-static {v1, v7, v8}, Ljava/util/Arrays;->fill([DD)V

    const/4 v0, 0x1

    if-lez v4, :cond_3

    if-eqz v5, :cond_2

    mul-double v7, p7, p7

    long-to-double v9, v2

    div-double/2addr v7, v9

    sub-double v7, p9, v7

    goto :goto_1

    :cond_2
    move-wide/from16 v7, p9

    :goto_1
    aput-wide v7, v1, v0

    :cond_3
    aput-wide p11, v1, v6

    int-to-long v6, v4

    sub-long v6, v2, v6

    long-to-double v6, v6

    div-double v8, p11, v6

    const/4 v4, 0x3

    aput-wide v8, v1, v4

    aget-wide v8, v1, v0

    div-double v10, p11, v8

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    sub-double v10, v12, v10

    const/4 v0, 0x2

    aput-wide v10, v1, v0

    const/4 v0, 0x4

    if-nez v5, :cond_4

    sub-double v4, v12, v10

    long-to-double v2, v2

    div-double/2addr v2, v6

    mul-double/2addr v4, v2

    sub-double/2addr v12, v4

    aput-wide v12, v1, v0

    goto :goto_2

    :cond_4
    long-to-double v2, v2

    sub-double/2addr v2, v12

    mul-double v2, v2, p11

    mul-double/2addr v8, v6

    div-double/2addr v2, v8

    sub-double/2addr v12, v2

    aput-wide v12, v1, v0

    :goto_2
    return-void
.end method

.method private getVcvElement(II)D
    .locals 2

    iget-boolean v0, p0, Lorg/apache/commons/math3/stat/regression/RegressionResults;->isSymmetricVCD:Z

    if-eqz v0, :cond_4

    iget-object p0, p0, Lorg/apache/commons/math3/stat/regression/RegressionResults;->varCovData:[[D

    array-length v0, p0

    const/4 v1, 0x1

    if-le v0, v1, :cond_2

    if-ne p1, p2, :cond_0

    aget-object p0, p0, p1

    aget-wide p0, p0, p1

    return-wide p0

    :cond_0
    aget-object v0, p0, p2

    array-length v1, v0

    if-lt p1, v1, :cond_1

    aget-object p0, p0, p1

    aget-wide p0, p0, p2

    return-wide p0

    :cond_1
    aget-wide p0, v0, p1

    return-wide p0

    :cond_2
    const/4 v0, 0x0

    if-le p1, p2, :cond_3

    aget-object p0, p0, v0

    add-int/lit8 v0, p1, 0x1

    mul-int/2addr v0, p1

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p2

    aget-wide p0, p0, v0

    return-wide p0

    :cond_3
    aget-object p0, p0, v0

    add-int/lit8 v0, p2, 0x1

    mul-int/2addr v0, p2

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p1

    aget-wide p0, p0, v0

    return-wide p0

    :cond_4
    iget-object p0, p0, Lorg/apache/commons/math3/stat/regression/RegressionResults;->varCovData:[[D

    aget-object p0, p0, p1

    aget-wide p0, p0, p2

    return-wide p0
.end method


# virtual methods
.method public getAdjustedRSquared()D
    .locals 2

    iget-object p0, p0, Lorg/apache/commons/math3/stat/regression/RegressionResults;->globalFitInfo:[D

    const/4 v0, 0x4

    aget-wide v0, p0, v0

    return-wide v0
.end method

.method public getCovarianceOfParameters(II)D
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/commons/math3/stat/regression/RegressionResults;->parameters:[D

    if-nez v0, :cond_0

    const-wide/high16 p0, 0x7ff8000000000000L    # Double.NaN

    return-wide p0

    :cond_0
    const/4 v1, 0x0

    if-ltz p1, :cond_2

    array-length v2, v0

    if-ge p1, v2, :cond_2

    if-ltz p2, :cond_1

    array-length v0, v0

    if-ge p2, v0, :cond_1

    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/stat/regression/RegressionResults;->getVcvElement(II)D

    move-result-wide p0

    return-wide p0

    :cond_1
    new-instance p1, Lorg/apache/commons/math3/exception/OutOfRangeException;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object p0, p0, Lorg/apache/commons/math3/stat/regression/RegressionResults;->parameters:[D

    array-length p0, p0

    add-int/lit8 p0, p0, -0x1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-direct {p1, p2, v0, p0}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw p1

    :cond_2
    new-instance p2, Lorg/apache/commons/math3/exception/OutOfRangeException;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object p0, p0, Lorg/apache/commons/math3/stat/regression/RegressionResults;->parameters:[D

    array-length p0, p0

    add-int/lit8 p0, p0, -0x1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-direct {p2, p1, v0, p0}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw p2
.end method

.method public getErrorSumSquares()D
    .locals 2

    iget-object p0, p0, Lorg/apache/commons/math3/stat/regression/RegressionResults;->globalFitInfo:[D

    const/4 v0, 0x0

    aget-wide v0, p0, v0

    return-wide v0
.end method

.method public getMeanSquareError()D
    .locals 2

    iget-object p0, p0, Lorg/apache/commons/math3/stat/regression/RegressionResults;->globalFitInfo:[D

    const/4 v0, 0x3

    aget-wide v0, p0, v0

    return-wide v0
.end method

.method public getN()J
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/math3/stat/regression/RegressionResults;->nobs:J

    return-wide v0
.end method

.method public getNumberOfParameters()I
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/stat/regression/RegressionResults;->parameters:[D

    if-nez p0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    array-length p0, p0

    return p0
.end method

.method public getParameterEstimate(I)D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/commons/math3/stat/regression/RegressionResults;->parameters:[D

    if-nez v0, :cond_0

    const-wide/high16 p0, 0x7ff8000000000000L    # Double.NaN

    return-wide p0

    :cond_0
    if-ltz p1, :cond_1

    array-length v1, v0

    if-ge p1, v1, :cond_1

    aget-wide p0, v0, p1

    return-wide p0

    :cond_1
    new-instance v0, Lorg/apache/commons/math3/exception/OutOfRangeException;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object p0, p0, Lorg/apache/commons/math3/stat/regression/RegressionResults;->parameters:[D

    array-length p0, p0

    add-int/lit8 p0, p0, -0x1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-direct {v0, p1, v1, p0}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw v0
.end method

.method public getParameterEstimates()[D
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/stat/regression/RegressionResults;->parameters:[D

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {p0}, Lorg/apache/commons/math3/util/MathArrays;->copyOf([D)[D

    move-result-object p0

    return-object p0
.end method

.method public getRSquared()D
    .locals 2

    iget-object p0, p0, Lorg/apache/commons/math3/stat/regression/RegressionResults;->globalFitInfo:[D

    const/4 v0, 0x2

    aget-wide v0, p0, v0

    return-wide v0
.end method

.method public getRegressionSumSquares()D
    .locals 4

    iget-object p0, p0, Lorg/apache/commons/math3/stat/regression/RegressionResults;->globalFitInfo:[D

    const/4 v0, 0x1

    aget-wide v0, p0, v0

    const/4 v2, 0x0

    aget-wide v2, p0, v2

    sub-double/2addr v0, v2

    return-wide v0
.end method

.method public getStdErrorOfEstimate(I)D
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/commons/math3/stat/regression/RegressionResults;->parameters:[D

    const-wide/high16 v1, 0x7ff8000000000000L    # Double.NaN

    if-nez v0, :cond_0

    return-wide v1

    :cond_0
    if-ltz p1, :cond_2

    array-length v0, v0

    if-ge p1, v0, :cond_2

    invoke-direct {p0, p1, p1}, Lorg/apache/commons/math3/stat/regression/RegressionResults;->getVcvElement(II)D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_1

    const-wide/16 v3, 0x1

    cmpl-double v0, p0, v3

    if-lez v0, :cond_1

    invoke-static {p0, p1}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide p0

    return-wide p0

    :cond_1
    return-wide v1

    :cond_2
    new-instance v0, Lorg/apache/commons/math3/exception/OutOfRangeException;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object p0, p0, Lorg/apache/commons/math3/stat/regression/RegressionResults;->parameters:[D

    array-length p0, p0

    add-int/lit8 p0, p0, -0x1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-direct {v0, p1, v1, p0}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw v0
.end method

.method public getStdErrorOfEstimates()[D
    .locals 6

    iget-object v0, p0, Lorg/apache/commons/math3/stat/regression/RegressionResults;->parameters:[D

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    array-length v0, v0

    new-array v0, v0, [D

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lorg/apache/commons/math3/stat/regression/RegressionResults;->parameters:[D

    array-length v2, v2

    if-ge v1, v2, :cond_2

    invoke-direct {p0, v1, v1}, Lorg/apache/commons/math3/stat/regression/RegressionResults;->getVcvElement(II)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v4

    if-nez v4, :cond_1

    const-wide/16 v4, 0x1

    cmpl-double v4, v2, v4

    if-lez v4, :cond_1

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v2

    aput-wide v2, v0, v1

    goto :goto_1

    :cond_1
    const-wide/high16 v2, 0x7ff8000000000000L    # Double.NaN

    aput-wide v2, v0, v1

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public getTotalSumSquares()D
    .locals 2

    iget-object p0, p0, Lorg/apache/commons/math3/stat/regression/RegressionResults;->globalFitInfo:[D

    const/4 v0, 0x1

    aget-wide v0, p0, v0

    return-wide v0
.end method

.method public hasIntercept()Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/commons/math3/stat/regression/RegressionResults;->containsConstant:Z

    return p0
.end method
