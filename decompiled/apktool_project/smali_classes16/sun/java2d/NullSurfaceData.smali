.class public Lsun/java2d/NullSurfaceData;
.super Lsun/java2d/SurfaceData;
.source "SourceFile"


# static fields
.field private static final nullpipe:Lsun/java2d/pipe/NullPipe;

.field public static final theInstance:Lsun/java2d/SurfaceData;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lsun/java2d/NullSurfaceData;

    invoke-direct {v0}, Lsun/java2d/NullSurfaceData;-><init>()V

    sput-object v0, Lsun/java2d/NullSurfaceData;->theInstance:Lsun/java2d/SurfaceData;

    new-instance v0, Lsun/java2d/pipe/NullPipe;

    invoke-direct {v0}, Lsun/java2d/pipe/NullPipe;-><init>()V

    sput-object v0, Lsun/java2d/NullSurfaceData;->nullpipe:Lsun/java2d/pipe/NullPipe;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    sget-object v0, Lsun/java2d/StateTrackable$State;->IMMUTABLE:Lsun/java2d/StateTrackable$State;

    sget-object v1, Lsun/java2d/loops/SurfaceType;->Any:Lsun/java2d/loops/SurfaceType;

    invoke-static {}, Ljava/awt/image/ColorModel;->getRGBdefault()Ljava/awt/image/ColorModel;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lsun/java2d/SurfaceData;-><init>(Lsun/java2d/StateTrackable$State;Lsun/java2d/loops/SurfaceType;Ljava/awt/image/ColorModel;)V

    return-void
.end method


# virtual methods
.method public checkCustomComposite()V
    .locals 0

    return-void
.end method

.method public copyArea(Lsun/java2d/SunGraphics2D;IIIIII)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public getBounds()Ljava/awt/Rectangle;
    .locals 0

    new-instance p0, Ljava/awt/Rectangle;

    invoke-direct {p0}, Ljava/awt/Rectangle;-><init>()V

    return-object p0
.end method

.method public getDestination()Ljava/lang/Object;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getDeviceConfiguration()Ljava/awt/GraphicsConfiguration;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getRaster(IIII)Ljava/awt/image/Raster;
    .locals 0

    new-instance p0, Lsun/java2d/InvalidPipeException;

    const-string p1, "should be NOP"

    invoke-direct {p0, p1}, Lsun/java2d/InvalidPipeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getReplacement()Lsun/java2d/SurfaceData;
    .locals 0

    return-object p0
.end method

.method public invalidate()V
    .locals 0

    return-void
.end method

.method public pixelFor(I)I
    .locals 0

    return p1
.end method

.method public rgbFor(I)I
    .locals 0

    return p1
.end method

.method public useTightBBoxes()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public validatePipe(Lsun/java2d/SunGraphics2D;)V
    .locals 0

    sget-object p0, Lsun/java2d/NullSurfaceData;->nullpipe:Lsun/java2d/pipe/NullPipe;

    iput-object p0, p1, Lsun/java2d/SunGraphics2D;->drawpipe:Lsun/java2d/pipe/PixelDrawPipe;

    iput-object p0, p1, Lsun/java2d/SunGraphics2D;->fillpipe:Lsun/java2d/pipe/PixelFillPipe;

    iput-object p0, p1, Lsun/java2d/SunGraphics2D;->shapepipe:Lsun/java2d/pipe/ShapeDrawPipe;

    iput-object p0, p1, Lsun/java2d/SunGraphics2D;->textpipe:Lsun/java2d/pipe/TextPipe;

    iput-object p0, p1, Lsun/java2d/SunGraphics2D;->imagepipe:Lsun/java2d/pipe/DrawImagePipe;

    return-void
.end method
