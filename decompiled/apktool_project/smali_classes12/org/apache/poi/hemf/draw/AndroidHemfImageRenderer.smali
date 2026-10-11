.class public Lorg/apache/poi/hemf/draw/AndroidHemfImageRenderer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/sl/draw/ImageRenderer;
.implements Lorg/apache/poi/sl/draw/EmbeddedExtractor;
.implements Ljava/io/Closeable;


# instance fields
.field alpha:D

.field charsetInitialized:Z

.field image:Lorg/apache/poi/hemf/usermodel/HemfPicture;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/poi/hemf/draw/AndroidHemfImageRenderer;->charsetInitialized:Z

    return-void
.end method


# virtual methods
.method public canRender(Ljava/lang/String;)Z
    .locals 0

    sget-object p0, Lorg/apache/poi/sl/usermodel/PictureData$PictureType;->EMF:Lorg/apache/poi/sl/usermodel/PictureData$PictureType;

    iget-object p0, p0, Lorg/apache/poi/sl/usermodel/PictureData$PictureType;->contentType:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public drawImage(Ljava/awt/Graphics2D;Ljava/awt/geom/Rectangle2D;)Z
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/poi/hemf/draw/AndroidHemfImageRenderer;->drawImage(Ljava/awt/Graphics2D;Ljava/awt/geom/Rectangle2D;Ljava/awt/Insets;)Z

    move-result p0

    return p0
.end method

.method public drawImage(Ljava/awt/Graphics2D;Ljava/awt/geom/Rectangle2D;Ljava/awt/Insets;)Z
    .locals 3

    .line 2
    iget-object v0, p0, Lorg/apache/poi/hemf/draw/AndroidHemfImageRenderer;->image:Lorg/apache/poi/hemf/usermodel/HemfPicture;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 3
    :cond_0
    sget-object v0, Lorg/apache/poi/sl/draw/Drawable;->DEFAULT_CHARSET:Lorg/apache/poi/sl/draw/Drawable$DrawableHint;

    invoke-virtual {p1, v0}, Ljava/awt/Graphics2D;->getRenderingHint(Ljava/awt/RenderingHints$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/charset/Charset;

    if-eqz v0, :cond_1

    .line 4
    iget-boolean v2, p0, Lorg/apache/poi/hemf/draw/AndroidHemfImageRenderer;->charsetInitialized:Z

    if-nez v2, :cond_1

    .line 5
    invoke-virtual {p0, v0}, Lorg/apache/poi/hemf/draw/AndroidHemfImageRenderer;->setDefaultCharset(Ljava/nio/charset/Charset;)V

    .line 6
    :cond_1
    new-instance v0, Lorg/apache/poi/hwmf/draw/HwmfGraphicsState;

    invoke-direct {v0}, Lorg/apache/poi/hwmf/draw/HwmfGraphicsState;-><init>()V

    .line 7
    invoke-virtual {v0, p1}, Lorg/apache/poi/hwmf/draw/HwmfGraphicsState;->backup(Ljava/awt/Graphics2D;)V

    if-eqz p3, :cond_2

    .line 8
    :try_start_0
    invoke-virtual {p1, p2}, Ljava/awt/Graphics2D;->clip(Ljava/awt/Shape;)V

    goto :goto_0

    .line 9
    :cond_2
    new-instance p3, Ljava/awt/Insets;

    invoke-direct {p3, v1, v1, v1, v1}, Ljava/awt/Insets;-><init>(IIII)V

    .line 10
    :goto_0
    iget-object p0, p0, Lorg/apache/poi/hemf/draw/AndroidHemfImageRenderer;->image:Lorg/apache/poi/hemf/usermodel/HemfPicture;

    invoke-static {p2, p3}, Lorg/apache/poi/hwmf/draw/AndroidHwmfImageRenderer;->getOuterBounds(Ljava/awt/geom/Rectangle2D;Ljava/awt/Insets;)Ljava/awt/geom/Rectangle2D;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/hemf/usermodel/HemfPicture;->draw(Ljava/awt/Graphics2D;Ljava/awt/geom/Rectangle2D;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    invoke-virtual {v0, p1}, Lorg/apache/poi/hwmf/draw/HwmfGraphicsState;->restore(Ljava/awt/Graphics2D;)V

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p0

    invoke-virtual {v0, p1}, Lorg/apache/poi/hwmf/draw/HwmfGraphicsState;->restore(Ljava/awt/Graphics2D;)V

    .line 12
    throw p0
.end method

.method public getBounds()Ljava/awt/geom/Rectangle2D;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hemf/draw/AndroidHemfImageRenderer;->image:Lorg/apache/poi/hemf/usermodel/HemfPicture;

    if-nez p0, :cond_0

    new-instance p0, Ljava/awt/geom/Rectangle2D$Double;

    invoke-direct {p0}, Ljava/awt/geom/Rectangle2D$Double;-><init>()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/hemf/usermodel/HemfPicture;->getBoundsInPoints()Ljava/awt/geom/Rectangle2D;

    move-result-object p0

    :goto_0
    invoke-static {p0}, Lorg/apache/poi/util/Units;->pointsToPixel(Ljava/awt/geom/Rectangle2D;)Ljava/awt/geom/Rectangle2D;

    move-result-object p0

    return-object p0
.end method

.method public getEmbeddings()Ljava/lang/Iterable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Lorg/apache/poi/sl/draw/EmbeddedExtractor$EmbeddedPart;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/hemf/draw/AndroidHemfImageRenderer;->image:Lorg/apache/poi/hemf/usermodel/HemfPicture;

    invoke-virtual {p0}, Lorg/apache/poi/hemf/usermodel/HemfPicture;->getEmbeddings()Ljava/lang/Iterable;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/poi/hwmf/draw/HwmfImageRenderer;->getEmbeddings(Ljava/lang/Iterable;)Ljava/lang/Iterable;

    move-result-object p0

    return-object p0
.end method

.method public getGenericRecord()Lorg/apache/poi/common/usermodel/GenericRecord;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hemf/draw/AndroidHemfImageRenderer;->image:Lorg/apache/poi/hemf/usermodel/HemfPicture;

    return-object p0
.end method

.method public getImage()Ljava/awt/image/BufferedImage;
    .locals 1

    .line 1
    invoke-interface {p0}, Lorg/apache/poi/sl/draw/ImageRenderer;->getDimension()Ljava/awt/geom/Dimension2D;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/hemf/draw/AndroidHemfImageRenderer;->getImage(Ljava/awt/geom/Dimension2D;)Ljava/awt/image/BufferedImage;

    move-result-object p0

    return-object p0
.end method

.method public getImage(Ljava/awt/geom/Dimension2D;)Ljava/awt/image/BufferedImage;
    .locals 12

    .line 2
    iget-object v0, p0, Lorg/apache/poi/hemf/draw/AndroidHemfImageRenderer;->image:Lorg/apache/poi/hemf/usermodel/HemfPicture;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 3
    :cond_0
    new-instance v0, Lcom/trans/android/AndroidImage;

    invoke-virtual {p1}, Ljava/awt/geom/Dimension2D;->getWidth()D

    move-result-wide v1

    invoke-virtual {p1}, Ljava/awt/geom/Dimension2D;->getHeight()D

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/trans/android/AndroidImage;-><init>(DD)V

    .line 4
    iget-wide v1, p0, Lorg/apache/poi/hemf/draw/AndroidHemfImageRenderer;->alpha:D

    invoke-virtual {v0, v1, v2}, Lcom/trans/android/AndroidImage;->setAlpha(D)V

    .line 5
    invoke-virtual {v0}, Lcom/trans/android/AndroidImage;->getGraphics()Ljava/awt/Graphics;

    move-result-object v1

    check-cast v1, Ljava/awt/Graphics2D;

    .line 6
    sget-object v2, Ljava/awt/RenderingHints;->KEY_ANTIALIASING:Ljava/awt/RenderingHints$Key;

    sget-object v3, Ljava/awt/RenderingHints;->VALUE_ANTIALIAS_ON:Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/awt/Graphics2D;->setRenderingHint(Ljava/awt/RenderingHints$Key;Ljava/lang/Object;)V

    .line 7
    sget-object v2, Ljava/awt/RenderingHints;->KEY_RENDERING:Ljava/awt/RenderingHints$Key;

    sget-object v3, Ljava/awt/RenderingHints;->VALUE_RENDER_QUALITY:Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/awt/Graphics2D;->setRenderingHint(Ljava/awt/RenderingHints$Key;Ljava/lang/Object;)V

    .line 8
    sget-object v2, Ljava/awt/RenderingHints;->KEY_INTERPOLATION:Ljava/awt/RenderingHints$Key;

    sget-object v3, Ljava/awt/RenderingHints;->VALUE_INTERPOLATION_BICUBIC:Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/awt/Graphics2D;->setRenderingHint(Ljava/awt/RenderingHints$Key;Ljava/lang/Object;)V

    .line 9
    sget-object v2, Ljava/awt/RenderingHints;->KEY_FRACTIONALMETRICS:Ljava/awt/RenderingHints$Key;

    sget-object v3, Ljava/awt/RenderingHints;->VALUE_FRACTIONALMETRICS_ON:Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/awt/Graphics2D;->setRenderingHint(Ljava/awt/RenderingHints$Key;Ljava/lang/Object;)V

    .line 10
    iget-object p0, p0, Lorg/apache/poi/hemf/draw/AndroidHemfImageRenderer;->image:Lorg/apache/poi/hemf/usermodel/HemfPicture;

    new-instance v11, Ljava/awt/geom/Rectangle2D$Double;

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    invoke-virtual {p1}, Ljava/awt/geom/Dimension2D;->getWidth()D

    move-result-wide v7

    invoke-virtual {p1}, Ljava/awt/geom/Dimension2D;->getHeight()D

    move-result-wide v9

    move-object v2, v11

    invoke-direct/range {v2 .. v10}, Ljava/awt/geom/Rectangle2D$Double;-><init>(DDDD)V

    invoke-virtual {p0, v1, v11}, Lorg/apache/poi/hemf/usermodel/HemfPicture;->draw(Ljava/awt/Graphics2D;Ljava/awt/geom/Rectangle2D;)V

    .line 11
    invoke-virtual {v1}, Ljava/awt/Graphics2D;->dispose()V

    .line 12
    new-instance p0, Lcom/trans/android/BufferedImageWrapper;

    invoke-direct {p0, v0}, Lcom/trans/android/BufferedImageWrapper;-><init>(Lcom/trans/android/AndroidImage;)V

    return-object p0
.end method

.method public getNativeBounds()Ljava/awt/geom/Rectangle2D;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hemf/draw/AndroidHemfImageRenderer;->image:Lorg/apache/poi/hemf/usermodel/HemfPicture;

    invoke-virtual {p0}, Lorg/apache/poi/hemf/usermodel/HemfPicture;->getBounds()Ljava/awt/geom/Rectangle2D;

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

    .line 1
    new-instance p2, Lorg/apache/poi/hemf/usermodel/HemfPicture;

    invoke-direct {p2, p1}, Lorg/apache/poi/hemf/usermodel/HemfPicture;-><init>(Ljava/io/InputStream;)V

    iput-object p2, p0, Lorg/apache/poi/hemf/draw/AndroidHemfImageRenderer;->image:Lorg/apache/poi/hemf/usermodel/HemfPicture;

    return-void
.end method

.method public loadImage([BLjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    new-instance p2, Lorg/apache/poi/hemf/usermodel/HemfPicture;

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {p2, v0}, Lorg/apache/poi/hemf/usermodel/HemfPicture;-><init>(Ljava/io/InputStream;)V

    iput-object p2, p0, Lorg/apache/poi/hemf/draw/AndroidHemfImageRenderer;->image:Lorg/apache/poi/hemf/usermodel/HemfPicture;

    return-void
.end method

.method public setAlpha(D)V
    .locals 0

    iput-wide p1, p0, Lorg/apache/poi/hemf/draw/AndroidHemfImageRenderer;->alpha:D

    return-void
.end method

.method public setDefaultCharset(Ljava/nio/charset/Charset;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hemf/draw/AndroidHemfImageRenderer;->image:Lorg/apache/poi/hemf/usermodel/HemfPicture;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hemf/usermodel/HemfPicture;->setDefaultCharset(Ljava/nio/charset/Charset;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/apache/poi/hemf/draw/AndroidHemfImageRenderer;->charsetInitialized:Z

    return-void
.end method
