.class public abstract Lorg/apache/commons/math3/ml/clustering/evaluation/ClusterEvaluator;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lorg/apache/commons/math3/ml/clustering/Clusterable;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Lorg/apache/commons/math3/ml/distance/DistanceMeasure;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    new-instance v0, Lorg/apache/commons/math3/ml/distance/EuclideanDistance;

    invoke-direct {v0}, Lorg/apache/commons/math3/ml/distance/EuclideanDistance;-><init>()V

    invoke-direct {p0, v0}, Lorg/apache/commons/math3/ml/clustering/evaluation/ClusterEvaluator;-><init>(Lorg/apache/commons/math3/ml/distance/DistanceMeasure;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/ml/distance/DistanceMeasure;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lorg/apache/commons/math3/ml/clustering/evaluation/ClusterEvaluator;->a:Lorg/apache/commons/math3/ml/distance/DistanceMeasure;

    return-void
.end method


# virtual methods
.method public centroidOf(Lorg/apache/commons/math3/ml/clustering/Cluster;)Lorg/apache/commons/math3/ml/clustering/Clusterable;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/ml/clustering/Cluster<",
            "TT;>;)",
            "Lorg/apache/commons/math3/ml/clustering/Clusterable;"
        }
    .end annotation

    invoke-virtual {p1}, Lorg/apache/commons/math3/ml/clustering/Cluster;->getPoints()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    instance-of v0, p1, Lorg/apache/commons/math3/ml/clustering/CentroidCluster;

    if-eqz v0, :cond_1

    check-cast p1, Lorg/apache/commons/math3/ml/clustering/CentroidCluster;

    invoke-virtual {p1}, Lorg/apache/commons/math3/ml/clustering/CentroidCluster;->getCenter()Lorg/apache/commons/math3/ml/clustering/Clusterable;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p1, 0x0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/ml/clustering/Clusterable;

    invoke-interface {v0}, Lorg/apache/commons/math3/ml/clustering/Clusterable;->getPoint()[D

    move-result-object v0

    array-length v0, v0

    new-array v1, v0, [D

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/ml/clustering/Clusterable;

    invoke-interface {v3}, Lorg/apache/commons/math3/ml/clustering/Clusterable;->getPoint()[D

    move-result-object v3

    move v4, p1

    :goto_0
    if-ge v4, v0, :cond_2

    aget-wide v5, v1, v4

    aget-wide v7, v3, v4

    add-double/2addr v5, v7

    aput-wide v5, v1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    if-ge p1, v0, :cond_4

    aget-wide v2, v1, p1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    int-to-double v4, v4

    div-double/2addr v2, v4

    aput-wide v2, v1, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_4
    new-instance p0, Lorg/apache/commons/math3/ml/clustering/DoublePoint;

    invoke-direct {p0, v1}, Lorg/apache/commons/math3/ml/clustering/DoublePoint;-><init>([D)V

    return-object p0
.end method

.method public distance(Lorg/apache/commons/math3/ml/clustering/Clusterable;Lorg/apache/commons/math3/ml/clustering/Clusterable;)D
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/ml/clustering/evaluation/ClusterEvaluator;->a:Lorg/apache/commons/math3/ml/distance/DistanceMeasure;

    invoke-interface {p1}, Lorg/apache/commons/math3/ml/clustering/Clusterable;->getPoint()[D

    move-result-object p1

    invoke-interface {p2}, Lorg/apache/commons/math3/ml/clustering/Clusterable;->getPoint()[D

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lorg/apache/commons/math3/ml/distance/DistanceMeasure;->compute([D[D)D

    move-result-wide p0

    return-wide p0
.end method

.method public isBetterScore(DD)Z
    .locals 0

    cmpg-double p0, p1, p3

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public abstract score(Ljava/util/List;)D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lorg/apache/commons/math3/ml/clustering/Cluster<",
            "TT;>;>;)D"
        }
    .end annotation
.end method
