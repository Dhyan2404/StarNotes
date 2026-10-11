.class public Lcom/sun/imageio/plugins/tiff/TIFFT4Compressor;
.super Lcom/sun/imageio/plugins/tiff/TIFFFaxCompressor;
.source "SourceFile"


# instance fields
.field private is1DMode:Z

.field private isEOLAligned:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x3

    const/4 v1, 0x1

    const-string v2, "CCITT T.4"

    invoke-direct {p0, v2, v0, v1}, Lcom/sun/imageio/plugins/tiff/TIFFFaxCompressor;-><init>(Ljava/lang/String;IZ)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFT4Compressor;->is1DMode:Z

    iput-boolean v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFT4Compressor;->isEOLAligned:Z

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
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object v9, p0

    move-object/from16 v0, p5

    array-length v1, v0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 v10, 0x0

    aget v0, v0, v10

    if-ne v0, v2, :cond_0

    add-int/lit8 v0, p3, 0x1

    div-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x9

    add-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    add-int/lit8 v0, v0, 0x2

    mul-int v0, v0, p4

    add-int/lit8 v0, v0, 0xc

    new-array v11, v0, [B

    iget-boolean v1, v9, Lcom/sun/imageio/plugins/tiff/TIFFT4Compressor;->is1DMode:Z

    iget-boolean v2, v9, Lcom/sun/imageio/plugins/tiff/TIFFT4Compressor;->isEOLAligned:Z

    mul-int/lit8 v5, p2, 0x8

    move-object v0, p0

    move-object v3, p1

    move/from16 v4, p6

    move v6, p3

    move/from16 v7, p4

    move-object v8, v11

    invoke-virtual/range {v0 .. v8}, Lcom/sun/imageio/plugins/tiff/TIFFT4Compressor;->encodeT4(ZZ[BIIII[B)I

    move-result v0

    iget-object v1, v9, Lcom/sun/imageio/plugins/tiff/TIFFCompressor;->stream:Ljavax/imageio/stream/ImageOutputStream;

    invoke-interface {v1, v11, v10, v0}, Ljavax/imageio/stream/ImageOutputStream;->write([BII)V

    return v0

    :cond_0
    new-instance v0, Ljavax/imageio/IIOException;

    const-string v1, "Bits per sample must be 1 for T4 compression!"

    invoke-direct {v0, v1}, Ljavax/imageio/IIOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic encode1D([BIII[BI)I
    .locals 0

    invoke-super/range {p0 .. p6}, Lcom/sun/imageio/plugins/tiff/TIFFFaxCompressor;->encode1D([BIII[BI)I

    move-result p0

    return p0
.end method

.method public encodeT4(ZZ[BIIII[B)I
    .locals 17

    move-object/from16 v7, p0

    move-object/from16 v8, p3

    move/from16 v9, p5

    move-object/from16 v10, p8

    invoke-virtual/range {p0 .. p0}, Lcom/sun/imageio/plugins/tiff/TIFFT4Compressor;->initBitBuf()V

    const/4 v11, 0x0

    move v6, v11

    move v12, v6

    move v13, v12

    :goto_0
    move/from16 v15, p7

    if-ge v12, v15, :cond_8

    if-nez p1, :cond_7

    rem-int/lit8 v0, v12, 0x2

    if-nez v0, :cond_0

    goto/16 :goto_5

    :cond_0
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v4, p8

    move v5, v6

    invoke-virtual/range {v0 .. v5}, Lcom/sun/imageio/plugins/tiff/TIFFT4Compressor;->addEOL(ZZZ[BI)I

    move-result v0

    add-int/2addr v6, v0

    sub-int v0, v13, p4

    add-int v1, v9, p6

    ushr-int/lit8 v2, v9, 0x3

    add-int v3, v13, v2

    aget-byte v3, v8, v3

    and-int/lit16 v3, v3, 0xff

    and-int/lit8 v4, v9, 0x7

    rsub-int/lit8 v4, v4, 0x7

    ushr-int/2addr v3, v4

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_1

    move v3, v9

    goto :goto_1

    :cond_1
    invoke-virtual {v7, v8, v13, v9, v1}, Lcom/sun/imageio/plugins/tiff/TIFFT4Compressor;->nextState([BIII)I

    move-result v3

    :goto_1
    add-int/2addr v2, v0

    aget-byte v2, v8, v2

    and-int/lit16 v2, v2, 0xff

    ushr-int/2addr v2, v4

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_2

    move v2, v9

    goto :goto_2

    :cond_2
    invoke-virtual {v7, v8, v0, v9, v1}, Lcom/sun/imageio/plugins/tiff/TIFFT4Compressor;->nextState([BIII)I

    move-result v2

    :goto_2
    move v5, v9

    move v4, v11

    :cond_3
    :goto_3
    invoke-virtual {v7, v8, v0, v2, v1}, Lcom/sun/imageio/plugins/tiff/TIFFT4Compressor;->nextState([BIII)I

    move-result v14

    if-ge v14, v3, :cond_4

    sget-object v2, Lcom/sun/imageio/plugins/tiff/TIFFFaxCompressor;->pass:[[I

    invoke-virtual {v7, v10, v6, v2, v11}, Lcom/sun/imageio/plugins/tiff/TIFFT4Compressor;->add2DBits([BI[[II)I

    move-result v2

    add-int/2addr v6, v2

    move v5, v14

    goto :goto_4

    :cond_4
    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x3

    const/4 v14, 0x6

    if-gt v2, v14, :cond_5

    if-ltz v2, :cond_5

    sget-object v4, Lcom/sun/imageio/plugins/tiff/TIFFFaxCompressor;->vert:[[I

    invoke-virtual {v7, v10, v6, v4, v2}, Lcom/sun/imageio/plugins/tiff/TIFFT4Compressor;->add2DBits([BI[[II)I

    move-result v2

    add-int/2addr v6, v2

    move v5, v3

    goto :goto_4

    :cond_5
    invoke-virtual {v7, v8, v13, v3, v1}, Lcom/sun/imageio/plugins/tiff/TIFFT4Compressor;->nextState([BIII)I

    move-result v2

    sget-object v14, Lcom/sun/imageio/plugins/tiff/TIFFFaxCompressor;->horz:[[I

    invoke-virtual {v7, v10, v6, v14, v11}, Lcom/sun/imageio/plugins/tiff/TIFFT4Compressor;->add2DBits([BI[[II)I

    move-result v14

    add-int/2addr v6, v14

    sub-int v5, v3, v5

    invoke-virtual {v7, v10, v6, v5, v4}, Lcom/sun/imageio/plugins/tiff/TIFFT4Compressor;->add1DBits([BIII)I

    move-result v5

    add-int/2addr v6, v5

    sub-int v3, v2, v3

    xor-int/lit8 v4, v4, 0x1

    invoke-virtual {v7, v10, v6, v3, v4}, Lcom/sun/imageio/plugins/tiff/TIFFT4Compressor;->add1DBits([BIII)I

    move-result v3

    add-int/2addr v6, v3

    move v5, v2

    :goto_4
    if-lt v5, v1, :cond_6

    goto :goto_6

    :cond_6
    ushr-int/lit8 v2, v5, 0x3

    add-int/2addr v2, v13

    aget-byte v2, v8, v2

    and-int/lit16 v2, v2, 0xff

    and-int/lit8 v3, v5, 0x7

    rsub-int/lit8 v3, v3, 0x7

    ushr-int/2addr v2, v3

    and-int/lit8 v4, v2, 0x1

    invoke-virtual {v7, v8, v13, v5, v1}, Lcom/sun/imageio/plugins/tiff/TIFFT4Compressor;->nextState([BIII)I

    move-result v3

    invoke-virtual {v7, v8, v0, v5, v1}, Lcom/sun/imageio/plugins/tiff/TIFFT4Compressor;->nextState([BIII)I

    move-result v2

    ushr-int/lit8 v14, v2, 0x3

    add-int/2addr v14, v0

    aget-byte v14, v8, v14

    and-int/lit16 v14, v14, 0xff

    and-int/lit8 v16, v2, 0x7

    rsub-int/lit8 v16, v16, 0x7

    ushr-int v14, v14, v16

    and-int/lit8 v14, v14, 0x1

    if-ne v14, v4, :cond_3

    invoke-virtual {v7, v8, v0, v2, v1}, Lcom/sun/imageio/plugins/tiff/TIFFT4Compressor;->nextState([BIII)I

    move-result v2

    goto :goto_3

    :cond_7
    :goto_5
    const/4 v3, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v4, p8

    move v5, v6

    invoke-virtual/range {v0 .. v5}, Lcom/sun/imageio/plugins/tiff/TIFFT4Compressor;->addEOL(ZZZ[BI)I

    move-result v0

    add-int v14, v6, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move v2, v13

    move/from16 v3, p5

    move/from16 v4, p6

    move-object/from16 v5, p8

    move v6, v14

    invoke-virtual/range {v0 .. v6}, Lcom/sun/imageio/plugins/tiff/TIFFT4Compressor;->encode1D([BIII[BI)I

    move-result v0

    add-int/2addr v14, v0

    move v6, v14

    :goto_6
    add-int v13, v13, p4

    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_0

    :cond_8
    move v8, v11

    const/4 v9, 0x6

    :goto_7
    if-ge v8, v9, :cond_9

    const/4 v3, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v4, p8

    move v5, v6

    invoke-virtual/range {v0 .. v5}, Lcom/sun/imageio/plugins/tiff/TIFFT4Compressor;->addEOL(ZZZ[BI)I

    move-result v0

    add-int/2addr v6, v0

    add-int/lit8 v8, v8, 0x1

    goto :goto_7

    :cond_9
    :goto_8
    iget v0, v7, Lcom/sun/imageio/plugins/tiff/TIFFFaxCompressor;->ndex:I

    if-lez v0, :cond_a

    add-int/lit8 v1, v6, 0x1

    iget v2, v7, Lcom/sun/imageio/plugins/tiff/TIFFFaxCompressor;->bits:I

    ushr-int/lit8 v3, v2, 0x18

    int-to-byte v3, v3

    aput-byte v3, v10, v6

    shl-int/lit8 v2, v2, 0x8

    iput v2, v7, Lcom/sun/imageio/plugins/tiff/TIFFFaxCompressor;->bits:I

    add-int/lit8 v0, v0, -0x8

    iput v0, v7, Lcom/sun/imageio/plugins/tiff/TIFFFaxCompressor;->ndex:I

    move v6, v1

    goto :goto_8

    :cond_a
    iget-boolean v0, v7, Lcom/sun/imageio/plugins/tiff/TIFFFaxCompressor;->inverseFill:Z

    if-eqz v0, :cond_b

    :goto_9
    if-ge v11, v6, :cond_b

    sget-object v0, Lcom/sun/imageio/plugins/tiff/TIFFFaxDecompressor;->flipTable:[B

    aget-byte v1, v10, v11

    and-int/lit16 v1, v1, 0xff

    aget-byte v0, v0, v1

    aput-byte v0, v10, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_9

    :cond_b
    return v6
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

.method public setMetadata(Ljavax/imageio/metadata/IIOMetadata;)V
    .locals 7

    invoke-super {p0, p1}, Lcom/sun/imageio/plugins/tiff/TIFFFaxCompressor;->setMetadata(Ljavax/imageio/metadata/IIOMetadata;)V

    instance-of v0, p1, Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;

    if-eqz v0, :cond_4

    check-cast p1, Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;

    const/16 v0, 0x124

    invoke-virtual {p1, v0}, Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;->getTIFFField(I)Ljavax/imageio/plugins/tiff/TIFFField;

    move-result-object v1

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_2

    invoke-virtual {v1, v3}, Ljavax/imageio/plugins/tiff/TIFFField;->getAsInt(I)I

    move-result p1

    and-int/lit8 v0, p1, 0x1

    if-nez v0, :cond_0

    move v0, v4

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    iput-boolean v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFT4Compressor;->is1DMode:Z

    and-int/2addr p1, v2

    if-ne p1, v2, :cond_1

    move v3, v4

    :cond_1
    iput-boolean v3, p0, Lcom/sun/imageio/plugins/tiff/TIFFT4Compressor;->isEOLAligned:Z

    goto :goto_2

    :cond_2
    new-array v1, v4, [J

    iget-boolean v5, p0, Lcom/sun/imageio/plugins/tiff/TIFFT4Compressor;->isEOLAligned:Z

    if-eqz v5, :cond_3

    move v5, v2

    goto :goto_1

    :cond_3
    move v5, v3

    :goto_1
    iget-boolean p0, p0, Lcom/sun/imageio/plugins/tiff/TIFFT4Compressor;->is1DMode:Z

    xor-int/2addr p0, v4

    or-int/2addr p0, v5

    int-to-long v5, p0

    aput-wide v5, v1, v3

    invoke-static {}, Ljavax/imageio/plugins/tiff/BaselineTIFFTagSet;->getInstance()Ljavax/imageio/plugins/tiff/BaselineTIFFTagSet;

    move-result-object p0

    new-instance v3, Ljavax/imageio/plugins/tiff/TIFFField;

    invoke-virtual {p0, v0}, Ljavax/imageio/plugins/tiff/TIFFTagSet;->getTag(I)Ljavax/imageio/plugins/tiff/TIFFTag;

    move-result-object p0

    invoke-direct {v3, p0, v2, v4, v1}, Ljavax/imageio/plugins/tiff/TIFFField;-><init>(Ljavax/imageio/plugins/tiff/TIFFTag;IILjava/lang/Object;)V

    iget-object p0, p1, Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;->rootIFD:Lcom/sun/imageio/plugins/tiff/TIFFIFD;

    invoke-virtual {p0, v3}, Ljavax/imageio/plugins/tiff/TIFFDirectory;->addTIFFField(Ljavax/imageio/plugins/tiff/TIFFField;)V

    :cond_4
    :goto_2
    return-void
.end method
