.class public Lorg/apache/poi/sl/draw/AndroidBitmapImageRenderer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/sl/draw/ImageRenderer;
.implements Ljava/io/Closeable;


# static fields
.field public static final ALLOWED_TYPES:[Lorg/apache/poi/sl/usermodel/PictureData$PictureType;

.field private static final LOG:Lorg/apache/logging/log4j/Logger;

.field private static final UNSUPPORTED_IMAGE_TYPE:Ljava/lang/String; = "Unsupported Image Type"


# instance fields
.field private cachedContentType:Ljava/lang/String;

.field private cachedImage:[B

.field private doCache:Z

.field protected image:Lcom/trans/android/AndroidImage;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    const-class v0, Lorg/apache/poi/sl/draw/BitmapImageRenderer;

    invoke-static {v0}, Lorg/apache/logging/log4j/LogManager;->getLogger(Ljava/lang/Class;)Lorg/apache/logging/log4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/sl/draw/AndroidBitmapImageRenderer;->LOG:Lorg/apache/logging/log4j/Logger;

    sget-object v1, Lorg/apache/poi/sl/usermodel/PictureData$PictureType;->JPEG:Lorg/apache/poi/sl/usermodel/PictureData$PictureType;

    sget-object v2, Lorg/apache/poi/sl/usermodel/PictureData$PictureType;->JPG:Lorg/apache/poi/sl/usermodel/PictureData$PictureType;

    sget-object v3, Lorg/apache/poi/sl/usermodel/PictureData$PictureType;->PNG:Lorg/apache/poi/sl/usermodel/PictureData$PictureType;

    sget-object v4, Lorg/apache/poi/sl/usermodel/PictureData$PictureType;->BMP:Lorg/apache/poi/sl/usermodel/PictureData$PictureType;

    sget-object v5, Lorg/apache/poi/sl/usermodel/PictureData$PictureType;->GIF:Lorg/apache/poi/sl/usermodel/PictureData$PictureType;

    sget-object v6, Lorg/apache/poi/sl/usermodel/PictureData$PictureType;->TIFF:Lorg/apache/poi/sl/usermodel/PictureData$PictureType;

    filled-new-array/range {v1 .. v6}, [Lorg/apache/poi/sl/usermodel/PictureData$PictureType;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/sl/draw/AndroidBitmapImageRenderer;->ALLOWED_TYPES:[Lorg/apache/poi/sl/usermodel/PictureData$PictureType;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static drawImage(Ljava/awt/Graphics2D;Lcom/trans/android/AndroidImage;Ljava/awt/geom/Rectangle2D;Ljava/awt/Insets;)Z
    .locals 28

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    :cond_0
    const/4 v3, 0x1

    if-nez p3, :cond_1

    .line 3
    new-instance v4, Ljava/awt/Insets;

    invoke-direct {v4, v2, v2, v2, v2}, Ljava/awt/Insets;-><init>(IIII)V

    goto :goto_0

    :cond_1
    move-object/from16 v4, p3

    move v2, v3

    .line 4
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/trans/android/AndroidImage;->getWidth()I

    move-result v5

    .line 5
    invoke-virtual/range {p1 .. p1}, Lcom/trans/android/AndroidImage;->getHeight()I

    move-result v6

    .line 6
    iget v7, v4, Ljava/awt/Insets;->left:I

    const v8, 0x186a0

    sub-int v7, v8, v7

    iget v9, v4, Ljava/awt/Insets;->right:I

    sub-int/2addr v7, v9

    int-to-double v9, v7

    const-wide v11, 0x40f86a0000000000L    # 100000.0

    div-double/2addr v9, v11

    .line 7
    iget v7, v4, Ljava/awt/Insets;->top:I

    sub-int/2addr v8, v7

    iget v7, v4, Ljava/awt/Insets;->bottom:I

    sub-int/2addr v8, v7

    int-to-double v7, v8

    div-double/2addr v7, v11

    .line 8
    invoke-virtual/range {p2 .. p2}, Ljava/awt/geom/RectangularShape;->getWidth()D

    move-result-wide v13

    int-to-double v11, v5

    mul-double/2addr v9, v11

    div-double v16, v13, v9

    .line 9
    invoke-virtual/range {p2 .. p2}, Ljava/awt/geom/RectangularShape;->getHeight()D

    move-result-wide v9

    int-to-double v5, v6

    mul-double/2addr v7, v5

    div-double v22, v9, v7

    .line 10
    invoke-virtual/range {p2 .. p2}, Ljava/awt/geom/RectangularShape;->getX()D

    move-result-wide v7

    mul-double v11, v11, v16

    iget v9, v4, Ljava/awt/Insets;->left:I

    int-to-double v9, v9

    mul-double/2addr v11, v9

    const-wide v9, 0x40f86a0000000000L    # 100000.0

    div-double/2addr v11, v9

    sub-double v24, v7, v11

    .line 11
    invoke-virtual/range {p2 .. p2}, Ljava/awt/geom/RectangularShape;->getY()D

    move-result-wide v7

    mul-double v5, v5, v22

    iget v4, v4, Ljava/awt/Insets;->top:I

    int-to-double v11, v4

    mul-double/2addr v5, v11

    div-double/2addr v5, v9

    sub-double v26, v7, v5

    .line 12
    new-instance v4, Ljava/awt/geom/AffineTransform;

    const-wide/16 v18, 0x0

    const-wide/16 v20, 0x0

    move-object v15, v4

    invoke-direct/range {v15 .. v27}, Ljava/awt/geom/AffineTransform;-><init>(DDDDDD)V

    .line 13
    invoke-virtual/range {p0 .. p0}, Ljava/awt/Graphics2D;->getClip()Ljava/awt/Shape;

    move-result-object v5

    if-eqz v2, :cond_2

    .line 14
    invoke-virtual/range {p2 .. p2}, Ljava/awt/geom/Rectangle2D;->getBounds2D()Ljava/awt/geom/Rectangle2D;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/awt/Graphics2D;->clip(Ljava/awt/Shape;)V

    .line 15
    :cond_2
    invoke-virtual {v0, v1, v4}, Ljava/awt/Graphics2D;->drawRenderedImage(Ljava/awt/image/RenderedImage;Ljava/awt/geom/AffineTransform;)V

    .line 16
    invoke-virtual {v0, v5}, Ljava/awt/Graphics2D;->setClip(Ljava/awt/Shape;)V

    .line 17
    invoke-static/range {p1 .. p1}, Lcom/onyx/common/util/CloseUtils;->close(Ljava/io/Closeable;)V

    return v3
.end method

.method public static synthetic f(Ljava/lang/String;Lorg/apache/poi/sl/usermodel/PictureData$PictureType;)Z
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/poi/sl/draw/AndroidBitmapImageRenderer;->lambda$canRender$0(Ljava/lang/String;Lorg/apache/poi/sl/usermodel/PictureData$PictureType;)Z

    move-result p0

    return p0
.end method

.method public static getBounds(Lcom/trans/android/AndroidImage;)Ljava/awt/geom/Rectangle2D;
    .locals 10

    if-nez p0, :cond_0

    .line 2
    new-instance p0, Ljava/awt/geom/Rectangle2D$Double;

    invoke-direct {p0}, Ljava/awt/geom/Rectangle2D$Double;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v9, Ljava/awt/geom/Rectangle2D$Double;

    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x0

    invoke-virtual {p0}, Lcom/trans/android/AndroidImage;->getWidth()I

    move-result v0

    int-to-double v5, v0

    invoke-virtual {p0}, Lcom/trans/android/AndroidImage;->getHeight()I

    move-result p0

    int-to-double v7, p0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Ljava/awt/geom/Rectangle2D$Double;-><init>(DDDD)V

    move-object p0, v9

    :goto_0
    return-object p0
.end method

.method public static getImage(Lcom/trans/android/AndroidImage;Ljava/awt/geom/Dimension2D;)Ljava/awt/image/BufferedImage;
    .locals 8

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 7
    :cond_0
    invoke-virtual {p0, v0}, Lcom/trans/android/AndroidImage;->getWidth(Ljava/awt/image/ImageObserver;)I

    move-result v1

    .line 8
    invoke-virtual {p0, v0}, Lcom/trans/android/AndroidImage;->getHeight(Ljava/awt/image/ImageObserver;)I

    move-result v0

    .line 9
    invoke-virtual {p1}, Ljava/awt/geom/Dimension2D;->getWidth()D

    move-result-wide v2

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    add-double/2addr v2, v4

    double-to-int v2, v2

    .line 10
    invoke-virtual {p1}, Ljava/awt/geom/Dimension2D;->getHeight()D

    move-result-wide v6

    add-double/2addr v6, v4

    double-to-int p1, v6

    if-ne v1, v2, :cond_1

    if-ne v0, p1, :cond_1

    .line 11
    new-instance p1, Lcom/trans/android/BufferedImageWrapper;

    invoke-direct {p1, p0}, Lcom/trans/android/BufferedImageWrapper;-><init>(Lcom/trans/android/AndroidImage;)V

    return-object p1

    .line 12
    :cond_1
    invoke-virtual {p0}, Lcom/trans/android/AndroidImage;->getAndroidBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v2, p1, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 13
    invoke-static {p0}, Lcom/onyx/common/util/CloseUtils;->close(Ljava/io/Closeable;)V

    .line 14
    new-instance p0, Lcom/trans/android/BufferedImageWrapper;

    new-instance v0, Lcom/trans/android/AndroidImage;

    invoke-direct {v0, p1}, Lcom/trans/android/AndroidImage;-><init>(Landroid/graphics/Bitmap;)V

    invoke-direct {p0, v0}, Lcom/trans/android/BufferedImageWrapper;-><init>(Lcom/trans/android/AndroidImage;)V

    return-object p0
.end method

.method private static synthetic lambda$canRender$0(Ljava/lang/String;Lorg/apache/poi/sl/usermodel/PictureData$PictureType;)Z
    .locals 0

    iget-object p1, p1, Lorg/apache/poi/sl/usermodel/PictureData$PictureType;->contentType:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private readImage(Ljava/io/InputStream;Ljava/lang/String;Ljava/awt/geom/Rectangle2D;)Lcom/trans/android/AndroidImage;
    .locals 0

    sget-object p0, Lorg/apache/poi/sl/usermodel/PictureData$PictureType;->TIFF:Lorg/apache/poi/sl/usermodel/PictureData$PictureType;

    iget-object p0, p0, Lorg/apache/poi/sl/usermodel/PictureData$PictureType;->contentType:Ljava/lang/String;

    invoke-virtual {p0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {p1, p3}, Lcom/onyx/poi/util/TiffUtils;->read(Ljava/io/InputStream;Ljava/awt/geom/Rectangle2D;)Lcom/trans/android/AndroidImage;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {p1, p3}, Lcom/trans/android/util/ImageUtils;->read(Ljava/io/InputStream;Ljava/awt/geom/Rectangle2D;)Lcom/trans/android/AndroidImage;

    move-result-object p0

    return-object p0
.end method

.method public static setAlpha(Lcom/trans/android/AndroidImage;D)Lcom/trans/android/AndroidImage;
    .locals 0

    if-nez p0, :cond_0

    .line 2
    new-instance p0, Lcom/trans/android/AndroidImage;

    const/4 p1, 0x1

    invoke-direct {p0, p1, p1}, Lcom/trans/android/AndroidImage;-><init>(II)V

    return-object p0

    .line 3
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/trans/android/AndroidImage;->setAlpha(D)V

    return-object p0
.end method


# virtual methods
.method public canRender(Ljava/lang/String;)Z
    .locals 1

    sget-object p0, Lorg/apache/poi/sl/draw/AndroidBitmapImageRenderer;->ALLOWED_TYPES:[Lorg/apache/poi/sl/usermodel/PictureData$PictureType;

    invoke-static {p0}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/sunia/HTREnginev2/ka;

    invoke-direct {v0, p1}, Lcom/sunia/HTREnginev2/ka;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

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

    iget-object v0, p0, Lorg/apache/poi/sl/draw/AndroidBitmapImageRenderer;->image:Lcom/trans/android/AndroidImage;

    invoke-static {v0}, Lcom/onyx/common/util/CloseUtils;->close(Ljava/io/Closeable;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/sl/draw/AndroidBitmapImageRenderer;->cachedImage:[B

    iput-object v0, p0, Lorg/apache/poi/sl/draw/AndroidBitmapImageRenderer;->image:Lcom/trans/android/AndroidImage;

    return-void
.end method

.method public drawImage(Ljava/awt/Graphics2D;Ljava/awt/geom/Rectangle2D;)Z
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/poi/sl/draw/AndroidBitmapImageRenderer;->drawImage(Ljava/awt/Graphics2D;Ljava/awt/geom/Rectangle2D;Ljava/awt/Insets;)Z

    move-result p0

    return p0
.end method

.method public drawImage(Ljava/awt/Graphics2D;Ljava/awt/geom/Rectangle2D;Ljava/awt/Insets;)Z
    .locals 0

    .line 2
    iget-object p0, p0, Lorg/apache/poi/sl/draw/AndroidBitmapImageRenderer;->image:Lcom/trans/android/AndroidImage;

    invoke-static {p1, p0, p2, p3}, Lorg/apache/poi/sl/draw/AndroidBitmapImageRenderer;->drawImage(Ljava/awt/Graphics2D;Lcom/trans/android/AndroidImage;Ljava/awt/geom/Rectangle2D;Ljava/awt/Insets;)Z

    move-result p0

    return p0
.end method

.method public getBounds()Ljava/awt/geom/Rectangle2D;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/apache/poi/sl/draw/AndroidBitmapImageRenderer;->image:Lcom/trans/android/AndroidImage;

    invoke-static {p0}, Lorg/apache/poi/sl/draw/AndroidBitmapImageRenderer;->getBounds(Lcom/trans/android/AndroidImage;)Ljava/awt/geom/Rectangle2D;

    move-result-object p0

    return-object p0
.end method

.method public getCachedContentType()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/sl/draw/AndroidBitmapImageRenderer;->cachedContentType:Ljava/lang/String;

    return-object p0
.end method

.method public getCachedImage()[B
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/sl/draw/AndroidBitmapImageRenderer;->cachedImage:[B

    return-object p0
.end method

.method public getImage()Ljava/awt/image/BufferedImage;
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/apache/poi/sl/draw/AndroidBitmapImageRenderer;->image:Lcom/trans/android/AndroidImage;

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lorg/apache/poi/sl/draw/AndroidBitmapImageRenderer;->image:Lcom/trans/android/AndroidImage;

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance v1, Lcom/trans/android/BufferedImageWrapper;

    invoke-direct {v1, v0}, Lcom/trans/android/BufferedImageWrapper;-><init>(Lcom/trans/android/AndroidImage;)V

    :goto_0
    return-object v1
.end method

.method public getImage(Ljava/awt/geom/Dimension2D;)Ljava/awt/image/BufferedImage;
    .locals 2

    .line 4
    iget-object v0, p0, Lorg/apache/poi/sl/draw/AndroidBitmapImageRenderer;->image:Lcom/trans/android/AndroidImage;

    const/4 v1, 0x0

    .line 5
    iput-object v1, p0, Lorg/apache/poi/sl/draw/AndroidBitmapImageRenderer;->image:Lcom/trans/android/AndroidImage;

    .line 6
    invoke-static {v0, p1}, Lorg/apache/poi/sl/draw/AndroidBitmapImageRenderer;->getImage(Lcom/trans/android/AndroidImage;Ljava/awt/geom/Dimension2D;)Ljava/awt/image/BufferedImage;

    move-result-object p0

    return-object p0
.end method

.method public getNativeBounds()Ljava/awt/geom/Rectangle2D;
    .locals 0

    invoke-virtual {p0}, Lorg/apache/poi/sl/draw/AndroidBitmapImageRenderer;->getBounds()Ljava/awt/geom/Rectangle2D;

    move-result-object p0

    return-object p0
.end method

.method public loadImage(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/poi/sl/draw/AndroidBitmapImageRenderer;->loadImage(Ljava/io/InputStream;Ljava/lang/String;Ljava/awt/geom/Rectangle2D;)V

    return-void
.end method

.method public loadImage(Ljava/io/InputStream;Ljava/lang/String;Ljava/awt/geom/Rectangle2D;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    iget-boolean v0, p0, Lorg/apache/poi/sl/draw/AndroidBitmapImageRenderer;->doCache:Z

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Lorg/apache/commons/io/output/UnsynchronizedByteArrayOutputStream;

    invoke-direct {v0}, Lorg/apache/commons/io/output/UnsynchronizedByteArrayOutputStream;-><init>()V

    .line 4
    invoke-static {p1, v0}, Lorg/apache/poi/util/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    .line 5
    invoke-virtual {v0}, Lorg/apache/commons/io/output/UnsynchronizedByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/sl/draw/AndroidBitmapImageRenderer;->cachedImage:[B

    .line 6
    iput-object p2, p0, Lorg/apache/poi/sl/draw/AndroidBitmapImageRenderer;->cachedContentType:Ljava/lang/String;

    .line 7
    invoke-virtual {v0}, Lorg/apache/commons/io/output/UnsynchronizedByteArrayOutputStream;->toInputStream()Ljava/io/InputStream;

    move-result-object p1

    .line 8
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/poi/sl/draw/AndroidBitmapImageRenderer;->readImage(Ljava/io/InputStream;Ljava/lang/String;Ljava/awt/geom/Rectangle2D;)Lcom/trans/android/AndroidImage;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/sl/draw/AndroidBitmapImageRenderer;->image:Lcom/trans/android/AndroidImage;

    return-void
.end method

.method public loadImage([BLjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 9
    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/poi/sl/draw/AndroidBitmapImageRenderer;->loadImage([BLjava/lang/String;Ljava/awt/geom/Rectangle2D;)V

    return-void
.end method

.method public loadImage([BLjava/lang/String;Ljava/awt/geom/Rectangle2D;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 10
    :cond_0
    iget-boolean v0, p0, Lorg/apache/poi/sl/draw/AndroidBitmapImageRenderer;->doCache:Z

    if-eqz v0, :cond_1

    .line 11
    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lorg/apache/poi/sl/draw/AndroidBitmapImageRenderer;->cachedImage:[B

    .line 12
    iput-object p2, p0, Lorg/apache/poi/sl/draw/AndroidBitmapImageRenderer;->cachedContentType:Ljava/lang/String;

    .line 13
    :cond_1
    new-instance v0, Lorg/apache/commons/io/input/UnsynchronizedByteArrayInputStream;

    invoke-direct {v0, p1}, Lorg/apache/commons/io/input/UnsynchronizedByteArrayInputStream;-><init>([B)V

    invoke-direct {p0, v0, p2, p3}, Lorg/apache/poi/sl/draw/AndroidBitmapImageRenderer;->readImage(Ljava/io/InputStream;Ljava/lang/String;Ljava/awt/geom/Rectangle2D;)Lcom/trans/android/AndroidImage;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/sl/draw/AndroidBitmapImageRenderer;->image:Lcom/trans/android/AndroidImage;

    return-void
.end method

.method public setAlpha(D)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/poi/sl/draw/AndroidBitmapImageRenderer;->image:Lcom/trans/android/AndroidImage;

    invoke-static {v0, p1, p2}, Lorg/apache/poi/sl/draw/AndroidBitmapImageRenderer;->setAlpha(Lcom/trans/android/AndroidImage;D)Lcom/trans/android/AndroidImage;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/sl/draw/AndroidBitmapImageRenderer;->image:Lcom/trans/android/AndroidImage;

    return-void
.end method

.method public setCacheInput(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/poi/sl/draw/AndroidBitmapImageRenderer;->doCache:Z

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/apache/poi/sl/draw/AndroidBitmapImageRenderer;->cachedContentType:Ljava/lang/String;

    iput-object p1, p0, Lorg/apache/poi/sl/draw/AndroidBitmapImageRenderer;->cachedImage:[B

    :cond_0
    return-void
.end method
