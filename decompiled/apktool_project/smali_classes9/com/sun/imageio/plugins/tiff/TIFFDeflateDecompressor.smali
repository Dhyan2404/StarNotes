.class public Lcom/sun/imageio/plugins/tiff/TIFFDeflateDecompressor;
.super Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;
.source "SourceFile"


# instance fields
.field inflater:Ljava/util/zip/Inflater;

.field predictor:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/imageio/IIOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFDeflateDecompressor;->inflater:Ljava/util/zip/Inflater;

    new-instance v0, Ljava/util/zip/Inflater;

    invoke-direct {v0}, Ljava/util/zip/Inflater;-><init>()V

    iput-object v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFDeflateDecompressor;->inflater:Ljava/util/zip/Inflater;

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljavax/imageio/IIOException;

    const-string p1, "Illegal value for Predictor in TIFF file"

    invoke-direct {p0, p1}, Ljavax/imageio/IIOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    iput p1, p0, Lcom/sun/imageio/plugins/tiff/TIFFDeflateDecompressor;->predictor:I

    return-void
.end method


# virtual methods
.method public declared-synchronized decodeRaw([BIII)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFDeflateDecompressor;->predictor:I

    const/16 v1, 0x8

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->bitsPerSample:[I

    array-length v0, v0

    move v4, v3

    :goto_0
    if-ge v4, v0, :cond_1

    iget-object v5, p0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->bitsPerSample:[I

    aget v5, v5, v4

    if-ne v5, v1, :cond_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    new-instance p1, Ljavax/imageio/IIOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, p0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->bitsPerSample:[I

    aget p3, p3, v4

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, "-bit samples are not supported for Horizontal differencing Predictor"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljavax/imageio/IIOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget-object v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->stream:Ljavax/imageio/stream/ImageInputStream;

    iget-wide v4, p0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->offset:J

    invoke-interface {v0, v4, v5}, Ljavax/imageio/stream/ImageInputStream;->seek(J)V

    iget v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->byteCount:I

    new-array v0, v0, [B

    iget-object v4, p0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->stream:Ljavax/imageio/stream/ImageInputStream;

    invoke-interface {v4, v0}, Ljavax/imageio/stream/ImageInputStream;->readFully([B)V

    iget v4, p0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->srcWidth:I

    mul-int/2addr v4, p3

    add-int/lit8 v4, v4, 0x7

    div-int/2addr v4, v1

    if-ne v4, p4, :cond_2

    move-object p3, p1

    move v1, p2

    goto :goto_1

    :cond_2
    iget p3, p0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->srcHeight:I

    mul-int/2addr p3, v4

    new-array p3, p3, [B

    move v1, v3

    :goto_1
    iget-object v5, p0, Lcom/sun/imageio/plugins/tiff/TIFFDeflateDecompressor;->inflater:Ljava/util/zip/Inflater;

    invoke-virtual {v5, v0}, Ljava/util/zip/Inflater;->setInput([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFDeflateDecompressor;->inflater:Ljava/util/zip/Inflater;

    iget v5, p0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->srcHeight:I

    mul-int/2addr v5, v4

    invoke-virtual {v0, p3, v1, v5}, Ljava/util/zip/Inflater;->inflate([BII)I
    :try_end_1
    .catch Ljava/util/zip/DataFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFDeflateDecompressor;->inflater:Ljava/util/zip/Inflater;

    invoke-virtual {v0}, Ljava/util/zip/Inflater;->reset()V

    iget v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFDeflateDecompressor;->predictor:I

    if-ne v0, v2, :cond_6

    iget-boolean v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->planar:Z

    const/4 v2, 0x1

    if-nez v0, :cond_4

    iget v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->samplesPerPixel:I

    if-ne v0, v2, :cond_3

    goto :goto_2

    :cond_3
    move v2, v0

    :cond_4
    :goto_2
    iget v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->srcWidth:I

    mul-int/2addr v0, v2

    add-int/2addr v1, v2

    move v5, v3

    :goto_3
    iget v6, p0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->srcHeight:I

    if-ge v5, v6, :cond_6

    move v7, v1

    move v6, v2

    :goto_4
    if-ge v6, v0, :cond_5

    aget-byte v8, p3, v7

    sub-int v9, v7, v2

    aget-byte v9, p3, v9

    add-int/2addr v8, v9

    int-to-byte v8, v8

    aput-byte v8, p3, v7

    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_5
    add-int/2addr v1, v0

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_6
    if-eq v4, p4, :cond_7

    move v0, v3

    :goto_5
    iget v1, p0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->srcHeight:I

    if-ge v3, v1, :cond_7

    invoke-static {p3, v0, p1, p2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    add-int/2addr v0, v4

    add-int/2addr p2, p4

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_7
    monitor-exit p0

    return-void

    :catch_0
    move-exception p1

    :try_start_3
    new-instance p2, Ljavax/imageio/IIOException;

    const-string p3, "Error inflating data"

    invoke-direct {p2, p3, p1}, Ljavax/imageio/IIOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
