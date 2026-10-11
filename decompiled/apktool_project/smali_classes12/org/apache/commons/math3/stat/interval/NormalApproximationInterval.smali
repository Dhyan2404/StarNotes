.class public Lorg/apache/commons/math3/stat/interval/NormalApproximationInterval;
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
    .locals 13

    invoke-static/range {p1 .. p4}, Lorg/apache/commons/math3/stat/interval/IntervalUtils;->a(IID)V

    move v0, p2

    int-to-double v0, v0

    move v2, p1

    int-to-double v2, v2

    div-double/2addr v0, v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double v6, v4, p3

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    div-double/2addr v6, v8

    new-instance v8, Lorg/apache/commons/math3/distribution/NormalDistribution;

    invoke-direct {v8}, Lorg/apache/commons/math3/distribution/NormalDistribution;-><init>()V

    sub-double v6, v4, v6

    invoke-virtual {v8, v6, v7}, Lorg/apache/commons/math3/distribution/NormalDistribution;->inverseCumulativeProbability(D)D

    move-result-wide v6

    div-double v2, v4, v2

    mul-double/2addr v2, v0

    sub-double/2addr v4, v0

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v2

    mul-double/2addr v6, v2

    new-instance v2, Lorg/apache/commons/math3/stat/interval/ConfidenceInterval;

    sub-double v3, v0, v6

    add-double v9, v0, v6

    move-object v6, v2

    move-wide v7, v3

    move-wide/from16 v11, p3

    invoke-direct/range {v6 .. v12}, Lorg/apache/commons/math3/stat/interval/ConfidenceInterval;-><init>(DDD)V

    return-object v2
.end method
