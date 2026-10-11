.class public Lorg/apache/commons/compress/archivers/zip/a;
.super Ljava/io/OutputStream;
.source "SourceFile"


# static fields
.field public static final l:J = 0x10000L

.field public static final m:J = 0xffffffffL


# instance fields
.field public e:Ljava/io/OutputStream;

.field public f:Ljava/nio/file/Path;

.field public final g:J

.field public h:I

.field public i:J

.field public j:Z

.field public final k:[B


# direct methods
.method public constructor <init>(Ljava/io/File;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/compress/archivers/zip/a;-><init>(Ljava/nio/file/Path;J)V

    return-void
.end method

.method public constructor <init>(Ljava/nio/file/Path;J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [B

    .line 3
    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/a;->k:[B

    const-wide/32 v0, 0x10000

    cmp-long v0, p2, v0

    if-ltz v0, :cond_0

    const-wide v0, 0xffffffffL

    cmp-long v0, p2, v0

    if-gtz v0, :cond_0

    .line 4
    iput-object p1, p0, Lorg/apache/commons/compress/archivers/zip/a;->f:Ljava/nio/file/Path;

    .line 5
    iput-wide p2, p0, Lorg/apache/commons/compress/archivers/zip/a;->g:J

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/nio/file/OpenOption;

    .line 6
    invoke-static {p1, p2}, Ljava/nio/file/Files;->newOutputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/OutputStream;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/compress/archivers/zip/a;->e:Ljava/io/OutputStream;

    .line 7
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/a;->M()V

    return-void

    .line 8
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "zip split segment size should between 64K and 4,294,967,295"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final H()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lorg/apache/commons/compress/archivers/zip/a;->h:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/a;->e:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/archivers/zip/a;->f(Ljava/lang/Integer;)Ljava/nio/file/Path;

    move-result-object v0

    iget-object v3, p0, Lorg/apache/commons/compress/archivers/zip/a;->f:Ljava/nio/file/Path;

    new-array v4, v2, [Ljava/nio/file/CopyOption;

    sget-object v5, Ljava/nio/file/StandardCopyOption;->ATOMIC_MOVE:Ljava/nio/file/StandardCopyOption;

    aput-object v5, v4, v1

    invoke-static {v3, v0, v4}, Ljava/nio/file/Files;->move(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Ljava/nio/file/Path;

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/archivers/zip/a;->f(Ljava/lang/Integer;)Ljava/nio/file/Path;

    move-result-object v0

    iget-object v3, p0, Lorg/apache/commons/compress/archivers/zip/a;->e:Ljava/io/OutputStream;

    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    new-array v1, v1, [Ljava/nio/file/OpenOption;

    invoke-static {v0, v1}, Ljava/nio/file/Files;->newOutputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/OutputStream;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/compress/archivers/zip/a;->e:Ljava/io/OutputStream;

    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lorg/apache/commons/compress/archivers/zip/a;->i:J

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/a;->f:Ljava/nio/file/Path;

    iget v0, p0, Lorg/apache/commons/compress/archivers/zip/a;->h:I

    add-int/2addr v0, v2

    iput v0, p0, Lorg/apache/commons/compress/archivers/zip/a;->h:I

    return-void
.end method

.method public I(J)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/io/IOException;
        }
    .end annotation

    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/a;->g:J

    cmp-long v2, p1, v0

    if-gtz v2, :cond_1

    iget-wide v2, p0, Lorg/apache/commons/compress/archivers/zip/a;->i:J

    sub-long/2addr v0, v2

    cmp-long p1, v0, p1

    if-gez p1, :cond_0

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/a;->H()V

    :cond_0
    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The unsplittable content size is bigger than the split segment size"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final M()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/a;->e:Ljava/io/OutputStream;

    sget-object v1, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->DD_SIG:[B

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    iget-wide v2, p0, Lorg/apache/commons/compress/archivers/zip/a;->i:J

    array-length v0, v1

    int-to-long v0, v0

    add-long/2addr v2, v0

    iput-wide v2, p0, Lorg/apache/commons/compress/archivers/zip/a;->i:J

    return-void
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/a;->j:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/a;->finish()V

    :cond_0
    return-void
.end method

.method public final f(Ljava/lang/Integer;)Ljava/nio/file/Path;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    iget p1, p0, Lorg/apache/commons/compress/archivers/zip/a;->h:I

    add-int/lit8 p1, p1, 0x2

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    :goto_0
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/a;->f:Ljava/nio/file/Path;

    invoke-static {v0}, Lorg/apache/commons/compress/utils/FileNameUtils;->getBaseName(Ljava/nio/file/Path;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x9

    const-string v2, ".z"

    if-gt p1, v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_1
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/a;->f:Ljava/nio/file/Path;

    invoke-interface {v1}, Ljava/nio/file/Path;->getParent()Ljava/nio/file/Path;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->nonNull(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/nio/file/Path;->toAbsolutePath()Ljava/nio/file/Path;

    move-result-object v1

    invoke-interface {v1}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_2
    const-string v1, "."

    :goto_2
    iget-object p0, p0, Lorg/apache/commons/compress/archivers/zip/a;->f:Ljava/nio/file/Path;

    invoke-interface {p0}, Ljava/nio/file/Path;->getFileSystem()Ljava/nio/file/FileSystem;

    move-result-object p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Ljava/nio/file/FileSystem;->getPath(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/nio/file/LinkOption;

    invoke-static {p0, v1}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v1

    if-nez v1, :cond_3

    return-object p0

    :cond_3
    new-instance p0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "split zip segment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " already exists"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final finish()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/a;->j:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/a;->f:Ljava/nio/file/Path;

    invoke-static {v0}, Lorg/apache/commons/compress/utils/FileNameUtils;->getBaseName(Ljava/nio/file/Path;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/a;->e:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/a;->f:Ljava/nio/file/Path;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".zip"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/nio/file/Path;->resolveSibling(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/nio/file/CopyOption;

    const/4 v4, 0x0

    sget-object v5, Ljava/nio/file/StandardCopyOption;->ATOMIC_MOVE:Ljava/nio/file/StandardCopyOption;

    aput-object v5, v3, v4

    invoke-static {v1, v0, v3}, Ljava/nio/file/Files;->move(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Ljava/nio/file/Path;

    iput-boolean v2, p0, Lorg/apache/commons/compress/archivers/zip/a;->j:Z

    return-void

    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string v0, "This archive has already been finished"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public j()J
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/a;->i:J

    return-wide v0
.end method

.method public w()I
    .locals 0

    iget p0, p0, Lorg/apache/commons/compress/archivers/zip/a;->h:I

    return p0
.end method

.method public write(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/a;->k:[B

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    const/4 v1, 0x0

    aput-byte p1, v0, v1

    .line 2
    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/archivers/zip/a;->write([B)V

    return-void
.end method

.method public write([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lorg/apache/commons/compress/archivers/zip/a;->write([BII)V

    return-void
.end method

.method public write([BII)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-gtz p3, :cond_0

    return-void

    .line 4
    :cond_0
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/a;->i:J

    iget-wide v2, p0, Lorg/apache/commons/compress/archivers/zip/a;->g:J

    cmp-long v4, v0, v2

    if-ltz v4, :cond_1

    .line 5
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/a;->H()V

    .line 6
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/compress/archivers/zip/a;->write([BII)V

    goto :goto_0

    :cond_1
    int-to-long v4, p3

    add-long v6, v0, v4

    cmp-long v6, v6, v2

    if-lez v6, :cond_2

    long-to-int v2, v2

    long-to-int v0, v0

    sub-int/2addr v2, v0

    .line 7
    invoke-virtual {p0, p1, p2, v2}, Lorg/apache/commons/compress/archivers/zip/a;->write([BII)V

    .line 8
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/a;->H()V

    add-int/2addr p2, v2

    sub-int/2addr p3, v2

    .line 9
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/compress/archivers/zip/a;->write([BII)V

    goto :goto_0

    .line 10
    :cond_2
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/a;->e:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 11
    iget-wide p1, p0, Lorg/apache/commons/compress/archivers/zip/a;->i:J

    add-long/2addr p1, v4

    iput-wide p1, p0, Lorg/apache/commons/compress/archivers/zip/a;->i:J

    :goto_0
    return-void
.end method
