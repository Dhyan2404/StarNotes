.class public Lcom/sun/imageio/plugins/common/SingleTileRenderedImage;
.super Lcom/sun/imageio/plugins/common/SimpleRenderedImage;
.source "SourceFile"


# instance fields
.field ras:Ljava/awt/image/Raster;


# direct methods
.method public constructor <init>(Ljava/awt/image/Raster;Ljava/awt/image/ColorModel;)V
    .locals 1

    invoke-direct {p0}, Lcom/sun/imageio/plugins/common/SimpleRenderedImage;-><init>()V

    iput-object p1, p0, Lcom/sun/imageio/plugins/common/SingleTileRenderedImage;->ras:Ljava/awt/image/Raster;

    invoke-virtual {p1}, Ljava/awt/image/Raster;->getMinX()I

    move-result v0

    iput v0, p0, Lcom/sun/imageio/plugins/common/SimpleRenderedImage;->minX:I

    iput v0, p0, Lcom/sun/imageio/plugins/common/SimpleRenderedImage;->tileGridXOffset:I

    invoke-virtual {p1}, Ljava/awt/image/Raster;->getMinY()I

    move-result v0

    iput v0, p0, Lcom/sun/imageio/plugins/common/SimpleRenderedImage;->minY:I

    iput v0, p0, Lcom/sun/imageio/plugins/common/SimpleRenderedImage;->tileGridYOffset:I

    invoke-virtual {p1}, Ljava/awt/image/Raster;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/sun/imageio/plugins/common/SimpleRenderedImage;->width:I

    iput v0, p0, Lcom/sun/imageio/plugins/common/SimpleRenderedImage;->tileWidth:I

    invoke-virtual {p1}, Ljava/awt/image/Raster;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/sun/imageio/plugins/common/SimpleRenderedImage;->height:I

    iput v0, p0, Lcom/sun/imageio/plugins/common/SimpleRenderedImage;->tileHeight:I

    invoke-virtual {p1}, Ljava/awt/image/Raster;->getSampleModel()Ljava/awt/image/SampleModel;

    move-result-object p1

    iput-object p1, p0, Lcom/sun/imageio/plugins/common/SimpleRenderedImage;->sampleModel:Ljava/awt/image/SampleModel;

    iput-object p2, p0, Lcom/sun/imageio/plugins/common/SimpleRenderedImage;->colorModel:Ljava/awt/image/ColorModel;

    return-void
.end method


# virtual methods
.method public getTile(II)Ljava/awt/image/Raster;
    .locals 0

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    iget-object p0, p0, Lcom/sun/imageio/plugins/common/SingleTileRenderedImage;->ras:Ljava/awt/image/Raster;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "tileX != 0 || tileY != 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
