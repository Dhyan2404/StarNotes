.class public Lcom/sun/imageio/plugins/tiff/TIFFPackBitsUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field dstData:[B

.field dstIndex:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x2000

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFPackBitsUtil;->dstData:[B

    const/4 v0, 0x0

    iput v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFPackBitsUtil;->dstIndex:I

    return-void
.end method

.method private ensureCapacity(I)V
    .locals 4

    iget v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFPackBitsUtil;->dstIndex:I

    add-int v1, v0, p1

    iget-object v2, p0, Lcom/sun/imageio/plugins/tiff/TIFFPackBitsUtil;->dstData:[B

    array-length v3, v2

    if-le v1, v3, :cond_0

    array-length v1, v2

    int-to-float v1, v1

    const v2, 0x3f99999a    # 1.2f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    add-int/2addr v0, p1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    new-array p1, p1, [B

    iget-object v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFPackBitsUtil;->dstData:[B

    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object p1, p0, Lcom/sun/imageio/plugins/tiff/TIFFPackBitsUtil;->dstData:[B

    :cond_0
    return-void
.end method


# virtual methods
.method public decode([B)[B
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_4

    add-int/lit8 v2, v1, 0x1

    aget-byte v1, p1, v1

    if-ltz v1, :cond_0

    const/16 v3, 0x7f

    if-gt v1, v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v1}, Lcom/sun/imageio/plugins/tiff/TIFFPackBitsUtil;->ensureCapacity(I)V

    move v3, v0

    :goto_1
    if-ge v3, v1, :cond_3

    iget-object v4, p0, Lcom/sun/imageio/plugins/tiff/TIFFPackBitsUtil;->dstData:[B

    iget v5, p0, Lcom/sun/imageio/plugins/tiff/TIFFPackBitsUtil;->dstIndex:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/sun/imageio/plugins/tiff/TIFFPackBitsUtil;->dstIndex:I

    add-int/lit8 v6, v2, 0x1

    aget-byte v2, p1, v2

    aput-byte v2, v4, v5

    add-int/lit8 v3, v3, 0x1

    move v2, v6

    goto :goto_1

    :cond_0
    const/4 v3, -0x1

    if-gt v1, v3, :cond_2

    const/16 v3, -0x7f

    if-lt v1, v3, :cond_2

    add-int/lit8 v3, v2, 0x1

    aget-byte v2, p1, v2

    neg-int v1, v1

    add-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v1}, Lcom/sun/imageio/plugins/tiff/TIFFPackBitsUtil;->ensureCapacity(I)V

    move v4, v0

    :goto_2
    if-ge v4, v1, :cond_1

    iget-object v5, p0, Lcom/sun/imageio/plugins/tiff/TIFFPackBitsUtil;->dstData:[B

    iget v6, p0, Lcom/sun/imageio/plugins/tiff/TIFFPackBitsUtil;->dstIndex:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/sun/imageio/plugins/tiff/TIFFPackBitsUtil;->dstIndex:I

    aput-byte v2, v5, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_1
    move v1, v3

    goto :goto_0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    :cond_3
    move v1, v2

    goto :goto_0

    :cond_4
    iget p1, p0, Lcom/sun/imageio/plugins/tiff/TIFFPackBitsUtil;->dstIndex:I

    new-array v1, p1, [B

    iget-object p0, p0, Lcom/sun/imageio/plugins/tiff/TIFFPackBitsUtil;->dstData:[B

    invoke-static {p0, v0, v1, v0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method
