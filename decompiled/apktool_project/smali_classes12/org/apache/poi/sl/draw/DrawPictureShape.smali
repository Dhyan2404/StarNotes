.class public Lorg/apache/poi/sl/draw/DrawPictureShape;
.super Lorg/apache/poi/sl/draw/DrawSimpleShape;
.source "SourceFile"


# static fields
.field private static final LOG:Lorg/apache/logging/log4j/Logger;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/apache/poi/sl/draw/DrawPictureShape;

    invoke-static {v0}, Lorg/apache/logging/log4j/LogManager;->getLogger(Ljava/lang/Class;)Lorg/apache/logging/log4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/sl/draw/DrawPictureShape;->LOG:Lorg/apache/logging/log4j/Logger;

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/sl/usermodel/PictureShape;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/sl/usermodel/PictureShape<",
            "**>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lorg/apache/poi/sl/draw/DrawSimpleShape;-><init>(Lorg/apache/poi/sl/usermodel/SimpleShape;)V

    return-void
.end method

.method private clipPicture(Ljava/awt/Graphics2D;)V
    .locals 1

    invoke-virtual {p0, p1}, Lorg/apache/poi/sl/draw/DrawSimpleShape;->computeOutlines(Ljava/awt/Graphics2D;)Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/sl/draw/geom/Outline;

    invoke-virtual {v0}, Lorg/apache/poi/sl/draw/geom/Outline;->getOutline()Ljava/awt/Shape;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/awt/Graphics2D;->clip(Ljava/awt/Shape;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static getImageRenderer(Ljava/awt/Graphics2D;Ljava/lang/String;)Lorg/apache/poi/sl/draw/ImageRenderer;
    .locals 3

    if-eqz p0, :cond_0

    sget-object v0, Lorg/apache/poi/sl/draw/Drawable;->IMAGE_RENDERER:Lorg/apache/poi/sl/draw/Drawable$DrawableHint;

    invoke-virtual {p0, v0}, Ljava/awt/Graphics2D;->getRenderingHint(Ljava/awt/RenderingHints$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/sl/draw/ImageRenderer;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    invoke-interface {p0, p1}, Lorg/apache/poi/sl/draw/ImageRenderer;->canRender(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p0

    :cond_1
    new-instance p0, Lorg/apache/poi/sl/draw/BitmapImageRenderer;

    invoke-direct {p0}, Lorg/apache/poi/sl/draw/BitmapImageRenderer;-><init>()V

    invoke-virtual {p0, p1}, Lorg/apache/poi/sl/draw/BitmapImageRenderer;->canRender(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-object p0

    :cond_2
    const-class v0, Lorg/apache/poi/sl/draw/DrawPictureShape;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Lorg/apache/poi/sl/draw/ImageRenderer;

    invoke-static {v1, v0}, Ljava/util/ServiceLoader;->load(Ljava/lang/Class;Ljava/lang/ClassLoader;)Ljava/util/ServiceLoader;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ServiceLoader;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :catch_0
    :cond_3
    :try_start_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/sl/draw/ImageRenderer;

    invoke-interface {v1, p1}, Lorg/apache/poi/sl/draw/ImageRenderer;->canRender(Ljava/lang/String;)Z

    move-result v2
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/ServiceConfigurationError; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_3

    return-object v1

    :catch_1
    sget-object v0, Lorg/apache/poi/sl/draw/DrawPictureShape;->LOG:Lorg/apache/logging/log4j/Logger;

    invoke-interface {v0}, Lorg/apache/logging/log4j/Logger;->atWarn()Lorg/apache/logging/log4j/LogBuilder;

    move-result-object v0

    const-string v1, "No suitable image renderer found for content-type \'{}\' - include poi-scratchpad (for wmf/emf) or poi-ooxml (for svg) jars - svgs/batik doesn\'t work on the module-path!"

    invoke-interface {v0, v1, p1}, Lorg/apache/logging/log4j/LogBuilder;->log(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method private getRenderAnchor(Ljava/awt/Graphics2D;Ljava/awt/geom/Rectangle2D;)Ljava/awt/geom/Rectangle2D;
    .locals 10

    invoke-virtual {p1}, Ljava/awt/Graphics2D;->getTransform()Ljava/awt/geom/AffineTransform;

    move-result-object p0

    invoke-virtual {p0}, Ljava/awt/geom/AffineTransform;->getScaleX()D

    move-result-wide p0

    new-instance v9, Ljava/awt/geom/Rectangle2D$Double;

    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x0

    invoke-virtual {p2}, Ljava/awt/geom/RectangularShape;->getWidth()D

    move-result-wide v5

    mul-double/2addr v5, p0

    invoke-virtual {p2}, Ljava/awt/geom/RectangularShape;->getHeight()D

    move-result-wide v7

    mul-double/2addr v7, p0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Ljava/awt/geom/Rectangle2D$Double;-><init>(DDDD)V

    return-object v9
.end method


# virtual methods
.method public draw(Ljava/awt/Graphics2D;)V
    .locals 1

    invoke-interface {p0, p1}, Lorg/apache/poi/sl/draw/Drawable;->disableDraw(Ljava/awt/Graphics2D;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-super {p0, p1}, Lorg/apache/poi/sl/draw/DrawSimpleShape;->draw(Ljava/awt/Graphics2D;)V

    return-void
.end method

.method public drawContent(Ljava/awt/Graphics2D;)V
    .locals 10

    invoke-virtual {p0}, Lorg/apache/poi/sl/draw/DrawPictureShape;->getShape()Lorg/apache/poi/sl/usermodel/PictureShape;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/apache/poi/sl/draw/DrawShape;->getAnchor(Ljava/awt/Graphics2D;Lorg/apache/poi/sl/usermodel/PlaceableShape;)Ljava/awt/geom/Rectangle2D;

    move-result-object v1

    invoke-interface {v0}, Lorg/apache/poi/sl/usermodel/PictureShape;->getClipping()Ljava/awt/Insets;

    move-result-object v2

    const/4 v3, 0x2

    new-array v4, v3, [Lorg/apache/poi/sl/usermodel/PictureData;

    invoke-interface {v0}, Lorg/apache/poi/sl/usermodel/PictureShape;->getAlternativePictureData()Lorg/apache/poi/sl/usermodel/PictureData;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const/4 v5, 0x1

    invoke-interface {v0}, Lorg/apache/poi/sl/usermodel/PictureShape;->getPictureData()Lorg/apache/poi/sl/usermodel/PictureData;

    move-result-object v0

    aput-object v0, v4, v5

    :goto_0
    if-ge v6, v3, :cond_3

    aget-object v0, v4, v6

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p1}, Ljava/awt/Graphics2D;->getClip()Ljava/awt/Shape;

    move-result-object v5

    const/4 v7, 0x0

    :try_start_0
    invoke-interface {v0}, Lorg/apache/poi/sl/usermodel/PictureData;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    invoke-static {v7}, Lorg/apache/poi/poifs/filesystem/FileMagic;->valueOf(Ljava/io/InputStream;)Lorg/apache/poi/poifs/filesystem/FileMagic;

    move-result-object v8

    invoke-static {v8}, Lorg/apache/poi/common/usermodel/PictureType;->valueOf(Lorg/apache/poi/poifs/filesystem/FileMagic;)Lorg/apache/poi/common/usermodel/PictureType;

    move-result-object v8

    sget-object v9, Lorg/apache/poi/common/usermodel/PictureType;->UNKNOWN:Lorg/apache/poi/common/usermodel/PictureType;

    if-ne v8, v9, :cond_1

    invoke-interface {v0}, Lorg/apache/poi/sl/usermodel/PictureData;->getContentType()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    invoke-virtual {v8}, Lorg/apache/poi/common/usermodel/PictureType;->getContentType()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-static {p1, v0}, Lorg/apache/poi/sl/draw/DrawPictureShape;->getImageRenderer(Ljava/awt/Graphics2D;Ljava/lang/String;)Lorg/apache/poi/sl/draw/ImageRenderer;

    move-result-object v8

    invoke-interface {v8, v0}, Lorg/apache/poi/sl/draw/ImageRenderer;->canRender(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-direct {p0, p1}, Lorg/apache/poi/sl/draw/DrawPictureShape;->clipPicture(Ljava/awt/Graphics2D;)V

    invoke-direct {p0, p1, v1}, Lorg/apache/poi/sl/draw/DrawPictureShape;->getRenderAnchor(Ljava/awt/Graphics2D;Ljava/awt/geom/Rectangle2D;)Ljava/awt/geom/Rectangle2D;

    move-result-object v9

    invoke-interface {v8, v7, v0, v9}, Lorg/apache/poi/sl/draw/ImageRenderer;->loadImage(Ljava/io/InputStream;Ljava/lang/String;Ljava/awt/geom/Rectangle2D;)V

    invoke-interface {v8, p1, v1, v2}, Lorg/apache/poi/sl/draw/ImageRenderer;->drawImage(Ljava/awt/Graphics2D;Ljava/awt/geom/Rectangle2D;Ljava/awt/Insets;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1, v5}, Ljava/awt/Graphics2D;->setClip(Ljava/awt/Shape;)V

    invoke-static {v7}, Lorg/apache/poi/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-void

    :catchall_0
    move-exception p0

    goto :goto_3

    :catch_0
    move-exception v0

    :try_start_1
    sget-object v8, Lorg/apache/poi/sl/draw/DrawPictureShape;->LOG:Lorg/apache/logging/log4j/Logger;

    invoke-interface {v8}, Lorg/apache/logging/log4j/Logger;->atError()Lorg/apache/logging/log4j/LogBuilder;

    move-result-object v8

    invoke-interface {v8, v0}, Lorg/apache/logging/log4j/LogBuilder;->withThrowable(Ljava/lang/Throwable;)Lorg/apache/logging/log4j/LogBuilder;

    move-result-object v0

    const-string v8, "image can\'t be loaded/rendered."

    invoke-interface {v0, v8}, Lorg/apache/logging/log4j/LogBuilder;->log(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    invoke-virtual {p1, v5}, Ljava/awt/Graphics2D;->setClip(Ljava/awt/Shape;)V

    invoke-static {v7}, Lorg/apache/poi/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :goto_3
    invoke-virtual {p1, v5}, Ljava/awt/Graphics2D;->setClip(Ljava/awt/Shape;)V

    invoke-static {v7}, Lorg/apache/poi/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw p0

    :cond_3
    return-void
.end method

.method public getFillPaint(Ljava/awt/Graphics2D;)Ljava/awt/Paint;
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/sl/draw/DrawPictureShape;->getShape()Lorg/apache/poi/sl/usermodel/PictureShape;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/poi/sl/usermodel/SimpleShape;->getFillStyle()Lorg/apache/poi/sl/usermodel/FillStyle;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/poi/sl/usermodel/FillStyle;->getPaint()Lorg/apache/poi/sl/usermodel/PaintStyle;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lorg/apache/poi/sl/usermodel/PaintStyle$TexturePaint;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lorg/apache/poi/sl/draw/DrawFactory;->getInstance(Ljava/awt/Graphics2D;)Lorg/apache/poi/sl/draw/DrawFactory;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/poi/sl/draw/DrawPictureShape;->getShape()Lorg/apache/poi/sl/usermodel/PictureShape;

    move-result-object p0

    invoke-virtual {v1, p0}, Lorg/apache/poi/sl/draw/DrawFactory;->getPaint(Lorg/apache/poi/sl/usermodel/PlaceableShape;)Lorg/apache/poi/sl/draw/DrawPaint;

    move-result-object p0

    invoke-virtual {p0, p1, v0}, Lorg/apache/poi/sl/draw/DrawPaint;->getPaint(Ljava/awt/Graphics2D;Lorg/apache/poi/sl/usermodel/PaintStyle;)Ljava/awt/Paint;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getShape()Lorg/apache/poi/sl/usermodel/PictureShape;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/poi/sl/usermodel/PictureShape<",
            "**>;"
        }
    .end annotation

    .line 3
    iget-object p0, p0, Lorg/apache/poi/sl/draw/DrawShape;->shape:Lorg/apache/poi/sl/usermodel/Shape;

    check-cast p0, Lorg/apache/poi/sl/usermodel/PictureShape;

    return-object p0
.end method

.method public bridge synthetic getShape()Lorg/apache/poi/sl/usermodel/Shape;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/sl/draw/DrawPictureShape;->getShape()Lorg/apache/poi/sl/usermodel/PictureShape;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getShape()Lorg/apache/poi/sl/usermodel/SimpleShape;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/sl/draw/DrawPictureShape;->getShape()Lorg/apache/poi/sl/usermodel/PictureShape;

    move-result-object p0

    return-object p0
.end method

.method public resize()V
    .locals 11

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/sl/draw/DrawPictureShape;->getShape()Lorg/apache/poi/sl/usermodel/PictureShape;

    move-result-object p0

    .line 2
    invoke-interface {p0}, Lorg/apache/poi/sl/usermodel/PictureShape;->getPictureData()Lorg/apache/poi/sl/usermodel/PictureData;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/poi/sl/usermodel/PictureData;->getImageDimension()Ljava/awt/Dimension;

    move-result-object v0

    .line 3
    invoke-interface {p0}, Lorg/apache/poi/sl/usermodel/Shape;->getAnchor()Ljava/awt/geom/Rectangle2D;

    move-result-object v1

    .line 4
    invoke-virtual {v1}, Ljava/awt/geom/RectangularShape;->getX()D

    move-result-wide v3

    .line 5
    invoke-virtual {v1}, Ljava/awt/geom/RectangularShape;->getY()D

    move-result-wide v5

    .line 6
    invoke-virtual {v0}, Ljava/awt/Dimension;->getWidth()D

    move-result-wide v7

    .line 7
    invoke-virtual {v0}, Ljava/awt/Dimension;->getHeight()D

    move-result-wide v9

    .line 8
    new-instance v0, Ljava/awt/geom/Rectangle2D$Double;

    move-object v2, v0

    invoke-direct/range {v2 .. v10}, Ljava/awt/geom/Rectangle2D$Double;-><init>(DDDD)V

    invoke-interface {p0, v0}, Lorg/apache/poi/sl/usermodel/PlaceableShape;->setAnchor(Ljava/awt/geom/Rectangle2D;)V

    return-void
.end method

.method public resize(Ljava/awt/geom/Rectangle2D;)V
    .locals 1

    .line 9
    sget-object v0, Lorg/apache/poi/sl/usermodel/RectAlign;->CENTER:Lorg/apache/poi/sl/usermodel/RectAlign;

    invoke-virtual {p0, p1, v0}, Lorg/apache/poi/sl/draw/DrawPictureShape;->resize(Ljava/awt/geom/Rectangle2D;Lorg/apache/poi/sl/usermodel/RectAlign;)V

    return-void
.end method

.method public resize(Ljava/awt/geom/Rectangle2D;Lorg/apache/poi/sl/usermodel/RectAlign;)V
    .locals 26

    move-object/from16 v0, p1

    .line 10
    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/sl/draw/DrawPictureShape;->getShape()Lorg/apache/poi/sl/usermodel/PictureShape;

    move-result-object v1

    .line 11
    invoke-interface {v1}, Lorg/apache/poi/sl/usermodel/PictureShape;->getPictureData()Lorg/apache/poi/sl/usermodel/PictureData;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/poi/sl/usermodel/PictureData;->getImageDimension()Ljava/awt/Dimension;

    move-result-object v2

    .line 12
    iget v3, v2, Ljava/awt/Dimension;->width:I

    if-lez v3, :cond_3

    iget v3, v2, Ljava/awt/Dimension;->height:I

    if-gtz v3, :cond_0

    goto/16 :goto_4

    .line 13
    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/awt/geom/RectangularShape;->getWidth()D

    move-result-wide v3

    .line 14
    invoke-virtual/range {p1 .. p1}, Ljava/awt/geom/RectangularShape;->getHeight()D

    move-result-wide v5

    .line 15
    iget v7, v2, Ljava/awt/Dimension;->width:I

    int-to-double v8, v7

    div-double v8, v3, v8

    .line 16
    iget v2, v2, Ljava/awt/Dimension;->height:I

    int-to-double v10, v2

    div-double v10, v5, v10

    cmpl-double v12, v8, v10

    const-wide/16 v13, 0x0

    if-lez v12, :cond_1

    int-to-double v2, v7

    mul-double v3, v10, v2

    .line 17
    invoke-virtual/range {p1 .. p1}, Ljava/awt/geom/RectangularShape;->getWidth()D

    move-result-wide v7

    sub-double/2addr v7, v3

    move-wide/from16 v20, v3

    move-wide/from16 v22, v5

    move-wide/from16 v24, v7

    move-wide v7, v13

    move-wide/from16 v13, v24

    goto :goto_0

    :cond_1
    cmpl-double v5, v10, v8

    if-lez v5, :cond_2

    int-to-double v5, v2

    mul-double/2addr v5, v8

    .line 18
    invoke-virtual/range {p1 .. p1}, Ljava/awt/geom/RectangularShape;->getHeight()D

    move-result-wide v7

    sub-double/2addr v7, v5

    move-wide/from16 v20, v3

    move-wide/from16 v22, v5

    .line 19
    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/awt/geom/RectangularShape;->getX()D

    move-result-wide v2

    .line 20
    invoke-virtual/range {p1 .. p1}, Ljava/awt/geom/RectangularShape;->getY()D

    move-result-wide v4

    .line 21
    sget-object v0, Lorg/apache/poi/sl/draw/DrawPictureShape$1;->$SwitchMap$org$apache$poi$sl$usermodel$RectAlign:[I

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget v0, v0, v6

    const-wide/high16 v9, 0x4000000000000000L    # 2.0

    packed-switch v0, :pswitch_data_0

    div-double/2addr v13, v9

    goto :goto_1

    :pswitch_0
    div-double/2addr v13, v9

    :pswitch_1
    add-double/2addr v2, v13

    goto :goto_2

    :goto_1
    :pswitch_2
    add-double/2addr v2, v13

    :pswitch_3
    div-double/2addr v7, v9

    :goto_2
    :pswitch_4
    add-double/2addr v4, v7

    goto :goto_3

    :pswitch_5
    div-double/2addr v13, v9

    :pswitch_6
    add-double/2addr v2, v13

    :goto_3
    :pswitch_7
    move-wide/from16 v16, v2

    move-wide/from16 v18, v4

    .line 22
    new-instance v0, Ljava/awt/geom/Rectangle2D$Double;

    move-object v15, v0

    invoke-direct/range {v15 .. v23}, Ljava/awt/geom/Rectangle2D$Double;-><init>(DDDD)V

    invoke-interface {v1, v0}, Lorg/apache/poi/sl/usermodel/PlaceableShape;->setAnchor(Ljava/awt/geom/Rectangle2D;)V

    return-void

    .line 23
    :cond_2
    invoke-interface {v1, v0}, Lorg/apache/poi/sl/usermodel/PlaceableShape;->setAnchor(Ljava/awt/geom/Rectangle2D;)V

    return-void

    .line 24
    :cond_3
    :goto_4
    invoke-interface {v1, v0}, Lorg/apache/poi/sl/usermodel/PlaceableShape;->setAnchor(Ljava/awt/geom/Rectangle2D;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_6
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_7
    .end packed-switch
.end method
