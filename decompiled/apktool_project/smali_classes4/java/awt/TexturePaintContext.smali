.class abstract Ljava/awt/TexturePaintContext;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/awt/PaintContext;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/awt/TexturePaintContext$Any;,
        Ljava/awt/TexturePaintContext$ByteFilter;,
        Ljava/awt/TexturePaintContext$Byte;,
        Ljava/awt/TexturePaintContext$Int;
    }
.end annotation


# static fields
.field private static argbRasRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Ljava/awt/image/Raster;",
            ">;"
        }
    .end annotation
.end field

.field public static argbmodel:Ljava/awt/image/ColorModel;

.field private static byteRasRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Ljava/awt/image/Raster;",
            ">;"
        }
    .end annotation
.end field

.field private static xrgbRasRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Ljava/awt/image/Raster;",
            ">;"
        }
    .end annotation
.end field

.field public static xrgbmodel:Ljava/awt/image/ColorModel;


# instance fields
.field bHeight:I

.field bWidth:I

.field colincx:I

.field colincxerr:I

.field colincy:I

.field colincyerr:I

.field colorModel:Ljava/awt/image/ColorModel;

.field incXAcross:D

.field incXDown:D

.field incYAcross:D

.field incYDown:D

.field maxWidth:I

.field outRas:Ljava/awt/image/WritableRaster;

.field rowincx:I

.field rowincxerr:I

.field rowincy:I

.field rowincyerr:I

.field xOrg:D

.field yOrg:D


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Ljava/awt/image/DirectColorModel;

    const v1, 0xff00

    const/16 v2, 0xff

    const/16 v3, 0x18

    const/high16 v4, 0xff0000

    invoke-direct {v0, v3, v4, v1, v2}, Ljava/awt/image/DirectColorModel;-><init>(IIII)V

    sput-object v0, Ljava/awt/TexturePaintContext;->xrgbmodel:Ljava/awt/image/ColorModel;

    invoke-static {}, Ljava/awt/image/ColorModel;->getRGBdefault()Ljava/awt/image/ColorModel;

    move-result-object v0

    sput-object v0, Ljava/awt/TexturePaintContext;->argbmodel:Ljava/awt/image/ColorModel;

    return-void
.end method

.method public constructor <init>(Ljava/awt/image/ColorModel;Ljava/awt/geom/AffineTransform;III)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ljava/awt/TexturePaintContext;->getInternedColorModel(Ljava/awt/image/ColorModel;)Ljava/awt/image/ColorModel;

    move-result-object p1

    iput-object p1, p0, Ljava/awt/TexturePaintContext;->colorModel:Ljava/awt/image/ColorModel;

    iput p3, p0, Ljava/awt/TexturePaintContext;->bWidth:I

    iput p4, p0, Ljava/awt/TexturePaintContext;->bHeight:I

    iput p5, p0, Ljava/awt/TexturePaintContext;->maxWidth:I

    :try_start_0
    invoke-virtual {p2}, Ljava/awt/geom/AffineTransform;->createInverse()Ljava/awt/geom/AffineTransform;

    move-result-object p2
    :try_end_0
    .catch Ljava/awt/geom/NoninvertibleTransformException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-wide/16 v0, 0x0

    invoke-virtual {p2, v0, v1, v0, v1}, Ljava/awt/geom/AffineTransform;->setToScale(DD)V

    :goto_0
    invoke-virtual {p2}, Ljava/awt/geom/AffineTransform;->getScaleX()D

    move-result-wide v0

    int-to-double v2, p3

    invoke-static {v0, v1, v2, v3}, Ljava/awt/TexturePaintContext;->mod(DD)D

    move-result-wide v0

    iput-wide v0, p0, Ljava/awt/TexturePaintContext;->incXAcross:D

    invoke-virtual {p2}, Ljava/awt/geom/AffineTransform;->getShearY()D

    move-result-wide v0

    int-to-double p3, p4

    invoke-static {v0, v1, p3, p4}, Ljava/awt/TexturePaintContext;->mod(DD)D

    move-result-wide v0

    iput-wide v0, p0, Ljava/awt/TexturePaintContext;->incYAcross:D

    invoke-virtual {p2}, Ljava/awt/geom/AffineTransform;->getShearX()D

    move-result-wide v0

    invoke-static {v0, v1, v2, v3}, Ljava/awt/TexturePaintContext;->mod(DD)D

    move-result-wide v0

    iput-wide v0, p0, Ljava/awt/TexturePaintContext;->incXDown:D

    invoke-virtual {p2}, Ljava/awt/geom/AffineTransform;->getScaleY()D

    move-result-wide v0

    invoke-static {v0, v1, p3, p4}, Ljava/awt/TexturePaintContext;->mod(DD)D

    move-result-wide p3

    iput-wide p3, p0, Ljava/awt/TexturePaintContext;->incYDown:D

    invoke-virtual {p2}, Ljava/awt/geom/AffineTransform;->getTranslateX()D

    move-result-wide p3

    iput-wide p3, p0, Ljava/awt/TexturePaintContext;->xOrg:D

    invoke-virtual {p2}, Ljava/awt/geom/AffineTransform;->getTranslateY()D

    move-result-wide p1

    iput-wide p1, p0, Ljava/awt/TexturePaintContext;->yOrg:D

    iget-wide p1, p0, Ljava/awt/TexturePaintContext;->incXAcross:D

    double-to-int p3, p1

    iput p3, p0, Ljava/awt/TexturePaintContext;->colincx:I

    iget-wide p3, p0, Ljava/awt/TexturePaintContext;->incYAcross:D

    double-to-int p3, p3

    iput p3, p0, Ljava/awt/TexturePaintContext;->colincy:I

    invoke-static {p1, p2}, Ljava/awt/TexturePaintContext;->fractAsInt(D)I

    move-result p1

    iput p1, p0, Ljava/awt/TexturePaintContext;->colincxerr:I

    iget-wide p1, p0, Ljava/awt/TexturePaintContext;->incYAcross:D

    invoke-static {p1, p2}, Ljava/awt/TexturePaintContext;->fractAsInt(D)I

    move-result p1

    iput p1, p0, Ljava/awt/TexturePaintContext;->colincyerr:I

    iget-wide p1, p0, Ljava/awt/TexturePaintContext;->incXDown:D

    double-to-int p3, p1

    iput p3, p0, Ljava/awt/TexturePaintContext;->rowincx:I

    iget-wide p3, p0, Ljava/awt/TexturePaintContext;->incYDown:D

    double-to-int p3, p3

    iput p3, p0, Ljava/awt/TexturePaintContext;->rowincy:I

    invoke-static {p1, p2}, Ljava/awt/TexturePaintContext;->fractAsInt(D)I

    move-result p1

    iput p1, p0, Ljava/awt/TexturePaintContext;->rowincxerr:I

    iget-wide p1, p0, Ljava/awt/TexturePaintContext;->incYDown:D

    invoke-static {p1, p2}, Ljava/awt/TexturePaintContext;->fractAsInt(D)I

    move-result p1

    iput p1, p0, Ljava/awt/TexturePaintContext;->rowincyerr:I

    return-void
.end method

.method public static blend([III)I
    .locals 8

    ushr-int/lit8 p1, p1, 0x13

    ushr-int/lit8 p2, p2, 0x13

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    move v3, v2

    move v4, v3

    :goto_0
    const/4 v5, 0x4

    if-ge v0, v5, :cond_2

    aget v5, p0, v0

    rsub-int p1, p1, 0x1000

    and-int/lit8 v6, v0, 0x1

    if-nez v6, :cond_0

    rsub-int p2, p2, 0x1000

    :cond_0
    mul-int v6, p1, p2

    if-eqz v6, :cond_1

    ushr-int/lit8 v7, v5, 0x18

    mul-int/2addr v7, v6

    add-int/2addr v1, v7

    ushr-int/lit8 v7, v5, 0x10

    and-int/lit16 v7, v7, 0xff

    mul-int/2addr v7, v6

    add-int/2addr v2, v7

    ushr-int/lit8 v7, v5, 0x8

    and-int/lit16 v7, v7, 0xff

    mul-int/2addr v7, v6

    add-int/2addr v3, v7

    and-int/lit16 v5, v5, 0xff

    mul-int/2addr v5, v6

    add-int/2addr v4, v5

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/high16 p0, 0x800000

    add-int/2addr v1, p0

    ushr-int/lit8 p1, v1, 0x18

    shl-int/lit8 p1, p1, 0x18

    add-int/2addr v2, p0

    ushr-int/lit8 p2, v2, 0x18

    shl-int/lit8 p2, p2, 0x10

    or-int/2addr p1, p2

    add-int/2addr v3, p0

    ushr-int/lit8 p2, v3, 0x18

    shl-int/lit8 p2, p2, 0x8

    or-int/2addr p1, p2

    add-int/2addr v4, p0

    ushr-int/lit8 p0, v4, 0x18

    or-int/2addr p0, p1

    return p0
.end method

.method public static declared-synchronized dropByteRaster(Ljava/awt/image/Raster;)V
    .locals 2

    const-class v0, Ljava/awt/TexturePaintContext;

    monitor-enter v0

    if-nez p0, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    :try_start_0
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v1, Ljava/awt/TexturePaintContext;->byteRasRef:Ljava/lang/ref/WeakReference;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized dropRaster(Ljava/awt/image/ColorModel;Ljava/awt/image/Raster;)V
    .locals 2

    const-class v0, Ljava/awt/TexturePaintContext;

    monitor-enter v0

    if-nez p1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    :try_start_0
    sget-object v1, Ljava/awt/TexturePaintContext;->xrgbmodel:Ljava/awt/image/ColorModel;

    if-ne v1, p0, :cond_1

    new-instance p0, Ljava/lang/ref/WeakReference;

    invoke-direct {p0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object p0, Ljava/awt/TexturePaintContext;->xrgbRasRef:Ljava/lang/ref/WeakReference;

    goto :goto_0

    :cond_1
    sget-object v1, Ljava/awt/TexturePaintContext;->argbmodel:Ljava/awt/image/ColorModel;

    if-ne v1, p0, :cond_2

    new-instance p0, Ljava/lang/ref/WeakReference;

    invoke-direct {p0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object p0, Ljava/awt/TexturePaintContext;->argbRasRef:Ljava/lang/ref/WeakReference;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static fractAsInt(D)I
    .locals 2

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    rem-double/2addr p0, v0

    const-wide v0, 0x41dfffffffc00000L    # 2.147483647E9

    mul-double/2addr p0, v0

    double-to-int p0, p0

    return p0
.end method

.method public static getContext(Ljava/awt/image/BufferedImage;Ljava/awt/geom/AffineTransform;Ljava/awt/RenderingHints;Ljava/awt/Rectangle;)Ljava/awt/PaintContext;
    .locals 8

    invoke-virtual {p0}, Ljava/awt/image/BufferedImage;->getRaster()Ljava/awt/image/WritableRaster;

    move-result-object v1

    invoke-virtual {p0}, Ljava/awt/image/BufferedImage;->getColorModel()Ljava/awt/image/ColorModel;

    move-result-object v4

    iget v6, p3, Ljava/awt/Rectangle;->width:I

    sget-object p0, Ljava/awt/RenderingHints;->KEY_INTERPOLATION:Ljava/awt/RenderingHints$Key;

    invoke-virtual {p2, p0}, Ljava/awt/RenderingHints;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const/4 p3, 0x0

    const/4 v0, 0x1

    if-nez p0, :cond_0

    sget-object p0, Ljava/awt/RenderingHints;->KEY_RENDERING:Ljava/awt/RenderingHints$Key;

    invoke-virtual {p2, p0}, Ljava/awt/RenderingHints;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    sget-object p2, Ljava/awt/RenderingHints;->VALUE_RENDER_QUALITY:Ljava/lang/Object;

    if-ne p0, p2, :cond_1

    goto :goto_0

    :cond_0
    sget-object p2, Ljava/awt/RenderingHints;->VALUE_INTERPOLATION_NEAREST_NEIGHBOR:Ljava/lang/Object;

    if-eq p0, p2, :cond_1

    :goto_0
    move v7, v0

    goto :goto_1

    :cond_1
    move v7, p3

    :goto_1
    instance-of p0, v1, Lsun/awt/image/IntegerInterleavedRaster;

    if-eqz p0, :cond_3

    if-eqz v7, :cond_2

    invoke-static {v4}, Ljava/awt/TexturePaintContext;->isFilterableDCM(Ljava/awt/image/ColorModel;)Z

    move-result p0

    if-eqz p0, :cond_3

    :cond_2
    move-object v3, v1

    check-cast v3, Lsun/awt/image/IntegerInterleavedRaster;

    invoke-virtual {v3}, Ljava/awt/image/Raster;->getNumDataElements()I

    move-result p0

    if-ne p0, v0, :cond_5

    invoke-virtual {v3}, Lsun/awt/image/IntegerInterleavedRaster;->getPixelStride()I

    move-result p0

    if-ne p0, v0, :cond_5

    new-instance p0, Ljava/awt/TexturePaintContext$Int;

    move-object v2, p0

    move-object v5, p1

    invoke-direct/range {v2 .. v7}, Ljava/awt/TexturePaintContext$Int;-><init>(Lsun/awt/image/IntegerInterleavedRaster;Ljava/awt/image/ColorModel;Ljava/awt/geom/AffineTransform;IZ)V

    return-object p0

    :cond_3
    instance-of p0, v1, Lsun/awt/image/ByteInterleavedRaster;

    if-eqz p0, :cond_5

    move-object p0, v1

    check-cast p0, Lsun/awt/image/ByteInterleavedRaster;

    invoke-virtual {p0}, Ljava/awt/image/Raster;->getNumDataElements()I

    move-result p2

    if-ne p2, v0, :cond_5

    invoke-virtual {p0}, Lsun/awt/image/ByteInterleavedRaster;->getPixelStride()I

    move-result p2

    if-ne p2, v0, :cond_5

    if-eqz v7, :cond_4

    invoke-static {v4}, Ljava/awt/TexturePaintContext;->isFilterableICM(Ljava/awt/image/ColorModel;)Z

    move-result p2

    if-eqz p2, :cond_5

    new-instance p2, Ljava/awt/TexturePaintContext$ByteFilter;

    invoke-direct {p2, p0, v4, p1, v6}, Ljava/awt/TexturePaintContext$ByteFilter;-><init>(Lsun/awt/image/ByteInterleavedRaster;Ljava/awt/image/ColorModel;Ljava/awt/geom/AffineTransform;I)V

    return-object p2

    :cond_4
    new-instance p2, Ljava/awt/TexturePaintContext$Byte;

    invoke-direct {p2, p0, v4, p1, v6}, Ljava/awt/TexturePaintContext$Byte;-><init>(Lsun/awt/image/ByteInterleavedRaster;Ljava/awt/image/ColorModel;Ljava/awt/geom/AffineTransform;I)V

    return-object p2

    :cond_5
    new-instance p0, Ljava/awt/TexturePaintContext$Any;

    move-object v0, p0

    move-object v2, v4

    move-object v3, p1

    move v4, v6

    move v5, v7

    invoke-direct/range {v0 .. v5}, Ljava/awt/TexturePaintContext$Any;-><init>(Ljava/awt/image/WritableRaster;Ljava/awt/image/ColorModel;Ljava/awt/geom/AffineTransform;IZ)V

    return-object p0
.end method

.method public static getInternedColorModel(Ljava/awt/image/ColorModel;)Ljava/awt/image/ColorModel;
    .locals 1

    sget-object v0, Ljava/awt/TexturePaintContext;->xrgbmodel:Ljava/awt/image/ColorModel;

    if-eq v0, p0, :cond_3

    invoke-virtual {v0, p0}, Ljava/awt/image/ColorModel;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    sget-object v0, Ljava/awt/TexturePaintContext;->argbmodel:Ljava/awt/image/ColorModel;

    if-eq v0, p0, :cond_2

    invoke-virtual {v0, p0}, Ljava/awt/image/ColorModel;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    return-object p0

    :cond_2
    :goto_0
    sget-object p0, Ljava/awt/TexturePaintContext;->argbmodel:Ljava/awt/image/ColorModel;

    return-object p0

    :cond_3
    :goto_1
    sget-object p0, Ljava/awt/TexturePaintContext;->xrgbmodel:Ljava/awt/image/ColorModel;

    return-object p0
.end method

.method public static isFilterableDCM(Ljava/awt/image/ColorModel;)Z
    .locals 3

    instance-of v0, p0, Ljava/awt/image/DirectColorModel;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p0, Ljava/awt/image/DirectColorModel;

    invoke-virtual {p0}, Ljava/awt/image/DirectColorModel;->getAlphaMask()I

    move-result v0

    const/4 v2, 0x1

    invoke-static {v0, v2}, Ljava/awt/TexturePaintContext;->isMaskOK(IZ)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/awt/image/DirectColorModel;->getRedMask()I

    move-result v0

    invoke-static {v0, v1}, Ljava/awt/TexturePaintContext;->isMaskOK(IZ)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/awt/image/DirectColorModel;->getGreenMask()I

    move-result v0

    invoke-static {v0, v1}, Ljava/awt/TexturePaintContext;->isMaskOK(IZ)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/awt/image/DirectColorModel;->getBlueMask()I

    move-result p0

    invoke-static {p0, v1}, Ljava/awt/TexturePaintContext;->isMaskOK(IZ)Z

    move-result p0

    if-eqz p0, :cond_0

    move v1, v2

    :cond_0
    return v1
.end method

.method public static isFilterableICM(Ljava/awt/image/ColorModel;)Z
    .locals 1

    instance-of v0, p0, Ljava/awt/image/IndexColorModel;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/awt/image/IndexColorModel;

    invoke-virtual {p0}, Ljava/awt/image/IndexColorModel;->getMapSize()I

    move-result p0

    const/16 v0, 0x100

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isMaskOK(IZ)Z
    .locals 1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const/16 p1, 0xff

    if-eq p0, p1, :cond_2

    const p1, 0xff00

    if-eq p0, p1, :cond_2

    const/high16 p1, 0xff0000

    if-eq p0, p1, :cond_2

    const/high16 p1, -0x1000000

    if-ne p0, p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :cond_2
    :goto_0
    return v0
.end method

.method public static declared-synchronized makeByteRaster(Ljava/awt/image/Raster;II)Ljava/awt/image/WritableRaster;
    .locals 3

    const-class v0, Ljava/awt/TexturePaintContext;

    monitor-enter v0

    :try_start_0
    sget-object v1, Ljava/awt/TexturePaintContext;->byteRasRef:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/awt/image/WritableRaster;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/awt/image/Raster;->getWidth()I

    move-result v2

    if-lt v2, p1, :cond_0

    invoke-virtual {v1}, Ljava/awt/image/Raster;->getHeight()I

    move-result v2

    if-lt v2, p2, :cond_0

    const/4 p0, 0x0

    sput-object p0, Ljava/awt/TexturePaintContext;->byteRasRef:Ljava/lang/ref/WeakReference;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :cond_0
    const/16 v1, 0x20

    if-gt p1, v1, :cond_1

    if-gt p2, v1, :cond_1

    move p1, v1

    move p2, p1

    :cond_1
    :try_start_1
    invoke-virtual {p0, p1, p2}, Ljava/awt/image/Raster;->createCompatibleWritableRaster(II)Ljava/awt/image/WritableRaster;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized makeRaster(Ljava/awt/image/ColorModel;Ljava/awt/image/Raster;II)Ljava/awt/image/WritableRaster;
    .locals 5

    const-class v0, Ljava/awt/TexturePaintContext;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Ljava/awt/TexturePaintContext;->xrgbmodel:Ljava/awt/image/ColorModel;

    const/4 v2, 0x0

    const/16 v3, 0x20

    if-ne v1, p0, :cond_1

    .line 2
    sget-object v1, Ljava/awt/TexturePaintContext;->xrgbRasRef:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/awt/image/WritableRaster;

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v1}, Ljava/awt/image/Raster;->getWidth()I

    move-result v4

    if-lt v4, p2, :cond_0

    invoke-virtual {v1}, Ljava/awt/image/Raster;->getHeight()I

    move-result v4

    if-lt v4, p3, :cond_0

    .line 5
    sput-object v2, Ljava/awt/TexturePaintContext;->xrgbRasRef:Ljava/lang/ref/WeakReference;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    monitor-exit v0

    return-object v1

    :cond_0
    if-gt p2, v3, :cond_3

    if-gt p3, v3, :cond_3

    :goto_0
    move p2, v3

    move p3, p2

    goto :goto_1

    .line 7
    :cond_1
    :try_start_1
    sget-object v1, Ljava/awt/TexturePaintContext;->argbmodel:Ljava/awt/image/ColorModel;

    if-ne v1, p0, :cond_3

    .line 8
    sget-object v1, Ljava/awt/TexturePaintContext;->argbRasRef:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_2

    .line 9
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/awt/image/WritableRaster;

    if-eqz v1, :cond_2

    .line 10
    invoke-virtual {v1}, Ljava/awt/image/Raster;->getWidth()I

    move-result v4

    if-lt v4, p2, :cond_2

    invoke-virtual {v1}, Ljava/awt/image/Raster;->getHeight()I

    move-result v4

    if-lt v4, p3, :cond_2

    .line 11
    sput-object v2, Ljava/awt/TexturePaintContext;->argbRasRef:Ljava/lang/ref/WeakReference;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 12
    monitor-exit v0

    return-object v1

    :cond_2
    if-gt p2, v3, :cond_3

    if-gt p3, v3, :cond_3

    goto :goto_0

    :cond_3
    :goto_1
    if-eqz p1, :cond_4

    .line 13
    :try_start_2
    invoke-virtual {p1, p2, p3}, Ljava/awt/image/Raster;->createCompatibleWritableRaster(II)Ljava/awt/image/WritableRaster;

    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v0

    return-object p0

    .line 14
    :cond_4
    :try_start_3
    invoke-virtual {p0, p2, p3}, Ljava/awt/image/ColorModel;->createCompatibleWritableRaster(II)Ljava/awt/image/WritableRaster;

    move-result-object p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static mod(DD)D
    .locals 3

    rem-double/2addr p0, p2

    const-wide/16 v0, 0x0

    cmpg-double v2, p0, v0

    if-gez v2, :cond_0

    add-double/2addr p0, p2

    cmpl-double p2, p0, p2

    if-ltz p2, :cond_0

    move-wide p0, v0

    :cond_0
    return-wide p0
.end method


# virtual methods
.method public dispose()V
    .locals 1

    iget-object v0, p0, Ljava/awt/TexturePaintContext;->colorModel:Ljava/awt/image/ColorModel;

    iget-object p0, p0, Ljava/awt/TexturePaintContext;->outRas:Ljava/awt/image/WritableRaster;

    invoke-static {v0, p0}, Ljava/awt/TexturePaintContext;->dropRaster(Ljava/awt/image/ColorModel;Ljava/awt/image/Raster;)V

    return-void
.end method

.method public getColorModel()Ljava/awt/image/ColorModel;
    .locals 0

    iget-object p0, p0, Ljava/awt/TexturePaintContext;->colorModel:Ljava/awt/image/ColorModel;

    return-object p0
.end method

.method public getRaster(IIII)Ljava/awt/image/Raster;
    .locals 17

    move-object/from16 v6, p0

    move/from16 v5, p3

    move/from16 v0, p4

    iget-object v1, v6, Ljava/awt/TexturePaintContext;->outRas:Ljava/awt/image/WritableRaster;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/awt/image/Raster;->getWidth()I

    move-result v1

    if-lt v1, v5, :cond_0

    iget-object v1, v6, Ljava/awt/TexturePaintContext;->outRas:Ljava/awt/image/WritableRaster;

    invoke-virtual {v1}, Ljava/awt/image/Raster;->getHeight()I

    move-result v1

    if-ge v1, v0, :cond_2

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget v1, v6, Ljava/awt/TexturePaintContext;->maxWidth:I

    invoke-static {v5, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_0

    :cond_1
    move v1, v5

    :goto_0
    invoke-virtual {v6, v1, v0}, Ljava/awt/TexturePaintContext;->makeRaster(II)Ljava/awt/image/WritableRaster;

    move-result-object v1

    iput-object v1, v6, Ljava/awt/TexturePaintContext;->outRas:Ljava/awt/image/WritableRaster;

    :cond_2
    iget-wide v1, v6, Ljava/awt/TexturePaintContext;->xOrg:D

    move/from16 v3, p1

    int-to-double v3, v3

    iget-wide v7, v6, Ljava/awt/TexturePaintContext;->incXAcross:D

    mul-double/2addr v7, v3

    add-double/2addr v1, v7

    move/from16 v7, p2

    int-to-double v7, v7

    iget-wide v9, v6, Ljava/awt/TexturePaintContext;->incXDown:D

    mul-double/2addr v9, v7

    add-double/2addr v1, v9

    iget v9, v6, Ljava/awt/TexturePaintContext;->bWidth:I

    int-to-double v9, v9

    invoke-static {v1, v2, v9, v10}, Ljava/awt/TexturePaintContext;->mod(DD)D

    move-result-wide v9

    iget-wide v1, v6, Ljava/awt/TexturePaintContext;->yOrg:D

    iget-wide v11, v6, Ljava/awt/TexturePaintContext;->incYAcross:D

    mul-double/2addr v3, v11

    add-double/2addr v1, v3

    iget-wide v3, v6, Ljava/awt/TexturePaintContext;->incYDown:D

    mul-double/2addr v7, v3

    add-double/2addr v1, v7

    iget v3, v6, Ljava/awt/TexturePaintContext;->bHeight:I

    int-to-double v3, v3

    invoke-static {v1, v2, v3, v4}, Ljava/awt/TexturePaintContext;->mod(DD)D

    move-result-wide v7

    double-to-int v1, v9

    double-to-int v2, v7

    invoke-static {v9, v10}, Ljava/awt/TexturePaintContext;->fractAsInt(D)I

    move-result v3

    invoke-static {v7, v8}, Ljava/awt/TexturePaintContext;->fractAsInt(D)I

    move-result v4

    iget v7, v6, Ljava/awt/TexturePaintContext;->bWidth:I

    iget v8, v6, Ljava/awt/TexturePaintContext;->bHeight:I

    iget v9, v6, Ljava/awt/TexturePaintContext;->colincx:I

    iget v10, v6, Ljava/awt/TexturePaintContext;->colincxerr:I

    iget v11, v6, Ljava/awt/TexturePaintContext;->colincy:I

    iget v12, v6, Ljava/awt/TexturePaintContext;->colincyerr:I

    iget v13, v6, Ljava/awt/TexturePaintContext;->rowincx:I

    iget v14, v6, Ljava/awt/TexturePaintContext;->rowincxerr:I

    iget v15, v6, Ljava/awt/TexturePaintContext;->rowincy:I

    iget v0, v6, Ljava/awt/TexturePaintContext;->rowincyerr:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    move/from16 v5, p3

    move/from16 v6, p4

    invoke-virtual/range {v0 .. v16}, Ljava/awt/TexturePaintContext;->setRaster(IIIIIIIIIIIIIIII)V

    iget-object v1, v0, Ljava/awt/TexturePaintContext;->outRas:Ljava/awt/image/WritableRaster;

    invoke-static {v1}, Lsun/awt/image/SunWritableRaster;->markDirty(Ljava/awt/image/WritableRaster;)V

    iget-object v0, v0, Ljava/awt/TexturePaintContext;->outRas:Ljava/awt/image/WritableRaster;

    return-object v0
.end method

.method public abstract makeRaster(II)Ljava/awt/image/WritableRaster;
.end method

.method public abstract setRaster(IIIIIIIIIIIIIIII)V
.end method
