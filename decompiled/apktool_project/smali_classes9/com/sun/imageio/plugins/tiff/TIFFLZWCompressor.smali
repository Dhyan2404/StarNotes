.class public Lcom/sun/imageio/plugins/tiff/TIFFLZWCompressor;
.super Lcom/sun/imageio/plugins/tiff/TIFFCompressor;
.source "SourceFile"


# instance fields
.field private final predictor:I


# direct methods
.method public constructor <init>(I)V
    .locals 3

    const/4 v0, 0x5

    const/4 v1, 0x1

    const-string v2, "LZW"

    invoke-direct {p0, v2, v0, v1}, Lcom/sun/imageio/plugins/tiff/TIFFCompressor;-><init>(Ljava/lang/String;IZ)V

    iput p1, p0, Lcom/sun/imageio/plugins/tiff/TIFFLZWCompressor;->predictor:I

    return-void
.end method


# virtual methods
.method public encode([BIII[II)I
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p4

    move-object/from16 v3, p5

    move/from16 v4, p6

    new-instance v5, Lcom/sun/imageio/plugins/common/LZWCompressor;

    iget-object v6, v0, Lcom/sun/imageio/plugins/tiff/TIFFCompressor;->stream:Ljavax/imageio/stream/ImageOutputStream;

    const/16 v7, 0x8

    const/4 v8, 0x1

    invoke-direct {v5, v6, v7, v8}, Lcom/sun/imageio/plugins/common/LZWCompressor;-><init>(Ljavax/imageio/stream/ImageOutputStream;IZ)V

    array-length v6, v3

    const/4 v9, 0x0

    move v10, v9

    move v11, v10

    :goto_0
    if-ge v10, v6, :cond_0

    aget v12, v3, v10

    add-int/2addr v11, v12

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_0
    mul-int v11, v11, p3

    add-int/lit8 v11, v11, 0x7

    div-int/2addr v11, v7

    iget-object v3, v0, Lcom/sun/imageio/plugins/tiff/TIFFCompressor;->stream:Ljavax/imageio/stream/ImageOutputStream;

    invoke-interface {v3}, Ljavax/imageio/stream/ImageInputStream;->getStreamPosition()J

    move-result-wide v12

    iget v3, v0, Lcom/sun/imageio/plugins/tiff/TIFFLZWCompressor;->predictor:I

    const/4 v7, 0x2

    if-ne v3, v7, :cond_1

    goto :goto_1

    :cond_1
    move v8, v9

    :goto_1
    if-ne v11, v4, :cond_2

    if-nez v8, :cond_2

    mul-int/2addr v11, v2

    move/from16 v3, p2

    invoke-virtual {v5, v1, v3, v11}, Lcom/sun/imageio/plugins/common/LZWCompressor;->compress([BII)V

    goto :goto_6

    :cond_2
    move/from16 v3, p2

    if-eqz v8, :cond_3

    new-array v7, v11, [B

    goto :goto_2

    :cond_3
    const/4 v7, 0x0

    :goto_2
    move v10, v9

    :goto_3
    if-ge v10, v2, :cond_6

    if-eqz v8, :cond_5

    invoke-static {v1, v3, v7, v9, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v14, v11, -0x1

    :goto_4
    if-lt v14, v6, :cond_4

    aget-byte v15, v7, v14

    sub-int v16, v14, v6

    aget-byte v16, v7, v16

    sub-int v15, v15, v16

    int-to-byte v15, v15

    aput-byte v15, v7, v14

    add-int/lit8 v14, v14, -0x1

    goto :goto_4

    :cond_4
    invoke-virtual {v5, v7, v9, v11}, Lcom/sun/imageio/plugins/common/LZWCompressor;->compress([BII)V

    goto :goto_5

    :cond_5
    invoke-virtual {v5, v1, v3, v11}, Lcom/sun/imageio/plugins/common/LZWCompressor;->compress([BII)V

    :goto_5
    add-int/2addr v3, v4

    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    :cond_6
    :goto_6
    invoke-virtual {v5}, Lcom/sun/imageio/plugins/common/LZWCompressor;->flush()V

    iget-object v0, v0, Lcom/sun/imageio/plugins/tiff/TIFFCompressor;->stream:Ljavax/imageio/stream/ImageOutputStream;

    invoke-interface {v0}, Ljavax/imageio/stream/ImageInputStream;->getStreamPosition()J

    move-result-wide v0

    sub-long/2addr v0, v12

    long-to-int v0, v0

    return v0
.end method

.method public setStream(Ljavax/imageio/stream/ImageOutputStream;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/sun/imageio/plugins/tiff/TIFFCompressor;->setStream(Ljavax/imageio/stream/ImageOutputStream;)V

    return-void
.end method
