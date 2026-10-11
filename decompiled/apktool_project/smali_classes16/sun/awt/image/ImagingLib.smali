.class public Lsun/awt/image/ImagingLib;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final AFFINE_OP:I = 0x1

.field private static final CONVOLVE_OP:I = 0x2

.field private static final LOOKUP_OP:I = 0x0

.field private static final NUM_NATIVE_OPS:I = 0x3

.field private static nativeOpClass:[Ljava/lang/Class; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field static useLib:Z = true

.field static verbose:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const-string v0, "Could not find class: "

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Class;

    sput-object v1, Lsun/awt/image/ImagingLib;->nativeOpClass:[Ljava/lang/Class;

    new-instance v1, Lsun/awt/image/ImagingLib$1;

    invoke-direct {v1}, Lsun/awt/image/ImagingLib$1;-><init>()V

    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    sput-boolean v1, Lsun/awt/image/ImagingLib;->useLib:Z

    :try_start_0
    sget-object v1, Lsun/awt/image/ImagingLib;->nativeOpClass:[Ljava/lang/Class;

    const-class v2, Ljava/awt/image/LookupOp;

    const/4 v3, 0x0

    aput-object v2, v1, v3
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_0
    :try_start_1
    sget-object v1, Lsun/awt/image/ImagingLib;->nativeOpClass:[Ljava/lang/Class;

    const-class v2, Ljava/awt/image/AffineTransformOp;

    const/4 v3, 0x1

    aput-object v2, v1, v3
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_1
    :try_start_2
    sget-object v1, Lsun/awt/image/ImagingLib;->nativeOpClass:[Ljava/lang/Class;

    const-class v2, Ljava/awt/image/ConvolveOp;

    const/4 v3, 0x2

    aput-object v2, v1, v3
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v1

    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$000()Z
    .locals 1

    invoke-static {}, Lsun/awt/image/ImagingLib;->init()Z

    move-result v0

    return v0
.end method

.method public static convolveBI(Ljava/awt/image/BufferedImage;Ljava/awt/image/BufferedImage;Ljava/awt/image/Kernel;I)I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public static convolveRaster(Ljava/awt/image/Raster;Ljava/awt/image/Raster;Ljava/awt/image/Kernel;I)I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public static filter(Ljava/awt/image/BufferedImageOp;Ljava/awt/image/BufferedImage;Ljava/awt/image/BufferedImage;)Ljava/awt/image/BufferedImage;
    .locals 3

    .line 15
    sget-boolean v0, Lsun/awt/image/ImagingLib;->verbose:Z

    if-eqz v0, :cond_0

    .line 16
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "in filter and op is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "bufimage is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " and "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 17
    :cond_0
    sget-boolean v0, Lsun/awt/image/ImagingLib;->useLib:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    if-nez p2, :cond_2

    .line 18
    invoke-interface {p0, p1, v1}, Ljava/awt/image/BufferedImageOp;->createCompatibleDestImage(Ljava/awt/image/BufferedImage;Ljava/awt/image/ColorModel;)Ljava/awt/image/BufferedImage;

    move-result-object p2

    .line 19
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lsun/awt/image/ImagingLib;->getNativeOpIndex(Ljava/lang/Class;)I

    move-result v0

    if-eqz v0, :cond_5

    const/4 v2, 0x1

    if-eq v0, v2, :cond_4

    const/4 v2, 0x2

    if-eq v0, v2, :cond_3

    goto :goto_1

    .line 20
    :cond_3
    check-cast p0, Ljava/awt/image/ConvolveOp;

    .line 21
    invoke-virtual {p0}, Ljava/awt/image/ConvolveOp;->getKernel()Ljava/awt/image/Kernel;

    move-result-object v0

    .line 22
    invoke-virtual {p0}, Ljava/awt/image/ConvolveOp;->getEdgeCondition()I

    move-result p0

    .line 23
    invoke-static {p1, p2, v0, p0}, Lsun/awt/image/ImagingLib;->convolveBI(Ljava/awt/image/BufferedImage;Ljava/awt/image/BufferedImage;Ljava/awt/image/Kernel;I)I

    move-result p0

    if-lez p0, :cond_7

    goto :goto_0

    .line 24
    :cond_4
    check-cast p0, Ljava/awt/image/AffineTransformOp;

    .line 25
    invoke-virtual {p0}, Ljava/awt/image/AffineTransformOp;->getTransform()Ljava/awt/geom/AffineTransform;

    move-result-object p0

    .line 26
    invoke-static {p1, p2, p0}, Lsun/awt/image/ImagingLib;->transformBIForAndroid(Ljava/awt/image/BufferedImage;Ljava/awt/image/BufferedImage;Ljava/awt/geom/AffineTransform;)I

    move-result p0

    if-lez p0, :cond_7

    :goto_0
    move-object v1, p2

    goto :goto_1

    .line 27
    :cond_5
    check-cast p0, Ljava/awt/image/LookupOp;

    invoke-virtual {p0}, Ljava/awt/image/LookupOp;->getTable()Ljava/awt/image/LookupTable;

    move-result-object p0

    .line 28
    invoke-virtual {p0}, Ljava/awt/image/LookupTable;->getOffset()I

    move-result v0

    if-eqz v0, :cond_6

    return-object v1

    .line 29
    :cond_6
    instance-of v0, p0, Ljava/awt/image/ByteLookupTable;

    if-eqz v0, :cond_7

    .line 30
    check-cast p0, Ljava/awt/image/ByteLookupTable;

    .line 31
    invoke-virtual {p0}, Ljava/awt/image/ByteLookupTable;->getTable()[[B

    move-result-object p0

    invoke-static {p1, p2, p0}, Lsun/awt/image/ImagingLib;->lookupByteBI(Ljava/awt/image/BufferedImage;Ljava/awt/image/BufferedImage;[[B)I

    move-result p0

    if-lez p0, :cond_7

    goto :goto_0

    :cond_7
    :goto_1
    if-eqz v1, :cond_8

    .line 32
    invoke-static {v1}, Lsun/awt/image/SunWritableRaster;->markDirty(Ljava/awt/Image;)V

    :cond_8
    return-object v1
.end method

.method public static filter(Ljava/awt/image/RasterOp;Ljava/awt/image/Raster;Ljava/awt/image/WritableRaster;)Ljava/awt/image/WritableRaster;
    .locals 3

    .line 1
    sget-boolean v0, Lsun/awt/image/ImagingLib;->useLib:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    if-nez p2, :cond_1

    .line 2
    invoke-interface {p0, p1}, Ljava/awt/image/RasterOp;->createCompatibleDestRaster(Ljava/awt/image/Raster;)Ljava/awt/image/WritableRaster;

    move-result-object p2

    .line 3
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lsun/awt/image/ImagingLib;->getNativeOpIndex(Ljava/lang/Class;)I

    move-result v0

    if-eqz v0, :cond_4

    const/4 v2, 0x1

    if-eq v0, v2, :cond_3

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    goto :goto_1

    .line 4
    :cond_2
    check-cast p0, Ljava/awt/image/ConvolveOp;

    .line 5
    invoke-virtual {p0}, Ljava/awt/image/ConvolveOp;->getKernel()Ljava/awt/image/Kernel;

    move-result-object v0

    invoke-virtual {p0}, Ljava/awt/image/ConvolveOp;->getEdgeCondition()I

    move-result p0

    .line 6
    invoke-static {p1, p2, v0, p0}, Lsun/awt/image/ImagingLib;->convolveRaster(Ljava/awt/image/Raster;Ljava/awt/image/Raster;Ljava/awt/image/Kernel;I)I

    move-result p0

    if-lez p0, :cond_6

    goto :goto_0

    .line 7
    :cond_3
    check-cast p0, Ljava/awt/image/AffineTransformOp;

    .line 8
    invoke-virtual {p0}, Ljava/awt/image/AffineTransformOp;->getTransform()Ljava/awt/geom/AffineTransform;

    move-result-object p0

    invoke-static {p1, p2, p0}, Lsun/awt/image/ImagingLib;->transformRasterForAndroid(Ljava/awt/image/Raster;Ljava/awt/image/WritableRaster;Ljava/awt/geom/AffineTransform;)I

    move-result p0

    if-lez p0, :cond_6

    :goto_0
    move-object v1, p2

    goto :goto_1

    .line 9
    :cond_4
    check-cast p0, Ljava/awt/image/LookupOp;

    invoke-virtual {p0}, Ljava/awt/image/LookupOp;->getTable()Ljava/awt/image/LookupTable;

    move-result-object p0

    .line 10
    invoke-virtual {p0}, Ljava/awt/image/LookupTable;->getOffset()I

    move-result v0

    if-eqz v0, :cond_5

    return-object v1

    .line 11
    :cond_5
    instance-of v0, p0, Ljava/awt/image/ByteLookupTable;

    if-eqz v0, :cond_6

    .line 12
    check-cast p0, Ljava/awt/image/ByteLookupTable;

    .line 13
    invoke-virtual {p0}, Ljava/awt/image/ByteLookupTable;->getTable()[[B

    move-result-object p0

    invoke-static {p1, p2, p0}, Lsun/awt/image/ImagingLib;->lookupByteRaster(Ljava/awt/image/Raster;Ljava/awt/image/Raster;[[B)I

    move-result p0

    if-lez p0, :cond_6

    goto :goto_0

    :cond_6
    :goto_1
    if-eqz v1, :cond_7

    .line 14
    invoke-static {v1}, Lsun/awt/image/SunWritableRaster;->markDirty(Ljava/awt/image/WritableRaster;)V

    :cond_7
    return-object v1
.end method

.method private static getNativeOpIndex(Ljava/lang/Class;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)I"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_1

    sget-object v1, Lsun/awt/image/ImagingLib;->nativeOpClass:[Ljava/lang/Class;

    aget-object v1, v1, v0

    if-ne p0, v1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    :goto_1
    return v0
.end method

.method private static init()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static lookupByteBI(Ljava/awt/image/BufferedImage;Ljava/awt/image/BufferedImage;[[B)I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public static lookupByteRaster(Ljava/awt/image/Raster;Ljava/awt/image/Raster;[[B)I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public static transformBI(Ljava/awt/image/BufferedImage;Ljava/awt/image/BufferedImage;[DI)I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public static transformBIForAndroid(Ljava/awt/image/BufferedImage;Ljava/awt/image/BufferedImage;Ljava/awt/geom/AffineTransform;)I
    .locals 1

    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->createGraphics()Ljava/awt/Graphics2D;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/awt/Graphics2D;->setTransform(Ljava/awt/geom/AffineTransform;)V

    const/4 p2, 0x0

    const/4 v0, 0x0

    invoke-virtual {p1, p0, p2, p2, v0}, Ljava/awt/Graphics2D;->drawImage(Ljava/awt/Image;IILjava/awt/image/ImageObserver;)Z

    invoke-virtual {p1}, Ljava/awt/Graphics2D;->dispose()V

    const/4 p0, 0x1

    return p0
.end method

.method public static transformRaster(Ljava/awt/image/Raster;Ljava/awt/image/Raster;[DI)I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public static transformRasterForAndroid(Ljava/awt/image/Raster;Ljava/awt/image/WritableRaster;Ljava/awt/geom/AffineTransform;)I
    .locals 4

    new-instance v0, Lcom/trans/android/AndroidImage;

    invoke-virtual {p0}, Ljava/awt/image/Raster;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Ljava/awt/image/Raster;->getHeight()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/trans/android/AndroidImage;-><init>(II)V

    new-instance v1, Lcom/trans/android/AndroidImage;

    invoke-virtual {p1}, Ljava/awt/image/Raster;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Ljava/awt/image/Raster;->getHeight()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/trans/android/AndroidImage;-><init>(II)V

    invoke-virtual {v0, p0}, Lcom/trans/android/AndroidImage;->setData(Ljava/awt/image/Raster;)V

    invoke-virtual {v1}, Lcom/trans/android/AndroidImage;->createGraphics()Lcom/trans/android/AndroidGraphics2D;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/awt/Graphics2D;->setTransform(Ljava/awt/geom/AffineTransform;)V

    const/4 p2, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, p2, p2, v2}, Ljava/awt/Graphics2D;->drawImage(Ljava/awt/Image;IILjava/awt/image/ImageObserver;)Z

    invoke-virtual {v1}, Lcom/trans/android/AndroidImage;->getAndroidBitmap()Landroid/graphics/Bitmap;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/trans/android/util/BridgeUtils;->copyData(Landroid/graphics/Bitmap;Ljava/awt/image/WritableRaster;)V

    invoke-virtual {p0}, Ljava/awt/Graphics2D;->dispose()V

    invoke-static {v0}, Lcom/onyx/common/util/CloseUtils;->close(Ljava/io/Closeable;)V

    invoke-static {v1}, Lcom/onyx/common/util/CloseUtils;->close(Ljava/io/Closeable;)V

    const/4 p0, 0x1

    return p0
.end method
