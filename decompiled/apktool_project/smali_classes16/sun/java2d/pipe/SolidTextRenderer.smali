.class public Lsun/java2d/pipe/SolidTextRenderer;
.super Lsun/java2d/pipe/GlyphListLoopPipe;
.source "SourceFile"

# interfaces
.implements Lsun/java2d/pipe/LoopBasedPipe;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lsun/java2d/pipe/GlyphListLoopPipe;-><init>()V

    return-void
.end method


# virtual methods
.method public drawGlyphList(Lsun/java2d/SunGraphics2D;Lsun/font/GlyphList;)V
    .locals 1

    iget-object p0, p1, Lsun/java2d/SunGraphics2D;->loops:Lsun/java2d/loops/RenderLoops;

    iget-object p0, p0, Lsun/java2d/loops/RenderLoops;->drawGlyphListLoop:Lsun/java2d/loops/DrawGlyphList;

    iget-object v0, p1, Lsun/java2d/SunGraphics2D;->surfaceData:Lsun/java2d/SurfaceData;

    invoke-virtual {p0, p1, v0, p2}, Lsun/java2d/loops/DrawGlyphList;->DrawGlyphList(Lsun/java2d/SunGraphics2D;Lsun/java2d/SurfaceData;Lsun/font/GlyphList;)V

    return-void
.end method
