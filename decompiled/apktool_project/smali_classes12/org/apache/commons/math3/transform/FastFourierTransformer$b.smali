.class public Lorg/apache/commons/math3/transform/FastFourierTransformer$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/transform/FastFourierTransformer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public e:[I

.field public f:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/math3/transform/FastFourierTransformer$b;->f:Ljava/lang/Object;

    const/4 v0, 0x0

    move-object v1, p1

    move v2, v0

    :goto_0
    instance-of v3, v1, [Ljava/lang/Object;

    if-eqz v3, :cond_0

    check-cast v1, [Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    aget-object v1, v1, v0

    goto :goto_0

    :cond_0
    new-array v1, v2, [I

    iput-object v1, p0, Lorg/apache/commons/math3/transform/FastFourierTransformer$b;->e:[I

    move v1, v0

    :goto_1
    instance-of v2, p1, [Ljava/lang/Object;

    if-eqz v2, :cond_1

    check-cast p1, [Ljava/lang/Object;

    iget-object v2, p0, Lorg/apache/commons/math3/transform/FastFourierTransformer$b;->e:[I

    add-int/lit8 v3, v1, 0x1

    array-length v4, p1

    aput v4, v2, v1

    aget-object p1, p1, v0

    move v1, v3

    goto :goto_1

    :cond_1
    return-void
.end method


# virtual methods
.method public final a(Lorg/apache/commons/math3/transform/FastFourierTransformer$b;)V
    .locals 9

    iget-object v0, p0, Lorg/apache/commons/math3/transform/FastFourierTransformer$b;->e:[I

    array-length v0, v0

    new-array v0, v0, [I

    const/4 v1, 0x1

    const/4 v2, 0x0

    move v4, v1

    move v3, v2

    :goto_0
    iget-object v5, p0, Lorg/apache/commons/math3/transform/FastFourierTransformer$b;->e:[I

    array-length v6, v5

    if-ge v3, v6, :cond_0

    aget v5, v5, v3

    mul-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    array-length v3, v5

    filled-new-array {v4, v3}, [I

    move-result-object v3

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[I

    array-length v4, v3

    move v5, v2

    :goto_1
    if-ge v5, v4, :cond_3

    aget-object v6, v3, v5

    iget-object v7, p0, Lorg/apache/commons/math3/transform/FastFourierTransformer$b;->e:[I

    array-length v7, v7

    invoke-static {v0, v2, v6, v2, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v6, v2

    :goto_2
    iget-object v7, p0, Lorg/apache/commons/math3/transform/FastFourierTransformer$b;->e:[I

    array-length v8, v7

    if-ge v6, v8, :cond_2

    aget v8, v0, v6

    add-int/2addr v8, v1

    aput v8, v0, v6

    aget v7, v7, v6

    if-ge v8, v7, :cond_1

    goto :goto_3

    :cond_1
    aput v2, v0, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_2
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    array-length v0, v3

    :goto_4
    if-ge v2, v0, :cond_4

    aget-object v1, v3, v2

    invoke-virtual {p0, v1}, Lorg/apache/commons/math3/transform/FastFourierTransformer$b;->b([I)Lorg/apache/commons/math3/complex/Complex;

    move-result-object v4

    invoke-virtual {p1, v4, v1}, Lorg/apache/commons/math3/transform/FastFourierTransformer$b;->e(Lorg/apache/commons/math3/complex/Complex;[I)Lorg/apache/commons/math3/complex/Complex;

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_4
    return-void
.end method

.method public varargs b([I)Lorg/apache/commons/math3/complex/Complex;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_1

    iget-object p1, p0, Lorg/apache/commons/math3/transform/FastFourierTransformer$b;->e:[I

    array-length p1, p1

    if-gtz p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance p1, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    iget-object p0, p0, Lorg/apache/commons/math3/transform/FastFourierTransformer$b;->e:[I

    array-length p0, p0

    invoke-direct {p1, v0, p0}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw p1

    :cond_1
    array-length v1, p1

    iget-object v2, p0, Lorg/apache/commons/math3/transform/FastFourierTransformer$b;->e:[I

    array-length v2, v2

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lorg/apache/commons/math3/transform/FastFourierTransformer$b;->f:Ljava/lang/Object;

    :goto_0
    iget-object v2, p0, Lorg/apache/commons/math3/transform/FastFourierTransformer$b;->e:[I

    array-length v2, v2

    if-ge v0, v2, :cond_2

    check-cast v1, [Ljava/lang/Object;

    aget v2, p1, v0

    aget-object v1, v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    check-cast v1, Lorg/apache/commons/math3/complex/Complex;

    return-object v1

    :cond_3
    new-instance v0, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length p1, p1

    iget-object p0, p0, Lorg/apache/commons/math3/transform/FastFourierTransformer$b;->e:[I

    array-length p0, p0

    invoke-direct {v0, p1, p0}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v0
.end method

.method public c()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/transform/FastFourierTransformer$b;->f:Ljava/lang/Object;

    return-object p0
.end method

.method public clone()Ljava/lang/Object;
    .locals 3

    new-instance v0, Lorg/apache/commons/math3/transform/FastFourierTransformer$b;

    const-class v1, Lorg/apache/commons/math3/complex/Complex;

    iget-object v2, p0, Lorg/apache/commons/math3/transform/FastFourierTransformer$b;->e:[I

    invoke-static {v1, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/transform/FastFourierTransformer$b;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/transform/FastFourierTransformer$b;->a(Lorg/apache/commons/math3/transform/FastFourierTransformer$b;)V

    return-object v0
.end method

.method public d()[I
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/transform/FastFourierTransformer$b;->e:[I

    invoke-virtual {p0}, [I->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    return-object p0
.end method

.method public varargs e(Lorg/apache/commons/math3/complex/Complex;[I)Lorg/apache/commons/math3/complex/Complex;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p2, :cond_1

    iget-object p1, p0, Lorg/apache/commons/math3/transform/FastFourierTransformer$b;->e:[I

    array-length p1, p1

    if-gtz p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance p1, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    iget-object p0, p0, Lorg/apache/commons/math3/transform/FastFourierTransformer$b;->e:[I

    array-length p0, p0

    invoke-direct {p1, v0, p0}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw p1

    :cond_1
    array-length v1, p2

    iget-object v2, p0, Lorg/apache/commons/math3/transform/FastFourierTransformer$b;->e:[I

    array-length v2, v2

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lorg/apache/commons/math3/transform/FastFourierTransformer$b;->f:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    :goto_0
    iget-object v2, p0, Lorg/apache/commons/math3/transform/FastFourierTransformer$b;->e:[I

    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_2

    aget v2, p2, v0

    aget-object v1, v1, v2

    check-cast v1, [Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    array-length p0, v2

    add-int/lit8 p0, p0, -0x1

    aget p0, p2, p0

    aget-object p0, v1, p0

    check-cast p0, Lorg/apache/commons/math3/complex/Complex;

    array-length v0, v2

    add-int/lit8 v0, v0, -0x1

    aget p2, p2, v0

    aput-object p1, v1, p2

    return-object p0

    :cond_3
    new-instance p1, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length p2, p2

    iget-object p0, p0, Lorg/apache/commons/math3/transform/FastFourierTransformer$b;->e:[I

    array-length p0, p0

    invoke-direct {p1, p2, p0}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw p1
.end method
