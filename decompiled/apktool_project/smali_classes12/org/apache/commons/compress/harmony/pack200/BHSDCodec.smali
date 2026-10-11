.class public final Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;
.super Lorg/apache/commons/compress/harmony/pack200/Codec;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I

.field public final d:I

.field public final e:I

.field public f:J

.field public final g:J

.field public final h:J

.field public final i:[J


# direct methods
.method public constructor <init>(II)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0, v0}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(IIII)V

    return-void
.end method

.method public constructor <init>(III)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(IIII)V

    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 8

    .line 3
    invoke-direct {p0}, Lorg/apache/commons/compress/harmony/pack200/Codec;-><init>()V

    const/4 v0, 0x1

    if-lt p1, v0, :cond_8

    const/4 v1, 0x5

    if-gt p1, v1, :cond_8

    if-lt p2, v0, :cond_7

    const/16 v2, 0x100

    if-gt p2, v2, :cond_7

    if-ltz p3, :cond_6

    const/4 v3, 0x2

    if-gt p3, v3, :cond_6

    if-ltz p4, :cond_5

    if-gt p4, v0, :cond_5

    if-ne p1, v0, :cond_1

    if-ne p2, v2, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "b=1 -> h=256"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    if-ne p2, v2, :cond_3

    if-eq p1, v1, :cond_2

    goto :goto_1

    .line 5
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "h=256 -> b!=5"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 6
    :cond_3
    :goto_1
    iput p1, p0, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;->a:I

    .line 7
    iput p2, p0, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;->c:I

    .line 8
    iput p3, p0, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;->e:I

    .line 9
    iput p4, p0, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;->b:I

    rsub-int p3, p2, 0x100

    .line 10
    iput p3, p0, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;->d:I

    if-ne p2, v0, :cond_4

    mul-int/lit16 p3, p1, 0xff

    add-int/2addr p3, v0

    int-to-long p3, p3

    .line 11
    iput-wide p3, p0, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;->f:J

    goto :goto_2

    :cond_4
    int-to-double p3, p3

    int-to-double v0, p2

    int-to-double v2, p1

    .line 12
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v6, v4

    mul-double/2addr p3, v6

    rsub-int/lit8 v4, p2, 0x1

    int-to-double v4, v4

    div-double/2addr p3, v4

    double-to-long p3, p3

    long-to-double p3, p3

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    add-double/2addr p3, v0

    double-to-long p3, p3

    iput-wide p3, p0, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;->f:J

    .line 13
    :goto_2
    invoke-virtual {p0}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;->c()J

    move-result-wide p3

    iput-wide p3, p0, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;->g:J

    .line 14
    invoke-virtual {p0}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;->b()J

    move-result-wide p3

    iput-wide p3, p0, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;->h:J

    .line 15
    new-array p1, p1, [J

    iput-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;->i:[J

    .line 16
    new-instance p0, Lcom/sunia/HTREnginev2/pl;

    invoke-direct {p0, p2}, Lcom/sunia/HTREnginev2/pl;-><init>(I)V

    invoke-static {p1, p0}, Ljava/util/Arrays;->setAll([JLjava/util/function/IntToLongFunction;)V

    return-void

    .line 17
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "0<=d<=1"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 18
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "0<=s<=2"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 19
    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "1<=h<=256"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 20
    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "1<=b<=5"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic a(II)J
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;->d(II)J

    move-result-wide p0

    return-wide p0
.end method

.method public static synthetic d(II)J
    .locals 2

    int-to-double v0, p0

    int-to-double p0, p1

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p0

    double-to-long p0, p0

    return-wide p0
.end method


# virtual methods
.method public final b()J
    .locals 6

    iget v0, p0, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;->b:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    new-instance v0, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    iget v1, p0, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;->a:I

    iget p0, p0, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;->c:I

    invoke-direct {v0, v1, p0}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(II)V

    invoke-virtual {v0}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;->largest()J

    move-result-wide v0

    return-wide v0

    :cond_0
    iget v0, p0, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;->e:I

    const-wide/16 v2, 0x1

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;->cardinality()J

    move-result-wide v0

    :goto_0
    sub-long/2addr v0, v2

    goto :goto_1

    :cond_1
    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;->cardinality()J

    move-result-wide v0

    const-wide/16 v4, 0x2

    div-long/2addr v0, v4

    goto :goto_0

    :cond_2
    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    const-wide/16 v0, 0x3

    invoke-virtual {p0}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;->cardinality()J

    move-result-wide v4

    mul-long/2addr v4, v0

    const-wide/16 v0, 0x4

    div-long/2addr v4, v0

    sub-long v0, v4, v2

    :goto_1
    iget p0, p0, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;->e:I

    if-nez p0, :cond_3

    const-wide v4, 0xfffffffeL

    goto :goto_2

    :cond_3
    const-wide/32 v4, 0x7fffffff

    :goto_2
    sub-long/2addr v4, v2

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    return-wide v0

    :cond_4
    new-instance p0, Ljava/lang/Error;

    const-string v0, "Unknown s value"

    invoke-direct {p0, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final c()J
    .locals 8

    iget v0, p0, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;->b:I

    const-wide/32 v1, -0x80000000

    const/4 v3, 0x1

    if-eq v0, v3, :cond_1

    invoke-virtual {p0}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;->isSigned()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;->cardinality()J

    move-result-wide v4

    neg-long v4, v4

    iget p0, p0, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;->e:I

    shl-int p0, v3, p0

    int-to-long v6, p0

    div-long/2addr v4, v6

    invoke-static {v1, v2, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    goto :goto_1

    :cond_1
    :goto_0
    iget-wide v3, p0, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;->f:J

    const-wide v5, 0x100000000L

    cmp-long p0, v3, v5

    if-ltz p0, :cond_2

    goto :goto_1

    :cond_2
    const-wide/16 v1, 0x0

    :goto_1
    return-wide v1
.end method

.method public cardinality()J
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;->f:J

    return-wide v0
.end method

.method public decode(Ljava/io/InputStream;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;
        }
    .end annotation

    .line 1
    iget v0, p0, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;->b:I

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;->decode(Ljava/io/InputStream;J)I

    move-result p0

    return p0

    .line 3
    :cond_0
    new-instance p0, Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;

    const-string p1, "Delta encoding used without passing in last value; this is a coding error"

    invoke-direct {p0, p1}, Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public decode(Ljava/io/InputStream;J)I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;
        }
    .end annotation

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    .line 4
    :cond_0
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v3

    int-to-long v3, v3

    .line 5
    iget v5, p0, Lorg/apache/commons/compress/harmony/pack200/Codec;->lastBandLength:I

    const/4 v6, 0x1

    add-int/2addr v5, v6

    iput v5, p0, Lorg/apache/commons/compress/harmony/pack200/Codec;->lastBandLength:I

    .line 6
    iget-object v5, p0, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;->i:[J

    aget-wide v7, v5, v0

    mul-long/2addr v7, v3

    add-long/2addr v1, v7

    add-int/2addr v0, v6

    .line 7
    iget v5, p0, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;->d:I

    int-to-long v7, v5

    cmp-long v5, v3, v7

    if-ltz v5, :cond_1

    iget v5, p0, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;->a:I

    if-lt v0, v5, :cond_0

    :cond_1
    const-wide/16 v7, -0x1

    cmp-long p1, v3, v7

    if-eqz p1, :cond_5

    .line 8
    invoke-virtual {p0}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;->isSigned()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 9
    iget p1, p0, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;->e:I

    shl-int v0, v6, p1

    sub-int/2addr v0, v6

    int-to-long v3, v0

    and-long v5, v1, v3

    cmp-long v0, v5, v3

    if-nez v0, :cond_2

    ushr-long v0, v1, p1

    not-long v1, v0

    goto :goto_0

    :cond_2
    ushr-long v3, v1, p1

    sub-long/2addr v1, v3

    .line 10
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;->isDelta()Z

    move-result p0

    if-eqz p0, :cond_4

    add-long/2addr v1, p2

    :cond_4
    long-to-int p0, v1

    return p0

    .line 11
    :cond_5
    new-instance p0, Ljava/io/EOFException;

    const-string p1, "End of stream reached whilst decoding"

    invoke-direct {p0, p1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public decodeInts(ILjava/io/InputStream;)[I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2}, Lorg/apache/commons/compress/harmony/pack200/Codec;->decodeInts(ILjava/io/InputStream;)[I

    move-result-object p1

    .line 2
    invoke-virtual {p0}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;->isDelta()Z

    move-result p2

    if-eqz p2, :cond_2

    const/4 p2, 0x0

    .line 3
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_2

    .line 4
    :goto_1
    aget v0, p1, p2

    int-to-long v1, v0

    iget-wide v3, p0, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;->h:J

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    int-to-long v0, v0

    .line 5
    iget-wide v2, p0, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;->f:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    aput v0, p1, p2

    goto :goto_1

    .line 6
    :cond_0
    :goto_2
    aget v0, p1, p2

    int-to-long v1, v0

    iget-wide v3, p0, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;->g:J

    cmp-long v1, v1, v3

    if-gez v1, :cond_1

    .line 7
    iget-wide v1, p0, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;->f:J

    invoke-static {v0, v1, v2}, Lorg/apache/commons/compress/utils/ExactMath;->add(IJ)I

    move-result v0

    aput v0, p1, p2

    goto :goto_2

    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    return-object p1
.end method

.method public decodeInts(ILjava/io/InputStream;I)[I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;
        }
    .end annotation

    .line 8
    invoke-super {p0, p1, p2, p3}, Lorg/apache/commons/compress/harmony/pack200/Codec;->decodeInts(ILjava/io/InputStream;I)[I

    move-result-object p1

    .line 9
    invoke-virtual {p0}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;->isDelta()Z

    move-result p2

    if-eqz p2, :cond_2

    const/4 p2, 0x0

    .line 10
    :goto_0
    array-length p3, p1

    if-ge p2, p3, :cond_2

    .line 11
    :goto_1
    aget p3, p1, p2

    int-to-long v0, p3

    iget-wide v2, p0, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;->h:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    int-to-long v0, p3

    .line 12
    iget-wide v2, p0, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;->f:J

    sub-long/2addr v0, v2

    long-to-int p3, v0

    aput p3, p1, p2

    goto :goto_1

    .line 13
    :cond_0
    :goto_2
    aget p3, p1, p2

    int-to-long v0, p3

    iget-wide v2, p0, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;->g:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 14
    iget-wide v0, p0, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;->f:J

    invoke-static {p3, v0, v1}, Lorg/apache/commons/compress/utils/ExactMath;->add(IJ)I

    move-result p3

    aput p3, p1, p2

    goto :goto_2

    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    return-object p1
.end method

.method public encode(I)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;
        }
    .end annotation

    const/4 v0, 0x0

    .line 21
    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;->encode(II)[B

    move-result-object p0

    return-object p0
.end method

.method public encode(II)[B
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;
        }
    .end annotation

    int-to-long v0, p1

    .line 1
    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;->encodes(J)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 2
    invoke-virtual {p0}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;->isDelta()Z

    move-result p1

    if-eqz p1, :cond_0

    int-to-long p1, p2

    sub-long/2addr v0, p1

    .line 3
    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;->isSigned()Z

    move-result p1

    const-wide v2, 0x100000000L

    const-wide/16 v4, 0x0

    if-eqz p1, :cond_5

    const-wide/32 p1, -0x80000000

    cmp-long p1, v0, p1

    if-gez p1, :cond_1

    add-long/2addr v0, v2

    goto :goto_0

    :cond_1
    const-wide/32 p1, 0x7fffffff

    cmp-long p1, v0, p1

    if-lez p1, :cond_2

    sub-long/2addr v0, v2

    :cond_2
    :goto_0
    cmp-long p1, v0, v4

    if-gez p1, :cond_3

    neg-long p1, v0

    .line 4
    iget v0, p0, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;->e:I

    shl-long/2addr p1, v0

    const-wide/16 v0, 0x1

    sub-long v0, p1, v0

    goto :goto_1

    .line 5
    :cond_3
    iget p1, p0, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;->e:I

    const/4 p2, 0x1

    if-ne p1, p2, :cond_4

    shl-long/2addr v0, p1

    goto :goto_1

    :cond_4
    const-wide/16 p1, 0x3

    .line 6
    rem-long v2, v0, p1

    sub-long v2, v0, v2

    div-long/2addr v2, p1

    add-long/2addr v0, v2

    goto :goto_1

    :cond_5
    cmp-long p1, v0, v4

    if-gez p1, :cond_6

    .line 7
    iget-wide p1, p0, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;->f:J

    invoke-static {p1, p2, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    add-long/2addr v0, p1

    :cond_6
    :goto_1
    cmp-long p1, v0, v4

    if-ltz p1, :cond_c

    .line 8
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const/4 p2, 0x0

    move v2, p2

    .line 9
    :goto_2
    iget v3, p0, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;->a:I

    if-ge v2, v3, :cond_a

    .line 10
    iget v3, p0, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;->d:I

    int-to-long v3, v3

    cmp-long v3, v0, v3

    if-gez v3, :cond_7

    move-wide v3, v0

    goto :goto_4

    .line 11
    :cond_7
    iget v3, p0, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;->c:I

    int-to-long v3, v3

    rem-long v3, v0, v3

    .line 12
    :goto_3
    iget v5, p0, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;->d:I

    int-to-long v5, v5

    cmp-long v5, v3, v5

    if-gez v5, :cond_8

    .line 13
    iget v5, p0, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;->c:I

    int-to-long v5, v5

    add-long/2addr v3, v5

    goto :goto_3

    :cond_8
    :goto_4
    long-to-int v5, v3

    int-to-byte v5, v5

    .line 14
    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 15
    iget v5, p0, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;->d:I

    int-to-long v5, v5

    cmp-long v5, v3, v5

    if-gez v5, :cond_9

    goto :goto_5

    :cond_9
    sub-long/2addr v0, v3

    .line 16
    iget v3, p0, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;->c:I

    int-to-long v3, v3

    div-long/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 17
    :cond_a
    :goto_5
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    new-array v0, p0, [B

    :goto_6
    if-ge p2, p0, :cond_b

    .line 18
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Byte;

    invoke-virtual {v1}, Ljava/lang/Byte;->byteValue()B

    move-result v1

    aput-byte v1, v0, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_6

    :cond_b
    return-object v0

    .line 19
    :cond_c
    new-instance p0, Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;

    const-string p1, "unable to encode"

    invoke-direct {p0, p1}, Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;-><init>(Ljava/lang/String;)V

    throw p0

    .line 20
    :cond_d
    new-instance p2, Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The codec "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " does not encode the value "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public encodes(J)Z
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;->g:J

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    iget-wide v0, p0, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;->h:J

    cmp-long p0, p1, v0

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    iget v0, p1, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;->a:I

    iget v2, p0, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;->a:I

    if-ne v0, v2, :cond_0

    iget v0, p1, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;->c:I

    iget v2, p0, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;->c:I

    if-ne v0, v2, :cond_0

    iget v0, p1, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;->e:I

    iget v2, p0, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;->e:I

    if-ne v0, v2, :cond_0

    iget p1, p1, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;->b:I

    iget p0, p0, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;->b:I

    if-ne p1, p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public getB()I
    .locals 0

    iget p0, p0, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;->a:I

    return p0
.end method

.method public getH()I
    .locals 0

    iget p0, p0, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;->c:I

    return p0
.end method

.method public getL()I
    .locals 0

    iget p0, p0, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;->d:I

    return p0
.end method

.method public getS()I
    .locals 0

    iget p0, p0, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;->e:I

    return p0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;->a:I

    mul-int/lit8 v0, v0, 0x25

    iget v1, p0, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;->c:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget v1, p0, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;->e:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget p0, p0, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;->b:I

    add-int/2addr v0, p0

    return v0
.end method

.method public isDelta()Z
    .locals 0

    iget p0, p0, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;->b:I

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSigned()Z
    .locals 0

    iget p0, p0, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;->e:I

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public largest()J
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;->h:J

    return-wide v0
.end method

.method public smallest()J
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;->g:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;->c:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;->e:I

    if-nez v2, :cond_0

    iget v2, p0, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;->b:I

    if-eqz v2, :cond_1

    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;->e:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_1
    iget v2, p0, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;->b:I

    if-eqz v2, :cond_2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget p0, p0, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;->b:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_2
    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
