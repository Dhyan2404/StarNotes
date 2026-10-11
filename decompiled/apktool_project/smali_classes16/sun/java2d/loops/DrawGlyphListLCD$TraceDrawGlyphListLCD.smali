.class Lsun/java2d/loops/DrawGlyphListLCD$TraceDrawGlyphListLCD;
.super Lsun/java2d/loops/DrawGlyphListLCD;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/java2d/loops/DrawGlyphListLCD;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TraceDrawGlyphListLCD"
.end annotation


# instance fields
.field target:Lsun/java2d/loops/DrawGlyphListLCD;


# direct methods
.method public constructor <init>(Lsun/java2d/loops/DrawGlyphListLCD;)V
    .locals 3

    invoke-virtual {p1}, Lsun/java2d/loops/GraphicsPrimitive;->getSourceType()Lsun/java2d/loops/SurfaceType;

    move-result-object v0

    invoke-virtual {p1}, Lsun/java2d/loops/GraphicsPrimitive;->getCompositeType()Lsun/java2d/loops/CompositeType;

    move-result-object v1

    invoke-virtual {p1}, Lsun/java2d/loops/GraphicsPrimitive;->getDestType()Lsun/java2d/loops/SurfaceType;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lsun/java2d/loops/DrawGlyphListLCD;-><init>(Lsun/java2d/loops/SurfaceType;Lsun/java2d/loops/CompositeType;Lsun/java2d/loops/SurfaceType;)V

    iput-object p1, p0, Lsun/java2d/loops/DrawGlyphListLCD$TraceDrawGlyphListLCD;->target:Lsun/java2d/loops/DrawGlyphListLCD;

    return-void
.end method


# virtual methods
.method public DrawGlyphListLCD(Lsun/java2d/SunGraphics2D;Lsun/java2d/SurfaceData;Lsun/font/GlyphList;)V
    .locals 1

    iget-object v0, p0, Lsun/java2d/loops/DrawGlyphListLCD$TraceDrawGlyphListLCD;->target:Lsun/java2d/loops/DrawGlyphListLCD;

    invoke-static {v0}, Lsun/java2d/loops/GraphicsPrimitive;->tracePrimitive(Ljava/lang/Object;)V

    iget-object p0, p0, Lsun/java2d/loops/DrawGlyphListLCD$TraceDrawGlyphListLCD;->target:Lsun/java2d/loops/DrawGlyphListLCD;

    invoke-virtual {p0, p1, p2, p3}, Lsun/java2d/loops/DrawGlyphListLCD;->DrawGlyphListLCD(Lsun/java2d/SunGraphics2D;Lsun/java2d/SurfaceData;Lsun/font/GlyphList;)V

    return-void
.end method

.method public traceWrap()Lsun/java2d/loops/GraphicsPrimitive;
    .locals 0

    return-object p0
.end method
