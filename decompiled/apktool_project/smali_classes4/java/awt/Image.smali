.class public abstract Ljava/awt/Image;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final SCALE_AREA_AVERAGING:I = 0x10

.field public static final SCALE_DEFAULT:I = 0x1

.field public static final SCALE_FAST:I = 0x2

.field public static final SCALE_REPLICATE:I = 0x8

.field public static final SCALE_SMOOTH:I = 0x4

.field public static final UndefinedProperty:Ljava/lang/Object;

.field private static defaultImageCaps:Ljava/awt/ImageCapabilities;


# instance fields
.field protected accelerationPriority:F

.field surfaceManager:Lsun/awt/image/SurfaceManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/awt/ImageCapabilities;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/awt/ImageCapabilities;-><init>(Z)V

    sput-object v0, Ljava/awt/Image;->defaultImageCaps:Ljava/awt/ImageCapabilities;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Ljava/awt/Image;->UndefinedProperty:Ljava/lang/Object;

    new-instance v0, Ljava/awt/Image$1;

    invoke-direct {v0}, Ljava/awt/Image$1;-><init>()V

    invoke-static {v0}, Lsun/awt/image/SurfaceManager;->setImageAccessor(Lsun/awt/image/SurfaceManager$ImageAccessor;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Ljava/awt/Image;->accelerationPriority:F

    return-void
.end method


# virtual methods
.method public flush()V
    .locals 0

    iget-object p0, p0, Ljava/awt/Image;->surfaceManager:Lsun/awt/image/SurfaceManager;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lsun/awt/image/SurfaceManager;->flush()V

    :cond_0
    return-void
.end method

.method public getAccelerationPriority()F
    .locals 0

    iget p0, p0, Ljava/awt/Image;->accelerationPriority:F

    return p0
.end method

.method public getCapabilities(Ljava/awt/GraphicsConfiguration;)Ljava/awt/ImageCapabilities;
    .locals 0

    iget-object p0, p0, Ljava/awt/Image;->surfaceManager:Lsun/awt/image/SurfaceManager;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lsun/awt/image/SurfaceManager;->getCapabilities(Ljava/awt/GraphicsConfiguration;)Ljava/awt/ImageCapabilities;

    move-result-object p0

    return-object p0

    :cond_0
    sget-object p0, Ljava/awt/Image;->defaultImageCaps:Ljava/awt/ImageCapabilities;

    return-object p0
.end method

.method public abstract getGraphics()Ljava/awt/Graphics;
.end method

.method public abstract getHeight(Ljava/awt/image/ImageObserver;)I
.end method

.method public abstract getProperty(Ljava/lang/String;Ljava/awt/image/ImageObserver;)Ljava/lang/Object;
.end method

.method public getScaledInstance(III)Ljava/awt/Image;
    .locals 0

    and-int/lit8 p3, p3, 0x14

    if-eqz p3, :cond_0

    new-instance p3, Ljava/awt/image/AreaAveragingScaleFilter;

    invoke-direct {p3, p1, p2}, Ljava/awt/image/AreaAveragingScaleFilter;-><init>(II)V

    goto :goto_0

    :cond_0
    new-instance p3, Ljava/awt/image/ReplicateScaleFilter;

    invoke-direct {p3, p1, p2}, Ljava/awt/image/ReplicateScaleFilter;-><init>(II)V

    :goto_0
    new-instance p1, Ljava/awt/image/FilteredImageSource;

    invoke-virtual {p0}, Ljava/awt/Image;->getSource()Ljava/awt/image/ImageProducer;

    move-result-object p0

    invoke-direct {p1, p0, p3}, Ljava/awt/image/FilteredImageSource;-><init>(Ljava/awt/image/ImageProducer;Ljava/awt/image/ImageFilter;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public abstract getSource()Ljava/awt/image/ImageProducer;
.end method

.method public abstract getWidth(Ljava/awt/image/ImageObserver;)I
.end method

.method public setAccelerationPriority(F)V
    .locals 1

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-gtz v0, :cond_1

    iput p1, p0, Ljava/awt/Image;->accelerationPriority:F

    iget-object p0, p0, Ljava/awt/Image;->surfaceManager:Lsun/awt/image/SurfaceManager;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lsun/awt/image/SurfaceManager;->setAccelerationPriority(F)V

    :cond_0
    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Priority must be a value between 0 and 1, inclusive"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
