.class public Lorg/apache/commons/math3/stat/inference/BinomialTest;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binomialTest(IIDLorg/apache/commons/math3/stat/inference/AlternativeHypothesis;)D
    .locals 7

    if-ltz p1, :cond_b

    if-ltz p2, :cond_a

    const-wide/16 v0, 0x0

    cmpg-double p0, p3, v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ltz p0, :cond_9

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    cmpl-double p0, p3, v4

    if-gtz p0, :cond_9

    if-lt p1, p2, :cond_8

    if-eqz p5, :cond_7

    .line 2
    new-instance p0, Lorg/apache/commons/math3/distribution/BinomialDistribution;

    const/4 v6, 0x0

    invoke-direct {p0, v6, p1, p3, p4}, Lorg/apache/commons/math3/distribution/BinomialDistribution;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;ID)V

    .line 3
    sget-object p3, Lorg/apache/commons/math3/stat/inference/BinomialTest$a;->a:[I

    invoke-virtual {p5}, Ljava/lang/Enum;->ordinal()I

    move-result p4

    aget p3, p3, p4

    if-eq p3, v3, :cond_6

    const/4 p4, 0x2

    if-eq p3, p4, :cond_5

    const/4 p4, 0x3

    if-ne p3, p4, :cond_4

    .line 4
    :cond_0
    invoke-virtual {p0, v2}, Lorg/apache/commons/math3/distribution/BinomialDistribution;->probability(I)D

    move-result-wide p3

    .line 5
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/distribution/BinomialDistribution;->probability(I)D

    move-result-wide v3

    cmpl-double p5, p3, v3

    if-nez p5, :cond_1

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    mul-double/2addr p3, v3

    add-double/2addr v0, p3

    add-int/lit8 v2, v2, 0x1

    :goto_0
    add-int/lit8 p1, p1, -0x1

    goto :goto_1

    :cond_1
    cmpg-double p5, p3, v3

    if-gez p5, :cond_2

    add-double/2addr v0, p3

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    add-double/2addr v0, v3

    goto :goto_0

    :goto_1
    if-gt v2, p2, :cond_3

    if-ge p1, p2, :cond_0

    :cond_3
    return-wide v0

    .line 6
    :cond_4
    new-instance p0, Lorg/apache/commons/math3/exception/MathInternalError;

    sget-object p1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->OUT_OF_RANGE_SIMPLE:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    sget-object p2, Lorg/apache/commons/math3/stat/inference/AlternativeHypothesis;->TWO_SIDED:Lorg/apache/commons/math3/stat/inference/AlternativeHypothesis;

    sget-object p3, Lorg/apache/commons/math3/stat/inference/AlternativeHypothesis;->LESS_THAN:Lorg/apache/commons/math3/stat/inference/AlternativeHypothesis;

    filled-new-array {p5, p2, p3}, [Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/exception/MathInternalError;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw p0

    .line 7
    :cond_5
    invoke-virtual {p0, p2}, Lorg/apache/commons/math3/distribution/BinomialDistribution;->cumulativeProbability(I)D

    move-result-wide p0

    return-wide p0

    :cond_6
    sub-int/2addr p2, v3

    .line 8
    invoke-virtual {p0, p2}, Lorg/apache/commons/math3/distribution/BinomialDistribution;->cumulativeProbability(I)D

    move-result-wide p0

    sub-double/2addr v4, p0

    return-wide v4

    .line 9
    :cond_7
    new-instance p0, Lorg/apache/commons/math3/exception/NullArgumentException;

    invoke-direct {p0}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>()V

    throw p0

    .line 10
    :cond_8
    new-instance p0, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;

    sget-object p3, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->BINOMIAL_INVALID_PARAMETERS_ORDER:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, p3, p1}, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw p0

    .line 11
    :cond_9
    new-instance p0, Lorg/apache/commons/math3/exception/OutOfRangeException;

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw p0

    .line 12
    :cond_a
    new-instance p0, Lorg/apache/commons/math3/exception/NotPositiveException;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/commons/math3/exception/NotPositiveException;-><init>(Ljava/lang/Number;)V

    throw p0

    .line 13
    :cond_b
    new-instance p0, Lorg/apache/commons/math3/exception/NotPositiveException;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/commons/math3/exception/NotPositiveException;-><init>(Ljava/lang/Number;)V

    throw p0
.end method

.method public binomialTest(IIDLorg/apache/commons/math3/stat/inference/AlternativeHypothesis;D)Z
    .locals 0

    .line 1
    invoke-virtual/range {p0 .. p5}, Lorg/apache/commons/math3/stat/inference/BinomialTest;->binomialTest(IIDLorg/apache/commons/math3/stat/inference/AlternativeHypothesis;)D

    move-result-wide p0

    cmpg-double p0, p0, p6

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
