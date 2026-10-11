.class public Lcom/trans/android/BufferedImageWrapper;
.super Ljava/awt/image/BufferedImage;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field private androidImage:Lcom/trans/android/AndroidImage;

.field private renderContext:Ljava/awt/image/renderable/RenderContext;


# direct methods
.method public constructor <init>(Lcom/trans/android/AndroidImage;)V
    .locals 3

    invoke-virtual {p1}, Lcom/trans/android/AndroidImage;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Lcom/trans/android/AndroidImage;->getHeight()I

    move-result v1

    invoke-virtual {p1}, Lcom/trans/android/AndroidImage;->getType()I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Ljava/awt/image/BufferedImage;-><init>(III)V

    iput-object p1, p0, Lcom/trans/android/BufferedImageWrapper;->androidImage:Lcom/trans/android/AndroidImage;

    return-void
.end method


# virtual methods
.method public clearAndroidImage()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/trans/android/BufferedImageWrapper;->androidImage:Lcom/trans/android/AndroidImage;

    return-void
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/trans/android/BufferedImageWrapper;->androidImage:Lcom/trans/android/AndroidImage;

    invoke-static {v0}, Lcom/onyx/common/util/CloseUtils;->close(Ljava/io/Closeable;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/trans/android/BufferedImageWrapper;->androidImage:Lcom/trans/android/AndroidImage;

    iput-object v0, p0, Lcom/trans/android/BufferedImageWrapper;->renderContext:Ljava/awt/image/renderable/RenderContext;

    return-void
.end method

.method public finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/trans/android/BufferedImageWrapper;->close()V

    return-void
.end method

.method public getAndroidImage()Lcom/trans/android/AndroidImage;
    .locals 0

    iget-object p0, p0, Lcom/trans/android/BufferedImageWrapper;->androidImage:Lcom/trans/android/AndroidImage;

    return-object p0
.end method

.method public getColorModel()Ljava/awt/image/ColorModel;
    .locals 0

    iget-object p0, p0, Lcom/trans/android/BufferedImageWrapper;->androidImage:Lcom/trans/android/AndroidImage;

    invoke-virtual {p0}, Lcom/trans/android/AndroidImage;->getColorModel()Ljava/awt/image/ColorModel;

    move-result-object p0

    return-object p0
.end method

.method public getData()Ljava/awt/image/Raster;
    .locals 0

    iget-object p0, p0, Lcom/trans/android/BufferedImageWrapper;->androidImage:Lcom/trans/android/AndroidImage;

    invoke-virtual {p0}, Lcom/trans/android/AndroidImage;->getData()Ljava/awt/image/Raster;

    move-result-object p0

    return-object p0
.end method

.method public getRaster()Ljava/awt/image/WritableRaster;
    .locals 0

    iget-object p0, p0, Lcom/trans/android/BufferedImageWrapper;->androidImage:Lcom/trans/android/AndroidImage;

    invoke-virtual {p0}, Lcom/trans/android/AndroidImage;->getData()Ljava/awt/image/Raster;

    move-result-object p0

    check-cast p0, Ljava/awt/image/WritableRaster;

    return-object p0
.end method

.method public getRenderContext()Ljava/awt/image/renderable/RenderContext;
    .locals 0

    iget-object p0, p0, Lcom/trans/android/BufferedImageWrapper;->renderContext:Ljava/awt/image/renderable/RenderContext;

    return-object p0
.end method

.method public getType()I
    .locals 0

    iget-object p0, p0, Lcom/trans/android/BufferedImageWrapper;->androidImage:Lcom/trans/android/AndroidImage;

    invoke-virtual {p0}, Lcom/trans/android/AndroidImage;->getType()I

    move-result p0

    return p0
.end method

.method public setRenderContext(Ljava/awt/image/renderable/RenderContext;)Lcom/trans/android/BufferedImageWrapper;
    .locals 0

    iput-object p1, p0, Lcom/trans/android/BufferedImageWrapper;->renderContext:Ljava/awt/image/renderable/RenderContext;

    return-object p0
.end method
