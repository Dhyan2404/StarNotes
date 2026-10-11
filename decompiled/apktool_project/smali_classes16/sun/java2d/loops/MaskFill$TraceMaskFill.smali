.class Lsun/java2d/loops/MaskFill$TraceMaskFill;
.super Lsun/java2d/loops/MaskFill;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/java2d/loops/MaskFill;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TraceMaskFill"
.end annotation


# instance fields
.field drawPgramTarget:Lsun/java2d/loops/MaskFill;

.field fillPgramTarget:Lsun/java2d/loops/MaskFill;

.field target:Lsun/java2d/loops/MaskFill;


# direct methods
.method public constructor <init>(Lsun/java2d/loops/MaskFill;)V
    .locals 5

    invoke-virtual {p1}, Lsun/java2d/loops/GraphicsPrimitive;->getSourceType()Lsun/java2d/loops/SurfaceType;

    move-result-object v0

    invoke-virtual {p1}, Lsun/java2d/loops/GraphicsPrimitive;->getCompositeType()Lsun/java2d/loops/CompositeType;

    move-result-object v1

    invoke-virtual {p1}, Lsun/java2d/loops/GraphicsPrimitive;->getDestType()Lsun/java2d/loops/SurfaceType;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lsun/java2d/loops/MaskFill;-><init>(Lsun/java2d/loops/SurfaceType;Lsun/java2d/loops/CompositeType;Lsun/java2d/loops/SurfaceType;)V

    iput-object p1, p0, Lsun/java2d/loops/MaskFill$TraceMaskFill;->target:Lsun/java2d/loops/MaskFill;

    new-instance v0, Lsun/java2d/loops/MaskFill;

    sget-object v1, Lsun/java2d/loops/MaskFill;->fillPgramSignature:Ljava/lang/String;

    invoke-virtual {p1}, Lsun/java2d/loops/GraphicsPrimitive;->getSourceType()Lsun/java2d/loops/SurfaceType;

    move-result-object v2

    invoke-virtual {p1}, Lsun/java2d/loops/GraphicsPrimitive;->getCompositeType()Lsun/java2d/loops/CompositeType;

    move-result-object v3

    invoke-virtual {p1}, Lsun/java2d/loops/GraphicsPrimitive;->getDestType()Lsun/java2d/loops/SurfaceType;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lsun/java2d/loops/MaskFill;-><init>(Ljava/lang/String;Lsun/java2d/loops/SurfaceType;Lsun/java2d/loops/CompositeType;Lsun/java2d/loops/SurfaceType;)V

    iput-object v0, p0, Lsun/java2d/loops/MaskFill$TraceMaskFill;->fillPgramTarget:Lsun/java2d/loops/MaskFill;

    new-instance v0, Lsun/java2d/loops/MaskFill;

    sget-object v1, Lsun/java2d/loops/MaskFill;->drawPgramSignature:Ljava/lang/String;

    invoke-virtual {p1}, Lsun/java2d/loops/GraphicsPrimitive;->getSourceType()Lsun/java2d/loops/SurfaceType;

    move-result-object v2

    invoke-virtual {p1}, Lsun/java2d/loops/GraphicsPrimitive;->getCompositeType()Lsun/java2d/loops/CompositeType;

    move-result-object v3

    invoke-virtual {p1}, Lsun/java2d/loops/GraphicsPrimitive;->getDestType()Lsun/java2d/loops/SurfaceType;

    move-result-object p1

    invoke-direct {v0, v1, v2, v3, p1}, Lsun/java2d/loops/MaskFill;-><init>(Ljava/lang/String;Lsun/java2d/loops/SurfaceType;Lsun/java2d/loops/CompositeType;Lsun/java2d/loops/SurfaceType;)V

    iput-object v0, p0, Lsun/java2d/loops/MaskFill$TraceMaskFill;->drawPgramTarget:Lsun/java2d/loops/MaskFill;

    return-void
.end method


# virtual methods
.method public DrawAAPgram(Lsun/java2d/SunGraphics2D;Lsun/java2d/SurfaceData;Ljava/awt/Composite;DDDDDDDD)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-wide/from16 v5, p4

    move-wide/from16 v7, p6

    move-wide/from16 v9, p8

    move-wide/from16 v11, p10

    move-wide/from16 v13, p12

    move-wide/from16 v15, p14

    move-wide/from16 v17, p16

    move-wide/from16 v19, p18

    iget-object v1, v0, Lsun/java2d/loops/MaskFill$TraceMaskFill;->drawPgramTarget:Lsun/java2d/loops/MaskFill;

    invoke-static {v1}, Lsun/java2d/loops/GraphicsPrimitive;->tracePrimitive(Ljava/lang/Object;)V

    iget-object v1, v0, Lsun/java2d/loops/MaskFill$TraceMaskFill;->target:Lsun/java2d/loops/MaskFill;

    invoke-virtual/range {v1 .. v20}, Lsun/java2d/loops/MaskFill;->DrawAAPgram(Lsun/java2d/SunGraphics2D;Lsun/java2d/SurfaceData;Ljava/awt/Composite;DDDDDDDD)V

    return-void
.end method

.method public FillAAPgram(Lsun/java2d/SunGraphics2D;Lsun/java2d/SurfaceData;Ljava/awt/Composite;DDDDDD)V
    .locals 18

    move-object/from16 v0, p0

    iget-object v1, v0, Lsun/java2d/loops/MaskFill$TraceMaskFill;->fillPgramTarget:Lsun/java2d/loops/MaskFill;

    invoke-static {v1}, Lsun/java2d/loops/GraphicsPrimitive;->tracePrimitive(Ljava/lang/Object;)V

    iget-object v2, v0, Lsun/java2d/loops/MaskFill$TraceMaskFill;->target:Lsun/java2d/loops/MaskFill;

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-wide/from16 v6, p4

    move-wide/from16 v8, p6

    move-wide/from16 v10, p8

    move-wide/from16 v12, p10

    move-wide/from16 v14, p12

    move-wide/from16 v16, p14

    invoke-virtual/range {v2 .. v17}, Lsun/java2d/loops/MaskFill;->FillAAPgram(Lsun/java2d/SunGraphics2D;Lsun/java2d/SurfaceData;Ljava/awt/Composite;DDDDDD)V

    return-void
.end method

.method public MaskFill(Lsun/java2d/SunGraphics2D;Lsun/java2d/SurfaceData;Ljava/awt/Composite;IIII[BII)V
    .locals 13

    move-object v0, p0

    iget-object v1, v0, Lsun/java2d/loops/MaskFill$TraceMaskFill;->target:Lsun/java2d/loops/MaskFill;

    invoke-static {v1}, Lsun/java2d/loops/GraphicsPrimitive;->tracePrimitive(Ljava/lang/Object;)V

    iget-object v2, v0, Lsun/java2d/loops/MaskFill$TraceMaskFill;->target:Lsun/java2d/loops/MaskFill;

    move-object v3, p1

    move-object v4, p2

    move-object/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move-object/from16 v10, p8

    move/from16 v11, p9

    move/from16 v12, p10

    invoke-virtual/range {v2 .. v12}, Lsun/java2d/loops/MaskFill;->MaskFill(Lsun/java2d/SunGraphics2D;Lsun/java2d/SurfaceData;Ljava/awt/Composite;IIII[BII)V

    return-void
.end method

.method public canDoParallelograms()Z
    .locals 0

    iget-object p0, p0, Lsun/java2d/loops/MaskFill$TraceMaskFill;->target:Lsun/java2d/loops/MaskFill;

    invoke-virtual {p0}, Lsun/java2d/loops/MaskFill;->canDoParallelograms()Z

    move-result p0

    return p0
.end method

.method public traceWrap()Lsun/java2d/loops/GraphicsPrimitive;
    .locals 0

    return-object p0
.end method
