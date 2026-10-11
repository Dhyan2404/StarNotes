.class public abstract Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;
.super Lorg/apache/commons/compress/compressors/CompressorInputStream;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/compress/utils/InputStreamStatistics;


# static fields
.field protected static final DEFAULT_CODE_SIZE:I = 0x9

.field protected static final UNUSED_PREFIX:I = -0x1


# instance fields
.field public final f:[B

.field public g:I

.field public h:I

.field public i:B

.field protected final in:Lorg/apache/commons/compress/utils/BitInputStream;

.field public j:I

.field public k:I

.field public l:[I

.field public m:[B

.field public n:[B

.field public o:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Ljava/nio/ByteOrder;)V
    .locals 2

    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/CompressorInputStream;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->f:[B

    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->g:I

    const/16 v1, 0x9

    iput v1, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->h:I

    iput v0, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->j:I

    new-instance v0, Lorg/apache/commons/compress/utils/BitInputStream;

    invoke-direct {v0, p1, p2}, Lorg/apache/commons/compress/utils/BitInputStream;-><init>(Ljava/io/InputStream;Ljava/nio/ByteOrder;)V

    iput-object v0, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->in:Lorg/apache/commons/compress/utils/BitInputStream;

    return-void
.end method


# virtual methods
.method public abstract addEntry(IB)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public addEntry(IBI)I
    .locals 1

    .line 1
    iget v0, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->k:I

    if-ge v0, p3, :cond_0

    .line 2
    iget-object p3, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->l:[I

    aput p1, p3, v0

    .line 3
    iget-object p1, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->m:[B

    aput-byte p2, p1, v0

    add-int/lit8 p1, v0, 0x1

    .line 4
    iput p1, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->k:I

    return v0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public addRepeatOfPreviousCode()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->j:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-byte v1, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->i:B

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->addEntry(IB)I

    move-result p0

    return p0

    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string v0, "The first code can\'t be a reference to its preceding code"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->in:Lorg/apache/commons/compress/utils/BitInputStream;

    invoke-virtual {p0}, Lorg/apache/commons/compress/utils/BitInputStream;->close()V

    return-void
.end method

.method public abstract decompressNextSymbol()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public expandCodeToOutputStack(IZ)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move v0, p1

    :goto_0
    if-ltz v0, :cond_0

    iget-object v1, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->n:[B

    iget v2, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->o:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->o:I

    iget-object v3, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->m:[B

    aget-byte v3, v3, v0

    aput-byte v3, v1, v2

    iget-object v1, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->l:[I

    aget v0, v1, v0

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->j:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    if-nez p2, :cond_1

    iget-object p2, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->n:[B

    iget v1, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->o:I

    aget-byte p2, p2, v1

    invoke-virtual {p0, v0, p2}, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->addEntry(IB)I

    :cond_1
    iput p1, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->j:I

    iget-object p1, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->n:[B

    iget p2, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->o:I

    aget-byte p1, p1, p2

    iput-byte p1, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->i:B

    return p2
.end method

.method public final f([BII)I
    .locals 2

    iget-object v0, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->n:[B

    array-length v0, v0

    iget v1, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->o:I

    sub-int/2addr v0, v1

    if-lez v0, :cond_0

    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result p3

    iget-object v0, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->n:[B

    iget v1, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->o:I

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->o:I

    add-int/2addr p1, p3

    iput p1, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->o:I

    return p3

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getClearCode()I
    .locals 0

    iget p0, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->g:I

    return p0
.end method

.method public getCodeSize()I
    .locals 0

    iget p0, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->h:I

    return p0
.end method

.method public getCompressedCount()J
    .locals 2

    iget-object p0, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->in:Lorg/apache/commons/compress/utils/BitInputStream;

    invoke-virtual {p0}, Lorg/apache/commons/compress/utils/BitInputStream;->getBytesRead()J

    move-result-wide v0

    return-wide v0
.end method

.method public getPrefix(I)I
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->l:[I

    aget p0, p0, p1

    return p0
.end method

.method public getPrefixesLength()I
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->l:[I

    array-length p0, p0

    return p0
.end method

.method public getTableSize()I
    .locals 0

    iget p0, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->k:I

    return p0
.end method

.method public incrementCodeSize()V
    .locals 1

    iget v0, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->h:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->h:I

    return-void
.end method

.method public initializeTables(I)V
    .locals 2

    if-lez p1, :cond_1

    const/4 v0, 0x1

    shl-int p1, v0, p1

    .line 4
    new-array v0, p1, [I

    iput-object v0, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->l:[I

    .line 5
    new-array v0, p1, [B

    iput-object v0, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->m:[B

    .line 6
    new-array v0, p1, [B

    iput-object v0, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->n:[B

    .line 7
    iput p1, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->o:I

    const/4 p1, 0x0

    :goto_0
    const/16 v0, 0x100

    if-ge p1, v0, :cond_0

    .line 8
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->l:[I

    const/4 v1, -0x1

    aput v1, v0, p1

    .line 9
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->m:[B

    int-to-byte v1, p1

    aput-byte v1, v0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void

    .line 10
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "maxCodeSize is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", must be bigger than 0"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public initializeTables(II)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/compress/MemoryLimitException;
        }
    .end annotation

    if-lez p1, :cond_2

    const/4 v0, -0x1

    if-le p2, v0, :cond_1

    const/4 v0, 0x1

    shl-int/2addr v0, p1

    int-to-long v0, v0

    const-wide/16 v2, 0x6

    mul-long/2addr v0, v2

    const/16 v2, 0xa

    shr-long/2addr v0, v2

    int-to-long v2, p2

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    new-instance p0, Lorg/apache/commons/compress/MemoryLimitException;

    invoke-direct {p0, v0, v1, p2}, Lorg/apache/commons/compress/MemoryLimitException;-><init>(JI)V

    throw p0

    .line 2
    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->initializeTables(I)V

    return-void

    .line 3
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "maxCodeSize is "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", must be bigger than 0"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public read()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->f:[B

    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v0

    if-gez v0, :cond_0

    return v0

    .line 2
    :cond_0
    iget-object p0, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->f:[B

    const/4 v0, 0x0

    aget-byte p0, p0, v0

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

    if-nez p3, :cond_0

    const/4 p0, 0x0

    return p0

    .line 3
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->f([BII)I

    move-result v0

    :goto_0
    sub-int v1, p3, v0

    if-lez v1, :cond_3

    .line 4
    invoke-virtual {p0}, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->decompressNextSymbol()I

    move-result v2

    if-gez v2, :cond_2

    if-lez v0, :cond_1

    .line 5
    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/compressors/CompressorInputStream;->count(I)V

    return v0

    :cond_1
    return v2

    :cond_2
    add-int v2, p2, v0

    .line 6
    invoke-virtual {p0, p1, v2, v1}, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->f([BII)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    .line 7
    :cond_3
    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/compressors/CompressorInputStream;->count(I)V

    return v0
.end method

.method public readNextCode()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->h:I

    const/16 v1, 0x1f

    if-gt v0, v1, :cond_0

    iget-object p0, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->in:Lorg/apache/commons/compress/utils/BitInputStream;

    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/utils/BitInputStream;->readBits(I)J

    move-result-wide v0

    long-to-int p0, v0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Code size must not be bigger than 31"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public resetCodeSize()V
    .locals 1

    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->setCodeSize(I)V

    return-void
.end method

.method public resetPreviousCode()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->j:I

    return-void
.end method

.method public setClearCode(I)V
    .locals 1

    const/4 v0, 0x1

    sub-int/2addr p1, v0

    shl-int p1, v0, p1

    iput p1, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->g:I

    return-void
.end method

.method public setCodeSize(I)V
    .locals 0

    iput p1, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->h:I

    return-void
.end method

.method public setPrefix(II)V
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->l:[I

    aput p2, p0, p1

    return-void
.end method

.method public setTableSize(I)V
    .locals 0

    iput p1, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->k:I

    return-void
.end method
