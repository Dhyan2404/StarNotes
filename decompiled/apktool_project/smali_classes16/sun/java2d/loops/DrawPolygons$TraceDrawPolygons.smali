.class Lsun/java2d/loops/DrawPolygons$TraceDrawPolygons;
.super Lsun/java2d/loops/DrawPolygons;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/java2d/loops/DrawPolygons;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TraceDrawPolygons"
.end annotation


# instance fields
.field target:Lsun/java2d/loops/DrawPolygons;


# direct methods
.method public constructor <init>(Lsun/java2d/loops/DrawPolygons;)V
    .locals 3

    invoke-virtual {p1}, Lsun/java2d/loops/GraphicsPrimitive;->getSourceType()Lsun/java2d/loops/SurfaceType;

    move-result-object v0

    invoke-virtual {p1}, Lsun/java2d/loops/GraphicsPrimitive;->getCompositeType()Lsun/java2d/loops/CompositeType;

    move-result-object v1

    invoke-virtual {p1}, Lsun/java2d/loops/GraphicsPrimitive;->getDestType()Lsun/java2d/loops/SurfaceType;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lsun/java2d/loops/DrawPolygons;-><init>(Lsun/java2d/loops/SurfaceType;Lsun/java2d/loops/CompositeType;Lsun/java2d/loops/SurfaceType;)V

    iput-object p1, p0, Lsun/java2d/loops/DrawPolygons$TraceDrawPolygons;->target:Lsun/java2d/loops/DrawPolygons;

    return-void
.end method


# virtual methods
.method public DrawPolygons(Lsun/java2d/SunGraphics2D;Lsun/java2d/SurfaceData;[I[I[IIIIZ)V
    .locals 12

    move-object v0, p0

    iget-object v1, v0, Lsun/java2d/loops/DrawPolygons$TraceDrawPolygons;->target:Lsun/java2d/loops/DrawPolygons;

    invoke-static {v1}, Lsun/java2d/loops/GraphicsPrimitive;->tracePrimitive(Ljava/lang/Object;)V

    iget-object v2, v0, Lsun/java2d/loops/DrawPolygons$TraceDrawPolygons;->target:Lsun/java2d/loops/DrawPolygons;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    invoke-virtual/range {v2 .. v11}, Lsun/java2d/loops/DrawPolygons;->DrawPolygons(Lsun/java2d/SunGraphics2D;Lsun/java2d/SurfaceData;[I[I[IIIIZ)V

    return-void
.end method

.method public traceWrap()Lsun/java2d/loops/GraphicsPrimitive;
    .locals 0

    return-object p0
.end method
