.class public Lcom/sun/imageio/plugins/tiff/TIFFDeflater;
.super Lcom/sun/imageio/plugins/tiff/TIFFCompressor;
.source "SourceFile"


# instance fields
.field deflater:Ljava/util/zip/Deflater;

.field predictor:I


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjavax/imageio/ImageWriteParam;I)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/sun/imageio/plugins/tiff/TIFFCompressor;-><init>(Ljava/lang/String;IZ)V

    iput p4, p0, Lcom/sun/imageio/plugins/tiff/TIFFDeflater;->predictor:I

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljavax/imageio/ImageWriteParam;->getCompressionMode()I

    move-result p1

    const/4 p2, 0x2

    if-ne p1, p2, :cond_0

    invoke-virtual {p3}, Ljavax/imageio/ImageWriteParam;->getCompressionQuality()F

    move-result p1

    const/high16 p2, 0x41000000    # 8.0f

    mul-float/2addr p1, p2

    const/high16 p2, 0x3f800000    # 1.0f

    add-float/2addr p1, p2

    float-to-int p1, p1

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    new-instance p2, Ljava/util/zip/Deflater;

    invoke-direct {p2, p1}, Ljava/util/zip/Deflater;-><init>(I)V

    iput-object p2, p0, Lcom/sun/imageio/plugins/tiff/TIFFDeflater;->deflater:Ljava/util/zip/Deflater;

    return-void
.end method


# virtual methods
.method public encode([BIII[II)I
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p4

    move-object/from16 v3, p5

    mul-int v4, v2, p6

    add-int/lit16 v5, v4, 0x7fff

    const v6, 0x8000

    div-int/2addr v5, v6

    mul-int/lit8 v5, v5, 0x5

    add-int/2addr v5, v4

    add-int/lit8 v5, v5, 0x6

    new-array v6, v5, [B

    iget v7, v0, Lcom/sun/imageio/plugins/tiff/TIFFDeflater;->predictor:I

    const/4 v8, 0x2

    const/4 v9, 0x0

    if-ne v7, v8, :cond_4

    array-length v4, v3

    move v7, v9

    move v8, v7

    :goto_0
    if-ge v7, v4, :cond_0

    aget v10, v3, v7

    add-int/2addr v8, v10

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_0
    mul-int v8, v8, p3

    add-int/lit8 v8, v8, 0x7

    div-int/lit8 v8, v8, 0x8

    new-array v3, v8, [B

    add-int/lit8 v7, v2, -0x1

    move/from16 v10, p2

    move v11, v9

    move v12, v11

    :goto_1
    if-ge v11, v2, :cond_5

    invoke-static {v1, v10, v3, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v13, v8, -0x1

    :goto_2
    if-lt v13, v4, :cond_1

    aget-byte v14, v3, v13

    sub-int v15, v13, v4

    aget-byte v15, v3, v15

    sub-int/2addr v14, v15

    int-to-byte v14, v14

    aput-byte v14, v3, v13

    add-int/lit8 v13, v13, -0x1

    goto :goto_2

    :cond_1
    iget-object v13, v0, Lcom/sun/imageio/plugins/tiff/TIFFDeflater;->deflater:Ljava/util/zip/Deflater;

    invoke-virtual {v13, v3}, Ljava/util/zip/Deflater;->setInput([B)V

    if-ne v11, v7, :cond_2

    iget-object v13, v0, Lcom/sun/imageio/plugins/tiff/TIFFDeflater;->deflater:Ljava/util/zip/Deflater;

    invoke-virtual {v13}, Ljava/util/zip/Deflater;->finish()V

    :cond_2
    :goto_3
    iget-object v13, v0, Lcom/sun/imageio/plugins/tiff/TIFFDeflater;->deflater:Ljava/util/zip/Deflater;

    sub-int v14, v5, v12

    invoke-virtual {v13, v6, v12, v14}, Ljava/util/zip/Deflater;->deflate([BII)I

    move-result v13

    if-eqz v13, :cond_3

    add-int/2addr v12, v13

    goto :goto_3

    :cond_3
    add-int v10, v10, p6

    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_4
    iget-object v2, v0, Lcom/sun/imageio/plugins/tiff/TIFFDeflater;->deflater:Ljava/util/zip/Deflater;

    move/from16 v3, p2

    invoke-virtual {v2, v1, v3, v4}, Ljava/util/zip/Deflater;->setInput([BII)V

    iget-object v1, v0, Lcom/sun/imageio/plugins/tiff/TIFFDeflater;->deflater:Ljava/util/zip/Deflater;

    invoke-virtual {v1}, Ljava/util/zip/Deflater;->finish()V

    iget-object v1, v0, Lcom/sun/imageio/plugins/tiff/TIFFDeflater;->deflater:Ljava/util/zip/Deflater;

    invoke-virtual {v1, v6}, Ljava/util/zip/Deflater;->deflate([B)I

    move-result v12

    :cond_5
    iget-object v1, v0, Lcom/sun/imageio/plugins/tiff/TIFFDeflater;->deflater:Ljava/util/zip/Deflater;

    invoke-virtual {v1}, Ljava/util/zip/Deflater;->reset()V

    iget-object v0, v0, Lcom/sun/imageio/plugins/tiff/TIFFCompressor;->stream:Ljavax/imageio/stream/ImageOutputStream;

    invoke-interface {v0, v6, v9, v12}, Ljavax/imageio/stream/ImageOutputStream;->write([BII)V

    return v12
.end method
