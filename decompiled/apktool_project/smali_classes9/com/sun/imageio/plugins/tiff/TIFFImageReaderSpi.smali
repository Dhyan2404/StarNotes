.class public Lcom/sun/imageio/plugins/tiff/TIFFImageReaderSpi;
.super Ljavax/imageio/spi/ImageReaderSpi;
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

    const-string v6, "com.sun.imageio.plugins.tiff.TIFFImageReader"

    const/4 v7, 0x1

    new-array v8, v7, [Ljava/lang/Class;

    move-object v7, v8

    const-class v9, Ljavax/imageio/stream/ImageInputStream;

    const/4 v15, 0x0

    aput-object v9, v8, v15

    const-string v8, "com.sun.imageio.plugins.tiff.TIFFImageWriterSpi"

    filled-new-array {v8}, [Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const-string v10, "javax_imageio_tiff_stream_1.0"

    const-string v11, "com.sun.imageio.plugins.tiff.TIFFStreamMetadataFormat"

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x1

    const-string v16, "javax_imageio_tiff_image_1.0"

    move-object/from16 v15, v16

    const-string v16, "com.sun.imageio.plugins.tiff.TIFFImageMetadataFormat"

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-direct/range {v0 .. v18}, Ljavax/imageio/spi/ImageReaderSpi;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageReaderSpi;->registered:Z

    return-void
.end method


# virtual methods
.method public canDecodeInput(Ljava/lang/Object;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of p0, p1, Ljavax/imageio/stream/ImageInputStream;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    check-cast p1, Ljavax/imageio/stream/ImageInputStream;

    const/4 p0, 0x4

    new-array p0, p0, [B

    invoke-interface {p1}, Ljavax/imageio/stream/ImageInputStream;->mark()V

    invoke-interface {p1, p0}, Ljavax/imageio/stream/ImageInputStream;->readFully([B)V

    invoke-interface {p1}, Ljavax/imageio/stream/ImageInputStream;->reset()V

    aget-byte p1, p0, v0

    const/4 v1, 0x3

    const/16 v2, 0x2a

    const/4 v3, 0x2

    const/16 v4, 0x49

    const/4 v5, 0x1

    if-ne p1, v4, :cond_1

    aget-byte v6, p0, v5

    if-ne v6, v4, :cond_1

    aget-byte v4, p0, v3

    if-ne v4, v2, :cond_1

    aget-byte v4, p0, v1

    if-eqz v4, :cond_2

    :cond_1
    const/16 v4, 0x4d

    if-ne p1, v4, :cond_3

    aget-byte p1, p0, v5

    if-ne p1, v4, :cond_3

    aget-byte p1, p0, v3

    if-nez p1, :cond_3

    aget-byte p0, p0, v1

    if-ne p0, v2, :cond_3

    :cond_2
    move v0, v5

    :cond_3
    return v0
.end method

.method public createReaderInstance(Ljava/lang/Object;)Ljavax/imageio/ImageReader;
    .locals 0

    new-instance p1, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;

    invoke-direct {p1, p0}, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;-><init>(Ljavax/imageio/spi/ImageReaderSpi;)V

    return-object p1
.end method

.method public getDescription(Ljava/util/Locale;)Ljava/lang/String;
    .locals 0

    const-string p0, "Standard TIFF image reader"

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

    iget-boolean p1, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReaderSpi;->registered:Z

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReaderSpi;->registered:Z

    return-void
.end method
