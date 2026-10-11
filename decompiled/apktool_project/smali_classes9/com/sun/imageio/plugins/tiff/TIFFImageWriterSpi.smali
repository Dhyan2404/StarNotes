.class public Lcom/sun/imageio/plugins/tiff/TIFFImageWriterSpi;
.super Ljavax/imageio/spi/ImageWriterSpi;
.source "SourceFile"


# instance fields
.field private registered:Z


# direct methods
.method public constructor <init>()V
    .locals 19

    move-object/from16 v0, p0

    const-string v1, "Oracle Corporation"

    const-string v2, "1.0"

    const-string v3, "TIFF"

    const-string v4, "tif"

    const-string v5, "TIF"

    const-string v6, "tiff"

    filled-new-array {v4, v5, v6, v3}, [Ljava/lang/String;

    move-result-object v3

    filled-new-array {v4, v6}, [Ljava/lang/String;

    move-result-object v4

    const-string v5, "image/tiff"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    const-string v6, "com.sun.imageio.plugins.tiff.TIFFImageWriter"

    const/4 v7, 0x1

    new-array v8, v7, [Ljava/lang/Class;

    move-object v7, v8

    const-class v9, Ljavax/imageio/stream/ImageOutputStream;

    const/4 v15, 0x0

    aput-object v9, v8, v15

    const-string v8, "com.sun.imageio.plugins.tiff.TIFFImageReaderSpi"

    filled-new-array {v8}, [Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const-string v10, "javax_imageio_tiff_stream_1.0"

    const-string v11, "com.sun.imageio.plugins.tiff.TIFFStreamMetadataFormat"

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const-string v16, "javax_imageio_tiff_image_1.0"

    move-object/from16 v15, v16

    const-string v16, "com.sun.imageio.plugins.tiff.TIFFImageMetadataFormat"

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-direct/range {v0 .. v18}, Ljavax/imageio/spi/ImageWriterSpi;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriterSpi;->registered:Z

    return-void
.end method


# virtual methods
.method public canEncodeImage(Ljavax/imageio/ImageTypeSpecifier;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public createWriterInstance(Ljava/lang/Object;)Ljavax/imageio/ImageWriter;
    .locals 0

    new-instance p1, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;

    invoke-direct {p1, p0}, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;-><init>(Ljavax/imageio/spi/ImageWriterSpi;)V

    return-object p1
.end method

.method public getDescription(Ljava/util/Locale;)Ljava/lang/String;
    .locals 0

    const-string p0, "Standard TIFF image writer"

    return-object p0
.end method

.method public onRegistration(Ljavax/imageio/spi/ServiceRegistry;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/imageio/spi/ServiceRegistry;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    iget-boolean p1, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriterSpi;->registered:Z

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriterSpi;->registered:Z

    return-void
.end method
