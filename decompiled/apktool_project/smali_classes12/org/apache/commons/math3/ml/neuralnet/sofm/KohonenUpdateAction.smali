.class public Lorg/apache/commons/math3/ml/neuralnet/sofm/KohonenUpdateAction;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/math3/ml/neuralnet/UpdateAction;


# instance fields
.field public final a:Lorg/apache/commons/math3/ml/distance/DistanceMeasure;

.field public final b:Lorg/apache/commons/math3/ml/neuralnet/sofm/LearningFactorFunction;

.field public final c:Lorg/apache/commons/math3/ml/neuralnet/sofm/NeighbourhoodSizeFunction;

.field public final d:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/ml/distance/DistanceMeasure;Lorg/apache/commons/math3/ml/neuralnet/sofm/LearningFactorFunction;Lorg/apache/commons/math3/ml/neuralnet/sofm/NeighbourhoodSizeFunction;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lorg/apache/commons/math3/ml/neuralnet/sofm/KohonenUpdateAction;->d:Ljava/util/concurrent/atomic/AtomicLong;

    iput-object p1, p0, Lorg/apache/commons/math3/ml/neuralnet/sofm/KohonenUpdateAction;->a:Lorg/apache/commons/math3/ml/distance/DistanceMeasure;

    iput-object p2, p0, Lorg/apache/commons/math3/ml/neuralnet/sofm/KohonenUpdateAction;->b:Lorg/apache/commons/math3/ml/neuralnet/sofm/LearningFactorFunction;

    iput-object p3, p0, Lorg/apache/commons/math3/ml/neuralnet/sofm/KohonenUpdateAction;->c:Lorg/apache/commons/math3/ml/neuralnet/sofm/NeighbourhoodSizeFunction;

    return-void
.end method


# virtual methods
.method public final a(Lorg/apache/commons/math3/ml/neuralnet/Neuron;[DD)Z
    .locals 1

    invoke-virtual {p1}, Lorg/apache/commons/math3/ml/neuralnet/Neuron;->getFeatures()[D

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3, p4}, Lorg/apache/commons/math3/ml/neuralnet/sofm/KohonenUpdateAction;->b([D[DD)[D

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Lorg/apache/commons/math3/ml/neuralnet/Neuron;->compareAndSetFeatures([D[D)Z

    move-result p0

    return p0
.end method

.method public final b([D[DD)[D
    .locals 1

    new-instance p0, Lorg/apache/commons/math3/linear/ArrayRealVector;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>([DZ)V

    new-instance p1, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-direct {p1, p2, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>([DZ)V

    invoke-virtual {p1, p0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->subtract(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-result-object p1

    invoke-virtual {p1, p3, p4}, Lorg/apache/commons/math3/linear/ArrayRealVector;->mapMultiplyToSelf(D)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/apache/commons/math3/linear/RealVector;->add(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/RealVector;->toArray()[D

    move-result-object p0

    return-object p0
.end method

.method public final c(Lorg/apache/commons/math3/ml/neuralnet/Network;[DD)Lorg/apache/commons/math3/ml/neuralnet/Neuron;
    .locals 2

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/math3/ml/neuralnet/sofm/KohonenUpdateAction;->a:Lorg/apache/commons/math3/ml/distance/DistanceMeasure;

    invoke-static {p2, p1, v0}, Lorg/apache/commons/math3/ml/neuralnet/MapUtils;->findBest([DLjava/lang/Iterable;Lorg/apache/commons/math3/ml/distance/DistanceMeasure;)Lorg/apache/commons/math3/ml/neuralnet/Neuron;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3, p4}, Lorg/apache/commons/math3/ml/neuralnet/sofm/KohonenUpdateAction;->a(Lorg/apache/commons/math3/ml/neuralnet/Neuron;[DD)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0
.end method

.method public final d(Lorg/apache/commons/math3/ml/neuralnet/Neuron;[DD)V
    .locals 1

    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/commons/math3/ml/neuralnet/sofm/KohonenUpdateAction;->a(Lorg/apache/commons/math3/ml/neuralnet/Neuron;[DD)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void
.end method

.method public getNumberOfCalls()J
    .locals 2

    iget-object p0, p0, Lorg/apache/commons/math3/ml/neuralnet/sofm/KohonenUpdateAction;->d:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method public update(Lorg/apache/commons/math3/ml/neuralnet/Network;[D)V
    .locals 10

    iget-object v0, p0, Lorg/apache/commons/math3/ml/neuralnet/sofm/KohonenUpdateAction;->d:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    iget-object v2, p0, Lorg/apache/commons/math3/ml/neuralnet/sofm/KohonenUpdateAction;->b:Lorg/apache/commons/math3/ml/neuralnet/sofm/LearningFactorFunction;

    invoke-interface {v2, v0, v1}, Lorg/apache/commons/math3/ml/neuralnet/sofm/LearningFactorFunction;->value(J)D

    move-result-wide v4

    invoke-virtual {p0, p1, p2, v4, v5}, Lorg/apache/commons/math3/ml/neuralnet/sofm/KohonenUpdateAction;->c(Lorg/apache/commons/math3/ml/neuralnet/Network;[DD)Lorg/apache/commons/math3/ml/neuralnet/Neuron;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/commons/math3/ml/neuralnet/sofm/KohonenUpdateAction;->c:Lorg/apache/commons/math3/ml/neuralnet/sofm/NeighbourhoodSizeFunction;

    invoke-interface {v3, v0, v1}, Lorg/apache/commons/math3/ml/neuralnet/sofm/NeighbourhoodSizeFunction;->value(J)I

    move-result v0

    new-instance v1, Lorg/apache/commons/math3/analysis/function/Gaussian;

    const-wide/16 v6, 0x0

    int-to-double v8, v0

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lorg/apache/commons/math3/analysis/function/Gaussian;-><init>(DDD)V

    if-lez v0, :cond_2

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v3, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v4, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x1

    :cond_0
    invoke-virtual {p1, v3, v4}, Lorg/apache/commons/math3/ml/neuralnet/Network;->getNeighbours(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/ml/neuralnet/Neuron;

    int-to-double v7, v2

    invoke-virtual {v1, v7, v8}, Lorg/apache/commons/math3/analysis/function/Gaussian;->value(D)D

    move-result-wide v7

    invoke-virtual {p0, v6, p2, v7, v8}, Lorg/apache/commons/math3/ml/neuralnet/sofm/KohonenUpdateAction;->d(Lorg/apache/commons/math3/ml/neuralnet/Neuron;[DD)V

    goto :goto_0

    :cond_1
    invoke-virtual {v4, v3}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v2, v2, 0x1

    if-le v2, v0, :cond_0

    :cond_2
    return-void
.end method
