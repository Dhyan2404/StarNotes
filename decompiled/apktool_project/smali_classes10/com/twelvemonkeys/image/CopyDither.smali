.class public Lcom/twelvemonkeys/image/CopyDither;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/awt/image/BufferedImageOp;
.implements Ljava/awt/image/RasterOp;


# instance fields
.field protected indexColorModel:Ljava/awt/image/IndexColorModel;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/twelvemonkeys/image/CopyDither;->indexColorModel:Ljava/awt/image/IndexColorModel;

    return-void
.end method

.method public constructor <init>(Ljava/awt/image/IndexColorModel;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/twelvemonkeys/image/CopyDither;->indexColorModel:Ljava/awt/image/IndexColorModel;

    return-void
.end method

.method public static d([I)I
    .locals 2

    const/4 v0, 0x0

    aget v0, p0, v0

    shl-int/lit8 v0, v0, 0x10

    const/high16 v1, -0x1000000

    or-int/2addr v0, v1

    const/4 v1, 0x1

    aget v1, p0, v1

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    const/4 v1, 0x2

    aget p0, p0, v1

    or-int/2addr p0, v0

    return p0
.end method


# virtual methods
.method public final a(Ljava/awt/image/Raster;)Ljava/awt/image/IndexColorModel;
    .locals 3

    new-instance p0, Ljava/awt/image/BufferedImage;

    invoke-virtual {p1}, Ljava/awt/image/Raster;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Ljava/awt/image/Raster;->getHeight()I

    move-result v1

    const/4 v2, 0x2

    invoke-direct {p0, v0, v1, v2}, Ljava/awt/image/BufferedImage;-><init>(III)V

    invoke-virtual {p0, p1}, Ljava/awt/image/BufferedImage;->setData(Ljava/awt/image/Raster;)V

    const/16 p1, 0x100

    const v0, 0x20200

    invoke-static {p0, p1, v0}, Lcom/sunia/HTREnginev2/qji;->d(Ljava/awt/Image;II)Ljava/awt/image/IndexColorModel;

    move-result-object p0

    return-object p0
.end method

.method public final b(Ljava/awt/image/BufferedImage;)Ljava/awt/image/IndexColorModel;
    .locals 1

    iget-object p0, p0, Lcom/twelvemonkeys/image/CopyDither;->indexColorModel:Ljava/awt/image/IndexColorModel;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/16 p0, 0x100

    const v0, 0x20200

    invoke-static {p1, p0, v0}, Lcom/sunia/HTREnginev2/qji;->d(Ljava/awt/Image;II)Ljava/awt/image/IndexColorModel;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public final c(Ljava/awt/image/Raster;)Ljava/awt/image/IndexColorModel;
    .locals 1

    iget-object v0, p0, Lcom/twelvemonkeys/image/CopyDither;->indexColorModel:Ljava/awt/image/IndexColorModel;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/twelvemonkeys/image/CopyDither;->a(Ljava/awt/image/Raster;)Ljava/awt/image/IndexColorModel;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public final createCompatibleDestImage(Ljava/awt/image/BufferedImage;Ljava/awt/image/ColorModel;)Ljava/awt/image/BufferedImage;
    .locals 2

    const/16 v0, 0xd

    if-nez p2, :cond_0

    new-instance p2, Ljava/awt/image/BufferedImage;

    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result p1

    iget-object p0, p0, Lcom/twelvemonkeys/image/CopyDither;->indexColorModel:Ljava/awt/image/IndexColorModel;

    invoke-direct {p2, v1, p1, v0, p0}, Ljava/awt/image/BufferedImage;-><init>(IIILjava/awt/image/IndexColorModel;)V

    return-object p2

    :cond_0
    instance-of p0, p2, Ljava/awt/image/IndexColorModel;

    if-eqz p0, :cond_1

    new-instance p0, Ljava/awt/image/BufferedImage;

    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result p1

    check-cast p2, Ljava/awt/image/IndexColorModel;

    invoke-direct {p0, v1, p1, v0, p2}, Ljava/awt/image/BufferedImage;-><init>(IIILjava/awt/image/IndexColorModel;)V

    return-object p0

    :cond_1
    new-instance p0, Lcom/twelvemonkeys/image/ImageFilterException;

    const-string p1, "Only IndexColorModel allowed."

    invoke-direct {p0, p1}, Lcom/twelvemonkeys/image/ImageFilterException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final createCompatibleDestRaster(Ljava/awt/image/Raster;)Ljava/awt/image/WritableRaster;
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/twelvemonkeys/image/CopyDither;->c(Ljava/awt/image/Raster;)Ljava/awt/image/IndexColorModel;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/twelvemonkeys/image/CopyDither;->createCompatibleDestRaster(Ljava/awt/image/Raster;Ljava/awt/image/IndexColorModel;)Ljava/awt/image/WritableRaster;

    move-result-object p0

    return-object p0
.end method

.method public final createCompatibleDestRaster(Ljava/awt/image/Raster;Ljava/awt/image/IndexColorModel;)Ljava/awt/image/WritableRaster;
    .locals 0

    .line 2
    invoke-virtual {p1}, Ljava/awt/image/Raster;->getWidth()I

    move-result p0

    invoke-virtual {p1}, Ljava/awt/image/Raster;->getHeight()I

    move-result p1

    invoke-virtual {p2, p0, p1}, Ljava/awt/image/IndexColorModel;->createCompatibleWritableRaster(II)Ljava/awt/image/WritableRaster;

    move-result-object p0

    return-object p0
.end method

.method public final filter(Ljava/awt/image/BufferedImage;Ljava/awt/image/BufferedImage;)Ljava/awt/image/BufferedImage;
    .locals 2

    if-nez p2, :cond_0

    .line 1
    invoke-virtual {p0, p1}, Lcom/twelvemonkeys/image/CopyDither;->b(Ljava/awt/image/BufferedImage;)Ljava/awt/image/IndexColorModel;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/twelvemonkeys/image/CopyDither;->createCompatibleDestImage(Ljava/awt/image/BufferedImage;Ljava/awt/image/ColorModel;)Ljava/awt/image/BufferedImage;

    move-result-object p2

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p2}, Ljava/awt/image/BufferedImage;->getColorModel()Ljava/awt/image/ColorModel;

    move-result-object v0

    instance-of v0, v0, Ljava/awt/image/IndexColorModel;

    if-eqz v0, :cond_1

    .line 3
    :goto_0
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getRaster()Ljava/awt/image/WritableRaster;

    move-result-object p1

    invoke-virtual {p2}, Ljava/awt/image/BufferedImage;->getRaster()Ljava/awt/image/WritableRaster;

    move-result-object v0

    invoke-virtual {p2}, Ljava/awt/image/BufferedImage;->getColorModel()Ljava/awt/image/ColorModel;

    move-result-object v1

    check-cast v1, Ljava/awt/image/IndexColorModel;

    invoke-virtual {p0, p1, v0, v1}, Lcom/twelvemonkeys/image/CopyDither;->filter(Ljava/awt/image/Raster;Ljava/awt/image/WritableRaster;Ljava/awt/image/IndexColorModel;)Ljava/awt/image/WritableRaster;

    return-object p2

    .line 4
    :cond_1
    new-instance p0, Lcom/twelvemonkeys/image/ImageFilterException;

    const-string p1, "Only IndexColorModel allowed."

    invoke-direct {p0, p1}, Lcom/twelvemonkeys/image/ImageFilterException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final filter(Ljava/awt/image/Raster;Ljava/awt/image/WritableRaster;)Ljava/awt/image/WritableRaster;
    .locals 1

    .line 5
    invoke-virtual {p0, p1}, Lcom/twelvemonkeys/image/CopyDither;->c(Ljava/awt/image/Raster;)Ljava/awt/image/IndexColorModel;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/twelvemonkeys/image/CopyDither;->filter(Ljava/awt/image/Raster;Ljava/awt/image/WritableRaster;Ljava/awt/image/IndexColorModel;)Ljava/awt/image/WritableRaster;

    move-result-object p0

    return-object p0
.end method

.method public final filter(Ljava/awt/image/Raster;Ljava/awt/image/WritableRaster;Ljava/awt/image/IndexColorModel;)Ljava/awt/image/WritableRaster;
    .locals 7

    .line 6
    invoke-virtual {p1}, Ljava/awt/image/Raster;->getWidth()I

    move-result v0

    .line 7
    invoke-virtual {p1}, Ljava/awt/image/Raster;->getHeight()I

    move-result v1

    if-nez p2, :cond_0

    .line 8
    invoke-virtual {p0, p1, p3}, Lcom/twelvemonkeys/image/CopyDither;->createCompatibleDestRaster(Ljava/awt/image/Raster;Ljava/awt/image/IndexColorModel;)Ljava/awt/image/WritableRaster;

    move-result-object p2

    :cond_0
    const/4 p0, 0x4

    new-array p0, p0, [I

    const/4 v2, 0x0

    const/4 v3, 0x0

    move v4, v2

    :goto_0
    if-ge v4, v1, :cond_2

    move v5, v2

    :goto_1
    if-ge v5, v0, :cond_1

    .line 9
    invoke-virtual {p1, v5, v4, p0}, Ljava/awt/image/Raster;->getPixel(II[I)[I

    .line 10
    invoke-static {p0}, Lcom/twelvemonkeys/image/CopyDither;->d([I)I

    move-result v6

    invoke-virtual {p3, v6, v3}, Ljava/awt/image/IndexColorModel;->getDataElements(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 11
    invoke-virtual {p2, v5, v4, v3}, Ljava/awt/image/WritableRaster;->setDataElements(IILjava/lang/Object;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    return-object p2
.end method

.method public final getBounds2D(Ljava/awt/image/BufferedImage;)Ljava/awt/geom/Rectangle2D;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getRaster()Ljava/awt/image/WritableRaster;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/twelvemonkeys/image/CopyDither;->getBounds2D(Ljava/awt/image/Raster;)Ljava/awt/geom/Rectangle2D;

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

    const/4 p0, 0x0

    return-object p0
.end method
