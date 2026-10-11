.class public Ljavax/imageio/stream/FileCacheImageOutputStream;
.super Ljavax/imageio/stream/ImageOutputStreamImpl;
.source "SourceFile"


# instance fields
.field public e:Ljava/io/OutputStream;

.field public f:Ljava/io/File;

.field public g:Ljava/io/RandomAccessFile;

.field public h:J

.field public final i:Lcom/sun/imageio/stream/StreamCloser$CloseAction;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;Ljava/io/File;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljavax/imageio/stream/ImageOutputStreamImpl;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ljavax/imageio/stream/FileCacheImageOutputStream;->h:J

    if-eqz p1, :cond_3

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Not a directory!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    iput-object p1, p0, Ljavax/imageio/stream/FileCacheImageOutputStream;->e:Ljava/io/OutputStream;

    const/4 p1, 0x0

    const-string v0, ".tmp"

    const-string v1, "imageio"

    if-nez p2, :cond_2

    new-array p1, p1, [Ljava/nio/file/attribute/FileAttribute;

    invoke-static {v1, v0, p1}, Ljava/nio/file/Files;->createTempFile(Ljava/lang/String;Ljava/lang/String;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/file/Path;

    move-result-object p1

    invoke-interface {p1}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object p1

    iput-object p1, p0, Ljavax/imageio/stream/FileCacheImageOutputStream;->f:Ljava/io/File;

    goto :goto_1

    :cond_2
    invoke-virtual {p2}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object p2

    new-array p1, p1, [Ljava/nio/file/attribute/FileAttribute;

    invoke-static {p2, v1, v0, p1}, Ljava/nio/file/Files;->createTempFile(Ljava/nio/file/Path;Ljava/lang/String;Ljava/lang/String;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/file/Path;

    move-result-object p1

    invoke-interface {p1}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object p1

    iput-object p1, p0, Ljavax/imageio/stream/FileCacheImageOutputStream;->f:Ljava/io/File;

    :goto_1
    new-instance p1, Ljava/io/RandomAccessFile;

    iget-object p2, p0, Ljavax/imageio/stream/FileCacheImageOutputStream;->f:Ljava/io/File;

    const-string v0, "rw"

    invoke-direct {p1, p2, v0}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p1, p0, Ljavax/imageio/stream/FileCacheImageOutputStream;->g:Ljava/io/RandomAccessFile;

    invoke-static {p0}, Lcom/sun/imageio/stream/StreamCloser;->createCloseAction(Ljavax/imageio/stream/ImageInputStream;)Lcom/sun/imageio/stream/StreamCloser$CloseAction;

    move-result-object p1

    iput-object p1, p0, Ljavax/imageio/stream/FileCacheImageOutputStream;->i:Lcom/sun/imageio/stream/StreamCloser$CloseAction;

    invoke-static {p1}, Lcom/sun/imageio/stream/StreamCloser;->addToQueue(Lcom/sun/imageio/stream/StreamCloser$CloseAction;)V

    return-void

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "stream == null!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Ljavax/imageio/stream/FileCacheImageOutputStream;->g:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v0

    iput-wide v0, p0, Ljavax/imageio/stream/FileCacheImageOutputStream;->h:J

    invoke-virtual {p0, v0, v1}, Ljavax/imageio/stream/FileCacheImageOutputStream;->seek(J)V

    iget-wide v0, p0, Ljavax/imageio/stream/FileCacheImageOutputStream;->h:J

    invoke-virtual {p0, v0, v1}, Ljavax/imageio/stream/FileCacheImageOutputStream;->flushBefore(J)V

    invoke-super {p0}, Ljavax/imageio/stream/ImageInputStreamImpl;->close()V

    iget-object v0, p0, Ljavax/imageio/stream/FileCacheImageOutputStream;->g:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Ljavax/imageio/stream/FileCacheImageOutputStream;->g:Ljava/io/RandomAccessFile;

    iget-object v1, p0, Ljavax/imageio/stream/FileCacheImageOutputStream;->f:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    iput-object v0, p0, Ljavax/imageio/stream/FileCacheImageOutputStream;->f:Ljava/io/File;

    iget-object v1, p0, Ljavax/imageio/stream/FileCacheImageOutputStream;->e:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    iput-object v0, p0, Ljavax/imageio/stream/FileCacheImageOutputStream;->e:Ljava/io/OutputStream;

    iget-object p0, p0, Ljavax/imageio/stream/FileCacheImageOutputStream;->i:Lcom/sun/imageio/stream/StreamCloser$CloseAction;

    invoke-static {p0}, Lcom/sun/imageio/stream/StreamCloser;->removeFromQueue(Lcom/sun/imageio/stream/StreamCloser$CloseAction;)V

    return-void
.end method

.method public flushBefore(J)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-wide v0, p0, Ljavax/imageio/stream/ImageInputStreamImpl;->flushedPos:J

    invoke-super {p0, p1, p2}, Ljavax/imageio/stream/ImageInputStreamImpl;->flushBefore(J)V

    iget-wide p1, p0, Ljavax/imageio/stream/ImageInputStreamImpl;->flushedPos:J

    sub-long/2addr p1, v0

    const-wide/16 v2, 0x0

    cmp-long v4, p1, v2

    if-lez v4, :cond_1

    const/16 v4, 0x200

    new-array v5, v4, [B

    iget-object v6, p0, Ljavax/imageio/stream/FileCacheImageOutputStream;->g:Ljava/io/RandomAccessFile;

    invoke-virtual {v6, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    :goto_0
    cmp-long v0, p1, v2

    if-lez v0, :cond_0

    int-to-long v0, v4

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    iget-object v1, p0, Ljavax/imageio/stream/FileCacheImageOutputStream;->g:Ljava/io/RandomAccessFile;

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6, v0}, Ljava/io/RandomAccessFile;->readFully([BII)V

    iget-object v1, p0, Ljavax/imageio/stream/FileCacheImageOutputStream;->e:Ljava/io/OutputStream;

    invoke-virtual {v1, v5, v6, v0}, Ljava/io/OutputStream;->write([BII)V

    int-to-long v0, v0

    sub-long/2addr p1, v0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Ljavax/imageio/stream/FileCacheImageOutputStream;->e:Ljava/io/OutputStream;

    invoke-virtual {p0}, Ljava/io/OutputStream;->flush()V

    :cond_1
    return-void
.end method

.method public isCached()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isCachedFile()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isCachedMemory()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public length()J
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Ljavax/imageio/stream/ImageInputStreamImpl;->checkClosed()V

    iget-object p0, p0, Ljavax/imageio/stream/FileCacheImageOutputStream;->g:Ljava/io/RandomAccessFile;

    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public read()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljavax/imageio/stream/ImageInputStreamImpl;->checkClosed()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Ljavax/imageio/stream/ImageInputStreamImpl;->bitOffset:I

    .line 3
    iget-object v0, p0, Ljavax/imageio/stream/FileCacheImageOutputStream;->g:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->read()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 4
    iget-wide v1, p0, Ljavax/imageio/stream/ImageInputStreamImpl;->streamPos:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Ljavax/imageio/stream/ImageInputStreamImpl;->streamPos:J

    :cond_0
    return v0
.end method

.method public read([BII)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5
    invoke-virtual {p0}, Ljavax/imageio/stream/ImageInputStreamImpl;->checkClosed()V

    if-eqz p1, :cond_3

    if-ltz p2, :cond_2

    if-ltz p3, :cond_2

    add-int v0, p2, p3

    .line 6
    array-length v1, p1

    if-gt v0, v1, :cond_2

    if-ltz v0, :cond_2

    const/4 v0, 0x0

    .line 7
    iput v0, p0, Ljavax/imageio/stream/ImageInputStreamImpl;->bitOffset:I

    if-nez p3, :cond_0

    return v0

    .line 8
    :cond_0
    iget-object v0, p0, Ljavax/imageio/stream/FileCacheImageOutputStream;->g:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result p1

    const/4 p2, -0x1

    if-eq p1, p2, :cond_1

    .line 9
    iget-wide p2, p0, Ljavax/imageio/stream/ImageInputStreamImpl;->streamPos:J

    int-to-long v0, p1

    add-long/2addr p2, v0

    iput-wide p2, p0, Ljavax/imageio/stream/ImageInputStreamImpl;->streamPos:J

    :cond_1
    return p1

    .line 10
    :cond_2
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    const-string p1, "off < 0 || len < 0 || off+len > b.length || off+len < 0!"

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 11
    :cond_3
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "b == null!"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public seek(J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljavax/imageio/stream/ImageInputStreamImpl;->checkClosed()V

    iget-wide v0, p0, Ljavax/imageio/stream/ImageInputStreamImpl;->flushedPos:J

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    iget-object v0, p0, Ljavax/imageio/stream/FileCacheImageOutputStream;->g:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p1, p2}, Ljava/io/RandomAccessFile;->seek(J)V

    iget-object p1, p0, Ljavax/imageio/stream/FileCacheImageOutputStream;->g:Ljava/io/RandomAccessFile;

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide p1

    iput-wide p1, p0, Ljavax/imageio/stream/ImageInputStreamImpl;->streamPos:J

    iget-wide v0, p0, Ljavax/imageio/stream/FileCacheImageOutputStream;->h:J

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    iput-wide p1, p0, Ljavax/imageio/stream/FileCacheImageOutputStream;->h:J

    const/4 p1, 0x0

    iput p1, p0, Ljavax/imageio/stream/ImageInputStreamImpl;->bitOffset:I

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p0
.end method

.method public write(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljavax/imageio/stream/ImageOutputStreamImpl;->flushBits()V

    .line 2
    iget-object v0, p0, Ljavax/imageio/stream/FileCacheImageOutputStream;->g:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p1}, Ljava/io/RandomAccessFile;->write(I)V

    .line 3
    iget-wide v0, p0, Ljavax/imageio/stream/ImageInputStreamImpl;->streamPos:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Ljavax/imageio/stream/ImageInputStreamImpl;->streamPos:J

    .line 4
    iget-wide v2, p0, Ljavax/imageio/stream/FileCacheImageOutputStream;->h:J

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Ljavax/imageio/stream/FileCacheImageOutputStream;->h:J

    return-void
.end method

.method public write([BII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5
    invoke-virtual {p0}, Ljavax/imageio/stream/ImageOutputStreamImpl;->flushBits()V

    .line 6
    iget-object v0, p0, Ljavax/imageio/stream/FileCacheImageOutputStream;->g:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 7
    iget-wide p1, p0, Ljavax/imageio/stream/ImageInputStreamImpl;->streamPos:J

    int-to-long v0, p3

    add-long/2addr p1, v0

    iput-wide p1, p0, Ljavax/imageio/stream/ImageInputStreamImpl;->streamPos:J

    .line 8
    iget-wide v0, p0, Ljavax/imageio/stream/FileCacheImageOutputStream;->h:J

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    iput-wide p1, p0, Ljavax/imageio/stream/FileCacheImageOutputStream;->h:J

    return-void
.end method
