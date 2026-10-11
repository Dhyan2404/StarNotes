.class public Lcom/trans/android/AndroidImage;
.super Ljava/awt/Image;
.source "SourceFile"

# interfaces
.implements Ljava/awt/Transparency;
.implements Ljava/awt/image/WritableRenderedImage;
.implements Ljava/io/Closeable;


# static fields
.field public static final MAX_ALPHA:D = 1.0

.field private static final TAG:Ljava/lang/String; = "AndroidImage"


# instance fields
.field private alpha:D

.field private bitmap:Landroid/graphics/Bitmap;

.field private canvas:Landroid/graphics/Canvas;

.field private closeable:Z

.field private colorModel:Ljava/awt/image/ColorModel;

.field private imageType:I

.field private properties:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private raster:Ljava/awt/image/WritableRaster;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(DD)V
    .locals 0

    .line 10
    invoke-static {p1, p2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p1

    double-to-int p1, p1

    invoke-static {p3, p4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p2

    double-to-int p2, p2

    invoke-direct {p0, p1, p2}, Lcom/trans/android/AndroidImage;-><init>(II)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    .line 1
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-direct {p0, p1, p2, v0}, Lcom/trans/android/AndroidImage;-><init>(IILandroid/graphics/Bitmap$Config;)V

    return-void
.end method

.method public constructor <init>(IILandroid/graphics/Bitmap$Config;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/awt/Image;-><init>()V

    const/4 v0, 0x2

    .line 3
    iput v0, p0, Lcom/trans/android/AndroidImage;->imageType:I

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/trans/android/AndroidImage;->closeable:Z

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 5
    iput-wide v0, p0, Lcom/trans/android/AndroidImage;->alpha:D

    .line 6
    invoke-static {p1, p2, p3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/trans/android/AndroidImage;->bitmap:Landroid/graphics/Bitmap;

    .line 7
    invoke-static {p3}, Lcom/trans/android/util/BridgeUtils;->getImageTypeByConfig(Landroid/graphics/Bitmap$Config;)I

    move-result p1

    iput p1, p0, Lcom/trans/android/AndroidImage;->imageType:I

    .line 8
    new-instance p1, Landroid/graphics/Canvas;

    iget-object p2, p0, Lcom/trans/android/AndroidImage;->bitmap:Landroid/graphics/Bitmap;

    invoke-direct {p1, p2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object p1, p0, Lcom/trans/android/AndroidImage;->canvas:Landroid/graphics/Canvas;

    .line 9
    iget-object p0, p0, Lcom/trans/android/AndroidImage;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->prepareToDraw()V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 2

    .line 11
    invoke-direct {p0}, Ljava/awt/Image;-><init>()V

    const/4 v0, 0x2

    .line 12
    iput v0, p0, Lcom/trans/android/AndroidImage;->imageType:I

    const/4 v0, 0x1

    .line 13
    iput-boolean v0, p0, Lcom/trans/android/AndroidImage;->closeable:Z

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 14
    iput-wide v0, p0, Lcom/trans/android/AndroidImage;->alpha:D

    .line 15
    iput-object p1, p0, Lcom/trans/android/AndroidImage;->bitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method public constructor <init>(Ljava/awt/image/BufferedImage;)V
    .locals 3

    .line 16
    invoke-direct {p0}, Ljava/awt/Image;-><init>()V

    const/4 v0, 0x2

    .line 17
    iput v0, p0, Lcom/trans/android/AndroidImage;->imageType:I

    const/4 v0, 0x1

    .line 18
    iput-boolean v0, p0, Lcom/trans/android/AndroidImage;->closeable:Z

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 19
    iput-wide v0, p0, Lcom/trans/android/AndroidImage;->alpha:D

    .line 20
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getType()I

    move-result v0

    iput v0, p0, Lcom/trans/android/AndroidImage;->imageType:I

    .line 21
    invoke-static {v0}, Lcom/trans/android/util/BridgeUtils;->getConfigByImageType(I)Landroid/graphics/Bitmap$Config;

    move-result-object v0

    .line 22
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v2

    invoke-static {v1, v2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/trans/android/AndroidImage;->bitmap:Landroid/graphics/Bitmap;

    .line 23
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/trans/android/AndroidImage;->bitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/trans/android/AndroidImage;->canvas:Landroid/graphics/Canvas;

    .line 24
    iget-object v0, p0, Lcom/trans/android/AndroidImage;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->prepareToDraw()V

    .line 25
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getColorModel()Ljava/awt/image/ColorModel;

    move-result-object v0

    invoke-virtual {v0}, Ljava/awt/image/ColorModel;->clone()Ljava/awt/image/ColorModel;

    move-result-object v0

    iput-object v0, p0, Lcom/trans/android/AndroidImage;->colorModel:Ljava/awt/image/ColorModel;

    .line 26
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getData()Ljava/awt/image/Raster;

    move-result-object p1

    check-cast p1, Ljava/awt/image/WritableRaster;

    iput-object p1, p0, Lcom/trans/android/AndroidImage;->raster:Ljava/awt/image/WritableRaster;

    .line 27
    invoke-virtual {p0, p1}, Lcom/trans/android/AndroidImage;->setData(Ljava/awt/image/Raster;)V

    return-void
.end method

.method private createImagePaint()Landroid/graphics/Paint;
    .locals 0

    invoke-static {}, Lcom/onyx/common/util/PaintFactory;->createImagePaint()Landroid/graphics/Paint;

    move-result-object p0

    return-object p0
.end method

.method private initImageData()V
    .locals 4

    iget-object v0, p0, Lcom/trans/android/AndroidImage;->colorModel:Ljava/awt/image/ColorModel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/trans/android/AndroidImage;->raster:Ljava/awt/image/WritableRaster;

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/awt/image/BufferedImage;

    invoke-virtual {p0}, Lcom/trans/android/AndroidImage;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/trans/android/AndroidImage;->getHeight()I

    move-result v2

    iget v3, p0, Lcom/trans/android/AndroidImage;->imageType:I

    invoke-direct {v0, v1, v2, v3}, Ljava/awt/image/BufferedImage;-><init>(III)V

    invoke-virtual {v0}, Ljava/awt/image/BufferedImage;->getColorModel()Ljava/awt/image/ColorModel;

    move-result-object v1

    iput-object v1, p0, Lcom/trans/android/AndroidImage;->colorModel:Ljava/awt/image/ColorModel;

    invoke-virtual {v0}, Ljava/awt/image/BufferedImage;->getRaster()Ljava/awt/image/WritableRaster;

    move-result-object v0

    iput-object v0, p0, Lcom/trans/android/AndroidImage;->raster:Ljava/awt/image/WritableRaster;

    :cond_1
    return-void
.end method

.method public static setAlpha(Lcom/trans/android/AndroidImage;D)Lcom/trans/android/AndroidImage;
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 10
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/trans/android/AndroidImage;->setAlpha(D)V

    return-object p0
.end method


# virtual methods
.method public addTileObserver(Ljava/awt/image/TileObserver;)V
    .locals 0

    return-void
.end method

.method public clone()Lcom/trans/android/AndroidImage;
    .locals 2

    .line 2
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/trans/android/AndroidImage;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 4
    new-instance v0, Lcom/trans/android/AndroidImage;

    invoke-virtual {p0}, Lcom/trans/android/AndroidImage;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/trans/android/AndroidImage;->getHeight()I

    move-result p0

    invoke-direct {v0, v1, p0}, Lcom/trans/android/AndroidImage;-><init>(II)V

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/trans/android/AndroidImage;->clone()Lcom/trans/android/AndroidImage;

    move-result-object p0

    return-object p0
.end method

.method public close()V
    .locals 1

    iget-boolean v0, p0, Lcom/trans/android/AndroidImage;->closeable:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/trans/android/AndroidImage;->bitmap:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/onyx/common/util/BitmapUtils;->recycle(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/trans/android/AndroidImage;->properties:Ljava/util/Hashtable;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/trans/android/AndroidImage;->bitmap:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/trans/android/AndroidImage;->canvas:Landroid/graphics/Canvas;

    iput-object v0, p0, Lcom/trans/android/AndroidImage;->colorModel:Ljava/awt/image/ColorModel;

    iput-object v0, p0, Lcom/trans/android/AndroidImage;->raster:Ljava/awt/image/WritableRaster;

    iput-object v0, p0, Lcom/trans/android/AndroidImage;->properties:Ljava/util/Hashtable;

    return-void
.end method

.method public copyData(Ljava/awt/image/WritableRaster;)Ljava/awt/image/WritableRaster;
    .locals 12

    invoke-direct {p0}, Lcom/trans/android/AndroidImage;->initImageData()V

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/trans/android/AndroidImage;->getData()Ljava/awt/image/Raster;

    move-result-object p0

    check-cast p0, Ljava/awt/image/WritableRaster;

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/trans/android/AndroidImage;->updateRaster()V

    invoke-virtual {p1}, Ljava/awt/image/Raster;->getWidth()I

    move-result v6

    invoke-virtual {p1}, Ljava/awt/image/Raster;->getHeight()I

    move-result v7

    invoke-virtual {p1}, Ljava/awt/image/Raster;->getMinX()I

    move-result v8

    invoke-virtual {p1}, Ljava/awt/image/Raster;->getMinY()I

    move-result v9

    const/4 v0, 0x0

    move-object v5, v0

    move v10, v9

    :goto_0
    add-int v0, v9, v7

    if-ge v10, v0, :cond_1

    iget-object v0, p0, Lcom/trans/android/AndroidImage;->raster:Ljava/awt/image/WritableRaster;

    const/4 v4, 0x1

    move v1, v8

    move v2, v10

    move v3, v6

    invoke-virtual/range {v0 .. v5}, Ljava/awt/image/Raster;->getDataElements(IIIILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    move-object v0, p1

    move-object v5, v11

    invoke-virtual/range {v0 .. v5}, Ljava/awt/image/WritableRaster;->setDataElements(IIIILjava/lang/Object;)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_1
    return-object p1
.end method

.method public createGraphics()Lcom/trans/android/AndroidGraphics2D;
    .locals 0

    invoke-virtual {p0}, Lcom/trans/android/AndroidImage;->getGraphics()Ljava/awt/Graphics;

    move-result-object p0

    check-cast p0, Lcom/trans/android/AndroidGraphics2D;

    return-object p0
.end method

.method public drawColor(I)V
    .locals 0

    iget-object p0, p0, Lcom/trans/android/AndroidImage;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {p0, p1}, Landroid/graphics/Canvas;->drawColor(I)V

    return-void
.end method

.method public drawPicture(Landroid/graphics/Picture;)V
    .locals 5

    invoke-virtual {p1}, Landroid/graphics/Picture;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Picture;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/trans/android/AndroidImage;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    if-ne v2, v0, :cond_0

    iget-object v2, p0, Lcom/trans/android/AndroidImage;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    if-ne v2, v1, :cond_0

    iget-object p0, p0, Lcom/trans/android/AndroidImage;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {p1, p0}, Landroid/graphics/Picture;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_0
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p1, v3}, Landroid/graphics/Picture;->draw(Landroid/graphics/Canvas;)V

    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x3f800000    # 1.0f

    mul-float/2addr v3, v4

    int-to-float v0, v0

    div-float/2addr v3, v0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v4

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-virtual {p1, v3, v0}, Landroid/graphics/Matrix;->setScale(FF)V

    iget-object p0, p0, Lcom/trans/android/AndroidImage;->canvas:Landroid/graphics/Canvas;

    const/4 v0, 0x0

    invoke-virtual {p0, v2, p1, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    invoke-static {v2}, Lcom/onyx/common/util/BitmapUtils;->recycle(Landroid/graphics/Bitmap;)V

    :goto_0
    return-void
.end method

.method public eraseColor(I)V
    .locals 1

    iget-object v0, p0, Lcom/trans/android/AndroidImage;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/trans/android/AndroidImage;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    :cond_0
    return-void
.end method

.method public getAlpha()D
    .locals 2

    iget-wide v0, p0, Lcom/trans/android/AndroidImage;->alpha:D

    return-wide v0
.end method

.method public getAndroidBitmap()Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Lcom/trans/android/AndroidImage;->bitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public getCanvas()Landroid/graphics/Canvas;
    .locals 2

    iget-object v0, p0, Lcom/trans/android/AndroidImage;->canvas:Landroid/graphics/Canvas;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/trans/android/AndroidImage;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/trans/android/AndroidImage;->bitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/trans/android/AndroidImage;->canvas:Landroid/graphics/Canvas;

    :cond_1
    iget-object p0, p0, Lcom/trans/android/AndroidImage;->canvas:Landroid/graphics/Canvas;

    return-object p0
.end method

.method public getColorModel()Ljava/awt/image/ColorModel;
    .locals 0

    invoke-direct {p0}, Lcom/trans/android/AndroidImage;->initImageData()V

    iget-object p0, p0, Lcom/trans/android/AndroidImage;->colorModel:Ljava/awt/image/ColorModel;

    return-object p0
.end method

.method public getData()Ljava/awt/image/Raster;
    .locals 13

    .line 1
    invoke-direct {p0}, Lcom/trans/android/AndroidImage;->initImageData()V

    .line 2
    invoke-virtual {p0}, Lcom/trans/android/AndroidImage;->updateRaster()V

    .line 3
    iget-object v0, p0, Lcom/trans/android/AndroidImage;->raster:Ljava/awt/image/WritableRaster;

    invoke-virtual {v0}, Ljava/awt/image/Raster;->getWidth()I

    move-result v0

    .line 4
    iget-object v1, p0, Lcom/trans/android/AndroidImage;->raster:Ljava/awt/image/WritableRaster;

    invoke-virtual {v1}, Ljava/awt/image/Raster;->getHeight()I

    move-result v7

    .line 5
    iget-object v1, p0, Lcom/trans/android/AndroidImage;->raster:Ljava/awt/image/WritableRaster;

    invoke-virtual {v1}, Ljava/awt/image/Raster;->getMinX()I

    move-result v8

    .line 6
    iget-object v1, p0, Lcom/trans/android/AndroidImage;->raster:Ljava/awt/image/WritableRaster;

    invoke-virtual {v1}, Ljava/awt/image/Raster;->getMinY()I

    move-result v9

    .line 7
    iget-object v1, p0, Lcom/trans/android/AndroidImage;->raster:Ljava/awt/image/WritableRaster;

    invoke-virtual {v1}, Ljava/awt/image/Raster;->getSampleModel()Ljava/awt/image/SampleModel;

    move-result-object v1

    new-instance v2, Ljava/awt/Point;

    iget-object v3, p0, Lcom/trans/android/AndroidImage;->raster:Ljava/awt/image/WritableRaster;

    .line 8
    invoke-virtual {v3}, Ljava/awt/image/Raster;->getSampleModelTranslateX()I

    move-result v3

    iget-object v4, p0, Lcom/trans/android/AndroidImage;->raster:Ljava/awt/image/WritableRaster;

    invoke-virtual {v4}, Ljava/awt/image/Raster;->getSampleModelTranslateY()I

    move-result v4

    invoke-direct {v2, v3, v4}, Ljava/awt/Point;-><init>(II)V

    .line 9
    invoke-static {v1, v2}, Ljava/awt/image/Raster;->createWritableRaster(Ljava/awt/image/SampleModel;Ljava/awt/Point;)Ljava/awt/image/WritableRaster;

    move-result-object v10

    const/4 v1, 0x0

    move-object v6, v1

    move v11, v9

    :goto_0
    add-int v1, v9, v7

    if-ge v11, v1, :cond_0

    .line 10
    iget-object v1, p0, Lcom/trans/android/AndroidImage;->raster:Ljava/awt/image/WritableRaster;

    const/4 v5, 0x1

    move v2, v8

    move v3, v11

    move v4, v0

    invoke-virtual/range {v1 .. v6}, Ljava/awt/image/Raster;->getDataElements(IIIILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    move-object v1, v10

    move-object v6, v12

    .line 11
    invoke-virtual/range {v1 .. v6}, Ljava/awt/image/WritableRaster;->setDataElements(IIIILjava/lang/Object;)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_0
    return-object v10
.end method

.method public getData(Ljava/awt/Rectangle;)Ljava/awt/image/Raster;
    .locals 12

    .line 12
    invoke-direct {p0}, Lcom/trans/android/AndroidImage;->initImageData()V

    .line 13
    invoke-virtual {p0}, Lcom/trans/android/AndroidImage;->updateRaster()V

    .line 14
    iget-object v0, p0, Lcom/trans/android/AndroidImage;->raster:Ljava/awt/image/WritableRaster;

    invoke-virtual {v0}, Ljava/awt/image/Raster;->getSampleModel()Ljava/awt/image/SampleModel;

    move-result-object v0

    .line 15
    iget v1, p1, Ljava/awt/Rectangle;->width:I

    iget v2, p1, Ljava/awt/Rectangle;->height:I

    invoke-virtual {v0, v1, v2}, Ljava/awt/image/SampleModel;->createCompatibleSampleModel(II)Ljava/awt/image/SampleModel;

    move-result-object v0

    .line 16
    invoke-virtual {p1}, Ljava/awt/Rectangle;->getLocation()Ljava/awt/Point;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/awt/image/Raster;->createWritableRaster(Ljava/awt/image/SampleModel;Ljava/awt/Point;)Ljava/awt/image/WritableRaster;

    move-result-object v0

    .line 17
    iget v8, p1, Ljava/awt/Rectangle;->width:I

    .line 18
    iget v9, p1, Ljava/awt/Rectangle;->height:I

    .line 19
    iget v10, p1, Ljava/awt/Rectangle;->x:I

    .line 20
    iget p1, p1, Ljava/awt/Rectangle;->y:I

    const/4 v1, 0x0

    move v11, p1

    :goto_0
    move-object v6, v1

    add-int v1, p1, v9

    if-ge v11, v1, :cond_0

    .line 21
    iget-object v1, p0, Lcom/trans/android/AndroidImage;->raster:Ljava/awt/image/WritableRaster;

    const/4 v5, 0x1

    move v2, v10

    move v3, v11

    move v4, v8

    invoke-virtual/range {v1 .. v6}, Ljava/awt/image/Raster;->getDataElements(IIIILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const/4 v6, 0x1

    move-object v2, v0

    move v3, v10

    move v4, v11

    move v5, v8

    move-object v7, v1

    .line 22
    invoke-virtual/range {v2 .. v7}, Ljava/awt/image/WritableRaster;->setDataElements(IIIILjava/lang/Object;)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getGraphics()Ljava/awt/Graphics;
    .locals 1

    iget-object v0, p0, Lcom/trans/android/AndroidImage;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/trans/android/AndroidGraphics2D;

    iget-object p0, p0, Lcom/trans/android/AndroidImage;->bitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, p0}, Lcom/trans/android/AndroidGraphics2D;-><init>(Landroid/graphics/Bitmap;)V

    return-object v0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public getHeight()I
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/trans/android/AndroidImage;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p0

    return p0
.end method

.method public getHeight(Ljava/awt/image/ImageObserver;)I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/trans/android/AndroidImage;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p0

    return p0
.end method

.method public getMinTileX()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getMinTileY()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getMinX()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getMinY()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getNumXTiles()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public getNumYTiles()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    if-eqz p1, :cond_2

    .line 2
    iget-object p0, p0, Lcom/trans/android/AndroidImage;->properties:Ljava/util/Hashtable;

    if-nez p0, :cond_0

    .line 3
    sget-object p0, Ljava/awt/Image;->UndefinedProperty:Ljava/lang/Object;

    return-object p0

    .line 4
    :cond_0
    invoke-virtual {p0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_1

    .line 5
    sget-object p0, Ljava/awt/Image;->UndefinedProperty:Ljava/lang/Object;

    :cond_1
    return-object p0

    .line 6
    :cond_2
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "null property name is not allowed"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getProperty(Ljava/lang/String;Ljava/awt/image/ImageObserver;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/trans/android/AndroidImage;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getPropertyNames()[Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/trans/android/AndroidImage;->properties:Ljava/util/Hashtable;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    move-result-object p0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public getSampleModel()Ljava/awt/image/SampleModel;
    .locals 0

    invoke-direct {p0}, Lcom/trans/android/AndroidImage;->initImageData()V

    iget-object p0, p0, Lcom/trans/android/AndroidImage;->raster:Ljava/awt/image/WritableRaster;

    invoke-virtual {p0}, Ljava/awt/image/Raster;->getSampleModel()Ljava/awt/image/SampleModel;

    move-result-object p0

    return-object p0
.end method

.method public getSource()Ljava/awt/image/ImageProducer;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getSources()Ljava/util/Vector;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector<",
            "Ljava/awt/image/RenderedImage;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public getSubimage(IIII)Lcom/trans/android/AndroidImage;
    .locals 4

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/trans/android/AndroidImage;->getWidth()I

    move-result v0

    if-ne v0, p3, :cond_0

    invoke-virtual {p0}, Lcom/trans/android/AndroidImage;->getHeight()I

    move-result v0

    if-ne v0, p4, :cond_0

    return-object p0

    .line 2
    :cond_0
    new-instance v0, Lcom/trans/android/AndroidImage;

    invoke-direct {v0, p3, p4}, Lcom/trans/android/AndroidImage;-><init>(II)V

    .line 3
    new-instance v1, Landroid/graphics/Rect;

    add-int v2, p1, p3

    add-int v3, p2, p4

    invoke-direct {v1, p1, p2, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 4
    new-instance p1, Landroid/graphics/Rect;

    const/4 p2, 0x0

    invoke-direct {p1, p2, p2, p3, p4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 5
    iget-object p2, v0, Lcom/trans/android/AndroidImage;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {p0}, Lcom/trans/android/AndroidImage;->getAndroidBitmap()Landroid/graphics/Bitmap;

    move-result-object p3

    invoke-direct {p0}, Lcom/trans/android/AndroidImage;->createImagePaint()Landroid/graphics/Paint;

    move-result-object p0

    invoke-virtual {p2, p3, v1, p1, p0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-object v0
.end method

.method public getSubimage(IIIIII)Lcom/trans/android/AndroidImage;
    .locals 2

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    .line 6
    invoke-virtual {p0}, Lcom/trans/android/AndroidImage;->getWidth()I

    move-result v0

    if-ne v0, p5, :cond_0

    invoke-virtual {p0}, Lcom/trans/android/AndroidImage;->getHeight()I

    move-result v0

    if-ne v0, p6, :cond_0

    return-object p0

    .line 7
    :cond_0
    new-instance v0, Lcom/trans/android/AndroidImage;

    invoke-direct {v0, p5, p6}, Lcom/trans/android/AndroidImage;-><init>(II)V

    .line 8
    new-instance v1, Landroid/graphics/Rect;

    add-int/2addr p3, p1

    add-int/2addr p4, p2

    invoke-direct {v1, p1, p2, p3, p4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 9
    new-instance p1, Landroid/graphics/Rect;

    const/4 p2, 0x0

    invoke-direct {p1, p2, p2, p5, p6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 10
    iget-object p2, v0, Lcom/trans/android/AndroidImage;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {p0}, Lcom/trans/android/AndroidImage;->getAndroidBitmap()Landroid/graphics/Bitmap;

    move-result-object p3

    invoke-direct {p0}, Lcom/trans/android/AndroidImage;->createImagePaint()Landroid/graphics/Paint;

    move-result-object p0

    invoke-virtual {p2, p3, v1, p1, p0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-object v0
.end method

.method public getTile(II)Ljava/awt/image/Raster;
    .locals 0

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    invoke-direct {p0}, Lcom/trans/android/AndroidImage;->initImageData()V

    invoke-virtual {p0}, Lcom/trans/android/AndroidImage;->updateRaster()V

    iget-object p0, p0, Lcom/trans/android/AndroidImage;->raster:Ljava/awt/image/WritableRaster;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string p1, "BufferedImages only have one tile with index 0,0"

    invoke-direct {p0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getTileGridXOffset()I
    .locals 0

    invoke-direct {p0}, Lcom/trans/android/AndroidImage;->initImageData()V

    iget-object p0, p0, Lcom/trans/android/AndroidImage;->raster:Ljava/awt/image/WritableRaster;

    invoke-virtual {p0}, Ljava/awt/image/Raster;->getSampleModelTranslateX()I

    move-result p0

    return p0
.end method

.method public getTileGridYOffset()I
    .locals 0

    invoke-direct {p0}, Lcom/trans/android/AndroidImage;->initImageData()V

    iget-object p0, p0, Lcom/trans/android/AndroidImage;->raster:Ljava/awt/image/WritableRaster;

    invoke-virtual {p0}, Ljava/awt/image/Raster;->getSampleModelTranslateY()I

    move-result p0

    return p0
.end method

.method public getTileHeight()I
    .locals 0

    invoke-virtual {p0}, Lcom/trans/android/AndroidImage;->getHeight()I

    move-result p0

    return p0
.end method

.method public getTileWidth()I
    .locals 0

    invoke-virtual {p0}, Lcom/trans/android/AndroidImage;->getWidth()I

    move-result p0

    return p0
.end method

.method public getTransparency()I
    .locals 4

    iget-wide v0, p0, Lcom/trans/android/AndroidImage;->alpha:D

    const-wide/16 v2, 0x0

    cmpl-double p0, v0, v2

    if-nez p0, :cond_0

    const/4 p0, 0x2

    return p0

    :cond_0
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpl-double p0, v0, v2

    if-nez p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x3

    return p0
.end method

.method public getType()I
    .locals 0

    iget p0, p0, Lcom/trans/android/AndroidImage;->imageType:I

    return p0
.end method

.method public getWidth()I
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/trans/android/AndroidImage;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p0

    return p0
.end method

.method public getWidth(Ljava/awt/image/ImageObserver;)I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/trans/android/AndroidImage;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p0

    return p0
.end method

.method public getWritableTile(II)Ljava/awt/image/WritableRaster;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getWritableTileIndices()[Ljava/awt/Point;
    .locals 2

    const/4 p0, 0x1

    new-array p0, p0, [Ljava/awt/Point;

    new-instance v0, Ljava/awt/Point;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Ljava/awt/Point;-><init>(II)V

    aput-object v0, p0, v1

    return-object p0
.end method

.method public hasTileWriters()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isTileWritable(II)Z
    .locals 0

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Only 1 tile in image"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public isValid()Z
    .locals 0

    iget-object p0, p0, Lcom/trans/android/AndroidImage;->bitmap:Landroid/graphics/Bitmap;

    invoke-static {p0}, Lcom/onyx/common/util/BitmapUtils;->isValid(Landroid/graphics/Bitmap;)Z

    move-result p0

    return p0
.end method

.method public releaseWritableTile(II)V
    .locals 0

    return-void
.end method

.method public removeTileObserver(Ljava/awt/image/TileObserver;)V
    .locals 0

    return-void
.end method

.method public setAlpha(D)V
    .locals 4

    const-wide/16 v0, 0x0

    cmpg-double v2, p1, v0

    if-gez v2, :cond_0

    :goto_0
    move-wide p1, v0

    goto :goto_1

    :cond_0
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpl-double v2, p1, v0

    if-lez v2, :cond_1

    goto :goto_0

    .line 1
    :cond_1
    :goto_1
    iget-wide v0, p0, Lcom/trans/android/AndroidImage;->alpha:D

    cmpl-double v0, v0, p1

    if-nez v0, :cond_2

    return-void

    .line 2
    :cond_2
    iput-wide p1, p0, Lcom/trans/android/AndroidImage;->alpha:D

    .line 3
    invoke-virtual {p0}, Lcom/trans/android/AndroidImage;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/trans/android/AndroidImage;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 4
    invoke-static {}, Lcom/onyx/common/util/PaintFactory;->createImagePaint()Landroid/graphics/Paint;

    move-result-object v1

    const-wide v2, 0x406fe00000000000L    # 255.0

    mul-double/2addr p1, v2

    double-to-int p1, p1

    .line 5
    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 6
    new-instance p1, Landroid/graphics/Canvas;

    invoke-direct {p1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object p1, p0, Lcom/trans/android/AndroidImage;->canvas:Landroid/graphics/Canvas;

    .line 7
    iget-object p2, p0, Lcom/trans/android/AndroidImage;->bitmap:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 8
    iget-object p1, p0, Lcom/trans/android/AndroidImage;->bitmap:Landroid/graphics/Bitmap;

    invoke-static {p1}, Lcom/onyx/common/util/BitmapUtils;->recycle(Landroid/graphics/Bitmap;)V

    .line 9
    iput-object v0, p0, Lcom/trans/android/AndroidImage;->bitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setCloseable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/trans/android/AndroidImage;->closeable:Z

    return-void
.end method

.method public setData(Ljava/awt/image/Raster;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    .line 3
    iget-object v1, v0, Lcom/trans/android/AndroidImage;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4
    sget-object v0, Lcom/trans/android/AndroidImage;->TAG:Ljava/lang/String;

    const-string v1, "Bitmap is not mutable"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 5
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/trans/android/AndroidImage;->initImageData()V

    .line 6
    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/Raster;->getWidth()I

    move-result v1

    .line 7
    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/Raster;->getHeight()I

    move-result v2

    .line 8
    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/Raster;->getMinX()I

    move-result v3

    .line 9
    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/Raster;->getMinY()I

    move-result v4

    .line 10
    new-instance v5, Ljava/awt/Rectangle;

    invoke-direct {v5, v3, v4, v1, v2}, Ljava/awt/Rectangle;-><init>(IIII)V

    .line 11
    new-instance v1, Ljava/awt/Rectangle;

    invoke-virtual/range {p0 .. p0}, Lcom/trans/android/AndroidImage;->getWidth()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/trans/android/AndroidImage;->getHeight()I

    move-result v3

    const/4 v4, 0x0

    invoke-direct {v1, v4, v4, v2, v3}, Ljava/awt/Rectangle;-><init>(IIII)V

    .line 12
    invoke-virtual {v5, v1}, Ljava/awt/Rectangle;->intersection(Ljava/awt/Rectangle;)Ljava/awt/Rectangle;

    move-result-object v1

    .line 13
    invoke-virtual {v1}, Ljava/awt/Rectangle;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    return-void

    .line 14
    :cond_1
    iget v15, v1, Ljava/awt/Rectangle;->width:I

    .line 15
    iget v14, v1, Ljava/awt/Rectangle;->height:I

    .line 16
    iget v13, v1, Ljava/awt/Rectangle;->x:I

    .line 17
    iget v12, v1, Ljava/awt/Rectangle;->y:I

    .line 18
    iget-object v1, v0, Lcom/trans/android/AndroidImage;->raster:Ljava/awt/image/WritableRaster;

    if-eq v7, v1, :cond_2

    const/4 v4, 0x1

    :cond_2
    move/from16 v16, v4

    const/4 v1, 0x0

    move-object v6, v1

    move v11, v12

    :goto_0
    add-int v1, v12, v14

    if-ge v11, v1, :cond_4

    const/4 v5, 0x1

    move-object/from16 v1, p1

    move v2, v13

    move v3, v11

    move v4, v15

    .line 19
    invoke-virtual/range {v1 .. v6}, Ljava/awt/image/Raster;->getPixels(IIII[I)[I

    move-result-object v6

    if-eqz v16, :cond_3

    .line 20
    iget-object v8, v0, Lcom/trans/android/AndroidImage;->raster:Ljava/awt/image/WritableRaster;

    const/4 v1, 0x1

    move v9, v13

    move v10, v11

    move v2, v11

    move v11, v15

    move v3, v12

    move v12, v1

    move v1, v13

    move-object v13, v6

    invoke-virtual/range {v8 .. v13}, Ljava/awt/image/WritableRaster;->setPixels(IIII[I)V

    goto :goto_1

    :cond_3
    move v2, v11

    move v3, v12

    move v1, v13

    .line 21
    :goto_1
    iget-object v8, v0, Lcom/trans/android/AndroidImage;->bitmap:Landroid/graphics/Bitmap;

    iget-object v4, v0, Lcom/trans/android/AndroidImage;->colorModel:Ljava/awt/image/ColorModel;

    invoke-static {v7, v4, v6}, Lcom/trans/android/util/ColorUtils;->toAndroidPixels(Ljava/awt/image/Raster;Ljava/awt/image/ColorModel;[I)[I

    move-result-object v9

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v4, 0x1

    move v11, v15

    move v13, v2

    move v5, v14

    move v14, v15

    move/from16 v17, v15

    move v15, v4

    invoke-virtual/range {v8 .. v15}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    add-int/lit8 v11, v2, 0x1

    move v13, v1

    move v12, v3

    move v14, v5

    move/from16 v15, v17

    goto :goto_0

    :cond_4
    return-void
.end method

.method public setData(Ljava/awt/image/Raster;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/trans/android/AndroidImage;->imageType:I

    .line 2
    invoke-virtual {p0, p1}, Lcom/trans/android/AndroidImage;->setData(Ljava/awt/image/Raster;)V

    return-void
.end method

.method public setProperties(Ljava/util/Hashtable;)Lcom/trans/android/AndroidImage;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/trans/android/AndroidImage;"
        }
    .end annotation

    iget-object v0, p0, Lcom/trans/android/AndroidImage;->properties:Ljava/util/Hashtable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    :cond_0
    invoke-static {p1}, Lcom/onyx/common/util/CollectionUtils;->isNullOrEmpty(Ljava/util/Map;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/trans/android/AndroidImage;->properties:Ljava/util/Hashtable;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/trans/android/AndroidImage;->properties:Ljava/util/Hashtable;

    :cond_1
    invoke-virtual {p1}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/trans/android/AndroidImage;->properties:Ljava/util/Hashtable;

    move-object v3, v1

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    return-object p0
.end method

.method public updateRaster()V
    .locals 12

    invoke-virtual {p0}, Lcom/trans/android/AndroidImage;->getWidth()I

    move-result v8

    invoke-virtual {p0}, Lcom/trans/android/AndroidImage;->getHeight()I

    move-result v9

    new-array v10, v8, [I

    const/4 v0, 0x0

    move v11, v0

    :goto_0
    if-ge v11, v9, :cond_0

    iget-object v0, p0, Lcom/trans/android/AndroidImage;->bitmap:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x1

    move-object v1, v10

    move v3, v8

    move v5, v11

    move v6, v8

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    iget-object v0, p0, Lcom/trans/android/AndroidImage;->raster:Ljava/awt/image/WritableRaster;

    const/4 v1, 0x0

    const/4 v4, 0x1

    move v2, v11

    move-object v5, v10

    invoke-virtual/range {v0 .. v5}, Ljava/awt/image/WritableRaster;->setDataElements(IIIILjava/lang/Object;)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
