.class public Lcom/sun/imageio/plugins/tiff/TIFFPackBitsCompressor;
.super Lcom/sun/imageio/plugins/tiff/TIFFCompressor;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 3

    const v0, 0x8005

    const/4 v1, 0x1

    const-string v2, "PackBits"

    invoke-direct {p0, v2, v0, v1}, Lcom/sun/imageio/plugins/tiff/TIFFCompressor;-><init>(Ljava/lang/String;IZ)V

    return-void
.end method

.method private static packBits([BII[BI)I
    .locals 8

    add-int/2addr p2, p1

    const/4 v0, 0x1

    sub-int/2addr p2, v0

    add-int/lit8 v1, p2, -0x1

    :goto_0
    if-gt p1, p2, :cond_8

    aget-byte v2, p0, p1

    move v3, v0

    :goto_1
    const/16 v4, 0x7f

    if-ge v3, v4, :cond_0

    if-ge p1, p2, :cond_0

    aget-byte v4, p0, p1

    add-int/lit8 v5, p1, 0x1

    aget-byte v6, p0, v5

    if-ne v4, v6, :cond_0

    add-int/lit8 v3, v3, 0x1

    move p1, v5

    goto :goto_1

    :cond_0
    if-le v3, v0, :cond_1

    add-int/lit8 p1, p1, 0x1

    add-int/lit8 v4, p4, 0x1

    add-int/lit8 v3, v3, -0x1

    neg-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, p3, p4

    add-int/lit8 p4, v4, 0x1

    aput-byte v2, p3, v4

    :cond_1
    const/4 v2, 0x0

    move v4, p4

    move v3, v2

    :goto_2
    const/16 v5, 0x80

    if-ge v3, v5, :cond_4

    if-ge p1, p2, :cond_2

    aget-byte v6, p0, p1

    add-int/lit8 v7, p1, 0x1

    aget-byte v7, p0, v7

    if-ne v6, v7, :cond_3

    :cond_2
    if-ge p1, v1, :cond_4

    aget-byte v6, p0, p1

    add-int/lit8 v7, p1, 0x2

    aget-byte v7, p0, v7

    if-eq v6, v7, :cond_4

    :cond_3
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v5, p1, 0x1

    aget-byte p1, p0, p1

    aput-byte p1, p3, v4

    move p1, v5

    goto :goto_2

    :cond_4
    if-lez v3, :cond_5

    add-int/lit8 v6, v3, -0x1

    int-to-byte v6, v6

    aput-byte v6, p3, p4

    add-int/lit8 v4, v4, 0x1

    :cond_5
    if-ne p1, p2, :cond_7

    if-lez v3, :cond_6

    if-ge v3, v5, :cond_6

    aget-byte v2, p3, p4

    add-int/2addr v2, v0

    int-to-byte v2, v2

    aput-byte v2, p3, p4

    add-int/lit8 p4, v4, 0x1

    add-int/lit8 v2, p1, 0x1

    aget-byte p1, p0, p1

    aput-byte p1, p3, v4

    move p1, v2

    goto :goto_0

    :cond_6
    add-int/lit8 p4, v4, 0x1

    aput-byte v2, p3, v4

    add-int/lit8 v2, p4, 0x1

    add-int/lit8 v3, p1, 0x1

    aget-byte p1, p0, p1

    aput-byte p1, p3, p4

    move p4, v2

    move p1, v3

    goto :goto_0

    :cond_7
    move p4, v4

    goto :goto_0

    :cond_8
    return p4
.end method


# virtual methods
.method public encode([BIII[II)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_0
    array-length v3, p5

    if-ge v1, v3, :cond_0

    aget v3, p5, v1

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    mul-int/2addr v2, p3

    add-int/lit8 v2, v2, 0x7

    div-int/lit8 v2, v2, 0x8

    add-int/lit8 p3, v2, 0x7f

    div-int/lit16 p3, p3, 0x80

    add-int/2addr v2, p3

    new-array p3, v2, [B

    move p5, v0

    move v1, p5

    :goto_1
    if-ge p5, p4, :cond_1

    invoke-static {p1, p2, p6, p3, v0}, Lcom/sun/imageio/plugins/tiff/TIFFPackBitsCompressor;->packBits([BII[BI)I

    move-result v2

    add-int/2addr p2, p6

    add-int/2addr v1, v2

    iget-object v3, p0, Lcom/sun/imageio/plugins/tiff/TIFFCompressor;->stream:Ljavax/imageio/stream/ImageOutputStream;

    invoke-interface {v3, p3, v0, v2}, Ljavax/imageio/stream/ImageOutputStream;->write([BII)V

    add-int/lit8 p5, p5, 0x1

    goto :goto_1

    :cond_1
    return v1
.end method
