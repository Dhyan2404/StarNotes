.class public Lcom/onyx/poi/util/TiffUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String; = "TiffUtils"


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calculateInSampleSize(IIII)I
    .locals 2

    const/4 v0, 0x1

    if-gt p1, p3, :cond_0

    if-le p0, p2, :cond_1

    :cond_0
    div-int/lit8 p1, p1, 0x2

    div-int/lit8 p0, p0, 0x2

    :goto_0
    div-int v1, p1, v0

    if-le v1, p3, :cond_1

    div-int v1, p0, v0

    if-le v1, p2, :cond_1

    mul-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_1
    return v0
.end method

.method public static isTiff(Ljava/lang/String;)Z
    .locals 1

    const-string v0, ".tiff"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, ".tif"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static read(Ljava/io/File;)Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0}, Lcom/onyx/poi/util/TiffUtils;->read(Ljava/io/File;Ljava/awt/geom/Rectangle2D;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static read(Ljava/io/File;Ljava/awt/geom/Rectangle2D;)Landroid/graphics/Bitmap;
    .locals 6

    .line 16
    :try_start_0
    new-instance v0, Lorg/beyka/tiffbitmapfactory/TiffBitmapFactory$Options;

    invoke-direct {v0}, Lorg/beyka/tiffbitmapfactory/TiffBitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    .line 17
    iput v1, v0, Lorg/beyka/tiffbitmapfactory/TiffBitmapFactory$Options;->inSampleSize:I

    if-eqz p1, :cond_0

    .line 18
    invoke-virtual {p1}, Ljava/awt/geom/RectangularShape;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 19
    iput-boolean v1, v0, Lorg/beyka/tiffbitmapfactory/TiffBitmapFactory$Options;->inJustDecodeBounds:Z

    .line 20
    invoke-static {p0, v0}, Lorg/beyka/tiffbitmapfactory/TiffBitmapFactory;->decodeFile(Ljava/io/File;Lorg/beyka/tiffbitmapfactory/TiffBitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 21
    iget v1, v0, Lorg/beyka/tiffbitmapfactory/TiffBitmapFactory$Options;->outWidth:I

    iget v2, v0, Lorg/beyka/tiffbitmapfactory/TiffBitmapFactory$Options;->outHeight:I

    .line 22
    invoke-virtual {p1}, Ljava/awt/geom/RectangularShape;->getWidth()D

    move-result-wide v3

    double-to-int v3, v3

    invoke-virtual {p1}, Ljava/awt/geom/RectangularShape;->getHeight()D

    move-result-wide v4

    double-to-int p1, v4

    .line 23
    invoke-static {v1, v2, v3, p1}, Lcom/trans/android/util/ImageUtils;->calculateInSampleSizeForRender(IIII)I

    move-result p1

    iput p1, v0, Lorg/beyka/tiffbitmapfactory/TiffBitmapFactory$Options;->inSampleSize:I

    const/4 p1, 0x0

    .line 24
    iput-boolean p1, v0, Lorg/beyka/tiffbitmapfactory/TiffBitmapFactory$Options;->inJustDecodeBounds:Z

    .line 25
    :cond_0
    invoke-static {p0, v0}, Lorg/beyka/tiffbitmapfactory/TiffBitmapFactory;->decodeFile(Ljava/io/File;Lorg/beyka/tiffbitmapfactory/TiffBitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 26
    sget-object p1, Lcom/onyx/poi/util/TiffUtils;->a:Ljava/lang/String;

    invoke-static {p1, p0}, Lcom/onyx/common/util/JLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static read(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-static {p0, v0}, Lcom/onyx/poi/util/TiffUtils;->read(Ljava/lang/String;Ljava/awt/geom/Rectangle2D;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static read(Ljava/lang/String;Ljava/awt/geom/Rectangle2D;)Landroid/graphics/Bitmap;
    .locals 1

    .line 3
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p1}, Lcom/onyx/poi/util/TiffUtils;->read(Ljava/io/File;Ljava/awt/geom/Rectangle2D;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static read(Ljava/io/InputStream;)Lcom/trans/android/AndroidImage;
    .locals 1

    const/4 v0, 0x0

    .line 4
    invoke-static {p0, v0}, Lcom/onyx/poi/util/TiffUtils;->read(Ljava/io/InputStream;Ljava/awt/geom/Rectangle2D;)Lcom/trans/android/AndroidImage;

    move-result-object p0

    return-object p0
.end method

.method public static read(Ljava/io/InputStream;Ljava/awt/geom/Rectangle2D;)Lcom/trans/android/AndroidImage;
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "tif"

    .line 5
    invoke-static {v1, v0}, Lcom/onyx/common/util/FileUtils;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 6
    invoke-static {p0, v1}, Lcom/onyx/common/util/FileUtils;->saveToFile(Ljava/io/InputStream;Ljava/io/File;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 7
    invoke-static {v1}, Lcom/onyx/common/util/FileUtils;->deleteFile(Ljava/io/File;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    invoke-static {p0}, Lcom/onyx/common/util/CloseUtils;->close(Ljava/io/Closeable;)V

    return-object v0

    .line 9
    :cond_0
    :try_start_1
    invoke-static {v1, p1}, Lcom/onyx/poi/util/TiffUtils;->read(Ljava/io/File;Ljava/awt/geom/Rectangle2D;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 10
    invoke-static {v1}, Lcom/onyx/common/util/FileUtils;->deleteFile(Ljava/io/File;)Z

    if-nez p1, :cond_1

    goto :goto_0

    .line 11
    :cond_1
    new-instance v1, Lcom/trans/android/AndroidImage;

    invoke-direct {v1, p1}, Lcom/trans/android/AndroidImage;-><init>(Landroid/graphics/Bitmap;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v1

    .line 12
    :goto_0
    invoke-static {p0}, Lcom/onyx/common/util/CloseUtils;->close(Ljava/io/Closeable;)V

    return-object v0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 13
    :try_start_2
    sget-object v1, Lcom/onyx/poi/util/TiffUtils;->a:Ljava/lang/String;

    invoke-static {v1, p1}, Lcom/onyx/common/util/JLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 14
    invoke-static {p0}, Lcom/onyx/common/util/CloseUtils;->close(Ljava/io/Closeable;)V

    return-object v0

    :goto_1
    invoke-static {p0}, Lcom/onyx/common/util/CloseUtils;->close(Ljava/io/Closeable;)V

    .line 15
    throw p1
.end method
