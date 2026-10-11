.class public Lcom/sun/imageio/plugins/tiff/TIFFLSBCompressor;
.super Lcom/sun/imageio/plugins/tiff/TIFFCompressor;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, ""

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v1}, Lcom/sun/imageio/plugins/tiff/TIFFCompressor;-><init>(Ljava/lang/String;IZ)V

    return-void
.end method


# virtual methods
.method public encode([BIII[II)I
    .locals 5
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

    new-array p3, v2, [B

    sget-object p5, Lcom/sun/imageio/plugins/tiff/TIFFFaxDecompressor;->flipTable:[B

    move v1, v0

    :goto_1
    if-ge v1, p4, :cond_2

    invoke-static {p1, p2, p3, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v3, v0

    :goto_2
    if-ge v3, v2, :cond_1

    aget-byte v4, p3, v3

    and-int/lit16 v4, v4, 0xff

    aget-byte v4, p5, v4

    aput-byte v4, p3, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_1
    iget-object v3, p0, Lcom/sun/imageio/plugins/tiff/TIFFCompressor;->stream:Ljavax/imageio/stream/ImageOutputStream;

    invoke-interface {v3, p3, v0, v2}, Ljavax/imageio/stream/ImageOutputStream;->write([BII)V

    add-int/2addr p2, p6

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    mul-int/2addr p4, v2

    return p4
.end method
