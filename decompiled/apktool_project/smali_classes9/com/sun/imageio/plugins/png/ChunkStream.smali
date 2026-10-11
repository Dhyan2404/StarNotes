.class final Lcom/sun/imageio/plugins/png/ChunkStream;
.super Ljavax/imageio/stream/ImageOutputStreamImpl;
.source "SourceFile"


# instance fields
.field private final crc:Lcom/sun/imageio/plugins/png/CRC;

.field private final startPos:J

.field private final stream:Ljavax/imageio/stream/ImageOutputStream;


# direct methods
.method public constructor <init>(ILjavax/imageio/stream/ImageOutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljavax/imageio/stream/ImageOutputStreamImpl;-><init>()V

    new-instance v0, Lcom/sun/imageio/plugins/png/CRC;

    invoke-direct {v0}, Lcom/sun/imageio/plugins/png/CRC;-><init>()V

    iput-object v0, p0, Lcom/sun/imageio/plugins/png/ChunkStream;->crc:Lcom/sun/imageio/plugins/png/CRC;

    iput-object p2, p0, Lcom/sun/imageio/plugins/png/ChunkStream;->stream:Ljavax/imageio/stream/ImageOutputStream;

    invoke-interface {p2}, Ljavax/imageio/stream/ImageInputStream;->getStreamPosition()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sun/imageio/plugins/png/ChunkStream;->startPos:J

    const/4 v0, -0x1

    invoke-interface {p2, v0}, Ljavax/imageio/stream/ImageOutputStream;->writeInt(I)V

    invoke-virtual {p0, p1}, Ljavax/imageio/stream/ImageOutputStreamImpl;->writeInt(I)V

    return-void
.end method


# virtual methods
.method public finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    return-void
.end method

.method public finish()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/imageio/plugins/png/ChunkStream;->stream:Ljavax/imageio/stream/ImageOutputStream;

    iget-object v1, p0, Lcom/sun/imageio/plugins/png/ChunkStream;->crc:Lcom/sun/imageio/plugins/png/CRC;

    invoke-virtual {v1}, Lcom/sun/imageio/plugins/png/CRC;->getValue()I

    move-result v1

    invoke-interface {v0, v1}, Ljavax/imageio/stream/ImageOutputStream;->writeInt(I)V

    iget-object v0, p0, Lcom/sun/imageio/plugins/png/ChunkStream;->stream:Ljavax/imageio/stream/ImageOutputStream;

    invoke-interface {v0}, Ljavax/imageio/stream/ImageInputStream;->getStreamPosition()J

    move-result-wide v0

    iget-object v2, p0, Lcom/sun/imageio/plugins/png/ChunkStream;->stream:Ljavax/imageio/stream/ImageOutputStream;

    iget-wide v3, p0, Lcom/sun/imageio/plugins/png/ChunkStream;->startPos:J

    invoke-interface {v2, v3, v4}, Ljavax/imageio/stream/ImageInputStream;->seek(J)V

    iget-object v2, p0, Lcom/sun/imageio/plugins/png/ChunkStream;->stream:Ljavax/imageio/stream/ImageOutputStream;

    iget-wide v3, p0, Lcom/sun/imageio/plugins/png/ChunkStream;->startPos:J

    sub-long v3, v0, v3

    long-to-int v3, v3

    add-int/lit8 v3, v3, -0xc

    invoke-interface {v2, v3}, Ljavax/imageio/stream/ImageOutputStream;->writeInt(I)V

    iget-object v2, p0, Lcom/sun/imageio/plugins/png/ChunkStream;->stream:Ljavax/imageio/stream/ImageOutputStream;

    invoke-interface {v2, v0, v1}, Ljavax/imageio/stream/ImageInputStream;->seek(J)V

    iget-object p0, p0, Lcom/sun/imageio/plugins/png/ChunkStream;->stream:Ljavax/imageio/stream/ImageOutputStream;

    invoke-interface {p0, v0, v1}, Ljavax/imageio/stream/ImageOutputStream;->flushBefore(J)V

    return-void
.end method

.method public read()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Method not available"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public read([BII)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Method not available"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public write(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lcom/sun/imageio/plugins/png/ChunkStream;->crc:Lcom/sun/imageio/plugins/png/CRC;

    invoke-virtual {v0, p1}, Lcom/sun/imageio/plugins/png/CRC;->update(I)V

    .line 4
    iget-object p0, p0, Lcom/sun/imageio/plugins/png/ChunkStream;->stream:Ljavax/imageio/stream/ImageOutputStream;

    invoke-interface {p0, p1}, Ljavax/imageio/stream/ImageOutputStream;->write(I)V

    return-void
.end method

.method public write([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/sun/imageio/plugins/png/ChunkStream;->crc:Lcom/sun/imageio/plugins/png/CRC;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sun/imageio/plugins/png/CRC;->update([BII)V

    .line 2
    iget-object p0, p0, Lcom/sun/imageio/plugins/png/ChunkStream;->stream:Ljavax/imageio/stream/ImageOutputStream;

    invoke-interface {p0, p1, p2, p3}, Ljavax/imageio/stream/ImageOutputStream;->write([BII)V

    return-void
.end method
