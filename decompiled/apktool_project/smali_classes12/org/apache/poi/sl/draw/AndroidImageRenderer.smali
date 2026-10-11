.class public Lorg/apache/poi/sl/draw/AndroidImageRenderer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/sl/draw/ImageRenderer;


# static fields
.field private static final LOG:Lorg/apache/logging/log4j/Logger;


# instance fields
.field private imageSize:Ljava/awt/geom/Rectangle2D;

.field private renderer:Lorg/apache/poi/sl/draw/ImageRenderer;

.field private scale:D


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/apache/poi/sl/draw/AndroidImageRenderer;

    invoke-static {v0}, Lorg/apache/logging/log4j/LogManager;->getLogger(Ljava/lang/Class;)Lorg/apache/logging/log4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/sl/draw/AndroidImageRenderer;->LOG:Lorg/apache/logging/log4j/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Ljava/lang/String;Lorg/apache/poi/sl/usermodel/PictureData$PictureType;)Z
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/poi/sl/draw/AndroidImageRenderer;->lambda$canRender$0(Ljava/lang/String;Lorg/apache/poi/sl/usermodel/PictureData$PictureType;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$canRender$0(Ljava/lang/String;Lorg/apache/poi/sl/usermodel/PictureData$PictureType;)Z
    .locals 0

    iget-object p1, p1, Lorg/apache/poi/sl/usermodel/PictureData$PictureType;->contentType:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public canRender(Ljava/lang/String;)Z
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/sl/draw/AndroidImageRenderer;->reset()V

    sget-object v0, Lorg/apache/poi/sl/usermodel/PictureData$PictureType;->SVG:Lorg/apache/poi/sl/usermodel/PictureData$PictureType;

    iget-object v0, v0, Lorg/apache/poi/sl/usermodel/PictureData$PictureType;->contentType:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p1, Lorg/apache/poi/xslf/draw/AndroidSVGImageRenderer;

    invoke-direct {p1}, Lorg/apache/poi/xslf/draw/AndroidSVGImageRenderer;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/sl/draw/AndroidImageRenderer;->renderer:Lorg/apache/poi/sl/draw/ImageRenderer;

    goto :goto_0

    :cond_0
    sget-object v0, Lorg/apache/poi/sl/usermodel/PictureData$PictureType;->WMF:Lorg/apache/poi/sl/usermodel/PictureData$PictureType;

    iget-object v0, v0, Lorg/apache/poi/sl/usermodel/PictureData$PictureType;->contentType:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance p1, Lorg/apache/poi/hwmf/draw/AndroidHwmfImageRenderer;

    invoke-direct {p1}, Lorg/apache/poi/hwmf/draw/AndroidHwmfImageRenderer;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/sl/draw/AndroidImageRenderer;->renderer:Lorg/apache/poi/sl/draw/ImageRenderer;

    goto :goto_0

    :cond_1
    sget-object v0, Lorg/apache/poi/sl/usermodel/PictureData$PictureType;->EMF:Lorg/apache/poi/sl/usermodel/PictureData$PictureType;

    iget-object v0, v0, Lorg/apache/poi/sl/usermodel/PictureData$PictureType;->contentType:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance p1, Lorg/apache/poi/hemf/draw/AndroidHemfImageRenderer;

    invoke-direct {p1}, Lorg/apache/poi/hemf/draw/AndroidHemfImageRenderer;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/sl/draw/AndroidImageRenderer;->renderer:Lorg/apache/poi/sl/draw/ImageRenderer;

    goto :goto_0

    :cond_2
    sget-object v0, Lorg/apache/poi/sl/draw/AndroidBitmapImageRenderer;->ALLOWED_TYPES:[Lorg/apache/poi/sl/usermodel/PictureData$PictureType;

    invoke-static {v0}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/sunia/HTREnginev2/sa;

    invoke-direct {v1, p1}, Lcom/sunia/HTREnginev2/sa;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance p1, Lorg/apache/poi/sl/draw/AndroidBitmapImageRenderer;

    invoke-direct {p1}, Lorg/apache/poi/sl/draw/AndroidBitmapImageRenderer;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/sl/draw/AndroidImageRenderer;->renderer:Lorg/apache/poi/sl/draw/ImageRenderer;

    goto :goto_0

    :cond_3
    const-string v0, "image/latex"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance p1, Lcom/onyx/poi/latex/AndroidLatexRender;

    invoke-direct {p1}, Lcom/onyx/poi/latex/AndroidLatexRender;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/sl/draw/AndroidImageRenderer;->renderer:Lorg/apache/poi/sl/draw/ImageRenderer;

    goto :goto_0

    :cond_4
    new-instance v0, Lorg/apache/poi/sl/draw/AndroidBitmapImageRenderer;

    invoke-direct {v0}, Lorg/apache/poi/sl/draw/AndroidBitmapImageRenderer;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/sl/draw/AndroidImageRenderer;->renderer:Lorg/apache/poi/sl/draw/ImageRenderer;

    sget-object v0, Lorg/apache/poi/sl/draw/AndroidImageRenderer;->LOG:Lorg/apache/logging/log4j/Logger;

    const-string v1, "Unknown content type: {}, use default render, avoid call java render"

    invoke-interface {v0, v1, p1}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    iget-object p0, p0, Lorg/apache/poi/sl/draw/AndroidImageRenderer;->renderer:Lorg/apache/poi/sl/draw/ImageRenderer;

    if-eqz p0, :cond_5

    const/4 p0, 0x1

    goto :goto_1

    :cond_5
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public drawImage(Ljava/awt/Graphics2D;Ljava/awt/geom/Rectangle2D;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/apache/poi/sl/draw/AndroidImageRenderer;->renderer:Lorg/apache/poi/sl/draw/ImageRenderer;

    invoke-interface {p0, p1, p2}, Lorg/apache/poi/sl/draw/ImageRenderer;->drawImage(Ljava/awt/Graphics2D;Ljava/awt/geom/Rectangle2D;)Z

    move-result p0

    return p0
.end method

.method public drawImage(Ljava/awt/Graphics2D;Ljava/awt/geom/Rectangle2D;Ljava/awt/Insets;)Z
    .locals 0

    .line 2
    iget-object p0, p0, Lorg/apache/poi/sl/draw/AndroidImageRenderer;->renderer:Lorg/apache/poi/sl/draw/ImageRenderer;

    invoke-interface {p0, p1, p2, p3}, Lorg/apache/poi/sl/draw/ImageRenderer;->drawImage(Ljava/awt/Graphics2D;Ljava/awt/geom/Rectangle2D;Ljava/awt/Insets;)Z

    move-result p0

    return p0
.end method

.method public getBounds()Ljava/awt/geom/Rectangle2D;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/sl/draw/AndroidImageRenderer;->renderer:Lorg/apache/poi/sl/draw/ImageRenderer;

    invoke-interface {p0}, Lorg/apache/poi/sl/draw/ImageRenderer;->getBounds()Ljava/awt/geom/Rectangle2D;

    move-result-object p0

    return-object p0
.end method

.method public getImage()Ljava/awt/image/BufferedImage;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/apache/poi/sl/draw/AndroidImageRenderer;->renderer:Lorg/apache/poi/sl/draw/ImageRenderer;

    invoke-interface {p0}, Lorg/apache/poi/sl/draw/ImageRenderer;->getImage()Ljava/awt/image/BufferedImage;

    move-result-object p0

    return-object p0
.end method

.method public getImage(Ljava/awt/geom/Dimension2D;)Ljava/awt/image/BufferedImage;
    .locals 0

    .line 2
    iget-object p0, p0, Lorg/apache/poi/sl/draw/AndroidImageRenderer;->renderer:Lorg/apache/poi/sl/draw/ImageRenderer;

    invoke-interface {p0, p1}, Lorg/apache/poi/sl/draw/ImageRenderer;->getImage(Ljava/awt/geom/Dimension2D;)Ljava/awt/image/BufferedImage;

    move-result-object p0

    return-object p0
.end method

.method public getImageSize()Ljava/awt/geom/Rectangle2D;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/sl/draw/AndroidImageRenderer;->imageSize:Ljava/awt/geom/Rectangle2D;

    return-object p0
.end method

.method public getNativeBounds()Ljava/awt/geom/Rectangle2D;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/sl/draw/AndroidImageRenderer;->renderer:Lorg/apache/poi/sl/draw/ImageRenderer;

    invoke-interface {p0}, Lorg/apache/poi/sl/draw/ImageRenderer;->getNativeBounds()Ljava/awt/geom/Rectangle2D;

    move-result-object p0

    return-object p0
.end method

.method public getScale()D
    .locals 2

    iget-wide v0, p0, Lorg/apache/poi/sl/draw/AndroidImageRenderer;->scale:D

    return-wide v0
.end method

.method public loadImage(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lorg/apache/poi/sl/draw/AndroidImageRenderer;->renderer:Lorg/apache/poi/sl/draw/ImageRenderer;

    invoke-interface {p0, p1, p2}, Lorg/apache/poi/sl/draw/ImageRenderer;->loadImage(Ljava/io/InputStream;Ljava/lang/String;)V

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
    iget-object p0, p0, Lorg/apache/poi/sl/draw/AndroidImageRenderer;->renderer:Lorg/apache/poi/sl/draw/ImageRenderer;

    invoke-interface {p0, p1, p2, p3}, Lorg/apache/poi/sl/draw/ImageRenderer;->loadImage(Ljava/io/InputStream;Ljava/lang/String;Ljava/awt/geom/Rectangle2D;)V

    return-void
.end method

.method public loadImage(Ljava/io/InputStream;Ljava/lang/String;Ljava/awt/geom/Rectangle2D;D)V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-wide/from16 v3, p4

    .line 16
    iget-object v5, v0, Lorg/apache/poi/sl/draw/AndroidImageRenderer;->renderer:Lorg/apache/poi/sl/draw/ImageRenderer;

    instance-of v6, v5, Lorg/apache/poi/sl/draw/AndroidBitmapImageRenderer;

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    if-eqz v6, :cond_1

    const/4 v5, 0x0

    .line 17
    invoke-static {p1, v5}, Lcom/trans/android/util/ImageUtils;->readImageSize(Ljava/io/InputStream;Z)Ljava/awt/Dimension;

    move-result-object v5

    .line 18
    invoke-static {v5}, Lcom/onyx/common/util/RectUtils;->isNullOrEmpty(Ljava/awt/geom/Dimension2D;)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v5}, Ljava/awt/Dimension;->getWidth()D

    move-result-wide v6

    invoke-virtual/range {p3 .. p3}, Ljava/awt/geom/RectangularShape;->getWidth()D

    move-result-wide v8

    div-double/2addr v6, v8

    invoke-virtual {v5}, Ljava/awt/Dimension;->getHeight()D

    move-result-wide v8

    invoke-virtual/range {p3 .. p3}, Ljava/awt/geom/RectangularShape;->getHeight()D

    move-result-wide v10

    div-double/2addr v8, v10

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->min(DD)D

    move-result-wide v7

    :goto_0
    iput-wide v7, v0, Lorg/apache/poi/sl/draw/AndroidImageRenderer;->scale:D

    .line 19
    invoke-static {v7, v8, v3, v4}, Ljava/lang/Math;->min(DD)D

    move-result-wide v3

    iput-wide v3, v0, Lorg/apache/poi/sl/draw/AndroidImageRenderer;->scale:D

    .line 20
    new-instance v3, Ljava/awt/geom/Rectangle2D$Double;

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    invoke-virtual/range {p3 .. p3}, Ljava/awt/geom/RectangularShape;->getWidth()D

    move-result-wide v4

    iget-wide v10, v0, Lorg/apache/poi/sl/draw/AndroidImageRenderer;->scale:D

    mul-double/2addr v10, v4

    invoke-virtual/range {p3 .. p3}, Ljava/awt/geom/RectangularShape;->getHeight()D

    move-result-wide v4

    iget-wide v12, v0, Lorg/apache/poi/sl/draw/AndroidImageRenderer;->scale:D

    mul-double/2addr v12, v4

    move-object v5, v3

    invoke-direct/range {v5 .. v13}, Ljava/awt/geom/Rectangle2D$Double;-><init>(DDDD)V

    iput-object v3, v0, Lorg/apache/poi/sl/draw/AndroidImageRenderer;->imageSize:Ljava/awt/geom/Rectangle2D;

    .line 21
    iget-object v0, v0, Lorg/apache/poi/sl/draw/AndroidImageRenderer;->renderer:Lorg/apache/poi/sl/draw/ImageRenderer;

    invoke-interface {v0, p1, v2, v3}, Lorg/apache/poi/sl/draw/ImageRenderer;->loadImage(Ljava/io/InputStream;Ljava/lang/String;Ljava/awt/geom/Rectangle2D;)V

    goto :goto_2

    :cond_1
    move-object/from16 v6, p3

    .line 22
    invoke-interface {v5, p1, v2, v6}, Lorg/apache/poi/sl/draw/ImageRenderer;->loadImage(Ljava/io/InputStream;Ljava/lang/String;Ljava/awt/geom/Rectangle2D;)V

    .line 23
    iget-object v1, v0, Lorg/apache/poi/sl/draw/AndroidImageRenderer;->renderer:Lorg/apache/poi/sl/draw/ImageRenderer;

    invoke-interface {v1}, Lorg/apache/poi/sl/draw/ImageRenderer;->getBounds()Ljava/awt/geom/Rectangle2D;

    move-result-object v1

    .line 24
    invoke-static {v1}, Lcom/onyx/common/util/RectUtils;->isNullOrEmpty(Ljava/awt/geom/RectangularShape;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Ljava/awt/geom/RectangularShape;->getWidth()D

    move-result-wide v7

    invoke-virtual/range {p3 .. p3}, Ljava/awt/geom/RectangularShape;->getWidth()D

    move-result-wide v9

    div-double/2addr v7, v9

    invoke-virtual {v1}, Ljava/awt/geom/RectangularShape;->getHeight()D

    move-result-wide v1

    invoke-virtual/range {p3 .. p3}, Ljava/awt/geom/RectangularShape;->getHeight()D

    move-result-wide v9

    div-double/2addr v1, v9

    invoke-static {v7, v8, v1, v2}, Ljava/lang/Math;->min(DD)D

    move-result-wide v7

    :goto_1
    iput-wide v7, v0, Lorg/apache/poi/sl/draw/AndroidImageRenderer;->scale:D

    .line 25
    invoke-static {v7, v8, v3, v4}, Ljava/lang/Math;->min(DD)D

    move-result-wide v1

    iput-wide v1, v0, Lorg/apache/poi/sl/draw/AndroidImageRenderer;->scale:D

    .line 26
    new-instance v1, Ljava/awt/geom/Rectangle2D$Double;

    const-wide/16 v4, 0x0

    const-wide/16 v7, 0x0

    invoke-virtual/range {p3 .. p3}, Ljava/awt/geom/RectangularShape;->getWidth()D

    move-result-wide v2

    iget-wide v9, v0, Lorg/apache/poi/sl/draw/AndroidImageRenderer;->scale:D

    mul-double/2addr v9, v2

    invoke-virtual/range {p3 .. p3}, Ljava/awt/geom/RectangularShape;->getHeight()D

    move-result-wide v2

    iget-wide v11, v0, Lorg/apache/poi/sl/draw/AndroidImageRenderer;->scale:D

    mul-double/2addr v11, v2

    move-object v3, v1

    move-wide v6, v7

    move-wide v8, v9

    move-wide v10, v11

    invoke-direct/range {v3 .. v11}, Ljava/awt/geom/Rectangle2D$Double;-><init>(DDDD)V

    iput-object v1, v0, Lorg/apache/poi/sl/draw/AndroidImageRenderer;->imageSize:Ljava/awt/geom/Rectangle2D;

    :goto_2
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
    iget-object p0, p0, Lorg/apache/poi/sl/draw/AndroidImageRenderer;->renderer:Lorg/apache/poi/sl/draw/ImageRenderer;

    invoke-interface {p0, p1, p2}, Lorg/apache/poi/sl/draw/ImageRenderer;->loadImage([BLjava/lang/String;)V

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
    iget-object p0, p0, Lorg/apache/poi/sl/draw/AndroidImageRenderer;->renderer:Lorg/apache/poi/sl/draw/ImageRenderer;

    invoke-interface {p0, p1, p2, p3}, Lorg/apache/poi/sl/draw/ImageRenderer;->loadImage([BLjava/lang/String;Ljava/awt/geom/Rectangle2D;)V

    return-void
.end method

.method public loadImage([BLjava/lang/String;Ljava/awt/geom/Rectangle2D;D)V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-wide/from16 v3, p4

    .line 5
    iget-object v5, v0, Lorg/apache/poi/sl/draw/AndroidImageRenderer;->renderer:Lorg/apache/poi/sl/draw/ImageRenderer;

    instance-of v6, v5, Lorg/apache/poi/sl/draw/AndroidBitmapImageRenderer;

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    if-eqz v6, :cond_1

    .line 6
    invoke-static {p1}, Lcom/trans/android/util/ImageUtils;->readImageSize([B)Ljava/awt/Dimension;

    move-result-object v5

    .line 7
    invoke-static {v5}, Lcom/onyx/common/util/RectUtils;->isNullOrEmpty(Ljava/awt/geom/Dimension2D;)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v5}, Ljava/awt/Dimension;->getWidth()D

    move-result-wide v6

    invoke-virtual/range {p3 .. p3}, Ljava/awt/geom/RectangularShape;->getWidth()D

    move-result-wide v8

    div-double/2addr v6, v8

    invoke-virtual {v5}, Ljava/awt/Dimension;->getHeight()D

    move-result-wide v8

    invoke-virtual/range {p3 .. p3}, Ljava/awt/geom/RectangularShape;->getHeight()D

    move-result-wide v10

    div-double/2addr v8, v10

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->min(DD)D

    move-result-wide v7

    :goto_0
    iput-wide v7, v0, Lorg/apache/poi/sl/draw/AndroidImageRenderer;->scale:D

    .line 8
    invoke-static {v7, v8, v3, v4}, Ljava/lang/Math;->min(DD)D

    move-result-wide v3

    iput-wide v3, v0, Lorg/apache/poi/sl/draw/AndroidImageRenderer;->scale:D

    .line 9
    new-instance v3, Ljava/awt/geom/Rectangle2D$Double;

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    invoke-virtual/range {p3 .. p3}, Ljava/awt/geom/RectangularShape;->getWidth()D

    move-result-wide v4

    iget-wide v10, v0, Lorg/apache/poi/sl/draw/AndroidImageRenderer;->scale:D

    mul-double/2addr v10, v4

    invoke-virtual/range {p3 .. p3}, Ljava/awt/geom/RectangularShape;->getHeight()D

    move-result-wide v4

    iget-wide v12, v0, Lorg/apache/poi/sl/draw/AndroidImageRenderer;->scale:D

    mul-double/2addr v12, v4

    move-object v5, v3

    invoke-direct/range {v5 .. v13}, Ljava/awt/geom/Rectangle2D$Double;-><init>(DDDD)V

    iput-object v3, v0, Lorg/apache/poi/sl/draw/AndroidImageRenderer;->imageSize:Ljava/awt/geom/Rectangle2D;

    .line 10
    iget-object v0, v0, Lorg/apache/poi/sl/draw/AndroidImageRenderer;->renderer:Lorg/apache/poi/sl/draw/ImageRenderer;

    invoke-interface {v0, p1, v2, v3}, Lorg/apache/poi/sl/draw/ImageRenderer;->loadImage([BLjava/lang/String;Ljava/awt/geom/Rectangle2D;)V

    goto :goto_2

    :cond_1
    move-object/from16 v6, p3

    .line 11
    invoke-interface {v5, p1, v2, v6}, Lorg/apache/poi/sl/draw/ImageRenderer;->loadImage([BLjava/lang/String;Ljava/awt/geom/Rectangle2D;)V

    .line 12
    iget-object v1, v0, Lorg/apache/poi/sl/draw/AndroidImageRenderer;->renderer:Lorg/apache/poi/sl/draw/ImageRenderer;

    invoke-interface {v1}, Lorg/apache/poi/sl/draw/ImageRenderer;->getBounds()Ljava/awt/geom/Rectangle2D;

    move-result-object v1

    .line 13
    invoke-static {v1}, Lcom/onyx/common/util/RectUtils;->isNullOrEmpty(Ljava/awt/geom/RectangularShape;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Ljava/awt/geom/RectangularShape;->getWidth()D

    move-result-wide v7

    invoke-virtual/range {p3 .. p3}, Ljava/awt/geom/RectangularShape;->getWidth()D

    move-result-wide v9

    div-double/2addr v7, v9

    invoke-virtual {v1}, Ljava/awt/geom/RectangularShape;->getHeight()D

    move-result-wide v1

    invoke-virtual/range {p3 .. p3}, Ljava/awt/geom/RectangularShape;->getHeight()D

    move-result-wide v9

    div-double/2addr v1, v9

    invoke-static {v7, v8, v1, v2}, Ljava/lang/Math;->min(DD)D

    move-result-wide v7

    :goto_1
    iput-wide v7, v0, Lorg/apache/poi/sl/draw/AndroidImageRenderer;->scale:D

    .line 14
    invoke-static {v7, v8, v3, v4}, Ljava/lang/Math;->min(DD)D

    move-result-wide v1

    iput-wide v1, v0, Lorg/apache/poi/sl/draw/AndroidImageRenderer;->scale:D

    .line 15
    new-instance v1, Ljava/awt/geom/Rectangle2D$Double;

    const-wide/16 v4, 0x0

    const-wide/16 v7, 0x0

    invoke-virtual/range {p3 .. p3}, Ljava/awt/geom/RectangularShape;->getWidth()D

    move-result-wide v2

    iget-wide v9, v0, Lorg/apache/poi/sl/draw/AndroidImageRenderer;->scale:D

    mul-double/2addr v9, v2

    invoke-virtual/range {p3 .. p3}, Ljava/awt/geom/RectangularShape;->getHeight()D

    move-result-wide v2

    iget-wide v11, v0, Lorg/apache/poi/sl/draw/AndroidImageRenderer;->scale:D

    mul-double/2addr v11, v2

    move-object v3, v1

    move-wide v6, v7

    move-wide v8, v9

    move-wide v10, v11

    invoke-direct/range {v3 .. v11}, Ljava/awt/geom/Rectangle2D$Double;-><init>(DDDD)V

    iput-object v1, v0, Lorg/apache/poi/sl/draw/AndroidImageRenderer;->imageSize:Ljava/awt/geom/Rectangle2D;

    :goto_2
    return-void
.end method

.method public reset()V
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/sl/draw/AndroidImageRenderer;->renderer:Lorg/apache/poi/sl/draw/ImageRenderer;

    if-eqz v0, :cond_0

    check-cast v0, Ljava/io/Closeable;

    invoke-static {v0}, Lcom/onyx/common/util/CloseUtils;->close(Ljava/io/Closeable;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/sl/draw/AndroidImageRenderer;->renderer:Lorg/apache/poi/sl/draw/ImageRenderer;

    iput-object v0, p0, Lorg/apache/poi/sl/draw/AndroidImageRenderer;->imageSize:Ljava/awt/geom/Rectangle2D;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/apache/poi/sl/draw/AndroidImageRenderer;->scale:D

    return-void
.end method

.method public setAlpha(D)V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/sl/draw/AndroidImageRenderer;->renderer:Lorg/apache/poi/sl/draw/ImageRenderer;

    invoke-interface {p0, p1, p2}, Lorg/apache/poi/sl/draw/ImageRenderer;->setAlpha(D)V

    return-void
.end method

.method public useDeviceBounds()Z
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/sl/draw/AndroidImageRenderer;->renderer:Lorg/apache/poi/sl/draw/ImageRenderer;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lorg/apache/poi/sl/draw/ImageRenderer;->useDeviceBounds()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
