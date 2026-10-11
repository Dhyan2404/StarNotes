.class public Lcom/twelvemonkeys/image/AffineTransformOp;
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
.field public final a:Ljava/awt/image/AffineTransformOp;


# direct methods
.method public constructor <init>(Ljava/awt/geom/AffineTransform;I)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/awt/image/AffineTransformOp;

    invoke-direct {v0, p1, p2}, Ljava/awt/image/AffineTransformOp;-><init>(Ljava/awt/geom/AffineTransform;I)V

    iput-object v0, p0, Lcom/twelvemonkeys/image/AffineTransformOp;->a:Ljava/awt/image/AffineTransformOp;

    return-void
.end method

.method public constructor <init>(Ljava/awt/geom/AffineTransform;Ljava/awt/RenderingHints;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/awt/image/AffineTransformOp;

    invoke-direct {v0, p1, p2}, Ljava/awt/image/AffineTransformOp;-><init>(Ljava/awt/geom/AffineTransform;Ljava/awt/RenderingHints;)V

    iput-object v0, p0, Lcom/twelvemonkeys/image/AffineTransformOp;->a:Ljava/awt/image/AffineTransformOp;

    return-void
.end method


# virtual methods
.method public createCompatibleDestImage(Ljava/awt/image/BufferedImage;Ljava/awt/image/ColorModel;)Ljava/awt/image/BufferedImage;
    .locals 0

    iget-object p0, p0, Lcom/twelvemonkeys/image/AffineTransformOp;->a:Ljava/awt/image/AffineTransformOp;

    invoke-virtual {p0, p1, p2}, Ljava/awt/image/AffineTransformOp;->createCompatibleDestImage(Ljava/awt/image/BufferedImage;Ljava/awt/image/ColorModel;)Ljava/awt/image/BufferedImage;

    move-result-object p0

    return-object p0
.end method

.method public createCompatibleDestRaster(Ljava/awt/image/Raster;)Ljava/awt/image/WritableRaster;
    .locals 0

    iget-object p0, p0, Lcom/twelvemonkeys/image/AffineTransformOp;->a:Ljava/awt/image/AffineTransformOp;

    invoke-virtual {p0, p1}, Ljava/awt/image/AffineTransformOp;->createCompatibleDestRaster(Ljava/awt/image/Raster;)Ljava/awt/image/WritableRaster;

    move-result-object p0

    return-object p0
.end method

.method public filter(Ljava/awt/image/BufferedImage;Ljava/awt/image/BufferedImage;)Ljava/awt/image/BufferedImage;
    .locals 5

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/twelvemonkeys/image/AffineTransformOp;->a:Ljava/awt/image/AffineTransformOp;

    invoke-virtual {v0, p1, p2}, Ljava/awt/image/AffineTransformOp;->filter(Ljava/awt/image/BufferedImage;Ljava/awt/image/BufferedImage;)Ljava/awt/image/BufferedImage;

    move-result-object p0
    :try_end_0
    .catch Ljava/awt/image/ImagingOpException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    if-nez p2, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getColorModel()Ljava/awt/image/ColorModel;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/twelvemonkeys/image/AffineTransformOp;->createCompatibleDestImage(Ljava/awt/image/BufferedImage;Ljava/awt/image/ColorModel;)Ljava/awt/image/BufferedImage;

    move-result-object p2

    :cond_0
    const/4 v0, 0x0

    .line 3
    :try_start_1
    invoke-virtual {p2}, Ljava/awt/image/BufferedImage;->createGraphics()Ljava/awt/Graphics2D;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 4
    :try_start_2
    iget-object v2, p0, Lcom/twelvemonkeys/image/AffineTransformOp;->a:Ljava/awt/image/AffineTransformOp;

    invoke-virtual {v2}, Ljava/awt/image/AffineTransformOp;->getInterpolationType()I

    move-result v2

    if-lez v2, :cond_3

    .line 5
    sget-object v3, Ljava/awt/RenderingHints;->VALUE_INTERPOLATION_NEAREST_NEIGHBOR:Ljava/lang/Object;

    const/4 v4, 0x2

    if-eq v2, v4, :cond_2

    const/4 v4, 0x3

    if-eq v2, v4, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    sget-object v3, Ljava/awt/RenderingHints;->VALUE_INTERPOLATION_BICUBIC:Ljava/lang/Object;

    goto :goto_0

    .line 7
    :cond_2
    sget-object v3, Ljava/awt/RenderingHints;->VALUE_INTERPOLATION_BILINEAR:Ljava/lang/Object;

    .line 8
    :goto_0
    sget-object v2, Ljava/awt/RenderingHints;->KEY_INTERPOLATION:Ljava/awt/RenderingHints$Key;

    invoke-virtual {v1, v2, v3}, Ljava/awt/Graphics2D;->setRenderingHint(Ljava/awt/RenderingHints$Key;Ljava/lang/Object;)V

    goto :goto_1

    .line 9
    :cond_3
    invoke-virtual {p0}, Lcom/twelvemonkeys/image/AffineTransformOp;->getRenderingHints()Ljava/awt/RenderingHints;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 10
    invoke-virtual {p0}, Lcom/twelvemonkeys/image/AffineTransformOp;->getRenderingHints()Ljava/awt/RenderingHints;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/awt/Graphics2D;->setRenderingHints(Ljava/util/Map;)V

    .line 11
    :cond_4
    :goto_1
    iget-object p0, p0, Lcom/twelvemonkeys/image/AffineTransformOp;->a:Ljava/awt/image/AffineTransformOp;

    invoke-virtual {p0}, Ljava/awt/image/AffineTransformOp;->getTransform()Ljava/awt/geom/AffineTransform;

    move-result-object p0

    invoke-virtual {v1, p1, p0, v0}, Ljava/awt/Graphics2D;->drawImage(Ljava/awt/Image;Ljava/awt/geom/AffineTransform;Ljava/awt/image/ImageObserver;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 12
    invoke-virtual {v1}, Ljava/awt/Graphics2D;->dispose()V

    return-object p2

    :catchall_0
    move-exception p0

    move-object v0, v1

    goto :goto_2

    :catchall_1
    move-exception p0

    :goto_2
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/awt/Graphics2D;->dispose()V

    :cond_5
    throw p0
.end method

.method public filter(Ljava/awt/image/Raster;Ljava/awt/image/WritableRaster;)Ljava/awt/image/WritableRaster;
    .locals 0

    .line 13
    iget-object p0, p0, Lcom/twelvemonkeys/image/AffineTransformOp;->a:Ljava/awt/image/AffineTransformOp;

    invoke-virtual {p0, p1, p2}, Ljava/awt/image/AffineTransformOp;->filter(Ljava/awt/image/Raster;Ljava/awt/image/WritableRaster;)Ljava/awt/image/WritableRaster;

    move-result-object p0

    return-object p0
.end method

.method public getBounds2D(Ljava/awt/image/BufferedImage;)Ljava/awt/geom/Rectangle2D;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/twelvemonkeys/image/AffineTransformOp;->a:Ljava/awt/image/AffineTransformOp;

    invoke-virtual {p0, p1}, Ljava/awt/image/AffineTransformOp;->getBounds2D(Ljava/awt/image/BufferedImage;)Ljava/awt/geom/Rectangle2D;

    move-result-object p0

    return-object p0
.end method

.method public getBounds2D(Ljava/awt/image/Raster;)Ljava/awt/geom/Rectangle2D;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/twelvemonkeys/image/AffineTransformOp;->a:Ljava/awt/image/AffineTransformOp;

    invoke-virtual {p0, p1}, Ljava/awt/image/AffineTransformOp;->getBounds2D(Ljava/awt/image/Raster;)Ljava/awt/geom/Rectangle2D;

    move-result-object p0

    return-object p0
.end method

.method public getPoint2D(Ljava/awt/geom/Point2D;Ljava/awt/geom/Point2D;)Ljava/awt/geom/Point2D;
    .locals 0

    iget-object p0, p0, Lcom/twelvemonkeys/image/AffineTransformOp;->a:Ljava/awt/image/AffineTransformOp;

    invoke-virtual {p0, p1, p2}, Ljava/awt/image/AffineTransformOp;->getPoint2D(Ljava/awt/geom/Point2D;Ljava/awt/geom/Point2D;)Ljava/awt/geom/Point2D;

    move-result-object p0

    return-object p0
.end method

.method public getRenderingHints()Ljava/awt/RenderingHints;
    .locals 0

    iget-object p0, p0, Lcom/twelvemonkeys/image/AffineTransformOp;->a:Ljava/awt/image/AffineTransformOp;

    invoke-virtual {p0}, Ljava/awt/image/AffineTransformOp;->getRenderingHints()Ljava/awt/RenderingHints;

    move-result-object p0

    return-object p0
.end method
