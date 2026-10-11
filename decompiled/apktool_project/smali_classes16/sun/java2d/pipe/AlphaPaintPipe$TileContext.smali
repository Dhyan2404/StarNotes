.class Lsun/java2d/pipe/AlphaPaintPipe$TileContext;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/java2d/pipe/AlphaPaintPipe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TileContext"
.end annotation


# instance fields
.field dstData:Lsun/java2d/SurfaceData;

.field lastBlit:Lsun/java2d/loops/Blit;

.field lastData:Ljava/lang/ref/WeakReference;

.field lastMask:Lsun/java2d/loops/MaskBlit;

.field lastRaster:Ljava/lang/ref/WeakReference;

.field paintCtxt:Ljava/awt/PaintContext;

.field paintModel:Ljava/awt/image/ColorModel;

.field sunG2D:Lsun/java2d/SunGraphics2D;


# direct methods
.method public constructor <init>(Lsun/java2d/SunGraphics2D;Ljava/awt/PaintContext;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsun/java2d/pipe/AlphaPaintPipe$TileContext;->sunG2D:Lsun/java2d/SunGraphics2D;

    iput-object p2, p0, Lsun/java2d/pipe/AlphaPaintPipe$TileContext;->paintCtxt:Ljava/awt/PaintContext;

    invoke-interface {p2}, Ljava/awt/PaintContext;->getColorModel()Ljava/awt/image/ColorModel;

    move-result-object p2

    iput-object p2, p0, Lsun/java2d/pipe/AlphaPaintPipe$TileContext;->paintModel:Ljava/awt/image/ColorModel;

    invoke-virtual {p1}, Lsun/java2d/SunGraphics2D;->getSurfaceData()Lsun/java2d/SurfaceData;

    move-result-object p1

    iput-object p1, p0, Lsun/java2d/pipe/AlphaPaintPipe$TileContext;->dstData:Lsun/java2d/SurfaceData;

    const-class p1, Lsun/java2d/pipe/AlphaPaintPipe;

    monitor-enter p1

    :try_start_0
    sget-object p2, Lsun/java2d/pipe/AlphaPaintPipe;->cachedLastColorModel:Ljava/lang/ref/WeakReference;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p2

    iget-object v0, p0, Lsun/java2d/pipe/AlphaPaintPipe$TileContext;->paintModel:Ljava/awt/image/ColorModel;

    if-ne p2, v0, :cond_0

    sget-object p2, Lsun/java2d/pipe/AlphaPaintPipe;->cachedLastRaster:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Lsun/java2d/pipe/AlphaPaintPipe$TileContext;->lastRaster:Ljava/lang/ref/WeakReference;

    sget-object p2, Lsun/java2d/pipe/AlphaPaintPipe;->cachedLastData:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Lsun/java2d/pipe/AlphaPaintPipe$TileContext;->lastData:Ljava/lang/ref/WeakReference;

    :cond_0
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
