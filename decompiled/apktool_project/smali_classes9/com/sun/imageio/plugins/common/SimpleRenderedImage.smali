.class public abstract Lcom/sun/imageio/plugins/common/SimpleRenderedImage;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/awt/image/RenderedImage;


# instance fields
.field protected colorModel:Ljava/awt/image/ColorModel;

.field protected height:I

.field protected minX:I

.field protected minY:I

.field protected properties:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected sampleModel:Ljava/awt/image/SampleModel;

.field protected sources:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Ljava/awt/image/RenderedImage;",
            ">;"
        }
    .end annotation
.end field

.field protected tileGridXOffset:I

.field protected tileGridYOffset:I

.field protected tileHeight:I

.field protected tileWidth:I

.field protected width:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sun/imageio/plugins/common/SimpleRenderedImage;->tileGridXOffset:I

    iput v0, p0, Lcom/sun/imageio/plugins/common/SimpleRenderedImage;->tileGridYOffset:I

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/sun/imageio/plugins/common/SimpleRenderedImage;->sources:Ljava/util/Vector;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/sun/imageio/plugins/common/SimpleRenderedImage;->properties:Ljava/util/Hashtable;

    return-void
.end method

.method public static XToTileX(III)I
    .locals 0

    sub-int/2addr p0, p1

    if-gez p0, :cond_0

    rsub-int/lit8 p1, p2, 0x1

    add-int/2addr p0, p1

    .line 1
    :cond_0
    div-int/2addr p0, p2

    return p0
.end method

.method public static YToTileY(III)I
    .locals 0

    sub-int/2addr p0, p1

    if-gez p0, :cond_0

    rsub-int/lit8 p1, p2, 0x1

    add-int/2addr p0, p1

    .line 1
    :cond_0
    div-int/2addr p0, p2

    return p0
.end method

.method public static tileXToX(III)I
    .locals 0

    .line 1
    mul-int/2addr p0, p2

    add-int/2addr p0, p1

    return p0
.end method

.method public static tileYToY(III)I
    .locals 0

    .line 1
    mul-int/2addr p0, p2

    add-int/2addr p0, p1

    return p0
.end method


# virtual methods
.method public XToTileX(I)I
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/sun/imageio/plugins/common/SimpleRenderedImage;->getTileGridXOffset()I

    move-result v0

    invoke-virtual {p0}, Lcom/sun/imageio/plugins/common/SimpleRenderedImage;->getTileWidth()I

    move-result p0

    invoke-static {p1, v0, p0}, Lcom/sun/imageio/plugins/common/SimpleRenderedImage;->XToTileX(III)I

    move-result p0

    return p0
.end method

.method public YToTileY(I)I
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/sun/imageio/plugins/common/SimpleRenderedImage;->getTileGridYOffset()I

    move-result v0

    invoke-virtual {p0}, Lcom/sun/imageio/plugins/common/SimpleRenderedImage;->getTileHeight()I

    move-result p0

    invoke-static {p1, v0, p0}, Lcom/sun/imageio/plugins/common/SimpleRenderedImage;->YToTileY(III)I

    move-result p0

    return p0
.end method

.method public copyData(Ljava/awt/image/WritableRaster;)Ljava/awt/image/WritableRaster;
    .locals 14

    invoke-virtual {p0}, Lcom/sun/imageio/plugins/common/SimpleRenderedImage;->getBounds()Ljava/awt/Rectangle;

    move-result-object v0

    if-nez p1, :cond_0

    new-instance p1, Ljava/awt/Point;

    iget v1, p0, Lcom/sun/imageio/plugins/common/SimpleRenderedImage;->minX:I

    iget v2, p0, Lcom/sun/imageio/plugins/common/SimpleRenderedImage;->minY:I

    invoke-direct {p1, v1, v2}, Ljava/awt/Point;-><init>(II)V

    iget-object v1, p0, Lcom/sun/imageio/plugins/common/SimpleRenderedImage;->sampleModel:Ljava/awt/image/SampleModel;

    iget v2, p0, Lcom/sun/imageio/plugins/common/SimpleRenderedImage;->width:I

    iget v3, p0, Lcom/sun/imageio/plugins/common/SimpleRenderedImage;->height:I

    invoke-virtual {v1, v2, v3}, Ljava/awt/image/SampleModel;->createCompatibleSampleModel(II)Ljava/awt/image/SampleModel;

    move-result-object v1

    invoke-static {v1, p1}, Ljava/awt/image/Raster;->createWritableRaster(Ljava/awt/image/SampleModel;Ljava/awt/Point;)Ljava/awt/image/WritableRaster;

    move-result-object p1

    move-object v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/awt/image/Raster;->getBounds()Ljava/awt/Rectangle;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/awt/Rectangle;->contains(Ljava/awt/Rectangle;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v0, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v1, v0}, Ljava/awt/Rectangle;->intersection(Ljava/awt/Rectangle;)Ljava/awt/Rectangle;

    move-result-object v0

    :goto_1
    iget v2, v0, Ljava/awt/Rectangle;->x:I

    invoke-virtual {p0, v2}, Lcom/sun/imageio/plugins/common/SimpleRenderedImage;->XToTileX(I)I

    move-result v2

    iget v3, v0, Ljava/awt/Rectangle;->y:I

    invoke-virtual {p0, v3}, Lcom/sun/imageio/plugins/common/SimpleRenderedImage;->YToTileY(I)I

    move-result v3

    iget v4, v0, Ljava/awt/Rectangle;->x:I

    iget v5, v0, Ljava/awt/Rectangle;->width:I

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p0, v4}, Lcom/sun/imageio/plugins/common/SimpleRenderedImage;->XToTileX(I)I

    move-result v4

    iget v5, v0, Ljava/awt/Rectangle;->y:I

    iget v0, v0, Ljava/awt/Rectangle;->height:I

    add-int/2addr v5, v0

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {p0, v5}, Lcom/sun/imageio/plugins/common/SimpleRenderedImage;->YToTileY(I)I

    move-result v0

    :goto_2
    if-gt v3, v0, :cond_3

    move v5, v2

    :goto_3
    if-gt v5, v4, :cond_2

    invoke-interface {p0, v5, v3}, Ljava/awt/image/RenderedImage;->getTile(II)Ljava/awt/image/Raster;

    move-result-object v6

    invoke-virtual {v6}, Ljava/awt/image/Raster;->getBounds()Ljava/awt/Rectangle;

    invoke-virtual {v6}, Ljava/awt/image/Raster;->getBounds()Ljava/awt/Rectangle;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/awt/Rectangle;->intersection(Ljava/awt/Rectangle;)Ljava/awt/Rectangle;

    move-result-object v7

    iget v11, v7, Ljava/awt/Rectangle;->x:I

    iget v12, v7, Ljava/awt/Rectangle;->y:I

    iget v9, v7, Ljava/awt/Rectangle;->width:I

    iget v10, v7, Ljava/awt/Rectangle;->height:I

    const/4 v13, 0x0

    move v7, v11

    move v8, v12

    invoke-virtual/range {v6 .. v13}, Ljava/awt/image/Raster;->createChild(IIIIII[I)Ljava/awt/image/Raster;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/awt/image/WritableRaster;->setRect(Ljava/awt/image/Raster;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    return-object p1
.end method

.method public getBounds()Ljava/awt/Rectangle;
    .locals 4

    new-instance v0, Ljava/awt/Rectangle;

    invoke-virtual {p0}, Lcom/sun/imageio/plugins/common/SimpleRenderedImage;->getMinX()I

    move-result v1

    invoke-virtual {p0}, Lcom/sun/imageio/plugins/common/SimpleRenderedImage;->getMinY()I

    move-result v2

    invoke-virtual {p0}, Lcom/sun/imageio/plugins/common/SimpleRenderedImage;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/sun/imageio/plugins/common/SimpleRenderedImage;->getHeight()I

    move-result p0

    invoke-direct {v0, v1, v2, v3, p0}, Ljava/awt/Rectangle;-><init>(IIII)V

    return-object v0
.end method

.method public getColorModel()Ljava/awt/image/ColorModel;
    .locals 0

    iget-object p0, p0, Lcom/sun/imageio/plugins/common/SimpleRenderedImage;->colorModel:Ljava/awt/image/ColorModel;

    return-object p0
.end method

.method public getData()Ljava/awt/image/Raster;
    .locals 5

    .line 1
    new-instance v0, Ljava/awt/Rectangle;

    invoke-virtual {p0}, Lcom/sun/imageio/plugins/common/SimpleRenderedImage;->getMinX()I

    move-result v1

    invoke-virtual {p0}, Lcom/sun/imageio/plugins/common/SimpleRenderedImage;->getMinY()I

    move-result v2

    .line 2
    invoke-virtual {p0}, Lcom/sun/imageio/plugins/common/SimpleRenderedImage;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/sun/imageio/plugins/common/SimpleRenderedImage;->getHeight()I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/awt/Rectangle;-><init>(IIII)V

    .line 3
    invoke-virtual {p0, v0}, Lcom/sun/imageio/plugins/common/SimpleRenderedImage;->getData(Ljava/awt/Rectangle;)Ljava/awt/image/Raster;

    move-result-object p0

    return-object p0
.end method

.method public getData(Ljava/awt/Rectangle;)Ljava/awt/image/Raster;
    .locals 14

    .line 4
    invoke-virtual {p0}, Lcom/sun/imageio/plugins/common/SimpleRenderedImage;->getBounds()Ljava/awt/Rectangle;

    move-result-object v0

    if-nez p1, :cond_0

    move-object p1, v0

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p1, v0}, Ljava/awt/Rectangle;->intersects(Ljava/awt/Rectangle;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 6
    :goto_0
    iget v1, p1, Ljava/awt/Rectangle;->x:I

    invoke-virtual {p0, v1}, Lcom/sun/imageio/plugins/common/SimpleRenderedImage;->XToTileX(I)I

    move-result v1

    .line 7
    iget v2, p1, Ljava/awt/Rectangle;->y:I

    invoke-virtual {p0, v2}, Lcom/sun/imageio/plugins/common/SimpleRenderedImage;->YToTileY(I)I

    move-result v2

    .line 8
    iget v3, p1, Ljava/awt/Rectangle;->x:I

    iget v4, p1, Ljava/awt/Rectangle;->width:I

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p0, v3}, Lcom/sun/imageio/plugins/common/SimpleRenderedImage;->XToTileX(I)I

    move-result v3

    .line 9
    iget v4, p1, Ljava/awt/Rectangle;->y:I

    iget v5, p1, Ljava/awt/Rectangle;->height:I

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p0, v4}, Lcom/sun/imageio/plugins/common/SimpleRenderedImage;->YToTileY(I)I

    move-result v4

    if-ne v1, v3, :cond_1

    if-ne v2, v4, :cond_1

    .line 10
    invoke-interface {p0, v1, v2}, Ljava/awt/image/RenderedImage;->getTile(II)Ljava/awt/image/Raster;

    move-result-object v5

    .line 11
    iget v10, p1, Ljava/awt/Rectangle;->x:I

    iget v11, p1, Ljava/awt/Rectangle;->y:I

    iget v8, p1, Ljava/awt/Rectangle;->width:I

    iget v9, p1, Ljava/awt/Rectangle;->height:I

    const/4 v12, 0x0

    move v6, v10

    move v7, v11

    invoke-virtual/range {v5 .. v12}, Ljava/awt/image/Raster;->createChild(IIIIII[I)Ljava/awt/image/Raster;

    move-result-object p0

    return-object p0

    .line 12
    :cond_1
    invoke-virtual {v0, p1}, Ljava/awt/Rectangle;->contains(Ljava/awt/Rectangle;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 13
    invoke-virtual {p1, v0}, Ljava/awt/Rectangle;->intersection(Ljava/awt/Rectangle;)Ljava/awt/Rectangle;

    move-result-object v0

    .line 14
    iget v1, v0, Ljava/awt/Rectangle;->x:I

    invoke-virtual {p0, v1}, Lcom/sun/imageio/plugins/common/SimpleRenderedImage;->XToTileX(I)I

    move-result v1

    .line 15
    iget v2, v0, Ljava/awt/Rectangle;->y:I

    invoke-virtual {p0, v2}, Lcom/sun/imageio/plugins/common/SimpleRenderedImage;->YToTileY(I)I

    move-result v2

    .line 16
    iget v3, v0, Ljava/awt/Rectangle;->x:I

    iget v4, v0, Ljava/awt/Rectangle;->width:I

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p0, v3}, Lcom/sun/imageio/plugins/common/SimpleRenderedImage;->XToTileX(I)I

    move-result v3

    .line 17
    iget v4, v0, Ljava/awt/Rectangle;->y:I

    iget v0, v0, Ljava/awt/Rectangle;->height:I

    add-int/2addr v4, v0

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p0, v4}, Lcom/sun/imageio/plugins/common/SimpleRenderedImage;->YToTileY(I)I

    move-result v4

    .line 18
    :cond_2
    iget-object v0, p0, Lcom/sun/imageio/plugins/common/SimpleRenderedImage;->sampleModel:Ljava/awt/image/SampleModel;

    iget v5, p1, Ljava/awt/Rectangle;->width:I

    iget v6, p1, Ljava/awt/Rectangle;->height:I

    .line 19
    invoke-virtual {v0, v5, v6}, Ljava/awt/image/SampleModel;->createCompatibleSampleModel(II)Ljava/awt/image/SampleModel;

    move-result-object v0

    .line 20
    invoke-virtual {p1}, Ljava/awt/Rectangle;->getLocation()Ljava/awt/Point;

    move-result-object v5

    invoke-static {v0, v5}, Ljava/awt/image/Raster;->createWritableRaster(Ljava/awt/image/SampleModel;Ljava/awt/Point;)Ljava/awt/image/WritableRaster;

    move-result-object v0

    :goto_1
    if-gt v2, v4, :cond_4

    move v5, v1

    :goto_2
    if-gt v5, v3, :cond_3

    .line 21
    invoke-interface {p0, v5, v2}, Ljava/awt/image/RenderedImage;->getTile(II)Ljava/awt/image/Raster;

    move-result-object v6

    .line 22
    invoke-virtual {v6}, Ljava/awt/image/Raster;->getBounds()Ljava/awt/Rectangle;

    .line 23
    invoke-virtual {v6}, Ljava/awt/image/Raster;->getBounds()Ljava/awt/Rectangle;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/awt/Rectangle;->intersection(Ljava/awt/Rectangle;)Ljava/awt/Rectangle;

    move-result-object v7

    .line 24
    iget v11, v7, Ljava/awt/Rectangle;->x:I

    iget v12, v7, Ljava/awt/Rectangle;->y:I

    iget v9, v7, Ljava/awt/Rectangle;->width:I

    iget v10, v7, Ljava/awt/Rectangle;->height:I

    const/4 v13, 0x0

    move v7, v11

    move v8, v12

    invoke-virtual/range {v6 .. v13}, Ljava/awt/image/Raster;->createChild(IIIIII[I)Ljava/awt/image/Raster;

    move-result-object v6

    .line 25
    invoke-virtual {v0, v6}, Ljava/awt/image/WritableRaster;->setRect(Ljava/awt/image/Raster;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    return-object v0

    .line 26
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The provided region doesn\'t intersect with the image bounds."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getHeight()I
    .locals 0

    iget p0, p0, Lcom/sun/imageio/plugins/common/SimpleRenderedImage;->height:I

    return p0
.end method

.method public getMaxTileX()I
    .locals 1

    invoke-virtual {p0}, Lcom/sun/imageio/plugins/common/SimpleRenderedImage;->getMaxX()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/sun/imageio/plugins/common/SimpleRenderedImage;->XToTileX(I)I

    move-result p0

    return p0
.end method

.method public getMaxTileY()I
    .locals 1

    invoke-virtual {p0}, Lcom/sun/imageio/plugins/common/SimpleRenderedImage;->getMaxY()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/sun/imageio/plugins/common/SimpleRenderedImage;->YToTileY(I)I

    move-result p0

    return p0
.end method

.method public final getMaxX()I
    .locals 1

    invoke-virtual {p0}, Lcom/sun/imageio/plugins/common/SimpleRenderedImage;->getMinX()I

    move-result v0

    invoke-virtual {p0}, Lcom/sun/imageio/plugins/common/SimpleRenderedImage;->getWidth()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public final getMaxY()I
    .locals 1

    invoke-virtual {p0}, Lcom/sun/imageio/plugins/common/SimpleRenderedImage;->getMinY()I

    move-result v0

    invoke-virtual {p0}, Lcom/sun/imageio/plugins/common/SimpleRenderedImage;->getHeight()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public getMinTileX()I
    .locals 1

    invoke-virtual {p0}, Lcom/sun/imageio/plugins/common/SimpleRenderedImage;->getMinX()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sun/imageio/plugins/common/SimpleRenderedImage;->XToTileX(I)I

    move-result p0

    return p0
.end method

.method public getMinTileY()I
    .locals 1

    invoke-virtual {p0}, Lcom/sun/imageio/plugins/common/SimpleRenderedImage;->getMinY()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sun/imageio/plugins/common/SimpleRenderedImage;->YToTileY(I)I

    move-result p0

    return p0
.end method

.method public getMinX()I
    .locals 0

    iget p0, p0, Lcom/sun/imageio/plugins/common/SimpleRenderedImage;->minX:I

    return p0
.end method

.method public getMinY()I
    .locals 0

    iget p0, p0, Lcom/sun/imageio/plugins/common/SimpleRenderedImage;->minY:I

    return p0
.end method

.method public getNumXTiles()I
    .locals 1

    invoke-virtual {p0}, Lcom/sun/imageio/plugins/common/SimpleRenderedImage;->getMaxTileX()I

    move-result v0

    invoke-virtual {p0}, Lcom/sun/imageio/plugins/common/SimpleRenderedImage;->getMinTileX()I

    move-result p0

    sub-int/2addr v0, p0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getNumYTiles()I
    .locals 1

    invoke-virtual {p0}, Lcom/sun/imageio/plugins/common/SimpleRenderedImage;->getMaxTileY()I

    move-result v0

    invoke-virtual {p0}, Lcom/sun/imageio/plugins/common/SimpleRenderedImage;->getMinTileY()I

    move-result p0

    sub-int/2addr v0, p0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/sun/imageio/plugins/common/SimpleRenderedImage;->properties:Ljava/util/Hashtable;

    invoke-virtual {p0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    sget-object p0, Ljava/awt/Image;->UndefinedProperty:Ljava/lang/Object;

    :goto_0
    return-object p0
.end method

.method public getPropertyNames()[Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/sun/imageio/plugins/common/SimpleRenderedImage;->properties:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/sun/imageio/plugins/common/SimpleRenderedImage;->properties:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 3
    iget-object p0, p0, Lcom/sun/imageio/plugins/common/SimpleRenderedImage;->properties:Ljava/util/Hashtable;

    invoke-virtual {p0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object p0

    const/4 v1, 0x0

    .line 4
    :goto_0
    invoke-interface {p0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5
    invoke-interface {p0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    add-int/lit8 v3, v1, 0x1

    .line 6
    aput-object v2, v0, v1

    move v1, v3

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    return-object v0
.end method

.method public getPropertyNames(Ljava/lang/String;)[Ljava/lang/String;
    .locals 5

    .line 7
    invoke-virtual {p0}, Lcom/sun/imageio/plugins/common/SimpleRenderedImage;->getPropertyNames()[Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 8
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 9
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    .line 10
    :goto_0
    array-length v4, p0

    if-ge v3, v4, :cond_2

    .line 11
    aget-object v4, p0, v3

    invoke-virtual {v4, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 12
    aget-object v4, p0, v3

    invoke-virtual {v1, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 13
    :cond_2
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result p0

    if-nez p0, :cond_3

    return-object v0

    .line 14
    :cond_3
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result p0

    new-array p0, p0, [Ljava/lang/String;

    .line 15
    invoke-virtual {v1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    add-int/lit8 v0, v2, 0x1

    .line 16
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    aput-object v1, p0, v2

    move v2, v0

    goto :goto_1

    :cond_4
    return-object p0
.end method

.method public getSampleModel()Ljava/awt/image/SampleModel;
    .locals 0

    iget-object p0, p0, Lcom/sun/imageio/plugins/common/SimpleRenderedImage;->sampleModel:Ljava/awt/image/SampleModel;

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

.method public getTileGridXOffset()I
    .locals 0

    iget p0, p0, Lcom/sun/imageio/plugins/common/SimpleRenderedImage;->tileGridXOffset:I

    return p0
.end method

.method public getTileGridYOffset()I
    .locals 0

    iget p0, p0, Lcom/sun/imageio/plugins/common/SimpleRenderedImage;->tileGridYOffset:I

    return p0
.end method

.method public getTileHeight()I
    .locals 0

    iget p0, p0, Lcom/sun/imageio/plugins/common/SimpleRenderedImage;->tileHeight:I

    return p0
.end method

.method public getTileWidth()I
    .locals 0

    iget p0, p0, Lcom/sun/imageio/plugins/common/SimpleRenderedImage;->tileWidth:I

    return p0
.end method

.method public getWidth()I
    .locals 0

    iget p0, p0, Lcom/sun/imageio/plugins/common/SimpleRenderedImage;->width:I

    return p0
.end method

.method public tileXToX(I)I
    .locals 1

    .line 2
    iget v0, p0, Lcom/sun/imageio/plugins/common/SimpleRenderedImage;->tileWidth:I

    mul-int/2addr p1, v0

    iget p0, p0, Lcom/sun/imageio/plugins/common/SimpleRenderedImage;->tileGridXOffset:I

    add-int/2addr p1, p0

    return p1
.end method

.method public tileYToY(I)I
    .locals 1

    .line 2
    iget v0, p0, Lcom/sun/imageio/plugins/common/SimpleRenderedImage;->tileHeight:I

    mul-int/2addr p1, v0

    iget p0, p0, Lcom/sun/imageio/plugins/common/SimpleRenderedImage;->tileGridYOffset:I

    add-int/2addr p1, p0

    return p1
.end method
