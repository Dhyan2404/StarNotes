.class Lsun/java2d/loops/MaskBlit$TraceMaskBlit;
.super Lsun/java2d/loops/MaskBlit;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/java2d/loops/MaskBlit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TraceMaskBlit"
.end annotation


# instance fields
.field target:Lsun/java2d/loops/MaskBlit;


# direct methods
.method public constructor <init>(Lsun/java2d/loops/MaskBlit;)V
    .locals 6

    invoke-virtual {p1}, Lsun/java2d/loops/GraphicsPrimitive;->getNativePrim()J

    move-result-wide v1

    invoke-virtual {p1}, Lsun/java2d/loops/GraphicsPrimitive;->getSourceType()Lsun/java2d/loops/SurfaceType;

    move-result-object v3

    invoke-virtual {p1}, Lsun/java2d/loops/GraphicsPrimitive;->getCompositeType()Lsun/java2d/loops/CompositeType;

    move-result-object v4

    invoke-virtual {p1}, Lsun/java2d/loops/GraphicsPrimitive;->getDestType()Lsun/java2d/loops/SurfaceType;

    move-result-object v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lsun/java2d/loops/MaskBlit;-><init>(JLsun/java2d/loops/SurfaceType;Lsun/java2d/loops/CompositeType;Lsun/java2d/loops/SurfaceType;)V

    iput-object p1, p0, Lsun/java2d/loops/MaskBlit$TraceMaskBlit;->target:Lsun/java2d/loops/MaskBlit;

    return-void
.end method


# virtual methods
.method public MaskBlit(Lsun/java2d/SurfaceData;Lsun/java2d/SurfaceData;Ljava/awt/Composite;Lsun/java2d/pipe/Region;IIIIII[BII)V
    .locals 16

    move-object/from16 v0, p0

    iget-object v1, v0, Lsun/java2d/loops/MaskBlit$TraceMaskBlit;->target:Lsun/java2d/loops/MaskBlit;

    invoke-static {v1}, Lsun/java2d/loops/GraphicsPrimitive;->tracePrimitive(Ljava/lang/Object;)V

    iget-object v2, v0, Lsun/java2d/loops/MaskBlit$TraceMaskBlit;->target:Lsun/java2d/loops/MaskBlit;

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    move/from16 v12, p10

    move-object/from16 v13, p11

    move/from16 v14, p12

    move/from16 v15, p13

    invoke-virtual/range {v2 .. v15}, Lsun/java2d/loops/MaskBlit;->MaskBlit(Lsun/java2d/SurfaceData;Lsun/java2d/SurfaceData;Ljava/awt/Composite;Lsun/java2d/pipe/Region;IIIIII[BII)V

    return-void
.end method

.method public traceWrap()Lsun/java2d/loops/GraphicsPrimitive;
    .locals 0

    return-object p0
.end method
