.class Lsun/java2d/loops/XorDrawPathANY;
.super Lsun/java2d/loops/DrawPath;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 3

    sget-object v0, Lsun/java2d/loops/SurfaceType;->AnyColor:Lsun/java2d/loops/SurfaceType;

    sget-object v1, Lsun/java2d/loops/CompositeType;->Xor:Lsun/java2d/loops/CompositeType;

    sget-object v2, Lsun/java2d/loops/SurfaceType;->Any:Lsun/java2d/loops/SurfaceType;

    invoke-direct {p0, v0, v1, v2}, Lsun/java2d/loops/DrawPath;-><init>(Lsun/java2d/loops/SurfaceType;Lsun/java2d/loops/CompositeType;Lsun/java2d/loops/SurfaceType;)V

    return-void
.end method


# virtual methods
.method public DrawPath(Lsun/java2d/SunGraphics2D;Lsun/java2d/SurfaceData;IILjava/awt/geom/Path2D$Float;)V
    .locals 2

    invoke-static {p1, p2}, Lsun/java2d/loops/GeneralRenderer;->createXorPixelWriter(Lsun/java2d/SunGraphics2D;Lsun/java2d/SurfaceData;)Lsun/java2d/loops/PixelWriter;

    move-result-object p0

    new-instance v0, Lsun/java2d/loops/PixelWriterDrawHandler;

    invoke-virtual {p1}, Lsun/java2d/SunGraphics2D;->getCompClip()Lsun/java2d/pipe/Region;

    move-result-object v1

    iget p1, p1, Lsun/java2d/SunGraphics2D;->strokeHint:I

    invoke-direct {v0, p2, p0, v1, p1}, Lsun/java2d/loops/PixelWriterDrawHandler;-><init>(Lsun/java2d/SurfaceData;Lsun/java2d/loops/PixelWriter;Lsun/java2d/pipe/Region;I)V

    invoke-static {v0, p5, p3, p4}, Lsun/java2d/loops/ProcessPath;->drawPath(Lsun/java2d/loops/ProcessPath$DrawHandler;Ljava/awt/geom/Path2D$Float;II)Z

    return-void
.end method
