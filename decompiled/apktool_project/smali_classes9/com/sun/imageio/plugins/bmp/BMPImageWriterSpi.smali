.class public Lcom/sun/imageio/plugins/bmp/BMPImageWriterSpi;
.super Ljavax/imageio/spi/ImageWriterSpi;
.source "SourceFile"


# static fields
.field private static entensions:[Ljava/lang/String;

.field private static formatNames:[Ljava/lang/String;

.field private static mimeType:[Ljava/lang/String;

.field private static readerSpiNames:[Ljava/lang/String;


# instance fields
.field private registered:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-string v0, "com.sun.imageio.plugins.bmp.BMPImageReaderSpi"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sun/imageio/plugins/bmp/BMPImageWriterSpi;->readerSpiNames:[Ljava/lang/String;

    const-string v0, "BMP"

    const-string v1, "bmp"

    filled-new-array {v1, v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sun/imageio/plugins/bmp/BMPImageWriterSpi;->formatNames:[Ljava/lang/String;

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sun/imageio/plugins/bmp/BMPImageWriterSpi;->entensions:[Ljava/lang/String;

    const-string v0, "image/bmp"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sun/imageio/plugins/bmp/BMPImageWriterSpi;->mimeType:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 19

    move-object/from16 v0, p0

    const-string v1, "Oracle Corporation"

    const-string v2, "1.0"

    sget-object v3, Lcom/sun/imageio/plugins/bmp/BMPImageWriterSpi;->formatNames:[Ljava/lang/String;

    sget-object v4, Lcom/sun/imageio/plugins/bmp/BMPImageWriterSpi;->entensions:[Ljava/lang/String;

    sget-object v5, Lcom/sun/imageio/plugins/bmp/BMPImageWriterSpi;->mimeType:[Ljava/lang/String;

    const-string v6, "com.sun.imageio.plugins.bmp.BMPImageWriter"

    const/4 v7, 0x1

    new-array v8, v7, [Ljava/lang/Class;

    move-object v7, v8

    const-class v9, Ljavax/imageio/stream/ImageOutputStream;

    const/4 v15, 0x0

    aput-object v9, v8, v15

    sget-object v8, Lcom/sun/imageio/plugins/bmp/BMPImageWriterSpi;->readerSpiNames:[Ljava/lang/String;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x1

    const-string v16, "javax_imageio_bmp_1.0"

    move-object/from16 v15, v16

    const-string v16, "com.sun.imageio.plugins.bmp.BMPMetadataFormat"

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-direct/range {v0 .. v18}, Ljavax/imageio/spi/ImageWriterSpi;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/sun/imageio/plugins/bmp/BMPImageWriterSpi;->registered:Z

    return-void
.end method


# virtual methods
.method public canEncodeImage(Ljavax/imageio/ImageTypeSpecifier;)Z
    .locals 4

    invoke-virtual {p1}, Ljavax/imageio/ImageTypeSpecifier;->getSampleModel()Ljava/awt/image/SampleModel;

    move-result-object p0

    invoke-virtual {p0}, Ljava/awt/image/SampleModel;->getDataType()I

    move-result p0

    const/4 v0, 0x0

    if-ltz p0, :cond_4

    const/4 v1, 0x3

    if-le p0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljavax/imageio/ImageTypeSpecifier;->getSampleModel()Ljava/awt/image/SampleModel;

    move-result-object p1

    invoke-virtual {p1}, Ljava/awt/image/SampleModel;->getNumBands()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    if-eq v2, v1, :cond_1

    return v0

    :cond_1
    if-ne v2, v3, :cond_2

    if-eqz p0, :cond_2

    return v0

    :cond_2
    if-lez p0, :cond_3

    instance-of p0, p1, Ljava/awt/image/SinglePixelPackedSampleModel;

    if-nez p0, :cond_3

    return v0

    :cond_3
    return v3

    :cond_4
    :goto_0
    return v0
.end method

.method public createWriterInstance(Ljava/lang/Object;)Ljavax/imageio/ImageWriter;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/imageio/IIOException;
        }
    .end annotation

    new-instance p1, Lcom/sun/imageio/plugins/bmp/BMPImageWriter;

    invoke-direct {p1, p0}, Lcom/sun/imageio/plugins/bmp/BMPImageWriter;-><init>(Ljavax/imageio/spi/ImageWriterSpi;)V

    return-object p1
.end method

.method public getDescription(Ljava/util/Locale;)Ljava/lang/String;
    .locals 0

    const-string p0, "Standard BMP Image Writer"

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

    iget-boolean p1, p0, Lcom/sun/imageio/plugins/bmp/BMPImageWriterSpi;->registered:Z

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/sun/imageio/plugins/bmp/BMPImageWriterSpi;->registered:Z

    return-void
.end method
