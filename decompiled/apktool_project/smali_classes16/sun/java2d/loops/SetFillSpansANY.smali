.class Lsun/java2d/loops/SetFillSpansANY;
.super Lsun/java2d/loops/FillSpans;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 3

    sget-object v0, Lsun/java2d/loops/SurfaceType;->AnyColor:Lsun/java2d/loops/SurfaceType;

    sget-object v1, Lsun/java2d/loops/CompositeType;->SrcNoEa:Lsun/java2d/loops/CompositeType;

    sget-object v2, Lsun/java2d/loops/SurfaceType;->Any:Lsun/java2d/loops/SurfaceType;

    invoke-direct {p0, v0, v1, v2}, Lsun/java2d/loops/FillSpans;-><init>(Lsun/java2d/loops/SurfaceType;Lsun/java2d/loops/CompositeType;Lsun/java2d/loops/SurfaceType;)V

    return-void
.end method


# virtual methods
.method public FillSpans(Lsun/java2d/SunGraphics2D;Lsun/java2d/SurfaceData;Lsun/java2d/pipe/SpanIterator;)V
    .locals 6

    invoke-static {p1, p2}, Lsun/java2d/loops/GeneralRenderer;->createSolidPixelWriter(Lsun/java2d/SunGraphics2D;Lsun/java2d/SurfaceData;)Lsun/java2d/loops/PixelWriter;

    move-result-object p0

    const/4 p1, 0x4

    new-array p1, p1, [I

    :goto_0
    invoke-interface {p3, p1}, Lsun/java2d/pipe/SpanIterator;->nextSpan([I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    aget v2, p1, v0

    const/4 v0, 0x1

    aget v3, p1, v0

    const/4 v0, 0x2

    aget v4, p1, v0

    const/4 v0, 0x3

    aget v5, p1, v0

    move-object v0, p2

    move-object v1, p0

    invoke-static/range {v0 .. v5}, Lsun/java2d/loops/GeneralRenderer;->doSetRect(Lsun/java2d/SurfaceData;Lsun/java2d/loops/PixelWriter;IIII)V

    goto :goto_0

    :cond_0
    return-void
.end method
