.class Lsun/java2d/loops/XorDrawGlyphListAAANY;
.super Lsun/java2d/loops/DrawGlyphListAA;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 3

    sget-object v0, Lsun/java2d/loops/SurfaceType;->AnyColor:Lsun/java2d/loops/SurfaceType;

    sget-object v1, Lsun/java2d/loops/CompositeType;->Xor:Lsun/java2d/loops/CompositeType;

    sget-object v2, Lsun/java2d/loops/SurfaceType;->Any:Lsun/java2d/loops/SurfaceType;

    invoke-direct {p0, v0, v1, v2}, Lsun/java2d/loops/DrawGlyphListAA;-><init>(Lsun/java2d/loops/SurfaceType;Lsun/java2d/loops/CompositeType;Lsun/java2d/loops/SurfaceType;)V

    return-void
.end method


# virtual methods
.method public DrawGlyphListAA(Lsun/java2d/SunGraphics2D;Lsun/java2d/SurfaceData;Lsun/font/GlyphList;)V
    .locals 0

    invoke-static {p1, p2}, Lsun/java2d/loops/GeneralRenderer;->createXorPixelWriter(Lsun/java2d/SunGraphics2D;Lsun/java2d/SurfaceData;)Lsun/java2d/loops/PixelWriter;

    move-result-object p0

    invoke-virtual {p1}, Lsun/java2d/SunGraphics2D;->getCompClip()Lsun/java2d/pipe/Region;

    move-result-object p1

    invoke-static {p2, p0, p3, p1}, Lsun/java2d/loops/GeneralRenderer;->doDrawGlyphList(Lsun/java2d/SurfaceData;Lsun/java2d/loops/PixelWriter;Lsun/font/GlyphList;Lsun/java2d/pipe/Region;)V

    return-void
.end method
