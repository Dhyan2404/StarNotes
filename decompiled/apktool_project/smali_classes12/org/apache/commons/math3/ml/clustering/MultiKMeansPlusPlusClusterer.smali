.class public Lorg/apache/commons/math3/ml/clustering/MultiKMeansPlusPlusClusterer;
.super Lorg/apache/commons/math3/ml/clustering/Clusterer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lorg/apache/commons/math3/ml/clustering/Clusterable;",
        ">",
        "Lorg/apache/commons/math3/ml/clustering/Clusterer<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final b:Lorg/apache/commons/math3/ml/clustering/KMeansPlusPlusClusterer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/math3/ml/clustering/KMeansPlusPlusClusterer<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final c:I

.field public final d:Lorg/apache/commons/math3/ml/clustering/evaluation/ClusterEvaluator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/math3/ml/clustering/evaluation/ClusterEvaluator<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/ml/clustering/KMeansPlusPlusClusterer;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/ml/clustering/KMeansPlusPlusClusterer<",
            "TT;>;I)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/apache/commons/math3/ml/clustering/evaluation/SumOfClusterVariances;

    invoke-virtual {p1}, Lorg/apache/commons/math3/ml/clustering/Clusterer;->getDistanceMeasure()Lorg/apache/commons/math3/ml/distance/DistanceMeasure;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/ml/clustering/evaluation/SumOfClusterVariances;-><init>(Lorg/apache/commons/math3/ml/distance/DistanceMeasure;)V

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/math3/ml/clustering/MultiKMeansPlusPlusClusterer;-><init>(Lorg/apache/commons/math3/ml/clustering/KMeansPlusPlusClusterer;ILorg/apache/commons/math3/ml/clustering/evaluation/ClusterEvaluator;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/ml/clustering/KMeansPlusPlusClusterer;ILorg/apache/commons/math3/ml/clustering/evaluation/ClusterEvaluator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/ml/clustering/KMeansPlusPlusClusterer<",
            "TT;>;I",
            "Lorg/apache/commons/math3/ml/clustering/evaluation/ClusterEvaluator<",
            "TT;>;)V"
        }
    .end annotation

    .line 2
    invoke-virtual {p1}, Lorg/apache/commons/math3/ml/clustering/Clusterer;->getDistanceMeasure()Lorg/apache/commons/math3/ml/distance/DistanceMeasure;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/commons/math3/ml/clustering/Clusterer;-><init>(Lorg/apache/commons/math3/ml/distance/DistanceMeasure;)V

    .line 3
    iput-object p1, p0, Lorg/apache/commons/math3/ml/clustering/MultiKMeansPlusPlusClusterer;->b:Lorg/apache/commons/math3/ml/clustering/KMeansPlusPlusClusterer;

    .line 4
    iput p2, p0, Lorg/apache/commons/math3/ml/clustering/MultiKMeansPlusPlusClusterer;->c:I

    .line 5
    iput-object p3, p0, Lorg/apache/commons/math3/ml/clustering/MultiKMeansPlusPlusClusterer;->d:Lorg/apache/commons/math3/ml/clustering/evaluation/ClusterEvaluator;

    return-void
.end method


# virtual methods
.method public cluster(Ljava/util/Collection;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "TT;>;)",
            "Ljava/util/List<",
            "Lorg/apache/commons/math3/ml/clustering/CentroidCluster<",
            "TT;>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;,
            Lorg/apache/commons/math3/exception/ConvergenceException;
        }
    .end annotation

    const/4 v0, 0x0

    const-wide/high16 v1, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    const/4 v3, 0x0

    :goto_0
    iget v4, p0, Lorg/apache/commons/math3/ml/clustering/MultiKMeansPlusPlusClusterer;->c:I

    if-ge v3, v4, :cond_1

    iget-object v4, p0, Lorg/apache/commons/math3/ml/clustering/MultiKMeansPlusPlusClusterer;->b:Lorg/apache/commons/math3/ml/clustering/KMeansPlusPlusClusterer;

    invoke-virtual {v4, p1}, Lorg/apache/commons/math3/ml/clustering/KMeansPlusPlusClusterer;->cluster(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/commons/math3/ml/clustering/MultiKMeansPlusPlusClusterer;->d:Lorg/apache/commons/math3/ml/clustering/evaluation/ClusterEvaluator;

    invoke-virtual {v5, v4}, Lorg/apache/commons/math3/ml/clustering/evaluation/ClusterEvaluator;->score(Ljava/util/List;)D

    move-result-wide v5

    iget-object v7, p0, Lorg/apache/commons/math3/ml/clustering/MultiKMeansPlusPlusClusterer;->d:Lorg/apache/commons/math3/ml/clustering/evaluation/ClusterEvaluator;

    invoke-virtual {v7, v5, v6, v1, v2}, Lorg/apache/commons/math3/ml/clustering/evaluation/ClusterEvaluator;->isBetterScore(DD)Z

    move-result v7

    if-eqz v7, :cond_0

    move-object v0, v4

    move-wide v1, v5

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getClusterEvaluator()Lorg/apache/commons/math3/ml/clustering/evaluation/ClusterEvaluator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/math3/ml/clustering/evaluation/ClusterEvaluator<",
            "TT;>;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/commons/math3/ml/clustering/MultiKMeansPlusPlusClusterer;->d:Lorg/apache/commons/math3/ml/clustering/evaluation/ClusterEvaluator;

    return-object p0
.end method

.method public getClusterer()Lorg/apache/commons/math3/ml/clustering/KMeansPlusPlusClusterer;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/math3/ml/clustering/KMeansPlusPlusClusterer<",
            "TT;>;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/commons/math3/ml/clustering/MultiKMeansPlusPlusClusterer;->b:Lorg/apache/commons/math3/ml/clustering/KMeansPlusPlusClusterer;

    return-object p0
.end method

.method public getNumTrials()I
    .locals 0

    iget p0, p0, Lorg/apache/commons/math3/ml/clustering/MultiKMeansPlusPlusClusterer;->c:I

    return p0
.end method
