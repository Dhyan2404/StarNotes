.class public Lorg/apache/commons/math3/ml/neuralnet/twod/util/QuantizationError;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/math3/ml/neuralnet/twod/util/MapDataVisualization;


# instance fields
.field public final a:Lorg/apache/commons/math3/ml/distance/DistanceMeasure;


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/ml/distance/DistanceMeasure;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/util/QuantizationError;->a:Lorg/apache/commons/math3/ml/distance/DistanceMeasure;

    return-void
.end method


# virtual methods
.method public computeImage(Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;Ljava/lang/Iterable;)[[D
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;",
            "Ljava/lang/Iterable<",
            "[D>;)[[D"
        }
    .end annotation

    invoke-virtual {p1}, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->getNumberOfRows()I

    move-result v0

    invoke-virtual {p1}, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->getNumberOfColumns()I

    move-result v1

    new-instance v2, Lorg/apache/commons/math3/ml/neuralnet/twod/util/LocationFinder;

    invoke-direct {v2, p1}, Lorg/apache/commons/math3/ml/neuralnet/twod/util/LocationFinder;-><init>(Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;)V

    filled-new-array {v0, v1}, [I

    move-result-object v3

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[I

    filled-new-array {v0, v1}, [I

    move-result-object v4

    sget-object v5, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[D

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [D

    iget-object v6, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/util/QuantizationError;->a:Lorg/apache/commons/math3/ml/distance/DistanceMeasure;

    invoke-static {v5, p1, v6}, Lorg/apache/commons/math3/ml/neuralnet/MapUtils;->findBest([DLjava/lang/Iterable;Lorg/apache/commons/math3/ml/distance/DistanceMeasure;)Lorg/apache/commons/math3/ml/neuralnet/Neuron;

    move-result-object v6

    invoke-virtual {v2, v6}, Lorg/apache/commons/math3/ml/neuralnet/twod/util/LocationFinder;->getLocation(Lorg/apache/commons/math3/ml/neuralnet/Neuron;)Lorg/apache/commons/math3/ml/neuralnet/twod/util/LocationFinder$Location;

    move-result-object v7

    invoke-virtual {v7}, Lorg/apache/commons/math3/ml/neuralnet/twod/util/LocationFinder$Location;->getRow()I

    move-result v8

    invoke-virtual {v7}, Lorg/apache/commons/math3/ml/neuralnet/twod/util/LocationFinder$Location;->getColumn()I

    move-result v7

    aget-object v9, v3, v8

    aget v10, v9, v7

    add-int/lit8 v10, v10, 0x1

    aput v10, v9, v7

    aget-object v8, v4, v8

    aget-wide v9, v8, v7

    iget-object v11, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/util/QuantizationError;->a:Lorg/apache/commons/math3/ml/distance/DistanceMeasure;

    invoke-virtual {v6}, Lorg/apache/commons/math3/ml/neuralnet/Neuron;->getFeatures()[D

    move-result-object v6

    invoke-interface {v11, v5, v6}, Lorg/apache/commons/math3/ml/distance/DistanceMeasure;->compute([D[D)D

    move-result-wide v5

    add-double/2addr v9, v5

    aput-wide v9, v8, v7

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    move p1, p0

    :goto_1
    if-ge p1, v0, :cond_3

    move p2, p0

    :goto_2
    if-ge p2, v1, :cond_2

    aget-object v2, v3, p1

    aget v2, v2, p2

    if-eqz v2, :cond_1

    aget-object v5, v4, p1

    aget-wide v6, v5, p2

    int-to-double v8, v2

    div-double/2addr v6, v8

    aput-wide v6, v5, p2

    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_3
    return-object v4
.end method
