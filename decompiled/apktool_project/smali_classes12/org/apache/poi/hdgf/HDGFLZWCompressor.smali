.class final Lorg/apache/poi/hdgf/HDGFLZWCompressor;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final buffer:[B

.field private bufferLen:I

.field private final dict:[B

.field private maskBitsSet:I

.field private nextMask:I

.field private posInp:I

.field private posOut:I

.field private final rawCode:[B

.field private rawCodeLen:I

.field private final res:Ljava/io/OutputStream;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x1000

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/poi/hdgf/HDGFLZWCompressor;->dict:[B

    const/16 v0, 0x10

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/poi/hdgf/HDGFLZWCompressor;->buffer:[B

    const/16 v0, 0x12

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/poi/hdgf/HDGFLZWCompressor;->rawCode:[B

    iput-object p1, p0, Lorg/apache/poi/hdgf/HDGFLZWCompressor;->res:Ljava/io/OutputStream;

    return-void
.end method

.method private findRawCodeInBuffer()I
    .locals 7

    iget v0, p0, Lorg/apache/poi/hdgf/HDGFLZWCompressor;->rawCodeLen:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    :goto_0
    const/16 v2, 0x1000

    if-ge v0, v2, :cond_3

    iget v2, p0, Lorg/apache/poi/hdgf/HDGFLZWCompressor;->posInp:I

    sub-int/2addr v2, v0

    and-int/lit16 v2, v2, 0xfff

    const/4 v3, 0x0

    move v4, v3

    :goto_1
    iget v5, p0, Lorg/apache/poi/hdgf/HDGFLZWCompressor;->rawCodeLen:I

    if-ge v4, v5, :cond_1

    iget-object v5, p0, Lorg/apache/poi/hdgf/HDGFLZWCompressor;->dict:[B

    add-int v6, v2, v4

    and-int/lit16 v6, v6, 0xfff

    aget-byte v5, v5, v6

    iget-object v6, p0, Lorg/apache/poi/hdgf/HDGFLZWCompressor;->rawCode:[B

    aget-byte v6, v6, v4

    if-eq v5, v6, :cond_0

    goto :goto_2

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_2
    if-eqz v3, :cond_2

    return v2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    const/4 p0, -0x1

    return p0
.end method

.method private output8Codes()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/hdgf/HDGFLZWCompressor;->res:Ljava/io/OutputStream;

    iget v1, p0, Lorg/apache/poi/hdgf/HDGFLZWCompressor;->nextMask:I

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    iget-object v0, p0, Lorg/apache/poi/hdgf/HDGFLZWCompressor;->res:Ljava/io/OutputStream;

    iget-object v1, p0, Lorg/apache/poi/hdgf/HDGFLZWCompressor;->buffer:[B

    iget v2, p0, Lorg/apache/poi/hdgf/HDGFLZWCompressor;->bufferLen:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    iget v0, p0, Lorg/apache/poi/hdgf/HDGFLZWCompressor;->posOut:I

    iget v1, p0, Lorg/apache/poi/hdgf/HDGFLZWCompressor;->bufferLen:I

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/poi/hdgf/HDGFLZWCompressor;->posOut:I

    iput v3, p0, Lorg/apache/poi/hdgf/HDGFLZWCompressor;->nextMask:I

    iput v3, p0, Lorg/apache/poi/hdgf/HDGFLZWCompressor;->maskBitsSet:I

    iput v3, p0, Lorg/apache/poi/hdgf/HDGFLZWCompressor;->bufferLen:I

    return-void
.end method

.method private outputCompressed()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lorg/apache/poi/hdgf/HDGFLZWCompressor;->rawCodeLen:I

    const/4 v1, 0x0

    const/4 v2, 0x3

    if-ge v0, v2, :cond_1

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lorg/apache/poi/hdgf/HDGFLZWCompressor;->rawCode:[B

    aget-byte v2, v2, v1

    invoke-direct {p0, v2}, Lorg/apache/poi/hdgf/HDGFLZWCompressor;->outputUncompressed(B)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    invoke-direct {p0}, Lorg/apache/poi/hdgf/HDGFLZWCompressor;->findRawCodeInBuffer()I

    move-result v0

    add-int/lit8 v0, v0, -0x12

    and-int/lit16 v0, v0, 0xfff

    iget v3, p0, Lorg/apache/poi/hdgf/HDGFLZWCompressor;->maskBitsSet:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/apache/poi/hdgf/HDGFLZWCompressor;->maskBitsSet:I

    and-int/lit16 v4, v0, 0xff

    iget v5, p0, Lorg/apache/poi/hdgf/HDGFLZWCompressor;->rawCodeLen:I

    sub-int/2addr v5, v2

    sub-int/2addr v0, v4

    ushr-int/lit8 v0, v0, 0x4

    add-int/2addr v5, v0

    iget-object v0, p0, Lorg/apache/poi/hdgf/HDGFLZWCompressor;->buffer:[B

    iget v2, p0, Lorg/apache/poi/hdgf/HDGFLZWCompressor;->bufferLen:I

    add-int/lit8 v6, v2, 0x1

    int-to-byte v4, v4

    aput-byte v4, v0, v2

    add-int/lit8 v2, v6, 0x1

    iput v2, p0, Lorg/apache/poi/hdgf/HDGFLZWCompressor;->bufferLen:I

    int-to-byte v2, v5

    aput-byte v2, v0, v6

    const/16 v0, 0x8

    if-ne v3, v0, :cond_2

    invoke-direct {p0}, Lorg/apache/poi/hdgf/HDGFLZWCompressor;->output8Codes()V

    :cond_2
    iput v1, p0, Lorg/apache/poi/hdgf/HDGFLZWCompressor;->rawCodeLen:I

    return-void
.end method

.method private outputUncompressed(B)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lorg/apache/poi/hdgf/HDGFLZWCompressor;->nextMask:I

    iget v1, p0, Lorg/apache/poi/hdgf/HDGFLZWCompressor;->maskBitsSet:I

    const/4 v2, 0x1

    shl-int v3, v2, v1

    add-int/2addr v0, v3

    iput v0, p0, Lorg/apache/poi/hdgf/HDGFLZWCompressor;->nextMask:I

    add-int/2addr v1, v2

    iput v1, p0, Lorg/apache/poi/hdgf/HDGFLZWCompressor;->maskBitsSet:I

    iget-object v0, p0, Lorg/apache/poi/hdgf/HDGFLZWCompressor;->buffer:[B

    iget v2, p0, Lorg/apache/poi/hdgf/HDGFLZWCompressor;->bufferLen:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/apache/poi/hdgf/HDGFLZWCompressor;->bufferLen:I

    aput-byte p1, v0, v2

    const/16 p1, 0x8

    if-ne v1, p1, :cond_0

    invoke-direct {p0}, Lorg/apache/poi/hdgf/HDGFLZWCompressor;->output8Codes()V

    :cond_0
    const/4 p1, 0x0

    iput p1, p0, Lorg/apache/poi/hdgf/HDGFLZWCompressor;->rawCodeLen:I

    return-void
.end method


# virtual methods
.method public compress(Ljava/io/InputStream;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, -0x1

    move v1, v0

    :cond_0
    :goto_0
    if-le v1, v0, :cond_1

    iget-object v2, p0, Lorg/apache/poi/hdgf/HDGFLZWCompressor;->dict:[B

    iget v3, p0, Lorg/apache/poi/hdgf/HDGFLZWCompressor;->posInp:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/apache/poi/hdgf/HDGFLZWCompressor;->posInp:I

    and-int/lit16 v3, v3, 0xfff

    int-to-byte v1, v1

    aput-byte v1, v2, v3

    :cond_1
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v1

    if-ne v1, v0, :cond_3

    iget p1, p0, Lorg/apache/poi/hdgf/HDGFLZWCompressor;->rawCodeLen:I

    if-lez p1, :cond_2

    invoke-direct {p0}, Lorg/apache/poi/hdgf/HDGFLZWCompressor;->outputCompressed()V

    iget p1, p0, Lorg/apache/poi/hdgf/HDGFLZWCompressor;->maskBitsSet:I

    if-lez p1, :cond_2

    invoke-direct {p0}, Lorg/apache/poi/hdgf/HDGFLZWCompressor;->output8Codes()V

    :cond_2
    return-void

    :cond_3
    int-to-byte v2, v1

    iget-object v3, p0, Lorg/apache/poi/hdgf/HDGFLZWCompressor;->rawCode:[B

    iget v4, p0, Lorg/apache/poi/hdgf/HDGFLZWCompressor;->rawCodeLen:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lorg/apache/poi/hdgf/HDGFLZWCompressor;->rawCodeLen:I

    aput-byte v2, v3, v4

    invoke-direct {p0}, Lorg/apache/poi/hdgf/HDGFLZWCompressor;->findRawCodeInBuffer()I

    move-result v3

    if-le v3, v0, :cond_4

    iget v2, p0, Lorg/apache/poi/hdgf/HDGFLZWCompressor;->rawCodeLen:I

    const/16 v3, 0x12

    if-ne v2, v3, :cond_0

    invoke-direct {p0}, Lorg/apache/poi/hdgf/HDGFLZWCompressor;->outputCompressed()V

    goto :goto_0

    :cond_4
    iget v3, p0, Lorg/apache/poi/hdgf/HDGFLZWCompressor;->rawCodeLen:I

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    iput v3, p0, Lorg/apache/poi/hdgf/HDGFLZWCompressor;->rawCodeLen:I

    if-lez v3, :cond_6

    invoke-direct {p0}, Lorg/apache/poi/hdgf/HDGFLZWCompressor;->outputCompressed()V

    iget-object v3, p0, Lorg/apache/poi/hdgf/HDGFLZWCompressor;->rawCode:[B

    const/4 v5, 0x0

    aput-byte v2, v3, v5

    iput v4, p0, Lorg/apache/poi/hdgf/HDGFLZWCompressor;->rawCodeLen:I

    invoke-direct {p0}, Lorg/apache/poi/hdgf/HDGFLZWCompressor;->findRawCodeInBuffer()I

    move-result v3

    if-le v3, v0, :cond_5

    goto :goto_0

    :cond_5
    invoke-direct {p0, v2}, Lorg/apache/poi/hdgf/HDGFLZWCompressor;->outputUncompressed(B)V

    goto :goto_0

    :cond_6
    invoke-direct {p0, v2}, Lorg/apache/poi/hdgf/HDGFLZWCompressor;->outputUncompressed(B)V

    goto :goto_0
.end method
