.class public Lorg/apache/commons/math3/random/EmpiricalDistribution;
.super Lorg/apache/commons/math3/distribution/AbstractRealDistribution;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/random/EmpiricalDistribution$b;,
        Lorg/apache/commons/math3/random/EmpiricalDistribution$d;,
        Lorg/apache/commons/math3/random/EmpiricalDistribution$c;
    }
.end annotation


# static fields
.field public static final DEFAULT_BIN_COUNT:I = 0x3e8

.field private static final FILE_CHARSET:Ljava/lang/String; = "US-ASCII"

.field private static final serialVersionUID:J = 0x4f81c2041f1ef85eL


# instance fields
.field private final binCount:I

.field private final binStats:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;",
            ">;"
        }
    .end annotation
.end field

.field private delta:D

.field private loaded:Z

.field private max:D

.field private min:D

.field protected final randomData:Lorg/apache/commons/math3/random/RandomDataGenerator;

.field private sampleStats:Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;

.field private upperBounds:[D


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x3e8

    .line 1
    invoke-direct {p0, v0}, Lorg/apache/commons/math3/random/EmpiricalDistribution;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 2
    new-instance v0, Lorg/apache/commons/math3/random/RandomDataGenerator;

    invoke-direct {v0}, Lorg/apache/commons/math3/random/RandomDataGenerator;-><init>()V

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/math3/random/EmpiricalDistribution;-><init>(ILorg/apache/commons/math3/random/RandomDataGenerator;)V

    return-void
.end method

.method private constructor <init>(ILorg/apache/commons/math3/random/RandomDataGenerator;)V
    .locals 3

    .line 7
    invoke-virtual {p2}, Lorg/apache/commons/math3/random/RandomDataGenerator;->getRandomGenerator()Lorg/apache/commons/math3/random/RandomGenerator;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/commons/math3/distribution/AbstractRealDistribution;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;)V

    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Lorg/apache/commons/math3/random/EmpiricalDistribution;->sampleStats:Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;

    const-wide/high16 v1, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    .line 9
    iput-wide v1, p0, Lorg/apache/commons/math3/random/EmpiricalDistribution;->max:D

    const-wide/high16 v1, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    .line 10
    iput-wide v1, p0, Lorg/apache/commons/math3/random/EmpiricalDistribution;->min:D

    const-wide/16 v1, 0x0

    .line 11
    iput-wide v1, p0, Lorg/apache/commons/math3/random/EmpiricalDistribution;->delta:D

    const/4 v1, 0x0

    .line 12
    iput-boolean v1, p0, Lorg/apache/commons/math3/random/EmpiricalDistribution;->loaded:Z

    .line 13
    iput-object v0, p0, Lorg/apache/commons/math3/random/EmpiricalDistribution;->upperBounds:[D

    if-lez p1, :cond_0

    .line 14
    iput p1, p0, Lorg/apache/commons/math3/random/EmpiricalDistribution;->binCount:I

    .line 15
    iput-object p2, p0, Lorg/apache/commons/math3/random/EmpiricalDistribution;->randomData:Lorg/apache/commons/math3/random/RandomDataGenerator;

    .line 16
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/math3/random/EmpiricalDistribution;->binStats:Ljava/util/List;

    return-void

    .line 17
    :cond_0
    new-instance p0, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;-><init>(Ljava/lang/Number;)V

    throw p0
.end method

.method public constructor <init>(ILorg/apache/commons/math3/random/RandomDataImpl;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5
    invoke-virtual {p2}, Lorg/apache/commons/math3/random/RandomDataImpl;->getDelegate()Lorg/apache/commons/math3/random/RandomDataGenerator;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/random/EmpiricalDistribution;-><init>(ILorg/apache/commons/math3/random/RandomDataGenerator;)V

    return-void
.end method

.method public constructor <init>(ILorg/apache/commons/math3/random/RandomGenerator;)V
    .locals 1

    .line 3
    new-instance v0, Lorg/apache/commons/math3/random/RandomDataGenerator;

    invoke-direct {v0, p2}, Lorg/apache/commons/math3/random/RandomDataGenerator;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;)V

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/math3/random/EmpiricalDistribution;-><init>(ILorg/apache/commons/math3/random/RandomDataGenerator;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/random/RandomDataImpl;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/16 v0, 0x3e8

    .line 6
    invoke-direct {p0, v0, p1}, Lorg/apache/commons/math3/random/EmpiricalDistribution;-><init>(ILorg/apache/commons/math3/random/RandomDataImpl;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/random/RandomGenerator;)V
    .locals 1

    const/16 v0, 0x3e8

    .line 4
    invoke-direct {p0, v0, p1}, Lorg/apache/commons/math3/random/EmpiricalDistribution;-><init>(ILorg/apache/commons/math3/random/RandomGenerator;)V

    return-void
.end method

.method public static synthetic access$100(Lorg/apache/commons/math3/random/EmpiricalDistribution;D)I
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/random/EmpiricalDistribution;->findBin(D)I

    move-result p0

    return p0
.end method

.method public static synthetic access$200(Lorg/apache/commons/math3/random/EmpiricalDistribution;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/random/EmpiricalDistribution;->binStats:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic access$300(Lorg/apache/commons/math3/random/EmpiricalDistribution;)Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/random/EmpiricalDistribution;->sampleStats:Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;

    return-object p0
.end method

.method public static synthetic access$302(Lorg/apache/commons/math3/random/EmpiricalDistribution;Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;)Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;
    .locals 0

    iput-object p1, p0, Lorg/apache/commons/math3/random/EmpiricalDistribution;->sampleStats:Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;

    return-object p1
.end method

.method private cumBinP(I)D
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/random/EmpiricalDistribution;->upperBounds:[D

    aget-wide p0, p0, p1

    return-wide p0
.end method

.method private fillBinStats(Lorg/apache/commons/math3/random/EmpiricalDistribution$c;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/commons/math3/random/EmpiricalDistribution;->sampleStats:Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;

    invoke-virtual {v0}, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->getMin()D

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/commons/math3/random/EmpiricalDistribution;->min:D

    iget-object v0, p0, Lorg/apache/commons/math3/random/EmpiricalDistribution;->sampleStats:Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;

    invoke-virtual {v0}, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->getMax()D

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/commons/math3/random/EmpiricalDistribution;->max:D

    iget-wide v2, p0, Lorg/apache/commons/math3/random/EmpiricalDistribution;->min:D

    sub-double/2addr v0, v2

    iget v2, p0, Lorg/apache/commons/math3/random/EmpiricalDistribution;->binCount:I

    int-to-double v2, v2

    div-double/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/commons/math3/random/EmpiricalDistribution;->delta:D

    iget-object v0, p0, Lorg/apache/commons/math3/random/EmpiricalDistribution;->binStats:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/math3/random/EmpiricalDistribution;->binStats:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Lorg/apache/commons/math3/random/EmpiricalDistribution;->binCount:I

    if-ge v1, v2, :cond_1

    new-instance v2, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;

    invoke-direct {v2}, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;-><init>()V

    iget-object v3, p0, Lorg/apache/commons/math3/random/EmpiricalDistribution;->binStats:Ljava/util/List;

    invoke-interface {v3, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lorg/apache/commons/math3/random/EmpiricalDistribution$c;->a()V

    iget p1, p0, Lorg/apache/commons/math3/random/EmpiricalDistribution;->binCount:I

    new-array p1, p1, [D

    iput-object p1, p0, Lorg/apache/commons/math3/random/EmpiricalDistribution;->upperBounds:[D

    iget-object v1, p0, Lorg/apache/commons/math3/random/EmpiricalDistribution;->binStats:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;

    invoke-virtual {v1}, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->getN()J

    move-result-wide v1

    long-to-double v1, v1

    iget-object v3, p0, Lorg/apache/commons/math3/random/EmpiricalDistribution;->sampleStats:Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;

    invoke-virtual {v3}, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->getN()J

    move-result-wide v3

    long-to-double v3, v3

    div-double/2addr v1, v3

    aput-wide v1, p1, v0

    const/4 p1, 0x1

    move v0, p1

    :goto_1
    iget v1, p0, Lorg/apache/commons/math3/random/EmpiricalDistribution;->binCount:I

    add-int/lit8 v2, v1, -0x1

    if-ge v0, v2, :cond_2

    iget-object v1, p0, Lorg/apache/commons/math3/random/EmpiricalDistribution;->upperBounds:[D

    add-int/lit8 v2, v0, -0x1

    aget-wide v2, v1, v2

    iget-object v4, p0, Lorg/apache/commons/math3/random/EmpiricalDistribution;->binStats:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;

    invoke-virtual {v4}, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->getN()J

    move-result-wide v4

    long-to-double v4, v4

    iget-object v6, p0, Lorg/apache/commons/math3/random/EmpiricalDistribution;->sampleStats:Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;

    invoke-virtual {v6}, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->getN()J

    move-result-wide v6

    long-to-double v6, v6

    div-double/2addr v4, v6

    add-double/2addr v2, v4

    aput-wide v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    iget-object p0, p0, Lorg/apache/commons/math3/random/EmpiricalDistribution;->upperBounds:[D

    sub-int/2addr v1, p1

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    aput-wide v2, p0, v1

    return-void
.end method

.method private findBin(D)I
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/math3/random/EmpiricalDistribution;->min:D

    sub-double/2addr p1, v0

    iget-wide v0, p0, Lorg/apache/commons/math3/random/EmpiricalDistribution;->delta:D

    div-double/2addr p1, v0

    invoke-static {p1, p2}, Lorg/apache/commons/math3/util/FastMath;->ceil(D)D

    move-result-wide p1

    double-to-int p1, p1

    add-int/lit8 p1, p1, -0x1

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lorg/apache/commons/math3/util/FastMath;->max(II)I

    move-result p1

    iget p0, p0, Lorg/apache/commons/math3/random/EmpiricalDistribution;->binCount:I

    add-int/lit8 p0, p0, -0x1

    invoke-static {p1, p0}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result p0

    return p0
.end method

.method private k(D)Lorg/apache/commons/math3/distribution/RealDistribution;
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/random/EmpiricalDistribution;->findBin(D)I

    move-result p1

    iget-object p2, p0, Lorg/apache/commons/math3/random/EmpiricalDistribution;->binStats:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/random/EmpiricalDistribution;->getKernel(Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;)Lorg/apache/commons/math3/distribution/RealDistribution;

    move-result-object p0

    return-object p0
.end method

.method private kB(I)D
    .locals 4

    invoke-virtual {p0}, Lorg/apache/commons/math3/random/EmpiricalDistribution;->getUpperBounds()[D

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/math3/random/EmpiricalDistribution;->binStats:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;

    invoke-virtual {p0, v1}, Lorg/apache/commons/math3/random/EmpiricalDistribution;->getKernel(Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;)Lorg/apache/commons/math3/distribution/RealDistribution;

    move-result-object v1

    if-nez p1, :cond_0

    iget-wide p0, p0, Lorg/apache/commons/math3/random/EmpiricalDistribution;->min:D

    const/4 v2, 0x0

    aget-wide v2, v0, v2

    invoke-interface {v1, p0, p1, v2, v3}, Lorg/apache/commons/math3/distribution/RealDistribution;->cumulativeProbability(DD)D

    move-result-wide p0

    goto :goto_0

    :cond_0
    add-int/lit8 p0, p1, -0x1

    aget-wide v2, v0, p0

    aget-wide p0, v0, p1

    invoke-interface {v1, v2, v3, p0, p1}, Lorg/apache/commons/math3/distribution/RealDistribution;->cumulativeProbability(DD)D

    move-result-wide p0

    :goto_0
    return-wide p0
.end method

.method private pB(I)D
    .locals 2

    iget-object p0, p0, Lorg/apache/commons/math3/random/EmpiricalDistribution;->upperBounds:[D

    if-nez p1, :cond_0

    const/4 p1, 0x0

    aget-wide p0, p0, p1

    goto :goto_0

    :cond_0
    aget-wide v0, p0, p1

    add-int/lit8 p1, p1, -0x1

    aget-wide p0, p0, p1

    sub-double p0, v0, p0

    :goto_0
    return-wide p0
.end method

.method private pBminus(I)D
    .locals 0

    if-nez p1, :cond_0

    const-wide/16 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/apache/commons/math3/random/EmpiricalDistribution;->upperBounds:[D

    add-int/lit8 p1, p1, -0x1

    aget-wide p0, p0, p1

    :goto_0
    return-wide p0
.end method


# virtual methods
.method public cumulativeProbability(D)D
    .locals 11

    iget-wide v0, p0, Lorg/apache/commons/math3/random/EmpiricalDistribution;->min:D

    cmpg-double v0, p1, v0

    if-gez v0, :cond_0

    const-wide/16 p0, 0x0

    return-wide p0

    :cond_0
    iget-wide v0, p0, Lorg/apache/commons/math3/random/EmpiricalDistribution;->max:D

    cmpl-double v0, p1, v0

    if-ltz v0, :cond_1

    const-wide/high16 p0, 0x3ff0000000000000L    # 1.0

    return-wide p0

    :cond_1
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/random/EmpiricalDistribution;->findBin(D)I

    move-result v0

    invoke-direct {p0, v0}, Lorg/apache/commons/math3/random/EmpiricalDistribution;->pBminus(I)D

    move-result-wide v1

    invoke-direct {p0, v0}, Lorg/apache/commons/math3/random/EmpiricalDistribution;->pB(I)D

    move-result-wide v3

    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/random/EmpiricalDistribution;->k(D)Lorg/apache/commons/math3/distribution/RealDistribution;

    move-result-object v5

    instance-of v6, v5, Lorg/apache/commons/math3/distribution/ConstantRealDistribution;

    if-eqz v6, :cond_3

    invoke-interface {v5}, Lorg/apache/commons/math3/distribution/RealDistribution;->getNumericalMean()D

    move-result-wide v5

    cmpg-double p0, p1, v5

    if-gez p0, :cond_2

    return-wide v1

    :cond_2
    add-double/2addr v1, v3

    return-wide v1

    :cond_3
    invoke-virtual {p0}, Lorg/apache/commons/math3/random/EmpiricalDistribution;->getUpperBounds()[D

    move-result-object v6

    invoke-direct {p0, v0}, Lorg/apache/commons/math3/random/EmpiricalDistribution;->kB(I)D

    move-result-wide v7

    if-nez v0, :cond_4

    iget-wide v9, p0, Lorg/apache/commons/math3/random/EmpiricalDistribution;->min:D

    goto :goto_0

    :cond_4
    add-int/lit8 v0, v0, -0x1

    aget-wide v9, v6, v0

    :goto_0
    invoke-interface {v5, p1, p2}, Lorg/apache/commons/math3/distribution/RealDistribution;->cumulativeProbability(D)D

    move-result-wide p0

    invoke-interface {v5, v9, v10}, Lorg/apache/commons/math3/distribution/RealDistribution;->cumulativeProbability(D)D

    move-result-wide v5

    sub-double/2addr p0, v5

    div-double/2addr p0, v7

    mul-double/2addr v3, p0

    add-double/2addr v1, v3

    return-wide v1
.end method

.method public density(D)D
    .locals 3

    iget-wide v0, p0, Lorg/apache/commons/math3/random/EmpiricalDistribution;->min:D

    cmpg-double v0, p1, v0

    if-ltz v0, :cond_1

    iget-wide v0, p0, Lorg/apache/commons/math3/random/EmpiricalDistribution;->max:D

    cmpl-double v0, p1, v0

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/random/EmpiricalDistribution;->findBin(D)I

    move-result v0

    iget-object v1, p0, Lorg/apache/commons/math3/random/EmpiricalDistribution;->binStats:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;

    invoke-virtual {p0, v1}, Lorg/apache/commons/math3/random/EmpiricalDistribution;->getKernel(Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;)Lorg/apache/commons/math3/distribution/RealDistribution;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lorg/apache/commons/math3/distribution/RealDistribution;->density(D)D

    move-result-wide p1

    invoke-direct {p0, v0}, Lorg/apache/commons/math3/random/EmpiricalDistribution;->pB(I)D

    move-result-wide v1

    mul-double/2addr p1, v1

    invoke-direct {p0, v0}, Lorg/apache/commons/math3/random/EmpiricalDistribution;->kB(I)D

    move-result-wide v0

    div-double/2addr p1, v0

    return-wide p1

    :cond_1
    :goto_0
    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public getBinCount()I
    .locals 0

    iget p0, p0, Lorg/apache/commons/math3/random/EmpiricalDistribution;->binCount:I

    return p0
.end method

.method public getBinStats()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/commons/math3/random/EmpiricalDistribution;->binStats:Ljava/util/List;

    return-object p0
.end method

.method public getGeneratorUpperBounds()[D
    .locals 3

    iget-object p0, p0, Lorg/apache/commons/math3/random/EmpiricalDistribution;->upperBounds:[D

    array-length v0, p0

    new-array v1, v0, [D

    const/4 v2, 0x0

    invoke-static {p0, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method

.method public getKernel(Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;)Lorg/apache/commons/math3/distribution/RealDistribution;
    .locals 9

    invoke-virtual {p1}, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->getN()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->getVariance()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/apache/commons/math3/distribution/NormalDistribution;

    iget-object p0, p0, Lorg/apache/commons/math3/random/EmpiricalDistribution;->randomData:Lorg/apache/commons/math3/random/RandomDataGenerator;

    invoke-virtual {p0}, Lorg/apache/commons/math3/random/RandomDataGenerator;->getRandomGenerator()Lorg/apache/commons/math3/random/RandomGenerator;

    move-result-object v2

    invoke-virtual {p1}, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->getMean()D

    move-result-wide v3

    invoke-virtual {p1}, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->getStandardDeviation()D

    move-result-wide v5

    const-wide v7, 0x3e112e0be826d695L    # 1.0E-9

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lorg/apache/commons/math3/distribution/NormalDistribution;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;DDD)V

    return-object v0

    :cond_1
    :goto_0
    new-instance p0, Lorg/apache/commons/math3/distribution/ConstantRealDistribution;

    invoke-virtual {p1}, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->getMean()D

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/math3/distribution/ConstantRealDistribution;-><init>(D)V

    return-object p0
.end method

.method public getNextValue()D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalStateException;
        }
    .end annotation

    iget-boolean v0, p0, Lorg/apache/commons/math3/random/EmpiricalDistribution;->loaded:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/commons/math3/distribution/AbstractRealDistribution;->sample()D

    move-result-wide v0

    return-wide v0

    :cond_0
    new-instance p0, Lorg/apache/commons/math3/exception/MathIllegalStateException;

    sget-object v0, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->DISTRIBUTION_NOT_LOADED:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/math3/exception/MathIllegalStateException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw p0
.end method

.method public getNumericalMean()D
    .locals 2

    iget-object p0, p0, Lorg/apache/commons/math3/random/EmpiricalDistribution;->sampleStats:Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;

    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->getMean()D

    move-result-wide v0

    return-wide v0
.end method

.method public getNumericalVariance()D
    .locals 2

    iget-object p0, p0, Lorg/apache/commons/math3/random/EmpiricalDistribution;->sampleStats:Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;

    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->getVariance()D

    move-result-wide v0

    return-wide v0
.end method

.method public getSampleStats()Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/random/EmpiricalDistribution;->sampleStats:Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;

    return-object p0
.end method

.method public getSupportLowerBound()D
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/math3/random/EmpiricalDistribution;->min:D

    return-wide v0
.end method

.method public getSupportUpperBound()D
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/math3/random/EmpiricalDistribution;->max:D

    return-wide v0
.end method

.method public getUpperBounds()[D
    .locals 9

    iget v0, p0, Lorg/apache/commons/math3/random/EmpiricalDistribution;->binCount:I

    new-array v0, v0, [D

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lorg/apache/commons/math3/random/EmpiricalDistribution;->binCount:I

    add-int/lit8 v3, v2, -0x1

    if-ge v1, v3, :cond_0

    iget-wide v2, p0, Lorg/apache/commons/math3/random/EmpiricalDistribution;->min:D

    iget-wide v4, p0, Lorg/apache/commons/math3/random/EmpiricalDistribution;->delta:D

    add-int/lit8 v6, v1, 0x1

    int-to-double v7, v6

    mul-double/2addr v4, v7

    add-double/2addr v2, v4

    aput-wide v2, v0, v1

    move v1, v6

    goto :goto_0

    :cond_0
    add-int/lit8 v2, v2, -0x1

    iget-wide v3, p0, Lorg/apache/commons/math3/random/EmpiricalDistribution;->max:D

    aput-wide v3, v0, v2

    return-object v0
.end method

.method public inverseCumulativeProbability(D)D
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    move-object v0, p0

    const-wide/16 v1, 0x0

    cmpg-double v3, p1, v1

    const/4 v4, 0x0

    if-ltz v3, :cond_5

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    cmpl-double v3, p1, v5

    if-gtz v3, :cond_5

    cmpl-double v5, p1, v1

    if-nez v5, :cond_0

    invoke-virtual {p0}, Lorg/apache/commons/math3/random/EmpiricalDistribution;->getSupportLowerBound()D

    move-result-wide v0

    return-wide v0

    :cond_0
    if-nez v3, :cond_1

    invoke-virtual {p0}, Lorg/apache/commons/math3/random/EmpiricalDistribution;->getSupportUpperBound()D

    move-result-wide v0

    return-wide v0

    :cond_1
    :goto_0
    invoke-direct {p0, v4}, Lorg/apache/commons/math3/random/EmpiricalDistribution;->cumBinP(I)D

    move-result-wide v5

    cmpg-double v3, v5, p1

    if-gez v3, :cond_2

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    iget-object v3, v0, Lorg/apache/commons/math3/random/EmpiricalDistribution;->binStats:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;

    invoke-virtual {p0, v3}, Lorg/apache/commons/math3/random/EmpiricalDistribution;->getKernel(Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;)Lorg/apache/commons/math3/distribution/RealDistribution;

    move-result-object v3

    invoke-direct {p0, v4}, Lorg/apache/commons/math3/random/EmpiricalDistribution;->kB(I)D

    move-result-wide v5

    invoke-virtual {p0}, Lorg/apache/commons/math3/random/EmpiricalDistribution;->getUpperBounds()[D

    move-result-object v7

    if-nez v4, :cond_3

    iget-wide v7, v0, Lorg/apache/commons/math3/random/EmpiricalDistribution;->min:D

    goto :goto_1

    :cond_3
    add-int/lit8 v8, v4, -0x1

    aget-wide v7, v7, v8

    :goto_1
    invoke-interface {v3, v7, v8}, Lorg/apache/commons/math3/distribution/RealDistribution;->cumulativeProbability(D)D

    move-result-wide v9

    invoke-direct {p0, v4}, Lorg/apache/commons/math3/random/EmpiricalDistribution;->pB(I)D

    move-result-wide v11

    invoke-direct {p0, v4}, Lorg/apache/commons/math3/random/EmpiricalDistribution;->pBminus(I)D

    move-result-wide v13

    sub-double v13, p1, v13

    cmpg-double v0, v13, v1

    if-gtz v0, :cond_4

    return-wide v7

    :cond_4
    mul-double/2addr v13, v5

    div-double/2addr v13, v11

    add-double/2addr v9, v13

    invoke-interface {v3, v9, v10}, Lorg/apache/commons/math3/distribution/RealDistribution;->inverseCumulativeProbability(D)D

    move-result-wide v0

    return-wide v0

    :cond_5
    new-instance v0, Lorg/apache/commons/math3/exception/OutOfRangeException;

    invoke-static/range {p1 .. p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw v0
.end method

.method public isLoaded()Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/commons/math3/random/EmpiricalDistribution;->loaded:Z

    return p0
.end method

.method public isSupportConnected()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isSupportLowerBoundInclusive()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isSupportUpperBoundInclusive()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public load(Ljava/io/File;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .line 19
    invoke-static {p1}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    const-string v0, "US-ASCII"

    .line 20
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    .line 21
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 22
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, v1, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 23
    :try_start_0
    new-instance v1, Lorg/apache/commons/math3/random/EmpiricalDistribution$d;

    invoke-direct {v1, p0, v2}, Lorg/apache/commons/math3/random/EmpiricalDistribution$d;-><init>(Lorg/apache/commons/math3/random/EmpiricalDistribution;Ljava/io/BufferedReader;)V

    .line 24
    invoke-virtual {v1}, Lorg/apache/commons/math3/random/EmpiricalDistribution$c;->b()V

    .line 25
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 26
    new-instance p1, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, v1, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {p1, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 27
    :try_start_1
    new-instance v0, Lorg/apache/commons/math3/random/EmpiricalDistribution$d;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/math3/random/EmpiricalDistribution$d;-><init>(Lorg/apache/commons/math3/random/EmpiricalDistribution;Ljava/io/BufferedReader;)V

    invoke-direct {p0, v0}, Lorg/apache/commons/math3/random/EmpiricalDistribution;->fillBinStats(Lorg/apache/commons/math3/random/EmpiricalDistribution$c;)V

    const/4 v0, 0x1

    .line 28
    iput-boolean v0, p0, Lorg/apache/commons/math3/random/EmpiricalDistribution;->loaded:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 29
    :try_start_2
    invoke-virtual {p1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    return-void

    :catchall_0
    move-exception p0

    move-object v2, p1

    goto :goto_0

    :catchall_1
    move-exception p0

    :goto_0
    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 30
    :catch_1
    throw p0
.end method

.method public load(Ljava/net/URL;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/ZeroException;
        }
    .end annotation

    .line 6
    invoke-static {p1}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    const-string v0, "US-ASCII"

    .line 7
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    .line 8
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-virtual {p1}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 9
    :try_start_0
    new-instance v2, Lorg/apache/commons/math3/random/EmpiricalDistribution$d;

    invoke-direct {v2, p0, v1}, Lorg/apache/commons/math3/random/EmpiricalDistribution$d;-><init>(Lorg/apache/commons/math3/random/EmpiricalDistribution;Ljava/io/BufferedReader;)V

    .line 10
    invoke-virtual {v2}, Lorg/apache/commons/math3/random/EmpiricalDistribution$c;->b()V

    .line 11
    iget-object v2, p0, Lorg/apache/commons/math3/random/EmpiricalDistribution;->sampleStats:Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;

    invoke-virtual {v2}, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->getN()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 12
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-virtual {p1}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object p1

    invoke-direct {v3, p1, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 13
    :try_start_1
    new-instance p1, Lorg/apache/commons/math3/random/EmpiricalDistribution$d;

    invoke-direct {p1, p0, v2}, Lorg/apache/commons/math3/random/EmpiricalDistribution$d;-><init>(Lorg/apache/commons/math3/random/EmpiricalDistribution;Ljava/io/BufferedReader;)V

    invoke-direct {p0, p1}, Lorg/apache/commons/math3/random/EmpiricalDistribution;->fillBinStats(Lorg/apache/commons/math3/random/EmpiricalDistribution$c;)V

    const/4 p1, 0x1

    .line 14
    iput-boolean p1, p0, Lorg/apache/commons/math3/random/EmpiricalDistribution;->loaded:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 15
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    return-void

    :catchall_0
    move-exception p0

    move-object v1, v2

    goto :goto_0

    .line 16
    :cond_0
    :try_start_3
    new-instance p0, Lorg/apache/commons/math3/exception/ZeroException;

    sget-object v0, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->URL_CONTAINS_NO_DATA:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lorg/apache/commons/math3/exception/ZeroException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p0

    .line 17
    :goto_0
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 18
    :catch_1
    throw p0
.end method

.method public load([D)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/apache/commons/math3/random/EmpiricalDistribution$b;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/math3/random/EmpiricalDistribution$b;-><init>(Lorg/apache/commons/math3/random/EmpiricalDistribution;[D)V

    .line 2
    :try_start_0
    invoke-virtual {v0}, Lorg/apache/commons/math3/random/EmpiricalDistribution$c;->b()V

    .line 3
    new-instance v0, Lorg/apache/commons/math3/random/EmpiricalDistribution$b;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/math3/random/EmpiricalDistribution$b;-><init>(Lorg/apache/commons/math3/random/EmpiricalDistribution;[D)V

    invoke-direct {p0, v0}, Lorg/apache/commons/math3/random/EmpiricalDistribution;->fillBinStats(Lorg/apache/commons/math3/random/EmpiricalDistribution$c;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lorg/apache/commons/math3/random/EmpiricalDistribution;->loaded:Z

    return-void

    .line 5
    :catch_0
    new-instance p0, Lorg/apache/commons/math3/exception/MathInternalError;

    invoke-direct {p0}, Lorg/apache/commons/math3/exception/MathInternalError;-><init>()V

    throw p0
.end method

.method public probability(D)D
    .locals 0

    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public reSeed(J)V
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/random/EmpiricalDistribution;->randomData:Lorg/apache/commons/math3/random/RandomDataGenerator;

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/random/RandomDataGenerator;->reSeed(J)V

    return-void
.end method

.method public reseedRandomGenerator(J)V
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/random/EmpiricalDistribution;->randomData:Lorg/apache/commons/math3/random/RandomDataGenerator;

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/random/RandomDataGenerator;->reSeed(J)V

    return-void
.end method
