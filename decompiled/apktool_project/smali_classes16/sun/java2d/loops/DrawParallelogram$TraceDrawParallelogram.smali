.class Lsun/java2d/loops/DrawParallelogram$TraceDrawParallelogram;
.super Lsun/java2d/loops/DrawParallelogram;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/java2d/loops/DrawParallelogram;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TraceDrawParallelogram"
.end annotation


# instance fields
.field target:Lsun/java2d/loops/DrawParallelogram;


# direct methods
.method public constructor <init>(Lsun/java2d/loops/DrawParallelogram;)V
    .locals 3

    invoke-virtual {p1}, Lsun/java2d/loops/GraphicsPrimitive;->getSourceType()Lsun/java2d/loops/SurfaceType;

    move-result-object v0

    invoke-virtual {p1}, Lsun/java2d/loops/GraphicsPrimitive;->getCompositeType()Lsun/java2d/loops/CompositeType;

    move-result-object v1

    invoke-virtual {p1}, Lsun/java2d/loops/GraphicsPrimitive;->getDestType()Lsun/java2d/loops/SurfaceType;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lsun/java2d/loops/DrawParallelogram;-><init>(Lsun/java2d/loops/SurfaceType;Lsun/java2d/loops/CompositeType;Lsun/java2d/loops/SurfaceType;)V

    iput-object p1, p0, Lsun/java2d/loops/DrawParallelogram$TraceDrawParallelogram;->target:Lsun/java2d/loops/DrawParallelogram;

    return-void
.end method


# virtual methods
.method public DrawParallelogram(Lsun/java2d/SunGraphics2D;Lsun/java2d/SurfaceData;DDDDDDDD)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-wide/from16 v4, p3

    move-wide/from16 v6, p5

    move-wide/from16 v8, p7

    move-wide/from16 v10, p9

    move-wide/from16 v12, p11

    move-wide/from16 v14, p13

    move-wide/from16 v16, p15

    move-wide/from16 v18, p17

    iget-object v1, v0, Lsun/java2d/loops/DrawParallelogram$TraceDrawParallelogram;->target:Lsun/java2d/loops/DrawParallelogram;

    invoke-static {v1}, Lsun/java2d/loops/GraphicsPrimitive;->tracePrimitive(Ljava/lang/Object;)V

    iget-object v1, v0, Lsun/java2d/loops/DrawParallelogram$TraceDrawParallelogram;->target:Lsun/java2d/loops/DrawParallelogram;

    invoke-virtual/range {v1 .. v19}, Lsun/java2d/loops/DrawParallelogram;->DrawParallelogram(Lsun/java2d/SunGraphics2D;Lsun/java2d/SurfaceData;DDDDDDDD)V

    return-void
.end method

.method public traceWrap()Lsun/java2d/loops/GraphicsPrimitive;
    .locals 0

    return-object p0
.end method
