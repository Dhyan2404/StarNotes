.class public Lorg/apache/commons/compress/compressors/brotli/BrotliCompressorInputStream;
.super Lorg/apache/commons/compress/compressors/CompressorInputStream;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/compress/utils/InputStreamStatistics;


# instance fields
.field public final f:Lorg/apache/commons/compress/utils/CountingInputStream;

.field public final g:Lorg/brotli/dec/BrotliInputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/CompressorInputStream;-><init>()V

    new-instance v0, Lorg/brotli/dec/BrotliInputStream;

    new-instance v1, Lorg/apache/commons/compress/utils/CountingInputStream;

    invoke-direct {v1, p1}, Lorg/apache/commons/compress/utils/CountingInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v1, p0, Lorg/apache/commons/compress/compressors/brotli/BrotliCompressorInputStream;->f:Lorg/apache/commons/compress/utils/CountingInputStream;

    invoke-direct {v0, v1}, Lorg/brotli/dec/BrotliInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lorg/apache/commons/compress/compressors/brotli/BrotliCompressorInputStream;->g:Lorg/brotli/dec/BrotliInputStream;

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

    iget-object p0, p0, Lorg/apache/commons/compress/compressors/brotli/BrotliCompressorInputStream;->g:Lorg/brotli/dec/BrotliInputStream;

    invoke-virtual {p0}, Lorg/brotli/dec/BrotliInputStream;->available()I

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

    iget-object p0, p0, Lorg/apache/commons/compress/compressors/brotli/BrotliCompressorInputStream;->g:Lorg/brotli/dec/BrotliInputStream;

    invoke-virtual {p0}, Lorg/brotli/dec/BrotliInputStream;->close()V

    return-void
.end method

.method public getCompressedCount()J
    .locals 2

    iget-object p0, p0, Lorg/apache/commons/compress/compressors/brotli/BrotliCompressorInputStream;->f:Lorg/apache/commons/compress/utils/CountingInputStream;

    invoke-virtual {p0}, Lorg/apache/commons/compress/utils/CountingInputStream;->getBytesRead()J

    move-result-wide v0

    return-wide v0
.end method

.method public declared-synchronized mark(I)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/brotli/BrotliCompressorInputStream;->g:Lorg/brotli/dec/BrotliInputStream;

    invoke-virtual {v0, p1}, Lorg/brotli/dec/BrotliInputStream;->mark(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public markSupported()Z
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/compress/compressors/brotli/BrotliCompressorInputStream;->g:Lorg/brotli/dec/BrotliInputStream;

    invoke-virtual {p0}, Lorg/brotli/dec/BrotliInputStream;->markSupported()Z

    move-result p0

    return p0
.end method

.method public read()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/brotli/BrotliCompressorInputStream;->g:Lorg/brotli/dec/BrotliInputStream;

    invoke-virtual {v0}, Lorg/brotli/dec/BrotliInputStream;->read()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 3
    :goto_0
    invoke-virtual {p0, v1}, Lorg/apache/commons/compress/compressors/CompressorInputStream;->count(I)V

    return v0
.end method

.method public read([B)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lorg/apache/commons/compress/compressors/brotli/BrotliCompressorInputStream;->g:Lorg/brotli/dec/BrotliInputStream;

    invoke-virtual {p0, p1}, Lorg/brotli/dec/BrotliInputStream;->read([B)I

    move-result p0

    return p0
.end method

.method public read([BII)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/brotli/BrotliCompressorInputStream;->g:Lorg/brotli/dec/BrotliInputStream;

    invoke-virtual {v0, p1, p2, p3}, Lorg/brotli/dec/BrotliInputStream;->read([BII)I

    move-result p1

    .line 5
    invoke-virtual {p0, p1}, Lorg/apache/commons/compress/compressors/CompressorInputStream;->count(I)V

    return p1
.end method

.method public declared-synchronized reset()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/brotli/BrotliCompressorInputStream;->g:Lorg/brotli/dec/BrotliInputStream;

    invoke-virtual {v0}, Lorg/brotli/dec/BrotliInputStream;->reset()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public skip(J)J
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/commons/compress/compressors/brotli/BrotliCompressorInputStream;->g:Lorg/brotli/dec/BrotliInputStream;

    invoke-static {p0, p1, p2}, Lorg/apache/commons/compress/utils/IOUtils;->skip(Ljava/io/InputStream;J)J

    move-result-wide p0

    return-wide p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/compress/compressors/brotli/BrotliCompressorInputStream;->g:Lorg/brotli/dec/BrotliInputStream;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
