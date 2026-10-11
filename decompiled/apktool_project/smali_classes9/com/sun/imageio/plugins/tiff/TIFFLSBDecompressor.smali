.class public Lcom/sun/imageio/plugins/tiff/TIFFLSBDecompressor;
.super Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;
.source "SourceFile"


# static fields
.field private static final flipTable:[B


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/sun/imageio/plugins/tiff/TIFFFaxDecompressor;->flipTable:[B

    sput-object v0, Lcom/sun/imageio/plugins/tiff/TIFFLSBDecompressor;->flipTable:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;-><init>()V

    return-void
.end method


# virtual methods
.method public decodeRaw([BIII)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->stream:Ljavax/imageio/stream/ImageInputStream;

    iget-wide v1, p0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->offset:J

    invoke-interface {v0, v1, v2}, Ljavax/imageio/stream/ImageInputStream;->seek(J)V

    iget v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->srcWidth:I

    mul-int/2addr v0, p3

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    if-ne v0, p4, :cond_0

    iget p3, p0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->srcHeight:I

    mul-int/2addr v0, p3

    iget-object p0, p0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->stream:Ljavax/imageio/stream/ImageInputStream;

    invoke-interface {p0, p1, p2, v0}, Ljavax/imageio/stream/ImageInputStream;->readFully([BII)V

    add-int/2addr v0, p2

    :goto_0
    if-ge p2, v0, :cond_2

    sget-object p0, Lcom/sun/imageio/plugins/tiff/TIFFLSBDecompressor;->flipTable:[B

    aget-byte p3, p1, p2

    and-int/lit16 p3, p3, 0xff

    aget-byte p0, p0, p3

    aput-byte p0, p1, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_1
    iget v1, p0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->srcHeight:I

    if-ge p3, v1, :cond_2

    iget-object v1, p0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->stream:Ljavax/imageio/stream/ImageInputStream;

    invoke-interface {v1, p1, p2, v0}, Ljavax/imageio/stream/ImageInputStream;->readFully([BII)V

    add-int v1, p2, v0

    move v2, p2

    :goto_2
    if-ge v2, v1, :cond_1

    sget-object v3, Lcom/sun/imageio/plugins/tiff/TIFFLSBDecompressor;->flipTable:[B

    aget-byte v4, p1, v2

    and-int/lit16 v4, v4, 0xff

    aget-byte v3, v3, v4

    aput-byte v3, p1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_1
    add-int/2addr p2, p4

    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method
