.class public Ljavax/imageio/stream/FileCacheImageInputStream;
.super Ljavax/imageio/stream/ImageInputStreamImpl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavax/imageio/stream/FileCacheImageInputStream$a;
    }
.end annotation


# static fields
.field public static final n:I = 0x400


# instance fields
.field public e:Ljava/io/InputStream;

.field public f:Ljava/io/File;

.field public g:Ljava/io/RandomAccessFile;

.field public h:[B

.field public i:J

.field public j:Z

.field public final k:Ljava/lang/Object;

.field public final l:Lsun/java2d/DisposerRecord;

.field public final m:Lcom/sun/imageio/stream/StreamCloser$CloseAction;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Ljava/io/File;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljavax/imageio/stream/ImageInputStreamImpl;-><init>()V

    const/16 v0, 0x400

    new-array v0, v0, [B

    iput-object v0, p0, Ljavax/imageio/stream/FileCacheImageInputStream;->h:[B

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ljavax/imageio/stream/FileCacheImageInputStream;->i:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Ljavax/imageio/stream/FileCacheImageInputStream;->j:Z

    if-eqz p1, :cond_4

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Not a directory!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    iput-object p1, p0, Ljavax/imageio/stream/FileCacheImageInputStream;->e:Ljava/io/InputStream;

    const-string p1, ".tmp"

    const-string v1, "imageio"

    if-nez p2, :cond_2

    new-array p2, v0, [Ljava/nio/file/attribute/FileAttribute;

    invoke-static {v1, p1, p2}, Ljava/nio/file/Files;->createTempFile(Ljava/lang/String;Ljava/lang/String;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/file/Path;

    move-result-object p1

    invoke-interface {p1}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object p1

    iput-object p1, p0, Ljavax/imageio/stream/FileCacheImageInputStream;->f:Ljava/io/File;

    goto :goto_1

    :cond_2
    invoke-virtual {p2}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object p2

    new-array v0, v0, [Ljava/nio/file/attribute/FileAttribute;

    invoke-static {p2, v1, p1, v0}, Ljava/nio/file/Files;->createTempFile(Ljava/nio/file/Path;Ljava/lang/String;Ljava/lang/String;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/file/Path;

    move-result-object p1

    invoke-interface {p1}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object p1

    iput-object p1, p0, Ljavax/imageio/stream/FileCacheImageInputStream;->f:Ljava/io/File;

    :goto_1
    new-instance p1, Ljava/io/RandomAccessFile;

    iget-object p2, p0, Ljavax/imageio/stream/FileCacheImageInputStream;->f:Ljava/io/File;

    const-string v0, "rw"

    invoke-direct {p1, p2, v0}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p1, p0, Ljavax/imageio/stream/FileCacheImageInputStream;->g:Ljava/io/RandomAccessFile;

    invoke-static {p0}, Lcom/sun/imageio/stream/StreamCloser;->createCloseAction(Ljavax/imageio/stream/ImageInputStream;)Lcom/sun/imageio/stream/StreamCloser$CloseAction;

    move-result-object p1

    iput-object p1, p0, Ljavax/imageio/stream/FileCacheImageInputStream;->m:Lcom/sun/imageio/stream/StreamCloser$CloseAction;

    invoke-static {p1}, Lcom/sun/imageio/stream/StreamCloser;->addToQueue(Lcom/sun/imageio/stream/StreamCloser$CloseAction;)V

    new-instance p1, Ljavax/imageio/stream/FileCacheImageInputStream$a;

    iget-object p2, p0, Ljavax/imageio/stream/FileCacheImageInputStream;->f:Ljava/io/File;

    iget-object v0, p0, Ljavax/imageio/stream/FileCacheImageInputStream;->g:Ljava/io/RandomAccessFile;

    invoke-direct {p1, p2, v0}, Ljavax/imageio/stream/FileCacheImageInputStream$a;-><init>(Ljava/io/File;Ljava/io/RandomAccessFile;)V

    iput-object p1, p0, Ljavax/imageio/stream/FileCacheImageInputStream;->l:Lsun/java2d/DisposerRecord;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    const-class v0, Ljavax/imageio/stream/FileCacheImageInputStream;

    if-ne p2, v0, :cond_3

    new-instance p2, Ljava/lang/Object;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Ljavax/imageio/stream/FileCacheImageInputStream;->k:Ljava/lang/Object;

    invoke-static {p2, p1}, Lsun/java2d/Disposer;->addRecord(Ljava/lang/Object;Lsun/java2d/DisposerRecord;)V

    goto :goto_2

    :cond_3
    new-instance p1, Lcom/sun/imageio/stream/StreamFinalizer;

    invoke-direct {p1, p0}, Lcom/sun/imageio/stream/StreamFinalizer;-><init>(Ljavax/imageio/stream/ImageInputStream;)V

    iput-object p1, p0, Ljavax/imageio/stream/FileCacheImageInputStream;->k:Ljava/lang/Object;

    :goto_2
    return-void

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "stream == null!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0}, Ljavax/imageio/stream/ImageInputStreamImpl;->close()V

    iget-object v0, p0, Ljavax/imageio/stream/FileCacheImageInputStream;->l:Lsun/java2d/DisposerRecord;

    invoke-interface {v0}, Lsun/java2d/DisposerRecord;->dispose()V

    const/4 v0, 0x0

    iput-object v0, p0, Ljavax/imageio/stream/FileCacheImageInputStream;->e:Ljava/io/InputStream;

    iput-object v0, p0, Ljavax/imageio/stream/FileCacheImageInputStream;->g:Ljava/io/RandomAccessFile;

    iput-object v0, p0, Ljavax/imageio/stream/FileCacheImageInputStream;->f:Ljava/io/File;

    iget-object p0, p0, Ljavax/imageio/stream/FileCacheImageInputStream;->m:Lcom/sun/imageio/stream/StreamCloser$CloseAction;

    invoke-static {p0}, Lcom/sun/imageio/stream/StreamCloser;->removeFromQueue(Lcom/sun/imageio/stream/StreamCloser$CloseAction;)V

    return-void
.end method

.method public final e0(J)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-wide v0, p0, Ljavax/imageio/stream/FileCacheImageInputStream;->i:J

    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    return-wide p1

    :cond_0
    iget-boolean v2, p0, Ljavax/imageio/stream/FileCacheImageInputStream;->j:Z

    if-eqz v2, :cond_1

    return-wide v0

    :cond_1
    sub-long v2, p1, v0

    iget-object v4, p0, Ljavax/imageio/stream/FileCacheImageInputStream;->g:Ljava/io/RandomAccessFile;

    invoke-virtual {v4, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-lez v0, :cond_3

    iget-object v0, p0, Ljavax/imageio/stream/FileCacheImageInputStream;->e:Ljava/io/InputStream;

    iget-object v1, p0, Ljavax/imageio/stream/FileCacheImageInputStream;->h:[B

    const-wide/16 v4, 0x400

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    long-to-int v4, v4

    const/4 v5, 0x0

    invoke-virtual {v0, v1, v5, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    const/4 p1, 0x1

    iput-boolean p1, p0, Ljavax/imageio/stream/FileCacheImageInputStream;->j:Z

    iget-wide p0, p0, Ljavax/imageio/stream/FileCacheImageInputStream;->i:J

    return-wide p0

    :cond_2
    iget-object v1, p0, Ljavax/imageio/stream/FileCacheImageInputStream;->g:Ljava/io/RandomAccessFile;

    iget-object v4, p0, Ljavax/imageio/stream/FileCacheImageInputStream;->h:[B

    invoke-virtual {v1, v4, v5, v0}, Ljava/io/RandomAccessFile;->write([BII)V

    int-to-long v0, v0

    sub-long/2addr v2, v0

    iget-wide v4, p0, Ljavax/imageio/stream/FileCacheImageInputStream;->i:J

    add-long/2addr v4, v0

    iput-wide v4, p0, Ljavax/imageio/stream/FileCacheImageInputStream;->i:J

    goto :goto_0

    :cond_3
    return-wide p1
.end method

.method public finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

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

.method public read()I
    .locals 6
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
    iget-wide v0, p0, Ljavax/imageio/stream/ImageInputStreamImpl;->streamPos:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    .line 4
    invoke-virtual {p0, v0, v1}, Ljavax/imageio/stream/FileCacheImageInputStream;->e0(J)J

    move-result-wide v4

    cmp-long v0, v4, v0

    if-ltz v0, :cond_0

    .line 5
    iget-object v0, p0, Ljavax/imageio/stream/FileCacheImageInputStream;->g:Ljava/io/RandomAccessFile;

    iget-wide v4, p0, Ljavax/imageio/stream/ImageInputStreamImpl;->streamPos:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Ljavax/imageio/stream/ImageInputStreamImpl;->streamPos:J

    invoke-virtual {v0, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 6
    iget-object p0, p0, Ljavax/imageio/stream/FileCacheImageInputStream;->g:Ljava/io/RandomAccessFile;

    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->read()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public read([BII)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    invoke-virtual {p0}, Ljavax/imageio/stream/ImageInputStreamImpl;->checkClosed()V

    if-eqz p1, :cond_3

    if-ltz p2, :cond_2

    if-ltz p3, :cond_2

    add-int v0, p2, p3

    .line 8
    array-length v1, p1

    if-gt v0, v1, :cond_2

    if-ltz v0, :cond_2

    const/4 v0, 0x0

    .line 9
    iput v0, p0, Ljavax/imageio/stream/ImageInputStreamImpl;->bitOffset:I

    if-nez p3, :cond_0

    return v0

    .line 10
    :cond_0
    iget-wide v0, p0, Ljavax/imageio/stream/ImageInputStreamImpl;->streamPos:J

    int-to-long v2, p3

    add-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Ljavax/imageio/stream/FileCacheImageInputStream;->e0(J)J

    move-result-wide v0

    .line 11
    iget-wide v4, p0, Ljavax/imageio/stream/ImageInputStreamImpl;->streamPos:J

    sub-long/2addr v0, v4

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int p3, v0

    if-lez p3, :cond_1

    .line 12
    iget-object v0, p0, Ljavax/imageio/stream/FileCacheImageInputStream;->g:Ljava/io/RandomAccessFile;

    iget-wide v1, p0, Ljavax/imageio/stream/ImageInputStreamImpl;->streamPos:J

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 13
    iget-object v0, p0, Ljavax/imageio/stream/FileCacheImageInputStream;->g:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/RandomAccessFile;->readFully([BII)V

    .line 14
    iget-wide p1, p0, Ljavax/imageio/stream/ImageInputStreamImpl;->streamPos:J

    int-to-long v0, p3

    add-long/2addr p1, v0

    iput-wide p1, p0, Ljavax/imageio/stream/ImageInputStreamImpl;->streamPos:J

    return p3

    :cond_1
    const/4 p0, -0x1

    return p0

    .line 15
    :cond_2
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    const-string p1, "off < 0 || len < 0 || off+len > b.length || off+len < 0!"

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 16
    :cond_3
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "b == null!"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
