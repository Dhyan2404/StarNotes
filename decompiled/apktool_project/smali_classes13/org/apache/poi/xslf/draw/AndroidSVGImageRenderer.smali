.class public Lorg/apache/poi/xslf/draw/AndroidSVGImageRenderer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/sl/draw/ImageRenderer;
.implements Ljava/io/Closeable;


# static fields
.field public static final SVG_EXPAND_RATIO:F = 1.5f


# instance fields
.field private alpha:D

.field protected image:Lcom/trans/android/AndroidImage;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iput-wide v0, p0, Lorg/apache/poi/xslf/draw/AndroidSVGImageRenderer;->alpha:D

    return-void
.end method

.method private loadSvgImage(Ljava/io/InputStream;Ljava/awt/geom/Rectangle2D;)V
    .locals 8

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lcom/onyx/batik/transcoder/image/BitmapTranscoder;

    invoke-direct {v1, p1}, Lcom/onyx/batik/transcoder/image/BitmapTranscoder;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez p2, :cond_0

    const/high16 p2, 0x3fc00000    # 1.5f

    :try_start_1
    invoke-virtual {v1, p2}, Lcom/onyx/batik/transcoder/image/BitmapTranscoder;->getBitmap(F)Landroid/graphics/Bitmap;

    move-result-object p2

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/awt/Dimension;

    invoke-virtual {p2}, Ljava/awt/geom/RectangularShape;->getWidth()D

    move-result-wide v2

    const-wide/high16 v4, 0x3ff8000000000000L    # 1.5

    mul-double/2addr v2, v4

    double-to-int v2, v2

    invoke-virtual {p2}, Ljava/awt/geom/RectangularShape;->getHeight()D

    move-result-wide v6

    mul-double/2addr v6, v4

    double-to-int p2, v6

    invoke-direct {v0, v2, p2}, Ljava/awt/Dimension;-><init>(II)V

    invoke-virtual {v1, v0}, Lcom/onyx/batik/transcoder/image/BitmapTranscoder;->getBitmap(Ljava/awt/Dimension;)Landroid/graphics/Bitmap;

    move-result-object p2

    :goto_0
    invoke-static {p2}, Lcom/onyx/common/util/BitmapUtils;->isValid(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/trans/android/AndroidImage;

    invoke-direct {v0, p2}, Lcom/trans/android/AndroidImage;-><init>(Landroid/graphics/Bitmap;)V

    iget-wide v2, p0, Lorg/apache/poi/xslf/draw/AndroidSVGImageRenderer;->alpha:D

    invoke-static {v0, v2, v3}, Lorg/apache/poi/sl/draw/AndroidBitmapImageRenderer;->setAlpha(Lcom/trans/android/AndroidImage;D)Lcom/trans/android/AndroidImage;

    move-result-object p2

    iput-object p2, p0, Lorg/apache/poi/xslf/draw/AndroidSVGImageRenderer;->image:Lcom/trans/android/AndroidImage;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    invoke-static {p1}, Lcom/onyx/common/util/CloseUtils;->close(Ljava/io/Closeable;)V

    invoke-static {v1}, Lcom/onyx/common/util/CloseUtils;->close(Ljava/io/Closeable;)V

    return-void

    :catchall_0
    move-exception p0

    move-object v0, v1

    goto :goto_1

    :catchall_1
    move-exception p0

    :goto_1
    invoke-static {p1}, Lcom/onyx/common/util/CloseUtils;->close(Ljava/io/Closeable;)V

    invoke-static {v0}, Lcom/onyx/common/util/CloseUtils;->close(Ljava/io/Closeable;)V

    throw p0
.end method


# virtual methods
.method public canRender(Ljava/lang/String;)Z
    .locals 0

    sget-object p0, Lorg/apache/poi/sl/usermodel/PictureData$PictureType;->SVG:Lorg/apache/poi/sl/usermodel/PictureData$PictureType;

    iget-object p0, p0, Lorg/apache/poi/sl/usermodel/PictureData$PictureType;->contentType:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/xslf/draw/AndroidSVGImageRenderer;->image:Lcom/trans/android/AndroidImage;

    invoke-static {v0}, Lcom/onyx/common/util/CloseUtils;->close(Ljava/io/Closeable;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/xslf/draw/AndroidSVGImageRenderer;->image:Lcom/trans/android/AndroidImage;

    return-void
.end method

.method public drawImage(Ljava/awt/Graphics2D;Ljava/awt/geom/Rectangle2D;)Z
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/poi/xslf/draw/AndroidSVGImageRenderer;->drawImage(Ljava/awt/Graphics2D;Ljava/awt/geom/Rectangle2D;Ljava/awt/Insets;)Z

    move-result p0

    return p0
.end method

.method public drawImage(Ljava/awt/Graphics2D;Ljava/awt/geom/Rectangle2D;Ljava/awt/Insets;)Z
    .locals 0

    .line 2
    iget-object p0, p0, Lorg/apache/poi/xslf/draw/AndroidSVGImageRenderer;->image:Lcom/trans/android/AndroidImage;

    invoke-static {p1, p0, p2, p3}, Lorg/apache/poi/sl/draw/AndroidBitmapImageRenderer;->drawImage(Ljava/awt/Graphics2D;Lcom/trans/android/AndroidImage;Ljava/awt/geom/Rectangle2D;Ljava/awt/Insets;)Z

    move-result p0

    return p0
.end method

.method public getBounds()Ljava/awt/geom/Rectangle2D;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xslf/draw/AndroidSVGImageRenderer;->image:Lcom/trans/android/AndroidImage;

    invoke-static {p0}, Lorg/apache/poi/sl/draw/AndroidBitmapImageRenderer;->getBounds(Lcom/trans/android/AndroidImage;)Ljava/awt/geom/Rectangle2D;

    move-result-object p0

    return-object p0
.end method

.method public getImage()Ljava/awt/image/BufferedImage;
    .locals 1

    .line 1
    invoke-interface {p0}, Lorg/apache/poi/sl/draw/ImageRenderer;->getDimension()Ljava/awt/geom/Dimension2D;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/xslf/draw/AndroidSVGImageRenderer;->getImage(Ljava/awt/geom/Dimension2D;)Ljava/awt/image/BufferedImage;

    move-result-object p0

    return-object p0
.end method

.method public getImage(Ljava/awt/geom/Dimension2D;)Ljava/awt/image/BufferedImage;
    .locals 0

    .line 2
    iget-object p0, p0, Lorg/apache/poi/xslf/draw/AndroidSVGImageRenderer;->image:Lcom/trans/android/AndroidImage;

    invoke-static {p0, p1}, Lorg/apache/poi/sl/draw/AndroidBitmapImageRenderer;->getImage(Lcom/trans/android/AndroidImage;Ljava/awt/geom/Dimension2D;)Ljava/awt/image/BufferedImage;

    move-result-object p0

    return-object p0
.end method

.method public getNativeBounds()Ljava/awt/geom/Rectangle2D;
    .locals 0

    invoke-virtual {p0}, Lorg/apache/poi/xslf/draw/AndroidSVGImageRenderer;->getBounds()Ljava/awt/geom/Rectangle2D;

    move-result-object p0

    return-object p0
.end method

.method public loadImage(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p2, 0x0

    .line 1
    invoke-direct {p0, p1, p2}, Lorg/apache/poi/xslf/draw/AndroidSVGImageRenderer;->loadSvgImage(Ljava/io/InputStream;Ljava/awt/geom/Rectangle2D;)V

    return-void
.end method

.method public loadImage(Ljava/io/InputStream;Ljava/lang/String;Ljava/awt/geom/Rectangle2D;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1, p3}, Lorg/apache/poi/xslf/draw/AndroidSVGImageRenderer;->loadSvgImage(Ljava/io/InputStream;Ljava/awt/geom/Rectangle2D;)V

    return-void
.end method

.method public loadImage([BLjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    new-instance p2, Lorg/apache/commons/io/input/UnsynchronizedByteArrayInputStream;

    invoke-direct {p2, p1}, Lorg/apache/commons/io/input/UnsynchronizedByteArrayInputStream;-><init>([B)V

    const/4 p1, 0x0

    invoke-direct {p0, p2, p1}, Lorg/apache/poi/xslf/draw/AndroidSVGImageRenderer;->loadSvgImage(Ljava/io/InputStream;Ljava/awt/geom/Rectangle2D;)V

    return-void
.end method

.method public loadImage([BLjava/lang/String;Ljava/awt/geom/Rectangle2D;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4
    new-instance p2, Lorg/apache/commons/io/input/UnsynchronizedByteArrayInputStream;

    invoke-direct {p2, p1}, Lorg/apache/commons/io/input/UnsynchronizedByteArrayInputStream;-><init>([B)V

    invoke-direct {p0, p2, p3}, Lorg/apache/poi/xslf/draw/AndroidSVGImageRenderer;->loadSvgImage(Ljava/io/InputStream;Ljava/awt/geom/Rectangle2D;)V

    return-void
.end method

.method public setAlpha(D)V
    .locals 1

    iput-wide p1, p0, Lorg/apache/poi/xslf/draw/AndroidSVGImageRenderer;->alpha:D

    iget-object v0, p0, Lorg/apache/poi/xslf/draw/AndroidSVGImageRenderer;->image:Lcom/trans/android/AndroidImage;

    invoke-static {v0, p1, p2}, Lorg/apache/poi/sl/draw/AndroidBitmapImageRenderer;->setAlpha(Lcom/trans/android/AndroidImage;D)Lcom/trans/android/AndroidImage;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/xslf/draw/AndroidSVGImageRenderer;->image:Lcom/trans/android/AndroidImage;

    return-void
.end method
