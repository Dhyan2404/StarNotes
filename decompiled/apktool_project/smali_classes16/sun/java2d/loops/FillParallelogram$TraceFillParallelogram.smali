.class Lsun/java2d/loops/FillParallelogram$TraceFillParallelogram;
.super Lsun/java2d/loops/FillParallelogram;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/java2d/loops/FillParallelogram;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TraceFillParallelogram"
.end annotation


# instance fields
.field target:Lsun/java2d/loops/FillParallelogram;


# direct methods
.method public constructor <init>(Lsun/java2d/loops/FillParallelogram;)V
    .locals 3

    invoke-virtual {p1}, Lsun/java2d/loops/GraphicsPrimitive;->getSourceType()Lsun/java2d/loops/SurfaceType;

    move-result-object v0

    invoke-virtual {p1}, Lsun/java2d/loops/GraphicsPrimitive;->getCompositeType()Lsun/java2d/loops/CompositeType;

    move-result-object v1

    invoke-virtual {p1}, Lsun/java2d/loops/GraphicsPrimitive;->getDestType()Lsun/java2d/loops/SurfaceType;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lsun/java2d/loops/FillParallelogram;-><init>(Lsun/java2d/loops/SurfaceType;Lsun/java2d/loops/CompositeType;Lsun/java2d/loops/SurfaceType;)V

    iput-object p1, p0, Lsun/java2d/loops/FillParallelogram$TraceFillParallelogram;->target:Lsun/java2d/loops/FillParallelogram;

    return-void
.end method


# virtual methods
.method public FillParallelogram(Lsun/java2d/SunGraphics2D;Lsun/java2d/SurfaceData;DDDDDD)V
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Lsun/java2d/loops/FillParallelogram$TraceFillParallelogram;->target:Lsun/java2d/loops/FillParallelogram;

    invoke-static {v1}, Lsun/java2d/loops/GraphicsPrimitive;->tracePrimitive(Ljava/lang/Object;)V

    iget-object v2, v0, Lsun/java2d/loops/FillParallelogram$TraceFillParallelogram;->target:Lsun/java2d/loops/FillParallelogram;

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-wide/from16 v5, p3

    move-wide/from16 v7, p5

    move-wide/from16 v9, p7

    move-wide/from16 v11, p9

    move-wide/from16 v13, p11

    move-wide/from16 v15, p13

    invoke-virtual/range {v2 .. v16}, Lsun/java2d/loops/FillParallelogram;->FillParallelogram(Lsun/java2d/SunGraphics2D;Lsun/java2d/SurfaceData;DDDDDD)V

    return-void
.end method

.method public traceWrap()Lsun/java2d/loops/GraphicsPrimitive;
    .locals 0

    return-object p0
.end method
