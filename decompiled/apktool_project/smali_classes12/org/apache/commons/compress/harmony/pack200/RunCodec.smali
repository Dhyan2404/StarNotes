.class public Lorg/apache/commons/compress/harmony/pack200/RunCodec;
.super Lorg/apache/commons/compress/harmony/pack200/Codec;
.source "SourceFile"


# instance fields
.field public a:I

.field public final b:Lorg/apache/commons/compress/harmony/pack200/Codec;

.field public final c:Lorg/apache/commons/compress/harmony/pack200/Codec;

.field public d:I


# direct methods
.method public constructor <init>(ILorg/apache/commons/compress/harmony/pack200/Codec;Lorg/apache/commons/compress/harmony/pack200/Codec;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;
        }
    .end annotation

    invoke-direct {p0}, Lorg/apache/commons/compress/harmony/pack200/Codec;-><init>()V

    if-lez p1, :cond_1

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    iput p1, p0, Lorg/apache/commons/compress/harmony/pack200/RunCodec;->a:I

    iput-object p2, p0, Lorg/apache/commons/compress/harmony/pack200/RunCodec;->b:Lorg/apache/commons/compress/harmony/pack200/Codec;

    iput-object p3, p0, Lorg/apache/commons/compress/harmony/pack200/RunCodec;->c:Lorg/apache/commons/compress/harmony/pack200/Codec;

    return-void

    :cond_0
    new-instance p0, Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;

    const-string p1, "Must supply both codecs for a RunCodec"

    invoke-direct {p0, p1}, Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;

    const-string p1, "Cannot have a RunCodec for a negative number of numbers"

    invoke-direct {p0, p1}, Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final a(ILorg/apache/commons/compress/harmony/pack200/Codec;)I
    .locals 6

    instance-of p0, p2, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    if-eqz p0, :cond_1

    check-cast p2, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {p2}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;->isDelta()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {p2}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;->cardinality()J

    move-result-wide v0

    :goto_0
    int-to-long v2, p1

    invoke-virtual {p2}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;->largest()J

    move-result-wide v4

    cmp-long p0, v2, v4

    if-lez p0, :cond_0

    sub-long/2addr v2, v0

    long-to-int p1, v2

    goto :goto_0

    :cond_0
    :goto_1
    int-to-long v2, p1

    invoke-virtual {p2}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;->smallest()J

    move-result-wide v4

    cmp-long p0, v2, v4

    if-gez p0, :cond_1

    invoke-static {p1, v0, v1}, Lorg/apache/commons/compress/utils/ExactMath;->add(IJ)I

    move-result p1

    goto :goto_1

    :cond_1
    return p1
.end method

.method public final b([ILorg/apache/commons/compress/harmony/pack200/Codec;)V
    .locals 9

    instance-of p0, p2, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    check-cast p2, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {p2}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;->isDelta()Z

    move-result p0

    if-eqz p0, :cond_7

    invoke-virtual {p2}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;->cardinality()J

    move-result-wide v1

    :goto_0
    array-length p0, p1

    if-ge v0, p0, :cond_7

    :goto_1
    aget p0, p1, v0

    int-to-long v3, p0

    invoke-virtual {p2}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;->largest()J

    move-result-wide v5

    cmp-long p0, v3, v5

    if-lez p0, :cond_0

    aget p0, p1, v0

    int-to-long v3, p0

    sub-long/2addr v3, v1

    long-to-int p0, v3

    aput p0, p1, v0

    goto :goto_1

    :cond_0
    :goto_2
    aget p0, p1, v0

    int-to-long v3, p0

    invoke-virtual {p2}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;->smallest()J

    move-result-wide v5

    cmp-long p0, v3, v5

    if-gez p0, :cond_1

    aget p0, p1, v0

    invoke-static {p0, v1, v2}, Lorg/apache/commons/compress/utils/ExactMath;->add(IJ)I

    move-result p0

    aput p0, p1, v0

    goto :goto_2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    instance-of p0, p2, Lorg/apache/commons/compress/harmony/pack200/PopulationCodec;

    if-eqz p0, :cond_7

    check-cast p2, Lorg/apache/commons/compress/harmony/pack200/PopulationCodec;

    invoke-virtual {p2}, Lorg/apache/commons/compress/harmony/pack200/PopulationCodec;->getFavoured()[I

    move-result-object p0

    invoke-virtual {p0}, [I->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    invoke-static {p0}, Ljava/util/Arrays;->sort([I)V

    move v1, v0

    :goto_3
    array-length v2, p1

    if-ge v1, v2, :cond_7

    aget v2, p1, v1

    invoke-static {p0, v2}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v2

    const/4 v3, -0x1

    if-le v2, v3, :cond_3

    const/4 v2, 0x1

    goto :goto_4

    :cond_3
    move v2, v0

    :goto_4
    if-eqz v2, :cond_4

    invoke-virtual {p2}, Lorg/apache/commons/compress/harmony/pack200/PopulationCodec;->getFavouredCodec()Lorg/apache/commons/compress/harmony/pack200/Codec;

    move-result-object v2

    goto :goto_5

    :cond_4
    invoke-virtual {p2}, Lorg/apache/commons/compress/harmony/pack200/PopulationCodec;->getUnfavouredCodec()Lorg/apache/commons/compress/harmony/pack200/Codec;

    move-result-object v2

    :goto_5
    instance-of v3, v2, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    if-eqz v3, :cond_6

    check-cast v2, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {v2}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;->isDelta()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {v2}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;->cardinality()J

    move-result-wide v3

    :goto_6
    aget v5, p1, v1

    int-to-long v5, v5

    invoke-virtual {v2}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;->largest()J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-lez v5, :cond_5

    aget v5, p1, v1

    int-to-long v5, v5

    sub-long/2addr v5, v3

    long-to-int v5, v5

    aput v5, p1, v1

    goto :goto_6

    :cond_5
    :goto_7
    aget v5, p1, v1

    int-to-long v5, v5

    invoke-virtual {v2}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;->smallest()J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-gez v5, :cond_6

    aget v5, p1, v1

    invoke-static {v5, v3, v4}, Lorg/apache/commons/compress/utils/ExactMath;->add(IJ)I

    move-result v5

    aput v5, p1, v1

    goto :goto_7

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_7
    return-void
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
    iget v0, p0, Lorg/apache/commons/compress/harmony/pack200/RunCodec;->d:I

    int-to-long v0, v0

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/commons/compress/harmony/pack200/RunCodec;->decode(Ljava/io/InputStream;J)I

    move-result p0

    return p0
.end method

.method public decode(Ljava/io/InputStream;J)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;
        }
    .end annotation

    .line 2
    iget p2, p0, Lorg/apache/commons/compress/harmony/pack200/RunCodec;->a:I

    add-int/lit8 p2, p2, -0x1

    iput p2, p0, Lorg/apache/commons/compress/harmony/pack200/RunCodec;->a:I

    if-ltz p2, :cond_1

    .line 3
    iget-object p2, p0, Lorg/apache/commons/compress/harmony/pack200/RunCodec;->b:Lorg/apache/commons/compress/harmony/pack200/Codec;

    iget p3, p0, Lorg/apache/commons/compress/harmony/pack200/RunCodec;->d:I

    int-to-long v0, p3

    invoke-virtual {p2, p1, v0, v1}, Lorg/apache/commons/compress/harmony/pack200/Codec;->decode(Ljava/io/InputStream;J)I

    move-result p1

    .line 4
    iget p2, p0, Lorg/apache/commons/compress/harmony/pack200/RunCodec;->a:I

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    move p2, p1

    :goto_0
    iput p2, p0, Lorg/apache/commons/compress/harmony/pack200/RunCodec;->d:I

    .line 5
    iget-object p2, p0, Lorg/apache/commons/compress/harmony/pack200/RunCodec;->b:Lorg/apache/commons/compress/harmony/pack200/Codec;

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/compress/harmony/pack200/RunCodec;->a(ILorg/apache/commons/compress/harmony/pack200/Codec;)I

    move-result p0

    return p0

    .line 6
    :cond_1
    iget-object p2, p0, Lorg/apache/commons/compress/harmony/pack200/RunCodec;->c:Lorg/apache/commons/compress/harmony/pack200/Codec;

    iget p3, p0, Lorg/apache/commons/compress/harmony/pack200/RunCodec;->d:I

    int-to-long v0, p3

    invoke-virtual {p2, p1, v0, v1}, Lorg/apache/commons/compress/harmony/pack200/Codec;->decode(Ljava/io/InputStream;J)I

    move-result p1

    iput p1, p0, Lorg/apache/commons/compress/harmony/pack200/RunCodec;->d:I

    .line 7
    iget-object p2, p0, Lorg/apache/commons/compress/harmony/pack200/RunCodec;->c:Lorg/apache/commons/compress/harmony/pack200/Codec;

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/compress/harmony/pack200/RunCodec;->a(ILorg/apache/commons/compress/harmony/pack200/Codec;)I

    move-result p0

    return p0
.end method

.method public decodeInts(ILjava/io/InputStream;)[I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;
        }
    .end annotation

    new-array v0, p1, [I

    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/RunCodec;->b:Lorg/apache/commons/compress/harmony/pack200/Codec;

    iget v2, p0, Lorg/apache/commons/compress/harmony/pack200/RunCodec;->a:I

    invoke-virtual {v1, v2, p2}, Lorg/apache/commons/compress/harmony/pack200/Codec;->decodeInts(ILjava/io/InputStream;)[I

    move-result-object v1

    iget-object v2, p0, Lorg/apache/commons/compress/harmony/pack200/RunCodec;->b:Lorg/apache/commons/compress/harmony/pack200/Codec;

    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/compress/harmony/pack200/RunCodec;->b([ILorg/apache/commons/compress/harmony/pack200/Codec;)V

    iget-object v2, p0, Lorg/apache/commons/compress/harmony/pack200/RunCodec;->c:Lorg/apache/commons/compress/harmony/pack200/Codec;

    iget v3, p0, Lorg/apache/commons/compress/harmony/pack200/RunCodec;->a:I

    sub-int v3, p1, v3

    invoke-virtual {v2, v3, p2}, Lorg/apache/commons/compress/harmony/pack200/Codec;->decodeInts(ILjava/io/InputStream;)[I

    move-result-object p2

    iget-object v2, p0, Lorg/apache/commons/compress/harmony/pack200/RunCodec;->c:Lorg/apache/commons/compress/harmony/pack200/Codec;

    invoke-virtual {p0, p2, v2}, Lorg/apache/commons/compress/harmony/pack200/RunCodec;->b([ILorg/apache/commons/compress/harmony/pack200/Codec;)V

    iget v2, p0, Lorg/apache/commons/compress/harmony/pack200/RunCodec;->a:I

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, p0, Lorg/apache/commons/compress/harmony/pack200/RunCodec;->a:I

    sub-int/2addr p1, v1

    invoke-static {p2, v3, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/RunCodec;->b:Lorg/apache/commons/compress/harmony/pack200/Codec;

    iget p1, p1, Lorg/apache/commons/compress/harmony/pack200/Codec;->lastBandLength:I

    iget-object p2, p0, Lorg/apache/commons/compress/harmony/pack200/RunCodec;->c:Lorg/apache/commons/compress/harmony/pack200/Codec;

    iget p2, p2, Lorg/apache/commons/compress/harmony/pack200/Codec;->lastBandLength:I

    add-int/2addr p1, p2

    iput p1, p0, Lorg/apache/commons/compress/harmony/pack200/Codec;->lastBandLength:I

    return-object v0
.end method

.method public encode(I)[B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;
        }
    .end annotation

    .line 2
    new-instance p0, Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;

    const-string p1, "Must encode entire band at once with a RunCodec"

    invoke-direct {p0, p1}, Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public encode(II)[B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;
        }
    .end annotation

    .line 1
    new-instance p0, Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;

    const-string p1, "Must encode entire band at once with a RunCodec"

    invoke-direct {p0, p1}, Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getACodec()Lorg/apache/commons/compress/harmony/pack200/Codec;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/compress/harmony/pack200/RunCodec;->b:Lorg/apache/commons/compress/harmony/pack200/Codec;

    return-object p0
.end method

.method public getBCodec()Lorg/apache/commons/compress/harmony/pack200/Codec;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/compress/harmony/pack200/RunCodec;->c:Lorg/apache/commons/compress/harmony/pack200/Codec;

    return-object p0
.end method

.method public getK()I
    .locals 0

    iget p0, p0, Lorg/apache/commons/compress/harmony/pack200/RunCodec;->a:I

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RunCodec[k="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/apache/commons/compress/harmony/pack200/RunCodec;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ";aCodec="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/RunCodec;->b:Lorg/apache/commons/compress/harmony/pack200/Codec;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "bCodec="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lorg/apache/commons/compress/harmony/pack200/RunCodec;->c:Lorg/apache/commons/compress/harmony/pack200/Codec;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
