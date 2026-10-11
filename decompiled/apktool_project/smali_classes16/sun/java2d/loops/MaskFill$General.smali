.class Lsun/java2d/loops/MaskFill$General;
.super Lsun/java2d/loops/MaskFill;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/java2d/loops/MaskFill;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "General"
.end annotation


# instance fields
.field fillop:Lsun/java2d/loops/FillRect;

.field maskop:Lsun/java2d/loops/MaskBlit;


# direct methods
.method public constructor <init>(Lsun/java2d/loops/SurfaceType;Lsun/java2d/loops/CompositeType;Lsun/java2d/loops/SurfaceType;)V
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Lsun/java2d/loops/MaskFill;-><init>(Lsun/java2d/loops/SurfaceType;Lsun/java2d/loops/CompositeType;Lsun/java2d/loops/SurfaceType;)V

    sget-object v0, Lsun/java2d/loops/CompositeType;->SrcNoEa:Lsun/java2d/loops/CompositeType;

    sget-object v1, Lsun/java2d/loops/SurfaceType;->IntArgb:Lsun/java2d/loops/SurfaceType;

    invoke-static {p1, v0, v1}, Lsun/java2d/loops/FillRect;->locate(Lsun/java2d/loops/SurfaceType;Lsun/java2d/loops/CompositeType;Lsun/java2d/loops/SurfaceType;)Lsun/java2d/loops/FillRect;

    move-result-object p1

    iput-object p1, p0, Lsun/java2d/loops/MaskFill$General;->fillop:Lsun/java2d/loops/FillRect;

    invoke-static {v1, p2, p3}, Lsun/java2d/loops/MaskBlit;->locate(Lsun/java2d/loops/SurfaceType;Lsun/java2d/loops/CompositeType;Lsun/java2d/loops/SurfaceType;)Lsun/java2d/loops/MaskBlit;

    move-result-object p1

    iput-object p1, p0, Lsun/java2d/loops/MaskFill$General;->maskop:Lsun/java2d/loops/MaskBlit;

    return-void
.end method


# virtual methods
.method public MaskFill(Lsun/java2d/SunGraphics2D;Lsun/java2d/SurfaceData;Ljava/awt/Composite;IIII[BII)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v8, p1

    new-instance v1, Ljava/awt/image/BufferedImage;

    const/4 v2, 0x2

    move/from16 v12, p6

    move/from16 v13, p7

    invoke-direct {v1, v12, v13, v2}, Ljava/awt/image/BufferedImage;-><init>(III)V

    invoke-static {v1}, Lsun/awt/image/BufImgSurfaceData;->createData(Ljava/awt/image/BufferedImage;)Lsun/java2d/SurfaceData;

    move-result-object v9

    iget-object v10, v8, Lsun/java2d/SunGraphics2D;->clipRegion:Lsun/java2d/pipe/Region;

    const/4 v1, 0x0

    iput-object v1, v8, Lsun/java2d/SunGraphics2D;->clipRegion:Lsun/java2d/pipe/Region;

    iget v11, v8, Lsun/java2d/SunGraphics2D;->pixel:I

    invoke-virtual/range {p1 .. p1}, Lsun/java2d/SunGraphics2D;->getColor()Ljava/awt/Color;

    move-result-object v1

    invoke-virtual {v9, v1}, Lsun/java2d/SurfaceData;->pixelFor(Ljava/awt/Color;)I

    move-result v1

    iput v1, v8, Lsun/java2d/SunGraphics2D;->pixel:I

    iget-object v1, v0, Lsun/java2d/loops/MaskFill$General;->fillop:Lsun/java2d/loops/FillRect;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v2, p1

    move-object v3, v9

    move/from16 v6, p6

    move/from16 v7, p7

    invoke-virtual/range {v1 .. v7}, Lsun/java2d/loops/FillRect;->FillRect(Lsun/java2d/SunGraphics2D;Lsun/java2d/SurfaceData;IIII)V

    iput v11, v8, Lsun/java2d/SunGraphics2D;->pixel:I

    iput-object v10, v8, Lsun/java2d/SunGraphics2D;->clipRegion:Lsun/java2d/pipe/Region;

    iget-object v3, v0, Lsun/java2d/loops/MaskFill$General;->maskop:Lsun/java2d/loops/MaskBlit;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v0, 0x0

    move-object v4, v9

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move v9, v0

    move/from16 v10, p4

    move/from16 v11, p5

    move-object/from16 v14, p8

    move/from16 v15, p9

    move/from16 v16, p10

    invoke-virtual/range {v3 .. v16}, Lsun/java2d/loops/MaskBlit;->MaskBlit(Lsun/java2d/SurfaceData;Lsun/java2d/SurfaceData;Ljava/awt/Composite;Lsun/java2d/pipe/Region;IIIIII[BII)V

    return-void
.end method
