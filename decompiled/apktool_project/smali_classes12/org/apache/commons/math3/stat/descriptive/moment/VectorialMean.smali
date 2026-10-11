.class public Lorg/apache/commons/math3/stat/descriptive/moment/VectorialMean;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x721dff326082812cL


# instance fields
.field private final means:[Lorg/apache/commons/math3/stat/descriptive/moment/Mean;


# direct methods
.method public constructor <init>(I)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, p1, [Lorg/apache/commons/math3/stat/descriptive/moment/Mean;

    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/VectorialMean;->means:[Lorg/apache/commons/math3/stat/descriptive/moment/Mean;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    iget-object v1, p0, Lorg/apache/commons/math3/stat/descriptive/moment/VectorialMean;->means:[Lorg/apache/commons/math3/stat/descriptive/moment/Mean;

    new-instance v2, Lorg/apache/commons/math3/stat/descriptive/moment/Mean;

    invoke-direct {v2}, Lorg/apache/commons/math3/stat/descriptive/moment/Mean;-><init>()V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lorg/apache/commons/math3/stat/descriptive/moment/VectorialMean;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lorg/apache/commons/math3/stat/descriptive/moment/VectorialMean;

    iget-object p0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/VectorialMean;->means:[Lorg/apache/commons/math3/stat/descriptive/moment/Mean;

    iget-object p1, p1, Lorg/apache/commons/math3/stat/descriptive/moment/VectorialMean;->means:[Lorg/apache/commons/math3/stat/descriptive/moment/Mean;

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public getN()J
    .locals 2

    iget-object p0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/VectorialMean;->means:[Lorg/apache/commons/math3/stat/descriptive/moment/Mean;

    array-length v0, p0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    aget-object p0, p0, v0

    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/moment/Mean;->getN()J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public getResult()[D
    .locals 5

    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/VectorialMean;->means:[Lorg/apache/commons/math3/stat/descriptive/moment/Mean;

    array-length v0, v0

    new-array v1, v0, [D

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    iget-object v3, p0, Lorg/apache/commons/math3/stat/descriptive/moment/VectorialMean;->means:[Lorg/apache/commons/math3/stat/descriptive/moment/Mean;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lorg/apache/commons/math3/stat/descriptive/moment/Mean;->getResult()D

    move-result-wide v3

    aput-wide v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public hashCode()I
    .locals 1

    iget-object p0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/VectorialMean;->means:[Lorg/apache/commons/math3/stat/descriptive/moment/Mean;

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result p0

    const/16 v0, 0x1f

    add-int/2addr v0, p0

    return v0
.end method

.method public increment([D)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    array-length v0, p1

    iget-object v1, p0, Lorg/apache/commons/math3/stat/descriptive/moment/VectorialMean;->means:[Lorg/apache/commons/math3/stat/descriptive/moment/Mean;

    array-length v1, v1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lorg/apache/commons/math3/stat/descriptive/moment/VectorialMean;->means:[Lorg/apache/commons/math3/stat/descriptive/moment/Mean;

    aget-object v1, v1, v0

    aget-wide v2, p1, v0

    invoke-virtual {v1, v2, v3}, Lorg/apache/commons/math3/stat/descriptive/moment/Mean;->increment(D)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    new-instance v0, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length p1, p1

    iget-object p0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/VectorialMean;->means:[Lorg/apache/commons/math3/stat/descriptive/moment/Mean;

    array-length p0, p0

    invoke-direct {v0, p1, p0}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v0
.end method
