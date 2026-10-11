.class public Lorg/apache/commons/math3/random/ValueServer;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final CONSTANT_MODE:I = 0x5

.field public static final DIGEST_MODE:I = 0x0

.field public static final EXPONENTIAL_MODE:I = 0x3

.field public static final GAUSSIAN_MODE:I = 0x4

.field public static final REPLAY_MODE:I = 0x1

.field public static final UNIFORM_MODE:I = 0x2


# instance fields
.field public a:I

.field public b:Ljava/net/URL;

.field public c:D

.field public d:D

.field public e:Lorg/apache/commons/math3/random/EmpiricalDistribution;

.field public f:Ljava/io/BufferedReader;

.field public final g:Lorg/apache/commons/math3/random/RandomDataGenerator;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    .line 2
    iput v0, p0, Lorg/apache/commons/math3/random/ValueServer;->a:I

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lorg/apache/commons/math3/random/ValueServer;->b:Ljava/net/URL;

    const-wide/16 v1, 0x0

    .line 4
    iput-wide v1, p0, Lorg/apache/commons/math3/random/ValueServer;->c:D

    .line 5
    iput-wide v1, p0, Lorg/apache/commons/math3/random/ValueServer;->d:D

    .line 6
    iput-object v0, p0, Lorg/apache/commons/math3/random/ValueServer;->e:Lorg/apache/commons/math3/random/EmpiricalDistribution;

    .line 7
    iput-object v0, p0, Lorg/apache/commons/math3/random/ValueServer;->f:Ljava/io/BufferedReader;

    .line 8
    new-instance v0, Lorg/apache/commons/math3/random/RandomDataGenerator;

    invoke-direct {v0}, Lorg/apache/commons/math3/random/RandomDataGenerator;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/random/ValueServer;->g:Lorg/apache/commons/math3/random/RandomDataGenerator;

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/random/RandomDataImpl;)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    .line 10
    iput v0, p0, Lorg/apache/commons/math3/random/ValueServer;->a:I

    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Lorg/apache/commons/math3/random/ValueServer;->b:Ljava/net/URL;

    const-wide/16 v1, 0x0

    .line 12
    iput-wide v1, p0, Lorg/apache/commons/math3/random/ValueServer;->c:D

    .line 13
    iput-wide v1, p0, Lorg/apache/commons/math3/random/ValueServer;->d:D

    .line 14
    iput-object v0, p0, Lorg/apache/commons/math3/random/ValueServer;->e:Lorg/apache/commons/math3/random/EmpiricalDistribution;

    .line 15
    iput-object v0, p0, Lorg/apache/commons/math3/random/ValueServer;->f:Ljava/io/BufferedReader;

    .line 16
    invoke-virtual {p1}, Lorg/apache/commons/math3/random/RandomDataImpl;->getDelegate()Lorg/apache/commons/math3/random/RandomDataGenerator;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/math3/random/ValueServer;->g:Lorg/apache/commons/math3/random/RandomDataGenerator;

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/random/RandomGenerator;)V
    .locals 3

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    .line 18
    iput v0, p0, Lorg/apache/commons/math3/random/ValueServer;->a:I

    const/4 v0, 0x0

    .line 19
    iput-object v0, p0, Lorg/apache/commons/math3/random/ValueServer;->b:Ljava/net/URL;

    const-wide/16 v1, 0x0

    .line 20
    iput-wide v1, p0, Lorg/apache/commons/math3/random/ValueServer;->c:D

    .line 21
    iput-wide v1, p0, Lorg/apache/commons/math3/random/ValueServer;->d:D

    .line 22
    iput-object v0, p0, Lorg/apache/commons/math3/random/ValueServer;->e:Lorg/apache/commons/math3/random/EmpiricalDistribution;

    .line 23
    iput-object v0, p0, Lorg/apache/commons/math3/random/ValueServer;->f:Ljava/io/BufferedReader;

    .line 24
    new-instance v0, Lorg/apache/commons/math3/random/RandomDataGenerator;

    invoke-direct {v0, p1}, Lorg/apache/commons/math3/random/RandomDataGenerator;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;)V

    iput-object v0, p0, Lorg/apache/commons/math3/random/ValueServer;->g:Lorg/apache/commons/math3/random/RandomDataGenerator;

    return-void
.end method


# virtual methods
.method public final a()D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalStateException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/commons/math3/random/ValueServer;->e:Lorg/apache/commons/math3/random/EmpiricalDistribution;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/apache/commons/math3/random/EmpiricalDistribution;->getBinStats()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/apache/commons/math3/random/ValueServer;->e:Lorg/apache/commons/math3/random/EmpiricalDistribution;

    invoke-virtual {p0}, Lorg/apache/commons/math3/random/EmpiricalDistribution;->getNextValue()D

    move-result-wide v0

    return-wide v0

    :cond_0
    new-instance p0, Lorg/apache/commons/math3/exception/MathIllegalStateException;

    sget-object v0, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->DIGEST_NOT_INITIALIZED:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/math3/exception/MathIllegalStateException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw p0
.end method

.method public final b()D
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/commons/math3/random/ValueServer;->g:Lorg/apache/commons/math3/random/RandomDataGenerator;

    iget-wide v1, p0, Lorg/apache/commons/math3/random/ValueServer;->c:D

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/math3/random/RandomDataGenerator;->nextExponential(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public final c()D
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/commons/math3/random/ValueServer;->g:Lorg/apache/commons/math3/random/RandomDataGenerator;

    iget-wide v1, p0, Lorg/apache/commons/math3/random/ValueServer;->c:D

    iget-wide v3, p0, Lorg/apache/commons/math3/random/ValueServer;->d:D

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/apache/commons/math3/random/RandomDataGenerator;->nextGaussian(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public closeReplayFile()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/commons/math3/random/ValueServer;->f:Ljava/io/BufferedReader;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/math3/random/ValueServer;->f:Ljava/io/BufferedReader;

    :cond_0
    return-void
.end method

.method public computeDistribution()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/math3/exception/ZeroException;,
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    const/16 v0, 0x3e8

    .line 1
    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/random/ValueServer;->computeDistribution(I)V

    return-void
.end method

.method public computeDistribution(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Ljava/io/IOException;,
            Lorg/apache/commons/math3/exception/ZeroException;
        }
    .end annotation

    .line 2
    new-instance v0, Lorg/apache/commons/math3/random/EmpiricalDistribution;

    iget-object v1, p0, Lorg/apache/commons/math3/random/ValueServer;->g:Lorg/apache/commons/math3/random/RandomDataGenerator;

    invoke-virtual {v1}, Lorg/apache/commons/math3/random/RandomDataGenerator;->getRandomGenerator()Lorg/apache/commons/math3/random/RandomGenerator;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lorg/apache/commons/math3/random/EmpiricalDistribution;-><init>(ILorg/apache/commons/math3/random/RandomGenerator;)V

    iput-object v0, p0, Lorg/apache/commons/math3/random/ValueServer;->e:Lorg/apache/commons/math3/random/EmpiricalDistribution;

    .line 3
    iget-object p1, p0, Lorg/apache/commons/math3/random/ValueServer;->b:Ljava/net/URL;

    invoke-virtual {v0, p1}, Lorg/apache/commons/math3/random/EmpiricalDistribution;->load(Ljava/net/URL;)V

    .line 4
    iget-object p1, p0, Lorg/apache/commons/math3/random/ValueServer;->e:Lorg/apache/commons/math3/random/EmpiricalDistribution;

    invoke-virtual {p1}, Lorg/apache/commons/math3/random/EmpiricalDistribution;->getSampleStats()Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;

    move-result-object p1

    invoke-interface {p1}, Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;->getMean()D

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/commons/math3/random/ValueServer;->c:D

    .line 5
    iget-object p1, p0, Lorg/apache/commons/math3/random/ValueServer;->e:Lorg/apache/commons/math3/random/EmpiricalDistribution;

    invoke-virtual {p1}, Lorg/apache/commons/math3/random/EmpiricalDistribution;->getSampleStats()Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;

    move-result-object p1

    invoke-interface {p1}, Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;->getStandardDeviation()D

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/commons/math3/random/ValueServer;->d:D

    return-void
.end method

.method public final d()D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/math3/exception/MathIllegalStateException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/commons/math3/random/ValueServer;->f:Ljava/io/BufferedReader;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/commons/math3/random/ValueServer;->resetReplayFile()V

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/math3/random/ValueServer;->f:Ljava/io/BufferedReader;

    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lorg/apache/commons/math3/random/ValueServer;->closeReplayFile()V

    invoke-virtual {p0}, Lorg/apache/commons/math3/random/ValueServer;->resetReplayFile()V

    iget-object v0, p0, Lorg/apache/commons/math3/random/ValueServer;->f:Ljava/io/BufferedReader;

    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Lorg/apache/commons/math3/exception/MathIllegalStateException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->URL_CONTAINS_NO_DATA:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    iget-object p0, p0, Lorg/apache/commons/math3/random/ValueServer;->b:Ljava/net/URL;

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lorg/apache/commons/math3/exception/MathIllegalStateException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v0

    :cond_2
    :goto_0
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method public final e()D
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/commons/math3/random/ValueServer;->g:Lorg/apache/commons/math3/random/RandomDataGenerator;

    const-wide/high16 v1, 0x4000000000000000L    # 2.0

    iget-wide v3, p0, Lorg/apache/commons/math3/random/ValueServer;->c:D

    mul-double/2addr v3, v1

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/apache/commons/math3/random/RandomDataGenerator;->nextUniform(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public fill([D)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/math3/exception/MathIllegalStateException;,
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Lorg/apache/commons/math3/random/ValueServer;->getNext()D

    move-result-wide v1

    aput-wide v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public fill(I)[D
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/math3/exception/MathIllegalStateException;,
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .line 3
    new-array v0, p1, [D

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    .line 4
    invoke-virtual {p0}, Lorg/apache/commons/math3/random/ValueServer;->getNext()D

    move-result-wide v2

    aput-wide v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getEmpiricalDistribution()Lorg/apache/commons/math3/random/EmpiricalDistribution;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/random/ValueServer;->e:Lorg/apache/commons/math3/random/EmpiricalDistribution;

    return-object p0
.end method

.method public getMode()I
    .locals 0

    iget p0, p0, Lorg/apache/commons/math3/random/ValueServer;->a:I

    return p0
.end method

.method public getMu()D
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/math3/random/ValueServer;->c:D

    return-wide v0
.end method

.method public getNext()D
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/math3/exception/MathIllegalStateException;,
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    move-object/from16 v0, p0

    iget v1, v0, Lorg/apache/commons/math3/random/ValueServer;->a:I

    if-eqz v1, :cond_5

    const/4 v2, 0x1

    if-eq v1, v2, :cond_4

    const/4 v3, 0x2

    if-eq v1, v3, :cond_3

    const/4 v4, 0x3

    if-eq v1, v4, :cond_2

    const/4 v5, 0x4

    if-eq v1, v5, :cond_1

    const/4 v6, 0x5

    if-ne v1, v6, :cond_0

    iget-wide v0, v0, Lorg/apache/commons/math3/random/ValueServer;->c:D

    return-wide v0

    :cond_0
    new-instance v1, Lorg/apache/commons/math3/exception/MathIllegalStateException;

    sget-object v7, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->UNKNOWN_MODE:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    iget v0, v0, Lorg/apache/commons/math3/random/ValueServer;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v9, "DIGEST_MODE"

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const-string v11, "REPLAY_MODE"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const-string v13, "UNIFORM_MODE"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "EXPONENTIAL_MODE"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    const-string v17, "GAUSSIAN_MODE"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    const-string v19, "CONSTANT_MODE"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    filled-new-array/range {v8 .. v20}, [Ljava/lang/Object;

    move-result-object v0

    invoke-direct {v1, v7, v0}, Lorg/apache/commons/math3/exception/MathIllegalStateException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v1

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/random/ValueServer;->c()D

    move-result-wide v0

    return-wide v0

    :cond_2
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/random/ValueServer;->b()D

    move-result-wide v0

    return-wide v0

    :cond_3
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/random/ValueServer;->e()D

    move-result-wide v0

    return-wide v0

    :cond_4
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/random/ValueServer;->d()D

    move-result-wide v0

    return-wide v0

    :cond_5
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/random/ValueServer;->a()D

    move-result-wide v0

    return-wide v0
.end method

.method public getSigma()D
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/math3/random/ValueServer;->d:D

    return-wide v0
.end method

.method public getValuesFileURL()Ljava/net/URL;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/random/ValueServer;->b:Ljava/net/URL;

    return-object p0
.end method

.method public reSeed(J)V
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/random/ValueServer;->g:Lorg/apache/commons/math3/random/RandomDataGenerator;

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/random/RandomDataGenerator;->reSeed(J)V

    return-void
.end method

.method public resetReplayFile()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/commons/math3/random/ValueServer;->f:Ljava/io/BufferedReader;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/math3/random/ValueServer;->f:Ljava/io/BufferedReader;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    iget-object v2, p0, Lorg/apache/commons/math3/random/ValueServer;->b:Ljava/net/URL;

    invoke-virtual {v2}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-direct {v1, v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    iput-object v0, p0, Lorg/apache/commons/math3/random/ValueServer;->f:Ljava/io/BufferedReader;

    return-void
.end method

.method public setMode(I)V
    .locals 0

    iput p1, p0, Lorg/apache/commons/math3/random/ValueServer;->a:I

    return-void
.end method

.method public setMu(D)V
    .locals 0

    iput-wide p1, p0, Lorg/apache/commons/math3/random/ValueServer;->c:D

    return-void
.end method

.method public setSigma(D)V
    .locals 0

    iput-wide p1, p0, Lorg/apache/commons/math3/random/ValueServer;->d:D

    return-void
.end method

.method public setValuesFileURL(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/commons/math3/random/ValueServer;->b:Ljava/net/URL;

    return-void
.end method

.method public setValuesFileURL(Ljava/net/URL;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lorg/apache/commons/math3/random/ValueServer;->b:Ljava/net/URL;

    return-void
.end method
