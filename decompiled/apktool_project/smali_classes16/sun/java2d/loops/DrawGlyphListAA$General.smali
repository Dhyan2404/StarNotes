.class public Lsun/java2d/loops/DrawGlyphListAA$General;
.super Lsun/java2d/loops/DrawGlyphListAA;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/java2d/loops/DrawGlyphListAA;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "General"
.end annotation


# instance fields
.field maskop:Lsun/java2d/loops/MaskFill;


# direct methods
.method public constructor <init>(Lsun/java2d/loops/SurfaceType;Lsun/java2d/loops/CompositeType;Lsun/java2d/loops/SurfaceType;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lsun/java2d/loops/DrawGlyphListAA;-><init>(Lsun/java2d/loops/SurfaceType;Lsun/java2d/loops/CompositeType;Lsun/java2d/loops/SurfaceType;)V

    invoke-static {p1, p2, p3}, Lsun/java2d/loops/MaskFill;->locate(Lsun/java2d/loops/SurfaceType;Lsun/java2d/loops/CompositeType;Lsun/java2d/loops/SurfaceType;)Lsun/java2d/loops/MaskFill;

    move-result-object p1

    iput-object p1, p0, Lsun/java2d/loops/DrawGlyphListAA$General;->maskop:Lsun/java2d/loops/MaskFill;

    return-void
.end method


# virtual methods
.method public DrawGlyphListAA(Lsun/java2d/SunGraphics2D;Lsun/java2d/SurfaceData;Lsun/font/GlyphList;)V
    .locals 23

    invoke-virtual/range {p3 .. p3}, Lsun/font/GlyphList;->getBounds()[I

    invoke-virtual/range {p3 .. p3}, Lsun/font/GlyphList;->getNumGlyphs()I

    move-result v0

    invoke-virtual/range {p1 .. p1}, Lsun/java2d/SunGraphics2D;->getCompClip()Lsun/java2d/pipe/Region;

    move-result-object v1

    invoke-virtual {v1}, Lsun/java2d/pipe/Region;->getLoX()I

    move-result v2

    invoke-virtual {v1}, Lsun/java2d/pipe/Region;->getLoY()I

    move-result v3

    invoke-virtual {v1}, Lsun/java2d/pipe/Region;->getHiX()I

    move-result v4

    invoke-virtual {v1}, Lsun/java2d/pipe/Region;->getHiY()I

    move-result v1

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-ge v6, v0, :cond_5

    move-object/from16 v7, p3

    invoke-virtual {v7, v6}, Lsun/font/GlyphList;->setGlyphIndex(I)V

    invoke-virtual/range {p3 .. p3}, Lsun/font/GlyphList;->getMetrics()[I

    move-result-object v8

    aget v9, v8, v5

    const/4 v10, 0x1

    aget v10, v8, v10

    const/4 v11, 0x2

    aget v22, v8, v11

    add-int v11, v9, v22

    const/4 v12, 0x3

    aget v8, v8, v12

    add-int/2addr v8, v10

    if-ge v9, v2, :cond_0

    sub-int v9, v2, v9

    move v15, v2

    goto :goto_1

    :cond_0
    move v15, v9

    move v9, v5

    :goto_1
    if-ge v10, v3, :cond_1

    sub-int v10, v3, v10

    mul-int v10, v10, v22

    add-int/2addr v9, v10

    move v10, v3

    :cond_1
    move/from16 v21, v9

    if-le v11, v4, :cond_2

    move v11, v4

    :cond_2
    if-le v8, v1, :cond_3

    move v8, v1

    :cond_3
    if-le v11, v15, :cond_4

    if-le v8, v10, :cond_4

    invoke-virtual/range {p3 .. p3}, Lsun/font/GlyphList;->getGrayBits()[B

    move-result-object v20

    move-object/from16 v9, p0

    iget-object v12, v9, Lsun/java2d/loops/DrawGlyphListAA$General;->maskop:Lsun/java2d/loops/MaskFill;

    move-object/from16 v14, p1

    iget-object v13, v14, Lsun/java2d/SunGraphics2D;->composite:Ljava/awt/Composite;

    sub-int v18, v11, v15

    sub-int v19, v8, v10

    move-object v8, v13

    move-object/from16 v13, p1

    move-object/from16 v14, p2

    move v11, v15

    move-object v15, v8

    move/from16 v16, v11

    move/from16 v17, v10

    invoke-virtual/range {v12 .. v22}, Lsun/java2d/loops/MaskFill;->MaskFill(Lsun/java2d/SunGraphics2D;Lsun/java2d/SurfaceData;Ljava/awt/Composite;IIII[BII)V

    goto :goto_2

    :cond_4
    move-object/from16 v9, p0

    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method
