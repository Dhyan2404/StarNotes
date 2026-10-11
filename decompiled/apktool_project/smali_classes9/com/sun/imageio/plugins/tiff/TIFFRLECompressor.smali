.class public Lcom/sun/imageio/plugins/tiff/TIFFRLECompressor;
.super Lcom/sun/imageio/plugins/tiff/TIFFFaxCompressor;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x2

    const/4 v1, 0x1

    const-string v2, "CCITT RLE"

    invoke-direct {p0, v2, v0, v1}, Lcom/sun/imageio/plugins/tiff/TIFFFaxCompressor;-><init>(Ljava/lang/String;IZ)V

    return-void
.end method


# virtual methods
.method public bridge synthetic add1DBits([BIII)I
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Lcom/sun/imageio/plugins/tiff/TIFFFaxCompressor;->add1DBits([BIII)I

    move-result p0

    return p0
.end method

.method public bridge synthetic add2DBits([BI[[II)I
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Lcom/sun/imageio/plugins/tiff/TIFFFaxCompressor;->add2DBits([BI[[II)I

    move-result p0

    return p0
.end method

.method public bridge synthetic addEOFB([BI)I
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/sun/imageio/plugins/tiff/TIFFFaxCompressor;->addEOFB([BI)I

    move-result p0

    return p0
.end method

.method public bridge synthetic addEOL(ZZZ[BI)I
    .locals 0

    invoke-super/range {p0 .. p5}, Lcom/sun/imageio/plugins/tiff/TIFFFaxCompressor;->addEOL(ZZZ[BI)I

    move-result p0

    return p0
.end method

.method public encode([BIII[II)I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    array-length v0, p5

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    aget p5, p5, v0

    if-ne p5, v1, :cond_1

    add-int/lit8 p5, p3, 0x1

    div-int/lit8 p5, p5, 0x2

    mul-int/lit8 p5, p5, 0x9

    add-int/lit8 p5, p5, 0x2

    add-int/lit8 p5, p5, 0x7

    div-int/lit8 p5, p5, 0x8

    new-array p5, p5, [B

    move v7, v0

    move v8, v7

    :goto_0
    if-ge v7, p4, :cond_0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v5, p3

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/sun/imageio/plugins/tiff/TIFFRLECompressor;->encodeRLE([BIII[B)I

    move-result v1

    iget-object v2, p0, Lcom/sun/imageio/plugins/tiff/TIFFCompressor;->stream:Ljavax/imageio/stream/ImageOutputStream;

    invoke-interface {v2, p5, v0, v1}, Ljavax/imageio/stream/ImageOutputStream;->write([BII)V

    add-int/2addr p2, p6

    add-int/2addr v8, v1

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_0
    return v8

    :cond_1
    new-instance p0, Ljavax/imageio/IIOException;

    const-string p1, "Bits per sample must be 1 for RLE compression!"

    invoke-direct {p0, p1}, Ljavax/imageio/IIOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public bridge synthetic encode1D([BIII[BI)I
    .locals 0

    invoke-super/range {p0 .. p6}, Lcom/sun/imageio/plugins/tiff/TIFFFaxCompressor;->encode1D([BIII[BI)I

    move-result p0

    return p0
.end method

.method public encodeRLE([BIII[B)I
    .locals 7

    invoke-virtual {p0}, Lcom/sun/imageio/plugins/tiff/TIFFRLECompressor;->initBitBuf()V

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/sun/imageio/plugins/tiff/TIFFRLECompressor;->encode1D([BIII[BI)I

    move-result p1

    :goto_0
    iget p2, p0, Lcom/sun/imageio/plugins/tiff/TIFFFaxCompressor;->ndex:I

    if-lez p2, :cond_0

    add-int/lit8 p3, p1, 0x1

    iget p4, p0, Lcom/sun/imageio/plugins/tiff/TIFFFaxCompressor;->bits:I

    ushr-int/lit8 v0, p4, 0x18

    int-to-byte v0, v0

    aput-byte v0, p5, p1

    shl-int/lit8 p1, p4, 0x8

    iput p1, p0, Lcom/sun/imageio/plugins/tiff/TIFFFaxCompressor;->bits:I

    add-int/lit8 p2, p2, -0x8

    iput p2, p0, Lcom/sun/imageio/plugins/tiff/TIFFFaxCompressor;->ndex:I

    move p1, p3

    goto :goto_0

    :cond_0
    iget-boolean p0, p0, Lcom/sun/imageio/plugins/tiff/TIFFFaxCompressor;->inverseFill:Z

    if-eqz p0, :cond_1

    sget-object p0, Lcom/sun/imageio/plugins/tiff/TIFFFaxDecompressor;->flipTable:[B

    const/4 p2, 0x0

    :goto_1
    if-ge p2, p1, :cond_1

    aget-byte p3, p5, p2

    and-int/lit16 p3, p3, 0xff

    aget-byte p3, p0, p3

    aput-byte p3, p5, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_1
    return p1
.end method

.method public bridge synthetic initBitBuf()V
    .locals 0

    invoke-super {p0}, Lcom/sun/imageio/plugins/tiff/TIFFFaxCompressor;->initBitBuf()V

    return-void
.end method

.method public bridge synthetic nextState([BIII)I
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Lcom/sun/imageio/plugins/tiff/TIFFFaxCompressor;->nextState([BIII)I

    move-result p0

    return p0
.end method

.method public bridge synthetic setMetadata(Ljavax/imageio/metadata/IIOMetadata;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/sun/imageio/plugins/tiff/TIFFFaxCompressor;->setMetadata(Ljavax/imageio/metadata/IIOMetadata;)V

    return-void
.end method
