.class public Lcom/sun/imageio/plugins/tiff/TIFFT6Compressor;
.super Lcom/sun/imageio/plugins/tiff/TIFFFaxCompressor;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x4

    const/4 v1, 0x1

    const-string v2, "CCITT T.6"

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
    .locals 8
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

    iget-object p5, p0, Lcom/sun/imageio/plugins/tiff/TIFFCompressor;->metadata:Ljavax/imageio/metadata/IIOMetadata;

    instance-of v2, p5, Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;

    if-eqz v2, :cond_0

    check-cast p5, Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;

    new-array v2, v1, [J

    const-wide/16 v3, 0x0

    aput-wide v3, v2, v0

    invoke-static {}, Ljavax/imageio/plugins/tiff/BaselineTIFFTagSet;->getInstance()Ljavax/imageio/plugins/tiff/BaselineTIFFTagSet;

    move-result-object v3

    new-instance v4, Ljavax/imageio/plugins/tiff/TIFFField;

    const/16 v5, 0x125

    invoke-virtual {v3, v5}, Ljavax/imageio/plugins/tiff/TIFFTagSet;->getTag(I)Ljavax/imageio/plugins/tiff/TIFFTag;

    move-result-object v3

    const/4 v5, 0x4

    invoke-direct {v4, v3, v5, v1, v2}, Ljavax/imageio/plugins/tiff/TIFFField;-><init>(Ljavax/imageio/plugins/tiff/TIFFTag;IILjava/lang/Object;)V

    iget-object p5, p5, Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;->rootIFD:Lcom/sun/imageio/plugins/tiff/TIFFIFD;

    invoke-virtual {p5, v4}, Ljavax/imageio/plugins/tiff/TIFFDirectory;->addTIFFField(Ljavax/imageio/plugins/tiff/TIFFField;)V

    :cond_0
    add-int/lit8 p5, p3, 0x1

    div-int/lit8 p5, p5, 0x2

    mul-int/lit8 p5, p5, 0x9

    add-int/lit8 p5, p5, 0x2

    add-int/lit8 p5, p5, 0x7

    div-int/lit8 p5, p5, 0x8

    add-int/lit8 p5, p5, 0x2

    mul-int/2addr p5, p4

    add-int/lit8 p5, p5, 0xc

    new-array p5, p5, [B

    mul-int/lit8 v4, p2, 0x8

    move-object v1, p0

    move-object v2, p1

    move v3, p6

    move v5, p3

    move v6, p4

    move-object v7, p5

    invoke-virtual/range {v1 .. v7}, Lcom/sun/imageio/plugins/tiff/TIFFT6Compressor;->encodeT6([BIIII[B)I

    move-result p1

    iget-object p0, p0, Lcom/sun/imageio/plugins/tiff/TIFFCompressor;->stream:Ljavax/imageio/stream/ImageOutputStream;

    invoke-interface {p0, p5, v0, p1}, Ljavax/imageio/stream/ImageOutputStream;->write([BII)V

    return p1

    :cond_1
    new-instance p0, Ljavax/imageio/IIOException;

    const-string p1, "Bits per sample must be 1 for T6 compression!"

    invoke-direct {p0, p1}, Ljavax/imageio/IIOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public bridge synthetic encode1D([BIII[BI)I
    .locals 0

    invoke-super/range {p0 .. p6}, Lcom/sun/imageio/plugins/tiff/TIFFFaxCompressor;->encode1D([BIII[BI)I

    move-result p0

    return p0
.end method

.method public declared-synchronized encodeT6([BIIII[B)I
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move/from16 v2, p3

    move-object/from16 v3, p6

    monitor-enter p0

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/sun/imageio/plugins/tiff/TIFFT6Compressor;->initBitBuf()V

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v7, v4

    move v8, v7

    move v9, v8

    move-object v6, v5

    move/from16 v5, p5

    :goto_0
    add-int/lit8 v10, v5, -0x1

    if-eqz v5, :cond_8

    add-int v5, v2, p4

    ushr-int/lit8 v11, v2, 0x3

    add-int v12, v8, v11

    aget-byte v12, v0, v12

    and-int/lit16 v12, v12, 0xff

    and-int/lit8 v13, v2, 0x7

    rsub-int/lit8 v13, v13, 0x7

    ushr-int/2addr v12, v13

    and-int/lit8 v12, v12, 0x1

    if-eqz v12, :cond_0

    move v12, v2

    goto :goto_1

    :cond_0
    invoke-virtual {v1, v0, v8, v2, v5}, Lcom/sun/imageio/plugins/tiff/TIFFT6Compressor;->nextState([BIII)I

    move-result v12

    :goto_1
    if-nez v6, :cond_1

    move v11, v4

    goto :goto_2

    :cond_1
    add-int/2addr v11, v9

    aget-byte v11, v6, v11

    and-int/lit16 v11, v11, 0xff

    ushr-int/2addr v11, v13

    and-int/lit8 v11, v11, 0x1

    :goto_2
    if-eqz v11, :cond_2

    move v11, v2

    goto :goto_3

    :cond_2
    invoke-virtual {v1, v6, v9, v2, v5}, Lcom/sun/imageio/plugins/tiff/TIFFT6Compressor;->nextState([BIII)I

    move-result v11

    :goto_3
    move v13, v2

    move v14, v4

    :cond_3
    :goto_4
    invoke-virtual {v1, v6, v9, v11, v5}, Lcom/sun/imageio/plugins/tiff/TIFFT6Compressor;->nextState([BIII)I

    move-result v15

    if-ge v15, v12, :cond_4

    sget-object v11, Lcom/sun/imageio/plugins/tiff/TIFFFaxCompressor;->pass:[[I

    invoke-virtual {v1, v3, v7, v11, v4}, Lcom/sun/imageio/plugins/tiff/TIFFT6Compressor;->add2DBits([BI[[II)I

    move-result v11

    add-int/2addr v7, v11

    move v13, v15

    goto :goto_5

    :cond_4
    sub-int/2addr v11, v12

    add-int/lit8 v11, v11, 0x3

    const/4 v15, 0x6

    if-gt v11, v15, :cond_5

    if-ltz v11, :cond_5

    sget-object v13, Lcom/sun/imageio/plugins/tiff/TIFFFaxCompressor;->vert:[[I

    invoke-virtual {v1, v3, v7, v13, v11}, Lcom/sun/imageio/plugins/tiff/TIFFT6Compressor;->add2DBits([BI[[II)I

    move-result v11

    add-int/2addr v7, v11

    move v13, v12

    goto :goto_5

    :cond_5
    invoke-virtual {v1, v0, v8, v12, v5}, Lcom/sun/imageio/plugins/tiff/TIFFT6Compressor;->nextState([BIII)I

    move-result v11

    sget-object v15, Lcom/sun/imageio/plugins/tiff/TIFFFaxCompressor;->horz:[[I

    invoke-virtual {v1, v3, v7, v15, v4}, Lcom/sun/imageio/plugins/tiff/TIFFT6Compressor;->add2DBits([BI[[II)I

    move-result v15

    add-int/2addr v7, v15

    sub-int v13, v12, v13

    invoke-virtual {v1, v3, v7, v13, v14}, Lcom/sun/imageio/plugins/tiff/TIFFT6Compressor;->add1DBits([BIII)I

    move-result v13

    add-int/2addr v7, v13

    sub-int v12, v11, v12

    xor-int/lit8 v13, v14, 0x1

    invoke-virtual {v1, v3, v7, v12, v13}, Lcom/sun/imageio/plugins/tiff/TIFFT6Compressor;->add1DBits([BIII)I

    move-result v12

    add-int/2addr v7, v12

    move v13, v11

    :goto_5
    if-lt v13, v5, :cond_6

    add-int v5, v8, p2

    move-object v6, v0

    move v9, v8

    move v8, v5

    move v5, v10

    goto :goto_0

    :cond_6
    ushr-int/lit8 v11, v13, 0x3

    add-int/2addr v11, v8

    aget-byte v11, v0, v11

    and-int/lit16 v11, v11, 0xff

    and-int/lit8 v12, v13, 0x7

    rsub-int/lit8 v12, v12, 0x7

    ushr-int/2addr v11, v12

    and-int/lit8 v14, v11, 0x1

    invoke-virtual {v1, v0, v8, v13, v5}, Lcom/sun/imageio/plugins/tiff/TIFFT6Compressor;->nextState([BIII)I

    move-result v12

    invoke-virtual {v1, v6, v9, v13, v5}, Lcom/sun/imageio/plugins/tiff/TIFFT6Compressor;->nextState([BIII)I

    move-result v11

    if-nez v6, :cond_7

    move v15, v4

    goto :goto_6

    :cond_7
    ushr-int/lit8 v15, v11, 0x3

    add-int/2addr v15, v9

    aget-byte v15, v6, v15

    and-int/lit16 v15, v15, 0xff

    and-int/lit8 v16, v11, 0x7

    rsub-int/lit8 v16, v16, 0x7

    ushr-int v15, v15, v16

    and-int/lit8 v15, v15, 0x1

    :goto_6
    if-ne v15, v14, :cond_3

    invoke-virtual {v1, v6, v9, v11, v5}, Lcom/sun/imageio/plugins/tiff/TIFFT6Compressor;->nextState([BIII)I

    move-result v11

    goto :goto_4

    :cond_8
    invoke-virtual {v1, v3, v7}, Lcom/sun/imageio/plugins/tiff/TIFFT6Compressor;->addEOFB([BI)I

    move-result v0

    add-int/2addr v7, v0

    iget-boolean v0, v1, Lcom/sun/imageio/plugins/tiff/TIFFFaxCompressor;->inverseFill:Z

    if-eqz v0, :cond_9

    :goto_7
    if-ge v4, v7, :cond_9

    sget-object v0, Lcom/sun/imageio/plugins/tiff/TIFFFaxDecompressor;->flipTable:[B

    aget-byte v2, v3, v4

    and-int/lit16 v2, v2, 0xff

    aget-byte v0, v0, v2

    aput-byte v0, v3, v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    :cond_9
    monitor-exit p0

    return v7

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
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
