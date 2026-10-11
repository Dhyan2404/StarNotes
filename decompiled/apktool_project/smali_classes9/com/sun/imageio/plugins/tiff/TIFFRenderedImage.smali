.class public Lcom/sun/imageio/plugins/tiff/TIFFRenderedImage;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/awt/image/RenderedImage;


# instance fields
.field private height:I

.field private imageIndex:I

.field private isSubsampling:Z

.field private its:Ljavax/imageio/ImageTypeSpecifier;

.field private reader:Lcom/sun/imageio/plugins/tiff/TIFFImageReader;

.field private subsampleX:I

.field private subsampleY:I

.field private tileHeight:I

.field private tileParam:Ljavax/imageio/ImageReadParam;

.field private tileWidth:I

.field private width:I


# direct methods
.method public constructor <init>(Lcom/sun/imageio/plugins/tiff/TIFFImageReader;ILjavax/imageio/ImageReadParam;II)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sun/imageio/plugins/tiff/TIFFRenderedImage;->reader:Lcom/sun/imageio/plugins/tiff/TIFFImageReader;

    iput p2, p0, Lcom/sun/imageio/plugins/tiff/TIFFRenderedImage;->imageIndex:I

    const/4 v0, 0x0

    invoke-direct {p0, p3, v0}, Lcom/sun/imageio/plugins/tiff/TIFFRenderedImage;->cloneImageReadParam(Ljavax/imageio/ImageReadParam;Z)Ljavax/imageio/ImageReadParam;

    move-result-object p3

    iput-object p3, p0, Lcom/sun/imageio/plugins/tiff/TIFFRenderedImage;->tileParam:Ljavax/imageio/ImageReadParam;

    invoke-virtual {p3}, Ljavax/imageio/IIOParam;->getSourceXSubsampling()I

    move-result p3

    iput p3, p0, Lcom/sun/imageio/plugins/tiff/TIFFRenderedImage;->subsampleX:I

    iget-object p3, p0, Lcom/sun/imageio/plugins/tiff/TIFFRenderedImage;->tileParam:Ljavax/imageio/ImageReadParam;

    invoke-virtual {p3}, Ljavax/imageio/IIOParam;->getSourceYSubsampling()I

    move-result p3

    iput p3, p0, Lcom/sun/imageio/plugins/tiff/TIFFRenderedImage;->subsampleY:I

    iget v1, p0, Lcom/sun/imageio/plugins/tiff/TIFFRenderedImage;->subsampleX:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    if-eq p3, v2, :cond_1

    :cond_0
    move v0, v2

    :cond_1
    iput-boolean v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFRenderedImage;->isSubsampling:Z

    div-int/2addr p4, v1

    iput p4, p0, Lcom/sun/imageio/plugins/tiff/TIFFRenderedImage;->width:I

    div-int/2addr p5, p3

    iput p5, p0, Lcom/sun/imageio/plugins/tiff/TIFFRenderedImage;->height:I

    invoke-virtual {p1, p2}, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->getTileWidth(I)I

    move-result p3

    iget p4, p0, Lcom/sun/imageio/plugins/tiff/TIFFRenderedImage;->subsampleX:I

    div-int/2addr p3, p4

    iput p3, p0, Lcom/sun/imageio/plugins/tiff/TIFFRenderedImage;->tileWidth:I

    invoke-virtual {p1, p2}, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->getTileHeight(I)I

    move-result p3

    iget p4, p0, Lcom/sun/imageio/plugins/tiff/TIFFRenderedImage;->subsampleY:I

    div-int/2addr p3, p4

    iput p3, p0, Lcom/sun/imageio/plugins/tiff/TIFFRenderedImage;->tileHeight:I

    invoke-virtual {p1, p2}, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->getImageTypes(I)Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljavax/imageio/ImageTypeSpecifier;

    iput-object p1, p0, Lcom/sun/imageio/plugins/tiff/TIFFRenderedImage;->its:Ljavax/imageio/ImageTypeSpecifier;

    iget-object p0, p0, Lcom/sun/imageio/plugins/tiff/TIFFRenderedImage;->tileParam:Ljavax/imageio/ImageReadParam;

    invoke-virtual {p0, p1}, Ljavax/imageio/ImageReadParam;->setDestinationType(Ljavax/imageio/ImageTypeSpecifier;)V

    return-void
.end method

.method private cloneImageReadParam(Ljavax/imageio/ImageReadParam;Z)Ljavax/imageio/ImageReadParam;
    .locals 4

    new-instance p0, Ljavax/imageio/plugins/tiff/TIFFImageReadParam;

    invoke-direct {p0}, Ljavax/imageio/plugins/tiff/TIFFImageReadParam;-><init>()V

    invoke-virtual {p1}, Ljavax/imageio/IIOParam;->getSourceXSubsampling()I

    move-result v0

    invoke-virtual {p1}, Ljavax/imageio/IIOParam;->getSourceYSubsampling()I

    move-result v1

    invoke-virtual {p1}, Ljavax/imageio/IIOParam;->getSubsamplingXOffset()I

    move-result v2

    invoke-virtual {p1}, Ljavax/imageio/IIOParam;->getSubsamplingYOffset()I

    move-result v3

    invoke-virtual {p0, v0, v1, v2, v3}, Ljavax/imageio/IIOParam;->setSourceSubsampling(IIII)V

    invoke-virtual {p1}, Ljavax/imageio/IIOParam;->getSourceBands()[I

    move-result-object v0

    invoke-virtual {p0, v0}, Ljavax/imageio/IIOParam;->setSourceBands([I)V

    invoke-virtual {p1}, Ljavax/imageio/ImageReadParam;->getDestinationBands()[I

    move-result-object v0

    invoke-virtual {p0, v0}, Ljavax/imageio/ImageReadParam;->setDestinationBands([I)V

    invoke-virtual {p1}, Ljavax/imageio/IIOParam;->getDestinationOffset()Ljava/awt/Point;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljavax/imageio/IIOParam;->setDestinationOffset(Ljava/awt/Point;)V

    instance-of v0, p1, Ljavax/imageio/plugins/tiff/TIFFImageReadParam;

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    check-cast p1, Ljavax/imageio/plugins/tiff/TIFFImageReadParam;

    invoke-virtual {p1}, Ljavax/imageio/plugins/tiff/TIFFImageReadParam;->getAllowedTagSets()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    if-eqz p1, :cond_0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljavax/imageio/plugins/tiff/TIFFTagSet;

    invoke-virtual {p0, p2}, Ljavax/imageio/plugins/tiff/TIFFImageReadParam;->addAllowedTagSet(Ljavax/imageio/plugins/tiff/TIFFTagSet;)V

    goto :goto_0

    :cond_0
    return-object p0
.end method


# virtual methods
.method public copyData(Ljava/awt/image/WritableRaster;)Ljava/awt/image/WritableRaster;
    .locals 3

    if-nez p1, :cond_0

    new-instance p1, Ljava/awt/Rectangle;

    invoke-virtual {p0}, Lcom/sun/imageio/plugins/tiff/TIFFRenderedImage;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/sun/imageio/plugins/tiff/TIFFRenderedImage;->getHeight()I

    move-result v1

    const/4 v2, 0x0

    invoke-direct {p1, v2, v2, v0, v1}, Ljava/awt/Rectangle;-><init>(IIII)V

    invoke-virtual {p0, p1}, Lcom/sun/imageio/plugins/tiff/TIFFRenderedImage;->read(Ljava/awt/Rectangle;)Ljava/awt/image/WritableRaster;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Ljava/awt/image/Raster;->getBounds()Ljava/awt/Rectangle;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/imageio/plugins/tiff/TIFFRenderedImage;->read(Ljava/awt/Rectangle;)Ljava/awt/image/WritableRaster;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/awt/image/WritableRaster;->setRect(Ljava/awt/image/Raster;)V

    return-object p1
.end method

.method public getColorModel()Ljava/awt/image/ColorModel;
    .locals 0

    iget-object p0, p0, Lcom/sun/imageio/plugins/tiff/TIFFRenderedImage;->its:Ljavax/imageio/ImageTypeSpecifier;

    invoke-virtual {p0}, Ljavax/imageio/ImageTypeSpecifier;->getColorModel()Ljava/awt/image/ColorModel;

    move-result-object p0

    return-object p0
.end method

.method public getData()Ljava/awt/image/Raster;
    .locals 4

    .line 1
    new-instance v0, Ljava/awt/Rectangle;

    invoke-virtual {p0}, Lcom/sun/imageio/plugins/tiff/TIFFRenderedImage;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/sun/imageio/plugins/tiff/TIFFRenderedImage;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Ljava/awt/Rectangle;-><init>(IIII)V

    invoke-virtual {p0, v0}, Lcom/sun/imageio/plugins/tiff/TIFFRenderedImage;->read(Ljava/awt/Rectangle;)Ljava/awt/image/WritableRaster;

    move-result-object p0

    return-object p0
.end method

.method public getData(Ljava/awt/Rectangle;)Ljava/awt/image/Raster;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/sun/imageio/plugins/tiff/TIFFRenderedImage;->read(Ljava/awt/Rectangle;)Ljava/awt/image/WritableRaster;

    move-result-object p0

    return-object p0
.end method

.method public getHeight()I
    .locals 0

    iget p0, p0, Lcom/sun/imageio/plugins/tiff/TIFFRenderedImage;->height:I

    return p0
.end method

.method public getMinTileX()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getMinTileY()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getMinX()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getMinY()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getNumXTiles()I
    .locals 1

    iget v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFRenderedImage;->width:I

    iget p0, p0, Lcom/sun/imageio/plugins/tiff/TIFFRenderedImage;->tileWidth:I

    add-int/2addr v0, p0

    add-int/lit8 v0, v0, -0x1

    div-int/2addr v0, p0

    return v0
.end method

.method public getNumYTiles()I
    .locals 1

    iget v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFRenderedImage;->height:I

    iget p0, p0, Lcom/sun/imageio/plugins/tiff/TIFFRenderedImage;->tileHeight:I

    add-int/2addr v0, p0

    add-int/lit8 v0, v0, -0x1

    div-int/2addr v0, p0

    return v0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    sget-object p0, Ljava/awt/Image;->UndefinedProperty:Ljava/lang/Object;

    return-object p0
.end method

.method public getPropertyNames()[Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getSampleModel()Ljava/awt/image/SampleModel;
    .locals 0

    iget-object p0, p0, Lcom/sun/imageio/plugins/tiff/TIFFRenderedImage;->its:Ljavax/imageio/ImageTypeSpecifier;

    invoke-virtual {p0}, Ljavax/imageio/ImageTypeSpecifier;->getSampleModel()Ljava/awt/image/SampleModel;

    move-result-object p0

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

.method public getTile(II)Ljava/awt/image/Raster;
    .locals 3

    new-instance v0, Ljava/awt/Rectangle;

    iget v1, p0, Lcom/sun/imageio/plugins/tiff/TIFFRenderedImage;->tileWidth:I

    mul-int/2addr p1, v1

    iget v2, p0, Lcom/sun/imageio/plugins/tiff/TIFFRenderedImage;->tileHeight:I

    mul-int/2addr p2, v2

    invoke-direct {v0, p1, p2, v1, v2}, Ljava/awt/Rectangle;-><init>(IIII)V

    invoke-virtual {p0, v0}, Lcom/sun/imageio/plugins/tiff/TIFFRenderedImage;->getData(Ljava/awt/Rectangle;)Ljava/awt/image/Raster;

    move-result-object p0

    return-object p0
.end method

.method public getTileGridXOffset()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getTileGridYOffset()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getTileHeight()I
    .locals 0

    iget p0, p0, Lcom/sun/imageio/plugins/tiff/TIFFRenderedImage;->tileHeight:I

    return p0
.end method

.method public getTileWidth()I
    .locals 0

    iget p0, p0, Lcom/sun/imageio/plugins/tiff/TIFFRenderedImage;->tileWidth:I

    return p0
.end method

.method public getWidth()I
    .locals 0

    iget p0, p0, Lcom/sun/imageio/plugins/tiff/TIFFRenderedImage;->width:I

    return p0
.end method

.method public declared-synchronized read(Ljava/awt/Rectangle;)Ljava/awt/image/WritableRaster;
    .locals 9

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFRenderedImage;->tileParam:Ljavax/imageio/ImageReadParam;

    iget-boolean v1, p0, Lcom/sun/imageio/plugins/tiff/TIFFRenderedImage;->isSubsampling:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/awt/Rectangle;

    iget v2, p0, Lcom/sun/imageio/plugins/tiff/TIFFRenderedImage;->subsampleX:I

    iget v3, p1, Ljava/awt/Rectangle;->x:I

    mul-int/2addr v3, v2

    iget v4, p0, Lcom/sun/imageio/plugins/tiff/TIFFRenderedImage;->subsampleY:I

    iget v5, p1, Ljava/awt/Rectangle;->y:I

    mul-int/2addr v5, v4

    iget v6, p1, Ljava/awt/Rectangle;->width:I

    mul-int/2addr v2, v6

    iget v6, p1, Ljava/awt/Rectangle;->height:I

    mul-int/2addr v4, v6

    invoke-direct {v1, v3, v5, v2, v4}, Ljava/awt/Rectangle;-><init>(IIII)V

    goto :goto_0

    :cond_0
    move-object v1, p1

    :goto_0
    invoke-virtual {v0, v1}, Ljavax/imageio/IIOParam;->setSourceRegion(Ljava/awt/Rectangle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFRenderedImage;->reader:Lcom/sun/imageio/plugins/tiff/TIFFImageReader;

    iget v1, p0, Lcom/sun/imageio/plugins/tiff/TIFFRenderedImage;->imageIndex:I

    iget-object v2, p0, Lcom/sun/imageio/plugins/tiff/TIFFRenderedImage;->tileParam:Ljavax/imageio/ImageReadParam;

    invoke-virtual {v0, v1, v2}, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->read(ILjavax/imageio/ImageReadParam;)Ljava/awt/image/BufferedImage;

    move-result-object v0

    invoke-virtual {v0}, Ljava/awt/image/BufferedImage;->getRaster()Ljava/awt/image/WritableRaster;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1}, Ljava/awt/image/Raster;->getWidth()I

    move-result v4

    invoke-virtual {v1}, Ljava/awt/image/Raster;->getHeight()I

    move-result v5

    iget v6, p1, Ljava/awt/Rectangle;->x:I

    iget v7, p1, Ljava/awt/Rectangle;->y:I

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Ljava/awt/image/WritableRaster;->createWritableChild(IIIIII[I)Ljava/awt/image/WritableRaster;

    move-result-object p1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :catch_0
    move-exception p1

    :try_start_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
