.class public Ljava/awt/AndroidGraphicsEnvironment;
.super Lsun/java2d/SunGraphicsEnvironment;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lsun/java2d/SunGraphicsEnvironment;-><init>()V

    return-void
.end method

.method public static getUsableBounds(Ljava/awt/GraphicsDevice;)Ljava/awt/Rectangle;
    .locals 0

    invoke-virtual {p0}, Ljava/awt/GraphicsDevice;->getDefaultConfiguration()Ljava/awt/GraphicsConfiguration;

    move-result-object p0

    invoke-virtual {p0}, Ljava/awt/GraphicsConfiguration;->getBounds()Ljava/awt/Rectangle;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public createGraphics(Ljava/awt/image/BufferedImage;)Ljava/awt/Graphics2D;
    .locals 3

    instance-of p0, p1, Lcom/trans/android/BufferedImageWrapper;

    if-eqz p0, :cond_0

    check-cast p1, Lcom/trans/android/BufferedImageWrapper;

    invoke-virtual {p1}, Lcom/trans/android/BufferedImageWrapper;->getAndroidImage()Lcom/trans/android/AndroidImage;

    move-result-object p0

    invoke-virtual {p0}, Lcom/trans/android/AndroidImage;->createGraphics()Lcom/trans/android/AndroidGraphics2D;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getType()I

    move-result p0

    invoke-static {p0}, Lcom/trans/android/util/BridgeUtils;->getConfigByImageType(I)Landroid/graphics/Bitmap$Config;

    move-result-object p0

    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v1

    invoke-static {v0, v1, p0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    new-instance v0, Lcom/trans/android/AndroidGraphics2D;

    invoke-direct {v0, p0}, Lcom/trans/android/AndroidGraphics2D;-><init>(Landroid/graphics/Bitmap;)V

    const/4 p0, 0x1

    invoke-virtual {v0, p0}, Lcom/trans/android/AndroidGraphics2D;->setRecycleBitmap(Z)V

    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v2

    mul-int/2addr v1, v2

    if-le v1, p0, :cond_1

    invoke-virtual {v0, p1}, Lcom/trans/android/AndroidGraphics2D;->setBridge(Lcom/trans/android/ImageBridge;)V

    :cond_1
    return-object v0
.end method

.method public getNumScreens()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isDisplayLocal()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public makeScreenDevice(I)Ljava/awt/GraphicsDevice;
    .locals 0

    new-instance p0, Ljava/awt/AndroidGraphicsDevice;

    invoke-direct {p0}, Ljava/awt/AndroidGraphicsDevice;-><init>()V

    return-object p0
.end method
