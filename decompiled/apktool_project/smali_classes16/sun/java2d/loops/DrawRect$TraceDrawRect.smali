.class Lsun/java2d/loops/DrawRect$TraceDrawRect;
.super Lsun/java2d/loops/DrawRect;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/java2d/loops/DrawRect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TraceDrawRect"
.end annotation


# instance fields
.field target:Lsun/java2d/loops/DrawRect;


# direct methods
.method public constructor <init>(Lsun/java2d/loops/DrawRect;)V
    .locals 3

    invoke-virtual {p1}, Lsun/java2d/loops/GraphicsPrimitive;->getSourceType()Lsun/java2d/loops/SurfaceType;

    move-result-object v0

    invoke-virtual {p1}, Lsun/java2d/loops/GraphicsPrimitive;->getCompositeType()Lsun/java2d/loops/CompositeType;

    move-result-object v1

    invoke-virtual {p1}, Lsun/java2d/loops/GraphicsPrimitive;->getDestType()Lsun/java2d/loops/SurfaceType;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lsun/java2d/loops/DrawRect;-><init>(Lsun/java2d/loops/SurfaceType;Lsun/java2d/loops/CompositeType;Lsun/java2d/loops/SurfaceType;)V

    iput-object p1, p0, Lsun/java2d/loops/DrawRect$TraceDrawRect;->target:Lsun/java2d/loops/DrawRect;

    return-void
.end method


# virtual methods
.method public DrawRect(Lsun/java2d/SunGraphics2D;Lsun/java2d/SurfaceData;IIII)V
    .locals 8

    iget-object v0, p0, Lsun/java2d/loops/DrawRect$TraceDrawRect;->target:Lsun/java2d/loops/DrawRect;

    invoke-static {v0}, Lsun/java2d/loops/GraphicsPrimitive;->tracePrimitive(Ljava/lang/Object;)V

    iget-object v1, p0, Lsun/java2d/loops/DrawRect$TraceDrawRect;->target:Lsun/java2d/loops/DrawRect;

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-virtual/range {v1 .. v7}, Lsun/java2d/loops/DrawRect;->DrawRect(Lsun/java2d/SunGraphics2D;Lsun/java2d/SurfaceData;IIII)V

    return-void
.end method

.method public traceWrap()Lsun/java2d/loops/GraphicsPrimitive;
    .locals 0

    return-object p0
.end method
