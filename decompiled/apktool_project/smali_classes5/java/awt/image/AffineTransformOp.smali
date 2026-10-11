.class public Ljava/awt/image/AffineTransformOp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/awt/image/BufferedImageOp;
.implements Ljava/awt/image/RasterOp;


# static fields
.field public static final TYPE_BICUBIC:I = 0x3

.field public static final TYPE_BILINEAR:I = 0x2

.field public static final TYPE_NEAREST_NEIGHBOR:I = 0x1


# instance fields
.field hints:Ljava/awt/RenderingHints;

.field interpolationType:I

.field private xform:Ljava/awt/geom/AffineTransform;


# direct methods
.method public constructor <init>(Ljava/awt/geom/AffineTransform;I)V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 20
    iput v0, p0, Ljava/awt/image/AffineTransformOp;->interpolationType:I

    .line 21
    invoke-virtual {p0, p1}, Ljava/awt/image/AffineTransformOp;->validateTransform(Ljava/awt/geom/AffineTransform;)V

    .line 22
    invoke-virtual {p1}, Ljava/awt/geom/AffineTransform;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/awt/geom/AffineTransform;

    iput-object p1, p0, Ljava/awt/image/AffineTransformOp;->xform:Ljava/awt/geom/AffineTransform;

    if-eq p2, v0, :cond_1

    const/4 p1, 0x2

    if-eq p2, p1, :cond_1

    const/4 p1, 0x3

    if-ne p2, p1, :cond_0

    goto :goto_0

    .line 23
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown interpolation type: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 24
    :cond_1
    :goto_0
    iput p2, p0, Ljava/awt/image/AffineTransformOp;->interpolationType:I

    return-void
.end method

.method public constructor <init>(Ljava/awt/geom/AffineTransform;Ljava/awt/RenderingHints;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Ljava/awt/image/AffineTransformOp;->interpolationType:I

    .line 3
    invoke-virtual {p0, p1}, Ljava/awt/image/AffineTransformOp;->validateTransform(Ljava/awt/geom/AffineTransform;)V

    .line 4
    invoke-virtual {p1}, Ljava/awt/geom/AffineTransform;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/awt/geom/AffineTransform;

    iput-object p1, p0, Ljava/awt/image/AffineTransformOp;->xform:Ljava/awt/geom/AffineTransform;

    .line 5
    iput-object p2, p0, Ljava/awt/image/AffineTransformOp;->hints:Ljava/awt/RenderingHints;

    if-eqz p2, :cond_4

    .line 6
    sget-object p1, Ljava/awt/RenderingHints;->KEY_INTERPOLATION:Ljava/awt/RenderingHints$Key;

    invoke-virtual {p2, p1}, Ljava/awt/RenderingHints;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const/4 v1, 0x2

    if-nez p1, :cond_1

    .line 7
    sget-object p1, Ljava/awt/RenderingHints;->KEY_RENDERING:Ljava/awt/RenderingHints$Key;

    invoke-virtual {p2, p1}, Ljava/awt/RenderingHints;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 8
    sget-object p2, Ljava/awt/RenderingHints;->VALUE_RENDER_SPEED:Ljava/lang/Object;

    if-ne p1, p2, :cond_0

    .line 9
    iput v0, p0, Ljava/awt/image/AffineTransformOp;->interpolationType:I

    goto :goto_0

    .line 10
    :cond_0
    sget-object p2, Ljava/awt/RenderingHints;->VALUE_RENDER_QUALITY:Ljava/lang/Object;

    if-ne p1, p2, :cond_5

    .line 11
    iput v1, p0, Ljava/awt/image/AffineTransformOp;->interpolationType:I

    goto :goto_0

    .line 12
    :cond_1
    sget-object p2, Ljava/awt/RenderingHints;->VALUE_INTERPOLATION_NEAREST_NEIGHBOR:Ljava/lang/Object;

    if-ne p1, p2, :cond_2

    .line 13
    iput v0, p0, Ljava/awt/image/AffineTransformOp;->interpolationType:I

    goto :goto_0

    .line 14
    :cond_2
    sget-object p2, Ljava/awt/RenderingHints;->VALUE_INTERPOLATION_BILINEAR:Ljava/lang/Object;

    if-ne p1, p2, :cond_3

    .line 15
    iput v1, p0, Ljava/awt/image/AffineTransformOp;->interpolationType:I

    goto :goto_0

    .line 16
    :cond_3
    sget-object p2, Ljava/awt/RenderingHints;->VALUE_INTERPOLATION_BICUBIC:Ljava/lang/Object;

    if-ne p1, p2, :cond_5

    const/4 p1, 0x3

    .line 17
    iput p1, p0, Ljava/awt/image/AffineTransformOp;->interpolationType:I

    goto :goto_0

    .line 18
    :cond_4
    iput v0, p0, Ljava/awt/image/AffineTransformOp;->interpolationType:I

    :cond_5
    :goto_0
    return-void
.end method


# virtual methods
.method public createCompatibleDestImage(Ljava/awt/image/BufferedImage;Ljava/awt/image/ColorModel;)Ljava/awt/image/BufferedImage;
    .locals 4

    invoke-virtual {p0, p1}, Ljava/awt/image/AffineTransformOp;->getBounds2D(Ljava/awt/image/BufferedImage;)Ljava/awt/geom/Rectangle2D;

    move-result-object v0

    invoke-virtual {v0}, Ljava/awt/geom/RectangularShape;->getBounds()Ljava/awt/Rectangle;

    move-result-object v0

    iget v1, v0, Ljava/awt/Rectangle;->x:I

    iget v2, v0, Ljava/awt/Rectangle;->width:I

    add-int/2addr v1, v2

    iget v2, v0, Ljava/awt/Rectangle;->y:I

    iget v0, v0, Ljava/awt/Rectangle;->height:I

    add-int/2addr v2, v0

    const-string v0, ") is less than or equal to 0."

    if-lez v1, :cond_4

    if-lez v2, :cond_3

    const/4 v0, 0x0

    if-nez p2, :cond_2

    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getColorModel()Ljava/awt/image/ColorModel;

    move-result-object p2

    iget p0, p0, Ljava/awt/image/AffineTransformOp;->interpolationType:I

    const/4 v3, 0x1

    if-eq p0, v3, :cond_1

    instance-of p0, p2, Ljava/awt/image/IndexColorModel;

    if-nez p0, :cond_0

    invoke-virtual {p2}, Ljava/awt/image/ColorModel;->getTransparency()I

    move-result p0

    if-ne p0, v3, :cond_1

    :cond_0
    new-instance p0, Ljava/awt/image/BufferedImage;

    const/4 p1, 0x2

    invoke-direct {p0, v1, v2, p1}, Ljava/awt/image/BufferedImage;-><init>(III)V

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/awt/image/BufferedImage;

    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getRaster()Ljava/awt/image/WritableRaster;

    move-result-object p1

    invoke-virtual {p1, v1, v2}, Ljava/awt/image/Raster;->createCompatibleWritableRaster(II)Ljava/awt/image/WritableRaster;

    move-result-object p1

    invoke-virtual {p2}, Ljava/awt/image/ColorModel;->isAlphaPremultiplied()Z

    move-result v1

    invoke-direct {p0, p2, p1, v1, v0}, Ljava/awt/image/BufferedImage;-><init>(Ljava/awt/image/ColorModel;Ljava/awt/image/WritableRaster;ZLjava/util/Hashtable;)V

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/awt/image/BufferedImage;

    invoke-virtual {p2, v1, v2}, Ljava/awt/image/ColorModel;->createCompatibleWritableRaster(II)Ljava/awt/image/WritableRaster;

    move-result-object p1

    invoke-virtual {p2}, Ljava/awt/image/ColorModel;->isAlphaPremultiplied()Z

    move-result v1

    invoke-direct {p0, p2, p1, v1, v0}, Ljava/awt/image/BufferedImage;-><init>(Ljava/awt/image/ColorModel;Ljava/awt/image/WritableRaster;ZLjava/util/Hashtable;)V

    :goto_0
    return-object p0

    :cond_3
    new-instance p0, Ljava/awt/image/RasterFormatException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Transformed height ("

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/awt/image/RasterFormatException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    new-instance p0, Ljava/awt/image/RasterFormatException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Transformed width ("

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/awt/image/RasterFormatException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public createCompatibleDestRaster(Ljava/awt/image/Raster;)Ljava/awt/image/WritableRaster;
    .locals 5

    invoke-virtual {p0, p1}, Ljava/awt/image/AffineTransformOp;->getBounds2D(Ljava/awt/image/Raster;)Ljava/awt/geom/Rectangle2D;

    move-result-object p0

    invoke-virtual {p0}, Ljava/awt/geom/RectangularShape;->getX()D

    move-result-wide v0

    double-to-int v0, v0

    invoke-virtual {p0}, Ljava/awt/geom/RectangularShape;->getY()D

    move-result-wide v1

    double-to-int v1, v1

    invoke-virtual {p0}, Ljava/awt/geom/RectangularShape;->getWidth()D

    move-result-wide v2

    double-to-int v2, v2

    invoke-virtual {p0}, Ljava/awt/geom/RectangularShape;->getHeight()D

    move-result-wide v3

    double-to-int p0, v3

    invoke-virtual {p1, v0, v1, v2, p0}, Ljava/awt/image/Raster;->createCompatibleWritableRaster(IIII)Ljava/awt/image/WritableRaster;

    move-result-object p0

    return-object p0
.end method

.method public final filter(Ljava/awt/image/BufferedImage;Ljava/awt/image/BufferedImage;)Ljava/awt/image/BufferedImage;
    .locals 12

    if-eqz p1, :cond_d

    if-eq p1, p2, :cond_c

    .line 1
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getColorModel()Ljava/awt/image/ColorModel;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez p2, :cond_0

    .line 2
    invoke-virtual {p0, p1, v2}, Ljava/awt/image/AffineTransformOp;->createCompatibleDestImage(Ljava/awt/image/BufferedImage;Ljava/awt/image/ColorModel;)Ljava/awt/image/BufferedImage;

    move-result-object p2

    goto/16 :goto_4

    .line 3
    :cond_0
    invoke-virtual {p2}, Ljava/awt/image/BufferedImage;->getColorModel()Ljava/awt/image/ColorModel;

    move-result-object v5

    .line 4
    invoke-virtual {v0}, Ljava/awt/image/ColorModel;->getColorSpace()Ljava/awt/color/ColorSpace;

    move-result-object v6

    invoke-virtual {v6}, Ljava/awt/color/ColorSpace;->getType()I

    move-result v6

    .line 5
    invoke-virtual {v5}, Ljava/awt/image/ColorModel;->getColorSpace()Ljava/awt/color/ColorSpace;

    move-result-object v7

    invoke-virtual {v7}, Ljava/awt/color/ColorSpace;->getType()I

    move-result v7

    if-eq v6, v7, :cond_7

    .line 6
    iget-object v6, p0, Ljava/awt/image/AffineTransformOp;->xform:Ljava/awt/geom/AffineTransform;

    invoke-virtual {v6}, Ljava/awt/geom/AffineTransform;->getType()I

    move-result v6

    .line 7
    iget-object v7, p0, Ljava/awt/image/AffineTransformOp;->xform:Ljava/awt/geom/AffineTransform;

    and-int/lit8 v8, v6, 0x38

    if-eqz v8, :cond_1

    move v8, v4

    goto :goto_0

    :cond_1
    move v8, v3

    :goto_0
    if-nez v8, :cond_4

    if-eq v6, v4, :cond_4

    if-eqz v6, :cond_4

    const/4 v6, 0x4

    new-array v6, v6, [D

    .line 8
    invoke-virtual {v7, v6}, Ljava/awt/geom/AffineTransform;->getMatrix([D)V

    aget-wide v7, v6, v3

    double-to-int v9, v7

    int-to-double v9, v9

    cmpl-double v7, v7, v9

    if-nez v7, :cond_3

    const/4 v7, 0x3

    aget-wide v6, v6, v7

    double-to-int v8, v6

    int-to-double v8, v8

    cmpl-double v6, v6, v8

    if-eqz v6, :cond_2

    goto :goto_1

    :cond_2
    move v8, v3

    goto :goto_2

    :cond_3
    :goto_1
    move v8, v4

    :cond_4
    :goto_2
    if-eqz v8, :cond_6

    .line 9
    invoke-virtual {v0}, Ljava/awt/image/ColorModel;->getTransparency()I

    move-result v0

    if-ne v0, v4, :cond_6

    .line 10
    new-instance v0, Ljava/awt/image/ColorConvertOp;

    iget-object v6, p0, Ljava/awt/image/AffineTransformOp;->hints:Ljava/awt/RenderingHints;

    invoke-direct {v0, v6}, Ljava/awt/image/ColorConvertOp;-><init>(Ljava/awt/RenderingHints;)V

    .line 11
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v6

    .line 12
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v7

    .line 13
    invoke-virtual {v5}, Ljava/awt/image/ColorModel;->getTransparency()I

    move-result v8

    if-ne v8, v4, :cond_5

    .line 14
    new-instance v5, Ljava/awt/image/BufferedImage;

    invoke-direct {v5, v6, v7, v1}, Ljava/awt/image/BufferedImage;-><init>(III)V

    goto :goto_3

    .line 15
    :cond_5
    invoke-virtual {v5, v6, v7}, Ljava/awt/image/ColorModel;->createCompatibleWritableRaster(II)Ljava/awt/image/WritableRaster;

    move-result-object v6

    .line 16
    new-instance v7, Ljava/awt/image/BufferedImage;

    .line 17
    invoke-virtual {v5}, Ljava/awt/image/ColorModel;->isAlphaPremultiplied()Z

    move-result v8

    invoke-direct {v7, v5, v6, v8, v2}, Ljava/awt/image/BufferedImage;-><init>(Ljava/awt/image/ColorModel;Ljava/awt/image/WritableRaster;ZLjava/util/Hashtable;)V

    move-object v5, v7

    .line 18
    :goto_3
    invoke-virtual {v0, p1, v5}, Ljava/awt/image/ColorConvertOp;->filter(Ljava/awt/image/BufferedImage;Ljava/awt/image/BufferedImage;)Ljava/awt/image/BufferedImage;

    move-result-object p1

    goto :goto_4

    .line 19
    :cond_6
    invoke-virtual {p0, p1, v2}, Ljava/awt/image/AffineTransformOp;->createCompatibleDestImage(Ljava/awt/image/BufferedImage;Ljava/awt/image/ColorModel;)Ljava/awt/image/BufferedImage;

    move-result-object v0

    move v5, v4

    move-object v11, v0

    move-object v0, p2

    move-object p2, v11

    goto :goto_5

    :cond_7
    :goto_4
    move-object v0, p2

    move v5, v3

    .line 20
    :goto_5
    iget v6, p0, Ljava/awt/image/AffineTransformOp;->interpolationType:I

    if-eq v6, v4, :cond_8

    .line 21
    invoke-virtual {p2}, Ljava/awt/image/BufferedImage;->getColorModel()Ljava/awt/image/ColorModel;

    move-result-object v4

    instance-of v4, v4, Ljava/awt/image/IndexColorModel;

    if-eqz v4, :cond_8

    .line 22
    new-instance v4, Ljava/awt/image/BufferedImage;

    invoke-virtual {p2}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v6

    invoke-virtual {p2}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result p2

    invoke-direct {v4, v6, p2, v1}, Ljava/awt/image/BufferedImage;-><init>(III)V

    move-object p2, v4

    .line 23
    :cond_8
    invoke-static {p0, p1, p2}, Lsun/awt/image/ImagingLib;->filter(Ljava/awt/image/BufferedImageOp;Ljava/awt/image/BufferedImage;Ljava/awt/image/BufferedImage;)Ljava/awt/image/BufferedImage;

    move-result-object p1

    if-eqz p1, :cond_b

    if-eqz v5, :cond_9

    .line 24
    new-instance p1, Ljava/awt/image/ColorConvertOp;

    iget-object p0, p0, Ljava/awt/image/AffineTransformOp;->hints:Ljava/awt/RenderingHints;

    invoke-direct {p1, p0}, Ljava/awt/image/ColorConvertOp;-><init>(Ljava/awt/RenderingHints;)V

    .line 25
    invoke-virtual {p1, p2, v0}, Ljava/awt/image/ColorConvertOp;->filter(Ljava/awt/image/BufferedImage;Ljava/awt/image/BufferedImage;)Ljava/awt/image/BufferedImage;

    goto :goto_6

    :cond_9
    if-eq v0, p2, :cond_a

    .line 26
    invoke-virtual {v0}, Ljava/awt/image/BufferedImage;->createGraphics()Ljava/awt/Graphics2D;

    move-result-object p0

    .line 27
    :try_start_0
    sget-object p1, Ljava/awt/AlphaComposite;->Src:Ljava/awt/AlphaComposite;

    invoke-virtual {p0, p1}, Ljava/awt/Graphics2D;->setComposite(Ljava/awt/Composite;)V

    .line 28
    invoke-virtual {p0, p2, v3, v3, v2}, Ljava/awt/Graphics2D;->drawImage(Ljava/awt/Image;IILjava/awt/image/ImageObserver;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    invoke-virtual {p0}, Ljava/awt/Graphics2D;->dispose()V

    goto :goto_6

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Ljava/awt/Graphics2D;->dispose()V

    .line 30
    throw p1

    :cond_a
    :goto_6
    return-object v0

    .line 31
    :cond_b
    new-instance p0, Ljava/awt/image/ImagingOpException;

    const-string p1, "Unable to transform src image"

    invoke-direct {p0, p1}, Ljava/awt/image/ImagingOpException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 32
    :cond_c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "src image cannot be the same as the dst image"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 33
    :cond_d
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "src image is null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final filter(Ljava/awt/image/Raster;Ljava/awt/image/WritableRaster;)Ljava/awt/image/WritableRaster;
    .locals 2

    if-eqz p1, :cond_4

    if-nez p2, :cond_0

    .line 34
    invoke-virtual {p0, p1}, Ljava/awt/image/AffineTransformOp;->createCompatibleDestRaster(Ljava/awt/image/Raster;)Ljava/awt/image/WritableRaster;

    move-result-object p2

    :cond_0
    if-eq p1, p2, :cond_3

    .line 35
    invoke-virtual {p1}, Ljava/awt/image/Raster;->getNumBands()I

    move-result v0

    invoke-virtual {p2}, Ljava/awt/image/Raster;->getNumBands()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 36
    invoke-static {p0, p1, p2}, Lsun/awt/image/ImagingLib;->filter(Ljava/awt/image/RasterOp;Ljava/awt/image/Raster;Ljava/awt/image/WritableRaster;)Ljava/awt/image/WritableRaster;

    move-result-object p0

    if-eqz p0, :cond_1

    return-object p2

    .line 37
    :cond_1
    new-instance p0, Ljava/awt/image/ImagingOpException;

    const-string p1, "Unable to transform src image"

    invoke-direct {p0, p1}, Ljava/awt/image/ImagingOpException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 38
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Number of src bands ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    invoke-virtual {p1}, Ljava/awt/image/Raster;->getNumBands()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") does not match number of  dst bands ("

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    invoke-virtual {p2}, Ljava/awt/image/Raster;->getNumBands()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 41
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "src image cannot be the same as the dst image"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 42
    :cond_4
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "src image is null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getBounds2D(Ljava/awt/image/BufferedImage;)Ljava/awt/geom/Rectangle2D;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getRaster()Ljava/awt/image/WritableRaster;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/awt/image/AffineTransformOp;->getBounds2D(Ljava/awt/image/Raster;)Ljava/awt/geom/Rectangle2D;

    move-result-object p0

    return-object p0
.end method

.method public final getBounds2D(Ljava/awt/image/Raster;)Ljava/awt/geom/Rectangle2D;
    .locals 12

    .line 2
    invoke-virtual {p1}, Ljava/awt/image/Raster;->getWidth()I

    move-result v0

    .line 3
    invoke-virtual {p1}, Ljava/awt/image/Raster;->getHeight()I

    move-result p1

    const/16 v1, 0x8

    new-array v8, v1, [F

    const/4 v9, 0x0

    const/4 v2, 0x0

    aput v2, v8, v9

    const/4 v10, 0x1

    aput v2, v8, v10

    int-to-float v0, v0

    const/4 v11, 0x2

    aput v0, v8, v11

    const/4 v3, 0x3

    aput v2, v8, v3

    const/4 v3, 0x4

    aput v0, v8, v3

    int-to-float p1, p1

    const/4 v0, 0x5

    aput p1, v8, v0

    const/4 v0, 0x6

    aput v2, v8, v0

    const/4 v0, 0x7

    aput p1, v8, v0

    .line 4
    iget-object v2, p0, Ljava/awt/image/AffineTransformOp;->xform:Ljava/awt/geom/AffineTransform;

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x4

    move-object v3, v8

    move-object v5, v8

    invoke-virtual/range {v2 .. v7}, Ljava/awt/geom/AffineTransform;->transform([FI[FII)V

    aget p0, v8, v9

    aget p1, v8, v10

    move v0, p1

    move v2, v0

    move p1, p0

    :goto_0
    if-ge v11, v1, :cond_4

    .line 5
    aget v3, v8, v11

    cmpl-float v4, v3, p1

    if-lez v4, :cond_0

    move p1, v3

    goto :goto_1

    :cond_0
    cmpg-float v4, v3, p0

    if-gez v4, :cond_1

    move p0, v3

    :cond_1
    :goto_1
    add-int/lit8 v3, v11, 0x1

    .line 6
    aget v3, v8, v3

    cmpl-float v4, v3, v2

    if-lez v4, :cond_2

    move v2, v3

    goto :goto_2

    :cond_2
    cmpg-float v4, v3, v0

    if-gez v4, :cond_3

    move v0, v3

    :cond_3
    :goto_2
    add-int/lit8 v11, v11, 0x2

    goto :goto_0

    .line 7
    :cond_4
    new-instance v1, Ljava/awt/geom/Rectangle2D$Float;

    sub-float/2addr p1, p0

    sub-float/2addr v2, v0

    invoke-direct {v1, p0, v0, p1, v2}, Ljava/awt/geom/Rectangle2D$Float;-><init>(FFFF)V

    return-object v1
.end method

.method public final getInterpolationType()I
    .locals 0

    iget p0, p0, Ljava/awt/image/AffineTransformOp;->interpolationType:I

    return p0
.end method

.method public final getPoint2D(Ljava/awt/geom/Point2D;Ljava/awt/geom/Point2D;)Ljava/awt/geom/Point2D;
    .locals 0

    iget-object p0, p0, Ljava/awt/image/AffineTransformOp;->xform:Ljava/awt/geom/AffineTransform;

    invoke-virtual {p0, p1, p2}, Ljava/awt/geom/AffineTransform;->transform(Ljava/awt/geom/Point2D;Ljava/awt/geom/Point2D;)Ljava/awt/geom/Point2D;

    move-result-object p0

    return-object p0
.end method

.method public final getRenderingHints()Ljava/awt/RenderingHints;
    .locals 3

    iget-object v0, p0, Ljava/awt/image/AffineTransformOp;->hints:Ljava/awt/RenderingHints;

    if-nez v0, :cond_3

    iget v0, p0, Ljava/awt/image/AffineTransformOp;->interpolationType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    sget-object v0, Ljava/awt/RenderingHints;->VALUE_INTERPOLATION_BICUBIC:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/InternalError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown interpolation type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Ljava/awt/image/AffineTransformOp;->interpolationType:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    sget-object v0, Ljava/awt/RenderingHints;->VALUE_INTERPOLATION_BILINEAR:Ljava/lang/Object;

    goto :goto_0

    :cond_2
    sget-object v0, Ljava/awt/RenderingHints;->VALUE_INTERPOLATION_NEAREST_NEIGHBOR:Ljava/lang/Object;

    :goto_0
    new-instance v1, Ljava/awt/RenderingHints;

    sget-object v2, Ljava/awt/RenderingHints;->KEY_INTERPOLATION:Ljava/awt/RenderingHints$Key;

    invoke-direct {v1, v2, v0}, Ljava/awt/RenderingHints;-><init>(Ljava/awt/RenderingHints$Key;Ljava/lang/Object;)V

    iput-object v1, p0, Ljava/awt/image/AffineTransformOp;->hints:Ljava/awt/RenderingHints;

    :cond_3
    iget-object p0, p0, Ljava/awt/image/AffineTransformOp;->hints:Ljava/awt/RenderingHints;

    return-object p0
.end method

.method public final getTransform()Ljava/awt/geom/AffineTransform;
    .locals 0

    iget-object p0, p0, Ljava/awt/image/AffineTransformOp;->xform:Ljava/awt/geom/AffineTransform;

    invoke-virtual {p0}, Ljava/awt/geom/AffineTransform;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/awt/geom/AffineTransform;

    return-object p0
.end method

.method public validateTransform(Ljava/awt/geom/AffineTransform;)V
    .locals 4

    invoke-virtual {p1}, Ljava/awt/geom/AffineTransform;->getDeterminant()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide/16 v2, 0x1

    cmpg-double p0, v0, v2

    if-lez p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/awt/image/ImagingOpException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to invert transform "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/awt/image/ImagingOpException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
