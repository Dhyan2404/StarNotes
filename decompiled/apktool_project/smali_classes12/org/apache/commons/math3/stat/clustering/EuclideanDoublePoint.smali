.class public Lorg/apache/commons/math3/stat/clustering/EuclideanDoublePoint;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/math3/stat/clustering/Clusterable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/commons/math3/stat/clustering/Clusterable<",
        "Lorg/apache/commons/math3/stat/clustering/EuclideanDoublePoint;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x6f63c2790e4eb9f0L


# instance fields
.field private final point:[D


# direct methods
.method public constructor <init>([D)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/math3/stat/clustering/EuclideanDoublePoint;->point:[D

    return-void
.end method


# virtual methods
.method public bridge synthetic centroidOf(Ljava/util/Collection;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/stat/clustering/EuclideanDoublePoint;->centroidOf(Ljava/util/Collection;)Lorg/apache/commons/math3/stat/clustering/EuclideanDoublePoint;

    move-result-object p0

    return-object p0
.end method

.method public centroidOf(Ljava/util/Collection;)Lorg/apache/commons/math3/stat/clustering/EuclideanDoublePoint;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lorg/apache/commons/math3/stat/clustering/EuclideanDoublePoint;",
            ">;)",
            "Lorg/apache/commons/math3/stat/clustering/EuclideanDoublePoint;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/clustering/EuclideanDoublePoint;->getPoint()[D

    move-result-object p0

    array-length p0, p0

    new-array v0, p0, [D

    .line 3
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/stat/clustering/EuclideanDoublePoint;

    :goto_0
    if-ge v3, p0, :cond_0

    .line 4
    aget-wide v4, v0, v3

    invoke-virtual {v2}, Lorg/apache/commons/math3/stat/clustering/EuclideanDoublePoint;->getPoint()[D

    move-result-object v6

    aget-wide v6, v6, v3

    add-double/2addr v4, v6

    aput-wide v4, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-ge v3, p0, :cond_2

    .line 5
    aget-wide v1, v0, v3

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v4

    int-to-double v4, v4

    div-double/2addr v1, v4

    aput-wide v1, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 6
    :cond_2
    new-instance p0, Lorg/apache/commons/math3/stat/clustering/EuclideanDoublePoint;

    invoke-direct {p0, v0}, Lorg/apache/commons/math3/stat/clustering/EuclideanDoublePoint;-><init>([D)V

    return-object p0
.end method

.method public bridge synthetic distanceFrom(Ljava/lang/Object;)D
    .locals 0

    .line 1
    check-cast p1, Lorg/apache/commons/math3/stat/clustering/EuclideanDoublePoint;

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/stat/clustering/EuclideanDoublePoint;->distanceFrom(Lorg/apache/commons/math3/stat/clustering/EuclideanDoublePoint;)D

    move-result-wide p0

    return-wide p0
.end method

.method public distanceFrom(Lorg/apache/commons/math3/stat/clustering/EuclideanDoublePoint;)D
    .locals 0

    .line 2
    iget-object p0, p0, Lorg/apache/commons/math3/stat/clustering/EuclideanDoublePoint;->point:[D

    invoke-virtual {p1}, Lorg/apache/commons/math3/stat/clustering/EuclideanDoublePoint;->getPoint()[D

    move-result-object p1

    invoke-static {p0, p1}, Lorg/apache/commons/math3/util/MathArrays;->distance([D[D)D

    move-result-wide p0

    return-wide p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lorg/apache/commons/math3/stat/clustering/EuclideanDoublePoint;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p0, p0, Lorg/apache/commons/math3/stat/clustering/EuclideanDoublePoint;->point:[D

    check-cast p1, Lorg/apache/commons/math3/stat/clustering/EuclideanDoublePoint;

    iget-object p1, p1, Lorg/apache/commons/math3/stat/clustering/EuclideanDoublePoint;->point:[D

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([D[D)Z

    move-result p0

    return p0
.end method

.method public getPoint()[D
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/stat/clustering/EuclideanDoublePoint;->point:[D

    return-object p0
.end method

.method public hashCode()I
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/stat/clustering/EuclideanDoublePoint;->point:[D

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([D)I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/stat/clustering/EuclideanDoublePoint;->point:[D

    invoke-static {p0}, Ljava/util/Arrays;->toString([D)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
