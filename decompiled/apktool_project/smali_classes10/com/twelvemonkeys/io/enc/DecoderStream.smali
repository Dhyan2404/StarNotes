.class public final Lcom/twelvemonkeys/io/enc/DecoderStream;
.super Ljava/io/FilterInputStream;
.source "SourceFile"


# instance fields
.field protected final buffer:Ljava/nio/ByteBuffer;

.field protected final decoder:Lcom/twelvemonkeys/io/enc/Decoder;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lcom/twelvemonkeys/io/enc/Decoder;)V
    .locals 1

    const/16 v0, 0x400

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/twelvemonkeys/io/enc/DecoderStream;-><init>(Ljava/io/InputStream;Lcom/twelvemonkeys/io/enc/Decoder;I)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Lcom/twelvemonkeys/io/enc/Decoder;I)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 3
    iput-object p2, p0, Lcom/twelvemonkeys/io/enc/DecoderStream;->decoder:Lcom/twelvemonkeys/io/enc/Decoder;

    .line 4
    invoke-static {p3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/twelvemonkeys/io/enc/DecoderStream;->buffer:Ljava/nio/ByteBuffer;

    .line 5
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    return-void
.end method


# virtual methods
.method public available()I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Lcom/twelvemonkeys/io/enc/DecoderStream;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    move-result p0

    return p0
.end method

.method public fill()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/twelvemonkeys/io/enc/DecoderStream;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/twelvemonkeys/io/enc/DecoderStream;->decoder:Lcom/twelvemonkeys/io/enc/Decoder;

    iget-object v1, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    iget-object v2, p0, Lcom/twelvemonkeys/io/enc/DecoderStream;->buffer:Ljava/nio/ByteBuffer;

    invoke-interface {v0, v1, v2}, Lcom/twelvemonkeys/io/enc/Decoder;->decode(Ljava/io/InputStream;Ljava/nio/ByteBuffer;)I

    move-result v0

    iget-object v1, p0, Lcom/twelvemonkeys/io/enc/DecoderStream;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/Buffer;->capacity()I

    move-result v1

    if-gt v0, v1, :cond_1

    iget-object p0, p0, Lcom/twelvemonkeys/io/enc/DecoderStream;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    if-nez v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    return v0

    :cond_1
    new-instance v1, Ljava/lang/AssertionError;

    iget-object v2, p0, Lcom/twelvemonkeys/io/enc/DecoderStream;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/Buffer;->capacity()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object p0, p0, Lcom/twelvemonkeys/io/enc/DecoderStream;->decoder:Lcom/twelvemonkeys/io/enc/Decoder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    filled-new-array {v2, v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "Decode beyond buffer (%d): %d (using %s decoder)"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public read()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/twelvemonkeys/io/enc/DecoderStream;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/twelvemonkeys/io/enc/DecoderStream;->fill()I

    move-result v0

    if-gez v0, :cond_0

    const/4 p0, -0x1

    return p0

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/twelvemonkeys/io/enc/DecoderStream;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result p0

    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method public read([BII)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-ltz p2, :cond_4

    .line 5
    array-length v0, p1

    if-gt p2, v0, :cond_4

    if-ltz p3, :cond_4

    add-int v0, p2, p3

    array-length v1, p1

    if-gt v0, v1, :cond_4

    if-ltz v0, :cond_4

    const/4 v0, 0x0

    if-nez p3, :cond_0

    return v0

    .line 6
    :cond_0
    iget-object v1, p0, Lcom/twelvemonkeys/io/enc/DecoderStream;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v1

    if-nez v1, :cond_1

    .line 7
    invoke-virtual {p0}, Lcom/twelvemonkeys/io/enc/DecoderStream;->fill()I

    move-result v1

    if-gez v1, :cond_1

    const/4 p0, -0x1

    return p0

    :cond_1
    :goto_0
    if-le p3, v0, :cond_3

    .line 8
    iget-object v1, p0, Lcom/twelvemonkeys/io/enc/DecoderStream;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v1

    if-nez v1, :cond_2

    .line 9
    invoke-virtual {p0}, Lcom/twelvemonkeys/io/enc/DecoderStream;->fill()I

    move-result v1

    if-gez v1, :cond_2

    goto :goto_1

    :cond_2
    sub-int v1, p3, v0

    .line 10
    iget-object v2, p0, Lcom/twelvemonkeys/io/enc/DecoderStream;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/Buffer;->remaining()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 11
    iget-object v2, p0, Lcom/twelvemonkeys/io/enc/DecoderStream;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, p1, p2, v1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    add-int/2addr p2, v1

    add-int/2addr v0, v1

    goto :goto_0

    :cond_3
    :goto_1
    return v0

    .line 12
    :cond_4
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bytes.length="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " offset="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " length="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public skip(J)J
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/twelvemonkeys/io/enc/DecoderStream;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v0

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/twelvemonkeys/io/enc/DecoderStream;->fill()I

    move-result v0

    if-gez v0, :cond_0

    return-wide v1

    :cond_0
    :goto_0
    cmp-long v0, v1, p1

    if-gez v0, :cond_2

    iget-object v0, p0, Lcom/twelvemonkeys/io/enc/DecoderStream;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/twelvemonkeys/io/enc/DecoderStream;->fill()I

    move-result v0

    if-gez v0, :cond_1

    goto :goto_1

    :cond_1
    sub-long v3, p1, v1

    iget-object v0, p0, Lcom/twelvemonkeys/io/enc/DecoderStream;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    int-to-long v5, v0

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    long-to-int v0, v3

    iget-object v3, p0, Lcom/twelvemonkeys/io/enc/DecoderStream;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/Buffer;->position()I

    move-result v4

    add-int/2addr v4, v0

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    int-to-long v3, v0

    add-long/2addr v1, v3

    goto :goto_0

    :cond_2
    :goto_1
    return-wide v1
.end method
