.class Lsun/java2d/loops/SetDrawRectANY;
.super Lsun/java2d/loops/DrawRect;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 3

    sget-object v0, Lsun/java2d/loops/SurfaceType;->AnyColor:Lsun/java2d/loops/SurfaceType;

    sget-object v1, Lsun/java2d/loops/CompositeType;->SrcNoEa:Lsun/java2d/loops/CompositeType;

    sget-object v2, Lsun/java2d/loops/SurfaceType;->Any:Lsun/java2d/loops/SurfaceType;

    invoke-direct {p0, v0, v1, v2}, Lsun/java2d/loops/DrawRect;-><init>(Lsun/java2d/loops/SurfaceType;Lsun/java2d/loops/CompositeType;Lsun/java2d/loops/SurfaceType;)V

    return-void
.end method


# virtual methods
.method public DrawRect(Lsun/java2d/SunGraphics2D;Lsun/java2d/SurfaceData;IIII)V
    .locals 7

    invoke-static {p1, p2}, Lsun/java2d/loops/GeneralRenderer;->createSolidPixelWriter(Lsun/java2d/SunGraphics2D;Lsun/java2d/SurfaceData;)Lsun/java2d/loops/PixelWriter;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-static/range {v0 .. v6}, Lsun/java2d/loops/GeneralRenderer;->doDrawRect(Lsun/java2d/loops/PixelWriter;Lsun/java2d/SunGraphics2D;Lsun/java2d/SurfaceData;IIII)V

    return-void
.end method
