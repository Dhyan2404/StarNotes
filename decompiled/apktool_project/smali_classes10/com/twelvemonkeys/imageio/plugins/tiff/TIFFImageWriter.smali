.class public final Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageWriter;
.super Lcom/twelvemonkeys/imageio/ImageWriterBase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageWriter$a;
    }
.end annotation


# static fields
.field public static final STANDARD_DPI:Lcom/twelvemonkeys/imageio/metadata/exif/Rational;


# instance fields
.field public e:Z

.field public f:Lcom/twelvemonkeys/imageio/metadata/exif/EXIFWriter;

.field public g:J


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/twelvemonkeys/imageio/metadata/exif/Rational;

    const-wide/16 v1, 0x48

    invoke-direct {v0, v1, v2}, Lcom/twelvemonkeys/imageio/metadata/exif/Rational;-><init>(J)V

    sput-object v0, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageWriter;->STANDARD_DPI:Lcom/twelvemonkeys/imageio/metadata/exif/Rational;

    return-void
.end method

.method public constructor <init>(Ljavax/imageio/spi/ImageWriterSpi;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/twelvemonkeys/imageio/ImageWriterBase;-><init>(Ljavax/imageio/spi/ImageWriterSpi;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageWriter;->e:Z

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageWriter;->f:Lcom/twelvemonkeys/imageio/metadata/exif/EXIFWriter;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageWriter;->g:J

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-le v0, v2, :cond_0

    aget-object v0, p0, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    move v3, v2

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    move v3, v1

    :goto_0
    array-length v4, p0

    add-int/lit8 v5, v3, 0x1

    if-le v4, v5, :cond_1

    aget-object v3, p0, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    goto :goto_1

    :cond_1
    move v5, v3

    move v3, v1

    :goto_1
    array-length v4, p0

    if-gt v4, v5, :cond_2

    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v6, "No file specified"

    invoke-virtual {v4, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-static {v2}, Ljava/lang/System;->exit(I)V

    :cond_2
    new-instance v4, Ljava/io/File;

    aget-object p0, p0, v5

    invoke-direct {v4, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Ljavax/imageio/ImageIO;->createImageInputStream(Ljava/lang/Object;)Ljavax/imageio/stream/ImageInputStream;

    move-result-object p0

    :try_start_0
    invoke-static {p0}, Ljavax/imageio/ImageIO;->getImageReaders(Ljava/lang/Object;)Ljava/util/Iterator;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_3

    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "No reader for: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-static {v2}, Ljava/lang/System;->exit(I)V

    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/imageio/ImageReader;

    invoke-virtual {v2, p0}, Ljavax/imageio/ImageReader;->setInput(Ljava/lang/Object;)V

    invoke-virtual {v2}, Ljavax/imageio/ImageReader;->getDefaultReadParam()Ljavax/imageio/ImageReadParam;

    move-result-object v5

    invoke-virtual {v2, v1}, Ljavax/imageio/ImageReader;->getRawImageType(I)Ljavax/imageio/ImageTypeSpecifier;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljavax/imageio/ImageReadParam;->setDestinationType(Ljavax/imageio/ImageTypeSpecifier;)V

    invoke-virtual {v5}, Ljavax/imageio/IIOParam;->getDestinationType()Ljavax/imageio/ImageTypeSpecifier;

    move-result-object v6

    if-nez v6, :cond_5

    invoke-virtual {v2, v1}, Ljavax/imageio/ImageReader;->getImageTypes(I)Ljava/util/Iterator;

    move-result-object v6

    :cond_4
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljavax/imageio/ImageTypeSpecifier;

    invoke-virtual {v7}, Ljavax/imageio/ImageTypeSpecifier;->getColorModel()Ljava/awt/image/ColorModel;

    move-result-object v8

    invoke-virtual {v8}, Ljava/awt/image/ColorModel;->getColorSpace()Ljava/awt/color/ColorSpace;

    move-result-object v8

    invoke-virtual {v8}, Ljava/awt/color/ColorSpace;->getType()I

    move-result v8

    const/16 v9, 0x9

    if-ne v8, v9, :cond_4

    invoke-virtual {v5, v7}, Ljavax/imageio/ImageReadParam;->setDestinationType(Ljavax/imageio/ImageTypeSpecifier;)V

    goto :goto_2

    :cond_5
    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "param.getDestinationType(): "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljavax/imageio/IIOParam;->getDestinationType()Ljavax/imageio/ImageTypeSpecifier;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {v2, v1, v5}, Ljavax/imageio/ImageReader;->read(ILjavax/imageio/ImageReadParam;)Ljava/awt/image/BufferedImage;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    invoke-interface {p0}, Ljavax/imageio/stream/ImageInputStream;->close()V

    sget-object p0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "original: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 p0, 0x0

    if-lez v0, :cond_8

    invoke-virtual {v2}, Ljava/awt/image/BufferedImage;->getType()I

    move-result v5

    if-ne v0, v5, :cond_6

    goto :goto_3

    :cond_6
    const/16 v5, 0xd

    if-ne v0, v5, :cond_7

    const/16 v0, 0x100

    const/16 v1, 0x103

    invoke-static {v2, v0, p0, v1}, Lcom/twelvemonkeys/image/ImageUtil;->createIndexed(Ljava/awt/Image;ILjava/awt/Color;I)Ljava/awt/image/BufferedImage;

    move-result-object v2

    goto :goto_3

    :cond_7
    new-instance v5, Ljava/awt/image/BufferedImage;

    invoke-virtual {v2}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v6

    invoke-virtual {v2}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v7

    invoke-direct {v5, v6, v7, v0}, Ljava/awt/image/BufferedImage;-><init>(III)V

    invoke-virtual {v5}, Ljava/awt/image/BufferedImage;->createGraphics()Ljava/awt/Graphics2D;

    move-result-object v0

    :try_start_1
    invoke-virtual {v0, v2, v1, v1, p0}, Ljava/awt/Graphics2D;->drawImage(Ljava/awt/Image;IILjava/awt/image/ImageObserver;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v0}, Ljava/awt/Graphics2D;->dispose()V

    move-object v2, v5

    goto :goto_3

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Ljava/awt/Graphics2D;->dispose()V

    throw p0

    :cond_8
    :goto_3
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2e

    const/16 v4, 0x2d

    invoke-virtual {v0, v1, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    const-string v1, ".tif"

    invoke-static {v0, v1}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "output: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance v1, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageWriter;

    invoke-direct {v1, p0}, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageWriter;-><init>(Ljavax/imageio/spi/ImageWriterSpi;)V

    invoke-static {v0}, Ljavax/imageio/ImageIO;->createImageOutputStream(Ljava/lang/Object;)Ljavax/imageio/stream/ImageOutputStream;

    move-result-object v4

    :try_start_2
    invoke-virtual {v1, v4}, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageWriter;->setOutput(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageWriter;->getDefaultWriteParam()Ljavax/imageio/ImageWriteParam;

    move-result-object v5

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Ljavax/imageio/ImageWriteParam;->setCompressionMode(I)V

    invoke-virtual {v5}, Ljavax/imageio/ImageWriteParam;->getCompressionTypes()[Ljava/lang/String;

    move-result-object v6

    aget-object v3, v6, v3

    invoke-virtual {v5, v3}, Ljavax/imageio/ImageWriteParam;->setCompressionType(Ljava/lang/String;)V

    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "compression: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljavax/imageio/ImageWriteParam;->getLocalizedCompressionTypeName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    new-instance v3, Ljavax/imageio/IIOImage;

    invoke-direct {v3, v2, p0, p0}, Ljavax/imageio/IIOImage;-><init>(Ljava/awt/image/RenderedImage;Ljava/util/List;Ljavax/imageio/metadata/IIOMetadata;)V

    invoke-virtual {v1, p0, v3, v5}, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageWriter;->write(Ljavax/imageio/metadata/IIOMetadata;Ljavax/imageio/IIOImage;Ljavax/imageio/ImageWriteParam;)V

    sget-object p0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Write time: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v6

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-interface {v4}, Ljavax/imageio/stream/ImageInputStream;->close()V

    sget-object p0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "output.length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-static {v0}, Ljavax/imageio/ImageIO;->read(Ljava/io/File;)Ljava/awt/image/BufferedImage;

    move-result-object p0

    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "read: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageReader;->showIt(Ljava/awt/image/BufferedImage;Ljava/lang/String;)V

    return-void

    :catchall_1
    move-exception p0

    invoke-interface {v4}, Ljavax/imageio/stream/ImageInputStream;->close()V

    throw p0

    :catchall_2
    move-exception v0

    invoke-interface {p0}, Ljavax/imageio/stream/ImageInputStream;->close()V

    throw v0
.end method


# virtual methods
.method public final b([I)[S
    .locals 3

    array-length p0, p1

    new-array v0, p0, [S

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p0, :cond_0

    aget v2, p1, v1

    int-to-short v2, v2

    aput-short v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final c(Ljava/awt/image/SampleModel;)I
    .locals 2

    const/4 p0, 0x0

    move v0, p0

    :goto_0
    invoke-virtual {p1}, Ljava/awt/image/SampleModel;->getNumBands()I

    move-result v1

    if-ge p0, v1, :cond_0

    invoke-virtual {p1, p0}, Ljava/awt/image/SampleModel;->getSampleSize(I)I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public canWriteSequence()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public convertImageMetadata(Ljavax/imageio/metadata/IIOMetadata;Ljavax/imageio/ImageTypeSpecifier;Ljavax/imageio/ImageWriteParam;)Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageMetadata;
    .locals 4

    const-string v0, "javax_imageio_1.0"

    const-string v1, "com_sun_media_imageio_plugins_tiff_image_1.0"

    const-string v2, "inData"

    .line 2
    invoke-static {p1, v2}, Lcom/twelvemonkeys/lang/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v2, "imageType"

    .line 3
    invoke-static {p2, v2}, Lcom/twelvemonkeys/lang/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    instance-of v2, p1, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageMetadata;

    if-eqz v2, :cond_0

    .line 5
    check-cast p1, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageMetadata;

    invoke-virtual {p1}, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageMetadata;->f()Lcom/twelvemonkeys/imageio/metadata/Directory;

    move-result-object p1

    goto :goto_1

    .line 6
    :cond_0
    new-instance v2, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageMetadata;

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageMetadata;-><init>(Ljava/util/Collection;)V

    .line 7
    :try_start_0
    invoke-virtual {p1}, Ljavax/imageio/metadata/IIOMetadata;->getMetadataFormatNames()[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 8
    invoke-virtual {p1, v1}, Ljavax/imageio/metadata/IIOMetadata;->getAsTree(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object p1

    invoke-virtual {v2, v1, p1}, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageMetadata;->setFromTree(Ljava/lang/String;Lorg/w3c/dom/Node;)V

    goto :goto_0

    .line 9
    :cond_1
    invoke-virtual {p1}, Ljavax/imageio/metadata/IIOMetadata;->isStandardMetadataFormatSupported()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 10
    invoke-virtual {p1, v0}, Ljavax/imageio/metadata/IIOMetadata;->getAsTree(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object p1

    invoke-virtual {v2, v0, p1}, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageMetadata;->setFromTree(Ljava/lang/String;Lorg/w3c/dom/Node;)V
    :try_end_0
    .catch Ljavax/imageio/metadata/IIOInvalidTreeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return-object p0

    .line 11
    :catch_0
    :goto_0
    invoke-virtual {v2}, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageMetadata;->f()Lcom/twelvemonkeys/imageio/metadata/Directory;

    move-result-object p1

    .line 12
    :goto_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageWriter;->h(Lcom/twelvemonkeys/imageio/metadata/Directory;Ljavax/imageio/ImageTypeSpecifier;Ljavax/imageio/ImageWriteParam;)Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageMetadata;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic convertImageMetadata(Ljavax/imageio/metadata/IIOMetadata;Ljavax/imageio/ImageTypeSpecifier;Ljavax/imageio/ImageWriteParam;)Ljavax/imageio/metadata/IIOMetadata;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageWriter;->convertImageMetadata(Ljavax/imageio/metadata/IIOMetadata;Ljavax/imageio/ImageTypeSpecifier;Ljavax/imageio/ImageWriteParam;)Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageMetadata;

    move-result-object p0

    return-object p0
.end method

.method public convertStreamMetadata(Ljavax/imageio/metadata/IIOMetadata;Ljavax/imageio/ImageWriteParam;)Ljavax/imageio/metadata/IIOMetadata;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/twelvemonkeys/imageio/ImageWriterBase;->convertStreamMetadata(Ljavax/imageio/metadata/IIOMetadata;Ljavax/imageio/ImageWriteParam;)Ljavax/imageio/metadata/IIOMetadata;

    move-result-object p0

    return-object p0
.end method

.method public final d(Ljava/awt/image/IndexColorModel;)[S
    .locals 6

    invoke-virtual {p1}, Ljava/awt/image/ColorModel;->getPixelSize()I

    move-result v0

    int-to-double v0, v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    const-wide/high16 v2, 0x4008000000000000L    # 3.0

    mul-double/2addr v0, v2

    double-to-int v0, v0

    new-array v1, v0, [S

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/awt/image/IndexColorModel;->getMapSize()I

    move-result v3

    if-ge v2, v3, :cond_0

    invoke-virtual {p1, v2}, Ljava/awt/image/IndexColorModel;->getRGB(I)I

    move-result v3

    shr-int/lit8 v4, v3, 0x10

    and-int/lit16 v4, v4, 0xff

    invoke-virtual {p0, v4}, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageWriter;->i(I)I

    move-result v4

    int-to-short v4, v4

    aput-short v4, v1, v2

    div-int/lit8 v4, v0, 0x3

    add-int/2addr v4, v2

    shr-int/lit8 v5, v3, 0x8

    and-int/lit16 v5, v5, 0xff

    invoke-virtual {p0, v5}, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageWriter;->i(I)I

    move-result v5

    int-to-short v5, v5

    aput-short v5, v1, v4

    mul-int/lit8 v4, v0, 0x2

    div-int/lit8 v4, v4, 0x3

    add-int/2addr v4, v2

    and-int/lit16 v3, v3, 0xff

    invoke-virtual {p0, v3}, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageWriter;->i(I)I

    move-result v3

    int-to-short v3, v3

    aput-short v3, v1, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public final e(Ljava/awt/image/RenderedImage;Ljavax/imageio/ImageWriteParam;Ljava/util/Map;)Ljava/io/DataOutput;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/awt/image/RenderedImage;",
            "Ljavax/imageio/ImageWriteParam;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/twelvemonkeys/imageio/metadata/Entry;",
            ">;)",
            "Ljava/io/DataOutput;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    const/16 v3, 0x103

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/twelvemonkeys/imageio/metadata/Entry;

    invoke-interface {v3}, Lcom/twelvemonkeys/imageio/metadata/Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const/4 v3, 0x1

    if-eq v8, v3, :cond_b

    const/4 v4, 0x3

    const/4 v5, 0x2

    if-eq v8, v5, :cond_7

    if-eq v8, v4, :cond_7

    const/4 v6, 0x4

    if-eq v8, v6, :cond_7

    const/4 v4, 0x5

    const/16 v6, 0x8

    const/16 v7, 0x13d

    const/4 v9, 0x0

    if-eq v8, v4, :cond_5

    if-eq v8, v6, :cond_2

    const v4, 0x8005

    if-eq v8, v4, :cond_1

    const v4, 0x80b2

    if-ne v8, v4, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Unsupported TIFF compression: %d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, v0, Lcom/twelvemonkeys/imageio/ImageWriterBase;->imageOutput:Ljavax/imageio/stream/ImageOutputStream;

    invoke-static {v0}, Lcom/twelvemonkeys/imageio/util/IIOUtil;->createStreamAdapter(Ljavax/imageio/stream/ImageOutputStream;)Ljava/io/OutputStream;

    move-result-object v0

    new-instance v1, Lcom/twelvemonkeys/io/enc/EncoderStream;

    new-instance v2, Lcom/twelvemonkeys/io/enc/PackBitsEncoder;

    invoke-direct {v2}, Lcom/twelvemonkeys/io/enc/PackBitsEncoder;-><init>()V

    invoke-direct {v1, v0, v2, v3}, Lcom/twelvemonkeys/io/enc/EncoderStream;-><init>(Ljava/io/OutputStream;Lcom/twelvemonkeys/io/enc/Encoder;Z)V

    new-instance v0, Ljava/io/DataOutputStream;

    invoke-direct {v0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    return-object v0

    :cond_2
    :goto_0
    invoke-virtual/range {p2 .. p2}, Ljavax/imageio/ImageWriteParam;->getCompressionMode()I

    move-result v4

    if-ne v4, v5, :cond_3

    const/high16 v3, 0x41000000    # 8.0f

    invoke-virtual/range {p2 .. p2}, Ljavax/imageio/ImageWriteParam;->getCompressionQuality()F

    move-result v4

    mul-float/2addr v4, v3

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v3

    rsub-int/lit8 v3, v3, 0x9

    :cond_3
    iget-object v4, v0, Lcom/twelvemonkeys/imageio/ImageWriterBase;->imageOutput:Ljavax/imageio/stream/ImageOutputStream;

    invoke-static {v4}, Lcom/twelvemonkeys/imageio/util/IIOUtil;->createStreamAdapter(Ljavax/imageio/stream/ImageOutputStream;)Ljava/io/OutputStream;

    move-result-object v4

    new-instance v11, Ljava/util/zip/DeflaterOutputStream;

    new-instance v6, Ljava/util/zip/Deflater;

    invoke-direct {v6, v3}, Ljava/util/zip/Deflater;-><init>(I)V

    const/16 v3, 0x400

    invoke-direct {v11, v4, v6, v3}, Ljava/util/zip/DeflaterOutputStream;-><init>(Ljava/io/OutputStream;Ljava/util/zip/Deflater;I)V

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/twelvemonkeys/imageio/metadata/Entry;

    invoke-interface {v2}, Lcom/twelvemonkeys/imageio/metadata/Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    new-instance v2, Lcom/sunia/HTREnginev2/nzh;

    invoke-interface/range {p1 .. p1}, Ljava/awt/image/RenderedImage;->getTileWidth()I

    move-result v12

    invoke-interface {v1, v9, v9}, Ljava/awt/image/RenderedImage;->getTile(II)Ljava/awt/image/Raster;

    move-result-object v3

    invoke-virtual {v3}, Ljava/awt/image/Raster;->getNumBands()I

    move-result v13

    invoke-interface/range {p1 .. p1}, Ljava/awt/image/RenderedImage;->getColorModel()Ljava/awt/image/ColorModel;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/awt/image/ColorModel;->getComponentSize(I)I

    move-result v14

    iget-object v0, v0, Lcom/twelvemonkeys/imageio/ImageWriterBase;->imageOutput:Ljavax/imageio/stream/ImageOutputStream;

    invoke-interface {v0}, Ljavax/imageio/stream/ImageInputStream;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v15

    move-object v10, v2

    invoke-direct/range {v10 .. v15}, Lcom/sunia/HTREnginev2/nzh;-><init>(Ljava/io/OutputStream;IIILjava/nio/ByteOrder;)V

    move-object v11, v2

    :cond_4
    new-instance v0, Ljava/io/DataOutputStream;

    invoke-direct {v0, v11}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    return-object v0

    :cond_5
    iget-object v3, v0, Lcom/twelvemonkeys/imageio/ImageWriterBase;->imageOutput:Ljavax/imageio/stream/ImageOutputStream;

    invoke-static {v3}, Lcom/twelvemonkeys/imageio/util/IIOUtil;->createStreamAdapter(Ljavax/imageio/stream/ImageOutputStream;)Ljava/io/OutputStream;

    move-result-object v3

    new-instance v11, Lcom/twelvemonkeys/io/enc/EncoderStream;

    new-instance v4, Lcom/sunia/HTREnginev2/rui;

    invoke-interface/range {p1 .. p1}, Ljava/awt/image/RenderedImage;->getTileWidth()I

    move-result v8

    invoke-interface/range {p1 .. p1}, Ljava/awt/image/RenderedImage;->getTileHeight()I

    move-result v10

    mul-int/2addr v8, v10

    invoke-interface/range {p1 .. p1}, Ljava/awt/image/RenderedImage;->getColorModel()Ljava/awt/image/ColorModel;

    move-result-object v10

    invoke-virtual {v10}, Ljava/awt/image/ColorModel;->getPixelSize()I

    move-result v10

    mul-int/2addr v8, v10

    add-int/lit8 v8, v8, 0x7

    div-int/2addr v8, v6

    int-to-long v12, v8

    invoke-direct {v4, v12, v13}, Lcom/sunia/HTREnginev2/rui;-><init>(J)V

    invoke-direct {v11, v3, v4}, Lcom/twelvemonkeys/io/enc/EncoderStream;-><init>(Ljava/io/OutputStream;Lcom/twelvemonkeys/io/enc/Encoder;)V

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/twelvemonkeys/imageio/metadata/Entry;

    invoke-interface {v2}, Lcom/twelvemonkeys/imageio/metadata/Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    new-instance v2, Lcom/sunia/HTREnginev2/nzh;

    invoke-interface/range {p1 .. p1}, Ljava/awt/image/RenderedImage;->getTileWidth()I

    move-result v12

    invoke-interface {v1, v9, v9}, Ljava/awt/image/RenderedImage;->getTile(II)Ljava/awt/image/Raster;

    move-result-object v3

    invoke-virtual {v3}, Ljava/awt/image/Raster;->getNumBands()I

    move-result v13

    invoke-interface/range {p1 .. p1}, Ljava/awt/image/RenderedImage;->getColorModel()Ljava/awt/image/ColorModel;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/awt/image/ColorModel;->getComponentSize(I)I

    move-result v14

    iget-object v0, v0, Lcom/twelvemonkeys/imageio/ImageWriterBase;->imageOutput:Ljavax/imageio/stream/ImageOutputStream;

    invoke-interface {v0}, Ljavax/imageio/stream/ImageInputStream;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v15

    move-object v10, v2

    invoke-direct/range {v10 .. v15}, Lcom/sunia/HTREnginev2/nzh;-><init>(Ljava/io/OutputStream;IIILjava/nio/ByteOrder;)V

    move-object v11, v2

    :cond_6
    new-instance v0, Ljava/io/DataOutputStream;

    invoke-direct {v0, v11}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    return-object v0

    :cond_7
    if-eq v8, v5, :cond_9

    if-ne v8, v4, :cond_8

    const/16 v4, 0x124

    goto :goto_1

    :cond_8
    const/16 v4, 0x125

    :goto_1
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/twelvemonkeys/imageio/metadata/Entry;

    invoke-interface {v4}, Lcom/twelvemonkeys/imageio/metadata/Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    goto :goto_2

    :cond_9
    const-wide/16 v4, 0x0

    :goto_2
    move-wide v10, v4

    const/16 v4, 0x10a

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/twelvemonkeys/imageio/metadata/Entry;

    if-eqz v2, :cond_a

    invoke-interface {v2}, Lcom/twelvemonkeys/imageio/metadata/Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    goto :goto_3

    :cond_a
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_3
    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v9

    iget-object v0, v0, Lcom/twelvemonkeys/imageio/ImageWriterBase;->imageOutput:Ljavax/imageio/stream/ImageOutputStream;

    invoke-static {v0}, Lcom/twelvemonkeys/imageio/util/IIOUtil;->createStreamAdapter(Ljavax/imageio/stream/ImageOutputStream;)Ljava/io/OutputStream;

    move-result-object v5

    new-instance v0, Lcom/twelvemonkeys/imageio/plugins/tiff/CCITTFaxEncoderStream;

    invoke-interface/range {p1 .. p1}, Ljava/awt/image/RenderedImage;->getTileWidth()I

    move-result v6

    invoke-interface/range {p1 .. p1}, Ljava/awt/image/RenderedImage;->getTileHeight()I

    move-result v7

    move-object v4, v0

    invoke-direct/range {v4 .. v11}, Lcom/twelvemonkeys/imageio/plugins/tiff/CCITTFaxEncoderStream;-><init>(Ljava/io/OutputStream;IIIIJ)V

    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    return-object v1

    :cond_b
    iget-object v0, v0, Lcom/twelvemonkeys/imageio/ImageWriterBase;->imageOutput:Ljavax/imageio/stream/ImageOutputStream;

    return-object v0
.end method

.method public endWriteSequence()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageWriter;->e:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageWriter;->e:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageWriter;->f:Lcom/twelvemonkeys/imageio/metadata/exif/EXIFWriter;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageWriter;->g:J

    iget-object p0, p0, Lcom/twelvemonkeys/imageio/ImageWriterBase;->imageOutput:Ljavax/imageio/stream/ImageOutputStream;

    invoke-interface {p0}, Ljavax/imageio/stream/ImageInputStream;->flush()V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "prepareWriteSequence() must be called before endWriteSequence()!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final f(Ljava/nio/ByteBuffer;Ljava/io/DataOutput;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v0

    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v1

    invoke-interface {p2, p0, v0, v1}, Ljava/io/DataOutput;->write([BII)V

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    return-void
.end method

.method public final g(Ljava/awt/image/ColorModel;)I
    .locals 5

    invoke-virtual {p1}, Ljava/awt/image/ColorModel;->getPixelSize()I

    move-result p0

    const/4 v0, 0x3

    const/4 v1, 0x1

    if-ne p0, v1, :cond_3

    instance-of p0, p1, Ljava/awt/image/IndexColorModel;

    if-eqz p0, :cond_2

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Ljava/awt/image/ColorModel;->getRGB(I)I

    move-result v2

    const/high16 v3, -0x1000000

    const/4 v4, -0x1

    if-ne v2, v4, :cond_0

    invoke-virtual {p1, v1}, Ljava/awt/image/ColorModel;->getRGB(I)I

    move-result v2

    if-ne v2, v3, :cond_0

    return p0

    :cond_0
    invoke-virtual {p1, p0}, Ljava/awt/image/ColorModel;->getRGB(I)I

    move-result p0

    if-ne p0, v3, :cond_1

    invoke-virtual {p1, v1}, Ljava/awt/image/ColorModel;->getRGB(I)I

    move-result p0

    if-eq p0, v4, :cond_2

    :cond_1
    return v0

    :cond_2
    return v1

    :cond_3
    instance-of p0, p1, Ljava/awt/image/IndexColorModel;

    if-eqz p0, :cond_4

    return v0

    :cond_4
    invoke-virtual {p1}, Ljava/awt/image/ColorModel;->getColorSpace()Ljava/awt/color/ColorSpace;

    move-result-object p0

    invoke-virtual {p0}, Ljava/awt/color/ColorSpace;->getType()I

    move-result p0

    const/4 v0, 0x5

    if-eq p0, v0, :cond_7

    const/4 v2, 0x6

    if-eq p0, v2, :cond_6

    const/16 v1, 0x9

    if-ne p0, v1, :cond_5

    return v0

    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Can\'t determine PhotometricInterpretation for color model: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    return v1

    :cond_7
    const/4 p0, 0x2

    return p0
.end method

.method public getDefaultImageMetadata(Ljavax/imageio/ImageTypeSpecifier;Ljavax/imageio/ImageWriteParam;)Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageMetadata;
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0, p1, p2}, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageWriter;->h(Lcom/twelvemonkeys/imageio/metadata/Directory;Ljavax/imageio/ImageTypeSpecifier;Ljavax/imageio/ImageWriteParam;)Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageMetadata;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getDefaultImageMetadata(Ljavax/imageio/ImageTypeSpecifier;Ljavax/imageio/ImageWriteParam;)Ljavax/imageio/metadata/IIOMetadata;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageWriter;->getDefaultImageMetadata(Ljavax/imageio/ImageTypeSpecifier;Ljavax/imageio/ImageWriteParam;)Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageMetadata;

    move-result-object p0

    return-object p0
.end method

.method public getDefaultStreamMetadata(Ljavax/imageio/ImageWriteParam;)Ljavax/imageio/metadata/IIOMetadata;
    .locals 0

    invoke-super {p0, p1}, Lcom/twelvemonkeys/imageio/ImageWriterBase;->getDefaultStreamMetadata(Ljavax/imageio/ImageWriteParam;)Ljavax/imageio/metadata/IIOMetadata;

    move-result-object p0

    return-object p0
.end method

.method public getDefaultWriteParam()Ljavax/imageio/ImageWriteParam;
    .locals 0

    new-instance p0, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageWriteParam;

    invoke-direct {p0}, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageWriteParam;-><init>()V

    return-object p0
.end method

.method public final h(Lcom/twelvemonkeys/imageio/metadata/Directory;Ljavax/imageio/ImageTypeSpecifier;Ljavax/imageio/ImageWriteParam;)Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageMetadata;
    .locals 2

    const-string p3, "imageType"

    invoke-static {p2, p3}, Lcom/twelvemonkeys/lang/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance p3, Ljava/util/LinkedHashMap;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/twelvemonkeys/imageio/metadata/Directory;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0xa

    goto :goto_0

    :cond_0
    const/16 v0, 0x14

    :goto_0
    invoke-direct {p3, v0}, Ljava/util/LinkedHashMap;-><init>(I)V

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twelvemonkeys/imageio/metadata/Entry;

    invoke-interface {v0}, Lcom/twelvemonkeys/imageio/metadata/Entry;->getIdentifier()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-interface {p3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    const/16 p1, 0x106

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v1, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageWriter$a;

    invoke-virtual {p2}, Ljavax/imageio/ImageTypeSpecifier;->getColorModel()Ljava/awt/image/ColorModel;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageWriter;->g(Ljava/awt/image/ColorModel;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 p2, 0x3

    invoke-direct {v1, p1, p2, p0}, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageWriter$a;-><init>(ISLjava/lang/Object;)V

    invoke-interface {p3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p0, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageMetadata;

    invoke-interface {p3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageMetadata;-><init>(Ljava/util/Collection;)V

    return-object p0
.end method

.method public final i(I)I
    .locals 0

    mul-int/lit16 p1, p1, 0x101

    return p1
.end method

.method public final j(Ljava/io/DataOutput;Ljava/awt/image/RenderedImage;I[I[I)V
    .locals 33
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljavax/imageio/ImageWriter;->processImageStarted(I)V

    invoke-interface/range {p2 .. p2}, Ljava/awt/image/RenderedImage;->getMinTileY()I

    move-result v4

    invoke-interface/range {p2 .. p2}, Ljava/awt/image/RenderedImage;->getNumYTiles()I

    move-result v5

    add-int/2addr v5, v4

    invoke-interface/range {p2 .. p2}, Ljava/awt/image/RenderedImage;->getMinTileX()I

    move-result v6

    invoke-interface/range {p2 .. p2}, Ljava/awt/image/RenderedImage;->getNumXTiles()I

    move-result v7

    add-int/2addr v7, v6

    invoke-interface/range {p2 .. p2}, Ljava/awt/image/RenderedImage;->getTileHeight()I

    move-result v8

    invoke-interface/range {p2 .. p2}, Ljava/awt/image/RenderedImage;->getTileWidth()I

    move-result v9

    invoke-interface/range {p2 .. p2}, Ljava/awt/image/RenderedImage;->getSampleModel()Ljava/awt/image/SampleModel;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/awt/image/SampleModel;->getSampleSize(I)I

    move-result v10

    invoke-interface/range {p2 .. p2}, Ljava/awt/image/RenderedImage;->getSampleModel()Ljava/awt/image/SampleModel;

    move-result-object v11

    invoke-virtual {v11}, Ljava/awt/image/SampleModel;->getNumBands()I

    move-result v11

    mul-int v12, v9, v11

    mul-int/2addr v12, v10

    add-int/lit8 v12, v12, 0x7

    const/16 v13, 0x8

    div-int/2addr v12, v13

    invoke-static {v12}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v12

    :goto_0
    if-ge v4, v5, :cond_1d

    move v14, v6

    :goto_1
    if-ge v14, v7, :cond_1b

    move-object/from16 v15, p2

    invoke-interface {v15, v14, v4}, Ljava/awt/image/RenderedImage;->getTile(II)Ljava/awt/image/Raster;

    move-result-object v3

    invoke-virtual {v3}, Ljava/awt/image/Raster;->getMinX()I

    move-result v16

    invoke-virtual {v3}, Ljava/awt/image/Raster;->getSampleModelTranslateX()I

    move-result v17

    sub-int v24, v16, v17

    invoke-virtual {v3}, Ljava/awt/image/Raster;->getMinY()I

    move-result v16

    invoke-virtual {v3}, Ljava/awt/image/Raster;->getSampleModelTranslateY()I

    move-result v17

    sub-int v25, v16, v17

    invoke-virtual {v3}, Ljava/awt/image/Raster;->getSampleModel()Ljava/awt/image/SampleModel;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/awt/image/SampleModel;->getWidth()I

    move-result v16

    mul-int v16, v16, v10

    add-int/lit8 v16, v16, 0x7

    div-int/lit8 v26, v16, 0x8

    invoke-virtual {v3}, Ljava/awt/image/Raster;->getDataBuffer()Ljava/awt/image/DataBuffer;

    move-result-object v13

    move/from16 v27, v6

    invoke-virtual {v13}, Ljava/awt/image/DataBuffer;->getDataType()I

    move-result v6

    move/from16 v28, v7

    const/4 v7, 0x1

    if-eqz v6, :cond_11

    const-string v3, "Not implemented for data type: "

    const/4 v15, 0x2

    if-eq v6, v7, :cond_b

    if-eq v6, v15, :cond_b

    const/4 v15, 0x3

    if-ne v6, v15, :cond_a

    if-ne v7, v2, :cond_4

    const/4 v3, 0x0

    :goto_2
    invoke-virtual {v13}, Ljava/awt/image/DataBuffer;->getNumBanks()I

    move-result v6

    if-ge v3, v6, :cond_3

    move/from16 v6, v25

    :goto_3
    add-int v7, v8, v25

    if-ge v6, v7, :cond_2

    mul-int v7, v6, v26

    div-int/lit8 v7, v7, 0x4

    move/from16 v29, v5

    move/from16 v15, v24

    :goto_4
    add-int v5, v9, v24

    if-ge v15, v5, :cond_0

    add-int v5, v7, v15

    invoke-virtual {v13, v3, v5}, Ljava/awt/image/DataBuffer;->getElem(II)I

    move-result v5

    invoke-virtual {v12, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    add-int/lit8 v15, v15, 0x1

    goto :goto_4

    :cond_0
    invoke-virtual {v0, v12, v1}, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageWriter;->f(Ljava/nio/ByteBuffer;Ljava/io/DataOutput;)V

    instance-of v5, v1, Ljava/io/DataOutputStream;

    if-eqz v5, :cond_1

    move-object v5, v1

    check-cast v5, Ljava/io/DataOutputStream;

    invoke-virtual {v5}, Ljava/io/DataOutputStream;->flush()V

    :cond_1
    add-int/lit8 v6, v6, 0x1

    move/from16 v5, v29

    goto :goto_3

    :cond_2
    move/from16 v29, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    move/from16 v29, v5

    goto :goto_9

    :cond_4
    move/from16 v29, v5

    const/4 v3, 0x0

    :goto_5
    invoke-virtual {v13}, Ljava/awt/image/DataBuffer;->getNumBanks()I

    move-result v5

    if-ge v3, v5, :cond_9

    const/4 v5, 0x0

    :goto_6
    if-ge v5, v8, :cond_8

    mul-int v6, v5, v9

    const/4 v7, 0x0

    :goto_7
    if-ge v7, v9, :cond_6

    add-int v15, v6, v7

    invoke-virtual {v13, v3, v15}, Ljava/awt/image/DataBuffer;->getElem(II)I

    move-result v15

    move/from16 v16, v6

    const/4 v6, 0x0

    :goto_8
    if-ge v6, v11, :cond_5

    aget v17, p5, v6

    move/from16 v30, v4

    shr-int v4, v15, v17

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    invoke-virtual {v12, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    add-int/lit8 v6, v6, 0x1

    move/from16 v4, v30

    goto :goto_8

    :cond_5
    move/from16 v30, v4

    add-int/lit8 v7, v7, 0x1

    move/from16 v6, v16

    goto :goto_7

    :cond_6
    move/from16 v30, v4

    invoke-virtual {v0, v12, v1}, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageWriter;->f(Ljava/nio/ByteBuffer;Ljava/io/DataOutput;)V

    instance-of v4, v1, Ljava/io/DataOutputStream;

    if-eqz v4, :cond_7

    move-object v4, v1

    check-cast v4, Ljava/io/DataOutputStream;

    invoke-virtual {v4}, Ljava/io/DataOutputStream;->flush()V

    :cond_7
    add-int/lit8 v5, v5, 0x1

    move/from16 v4, v30

    goto :goto_6

    :cond_8
    move/from16 v30, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_9
    :goto_9
    move/from16 v30, v4

    goto :goto_d

    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/awt/image/DataBuffer;->getDataType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    move/from16 v30, v4

    move/from16 v29, v5

    if-ne v2, v7, :cond_10

    const/4 v3, 0x0

    :goto_a
    invoke-virtual {v13}, Ljava/awt/image/DataBuffer;->getNumBanks()I

    move-result v4

    if-ge v3, v4, :cond_f

    move/from16 v4, v25

    :goto_b
    add-int v5, v8, v25

    if-ge v4, v5, :cond_e

    mul-int v5, v4, v26

    div-int/2addr v5, v15

    move/from16 v6, v24

    :goto_c
    add-int v7, v9, v24

    if-ge v6, v7, :cond_c

    add-int v7, v5, v6

    invoke-virtual {v13, v3, v7}, Ljava/awt/image/DataBuffer;->getElem(II)I

    move-result v7

    const v16, 0xffff

    and-int v7, v7, v16

    int-to-short v7, v7

    invoke-virtual {v12, v7}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    add-int/lit8 v6, v6, 0x1

    goto :goto_c

    :cond_c
    invoke-virtual {v0, v12, v1}, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageWriter;->f(Ljava/nio/ByteBuffer;Ljava/io/DataOutput;)V

    instance-of v5, v1, Ljava/io/DataOutputStream;

    if-eqz v5, :cond_d

    move-object v5, v1

    check-cast v5, Ljava/io/DataOutputStream;

    invoke-virtual {v5}, Ljava/io/DataOutputStream;->flush()V

    :cond_d
    add-int/lit8 v4, v4, 0x1

    goto :goto_b

    :cond_e
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    :cond_f
    :goto_d
    move/from16 v16, v8

    move/from16 v31, v9

    goto/16 :goto_16

    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/awt/image/DataBuffer;->getDataType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_11
    move/from16 v30, v4

    move/from16 v29, v5

    mul-int v4, v9, v10

    add-int/lit8 v4, v4, 0x7

    const/16 v5, 0x8

    div-int/2addr v4, v5

    rem-int/lit8 v5, v24, 0x8

    const/4 v6, 0x0

    if-eqz v5, :cond_12

    invoke-virtual {v3}, Ljava/awt/image/Raster;->getWidth()I

    move-result v15

    invoke-virtual {v3, v15, v7}, Ljava/awt/image/Raster;->createCompatibleWritableRaster(II)Ljava/awt/image/WritableRaster;

    move-result-object v7

    goto :goto_e

    :cond_12
    move-object v7, v6

    :goto_e
    if-eqz v5, :cond_13

    invoke-virtual {v7}, Ljava/awt/image/Raster;->getDataBuffer()Ljava/awt/image/DataBuffer;

    move-result-object v6

    :cond_13
    const/4 v15, 0x0

    :goto_f
    invoke-virtual {v13}, Ljava/awt/image/DataBuffer;->getNumBanks()I

    move-result v2

    if-ge v15, v2, :cond_f

    move/from16 v31, v9

    move/from16 v2, v25

    :goto_10
    add-int v9, v8, v25

    if-ge v2, v9, :cond_1a

    mul-int v9, v2, v26

    mul-int/2addr v9, v11

    if-eqz v5, :cond_14

    const/16 v17, 0x0

    sub-int v18, v2, v25

    invoke-virtual {v3}, Ljava/awt/image/Raster;->getWidth()I

    move-result v19

    const/16 v20, 0x1

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v16, v3

    move-object/from16 v32, v3

    invoke-virtual/range {v16 .. v23}, Ljava/awt/image/Raster;->createChild(IIIIII[I)Ljava/awt/image/Raster;

    move-result-object v3

    move/from16 v16, v8

    const/4 v8, 0x0

    invoke-virtual {v7, v8, v8, v3}, Ljava/awt/image/WritableRaster;->setDataElements(IILjava/awt/image/Raster;)V

    goto :goto_11

    :cond_14
    move-object/from16 v32, v3

    move/from16 v16, v8

    const/4 v8, 0x0

    :goto_11
    move/from16 v3, v24

    :goto_12
    add-int v8, v4, v24

    if-ge v3, v8, :cond_18

    mul-int v8, v3, v11

    add-int/2addr v8, v9

    move/from16 v17, v4

    const/4 v4, 0x0

    :goto_13
    if-ge v4, v11, :cond_17

    move-object/from16 v18, v7

    const/16 v7, 0x8

    if-eq v10, v7, :cond_16

    if-nez v5, :cond_15

    goto :goto_14

    :cond_15
    sub-int v19, v3, v24

    aget v20, p4, v4

    add-int v7, v19, v20

    invoke-virtual {v6, v15, v7}, Ljava/awt/image/DataBuffer;->getElem(II)I

    move-result v7

    and-int/lit16 v7, v7, 0xff

    int-to-byte v7, v7

    invoke-virtual {v12, v7}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_15

    :cond_16
    :goto_14
    aget v7, p4, v4

    add-int/2addr v7, v8

    invoke-virtual {v13, v15, v7}, Ljava/awt/image/DataBuffer;->getElem(II)I

    move-result v7

    and-int/lit16 v7, v7, 0xff

    int-to-byte v7, v7

    invoke-virtual {v12, v7}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    :goto_15
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v7, v18

    goto :goto_13

    :cond_17
    move-object/from16 v18, v7

    add-int/lit8 v3, v3, 0x1

    move/from16 v4, v17

    goto :goto_12

    :cond_18
    move/from16 v17, v4

    move-object/from16 v18, v7

    invoke-virtual {v0, v12, v1}, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageWriter;->f(Ljava/nio/ByteBuffer;Ljava/io/DataOutput;)V

    instance-of v3, v1, Ljava/io/DataOutputStream;

    if-eqz v3, :cond_19

    move-object v3, v1

    check-cast v3, Ljava/io/DataOutputStream;

    invoke-virtual {v3}, Ljava/io/DataOutputStream;->flush()V

    :cond_19
    add-int/lit8 v2, v2, 0x1

    move/from16 v8, v16

    move/from16 v4, v17

    move-object/from16 v7, v18

    move-object/from16 v3, v32

    goto/16 :goto_10

    :cond_1a
    move-object/from16 v32, v3

    move/from16 v17, v4

    move-object/from16 v18, v7

    move/from16 v16, v8

    add-int/lit8 v15, v15, 0x1

    move/from16 v9, v31

    goto/16 :goto_f

    :goto_16
    add-int/lit8 v14, v14, 0x1

    move/from16 v2, p3

    move/from16 v8, v16

    move/from16 v6, v27

    move/from16 v7, v28

    move/from16 v5, v29

    move/from16 v4, v30

    move/from16 v9, v31

    const/4 v3, 0x0

    const/16 v13, 0x8

    goto/16 :goto_1

    :cond_1b
    move/from16 v30, v4

    move/from16 v29, v5

    move/from16 v27, v6

    move/from16 v28, v7

    move/from16 v16, v8

    move/from16 v31, v9

    instance-of v2, v1, Ljava/io/DataOutputStream;

    if-eqz v2, :cond_1c

    move-object v2, v1

    check-cast v2, Ljava/io/DataOutputStream;

    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V

    :cond_1c
    const/high16 v2, 0x42c80000    # 100.0f

    move/from16 v4, v30

    int-to-float v3, v4

    mul-float/2addr v3, v2

    move/from16 v2, v29

    int-to-float v5, v2

    div-float/2addr v3, v5

    invoke-virtual {v0, v3}, Ljavax/imageio/ImageWriter;->processImageProgress(F)V

    add-int/lit8 v4, v4, 0x1

    move v5, v2

    move/from16 v8, v16

    move/from16 v6, v27

    move/from16 v7, v28

    move/from16 v9, v31

    const/4 v3, 0x0

    const/16 v13, 0x8

    move/from16 v2, p3

    goto/16 :goto_0

    :cond_1d
    instance-of v2, v1, Ljava/io/DataOutputStream;

    if-eqz v2, :cond_1e

    check-cast v1, Ljava/io/DataOutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    :cond_1e
    invoke-virtual/range {p0 .. p0}, Ljavax/imageio/ImageWriter;->processImageComplete()V

    return-void
.end method

.method public final k(Ljavax/imageio/IIOImage;Ljavax/imageio/ImageWriteParam;Lcom/twelvemonkeys/imageio/metadata/exif/EXIFWriter;J)J
    .locals 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v7, p3

    move-wide/from16 v8, p4

    invoke-virtual/range {p1 .. p1}, Ljavax/imageio/IIOImage;->getRenderedImage()Ljava/awt/image/RenderedImage;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Ljavax/imageio/IIOImage;->getMetadata()Ljavax/imageio/metadata/IIOMetadata;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual/range {p1 .. p1}, Ljavax/imageio/IIOImage;->getMetadata()Ljavax/imageio/metadata/IIOMetadata;

    move-result-object v2

    invoke-static {v3}, Ljavax/imageio/ImageTypeSpecifier;->createFromRenderedImage(Ljava/awt/image/RenderedImage;)Ljavax/imageio/ImageTypeSpecifier;

    move-result-object v4

    invoke-virtual {v0, v2, v4, v1}, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageWriter;->convertImageMetadata(Ljavax/imageio/metadata/IIOMetadata;Ljavax/imageio/ImageTypeSpecifier;Ljavax/imageio/ImageWriteParam;)Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageMetadata;

    move-result-object v2

    goto :goto_0

    :cond_0
    invoke-static {v3}, Ljavax/imageio/ImageTypeSpecifier;->createFromRenderedImage(Ljava/awt/image/RenderedImage;)Ljavax/imageio/ImageTypeSpecifier;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageWriter;->getDefaultImageMetadata(Ljavax/imageio/ImageTypeSpecifier;Ljavax/imageio/ImageWriteParam;)Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageMetadata;

    move-result-object v2

    :goto_0
    invoke-interface {v3}, Ljava/awt/image/RenderedImage;->getColorModel()Ljava/awt/image/ColorModel;

    move-result-object v4

    invoke-interface {v3}, Ljava/awt/image/RenderedImage;->getSampleModel()Ljava/awt/image/SampleModel;

    move-result-object v5

    invoke-virtual {v5}, Ljava/awt/image/SampleModel;->getNumBands()I

    move-result v6

    invoke-virtual {v0, v5}, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageWriter;->c(Ljava/awt/image/SampleModel;)I

    move-result v10

    instance-of v11, v5, Ljava/awt/image/ComponentSampleModel;

    const/4 v12, 0x0

    const/4 v13, 0x0

    if-eqz v11, :cond_1

    move-object v11, v5

    check-cast v11, Ljava/awt/image/ComponentSampleModel;

    invoke-virtual {v11}, Ljava/awt/image/ComponentSampleModel;->getBandOffsets()[I

    move-result-object v11

    goto :goto_1

    :cond_1
    instance-of v11, v5, Ljava/awt/image/SinglePixelPackedSampleModel;

    if-eqz v11, :cond_2

    move-object v11, v5

    check-cast v11, Ljava/awt/image/SinglePixelPackedSampleModel;

    invoke-virtual {v11}, Ljava/awt/image/SinglePixelPackedSampleModel;->getBitOffsets()[I

    move-result-object v11

    move-object/from16 v24, v12

    move-object v12, v11

    move-object/from16 v11, v24

    goto :goto_1

    :cond_2
    instance-of v11, v5, Ljava/awt/image/MultiPixelPackedSampleModel;

    if-eqz v11, :cond_1d

    filled-new-array {v13}, [I

    move-result-object v11

    :goto_1
    new-instance v14, Ljava/util/LinkedHashMap;

    invoke-direct {v14}, Ljava/util/LinkedHashMap;-><init>()V

    const/16 v15, 0x100

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    new-instance v15, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageWriter$a;

    invoke-interface {v3}, Ljava/awt/image/RenderedImage;->getWidth()I

    move-result v16

    move-object/from16 v17, v12

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    move-object/from16 v16, v11

    const/16 v11, 0x100

    invoke-direct {v15, v11, v12}, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageWriter$a;-><init>(ILjava/lang/Object;)V

    invoke-interface {v14, v13, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v11, 0x101

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    new-instance v13, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageWriter$a;

    invoke-interface {v3}, Ljava/awt/image/RenderedImage;->getHeight()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-direct {v13, v11, v15}, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageWriter$a;-><init>(ILjava/lang/Object;)V

    invoke-interface {v14, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v11, 0x112

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    new-instance v13, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageWriter$a;

    const/4 v15, 0x1

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-direct {v13, v11, v8}, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageWriter$a;-><init>(ILjava/lang/Object;)V

    invoke-interface {v14, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v8, 0x102

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    new-instance v11, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageWriter$a;

    invoke-virtual {v5}, Ljava/awt/image/SampleModel;->getSampleSize()[I

    move-result-object v12

    invoke-virtual {v0, v12}, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageWriter;->b([I)[S

    move-result-object v12

    invoke-direct {v11, v8, v12}, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageWriter$a;-><init>(ILjava/lang/Object;)V

    invoke-interface {v14, v9, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/awt/image/ColorModel;->getNumColorComponents()I

    move-result v8

    if-le v6, v8, :cond_5

    invoke-virtual {v4}, Ljava/awt/image/ColorModel;->hasAlpha()Z

    move-result v8

    const/16 v11, 0x152

    if-eqz v8, :cond_4

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-instance v12, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageWriter$a;

    invoke-virtual {v4}, Ljava/awt/image/ColorModel;->isAlphaPremultiplied()Z

    move-result v13

    if-eqz v13, :cond_3

    move v13, v15

    goto :goto_2

    :cond_3
    const/4 v13, 0x2

    :goto_2
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-direct {v12, v11, v13}, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageWriter$a;-><init>(ILjava/lang/Object;)V

    invoke-interface {v14, v8, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_4
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-instance v12, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageWriter$a;

    const/4 v13, 0x0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-direct {v12, v11, v15}, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageWriter$a;-><init>(ILjava/lang/Object;)V

    invoke-interface {v14, v8, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    :goto_3
    const/4 v8, 0x3

    const/16 v11, 0x103

    if-eqz v1, :cond_6

    invoke-virtual/range {p2 .. p2}, Ljavax/imageio/ImageWriteParam;->getCompressionMode()I

    move-result v12

    if-ne v12, v8, :cond_7

    :cond_6
    invoke-virtual/range {p1 .. p1}, Ljavax/imageio/IIOImage;->getMetadata()Ljavax/imageio/metadata/IIOMetadata;

    move-result-object v12

    if-eqz v12, :cond_7

    invoke-virtual {v2}, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageMetadata;->f()Lcom/twelvemonkeys/imageio/metadata/Directory;

    move-result-object v12

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v12, v13}, Lcom/twelvemonkeys/imageio/metadata/Directory;->getEntryById(Ljava/lang/Object;)Lcom/twelvemonkeys/imageio/metadata/Entry;

    move-result-object v12

    if-eqz v12, :cond_7

    invoke-virtual {v2}, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageMetadata;->f()Lcom/twelvemonkeys/imageio/metadata/Directory;

    move-result-object v12

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v12, v13}, Lcom/twelvemonkeys/imageio/metadata/Directory;->getEntryById(Ljava/lang/Object;)Lcom/twelvemonkeys/imageio/metadata/Entry;

    move-result-object v12

    invoke-interface {v12}, Lcom/twelvemonkeys/imageio/metadata/Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    goto :goto_4

    :cond_7
    invoke-static/range {p2 .. p2}, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageWriteParam;->b(Ljavax/imageio/ImageWriteParam;)I

    move-result v12

    :goto_4
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    new-instance v15, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageWriter$a;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-direct {v15, v11, v9}, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageWriter$a;-><init>(ILjava/lang/Object;)V

    invoke-interface {v14, v13, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v9, 0x8

    if-eq v12, v8, :cond_b

    const/4 v11, 0x4

    if-eq v12, v11, :cond_9

    const/4 v11, 0x5

    if-eq v12, v11, :cond_8

    if-eq v12, v9, :cond_8

    const v11, 0x80b2

    if-eq v12, v11, :cond_8

    goto :goto_5

    :cond_8
    if-lt v10, v9, :cond_d

    const/16 v11, 0x13d

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    new-instance v13, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageWriter$a;

    const/16 v15, 0x13d

    const/16 v18, 0x2

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-direct {v13, v15, v9}, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageWriter$a;-><init>(ILjava/lang/Object;)V

    invoke-interface {v14, v11, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    :cond_9
    invoke-virtual {v2}, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageMetadata;->f()Lcom/twelvemonkeys/imageio/metadata/Directory;

    move-result-object v9

    const/16 v11, 0x125

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v9, v13}, Lcom/twelvemonkeys/imageio/metadata/Directory;->getEntryById(Ljava/lang/Object;)Lcom/twelvemonkeys/imageio/metadata/Entry;

    move-result-object v9

    if-nez v9, :cond_a

    new-instance v9, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageWriter$a;

    const-wide/16 v19, 0x0

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-direct {v9, v11, v13}, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageWriter$a;-><init>(ILjava/lang/Object;)V

    :cond_a
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v14, v11, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    :cond_b
    invoke-virtual {v2}, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageMetadata;->f()Lcom/twelvemonkeys/imageio/metadata/Directory;

    move-result-object v9

    const/16 v11, 0x124

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v9, v13}, Lcom/twelvemonkeys/imageio/metadata/Directory;->getEntryById(Ljava/lang/Object;)Lcom/twelvemonkeys/imageio/metadata/Entry;

    move-result-object v9

    if-nez v9, :cond_c

    new-instance v9, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageWriter$a;

    const-wide/16 v19, 0x1

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-direct {v9, v11, v13}, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageWriter$a;-><init>(ILjava/lang/Object;)V

    :cond_c
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v14, v11, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_d
    :goto_5
    const/4 v9, 0x7

    if-ne v12, v9, :cond_e

    const/4 v11, 0x6

    goto :goto_6

    :cond_e
    invoke-virtual {v0, v4}, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageWriter;->g(Ljava/awt/image/ColorModel;)I

    move-result v11

    :goto_6
    const/16 v13, 0x106

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    new-instance v15, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageWriter$a;

    const/16 v9, 0x106

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-direct {v15, v9, v8}, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageWriter$a;-><init>(ILjava/lang/Object;)V

    invoke-interface {v14, v13, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v8, 0x115

    const/4 v9, 0x3

    if-ne v11, v9, :cond_f

    instance-of v9, v4, Ljava/awt/image/IndexColorModel;

    if-eqz v9, :cond_f

    const/16 v9, 0x140

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    new-instance v11, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageWriter$a;

    check-cast v4, Ljava/awt/image/IndexColorModel;

    invoke-virtual {v0, v4}, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageWriter;->d(Ljava/awt/image/IndexColorModel;)[S

    move-result-object v4

    const/16 v13, 0x140

    invoke-direct {v11, v13, v4}, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageWriter$a;-><init>(ILjava/lang/Object;)V

    invoke-interface {v14, v9, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-instance v9, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageWriter$a;

    const/4 v11, 0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-direct {v9, v8, v13}, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageWriter$a;-><init>(ILjava/lang/Object;)V

    invoke-interface {v14, v4, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    :cond_f
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    new-instance v11, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageWriter$a;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-direct {v11, v8, v13}, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageWriter$a;-><init>(ILjava/lang/Object;)V

    invoke-interface {v14, v9, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/awt/image/ColorModel;->getColorSpace()Ljava/awt/color/ColorSpace;

    move-result-object v4

    instance-of v8, v4, Ljava/awt/color/ICC_ColorSpace;

    if-eqz v8, :cond_10

    invoke-virtual {v4}, Ljava/awt/color/ColorSpace;->isCS_sRGB()Z

    move-result v8

    if-nez v8, :cond_10

    const v8, 0x8773

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-instance v9, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageWriter$a;

    check-cast v4, Ljava/awt/color/ICC_ColorSpace;

    invoke-virtual {v4}, Ljava/awt/color/ICC_ColorSpace;->getProfile()Ljava/awt/color/ICC_Profile;

    move-result-object v4

    invoke-virtual {v4}, Ljava/awt/color/ICC_Profile;->getData()[B

    move-result-object v4

    const v11, 0x8773

    invoke-direct {v9, v11, v4}, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageWriter$a;-><init>(ILjava/lang/Object;)V

    invoke-interface {v14, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_10
    :goto_7
    invoke-virtual {v5}, Ljava/awt/image/SampleModel;->getDataType()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_11

    const/16 v4, 0x153

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-instance v8, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageWriter$a;

    const/16 v9, 0x153

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-direct {v8, v9, v11}, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageWriter$a;-><init>(ILjava/lang/Object;)V

    invoke-interface {v14, v4, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_11
    invoke-virtual {v2}, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageMetadata;->f()Lcom/twelvemonkeys/imageio/metadata/Directory;

    move-result-object v4

    const/16 v5, 0x131

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v4, v8}, Lcom/twelvemonkeys/imageio/metadata/Directory;->getEntryById(Ljava/lang/Object;)Lcom/twelvemonkeys/imageio/metadata/Entry;

    move-result-object v4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    if-eqz v4, :cond_12

    goto :goto_8

    :cond_12
    new-instance v4, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageWriter$a;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "TwelveMonkeys ImageIO TIFF writer "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v0, Ljavax/imageio/ImageWriter;->originatingProvider:Ljavax/imageio/spi/ImageWriterSpi;

    invoke-virtual {v11}, Ljavax/imageio/spi/IIOServiceProvider;->getVersion()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v4, v5, v9}, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageWriter$a;-><init>(ILjava/lang/Object;)V

    :goto_8
    invoke-interface {v14, v8, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v4, 0xb

    new-array v5, v4, [I

    fill-array-data v5, :array_0

    const/4 v8, 0x0

    :goto_9
    if-ge v8, v4, :cond_14

    aget v9, v5, v8

    invoke-virtual {v2}, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageMetadata;->f()Lcom/twelvemonkeys/imageio/metadata/Directory;

    move-result-object v11

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v11, v13}, Lcom/twelvemonkeys/imageio/metadata/Directory;->getEntryById(Ljava/lang/Object;)Lcom/twelvemonkeys/imageio/metadata/Entry;

    move-result-object v11

    if-eqz v11, :cond_13

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v14, v9, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_13
    add-int/lit8 v8, v8, 0x1

    goto :goto_9

    :cond_14
    invoke-virtual {v2}, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageMetadata;->f()Lcom/twelvemonkeys/imageio/metadata/Directory;

    move-result-object v4

    const/16 v5, 0x11a

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v4, v8}, Lcom/twelvemonkeys/imageio/metadata/Directory;->getEntryById(Ljava/lang/Object;)Lcom/twelvemonkeys/imageio/metadata/Entry;

    move-result-object v4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    if-eqz v4, :cond_15

    goto :goto_a

    :cond_15
    new-instance v4, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageWriter$a;

    sget-object v9, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageWriter;->STANDARD_DPI:Lcom/twelvemonkeys/imageio/metadata/exif/Rational;

    invoke-direct {v4, v5, v9}, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageWriter$a;-><init>(ILjava/lang/Object;)V

    :goto_a
    invoke-interface {v14, v8, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageMetadata;->f()Lcom/twelvemonkeys/imageio/metadata/Directory;

    move-result-object v4

    const/16 v5, 0x11b

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v4, v8}, Lcom/twelvemonkeys/imageio/metadata/Directory;->getEntryById(Ljava/lang/Object;)Lcom/twelvemonkeys/imageio/metadata/Entry;

    move-result-object v4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    if-eqz v4, :cond_16

    goto :goto_b

    :cond_16
    new-instance v4, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageWriter$a;

    sget-object v9, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageWriter;->STANDARD_DPI:Lcom/twelvemonkeys/imageio/metadata/exif/Rational;

    invoke-direct {v4, v5, v9}, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageWriter$a;-><init>(ILjava/lang/Object;)V

    :goto_b
    invoke-interface {v14, v8, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageMetadata;->f()Lcom/twelvemonkeys/imageio/metadata/Directory;

    move-result-object v2

    const/16 v4, 0x128

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Lcom/twelvemonkeys/imageio/metadata/Directory;->getEntryById(Ljava/lang/Object;)Lcom/twelvemonkeys/imageio/metadata/Entry;

    move-result-object v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    if-eqz v2, :cond_17

    goto :goto_c

    :cond_17
    new-instance v2, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageWriter$a;

    const/4 v8, 0x2

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-direct {v2, v4, v8}, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageWriter$a;-><init>(ILjava/lang/Object;)V

    :goto_c
    invoke-interface {v14, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0x116

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v4, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageWriter$a;

    invoke-interface {v3}, Ljava/awt/image/RenderedImage;->getHeight()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v8, 0x116

    invoke-direct {v4, v8, v5}, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageWriter$a;-><init>(ILjava/lang/Object;)V

    invoke-interface {v14, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v8, 0x117

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v4, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageWriter$a;

    const/4 v5, -0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v4, v8, v5}, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageWriter$a;-><init>(ILjava/lang/Object;)V

    invoke-interface {v14, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v9, 0x111

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v4, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageWriter$a;

    const/4 v5, -0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v4, v9, v5}, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageWriter$a;-><init>(ILjava/lang/Object;)V

    invoke-interface {v14, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x1

    if-ne v12, v2, :cond_19

    iget-object v2, v0, Lcom/twelvemonkeys/imageio/ImageWriterBase;->imageOutput:Ljavax/imageio/stream/ImageOutputStream;

    invoke-interface {v2}, Ljavax/imageio/stream/ImageInputStream;->getStreamPosition()J

    move-result-wide v4

    invoke-interface {v14}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-virtual {v7, v2}, Lcom/twelvemonkeys/imageio/metadata/exif/EXIFWriter;->computeIFDSize(Ljava/util/Collection;)J

    move-result-wide v20

    const-wide/16 v22, 0x4

    add-long v22, v4, v22

    add-long v22, v22, v20

    const-wide/16 v20, 0x4

    add-long v22, v22, v20

    invoke-interface {v3}, Ljava/awt/image/RenderedImage;->getWidth()I

    move-result v2

    invoke-interface {v3}, Ljava/awt/image/RenderedImage;->getHeight()I

    move-result v11

    mul-int/2addr v2, v11

    mul-int/2addr v2, v10

    const/4 v10, 0x7

    add-int/2addr v2, v10

    const/16 v10, 0x8

    div-int/2addr v2, v10

    int-to-long v10, v2

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageWriter$a;

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-direct {v13, v9, v15}, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageWriter$a;-><init>(ILjava/lang/Object;)V

    invoke-interface {v14, v2, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageWriter$a;

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-direct {v13, v8, v10}, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageWriter$a;-><init>(ILjava/lang/Object;)V

    invoke-interface {v14, v2, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v14}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    iget-object v10, v0, Lcom/twelvemonkeys/imageio/ImageWriterBase;->imageOutput:Ljavax/imageio/stream/ImageOutputStream;

    invoke-virtual {v7, v2, v10}, Lcom/twelvemonkeys/imageio/metadata/exif/EXIFWriter;->writeIFD(Ljava/util/Collection;Ljavax/imageio/stream/ImageOutputStream;)J

    move-result-wide v10

    iget-object v2, v0, Lcom/twelvemonkeys/imageio/ImageWriterBase;->imageOutput:Ljavax/imageio/stream/ImageOutputStream;

    invoke-interface {v2}, Ljavax/imageio/stream/ImageInputStream;->getStreamPosition()J

    move-result-wide v8

    move-object v15, v14

    move-wide/from16 v13, p4

    cmp-long v2, v4, v13

    if-lez v2, :cond_18

    iget-object v2, v0, Lcom/twelvemonkeys/imageio/ImageWriterBase;->imageOutput:Ljavax/imageio/stream/ImageOutputStream;

    invoke-interface {v2, v13, v14}, Ljavax/imageio/stream/ImageInputStream;->seek(J)V

    iget-object v2, v0, Lcom/twelvemonkeys/imageio/ImageWriterBase;->imageOutput:Ljavax/imageio/stream/ImageOutputStream;

    long-to-int v4, v10

    invoke-interface {v2, v4}, Ljavax/imageio/stream/ImageOutputStream;->writeInt(I)V

    iget-object v2, v0, Lcom/twelvemonkeys/imageio/ImageWriterBase;->imageOutput:Ljavax/imageio/stream/ImageOutputStream;

    invoke-interface {v2, v8, v9}, Ljavax/imageio/stream/ImageInputStream;->seek(J)V

    :cond_18
    iget-object v2, v0, Lcom/twelvemonkeys/imageio/ImageWriterBase;->imageOutput:Ljavax/imageio/stream/ImageOutputStream;

    const/4 v4, 0x0

    invoke-interface {v2, v4}, Ljavax/imageio/stream/ImageOutputStream;->writeInt(I)V

    goto :goto_d

    :cond_19
    move-object v15, v14

    const/4 v4, 0x0

    move-wide/from16 v13, p4

    iget-object v2, v0, Lcom/twelvemonkeys/imageio/ImageWriterBase;->imageOutput:Ljavax/imageio/stream/ImageOutputStream;

    invoke-interface {v2, v4}, Ljavax/imageio/stream/ImageOutputStream;->writeInt(I)V

    const-wide/16 v8, -0x1

    :goto_d
    iget-object v2, v0, Lcom/twelvemonkeys/imageio/ImageWriterBase;->imageOutput:Ljavax/imageio/stream/ImageOutputStream;

    invoke-interface {v2}, Ljavax/imageio/stream/ImageInputStream;->getStreamPosition()J

    move-result-wide v10

    const/4 v2, 0x7

    if-ne v12, v2, :cond_1b

    const-string v1, "JPEG"

    invoke-static {v1}, Ljavax/imageio/ImageIO;->getImageWritersByFormatName(Ljava/lang/String;)Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/imageio/ImageWriter;

    :try_start_0
    new-instance v2, Lcom/twelvemonkeys/imageio/stream/SubImageOutputStream;

    iget-object v4, v0, Lcom/twelvemonkeys/imageio/ImageWriterBase;->imageOutput:Ljavax/imageio/stream/ImageOutputStream;

    invoke-direct {v2, v4}, Lcom/twelvemonkeys/imageio/stream/SubImageOutputStream;-><init>(Ljavax/imageio/stream/ImageOutputStream;)V

    invoke-virtual {v1, v2}, Ljavax/imageio/ImageWriter;->setOutput(Ljava/lang/Object;)V

    invoke-virtual {v1, v3}, Ljavax/imageio/ImageWriter;->write(Ljava/awt/image/RenderedImage;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Ljavax/imageio/ImageWriter;->dispose()V

    goto :goto_e

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Ljavax/imageio/ImageWriter;->dispose()V

    throw v0

    :cond_1a
    new-instance v0, Ljavax/imageio/IIOException;

    const-string v1, "No JPEG ImageWriter found!"

    invoke-direct {v0, v1}, Ljavax/imageio/IIOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1b
    invoke-virtual {v0, v3, v1, v15}, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageWriter;->e(Ljava/awt/image/RenderedImage;Ljavax/imageio/ImageWriteParam;Ljava/util/Map;)Ljava/io/DataOutput;

    move-result-object v2

    move-object/from16 v1, p0

    move v4, v6

    move-object/from16 v5, v16

    move-object/from16 v6, v17

    invoke-virtual/range {v1 .. v6}, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageWriter;->j(Ljava/io/DataOutput;Ljava/awt/image/RenderedImage;I[I[I)V

    :goto_e
    iget-object v1, v0, Lcom/twelvemonkeys/imageio/ImageWriterBase;->imageOutput:Ljavax/imageio/stream/ImageOutputStream;

    invoke-interface {v1}, Ljavax/imageio/stream/ImageInputStream;->getStreamPosition()J

    move-result-wide v1

    sub-long/2addr v1, v10

    const/4 v3, 0x1

    if-eq v12, v3, :cond_1c

    const/16 v3, 0x111

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-instance v5, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageWriter$a;

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-direct {v5, v3, v6}, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageWriter$a;-><init>(ILjava/lang/Object;)V

    invoke-interface {v15, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v3, 0x117

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-instance v5, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageWriter$a;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {v5, v3, v1}, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageWriter$a;-><init>(ILjava/lang/Object;)V

    invoke-interface {v15, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v15}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    iget-object v2, v0, Lcom/twelvemonkeys/imageio/ImageWriterBase;->imageOutput:Ljavax/imageio/stream/ImageOutputStream;

    invoke-virtual {v7, v1, v2}, Lcom/twelvemonkeys/imageio/metadata/exif/EXIFWriter;->writeIFD(Ljava/util/Collection;Ljavax/imageio/stream/ImageOutputStream;)J

    move-result-wide v1

    iget-object v3, v0, Lcom/twelvemonkeys/imageio/ImageWriterBase;->imageOutput:Ljavax/imageio/stream/ImageOutputStream;

    invoke-interface {v3}, Ljavax/imageio/stream/ImageInputStream;->getStreamPosition()J

    move-result-wide v8

    iget-object v3, v0, Lcom/twelvemonkeys/imageio/ImageWriterBase;->imageOutput:Ljavax/imageio/stream/ImageOutputStream;

    invoke-interface {v3, v13, v14}, Ljavax/imageio/stream/ImageInputStream;->seek(J)V

    iget-object v3, v0, Lcom/twelvemonkeys/imageio/ImageWriterBase;->imageOutput:Ljavax/imageio/stream/ImageOutputStream;

    long-to-int v1, v1

    invoke-interface {v3, v1}, Ljavax/imageio/stream/ImageOutputStream;->writeInt(I)V

    iget-object v1, v0, Lcom/twelvemonkeys/imageio/ImageWriterBase;->imageOutput:Ljavax/imageio/stream/ImageOutputStream;

    invoke-interface {v1, v8, v9}, Ljavax/imageio/stream/ImageInputStream;->seek(J)V

    iget-object v0, v0, Lcom/twelvemonkeys/imageio/ImageWriterBase;->imageOutput:Ljavax/imageio/stream/ImageOutputStream;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljavax/imageio/stream/ImageOutputStream;->writeInt(I)V

    :cond_1c
    return-wide v8

    :cond_1d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown bit/bandOffsets for sample model: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 4
        0x112
        0x132
        0x10d
        0x10e
        0x10f
        0x110
        0x11d
        0x129
        0x13b
        0x13c
        0x8298
    .end array-data
.end method

.method public prepareWriteSequence(Ljavax/imageio/metadata/IIOMetadata;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean p1, p0, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageWriter;->e:Z

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/twelvemonkeys/imageio/ImageWriterBase;->assertOutput()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageWriter;->e:Z

    new-instance p1, Lcom/twelvemonkeys/imageio/metadata/exif/EXIFWriter;

    invoke-direct {p1}, Lcom/twelvemonkeys/imageio/metadata/exif/EXIFWriter;-><init>()V

    iput-object p1, p0, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageWriter;->f:Lcom/twelvemonkeys/imageio/metadata/exif/EXIFWriter;

    iget-object v0, p0, Lcom/twelvemonkeys/imageio/ImageWriterBase;->imageOutput:Ljavax/imageio/stream/ImageOutputStream;

    invoke-virtual {p1, v0}, Lcom/twelvemonkeys/imageio/metadata/exif/EXIFWriter;->writeTIFFHeader(Ljavax/imageio/stream/ImageOutputStream;)V

    iget-object p1, p0, Lcom/twelvemonkeys/imageio/ImageWriterBase;->imageOutput:Ljavax/imageio/stream/ImageOutputStream;

    invoke-interface {p1}, Ljavax/imageio/stream/ImageInputStream;->getStreamPosition()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageWriter;->g:J

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "sequence writing has already been started!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public resetMembers()V
    .locals 2

    invoke-super {p0}, Lcom/twelvemonkeys/imageio/ImageWriterBase;->resetMembers()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageWriter;->e:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageWriter;->f:Lcom/twelvemonkeys/imageio/metadata/exif/EXIFWriter;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageWriter;->g:J

    return-void
.end method

.method public setOutput(Ljava/lang/Object;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/twelvemonkeys/imageio/ImageWriterBase;->setOutput(Ljava/lang/Object;)V

    return-void
.end method

.method public write(Ljavax/imageio/metadata/IIOMetadata;Ljavax/imageio/IIOImage;Ljavax/imageio/ImageWriteParam;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/twelvemonkeys/imageio/ImageWriterBase;->assertOutput()V

    new-instance v3, Lcom/twelvemonkeys/imageio/metadata/exif/EXIFWriter;

    invoke-direct {v3}, Lcom/twelvemonkeys/imageio/metadata/exif/EXIFWriter;-><init>()V

    iget-object p1, p0, Lcom/twelvemonkeys/imageio/ImageWriterBase;->imageOutput:Ljavax/imageio/stream/ImageOutputStream;

    invoke-virtual {v3, p1}, Lcom/twelvemonkeys/imageio/metadata/exif/EXIFWriter;->writeTIFFHeader(Ljavax/imageio/stream/ImageOutputStream;)V

    iget-object p1, p0, Lcom/twelvemonkeys/imageio/ImageWriterBase;->imageOutput:Ljavax/imageio/stream/ImageOutputStream;

    invoke-interface {p1}, Ljavax/imageio/stream/ImageInputStream;->getStreamPosition()J

    move-result-wide v4

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    invoke-virtual/range {v0 .. v5}, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageWriter;->k(Ljavax/imageio/IIOImage;Ljavax/imageio/ImageWriteParam;Lcom/twelvemonkeys/imageio/metadata/exif/EXIFWriter;J)J

    iget-object p0, p0, Lcom/twelvemonkeys/imageio/ImageWriterBase;->imageOutput:Ljavax/imageio/stream/ImageOutputStream;

    invoke-interface {p0}, Ljavax/imageio/stream/ImageInputStream;->flush()V

    return-void
.end method

.method public writeToSequence(Ljavax/imageio/IIOImage;Ljavax/imageio/ImageWriteParam;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageWriter;->e:Z

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageWriter;->g:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/twelvemonkeys/imageio/ImageWriterBase;->imageOutput:Ljavax/imageio/stream/ImageOutputStream;

    invoke-interface {v2, v0, v1}, Ljavax/imageio/stream/ImageOutputStream;->flushBefore(J)V

    :cond_0
    iget-object v6, p0, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageWriter;->f:Lcom/twelvemonkeys/imageio/metadata/exif/EXIFWriter;

    iget-wide v7, p0, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageWriter;->g:J

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v3 .. v8}, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageWriter;->k(Ljavax/imageio/IIOImage;Ljavax/imageio/ImageWriteParam;Lcom/twelvemonkeys/imageio/metadata/exif/EXIFWriter;J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageWriter;->g:J

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "prepareWriteSequence() must be called before writeToSequence()!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
