.class public Lorg/apache/commons/math3/stat/descriptive/moment/Variance;
.super Lorg/apache/commons/math3/stat/descriptive/AbstractStorelessUnivariateStatistic;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;
.implements Lorg/apache/commons/math3/stat/descriptive/WeightedEvaluation;


# static fields
.field private static final serialVersionUID:J = -0x7e7431d0a4eb983aL


# instance fields
.field protected incMoment:Z

.field private isBiasCorrected:Z

.field protected moment:Lorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/apache/commons/math3/stat/descriptive/AbstractStorelessUnivariateStatistic;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->moment:Lorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->incMoment:Z

    .line 4
    iput-boolean v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->isBiasCorrected:Z

    .line 5
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->moment:Lorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;)V
    .locals 1

    .line 6
    invoke-direct {p0}, Lorg/apache/commons/math3/stat/descriptive/AbstractStorelessUnivariateStatistic;-><init>()V

    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->isBiasCorrected:Z

    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->incMoment:Z

    .line 9
    iput-object p1, p0, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->moment:Lorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/stat/descriptive/moment/Variance;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .line 20
    invoke-direct {p0}, Lorg/apache/commons/math3/stat/descriptive/AbstractStorelessUnivariateStatistic;-><init>()V

    const/4 v0, 0x0

    .line 21
    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->moment:Lorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;

    const/4 v0, 0x1

    .line 22
    iput-boolean v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->incMoment:Z

    .line 23
    iput-boolean v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->isBiasCorrected:Z

    .line 24
    invoke-static {p1, p0}, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->copy(Lorg/apache/commons/math3/stat/descriptive/moment/Variance;Lorg/apache/commons/math3/stat/descriptive/moment/Variance;)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    .line 10
    invoke-direct {p0}, Lorg/apache/commons/math3/stat/descriptive/AbstractStorelessUnivariateStatistic;-><init>()V

    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->moment:Lorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;

    const/4 v0, 0x1

    .line 12
    iput-boolean v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->incMoment:Z

    .line 13
    iput-boolean v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->isBiasCorrected:Z

    .line 14
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->moment:Lorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;

    .line 15
    iput-boolean p1, p0, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->isBiasCorrected:Z

    return-void
.end method

.method public constructor <init>(ZLorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;)V
    .locals 1

    .line 16
    invoke-direct {p0}, Lorg/apache/commons/math3/stat/descriptive/AbstractStorelessUnivariateStatistic;-><init>()V

    const/4 v0, 0x0

    .line 17
    iput-boolean v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->incMoment:Z

    .line 18
    iput-object p2, p0, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->moment:Lorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;

    .line 19
    iput-boolean p1, p0, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->isBiasCorrected:Z

    return-void
.end method

.method public static copy(Lorg/apache/commons/math3/stat/descriptive/moment/Variance;Lorg/apache/commons/math3/stat/descriptive/moment/Variance;)V
    .locals 1
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
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->moment:Lorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;

    invoke-virtual {v0}, Lorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;->copy()Lorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;

    move-result-object v0

    iput-object v0, p1, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->moment:Lorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;

    .line 9
    iget-boolean v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->isBiasCorrected:Z

    iput-boolean v0, p1, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->isBiasCorrected:Z

    .line 10
    iget-boolean p0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->incMoment:Z

    iput-boolean p0, p1, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->incMoment:Z

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    iget-boolean v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->incMoment:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->moment:Lorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;

    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;->clear()V

    :cond_0
    return-void
.end method

.method public bridge synthetic copy()Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->copy()Lorg/apache/commons/math3/stat/descriptive/moment/Variance;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic copy()Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->copy()Lorg/apache/commons/math3/stat/descriptive/moment/Variance;

    move-result-object p0

    return-object p0
.end method

.method public copy()Lorg/apache/commons/math3/stat/descriptive/moment/Variance;
    .locals 1

    .line 3
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;-><init>()V

    .line 4
    invoke-static {p0, v0}, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->copy(Lorg/apache/commons/math3/stat/descriptive/moment/Variance;Lorg/apache/commons/math3/stat/descriptive/moment/Variance;)V

    return-object v0
.end method

.method public evaluate([D)D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1
    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->evaluate([DII)D

    move-result-wide p0

    return-wide p0

    .line 2
    :cond_0
    new-instance p0, Lorg/apache/commons/math3/exception/NullArgumentException;

    sget-object p1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->INPUT_ARRAY:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    new-array v0, v0, [Ljava/lang/Object;

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw p0
.end method

.method public evaluate([DD)D
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    const/4 v4, 0x0

    .line 17
    array-length v5, p1

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->evaluate([DDII)D

    move-result-wide p0

    return-wide p0
.end method

.method public evaluate([DDII)D
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .line 14
    invoke-virtual {p0, p1, p4, p5}, Lorg/apache/commons/math3/stat/descriptive/AbstractUnivariateStatistic;->test([DII)Z

    move-result v0

    if-eqz v0, :cond_3

    const-wide/16 v0, 0x0

    const/4 v2, 0x1

    if-ne p5, v2, :cond_0

    goto :goto_2

    :cond_0
    if-le p5, v2, :cond_3

    move v4, p4

    move-wide v2, v0

    :goto_0
    add-int v5, p4, p5

    if-ge v4, v5, :cond_1

    .line 15
    aget-wide v5, p1, v4

    sub-double/2addr v5, p2

    mul-double v7, v5, v5

    add-double/2addr v0, v7

    add-double/2addr v2, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    int-to-double p1, p5

    .line 16
    iget-boolean p0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->isBiasCorrected:Z

    if-eqz p0, :cond_2

    mul-double/2addr v2, v2

    div-double/2addr v2, p1

    sub-double/2addr v0, v2

    const-wide/high16 p3, 0x3ff0000000000000L    # 1.0

    sub-double/2addr p1, p3

    goto :goto_1

    :cond_2
    mul-double/2addr v2, v2

    div-double/2addr v2, p1

    sub-double/2addr v0, v2

    :goto_1
    div-double/2addr v0, p1

    goto :goto_2

    :cond_3
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    :goto_2
    return-wide v0
.end method

.method public evaluate([DII)D
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/math3/stat/descriptive/AbstractUnivariateStatistic;->test([DII)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->clear()V

    const/4 v0, 0x1

    if-ne p3, v0, :cond_0

    const-wide/16 p0, 0x0

    goto :goto_0

    :cond_0
    if-le p3, v0, :cond_1

    .line 5
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/moment/Mean;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/descriptive/moment/Mean;-><init>()V

    .line 6
    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/commons/math3/stat/descriptive/moment/Mean;->evaluate([DII)D

    move-result-wide v3

    move-object v1, p0

    move-object v2, p1

    move v5, p2

    move v6, p3

    .line 7
    invoke-virtual/range {v1 .. v6}, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->evaluate([DDII)D

    move-result-wide p0

    goto :goto_0

    :cond_1
    const-wide/high16 p0, 0x7ff8000000000000L    # Double.NaN

    :goto_0
    return-wide p0
.end method

.method public evaluate([D[D)D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .line 13
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v1, v0}, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->evaluate([D[DII)D

    move-result-wide p0

    return-wide p0
.end method

.method public evaluate([D[DD)D
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    const/4 v5, 0x0

    .line 23
    array-length v6, p1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    invoke-virtual/range {v0 .. v6}, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->evaluate([D[DDII)D

    move-result-wide p0

    return-wide p0
.end method

.method public evaluate([D[DDII)D
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p5

    move/from16 v4, p6

    .line 18
    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/apache/commons/math3/stat/descriptive/AbstractUnivariateStatistic;->test([D[DII)Z

    move-result v5

    if-eqz v5, :cond_4

    const-wide/16 v5, 0x0

    const/4 v7, 0x1

    if-ne v4, v7, :cond_0

    goto :goto_3

    :cond_0
    if-le v4, v7, :cond_4

    move v7, v3

    move-wide v8, v5

    move-wide v10, v8

    :goto_0
    add-int v12, v3, v4

    if-ge v7, v12, :cond_1

    .line 19
    aget-wide v12, v1, v7

    sub-double v12, v12, p3

    .line 20
    aget-wide v14, v2, v7

    mul-double v16, v12, v12

    mul-double v16, v16, v14

    add-double v8, v8, v16

    mul-double/2addr v14, v12

    add-double/2addr v10, v14

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-ge v3, v12, :cond_2

    .line 21
    aget-wide v13, v2, v3

    add-double/2addr v5, v13

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 22
    :cond_2
    iget-boolean v0, v0, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->isBiasCorrected:Z

    if-eqz v0, :cond_3

    mul-double/2addr v10, v10

    div-double/2addr v10, v5

    sub-double/2addr v8, v10

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v5, v0

    goto :goto_2

    :cond_3
    mul-double/2addr v10, v10

    div-double/2addr v10, v5

    sub-double/2addr v8, v10

    :goto_2
    div-double v5, v8, v5

    goto :goto_3

    :cond_4
    const-wide/high16 v5, 0x7ff8000000000000L    # Double.NaN

    :goto_3
    return-wide v5
.end method

.method public evaluate([D[DII)D
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .line 8
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/commons/math3/stat/descriptive/AbstractUnivariateStatistic;->test([D[DII)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->clear()V

    const/4 v0, 0x1

    if-ne p4, v0, :cond_0

    const-wide/16 p0, 0x0

    goto :goto_0

    :cond_0
    if-le p4, v0, :cond_1

    .line 10
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/moment/Mean;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/descriptive/moment/Mean;-><init>()V

    .line 11
    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/apache/commons/math3/stat/descriptive/moment/Mean;->evaluate([D[DII)D

    move-result-wide v4

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v6, p3

    move v7, p4

    .line 12
    invoke-virtual/range {v1 .. v7}, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->evaluate([D[DDII)D

    move-result-wide p0

    goto :goto_0

    :cond_1
    const-wide/high16 p0, 0x7ff8000000000000L    # Double.NaN

    :goto_0
    return-wide p0
.end method

.method public getN()J
    .locals 2

    iget-object p0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->moment:Lorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;

    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;->getN()J

    move-result-wide v0

    return-wide v0
.end method

.method public getResult()D
    .locals 7

    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->moment:Lorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;

    iget-wide v1, v0, Lorg/apache/commons/math3/stat/descriptive/moment/FirstMoment;->n:J

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-nez v3, :cond_0

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    return-wide v0

    :cond_0
    const-wide/16 v3, 0x1

    cmp-long v3, v1, v3

    if-nez v3, :cond_1

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_1
    iget-boolean p0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->isBiasCorrected:Z

    if-eqz p0, :cond_2

    iget-wide v3, v0, Lorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;->m2:D

    long-to-double v0, v1

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v0, v5

    :goto_0
    div-double/2addr v3, v0

    return-wide v3

    :cond_2
    iget-wide v3, v0, Lorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;->m2:D

    long-to-double v0, v1

    goto :goto_0
.end method

.method public increment(D)V
    .locals 1

    iget-boolean v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->incMoment:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->moment:Lorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;->increment(D)V

    :cond_0
    return-void
.end method

.method public isBiasCorrected()Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->isBiasCorrected:Z

    return p0
.end method

.method public setBiasCorrected(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->isBiasCorrected:Z

    return-void
.end method
