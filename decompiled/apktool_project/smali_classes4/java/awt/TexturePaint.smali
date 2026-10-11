.class public Ljava/awt/TexturePaint;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/awt/Paint;
.implements Ljava/io/Closeable;


# instance fields
.field bufImg:Ljava/awt/image/BufferedImage;

.field sx:D

.field sy:D

.field tx:D

.field ty:D


# direct methods
.method public constructor <init>(Lcom/trans/android/AndroidImage;Ljava/awt/geom/Rectangle2D;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/trans/android/BufferedImageWrapper;

    invoke-direct {v0, p1}, Lcom/trans/android/BufferedImageWrapper;-><init>(Lcom/trans/android/AndroidImage;)V

    invoke-direct {p0, v0, p2}, Ljava/awt/TexturePaint;-><init>(Ljava/awt/image/BufferedImage;Ljava/awt/geom/Rectangle2D;)V

    return-void
.end method

.method public constructor <init>(Ljava/awt/image/BufferedImage;Ljava/awt/geom/Rectangle2D;)V
    .locals 4

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Ljava/awt/TexturePaint;->bufImg:Ljava/awt/image/BufferedImage;

    .line 4
    invoke-virtual {p2}, Ljava/awt/geom/RectangularShape;->getX()D

    move-result-wide v0

    iput-wide v0, p0, Ljava/awt/TexturePaint;->tx:D

    .line 5
    invoke-virtual {p2}, Ljava/awt/geom/RectangularShape;->getY()D

    move-result-wide v0

    iput-wide v0, p0, Ljava/awt/TexturePaint;->ty:D

    .line 6
    invoke-virtual {p2}, Ljava/awt/geom/RectangularShape;->getWidth()D

    move-result-wide v0

    iget-object p1, p0, Ljava/awt/TexturePaint;->bufImg:Ljava/awt/image/BufferedImage;

    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result p1

    int-to-double v2, p1

    div-double/2addr v0, v2

    iput-wide v0, p0, Ljava/awt/TexturePaint;->sx:D

    .line 7
    invoke-virtual {p2}, Ljava/awt/geom/RectangularShape;->getHeight()D

    move-result-wide p1

    iget-object v0, p0, Ljava/awt/TexturePaint;->bufImg:Ljava/awt/image/BufferedImage;

    invoke-virtual {v0}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v0

    int-to-double v0, v0

    div-double/2addr p1, v0

    iput-wide p1, p0, Ljava/awt/TexturePaint;->sy:D

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    iget-object v0, p0, Ljava/awt/TexturePaint;->bufImg:Ljava/awt/image/BufferedImage;

    instance-of v1, v0, Lcom/trans/android/BufferedImageWrapper;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/trans/android/BufferedImageWrapper;

    invoke-virtual {v0}, Lcom/trans/android/BufferedImageWrapper;->getAndroidImage()Lcom/trans/android/AndroidImage;

    move-result-object v0

    invoke-static {v0}, Lcom/onyx/common/util/CloseUtils;->close(Ljava/io/Closeable;)V

    :cond_0
    iget-object p0, p0, Ljava/awt/TexturePaint;->bufImg:Ljava/awt/image/BufferedImage;

    invoke-static {p0}, Lcom/onyx/common/util/CloseUtils;->close(Ljava/io/Closeable;)V

    return-void
.end method

.method public createContext(Ljava/awt/image/ColorModel;Ljava/awt/Rectangle;Ljava/awt/geom/Rectangle2D;Ljava/awt/geom/AffineTransform;Ljava/awt/RenderingHints;)Ljava/awt/PaintContext;
    .locals 2

    if-nez p4, :cond_0

    new-instance p1, Ljava/awt/geom/AffineTransform;

    invoke-direct {p1}, Ljava/awt/geom/AffineTransform;-><init>()V

    goto :goto_0

    :cond_0
    invoke-virtual {p4}, Ljava/awt/geom/AffineTransform;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/awt/geom/AffineTransform;

    :goto_0
    iget-wide p3, p0, Ljava/awt/TexturePaint;->tx:D

    iget-wide v0, p0, Ljava/awt/TexturePaint;->ty:D

    invoke-virtual {p1, p3, p4, v0, v1}, Ljava/awt/geom/AffineTransform;->translate(DD)V

    iget-wide p3, p0, Ljava/awt/TexturePaint;->sx:D

    iget-wide v0, p0, Ljava/awt/TexturePaint;->sy:D

    invoke-virtual {p1, p3, p4, v0, v1}, Ljava/awt/geom/AffineTransform;->scale(DD)V

    iget-object p0, p0, Ljava/awt/TexturePaint;->bufImg:Ljava/awt/image/BufferedImage;

    invoke-static {p0, p1, p5, p2}, Ljava/awt/TexturePaintContext;->getContext(Ljava/awt/image/BufferedImage;Ljava/awt/geom/AffineTransform;Ljava/awt/RenderingHints;Ljava/awt/Rectangle;)Ljava/awt/PaintContext;

    move-result-object p0

    return-object p0
.end method

.method public getAnchorRect()Ljava/awt/geom/Rectangle2D;
    .locals 12

    new-instance v9, Ljava/awt/geom/Rectangle2D$Double;

    iget-wide v1, p0, Ljava/awt/TexturePaint;->tx:D

    iget-wide v3, p0, Ljava/awt/TexturePaint;->ty:D

    iget-wide v5, p0, Ljava/awt/TexturePaint;->sx:D

    iget-object v0, p0, Ljava/awt/TexturePaint;->bufImg:Ljava/awt/image/BufferedImage;

    invoke-virtual {v0}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v0

    int-to-double v7, v0

    mul-double/2addr v5, v7

    iget-wide v7, p0, Ljava/awt/TexturePaint;->sy:D

    iget-object p0, p0, Ljava/awt/TexturePaint;->bufImg:Ljava/awt/image/BufferedImage;

    invoke-virtual {p0}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result p0

    int-to-double v10, p0

    mul-double/2addr v7, v10

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Ljava/awt/geom/Rectangle2D$Double;-><init>(DDDD)V

    return-object v9
.end method

.method public getAndroidImage()Lcom/trans/android/AndroidImage;
    .locals 2

    .line 1
    iget-object v0, p0, Ljava/awt/TexturePaint;->bufImg:Ljava/awt/image/BufferedImage;

    instance-of v1, v0, Lcom/trans/android/BufferedImageWrapper;

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Lcom/trans/android/BufferedImageWrapper;

    invoke-virtual {v0}, Lcom/trans/android/BufferedImageWrapper;->getAndroidImage()Lcom/trans/android/AndroidImage;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    new-instance v0, Lcom/trans/android/AndroidImage;

    iget-object p0, p0, Ljava/awt/TexturePaint;->bufImg:Ljava/awt/image/BufferedImage;

    invoke-direct {v0, p0}, Lcom/trans/android/AndroidImage;-><init>(Ljava/awt/image/BufferedImage;)V

    return-object v0
.end method

.method public getAndroidImage(Lcom/trans/android/AndroidImage;Ljava/awt/geom/Rectangle2D;)Lcom/trans/android/AndroidImage;
    .locals 15

    move-object v0, p0

    .line 10
    iget-wide v1, v0, Ljava/awt/TexturePaint;->sx:D

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    const-wide/16 v5, 0x0

    if-nez v1, :cond_0

    iget-wide v1, v0, Ljava/awt/TexturePaint;->sy:D

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-nez v1, :cond_0

    iget-wide v1, v0, Ljava/awt/TexturePaint;->tx:D

    .line 11
    invoke-static {v1, v2, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-nez v1, :cond_0

    iget-wide v1, v0, Ljava/awt/TexturePaint;->ty:D

    invoke-static {v1, v2, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-nez v1, :cond_0

    .line 12
    invoke-virtual/range {p1 .. p1}, Lcom/trans/android/AndroidImage;->getWidth()I

    move-result v1

    int-to-double v1, v1

    invoke-virtual/range {p2 .. p2}, Ljava/awt/geom/RectangularShape;->getWidth()D

    move-result-wide v7

    sub-double/2addr v1, v7

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    cmpg-double v1, v1, v3

    if-gez v1, :cond_0

    .line 13
    invoke-virtual/range {p1 .. p1}, Lcom/trans/android/AndroidImage;->getHeight()I

    move-result v1

    int-to-double v1, v1

    invoke-virtual/range {p2 .. p2}, Ljava/awt/geom/RectangularShape;->getHeight()D

    move-result-wide v7

    sub-double/2addr v1, v7

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    cmpg-double v1, v1, v3

    if-gez v1, :cond_0

    return-object p1

    .line 14
    :cond_0
    iget-wide v1, v0, Ljava/awt/TexturePaint;->sx:D

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-nez v1, :cond_2

    iget-wide v1, v0, Ljava/awt/TexturePaint;->sy:D

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-nez v1, :cond_2

    iget-wide v1, v0, Ljava/awt/TexturePaint;->tx:D

    .line 15
    invoke-static {v1, v2, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-nez v1, :cond_2

    iget-wide v1, v0, Ljava/awt/TexturePaint;->ty:D

    invoke-static {v1, v2, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    move-object/from16 v1, p1

    goto :goto_1

    .line 16
    :cond_2
    :goto_0
    new-instance v1, Lcom/trans/android/AndroidImage;

    iget-wide v5, v0, Ljava/awt/TexturePaint;->sx:D

    invoke-virtual/range {p1 .. p1}, Lcom/trans/android/AndroidImage;->getWidth()I

    move-result v2

    int-to-double v7, v2

    mul-double/2addr v5, v7

    iget-wide v7, v0, Ljava/awt/TexturePaint;->sy:D

    invoke-virtual/range {p1 .. p1}, Lcom/trans/android/AndroidImage;->getHeight()I

    move-result v2

    int-to-double v9, v2

    mul-double/2addr v7, v9

    invoke-direct {v1, v5, v6, v7, v8}, Lcom/trans/android/AndroidImage;-><init>(DD)V

    .line 17
    invoke-virtual {v1}, Lcom/trans/android/AndroidImage;->getCanvas()Landroid/graphics/Canvas;

    move-result-object v2

    .line 18
    new-instance v5, Landroid/graphics/Rect;

    iget-wide v6, v0, Ljava/awt/TexturePaint;->tx:D

    double-to-int v6, v6

    iget-wide v7, v0, Ljava/awt/TexturePaint;->ty:D

    double-to-int v0, v7

    invoke-virtual/range {p1 .. p1}, Lcom/trans/android/AndroidImage;->getWidth()I

    move-result v7

    invoke-virtual/range {p1 .. p1}, Lcom/trans/android/AndroidImage;->getHeight()I

    move-result v8

    invoke-direct {v5, v6, v0, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 19
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {v1}, Lcom/trans/android/AndroidImage;->getWidth()I

    move-result v6

    invoke-virtual {v1}, Lcom/trans/android/AndroidImage;->getHeight()I

    move-result v7

    const/4 v8, 0x0

    invoke-direct {v0, v8, v8, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 20
    invoke-virtual/range {p1 .. p1}, Lcom/trans/android/AndroidImage;->getAndroidBitmap()Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-static {}, Lcom/onyx/common/util/PaintFactory;->createImagePaint()Landroid/graphics/Paint;

    move-result-object v7

    invoke-virtual {v2, v6, v5, v0, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 21
    invoke-static/range {p1 .. p1}, Lcom/onyx/common/util/CloseUtils;->close(Ljava/io/Closeable;)V

    .line 22
    :goto_1
    invoke-virtual {v1}, Lcom/trans/android/AndroidImage;->getWidth()I

    move-result v0

    int-to-double v5, v0

    invoke-virtual/range {p2 .. p2}, Ljava/awt/geom/RectangularShape;->getWidth()D

    move-result-wide v7

    sub-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v5

    cmpg-double v0, v5, v3

    if-gez v0, :cond_3

    .line 23
    invoke-virtual {v1}, Lcom/trans/android/AndroidImage;->getHeight()I

    move-result v0

    int-to-double v5, v0

    invoke-virtual/range {p2 .. p2}, Ljava/awt/geom/RectangularShape;->getHeight()D

    move-result-wide v7

    sub-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v5

    cmpg-double v0, v5, v3

    if-gez v0, :cond_3

    return-object v1

    :cond_3
    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 24
    invoke-virtual {v1}, Lcom/trans/android/AndroidImage;->getWidth()I

    move-result v11

    invoke-virtual {v1}, Lcom/trans/android/AndroidImage;->getHeight()I

    move-result v12

    invoke-virtual/range {p2 .. p2}, Ljava/awt/geom/RectangularShape;->getWidth()D

    move-result-wide v2

    double-to-int v13, v2

    invoke-virtual/range {p2 .. p2}, Ljava/awt/geom/RectangularShape;->getHeight()D

    move-result-wide v2

    double-to-int v14, v2

    move-object v8, v1

    invoke-virtual/range {v8 .. v14}, Lcom/trans/android/AndroidImage;->getSubimage(IIIIII)Lcom/trans/android/AndroidImage;

    move-result-object v0

    .line 25
    invoke-static {v1}, Lcom/onyx/common/util/CloseUtils;->close(Ljava/io/Closeable;)V

    return-object v0
.end method

.method public getAndroidImage(Ljava/awt/geom/AffineTransform;Ljava/awt/geom/Rectangle2D;)Lcom/trans/android/AndroidImage;
    .locals 4

    .line 4
    invoke-static {}, Lcom/trans/android/awt/TexturePaintUtils;->getConvert()Lcom/trans/android/awt/TexturePaintConvert;

    move-result-object v0

    .line 5
    invoke-interface {v0, p0}, Lcom/trans/android/awt/TexturePaintConvert;->accept(Ljava/awt/TexturePaint;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6
    invoke-interface {v0, p0, p2, p1}, Lcom/trans/android/awt/TexturePaintConvert;->getAndroidImage(Ljava/awt/TexturePaint;Ljava/awt/geom/Rectangle2D;Ljava/awt/geom/AffineTransform;)Lcom/trans/android/AndroidImage;

    move-result-object p0

    return-object p0

    .line 7
    :cond_0
    invoke-virtual {p2}, Ljava/awt/geom/RectangularShape;->getX()D

    move-result-wide v0

    invoke-virtual {p2}, Ljava/awt/geom/RectangularShape;->getY()D

    move-result-wide v2

    invoke-virtual {p1, v0, v1, v2, v3}, Ljava/awt/geom/AffineTransform;->translate(DD)V

    .line 8
    invoke-virtual {p0}, Ljava/awt/TexturePaint;->getAndroidImage()Lcom/trans/android/AndroidImage;

    move-result-object p1

    .line 9
    invoke-virtual {p0, p1, p2}, Ljava/awt/TexturePaint;->getAndroidImage(Lcom/trans/android/AndroidImage;Ljava/awt/geom/Rectangle2D;)Lcom/trans/android/AndroidImage;

    move-result-object p0

    return-object p0
.end method

.method public getImage()Ljava/awt/image/BufferedImage;
    .locals 0

    iget-object p0, p0, Ljava/awt/TexturePaint;->bufImg:Ljava/awt/image/BufferedImage;

    return-object p0
.end method

.method public getTransparency()I
    .locals 0

    iget-object p0, p0, Ljava/awt/TexturePaint;->bufImg:Ljava/awt/image/BufferedImage;

    invoke-virtual {p0}, Ljava/awt/image/BufferedImage;->getColorModel()Ljava/awt/image/ColorModel;

    move-result-object p0

    invoke-virtual {p0}, Ljava/awt/image/ColorModel;->getTransparency()I

    move-result p0

    return p0
.end method
