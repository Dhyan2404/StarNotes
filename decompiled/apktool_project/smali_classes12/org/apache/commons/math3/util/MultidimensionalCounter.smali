.class public Lorg/apache/commons/math3/util/MultidimensionalCounter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/util/MultidimensionalCounter$Iterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field public final e:I

.field public final f:[I

.field public final g:[I

.field public final h:I

.field public final i:I


# direct methods
.method public varargs constructor <init>([I)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    array-length v0, p1

    iput v0, p0, Lorg/apache/commons/math3/util/MultidimensionalCounter;->e:I

    invoke-static {p1}, Lorg/apache/commons/math3/util/MathArrays;->copyOf([I)[I

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/math3/util/MultidimensionalCounter;->g:[I

    new-array v1, v0, [I

    iput-object v1, p0, Lorg/apache/commons/math3/util/MultidimensionalCounter;->f:[I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/apache/commons/math3/util/MultidimensionalCounter;->i:I

    aget v0, p1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    iget v4, p0, Lorg/apache/commons/math3/util/MultidimensionalCounter;->i:I

    if-ge v3, v4, :cond_1

    add-int/lit8 v4, v3, 0x1

    move v6, v1

    move v5, v4

    :goto_1
    iget v7, p0, Lorg/apache/commons/math3/util/MultidimensionalCounter;->e:I

    if-ge v5, v7, :cond_0

    aget v7, p1, v5

    mul-int/2addr v6, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_0
    iget-object v5, p0, Lorg/apache/commons/math3/util/MultidimensionalCounter;->f:[I

    aput v6, v5, v3

    aget v3, p1, v3

    mul-int/2addr v0, v3

    move v3, v4

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lorg/apache/commons/math3/util/MultidimensionalCounter;->f:[I

    aput v2, p1, v4

    if-lez v0, :cond_2

    iput v0, p0, Lorg/apache/commons/math3/util/MultidimensionalCounter;->h:I

    return-void

    :cond_2
    new-instance p0, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;-><init>(Ljava/lang/Number;)V

    throw p0
.end method

.method public static synthetic a(Lorg/apache/commons/math3/util/MultidimensionalCounter;)I
    .locals 0

    iget p0, p0, Lorg/apache/commons/math3/util/MultidimensionalCounter;->e:I

    return p0
.end method

.method public static synthetic b(Lorg/apache/commons/math3/util/MultidimensionalCounter;)I
    .locals 0

    iget p0, p0, Lorg/apache/commons/math3/util/MultidimensionalCounter;->h:I

    return p0
.end method

.method public static synthetic c(Lorg/apache/commons/math3/util/MultidimensionalCounter;)I
    .locals 0

    iget p0, p0, Lorg/apache/commons/math3/util/MultidimensionalCounter;->i:I

    return p0
.end method

.method public static synthetic d(Lorg/apache/commons/math3/util/MultidimensionalCounter;)[I
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/util/MultidimensionalCounter;->g:[I

    return-object p0
.end method


# virtual methods
.method public varargs getCount([I)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    array-length v0, p1

    iget v1, p0, Lorg/apache/commons/math3/util/MultidimensionalCounter;->e:I

    if-ne v0, v1, :cond_2

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_0
    iget v3, p0, Lorg/apache/commons/math3/util/MultidimensionalCounter;->e:I

    if-ge v1, v3, :cond_1

    aget v3, p1, v1

    if-ltz v3, :cond_0

    iget-object v4, p0, Lorg/apache/commons/math3/util/MultidimensionalCounter;->g:[I

    aget v4, v4, v1

    if-ge v3, v4, :cond_0

    iget-object v4, p0, Lorg/apache/commons/math3/util/MultidimensionalCounter;->f:[I

    aget v4, v4, v1

    mul-int/2addr v4, v3

    add-int/2addr v2, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance p1, Lorg/apache/commons/math3/exception/OutOfRangeException;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object p0, p0, Lorg/apache/commons/math3/util/MultidimensionalCounter;->g:[I

    aget p0, p0, v1

    add-int/lit8 p0, p0, -0x1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-direct {p1, v2, v0, p0}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw p1

    :cond_1
    iget p0, p0, Lorg/apache/commons/math3/util/MultidimensionalCounter;->i:I

    aget p0, p1, p0

    add-int/2addr v2, p0

    return v2

    :cond_2
    new-instance v0, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length p1, p1

    iget p0, p0, Lorg/apache/commons/math3/util/MultidimensionalCounter;->e:I

    invoke-direct {v0, p1, p0}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v0
.end method

.method public getCounts(I)[I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    const/4 v0, 0x0

    if-ltz p1, :cond_2

    iget v1, p0, Lorg/apache/commons/math3/util/MultidimensionalCounter;->h:I

    if-ge p1, v1, :cond_2

    iget v1, p0, Lorg/apache/commons/math3/util/MultidimensionalCounter;->e:I

    new-array v1, v1, [I

    move v2, v0

    move v3, v2

    :goto_0
    iget v4, p0, Lorg/apache/commons/math3/util/MultidimensionalCounter;->i:I

    if-ge v2, v4, :cond_1

    iget-object v4, p0, Lorg/apache/commons/math3/util/MultidimensionalCounter;->f:[I

    aget v4, v4, v2

    move v5, v0

    :goto_1
    if-gt v3, p1, :cond_0

    add-int/2addr v3, v4

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v5, v5, -0x1

    sub-int/2addr v3, v4

    aput v5, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    sub-int/2addr p1, v3

    aput p1, v1, v4

    return-object v1

    :cond_2
    new-instance v1, Lorg/apache/commons/math3/exception/OutOfRangeException;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget p0, p0, Lorg/apache/commons/math3/util/MultidimensionalCounter;->h:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-direct {v1, p1, v0, p0}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw v1
.end method

.method public getDimension()I
    .locals 0

    iget p0, p0, Lorg/apache/commons/math3/util/MultidimensionalCounter;->e:I

    return p0
.end method

.method public getSize()I
    .locals 0

    iget p0, p0, Lorg/apache/commons/math3/util/MultidimensionalCounter;->h:I

    return p0
.end method

.method public getSizes()[I
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/util/MultidimensionalCounter;->g:[I

    invoke-static {p0}, Lorg/apache/commons/math3/util/MathArrays;->copyOf([I)[I

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/math3/util/MultidimensionalCounter;->iterator()Lorg/apache/commons/math3/util/MultidimensionalCounter$Iterator;

    move-result-object p0

    return-object p0
.end method

.method public iterator()Lorg/apache/commons/math3/util/MultidimensionalCounter$Iterator;
    .locals 1

    .line 2
    new-instance v0, Lorg/apache/commons/math3/util/MultidimensionalCounter$Iterator;

    invoke-direct {v0, p0}, Lorg/apache/commons/math3/util/MultidimensionalCounter$Iterator;-><init>(Lorg/apache/commons/math3/util/MultidimensionalCounter;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lorg/apache/commons/math3/util/MultidimensionalCounter;->e:I

    if-ge v1, v2, :cond_0

    const-string v2, "["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    filled-new-array {v1}, [I

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/commons/math3/util/MultidimensionalCounter;->getCount([I)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
