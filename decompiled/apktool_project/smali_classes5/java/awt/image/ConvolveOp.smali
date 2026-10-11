.class public Ljava/awt/image/ConvolveOp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/awt/image/BufferedImageOp;
.implements Ljava/awt/image/RasterOp;


# static fields
.field public static final EDGE_NO_OP:I = 0x1

.field public static final EDGE_ZERO_FILL:I


# instance fields
.field edgeHint:I

.field hints:Ljava/awt/RenderingHints;

.field kernel:Ljava/awt/image/Kernel;


# direct methods
.method public constructor <init>(Ljava/awt/image/Kernel;)V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Ljava/awt/image/ConvolveOp;->kernel:Ljava/awt/image/Kernel;

    const/4 p1, 0x0

    .line 7
    iput p1, p0, Ljava/awt/image/ConvolveOp;->edgeHint:I

    return-void
.end method

.method public constructor <init>(Ljava/awt/image/Kernel;ILjava/awt/RenderingHints;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ljava/awt/image/ConvolveOp;->kernel:Ljava/awt/image/Kernel;

    .line 3
    iput p2, p0, Ljava/awt/image/ConvolveOp;->edgeHint:I

    .line 4
    iput-object p3, p0, Ljava/awt/image/ConvolveOp;->hints:Ljava/awt/RenderingHints;

    return-void
.end method


# virtual methods
.method public createCompatibleDestImage(Ljava/awt/image/BufferedImage;Ljava/awt/image/ColorModel;)Ljava/awt/image/BufferedImage;
    .locals 3

    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result p0

    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v0

    const/4 v1, 0x0

    if-nez p2, :cond_1

    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getColorModel()Ljava/awt/image/ColorModel;

    move-result-object p2

    instance-of v2, p2, Ljava/awt/image/IndexColorModel;

    if-eqz v2, :cond_0

    invoke-static {}, Ljava/awt/image/ColorModel;->getRGBdefault()Ljava/awt/image/ColorModel;

    move-result-object p2

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getData()Ljava/awt/image/Raster;

    move-result-object p1

    invoke-virtual {p1, p0, v0}, Ljava/awt/image/Raster;->createCompatibleWritableRaster(II)Ljava/awt/image/WritableRaster;

    move-result-object p1

    goto :goto_1

    :cond_1
    :goto_0
    move-object p1, v1

    :goto_1
    if-nez p1, :cond_2

    invoke-virtual {p2, p0, v0}, Ljava/awt/image/ColorModel;->createCompatibleWritableRaster(II)Ljava/awt/image/WritableRaster;

    move-result-object p1

    :cond_2
    new-instance p0, Ljava/awt/image/BufferedImage;

    invoke-virtual {p2}, Ljava/awt/image/ColorModel;->isAlphaPremultiplied()Z

    move-result v0

    invoke-direct {p0, p2, p1, v0, v1}, Ljava/awt/image/BufferedImage;-><init>(Ljava/awt/image/ColorModel;Ljava/awt/image/WritableRaster;ZLjava/util/Hashtable;)V

    return-object p0
.end method

.method public createCompatibleDestRaster(Ljava/awt/image/Raster;)Ljava/awt/image/WritableRaster;
    .locals 0

    invoke-virtual {p1}, Ljava/awt/image/Raster;->createCompatibleWritableRaster()Ljava/awt/image/WritableRaster;

    move-result-object p0

    return-object p0
.end method

.method public final filter(Ljava/awt/image/BufferedImage;Ljava/awt/image/BufferedImage;)Ljava/awt/image/BufferedImage;
    .locals 6

    if-eqz p1, :cond_8

    if-eq p1, p2, :cond_7

    .line 1
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getColorModel()Ljava/awt/image/ColorModel;

    move-result-object v0

    .line 2
    instance-of v1, v0, Ljava/awt/image/IndexColorModel;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Ljava/awt/image/IndexColorModel;

    .line 4
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getRaster()Ljava/awt/image/WritableRaster;

    move-result-object p1

    invoke-virtual {v0, p1, v2}, Ljava/awt/image/IndexColorModel;->convertToIntDiscrete(Ljava/awt/image/Raster;Z)Ljava/awt/image/BufferedImage;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getColorModel()Ljava/awt/image/ColorModel;

    move-result-object v0

    :cond_0
    const/4 v1, 0x0

    if-nez p2, :cond_2

    .line 6
    invoke-virtual {p0, p1, v1}, Ljava/awt/image/ConvolveOp;->createCompatibleDestImage(Ljava/awt/image/BufferedImage;Ljava/awt/image/ColorModel;)Ljava/awt/image/BufferedImage;

    move-result-object p2

    :cond_1
    move-object v0, p2

    move v3, v2

    goto :goto_1

    .line 7
    :cond_2
    invoke-virtual {p2}, Ljava/awt/image/BufferedImage;->getColorModel()Ljava/awt/image/ColorModel;

    move-result-object v3

    .line 8
    invoke-virtual {v0}, Ljava/awt/image/ColorModel;->getColorSpace()Ljava/awt/color/ColorSpace;

    move-result-object v0

    invoke-virtual {v0}, Ljava/awt/color/ColorSpace;->getType()I

    move-result v0

    .line 9
    invoke-virtual {v3}, Ljava/awt/image/ColorModel;->getColorSpace()Ljava/awt/color/ColorSpace;

    move-result-object v4

    invoke-virtual {v4}, Ljava/awt/color/ColorSpace;->getType()I

    move-result v4

    if-eq v0, v4, :cond_3

    .line 10
    invoke-virtual {p0, p1, v1}, Ljava/awt/image/ConvolveOp;->createCompatibleDestImage(Ljava/awt/image/BufferedImage;Ljava/awt/image/ColorModel;)Ljava/awt/image/BufferedImage;

    move-result-object v0

    .line 11
    invoke-virtual {v0}, Ljava/awt/image/BufferedImage;->getColorModel()Ljava/awt/image/ColorModel;

    const/4 v3, 0x1

    :goto_0
    move-object v5, v0

    move-object v0, p2

    move-object p2, v5

    goto :goto_1

    .line 12
    :cond_3
    instance-of v0, v3, Ljava/awt/image/IndexColorModel;

    if-eqz v0, :cond_1

    .line 13
    invoke-virtual {p0, p1, v1}, Ljava/awt/image/ConvolveOp;->createCompatibleDestImage(Ljava/awt/image/BufferedImage;Ljava/awt/image/ColorModel;)Ljava/awt/image/BufferedImage;

    move-result-object v0

    .line 14
    invoke-virtual {v0}, Ljava/awt/image/BufferedImage;->getColorModel()Ljava/awt/image/ColorModel;

    move v3, v2

    goto :goto_0

    .line 15
    :goto_1
    invoke-static {p0, p1, p2}, Lsun/awt/image/ImagingLib;->filter(Ljava/awt/image/BufferedImageOp;Ljava/awt/image/BufferedImage;Ljava/awt/image/BufferedImage;)Ljava/awt/image/BufferedImage;

    move-result-object p1

    if-eqz p1, :cond_6

    if-eqz v3, :cond_4

    .line 16
    new-instance p1, Ljava/awt/image/ColorConvertOp;

    iget-object p0, p0, Ljava/awt/image/ConvolveOp;->hints:Ljava/awt/RenderingHints;

    invoke-direct {p1, p0}, Ljava/awt/image/ColorConvertOp;-><init>(Ljava/awt/RenderingHints;)V

    .line 17
    invoke-virtual {p1, p2, v0}, Ljava/awt/image/ColorConvertOp;->filter(Ljava/awt/image/BufferedImage;Ljava/awt/image/BufferedImage;)Ljava/awt/image/BufferedImage;

    goto :goto_2

    :cond_4
    if-eq v0, p2, :cond_5

    .line 18
    invoke-virtual {v0}, Ljava/awt/image/BufferedImage;->createGraphics()Ljava/awt/Graphics2D;

    move-result-object p0

    .line 19
    :try_start_0
    invoke-virtual {p0, p2, v2, v2, v1}, Ljava/awt/Graphics2D;->drawImage(Ljava/awt/Image;IILjava/awt/image/ImageObserver;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    invoke-virtual {p0}, Ljava/awt/Graphics2D;->dispose()V

    goto :goto_2

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Ljava/awt/Graphics2D;->dispose()V

    .line 21
    throw p1

    :cond_5
    :goto_2
    return-object v0

    .line 22
    :cond_6
    new-instance p0, Ljava/awt/image/ImagingOpException;

    const-string p1, "Unable to convolve src image"

    invoke-direct {p0, p1}, Ljava/awt/image/ImagingOpException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 23
    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "src image cannot be the same as the dst image"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 24
    :cond_8
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "src image is null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final filter(Ljava/awt/image/Raster;Ljava/awt/image/WritableRaster;)Ljava/awt/image/WritableRaster;
    .locals 2

    if-nez p2, :cond_0

    .line 25
    invoke-virtual {p0, p1}, Ljava/awt/image/ConvolveOp;->createCompatibleDestRaster(Ljava/awt/image/Raster;)Ljava/awt/image/WritableRaster;

    move-result-object p2

    goto :goto_0

    :cond_0
    if-eq p1, p2, :cond_3

    .line 26
    invoke-virtual {p1}, Ljava/awt/image/Raster;->getNumBands()I

    move-result v0

    invoke-virtual {p2}, Ljava/awt/image/Raster;->getNumBands()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 27
    :goto_0
    invoke-static {p0, p1, p2}, Lsun/awt/image/ImagingLib;->filter(Ljava/awt/image/RasterOp;Ljava/awt/image/Raster;Ljava/awt/image/WritableRaster;)Ljava/awt/image/WritableRaster;

    move-result-object p0

    if-eqz p0, :cond_1

    return-object p2

    .line 28
    :cond_1
    new-instance p0, Ljava/awt/image/ImagingOpException;

    const-string p1, "Unable to convolve src image"

    invoke-direct {p0, p1}, Ljava/awt/image/ImagingOpException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 29
    :cond_2
    new-instance p0, Ljava/awt/image/ImagingOpException;

    const-string p1, "Different number of bands in src  and dst Rasters"

    invoke-direct {p0, p1}, Ljava/awt/image/ImagingOpException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 30
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "src image cannot be the same as the dst image"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getBounds2D(Ljava/awt/image/BufferedImage;)Ljava/awt/geom/Rectangle2D;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getRaster()Ljava/awt/image/WritableRaster;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/awt/image/ConvolveOp;->getBounds2D(Ljava/awt/image/Raster;)Ljava/awt/geom/Rectangle2D;

    move-result-object p0

    return-object p0
.end method

.method public final getBounds2D(Ljava/awt/image/Raster;)Ljava/awt/geom/Rectangle2D;
    .locals 0

    .line 2
    invoke-virtual {p1}, Ljava/awt/image/Raster;->getBounds()Ljava/awt/Rectangle;

    move-result-object p0

    return-object p0
.end method

.method public getEdgeCondition()I
    .locals 0

    iget p0, p0, Ljava/awt/image/ConvolveOp;->edgeHint:I

    return p0
.end method

.method public final getKernel()Ljava/awt/image/Kernel;
    .locals 0

    iget-object p0, p0, Ljava/awt/image/ConvolveOp;->kernel:Ljava/awt/image/Kernel;

    invoke-virtual {p0}, Ljava/awt/image/Kernel;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/awt/image/Kernel;

    return-object p0
.end method

.method public final getPoint2D(Ljava/awt/geom/Point2D;Ljava/awt/geom/Point2D;)Ljava/awt/geom/Point2D;
    .locals 2

    if-nez p2, :cond_0

    new-instance p2, Ljava/awt/geom/Point2D$Float;

    invoke-direct {p2}, Ljava/awt/geom/Point2D$Float;-><init>()V

    :cond_0
    invoke-virtual {p1}, Ljava/awt/geom/Point2D;->getX()D

    move-result-wide v0

    invoke-virtual {p1}, Ljava/awt/geom/Point2D;->getY()D

    move-result-wide p0

    invoke-virtual {p2, v0, v1, p0, p1}, Ljava/awt/geom/Point2D;->setLocation(DD)V

    return-object p2
.end method

.method public final getRenderingHints()Ljava/awt/RenderingHints;
    .locals 0

    iget-object p0, p0, Ljava/awt/image/ConvolveOp;->hints:Ljava/awt/RenderingHints;

    return-object p0
.end method
