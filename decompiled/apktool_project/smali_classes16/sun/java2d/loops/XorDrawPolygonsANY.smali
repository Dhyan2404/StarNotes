.class Lsun/java2d/loops/XorDrawPolygonsANY;
.super Lsun/java2d/loops/DrawPolygons;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 3

    sget-object v0, Lsun/java2d/loops/SurfaceType;->AnyColor:Lsun/java2d/loops/SurfaceType;

    sget-object v1, Lsun/java2d/loops/CompositeType;->Xor:Lsun/java2d/loops/CompositeType;

    sget-object v2, Lsun/java2d/loops/SurfaceType;->Any:Lsun/java2d/loops/SurfaceType;

    invoke-direct {p0, v0, v1, v2}, Lsun/java2d/loops/DrawPolygons;-><init>(Lsun/java2d/loops/SurfaceType;Lsun/java2d/loops/CompositeType;Lsun/java2d/loops/SurfaceType;)V

    return-void
.end method


# virtual methods
.method public DrawPolygons(Lsun/java2d/SunGraphics2D;Lsun/java2d/SurfaceData;[I[I[IIIIZ)V
    .locals 16

    invoke-static/range {p1 .. p2}, Lsun/java2d/loops/GeneralRenderer;->createXorPixelWriter(Lsun/java2d/SunGraphics2D;Lsun/java2d/SurfaceData;)Lsun/java2d/loops/PixelWriter;

    move-result-object v10

    invoke-virtual/range {p1 .. p1}, Lsun/java2d/SunGraphics2D;->getCompClip()Lsun/java2d/pipe/Region;

    move-result-object v11

    const/4 v0, 0x0

    move/from16 v14, p6

    move v12, v0

    move v13, v12

    :goto_0
    if-ge v12, v14, :cond_0

    aget v15, p5, v12

    move-object/from16 v0, p2

    move-object v1, v10

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move v4, v13

    move v5, v15

    move-object v6, v11

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-static/range {v0 .. v9}, Lsun/java2d/loops/GeneralRenderer;->doDrawPoly(Lsun/java2d/SurfaceData;Lsun/java2d/loops/PixelWriter;[I[IIILsun/java2d/pipe/Region;IIZ)V

    add-int/2addr v13, v15

    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
