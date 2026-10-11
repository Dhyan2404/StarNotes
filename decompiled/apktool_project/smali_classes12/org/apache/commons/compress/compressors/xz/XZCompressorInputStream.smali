.class public Lorg/apache/commons/compress/compressors/xz/XZCompressorInputStream;
.super Lorg/apache/commons/compress/compressors/CompressorInputStream;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/compress/utils/InputStreamStatistics;


# instance fields
.field public final f:Lorg/apache/commons/compress/utils/CountingInputStream;

.field public final g:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lorg/apache/commons/compress/compressors/xz/XZCompressorInputStream;-><init>(Ljava/io/InputStream;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, -0x1

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/compress/compressors/xz/XZCompressorInputStream;-><init>(Ljava/io/InputStream;ZI)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;ZI)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/CompressorInputStream;-><init>()V

    .line 4
    new-instance v0, Lorg/apache/commons/compress/utils/CountingInputStream;

    invoke-direct {v0, p1}, Lorg/apache/commons/compress/utils/CountingInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lorg/apache/commons/compress/compressors/xz/XZCompressorInputStream;->f:Lorg/apache/commons/compress/utils/CountingInputStream;

    if-eqz p2, :cond_0

    .line 5
    new-instance p1, Lorg/tukaani/xz/XZInputStream;

    invoke-direct {p1, v0, p3}, Lorg/tukaani/xz/XZInputStream;-><init>(Ljava/io/InputStream;I)V

    iput-object p1, p0, Lorg/apache/commons/compress/compressors/xz/XZCompressorInputStream;->g:Ljava/io/InputStream;

    goto :goto_0

    .line 6
    :cond_0
    new-instance p1, Lorg/tukaani/xz/SingleXZInputStream;

    invoke-direct {p1, v0, p3}, Lorg/tukaani/xz/SingleXZInputStream;-><init>(Ljava/io/InputStream;I)V

    iput-object p1, p0, Lorg/apache/commons/compress/compressors/xz/XZCompressorInputStream;->g:Ljava/io/InputStream;

    :goto_0
    return-void
.end method

.method public static matches([BI)Z
    .locals 3

    sget-object v0, Lorg/tukaani/xz/XZ;->HEADER_MAGIC:[B

    array-length v0, v0

    const/4 v1, 0x0

    if-ge p1, v0, :cond_0

    return v1

    :cond_0
    move p1, v1

    :goto_0
    sget-object v0, Lorg/tukaani/xz/XZ;->HEADER_MAGIC:[B

    array-length v0, v0

    if-ge p1, v0, :cond_2

    aget-byte v0, p0, p1

    sget-object v2, Lorg/tukaani/xz/XZ;->HEADER_MAGIC:[B

    aget-byte v2, v2, p1

    if-eq v0, v2, :cond_1

    return v1

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public available()I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/commons/compress/compressors/xz/XZCompressorInputStream;->g:Ljava/io/InputStream;

    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result p0

    return p0
.end method

.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/commons/compress/compressors/xz/XZCompressorInputStream;->g:Ljava/io/InputStream;

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    return-void
.end method

.method public getCompressedCount()J
    .locals 2

    iget-object p0, p0, Lorg/apache/commons/compress/compressors/xz/XZCompressorInputStream;->f:Lorg/apache/commons/compress/utils/CountingInputStream;

    invoke-virtual {p0}, Lorg/apache/commons/compress/utils/CountingInputStream;->getBytesRead()J

    move-result-wide v0

    return-wide v0
.end method

.method public read()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/xz/XZCompressorInputStream;->g:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 2
    :goto_0
    invoke-virtual {p0, v1}, Lorg/apache/commons/compress/compressors/CompressorInputStream;->count(I)V
    :try_end_0
    .catch Lorg/tukaani/xz/MemoryLimitException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception p0

    .line 3
    new-instance v0, Lorg/apache/commons/compress/MemoryLimitException;

    invoke-virtual {p0}, Lorg/tukaani/xz/MemoryLimitException;->getMemoryNeeded()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p0}, Lorg/tukaani/xz/MemoryLimitException;->getMemoryLimit()I

    move-result v3

    invoke-direct {v0, v1, v2, v3, p0}, Lorg/apache/commons/compress/MemoryLimitException;-><init>(JILjava/lang/Exception;)V

    throw v0
.end method

.method public read([BII)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p3, :cond_0

    const/4 p0, 0x0

    return p0

    .line 4
    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/xz/XZCompressorInputStream;->g:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    .line 5
    invoke-virtual {p0, p1}, Lorg/apache/commons/compress/compressors/CompressorInputStream;->count(I)V
    :try_end_0
    .catch Lorg/tukaani/xz/MemoryLimitException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p0

    .line 6
    new-instance p1, Lorg/apache/commons/compress/MemoryLimitException;

    invoke-virtual {p0}, Lorg/tukaani/xz/MemoryLimitException;->getMemoryNeeded()I

    move-result p2

    int-to-long p2, p2

    invoke-virtual {p0}, Lorg/tukaani/xz/MemoryLimitException;->getMemoryLimit()I

    move-result v0

    invoke-direct {p1, p2, p3, v0, p0}, Lorg/apache/commons/compress/MemoryLimitException;-><init>(JILjava/lang/Exception;)V

    throw p1
.end method

.method public skip(J)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    iget-object p0, p0, Lorg/apache/commons/compress/compressors/xz/XZCompressorInputStream;->g:Ljava/io/InputStream;

    invoke-static {p0, p1, p2}, Lorg/apache/commons/compress/utils/IOUtils;->skip(Ljava/io/InputStream;J)J

    move-result-wide p0
    :try_end_0
    .catch Lorg/tukaani/xz/MemoryLimitException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p0

    :catch_0
    move-exception p0

    new-instance p1, Lorg/apache/commons/compress/MemoryLimitException;

    invoke-virtual {p0}, Lorg/tukaani/xz/MemoryLimitException;->getMemoryNeeded()I

    move-result p2

    int-to-long v0, p2

    invoke-virtual {p0}, Lorg/tukaani/xz/MemoryLimitException;->getMemoryLimit()I

    move-result p2

    invoke-direct {p1, v0, v1, p2, p0}, Lorg/apache/commons/compress/MemoryLimitException;-><init>(JILjava/lang/Exception;)V

    throw p1
.end method
