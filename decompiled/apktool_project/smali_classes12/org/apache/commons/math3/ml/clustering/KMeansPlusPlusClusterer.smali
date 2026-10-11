.class public Lorg/apache/commons/math3/ml/clustering/KMeansPlusPlusClusterer;
.super Lorg/apache/commons/math3/ml/clustering/Clusterer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/ml/clustering/KMeansPlusPlusClusterer$EmptyClusterStrategy;
    }
.end annotation

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
.field public final b:I

.field public final c:I

.field public final d:Lorg/apache/commons/math3/random/RandomGenerator;

.field public final e:Lorg/apache/commons/math3/ml/clustering/KMeansPlusPlusClusterer$EmptyClusterStrategy;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    const/4 v0, -0x1

    .line 1
    invoke-direct {p0, p1, v0}, Lorg/apache/commons/math3/ml/clustering/KMeansPlusPlusClusterer;-><init>(II)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    .line 2
    new-instance v0, Lorg/apache/commons/math3/ml/distance/EuclideanDistance;

    invoke-direct {v0}, Lorg/apache/commons/math3/ml/distance/EuclideanDistance;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/math3/ml/clustering/KMeansPlusPlusClusterer;-><init>(IILorg/apache/commons/math3/ml/distance/DistanceMeasure;)V

    return-void
.end method

.method public constructor <init>(IILorg/apache/commons/math3/ml/distance/DistanceMeasure;)V
    .locals 1

    .line 3
    new-instance v0, Lorg/apache/commons/math3/random/JDKRandomGenerator;

    invoke-direct {v0}, Lorg/apache/commons/math3/random/JDKRandomGenerator;-><init>()V

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/commons/math3/ml/clustering/KMeansPlusPlusClusterer;-><init>(IILorg/apache/commons/math3/ml/distance/DistanceMeasure;Lorg/apache/commons/math3/random/RandomGenerator;)V

    return-void
.end method

.method public constructor <init>(IILorg/apache/commons/math3/ml/distance/DistanceMeasure;Lorg/apache/commons/math3/random/RandomGenerator;)V
    .locals 6

    .line 4
    sget-object v5, Lorg/apache/commons/math3/ml/clustering/KMeansPlusPlusClusterer$EmptyClusterStrategy;->LARGEST_VARIANCE:Lorg/apache/commons/math3/ml/clustering/KMeansPlusPlusClusterer$EmptyClusterStrategy;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/ml/clustering/KMeansPlusPlusClusterer;-><init>(IILorg/apache/commons/math3/ml/distance/DistanceMeasure;Lorg/apache/commons/math3/random/RandomGenerator;Lorg/apache/commons/math3/ml/clustering/KMeansPlusPlusClusterer$EmptyClusterStrategy;)V

    return-void
.end method

.method public constructor <init>(IILorg/apache/commons/math3/ml/distance/DistanceMeasure;Lorg/apache/commons/math3/random/RandomGenerator;Lorg/apache/commons/math3/ml/clustering/KMeansPlusPlusClusterer$EmptyClusterStrategy;)V
    .locals 0

    .line 5
    invoke-direct {p0, p3}, Lorg/apache/commons/math3/ml/clustering/Clusterer;-><init>(Lorg/apache/commons/math3/ml/distance/DistanceMeasure;)V

    .line 6
    iput p1, p0, Lorg/apache/commons/math3/ml/clustering/KMeansPlusPlusClusterer;->b:I

    .line 7
    iput p2, p0, Lorg/apache/commons/math3/ml/clustering/KMeansPlusPlusClusterer;->c:I

    .line 8
    iput-object p4, p0, Lorg/apache/commons/math3/ml/clustering/KMeansPlusPlusClusterer;->d:Lorg/apache/commons/math3/random/RandomGenerator;

    .line 9
    iput-object p5, p0, Lorg/apache/commons/math3/ml/clustering/KMeansPlusPlusClusterer;->e:Lorg/apache/commons/math3/ml/clustering/KMeansPlusPlusClusterer$EmptyClusterStrategy;

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;Ljava/util/Collection;[I)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/commons/math3/ml/clustering/CentroidCluster<",
            "TT;>;>;",
            "Ljava/util/Collection<",
            "TT;>;[I)I"
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/ml/clustering/Clusterable;

    invoke-virtual {p0, p1, v2}, Lorg/apache/commons/math3/ml/clustering/KMeansPlusPlusClusterer;->e(Ljava/util/Collection;Lorg/apache/commons/math3/ml/clustering/Clusterable;)I

    move-result v3

    aget v4, p3, v1

    if-eq v3, v4, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/ml/clustering/CentroidCluster;

    invoke-virtual {v4, v2}, Lorg/apache/commons/math3/ml/clustering/Cluster;->addPoint(Lorg/apache/commons/math3/ml/clustering/Clusterable;)V

    add-int/lit8 v2, v1, 0x1

    aput v3, p3, v1

    move v1, v2

    goto :goto_0

    :cond_1
    return v0
.end method

.method public final b(Ljava/util/Collection;I)Lorg/apache/commons/math3/ml/clustering/Clusterable;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "TT;>;I)",
            "Lorg/apache/commons/math3/ml/clustering/Clusterable;"
        }
    .end annotation

    new-array p0, p2, [D

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/ml/clustering/Clusterable;

    invoke-interface {v1}, Lorg/apache/commons/math3/ml/clustering/Clusterable;->getPoint()[D

    move-result-object v1

    :goto_0
    if-ge v2, p2, :cond_0

    aget-wide v3, p0, v2

    aget-wide v5, v1, v2

    add-double/2addr v3, v5

    aput-wide v3, p0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-ge v2, p2, :cond_2

    aget-wide v0, p0, v2

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v3

    int-to-double v3, v3

    div-double/2addr v0, v3

    aput-wide v0, p0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    new-instance p1, Lorg/apache/commons/math3/ml/clustering/DoublePoint;

    invoke-direct {p1, p0}, Lorg/apache/commons/math3/ml/clustering/DoublePoint;-><init>([D)V

    return-object p1
.end method

.method public final c(Ljava/util/Collection;)Ljava/util/List;
    .locals 17
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

    move-object/from16 v0, p0

    new-instance v1, Ljava/util/ArrayList;

    move-object/from16 v2, p1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v3, v2, [Z

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iget-object v5, v0, Lorg/apache/commons/math3/ml/clustering/KMeansPlusPlusClusterer;->d:Lorg/apache/commons/math3/random/RandomGenerator;

    invoke-interface {v5, v2}, Lorg/apache/commons/math3/random/RandomGenerator;->nextInt(I)I

    move-result v5

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/ml/clustering/Clusterable;

    new-instance v7, Lorg/apache/commons/math3/ml/clustering/CentroidCluster;

    invoke-direct {v7, v6}, Lorg/apache/commons/math3/ml/clustering/CentroidCluster;-><init>(Lorg/apache/commons/math3/ml/clustering/Clusterable;)V

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v7, 0x1

    aput-boolean v7, v3, v5

    new-array v8, v2, [D

    const/4 v9, 0x0

    move v10, v9

    :goto_0
    if-ge v10, v2, :cond_1

    if-eq v10, v5, :cond_0

    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/apache/commons/math3/ml/clustering/Clusterable;

    invoke-virtual {v0, v6, v11}, Lorg/apache/commons/math3/ml/clustering/Clusterer;->distance(Lorg/apache/commons/math3/ml/clustering/Clusterable;Lorg/apache/commons/math3/ml/clustering/Clusterable;)D

    move-result-wide v11

    mul-double/2addr v11, v11

    aput-wide v11, v8, v10

    :cond_0
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    iget v6, v0, Lorg/apache/commons/math3/ml/clustering/KMeansPlusPlusClusterer;->b:I

    if-ge v5, v6, :cond_9

    const-wide/16 v5, 0x0

    move-wide v11, v5

    move v10, v9

    :goto_1
    if-ge v10, v2, :cond_3

    aget-boolean v13, v3, v10

    if-nez v13, :cond_2

    aget-wide v13, v8, v10

    add-double/2addr v11, v13

    :cond_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_3
    iget-object v10, v0, Lorg/apache/commons/math3/ml/clustering/KMeansPlusPlusClusterer;->d:Lorg/apache/commons/math3/random/RandomGenerator;

    invoke-interface {v10}, Lorg/apache/commons/math3/random/RandomGenerator;->nextDouble()D

    move-result-wide v13

    mul-double/2addr v13, v11

    move v10, v9

    :goto_2
    const/4 v11, -0x1

    if-ge v10, v2, :cond_5

    aget-boolean v12, v3, v10

    if-nez v12, :cond_4

    aget-wide v15, v8, v10

    add-double/2addr v5, v15

    cmpl-double v12, v5, v13

    if-ltz v12, :cond_4

    goto :goto_3

    :cond_4
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_5
    move v10, v11

    :goto_3
    if-ne v10, v11, :cond_7

    add-int/lit8 v5, v2, -0x1

    :goto_4
    if-ltz v5, :cond_7

    aget-boolean v6, v3, v5

    if-nez v6, :cond_6

    move v10, v5

    goto :goto_5

    :cond_6
    add-int/lit8 v5, v5, -0x1

    goto :goto_4

    :cond_7
    :goto_5
    if-ltz v10, :cond_9

    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/ml/clustering/Clusterable;

    new-instance v6, Lorg/apache/commons/math3/ml/clustering/CentroidCluster;

    invoke-direct {v6, v5}, Lorg/apache/commons/math3/ml/clustering/CentroidCluster;-><init>(Lorg/apache/commons/math3/ml/clustering/Clusterable;)V

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    aput-boolean v7, v3, v10

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    iget v10, v0, Lorg/apache/commons/math3/ml/clustering/KMeansPlusPlusClusterer;->b:I

    if-ge v6, v10, :cond_1

    move v6, v9

    :goto_6
    if-ge v6, v2, :cond_1

    aget-boolean v10, v3, v6

    if-nez v10, :cond_8

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/commons/math3/ml/clustering/Clusterable;

    invoke-virtual {v0, v5, v10}, Lorg/apache/commons/math3/ml/clustering/Clusterer;->distance(Lorg/apache/commons/math3/ml/clustering/Clusterable;Lorg/apache/commons/math3/ml/clustering/Clusterable;)D

    move-result-wide v10

    mul-double/2addr v10, v10

    aget-wide v12, v8, v6

    cmpg-double v12, v10, v12

    if-gez v12, :cond_8

    aput-wide v10, v8, v6

    :cond_8
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    :cond_9
    return-object v4
.end method

.method public cluster(Ljava/util/Collection;)Ljava/util/List;
    .locals 11
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

    invoke-static {p1}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    iget v1, p0, Lorg/apache/commons/math3/ml/clustering/KMeansPlusPlusClusterer;->b:I

    const/4 v2, 0x0

    if-lt v0, v1, :cond_8

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/ml/clustering/KMeansPlusPlusClusterer;->c(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    new-array v1, v1, [I

    invoke-virtual {p0, v0, p1, v1}, Lorg/apache/commons/math3/ml/clustering/KMeansPlusPlusClusterer;->a(Ljava/util/List;Ljava/util/Collection;[I)I

    iget v3, p0, Lorg/apache/commons/math3/ml/clustering/KMeansPlusPlusClusterer;->c:I

    if-gez v3, :cond_0

    const v3, 0x7fffffff

    :cond_0
    move v4, v2

    :goto_0
    if-ge v4, v3, :cond_7

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v7, v2

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/commons/math3/ml/clustering/CentroidCluster;

    invoke-virtual {v8}, Lorg/apache/commons/math3/ml/clustering/Cluster;->getPoints()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_4

    sget-object v7, Lorg/apache/commons/math3/ml/clustering/KMeansPlusPlusClusterer$a;->a:[I

    iget-object v8, p0, Lorg/apache/commons/math3/ml/clustering/KMeansPlusPlusClusterer;->e:Lorg/apache/commons/math3/ml/clustering/KMeansPlusPlusClusterer$EmptyClusterStrategy;

    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    aget v7, v7, v8

    const/4 v8, 0x1

    if-eq v7, v8, :cond_3

    const/4 v9, 0x2

    if-eq v7, v9, :cond_2

    const/4 v9, 0x3

    if-ne v7, v9, :cond_1

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/ml/clustering/KMeansPlusPlusClusterer;->d(Ljava/util/Collection;)Lorg/apache/commons/math3/ml/clustering/Clusterable;

    move-result-object v7

    goto :goto_2

    :cond_1
    new-instance p0, Lorg/apache/commons/math3/exception/ConvergenceException;

    sget-object p1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->EMPTY_CLUSTER_IN_K_MEANS:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    new-array v0, v2, [Ljava/lang/Object;

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/math3/exception/ConvergenceException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw p0

    :cond_2
    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/ml/clustering/KMeansPlusPlusClusterer;->f(Ljava/util/Collection;)Lorg/apache/commons/math3/ml/clustering/Clusterable;

    move-result-object v7

    goto :goto_2

    :cond_3
    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/ml/clustering/KMeansPlusPlusClusterer;->g(Ljava/util/Collection;)Lorg/apache/commons/math3/ml/clustering/Clusterable;

    move-result-object v7

    goto :goto_2

    :cond_4
    invoke-virtual {v8}, Lorg/apache/commons/math3/ml/clustering/Cluster;->getPoints()Ljava/util/List;

    move-result-object v9

    invoke-virtual {v8}, Lorg/apache/commons/math3/ml/clustering/CentroidCluster;->getCenter()Lorg/apache/commons/math3/ml/clustering/Clusterable;

    move-result-object v8

    invoke-interface {v8}, Lorg/apache/commons/math3/ml/clustering/Clusterable;->getPoint()[D

    move-result-object v8

    array-length v8, v8

    invoke-virtual {p0, v9, v8}, Lorg/apache/commons/math3/ml/clustering/KMeansPlusPlusClusterer;->b(Ljava/util/Collection;I)Lorg/apache/commons/math3/ml/clustering/Clusterable;

    move-result-object v8

    move-object v10, v8

    move v8, v7

    move-object v7, v10

    :goto_2
    new-instance v9, Lorg/apache/commons/math3/ml/clustering/CentroidCluster;

    invoke-direct {v9, v7}, Lorg/apache/commons/math3/ml/clustering/CentroidCluster;-><init>(Lorg/apache/commons/math3/ml/clustering/Clusterable;)V

    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v7, v8

    goto :goto_1

    :cond_5
    invoke-virtual {p0, v5, p1, v1}, Lorg/apache/commons/math3/ml/clustering/KMeansPlusPlusClusterer;->a(Ljava/util/List;Ljava/util/Collection;[I)I

    move-result v0

    if-nez v0, :cond_6

    if-nez v7, :cond_6

    return-object v5

    :cond_6
    add-int/lit8 v4, v4, 0x1

    move-object v0, v5

    goto :goto_0

    :cond_7
    return-object v0

    :cond_8
    new-instance v0, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget p0, p0, Lorg/apache/commons/math3/ml/clustering/KMeansPlusPlusClusterer;->b:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-direct {v0, p1, p0, v2}, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw v0
.end method

.method public final d(Ljava/util/Collection;)Lorg/apache/commons/math3/ml/clustering/Clusterable;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lorg/apache/commons/math3/ml/clustering/CentroidCluster<",
            "TT;>;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/ConvergenceException;
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const-wide/high16 v0, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    const/4 v2, 0x0

    const/4 v3, -0x1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/ml/clustering/CentroidCluster;

    invoke-virtual {v4}, Lorg/apache/commons/math3/ml/clustering/CentroidCluster;->getCenter()Lorg/apache/commons/math3/ml/clustering/Clusterable;

    move-result-object v6

    invoke-virtual {v4}, Lorg/apache/commons/math3/ml/clustering/Cluster;->getPoints()Ljava/util/List;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    if-ge v5, v8, :cond_0

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/commons/math3/ml/clustering/Clusterable;

    invoke-virtual {p0, v8, v6}, Lorg/apache/commons/math3/ml/clustering/Clusterer;->distance(Lorg/apache/commons/math3/ml/clustering/Clusterable;Lorg/apache/commons/math3/ml/clustering/Clusterable;)D

    move-result-wide v8

    cmpl-double v10, v8, v0

    if-lez v10, :cond_1

    move-object v2, v4

    move v3, v5

    move-wide v0, v8

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lorg/apache/commons/math3/ml/clustering/Cluster;->getPoints()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/commons/math3/ml/clustering/Clusterable;

    return-object p0

    :cond_3
    new-instance p0, Lorg/apache/commons/math3/exception/ConvergenceException;

    sget-object p1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->EMPTY_CLUSTER_IN_K_MEANS:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    new-array v0, v5, [Ljava/lang/Object;

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/math3/exception/ConvergenceException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw p0
.end method

.method public final e(Ljava/util/Collection;Lorg/apache/commons/math3/ml/clustering/Clusterable;)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lorg/apache/commons/math3/ml/clustering/CentroidCluster<",
            "TT;>;>;TT;)I"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const-wide v0, 0x7fefffffffffffffL    # Double.MAX_VALUE

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/ml/clustering/CentroidCluster;

    invoke-virtual {v4}, Lorg/apache/commons/math3/ml/clustering/CentroidCluster;->getCenter()Lorg/apache/commons/math3/ml/clustering/Clusterable;

    move-result-object v4

    invoke-virtual {p0, p2, v4}, Lorg/apache/commons/math3/ml/clustering/Clusterer;->distance(Lorg/apache/commons/math3/ml/clustering/Clusterable;Lorg/apache/commons/math3/ml/clustering/Clusterable;)D

    move-result-wide v4

    cmpg-double v6, v4, v0

    if-gez v6, :cond_0

    move v2, v3

    move-wide v0, v4

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public final f(Ljava/util/Collection;)Lorg/apache/commons/math3/ml/clustering/Clusterable;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lorg/apache/commons/math3/ml/clustering/Cluster<",
            "TT;>;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/ConvergenceException;
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    move v2, v0

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/ml/clustering/Cluster;

    invoke-virtual {v3}, Lorg/apache/commons/math3/ml/clustering/Cluster;->getPoints()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-le v4, v2, :cond_0

    move-object v1, v3

    move v2, v4

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lorg/apache/commons/math3/ml/clustering/Cluster;->getPoints()Ljava/util/List;

    move-result-object p1

    iget-object p0, p0, Lorg/apache/commons/math3/ml/clustering/KMeansPlusPlusClusterer;->d:Lorg/apache/commons/math3/random/RandomGenerator;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p0, v0}, Lorg/apache/commons/math3/random/RandomGenerator;->nextInt(I)I

    move-result p0

    invoke-interface {p1, p0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/commons/math3/ml/clustering/Clusterable;

    return-object p0

    :cond_2
    new-instance p0, Lorg/apache/commons/math3/exception/ConvergenceException;

    sget-object p1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->EMPTY_CLUSTER_IN_K_MEANS:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    new-array v0, v0, [Ljava/lang/Object;

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/math3/exception/ConvergenceException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw p0
.end method

.method public final g(Ljava/util/Collection;)Lorg/apache/commons/math3/ml/clustering/Clusterable;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lorg/apache/commons/math3/ml/clustering/CentroidCluster<",
            "TT;>;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/ConvergenceException;
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const-wide/high16 v0, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    const/4 v2, 0x0

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/ml/clustering/CentroidCluster;

    invoke-virtual {v3}, Lorg/apache/commons/math3/ml/clustering/Cluster;->getPoints()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v3}, Lorg/apache/commons/math3/ml/clustering/CentroidCluster;->getCenter()Lorg/apache/commons/math3/ml/clustering/Clusterable;

    move-result-object v4

    new-instance v5, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;

    invoke-direct {v5}, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;-><init>()V

    invoke-virtual {v3}, Lorg/apache/commons/math3/ml/clustering/Cluster;->getPoints()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/commons/math3/ml/clustering/Clusterable;

    invoke-virtual {p0, v7, v4}, Lorg/apache/commons/math3/ml/clustering/Clusterer;->distance(Lorg/apache/commons/math3/ml/clustering/Clusterable;Lorg/apache/commons/math3/ml/clustering/Clusterable;)D

    move-result-wide v7

    invoke-virtual {v5, v7, v8}, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->increment(D)V

    goto :goto_1

    :cond_1
    invoke-virtual {v5}, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->getResult()D

    move-result-wide v4

    cmpl-double v6, v4, v0

    if-lez v6, :cond_0

    move-object v2, v3

    move-wide v0, v4

    goto :goto_0

    :cond_2
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lorg/apache/commons/math3/ml/clustering/Cluster;->getPoints()Ljava/util/List;

    move-result-object p1

    iget-object p0, p0, Lorg/apache/commons/math3/ml/clustering/KMeansPlusPlusClusterer;->d:Lorg/apache/commons/math3/random/RandomGenerator;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p0, v0}, Lorg/apache/commons/math3/random/RandomGenerator;->nextInt(I)I

    move-result p0

    invoke-interface {p1, p0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/commons/math3/ml/clustering/Clusterable;

    return-object p0

    :cond_3
    new-instance p0, Lorg/apache/commons/math3/exception/ConvergenceException;

    sget-object p1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->EMPTY_CLUSTER_IN_K_MEANS:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/math3/exception/ConvergenceException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw p0
.end method

.method public getEmptyClusterStrategy()Lorg/apache/commons/math3/ml/clustering/KMeansPlusPlusClusterer$EmptyClusterStrategy;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/ml/clustering/KMeansPlusPlusClusterer;->e:Lorg/apache/commons/math3/ml/clustering/KMeansPlusPlusClusterer$EmptyClusterStrategy;

    return-object p0
.end method

.method public getK()I
    .locals 0

    iget p0, p0, Lorg/apache/commons/math3/ml/clustering/KMeansPlusPlusClusterer;->b:I

    return p0
.end method

.method public getMaxIterations()I
    .locals 0

    iget p0, p0, Lorg/apache/commons/math3/ml/clustering/KMeansPlusPlusClusterer;->c:I

    return p0
.end method

.method public getRandomGenerator()Lorg/apache/commons/math3/random/RandomGenerator;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/ml/clustering/KMeansPlusPlusClusterer;->d:Lorg/apache/commons/math3/random/RandomGenerator;

    return-object p0
.end method
