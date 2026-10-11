.class public Lcom/sun/imageio/plugins/tiff/TIFFPackBitsDecompressor;
.super Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;-><init>()V

    return-void
.end method


# virtual methods
.method public decode([BI[BI)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    array-length v0, p3

    array-length v1, p1

    move v2, p4

    :goto_0
    if-ge v2, v0, :cond_4

    if-ge p2, v1, :cond_4

    add-int/lit8 v3, p2, 0x1

    :try_start_0
    aget-byte p2, p1, p2
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_2

    const/4 v4, 0x0

    if-ltz p2, :cond_0

    const/16 v5, 0x7f

    if-gt p2, v5, :cond_0

    :goto_1
    add-int/lit8 v5, p2, 0x1

    if-ge v4, v5, :cond_3

    add-int/lit8 v5, v2, 0x1

    add-int/lit8 v6, v3, 0x1

    :try_start_1
    aget-byte v3, p1, v3

    aput-byte v3, p3, v2
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v4, v4, 0x1

    move v2, v5

    move v3, v6

    goto :goto_1

    :catch_0
    move v2, v5

    goto :goto_3

    :cond_0
    const/4 v5, -0x1

    if-gt p2, v5, :cond_2

    const/16 v5, -0x7f

    if-lt p2, v5, :cond_2

    add-int/lit8 v5, v3, 0x1

    :try_start_2
    aget-byte v3, p1, v3
    :try_end_2
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    neg-int v6, p2

    add-int/lit8 v6, v6, 0x1

    if-ge v4, v6, :cond_1

    add-int/lit8 v6, v2, 0x1

    :try_start_3
    aput-byte v3, p3, v2
    :try_end_3
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_1

    add-int/lit8 v4, v4, 0x1

    move v2, v6

    goto :goto_2

    :catch_1
    move v2, v6

    goto :goto_3

    :cond_1
    move p2, v5

    goto :goto_0

    :cond_2
    add-int/lit8 v3, v3, 0x1

    :cond_3
    move p2, v3

    goto :goto_0

    :catch_2
    :goto_3
    iget-object p0, p0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->reader:Ljavax/imageio/ImageReader;

    instance-of p1, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;

    if-eqz p1, :cond_4

    check-cast p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;

    const-string p1, "ArrayIndexOutOfBoundsException ignored in TIFFPackBitsDecompressor.decode()"

    invoke-virtual {p0, p1}, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->forwardWarningMessage(Ljava/lang/String;)V

    :cond_4
    sub-int/2addr v2, p4

    return v2
.end method

.method public decodeRaw([BIII)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->stream:Ljavax/imageio/stream/ImageInputStream;

    iget-wide v1, p0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->offset:J

    invoke-interface {v0, v1, v2}, Ljavax/imageio/stream/ImageInputStream;->seek(J)V

    iget v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->byteCount:I

    new-array v0, v0, [B

    iget-object v1, p0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->stream:Ljavax/imageio/stream/ImageInputStream;

    invoke-interface {v1, v0}, Ljavax/imageio/stream/ImageInputStream;->readFully([B)V

    iget v1, p0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->srcWidth:I

    mul-int/2addr v1, p3

    add-int/lit8 v1, v1, 0x7

    div-int/lit8 v1, v1, 0x8

    const/4 p3, 0x0

    if-ne v1, p4, :cond_0

    move-object v2, p1

    move v3, p2

    goto :goto_0

    :cond_0
    iget v2, p0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->srcHeight:I

    mul-int/2addr v2, v1

    new-array v2, v2, [B

    move v3, p3

    :goto_0
    invoke-virtual {p0, v0, p3, v2, v3}, Lcom/sun/imageio/plugins/tiff/TIFFPackBitsDecompressor;->decode([BI[BI)I

    if-eq v1, p4, :cond_1

    move v0, p3

    :goto_1
    iget v3, p0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->srcHeight:I

    if-ge p3, v3, :cond_1

    invoke-static {v2, v0, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v0, v1

    add-int/2addr p2, p4

    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method
