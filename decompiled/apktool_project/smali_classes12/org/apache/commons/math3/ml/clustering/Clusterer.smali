.class public abstract Lorg/apache/commons/math3/ml/clustering/Clusterer;
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
.field public a:Lorg/apache/commons/math3/ml/distance/DistanceMeasure;


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/ml/distance/DistanceMeasure;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/math3/ml/clustering/Clusterer;->a:Lorg/apache/commons/math3/ml/distance/DistanceMeasure;

    return-void
.end method


# virtual methods
.method public abstract cluster(Ljava/util/Collection;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "TT;>;)",
            "Ljava/util/List<",
            "+",
            "Lorg/apache/commons/math3/ml/clustering/Cluster<",
            "TT;>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;,
            Lorg/apache/commons/math3/exception/ConvergenceException;
        }
    .end annotation
.end method

.method public distance(Lorg/apache/commons/math3/ml/clustering/Clusterable;Lorg/apache/commons/math3/ml/clustering/Clusterable;)D
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/ml/clustering/Clusterer;->a:Lorg/apache/commons/math3/ml/distance/DistanceMeasure;

    invoke-interface {p1}, Lorg/apache/commons/math3/ml/clustering/Clusterable;->getPoint()[D

    move-result-object p1

    invoke-interface {p2}, Lorg/apache/commons/math3/ml/clustering/Clusterable;->getPoint()[D

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lorg/apache/commons/math3/ml/distance/DistanceMeasure;->compute([D[D)D

    move-result-wide p0

    return-wide p0
.end method

.method public getDistanceMeasure()Lorg/apache/commons/math3/ml/distance/DistanceMeasure;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/ml/clustering/Clusterer;->a:Lorg/apache/commons/math3/ml/distance/DistanceMeasure;

    return-object p0
.end method
