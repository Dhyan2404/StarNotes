.class public abstract Lsun/java2d/pipe/GlyphListPipe;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsun/java2d/pipe/TextPipe;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public drawChars(Lsun/java2d/SunGraphics2D;[CIIII)V
    .locals 15

    move-object/from16 v1, p1

    move/from16 v5, p5

    move/from16 v6, p6

    invoke-virtual/range {p1 .. p1}, Lsun/java2d/SunGraphics2D;->getFontInfo()Lsun/java2d/loops/FontInfo;

    move-result-object v8

    iget v0, v8, Lsun/java2d/loops/FontInfo;->pixelHeight:I

    const/16 v2, 0x64

    if-le v0, v2, :cond_0

    sget-object v0, Lsun/java2d/SurfaceData;->outlineTextRenderer:Lsun/java2d/pipe/TextPipe;

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    invoke-interface/range {v0 .. v6}, Lsun/java2d/pipe/TextPipe;->drawChars(Lsun/java2d/SunGraphics2D;[CIIII)V

    return-void

    :cond_0
    iget v0, v1, Lsun/java2d/SunGraphics2D;->transformState:I

    const/4 v2, 0x3

    if-lt v0, v2, :cond_1

    const/4 v0, 0x2

    new-array v0, v0, [D

    int-to-float v2, v5

    iget v3, v8, Lsun/java2d/loops/FontInfo;->originX:F

    add-float/2addr v2, v3

    float-to-double v2, v2

    const/4 v4, 0x0

    aput-wide v2, v0, v4

    int-to-float v2, v6

    iget v3, v8, Lsun/java2d/loops/FontInfo;->originY:F

    add-float/2addr v2, v3

    float-to-double v2, v2

    const/4 v7, 0x1

    aput-wide v2, v0, v7

    iget-object v9, v1, Lsun/java2d/SunGraphics2D;->transform:Ljava/awt/geom/AffineTransform;

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x1

    move-object v10, v0

    move-object v12, v0

    invoke-virtual/range {v9 .. v14}, Ljava/awt/geom/AffineTransform;->transform([DI[DII)V

    aget-wide v2, v0, v4

    double-to-float v2, v2

    aget-wide v3, v0, v7

    double-to-float v0, v3

    move v13, v0

    move v12, v2

    goto :goto_0

    :cond_1
    int-to-float v0, v5

    iget v2, v8, Lsun/java2d/loops/FontInfo;->originX:F

    add-float/2addr v0, v2

    iget v2, v1, Lsun/java2d/SunGraphics2D;->transX:I

    int-to-float v2, v2

    add-float/2addr v0, v2

    int-to-float v2, v6

    iget v3, v8, Lsun/java2d/loops/FontInfo;->originY:F

    add-float/2addr v2, v3

    iget v3, v1, Lsun/java2d/SunGraphics2D;->transY:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    move v12, v0

    move v13, v2

    :goto_0
    invoke-static {}, Lsun/font/GlyphList;->getInstance()Lsun/font/GlyphList;

    move-result-object v0

    move-object v7, v0

    move-object/from16 v9, p2

    move/from16 v10, p3

    move/from16 v11, p4

    invoke-virtual/range {v7 .. v13}, Lsun/font/GlyphList;->setFromChars(Lsun/java2d/loops/FontInfo;[CIIFF)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object v2, p0

    invoke-virtual {p0, v1, v0}, Lsun/java2d/pipe/GlyphListPipe;->drawGlyphList(Lsun/java2d/SunGraphics2D;Lsun/font/GlyphList;)V

    invoke-virtual {v0}, Lsun/font/GlyphList;->dispose()V

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Lsun/font/GlyphList;->dispose()V

    new-instance v0, Ljava/awt/font/TextLayout;

    new-instance v2, Ljava/lang/String;

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v7, p4

    invoke-direct {v2, v3, v4, v7}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual/range {p1 .. p1}, Lsun/java2d/SunGraphics2D;->getFont()Ljava/awt/Font;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lsun/java2d/SunGraphics2D;->getFontRenderContext()Ljava/awt/font/FontRenderContext;

    move-result-object v4

    invoke-direct {v0, v2, v3, v4}, Ljava/awt/font/TextLayout;-><init>(Ljava/lang/String;Ljava/awt/Font;Ljava/awt/font/FontRenderContext;)V

    int-to-float v2, v5

    int-to-float v3, v6

    invoke-virtual {v0, v1, v2, v3}, Ljava/awt/font/TextLayout;->draw(Ljava/awt/Graphics2D;FF)V

    :goto_1
    return-void
.end method

.method public abstract drawGlyphList(Lsun/java2d/SunGraphics2D;Lsun/font/GlyphList;)V
.end method

.method public drawGlyphList(Lsun/java2d/SunGraphics2D;Lsun/font/GlyphList;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lsun/java2d/pipe/GlyphListPipe;->drawGlyphList(Lsun/java2d/SunGraphics2D;Lsun/font/GlyphList;)V

    return-void
.end method

.method public drawGlyphVector(Lsun/java2d/SunGraphics2D;Ljava/awt/font/GlyphVector;FF)V
    .locals 8

    invoke-virtual {p2}, Ljava/awt/font/GlyphVector;->getFontRenderContext()Ljava/awt/font/FontRenderContext;

    move-result-object v0

    invoke-virtual {p2}, Ljava/awt/font/GlyphVector;->getFont()Ljava/awt/Font;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Lsun/java2d/SunGraphics2D;->getGVFontInfo(Ljava/awt/Font;Ljava/awt/font/FontRenderContext;)Lsun/java2d/loops/FontInfo;

    move-result-object v0

    iget v1, v0, Lsun/java2d/loops/FontInfo;->pixelHeight:I

    const/16 v2, 0x64

    if-le v1, v2, :cond_0

    sget-object p0, Lsun/java2d/SurfaceData;->outlineTextRenderer:Lsun/java2d/pipe/TextPipe;

    invoke-interface {p0, p1, p2, p3, p4}, Lsun/java2d/pipe/TextPipe;->drawGlyphVector(Lsun/java2d/SunGraphics2D;Ljava/awt/font/GlyphVector;FF)V

    return-void

    :cond_0
    iget v1, p1, Lsun/java2d/SunGraphics2D;->transformState:I

    const/4 v2, 0x3

    if-lt v1, v2, :cond_1

    const/4 v1, 0x2

    new-array v1, v1, [D

    float-to-double v2, p3

    const/4 p3, 0x0

    aput-wide v2, v1, p3

    float-to-double v2, p4

    const/4 p4, 0x1

    aput-wide v2, v1, p4

    iget-object v2, p1, Lsun/java2d/SunGraphics2D;->transform:Ljava/awt/geom/AffineTransform;

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v3, v1

    move-object v5, v1

    invoke-virtual/range {v2 .. v7}, Ljava/awt/geom/AffineTransform;->transform([DI[DII)V

    aget-wide v2, v1, p3

    double-to-float p3, v2

    aget-wide v1, v1, p4

    double-to-float p4, v1

    goto :goto_0

    :cond_1
    iget v1, p1, Lsun/java2d/SunGraphics2D;->transX:I

    int-to-float v1, v1

    add-float/2addr p3, v1

    iget v1, p1, Lsun/java2d/SunGraphics2D;->transY:I

    int-to-float v1, v1

    add-float/2addr p4, v1

    :goto_0
    invoke-static {}, Lsun/font/GlyphList;->getInstance()Lsun/font/GlyphList;

    move-result-object v1

    invoke-virtual {v1, v0, p2, p3, p4}, Lsun/font/GlyphList;->setFromGlyphVector(Lsun/java2d/loops/FontInfo;Ljava/awt/font/GlyphVector;FF)V

    iget p2, v0, Lsun/java2d/loops/FontInfo;->aaHint:I

    invoke-virtual {p0, p1, v1, p2}, Lsun/java2d/pipe/GlyphListPipe;->drawGlyphList(Lsun/java2d/SunGraphics2D;Lsun/font/GlyphList;I)V

    invoke-virtual {v1}, Lsun/font/GlyphList;->dispose()V

    return-void
.end method

.method public drawString(Lsun/java2d/SunGraphics2D;Ljava/lang/String;DD)V
    .locals 16

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-wide/from16 v3, p3

    move-wide/from16 v5, p5

    invoke-virtual/range {p1 .. p1}, Lsun/java2d/SunGraphics2D;->getFontInfo()Lsun/java2d/loops/FontInfo;

    move-result-object v0

    iget v7, v0, Lsun/java2d/loops/FontInfo;->pixelHeight:I

    const/16 v8, 0x64

    if-le v7, v8, :cond_0

    sget-object v0, Lsun/java2d/SurfaceData;->outlineTextRenderer:Lsun/java2d/pipe/TextPipe;

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-wide/from16 v3, p3

    move-wide/from16 v5, p5

    invoke-interface/range {v0 .. v6}, Lsun/java2d/pipe/TextPipe;->drawString(Lsun/java2d/SunGraphics2D;Ljava/lang/String;DD)V

    return-void

    :cond_0
    iget v7, v1, Lsun/java2d/SunGraphics2D;->transformState:I

    const/4 v8, 0x3

    if-lt v7, v8, :cond_1

    const/4 v7, 0x2

    new-array v7, v7, [D

    iget v8, v0, Lsun/java2d/loops/FontInfo;->originX:F

    float-to-double v8, v8

    add-double/2addr v8, v3

    const/4 v14, 0x0

    aput-wide v8, v7, v14

    iget v8, v0, Lsun/java2d/loops/FontInfo;->originY:F

    float-to-double v8, v8

    add-double/2addr v8, v5

    const/4 v15, 0x1

    aput-wide v8, v7, v15

    iget-object v8, v1, Lsun/java2d/SunGraphics2D;->transform:Ljava/awt/geom/AffineTransform;

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x1

    move-object v9, v7

    move-object v11, v7

    invoke-virtual/range {v8 .. v13}, Ljava/awt/geom/AffineTransform;->transform([DI[DII)V

    aget-wide v8, v7, v14

    double-to-float v8, v8

    aget-wide v9, v7, v15

    goto :goto_0

    :cond_1
    iget v7, v0, Lsun/java2d/loops/FontInfo;->originX:F

    float-to-double v7, v7

    add-double/2addr v7, v3

    iget v9, v1, Lsun/java2d/SunGraphics2D;->transX:I

    int-to-double v9, v9

    add-double/2addr v7, v9

    double-to-float v8, v7

    iget v7, v0, Lsun/java2d/loops/FontInfo;->originY:F

    float-to-double v9, v7

    add-double/2addr v9, v5

    iget v7, v1, Lsun/java2d/SunGraphics2D;->transY:I

    int-to-double v11, v7

    add-double/2addr v9, v11

    :goto_0
    double-to-float v7, v9

    invoke-static {}, Lsun/font/GlyphList;->getInstance()Lsun/font/GlyphList;

    move-result-object v9

    invoke-virtual {v9, v0, v2, v8, v7}, Lsun/font/GlyphList;->setFromString(Lsun/java2d/loops/FontInfo;Ljava/lang/String;FF)Z

    move-result v0

    if-eqz v0, :cond_2

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v9}, Lsun/java2d/pipe/GlyphListPipe;->drawGlyphList(Lsun/java2d/SunGraphics2D;Lsun/font/GlyphList;)V

    invoke-virtual {v9}, Lsun/font/GlyphList;->dispose()V

    goto :goto_1

    :cond_2
    invoke-virtual {v9}, Lsun/font/GlyphList;->dispose()V

    new-instance v0, Ljava/awt/font/TextLayout;

    invoke-virtual/range {p1 .. p1}, Lsun/java2d/SunGraphics2D;->getFont()Ljava/awt/Font;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Lsun/java2d/SunGraphics2D;->getFontRenderContext()Ljava/awt/font/FontRenderContext;

    move-result-object v8

    invoke-direct {v0, v2, v7, v8}, Ljava/awt/font/TextLayout;-><init>(Ljava/lang/String;Ljava/awt/Font;Ljava/awt/font/FontRenderContext;)V

    double-to-float v2, v3

    double-to-float v3, v5

    invoke-virtual {v0, v1, v2, v3}, Ljava/awt/font/TextLayout;->draw(Ljava/awt/Graphics2D;FF)V

    :goto_1
    return-void
.end method
