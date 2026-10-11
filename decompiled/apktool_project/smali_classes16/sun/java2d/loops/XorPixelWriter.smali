.class abstract Lsun/java2d/loops/XorPixelWriter;
.super Lsun/java2d/loops/PixelWriter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/java2d/loops/XorPixelWriter$DoubleData;,
        Lsun/java2d/loops/XorPixelWriter$FloatData;,
        Lsun/java2d/loops/XorPixelWriter$IntData;,
        Lsun/java2d/loops/XorPixelWriter$ShortData;,
        Lsun/java2d/loops/XorPixelWriter$ByteData;
    }
.end annotation


# instance fields
.field protected dstCM:Ljava/awt/image/ColorModel;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lsun/java2d/loops/PixelWriter;-><init>()V

    return-void
.end method


# virtual methods
.method public writePixel(II)V
    .locals 2

    iget-object v0, p0, Lsun/java2d/loops/PixelWriter;->dstRast:Ljava/awt/image/WritableRaster;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Ljava/awt/image/Raster;->getDataElements(IILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lsun/java2d/loops/XorPixelWriter;->xorPixel(Ljava/lang/Object;)V

    iget-object p0, p0, Lsun/java2d/loops/PixelWriter;->dstRast:Ljava/awt/image/WritableRaster;

    invoke-virtual {p0, p1, p2, v0}, Ljava/awt/image/WritableRaster;->setDataElements(IILjava/lang/Object;)V

    return-void
.end method

.method public abstract xorPixel(Ljava/lang/Object;)V
.end method
