.class public Lorg/apache/commons/math3/stat/clustering/EuclideanIntegerPoint;
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
        "Lorg/apache/commons/math3/stat/clustering/EuclideanIntegerPoint;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x36c318a06b8caaf9L


# instance fields
.field private final point:[I


# direct methods
.method public constructor <init>([I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/math3/stat/clustering/EuclideanIntegerPoint;->point:[I

    return-void
.end method


# virtual methods
.method public bridge synthetic centroidOf(Ljava/util/Collection;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/stat/clustering/EuclideanIntegerPoint;->centroidOf(Ljava/util/Collection;)Lorg/apache/commons/math3/stat/clustering/EuclideanIntegerPoint;

    move-result-object p0

    return-object p0
.end method

.method public centroidOf(Ljava/util/Collection;)Lorg/apache/commons/math3/stat/clustering/EuclideanIntegerPoint;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lorg/apache/commons/math3/stat/clustering/EuclideanIntegerPoint;",
            ">;)",
            "Lorg/apache/commons/math3/stat/clustering/EuclideanIntegerPoint;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/clustering/EuclideanIntegerPoint;->getPoint()[I

    move-result-object p0

    array-length p0, p0

    new-array v0, p0, [I

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

    check-cast v2, Lorg/apache/commons/math3/stat/clustering/EuclideanIntegerPoint;

    :goto_0
    if-ge v3, p0, :cond_0

    .line 4
    aget v4, v0, v3

    invoke-virtual {v2}, Lorg/apache/commons/math3/stat/clustering/EuclideanIntegerPoint;->getPoint()[I

    move-result-object v5

    aget v5, v5, v3

    add-int/2addr v4, v5

    aput v4, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-ge v3, p0, :cond_2

    .line 5
    aget v1, v0, v3

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v2

    div-int/2addr v1, v2

    aput v1, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 6
    :cond_2
    new-instance p0, Lorg/apache/commons/math3/stat/clustering/EuclideanIntegerPoint;

    invoke-direct {p0, v0}, Lorg/apache/commons/math3/stat/clustering/EuclideanIntegerPoint;-><init>([I)V

    return-object p0
.end method

.method public bridge synthetic distanceFrom(Ljava/lang/Object;)D
    .locals 0

    .line 1
    check-cast p1, Lorg/apache/commons/math3/stat/clustering/EuclideanIntegerPoint;

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/stat/clustering/EuclideanIntegerPoint;->distanceFrom(Lorg/apache/commons/math3/stat/clustering/EuclideanIntegerPoint;)D

    move-result-wide p0

    return-wide p0
.end method

.method public distanceFrom(Lorg/apache/commons/math3/stat/clustering/EuclideanIntegerPoint;)D
    .locals 0

    .line 2
    iget-object p0, p0, Lorg/apache/commons/math3/stat/clustering/EuclideanIntegerPoint;->point:[I

    invoke-virtual {p1}, Lorg/apache/commons/math3/stat/clustering/EuclideanIntegerPoint;->getPoint()[I

    move-result-object p1

    invoke-static {p0, p1}, Lorg/apache/commons/math3/util/MathArrays;->distance([I[I)D

    move-result-wide p0

    return-wide p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lorg/apache/commons/math3/stat/clustering/EuclideanIntegerPoint;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p0, p0, Lorg/apache/commons/math3/stat/clustering/EuclideanIntegerPoint;->point:[I

    check-cast p1, Lorg/apache/commons/math3/stat/clustering/EuclideanIntegerPoint;

    iget-object p1, p1, Lorg/apache/commons/math3/stat/clustering/EuclideanIntegerPoint;->point:[I

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result p0

    return p0
.end method

.method public getPoint()[I
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/stat/clustering/EuclideanIntegerPoint;->point:[I

    return-object p0
.end method

.method public hashCode()I
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/stat/clustering/EuclideanIntegerPoint;->point:[I

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([I)I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/stat/clustering/EuclideanIntegerPoint;->point:[I

    invoke-static {p0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
