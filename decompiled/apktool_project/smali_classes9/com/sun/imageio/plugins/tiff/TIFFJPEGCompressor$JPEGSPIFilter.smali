.class Lcom/sun/imageio/plugins/tiff/TIFFJPEGCompressor$JPEGSPIFilter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljavax/imageio/spi/ServiceRegistry$Filter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/imageio/plugins/tiff/TIFFJPEGCompressor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "JPEGSPIFilter"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Ljavax/imageio/spi/ImageReaderSpi;

    const/4 p0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljavax/imageio/spi/ImageReaderWriterSpi;->getNativeStreamMetadataFormatName()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string p0, "javax_imageio_jpeg_stream_1.0"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    :cond_0
    return p0
.end method
