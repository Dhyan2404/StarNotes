.class public abstract Lorg/apache/commons/math3/random/BitsStreamGenerator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/math3/random/RandomGenerator;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1332938L


# instance fields
.field private nextGaussian:D


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    iput-wide v0, p0, Lorg/apache/commons/math3/random/BitsStreamGenerator;->nextGaussian:D

    return-void
.end method

.method private nextBytesFill([BII)V
    .locals 5

    const v0, 0x7ffffffc

    and-int/2addr v0, p3

    add-int/2addr v0, p2

    move v1, p2

    :goto_0
    const/16 v2, 0x20

    if-ge v1, v0, :cond_0

    invoke-virtual {p0, v2}, Lorg/apache/commons/math3/random/BitsStreamGenerator;->next(I)I

    move-result v2

    add-int/lit8 v3, v1, 0x1

    int-to-byte v4, v2

    aput-byte v4, p1, v1

    add-int/lit8 v1, v3, 0x1

    ushr-int/lit8 v4, v2, 0x8

    int-to-byte v4, v4

    aput-byte v4, p1, v3

    add-int/lit8 v3, v1, 0x1

    ushr-int/lit8 v4, v2, 0x10

    int-to-byte v4, v4

    aput-byte v4, p1, v1

    add-int/lit8 v1, v3, 0x1

    ushr-int/lit8 v2, v2, 0x18

    int-to-byte v2, v2

    aput-byte v2, p1, v3

    goto :goto_0

    :cond_0
    add-int/2addr p2, p3

    if-ge v1, p2, :cond_1

    invoke-virtual {p0, v2}, Lorg/apache/commons/math3/random/BitsStreamGenerator;->next(I)I

    move-result p0

    :goto_1
    add-int/lit8 p3, v1, 0x1

    int-to-byte v0, p0

    aput-byte v0, p1, v1

    if-ge p3, p2, :cond_1

    ushr-int/lit8 p0, p0, 0x8

    move v1, p3

    goto :goto_1

    :cond_1
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    iput-wide v0, p0, Lorg/apache/commons/math3/random/BitsStreamGenerator;->nextGaussian:D

    return-void
.end method

.method public abstract next(I)I
.end method

.method public nextBoolean()Z
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/random/BitsStreamGenerator;->next(I)I

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public nextBytes([B)V
    .locals 2

    .line 1
    array-length v0, p1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lorg/apache/commons/math3/random/BitsStreamGenerator;->nextBytesFill([BII)V

    return-void
.end method

.method public nextBytes([BII)V
    .locals 2

    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    if-ltz p2, :cond_1

    .line 3
    array-length v1, p1

    if-ge p2, v1, :cond_1

    if-ltz p3, :cond_0

    .line 4
    array-length v1, p1

    sub-int/2addr v1, p2

    if-gt p3, v1, :cond_0

    .line 5
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/math3/random/BitsStreamGenerator;->nextBytesFill([BII)V

    return-void

    .line 6
    :cond_0
    new-instance p0, Lorg/apache/commons/math3/exception/OutOfRangeException;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    array-length p1, p1

    sub-int/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, p3, v0, p1}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw p0

    .line 7
    :cond_1
    new-instance p0, Lorg/apache/commons/math3/exception/OutOfRangeException;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    array-length p1, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, p2, v0, p1}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw p0
.end method

.method public nextDouble()D
    .locals 5

    const/16 v0, 0x1a

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/random/BitsStreamGenerator;->next(I)I

    move-result v1

    int-to-long v1, v1

    shl-long/2addr v1, v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/random/BitsStreamGenerator;->next(I)I

    move-result p0

    int-to-long v3, p0

    or-long v0, v1, v3

    long-to-double v0, v0

    const-wide/high16 v2, 0x3cb0000000000000L    # 2.220446049250313E-16

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method public nextFloat()F
    .locals 1

    const/16 v0, 0x17

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/random/BitsStreamGenerator;->next(I)I

    move-result p0

    int-to-float p0, p0

    const/high16 v0, 0x34000000

    mul-float/2addr p0, v0

    return p0
.end method

.method public nextGaussian()D
    .locals 6

    iget-wide v0, p0, Lorg/apache/commons/math3/random/BitsStreamGenerator;->nextGaussian:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/commons/math3/random/BitsStreamGenerator;->nextDouble()D

    move-result-wide v0

    invoke-virtual {p0}, Lorg/apache/commons/math3/random/BitsStreamGenerator;->nextDouble()D

    move-result-wide v2

    const-wide v4, 0x401921fb54442d18L    # 6.283185307179586

    mul-double/2addr v0, v4

    const-wide/high16 v4, -0x4000000000000000L    # -2.0

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v2

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v2

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->cos(D)D

    move-result-wide v4

    mul-double/2addr v4, v2

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->sin(D)D

    move-result-wide v0

    mul-double/2addr v2, v0

    iput-wide v2, p0, Lorg/apache/commons/math3/random/BitsStreamGenerator;->nextGaussian:D

    goto :goto_0

    :cond_0
    iget-wide v4, p0, Lorg/apache/commons/math3/random/BitsStreamGenerator;->nextGaussian:D

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    iput-wide v0, p0, Lorg/apache/commons/math3/random/BitsStreamGenerator;->nextGaussian:D

    :goto_0
    return-wide v4
.end method

.method public nextInt()I
    .locals 1

    const/16 v0, 0x20

    .line 1
    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/random/BitsStreamGenerator;->next(I)I

    move-result p0

    return p0
.end method

.method public nextInt(I)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-lez p1, :cond_1

    neg-int v0, p1

    and-int/2addr v0, p1

    const/16 v1, 0x1f

    if-ne v0, p1, :cond_0

    int-to-long v2, p1

    .line 2
    invoke-virtual {p0, v1}, Lorg/apache/commons/math3/random/BitsStreamGenerator;->next(I)I

    move-result p0

    int-to-long p0, p0

    mul-long/2addr v2, p0

    shr-long p0, v2, v1

    long-to-int p0, p0

    return p0

    .line 3
    :cond_0
    invoke-virtual {p0, v1}, Lorg/apache/commons/math3/random/BitsStreamGenerator;->next(I)I

    move-result v0

    .line 4
    rem-int v2, v0, p1

    sub-int/2addr v0, v2

    add-int/lit8 v3, p1, -0x1

    add-int/2addr v0, v3

    if-ltz v0, :cond_0

    return v2

    .line 5
    :cond_1
    new-instance p0, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;-><init>(Ljava/lang/Number;)V

    throw p0
.end method

.method public nextLong()J
    .locals 7

    const/16 v0, 0x20

    .line 1
    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/random/BitsStreamGenerator;->next(I)I

    move-result v1

    int-to-long v1, v1

    shl-long/2addr v1, v0

    .line 2
    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/random/BitsStreamGenerator;->next(I)I

    move-result p0

    int-to-long v3, p0

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    or-long v0, v1, v3

    return-wide v0
.end method

.method public nextLong(J)J
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_1

    :cond_0
    const/16 v2, 0x1f

    .line 3
    invoke-virtual {p0, v2}, Lorg/apache/commons/math3/random/BitsStreamGenerator;->next(I)I

    move-result v2

    int-to-long v2, v2

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    .line 4
    invoke-virtual {p0, v4}, Lorg/apache/commons/math3/random/BitsStreamGenerator;->next(I)I

    move-result v4

    int-to-long v4, v4

    const-wide v6, 0xffffffffL

    and-long/2addr v4, v6

    or-long/2addr v2, v4

    .line 5
    rem-long v4, v2, p1

    sub-long/2addr v2, v4

    const-wide/16 v6, 0x1

    sub-long v6, p1, v6

    add-long/2addr v2, v6

    cmp-long v2, v2, v0

    if-ltz v2, :cond_0

    return-wide v4

    .line 6
    :cond_1
    new-instance p0, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;-><init>(Ljava/lang/Number;)V

    throw p0
.end method

.method public abstract setSeed(I)V
.end method

.method public abstract setSeed(J)V
.end method

.method public abstract setSeed([I)V
.end method
