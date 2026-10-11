.class Lcom/sun/imageio/plugins/tiff/EmptyImage;
.super Lcom/sun/imageio/plugins/common/SimpleRenderedImage;
.source "SourceFile"


# direct methods
.method public constructor <init>(IIIIIIIILjava/awt/image/SampleModel;Ljava/awt/image/ColorModel;)V
    .locals 0

    invoke-direct {p0}, Lcom/sun/imageio/plugins/common/SimpleRenderedImage;-><init>()V

    iput p1, p0, Lcom/sun/imageio/plugins/common/SimpleRenderedImage;->minX:I

    iput p2, p0, Lcom/sun/imageio/plugins/common/SimpleRenderedImage;->minY:I

    iput p3, p0, Lcom/sun/imageio/plugins/common/SimpleRenderedImage;->width:I

    iput p4, p0, Lcom/sun/imageio/plugins/common/SimpleRenderedImage;->height:I

    iput p5, p0, Lcom/sun/imageio/plugins/common/SimpleRenderedImage;->tileGridXOffset:I

    iput p6, p0, Lcom/sun/imageio/plugins/common/SimpleRenderedImage;->tileGridYOffset:I

    iput p7, p0, Lcom/sun/imageio/plugins/common/SimpleRenderedImage;->tileWidth:I

    iput p8, p0, Lcom/sun/imageio/plugins/common/SimpleRenderedImage;->tileHeight:I

    iput-object p9, p0, Lcom/sun/imageio/plugins/common/SimpleRenderedImage;->sampleModel:Ljava/awt/image/SampleModel;

    iput-object p10, p0, Lcom/sun/imageio/plugins/common/SimpleRenderedImage;->colorModel:Ljava/awt/image/ColorModel;

    return-void
.end method


# virtual methods
.method public getTile(II)Ljava/awt/image/Raster;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method
