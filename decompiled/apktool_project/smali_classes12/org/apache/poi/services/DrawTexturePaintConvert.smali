.class public Lorg/apache/poi/services/DrawTexturePaintConvert;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/trans/android/awt/TexturePaintConvert;


# static fields
.field private static final INSETS_EMPTY:Lorg/apache/poi/sl/usermodel/Insets2D;


# direct methods
.method public static constructor <clinit>()V
    .locals 10

    new-instance v9, Lorg/apache/poi/sl/usermodel/Insets2D;

    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lorg/apache/poi/sl/usermodel/Insets2D;-><init>(DDDD)V

    sput-object v9, Lorg/apache/poi/services/DrawTexturePaintConvert;->INSETS_EMPTY:Lorg/apache/poi/sl/usermodel/Insets2D;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getAndroidImage(Lorg/apache/poi/sl/draw/DrawTexturePaint;)Lcom/trans/android/AndroidImage;
    .locals 3

    .line 75
    invoke-virtual {p1}, Ljava/awt/TexturePaint;->getImage()Ljava/awt/image/BufferedImage;

    move-result-object p0

    .line 76
    instance-of p1, p0, Lcom/trans/android/BufferedImageWrapper;

    if-eqz p1, :cond_0

    .line 77
    check-cast p0, Lcom/trans/android/BufferedImageWrapper;

    invoke-virtual {p0}, Lcom/trans/android/BufferedImageWrapper;->getAndroidImage()Lcom/trans/android/AndroidImage;

    move-result-object p0

    return-object p0

    .line 78
    :cond_0
    invoke-virtual {p0}, Ljava/awt/image/BufferedImage;->getType()I

    move-result p1

    invoke-static {p1}, Lcom/trans/android/util/BridgeUtils;->getConfigByImageType(I)Landroid/graphics/Bitmap$Config;

    move-result-object p1

    .line 79
    new-instance v0, Lcom/trans/android/AndroidImage;

    invoke-virtual {p0}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v2

    invoke-direct {v0, v1, v2, p1}, Lcom/trans/android/AndroidImage;-><init>(IILandroid/graphics/Bitmap$Config;)V

    .line 80
    invoke-virtual {p0}, Ljava/awt/image/BufferedImage;->getData()Ljava/awt/image/Raster;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/trans/android/AndroidImage;->setData(Ljava/awt/image/Raster;)V

    return-object v0
.end method


# virtual methods
.method public accept(Ljava/awt/TexturePaint;)Z
    .locals 0

    instance-of p0, p1, Lorg/apache/poi/sl/draw/DrawTexturePaint;

    return p0
.end method

.method public getAndroidImage(Lcom/trans/android/AndroidImage;Ljava/awt/geom/Rectangle2D;Ljava/awt/geom/AffineTransform;Ljava/awt/geom/Point2D;)Lcom/trans/android/AndroidImage;
    .locals 11

    .line 55
    invoke-virtual {p2}, Ljava/awt/geom/RectangularShape;->getWidth()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result p0

    if-nez p0, :cond_4

    invoke-virtual {p2}, Ljava/awt/geom/RectangularShape;->getHeight()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result p0

    if-eqz p0, :cond_0

    goto/16 :goto_1

    .line 56
    :cond_0
    invoke-virtual {p2}, Ljava/awt/geom/RectangularShape;->getX()D

    move-result-wide v0

    invoke-virtual {p2}, Ljava/awt/geom/RectangularShape;->getY()D

    move-result-wide v2

    invoke-virtual {p3, v0, v1, v2, v3}, Ljava/awt/geom/AffineTransform;->translate(DD)V

    .line 57
    invoke-virtual {p1}, Lcom/trans/android/AndroidImage;->getWidth()I

    move-result p0

    int-to-double v0, p0

    invoke-virtual {p2}, Ljava/awt/geom/RectangularShape;->getWidth()D

    move-result-wide v2

    sub-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpg-double p0, v0, v2

    if-gez p0, :cond_2

    .line 58
    invoke-virtual {p1}, Lcom/trans/android/AndroidImage;->getHeight()I

    move-result p0

    int-to-double v0, p0

    invoke-virtual {p2}, Ljava/awt/geom/RectangularShape;->getHeight()D

    move-result-wide v4

    sub-double/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    cmpg-double p0, v0, v2

    if-gez p0, :cond_2

    if-eqz p4, :cond_1

    .line 59
    invoke-virtual {p4}, Ljava/awt/geom/Point2D;->getX()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Double;->compare(DD)I

    move-result p0

    if-nez p0, :cond_2

    .line 60
    invoke-virtual {p4}, Ljava/awt/geom/Point2D;->getY()D

    move-result-wide v0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Double;->compare(DD)I

    move-result p0

    if-nez p0, :cond_2

    :cond_1
    return-object p1

    .line 61
    :cond_2
    new-instance p0, Lcom/trans/android/AndroidImage;

    invoke-virtual {p2}, Ljava/awt/geom/RectangularShape;->getWidth()D

    move-result-wide v0

    invoke-virtual {p2}, Ljava/awt/geom/RectangularShape;->getHeight()D

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/trans/android/AndroidImage;-><init>(DD)V

    .line 62
    invoke-virtual {p0}, Lcom/trans/android/AndroidImage;->getCanvas()Landroid/graphics/Canvas;

    move-result-object p3

    const/4 v0, 0x0

    if-nez p4, :cond_3

    .line 63
    new-instance p2, Landroid/graphics/Rect;

    invoke-virtual {p1}, Lcom/trans/android/AndroidImage;->getWidth()I

    move-result p4

    invoke-virtual {p1}, Lcom/trans/android/AndroidImage;->getHeight()I

    move-result v1

    invoke-direct {p2, v0, v0, p4, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_0

    .line 64
    :cond_3
    invoke-virtual {p1}, Lcom/trans/android/AndroidImage;->getWidth()I

    move-result v1

    int-to-double v1, v1

    invoke-virtual {p2}, Ljava/awt/geom/RectangularShape;->getWidth()D

    move-result-wide v3

    invoke-virtual {p4}, Ljava/awt/geom/Point2D;->getX()D

    move-result-wide v5

    sub-double/2addr v3, v5

    div-double/2addr v1, v3

    .line 65
    invoke-virtual {p1}, Lcom/trans/android/AndroidImage;->getHeight()I

    move-result v3

    int-to-double v3, v3

    invoke-virtual {p2}, Ljava/awt/geom/RectangularShape;->getHeight()D

    move-result-wide v5

    invoke-virtual {p4}, Ljava/awt/geom/Point2D;->getY()D

    move-result-wide v7

    sub-double/2addr v5, v7

    div-double/2addr v3, v5

    .line 66
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(DD)D

    move-result-wide v1

    .line 67
    invoke-virtual {p4}, Ljava/awt/geom/Point2D;->getX()D

    move-result-wide v3

    neg-double v3, v3

    mul-double/2addr v3, v1

    .line 68
    invoke-virtual {p4}, Ljava/awt/geom/Point2D;->getY()D

    move-result-wide v5

    neg-double v5, v5

    mul-double/2addr v5, v1

    .line 69
    new-instance p4, Landroid/graphics/Rect;

    double-to-int v7, v3

    double-to-int v8, v5

    .line 70
    invoke-virtual {p2}, Ljava/awt/geom/RectangularShape;->getWidth()D

    move-result-wide v9

    mul-double/2addr v9, v1

    add-double/2addr v9, v3

    double-to-int v3, v9

    .line 71
    invoke-virtual {p2}, Ljava/awt/geom/RectangularShape;->getHeight()D

    move-result-wide v9

    mul-double/2addr v9, v1

    add-double/2addr v9, v5

    double-to-int p2, v9

    invoke-direct {p4, v7, v8, v3, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object p2, p4

    .line 72
    :goto_0
    new-instance p4, Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/trans/android/AndroidImage;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/trans/android/AndroidImage;->getHeight()I

    move-result v2

    invoke-direct {p4, v0, v0, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 73
    invoke-virtual {p1}, Lcom/trans/android/AndroidImage;->getAndroidBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {}, Lcom/onyx/common/util/PaintFactory;->createImagePaint()Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {p3, v0, p2, p4, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 74
    invoke-static {p1}, Lcom/onyx/common/util/CloseUtils;->close(Ljava/io/Closeable;)V

    return-object p0

    :cond_4
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getAndroidImage(Ljava/awt/TexturePaint;Ljava/awt/geom/Rectangle2D;Ljava/awt/geom/AffineTransform;)Lcom/trans/android/AndroidImage;
    .locals 0

    .line 1
    check-cast p1, Lorg/apache/poi/sl/draw/DrawTexturePaint;

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/poi/services/DrawTexturePaintConvert;->getAndroidImage(Lorg/apache/poi/sl/draw/DrawTexturePaint;Ljava/awt/geom/Rectangle2D;Ljava/awt/geom/AffineTransform;)Lcom/trans/android/AndroidImage;

    move-result-object p0

    return-object p0
.end method

.method public getAndroidImage(Lorg/apache/poi/sl/draw/DrawTexturePaint;Lcom/trans/android/AndroidImage;Ljava/awt/geom/Rectangle2D;)Lcom/trans/android/AndroidImage;
    .locals 25

    move-object/from16 v0, p2

    .line 24
    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/sl/draw/DrawTexturePaint;->getFill()Lorg/apache/poi/sl/usermodel/PaintStyle$TexturePaint;

    move-result-object v1

    .line 25
    invoke-interface {v1}, Lorg/apache/poi/sl/usermodel/PaintStyle$TexturePaint;->getInsets()Lorg/apache/poi/sl/usermodel/Insets2D;

    move-result-object v2

    .line 26
    invoke-interface {v1}, Lorg/apache/poi/sl/usermodel/PaintStyle$TexturePaint;->getStretch()Lorg/apache/poi/sl/usermodel/Insets2D;

    move-result-object v1

    if-eqz v2, :cond_0

    .line 27
    sget-object v3, Lorg/apache/poi/services/DrawTexturePaintConvert;->INSETS_EMPTY:Lorg/apache/poi/sl/usermodel/Insets2D;

    invoke-virtual {v3, v2}, Lorg/apache/poi/sl/usermodel/Insets2D;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    if-nez v1, :cond_1

    return-object v0

    .line 28
    :cond_1
    invoke-virtual/range {p2 .. p2}, Lcom/trans/android/AndroidImage;->getWidth()I

    move-result v3

    .line 29
    invoke-virtual/range {p2 .. p2}, Lcom/trans/android/AndroidImage;->getHeight()I

    move-result v4

    const-wide v5, 0x40f86a0000000000L    # 100000.0

    if-eqz v2, :cond_3

    .line 30
    sget-object v7, Lorg/apache/poi/services/DrawTexturePaintConvert;->INSETS_EMPTY:Lorg/apache/poi/sl/usermodel/Insets2D;

    invoke-virtual {v7, v2}, Lorg/apache/poi/sl/usermodel/Insets2D;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 31
    iget-wide v7, v2, Lorg/apache/poi/sl/usermodel/Insets2D;->left:D

    const-wide/16 v9, 0x0

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->max(DD)D

    move-result-wide v7

    div-double/2addr v7, v5

    int-to-double v11, v3

    mul-double/2addr v7, v11

    double-to-int v7, v7

    .line 32
    iget-wide v13, v2, Lorg/apache/poi/sl/usermodel/Insets2D;->top:D

    invoke-static {v13, v14, v9, v10}, Ljava/lang/Math;->max(DD)D

    move-result-wide v13

    div-double/2addr v13, v5

    int-to-double v5, v4

    mul-double/2addr v13, v5

    double-to-int v4, v13

    .line 33
    iget-wide v13, v2, Lorg/apache/poi/sl/usermodel/Insets2D;->left:D

    invoke-static {v13, v14, v9, v10}, Ljava/lang/Math;->max(DD)D

    move-result-wide v13

    const-wide v15, 0x40f86a0000000000L    # 100000.0

    sub-double v13, v15, v13

    move-object v8, v1

    iget-wide v0, v2, Lorg/apache/poi/sl/usermodel/Insets2D;->right:D

    invoke-static {v0, v1, v9, v10}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    sub-double/2addr v13, v0

    div-double/2addr v13, v15

    mul-double/2addr v13, v11

    double-to-int v0, v13

    .line 34
    iget-wide v11, v2, Lorg/apache/poi/sl/usermodel/Insets2D;->top:D

    invoke-static {v11, v12, v9, v10}, Ljava/lang/Math;->max(DD)D

    move-result-wide v11

    sub-double v11, v15, v11

    iget-wide v1, v2, Lorg/apache/poi/sl/usermodel/Insets2D;->bottom:D

    invoke-static {v1, v2, v9, v10}, Ljava/lang/Math;->max(DD)D

    move-result-wide v1

    sub-double/2addr v11, v1

    div-double/2addr v11, v15

    mul-double/2addr v11, v5

    double-to-int v1, v11

    if-nez v7, :cond_2

    if-nez v4, :cond_2

    if-ne v0, v3, :cond_2

    move-object/from16 v2, p2

    goto :goto_0

    :cond_2
    move-object/from16 v2, p2

    .line 35
    invoke-virtual {v2, v7, v4, v0, v1}, Lcom/trans/android/AndroidImage;->getSubimage(IIII)Lcom/trans/android/AndroidImage;

    move-result-object v0

    .line 36
    invoke-static/range {p2 .. p2}, Lcom/onyx/common/util/CloseUtils;->close(Ljava/io/Closeable;)V

    goto :goto_1

    :cond_3
    move-object v2, v0

    move-object v8, v1

    :goto_0
    move-object v0, v2

    :goto_1
    if-eqz v8, :cond_4

    .line 37
    new-instance v1, Ljava/awt/geom/Rectangle2D$Double;

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    invoke-virtual {v0}, Lcom/trans/android/AndroidImage;->getWidth()I

    move-result v2

    int-to-double v14, v2

    invoke-virtual {v0}, Lcom/trans/android/AndroidImage;->getHeight()I

    move-result v2

    int-to-double v2, v2

    move-object v9, v1

    move-wide/from16 v16, v2

    invoke-direct/range {v9 .. v17}, Ljava/awt/geom/Rectangle2D$Double;-><init>(DDDD)V

    .line 38
    new-instance v2, Ljava/awt/geom/Rectangle2D$Double;

    iget-wide v3, v8, Lorg/apache/poi/sl/usermodel/Insets2D;->left:D

    const-wide v5, 0x40f86a0000000000L    # 100000.0

    div-double/2addr v3, v5

    .line 39
    invoke-virtual/range {p3 .. p3}, Ljava/awt/geom/RectangularShape;->getWidth()D

    move-result-wide v9

    mul-double v17, v3, v9

    iget-wide v3, v8, Lorg/apache/poi/sl/usermodel/Insets2D;->top:D

    div-double/2addr v3, v5

    .line 40
    invoke-virtual/range {p3 .. p3}, Ljava/awt/geom/RectangularShape;->getHeight()D

    move-result-wide v9

    mul-double v19, v3, v9

    iget-wide v3, v8, Lorg/apache/poi/sl/usermodel/Insets2D;->left:D

    sub-double v3, v5, v3

    iget-wide v9, v8, Lorg/apache/poi/sl/usermodel/Insets2D;->right:D

    sub-double/2addr v3, v9

    div-double/2addr v3, v5

    .line 41
    invoke-virtual/range {p3 .. p3}, Ljava/awt/geom/RectangularShape;->getWidth()D

    move-result-wide v9

    mul-double v21, v3, v9

    iget-wide v3, v8, Lorg/apache/poi/sl/usermodel/Insets2D;->top:D

    sub-double v3, v5, v3

    iget-wide v7, v8, Lorg/apache/poi/sl/usermodel/Insets2D;->bottom:D

    sub-double/2addr v3, v7

    div-double/2addr v3, v5

    .line 42
    invoke-virtual/range {p3 .. p3}, Ljava/awt/geom/RectangularShape;->getHeight()D

    move-result-wide v5

    mul-double v23, v3, v5

    move-object/from16 v16, v2

    invoke-direct/range {v16 .. v24}, Ljava/awt/geom/Rectangle2D$Double;-><init>(DDDD)V

    .line 43
    new-instance v3, Lcom/trans/android/AndroidImage;

    invoke-virtual/range {p3 .. p3}, Ljava/awt/geom/RectangularShape;->getWidth()D

    move-result-wide v4

    invoke-virtual/range {p3 .. p3}, Ljava/awt/geom/RectangularShape;->getHeight()D

    move-result-wide v6

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/trans/android/AndroidImage;-><init>(DD)V

    .line 44
    invoke-virtual {v3}, Lcom/trans/android/AndroidImage;->createGraphics()Lcom/trans/android/AndroidGraphics2D;

    move-result-object v4

    .line 45
    sget-object v5, Ljava/awt/AlphaComposite;->Clear:Ljava/awt/AlphaComposite;

    invoke-virtual {v4, v5}, Ljava/awt/Graphics2D;->setComposite(Ljava/awt/Composite;)V

    .line 46
    invoke-virtual {v3}, Lcom/trans/android/AndroidImage;->getWidth()I

    move-result v5

    invoke-virtual {v3}, Lcom/trans/android/AndroidImage;->getHeight()I

    move-result v6

    const/4 v7, 0x0

    invoke-virtual {v4, v7, v7, v5, v6}, Ljava/awt/Graphics2D;->fillRect(IIII)V

    .line 47
    sget-object v5, Ljava/awt/AlphaComposite;->SrcOver:Ljava/awt/AlphaComposite;

    invoke-virtual {v4, v5}, Ljava/awt/Graphics2D;->setComposite(Ljava/awt/Composite;)V

    .line 48
    new-instance v5, Ljava/awt/geom/AffineTransform;

    invoke-direct {v5}, Ljava/awt/geom/AffineTransform;-><init>()V

    .line 49
    invoke-virtual {v2}, Ljava/awt/geom/RectangularShape;->getCenterX()D

    move-result-wide v6

    invoke-virtual {v2}, Ljava/awt/geom/RectangularShape;->getCenterY()D

    move-result-wide v8

    invoke-virtual {v5, v6, v7, v8, v9}, Ljava/awt/geom/AffineTransform;->translate(DD)V

    .line 50
    invoke-virtual {v2}, Ljava/awt/geom/RectangularShape;->getWidth()D

    move-result-wide v6

    invoke-virtual {v1}, Ljava/awt/geom/RectangularShape;->getWidth()D

    move-result-wide v8

    div-double/2addr v6, v8

    invoke-virtual {v2}, Ljava/awt/geom/RectangularShape;->getHeight()D

    move-result-wide v8

    invoke-virtual {v1}, Ljava/awt/geom/RectangularShape;->getHeight()D

    move-result-wide v10

    div-double/2addr v8, v10

    invoke-virtual {v5, v6, v7, v8, v9}, Ljava/awt/geom/AffineTransform;->scale(DD)V

    .line 51
    invoke-virtual {v1}, Ljava/awt/geom/RectangularShape;->getCenterX()D

    move-result-wide v6

    neg-double v6, v6

    invoke-virtual {v1}, Ljava/awt/geom/RectangularShape;->getCenterY()D

    move-result-wide v1

    neg-double v1, v1

    invoke-virtual {v5, v6, v7, v1, v2}, Ljava/awt/geom/AffineTransform;->translate(DD)V

    .line 52
    invoke-virtual {v4, v0, v5}, Ljava/awt/Graphics2D;->drawRenderedImage(Ljava/awt/image/RenderedImage;Ljava/awt/geom/AffineTransform;)V

    .line 53
    invoke-virtual {v4}, Ljava/awt/Graphics2D;->dispose()V

    .line 54
    invoke-static {v0}, Lcom/onyx/common/util/CloseUtils;->close(Ljava/io/Closeable;)V

    move-object v0, v3

    :cond_4
    return-object v0
.end method

.method public getAndroidImage(Lorg/apache/poi/sl/draw/DrawTexturePaint;Ljava/awt/geom/Rectangle2D;Ljava/awt/geom/AffineTransform;)Lcom/trans/android/AndroidImage;
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v9, p3

    .line 3
    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/sl/draw/DrawTexturePaint;->getFill()Lorg/apache/poi/sl/usermodel/PaintStyle$TexturePaint;

    move-result-object v10

    .line 4
    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/sl/draw/DrawTexturePaint;->getAwtShape()Ljava/awt/Shape;

    move-result-object v11

    .line 5
    invoke-direct/range {p0 .. p1}, Lorg/apache/poi/services/DrawTexturePaintConvert;->getAndroidImage(Lorg/apache/poi/sl/draw/DrawTexturePaint;)Lcom/trans/android/AndroidImage;

    move-result-object v12

    .line 6
    invoke-interface {v10}, Lorg/apache/poi/sl/usermodel/PaintStyle$TexturePaint;->isRotatedWithShape()Z

    move-result v2

    if-nez v2, :cond_3

    if-nez v11, :cond_0

    goto/16 :goto_0

    .line 7
    :cond_0
    new-instance v2, Ljava/awt/geom/AffineTransform;

    invoke-direct {v2, v9}, Ljava/awt/geom/AffineTransform;-><init>(Ljava/awt/geom/AffineTransform;)V

    .line 8
    invoke-virtual {v2}, Ljava/awt/geom/AffineTransform;->getTranslateX()D

    move-result-wide v3

    neg-double v3, v3

    invoke-virtual {v2}, Ljava/awt/geom/AffineTransform;->getTranslateY()D

    move-result-wide v5

    neg-double v5, v5

    invoke-static {v3, v4, v5, v6}, Ljava/awt/geom/AffineTransform;->getTranslateInstance(DD)Ljava/awt/geom/AffineTransform;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/awt/geom/AffineTransform;->preConcatenate(Ljava/awt/geom/AffineTransform;)V

    .line 9
    new-instance v3, Ljava/awt/geom/Point2D$Double;

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    const-wide/16 v6, 0x0

    invoke-direct {v3, v4, v5, v6, v7}, Ljava/awt/geom/Point2D$Double;-><init>(DD)V

    .line 10
    invoke-virtual {v2, v3, v3}, Ljava/awt/geom/AffineTransform;->transform(Ljava/awt/geom/Point2D;Ljava/awt/geom/Point2D;)Ljava/awt/geom/Point2D;

    move-result-object v2

    .line 11
    invoke-virtual {v2}, Ljava/awt/geom/Point2D;->getY()D

    move-result-wide v3

    invoke-virtual {v2}, Ljava/awt/geom/Point2D;->getX()D

    move-result-wide v13

    invoke-static {v3, v4, v13, v14}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v13

    cmpl-double v2, v13, v6

    if-eqz v2, :cond_1

    neg-double v3, v13

    .line 12
    invoke-virtual/range {p2 .. p2}, Ljava/awt/geom/RectangularShape;->getCenterX()D

    move-result-wide v5

    invoke-virtual/range {p2 .. p2}, Ljava/awt/geom/RectangularShape;->getCenterY()D

    move-result-wide v7

    move-object/from16 v2, p3

    invoke-virtual/range {v2 .. v8}, Ljava/awt/geom/AffineTransform;->rotate(DDD)V

    .line 13
    :cond_1
    invoke-virtual/range {p2 .. p2}, Ljava/awt/geom/RectangularShape;->getCenterX()D

    move-result-wide v17

    invoke-virtual/range {p2 .. p2}, Ljava/awt/geom/RectangularShape;->getCenterY()D

    move-result-wide v19

    move-wide v15, v13

    invoke-static/range {v15 .. v20}, Ljava/awt/geom/AffineTransform;->getRotateInstance(DDD)Ljava/awt/geom/AffineTransform;

    move-result-object v2

    .line 14
    invoke-virtual {v2, v11}, Ljava/awt/geom/AffineTransform;->createTransformedShape(Ljava/awt/Shape;)Ljava/awt/Shape;

    move-result-object v2

    invoke-interface {v2}, Ljava/awt/Shape;->getBounds2D()Ljava/awt/geom/Rectangle2D;

    move-result-object v2

    .line 15
    new-instance v3, Lorg/apache/poi/util/Dimension2DDouble;

    invoke-direct {v3}, Lorg/apache/poi/util/Dimension2DDouble;-><init>()V

    .line 16
    invoke-virtual {v2}, Ljava/awt/geom/RectangularShape;->getWidth()D

    move-result-wide v4

    invoke-virtual {v2}, Ljava/awt/geom/RectangularShape;->getHeight()D

    move-result-wide v6

    invoke-virtual {v3, v4, v5, v6, v7}, Ljava/awt/geom/Dimension2D;->setSize(DD)V

    .line 17
    invoke-virtual {v2}, Ljava/awt/geom/RectangularShape;->getX()D

    move-result-wide v3

    invoke-virtual {v2}, Ljava/awt/geom/RectangularShape;->getY()D

    move-result-wide v5

    invoke-virtual {v9, v3, v4, v5, v6}, Ljava/awt/geom/AffineTransform;->translate(DD)V

    .line 18
    invoke-virtual {v0, v1, v12, v2}, Lorg/apache/poi/services/DrawTexturePaintConvert;->getAndroidImage(Lorg/apache/poi/sl/draw/DrawTexturePaint;Lcom/trans/android/AndroidImage;Ljava/awt/geom/Rectangle2D;)Lcom/trans/android/AndroidImage;

    move-result-object v0

    .line 19
    invoke-interface {v10}, Lorg/apache/poi/sl/usermodel/PaintStyle$TexturePaint;->getScale()Ljava/awt/geom/Dimension2D;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 20
    invoke-virtual/range {p3 .. p3}, Ljava/awt/geom/AffineTransform;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/awt/geom/AffineTransform;

    invoke-virtual {v1, v2, v3}, Lorg/apache/poi/sl/draw/DrawTexturePaint;->getTiledInstance(Ljava/awt/geom/Rectangle2D;Ljava/awt/geom/AffineTransform;)Ljava/awt/geom/AffineTransform;

    move-result-object v1

    .line 21
    invoke-virtual/range {p3 .. p3}, Ljava/awt/geom/AffineTransform;->setToIdentity()V

    .line 22
    invoke-virtual {v9, v1}, Ljava/awt/geom/AffineTransform;->concatenate(Ljava/awt/geom/AffineTransform;)V

    :cond_2
    return-object v0

    .line 23
    :cond_3
    :goto_0
    invoke-interface {v10}, Lorg/apache/poi/sl/usermodel/PaintStyle$TexturePaint;->getOffset()Ljava/awt/geom/Point2D;

    move-result-object v1

    move-object/from16 v2, p2

    invoke-virtual {v0, v12, v2, v9, v1}, Lorg/apache/poi/services/DrawTexturePaintConvert;->getAndroidImage(Lcom/trans/android/AndroidImage;Ljava/awt/geom/Rectangle2D;Ljava/awt/geom/AffineTransform;Ljava/awt/geom/Point2D;)Lcom/trans/android/AndroidImage;

    move-result-object v0

    return-object v0
.end method
