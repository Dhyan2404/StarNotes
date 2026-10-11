.class public abstract Lsun/java2d/pipe/GlyphListLoopPipe;
.super Lsun/java2d/pipe/GlyphListPipe;
.source "SourceFile"

# interfaces
.implements Lsun/java2d/pipe/LoopBasedPipe;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lsun/java2d/pipe/GlyphListPipe;-><init>()V

    return-void
.end method


# virtual methods
.method public drawGlyphList(Lsun/java2d/SunGraphics2D;Lsun/font/GlyphList;I)V
    .locals 0

    const/4 p0, 0x1

    if-eq p3, p0, :cond_2

    const/4 p0, 0x2

    if-eq p3, p0, :cond_1

    const/4 p0, 0x4

    if-eq p3, p0, :cond_0

    const/4 p0, 0x6

    if-eq p3, p0, :cond_0

    return-void

    :cond_0
    iget-object p0, p1, Lsun/java2d/SunGraphics2D;->loops:Lsun/java2d/loops/RenderLoops;

    iget-object p0, p0, Lsun/java2d/loops/RenderLoops;->drawGlyphListLCDLoop:Lsun/java2d/loops/DrawGlyphListLCD;

    iget-object p3, p1, Lsun/java2d/SunGraphics2D;->surfaceData:Lsun/java2d/SurfaceData;

    invoke-virtual {p0, p1, p3, p2}, Lsun/java2d/loops/DrawGlyphListLCD;->DrawGlyphListLCD(Lsun/java2d/SunGraphics2D;Lsun/java2d/SurfaceData;Lsun/font/GlyphList;)V

    return-void

    :cond_1
    iget-object p0, p1, Lsun/java2d/SunGraphics2D;->loops:Lsun/java2d/loops/RenderLoops;

    iget-object p0, p0, Lsun/java2d/loops/RenderLoops;->drawGlyphListAALoop:Lsun/java2d/loops/DrawGlyphListAA;

    iget-object p3, p1, Lsun/java2d/SunGraphics2D;->surfaceData:Lsun/java2d/SurfaceData;

    invoke-virtual {p0, p1, p3, p2}, Lsun/java2d/loops/DrawGlyphListAA;->DrawGlyphListAA(Lsun/java2d/SunGraphics2D;Lsun/java2d/SurfaceData;Lsun/font/GlyphList;)V

    return-void

    :cond_2
    iget-object p0, p1, Lsun/java2d/SunGraphics2D;->loops:Lsun/java2d/loops/RenderLoops;

    iget-object p0, p0, Lsun/java2d/loops/RenderLoops;->drawGlyphListLoop:Lsun/java2d/loops/DrawGlyphList;

    iget-object p3, p1, Lsun/java2d/SunGraphics2D;->surfaceData:Lsun/java2d/SurfaceData;

    invoke-virtual {p0, p1, p3, p2}, Lsun/java2d/loops/DrawGlyphList;->DrawGlyphList(Lsun/java2d/SunGraphics2D;Lsun/java2d/SurfaceData;Lsun/font/GlyphList;)V

    return-void
.end method
