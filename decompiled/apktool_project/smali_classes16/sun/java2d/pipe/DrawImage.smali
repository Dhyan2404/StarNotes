.class public Lsun/java2d/pipe/DrawImage;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsun/java2d/pipe/DrawImagePipe;


# static fields
.field private static final MAX_TX_ERROR:D = 1.0E-4


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static closeToInteger(ID)Z
    .locals 2

    int-to-double v0, p0

    sub-double/2addr p1, v0

    invoke-static {p1, p2}, Ljava/lang/Math;->abs(D)D

    move-result-wide p0

    const-wide v0, 0x3f1a36e2eb1c432dL    # 1.0E-4

    cmpg-double p0, p0, v0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private getTransformColorModel(Lsun/java2d/SunGraphics2D;Ljava/awt/image/BufferedImage;Ljava/awt/geom/AffineTransform;)Ljava/awt/image/ColorModel;
    .locals 11

    invoke-virtual {p2}, Ljava/awt/image/BufferedImage;->getColorModel()Ljava/awt/image/ColorModel;

    move-result-object p0

    invoke-virtual {p3}, Ljava/awt/geom/AffineTransform;->isIdentity()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p3}, Ljava/awt/geom/AffineTransform;->getType()I

    move-result v0

    and-int/lit8 v1, v0, 0x38

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    move v1, v3

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    const/4 v4, 0x4

    if-nez v1, :cond_4

    if-eq v0, v3, :cond_4

    if-eqz v0, :cond_4

    new-array v0, v4, [D

    invoke-virtual {p3, v0}, Ljava/awt/geom/AffineTransform;->getMatrix([D)V

    aget-wide v5, v0, v2

    double-to-int v1, v5

    int-to-double v7, v1

    cmpl-double v1, v5, v7

    if-nez v1, :cond_3

    const/4 v1, 0x3

    aget-wide v0, v0, v1

    double-to-int v5, v0

    int-to-double v5, v5

    cmpl-double v0, v0, v5

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_2

    :cond_3
    :goto_1
    move v1, v3

    :cond_4
    :goto_2
    iget p1, p1, Lsun/java2d/SunGraphics2D;->renderHint:I

    const/4 v0, 0x2

    if-eq p1, v0, :cond_9

    instance-of p1, p0, Ljava/awt/image/IndexColorModel;

    if-eqz p1, :cond_8

    invoke-virtual {p2}, Ljava/awt/image/BufferedImage;->getRaster()Ljava/awt/image/WritableRaster;

    move-result-object p1

    move-object p2, p0

    check-cast p2, Ljava/awt/image/IndexColorModel;

    if-eqz v1, :cond_b

    invoke-virtual {p0}, Ljava/awt/image/ColorModel;->getTransparency()I

    move-result v1

    if-ne v1, v3, :cond_b

    instance-of p1, p1, Lsun/awt/image/BytePackedRaster;

    if-eqz p1, :cond_5

    invoke-static {}, Ljava/awt/image/ColorModel;->getRGBdefault()Ljava/awt/image/ColorModel;

    move-result-object p0

    goto :goto_3

    :cond_5
    const/4 p1, 0x6

    new-array p1, p1, [D

    invoke-virtual {p3, p1}, Ljava/awt/geom/AffineTransform;->getMatrix([D)V

    aget-wide v5, p1, v3

    const-wide/16 v7, 0x0

    cmpl-double p3, v5, v7

    if-nez p3, :cond_6

    aget-wide v0, p1, v0

    cmpl-double p3, v0, v7

    if-nez p3, :cond_6

    aget-wide v0, p1, v4

    cmpl-double p3, v0, v7

    if-nez p3, :cond_6

    const/4 p3, 0x5

    aget-wide v0, p1, p3

    cmpl-double p1, v0, v7

    if-nez p1, :cond_6

    goto :goto_3

    :cond_6
    invoke-virtual {p2}, Ljava/awt/image/IndexColorModel;->getMapSize()I

    move-result v9

    const/16 p0, 0x100

    if-ge v9, p0, :cond_7

    add-int/lit8 v5, v9, 0x1

    new-array v6, v5, [I

    invoke-virtual {p2, v6}, Ljava/awt/image/IndexColorModel;->getRGBs([I)V

    aput v2, v6, v9

    new-instance p0, Ljava/awt/image/IndexColorModel;

    invoke-virtual {p2}, Ljava/awt/image/ColorModel;->getPixelSize()I

    move-result v4

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v10, 0x0

    move-object v3, p0

    invoke-direct/range {v3 .. v10}, Ljava/awt/image/IndexColorModel;-><init>(II[IIZII)V

    goto :goto_3

    :cond_7
    invoke-static {}, Ljava/awt/image/ColorModel;->getRGBdefault()Ljava/awt/image/ColorModel;

    move-result-object p0

    goto :goto_3

    :cond_8
    if-eqz v1, :cond_b

    invoke-virtual {p0}, Ljava/awt/image/ColorModel;->getTransparency()I

    move-result p1

    if-ne p1, v3, :cond_b

    invoke-static {}, Ljava/awt/image/ColorModel;->getRGBdefault()Ljava/awt/image/ColorModel;

    move-result-object p0

    goto :goto_3

    :cond_9
    instance-of p1, p0, Ljava/awt/image/IndexColorModel;

    if-nez p1, :cond_a

    if-eqz v1, :cond_b

    invoke-virtual {p0}, Ljava/awt/image/ColorModel;->getTransparency()I

    move-result p1

    if-ne p1, v3, :cond_b

    :cond_a
    invoke-static {}, Ljava/awt/image/ColorModel;->getRGBdefault()Ljava/awt/image/ColorModel;

    move-result-object p0

    :cond_b
    :goto_3
    return-object p0
.end method

.method public static isBgOperation(Lsun/java2d/SurfaceData;Ljava/awt/Color;)Z
    .locals 1

    const/4 v0, 0x1

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lsun/java2d/SurfaceData;->getTransparency()I

    move-result p0

    if-eq p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method public static isSimpleTranslate(Lsun/java2d/SunGraphics2D;)Z
    .locals 4

    iget v0, p0, Lsun/java2d/SunGraphics2D;->transformState:I

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x3

    const/4 v3, 0x0

    if-lt v0, v2, :cond_1

    return v3

    :cond_1
    iget p0, p0, Lsun/java2d/SunGraphics2D;->interpolationType:I

    if-ne p0, v1, :cond_2

    return v1

    :cond_2
    return v3
.end method


# virtual methods
.method public blitSurfaceData(Lsun/java2d/SunGraphics2D;Lsun/java2d/pipe/Region;Lsun/java2d/SurfaceData;Lsun/java2d/SurfaceData;Lsun/java2d/loops/SurfaceType;Lsun/java2d/loops/SurfaceType;IIIIIILjava/awt/Color;)V
    .locals 12

    move-object v0, p1

    move-object/from16 v1, p5

    move-object/from16 v2, p6

    move-object/from16 v3, p13

    if-lez p11, :cond_4

    if-gtz p12, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-object v4, v0, Lsun/java2d/SunGraphics2D;->imageComp:Lsun/java2d/loops/CompositeType;

    sget-object v5, Lsun/java2d/loops/CompositeType;->SrcOverNoEa:Lsun/java2d/loops/CompositeType;

    invoke-virtual {v5, v4}, Lsun/java2d/loops/CompositeType;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {p3}, Lsun/java2d/SurfaceData;->getTransparency()I

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_1

    if-eqz v3, :cond_2

    invoke-virtual/range {p13 .. p13}, Ljava/awt/Color;->getTransparency()I

    move-result v5

    if-ne v5, v6, :cond_2

    :cond_1
    sget-object v4, Lsun/java2d/loops/CompositeType;->SrcNoEa:Lsun/java2d/loops/CompositeType;

    :cond_2
    move-object v5, p3

    invoke-static {p3, v3}, Lsun/java2d/pipe/DrawImage;->isBgOperation(Lsun/java2d/SurfaceData;Ljava/awt/Color;)Z

    move-result v6

    if-nez v6, :cond_3

    invoke-static {v1, v4, v2}, Lsun/java2d/loops/Blit;->getFromCache(Lsun/java2d/loops/SurfaceType;Lsun/java2d/loops/CompositeType;Lsun/java2d/loops/SurfaceType;)Lsun/java2d/loops/Blit;

    move-result-object v1

    iget-object v3, v0, Lsun/java2d/SunGraphics2D;->composite:Ljava/awt/Composite;

    move-object v0, v1

    move-object v1, p3

    move-object/from16 v2, p4

    move-object v4, p2

    move/from16 v5, p7

    move/from16 v6, p8

    move/from16 v7, p9

    move/from16 v8, p10

    move/from16 v9, p11

    move/from16 v10, p12

    invoke-virtual/range {v0 .. v10}, Lsun/java2d/loops/Blit;->Blit(Lsun/java2d/SurfaceData;Lsun/java2d/SurfaceData;Ljava/awt/Composite;Lsun/java2d/pipe/Region;IIIIII)V

    goto :goto_0

    :cond_3
    invoke-static {v1, v4, v2}, Lsun/java2d/loops/BlitBg;->getFromCache(Lsun/java2d/loops/SurfaceType;Lsun/java2d/loops/CompositeType;Lsun/java2d/loops/SurfaceType;)Lsun/java2d/loops/BlitBg;

    move-result-object v1

    iget-object v4, v0, Lsun/java2d/SunGraphics2D;->composite:Ljava/awt/Composite;

    invoke-virtual/range {p13 .. p13}, Ljava/awt/Color;->getRGB()I

    move-result v6

    move-object v0, v1

    move-object v1, p3

    move-object/from16 v2, p4

    move-object v3, v4

    move-object v4, p2

    move v5, v6

    move/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    move/from16 v9, p10

    move/from16 v10, p11

    move/from16 v11, p12

    invoke-virtual/range {v0 .. v11}, Lsun/java2d/loops/BlitBg;->BlitBg(Lsun/java2d/SurfaceData;Lsun/java2d/SurfaceData;Ljava/awt/Composite;Lsun/java2d/pipe/Region;IIIIIII)V

    :cond_4
    :goto_0
    return-void
.end method

.method public copyImage(Lsun/java2d/SunGraphics2D;Ljava/awt/Image;IIIIIILjava/awt/Color;)Z
    .locals 12

    move-object v1, p1

    .line 11
    invoke-static {p1}, Lsun/java2d/pipe/DrawImage;->isSimpleTranslate(Lsun/java2d/SunGraphics2D;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 12
    iget v0, v1, Lsun/java2d/SunGraphics2D;->transX:I

    add-int v4, p3, v0

    iget v0, v1, Lsun/java2d/SunGraphics2D;->transY:I

    add-int v5, p4, v0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p9

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-virtual/range {v0 .. v9}, Lsun/java2d/pipe/DrawImage;->renderImageCopy(Lsun/java2d/SunGraphics2D;Ljava/awt/Image;Ljava/awt/Color;IIIIII)Z

    move-result v0

    return v0

    :cond_0
    add-int v5, p3, p7

    add-int v6, p4, p8

    add-int v9, p5, p7

    add-int v10, p6, p8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move/from16 v4, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move-object/from16 v11, p9

    .line 13
    invoke-virtual/range {v0 .. v11}, Lsun/java2d/pipe/DrawImage;->scaleImage(Lsun/java2d/SunGraphics2D;Ljava/awt/Image;IIIIIIIILjava/awt/Color;)Z

    const/4 v0, 0x1

    return v0
.end method

.method public copyImage(Lsun/java2d/SunGraphics2D;Ljava/awt/Image;IIIIIILjava/awt/Color;Ljava/awt/image/ImageObserver;)Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    return p0
.end method

.method public copyImage(Lsun/java2d/SunGraphics2D;Ljava/awt/Image;IILjava/awt/Color;)Z
    .locals 10

    const/4 v4, 0x0

    .line 3
    invoke-virtual {p2, v4}, Ljava/awt/Image;->getWidth(Ljava/awt/image/ImageObserver;)I

    move-result v8

    .line 4
    invoke-virtual {p2, v4}, Ljava/awt/Image;->getHeight(Ljava/awt/image/ImageObserver;)I

    move-result v9

    .line 5
    invoke-static {p1}, Lsun/java2d/pipe/DrawImage;->isSimpleTranslate(Lsun/java2d/SunGraphics2D;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 6
    iget v4, p1, Lsun/java2d/SunGraphics2D;->transX:I

    add-int/2addr v4, p3

    iget v0, p1, Lsun/java2d/SunGraphics2D;->transY:I

    add-int v5, p4, v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p5

    invoke-virtual/range {v0 .. v9}, Lsun/java2d/pipe/DrawImage;->renderImageCopy(Lsun/java2d/SunGraphics2D;Ljava/awt/Image;Ljava/awt/Color;IIIIII)Z

    move-result v0

    return v0

    .line 7
    :cond_0
    iget-object v4, p1, Lsun/java2d/SunGraphics2D;->transform:Ljava/awt/geom/AffineTransform;

    or-int v5, p3, p4

    if-eqz v5, :cond_1

    .line 8
    new-instance v5, Ljava/awt/geom/AffineTransform;

    invoke-direct {v5, v4}, Ljava/awt/geom/AffineTransform;-><init>(Ljava/awt/geom/AffineTransform;)V

    int-to-double v6, p3

    int-to-double v3, p4

    .line 9
    invoke-virtual {v5, v6, v7, v3, v4}, Ljava/awt/geom/AffineTransform;->translate(DD)V

    move-object v3, v5

    goto :goto_0

    :cond_1
    move-object v3, v4

    .line 10
    :goto_0
    iget v4, p1, Lsun/java2d/SunGraphics2D;->interpolationType:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v7, v8

    move v8, v9

    move-object v9, p5

    invoke-virtual/range {v0 .. v9}, Lsun/java2d/pipe/DrawImage;->transformImage(Lsun/java2d/SunGraphics2D;Ljava/awt/Image;Ljava/awt/geom/AffineTransform;IIIIILjava/awt/Color;)V

    const/4 v0, 0x1

    return v0
.end method

.method public copyImage(Lsun/java2d/SunGraphics2D;Ljava/awt/Image;IILjava/awt/Color;Ljava/awt/image/ImageObserver;)Z
    .locals 0

    .line 2
    const/4 p0, 0x0

    return p0
.end method

.method public getBufferedImage(Ljava/awt/Image;)Ljava/awt/image/BufferedImage;
    .locals 0

    instance-of p0, p1, Ljava/awt/image/BufferedImage;

    if-eqz p0, :cond_0

    check-cast p1, Ljava/awt/image/BufferedImage;

    return-object p1

    :cond_0
    check-cast p1, Ljava/awt/image/VolatileImage;

    invoke-virtual {p1}, Ljava/awt/image/VolatileImage;->getSnapshot()Ljava/awt/image/BufferedImage;

    move-result-object p0

    return-object p0
.end method

.method public makeBufferedImage(Ljava/awt/Image;Ljava/awt/Color;IIIII)Ljava/awt/image/BufferedImage;
    .locals 12

    move-object v0, p2

    sub-int v6, p6, p4

    sub-int v7, p7, p5

    new-instance v10, Ljava/awt/image/BufferedImage;

    move v1, p3

    invoke-direct {v10, v6, v7, p3}, Ljava/awt/image/BufferedImage;-><init>(III)V

    invoke-virtual {v10}, Ljava/awt/image/BufferedImage;->createGraphics()Ljava/awt/Graphics2D;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Lsun/java2d/SunGraphics2D;

    sget-object v1, Ljava/awt/AlphaComposite;->Src:Ljava/awt/AlphaComposite;

    invoke-virtual {v11, v1}, Lsun/java2d/SunGraphics2D;->setComposite(Ljava/awt/Composite;)V

    const/4 v1, 0x0

    invoke-virtual {v10, v1}, Ljava/awt/Image;->setAccelerationPriority(F)V

    if-eqz v0, :cond_0

    invoke-virtual {v11, p2}, Lsun/java2d/SunGraphics2D;->setColor(Ljava/awt/Color;)V

    const/4 v0, 0x0

    invoke-virtual {v11, v0, v0, v6, v7}, Lsun/java2d/SunGraphics2D;->fillRect(IIII)V

    sget-object v0, Ljava/awt/AlphaComposite;->SrcOver:Ljava/awt/AlphaComposite;

    invoke-virtual {v11, v0}, Lsun/java2d/SunGraphics2D;->setComposite(Ljava/awt/Composite;)V

    :cond_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, v11

    move-object v1, p1

    move/from16 v4, p4

    move/from16 v5, p5

    invoke-virtual/range {v0 .. v9}, Lsun/java2d/SunGraphics2D;->copyImage(Ljava/awt/Image;IIIIIILjava/awt/Color;Ljava/awt/image/ImageObserver;)Z

    invoke-virtual {v11}, Lsun/java2d/SunGraphics2D;->dispose()V

    return-object v10
.end method

.method public renderImageCopy(Lsun/java2d/SunGraphics2D;Ljava/awt/Image;Ljava/awt/Color;IIIIII)Z
    .locals 19

    move-object/from16 v0, p1

    invoke-virtual/range {p1 .. p1}, Lsun/java2d/SunGraphics2D;->getCompClip()Lsun/java2d/pipe/Region;

    move-result-object v1

    iget-object v2, v0, Lsun/java2d/SunGraphics2D;->surfaceData:Lsun/java2d/SurfaceData;

    const/4 v15, 0x0

    move-object v3, v1

    move-object v14, v2

    move/from16 v16, v15

    :goto_0
    iget-object v1, v0, Lsun/java2d/SunGraphics2D;->imageComp:Lsun/java2d/loops/CompositeType;

    move-object/from16 v13, p2

    move-object/from16 v12, p3

    invoke-virtual {v14, v13, v15, v1, v12}, Lsun/java2d/SurfaceData;->getSourceSurfaceData(Ljava/awt/Image;ILsun/java2d/loops/CompositeType;Ljava/awt/Color;)Lsun/java2d/SurfaceData;

    move-result-object v17

    if-nez v17, :cond_0

    return v15

    :cond_0
    const/4 v11, 0x1

    :try_start_0
    invoke-virtual/range {v17 .. v17}, Lsun/java2d/SurfaceData;->getSurfaceType()Lsun/java2d/loops/SurfaceType;

    move-result-object v6
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lsun/java2d/InvalidPipeException; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    invoke-virtual {v14}, Lsun/java2d/SurfaceData;->getSurfaceType()Lsun/java2d/loops/SurfaceType;

    move-result-object v7
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lsun/java2d/InvalidPipeException; {:try_start_1 .. :try_end_1} :catch_2

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v4, v17

    move-object v5, v14

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p4

    move v15, v11

    move/from16 v11, p5

    move/from16 v12, p8

    move/from16 v13, p9

    move-object/from16 v18, v14

    move-object/from16 v14, p3

    :try_start_2
    invoke-virtual/range {v1 .. v14}, Lsun/java2d/pipe/DrawImage;->blitSurfaceData(Lsun/java2d/SunGraphics2D;Lsun/java2d/pipe/Region;Lsun/java2d/SurfaceData;Lsun/java2d/SurfaceData;Lsun/java2d/loops/SurfaceType;Lsun/java2d/loops/SurfaceType;IIIIIILjava/awt/Color;)V
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lsun/java2d/InvalidPipeException; {:try_start_2 .. :try_end_2} :catch_3

    return v15

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    move-object/from16 v18, v14

    :goto_1
    const/4 v1, 0x0

    goto :goto_3

    :catch_2
    move v15, v11

    :catch_3
    add-int/lit8 v1, v16, 0x1

    invoke-virtual/range {p1 .. p1}, Lsun/java2d/SunGraphics2D;->getCompClip()Lsun/java2d/pipe/Region;

    move-result-object v3

    iget-object v14, v0, Lsun/java2d/SunGraphics2D;->surfaceData:Lsun/java2d/SurfaceData;

    invoke-static {v14}, Lsun/java2d/SurfaceData;->isNull(Lsun/java2d/SurfaceData;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static/range {v17 .. v17}, Lsun/java2d/SurfaceData;->isNull(Lsun/java2d/SurfaceData;)Z

    move-result v2

    if-nez v2, :cond_2

    if-le v1, v15, :cond_1

    goto :goto_2

    :cond_1
    move/from16 v16, v1

    const/4 v15, 0x0

    goto :goto_0

    :cond_2
    :goto_2
    const/4 v1, 0x0

    return v1

    :catch_4
    move-exception v0

    move-object/from16 v18, v14

    move v1, v15

    :goto_3
    invoke-static/range {v18 .. v18}, Lsun/java2d/SurfaceData;->isNull(Lsun/java2d/SurfaceData;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-static/range {v17 .. v17}, Lsun/java2d/SurfaceData;->isNull(Lsun/java2d/SurfaceData;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_4

    :cond_3
    throw v0

    :cond_4
    :goto_4
    return v1
.end method

.method public renderImageScale(Lsun/java2d/SunGraphics2D;Ljava/awt/Image;Ljava/awt/Color;IIIIIDDDD)Z
    .locals 24

    move-object/from16 v0, p1

    move-object/from16 v14, p3

    const/16 v20, 0x0

    const/4 v15, 0x1

    move/from16 v1, p4

    if-eq v1, v15, :cond_0

    return v20

    :cond_0
    invoke-virtual/range {p1 .. p1}, Lsun/java2d/SunGraphics2D;->getCompClip()Lsun/java2d/pipe/Region;

    move-result-object v1

    iget-object v2, v0, Lsun/java2d/SunGraphics2D;->surfaceData:Lsun/java2d/SurfaceData;

    move-object v3, v1

    move-object v12, v2

    move/from16 v21, v20

    :goto_0
    const/4 v1, 0x3

    iget-object v2, v0, Lsun/java2d/SunGraphics2D;->imageComp:Lsun/java2d/loops/CompositeType;

    move-object/from16 v13, p2

    invoke-virtual {v12, v13, v1, v2, v14}, Lsun/java2d/SurfaceData;->getSourceSurfaceData(Ljava/awt/Image;ILsun/java2d/loops/CompositeType;Ljava/awt/Color;)Lsun/java2d/SurfaceData;

    move-result-object v11

    if-eqz v11, :cond_5

    invoke-static {v11, v14}, Lsun/java2d/pipe/DrawImage;->isBgOperation(Lsun/java2d/SurfaceData;Ljava/awt/Color;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto/16 :goto_3

    :cond_1
    :try_start_0
    invoke-virtual {v11}, Lsun/java2d/SurfaceData;->getSurfaceType()Lsun/java2d/loops/SurfaceType;

    move-result-object v6

    invoke-virtual {v12}, Lsun/java2d/SurfaceData;->getSurfaceType()Lsun/java2d/loops/SurfaceType;

    move-result-object v7
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lsun/java2d/InvalidPipeException; {:try_start_0 .. :try_end_0} :catch_1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v4, v11

    move-object v5, v12

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move-object/from16 v22, v11

    move/from16 v11, p8

    move-object/from16 v23, v12

    move-wide/from16 v12, p9

    move v0, v15

    move-wide/from16 v14, p11

    move-wide/from16 v16, p13

    move-wide/from16 v18, p15

    :try_start_1
    invoke-virtual/range {v1 .. v19}, Lsun/java2d/pipe/DrawImage;->scaleSurfaceData(Lsun/java2d/SunGraphics2D;Lsun/java2d/pipe/Region;Lsun/java2d/SurfaceData;Lsun/java2d/SurfaceData;Lsun/java2d/loops/SurfaceType;Lsun/java2d/loops/SurfaceType;IIIIDDDD)Z

    move-result v0
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lsun/java2d/InvalidPipeException; {:try_start_1 .. :try_end_1} :catch_2

    return v0

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-object/from16 v22, v11

    move v0, v15

    :catch_2
    add-int/lit8 v1, v21, 0x1

    invoke-virtual/range {p1 .. p1}, Lsun/java2d/SunGraphics2D;->getCompClip()Lsun/java2d/pipe/Region;

    move-result-object v3

    move v2, v0

    move-object/from16 v0, p1

    iget-object v12, v0, Lsun/java2d/SunGraphics2D;->surfaceData:Lsun/java2d/SurfaceData;

    invoke-static {v12}, Lsun/java2d/SurfaceData;->isNull(Lsun/java2d/SurfaceData;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-static/range {v22 .. v22}, Lsun/java2d/SurfaceData;->isNull(Lsun/java2d/SurfaceData;)Z

    move-result v4

    if-nez v4, :cond_3

    if-le v1, v2, :cond_2

    goto :goto_1

    :cond_2
    move-object/from16 v14, p3

    move/from16 v21, v1

    move v15, v2

    goto :goto_0

    :cond_3
    :goto_1
    return v20

    :catch_3
    move-exception v0

    move-object/from16 v23, v12

    :goto_2
    invoke-static/range {v23 .. v23}, Lsun/java2d/SurfaceData;->isNull(Lsun/java2d/SurfaceData;)Z

    move-result v1

    if-eqz v1, :cond_4

    return v20

    :cond_4
    throw v0

    :cond_5
    :goto_3
    return v20
.end method

.method public renderImageXform(Lsun/java2d/SunGraphics2D;Ljava/awt/Image;Ljava/awt/geom/AffineTransform;IIIIILjava/awt/Color;)V
    .locals 37

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v9, p9

    :try_start_0
    invoke-virtual/range {p3 .. p3}, Ljava/awt/geom/AffineTransform;->createInverse()Ljava/awt/geom/AffineTransform;

    move-result-object v10
    :try_end_0
    .catch Ljava/awt/geom/NoninvertibleTransformException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v2, 0x8

    new-array v11, v2, [D

    sub-int v12, p7, p5

    int-to-double v3, v12

    const/4 v5, 0x6

    aput-wide v3, v11, v5

    const/4 v13, 0x2

    aput-wide v3, v11, v13

    sub-int v14, p8, p6

    int-to-double v3, v14

    const/4 v5, 0x7

    aput-wide v3, v11, v5

    const/4 v5, 0x5

    aput-wide v3, v11, v5

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x4

    move-object/from16 v3, p3

    move-object v4, v11

    move-object v6, v11

    invoke-virtual/range {v3 .. v8}, Ljava/awt/geom/AffineTransform;->transform([DI[DII)V

    const/4 v15, 0x0

    aget-wide v3, v11, v15

    const/4 v8, 0x1

    aget-wide v5, v11, v8

    move-wide/from16 v16, v5

    move-wide/from16 v18, v16

    move v7, v13

    move-wide v5, v3

    :goto_0
    if-ge v7, v2, :cond_4

    aget-wide v20, v11, v7

    cmpl-double v22, v3, v20

    if-lez v22, :cond_0

    move-wide/from16 v3, v20

    goto :goto_1

    :cond_0
    cmpg-double v22, v5, v20

    if-gez v22, :cond_1

    move-wide/from16 v5, v20

    :cond_1
    :goto_1
    add-int/lit8 v20, v7, 0x1

    aget-wide v20, v11, v20

    cmpl-double v22, v16, v20

    if-lez v22, :cond_2

    move-wide/from16 v16, v20

    goto :goto_2

    :cond_2
    cmpg-double v22, v18, v20

    if-gez v22, :cond_3

    move-wide/from16 v18, v20

    :cond_3
    :goto_2
    add-int/lit8 v7, v7, 0x2

    goto :goto_0

    :cond_4
    invoke-virtual/range {p1 .. p1}, Lsun/java2d/SunGraphics2D;->getCompClip()Lsun/java2d/pipe/Region;

    move-result-object v11

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v2, v2

    iget v3, v11, Lsun/java2d/pipe/Region;->lox:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v2, v2

    iget v3, v11, Lsun/java2d/pipe/Region;->loy:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    iget v3, v11, Lsun/java2d/pipe/Region;->hix:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    iget v3, v11, Lsun/java2d/pipe/Region;->hiy:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v5

    if-le v6, v7, :cond_b

    if-gt v5, v4, :cond_5

    goto/16 :goto_6

    :cond_5
    iget-object v3, v0, Lsun/java2d/SunGraphics2D;->surfaceData:Lsun/java2d/SurfaceData;

    iget-object v2, v0, Lsun/java2d/SunGraphics2D;->imageComp:Lsun/java2d/loops/CompositeType;

    const/4 v15, 0x4

    invoke-virtual {v3, v1, v15, v2, v9}, Lsun/java2d/SurfaceData;->getSourceSurfaceData(Ljava/awt/Image;ILsun/java2d/loops/CompositeType;Ljava/awt/Color;)Lsun/java2d/SurfaceData;

    move-result-object v2

    move-object/from16 v13, p0

    if-nez v2, :cond_6

    invoke-virtual {v13, v1}, Lsun/java2d/pipe/DrawImage;->getBufferedImage(Ljava/awt/Image;)Ljava/awt/image/BufferedImage;

    move-result-object v1

    iget-object v2, v0, Lsun/java2d/SunGraphics2D;->imageComp:Lsun/java2d/loops/CompositeType;

    invoke-virtual {v3, v1, v15, v2, v9}, Lsun/java2d/SurfaceData;->getSourceSurfaceData(Ljava/awt/Image;ILsun/java2d/loops/CompositeType;Ljava/awt/Color;)Lsun/java2d/SurfaceData;

    move-result-object v2

    if-nez v2, :cond_6

    return-void

    :cond_6
    move-object/from16 v16, v1

    invoke-static {v2, v9}, Lsun/java2d/pipe/DrawImage;->isBgOperation(Lsun/java2d/SurfaceData;Ljava/awt/Color;)Z

    move-result v1

    if-eqz v1, :cond_7

    const/16 v17, 0x1

    move-object/from16 v1, p0

    move-object/from16 v2, v16

    move/from16 v18, v14

    move-object v14, v3

    move-object/from16 v3, p9

    move/from16 p2, v4

    move/from16 v4, v17

    move/from16 v25, v5

    move/from16 v5, p5

    move/from16 v26, v6

    move/from16 v6, p6

    move/from16 v27, v7

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-virtual/range {v1 .. v8}, Lsun/java2d/pipe/DrawImage;->makeBufferedImage(Ljava/awt/Image;Ljava/awt/Color;IIIII)Ljava/awt/image/BufferedImage;

    move-result-object v1

    iget-object v2, v0, Lsun/java2d/SunGraphics2D;->imageComp:Lsun/java2d/loops/CompositeType;

    invoke-virtual {v14, v1, v15, v2, v9}, Lsun/java2d/SurfaceData;->getSourceSurfaceData(Ljava/awt/Image;ILsun/java2d/loops/CompositeType;Ljava/awt/Color;)Lsun/java2d/SurfaceData;

    move-result-object v2

    move-object/from16 v17, v1

    move-object v4, v2

    move/from16 v3, v18

    const/4 v1, 0x0

    const/4 v2, 0x0

    goto :goto_3

    :cond_7
    move-object v14, v3

    move/from16 p2, v4

    move/from16 v25, v5

    move/from16 v26, v6

    move/from16 v27, v7

    move/from16 v1, p5

    move/from16 v12, p7

    move/from16 v3, p8

    move-object v4, v2

    move-object/from16 v17, v16

    move/from16 v2, p6

    :goto_3
    invoke-virtual {v4}, Lsun/java2d/SurfaceData;->getSurfaceType()Lsun/java2d/loops/SurfaceType;

    move-result-object v5

    invoke-static {v5}, Lsun/java2d/loops/TransformHelper;->getFromCache(Lsun/java2d/loops/SurfaceType;)Lsun/java2d/loops/TransformHelper;

    move-result-object v5

    if-nez v5, :cond_9

    invoke-virtual {v4}, Lsun/java2d/SurfaceData;->getTransparency()I

    move-result v4

    const/4 v6, 0x1

    if-ne v4, v6, :cond_8

    move/from16 v19, v6

    goto :goto_4

    :cond_8
    const/16 v19, 0x2

    :goto_4
    const/16 v18, 0x0

    move-object/from16 v16, p0

    move/from16 v20, v1

    move/from16 v21, v2

    move/from16 v22, v12

    move/from16 v23, v3

    invoke-virtual/range {v16 .. v23}, Lsun/java2d/pipe/DrawImage;->makeBufferedImage(Ljava/awt/Image;Ljava/awt/Color;IIIII)Ljava/awt/image/BufferedImage;

    move-result-object v4

    sub-int/2addr v12, v1

    sub-int/2addr v3, v2

    iget-object v1, v0, Lsun/java2d/SunGraphics2D;->imageComp:Lsun/java2d/loops/CompositeType;

    const/4 v2, 0x0

    invoke-virtual {v14, v4, v15, v1, v2}, Lsun/java2d/SurfaceData;->getSourceSurfaceData(Ljava/awt/Image;ILsun/java2d/loops/CompositeType;Ljava/awt/Color;)Lsun/java2d/SurfaceData;

    move-result-object v1

    invoke-virtual {v1}, Lsun/java2d/SurfaceData;->getSurfaceType()Lsun/java2d/loops/SurfaceType;

    move-result-object v2

    invoke-static {v2}, Lsun/java2d/loops/TransformHelper;->getFromCache(Lsun/java2d/loops/SurfaceType;)Lsun/java2d/loops/TransformHelper;

    move-result-object v2

    move/from16 v20, v3

    move/from16 v19, v12

    const/4 v9, 0x0

    const/4 v12, 0x0

    move-object v3, v1

    move-object v1, v2

    goto :goto_5

    :cond_9
    const/4 v6, 0x1

    move v9, v1

    move/from16 v20, v3

    move-object v3, v4

    move-object v1, v5

    move/from16 v19, v12

    move v12, v2

    :goto_5
    invoke-virtual {v14}, Lsun/java2d/SurfaceData;->getSurfaceType()Lsun/java2d/loops/SurfaceType;

    move-result-object v8

    iget v2, v0, Lsun/java2d/SunGraphics2D;->compositeState:I

    if-gt v2, v6, :cond_a

    sget-object v2, Lsun/java2d/loops/SurfaceType;->IntArgbPre:Lsun/java2d/loops/SurfaceType;

    iget-object v4, v0, Lsun/java2d/SunGraphics2D;->imageComp:Lsun/java2d/loops/CompositeType;

    invoke-static {v2, v4, v8}, Lsun/java2d/loops/MaskBlit;->getFromCache(Lsun/java2d/loops/SurfaceType;Lsun/java2d/loops/CompositeType;Lsun/java2d/loops/SurfaceType;)Lsun/java2d/loops/MaskBlit;

    move-result-object v2

    invoke-virtual {v2}, Lsun/java2d/loops/GraphicsPrimitive;->getNativePrim()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_a

    iget-object v4, v0, Lsun/java2d/SunGraphics2D;->composite:Ljava/awt/Composite;

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object v0, v1

    move-object v1, v2

    move-object v2, v3

    move-object v3, v14

    move-object v5, v11

    move-object v6, v10

    move/from16 v7, p4

    move v8, v9

    move v9, v12

    move/from16 v10, v19

    move/from16 v11, v20

    move/from16 v12, v27

    move/from16 v13, p2

    move/from16 v14, v26

    move/from16 v15, v25

    invoke-virtual/range {v0 .. v18}, Lsun/java2d/loops/TransformHelper;->Transform(Lsun/java2d/loops/MaskBlit;Lsun/java2d/SurfaceData;Lsun/java2d/SurfaceData;Ljava/awt/Composite;Lsun/java2d/pipe/Region;Ljava/awt/geom/AffineTransform;IIIIIIIII[III)V

    return-void

    :cond_a
    move/from16 v13, v26

    move/from16 v7, v27

    sub-int v6, v13, v7

    move v15, v6

    move/from16 v5, p2

    move/from16 v2, v25

    sub-int v4, v2, v5

    move/from16 v16, v4

    new-instance v2, Ljava/awt/image/BufferedImage;

    const/4 v5, 0x3

    invoke-direct {v2, v6, v4, v5}, Ljava/awt/image/BufferedImage;-><init>(III)V

    invoke-static {v2}, Lsun/java2d/SurfaceData;->getPrimarySurfaceData(Ljava/awt/Image;)Lsun/java2d/SurfaceData;

    move-result-object v21

    move/from16 v30, v4

    move-object/from16 v4, v21

    invoke-virtual/range {v21 .. v21}, Lsun/java2d/SurfaceData;->getSurfaceType()Lsun/java2d/loops/SurfaceType;

    move-result-object v5

    sget-object v2, Lsun/java2d/loops/SurfaceType;->IntArgbPre:Lsun/java2d/loops/SurfaceType;

    move/from16 p0, v6

    sget-object v6, Lsun/java2d/loops/CompositeType;->SrcNoEa:Lsun/java2d/loops/CompositeType;

    invoke-static {v2, v6, v5}, Lsun/java2d/loops/MaskBlit;->getFromCache(Lsun/java2d/loops/SurfaceType;Lsun/java2d/loops/CompositeType;Lsun/java2d/loops/SurfaceType;)Lsun/java2d/loops/MaskBlit;

    move-result-object v2

    move/from16 v6, v25

    mul-int/lit8 v17, v30, 0x2

    move-object/from16 p3, v5

    const/16 v18, 0x2

    add-int/lit8 v5, v17, 0x2

    new-array v5, v5, [I

    move-object/from16 v17, v5

    sget-object v18, Ljava/awt/AlphaComposite;->Src:Ljava/awt/AlphaComposite;

    move/from16 p5, p2

    move-object/from16 v31, p3

    move-object/from16 v32, v5

    move-object/from16 v5, v18

    const/16 v18, 0x0

    move/from16 v29, p0

    move/from16 v33, v6

    move-object/from16 v6, v18

    const/16 v18, 0x0

    move/from16 v34, v13

    move/from16 v13, v18

    move-object/from16 v22, v14

    move/from16 v14, v18

    move/from16 v27, v7

    move-object v7, v10

    move-object v10, v8

    move/from16 v8, p4

    move-object/from16 v35, v10

    move v10, v12

    move-object v12, v11

    move/from16 v11, v19

    move-object/from16 v36, v12

    move/from16 v12, v20

    move/from16 v18, v27

    move/from16 v19, p5

    invoke-virtual/range {v1 .. v19}, Lsun/java2d/loops/TransformHelper;->Transform(Lsun/java2d/loops/MaskBlit;Lsun/java2d/SurfaceData;Lsun/java2d/SurfaceData;Ljava/awt/Composite;Lsun/java2d/pipe/Region;Ljava/awt/geom/AffineTransform;IIIIIIIII[III)V

    move/from16 v2, p5

    move/from16 v1, v27

    move-object/from16 v5, v32

    move/from16 v4, v33

    move/from16 v3, v34

    invoke-static {v1, v2, v3, v4, v5}, Lsun/java2d/pipe/Region;->getInstance(IIII[I)Lsun/java2d/pipe/Region;

    move-result-object v3

    move-object/from16 v4, v36

    invoke-virtual {v4, v3}, Lsun/java2d/pipe/Region;->getIntersection(Lsun/java2d/pipe/Region;)Lsun/java2d/pipe/Region;

    move-result-object v24

    iget-object v3, v0, Lsun/java2d/SunGraphics2D;->imageComp:Lsun/java2d/loops/CompositeType;

    move-object/from16 v5, v31

    move-object/from16 v4, v35

    invoke-static {v5, v3, v4}, Lsun/java2d/loops/Blit;->getFromCache(Lsun/java2d/loops/SurfaceType;Lsun/java2d/loops/CompositeType;Lsun/java2d/loops/SurfaceType;)Lsun/java2d/loops/Blit;

    move-result-object v20

    iget-object v0, v0, Lsun/java2d/SunGraphics2D;->composite:Ljava/awt/Composite;

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v23, v0

    move/from16 v28, v2

    invoke-virtual/range {v20 .. v30}, Lsun/java2d/loops/Blit;->Blit(Lsun/java2d/SurfaceData;Lsun/java2d/SurfaceData;Ljava/awt/Composite;Lsun/java2d/pipe/Region;IIIIII)V

    :catch_0
    :cond_b
    :goto_6
    return-void
.end method

.method public scaleImage(Lsun/java2d/SunGraphics2D;Ljava/awt/Image;IIIIIIIILjava/awt/Color;)Z
    .locals 27

    move-object/from16 v6, p1

    move-object/from16 v5, p2

    move/from16 v3, p3

    move/from16 v2, p4

    move/from16 v1, p5

    move/from16 v0, p6

    move/from16 v8, p7

    move/from16 v7, p8

    move/from16 v4, p9

    move/from16 v15, p10

    const/16 v17, 0x1

    const/16 v18, 0x0

    if-le v4, v8, :cond_0

    sub-int v9, v4, v8

    move v13, v8

    move/from16 v19, v9

    move/from16 v9, v18

    goto :goto_0

    :cond_0
    sub-int v9, v8, v4

    move v13, v4

    move/from16 v19, v9

    move/from16 v9, v17

    :goto_0
    if-le v15, v7, :cond_1

    sub-int v10, v15, v7

    move v14, v7

    move/from16 v20, v10

    move/from16 v10, v18

    goto :goto_1

    :cond_1
    sub-int v10, v7, v15

    move/from16 v20, v10

    move v14, v15

    move/from16 v10, v17

    :goto_1
    if-le v1, v3, :cond_2

    sub-int v11, v1, v3

    move/from16 v16, v3

    move/from16 v12, v18

    goto :goto_2

    :cond_2
    sub-int v11, v3, v1

    move/from16 v16, v1

    move/from16 v12, v17

    :goto_2
    if-le v0, v2, :cond_3

    sub-int v21, v0, v2

    move/from16 v1, v18

    move/from16 v0, v21

    move/from16 v21, v2

    goto :goto_3

    :cond_3
    sub-int v21, v2, v0

    move/from16 v1, v17

    move/from16 v26, v21

    move/from16 v21, v0

    move/from16 v0, v26

    :goto_3
    if-lez v19, :cond_c

    if-gtz v20, :cond_4

    goto/16 :goto_6

    :cond_4
    if-ne v9, v12, :cond_5

    if-ne v10, v1, :cond_5

    .line 14
    invoke-static/range {p1 .. p1}, Lsun/java2d/pipe/DrawImage;->isSimpleTranslate(Lsun/java2d/SunGraphics2D;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 15
    iget v1, v6, Lsun/java2d/SunGraphics2D;->transX:I

    add-int v1, v16, v1

    int-to-double v9, v1

    move-wide/from16 v22, v9

    .line 16
    iget v1, v6, Lsun/java2d/SunGraphics2D;->transY:I

    add-int v1, v21, v1

    int-to-double v1, v1

    move v3, v11

    move-wide v11, v1

    int-to-double v3, v3

    add-double v3, v22, v3

    move-wide/from16 v21, v9

    move v9, v13

    move v10, v14

    move-wide v13, v3

    int-to-double v3, v0

    add-double v0, v1, v3

    move-wide v15, v0

    .line 17
    iget v4, v6, Lsun/java2d/SunGraphics2D;->interpolationType:I

    add-int v0, v9, v19

    move v7, v0

    add-int v0, v10, v20

    move v8, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v3, p4

    move-object/from16 v2, p2

    move-object/from16 v3, p11

    move v5, v9

    move v6, v10

    move/from16 v24, v9

    move/from16 v25, v10

    move-wide/from16 v9, v21

    invoke-virtual/range {v0 .. v16}, Lsun/java2d/pipe/DrawImage;->renderImageScale(Lsun/java2d/SunGraphics2D;Ljava/awt/Image;Ljava/awt/Color;IIIIIDDDD)Z

    move-result v0

    if-eqz v0, :cond_6

    return v17

    :cond_5
    move/from16 v24, v13

    move/from16 v25, v14

    .line 18
    :cond_6
    new-instance v3, Ljava/awt/geom/AffineTransform;

    move-object/from16 v1, p1

    iget-object v0, v1, Lsun/java2d/SunGraphics2D;->transform:Ljava/awt/geom/AffineTransform;

    invoke-direct {v3, v0}, Ljava/awt/geom/AffineTransform;-><init>(Ljava/awt/geom/AffineTransform;)V

    move/from16 v0, p3

    int-to-double v4, v0

    move/from16 v2, p4

    int-to-double v6, v2

    .line 19
    invoke-virtual {v3, v4, v5, v6, v7}, Ljava/awt/geom/AffineTransform;->translate(DD)V

    sub-int v0, p5, v0

    int-to-double v4, v0

    sub-int v0, p9, p7

    int-to-double v6, v0

    div-double/2addr v4, v6

    sub-int v0, p6, v2

    int-to-double v6, v0

    sub-int v0, p10, p8

    int-to-double v8, v0

    div-double/2addr v6, v8

    .line 20
    invoke-virtual {v3, v4, v5, v6, v7}, Ljava/awt/geom/AffineTransform;->scale(DD)V

    move/from16 v4, v24

    sub-int v13, v4, p7

    int-to-double v5, v13

    move/from16 v7, v25

    sub-int v14, v7, p8

    int-to-double v8, v14

    .line 21
    invoke-virtual {v3, v5, v6, v8, v9}, Ljava/awt/geom/AffineTransform;->translate(DD)V

    .line 22
    invoke-static/range {p2 .. p2}, Lsun/awt/image/SurfaceManager;->getImageScale(Ljava/awt/Image;)I

    move-result v0

    const/4 v2, 0x0

    move-object/from16 v5, p2

    .line 23
    invoke-virtual {v5, v2}, Ljava/awt/Image;->getWidth(Ljava/awt/image/ImageObserver;)I

    move-result v6

    mul-int/2addr v6, v0

    .line 24
    invoke-virtual {v5, v2}, Ljava/awt/Image;->getHeight(Ljava/awt/image/ImageObserver;)I

    move-result v2

    mul-int/2addr v2, v0

    add-int v0, v19, v4

    add-int v8, v20, v7

    if-le v0, v6, :cond_7

    move v9, v6

    goto :goto_4

    :cond_7
    move v9, v0

    :goto_4
    if-le v8, v2, :cond_8

    move v8, v2

    :cond_8
    const-wide/16 v10, 0x0

    if-gez v4, :cond_9

    neg-int v0, v4

    int-to-double v12, v0

    .line 25
    invoke-virtual {v3, v12, v13, v10, v11}, Ljava/awt/geom/AffineTransform;->translate(DD)V

    move/from16 v6, v18

    goto :goto_5

    :cond_9
    move v6, v4

    :goto_5
    if-gez v7, :cond_a

    neg-int v0, v7

    int-to-double v12, v0

    .line 26
    invoke-virtual {v3, v10, v11, v12, v13}, Ljava/awt/geom/AffineTransform;->translate(DD)V

    move/from16 v7, v18

    :cond_a
    if-ge v6, v9, :cond_c

    if-lt v7, v8, :cond_b

    goto :goto_6

    .line 27
    :cond_b
    iget v4, v1, Lsun/java2d/SunGraphics2D;->interpolationType:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v5, v6

    move v6, v7

    move v7, v9

    move-object/from16 v9, p11

    invoke-virtual/range {v0 .. v9}, Lsun/java2d/pipe/DrawImage;->transformImage(Lsun/java2d/SunGraphics2D;Ljava/awt/Image;Ljava/awt/geom/AffineTransform;IIIIILjava/awt/Color;)V

    :cond_c
    :goto_6
    return v17
.end method

.method public scaleImage(Lsun/java2d/SunGraphics2D;Ljava/awt/Image;IIIIIIIILjava/awt/Color;Ljava/awt/image/ImageObserver;)Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    return p0
.end method

.method public scaleImage(Lsun/java2d/SunGraphics2D;Ljava/awt/Image;IIIILjava/awt/Color;)Z
    .locals 20

    move-object/from16 v8, p1

    move-object/from16 v7, p2

    move/from16 v3, p3

    move/from16 v2, p4

    move/from16 v1, p5

    move/from16 v0, p6

    const/4 v4, 0x0

    .line 3
    invoke-virtual {v7, v4}, Ljava/awt/Image;->getWidth(Ljava/awt/image/ImageObserver;)I

    move-result v6

    .line 4
    invoke-virtual {v7, v4}, Ljava/awt/Image;->getHeight(Ljava/awt/image/ImageObserver;)I

    move-result v5

    const/16 v17, 0x1

    if-lez v1, :cond_0

    if-lez v0, :cond_0

    .line 5
    invoke-static/range {p1 .. p1}, Lsun/java2d/pipe/DrawImage;->isSimpleTranslate(Lsun/java2d/SunGraphics2D;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 6
    iget v4, v8, Lsun/java2d/SunGraphics2D;->transX:I

    add-int/2addr v4, v3

    int-to-double v13, v4

    move-wide v9, v13

    .line 7
    iget v4, v8, Lsun/java2d/SunGraphics2D;->transY:I

    add-int/2addr v4, v2

    int-to-double v11, v4

    move-wide v15, v11

    int-to-double v2, v1

    add-double/2addr v13, v2

    int-to-double v2, v0

    add-double/2addr v15, v2

    .line 8
    iget v4, v8, Lsun/java2d/SunGraphics2D;->interpolationType:I

    const/4 v2, 0x0

    move v3, v5

    move v5, v2

    move/from16 v18, v6

    move v6, v2

    move v2, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v19, v3

    move-object/from16 v3, p7

    move/from16 v7, v18

    move/from16 v8, v19

    invoke-virtual/range {v0 .. v16}, Lsun/java2d/pipe/DrawImage;->renderImageScale(Lsun/java2d/SunGraphics2D;Ljava/awt/Image;Ljava/awt/Color;IIIIIDDDD)Z

    move-result v0

    if-eqz v0, :cond_1

    return v17

    :cond_0
    move/from16 v19, v5

    move/from16 v18, v6

    :cond_1
    move-object/from16 v1, p1

    .line 9
    iget-object v0, v1, Lsun/java2d/SunGraphics2D;->transform:Ljava/awt/geom/AffineTransform;

    move/from16 v2, p3

    move/from16 v3, p4

    or-int v4, v2, v3

    if-nez v4, :cond_3

    move/from16 v4, p5

    move/from16 v7, v18

    move/from16 v5, p6

    move/from16 v8, v19

    if-ne v4, v7, :cond_4

    if-eq v5, v8, :cond_2

    goto :goto_0

    :cond_2
    move-object v3, v0

    goto :goto_1

    :cond_3
    move/from16 v4, p5

    move/from16 v5, p6

    move/from16 v7, v18

    move/from16 v8, v19

    .line 10
    :cond_4
    :goto_0
    new-instance v6, Ljava/awt/geom/AffineTransform;

    invoke-direct {v6, v0}, Ljava/awt/geom/AffineTransform;-><init>(Ljava/awt/geom/AffineTransform;)V

    int-to-double v9, v2

    int-to-double v2, v3

    .line 11
    invoke-virtual {v6, v9, v10, v2, v3}, Ljava/awt/geom/AffineTransform;->translate(DD)V

    int-to-double v2, v4

    int-to-double v9, v7

    div-double/2addr v2, v9

    int-to-double v4, v5

    int-to-double v9, v8

    div-double/2addr v4, v9

    .line 12
    invoke-virtual {v6, v2, v3, v4, v5}, Ljava/awt/geom/AffineTransform;->scale(DD)V

    move-object v3, v6

    .line 13
    :goto_1
    iget v4, v1, Lsun/java2d/SunGraphics2D;->interpolationType:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v9, p7

    invoke-virtual/range {v0 .. v9}, Lsun/java2d/pipe/DrawImage;->transformImage(Lsun/java2d/SunGraphics2D;Ljava/awt/Image;Ljava/awt/geom/AffineTransform;IIIIILjava/awt/Color;)V

    return v17
.end method

.method public scaleImage(Lsun/java2d/SunGraphics2D;Ljava/awt/Image;IIIILjava/awt/Color;Ljava/awt/image/ImageObserver;)Z
    .locals 0

    .line 2
    const/4 p0, 0x0

    return p0
.end method

.method public scaleSurfaceData(Lsun/java2d/SunGraphics2D;Lsun/java2d/pipe/Region;Lsun/java2d/SurfaceData;Lsun/java2d/SurfaceData;Lsun/java2d/loops/SurfaceType;Lsun/java2d/loops/SurfaceType;IIIIDDDD)Z
    .locals 21

    move-object/from16 v0, p1

    iget-object v1, v0, Lsun/java2d/SunGraphics2D;->imageComp:Lsun/java2d/loops/CompositeType;

    sget-object v2, Lsun/java2d/loops/CompositeType;->SrcOverNoEa:Lsun/java2d/loops/CompositeType;

    invoke-virtual {v2, v1}, Lsun/java2d/loops/CompositeType;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    invoke-virtual/range {p3 .. p3}, Lsun/java2d/SurfaceData;->getTransparency()I

    move-result v2

    if-ne v2, v3, :cond_0

    sget-object v1, Lsun/java2d/loops/CompositeType;->SrcNoEa:Lsun/java2d/loops/CompositeType;

    :cond_0
    move-object/from16 v2, p5

    move-object/from16 v4, p6

    invoke-static {v2, v1, v4}, Lsun/java2d/loops/ScaledBlit;->getFromCache(Lsun/java2d/loops/SurfaceType;Lsun/java2d/loops/CompositeType;Lsun/java2d/loops/SurfaceType;)Lsun/java2d/loops/ScaledBlit;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v7, v0, Lsun/java2d/SunGraphics2D;->composite:Ljava/awt/Composite;

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v8, p2

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    move/from16 v12, p10

    move-wide/from16 v13, p11

    move-wide/from16 v15, p13

    move-wide/from16 v17, p15

    move-wide/from16 v19, p17

    invoke-virtual/range {v4 .. v20}, Lsun/java2d/loops/ScaledBlit;->Scale(Lsun/java2d/SurfaceData;Lsun/java2d/SurfaceData;Ljava/awt/Composite;Lsun/java2d/pipe/Region;IIIIDDDD)V

    return v3

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public transformImage(Lsun/java2d/SunGraphics2D;Ljava/awt/Image;IILjava/awt/geom/AffineTransform;I)V
    .locals 23

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    move/from16 v12, p3

    move/from16 v13, p4

    .line 2
    invoke-virtual/range {p5 .. p5}, Ljava/awt/geom/AffineTransform;->getType()I

    move-result v0

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v11, v1}, Ljava/awt/Image;->getWidth(Ljava/awt/image/ImageObserver;)I

    move-result v14

    .line 4
    invoke-virtual {v11, v1}, Ljava/awt/Image;->getHeight(Ljava/awt/image/ImageObserver;)I

    move-result v15

    .line 5
    iget v1, v10, Lsun/java2d/SunGraphics2D;->transformState:I

    const/16 v16, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-gt v1, v3, :cond_2

    if-eqz v0, :cond_0

    if-ne v0, v2, :cond_2

    .line 6
    :cond_0
    invoke-virtual/range {p5 .. p5}, Ljava/awt/geom/AffineTransform;->getTranslateX()D

    move-result-wide v0

    .line 7
    invoke-virtual/range {p5 .. p5}, Ljava/awt/geom/AffineTransform;->getTranslateY()D

    move-result-wide v3

    .line 8
    iget-object v5, v10, Lsun/java2d/SunGraphics2D;->transform:Ljava/awt/geom/AffineTransform;

    invoke-virtual {v5}, Ljava/awt/geom/AffineTransform;->getTranslateX()D

    move-result-wide v5

    add-double/2addr v0, v5

    .line 9
    iget-object v5, v10, Lsun/java2d/SunGraphics2D;->transform:Ljava/awt/geom/AffineTransform;

    invoke-virtual {v5}, Ljava/awt/geom/AffineTransform;->getTranslateY()D

    move-result-wide v5

    add-double/2addr v3, v5

    const-wide/high16 v5, 0x3fe0000000000000L    # 0.5

    add-double v7, v0, v5

    .line 10
    invoke-static {v7, v8}, Ljava/lang/Math;->floor(D)D

    move-result-wide v7

    double-to-int v7, v7

    add-double/2addr v5, v3

    .line 11
    invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D

    move-result-wide v5

    double-to-int v5, v5

    move/from16 v9, p6

    if-eq v9, v2, :cond_1

    .line 12
    invoke-static {v7, v0, v1}, Lsun/java2d/pipe/DrawImage;->closeToInteger(ID)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {v5, v3, v4}, Lsun/java2d/pipe/DrawImage;->closeToInteger(ID)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_1
    const/4 v3, 0x0

    add-int v4, v12, v7

    add-int/2addr v5, v13

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v8, v14

    move v9, v15

    .line 13
    invoke-virtual/range {v0 .. v9}, Lsun/java2d/pipe/DrawImage;->renderImageCopy(Lsun/java2d/SunGraphics2D;Ljava/awt/Image;Ljava/awt/Color;IIIIII)Z

    return-void

    :cond_2
    move/from16 v9, p6

    const/4 v4, 0x3

    if-gt v1, v4, :cond_3

    and-int/lit8 v0, v0, 0x78

    if-nez v0, :cond_3

    const/4 v0, 0x4

    new-array v8, v0, [D

    const-wide/16 v0, 0x0

    aput-wide v0, v8, v16

    aput-wide v0, v8, v2

    int-to-double v0, v14

    aput-wide v0, v8, v3

    int-to-double v0, v15

    aput-wide v0, v8, v4

    const/16 v19, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x2

    move-object/from16 v17, p5

    move-object/from16 v18, v8

    move-object/from16 v20, v8

    .line 14
    invoke-virtual/range {v17 .. v22}, Ljava/awt/geom/AffineTransform;->transform([DI[DII)V

    aget-wide v0, v8, v16

    int-to-double v5, v12

    add-double/2addr v0, v5

    aput-wide v0, v8, v16

    aget-wide v0, v8, v2

    move-wide/from16 v17, v5

    int-to-double v4, v13

    add-double/2addr v0, v4

    aput-wide v0, v8, v2

    aget-wide v0, v8, v3

    add-double v0, v0, v17

    aput-wide v0, v8, v3

    const/4 v0, 0x3

    aget-wide v1, v8, v0

    add-double/2addr v1, v4

    aput-wide v1, v8, v0

    .line 15
    iget-object v0, v10, Lsun/java2d/SunGraphics2D;->transform:Ljava/awt/geom/AffineTransform;

    move-object/from16 v17, v0

    move-object/from16 v18, v8

    invoke-virtual/range {v17 .. v22}, Ljava/awt/geom/AffineTransform;->transform([DI[DII)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v5, v14

    move v6, v15

    move-object/from16 v17, v8

    move/from16 v8, p6

    move-object/from16 v9, v17

    .line 16
    invoke-virtual/range {v0 .. v9}, Lsun/java2d/pipe/DrawImage;->tryCopyOrScale(Lsun/java2d/SunGraphics2D;Ljava/awt/Image;IIIILjava/awt/Color;I[D)Z

    move-result v0

    if-eqz v0, :cond_4

    return-void

    :cond_3
    move/from16 v16, v2

    .line 17
    :cond_4
    new-instance v3, Ljava/awt/geom/AffineTransform;

    iget-object v0, v10, Lsun/java2d/SunGraphics2D;->transform:Ljava/awt/geom/AffineTransform;

    invoke-direct {v3, v0}, Ljava/awt/geom/AffineTransform;-><init>(Ljava/awt/geom/AffineTransform;)V

    int-to-double v0, v12

    int-to-double v4, v13

    .line 18
    invoke-virtual {v3, v0, v1, v4, v5}, Ljava/awt/geom/AffineTransform;->translate(DD)V

    move-object/from16 v0, p5

    .line 19
    invoke-virtual {v3, v0}, Ljava/awt/geom/AffineTransform;->concatenate(Ljava/awt/geom/AffineTransform;)V

    if-eqz v16, :cond_5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v4, p6

    move v7, v14

    move v8, v15

    .line 20
    invoke-virtual/range {v0 .. v9}, Lsun/java2d/pipe/DrawImage;->transformImage(Lsun/java2d/SunGraphics2D;Ljava/awt/Image;Ljava/awt/geom/AffineTransform;IIIIILjava/awt/Color;)V

    goto :goto_0

    :cond_5
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v4, p6

    move v7, v14

    move v8, v15

    .line 21
    invoke-virtual/range {v0 .. v9}, Lsun/java2d/pipe/DrawImage;->renderImageXform(Lsun/java2d/SunGraphics2D;Ljava/awt/Image;Ljava/awt/geom/AffineTransform;IIIIILjava/awt/Color;)V

    :goto_0
    return-void
.end method

.method public transformImage(Lsun/java2d/SunGraphics2D;Ljava/awt/Image;Ljava/awt/geom/AffineTransform;IIIIILjava/awt/Color;)V
    .locals 11

    const/4 v0, 0x6

    new-array v10, v0, [D

    sub-int v0, p7, p5

    int-to-double v0, v0

    const/4 v2, 0x2

    aput-wide v0, v10, v2

    sub-int v0, p8, p6

    int-to-double v0, v0

    const/4 v7, 0x5

    aput-wide v0, v10, v7

    const/4 v8, 0x3

    aput-wide v0, v10, v8

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x3

    move-object v1, p3

    move-object v2, v10

    move-object v4, v10

    .line 22
    invoke-virtual/range {v1 .. v6}, Ljava/awt/geom/AffineTransform;->transform([DI[DII)V

    const/4 v0, 0x0

    aget-wide v0, v10, v0

    const/4 v2, 0x4

    aget-wide v2, v10, v2

    sub-double/2addr v0, v2

    .line 23
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide v2, 0x3f1a36e2eb1c432dL    # 1.0E-4

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    aget-wide v0, v10, v8

    aget-wide v4, v10, v7

    sub-double/2addr v0, v4

    .line 24
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move-object/from16 v8, p9

    move v9, p4

    .line 25
    invoke-virtual/range {v1 .. v10}, Lsun/java2d/pipe/DrawImage;->tryCopyOrScale(Lsun/java2d/SunGraphics2D;Ljava/awt/Image;IIIILjava/awt/Color;I[D)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 26
    :cond_0
    invoke-virtual/range {p0 .. p9}, Lsun/java2d/pipe/DrawImage;->renderImageXform(Lsun/java2d/SunGraphics2D;Ljava/awt/Image;Ljava/awt/geom/AffineTransform;IIIIILjava/awt/Color;)V

    return-void
.end method

.method public transformImage(Lsun/java2d/SunGraphics2D;Ljava/awt/image/BufferedImage;Ljava/awt/image/BufferedImageOp;II)V
    .locals 7

    if-eqz p3, :cond_1

    .line 27
    instance-of v0, p3, Ljava/awt/image/AffineTransformOp;

    if-eqz v0, :cond_0

    .line 28
    check-cast p3, Ljava/awt/image/AffineTransformOp;

    .line 29
    invoke-virtual {p3}, Ljava/awt/image/AffineTransformOp;->getTransform()Ljava/awt/geom/AffineTransform;

    move-result-object v5

    .line 30
    invoke-virtual {p3}, Ljava/awt/image/AffineTransformOp;->getInterpolationType()I

    move-result v6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p4

    move v4, p5

    .line 31
    invoke-virtual/range {v0 .. v6}, Lsun/java2d/pipe/DrawImage;->transformImage(Lsun/java2d/SunGraphics2D;Ljava/awt/Image;IILjava/awt/geom/AffineTransform;I)V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 32
    invoke-interface {p3, p2, v0}, Ljava/awt/image/BufferedImageOp;->filter(Ljava/awt/image/BufferedImage;Ljava/awt/image/BufferedImage;)Ljava/awt/image/BufferedImage;

    move-result-object p2

    :cond_1
    move-object v2, p2

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p4

    move v4, p5

    .line 33
    invoke-virtual/range {v0 .. v5}, Lsun/java2d/pipe/DrawImage;->copyImage(Lsun/java2d/SunGraphics2D;Ljava/awt/Image;IILjava/awt/Color;)Z

    return-void
.end method

.method public transformImage(Lsun/java2d/SunGraphics2D;Ljava/awt/Image;Ljava/awt/geom/AffineTransform;Ljava/awt/image/ImageObserver;)Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    return p0
.end method

.method public tryCopyOrScale(Lsun/java2d/SunGraphics2D;Ljava/awt/Image;IIIILjava/awt/Color;I[D)Z
    .locals 29

    const/4 v0, 0x0

    aget-wide v10, p9, v0

    const/4 v14, 0x1

    aget-wide v12, p9, v14

    const/4 v1, 0x2

    aget-wide v15, p9, v1

    const/4 v1, 0x3

    aget-wide v17, p9, v1

    sub-double v1, v15, v10

    sub-double v3, v17, v12

    const-wide/high16 v5, -0x3e20000000000000L    # -2.147483648E9

    cmpg-double v7, v10, v5

    if-ltz v7, :cond_5

    const-wide v7, 0x41dfffffffc00000L    # 2.147483647E9

    cmpl-double v9, v10, v7

    if-gtz v9, :cond_5

    cmpg-double v9, v12, v5

    if-ltz v9, :cond_5

    cmpl-double v9, v12, v7

    if-gtz v9, :cond_5

    cmpg-double v9, v15, v5

    if-ltz v9, :cond_5

    cmpl-double v9, v15, v7

    if-gtz v9, :cond_5

    cmpg-double v5, v17, v5

    if-ltz v5, :cond_5

    cmpl-double v5, v17, v7

    if-lez v5, :cond_0

    goto/16 :goto_0

    :cond_0
    sub-int v5, p5, p3

    invoke-static {v5, v1, v2}, Lsun/java2d/pipe/DrawImage;->closeToInteger(ID)Z

    move-result v6

    if-eqz v6, :cond_2

    sub-int v6, p6, p4

    invoke-static {v6, v3, v4}, Lsun/java2d/pipe/DrawImage;->closeToInteger(ID)Z

    move-result v7

    if-eqz v7, :cond_2

    const-wide/high16 v7, 0x3fe0000000000000L    # 0.5

    add-double v19, v10, v7

    move-wide/from16 v22, v1

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    add-double/2addr v7, v12

    invoke-static {v7, v8}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-int v1, v1

    move/from16 v7, p8

    if-eq v7, v14, :cond_1

    invoke-static {v0, v10, v11}, Lsun/java2d/pipe/DrawImage;->closeToInteger(ID)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {v1, v12, v13}, Lsun/java2d/pipe/DrawImage;->closeToInteger(ID)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_1
    move-object/from16 v19, p0

    move-object/from16 v20, p1

    move-object/from16 v21, p2

    move-object/from16 v22, p7

    move/from16 v23, v0

    move/from16 v24, v1

    move/from16 v25, p3

    move/from16 v26, p4

    move/from16 v27, v5

    move/from16 v28, v6

    invoke-virtual/range {v19 .. v28}, Lsun/java2d/pipe/DrawImage;->renderImageCopy(Lsun/java2d/SunGraphics2D;Ljava/awt/Image;Ljava/awt/Color;IIIIII)Z

    return v14

    :cond_2
    move/from16 v7, p8

    move-wide/from16 v22, v1

    :cond_3
    const-wide/16 v0, 0x0

    cmpl-double v2, v22, v0

    if-lez v2, :cond_4

    cmpl-double v0, v3, v0

    if-lez v0, :cond_4

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p7

    move/from16 v5, p8

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move v0, v14

    move-wide v14, v15

    move-wide/from16 v16, v17

    invoke-virtual/range {v1 .. v17}, Lsun/java2d/pipe/DrawImage;->renderImageScale(Lsun/java2d/SunGraphics2D;Ljava/awt/Image;Ljava/awt/Color;IIIIIDDDD)Z

    move-result v1

    if-eqz v1, :cond_4

    return v0

    :cond_4
    const/4 v0, 0x0

    :cond_5
    :goto_0
    return v0
.end method
