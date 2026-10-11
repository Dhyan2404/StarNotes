.class Lcom/sun/imageio/plugins/tiff/TIFFLZWDecompressor;
.super Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;
.source "SourceFile"


# static fields
.field private static final CLEAR_CODE:I = 0x100

.field private static final EOI_CODE:I = 0x101

.field private static final FIRST_CODE:I = 0x102

.field private static final andTable:[I


# instance fields
.field private bitsToGet:I

.field private dstData:[B

.field private dstIndex:I

.field private flipBits:Z

.field private nextBits:I

.field private nextData:I

.field private predictor:I

.field private srcData:[B

.field private srcIndex:I

.field private stringTable:[[B

.field private tableIndex:I


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const/16 v0, 0x7ff

    const/16 v1, 0xfff

    const/16 v2, 0x1ff

    const/16 v3, 0x3ff

    filled-new-array {v2, v3, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/sun/imageio/plugins/tiff/TIFFLZWDecompressor;->andTable:[I

    return-void
.end method

.method public constructor <init>(II)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/imageio/IIOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;-><init>()V

    const/16 v0, 0x9

    iput v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFLZWDecompressor;->bitsToGet:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFLZWDecompressor;->nextData:I

    iput v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFLZWDecompressor;->nextBits:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq p1, v2, :cond_1

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljavax/imageio/IIOException;

    const-string p1, "Illegal value for Predictor in TIFF file"

    invoke-direct {p0, p1}, Ljavax/imageio/IIOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    iput p1, p0, Lcom/sun/imageio/plugins/tiff/TIFFLZWDecompressor;->predictor:I

    if-ne p2, v1, :cond_2

    move v0, v2

    :cond_2
    iput-boolean v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFLZWDecompressor;->flipBits:Z

    return-void
.end method


# virtual methods
.method public addStringToTable([B)V
    .locals 3

    .line 9
    iget-object v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFLZWDecompressor;->stringTable:[[B

    iget v1, p0, Lcom/sun/imageio/plugins/tiff/TIFFLZWDecompressor;->tableIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/sun/imageio/plugins/tiff/TIFFLZWDecompressor;->tableIndex:I

    aput-object p1, v0, v1

    const/16 p1, 0x1ff

    if-ne v2, p1, :cond_0

    const/16 p1, 0xa

    .line 10
    iput p1, p0, Lcom/sun/imageio/plugins/tiff/TIFFLZWDecompressor;->bitsToGet:I

    goto :goto_0

    :cond_0
    const/16 p1, 0x3ff

    if-ne v2, p1, :cond_1

    const/16 p1, 0xb

    .line 11
    iput p1, p0, Lcom/sun/imageio/plugins/tiff/TIFFLZWDecompressor;->bitsToGet:I

    goto :goto_0

    :cond_1
    const/16 p1, 0x7ff

    if-ne v2, p1, :cond_2

    const/16 p1, 0xc

    .line 12
    iput p1, p0, Lcom/sun/imageio/plugins/tiff/TIFFLZWDecompressor;->bitsToGet:I

    :cond_2
    :goto_0
    return-void
.end method

.method public addStringToTable([BB)V
    .locals 3

    .line 1
    array-length v0, p1

    add-int/lit8 v1, v0, 0x1

    .line 2
    new-array v1, v1, [B

    const/4 v2, 0x0

    .line 3
    invoke-static {p1, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4
    aput-byte p2, v1, v0

    .line 5
    iget-object p1, p0, Lcom/sun/imageio/plugins/tiff/TIFFLZWDecompressor;->stringTable:[[B

    iget p2, p0, Lcom/sun/imageio/plugins/tiff/TIFFLZWDecompressor;->tableIndex:I

    add-int/lit8 v0, p2, 0x1

    iput v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFLZWDecompressor;->tableIndex:I

    aput-object v1, p1, p2

    const/16 p1, 0x1ff

    if-ne v0, p1, :cond_0

    const/16 p1, 0xa

    .line 6
    iput p1, p0, Lcom/sun/imageio/plugins/tiff/TIFFLZWDecompressor;->bitsToGet:I

    goto :goto_0

    :cond_0
    const/16 p1, 0x3ff

    if-ne v0, p1, :cond_1

    const/16 p1, 0xb

    .line 7
    iput p1, p0, Lcom/sun/imageio/plugins/tiff/TIFFLZWDecompressor;->bitsToGet:I

    goto :goto_0

    :cond_1
    const/16 p1, 0x7ff

    if-ne v0, p1, :cond_2

    const/16 p1, 0xc

    .line 8
    iput p1, p0, Lcom/sun/imageio/plugins/tiff/TIFFLZWDecompressor;->bitsToGet:I

    :cond_2
    :goto_0
    return-void
.end method

.method public composeString([BB)[B
    .locals 2

    array-length p0, p1

    add-int/lit8 v0, p0, 0x1

    new-array v0, v0, [B

    const/4 v1, 0x0

    invoke-static {p1, v1, v0, v1, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aput-byte p2, v0, p0

    return-object v0
.end method

.method public decode([BI[BI)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    aget-byte v1, p1, v0

    const/4 v2, 0x1

    if-nez v1, :cond_1

    aget-byte v1, p1, v2

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljavax/imageio/IIOException;

    const-string p1, "TIFF 5.0-style LZW compression is not supported!"

    invoke-direct {p0, p1}, Ljavax/imageio/IIOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/sun/imageio/plugins/tiff/TIFFLZWDecompressor;->srcData:[B

    iput-object p3, p0, Lcom/sun/imageio/plugins/tiff/TIFFLZWDecompressor;->dstData:[B

    iput p2, p0, Lcom/sun/imageio/plugins/tiff/TIFFLZWDecompressor;->srcIndex:I

    iput p4, p0, Lcom/sun/imageio/plugins/tiff/TIFFLZWDecompressor;->dstIndex:I

    iput v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFLZWDecompressor;->nextData:I

    iput v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFLZWDecompressor;->nextBits:I

    invoke-virtual {p0}, Lcom/sun/imageio/plugins/tiff/TIFFLZWDecompressor;->initializeStringTable()V

    move p1, v0

    :goto_1
    invoke-virtual {p0}, Lcom/sun/imageio/plugins/tiff/TIFFLZWDecompressor;->getNextCode()I

    move-result p2

    const/16 p3, 0x101

    if-eq p2, p3, :cond_5

    const/16 v1, 0x100

    if-ne p2, v1, :cond_3

    invoke-virtual {p0}, Lcom/sun/imageio/plugins/tiff/TIFFLZWDecompressor;->initializeStringTable()V

    invoke-virtual {p0}, Lcom/sun/imageio/plugins/tiff/TIFFLZWDecompressor;->getNextCode()I

    move-result p1

    if-ne p1, p3, :cond_2

    goto :goto_3

    :cond_2
    iget-object p2, p0, Lcom/sun/imageio/plugins/tiff/TIFFLZWDecompressor;->stringTable:[[B

    aget-object p2, p2, p1

    invoke-virtual {p0, p2}, Lcom/sun/imageio/plugins/tiff/TIFFLZWDecompressor;->writeString([B)V

    goto :goto_1

    :cond_3
    iget p3, p0, Lcom/sun/imageio/plugins/tiff/TIFFLZWDecompressor;->tableIndex:I

    if-ge p2, p3, :cond_4

    iget-object p3, p0, Lcom/sun/imageio/plugins/tiff/TIFFLZWDecompressor;->stringTable:[[B

    aget-object p3, p3, p2

    invoke-virtual {p0, p3}, Lcom/sun/imageio/plugins/tiff/TIFFLZWDecompressor;->writeString([B)V

    iget-object v1, p0, Lcom/sun/imageio/plugins/tiff/TIFFLZWDecompressor;->stringTable:[[B

    aget-object p1, v1, p1

    aget-byte p3, p3, v0

    invoke-virtual {p0, p1, p3}, Lcom/sun/imageio/plugins/tiff/TIFFLZWDecompressor;->addStringToTable([BB)V

    goto :goto_2

    :cond_4
    iget-object p3, p0, Lcom/sun/imageio/plugins/tiff/TIFFLZWDecompressor;->stringTable:[[B

    aget-object p1, p3, p1

    aget-byte p3, p1, v0

    invoke-virtual {p0, p1, p3}, Lcom/sun/imageio/plugins/tiff/TIFFLZWDecompressor;->composeString([BB)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sun/imageio/plugins/tiff/TIFFLZWDecompressor;->writeString([B)V

    invoke-virtual {p0, p1}, Lcom/sun/imageio/plugins/tiff/TIFFLZWDecompressor;->addStringToTable([B)V

    :goto_2
    move p1, p2

    goto :goto_1

    :cond_5
    :goto_3
    iget p1, p0, Lcom/sun/imageio/plugins/tiff/TIFFLZWDecompressor;->predictor:I

    const/4 p2, 0x2

    if-ne p1, p2, :cond_9

    iget-boolean p1, p0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->planar:Z

    if-nez p1, :cond_6

    iget p1, p0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->samplesPerPixel:I

    if-ne p1, v2, :cond_7

    :cond_6
    move p1, v2

    :cond_7
    iget p2, p0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->srcWidth:I

    mul-int/2addr p2, p1

    add-int p3, p4, p1

    :goto_4
    iget v1, p0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->srcHeight:I

    if-ge v0, v1, :cond_9

    move v1, p1

    move v3, p3

    :goto_5
    if-ge v1, p2, :cond_8

    iget-object v4, p0, Lcom/sun/imageio/plugins/tiff/TIFFLZWDecompressor;->dstData:[B

    aget-byte v5, v4, v3

    sub-int v6, v3, p1

    aget-byte v6, v4, v6

    add-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v4, v3

    add-int/2addr v3, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_8
    add-int/2addr p3, p2

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_9
    iget p0, p0, Lcom/sun/imageio/plugins/tiff/TIFFLZWDecompressor;->dstIndex:I

    sub-int/2addr p0, p4

    return p0
.end method

.method public decodeRaw([BIII)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFLZWDecompressor;->predictor:I

    const/4 v1, 0x2

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->bitsPerSample:[I

    array-length v0, v0

    move v1, v3

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v4, p0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->bitsPerSample:[I

    aget v4, v4, v1

    if-ne v4, v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance p1, Ljavax/imageio/IIOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->bitsPerSample:[I

    aget p0, p0, v1

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "-bit samples are not supported for Horizontal differencing Predictor"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljavax/imageio/IIOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget-object v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->stream:Ljavax/imageio/stream/ImageInputStream;

    iget-wide v4, p0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->offset:J

    invoke-interface {v0, v4, v5}, Ljavax/imageio/stream/ImageInputStream;->seek(J)V

    iget v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->byteCount:I

    new-array v0, v0, [B

    iget-object v1, p0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->stream:Ljavax/imageio/stream/ImageInputStream;

    invoke-interface {v1, v0}, Ljavax/imageio/stream/ImageInputStream;->readFully([B)V

    iget-boolean v1, p0, Lcom/sun/imageio/plugins/tiff/TIFFLZWDecompressor;->flipBits:Z

    if-eqz v1, :cond_2

    move v1, v3

    :goto_1
    iget v4, p0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->byteCount:I

    if-ge v1, v4, :cond_2

    sget-object v4, Lcom/sun/imageio/plugins/tiff/TIFFFaxDecompressor;->flipTable:[B

    aget-byte v5, v0, v1

    and-int/lit16 v5, v5, 0xff

    aget-byte v4, v4, v5

    aput-byte v4, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    iget v1, p0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->srcWidth:I

    mul-int/2addr v1, p3

    add-int/lit8 v1, v1, 0x7

    div-int/2addr v1, v2

    if-ne v1, p4, :cond_3

    move-object p3, p1

    move v2, p2

    goto :goto_2

    :cond_3
    iget p3, p0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->srcHeight:I

    mul-int/2addr p3, v1

    new-array p3, p3, [B

    move v2, v3

    :goto_2
    invoke-virtual {p0, v0, v3, p3, v2}, Lcom/sun/imageio/plugins/tiff/TIFFLZWDecompressor;->decode([BI[BI)I

    if-eq v1, p4, :cond_4

    move v0, v3

    :goto_3
    iget v2, p0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->srcHeight:I

    if-ge v3, v2, :cond_4

    invoke-static {p3, v0, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v0, v1

    add-int/2addr p2, p4

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_4
    return-void
.end method

.method public getNextCode()I
    .locals 6

    :try_start_0
    iget v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFLZWDecompressor;->nextData:I

    shl-int/lit8 v0, v0, 0x8

    iget-object v1, p0, Lcom/sun/imageio/plugins/tiff/TIFFLZWDecompressor;->srcData:[B

    iget v2, p0, Lcom/sun/imageio/plugins/tiff/TIFFLZWDecompressor;->srcIndex:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/sun/imageio/plugins/tiff/TIFFLZWDecompressor;->srcIndex:I

    aget-byte v2, v1, v2

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v0, v2

    iput v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFLZWDecompressor;->nextData:I

    iget v2, p0, Lcom/sun/imageio/plugins/tiff/TIFFLZWDecompressor;->nextBits:I

    add-int/lit8 v2, v2, 0x8

    iput v2, p0, Lcom/sun/imageio/plugins/tiff/TIFFLZWDecompressor;->nextBits:I

    iget v4, p0, Lcom/sun/imageio/plugins/tiff/TIFFLZWDecompressor;->bitsToGet:I

    if-ge v2, v4, :cond_0

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 v5, v3, 0x1

    iput v5, p0, Lcom/sun/imageio/plugins/tiff/TIFFLZWDecompressor;->srcIndex:I

    aget-byte v1, v1, v3

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    iput v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFLZWDecompressor;->nextData:I

    add-int/lit8 v2, v2, 0x8

    iput v2, p0, Lcom/sun/imageio/plugins/tiff/TIFFLZWDecompressor;->nextBits:I

    :cond_0
    iget v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFLZWDecompressor;->nextData:I

    iget v1, p0, Lcom/sun/imageio/plugins/tiff/TIFFLZWDecompressor;->nextBits:I

    sub-int v2, v1, v4

    shr-int/2addr v0, v2

    sget-object v2, Lcom/sun/imageio/plugins/tiff/TIFFLZWDecompressor;->andTable:[I

    add-int/lit8 v3, v4, -0x9

    aget v2, v2, v3

    and-int/2addr v0, v2

    sub-int/2addr v1, v4

    iput v1, p0, Lcom/sun/imageio/plugins/tiff/TIFFLZWDecompressor;->nextBits:I
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    const/16 p0, 0x101

    return p0
.end method

.method public initializeStringTable()V
    .locals 4

    const/16 v0, 0x1000

    new-array v0, v0, [[B

    iput-object v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFLZWDecompressor;->stringTable:[[B

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/16 v2, 0x100

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/sun/imageio/plugins/tiff/TIFFLZWDecompressor;->stringTable:[[B

    const/4 v3, 0x1

    new-array v3, v3, [B

    aput-object v3, v2, v1

    int-to-byte v2, v1

    aput-byte v2, v3, v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/16 v0, 0x102

    iput v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFLZWDecompressor;->tableIndex:I

    const/16 v0, 0x9

    iput v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFLZWDecompressor;->bitsToGet:I

    return-void
.end method

.method public writeString([B)V
    .locals 5

    iget v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFLZWDecompressor;->dstIndex:I

    iget-object v1, p0, Lcom/sun/imageio/plugins/tiff/TIFFLZWDecompressor;->dstData:[B

    array-length v2, v1

    if-ge v0, v2, :cond_0

    array-length v2, p1

    array-length v1, v1

    sub-int/2addr v1, v0

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/sun/imageio/plugins/tiff/TIFFLZWDecompressor;->dstData:[B

    iget v3, p0, Lcom/sun/imageio/plugins/tiff/TIFFLZWDecompressor;->dstIndex:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/sun/imageio/plugins/tiff/TIFFLZWDecompressor;->dstIndex:I

    aget-byte v4, p1, v1

    aput-byte v4, v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
