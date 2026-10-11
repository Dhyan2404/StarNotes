.class Lsun/java2d/loops/SetFillRectANY;
.super Lsun/java2d/loops/FillRect;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 3

    sget-object v0, Lsun/java2d/loops/SurfaceType;->AnyColor:Lsun/java2d/loops/SurfaceType;

    sget-object v1, Lsun/java2d/loops/CompositeType;->SrcNoEa:Lsun/java2d/loops/CompositeType;

    sget-object v2, Lsun/java2d/loops/SurfaceType;->Any:Lsun/java2d/loops/SurfaceType;

    invoke-direct {p0, v0, v1, v2}, Lsun/java2d/loops/FillRect;-><init>(Lsun/java2d/loops/SurfaceType;Lsun/java2d/loops/CompositeType;Lsun/java2d/loops/SurfaceType;)V

    return-void
.end method


# virtual methods
.method public FillRect(Lsun/java2d/SunGraphics2D;Lsun/java2d/SurfaceData;IIII)V
    .locals 1

    invoke-static {p1, p2}, Lsun/java2d/loops/GeneralRenderer;->createSolidPixelWriter(Lsun/java2d/SunGraphics2D;Lsun/java2d/SurfaceData;)Lsun/java2d/loops/PixelWriter;

    move-result-object v0

    invoke-virtual {p1}, Lsun/java2d/SunGraphics2D;->getCompClip()Lsun/java2d/pipe/Region;

    move-result-object p0

    invoke-virtual {p0, p3, p4, p5, p6}, Lsun/java2d/pipe/Region;->getBoundsIntersectionXYWH(IIII)Lsun/java2d/pipe/Region;

    move-result-object p0

    invoke-virtual {p0}, Lsun/java2d/pipe/Region;->getLoX()I

    move-result p3

    invoke-virtual {p0}, Lsun/java2d/pipe/Region;->getLoY()I

    move-result p4

    invoke-virtual {p0}, Lsun/java2d/pipe/Region;->getHiX()I

    move-result p5

    invoke-virtual {p0}, Lsun/java2d/pipe/Region;->getHiY()I

    move-result p6

    move-object p0, p2

    move-object p1, v0

    move p2, p3

    move p3, p4

    move p4, p5

    move p5, p6

    invoke-static/range {p0 .. p5}, Lsun/java2d/loops/GeneralRenderer;->doSetRect(Lsun/java2d/SurfaceData;Lsun/java2d/loops/PixelWriter;IIII)V

    return-void
.end method
