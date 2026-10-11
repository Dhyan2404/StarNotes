.class public Lorg/apache/poi/convert/BitmapPicturesCache;
.super Lorg/apache/poi/picture/PicturesCache;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/poi/picture/PicturesCache<",
        "Lcom/trans/android/AndroidImage;",
        ">;"
    }
.end annotation


# instance fields
.field private renderer:Lorg/apache/poi/sl/draw/AndroidImageRenderer;

.field private sizeCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/awt/Dimension;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/poi/picture/PicturesCache;-><init>(Ljava/lang/String;)V

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/convert/BitmapPicturesCache;->sizeCache:Ljava/util/Map;

    new-instance p1, Lorg/apache/poi/sl/draw/AndroidImageRenderer;

    invoke-direct {p1}, Lorg/apache/poi/sl/draw/AndroidImageRenderer;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/convert/BitmapPicturesCache;->renderer:Lorg/apache/poi/sl/draw/AndroidImageRenderer;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/convert/BitmapPicturesCache;->sizeCache:Ljava/util/Map;

    invoke-static {p0}, Lorg/apache/poi/util/CollectionUtils;->clear(Ljava/util/Map;)V

    return-void
.end method

.method public createImage(II)Lcom/trans/android/AndroidImage;
    .locals 0

    .line 2
    new-instance p0, Lcom/trans/android/AndroidImage;

    invoke-direct {p0, p1, p2}, Lcom/trans/android/AndroidImage;-><init>(II)V

    return-object p0
.end method

.method public bridge synthetic createImage(II)Ljava/awt/Image;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/convert/BitmapPicturesCache;->createImage(II)Lcom/trans/android/AndroidImage;

    move-result-object p0

    return-object p0
.end method

.method public existCache(Ljava/lang/String;)Z
    .locals 1

    new-instance v0, Ljava/io/File;

    iget-object p0, p0, Lorg/apache/poi/picture/PicturesCache;->location:Ljava/lang/String;

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/onyx/common/util/FileUtils;->fileExist(Ljava/io/File;)Z

    move-result p0

    return p0
.end method

.method public getFilename(Ljava/lang/String;I)Ljava/lang/String;
    .locals 0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "image_"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ".png"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getGraphics(Lcom/trans/android/AndroidImage;)Ljava/awt/Graphics2D;
    .locals 1

    .line 2
    invoke-virtual {p1}, Lcom/trans/android/AndroidImage;->getGraphics()Ljava/awt/Graphics;

    move-result-object p1

    check-cast p1, Ljava/awt/Graphics2D;

    .line 3
    sget-object v0, Lorg/apache/poi/sl/draw/Drawable;->IMAGE_RENDERER:Lorg/apache/poi/sl/draw/Drawable$DrawableHint;

    iget-object p0, p0, Lorg/apache/poi/convert/BitmapPicturesCache;->renderer:Lorg/apache/poi/sl/draw/AndroidImageRenderer;

    invoke-virtual {p1, v0, p0}, Ljava/awt/Graphics2D;->setRenderingHint(Ljava/awt/RenderingHints$Key;Ljava/lang/Object;)V

    return-object p1
.end method

.method public bridge synthetic getGraphics(Ljava/awt/Image;)Ljava/awt/Graphics2D;
    .locals 0

    .line 1
    check-cast p1, Lcom/trans/android/AndroidImage;

    invoke-virtual {p0, p1}, Lorg/apache/poi/convert/BitmapPicturesCache;->getGraphics(Lcom/trans/android/AndroidImage;)Ljava/awt/Graphics2D;

    move-result-object p0

    return-object p0
.end method

.method public getImageRenderer(Ljava/lang/String;)Lorg/apache/poi/sl/draw/ImageRenderer;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/convert/BitmapPicturesCache;->renderer:Lorg/apache/poi/sl/draw/AndroidImageRenderer;

    return-object p0
.end method

.method public getImageSize(Ljava/lang/String;)Ljava/awt/Dimension;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/convert/BitmapPicturesCache;->sizeCache:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/awt/Dimension;

    return-object p0
.end method

.method public getLocation()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/picture/PicturesCache;->location:Ljava/lang/String;

    return-object p0
.end method

.method public getStream(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 3

    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lorg/apache/poi/picture/PicturesCache;->location:Ljava/lang/String;

    invoke-direct {v1, v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    iget-object p0, p0, Lorg/apache/poi/picture/PicturesCache;->LOG:Lorg/apache/logging/log4j/Logger;

    invoke-interface {p0}, Lorg/apache/logging/log4j/Logger;->atError()Lorg/apache/logging/log4j/LogBuilder;

    move-result-object p0

    invoke-interface {p0, p1}, Lorg/apache/logging/log4j/LogBuilder;->withThrowable(Ljava/lang/Throwable;)Lorg/apache/logging/log4j/LogBuilder;

    move-result-object p0

    invoke-interface {p0}, Lorg/apache/logging/log4j/LogBuilder;->log()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public readImageSize(Ljava/lang/String;)Ljava/awt/Dimension;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/poi/convert/BitmapPicturesCache;->getStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    invoke-static {p0}, Lcom/trans/android/util/ImageUtils;->readImageSize(Ljava/io/InputStream;)Ljava/awt/Dimension;

    move-result-object p0

    return-object p0
.end method

.method public saveImage(Lcom/trans/android/AndroidImage;Ljava/lang/String;)Z
    .locals 1

    .line 2
    invoke-virtual {p1}, Lcom/trans/android/AndroidImage;->getAndroidBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    new-instance v0, Ljava/io/File;

    iget-object p0, p0, Lorg/apache/poi/picture/PicturesCache;->location:Ljava/lang/String;

    invoke-direct {v0, p0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/onyx/common/util/BitmapUtils;->compress(Landroid/graphics/Bitmap;Ljava/lang/String;)Z

    const/4 p0, 0x1

    return p0
.end method

.method public bridge synthetic saveImage(Ljava/awt/Image;Ljava/lang/String;)Z
    .locals 0

    .line 1
    check-cast p1, Lcom/trans/android/AndroidImage;

    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/convert/BitmapPicturesCache;->saveImage(Lcom/trans/android/AndroidImage;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public setImageSize(Ljava/lang/String;Ljava/awt/Dimension;)V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/convert/BitmapPicturesCache;->sizeCache:Ljava/util/Map;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setLocation(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/picture/PicturesCache;->location:Ljava/lang/String;

    return-void
.end method
