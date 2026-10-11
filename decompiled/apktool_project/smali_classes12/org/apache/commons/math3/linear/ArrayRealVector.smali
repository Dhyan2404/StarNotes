.class public Lorg/apache/commons/math3/linear/ArrayRealVector;
.super Lorg/apache/commons/math3/linear/RealVector;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final DEFAULT_FORMAT:Lorg/apache/commons/math3/linear/RealVectorFormat;

.field private static final serialVersionUID:J = -0xf3cbe05aa2dda3bL


# instance fields
.field private data:[D


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lorg/apache/commons/math3/linear/RealVectorFormat;->getInstance()Lorg/apache/commons/math3/linear/RealVectorFormat;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/math3/linear/ArrayRealVector;->DEFAULT_FORMAT:Lorg/apache/commons/math3/linear/RealVectorFormat;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/apache/commons/math3/linear/RealVector;-><init>()V

    const/4 v0, 0x0

    new-array v0, v0, [D

    .line 2
    iput-object v0, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lorg/apache/commons/math3/linear/RealVector;-><init>()V

    .line 4
    new-array p1, p1, [D

    iput-object p1, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    return-void
.end method

.method public constructor <init>(ID)V
    .locals 0

    .line 5
    invoke-direct {p0}, Lorg/apache/commons/math3/linear/RealVector;-><init>()V

    .line 6
    new-array p1, p1, [D

    iput-object p1, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    .line 7
    invoke-static {p1, p2, p3}, Ljava/util/Arrays;->fill([DD)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/linear/ArrayRealVector;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 34
    invoke-direct {p0, p1, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>(Lorg/apache/commons/math3/linear/ArrayRealVector;Z)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/linear/ArrayRealVector;Lorg/apache/commons/math3/linear/ArrayRealVector;)V
    .locals 4

    .line 37
    invoke-direct {p0}, Lorg/apache/commons/math3/linear/RealVector;-><init>()V

    .line 38
    iget-object v0, p1, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    array-length v0, v0

    iget-object v1, p2, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    array-length v1, v1

    add-int/2addr v0, v1

    new-array v0, v0, [D

    iput-object v0, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    .line 39
    iget-object v1, p1, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    array-length v2, v1

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 40
    iget-object p2, p2, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    iget-object p0, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    iget-object p1, p1, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    array-length p1, p1

    array-length v0, p2

    invoke-static {p2, v3, p0, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/linear/ArrayRealVector;Lorg/apache/commons/math3/linear/RealVector;)V
    .locals 6

    .line 41
    invoke-direct {p0}, Lorg/apache/commons/math3/linear/RealVector;-><init>()V

    .line 42
    iget-object v0, p1, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    array-length v0, v0

    .line 43
    invoke-virtual {p2}, Lorg/apache/commons/math3/linear/RealVector;->getDimension()I

    move-result v1

    add-int v2, v0, v1

    .line 44
    new-array v2, v2, [D

    iput-object v2, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    .line 45
    iget-object p1, p1, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    const/4 v3, 0x0

    invoke-static {p1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    if-ge v3, v1, :cond_0

    .line 46
    iget-object p1, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    add-int v2, v0, v3

    invoke-virtual {p2, v3}, Lorg/apache/commons/math3/linear/RealVector;->getEntry(I)D

    move-result-wide v4

    aput-wide v4, p1, v2

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/linear/ArrayRealVector;Z)V
    .locals 0

    .line 35
    invoke-direct {p0}, Lorg/apache/commons/math3/linear/RealVector;-><init>()V

    .line 36
    iget-object p1, p1, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    if-eqz p2, :cond_0

    invoke-virtual {p1}, [D->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [D

    :cond_0
    iput-object p1, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/linear/ArrayRealVector;[D)V
    .locals 4

    .line 53
    invoke-direct {p0}, Lorg/apache/commons/math3/linear/RealVector;-><init>()V

    .line 54
    invoke-virtual {p1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getDimension()I

    move-result v0

    .line 55
    array-length v1, p2

    add-int v2, v0, v1

    .line 56
    new-array v2, v2, [D

    iput-object v2, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    .line 57
    iget-object p1, p1, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    const/4 v3, 0x0

    invoke-static {p1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 58
    iget-object p0, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    invoke-static {p2, v3, p0, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/linear/RealVector;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .line 29
    invoke-direct {p0}, Lorg/apache/commons/math3/linear/RealVector;-><init>()V

    if-eqz p1, :cond_1

    .line 30
    invoke-virtual {p1}, Lorg/apache/commons/math3/linear/RealVector;->getDimension()I

    move-result v0

    new-array v0, v0, [D

    iput-object v0, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    const/4 v0, 0x0

    .line 31
    :goto_0
    iget-object v1, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 32
    invoke-virtual {p1, v0}, Lorg/apache/commons/math3/linear/RealVector;->getEntry(I)D

    move-result-wide v2

    aput-wide v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void

    .line 33
    :cond_1
    new-instance p0, Lorg/apache/commons/math3/exception/NullArgumentException;

    invoke-direct {p0}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>()V

    throw p0
.end method

.method public constructor <init>(Lorg/apache/commons/math3/linear/RealVector;Lorg/apache/commons/math3/linear/ArrayRealVector;)V
    .locals 7

    .line 47
    invoke-direct {p0}, Lorg/apache/commons/math3/linear/RealVector;-><init>()V

    .line 48
    invoke-virtual {p1}, Lorg/apache/commons/math3/linear/RealVector;->getDimension()I

    move-result v0

    .line 49
    iget-object v1, p2, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    array-length v1, v1

    add-int v2, v0, v1

    .line 50
    new-array v2, v2, [D

    iput-object v2, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_0

    .line 51
    iget-object v4, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    invoke-virtual {p1, v3}, Lorg/apache/commons/math3/linear/RealVector;->getEntry(I)D

    move-result-wide v5

    aput-wide v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 52
    :cond_0
    iget-object p1, p2, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    iget-object p0, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    invoke-static {p1, v2, p0, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public constructor <init>([D)V
    .locals 0

    .line 8
    invoke-direct {p0}, Lorg/apache/commons/math3/linear/RealVector;-><init>()V

    .line 9
    invoke-virtual {p1}, [D->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [D

    iput-object p1, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    return-void
.end method

.method public constructor <init>([DII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/NumberIsTooLargeException;
        }
    .end annotation

    .line 13
    invoke-direct {p0}, Lorg/apache/commons/math3/linear/RealVector;-><init>()V

    if-eqz p1, :cond_1

    .line 14
    array-length v0, p1

    add-int v1, p2, p3

    if-lt v0, v1, :cond_0

    .line 15
    new-array v0, p3, [D

    iput-object v0, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    const/4 p0, 0x0

    .line 16
    invoke-static {p1, p2, v0, p0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void

    .line 17
    :cond_0
    new-instance p0, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    array-length p1, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p3, 0x1

    invoke-direct {p0, p2, p1, p3}, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw p0

    .line 18
    :cond_1
    new-instance p0, Lorg/apache/commons/math3/exception/NullArgumentException;

    invoke-direct {p0}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>()V

    throw p0
.end method

.method public constructor <init>([DLorg/apache/commons/math3/linear/ArrayRealVector;)V
    .locals 4

    .line 59
    invoke-direct {p0}, Lorg/apache/commons/math3/linear/RealVector;-><init>()V

    .line 60
    array-length v0, p1

    .line 61
    invoke-virtual {p2}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getDimension()I

    move-result v1

    add-int v2, v0, v1

    .line 62
    new-array v2, v2, [D

    iput-object v2, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    const/4 v3, 0x0

    .line 63
    invoke-static {p1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 64
    iget-object p1, p2, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    iget-object p0, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    invoke-static {p1, v3, p0, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public constructor <init>([DZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .line 10
    invoke-direct {p0}, Lorg/apache/commons/math3/linear/RealVector;-><init>()V

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 11
    invoke-virtual {p1}, [D->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [D

    :cond_0
    iput-object p1, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    return-void

    .line 12
    :cond_1
    new-instance p0, Lorg/apache/commons/math3/exception/NullArgumentException;

    invoke-direct {p0}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>()V

    throw p0
.end method

.method public constructor <init>([D[D)V
    .locals 4

    .line 65
    invoke-direct {p0}, Lorg/apache/commons/math3/linear/RealVector;-><init>()V

    .line 66
    array-length v0, p1

    .line 67
    array-length v1, p2

    add-int v2, v0, v1

    .line 68
    new-array v2, v2, [D

    iput-object v2, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    const/4 v3, 0x0

    .line 69
    invoke-static {p1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 70
    iget-object p0, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    invoke-static {p2, v3, p0, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public constructor <init>([Ljava/lang/Double;)V
    .locals 4

    .line 19
    invoke-direct {p0}, Lorg/apache/commons/math3/linear/RealVector;-><init>()V

    .line 20
    array-length v0, p1

    new-array v0, v0, [D

    iput-object v0, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    const/4 v0, 0x0

    .line 21
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 22
    iget-object v1, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    aget-object v2, p1, v0

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    aput-wide v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>([Ljava/lang/Double;II)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/NumberIsTooLargeException;
        }
    .end annotation

    .line 23
    invoke-direct {p0}, Lorg/apache/commons/math3/linear/RealVector;-><init>()V

    if-eqz p1, :cond_2

    .line 24
    array-length v0, p1

    add-int v1, p2, p3

    if-lt v0, v1, :cond_1

    .line 25
    new-array p3, p3, [D

    iput-object p3, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    move p3, p2

    :goto_0
    if-ge p3, v1, :cond_0

    .line 26
    iget-object v0, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    sub-int v2, p3, p2

    aget-object v3, p1, p3

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    aput-wide v3, v0, v2

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_0
    return-void

    .line 27
    :cond_1
    new-instance p0, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    array-length p1, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p3, 0x1

    invoke-direct {p0, p2, p1, p3}, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw p0

    .line 28
    :cond_2
    new-instance p0, Lorg/apache/commons/math3/exception/NullArgumentException;

    invoke-direct {p0}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>()V

    throw p0
.end method


# virtual methods
.method public add(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/ArrayRealVector;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 2
    instance-of v0, p1, Lorg/apache/commons/math3/linear/ArrayRealVector;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 3
    check-cast p1, Lorg/apache/commons/math3/linear/ArrayRealVector;

    iget-object p1, p1, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    .line 4
    array-length v0, p1

    .line 5
    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->checkVectorDimensions(I)V

    .line 6
    new-instance v2, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-direct {v2, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>(I)V

    .line 7
    iget-object v3, v2, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    :goto_0
    if-ge v1, v0, :cond_0

    .line 8
    iget-object v4, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    aget-wide v4, v4, v1

    aget-wide v6, p1, v1

    add-double/2addr v4, v6

    aput-wide v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v2

    .line 9
    :cond_1
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->checkVectorDimensions(Lorg/apache/commons/math3/linear/RealVector;)V

    .line 10
    iget-object p0, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    invoke-virtual {p0}, [D->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [D

    .line 11
    invoke-virtual {p1}, Lorg/apache/commons/math3/linear/RealVector;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 12
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 13
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/linear/RealVector$Entry;

    .line 14
    invoke-virtual {v0}, Lorg/apache/commons/math3/linear/RealVector$Entry;->getIndex()I

    move-result v2

    aget-wide v3, p0, v2

    invoke-virtual {v0}, Lorg/apache/commons/math3/linear/RealVector$Entry;->getValue()D

    move-result-wide v5

    add-double/2addr v3, v5

    aput-wide v3, p0, v2

    goto :goto_1

    .line 15
    :cond_2
    new-instance p1, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-direct {p1, p0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>([DZ)V

    return-object p1
.end method

.method public bridge synthetic add(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->add(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-result-object p0

    return-object p0
.end method

.method public addToEntry(ID)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    aget-wide v1, v0, p1

    add-double/2addr v1, p2

    aput-wide v1, v0, p1
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    new-instance p2, Lorg/apache/commons/math3/exception/OutOfRangeException;

    sget-object p3, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->INDEX:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object p0, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    array-length p0, p0

    add-int/lit8 p0, p0, -0x1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-direct {p2, p3, p1, v0, p0}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw p2
.end method

.method public append(Lorg/apache/commons/math3/linear/ArrayRealVector;)Lorg/apache/commons/math3/linear/ArrayRealVector;
    .locals 1

    .line 3
    new-instance v0, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>(Lorg/apache/commons/math3/linear/ArrayRealVector;Lorg/apache/commons/math3/linear/ArrayRealVector;)V

    return-object v0
.end method

.method public append(D)Lorg/apache/commons/math3/linear/RealVector;
    .locals 4

    .line 4
    iget-object v0, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    array-length v1, v0

    add-int/lit8 v1, v1, 0x1

    new-array v1, v1, [D

    .line 5
    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6
    iget-object p0, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    array-length p0, p0

    aput-wide p1, v1, p0

    .line 7
    new-instance p0, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-direct {p0, v1, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>([DZ)V

    return-object p0
.end method

.method public append(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;
    .locals 2

    .line 1
    :try_start_0
    new-instance v0, Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object v1, p1

    check-cast v1, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>(Lorg/apache/commons/math3/linear/ArrayRealVector;Lorg/apache/commons/math3/linear/ArrayRealVector;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 2
    :catch_0
    new-instance v0, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>(Lorg/apache/commons/math3/linear/ArrayRealVector;Lorg/apache/commons/math3/linear/RealVector;)V

    return-object v0
.end method

.method public checkVectorDimensions(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    array-length v0, v0

    if-ne v0, p1, :cond_0

    return-void

    .line 3
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    iget-object p0, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    array-length p0, p0

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v0
.end method

.method public checkVectorDimensions(Lorg/apache/commons/math3/linear/RealVector;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lorg/apache/commons/math3/linear/RealVector;->getDimension()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->checkVectorDimensions(I)V

    return-void
.end method

.method public combine(DDLorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/ArrayRealVector;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->copy()Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-result-object v0

    move-wide v1, p1

    move-wide v3, p3

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/math3/linear/ArrayRealVector;->combineToSelf(DDLorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic combine(DDLorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 1
    invoke-virtual/range {p0 .. p5}, Lorg/apache/commons/math3/linear/ArrayRealVector;->combine(DDLorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-result-object p0

    return-object p0
.end method

.method public combineToSelf(DDLorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/ArrayRealVector;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 2
    instance-of v0, p5, Lorg/apache/commons/math3/linear/ArrayRealVector;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    check-cast p5, Lorg/apache/commons/math3/linear/ArrayRealVector;

    iget-object p5, p5, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    .line 4
    array-length v0, p5

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->checkVectorDimensions(I)V

    .line 5
    :goto_0
    iget-object v0, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 6
    aget-wide v2, v0, v1

    mul-double/2addr v2, p1

    aget-wide v4, p5, v1

    mul-double/2addr v4, p3

    add-double/2addr v2, v4

    aput-wide v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p0, p5}, Lorg/apache/commons/math3/linear/ArrayRealVector;->checkVectorDimensions(Lorg/apache/commons/math3/linear/RealVector;)V

    .line 8
    :goto_1
    iget-object v0, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 9
    aget-wide v2, v0, v1

    mul-double/2addr v2, p1

    invoke-virtual {p5, v1}, Lorg/apache/commons/math3/linear/RealVector;->getEntry(I)D

    move-result-wide v4

    mul-double/2addr v4, p3

    add-double/2addr v2, v4

    aput-wide v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-object p0
.end method

.method public bridge synthetic combineToSelf(DDLorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 1
    invoke-virtual/range {p0 .. p5}, Lorg/apache/commons/math3/linear/ArrayRealVector;->combineToSelf(DDLorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-result-object p0

    return-object p0
.end method

.method public copy()Lorg/apache/commons/math3/linear/ArrayRealVector;
    .locals 2

    .line 2
    new-instance v0, Lorg/apache/commons/math3/linear/ArrayRealVector;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>(Lorg/apache/commons/math3/linear/ArrayRealVector;Z)V

    return-object v0
.end method

.method public bridge synthetic copy()Lorg/apache/commons/math3/linear/RealVector;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->copy()Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-result-object p0

    return-object p0
.end method

.method public dotProduct(Lorg/apache/commons/math3/linear/RealVector;)D
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    instance-of v0, p1, Lorg/apache/commons/math3/linear/ArrayRealVector;

    if-eqz v0, :cond_1

    check-cast p1, Lorg/apache/commons/math3/linear/ArrayRealVector;

    iget-object p1, p1, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    array-length v0, p1

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->checkVectorDimensions(I)V

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    array-length v4, v3

    if-ge v2, v4, :cond_0

    aget-wide v3, v3, v2

    aget-wide v5, p1, v2

    mul-double/2addr v3, v5

    add-double/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-wide v0

    :cond_1
    invoke-super {p0, p1}, Lorg/apache/commons/math3/linear/RealVector;->dotProduct(Lorg/apache/commons/math3/linear/RealVector;)D

    move-result-wide p0

    return-wide p0
.end method

.method public ebeDivide(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/ArrayRealVector;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 2
    instance-of v0, p1, Lorg/apache/commons/math3/linear/ArrayRealVector;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 3
    check-cast p1, Lorg/apache/commons/math3/linear/ArrayRealVector;

    iget-object p1, p1, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    .line 4
    array-length v0, p1

    .line 5
    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->checkVectorDimensions(I)V

    .line 6
    new-instance v2, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-direct {v2, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>(I)V

    .line 7
    iget-object v3, v2, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    :goto_0
    if-ge v1, v0, :cond_0

    .line 8
    iget-object v4, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    aget-wide v4, v4, v1

    aget-wide v6, p1, v1

    div-double/2addr v4, v6

    aput-wide v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v2

    .line 9
    :cond_1
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->checkVectorDimensions(Lorg/apache/commons/math3/linear/RealVector;)V

    .line 10
    iget-object v0, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    invoke-virtual {v0}, [D->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    move v2, v1

    .line 11
    :goto_1
    iget-object v3, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    array-length v3, v3

    if-ge v2, v3, :cond_2

    .line 12
    aget-wide v3, v0, v2

    invoke-virtual {p1, v2}, Lorg/apache/commons/math3/linear/RealVector;->getEntry(I)D

    move-result-wide v5

    div-double/2addr v3, v5

    aput-wide v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 13
    :cond_2
    new-instance p0, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>([DZ)V

    return-object p0
.end method

.method public bridge synthetic ebeDivide(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->ebeDivide(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-result-object p0

    return-object p0
.end method

.method public ebeMultiply(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/ArrayRealVector;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 2
    instance-of v0, p1, Lorg/apache/commons/math3/linear/ArrayRealVector;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 3
    check-cast p1, Lorg/apache/commons/math3/linear/ArrayRealVector;

    iget-object p1, p1, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    .line 4
    array-length v0, p1

    .line 5
    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->checkVectorDimensions(I)V

    .line 6
    new-instance v2, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-direct {v2, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>(I)V

    .line 7
    iget-object v3, v2, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    :goto_0
    if-ge v1, v0, :cond_0

    .line 8
    iget-object v4, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    aget-wide v4, v4, v1

    aget-wide v6, p1, v1

    mul-double/2addr v4, v6

    aput-wide v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v2

    .line 9
    :cond_1
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->checkVectorDimensions(Lorg/apache/commons/math3/linear/RealVector;)V

    .line 10
    iget-object v0, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    invoke-virtual {v0}, [D->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    move v2, v1

    .line 11
    :goto_1
    iget-object v3, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    array-length v3, v3

    if-ge v2, v3, :cond_2

    .line 12
    aget-wide v3, v0, v2

    invoke-virtual {p1, v2}, Lorg/apache/commons/math3/linear/RealVector;->getEntry(I)D

    move-result-wide v5

    mul-double/2addr v3, v5

    aput-wide v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 13
    :cond_2
    new-instance p0, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>([DZ)V

    return-object p0
.end method

.method public bridge synthetic ebeMultiply(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->ebeMultiply(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-result-object p0

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lorg/apache/commons/math3/linear/RealVector;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lorg/apache/commons/math3/linear/RealVector;

    iget-object v1, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    array-length v1, v1

    invoke-virtual {p1}, Lorg/apache/commons/math3/linear/RealVector;->getDimension()I

    move-result v3

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    invoke-virtual {p1}, Lorg/apache/commons/math3/linear/RealVector;->isNaN()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->isNaN()Z

    move-result p0

    return p0

    :cond_3
    move v1, v2

    :goto_0
    iget-object v3, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    array-length v4, v3

    if-ge v1, v4, :cond_5

    aget-wide v3, v3, v1

    invoke-virtual {p1, v1}, Lorg/apache/commons/math3/linear/RealVector;->getEntry(I)D

    move-result-wide v5

    cmpl-double v3, v3, v5

    if-eqz v3, :cond_4

    return v2

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    return v0
.end method

.method public getDataRef()[D
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    return-object p0
.end method

.method public getDimension()I
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    array-length p0, p0

    return p0
.end method

.method public getDistance(Lorg/apache/commons/math3/linear/RealVector;)D
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    instance-of v0, p1, Lorg/apache/commons/math3/linear/ArrayRealVector;

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    if-eqz v0, :cond_1

    check-cast p1, Lorg/apache/commons/math3/linear/ArrayRealVector;

    iget-object p1, p1, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    array-length v0, p1

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->checkVectorDimensions(I)V

    :goto_0
    iget-object v0, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    array-length v4, v0

    if-ge v1, v4, :cond_0

    aget-wide v4, v0, v1

    aget-wide v6, p1, v1

    sub-double/2addr v4, v6

    mul-double/2addr v4, v4

    add-double/2addr v2, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide p0

    return-wide p0

    :cond_1
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->checkVectorDimensions(Lorg/apache/commons/math3/linear/RealVector;)V

    :goto_1
    iget-object v0, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    array-length v4, v0

    if-ge v1, v4, :cond_2

    aget-wide v4, v0, v1

    invoke-virtual {p1, v1}, Lorg/apache/commons/math3/linear/RealVector;->getEntry(I)D

    move-result-wide v6

    sub-double/2addr v4, v6

    mul-double/2addr v4, v4

    add-double/2addr v2, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide p0

    return-wide p0
.end method

.method public getEntry(I)D
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    aget-wide p0, v0, p1
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p0

    :catch_0
    new-instance v0, Lorg/apache/commons/math3/exception/OutOfRangeException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->INDEX:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getDimension()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-direct {v0, v1, p1, v2, p0}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw v0
.end method

.method public getL1Distance(Lorg/apache/commons/math3/linear/RealVector;)D
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    instance-of v0, p1, Lorg/apache/commons/math3/linear/ArrayRealVector;

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    if-eqz v0, :cond_1

    check-cast p1, Lorg/apache/commons/math3/linear/ArrayRealVector;

    iget-object p1, p1, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    array-length v0, p1

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->checkVectorDimensions(I)V

    :goto_0
    iget-object v0, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    array-length v4, v0

    if-ge v1, v4, :cond_0

    aget-wide v4, v0, v1

    aget-wide v6, p1, v1

    sub-double/2addr v4, v6

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v4

    add-double/2addr v2, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-wide v2

    :cond_1
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->checkVectorDimensions(Lorg/apache/commons/math3/linear/RealVector;)V

    :goto_1
    iget-object v0, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    array-length v4, v0

    if-ge v1, v4, :cond_2

    aget-wide v4, v0, v1

    invoke-virtual {p1, v1}, Lorg/apache/commons/math3/linear/RealVector;->getEntry(I)D

    move-result-wide v6

    sub-double/2addr v4, v6

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v4

    add-double/2addr v2, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return-wide v2
.end method

.method public getL1Norm()D
    .locals 6

    iget-object p0, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    array-length v0, p0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    aget-wide v4, p0, v3

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v4

    add-double/2addr v1, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-wide v1
.end method

.method public getLInfDistance(Lorg/apache/commons/math3/linear/RealVector;)D
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    instance-of v0, p1, Lorg/apache/commons/math3/linear/ArrayRealVector;

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    if-eqz v0, :cond_1

    check-cast p1, Lorg/apache/commons/math3/linear/ArrayRealVector;

    iget-object p1, p1, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    array-length v0, p1

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->checkVectorDimensions(I)V

    :goto_0
    iget-object v0, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    array-length v4, v0

    if-ge v1, v4, :cond_0

    aget-wide v4, v0, v1

    aget-wide v6, p1, v1

    sub-double/2addr v4, v6

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-wide v2

    :cond_1
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->checkVectorDimensions(Lorg/apache/commons/math3/linear/RealVector;)V

    :goto_1
    iget-object v0, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    array-length v4, v0

    if-ge v1, v4, :cond_2

    aget-wide v4, v0, v1

    invoke-virtual {p1, v1}, Lorg/apache/commons/math3/linear/RealVector;->getEntry(I)D

    move-result-wide v6

    sub-double/2addr v4, v6

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return-wide v2
.end method

.method public getLInfNorm()D
    .locals 6

    iget-object p0, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    array-length v0, p0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    aget-wide v4, p0, v3

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v4

    invoke-static {v1, v2, v4, v5}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-wide v1
.end method

.method public getNorm()D
    .locals 6

    iget-object p0, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    array-length v0, p0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    aget-wide v4, p0, v3

    mul-double/2addr v4, v4

    add-double/2addr v1, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public getSubVector(II)Lorg/apache/commons/math3/linear/RealVector;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;,
            Lorg/apache/commons/math3/exception/NotPositiveException;
        }
    .end annotation

    if-ltz p2, :cond_0

    new-instance v0, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-direct {v0, p2}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>(I)V

    :try_start_0
    iget-object v1, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    iget-object v2, v0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    const/4 v3, 0x0

    invoke-static {v1, p1, v2, v3, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/RealVector;->checkIndex(I)V

    add-int/2addr p1, p2

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/RealVector;->checkIndex(I)V

    :goto_0
    return-object v0

    :cond_0
    new-instance p0, Lorg/apache/commons/math3/exception/NotPositiveException;

    sget-object p1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->NUMBER_OF_ELEMENTS_SHOULD_BE_POSITIVE:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/exception/NotPositiveException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;)V

    throw p0
.end method

.method public hashCode()I
    .locals 1

    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->isNaN()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p0, 0x9

    return p0

    :cond_0
    iget-object p0, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    invoke-static {p0}, Lorg/apache/commons/math3/util/MathUtils;->hash([D)I

    move-result p0

    return p0
.end method

.method public isInfinite()Z
    .locals 5

    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->isNaN()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object p0, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    array-length v0, p0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    aget-wide v3, p0, v2

    invoke-static {v3, v4}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public isNaN()Z
    .locals 5

    iget-object p0, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-wide v3, p0, v2

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public map(Lorg/apache/commons/math3/analysis/UnivariateFunction;)Lorg/apache/commons/math3/linear/ArrayRealVector;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->copy()Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->mapToSelf(Lorg/apache/commons/math3/analysis/UnivariateFunction;)Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic map(Lorg/apache/commons/math3/analysis/UnivariateFunction;)Lorg/apache/commons/math3/linear/RealVector;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->map(Lorg/apache/commons/math3/analysis/UnivariateFunction;)Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-result-object p0

    return-object p0
.end method

.method public mapAddToSelf(D)Lorg/apache/commons/math3/linear/RealVector;
    .locals 4

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    array-length v2, v1

    if-ge v0, v2, :cond_0

    aget-wide v2, v1, v0

    add-double/2addr v2, p1

    aput-wide v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public mapDivideToSelf(D)Lorg/apache/commons/math3/linear/RealVector;
    .locals 4

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    array-length v2, v1

    if-ge v0, v2, :cond_0

    aget-wide v2, v1, v0

    div-double/2addr v2, p1

    aput-wide v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public mapMultiplyToSelf(D)Lorg/apache/commons/math3/linear/RealVector;
    .locals 4

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    array-length v2, v1

    if-ge v0, v2, :cond_0

    aget-wide v2, v1, v0

    mul-double/2addr v2, p1

    aput-wide v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public mapSubtractToSelf(D)Lorg/apache/commons/math3/linear/RealVector;
    .locals 4

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    array-length v2, v1

    if-ge v0, v2, :cond_0

    aget-wide v2, v1, v0

    sub-double/2addr v2, p1

    aput-wide v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public mapToSelf(Lorg/apache/commons/math3/analysis/UnivariateFunction;)Lorg/apache/commons/math3/linear/ArrayRealVector;
    .locals 4

    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 3
    aget-wide v2, v1, v0

    invoke-interface {p1, v2, v3}, Lorg/apache/commons/math3/analysis/UnivariateFunction;->value(D)D

    move-result-wide v2

    aput-wide v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public bridge synthetic mapToSelf(Lorg/apache/commons/math3/analysis/UnivariateFunction;)Lorg/apache/commons/math3/linear/RealVector;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->mapToSelf(Lorg/apache/commons/math3/analysis/UnivariateFunction;)Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-result-object p0

    return-object p0
.end method

.method public outerProduct(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 10

    instance-of v0, p1, Lorg/apache/commons/math3/linear/ArrayRealVector;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    check-cast p1, Lorg/apache/commons/math3/linear/ArrayRealVector;

    iget-object p1, p1, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    iget-object v0, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    array-length v0, v0

    array-length v2, p1

    invoke-static {v0, v2}, Lorg/apache/commons/math3/linear/MatrixUtils;->createRealMatrix(II)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v3

    move v4, v1

    :goto_0
    if-ge v4, v0, :cond_1

    move v5, v1

    :goto_1
    if-ge v5, v2, :cond_0

    iget-object v6, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    aget-wide v6, v6, v4

    aget-wide v8, p1, v5

    mul-double/2addr v6, v8

    invoke-interface {v3, v4, v5, v6, v7}, Lorg/apache/commons/math3/linear/RealMatrix;->setEntry(IID)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return-object v3

    :cond_2
    iget-object v0, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    array-length v0, v0

    invoke-virtual {p1}, Lorg/apache/commons/math3/linear/RealVector;->getDimension()I

    move-result v2

    invoke-static {v0, v2}, Lorg/apache/commons/math3/linear/MatrixUtils;->createRealMatrix(II)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v3

    move v4, v1

    :goto_2
    if-ge v4, v0, :cond_4

    move v5, v1

    :goto_3
    if-ge v5, v2, :cond_3

    iget-object v6, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    aget-wide v6, v6, v4

    invoke-virtual {p1, v5}, Lorg/apache/commons/math3/linear/RealVector;->getEntry(I)D

    move-result-wide v8

    mul-double/2addr v6, v8

    invoke-interface {v3, v4, v5, v6, v7}, Lorg/apache/commons/math3/linear/RealMatrix;->setEntry(IID)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_4
    return-object v3
.end method

.method public set(D)V
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    invoke-static {p0, p1, p2}, Ljava/util/Arrays;->fill([DD)V

    return-void
.end method

.method public setEntry(ID)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    aput-wide p2, v0, p1
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/RealVector;->checkIndex(I)V

    :goto_0
    return-void
.end method

.method public setSubVector(ILorg/apache/commons/math3/linear/RealVector;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .line 1
    instance-of v0, p2, Lorg/apache/commons/math3/linear/ArrayRealVector;

    if-eqz v0, :cond_0

    .line 2
    check-cast p2, Lorg/apache/commons/math3/linear/ArrayRealVector;

    iget-object p2, p2, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setSubVector(I[D)V

    goto :goto_1

    :cond_0
    move v0, p1

    .line 3
    :goto_0
    :try_start_0
    invoke-virtual {p2}, Lorg/apache/commons/math3/linear/RealVector;->getDimension()I

    move-result v1

    add-int/2addr v1, p1

    if-ge v0, v1, :cond_1

    .line 4
    iget-object v1, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    sub-int v2, v0, p1

    invoke-virtual {p2, v2}, Lorg/apache/commons/math3/linear/RealVector;->getEntry(I)D

    move-result-wide v2

    aput-wide v2, v1, v0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5
    :catch_0
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/RealVector;->checkIndex(I)V

    .line 6
    invoke-virtual {p2}, Lorg/apache/commons/math3/linear/RealVector;->getDimension()I

    move-result p2

    add-int/2addr p1, p2

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/RealVector;->checkIndex(I)V

    :cond_1
    :goto_1
    return-void
.end method

.method public setSubVector(I[D)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .line 7
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    array-length v1, p2

    const/4 v2, 0x0

    invoke-static {p2, v2, v0, p1, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 8
    :catch_0
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/RealVector;->checkIndex(I)V

    .line 9
    array-length p2, p2

    add-int/2addr p1, p2

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/RealVector;->checkIndex(I)V

    :goto_0
    return-void
.end method

.method public subtract(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/ArrayRealVector;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 2
    instance-of v0, p1, Lorg/apache/commons/math3/linear/ArrayRealVector;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 3
    check-cast p1, Lorg/apache/commons/math3/linear/ArrayRealVector;

    iget-object p1, p1, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    .line 4
    array-length v0, p1

    .line 5
    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->checkVectorDimensions(I)V

    .line 6
    new-instance v2, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-direct {v2, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>(I)V

    .line 7
    iget-object v3, v2, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    :goto_0
    if-ge v1, v0, :cond_0

    .line 8
    iget-object v4, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    aget-wide v4, v4, v1

    aget-wide v6, p1, v1

    sub-double/2addr v4, v6

    aput-wide v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v2

    .line 9
    :cond_1
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->checkVectorDimensions(Lorg/apache/commons/math3/linear/RealVector;)V

    .line 10
    iget-object p0, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    invoke-virtual {p0}, [D->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [D

    .line 11
    invoke-virtual {p1}, Lorg/apache/commons/math3/linear/RealVector;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 12
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 13
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/linear/RealVector$Entry;

    .line 14
    invoke-virtual {v0}, Lorg/apache/commons/math3/linear/RealVector$Entry;->getIndex()I

    move-result v2

    aget-wide v3, p0, v2

    invoke-virtual {v0}, Lorg/apache/commons/math3/linear/RealVector$Entry;->getValue()D

    move-result-wide v5

    sub-double/2addr v3, v5

    aput-wide v3, p0, v2

    goto :goto_1

    .line 15
    :cond_2
    new-instance p1, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-direct {p1, p0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>([DZ)V

    return-object p1
.end method

.method public bridge synthetic subtract(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->subtract(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-result-object p0

    return-object p0
.end method

.method public toArray()[D
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    invoke-virtual {p0}, [D->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [D

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/apache/commons/math3/linear/ArrayRealVector;->DEFAULT_FORMAT:Lorg/apache/commons/math3/linear/RealVectorFormat;

    invoke-virtual {v0, p0}, Lorg/apache/commons/math3/linear/RealVectorFormat;->format(Lorg/apache/commons/math3/linear/RealVector;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public walkInDefaultOrder(Lorg/apache/commons/math3/linear/RealVectorChangingVisitor;)D
    .locals 5

    .line 9
    iget-object v0, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    array-length v1, v0

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    const/4 v2, 0x0

    invoke-interface {p1, v1, v2, v0}, Lorg/apache/commons/math3/linear/RealVectorChangingVisitor;->start(III)V

    .line 10
    :goto_0
    iget-object v0, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    array-length v1, v0

    if-ge v2, v1, :cond_0

    .line 11
    aget-wide v3, v0, v2

    invoke-interface {p1, v2, v3, v4}, Lorg/apache/commons/math3/linear/RealVectorChangingVisitor;->visit(ID)D

    move-result-wide v3

    aput-wide v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 12
    :cond_0
    invoke-interface {p1}, Lorg/apache/commons/math3/linear/RealVectorChangingVisitor;->end()D

    move-result-wide p0

    return-wide p0
.end method

.method public walkInDefaultOrder(Lorg/apache/commons/math3/linear/RealVectorChangingVisitor;II)D
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;,
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .line 13
    invoke-virtual {p0, p2, p3}, Lorg/apache/commons/math3/linear/RealVector;->checkIndices(II)V

    .line 14
    iget-object v0, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    array-length v0, v0

    invoke-interface {p1, v0, p2, p3}, Lorg/apache/commons/math3/linear/RealVectorChangingVisitor;->start(III)V

    :goto_0
    if-gt p2, p3, :cond_0

    .line 15
    iget-object v0, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    aget-wide v1, v0, p2

    invoke-interface {p1, p2, v1, v2}, Lorg/apache/commons/math3/linear/RealVectorChangingVisitor;->visit(ID)D

    move-result-wide v1

    aput-wide v1, v0, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 16
    :cond_0
    invoke-interface {p1}, Lorg/apache/commons/math3/linear/RealVectorChangingVisitor;->end()D

    move-result-wide p0

    return-wide p0
.end method

.method public walkInDefaultOrder(Lorg/apache/commons/math3/linear/RealVectorPreservingVisitor;)D
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    array-length v1, v0

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    const/4 v2, 0x0

    invoke-interface {p1, v1, v2, v0}, Lorg/apache/commons/math3/linear/RealVectorPreservingVisitor;->start(III)V

    .line 2
    :goto_0
    iget-object v0, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    array-length v1, v0

    if-ge v2, v1, :cond_0

    .line 3
    aget-wide v0, v0, v2

    invoke-interface {p1, v2, v0, v1}, Lorg/apache/commons/math3/linear/RealVectorPreservingVisitor;->visit(ID)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4
    :cond_0
    invoke-interface {p1}, Lorg/apache/commons/math3/linear/RealVectorPreservingVisitor;->end()D

    move-result-wide p0

    return-wide p0
.end method

.method public walkInDefaultOrder(Lorg/apache/commons/math3/linear/RealVectorPreservingVisitor;II)D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;,
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .line 5
    invoke-virtual {p0, p2, p3}, Lorg/apache/commons/math3/linear/RealVector;->checkIndices(II)V

    .line 6
    iget-object v0, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    array-length v0, v0

    invoke-interface {p1, v0, p2, p3}, Lorg/apache/commons/math3/linear/RealVectorPreservingVisitor;->start(III)V

    :goto_0
    if-gt p2, p3, :cond_0

    .line 7
    iget-object v0, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    aget-wide v0, v0, p2

    invoke-interface {p1, p2, v0, v1}, Lorg/apache/commons/math3/linear/RealVectorPreservingVisitor;->visit(ID)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 8
    :cond_0
    invoke-interface {p1}, Lorg/apache/commons/math3/linear/RealVectorPreservingVisitor;->end()D

    move-result-wide p0

    return-wide p0
.end method

.method public walkInOptimizedOrder(Lorg/apache/commons/math3/linear/RealVectorChangingVisitor;)D
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->walkInDefaultOrder(Lorg/apache/commons/math3/linear/RealVectorChangingVisitor;)D

    move-result-wide p0

    return-wide p0
.end method

.method public walkInOptimizedOrder(Lorg/apache/commons/math3/linear/RealVectorChangingVisitor;II)D
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;,
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .line 4
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->walkInDefaultOrder(Lorg/apache/commons/math3/linear/RealVectorChangingVisitor;II)D

    move-result-wide p0

    return-wide p0
.end method

.method public walkInOptimizedOrder(Lorg/apache/commons/math3/linear/RealVectorPreservingVisitor;)D
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->walkInDefaultOrder(Lorg/apache/commons/math3/linear/RealVectorPreservingVisitor;)D

    move-result-wide p0

    return-wide p0
.end method

.method public walkInOptimizedOrder(Lorg/apache/commons/math3/linear/RealVectorPreservingVisitor;II)D
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;,
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->walkInDefaultOrder(Lorg/apache/commons/math3/linear/RealVectorPreservingVisitor;II)D

    move-result-wide p0

    return-wide p0
.end method
