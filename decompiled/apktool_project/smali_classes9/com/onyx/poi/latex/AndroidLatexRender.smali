.class public Lcom/onyx/poi/latex/AndroidLatexRender;
.super Lorg/apache/poi/latex/LatexRender;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field public e:Ljava/awt/geom/Rectangle2D;

.field public f:Lio/nano/tex/TeXRender;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/apache/poi/latex/LatexRender;-><init>()V

    new-instance v0, Ljava/awt/geom/Rectangle2D$Double;

    invoke-direct {v0}, Ljava/awt/geom/Rectangle2D$Double;-><init>()V

    iput-object v0, p0, Lcom/onyx/poi/latex/AndroidLatexRender;->e:Ljava/awt/geom/Rectangle2D;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    iget-object v0, p0, Lcom/onyx/poi/latex/AndroidLatexRender;->f:Lio/nano/tex/TeXRender;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lio/nano/tex/TeXRender;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/onyx/poi/latex/AndroidLatexRender;->f:Lio/nano/tex/TeXRender;

    :cond_0
    return-void
.end method

.method public drawImage(Ljava/awt/Graphics2D;F)Z
    .locals 6

    .line 4
    iget-object v0, p0, Lcom/onyx/poi/latex/AndroidLatexRender;->f:Lio/nano/tex/TeXRender;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 5
    :cond_0
    iget-object v1, p0, Lorg/apache/poi/latex/LatexRender;->latex:Lorg/apache/poi/latex/Latex;

    iget v1, v1, Lorg/apache/poi/latex/Latex;->fontSize:F

    mul-float/2addr v1, p2

    invoke-virtual {v0, v1}, Lio/nano/tex/TeXRender;->setTextSize(F)V

    .line 6
    instance-of v0, p1, Lcom/trans/android/AndroidGraphics2D;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 7
    check-cast p1, Lcom/trans/android/AndroidGraphics2D;

    invoke-virtual {p1}, Lcom/trans/android/AndroidGraphics2D;->getCanvas()Landroid/graphics/Canvas;

    move-result-object p1

    .line 8
    new-instance v0, Lio/nano/tex/Graphics2D;

    invoke-direct {v0}, Lio/nano/tex/Graphics2D;-><init>()V

    .line 9
    invoke-virtual {v0, p1}, Lio/nano/tex/Graphics2D;->setCanvas(Landroid/graphics/Canvas;)V

    .line 10
    iget-object p1, p0, Lcom/onyx/poi/latex/AndroidLatexRender;->f:Lio/nano/tex/TeXRender;

    iget-object v2, p0, Lorg/apache/poi/latex/LatexRender;->latex:Lorg/apache/poi/latex/Latex;

    iget-object v2, v2, Lorg/apache/poi/latex/Latex;->insets:Ljava/awt/Insets;

    iget v3, v2, Ljava/awt/Insets;->left:I

    int-to-float v3, v3

    mul-float/2addr v3, p2

    float-to-int v3, v3

    iget v2, v2, Ljava/awt/Insets;->top:I

    int-to-float v2, v2

    mul-float/2addr v2, p2

    float-to-int p2, v2

    invoke-virtual {p1, v0, v3, p2}, Lio/nano/tex/TeXRender;->draw(Lio/nano/tex/Graphics2D;II)V

    goto :goto_0

    .line 11
    :cond_1
    iget-object v0, p0, Lorg/apache/poi/latex/LatexRender;->latex:Lorg/apache/poi/latex/Latex;

    iget-object v0, v0, Lorg/apache/poi/latex/Latex;->insets:Ljava/awt/Insets;

    iget v2, v0, Ljava/awt/Insets;->left:I

    iget v3, v0, Ljava/awt/Insets;->right:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    mul-float/2addr v2, p2

    float-to-int v2, v2

    .line 12
    iget v3, v0, Ljava/awt/Insets;->top:I

    iget v0, v0, Ljava/awt/Insets;->bottom:I

    add-int/2addr v3, v0

    int-to-float v0, v3

    mul-float/2addr v0, p2

    float-to-int v0, v0

    .line 13
    iget-object v3, p0, Lcom/onyx/poi/latex/AndroidLatexRender;->f:Lio/nano/tex/TeXRender;

    invoke-virtual {v3}, Lio/nano/tex/TeXRender;->getWidth()I

    move-result v3

    add-int/2addr v3, v2

    iget-object v2, p0, Lcom/onyx/poi/latex/AndroidLatexRender;->f:Lio/nano/tex/TeXRender;

    .line 14
    invoke-virtual {v2}, Lio/nano/tex/TeXRender;->getHeight()I

    move-result v2

    add-int/2addr v2, v0

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 15
    invoke-static {v3, v2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 16
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 17
    new-instance v3, Lio/nano/tex/Graphics2D;

    invoke-direct {v3}, Lio/nano/tex/Graphics2D;-><init>()V

    .line 18
    invoke-virtual {v3, v2}, Lio/nano/tex/Graphics2D;->setCanvas(Landroid/graphics/Canvas;)V

    .line 19
    iget-object v2, p0, Lcom/onyx/poi/latex/AndroidLatexRender;->f:Lio/nano/tex/TeXRender;

    iget-object v4, p0, Lorg/apache/poi/latex/LatexRender;->latex:Lorg/apache/poi/latex/Latex;

    iget-object v4, v4, Lorg/apache/poi/latex/Latex;->insets:Ljava/awt/Insets;

    iget v5, v4, Ljava/awt/Insets;->left:I

    int-to-float v5, v5

    mul-float/2addr v5, p2

    float-to-int v5, v5

    iget v4, v4, Ljava/awt/Insets;->top:I

    int-to-float v4, v4

    mul-float/2addr v4, p2

    float-to-int p2, v4

    invoke-virtual {v2, v3, v5, p2}, Lio/nano/tex/TeXRender;->draw(Lio/nano/tex/Graphics2D;II)V

    .line 20
    new-instance p2, Lcom/trans/android/BufferedImageWrapper;

    new-instance v2, Lcom/trans/android/AndroidImage;

    invoke-direct {v2, v0}, Lcom/trans/android/AndroidImage;-><init>(Landroid/graphics/Bitmap;)V

    invoke-direct {p2, v2}, Lcom/trans/android/BufferedImageWrapper;-><init>(Lcom/trans/android/AndroidImage;)V

    invoke-virtual {p1, p2, v1, v1}, Ljava/awt/Graphics2D;->drawImage(Ljava/awt/Image;Ljava/awt/geom/AffineTransform;Ljava/awt/image/ImageObserver;)Z

    .line 21
    :goto_0
    iget-object p1, p0, Lcom/onyx/poi/latex/AndroidLatexRender;->f:Lio/nano/tex/TeXRender;

    invoke-virtual {p1}, Lio/nano/tex/TeXRender;->release()V

    .line 22
    iput-object v1, p0, Lcom/onyx/poi/latex/AndroidLatexRender;->f:Lio/nano/tex/TeXRender;

    const/4 p0, 0x1

    return p0
.end method

.method public drawImage(Ljava/awt/Graphics2D;Ljava/awt/geom/Rectangle2D;)Z
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lcom/onyx/poi/latex/AndroidLatexRender;->drawImage(Ljava/awt/Graphics2D;Ljava/awt/geom/Rectangle2D;Ljava/awt/Insets;)Z

    move-result p0

    return p0
.end method

.method public drawImage(Ljava/awt/Graphics2D;Ljava/awt/geom/Rectangle2D;Ljava/awt/Insets;)Z
    .locals 0

    .line 2
    iget-object p3, p0, Lcom/onyx/poi/latex/AndroidLatexRender;->f:Lio/nano/tex/TeXRender;

    if-nez p3, :cond_0

    const/4 p0, 0x0

    return p0

    .line 3
    :cond_0
    invoke-virtual {p0, p2}, Lcom/onyx/poi/latex/AndroidLatexRender;->f(Ljava/awt/geom/Rectangle2D;)F

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/onyx/poi/latex/AndroidLatexRender;->drawImage(Ljava/awt/Graphics2D;F)Z

    move-result p0

    return p0
.end method

.method public final f(Ljava/awt/geom/Rectangle2D;)F
    .locals 4

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/awt/geom/RectangularShape;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/awt/geom/RectangularShape;->getWidth()D

    move-result-wide v0

    iget-object v2, p0, Lcom/onyx/poi/latex/AndroidLatexRender;->e:Ljava/awt/geom/Rectangle2D;

    invoke-virtual {v2}, Ljava/awt/geom/RectangularShape;->getWidth()D

    move-result-wide v2

    div-double/2addr v0, v2

    invoke-virtual {p1}, Ljava/awt/geom/RectangularShape;->getHeight()D

    move-result-wide v2

    iget-object p0, p0, Lcom/onyx/poi/latex/AndroidLatexRender;->e:Ljava/awt/geom/Rectangle2D;

    invoke-virtual {p0}, Ljava/awt/geom/RectangularShape;->getHeight()D

    move-result-wide p0

    div-double/2addr v2, p0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide p0

    double-to-float p0, p0

    return p0

    :cond_1
    :goto_0
    const/high16 p0, 0x3f800000    # 1.0f

    return p0
.end method

.method public getImage()Ljava/awt/image/BufferedImage;
    .locals 0

    .line 1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public getImage(Ljava/awt/geom/Dimension2D;)Ljava/awt/image/BufferedImage;
    .locals 0

    .line 2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public getNativeBounds()Ljava/awt/geom/Rectangle2D;
    .locals 0

    iget-object p0, p0, Lcom/onyx/poi/latex/AndroidLatexRender;->e:Ljava/awt/geom/Rectangle2D;

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
    invoke-static {p1}, Lcom/onyx/common/util/FileUtils;->readContentFromStream(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/onyx/poi/latex/AndroidLatexRender;->loadImage(Ljava/lang/String;Ljava/awt/geom/Rectangle2D;)V

    return-void
.end method

.method public loadImage(Ljava/io/InputStream;Ljava/lang/String;Ljava/awt/geom/Rectangle2D;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4
    invoke-static {p1}, Lcom/onyx/common/util/FileUtils;->readContentFromStream(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p3}, Lcom/onyx/poi/latex/AndroidLatexRender;->loadImage(Ljava/lang/String;Ljava/awt/geom/Rectangle2D;)V

    return-void
.end method

.method public loadImage(Ljava/lang/String;Ljava/awt/geom/Rectangle2D;)V
    .locals 1

    .line 5
    const-class v0, Lorg/apache/poi/latex/Latex;

    invoke-static {p1, v0}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/poi/latex/Latex;

    invoke-virtual {p0, p1, p2}, Lcom/onyx/poi/latex/AndroidLatexRender;->loadImage(Lorg/apache/poi/latex/Latex;Ljava/awt/geom/Rectangle2D;)V

    return-void
.end method

.method public loadImage(Lorg/apache/poi/latex/Latex;Ljava/awt/geom/Rectangle2D;)V
    .locals 11

    .line 6
    :try_start_0
    iput-object p1, p0, Lorg/apache/poi/latex/LatexRender;->latex:Lorg/apache/poi/latex/Latex;

    .line 7
    iget-object p2, p1, Lorg/apache/poi/latex/Latex;->foreground:Ljava/awt/Color;

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Ljava/awt/Color;->getRGB()I

    move-result p2

    .line 8
    :goto_0
    invoke-static {}, Lio/nano/tex/LaTeX;->instance()Lio/nano/tex/LaTeX;

    move-result-object v0

    iget-object v1, p1, Lorg/apache/poi/latex/Latex;->content:Ljava/lang/String;

    iget v2, p1, Lorg/apache/poi/latex/Latex;->fontSize:F

    invoke-virtual {v0, v1, v2, p2}, Lio/nano/tex/LaTeX;->parse(Ljava/lang/String;FI)Lio/nano/tex/TeXRender;

    move-result-object p2

    iput-object p2, p0, Lcom/onyx/poi/latex/AndroidLatexRender;->f:Lio/nano/tex/TeXRender;

    .line 9
    iget-object p1, p1, Lorg/apache/poi/latex/Latex;->insets:Ljava/awt/Insets;

    iget v0, p1, Ljava/awt/Insets;->left:I

    iget v1, p1, Ljava/awt/Insets;->right:I

    add-int/2addr v0, v1

    .line 10
    iget v1, p1, Ljava/awt/Insets;->top:I

    iget p1, p1, Ljava/awt/Insets;->bottom:I

    add-int/2addr v1, p1

    .line 11
    iget-object v2, p0, Lcom/onyx/poi/latex/AndroidLatexRender;->e:Ljava/awt/geom/Rectangle2D;

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    invoke-virtual {p2}, Lio/nano/tex/TeXRender;->getWidth()I

    move-result p1

    add-int/2addr p1, v0

    int-to-double v7, p1

    iget-object p0, p0, Lcom/onyx/poi/latex/AndroidLatexRender;->f:Lio/nano/tex/TeXRender;

    invoke-virtual {p0}, Lio/nano/tex/TeXRender;->getHeight()I

    move-result p0

    add-int/2addr p0, v1

    int-to-double v9, p0

    invoke-virtual/range {v2 .. v10}, Ljava/awt/geom/Rectangle2D;->setRect(DDDD)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 12
    sget-object p1, Lorg/apache/poi/latex/LatexRender;->LOG:Lorg/apache/logging/log4j/Logger;

    invoke-interface {p1}, Lorg/apache/logging/log4j/Logger;->atError()Lorg/apache/logging/log4j/LogBuilder;

    move-result-object p1

    invoke-interface {p1, p0}, Lorg/apache/logging/log4j/LogBuilder;->withThrowable(Ljava/lang/Throwable;)Lorg/apache/logging/log4j/LogBuilder;

    move-result-object p0

    invoke-interface {p0}, Lorg/apache/logging/log4j/LogBuilder;->log()V

    :goto_1
    return-void
.end method

.method public loadImage([BLjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, p1}, Ljava/lang/String;-><init>([B)V

    const/4 p1, 0x0

    invoke-virtual {p0, p2, p1}, Lcom/onyx/poi/latex/AndroidLatexRender;->loadImage(Ljava/lang/String;Ljava/awt/geom/Rectangle2D;)V

    return-void
.end method

.method public loadImage([BLjava/lang/String;Ljava/awt/geom/Rectangle2D;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, p1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {p0, p2, p3}, Lcom/onyx/poi/latex/AndroidLatexRender;->loadImage(Ljava/lang/String;Ljava/awt/geom/Rectangle2D;)V

    return-void
.end method

.method public setAlpha(D)V
    .locals 0

    return-void
.end method
