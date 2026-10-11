.class public Lcom/sun/imageio/plugins/jpeg/JPEGImageWriterSpi;
.super Ljavax/imageio/spi/ImageWriterSpi;
.source "SourceFile"


# static fields
.field private static readerSpiNames:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "com.sun.imageio.plugins.jpeg.JPEGImageReaderSpi"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriterSpi;->readerSpiNames:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 19

    move-object/from16 v0, p0

    const-string v1, "Oracle Corporation"

    const-string v2, "0.5"

    sget-object v3, Lcom/sun/imageio/plugins/jpeg/JPEG;->names:[Ljava/lang/String;

    sget-object v4, Lcom/sun/imageio/plugins/jpeg/JPEG;->suffixes:[Ljava/lang/String;

    sget-object v5, Lcom/sun/imageio/plugins/jpeg/JPEG;->MIMETypes:[Ljava/lang/String;

    const-string v6, "com.sun.imageio.plugins.jpeg.JPEGImageWriter"

    const/4 v7, 0x1

    new-array v8, v7, [Ljava/lang/Class;

    move-object v7, v8

    const/4 v9, 0x0

    const-class v10, Ljavax/imageio/stream/ImageOutputStream;

    aput-object v10, v8, v9

    sget-object v8, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriterSpi;->readerSpiNames:[Ljava/lang/String;

    const/4 v9, 0x1

    const-string v10, "javax_imageio_jpeg_stream_1.0"

    const-string v11, "com.sun.imageio.plugins.jpeg.JPEGStreamMetadataFormat"

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x1

    const-string v15, "javax_imageio_jpeg_image_1.0"

    const-string v16, "com.sun.imageio.plugins.jpeg.JPEGImageMetadataFormat"

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-direct/range {v0 .. v18}, Ljavax/imageio/spi/ImageWriterSpi;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public canEncodeImage(Ljavax/imageio/ImageTypeSpecifier;)Z
    .locals 4

    invoke-virtual {p1}, Ljavax/imageio/ImageTypeSpecifier;->getSampleModel()Ljava/awt/image/SampleModel;

    move-result-object p0

    invoke-virtual {p1}, Ljavax/imageio/ImageTypeSpecifier;->getColorModel()Ljava/awt/image/ColorModel;

    move-result-object p1

    invoke-virtual {p1}, Ljava/awt/image/ColorModel;->hasAlpha()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Ljava/awt/image/SampleModel;->getSampleSize()[I

    move-result-object p0

    aget p1, p0, v0

    const/4 v1, 0x1

    move v2, v1

    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_2

    aget v3, p0, v2

    if-le v3, p1, :cond_1

    move p1, v3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    if-lt p1, v1, :cond_4

    const/16 p0, 0x8

    if-le p1, p0, :cond_3

    goto :goto_1

    :cond_3
    return v1

    :cond_4
    :goto_1
    return v0
.end method

.method public createWriterInstance(Ljava/lang/Object;)Ljavax/imageio/ImageWriter;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/imageio/IIOException;
        }
    .end annotation

    new-instance p1, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;

    invoke-direct {p1, p0}, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;-><init>(Ljavax/imageio/spi/ImageWriterSpi;)V

    return-object p1
.end method

.method public getDescription(Ljava/util/Locale;)Ljava/lang/String;
    .locals 0

    const-string p0, "Standard JPEG Image Writer"

    return-object p0
.end method

.method public isFormatLossless()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
