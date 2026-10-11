.class public Lcom/sun/imageio/plugins/tiff/TIFFNullDecompressor;
.super Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;
.source "SourceFile"


# instance fields
.field private isReadActiveOnly:Z

.field private originalSrcHeight:I

.field private originalSrcMinX:I

.field private originalSrcMinY:I

.field private originalSrcWidth:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFNullDecompressor;->isReadActiveOnly:Z

    return-void
.end method


# virtual methods
.method public beginDecoding()V
    .locals 6

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_0
    iget-object v3, p0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->bitsPerSample:[I

    array-length v4, v3

    if-ge v1, v4, :cond_0

    aget v3, v3, v1

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->activeSrcMinX:I

    iget v3, p0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->srcMinX:I

    if-ne v1, v3, :cond_1

    iget v4, p0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->activeSrcMinY:I

    iget v5, p0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->srcMinY:I

    if-ne v4, v5, :cond_1

    iget v4, p0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->activeSrcWidth:I

    iget v5, p0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->srcWidth:I

    if-ne v4, v5, :cond_1

    iget v4, p0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->activeSrcHeight:I

    iget v5, p0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->srcHeight:I

    if-eq v4, v5, :cond_2

    :cond_1
    sub-int v4, v1, v3

    mul-int/2addr v4, v2

    rem-int/lit8 v4, v4, 0x8

    if-nez v4, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFNullDecompressor;->isReadActiveOnly:Z

    iput v3, p0, Lcom/sun/imageio/plugins/tiff/TIFFNullDecompressor;->originalSrcMinX:I

    iget v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->srcMinY:I

    iput v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFNullDecompressor;->originalSrcMinY:I

    iget v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->srcWidth:I

    iput v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFNullDecompressor;->originalSrcWidth:I

    iget v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->srcHeight:I

    iput v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFNullDecompressor;->originalSrcHeight:I

    iput v1, p0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->srcMinX:I

    iget v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->activeSrcMinY:I

    iput v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->srcMinY:I

    iget v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->activeSrcWidth:I

    iput v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->srcWidth:I

    iget v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->activeSrcHeight:I

    iput v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->srcHeight:I

    goto :goto_1

    :cond_2
    iput-boolean v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFNullDecompressor;->isReadActiveOnly:Z

    :goto_1
    invoke-super {p0}, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->beginDecoding()V

    return-void
.end method

.method public decode()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0}, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->decode()V

    iget-boolean v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFNullDecompressor;->isReadActiveOnly:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFNullDecompressor;->originalSrcMinX:I

    iput v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->srcMinX:I

    iget v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFNullDecompressor;->originalSrcMinY:I

    iput v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->srcMinY:I

    iget v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFNullDecompressor;->originalSrcWidth:I

    iput v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->srcWidth:I

    iget v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFNullDecompressor;->originalSrcHeight:I

    iput v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->srcHeight:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFNullDecompressor;->isReadActiveOnly:Z

    :cond_0
    return-void
.end method

.method public decodeRaw([BIII)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFNullDecompressor;->isReadActiveOnly:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->activeSrcWidth:I

    mul-int/2addr v0, p3

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    iget v2, p0, Lcom/sun/imageio/plugins/tiff/TIFFNullDecompressor;->originalSrcWidth:I

    mul-int/2addr v2, p3

    add-int/lit8 v2, v2, 0x7

    div-int/lit8 v2, v2, 0x8

    sub-int v3, v2, v0

    iget-object v4, p0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->stream:Ljavax/imageio/stream/ImageInputStream;

    iget-wide v5, p0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->offset:J

    iget v7, p0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->activeSrcMinY:I

    iget v8, p0, Lcom/sun/imageio/plugins/tiff/TIFFNullDecompressor;->originalSrcMinY:I

    sub-int/2addr v7, v8

    mul-int/2addr v7, v2

    int-to-long v7, v7

    add-long/2addr v5, v7

    iget v2, p0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->activeSrcMinX:I

    iget v7, p0, Lcom/sun/imageio/plugins/tiff/TIFFNullDecompressor;->originalSrcMinX:I

    sub-int/2addr v2, v7

    mul-int/2addr v2, p3

    div-int/lit8 v2, v2, 0x8

    int-to-long v7, v2

    add-long/2addr v5, v7

    invoke-interface {v4, v5, v6}, Ljavax/imageio/stream/ImageInputStream;->seek(J)V

    iget p3, p0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->activeSrcHeight:I

    add-int/lit8 p3, p3, -0x1

    :goto_0
    iget v2, p0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->activeSrcHeight:I

    if-ge v1, v2, :cond_8

    iget-object v2, p0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->stream:Ljavax/imageio/stream/ImageInputStream;

    invoke-interface {v2, p1, p2, v0}, Ljavax/imageio/stream/ImageInputStream;->read([BII)I

    move-result v2

    if-ltz v2, :cond_2

    if-eq v2, v0, :cond_0

    goto :goto_2

    :cond_0
    add-int/2addr p2, p4

    if-eq v1, p3, :cond_1

    iget-object v2, p0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->stream:Ljavax/imageio/stream/ImageInputStream;

    invoke-interface {v2, v3}, Ljavax/imageio/stream/ImageInputStream;->skipBytes(I)I

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0

    :cond_3
    iget-object v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->stream:Ljavax/imageio/stream/ImageInputStream;

    iget-wide v2, p0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->offset:J

    invoke-interface {v0, v2, v3}, Ljavax/imageio/stream/ImageInputStream;->seek(J)V

    iget v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->srcWidth:I

    mul-int/2addr v0, p3

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    if-ne v0, p4, :cond_5

    iget-object p3, p0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->stream:Ljavax/imageio/stream/ImageInputStream;

    iget p0, p0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->srcHeight:I

    mul-int/2addr v0, p0

    invoke-interface {p3, p1, p2, v0}, Ljavax/imageio/stream/ImageInputStream;->read([BII)I

    move-result p0

    if-ltz p0, :cond_4

    goto :goto_2

    :cond_4
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0

    :cond_5
    :goto_1
    iget p3, p0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->srcHeight:I

    if-ge v1, p3, :cond_8

    iget-object p3, p0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->stream:Ljavax/imageio/stream/ImageInputStream;

    invoke-interface {p3, p1, p2, v0}, Ljavax/imageio/stream/ImageInputStream;->read([BII)I

    move-result p3

    if-ltz p3, :cond_7

    if-eq p3, v0, :cond_6

    goto :goto_2

    :cond_6
    add-int/2addr p2, p4

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_7
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0

    :cond_8
    :goto_2
    return-void
.end method
