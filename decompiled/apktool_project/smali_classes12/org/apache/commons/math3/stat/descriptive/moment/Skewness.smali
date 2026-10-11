.class public Lorg/apache/commons/math3/stat/descriptive/moment/Skewness;
.super Lorg/apache/commons/math3/stat/descriptive/AbstractStorelessUnivariateStatistic;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x628eddd741837198L


# instance fields
.field protected incMoment:Z

.field protected moment:Lorg/apache/commons/math3/stat/descriptive/moment/ThirdMoment;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/apache/commons/math3/stat/descriptive/AbstractStorelessUnivariateStatistic;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/Skewness;->moment:Lorg/apache/commons/math3/stat/descriptive/moment/ThirdMoment;

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/Skewness;->incMoment:Z

    .line 4
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/moment/ThirdMoment;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/descriptive/moment/ThirdMoment;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/Skewness;->moment:Lorg/apache/commons/math3/stat/descriptive/moment/ThirdMoment;

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/stat/descriptive/moment/Skewness;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .line 8
    invoke-direct {p0}, Lorg/apache/commons/math3/stat/descriptive/AbstractStorelessUnivariateStatistic;-><init>()V

    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/Skewness;->moment:Lorg/apache/commons/math3/stat/descriptive/moment/ThirdMoment;

    .line 10
    invoke-static {p1, p0}, Lorg/apache/commons/math3/stat/descriptive/moment/Skewness;->copy(Lorg/apache/commons/math3/stat/descriptive/moment/Skewness;Lorg/apache/commons/math3/stat/descriptive/moment/Skewness;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/stat/descriptive/moment/ThirdMoment;)V
    .locals 1

    .line 5
    invoke-direct {p0}, Lorg/apache/commons/math3/stat/descriptive/AbstractStorelessUnivariateStatistic;-><init>()V

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/Skewness;->incMoment:Z

    .line 7
    iput-object p1, p0, Lorg/apache/commons/math3/stat/descriptive/moment/Skewness;->moment:Lorg/apache/commons/math3/stat/descriptive/moment/ThirdMoment;

    return-void
.end method

.method public static copy(Lorg/apache/commons/math3/stat/descriptive/moment/Skewness;Lorg/apache/commons/math3/stat/descriptive/moment/Skewness;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .line 5
    invoke-static {p0}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 6
    invoke-static {p1}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 7
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/AbstractUnivariateStatistic;->getDataRef()[D

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/apache/commons/math3/stat/descriptive/AbstractUnivariateStatistic;->setData([D)V

    .line 8
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/moment/ThirdMoment;

    iget-object v1, p0, Lorg/apache/commons/math3/stat/descriptive/moment/Skewness;->moment:Lorg/apache/commons/math3/stat/descriptive/moment/ThirdMoment;

    invoke-virtual {v1}, Lorg/apache/commons/math3/stat/descriptive/moment/ThirdMoment;->copy()Lorg/apache/commons/math3/stat/descriptive/moment/ThirdMoment;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/stat/descriptive/moment/ThirdMoment;-><init>(Lorg/apache/commons/math3/stat/descriptive/moment/ThirdMoment;)V

    iput-object v0, p1, Lorg/apache/commons/math3/stat/descriptive/moment/Skewness;->moment:Lorg/apache/commons/math3/stat/descriptive/moment/ThirdMoment;

    .line 9
    iget-boolean p0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/Skewness;->incMoment:Z

    iput-boolean p0, p1, Lorg/apache/commons/math3/stat/descriptive/moment/Skewness;->incMoment:Z

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    iget-boolean v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/Skewness;->incMoment:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/Skewness;->moment:Lorg/apache/commons/math3/stat/descriptive/moment/ThirdMoment;

    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/moment/ThirdMoment;->clear()V

    :cond_0
    return-void
.end method

.method public bridge synthetic copy()Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/moment/Skewness;->copy()Lorg/apache/commons/math3/stat/descriptive/moment/Skewness;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic copy()Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/moment/Skewness;->copy()Lorg/apache/commons/math3/stat/descriptive/moment/Skewness;

    move-result-object p0

    return-object p0
.end method

.method public copy()Lorg/apache/commons/math3/stat/descriptive/moment/Skewness;
    .locals 1

    .line 3
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/moment/Skewness;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/descriptive/moment/Skewness;-><init>()V

    .line 4
    invoke-static {p0, v0}, Lorg/apache/commons/math3/stat/descriptive/moment/Skewness;->copy(Lorg/apache/commons/math3/stat/descriptive/moment/Skewness;Lorg/apache/commons/math3/stat/descriptive/moment/Skewness;)V

    return-object v0
.end method

.method public evaluate([DII)D
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual/range {p0 .. p3}, Lorg/apache/commons/math3/stat/descriptive/AbstractUnivariateStatistic;->test([DII)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x2

    if-le v2, v3, :cond_2

    new-instance v3, Lorg/apache/commons/math3/stat/descriptive/moment/Mean;

    invoke-direct {v3}, Lorg/apache/commons/math3/stat/descriptive/moment/Mean;-><init>()V

    invoke-virtual {v3, v0, v1, v2}, Lorg/apache/commons/math3/stat/descriptive/moment/Mean;->evaluate([DII)D

    move-result-wide v3

    const-wide/16 v5, 0x0

    move v7, v1

    move-wide v8, v5

    move-wide v10, v8

    :goto_0
    add-int v12, v1, v2

    if-ge v7, v12, :cond_0

    aget-wide v12, v0, v7

    sub-double/2addr v12, v3

    mul-double v14, v12, v12

    add-double/2addr v8, v14

    add-double/2addr v10, v12

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_0
    mul-double/2addr v10, v10

    int-to-double v13, v2

    div-double/2addr v10, v13

    sub-double/2addr v8, v10

    add-int/lit8 v2, v2, -0x1

    int-to-double v10, v2

    div-double/2addr v8, v10

    :goto_1
    if-ge v1, v12, :cond_1

    aget-wide v10, v0, v1

    sub-double/2addr v10, v3

    mul-double v15, v10, v10

    mul-double/2addr v15, v10

    add-double/2addr v5, v15

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    invoke-static {v8, v9}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v0

    mul-double/2addr v8, v0

    div-double/2addr v5, v8

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    sub-double v0, v13, v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    sub-double v2, v13, v2

    mul-double/2addr v0, v2

    div-double/2addr v13, v0

    mul-double/2addr v13, v5

    goto :goto_2

    :cond_2
    const-wide/high16 v13, 0x7ff8000000000000L    # Double.NaN

    :goto_2
    return-wide v13
.end method

.method public getN()J
    .locals 2

    iget-object p0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/Skewness;->moment:Lorg/apache/commons/math3/stat/descriptive/moment/ThirdMoment;

    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;->getN()J

    move-result-wide v0

    return-wide v0
.end method

.method public getResult()D
    .locals 11

    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/Skewness;->moment:Lorg/apache/commons/math3/stat/descriptive/moment/ThirdMoment;

    iget-wide v1, v0, Lorg/apache/commons/math3/stat/descriptive/moment/FirstMoment;->n:J

    const-wide/16 v3, 0x3

    cmp-long v3, v1, v3

    if-gez v3, :cond_0

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    return-wide v0

    :cond_0
    iget-wide v3, v0, Lorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;->m2:D

    const-wide/16 v5, 0x1

    sub-long/2addr v1, v5

    long-to-double v1, v1

    div-double/2addr v3, v1

    const-wide v1, 0x3bfd83c94fb6d2acL    # 1.0E-19

    cmpg-double v1, v3, v1

    if-gez v1, :cond_1

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_1
    invoke-virtual {v0}, Lorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;->getN()J

    move-result-wide v0

    long-to-double v0, v0

    iget-object p0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/Skewness;->moment:Lorg/apache/commons/math3/stat/descriptive/moment/ThirdMoment;

    iget-wide v5, p0, Lorg/apache/commons/math3/stat/descriptive/moment/ThirdMoment;->m3:D

    mul-double/2addr v5, v0

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    sub-double v7, v0, v7

    const-wide/high16 v9, 0x4000000000000000L    # 2.0

    sub-double/2addr v0, v9

    mul-double/2addr v7, v0

    invoke-static {v3, v4}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v0

    mul-double/2addr v7, v0

    mul-double/2addr v7, v3

    div-double/2addr v5, v7

    return-wide v5
.end method

.method public increment(D)V
    .locals 1

    iget-boolean v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/Skewness;->incMoment:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/Skewness;->moment:Lorg/apache/commons/math3/stat/descriptive/moment/ThirdMoment;

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/stat/descriptive/moment/ThirdMoment;->increment(D)V

    :cond_0
    return-void
.end method
