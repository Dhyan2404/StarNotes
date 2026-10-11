.class public Lorg/apache/poi/hwmf/draw/AndroidHwmfImageRenderer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/sl/draw/ImageRenderer;
.implements Lorg/apache/poi/sl/draw/EmbeddedExtractor;
.implements Ljava/io/Closeable;


# instance fields
.field alpha:D

.field charset:Ljava/nio/charset/Charset;

.field charsetInitialized:Z

.field image:Lcom/trans/android/AndroidImage;

.field nativeBounds:Ljava/awt/geom/Rectangle2D;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/poi/hwmf/draw/AndroidHwmfImageRenderer;->charsetInitialized:Z

    return-void
.end method

.method public static synthetic f(Ljava/lang/Iterable;)Ljava/util/Iterator;
    .locals 0

    invoke-static {p0}, Lorg/apache/poi/hwmf/draw/AndroidHwmfImageRenderer;->lambda$getEmbeddings$0(Ljava/lang/Iterable;)Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public static getEmbeddings(Ljava/lang/Iterable;)Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lorg/apache/poi/hwmf/usermodel/HwmfEmbedded;",
            ">;)",
            "Ljava/lang/Iterable<",
            "Lorg/apache/poi/sl/draw/EmbeddedExtractor$EmbeddedPart;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    .line 2
    new-instance v0, Lcom/sunia/HTREnginev2/qa;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/qa;-><init>(Ljava/lang/Iterable;)V

    return-object v0
.end method

.method public static getOuterBounds(Ljava/awt/geom/Rectangle2D;Ljava/awt/Insets;)Ljava/awt/geom/Rectangle2D;
    .locals 16
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    move-object/from16 v0, p1

    invoke-virtual/range {p0 .. p0}, Ljava/awt/geom/RectangularShape;->getWidth()D

    move-result-wide v1

    iget v3, v0, Ljava/awt/Insets;->left:I

    int-to-double v3, v3

    const-wide v5, 0x40f86a0000000000L    # 100000.0

    sub-double v3, v5, v3

    iget v7, v0, Ljava/awt/Insets;->right:I

    int-to-double v7, v7

    sub-double/2addr v3, v7

    div-double/2addr v3, v5

    div-double v12, v1, v3

    invoke-virtual/range {p0 .. p0}, Ljava/awt/geom/RectangularShape;->getHeight()D

    move-result-wide v1

    iget v3, v0, Ljava/awt/Insets;->top:I

    int-to-double v3, v3

    sub-double v3, v5, v3

    iget v7, v0, Ljava/awt/Insets;->bottom:I

    int-to-double v7, v7

    sub-double/2addr v3, v7

    div-double/2addr v3, v5

    div-double v14, v1, v3

    invoke-virtual/range {p0 .. p0}, Ljava/awt/geom/RectangularShape;->getX()D

    move-result-wide v1

    iget v3, v0, Ljava/awt/Insets;->left:I

    int-to-double v3, v3

    div-double/2addr v3, v5

    mul-double/2addr v3, v12

    sub-double v8, v1, v3

    invoke-virtual/range {p0 .. p0}, Ljava/awt/geom/RectangularShape;->getY()D

    move-result-wide v1

    iget v0, v0, Ljava/awt/Insets;->top:I

    int-to-double v3, v0

    div-double/2addr v3, v5

    mul-double/2addr v3, v14

    sub-double v10, v1, v3

    new-instance v0, Ljava/awt/geom/Rectangle2D$Double;

    move-object v7, v0

    invoke-direct/range {v7 .. v15}, Ljava/awt/geom/Rectangle2D$Double;-><init>(DDDD)V

    return-object v0
.end method

.method private static synthetic lambda$getEmbeddings$0(Ljava/lang/Iterable;)Ljava/util/Iterator;
    .locals 2

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x1

    filled-new-array {v0}, [I

    move-result-object v0

    new-instance v1, Lorg/apache/poi/hwmf/draw/AndroidHwmfImageRenderer$1;

    invoke-direct {v1, p0, v0}, Lorg/apache/poi/hwmf/draw/AndroidHwmfImageRenderer$1;-><init>(Ljava/util/Iterator;[I)V

    return-object v1
.end method

.method private loadSvgImage(Ljava/io/InputStream;Ljava/awt/geom/Rectangle2D;)V
    .locals 9

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lcom/onyx/batik/transcoder/image/WMFTranscoder;

    invoke-direct {v1, p1}, Lcom/onyx/batik/transcoder/image/WMFTranscoder;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    new-instance v2, Lcom/onyx/batik/transcoder/image/BitmapTranscoder;

    invoke-virtual {v1}, Lcom/onyx/batik/transcoder/image/WMFTranscoder;->getInput()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/onyx/batik/transcoder/image/BitmapTranscoder;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez p2, :cond_0

    const/high16 p2, 0x3fc00000    # 1.5f

    :try_start_2
    invoke-virtual {v2, p2}, Lcom/onyx/batik/transcoder/image/BitmapTranscoder;->getBitmap(F)Landroid/graphics/Bitmap;

    move-result-object p2

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/awt/Dimension;

    invoke-virtual {p2}, Ljava/awt/geom/RectangularShape;->getWidth()D

    move-result-wide v3

    const-wide/high16 v5, 0x3ff8000000000000L    # 1.5

    mul-double/2addr v3, v5

    double-to-int v3, v3

    invoke-virtual {p2}, Ljava/awt/geom/RectangularShape;->getHeight()D

    move-result-wide v7

    mul-double/2addr v7, v5

    double-to-int p2, v7

    invoke-direct {v0, v3, p2}, Ljava/awt/Dimension;-><init>(II)V

    invoke-virtual {v2, v0}, Lcom/onyx/batik/transcoder/image/BitmapTranscoder;->getBitmap(Ljava/awt/Dimension;)Landroid/graphics/Bitmap;

    move-result-object p2

    :goto_0
    invoke-static {p2}, Lcom/onyx/common/util/BitmapUtils;->isValid(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/trans/android/AndroidImage;

    invoke-direct {v0, p2}, Lcom/trans/android/AndroidImage;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lorg/apache/poi/hwmf/draw/AndroidHwmfImageRenderer;->image:Lcom/trans/android/AndroidImage;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_1
    invoke-static {p1}, Lcom/onyx/common/util/CloseUtils;->close(Ljava/io/Closeable;)V

    invoke-static {v1}, Lcom/onyx/common/util/CloseUtils;->close(Ljava/io/Closeable;)V

    goto :goto_4

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_2

    :catchall_1
    move-exception p0

    move-object v2, v0

    :goto_1
    move-object v0, v1

    goto :goto_5

    :catch_1
    move-exception p0

    move-object v2, v0

    :goto_2
    move-object v0, v1

    goto :goto_3

    :catchall_2
    move-exception p0

    move-object v2, v0

    goto :goto_5

    :catch_2
    move-exception p0

    move-object v2, v0

    :goto_3
    :try_start_3
    invoke-static {p0}, Lcom/onyx/poi/POIFactory;->printPOIThrowable(Ljava/lang/Throwable;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    invoke-static {p1}, Lcom/onyx/common/util/CloseUtils;->close(Ljava/io/Closeable;)V

    invoke-static {v0}, Lcom/onyx/common/util/CloseUtils;->close(Ljava/io/Closeable;)V

    :goto_4
    invoke-static {v2}, Lcom/onyx/common/util/CloseUtils;->close(Ljava/io/Closeable;)V

    return-void

    :catchall_3
    move-exception p0

    :goto_5
    invoke-static {p1}, Lcom/onyx/common/util/CloseUtils;->close(Ljava/io/Closeable;)V

    invoke-static {v0}, Lcom/onyx/common/util/CloseUtils;->close(Ljava/io/Closeable;)V

    invoke-static {v2}, Lcom/onyx/common/util/CloseUtils;->close(Ljava/io/Closeable;)V

    throw p0
.end method


# virtual methods
.method public canRender(Ljava/lang/String;)Z
    .locals 0

    sget-object p0, Lorg/apache/poi/sl/usermodel/PictureData$PictureType;->WMF:Lorg/apache/poi/sl/usermodel/PictureData$PictureType;

    iget-object p0, p0, Lorg/apache/poi/sl/usermodel/PictureData$PictureType;->contentType:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

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

    iget-object v0, p0, Lorg/apache/poi/hwmf/draw/AndroidHwmfImageRenderer;->image:Lcom/trans/android/AndroidImage;

    invoke-static {v0}, Lcom/onyx/common/util/CloseUtils;->close(Ljava/io/Closeable;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/hwmf/draw/AndroidHwmfImageRenderer;->nativeBounds:Ljava/awt/geom/Rectangle2D;

    iput-object v0, p0, Lorg/apache/poi/hwmf/draw/AndroidHwmfImageRenderer;->image:Lcom/trans/android/AndroidImage;

    return-void
.end method

.method public drawImage(Ljava/awt/Graphics2D;Ljava/awt/geom/Rectangle2D;)Z
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/poi/hwmf/draw/AndroidHwmfImageRenderer;->drawImage(Ljava/awt/Graphics2D;Ljava/awt/geom/Rectangle2D;Ljava/awt/Insets;)Z

    move-result p0

    return p0
.end method

.method public drawImage(Ljava/awt/Graphics2D;Ljava/awt/geom/Rectangle2D;Ljava/awt/Insets;)Z
    .locals 0

    .line 2
    iget-object p0, p0, Lorg/apache/poi/hwmf/draw/AndroidHwmfImageRenderer;->image:Lcom/trans/android/AndroidImage;

    invoke-static {p1, p0, p2, p3}, Lorg/apache/poi/sl/draw/AndroidBitmapImageRenderer;->drawImage(Ljava/awt/Graphics2D;Lcom/trans/android/AndroidImage;Ljava/awt/geom/Rectangle2D;Ljava/awt/Insets;)Z

    move-result p0

    return p0
.end method

.method public getBounds()Ljava/awt/geom/Rectangle2D;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hwmf/draw/AndroidHwmfImageRenderer;->image:Lcom/trans/android/AndroidImage;

    invoke-static {p0}, Lorg/apache/poi/sl/draw/AndroidBitmapImageRenderer;->getBounds(Lcom/trans/android/AndroidImage;)Ljava/awt/geom/Rectangle2D;

    move-result-object p0

    return-object p0
.end method

.method public getDimension()Ljava/awt/geom/Dimension2D;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/hwmf/draw/AndroidHwmfImageRenderer;->image:Lcom/trans/android/AndroidImage;

    if-nez v0, :cond_0

    new-instance p0, Ljava/awt/Dimension;

    invoke-direct {p0}, Ljava/awt/Dimension;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/awt/Dimension;

    invoke-virtual {v0}, Lcom/trans/android/AndroidImage;->getWidth()I

    move-result v0

    iget-object p0, p0, Lorg/apache/poi/hwmf/draw/AndroidHwmfImageRenderer;->image:Lcom/trans/android/AndroidImage;

    invoke-virtual {p0}, Lcom/trans/android/AndroidImage;->getHeight()I

    move-result p0

    invoke-direct {v1, v0, p0}, Ljava/awt/Dimension;-><init>(II)V

    move-object p0, v1

    :goto_0
    return-object p0
.end method

.method public getEmbeddings()Ljava/lang/Iterable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Lorg/apache/poi/sl/draw/EmbeddedExtractor$EmbeddedPart;",
            ">;"
        }
    .end annotation

    .line 1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getGenericRecord()Lorg/apache/poi/common/usermodel/GenericRecord;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getImage()Ljava/awt/image/BufferedImage;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hwmf/draw/AndroidHwmfImageRenderer;->getDimension()Ljava/awt/geom/Dimension2D;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/hwmf/draw/AndroidHwmfImageRenderer;->getImage(Ljava/awt/geom/Dimension2D;)Ljava/awt/image/BufferedImage;

    move-result-object p0

    return-object p0
.end method

.method public getImage(Ljava/awt/geom/Dimension2D;)Ljava/awt/image/BufferedImage;
    .locals 2

    .line 2
    iget-object v0, p0, Lorg/apache/poi/hwmf/draw/AndroidHwmfImageRenderer;->image:Lcom/trans/android/AndroidImage;

    const/4 v1, 0x0

    .line 3
    iput-object v1, p0, Lorg/apache/poi/hwmf/draw/AndroidHwmfImageRenderer;->image:Lcom/trans/android/AndroidImage;

    .line 4
    invoke-static {v0, p1}, Lorg/apache/poi/sl/draw/AndroidBitmapImageRenderer;->getImage(Lcom/trans/android/AndroidImage;Ljava/awt/geom/Dimension2D;)Ljava/awt/image/BufferedImage;

    move-result-object p0

    return-object p0
.end method

.method public getNativeBounds()Ljava/awt/geom/Rectangle2D;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hwmf/draw/AndroidHwmfImageRenderer;->nativeBounds:Ljava/awt/geom/Rectangle2D;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/hwmf/draw/AndroidHwmfImageRenderer;->getBounds()Ljava/awt/geom/Rectangle2D;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public loadImage(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p2, 0x0

    .line 1
    invoke-direct {p0, p1, p2}, Lorg/apache/poi/hwmf/draw/AndroidHwmfImageRenderer;->loadSvgImage(Ljava/io/InputStream;Ljava/awt/geom/Rectangle2D;)V

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
    invoke-direct {p0, p1, p3}, Lorg/apache/poi/hwmf/draw/AndroidHwmfImageRenderer;->loadSvgImage(Ljava/io/InputStream;Ljava/awt/geom/Rectangle2D;)V

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
    new-instance p2, Ljava/io/ByteArrayInputStream;

    invoke-direct {p2, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const/4 p1, 0x0

    invoke-direct {p0, p2, p1}, Lorg/apache/poi/hwmf/draw/AndroidHwmfImageRenderer;->loadSvgImage(Ljava/io/InputStream;Ljava/awt/geom/Rectangle2D;)V

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
    new-instance p2, Ljava/io/ByteArrayInputStream;

    invoke-direct {p2, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {p0, p2, p3}, Lorg/apache/poi/hwmf/draw/AndroidHwmfImageRenderer;->loadSvgImage(Ljava/io/InputStream;Ljava/awt/geom/Rectangle2D;)V

    return-void
.end method

.method public setAlpha(D)V
    .locals 1

    iput-wide p1, p0, Lorg/apache/poi/hwmf/draw/AndroidHwmfImageRenderer;->alpha:D

    iget-object v0, p0, Lorg/apache/poi/hwmf/draw/AndroidHwmfImageRenderer;->image:Lcom/trans/android/AndroidImage;

    invoke-static {v0, p1, p2}, Lorg/apache/poi/sl/draw/AndroidBitmapImageRenderer;->setAlpha(Lcom/trans/android/AndroidImage;D)Lcom/trans/android/AndroidImage;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/hwmf/draw/AndroidHwmfImageRenderer;->image:Lcom/trans/android/AndroidImage;

    return-void
.end method

.method public setDefaultCharset(Ljava/nio/charset/Charset;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/hwmf/draw/AndroidHwmfImageRenderer;->charset:Ljava/nio/charset/Charset;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/apache/poi/hwmf/draw/AndroidHwmfImageRenderer;->charsetInitialized:Z

    return-void
.end method

.method public useDeviceBounds()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
