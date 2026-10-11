.class public Lcom/sun/imageio/plugins/tiff/TIFFExifJPEGCompressor;
.super Lcom/sun/imageio/plugins/tiff/TIFFBaseJPEGCompressor;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljavax/imageio/ImageWriteParam;)V
    .locals 3

    const/4 v0, 0x6

    const/4 v1, 0x0

    const-string v2, "Exif JPEG"

    invoke-direct {p0, v2, v0, v1, p1}, Lcom/sun/imageio/plugins/tiff/TIFFBaseJPEGCompressor;-><init>(Ljava/lang/String;IZLjavax/imageio/ImageWriteParam;)V

    return-void
.end method


# virtual methods
.method public setMetadata(Ljavax/imageio/metadata/IIOMetadata;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/sun/imageio/plugins/tiff/TIFFCompressor;->setMetadata(Ljavax/imageio/metadata/IIOMetadata;)V

    const/4 p1, 0x0

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/sun/imageio/plugins/tiff/TIFFBaseJPEGCompressor;->initJPEGWriter(ZZ)V

    return-void
.end method
