.class public Lcom/sun/imageio/plugins/gif/GIFImageReaderSpi;
.super Ljavax/imageio/spi/ImageReaderSpi;
.source "SourceFile"


# static fields
.field private static final MIMETypes:[Ljava/lang/String;

.field private static final names:[Ljava/lang/String;

.field private static final readerClassName:Ljava/lang/String; = "com.sun.imageio.plugins.gif.GIFImageReader"

.field private static final suffixes:[Ljava/lang/String;

.field private static final vendorName:Ljava/lang/String; = "Oracle Corporation"

.field private static final version:Ljava/lang/String; = "1.0"

.field private static final writerSpiNames:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-string v0, "GIF"

    const-string v1, "gif"

    filled-new-array {v1, v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sun/imageio/plugins/gif/GIFImageReaderSpi;->names:[Ljava/lang/String;

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sun/imageio/plugins/gif/GIFImageReaderSpi;->suffixes:[Ljava/lang/String;

    const-string v0, "image/gif"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sun/imageio/plugins/gif/GIFImageReaderSpi;->MIMETypes:[Ljava/lang/String;

    const-string v0, "com.sun.imageio.plugins.gif.GIFImageWriterSpi"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sun/imageio/plugins/gif/GIFImageReaderSpi;->writerSpiNames:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 19

    move-object/from16 v0, p0

    const-string v1, "Oracle Corporation"

    const-string v2, "1.0"

    sget-object v3, Lcom/sun/imageio/plugins/gif/GIFImageReaderSpi;->names:[Ljava/lang/String;

    sget-object v4, Lcom/sun/imageio/plugins/gif/GIFImageReaderSpi;->suffixes:[Ljava/lang/String;

    sget-object v5, Lcom/sun/imageio/plugins/gif/GIFImageReaderSpi;->MIMETypes:[Ljava/lang/String;

    const-string v6, "com.sun.imageio.plugins.gif.GIFImageReader"

    const/4 v7, 0x1

    new-array v8, v7, [Ljava/lang/Class;

    move-object v7, v8

    const/4 v9, 0x0

    const-class v10, Ljavax/imageio/stream/ImageInputStream;

    aput-object v10, v8, v9

    sget-object v8, Lcom/sun/imageio/plugins/gif/GIFImageReaderSpi;->writerSpiNames:[Ljava/lang/String;

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

    invoke-direct/range {v0 .. v18}, Ljavax/imageio/spi/ImageReaderSpi;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public canDecodeInput(Ljava/lang/Object;)Z
    .locals 3
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

    const/4 p0, 0x6

    new-array p0, p0, [B

    invoke-interface {p1}, Ljavax/imageio/stream/ImageInputStream;->mark()V

    invoke-interface {p1, p0}, Ljavax/imageio/stream/ImageInputStream;->readFully([B)V

    invoke-interface {p1}, Ljavax/imageio/stream/ImageInputStream;->reset()V

    aget-byte p1, p0, v0

    const/16 v1, 0x47

    if-ne p1, v1, :cond_2

    const/4 p1, 0x1

    aget-byte v1, p0, p1

    const/16 v2, 0x49

    if-ne v1, v2, :cond_2

    const/4 v1, 0x2

    aget-byte v1, p0, v1

    const/16 v2, 0x46

    if-ne v1, v2, :cond_2

    const/4 v1, 0x3

    aget-byte v1, p0, v1

    const/16 v2, 0x38

    if-ne v1, v2, :cond_2

    const/4 v1, 0x4

    aget-byte v1, p0, v1

    const/16 v2, 0x37

    if-eq v1, v2, :cond_1

    const/16 v2, 0x39

    if-ne v1, v2, :cond_2

    :cond_1
    const/4 v1, 0x5

    aget-byte p0, p0, v1

    const/16 v1, 0x61

    if-ne p0, v1, :cond_2

    move v0, p1

    :cond_2
    return v0
.end method

.method public createReaderInstance(Ljava/lang/Object;)Ljavax/imageio/ImageReader;
    .locals 0

    new-instance p1, Lcom/sun/imageio/plugins/gif/GIFImageReader;

    invoke-direct {p1, p0}, Lcom/sun/imageio/plugins/gif/GIFImageReader;-><init>(Ljavax/imageio/spi/ImageReaderSpi;)V

    return-object p1
.end method

.method public getDescription(Ljava/util/Locale;)Ljava/lang/String;
    .locals 0

    const-string p0, "Standard GIF image reader"

    return-object p0
.end method
