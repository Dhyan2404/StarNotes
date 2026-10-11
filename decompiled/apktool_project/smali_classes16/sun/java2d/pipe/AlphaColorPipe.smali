.class public Lsun/java2d/pipe/AlphaColorPipe;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsun/java2d/pipe/CompositePipe;
.implements Lsun/java2d/pipe/ParallelogramPipe;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public drawParallelogram(Lsun/java2d/SunGraphics2D;DDDDDDDDDDDD)V
    .locals 20

    move-object/from16 v3, p1

    move-object/from16 v1, p1

    move-wide/from16 v4, p10

    move-wide/from16 v6, p12

    move-wide/from16 v8, p14

    move-wide/from16 v10, p16

    move-wide/from16 v12, p18

    move-wide/from16 v14, p20

    move-wide/from16 v16, p22

    move-wide/from16 v18, p24

    iget-object v0, v3, Lsun/java2d/SunGraphics2D;->alphafill:Lsun/java2d/loops/MaskFill;

    invoke-virtual/range {p1 .. p1}, Lsun/java2d/SunGraphics2D;->getSurfaceData()Lsun/java2d/SurfaceData;

    move-result-object v2

    iget-object v3, v3, Lsun/java2d/SunGraphics2D;->composite:Ljava/awt/Composite;

    invoke-virtual/range {v0 .. v19}, Lsun/java2d/loops/MaskFill;->DrawAAPgram(Lsun/java2d/SunGraphics2D;Lsun/java2d/SurfaceData;Ljava/awt/Composite;DDDDDDDD)V

    return-void
.end method

.method public endSequence(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public fillParallelogram(Lsun/java2d/SunGraphics2D;DDDDDDDDDD)V
    .locals 16

    move-object/from16 v1, p1

    iget-object v0, v1, Lsun/java2d/SunGraphics2D;->alphafill:Lsun/java2d/loops/MaskFill;

    invoke-virtual/range {p1 .. p1}, Lsun/java2d/SunGraphics2D;->getSurfaceData()Lsun/java2d/SurfaceData;

    move-result-object v2

    iget-object v3, v1, Lsun/java2d/SunGraphics2D;->composite:Ljava/awt/Composite;

    move-wide/from16 v4, p10

    move-wide/from16 v6, p12

    move-wide/from16 v8, p14

    move-wide/from16 v10, p16

    move-wide/from16 v12, p18

    move-wide/from16 v14, p20

    invoke-virtual/range {v0 .. v15}, Lsun/java2d/loops/MaskFill;->FillAAPgram(Lsun/java2d/SunGraphics2D;Lsun/java2d/SurfaceData;Ljava/awt/Composite;DDDDDD)V

    return-void
.end method

.method public needTile(Ljava/lang/Object;IIII)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public renderPathTile(Ljava/lang/Object;[BIIIIII)V
    .locals 11

    move-object v1, p1

    check-cast v1, Lsun/java2d/SunGraphics2D;

    iget-object v0, v1, Lsun/java2d/SunGraphics2D;->alphafill:Lsun/java2d/loops/MaskFill;

    invoke-virtual {v1}, Lsun/java2d/SunGraphics2D;->getSurfaceData()Lsun/java2d/SurfaceData;

    move-result-object v2

    iget-object v3, v1, Lsun/java2d/SunGraphics2D;->composite:Ljava/awt/Composite;

    move/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move-object v8, p2

    move v9, p3

    move v10, p4

    invoke-virtual/range {v0 .. v10}, Lsun/java2d/loops/MaskFill;->MaskFill(Lsun/java2d/SunGraphics2D;Lsun/java2d/SurfaceData;Ljava/awt/Composite;IIII[BII)V

    return-void
.end method

.method public skipTile(Ljava/lang/Object;II)V
    .locals 0

    return-void
.end method

.method public startSequence(Lsun/java2d/SunGraphics2D;Ljava/awt/Shape;Ljava/awt/Rectangle;[I)Ljava/lang/Object;
    .locals 0

    return-object p1
.end method
