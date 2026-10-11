.class public abstract Lorg/apache/poi/wp/usermodel/WPPicture;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/wp/usermodel/IPicture;


# instance fields
.field protected final LOG:Lorg/apache/logging/log4j/Logger;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/logging/log4j/LogManager;->getLogger(Ljava/lang/Class;)Lorg/apache/logging/log4j/Logger;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/wp/usermodel/WPPicture;->LOG:Lorg/apache/logging/log4j/Logger;

    return-void
.end method

.method private applyOutLine(Ljava/awt/Graphics2D;D)V
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/wp/usermodel/WPPicture;->getOutlines()Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/awt/geom/AffineTransform;

    invoke-direct {v0}, Ljava/awt/geom/AffineTransform;-><init>()V

    invoke-virtual {v0, p2, p3, p2, p3}, Ljava/awt/geom/AffineTransform;->scale(DD)V

    invoke-virtual {v0}, Ljava/awt/geom/AffineTransform;->isIdentity()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/apache/poi/sl/draw/geom/Outline;

    invoke-virtual {p2}, Lorg/apache/poi/sl/draw/geom/Outline;->getOutline()Ljava/awt/Shape;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/awt/Graphics2D;->clip(Ljava/awt/Shape;)V

    goto :goto_0

    :cond_1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/apache/poi/sl/draw/geom/Outline;

    invoke-virtual {p2}, Lorg/apache/poi/sl/draw/geom/Outline;->getOutline()Ljava/awt/Shape;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/awt/geom/AffineTransform;->createTransformedShape(Ljava/awt/Shape;)Ljava/awt/Shape;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/awt/Graphics2D;->clip(Ljava/awt/Shape;)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method private applyTransform(Ljava/awt/Graphics2D;Ljava/awt/geom/Rectangle2D;Ljava/awt/geom/Rectangle2D;D)V
    .locals 1

    invoke-static {p2}, Lorg/apache/poi/util/RectUtils;->isNullOrEmpty(Ljava/awt/geom/RectangularShape;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1, p4, p5}, Lorg/apache/poi/wp/usermodel/WPPicture;->applyOutLine(Ljava/awt/Graphics2D;D)V

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/poi/wp/usermodel/WPPicture;->rotate(Ljava/awt/Graphics2D;Ljava/awt/geom/Rectangle2D;Ljava/awt/geom/Rectangle2D;)V

    invoke-direct {p0, p1, p2}, Lorg/apache/poi/wp/usermodel/WPPicture;->flipHorizontal(Ljava/awt/Graphics2D;Ljava/awt/geom/Rectangle2D;)V

    invoke-direct {p0, p1, p2}, Lorg/apache/poi/wp/usermodel/WPPicture;->flipVertical(Ljava/awt/Graphics2D;Ljava/awt/geom/Rectangle2D;)V

    return-void
.end method

.method private drawBackground(Ljava/awt/Graphics2D;Ljava/awt/geom/Rectangle2D;)V
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/wp/usermodel/WPPicture;->getBackground()Ljava/awt/Color;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Ljava/awt/Graphics2D;->getColor()Ljava/awt/Color;

    move-result-object v0

    invoke-virtual {p1, p0}, Ljava/awt/Graphics2D;->setColor(Ljava/awt/Color;)V

    invoke-virtual {p1, p2}, Ljava/awt/Graphics2D;->fill(Ljava/awt/Shape;)V

    invoke-virtual {p1, v0}, Ljava/awt/Graphics2D;->setColor(Ljava/awt/Color;)V

    :cond_0
    return-void
.end method

.method private flipHorizontal(Ljava/awt/Graphics2D;Ljava/awt/geom/Rectangle2D;)V
    .locals 4

    invoke-virtual {p0}, Lorg/apache/poi/wp/usermodel/WPPicture;->flipH()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p2}, Ljava/awt/geom/RectangularShape;->getX()D

    move-result-wide v0

    invoke-virtual {p2}, Ljava/awt/geom/RectangularShape;->getWidth()D

    move-result-wide v2

    add-double/2addr v0, v2

    invoke-virtual {p2}, Ljava/awt/geom/RectangularShape;->getY()D

    move-result-wide v2

    invoke-virtual {p1, v0, v1, v2, v3}, Ljava/awt/Graphics2D;->translate(DD)V

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-virtual {p1, v0, v1, v2, v3}, Ljava/awt/Graphics2D;->scale(DD)V

    invoke-virtual {p2}, Ljava/awt/geom/RectangularShape;->getX()D

    move-result-wide v0

    neg-double v0, v0

    invoke-virtual {p2}, Ljava/awt/geom/RectangularShape;->getY()D

    move-result-wide v2

    neg-double v2, v2

    invoke-virtual {p1, v0, v1, v2, v3}, Ljava/awt/Graphics2D;->translate(DD)V

    :cond_0
    return-void
.end method

.method private flipVertical(Ljava/awt/Graphics2D;Ljava/awt/geom/Rectangle2D;)V
    .locals 6

    invoke-virtual {p0}, Lorg/apache/poi/wp/usermodel/WPPicture;->flipV()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p2}, Ljava/awt/geom/RectangularShape;->getX()D

    move-result-wide v0

    invoke-virtual {p2}, Ljava/awt/geom/RectangularShape;->getY()D

    move-result-wide v2

    invoke-virtual {p2}, Ljava/awt/geom/RectangularShape;->getHeight()D

    move-result-wide v4

    add-double/2addr v2, v4

    invoke-virtual {p1, v0, v1, v2, v3}, Ljava/awt/Graphics2D;->translate(DD)V

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    invoke-virtual {p1, v0, v1, v2, v3}, Ljava/awt/Graphics2D;->scale(DD)V

    invoke-virtual {p2}, Ljava/awt/geom/RectangularShape;->getX()D

    move-result-wide v0

    neg-double v0, v0

    invoke-virtual {p2}, Ljava/awt/geom/RectangularShape;->getY()D

    move-result-wide v2

    neg-double v2, v2

    invoke-virtual {p1, v0, v1, v2, v3}, Ljava/awt/Graphics2D;->translate(DD)V

    :cond_0
    return-void
.end method

.method private getRecordId(Ljava/lang/String;)I
    .locals 2

    const/4 v0, -0x1

    if-nez p1, :cond_0

    return v0

    :cond_0
    const-string v1, "^Undefined record of type: ([\\d]+) at"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p1, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    long-to-int p0, p0

    return p0

    :catch_0
    move-exception p1

    iget-object p0, p0, Lorg/apache/poi/wp/usermodel/WPPicture;->LOG:Lorg/apache/logging/log4j/Logger;

    invoke-interface {p0}, Lorg/apache/logging/log4j/Logger;->atError()Lorg/apache/logging/log4j/LogBuilder;

    move-result-object p0

    invoke-interface {p0, p1}, Lorg/apache/logging/log4j/LogBuilder;->withThrowable(Ljava/lang/Throwable;)Lorg/apache/logging/log4j/LogBuilder;

    move-result-object p0

    invoke-interface {p0}, Lorg/apache/logging/log4j/LogBuilder;->log()V

    :cond_1
    return v0
.end method

.method private rotate(Ljava/awt/Graphics2D;Ljava/awt/geom/Rectangle2D;Ljava/awt/geom/Rectangle2D;)V
    .locals 9

    invoke-virtual {p0}, Lorg/apache/poi/wp/usermodel/WPPicture;->getRotation()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double p0, v0, v2

    if-eqz p0, :cond_0

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v3

    invoke-virtual {p2}, Ljava/awt/geom/RectangularShape;->getCenterX()D

    move-result-wide v5

    invoke-virtual {p2}, Ljava/awt/geom/RectangularShape;->getCenterY()D

    move-result-wide v7

    move-object v2, p1

    invoke-virtual/range {v2 .. v8}, Ljava/awt/Graphics2D;->rotate(DDD)V

    invoke-virtual {p2}, Ljava/awt/geom/RectangularShape;->getWidth()D

    move-result-wide v0

    invoke-virtual {p3}, Ljava/awt/geom/RectangularShape;->getWidth()D

    move-result-wide v2

    sub-double/2addr v0, v2

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    div-double/2addr v0, v2

    invoke-virtual {p2}, Ljava/awt/geom/RectangularShape;->getHeight()D

    move-result-wide v4

    invoke-virtual {p3}, Ljava/awt/geom/RectangularShape;->getHeight()D

    move-result-wide p2

    sub-double/2addr v4, p2

    div-double/2addr v4, v2

    invoke-virtual {p1, v0, v1, v4, v5}, Ljava/awt/Graphics2D;->translate(DD)V

    :cond_0
    return-void
.end method


# virtual methods
.method public abstract flipH()Z
.end method

.method public abstract flipV()Z
.end method

.method public getBackground()Ljava/awt/Color;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public abstract getClip()Ljava/awt/Insets;
.end method

.method public getImage(Lorg/apache/poi/wp/draw/ImageCreator;)Ljava/awt/Image;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<IMAGE:",
            "Ljava/awt/Image;",
            ">(",
            "Lorg/apache/poi/wp/draw/ImageCreator<",
            "TIMAGE;>;)TIMAGE;"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Lorg/apache/poi/wp/usermodel/IPicture;->getContentType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/apache/poi/wp/usermodel/WPPicture;->getImage(Lorg/apache/poi/wp/draw/ImageCreator;Ljava/lang/String;)Ljava/awt/Image;

    move-result-object p0

    return-object p0
.end method

.method public getImage(Lorg/apache/poi/wp/draw/ImageCreator;Ljava/lang/String;)Ljava/awt/Image;
    .locals 29
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<IMAGE:",
            "Ljava/awt/Image;",
            ">(",
            "Lorg/apache/poi/wp/draw/ImageCreator<",
            "TIMAGE;>;",
            "Ljava/lang/String;",
            ")TIMAGE;"
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v0, p2

    .line 2
    invoke-interface/range {p0 .. p0}, Lorg/apache/poi/wp/usermodel/IPicture;->getAnchor()Ljava/awt/geom/Rectangle2D;

    move-result-object v1

    .line 3
    invoke-static {v1}, Lorg/apache/poi/util/RectUtils;->isEmptyImage(Ljava/awt/geom/RectangularShape;)Z

    move-result v2

    const/4 v9, 0x0

    if-eqz v2, :cond_0

    .line 4
    iget-object v0, v7, Lorg/apache/poi/wp/usermodel/WPPicture;->LOG:Lorg/apache/logging/log4j/Logger;

    invoke-interface {v0}, Lorg/apache/logging/log4j/Logger;->atError()Lorg/apache/logging/log4j/LogBuilder;

    move-result-object v0

    const-string v2, "Empty image[{}] anchor:{}"

    invoke-interface/range {p0 .. p0}, Lorg/apache/poi/wp/usermodel/IPicture;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3, v1}, Lorg/apache/logging/log4j/LogBuilder;->log(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v9

    .line 5
    :cond_0
    invoke-interface/range {p1 .. p2}, Lorg/apache/poi/wp/draw/ImageCreator;->getImageRenderer(Ljava/lang/String;)Lorg/apache/poi/sl/draw/ImageRenderer;

    move-result-object v10

    .line 6
    invoke-interface {v10, v0}, Lorg/apache/poi/sl/draw/ImageRenderer;->canRender(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 7
    iget-object v1, v7, Lorg/apache/poi/wp/usermodel/WPPicture;->LOG:Lorg/apache/logging/log4j/Logger;

    invoke-interface {v1}, Lorg/apache/logging/log4j/Logger;->atError()Lorg/apache/logging/log4j/LogBuilder;

    move-result-object v1

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface/range {p0 .. p0}, Lorg/apache/poi/wp/usermodel/IPicture;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "{} can\'t render image[{}]: {}"

    invoke-interface {v1, v4, v2, v3, v0}, Lorg/apache/logging/log4j/LogBuilder;->log(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v9

    .line 8
    :cond_1
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/wp/usermodel/WPPicture;->getOriginAnchor()Ljava/awt/geom/Rectangle2D;

    move-result-object v2

    .line 9
    new-instance v3, Ljava/awt/geom/Rectangle2D$Double;

    const-wide/16 v12, 0x0

    const-wide/16 v14, 0x0

    .line 10
    invoke-virtual {v2}, Ljava/awt/geom/RectangularShape;->getWidth()D

    move-result-wide v4

    invoke-interface/range {p1 .. p1}, Lorg/apache/poi/wp/draw/ImageCreator;->getScale()F

    move-result v6

    move-object/from16 v20, v10

    float-to-double v9, v6

    mul-double v16, v4, v9

    .line 11
    invoke-virtual {v2}, Ljava/awt/geom/RectangularShape;->getHeight()D

    move-result-wide v4

    invoke-interface/range {p1 .. p1}, Lorg/apache/poi/wp/draw/ImageCreator;->getScale()F

    move-result v6

    float-to-double v9, v6

    mul-double v18, v4, v9

    move-object v11, v3

    invoke-direct/range {v11 .. v19}, Ljava/awt/geom/Rectangle2D$Double;-><init>(DDDD)V

    .line 12
    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/wp/usermodel/WPPicture;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    move-object/from16 v9, v20

    invoke-interface {v9, v4, v0, v3}, Lorg/apache/poi/sl/draw/ImageRenderer;->loadImage(Ljava/io/InputStream;Ljava/lang/String;Ljava/awt/geom/Rectangle2D;)V

    .line 13
    invoke-interface {v9}, Lorg/apache/poi/sl/draw/ImageRenderer;->getBounds()Ljava/awt/geom/Rectangle2D;

    move-result-object v0

    .line 14
    invoke-virtual {v0}, Ljava/awt/geom/RectangularShape;->getWidth()D

    move-result-wide v3

    invoke-virtual {v2}, Ljava/awt/geom/RectangularShape;->getWidth()D

    move-result-wide v5

    div-double/2addr v3, v5

    invoke-virtual {v0}, Ljava/awt/geom/RectangularShape;->getHeight()D

    move-result-wide v5

    invoke-virtual {v2}, Ljava/awt/geom/RectangularShape;->getHeight()D

    move-result-wide v10

    div-double/2addr v5, v10

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->min(DD)D

    move-result-wide v3

    .line 15
    invoke-interface/range {p1 .. p1}, Lorg/apache/poi/wp/draw/ImageCreator;->getScale()F

    move-result v0

    float-to-double v5, v0

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->min(DD)D

    move-result-wide v5

    .line 16
    new-instance v3, Ljava/awt/geom/Rectangle2D$Double;

    const-wide/16 v11, 0x0

    const-wide/16 v13, 0x0

    invoke-virtual {v1}, Ljava/awt/geom/RectangularShape;->getWidth()D

    move-result-wide v15

    mul-double/2addr v15, v5

    invoke-virtual {v1}, Ljava/awt/geom/RectangularShape;->getHeight()D

    move-result-wide v0

    mul-double v17, v0, v5

    move-object v10, v3

    invoke-direct/range {v10 .. v18}, Ljava/awt/geom/Rectangle2D$Double;-><init>(DDDD)V

    .line 17
    new-instance v0, Ljava/awt/geom/Rectangle2D$Double;

    const-wide/16 v21, 0x0

    const-wide/16 v23, 0x0

    invoke-virtual {v2}, Ljava/awt/geom/RectangularShape;->getWidth()D

    move-result-wide v10

    mul-double v25, v10, v5

    invoke-virtual {v2}, Ljava/awt/geom/RectangularShape;->getHeight()D

    move-result-wide v1

    mul-double v27, v1, v5

    move-object/from16 v20, v0

    invoke-direct/range {v20 .. v28}, Ljava/awt/geom/Rectangle2D$Double;-><init>(DDDD)V

    .line 18
    invoke-virtual {v3}, Ljava/awt/geom/RectangularShape;->getWidth()D

    move-result-wide v1

    double-to-int v1, v1

    invoke-virtual {v3}, Ljava/awt/geom/RectangularShape;->getHeight()D

    move-result-wide v10

    double-to-int v2, v10

    invoke-interface {v8, v1, v2}, Lorg/apache/poi/wp/draw/ImageCreator;->createImage(II)Ljava/awt/Image;

    move-result-object v10

    .line 19
    invoke-interface {v8, v10}, Lorg/apache/poi/wp/draw/ImageCreator;->getGraphics(Ljava/awt/Image;)Ljava/awt/Graphics2D;

    move-result-object v11

    .line 20
    invoke-direct {v7, v11, v3}, Lorg/apache/poi/wp/usermodel/WPPicture;->drawBackground(Ljava/awt/Graphics2D;Ljava/awt/geom/Rectangle2D;)V

    move-object/from16 v1, p0

    move-object v2, v11

    move-object v4, v0

    .line 21
    invoke-direct/range {v1 .. v6}, Lorg/apache/poi/wp/usermodel/WPPicture;->applyTransform(Ljava/awt/Graphics2D;Ljava/awt/geom/Rectangle2D;Ljava/awt/geom/Rectangle2D;D)V

    .line 22
    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/wp/usermodel/WPPicture;->getClip()Ljava/awt/Insets;

    move-result-object v1

    invoke-interface {v9, v11, v0, v1}, Lorg/apache/poi/sl/draw/ImageRenderer;->drawImage(Ljava/awt/Graphics2D;Ljava/awt/geom/Rectangle2D;Ljava/awt/Insets;)Z
    :try_end_0
    .catch Lorg/apache/poi/util/RecordFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v10

    :catch_0
    move-exception v0

    .line 23
    iget-object v1, v7, Lorg/apache/poi/wp/usermodel/WPPicture;->LOG:Lorg/apache/logging/log4j/Logger;

    invoke-interface {v1}, Lorg/apache/logging/log4j/Logger;->atError()Lorg/apache/logging/log4j/LogBuilder;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/apache/logging/log4j/LogBuilder;->withThrowable(Ljava/lang/Throwable;)Lorg/apache/logging/log4j/LogBuilder;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/logging/log4j/LogBuilder;->log()V

    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 24
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v7, v0}, Lorg/apache/poi/wp/usermodel/WPPicture;->getRecordId(Ljava/lang/String;)I

    move-result v0

    const v1, -0x65393229

    if-ne v1, v0, :cond_2

    .line 25
    sget-object v0, Lorg/apache/poi/common/usermodel/PictureType;->WMF:Lorg/apache/poi/common/usermodel/PictureType;

    iget-object v0, v0, Lorg/apache/poi/common/usermodel/PictureType;->contentType:Ljava/lang/String;

    invoke-virtual {v7, v8, v0}, Lorg/apache/poi/wp/usermodel/WPPicture;->getImage(Lorg/apache/poi/wp/draw/ImageCreator;Ljava/lang/String;)Ljava/awt/Image;

    move-result-object v0

    return-object v0

    :goto_0
    return-object v1
.end method

.method public abstract getInputStream()Ljava/io/InputStream;
.end method

.method public abstract getOriginAnchor()Ljava/awt/geom/Rectangle2D;
.end method

.method public abstract getOutlines()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/sl/draw/geom/Outline;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getRotation()D
.end method
