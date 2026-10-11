.class public Lorg/apache/commons/compress/harmony/pack200/PopulationCodec;
.super Lorg/apache/commons/compress/harmony/pack200/Codec;
.source "SourceFile"


# instance fields
.field public final a:Lorg/apache/commons/compress/harmony/pack200/Codec;

.field public b:Lorg/apache/commons/compress/harmony/pack200/Codec;

.field public final c:Lorg/apache/commons/compress/harmony/pack200/Codec;

.field public d:I

.field public e:[I


# direct methods
.method public constructor <init>(Lorg/apache/commons/compress/harmony/pack200/Codec;ILorg/apache/commons/compress/harmony/pack200/Codec;)V
    .locals 1

    .line 5
    invoke-direct {p0}, Lorg/apache/commons/compress/harmony/pack200/Codec;-><init>()V

    const/16 v0, 0x100

    if-ge p2, v0, :cond_0

    if-lez p2, :cond_0

    .line 6
    iput-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/PopulationCodec;->a:Lorg/apache/commons/compress/harmony/pack200/Codec;

    .line 7
    iput p2, p0, Lorg/apache/commons/compress/harmony/pack200/PopulationCodec;->d:I

    .line 8
    iput-object p3, p0, Lorg/apache/commons/compress/harmony/pack200/PopulationCodec;->c:Lorg/apache/commons/compress/harmony/pack200/Codec;

    return-void

    .line 9
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "L must be between 1..255"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>(Lorg/apache/commons/compress/harmony/pack200/Codec;Lorg/apache/commons/compress/harmony/pack200/Codec;Lorg/apache/commons/compress/harmony/pack200/Codec;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/apache/commons/compress/harmony/pack200/Codec;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/PopulationCodec;->a:Lorg/apache/commons/compress/harmony/pack200/Codec;

    .line 3
    iput-object p2, p0, Lorg/apache/commons/compress/harmony/pack200/PopulationCodec;->b:Lorg/apache/commons/compress/harmony/pack200/Codec;

    .line 4
    iput-object p3, p0, Lorg/apache/commons/compress/harmony/pack200/PopulationCodec;->c:Lorg/apache/commons/compress/harmony/pack200/Codec;

    return-void
.end method


# virtual methods
.method public decode(Ljava/io/InputStream;)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;
        }
    .end annotation

    .line 1
    new-instance p0, Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;

    const-string p1, "Population encoding does not work unless the number of elements are known"

    invoke-direct {p0, p1}, Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public decode(Ljava/io/InputStream;J)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;
        }
    .end annotation

    .line 2
    new-instance p0, Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;

    const-string p1, "Population encoding does not work unless the number of elements are known"

    invoke-direct {p0, p1}, Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public decodeInts(ILjava/io/InputStream;)[I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;
        }
    .end annotation

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/compress/harmony/pack200/Codec;->lastBandLength:I

    new-array v1, p1, [I

    iput-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/PopulationCodec;->e:[I

    const v1, 0x7fffffff

    const/4 v2, -0x1

    move v3, v0

    move v4, v2

    :goto_0
    iget-object v5, p0, Lorg/apache/commons/compress/harmony/pack200/PopulationCodec;->a:Lorg/apache/commons/compress/harmony/pack200/Codec;

    int-to-long v6, v3

    invoke-virtual {v5, p2, v6, v7}, Lorg/apache/commons/compress/harmony/pack200/Codec;->decode(Ljava/io/InputStream;J)I

    move-result v5

    if-le v4, v2, :cond_8

    if-eq v5, v1, :cond_0

    if-ne v5, v3, :cond_8

    :cond_0
    iget v1, p0, Lorg/apache/commons/compress/harmony/pack200/Codec;->lastBandLength:I

    add-int/2addr v1, v4

    iput v1, p0, Lorg/apache/commons/compress/harmony/pack200/Codec;->lastBandLength:I

    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/PopulationCodec;->b:Lorg/apache/commons/compress/harmony/pack200/Codec;

    const/4 v2, 0x1

    if-nez v1, :cond_5

    const/16 v1, 0x100

    if-ge v4, v1, :cond_1

    sget-object v1, Lorg/apache/commons/compress/harmony/pack200/Codec;->BYTE1:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    iput-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/PopulationCodec;->b:Lorg/apache/commons/compress/harmony/pack200/Codec;

    goto :goto_1

    :cond_1
    move v3, v2

    :cond_2
    add-int/2addr v3, v2

    const/4 v5, 0x5

    if-ge v3, v5, :cond_3

    new-instance v5, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    iget v6, p0, Lorg/apache/commons/compress/harmony/pack200/PopulationCodec;->d:I

    rsub-int v6, v6, 0x100

    invoke-direct {v5, v3, v6, v0}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(III)V

    int-to-long v6, v4

    invoke-virtual {v5, v6, v7}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;->encodes(J)Z

    move-result v6

    if-eqz v6, :cond_2

    iput-object v5, p0, Lorg/apache/commons/compress/harmony/pack200/PopulationCodec;->b:Lorg/apache/commons/compress/harmony/pack200/Codec;

    :cond_3
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/PopulationCodec;->b:Lorg/apache/commons/compress/harmony/pack200/Codec;

    if-eqz v1, :cond_4

    goto :goto_1

    :cond_4
    new-instance p1, Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Cannot calculate token codec from "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " and "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lorg/apache/commons/compress/harmony/pack200/PopulationCodec;->d:I

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    :goto_1
    iget v1, p0, Lorg/apache/commons/compress/harmony/pack200/Codec;->lastBandLength:I

    add-int/2addr v1, p1

    iput v1, p0, Lorg/apache/commons/compress/harmony/pack200/Codec;->lastBandLength:I

    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/PopulationCodec;->b:Lorg/apache/commons/compress/harmony/pack200/Codec;

    invoke-virtual {v1, p1, p2}, Lorg/apache/commons/compress/harmony/pack200/Codec;->decodeInts(ILjava/io/InputStream;)[I

    move-result-object v1

    move v3, v0

    :goto_2
    if-ge v0, p1, :cond_7

    aget v4, v1, v0

    if-nez v4, :cond_6

    iget v4, p0, Lorg/apache/commons/compress/harmony/pack200/Codec;->lastBandLength:I

    add-int/2addr v4, v2

    iput v4, p0, Lorg/apache/commons/compress/harmony/pack200/Codec;->lastBandLength:I

    iget-object v4, p0, Lorg/apache/commons/compress/harmony/pack200/PopulationCodec;->c:Lorg/apache/commons/compress/harmony/pack200/Codec;

    int-to-long v5, v3

    invoke-virtual {v4, p2, v5, v6}, Lorg/apache/commons/compress/harmony/pack200/Codec;->decode(Ljava/io/InputStream;J)I

    move-result v3

    aput v3, v1, v0

    goto :goto_3

    :cond_6
    iget-object v5, p0, Lorg/apache/commons/compress/harmony/pack200/PopulationCodec;->e:[I

    add-int/lit8 v4, v4, -0x1

    aget v4, v5, v4

    aput v4, v1, v0

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_7
    return-object v1

    :cond_8
    iget-object v3, p0, Lorg/apache/commons/compress/harmony/pack200/PopulationCodec;->e:[I

    add-int/lit8 v4, v4, 0x1

    aput v5, v3, v4

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v6

    if-le v3, v6, :cond_9

    move v1, v5

    goto :goto_4

    :cond_9
    if-ne v3, v6, :cond_a

    move v1, v3

    :cond_a
    :goto_4
    move v3, v5

    goto/16 :goto_0
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

    const-string p1, "Population encoding does not work unless the number of elements are known"

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

    const-string p1, "Population encoding does not work unless the number of elements are known"

    invoke-direct {p0, p1}, Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public encode([I[I[I)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;
        }
    .end annotation

    .line 3
    array-length v0, p1

    add-int/lit8 v0, v0, 0x1

    new-array v1, v0, [I

    .line 4
    array-length v2, p1

    const/4 v3, 0x0

    invoke-static {p1, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v0, v0, -0x1

    .line 5
    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    aget p1, p1, v2

    aput p1, v1, v0

    .line 6
    iget-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/PopulationCodec;->a:Lorg/apache/commons/compress/harmony/pack200/Codec;

    invoke-virtual {p1, v1}, Lorg/apache/commons/compress/harmony/pack200/Codec;->encode([I)[B

    move-result-object p1

    .line 7
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/PopulationCodec;->b:Lorg/apache/commons/compress/harmony/pack200/Codec;

    invoke-virtual {v0, p2}, Lorg/apache/commons/compress/harmony/pack200/Codec;->encode([I)[B

    move-result-object p2

    .line 8
    iget-object p0, p0, Lorg/apache/commons/compress/harmony/pack200/PopulationCodec;->c:Lorg/apache/commons/compress/harmony/pack200/Codec;

    invoke-virtual {p0, p3}, Lorg/apache/commons/compress/harmony/pack200/Codec;->encode([I)[B

    move-result-object p0

    .line 9
    array-length p3, p1

    array-length v0, p2

    add-int/2addr p3, v0

    array-length v0, p0

    add-int/2addr p3, v0

    new-array p3, p3, [B

    .line 10
    array-length v0, p1

    invoke-static {p1, v3, p3, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 11
    array-length v0, p1

    array-length v1, p2

    invoke-static {p2, v3, p3, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 12
    array-length p1, p1

    array-length p2, p2

    add-int/2addr p1, p2

    array-length p2, p0

    invoke-static {p0, v3, p3, p1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p3
.end method

.method public getFavoured()[I
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/compress/harmony/pack200/PopulationCodec;->e:[I

    return-object p0
.end method

.method public getFavouredCodec()Lorg/apache/commons/compress/harmony/pack200/Codec;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/compress/harmony/pack200/PopulationCodec;->a:Lorg/apache/commons/compress/harmony/pack200/Codec;

    return-object p0
.end method

.method public getTokenCodec()Lorg/apache/commons/compress/harmony/pack200/Codec;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/compress/harmony/pack200/PopulationCodec;->b:Lorg/apache/commons/compress/harmony/pack200/Codec;

    return-object p0
.end method

.method public getUnfavouredCodec()Lorg/apache/commons/compress/harmony/pack200/Codec;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/compress/harmony/pack200/PopulationCodec;->c:Lorg/apache/commons/compress/harmony/pack200/Codec;

    return-object p0
.end method
