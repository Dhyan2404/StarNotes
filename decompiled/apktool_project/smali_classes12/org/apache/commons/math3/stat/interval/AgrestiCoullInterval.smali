.class public Lorg/apache/commons/math3/stat/interval/AgrestiCoullInterval;
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
    .locals 12

    invoke-static/range {p1 .. p4}, Lorg/apache/commons/math3/stat/interval/IntervalUtils;->a(IID)V

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    sub-double v2, v0, p3

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    div-double/2addr v2, v4

    new-instance v4, Lorg/apache/commons/math3/distribution/NormalDistribution;

    invoke-direct {v4}, Lorg/apache/commons/math3/distribution/NormalDistribution;-><init>()V

    sub-double v2, v0, v2

    invoke-virtual {v4, v2, v3}, Lorg/apache/commons/math3/distribution/NormalDistribution;->inverseCumulativeProbability(D)D

    move-result-wide v2

    const/4 v4, 0x2

    invoke-static {v2, v3, v4}, Lorg/apache/commons/math3/util/FastMath;->pow(DI)D

    move-result-wide v4

    move v6, p1

    int-to-double v6, v6

    add-double/2addr v6, v4

    div-double v6, v0, v6

    move v8, p2

    int-to-double v8, v8

    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v4, v10

    add-double/2addr v8, v4

    mul-double/2addr v8, v6

    mul-double/2addr v6, v8

    sub-double/2addr v0, v8

    mul-double/2addr v6, v0

    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v0

    mul-double/2addr v2, v0

    new-instance v0, Lorg/apache/commons/math3/stat/interval/ConfidenceInterval;

    sub-double v4, v8, v2

    add-double v6, v8, v2

    move-object v2, v0

    move-wide v3, v4

    move-wide v5, v6

    move-wide v7, p3

    invoke-direct/range {v2 .. v8}, Lorg/apache/commons/math3/stat/interval/ConfidenceInterval;-><init>(DDD)V

    return-object v0
.end method
