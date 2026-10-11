.class public Lorg/apache/commons/compress/archivers/dump/a;
.super Ljava/io/FilterInputStream;
.source "SourceFile"


# static fields
.field public static final k:I = 0x400


# instance fields
.field public e:[B

.field public f:I

.field public g:I

.field public h:I

.field public i:Z

.field public j:J


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    const/16 p1, 0x400

    new-array v0, p1, [B

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/dump/a;->e:[B

    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/commons/compress/archivers/dump/a;->f:I

    iput p1, p0, Lorg/apache/commons/compress/archivers/dump/a;->g:I

    iput p1, p0, Lorg/apache/commons/compress/archivers/dump/a;->h:I

    return-void
.end method


# virtual methods
.method public final H(I)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    invoke-static {p0, p1}, Lorg/apache/commons/compress/utils/IOUtils;->readRange(Ljava/io/InputStream;I)[B

    move-result-object p0

    array-length v0, p0

    if-lt v0, p1, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Lorg/apache/commons/compress/archivers/dump/ShortFileException;

    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/dump/ShortFileException;-><init>()V

    throw p0
.end method

.method public I()[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x400

    new-array v1, v0, [B

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Lorg/apache/commons/compress/archivers/dump/a;->read([BII)I

    move-result p0

    const/4 v0, -0x1

    if-eq v0, p0, :cond_0

    return-object v1

    :cond_0
    new-instance p0, Lorg/apache/commons/compress/archivers/dump/ShortFileException;

    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/dump/ShortFileException;-><init>()V

    throw p0
.end method

.method public M(IZ)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iput-boolean p2, p0, Lorg/apache/commons/compress/archivers/dump/a;->i:Z

    const/4 p2, 0x1

    if-lt p1, p2, :cond_0

    const/16 p2, 0x400

    mul-int/2addr p1, p2

    iput p1, p0, Lorg/apache/commons/compress/archivers/dump/a;->g:I

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/dump/a;->e:[B

    new-array p1, p1, [B

    iput-object p1, p0, Lorg/apache/commons/compress/archivers/dump/a;->e:[B

    const/4 v1, 0x0

    invoke-static {v0, v1, p1, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p0, Lorg/apache/commons/compress/archivers/dump/a;->e:[B

    iget v0, p0, Lorg/apache/commons/compress/archivers/dump/a;->g:I

    sub-int/2addr v0, p2

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/commons/compress/archivers/dump/a;->readFully([BII)V

    iput v1, p0, Lorg/apache/commons/compress/archivers/dump/a;->f:I

    iput p2, p0, Lorg/apache/commons/compress/archivers/dump/a;->h:I

    return-void

    :cond_0
    new-instance p0, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Block with "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " records found, must be at least 1"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public available()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lorg/apache/commons/compress/archivers/dump/a;->h:I

    iget v1, p0, Lorg/apache/commons/compress/archivers/dump/a;->g:I

    if-ge v0, v1, :cond_0

    sub-int/2addr v1, v0

    return v1

    :cond_0
    iget-object p0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result p0

    return p0
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    sget-object v1, Ljava/lang/System;->in:Ljava/io/InputStream;

    if-eq v0, v1, :cond_0

    iget-object p0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    :cond_0
    return-void
.end method

.method public f()J
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/dump/a;->j:J

    return-wide v0
.end method

.method public j()[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lorg/apache/commons/compress/archivers/dump/a;->h:I

    iget v1, p0, Lorg/apache/commons/compress/archivers/dump/a;->g:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/archivers/dump/a;->w(Z)V
    :try_end_0
    .catch Lorg/apache/commons/compress/archivers/dump/ShortFileException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p0, 0x0

    return-object p0

    :cond_0
    :goto_0
    const/16 v0, 0x400

    new-array v1, v0, [B

    iget-object v2, p0, Lorg/apache/commons/compress/archivers/dump/a;->e:[B

    iget p0, p0, Lorg/apache/commons/compress/archivers/dump/a;->h:I

    const/4 v3, 0x0

    invoke-static {v2, p0, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method

.method public read()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "All reads must be multiple of record size (1024 bytes."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public read([BII)I
    .locals 5
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
    rem-int/lit16 v1, p3, 0x400

    if-nez v1, :cond_4

    :goto_0
    if-ge v0, p3, :cond_3

    .line 3
    iget v1, p0, Lorg/apache/commons/compress/archivers/dump/a;->h:I

    iget v2, p0, Lorg/apache/commons/compress/archivers/dump/a;->g:I

    if-ne v1, v2, :cond_1

    const/4 v1, 0x1

    .line 4
    :try_start_0
    invoke-virtual {p0, v1}, Lorg/apache/commons/compress/archivers/dump/a;->w(Z)V
    :try_end_0
    .catch Lorg/apache/commons/compress/archivers/dump/ShortFileException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const/4 p0, -0x1

    return p0

    .line 5
    :cond_1
    :goto_1
    iget v1, p0, Lorg/apache/commons/compress/archivers/dump/a;->h:I

    sub-int v2, p3, v0

    add-int v3, v1, v2

    iget v4, p0, Lorg/apache/commons/compress/archivers/dump/a;->g:I

    if-gt v3, v4, :cond_2

    goto :goto_2

    :cond_2
    sub-int v2, v4, v1

    .line 6
    :goto_2
    iget-object v3, p0, Lorg/apache/commons/compress/archivers/dump/a;->e:[B

    invoke-static {v3, v1, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 7
    iget v1, p0, Lorg/apache/commons/compress/archivers/dump/a;->h:I

    add-int/2addr v1, v2

    iput v1, p0, Lorg/apache/commons/compress/archivers/dump/a;->h:I

    add-int/2addr v0, v2

    add-int/2addr p2, v2

    goto :goto_0

    :cond_3
    return v0

    .line 8
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "All reads must be multiple of record size (1024 bytes."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final readFully([BII)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    invoke-static {p0, p1, p2, p3}, Lorg/apache/commons/compress/utils/IOUtils;->readFully(Ljava/io/InputStream;[BII)I

    move-result p0

    if-lt p0, p3, :cond_0

    return-void

    :cond_0
    new-instance p0, Lorg/apache/commons/compress/archivers/dump/ShortFileException;

    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/dump/ShortFileException;-><init>()V

    throw p0
.end method

.method public skip(J)J
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x400

    rem-long v0, p1, v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_4

    :goto_0
    cmp-long v0, v2, p1

    if-gez v0, :cond_3

    iget v0, p0, Lorg/apache/commons/compress/archivers/dump/a;->h:I

    iget v1, p0, Lorg/apache/commons/compress/archivers/dump/a;->g:I

    if-ne v0, v1, :cond_1

    sub-long v4, p1, v2

    int-to-long v0, v1

    cmp-long v0, v4, v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_1
    :try_start_0
    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/archivers/dump/a;->w(Z)V
    :try_end_0
    .catch Lorg/apache/commons/compress/archivers/dump/ShortFileException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    const-wide/16 p0, -0x1

    return-wide p0

    :cond_1
    :goto_2
    iget v0, p0, Lorg/apache/commons/compress/archivers/dump/a;->h:I

    int-to-long v4, v0

    sub-long v6, p1, v2

    add-long/2addr v4, v6

    iget v1, p0, Lorg/apache/commons/compress/archivers/dump/a;->g:I

    int-to-long v8, v1

    cmp-long v4, v4, v8

    if-gtz v4, :cond_2

    goto :goto_3

    :cond_2
    int-to-long v4, v1

    int-to-long v6, v0

    sub-long v6, v4, v6

    :goto_3
    invoke-static {v0, v6, v7}, Lorg/apache/commons/compress/utils/ExactMath;->add(IJ)I

    move-result v0

    iput v0, p0, Lorg/apache/commons/compress/archivers/dump/a;->h:I

    add-long/2addr v2, v6

    goto :goto_0

    :cond_3
    return-wide v2

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "All reads must be multiple of record size (1024 bytes."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final w(Z)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/dump/a;->i:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_8

    iget v0, p0, Lorg/apache/commons/compress/archivers/dump/a;->f:I

    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/dump/a;->e:[B

    const/4 v3, 0x4

    invoke-virtual {p0, v0, v2, v3}, Lorg/apache/commons/compress/archivers/dump/a;->readFully([BII)V

    iget-wide v4, p0, Lorg/apache/commons/compress/archivers/dump/a;->j:J

    const-wide/16 v6, 0x4

    add-long/2addr v4, v6

    iput-wide v4, p0, Lorg/apache/commons/compress/archivers/dump/a;->j:J

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/dump/a;->e:[B

    invoke-static {v0, v2}, Lcom/sunia/HTREnginev2/yjf;->c([BI)I

    move-result v0

    and-int/lit8 v4, v0, 0x1

    if-ne v4, v1, :cond_1

    move v4, v1

    goto :goto_0

    :cond_1
    move v4, v2

    :goto_0
    if-nez v4, :cond_2

    iget-object p1, p0, Lorg/apache/commons/compress/archivers/dump/a;->e:[B

    iget v0, p0, Lorg/apache/commons/compress/archivers/dump/a;->g:I

    invoke-virtual {p0, p1, v2, v0}, Lorg/apache/commons/compress/archivers/dump/a;->readFully([BII)V

    iget-wide v3, p0, Lorg/apache/commons/compress/archivers/dump/a;->j:J

    iget p1, p0, Lorg/apache/commons/compress/archivers/dump/a;->g:I

    int-to-long v5, p1

    add-long/2addr v3, v5

    iput-wide v3, p0, Lorg/apache/commons/compress/archivers/dump/a;->j:J

    goto/16 :goto_3

    :cond_2
    shr-int/lit8 v4, v0, 0x1

    and-int/lit8 v4, v4, 0x7

    shr-int/2addr v0, v3

    const v3, 0xfffffff

    and-int/2addr v0, v3

    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/archivers/dump/a;->H(I)[B

    move-result-object v3

    iget-wide v5, p0, Lorg/apache/commons/compress/archivers/dump/a;->j:J

    int-to-long v7, v0

    add-long/2addr v5, v7

    iput-wide v5, p0, Lorg/apache/commons/compress/archivers/dump/a;->j:J

    if-nez p1, :cond_3

    iget-object p1, p0, Lorg/apache/commons/compress/archivers/dump/a;->e:[B

    invoke-static {p1, v2}, Ljava/util/Arrays;->fill([BB)V

    goto :goto_3

    :cond_3
    sget-object p1, Lorg/apache/commons/compress/archivers/dump/a$a;->a:[I

    const/4 v0, 0x3

    and-int/2addr v4, v0

    invoke-static {v4}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveConstants$COMPRESSION_TYPE;->find(I)Lorg/apache/commons/compress/archivers/dump/DumpArchiveConstants$COMPRESSION_TYPE;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget p1, p1, v4

    if-eq p1, v1, :cond_6

    const/4 p0, 0x2

    if-eq p1, p0, :cond_5

    if-eq p1, v0, :cond_4

    new-instance p0, Lorg/apache/commons/compress/archivers/dump/UnsupportedCompressionAlgorithmException;

    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/dump/UnsupportedCompressionAlgorithmException;-><init>()V

    throw p0

    :cond_4
    new-instance p0, Lorg/apache/commons/compress/archivers/dump/UnsupportedCompressionAlgorithmException;

    const-string p1, "LZO"

    invoke-direct {p0, p1}, Lorg/apache/commons/compress/archivers/dump/UnsupportedCompressionAlgorithmException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    new-instance p0, Lorg/apache/commons/compress/archivers/dump/UnsupportedCompressionAlgorithmException;

    const-string p1, "BZLIB2"

    invoke-direct {p0, p1}, Lorg/apache/commons/compress/archivers/dump/UnsupportedCompressionAlgorithmException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    new-instance p1, Ljava/util/zip/Inflater;

    invoke-direct {p1}, Ljava/util/zip/Inflater;-><init>()V

    :try_start_0
    array-length v0, v3

    invoke-virtual {p1, v3, v2, v0}, Ljava/util/zip/Inflater;->setInput([BII)V

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/dump/a;->e:[B

    invoke-virtual {p1, v0}, Ljava/util/zip/Inflater;->inflate([B)I

    move-result v0

    iget v3, p0, Lorg/apache/commons/compress/archivers/dump/a;->g:I
    :try_end_0
    .catch Ljava/util/zip/DataFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v3, :cond_7

    invoke-virtual {p1}, Ljava/util/zip/Inflater;->end()V

    goto :goto_3

    :cond_7
    :try_start_1
    new-instance p0, Lorg/apache/commons/compress/archivers/dump/ShortFileException;

    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/dump/ShortFileException;-><init>()V

    throw p0
    :try_end_1
    .catch Ljava/util/zip/DataFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    :try_start_2
    new-instance v0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveException;

    const-string v1, "Bad data"

    invoke-direct {v0, v1, p0}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    invoke-virtual {p1}, Ljava/util/zip/Inflater;->end()V

    throw p0

    :cond_8
    :goto_2
    iget-object p1, p0, Lorg/apache/commons/compress/archivers/dump/a;->e:[B

    iget v0, p0, Lorg/apache/commons/compress/archivers/dump/a;->g:I

    invoke-virtual {p0, p1, v2, v0}, Lorg/apache/commons/compress/archivers/dump/a;->readFully([BII)V

    iget-wide v3, p0, Lorg/apache/commons/compress/archivers/dump/a;->j:J

    iget p1, p0, Lorg/apache/commons/compress/archivers/dump/a;->g:I

    int-to-long v5, p1

    add-long/2addr v3, v5

    iput-wide v3, p0, Lorg/apache/commons/compress/archivers/dump/a;->j:J

    :goto_3
    iget p1, p0, Lorg/apache/commons/compress/archivers/dump/a;->f:I

    add-int/2addr p1, v1

    iput p1, p0, Lorg/apache/commons/compress/archivers/dump/a;->f:I

    iput v2, p0, Lorg/apache/commons/compress/archivers/dump/a;->h:I

    return-void

    :cond_9
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Input buffer is closed"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
