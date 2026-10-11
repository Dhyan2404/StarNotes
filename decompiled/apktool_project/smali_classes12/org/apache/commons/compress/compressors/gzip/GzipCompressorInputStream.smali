.class public Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;
.super Lorg/apache/commons/compress/compressors/CompressorInputStream;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/compress/utils/InputStreamStatistics;


# static fields
.field public static final p:I = 0x2

.field public static final q:I = 0x4

.field public static final r:I = 0x8

.field public static final s:I = 0x10

.field public static final t:I = 0xe0

.field public static final synthetic u:Z


# instance fields
.field public final f:Lorg/apache/commons/compress/utils/CountingInputStream;

.field public final g:Ljava/io/InputStream;

.field public final h:Z

.field public final i:[B

.field public j:I

.field public k:Ljava/util/zip/Inflater;

.field public final l:Ljava/util/zip/CRC32;

.field public m:Z

.field public final n:[B

.field public final o:Lorg/apache/commons/compress/compressors/gzip/GzipParameters;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;-><init>(Ljava/io/InputStream;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/CompressorInputStream;-><init>()V

    const/16 v0, 0x2000

    new-array v0, v0, [B

    .line 3
    iput-object v0, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->i:[B

    .line 4
    new-instance v0, Ljava/util/zip/Inflater;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/zip/Inflater;-><init>(Z)V

    iput-object v0, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->k:Ljava/util/zip/Inflater;

    .line 5
    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->l:Ljava/util/zip/CRC32;

    new-array v0, v1, [B

    .line 6
    iput-object v0, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->n:[B

    .line 7
    new-instance v0, Lorg/apache/commons/compress/compressors/gzip/GzipParameters;

    invoke-direct {v0}, Lorg/apache/commons/compress/compressors/gzip/GzipParameters;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->o:Lorg/apache/commons/compress/compressors/gzip/GzipParameters;

    .line 8
    new-instance v0, Lorg/apache/commons/compress/utils/CountingInputStream;

    invoke-direct {v0, p1}, Lorg/apache/commons/compress/utils/CountingInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->f:Lorg/apache/commons/compress/utils/CountingInputStream;

    .line 9
    invoke-virtual {v0}, Ljava/io/InputStream;->markSupported()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 10
    iput-object v0, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->g:Ljava/io/InputStream;

    goto :goto_0

    .line 11
    :cond_0
    new-instance p1, Ljava/io/BufferedInputStream;

    invoke-direct {p1, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object p1, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->g:Ljava/io/InputStream;

    .line 12
    :goto_0
    iput-boolean p2, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->h:Z

    .line 13
    invoke-virtual {p0, v1}, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->f(Z)Z

    return-void
.end method

.method public static j(Ljava/io/DataInput;)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :goto_0
    :try_start_0
    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v1

    :try_start_2
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v1
.end method

.method public static matches([BI)Z
    .locals 2

    const/4 v0, 0x2

    const/4 v1, 0x0

    if-lt p1, v0, :cond_0

    aget-byte p1, p0, v1

    const/16 v0, 0x1f

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    aget-byte p0, p0, p1

    const/16 v0, -0x75

    if-ne p0, v0, :cond_0

    move v1, p1

    :cond_0
    return v1
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->k:Ljava/util/zip/Inflater;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/zip/Inflater;->end()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->k:Ljava/util/zip/Inflater;

    :cond_0
    iget-object p0, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->g:Ljava/io/InputStream;

    sget-object v0, Ljava/lang/System;->in:Ljava/io/InputStream;

    if-eq p0, v0, :cond_1

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    :cond_1
    return-void
.end method

.method public final f(Z)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->g:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/16 v1, 0x1f

    if-ne v0, v1, :cond_a

    iget-object v0, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->g:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    const/16 v1, 0x8b

    if-eq v0, v1, :cond_1

    goto/16 :goto_2

    :cond_1
    new-instance p1, Ljava/io/DataInputStream;

    iget-object v0, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->g:Ljava/io/InputStream;

    invoke-direct {p1, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-interface {p1}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_9

    invoke-interface {p1}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v0

    and-int/lit16 v2, v0, 0xe0

    if-nez v2, :cond_8

    iget-object v2, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->o:Lorg/apache/commons/compress/compressors/gzip/GzipParameters;

    const/4 v3, 0x4

    invoke-static {p1, v3}, Lorg/apache/commons/compress/utils/ByteUtils;->fromLittleEndian(Ljava/io/DataInput;I)J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    invoke-virtual {v2, v4, v5}, Lorg/apache/commons/compress/compressors/gzip/GzipParameters;->setModificationTime(J)V

    invoke-interface {p1}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v2

    const/4 v4, 0x1

    const/4 v5, 0x2

    if-eq v2, v5, :cond_3

    if-eq v2, v3, :cond_2

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->o:Lorg/apache/commons/compress/compressors/gzip/GzipParameters;

    invoke-virtual {v2, v4}, Lorg/apache/commons/compress/compressors/gzip/GzipParameters;->setCompressionLevel(I)V

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->o:Lorg/apache/commons/compress/compressors/gzip/GzipParameters;

    const/16 v3, 0x9

    invoke-virtual {v2, v3}, Lorg/apache/commons/compress/compressors/gzip/GzipParameters;->setCompressionLevel(I)V

    :goto_0
    iget-object v2, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->o:Lorg/apache/commons/compress/compressors/gzip/GzipParameters;

    invoke-interface {p1}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/apache/commons/compress/compressors/gzip/GzipParameters;->setOperatingSystem(I)V

    and-int/lit8 v2, v0, 0x4

    if-eqz v2, :cond_4

    invoke-interface {p1}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v2

    invoke-interface {p1}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v3

    shl-int/lit8 v1, v3, 0x8

    or-int/2addr v1, v2

    :goto_1
    add-int/lit8 v2, v1, -0x1

    if-lez v1, :cond_4

    invoke-interface {p1}, Ljava/io/DataInput;->readUnsignedByte()I

    move v1, v2

    goto :goto_1

    :cond_4
    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_5

    iget-object v1, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->o:Lorg/apache/commons/compress/compressors/gzip/GzipParameters;

    new-instance v2, Ljava/lang/String;

    invoke-static {p1}, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->j(Ljava/io/DataInput;)[B

    move-result-object v3

    sget-object v6, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-direct {v2, v3, v6}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v1, v2}, Lorg/apache/commons/compress/compressors/gzip/GzipParameters;->setFilename(Ljava/lang/String;)V

    :cond_5
    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_6

    iget-object v1, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->o:Lorg/apache/commons/compress/compressors/gzip/GzipParameters;

    new-instance v2, Ljava/lang/String;

    invoke-static {p1}, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->j(Ljava/io/DataInput;)[B

    move-result-object v3

    sget-object v6, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-direct {v2, v3, v6}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v1, v2}, Lorg/apache/commons/compress/compressors/gzip/GzipParameters;->setComment(Ljava/lang/String;)V

    :cond_6
    and-int/2addr v0, v5

    if-eqz v0, :cond_7

    invoke-interface {p1}, Ljava/io/DataInput;->readShort()S

    :cond_7
    iget-object p1, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->k:Ljava/util/zip/Inflater;

    invoke-virtual {p1}, Ljava/util/zip/Inflater;->reset()V

    iget-object p0, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->l:Ljava/util/zip/CRC32;

    invoke-virtual {p0}, Ljava/util/zip/CRC32;->reset()V

    return v4

    :cond_8
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Reserved flags are set in the .gz header"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_9
    new-instance p0, Ljava/io/IOException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported compression method "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " in the .gz header"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a
    :goto_2
    new-instance p0, Ljava/io/IOException;

    if-eqz p1, :cond_b

    const-string p1, "Input is not in the .gz format"

    goto :goto_3

    :cond_b
    const-string p1, "Garbage after a valid .gz stream"

    :goto_3
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getCompressedCount()J
    .locals 2

    iget-object p0, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->f:Lorg/apache/commons/compress/utils/CountingInputStream;

    invoke-virtual {p0}, Lorg/apache/commons/compress/utils/CountingInputStream;->getBytesRead()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMetaData()Lorg/apache/commons/compress/compressors/gzip/GzipParameters;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->o:Lorg/apache/commons/compress/compressors/gzip/GzipParameters;

    return-object p0
.end method

.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->n:[B

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->read([BII)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->n:[B

    aget-byte p0, p0, v2

    and-int/lit16 v1, p0, 0xff

    :goto_0
    return v1
.end method

.method public read([BII)I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p3, :cond_0

    return v0

    .line 2
    :cond_0
    iget-boolean v1, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->m:Z

    const/4 v2, -0x1

    if-eqz v1, :cond_1

    return v2

    :cond_1
    move v1, v0

    :cond_2
    if-lez p3, :cond_a

    .line 3
    iget-object v3, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->k:Ljava/util/zip/Inflater;

    invoke-virtual {v3}, Ljava/util/zip/Inflater;->needsInput()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 4
    iget-object v3, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->g:Ljava/io/InputStream;

    iget-object v4, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->i:[B

    array-length v4, v4

    invoke-virtual {v3, v4}, Ljava/io/InputStream;->mark(I)V

    .line 5
    iget-object v3, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->g:Ljava/io/InputStream;

    iget-object v4, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->i:[B

    invoke-virtual {v3, v4}, Ljava/io/InputStream;->read([B)I

    move-result v3

    iput v3, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->j:I

    if-eq v3, v2, :cond_3

    .line 6
    iget-object v4, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->k:Ljava/util/zip/Inflater;

    iget-object v5, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->i:[B

    invoke-virtual {v4, v5, v0, v3}, Ljava/util/zip/Inflater;->setInput([BII)V

    goto :goto_0

    .line 7
    :cond_3
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0

    .line 8
    :cond_4
    :goto_0
    :try_start_0
    iget-object v3, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->k:Ljava/util/zip/Inflater;

    invoke-virtual {v3, p1, p2, p3}, Ljava/util/zip/Inflater;->inflate([BII)I

    move-result v3
    :try_end_0
    .catch Ljava/util/zip/DataFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    iget-object v4, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->l:Ljava/util/zip/CRC32;

    invoke-virtual {v4, p1, p2, v3}, Ljava/util/zip/CRC32;->update([BII)V

    add-int/2addr p2, v3

    sub-int/2addr p3, v3

    add-int/2addr v1, v3

    .line 10
    invoke-virtual {p0, v3}, Lorg/apache/commons/compress/compressors/CompressorInputStream;->count(I)V

    .line 11
    iget-object v3, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->k:Ljava/util/zip/Inflater;

    invoke-virtual {v3}, Ljava/util/zip/Inflater;->finished()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 12
    iget-object v3, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->g:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->reset()V

    .line 13
    iget v3, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->j:I

    iget-object v4, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->k:Ljava/util/zip/Inflater;

    invoke-virtual {v4}, Ljava/util/zip/Inflater;->getRemaining()I

    move-result v4

    sub-int/2addr v3, v4

    .line 14
    iget-object v4, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->g:Ljava/io/InputStream;

    int-to-long v5, v3

    invoke-static {v4, v5, v6}, Lorg/apache/commons/compress/utils/IOUtils;->skip(Ljava/io/InputStream;J)J

    move-result-wide v3

    cmp-long v3, v3, v5

    if-nez v3, :cond_9

    .line 15
    iput v0, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->j:I

    .line 16
    new-instance v3, Ljava/io/DataInputStream;

    iget-object v4, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->g:Ljava/io/InputStream;

    invoke-direct {v3, v4}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    const/4 v4, 0x4

    .line 17
    invoke-static {v3, v4}, Lorg/apache/commons/compress/utils/ByteUtils;->fromLittleEndian(Ljava/io/DataInput;I)J

    move-result-wide v5

    .line 18
    iget-object v7, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->l:Ljava/util/zip/CRC32;

    invoke-virtual {v7}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-nez v5, :cond_8

    .line 19
    invoke-static {v3, v4}, Lorg/apache/commons/compress/utils/ByteUtils;->fromLittleEndian(Ljava/io/DataInput;I)J

    move-result-wide v3

    .line 20
    iget-object v5, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->k:Ljava/util/zip/Inflater;

    invoke-virtual {v5}, Ljava/util/zip/Inflater;->getBytesWritten()J

    move-result-wide v5

    const-wide v7, 0xffffffffL

    and-long/2addr v5, v7

    cmp-long v3, v3, v5

    if-nez v3, :cond_7

    .line 21
    iget-boolean v3, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->h:Z

    if-eqz v3, :cond_5

    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->f(Z)Z

    move-result v3

    if-nez v3, :cond_2

    .line 22
    :cond_5
    iget-object p1, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->k:Ljava/util/zip/Inflater;

    invoke-virtual {p1}, Ljava/util/zip/Inflater;->end()V

    const/4 p1, 0x0

    .line 23
    iput-object p1, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->k:Ljava/util/zip/Inflater;

    const/4 p1, 0x1

    .line 24
    iput-boolean p1, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->m:Z

    if-nez v1, :cond_6

    goto :goto_1

    :cond_6
    move v2, v1

    :goto_1
    return v2

    .line 25
    :cond_7
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Gzip-compressed data is corrupt(uncompressed size mismatch)"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 26
    :cond_8
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Gzip-compressed data is corrupt (CRC32 error)"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 27
    :cond_9
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    throw p0

    .line 28
    :catch_0
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Gzip-compressed data is corrupt"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a
    return v1
.end method
