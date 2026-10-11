.class Ljava/awt/ColorPaintContext;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/awt/PaintContext;


# instance fields
.field color:I

.field savedTile:Ljava/awt/image/WritableRaster;


# direct methods
.method public constructor <init>(ILjava/awt/image/ColorModel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Ljava/awt/ColorPaintContext;->color:I

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 0

    return-void
.end method

.method public getColorModel()Ljava/awt/image/ColorModel;
    .locals 0

    invoke-static {}, Ljava/awt/image/ColorModel;->getRGBdefault()Ljava/awt/image/ColorModel;

    move-result-object p0

    return-object p0
.end method

.method public getRGB()I
    .locals 0

    iget p0, p0, Ljava/awt/ColorPaintContext;->color:I

    return p0
.end method

.method public declared-synchronized getRaster(IIII)Ljava/awt/image/Raster;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object p1, p0, Ljava/awt/ColorPaintContext;->savedTile:Ljava/awt/image/WritableRaster;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/awt/image/Raster;->getWidth()I

    move-result p2

    if-gt p3, p2, :cond_0

    invoke-virtual {p1}, Ljava/awt/image/Raster;->getHeight()I

    move-result p2

    if-le p4, p2, :cond_1

    :cond_0
    invoke-virtual {p0}, Ljava/awt/ColorPaintContext;->getColorModel()Ljava/awt/image/ColorModel;

    move-result-object p1

    invoke-virtual {p1, p3, p4}, Ljava/awt/image/ColorModel;->createCompatibleWritableRaster(II)Ljava/awt/image/WritableRaster;

    move-result-object p1

    move-object p2, p1

    check-cast p2, Lsun/awt/image/IntegerComponentRaster;

    invoke-virtual {p2}, Lsun/awt/image/IntegerComponentRaster;->getDataStorage()[I

    move-result-object v0

    iget v1, p0, Ljava/awt/ColorPaintContext;->color:I

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    invoke-virtual {p2}, Lsun/awt/image/SunWritableRaster;->markDirty()V

    const/16 p2, 0x40

    if-gt p3, p2, :cond_1

    if-gt p4, p2, :cond_1

    iput-object p1, p0, Ljava/awt/ColorPaintContext;->savedTile:Ljava/awt/image/WritableRaster;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
