.class public Lorg/apache/commons/math3/ml/clustering/DoublePoint;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/math3/ml/clustering/Clusterable;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x36c318a06b8caaf9L


# instance fields
.field private final point:[D


# direct methods
.method public constructor <init>([D)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/apache/commons/math3/ml/clustering/DoublePoint;->point:[D

    return-void
.end method

.method public constructor <init>([I)V
    .locals 4

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    array-length v0, p1

    new-array v0, v0, [D

    iput-object v0, p0, Lorg/apache/commons/math3/ml/clustering/DoublePoint;->point:[D

    const/4 v0, 0x0

    .line 5
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 6
    iget-object v1, p0, Lorg/apache/commons/math3/ml/clustering/DoublePoint;->point:[D

    aget v2, p1, v0

    int-to-double v2, v2

    aput-wide v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lorg/apache/commons/math3/ml/clustering/DoublePoint;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p0, p0, Lorg/apache/commons/math3/ml/clustering/DoublePoint;->point:[D

    check-cast p1, Lorg/apache/commons/math3/ml/clustering/DoublePoint;

    iget-object p1, p1, Lorg/apache/commons/math3/ml/clustering/DoublePoint;->point:[D

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([D[D)Z

    move-result p0

    return p0
.end method

.method public getPoint()[D
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/ml/clustering/DoublePoint;->point:[D

    return-object p0
.end method

.method public hashCode()I
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/ml/clustering/DoublePoint;->point:[D

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([D)I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/ml/clustering/DoublePoint;->point:[D

    invoke-static {p0}, Ljava/util/Arrays;->toString([D)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
