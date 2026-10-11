.class Lsun/java2d/loops/TransformHelper$TraceTransformHelper;
.super Lsun/java2d/loops/TransformHelper;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/java2d/loops/TransformHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TraceTransformHelper"
.end annotation


# instance fields
.field target:Lsun/java2d/loops/TransformHelper;


# direct methods
.method public constructor <init>(Lsun/java2d/loops/TransformHelper;)V
    .locals 1

    invoke-virtual {p1}, Lsun/java2d/loops/GraphicsPrimitive;->getSourceType()Lsun/java2d/loops/SurfaceType;

    move-result-object v0

    invoke-direct {p0, v0}, Lsun/java2d/loops/TransformHelper;-><init>(Lsun/java2d/loops/SurfaceType;)V

    iput-object p1, p0, Lsun/java2d/loops/TransformHelper$TraceTransformHelper;->target:Lsun/java2d/loops/TransformHelper;

    return-void
.end method


# virtual methods
.method public Transform(Lsun/java2d/loops/MaskBlit;Lsun/java2d/SurfaceData;Lsun/java2d/SurfaceData;Ljava/awt/Composite;Lsun/java2d/pipe/Region;Ljava/awt/geom/AffineTransform;IIIIIIIII[III)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    move/from16 v13, p12

    move/from16 v14, p13

    move/from16 v15, p14

    move/from16 v16, p15

    move-object/from16 v17, p16

    move/from16 v18, p17

    move/from16 v19, p18

    iget-object v1, v0, Lsun/java2d/loops/TransformHelper$TraceTransformHelper;->target:Lsun/java2d/loops/TransformHelper;

    invoke-static {v1}, Lsun/java2d/loops/GraphicsPrimitive;->tracePrimitive(Ljava/lang/Object;)V

    iget-object v1, v0, Lsun/java2d/loops/TransformHelper$TraceTransformHelper;->target:Lsun/java2d/loops/TransformHelper;

    invoke-virtual/range {v1 .. v19}, Lsun/java2d/loops/TransformHelper;->Transform(Lsun/java2d/loops/MaskBlit;Lsun/java2d/SurfaceData;Lsun/java2d/SurfaceData;Ljava/awt/Composite;Lsun/java2d/pipe/Region;Ljava/awt/geom/AffineTransform;IIIIIIIII[III)V

    return-void
.end method

.method public traceWrap()Lsun/java2d/loops/GraphicsPrimitive;
    .locals 0

    return-object p0
.end method
