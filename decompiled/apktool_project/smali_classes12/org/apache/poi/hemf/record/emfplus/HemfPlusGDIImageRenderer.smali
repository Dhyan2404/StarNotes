.class public Lorg/apache/poi/hemf/record/emfplus/HemfPlusGDIImageRenderer;
.super Lorg/apache/poi/sl/draw/BitmapImageRenderer;
.source "SourceFile"


# instance fields
.field private height:I

.field private pixelFormat:Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusPixelFormat;

.field private stride:I

.field private width:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/sl/draw/BitmapImageRenderer;-><init>()V

    return-void
.end method


# virtual methods
.method public canRender(Ljava/lang/String;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public getHeight()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusGDIImageRenderer;->height:I

    return p0
.end method

.method public getPixelFormat()Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusPixelFormat;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusGDIImageRenderer;->pixelFormat:Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusPixelFormat;

    return-object p0
.end method

.method public getStride()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusGDIImageRenderer;->stride:I

    return p0
.end method

.method public getWidth()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusGDIImageRenderer;->width:I

    return p0
.end method

.method public loadImage(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lorg/apache/poi/util/IOUtils;->toByteArray(Ljava/io/InputStream;)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusGDIImageRenderer;->readGDIImage([B)Ljava/awt/image/BufferedImage;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/sl/draw/BitmapImageRenderer;->img:Ljava/awt/image/BufferedImage;

    return-void
.end method

.method public loadImage([BLjava/lang/String;)V
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusGDIImageRenderer;->readGDIImage([B)Ljava/awt/image/BufferedImage;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/sl/draw/BitmapImageRenderer;->img:Ljava/awt/image/BufferedImage;

    return-void
.end method

.method public readGDIImage([B)Ljava/awt/image/BufferedImage;
    .locals 12

    sget-object v0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusGDIImageRenderer$1;->$SwitchMap$org$apache$poi$hemf$record$emfplus$HemfPlusImage$EmfPlusPixelFormat:[I

    iget-object v1, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusGDIImageRenderer;->pixelFormat:Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusPixelFormat;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/16 v4, 0x8

    if-eq v0, v3, :cond_1

    if-ne v0, v2, :cond_0

    filled-new-array {v4, v4, v4}, [I

    move-result-object v0

    filled-new-array {v2, v3, v1}, [I

    move-result-object v1

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "not yet implemented"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    filled-new-array {v4, v4, v4, v4}, [I

    move-result-object v0

    const/4 v4, 0x3

    filled-new-array {v2, v3, v1, v4}, [I

    move-result-object v1

    :goto_0
    move-object v4, v0

    move-object v11, v1

    const/16 v0, 0x3e8

    invoke-static {v0}, Ljava/awt/color/ColorSpace;->getInstance(I)Ljava/awt/color/ColorSpace;

    move-result-object v3

    new-instance v0, Ljava/awt/image/ComponentColorModel;

    iget-object v1, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusGDIImageRenderer;->pixelFormat:Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusPixelFormat;

    invoke-virtual {v1}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusPixelFormat;->isAlpha()Z

    move-result v5

    iget-object v1, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusGDIImageRenderer;->pixelFormat:Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusPixelFormat;

    invoke-virtual {v1}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusPixelFormat;->isPreMultiplied()Z

    move-result v6

    const/4 v7, 0x3

    const/4 v8, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Ljava/awt/image/ComponentColorModel;-><init>(Ljava/awt/color/ColorSpace;[IZZII)V

    new-instance v1, Ljava/awt/image/PixelInterleavedSampleModel;

    invoke-virtual {v0}, Ljava/awt/image/ColorModel;->getTransferType()I

    move-result v6

    iget v7, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusGDIImageRenderer;->width:I

    iget v8, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusGDIImageRenderer;->height:I

    invoke-virtual {v0}, Ljava/awt/image/ColorModel;->getNumComponents()I

    move-result v9

    iget v10, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusGDIImageRenderer;->stride:I

    move-object v5, v1

    invoke-direct/range {v5 .. v11}, Ljava/awt/image/PixelInterleavedSampleModel;-><init>(IIIII[I)V

    new-instance p0, Ljava/awt/image/DataBufferByte;

    array-length v2, p1

    invoke-direct {p0, p1, v2}, Ljava/awt/image/DataBufferByte;-><init>([BI)V

    const/4 p1, 0x0

    invoke-static {v1, p0, p1}, Ljava/awt/image/Raster;->createRaster(Ljava/awt/image/SampleModel;Ljava/awt/image/DataBuffer;Ljava/awt/Point;)Ljava/awt/image/Raster;

    move-result-object p0

    check-cast p0, Ljava/awt/image/WritableRaster;

    new-instance v1, Ljava/awt/image/BufferedImage;

    invoke-virtual {v0}, Ljava/awt/image/ColorModel;->isAlphaPremultiplied()Z

    move-result v2

    invoke-direct {v1, v0, p0, v2, p1}, Ljava/awt/image/BufferedImage;-><init>(Ljava/awt/image/ColorModel;Ljava/awt/image/WritableRaster;ZLjava/util/Hashtable;)V

    return-object v1
.end method

.method public setHeight(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusGDIImageRenderer;->height:I

    return-void
.end method

.method public setPixelFormat(Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusPixelFormat;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusGDIImageRenderer;->pixelFormat:Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusPixelFormat;

    return-void
.end method

.method public setStride(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusGDIImageRenderer;->stride:I

    return-void
.end method

.method public setWidth(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusGDIImageRenderer;->width:I

    return-void
.end method
