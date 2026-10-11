.class public final Lcom/twelvemonkeys/io/enc/EncoderStream;
.super Ljava/io/FilterOutputStream;
.source "SourceFile"


# instance fields
.field protected final buffer:Ljava/nio/ByteBuffer;

.field public final e:Z

.field protected final encoder:Lcom/twelvemonkeys/io/enc/Encoder;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;Lcom/twelvemonkeys/io/enc/Encoder;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/twelvemonkeys/io/enc/EncoderStream;-><init>(Ljava/io/OutputStream;Lcom/twelvemonkeys/io/enc/Encoder;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Lcom/twelvemonkeys/io/enc/Encoder;Z)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 3
    iput-object p2, p0, Lcom/twelvemonkeys/io/enc/EncoderStream;->encoder:Lcom/twelvemonkeys/io/enc/Encoder;

    .line 4
    iput-boolean p3, p0, Lcom/twelvemonkeys/io/enc/EncoderStream;->e:Z

    const/16 p1, 0x400

    .line 5
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/twelvemonkeys/io/enc/EncoderStream;->buffer:Ljava/nio/ByteBuffer;

    .line 6
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/twelvemonkeys/io/enc/EncoderStream;->flush()V

    invoke-super {p0}, Ljava/io/FilterOutputStream;->close()V

    return-void
.end method

.method public final f()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/twelvemonkeys/io/enc/EncoderStream;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twelvemonkeys/io/enc/EncoderStream;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/twelvemonkeys/io/enc/EncoderStream;->encoder:Lcom/twelvemonkeys/io/enc/Encoder;

    iget-object v1, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    iget-object v2, p0, Lcom/twelvemonkeys/io/enc/EncoderStream;->buffer:Ljava/nio/ByteBuffer;

    invoke-interface {v0, v1, v2}, Lcom/twelvemonkeys/io/enc/Encoder;->encode(Ljava/io/OutputStream;Ljava/nio/ByteBuffer;)V

    iget-object p0, p0, Lcom/twelvemonkeys/io/enc/EncoderStream;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    :cond_0
    return-void
.end method

.method public flush()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/twelvemonkeys/io/enc/EncoderStream;->f()V

    invoke-super {p0}, Ljava/io/FilterOutputStream;->flush()V

    return-void
.end method

.method public write(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6
    iget-object v0, p0, Lcom/twelvemonkeys/io/enc/EncoderStream;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_0

    .line 7
    invoke-virtual {p0}, Lcom/twelvemonkeys/io/enc/EncoderStream;->f()V

    .line 8
    :cond_0
    iget-object p0, p0, Lcom/twelvemonkeys/io/enc/EncoderStream;->buffer:Ljava/nio/ByteBuffer;

    int-to-byte p1, p1

    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public final write([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/twelvemonkeys/io/enc/EncoderStream;->write([BII)V

    return-void
.end method

.method public write([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    iget-boolean v0, p0, Lcom/twelvemonkeys/io/enc/EncoderStream;->e:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/twelvemonkeys/io/enc/EncoderStream;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    if-ge p3, v0, :cond_0

    .line 3
    iget-object p0, p0, Lcom/twelvemonkeys/io/enc/EncoderStream;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p0, p1, p2, p3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/twelvemonkeys/io/enc/EncoderStream;->f()V

    .line 5
    iget-object v0, p0, Lcom/twelvemonkeys/io/enc/EncoderStream;->encoder:Lcom/twelvemonkeys/io/enc/Encoder;

    iget-object p0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    invoke-static {p1, p2, p3}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Lcom/twelvemonkeys/io/enc/Encoder;->encode(Ljava/io/OutputStream;Ljava/nio/ByteBuffer;)V

    :goto_0
    return-void
.end method
