.class Lsun/java2d/loops/XorDrawLineANY;
.super Lsun/java2d/loops/DrawLine;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 3

    sget-object v0, Lsun/java2d/loops/SurfaceType;->AnyColor:Lsun/java2d/loops/SurfaceType;

    sget-object v1, Lsun/java2d/loops/CompositeType;->Xor:Lsun/java2d/loops/CompositeType;

    sget-object v2, Lsun/java2d/loops/SurfaceType;->Any:Lsun/java2d/loops/SurfaceType;

    invoke-direct {p0, v0, v1, v2}, Lsun/java2d/loops/DrawLine;-><init>(Lsun/java2d/loops/SurfaceType;Lsun/java2d/loops/CompositeType;Lsun/java2d/loops/SurfaceType;)V

    return-void
.end method


# virtual methods
.method public DrawLine(Lsun/java2d/SunGraphics2D;Lsun/java2d/SurfaceData;IIII)V
    .locals 8

    invoke-static {p1, p2}, Lsun/java2d/loops/GeneralRenderer;->createXorPixelWriter(Lsun/java2d/SunGraphics2D;Lsun/java2d/SurfaceData;)Lsun/java2d/loops/PixelWriter;

    move-result-object v1

    if-lt p4, p6, :cond_0

    const/4 v2, 0x0

    invoke-virtual {p1}, Lsun/java2d/SunGraphics2D;->getCompClip()Lsun/java2d/pipe/Region;

    move-result-object v3

    move-object v0, p2

    move v4, p5

    move v5, p6

    move v6, p3

    move v7, p4

    invoke-static/range {v0 .. v7}, Lsun/java2d/loops/GeneralRenderer;->doDrawLine(Lsun/java2d/SurfaceData;Lsun/java2d/loops/PixelWriter;[ILsun/java2d/pipe/Region;IIII)[I

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p1}, Lsun/java2d/SunGraphics2D;->getCompClip()Lsun/java2d/pipe/Region;

    move-result-object v3

    move-object v0, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-static/range {v0 .. v7}, Lsun/java2d/loops/GeneralRenderer;->doDrawLine(Lsun/java2d/SurfaceData;Lsun/java2d/loops/PixelWriter;[ILsun/java2d/pipe/Region;IIII)[I

    :goto_0
    return-void
.end method
