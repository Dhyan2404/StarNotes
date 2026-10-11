.class public Lcom/sun/imageio/plugins/gif/GIFImageWriterSpi;
.super Ljavax/imageio/spi/ImageWriterSpi;
.source "SourceFile"


# static fields
.field private static final MIMETypes:[Ljava/lang/String;

.field private static final names:[Ljava/lang/String;

.field private static final readerSpiNames:[Ljava/lang/String;

.field private static final suffixes:[Ljava/lang/String;

.field private static final vendorName:Ljava/lang/String; = "Oracle Corporation"

.field private static final version:Ljava/lang/String; = "1.0"

.field private static final writerClassName:Ljava/lang/String; = "com.sun.imageio.plugins.gif.GIFImageWriter"


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-string v0, "GIF"

    const-string v1, "gif"

    filled-new-array {v1, v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sun/imageio/plugins/gif/GIFImageWriterSpi;->names:[Ljava/lang/String;

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sun/imageio/plugins/gif/GIFImageWriterSpi;->suffixes:[Ljava/lang/String;

    const-string v0, "image/gif"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sun/imageio/plugins/gif/GIFImageWriterSpi;->MIMETypes:[Ljava/lang/String;

    const-string v0, "com.sun.imageio.plugins.gif.GIFImageReaderSpi"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sun/imageio/plugins/gif/GIFImageWriterSpi;->readerSpiNames:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 19

    move-object/from16 v0, p0

    const-string v1, "Oracle Corporation"

    const-string v2, "1.0"

    sget-object v3, Lcom/sun/imageio/plugins/gif/GIFImageWriterSpi;->names:[Ljava/lang/String;

    sget-object v4, Lcom/sun/imageio/plugins/gif/GIFImageWriterSpi;->suffixes:[Ljava/lang/String;

    sget-object v5, Lcom/sun/imageio/plugins/gif/GIFImageWriterSpi;->MIMETypes:[Ljava/lang/String;

    const-string v6, "com.sun.imageio.plugins.gif.GIFImageWriter"

    const/4 v7, 0x1

    new-array v8, v7, [Ljava/lang/Class;

    move-object v7, v8

    const/4 v9, 0x0

    const-class v10, Ljavax/imageio/stream/ImageOutputStream;

    aput-object v10, v8, v9

    sget-object v8, Lcom/sun/imageio/plugins/gif/GIFImageWriterSpi;->readerSpiNames:[Ljava/lang/String;

    const/4 v9, 0x1

    const-string v10, "javax_imageio_gif_stream_1.0"

    const-string v11, "com.sun.imageio.plugins.gif.GIFStreamMetadataFormat"

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x1

    const-string v15, "javax_imageio_gif_image_1.0"

    const-string v16, "com.sun.imageio.plugins.gif.GIFImageMetadataFormat"

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-direct/range {v0 .. v18}, Ljavax/imageio/spi/ImageWriterSpi;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public canEncodeImage(Ljavax/imageio/ImageTypeSpecifier;)Z
    .locals 6

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljavax/imageio/ImageTypeSpecifier;->getSampleModel()Ljava/awt/image/SampleModel;

    move-result-object p0

    invoke-virtual {p1}, Ljavax/imageio/ImageTypeSpecifier;->getColorModel()Ljava/awt/image/ColorModel;

    move-result-object v0

    invoke-virtual {p0}, Ljava/awt/image/SampleModel;->getNumBands()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    invoke-virtual {p0, v2}, Ljava/awt/image/SampleModel;->getSampleSize(I)I

    move-result v1

    const/16 v4, 0x8

    if-gt v1, v4, :cond_1

    invoke-virtual {p0}, Ljava/awt/image/SampleModel;->getWidth()I

    move-result v1

    const v5, 0xffff

    if-gt v1, v5, :cond_1

    invoke-virtual {p0}, Ljava/awt/image/SampleModel;->getHeight()I

    move-result p0

    if-gt p0, v5, :cond_1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/awt/image/ColorModel;->getComponentSize()[I

    move-result-object p0

    aget p0, p0, v2

    if-gt p0, v4, :cond_1

    :cond_0
    move v2, v3

    :cond_1
    if-eqz v2, :cond_2

    return v3

    :cond_2
    invoke-static {p1}, Lcom/sun/imageio/plugins/common/PaletteBuilder;->canCreatePalette(Ljavax/imageio/ImageTypeSpecifier;)Z

    move-result p0

    return p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "type == null!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public createWriterInstance(Ljava/lang/Object;)Ljavax/imageio/ImageWriter;
    .locals 0

    new-instance p1, Lcom/sun/imageio/plugins/gif/GIFImageWriter;

    invoke-direct {p1, p0}, Lcom/sun/imageio/plugins/gif/GIFImageWriter;-><init>(Lcom/sun/imageio/plugins/gif/GIFImageWriterSpi;)V

    return-object p1
.end method

.method public getDescription(Ljava/util/Locale;)Ljava/lang/String;
    .locals 0

    const-string p0, "Standard GIF image writer"

    return-object p0
.end method
