.class public Lorg/apache/commons/math3/stat/descriptive/rank/Median;
.super Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final FIXED_QUANTILE_50:D = 50.0

.field private static final serialVersionUID:J = -0x36f9fe615802af67L


# direct methods
.method public constructor <init>()V
    .locals 2

    const-wide/high16 v0, 0x4049000000000000L    # 50.0

    .line 1
    invoke-direct {p0, v0, v1}, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;-><init>(D)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/stat/descriptive/rank/Median;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;-><init>(Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;)V

    return-void
.end method

.method private constructor <init>(Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType;Lorg/apache/commons/math3/stat/ranking/NaNStrategy;Lorg/apache/commons/math3/util/KthSelector;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    const-wide/high16 v1, 0x4049000000000000L    # 50.0

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    .line 3
    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;-><init>(DLorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType;Lorg/apache/commons/math3/stat/ranking/NaNStrategy;Lorg/apache/commons/math3/util/KthSelector;)V

    return-void
.end method


# virtual methods
.method public withEstimationType(Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType;)Lorg/apache/commons/math3/stat/descriptive/rank/Median;
    .locals 2

    .line 2
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/rank/Median;

    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;->getNaNStrategy()Lorg/apache/commons/math3/stat/ranking/NaNStrategy;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;->getKthSelector()Lorg/apache/commons/math3/util/KthSelector;

    move-result-object p0

    invoke-direct {v0, p1, v1, p0}, Lorg/apache/commons/math3/stat/descriptive/rank/Median;-><init>(Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType;Lorg/apache/commons/math3/stat/ranking/NaNStrategy;Lorg/apache/commons/math3/util/KthSelector;)V

    return-object v0
.end method

.method public bridge synthetic withEstimationType(Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType;)Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/stat/descriptive/rank/Median;->withEstimationType(Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType;)Lorg/apache/commons/math3/stat/descriptive/rank/Median;

    move-result-object p0

    return-object p0
.end method

.method public withKthSelector(Lorg/apache/commons/math3/util/KthSelector;)Lorg/apache/commons/math3/stat/descriptive/rank/Median;
    .locals 2

    .line 2
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/rank/Median;

    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;->getEstimationType()Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;->getNaNStrategy()Lorg/apache/commons/math3/stat/ranking/NaNStrategy;

    move-result-object p0

    invoke-direct {v0, v1, p0, p1}, Lorg/apache/commons/math3/stat/descriptive/rank/Median;-><init>(Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType;Lorg/apache/commons/math3/stat/ranking/NaNStrategy;Lorg/apache/commons/math3/util/KthSelector;)V

    return-object v0
.end method

.method public bridge synthetic withKthSelector(Lorg/apache/commons/math3/util/KthSelector;)Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/stat/descriptive/rank/Median;->withKthSelector(Lorg/apache/commons/math3/util/KthSelector;)Lorg/apache/commons/math3/stat/descriptive/rank/Median;

    move-result-object p0

    return-object p0
.end method

.method public withNaNStrategy(Lorg/apache/commons/math3/stat/ranking/NaNStrategy;)Lorg/apache/commons/math3/stat/descriptive/rank/Median;
    .locals 2

    .line 2
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/rank/Median;

    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;->getEstimationType()Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;->getKthSelector()Lorg/apache/commons/math3/util/KthSelector;

    move-result-object p0

    invoke-direct {v0, v1, p1, p0}, Lorg/apache/commons/math3/stat/descriptive/rank/Median;-><init>(Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType;Lorg/apache/commons/math3/stat/ranking/NaNStrategy;Lorg/apache/commons/math3/util/KthSelector;)V

    return-object v0
.end method

.method public bridge synthetic withNaNStrategy(Lorg/apache/commons/math3/stat/ranking/NaNStrategy;)Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/stat/descriptive/rank/Median;->withNaNStrategy(Lorg/apache/commons/math3/stat/ranking/NaNStrategy;)Lorg/apache/commons/math3/stat/descriptive/rank/Median;

    move-result-object p0

    return-object p0
.end method
