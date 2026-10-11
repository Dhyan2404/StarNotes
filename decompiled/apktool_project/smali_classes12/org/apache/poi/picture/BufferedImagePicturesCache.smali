.class public Lorg/apache/poi/picture/BufferedImagePicturesCache;
.super Lorg/apache/poi/picture/PicturesCache;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/poi/picture/PicturesCache<",
        "Ljava/awt/image/BufferedImage;",
        ">;"
    }
.end annotation


# instance fields
.field private final format:Ljava/text/DecimalFormat;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1}, Lorg/apache/poi/picture/PicturesCache;-><init>(Ljava/lang/String;)V

    new-instance p1, Ljava/text/DecimalFormat;

    const-string v0, "image_00000"

    invoke-direct {p1, v0}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lorg/apache/poi/picture/BufferedImagePicturesCache;->format:Ljava/text/DecimalFormat;

    return-void
.end method


# virtual methods
.method public bridge synthetic createImage(II)Ljava/awt/Image;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/picture/BufferedImagePicturesCache;->createImage(II)Ljava/awt/image/BufferedImage;

    move-result-object p0

    return-object p0
.end method

.method public createImage(II)Ljava/awt/image/BufferedImage;
    .locals 1

    .line 2
    new-instance p0, Ljava/awt/image/BufferedImage;

    const/4 v0, 0x2

    invoke-direct {p0, p1, p2, v0}, Ljava/awt/image/BufferedImage;-><init>(III)V

    return-object p0
.end method

.method public existCache(Ljava/lang/String;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getFilename(Ljava/lang/String;I)Ljava/lang/String;
    .locals 4

    if-eqz p1, :cond_1

    const/16 v0, 0x2e

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const-string v1, ".png"

    if-lez v0, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_1
    :goto_0
    iget-object p0, p0, Lorg/apache/poi/picture/BufferedImagePicturesCache;->format:Ljava/text/DecimalFormat;

    int-to-long v0, p2

    invoke-virtual {p0, v0, v1}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "_"

    invoke-static {p1, p0}, Lorg/apache/poi/util/StringUtil;->join(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getGraphics(Ljava/awt/Image;)Ljava/awt/Graphics2D;
    .locals 0

    .line 1
    check-cast p1, Ljava/awt/image/BufferedImage;

    invoke-virtual {p0, p1}, Lorg/apache/poi/picture/BufferedImagePicturesCache;->getGraphics(Ljava/awt/image/BufferedImage;)Ljava/awt/Graphics2D;

    move-result-object p0

    return-object p0
.end method

.method public getGraphics(Ljava/awt/image/BufferedImage;)Ljava/awt/Graphics2D;
    .locals 0

    .line 2
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getGraphics()Ljava/awt/Graphics;

    move-result-object p0

    check-cast p0, Ljava/awt/Graphics2D;

    return-object p0
.end method

.method public getImageRenderer(Ljava/lang/String;)Lorg/apache/poi/sl/draw/ImageRenderer;
    .locals 0

    const/4 p0, 0x0

    invoke-static {p0, p1}, Lorg/apache/poi/sl/draw/DrawPictureShape;->getImageRenderer(Ljava/awt/Graphics2D;Ljava/lang/String;)Lorg/apache/poi/sl/draw/ImageRenderer;

    move-result-object p0

    return-object p0
.end method

.method public getStream(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 3

    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lorg/apache/poi/picture/PicturesCache;->location:Ljava/lang/String;

    invoke-direct {v1, v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    iget-object p0, p0, Lorg/apache/poi/picture/PicturesCache;->LOG:Lorg/apache/logging/log4j/Logger;

    invoke-interface {p0}, Lorg/apache/logging/log4j/Logger;->atError()Lorg/apache/logging/log4j/LogBuilder;

    move-result-object p0

    invoke-interface {p0, p1}, Lorg/apache/logging/log4j/LogBuilder;->withThrowable(Ljava/lang/Throwable;)Lorg/apache/logging/log4j/LogBuilder;

    move-result-object p0

    invoke-interface {p0}, Lorg/apache/logging/log4j/LogBuilder;->log()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public readImageSize(Ljava/lang/String;)Ljava/awt/Dimension;
    .locals 2

    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lorg/apache/poi/picture/PicturesCache;->location:Ljava/lang/String;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Ljavax/imageio/ImageIO;->read(Ljava/io/File;)Ljava/awt/image/BufferedImage;

    move-result-object p1

    if-nez p1, :cond_0

    new-instance p1, Ljava/awt/Dimension;

    invoke-direct {p1}, Ljava/awt/Dimension;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/awt/Dimension;

    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result p1

    invoke-direct {v0, v1, p1}, Ljava/awt/Dimension;-><init>(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object p1, v0

    :goto_0
    return-object p1

    :catch_0
    move-exception p1

    iget-object p0, p0, Lorg/apache/poi/picture/PicturesCache;->LOG:Lorg/apache/logging/log4j/Logger;

    invoke-interface {p0}, Lorg/apache/logging/log4j/Logger;->atError()Lorg/apache/logging/log4j/LogBuilder;

    move-result-object p0

    invoke-interface {p0, p1}, Lorg/apache/logging/log4j/LogBuilder;->withThrowable(Ljava/lang/Throwable;)Lorg/apache/logging/log4j/LogBuilder;

    move-result-object p0

    invoke-interface {p0}, Lorg/apache/logging/log4j/LogBuilder;->log()V

    new-instance p0, Ljava/awt/Dimension;

    invoke-direct {p0}, Ljava/awt/Dimension;-><init>()V

    return-object p0
.end method

.method public bridge synthetic saveImage(Ljava/awt/Image;Ljava/lang/String;)Z
    .locals 0

    .line 1
    check-cast p1, Ljava/awt/image/BufferedImage;

    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/picture/BufferedImagePicturesCache;->saveImage(Ljava/awt/image/BufferedImage;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public saveImage(Ljava/awt/image/BufferedImage;Ljava/lang/String;)Z
    .locals 3

    .line 2
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lorg/apache/poi/picture/PicturesCache;->location:Ljava/lang/String;

    invoke-direct {v1, v2, p2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    const-string v1, "png"

    .line 3
    invoke-static {p1, v1, v0}, Ljavax/imageio/ImageIO;->write(Ljava/awt/image/RenderedImage;Ljava/lang/String;Ljava/io/OutputStream;)Z

    .line 4
    new-instance v1, Ljava/awt/Dimension;

    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result p1

    invoke-direct {v1, v2, p1}, Ljava/awt/Dimension;-><init>(II)V

    invoke-virtual {p0, p2, v1}, Lorg/apache/poi/picture/PicturesCache;->setImageSize(Ljava/lang/String;Ljava/awt/Dimension;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5
    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p1

    .line 6
    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p2

    .line 7
    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v0

    :try_start_5
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p2
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    move-exception p1

    .line 8
    iget-object p0, p0, Lorg/apache/poi/picture/PicturesCache;->LOG:Lorg/apache/logging/log4j/Logger;

    invoke-interface {p0}, Lorg/apache/logging/log4j/Logger;->atError()Lorg/apache/logging/log4j/LogBuilder;

    move-result-object p0

    invoke-interface {p0, p1}, Lorg/apache/logging/log4j/LogBuilder;->withThrowable(Ljava/lang/Throwable;)Lorg/apache/logging/log4j/LogBuilder;

    move-result-object p0

    invoke-interface {p0}, Lorg/apache/logging/log4j/LogBuilder;->log()V

    const/4 p0, 0x0

    return p0
.end method
