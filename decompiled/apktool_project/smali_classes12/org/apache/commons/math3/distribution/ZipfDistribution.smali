.class public Lorg/apache/commons/math3/distribution/ZipfDistribution;
.super Lorg/apache/commons/math3/distribution/AbstractIntegerDistribution;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/distribution/ZipfDistribution$a;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x1f39bd99aa65ef4L


# instance fields
.field private final exponent:D

.field private final numberOfElements:I

.field private numericalMean:D

.field private numericalMeanIsCalculated:Z

.field private numericalVariance:D

.field private numericalVarianceIsCalculated:Z

.field private transient sampler:Lorg/apache/commons/math3/distribution/ZipfDistribution$a;


# direct methods
.method public constructor <init>(ID)V
    .locals 1

    .line 1
    new-instance v0, Lorg/apache/commons/math3/random/Well19937c;

    invoke-direct {v0}, Lorg/apache/commons/math3/random/Well19937c;-><init>()V

    invoke-direct {p0, v0, p1, p2, p3}, Lorg/apache/commons/math3/distribution/ZipfDistribution;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;ID)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/random/RandomGenerator;ID)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/distribution/AbstractIntegerDistribution;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;)V

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    .line 3
    iput-wide v0, p0, Lorg/apache/commons/math3/distribution/ZipfDistribution;->numericalMean:D

    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lorg/apache/commons/math3/distribution/ZipfDistribution;->numericalMeanIsCalculated:Z

    .line 5
    iput-wide v0, p0, Lorg/apache/commons/math3/distribution/ZipfDistribution;->numericalVariance:D

    .line 6
    iput-boolean p1, p0, Lorg/apache/commons/math3/distribution/ZipfDistribution;->numericalVarianceIsCalculated:Z

    if-lez p2, :cond_1

    const-wide/16 v0, 0x0

    cmpg-double p1, p3, v0

    if-lez p1, :cond_0

    .line 7
    iput p2, p0, Lorg/apache/commons/math3/distribution/ZipfDistribution;->numberOfElements:I

    .line 8
    iput-wide p3, p0, Lorg/apache/commons/math3/distribution/ZipfDistribution;->exponent:D

    return-void

    .line 9
    :cond_0
    new-instance p0, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;

    sget-object p1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->EXPONENT:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;)V

    throw p0

    .line 10
    :cond_1
    new-instance p0, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;

    sget-object p1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->DIMENSION:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;)V

    throw p0
.end method

.method private generalizedHarmonic(ID)D
    .locals 6

    const-wide/16 v0, 0x0

    :goto_0
    if-lez p1, :cond_0

    int-to-double v2, p1

    invoke-static {v2, v3, p2, p3}, Lorg/apache/commons/math3/util/FastMath;->pow(DD)D

    move-result-wide v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    div-double/2addr v4, v2

    add-double/2addr v0, v4

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_0
    return-wide v0
.end method


# virtual methods
.method public calculateNumericalMean()D
    .locals 5

    invoke-virtual {p0}, Lorg/apache/commons/math3/distribution/ZipfDistribution;->getNumberOfElements()I

    move-result v0

    invoke-virtual {p0}, Lorg/apache/commons/math3/distribution/ZipfDistribution;->getExponent()D

    move-result-wide v1

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    sub-double v3, v1, v3

    invoke-direct {p0, v0, v3, v4}, Lorg/apache/commons/math3/distribution/ZipfDistribution;->generalizedHarmonic(ID)D

    move-result-wide v3

    invoke-direct {p0, v0, v1, v2}, Lorg/apache/commons/math3/distribution/ZipfDistribution;->generalizedHarmonic(ID)D

    move-result-wide v0

    div-double/2addr v3, v0

    return-wide v3
.end method

.method public calculateNumericalVariance()D
    .locals 7

    invoke-virtual {p0}, Lorg/apache/commons/math3/distribution/ZipfDistribution;->getNumberOfElements()I

    move-result v0

    invoke-virtual {p0}, Lorg/apache/commons/math3/distribution/ZipfDistribution;->getExponent()D

    move-result-wide v1

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    sub-double v3, v1, v3

    invoke-direct {p0, v0, v3, v4}, Lorg/apache/commons/math3/distribution/ZipfDistribution;->generalizedHarmonic(ID)D

    move-result-wide v3

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    sub-double v5, v1, v5

    invoke-direct {p0, v0, v5, v6}, Lorg/apache/commons/math3/distribution/ZipfDistribution;->generalizedHarmonic(ID)D

    move-result-wide v5

    invoke-direct {p0, v0, v1, v2}, Lorg/apache/commons/math3/distribution/ZipfDistribution;->generalizedHarmonic(ID)D

    move-result-wide v0

    div-double/2addr v3, v0

    mul-double/2addr v5, v5

    mul-double/2addr v0, v0

    div-double/2addr v5, v0

    sub-double/2addr v3, v5

    return-wide v3
.end method

.method public cumulativeProbability(I)D
    .locals 4

    if-gtz p1, :cond_0

    const-wide/16 p0, 0x0

    return-wide p0

    :cond_0
    iget v0, p0, Lorg/apache/commons/math3/distribution/ZipfDistribution;->numberOfElements:I

    if-lt p1, v0, :cond_1

    const-wide/high16 p0, 0x3ff0000000000000L    # 1.0

    return-wide p0

    :cond_1
    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/ZipfDistribution;->exponent:D

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/commons/math3/distribution/ZipfDistribution;->generalizedHarmonic(ID)D

    move-result-wide v0

    iget p1, p0, Lorg/apache/commons/math3/distribution/ZipfDistribution;->numberOfElements:I

    iget-wide v2, p0, Lorg/apache/commons/math3/distribution/ZipfDistribution;->exponent:D

    invoke-direct {p0, p1, v2, v3}, Lorg/apache/commons/math3/distribution/ZipfDistribution;->generalizedHarmonic(ID)D

    move-result-wide p0

    div-double/2addr v0, p0

    return-wide v0
.end method

.method public getExponent()D
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/ZipfDistribution;->exponent:D

    return-wide v0
.end method

.method public getNumberOfElements()I
    .locals 0

    iget p0, p0, Lorg/apache/commons/math3/distribution/ZipfDistribution;->numberOfElements:I

    return p0
.end method

.method public getNumericalMean()D
    .locals 2

    iget-boolean v0, p0, Lorg/apache/commons/math3/distribution/ZipfDistribution;->numericalMeanIsCalculated:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/commons/math3/distribution/ZipfDistribution;->calculateNumericalMean()D

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/commons/math3/distribution/ZipfDistribution;->numericalMean:D

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/math3/distribution/ZipfDistribution;->numericalMeanIsCalculated:Z

    :cond_0
    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/ZipfDistribution;->numericalMean:D

    return-wide v0
.end method

.method public getNumericalVariance()D
    .locals 2

    iget-boolean v0, p0, Lorg/apache/commons/math3/distribution/ZipfDistribution;->numericalVarianceIsCalculated:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/commons/math3/distribution/ZipfDistribution;->calculateNumericalVariance()D

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/commons/math3/distribution/ZipfDistribution;->numericalVariance:D

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/math3/distribution/ZipfDistribution;->numericalVarianceIsCalculated:Z

    :cond_0
    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/ZipfDistribution;->numericalVariance:D

    return-wide v0
.end method

.method public getSupportLowerBound()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public getSupportUpperBound()I
    .locals 0

    invoke-virtual {p0}, Lorg/apache/commons/math3/distribution/ZipfDistribution;->getNumberOfElements()I

    move-result p0

    return p0
.end method

.method public isSupportConnected()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public logProbability(I)D
    .locals 4

    if-lez p1, :cond_1

    iget v0, p0, Lorg/apache/commons/math3/distribution/ZipfDistribution;->numberOfElements:I

    if-le p1, v0, :cond_0

    goto :goto_0

    :cond_0
    int-to-double v0, p1

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v0

    neg-double v0, v0

    iget-wide v2, p0, Lorg/apache/commons/math3/distribution/ZipfDistribution;->exponent:D

    mul-double/2addr v0, v2

    iget p1, p0, Lorg/apache/commons/math3/distribution/ZipfDistribution;->numberOfElements:I

    invoke-direct {p0, p1, v2, v3}, Lorg/apache/commons/math3/distribution/ZipfDistribution;->generalizedHarmonic(ID)D

    move-result-wide p0

    invoke-static {p0, p1}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide p0

    sub-double/2addr v0, p0

    return-wide v0

    :cond_1
    :goto_0
    const-wide/high16 p0, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    return-wide p0
.end method

.method public probability(I)D
    .locals 4

    if-lez p1, :cond_1

    iget v0, p0, Lorg/apache/commons/math3/distribution/ZipfDistribution;->numberOfElements:I

    if-le p1, v0, :cond_0

    goto :goto_0

    :cond_0
    int-to-double v0, p1

    iget-wide v2, p0, Lorg/apache/commons/math3/distribution/ZipfDistribution;->exponent:D

    invoke-static {v0, v1, v2, v3}, Lorg/apache/commons/math3/util/FastMath;->pow(DD)D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    div-double/2addr v2, v0

    iget p1, p0, Lorg/apache/commons/math3/distribution/ZipfDistribution;->numberOfElements:I

    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/ZipfDistribution;->exponent:D

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/commons/math3/distribution/ZipfDistribution;->generalizedHarmonic(ID)D

    move-result-wide p0

    div-double/2addr v2, p0

    return-wide v2

    :cond_1
    :goto_0
    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public sample()I
    .locals 4

    iget-object v0, p0, Lorg/apache/commons/math3/distribution/ZipfDistribution;->sampler:Lorg/apache/commons/math3/distribution/ZipfDistribution$a;

    if-nez v0, :cond_0

    new-instance v0, Lorg/apache/commons/math3/distribution/ZipfDistribution$a;

    iget v1, p0, Lorg/apache/commons/math3/distribution/ZipfDistribution;->numberOfElements:I

    iget-wide v2, p0, Lorg/apache/commons/math3/distribution/ZipfDistribution;->exponent:D

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/math3/distribution/ZipfDistribution$a;-><init>(ID)V

    iput-object v0, p0, Lorg/apache/commons/math3/distribution/ZipfDistribution;->sampler:Lorg/apache/commons/math3/distribution/ZipfDistribution$a;

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/math3/distribution/ZipfDistribution;->sampler:Lorg/apache/commons/math3/distribution/ZipfDistribution$a;

    iget-object p0, p0, Lorg/apache/commons/math3/distribution/AbstractIntegerDistribution;->random:Lorg/apache/commons/math3/random/RandomGenerator;

    invoke-virtual {v0, p0}, Lorg/apache/commons/math3/distribution/ZipfDistribution$a;->f(Lorg/apache/commons/math3/random/RandomGenerator;)I

    move-result p0

    return p0
.end method
