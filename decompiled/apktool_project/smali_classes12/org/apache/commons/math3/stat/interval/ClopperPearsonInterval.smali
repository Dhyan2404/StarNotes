.class public Lorg/apache/commons/math3/stat/interval/ClopperPearsonInterval;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/math3/stat/interval/BinomialConfidenceInterval;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createInterval(IID)Lorg/apache/commons/math3/stat/interval/ConfidenceInterval;
    .locals 14

    move/from16 v0, p2

    invoke-static/range {p1 .. p4}, Lorg/apache/commons/math3/stat/interval/IntervalUtils;->a(IID)V

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    sub-double v3, v1, p3

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    div-double/2addr v3, v5

    new-instance v5, Lorg/apache/commons/math3/distribution/FDistribution;

    sub-int v6, p1, v0

    add-int/lit8 v7, v6, 0x1

    mul-int/lit8 v8, v7, 0x2

    int-to-double v8, v8

    mul-int/lit8 v10, v0, 0x2

    int-to-double v10, v10

    invoke-direct {v5, v8, v9, v10, v11}, Lorg/apache/commons/math3/distribution/FDistribution;-><init>(DD)V

    sub-double/2addr v1, v3

    invoke-virtual {v5, v1, v2}, Lorg/apache/commons/math3/distribution/AbstractRealDistribution;->inverseCumulativeProbability(D)D

    move-result-wide v3

    const-wide/16 v8, 0x0

    if-lez v0, :cond_0

    int-to-double v10, v0

    int-to-double v12, v7

    mul-double/2addr v12, v3

    add-double/2addr v12, v10

    div-double/2addr v10, v12

    move-wide v4, v10

    goto :goto_0

    :cond_0
    move-wide v4, v8

    :goto_0
    new-instance v3, Lorg/apache/commons/math3/distribution/FDistribution;

    add-int/lit8 v7, v0, 0x1

    mul-int/lit8 v10, v7, 0x2

    int-to-double v10, v10

    mul-int/lit8 v12, v6, 0x2

    int-to-double v12, v12

    invoke-direct {v3, v10, v11, v12, v13}, Lorg/apache/commons/math3/distribution/FDistribution;-><init>(DD)V

    invoke-virtual {v3, v1, v2}, Lorg/apache/commons/math3/distribution/AbstractRealDistribution;->inverseCumulativeProbability(D)D

    move-result-wide v1

    if-lez v0, :cond_1

    int-to-double v7, v7

    mul-double/2addr v7, v1

    int-to-double v0, v6

    add-double/2addr v0, v7

    div-double/2addr v7, v0

    move-wide v6, v7

    goto :goto_1

    :cond_1
    move-wide v6, v8

    :goto_1
    new-instance v0, Lorg/apache/commons/math3/stat/interval/ConfidenceInterval;

    move-object v3, v0

    move-wide/from16 v8, p3

    invoke-direct/range {v3 .. v9}, Lorg/apache/commons/math3/stat/interval/ConfidenceInterval;-><init>(DDD)V

    return-object v0
.end method
