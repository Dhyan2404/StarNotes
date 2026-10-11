.class Lsun/java2d/loops/Blit$AnyBlit;
.super Lsun/java2d/loops/Blit;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/java2d/loops/Blit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AnyBlit"
.end annotation


# static fields
.field public static instance:Lsun/java2d/loops/Blit$AnyBlit;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lsun/java2d/loops/Blit$AnyBlit;

    invoke-direct {v0}, Lsun/java2d/loops/Blit$AnyBlit;-><init>()V

    sput-object v0, Lsun/java2d/loops/Blit$AnyBlit;->instance:Lsun/java2d/loops/Blit$AnyBlit;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    sget-object v0, Lsun/java2d/loops/SurfaceType;->Any:Lsun/java2d/loops/SurfaceType;

    sget-object v1, Lsun/java2d/loops/CompositeType;->Any:Lsun/java2d/loops/CompositeType;

    invoke-direct {p0, v0, v1, v0}, Lsun/java2d/loops/Blit;-><init>(Lsun/java2d/loops/SurfaceType;Lsun/java2d/loops/CompositeType;Lsun/java2d/loops/SurfaceType;)V

    return-void
.end method


# virtual methods
.method public Blit(Lsun/java2d/SurfaceData;Lsun/java2d/SurfaceData;Ljava/awt/Composite;Lsun/java2d/pipe/Region;IIIIII)V
    .locals 16

    move/from16 v0, p5

    move/from16 v1, p6

    move/from16 v2, p7

    move/from16 v3, p8

    move/from16 v4, p9

    move/from16 v5, p10

    invoke-virtual/range {p1 .. p1}, Lsun/java2d/SurfaceData;->getColorModel()Ljava/awt/image/ColorModel;

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Lsun/java2d/SurfaceData;->getColorModel()Ljava/awt/image/ColorModel;

    move-result-object v7

    new-instance v8, Ljava/awt/RenderingHints;

    const/4 v9, 0x0

    invoke-direct {v8, v9}, Ljava/awt/RenderingHints;-><init>(Ljava/util/Map;)V

    move-object/from16 v9, p3

    invoke-interface {v9, v6, v7, v8}, Ljava/awt/Composite;->createContext(Ljava/awt/image/ColorModel;Ljava/awt/image/ColorModel;Ljava/awt/RenderingHints;)Ljava/awt/CompositeContext;

    move-result-object v6

    move-object/from16 v7, p1

    invoke-virtual {v7, v0, v1, v4, v5}, Lsun/java2d/SurfaceData;->getRaster(IIII)Ljava/awt/image/Raster;

    move-result-object v7

    move-object/from16 v8, p2

    invoke-virtual {v8, v2, v3, v4, v5}, Lsun/java2d/SurfaceData;->getRaster(IIII)Ljava/awt/image/Raster;

    move-result-object v8

    check-cast v8, Ljava/awt/image/WritableRaster;

    if-nez p4, :cond_0

    invoke-static/range {p7 .. p10}, Lsun/java2d/pipe/Region;->getInstanceXYWH(IIII)Lsun/java2d/pipe/Region;

    move-result-object v9

    goto :goto_0

    :cond_0
    move-object/from16 v9, p4

    :goto_0
    add-int/2addr v4, v2

    add-int/2addr v5, v3

    filled-new-array {v2, v3, v4, v5}, [I

    move-result-object v4

    invoke-virtual {v9, v4}, Lsun/java2d/pipe/Region;->getSpanIterator([I)Lsun/java2d/pipe/SpanIterator;

    move-result-object v5

    sub-int/2addr v0, v2

    sub-int/2addr v1, v3

    :goto_1
    invoke-interface {v5, v4}, Lsun/java2d/pipe/SpanIterator;->nextSpan([I)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x2

    aget v2, v4, v2

    const/4 v3, 0x0

    aget v9, v4, v3

    sub-int/2addr v2, v9

    const/4 v10, 0x3

    aget v10, v4, v10

    const/4 v11, 0x1

    aget v12, v4, v11

    sub-int/2addr v10, v12

    add-int/2addr v9, v0

    add-int/2addr v12, v1

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 p0, v7

    move/from16 p1, v9

    move/from16 p2, v12

    move/from16 p3, v2

    move/from16 p4, v10

    move/from16 p5, v13

    move/from16 p6, v14

    move-object/from16 p7, v15

    invoke-virtual/range {p0 .. p7}, Ljava/awt/image/Raster;->createChild(IIIIII[I)Ljava/awt/image/Raster;

    move-result-object v9

    aget v3, v4, v3

    aget v11, v4, v11

    const/4 v12, 0x0

    const/4 v14, 0x0

    move-object/from16 p0, v8

    move/from16 p1, v3

    move/from16 p2, v11

    move/from16 p5, v12

    move/from16 p6, v13

    move-object/from16 p7, v14

    invoke-virtual/range {p0 .. p7}, Ljava/awt/image/WritableRaster;->createWritableChild(IIIIII[I)Ljava/awt/image/WritableRaster;

    move-result-object v2

    invoke-interface {v6, v9, v2, v2}, Ljava/awt/CompositeContext;->compose(Ljava/awt/image/Raster;Ljava/awt/image/Raster;Ljava/awt/image/WritableRaster;)V

    goto :goto_1

    :cond_1
    invoke-interface {v6}, Ljava/awt/CompositeContext;->dispose()V

    return-void
.end method
