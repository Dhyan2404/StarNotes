.class public Lcom/twelvemonkeys/image/ConvolveWithEdgeOp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/awt/image/BufferedImageOp;
.implements Ljava/awt/image/RasterOp;


# static fields
.field public static final EDGE_NO_OP:I = 0x1

.field public static final EDGE_REFLECT:I = 0x2

.field public static final EDGE_WRAP:I = 0x3

.field public static final EDGE_ZERO_FILL:I


# instance fields
.field public final a:Ljava/awt/image/Kernel;

.field public final b:I

.field public final c:Ljava/awt/image/ConvolveOp;


# direct methods
.method public constructor <init>(Ljava/awt/image/Kernel;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 5
    invoke-direct {p0, p1, v0, v1}, Lcom/twelvemonkeys/image/ConvolveWithEdgeOp;-><init>(Ljava/awt/image/Kernel;ILjava/awt/RenderingHints;)V

    return-void
.end method

.method public constructor <init>(Ljava/awt/image/Kernel;ILjava/awt/RenderingHints;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    if-eq p2, v0, :cond_0

    const/4 v0, 0x3

    if-eq p2, v0, :cond_0

    move v0, p2

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 2
    :goto_0
    iput-object p1, p0, Lcom/twelvemonkeys/image/ConvolveWithEdgeOp;->a:Ljava/awt/image/Kernel;

    .line 3
    iput p2, p0, Lcom/twelvemonkeys/image/ConvolveWithEdgeOp;->b:I

    .line 4
    new-instance p2, Ljava/awt/image/ConvolveOp;

    invoke-direct {p2, p1, v0, p3}, Ljava/awt/image/ConvolveOp;-><init>(Ljava/awt/image/Kernel;ILjava/awt/RenderingHints;)V

    iput-object p2, p0, Lcom/twelvemonkeys/image/ConvolveWithEdgeOp;->c:Ljava/awt/image/ConvolveOp;

    return-void
.end method


# virtual methods
.method public final a(Ljava/awt/image/BufferedImage;II)Ljava/awt/image/BufferedImage;
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v11, p1

    move/from16 v12, p2

    move/from16 v13, p3

    iget v1, v0, Lcom/twelvemonkeys/image/ConvolveWithEdgeOp;->b:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-nez v1, :cond_0

    return-object v11

    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v14

    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v15

    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/BufferedImage;->getColorModel()Ljava/awt/image/ColorModel;

    move-result-object v1

    mul-int/lit8 v3, v12, 0x2

    add-int v10, v14, v3

    mul-int/lit8 v3, v13, 0x2

    add-int v9, v15, v3

    invoke-virtual {v1, v10, v9}, Ljava/awt/image/ColorModel;->createCompatibleWritableRaster(II)Ljava/awt/image/WritableRaster;

    move-result-object v3

    new-instance v8, Ljava/awt/image/BufferedImage;

    invoke-virtual {v1}, Ljava/awt/image/ColorModel;->isAlphaPremultiplied()Z

    move-result v4

    const/4 v5, 0x0

    invoke-direct {v8, v1, v3, v4, v5}, Ljava/awt/image/BufferedImage;-><init>(Ljava/awt/image/ColorModel;Ljava/awt/image/WritableRaster;ZLjava/util/Hashtable;)V

    invoke-virtual {v8}, Ljava/awt/image/BufferedImage;->createGraphics()Ljava/awt/Graphics2D;

    move-result-object v7

    :try_start_0
    sget-object v1, Ljava/awt/AlphaComposite;->Src:Ljava/awt/AlphaComposite;

    invoke-virtual {v7, v1}, Ljava/awt/Graphics2D;->setComposite(Ljava/awt/Composite;)V

    sget-object v1, Ljava/awt/RenderingHints;->KEY_DITHERING:Ljava/awt/RenderingHints$Key;

    sget-object v3, Ljava/awt/RenderingHints;->VALUE_DITHER_DISABLE:Ljava/lang/Object;

    invoke-virtual {v7, v1, v3}, Ljava/awt/Graphics2D;->setRenderingHint(Ljava/awt/RenderingHints$Key;Ljava/lang/Object;)V

    invoke-virtual {v7, v11, v12, v13, v5}, Ljava/awt/Graphics2D;->drawImage(Ljava/awt/Image;IILjava/awt/image/ImageObserver;)Z

    iget v1, v0, Lcom/twelvemonkeys/image/ConvolveWithEdgeOp;->b:I

    if-eq v1, v2, :cond_2

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    neg-int v0, v14

    add-int/2addr v0, v12

    neg-int v1, v15

    add-int/2addr v1, v13

    invoke-virtual {v7, v11, v0, v1, v5}, Ljava/awt/Graphics2D;->drawImage(Ljava/awt/Image;IILjava/awt/image/ImageObserver;)Z

    invoke-virtual {v7, v11, v12, v1, v5}, Ljava/awt/Graphics2D;->drawImage(Ljava/awt/Image;IILjava/awt/image/ImageObserver;)Z

    add-int/2addr v14, v12

    invoke-virtual {v7, v11, v14, v1, v5}, Ljava/awt/Graphics2D;->drawImage(Ljava/awt/Image;IILjava/awt/image/ImageObserver;)Z

    invoke-virtual {v7, v11, v0, v13, v5}, Ljava/awt/Graphics2D;->drawImage(Ljava/awt/Image;IILjava/awt/image/ImageObserver;)Z

    invoke-virtual {v7, v11, v14, v13, v5}, Ljava/awt/Graphics2D;->drawImage(Ljava/awt/Image;IILjava/awt/image/ImageObserver;)Z

    add-int/2addr v15, v13

    invoke-virtual {v7, v11, v0, v15, v5}, Ljava/awt/Graphics2D;->drawImage(Ljava/awt/Image;IILjava/awt/image/ImageObserver;)Z

    invoke-virtual {v7, v11, v12, v15, v5}, Ljava/awt/Graphics2D;->drawImage(Ljava/awt/Image;IILjava/awt/image/ImageObserver;)Z

    invoke-virtual {v7, v11, v14, v15, v5}, Ljava/awt/Graphics2D;->drawImage(Ljava/awt/Image;IILjava/awt/image/ImageObserver;)Z

    move-object/from16 v20, v7

    move-object/from16 v17, v8

    goto/16 :goto_0

    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Illegal edge operation "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Lcom/twelvemonkeys/image/ConvolveWithEdgeOp;->b:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :cond_2
    const/4 v3, 0x0

    add-int v16, v12, v14

    const/4 v6, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x1

    const/16 v19, 0x0

    move-object v0, v7

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v4, v16

    move/from16 v5, p3

    move-object/from16 v20, v7

    move/from16 v7, v17

    move-object/from16 v17, v8

    move v8, v14

    move/from16 v21, v9

    move/from16 v9, v18

    move/from16 v18, v10

    move-object/from16 v10, v19

    :try_start_1
    invoke-virtual/range {v0 .. v10}, Ljava/awt/Graphics;->drawImage(Ljava/awt/Image;IIIIIIIILjava/awt/image/ImageObserver;)Z

    neg-int v0, v14

    add-int v2, v0, v12

    add-int v19, v15, v13

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v10, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    move/from16 v3, p3

    move/from16 v4, p2

    move/from16 v5, v19

    move v9, v15

    invoke-virtual/range {v0 .. v10}, Ljava/awt/Graphics;->drawImage(Ljava/awt/Image;IIIIIIIILjava/awt/image/ImageObserver;)Z

    add-int/lit8 v6, v14, -0x1

    const/4 v7, 0x0

    const/4 v10, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    move/from16 v2, v16

    move/from16 v3, p3

    move/from16 v4, v18

    move/from16 v5, v19

    move v8, v14

    move v9, v15

    invoke-virtual/range {v0 .. v10}, Ljava/awt/Graphics;->drawImage(Ljava/awt/Image;IIIIIIIILjava/awt/image/ImageObserver;)Z

    const/4 v6, 0x0

    add-int/lit8 v7, v15, -0x1

    const/4 v10, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, v19

    move/from16 v4, v16

    move/from16 v5, v21

    move v8, v14

    move v9, v15

    invoke-virtual/range {v0 .. v10}, Ljava/awt/Graphics;->drawImage(Ljava/awt/Image;IIIIIIIILjava/awt/image/ImageObserver;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    invoke-virtual/range {v20 .. v20}, Ljava/awt/Graphics2D;->dispose()V

    return-object v17

    :catchall_0
    move-exception v0

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object/from16 v20, v7

    :goto_1
    invoke-virtual/range {v20 .. v20}, Ljava/awt/Graphics2D;->dispose()V

    throw v0
.end method

.method public createCompatibleDestImage(Ljava/awt/image/BufferedImage;Ljava/awt/image/ColorModel;)Ljava/awt/image/BufferedImage;
    .locals 0

    iget-object p0, p0, Lcom/twelvemonkeys/image/ConvolveWithEdgeOp;->c:Ljava/awt/image/ConvolveOp;

    invoke-virtual {p0, p1, p2}, Ljava/awt/image/ConvolveOp;->createCompatibleDestImage(Ljava/awt/image/BufferedImage;Ljava/awt/image/ColorModel;)Ljava/awt/image/BufferedImage;

    move-result-object p0

    return-object p0
.end method

.method public createCompatibleDestRaster(Ljava/awt/image/Raster;)Ljava/awt/image/WritableRaster;
    .locals 0

    iget-object p0, p0, Lcom/twelvemonkeys/image/ConvolveWithEdgeOp;->c:Ljava/awt/image/ConvolveOp;

    invoke-virtual {p0, p1}, Ljava/awt/image/ConvolveOp;->createCompatibleDestRaster(Ljava/awt/image/Raster;)Ljava/awt/image/WritableRaster;

    move-result-object p0

    return-object p0
.end method

.method public filter(Ljava/awt/image/BufferedImage;Ljava/awt/image/BufferedImage;)Ljava/awt/image/BufferedImage;
    .locals 7

    if-eqz p1, :cond_3

    if-eq p1, p2, :cond_2

    .line 1
    iget-object v0, p0, Lcom/twelvemonkeys/image/ConvolveWithEdgeOp;->a:Ljava/awt/image/Kernel;

    invoke-virtual {v0}, Ljava/awt/image/Kernel;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 2
    iget-object v1, p0, Lcom/twelvemonkeys/image/ConvolveWithEdgeOp;->a:Ljava/awt/image/Kernel;

    invoke-virtual {v1}, Ljava/awt/image/Kernel;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    .line 3
    invoke-virtual {p0, p1, v0, v1}, Lcom/twelvemonkeys/image/ConvolveWithEdgeOp;->a(Ljava/awt/image/BufferedImage;II)Ljava/awt/image/BufferedImage;

    move-result-object v2

    .line 4
    invoke-virtual {v2}, Ljava/awt/image/BufferedImage;->getType()I

    move-result v3

    const/4 v4, 0x5

    if-ne v3, v4, :cond_0

    .line 5
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result p2

    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v3

    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getType()I

    move-result v4

    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getColorModel()Ljava/awt/image/ColorModel;

    move-result-object v5

    invoke-virtual {v5}, Ljava/awt/image/ColorModel;->getTransparency()I

    move-result v5

    const/4 v6, 0x0

    invoke-static {p2, v3, v4, v5, v6}, Lcom/twelvemonkeys/image/ImageUtil;->g(IIIILjava/awt/GraphicsConfiguration;)Ljava/awt/image/BufferedImage;

    move-result-object p2

    .line 6
    :cond_0
    iget-object p0, p0, Lcom/twelvemonkeys/image/ConvolveWithEdgeOp;->c:Ljava/awt/image/ConvolveOp;

    invoke-virtual {p0, v2, p2}, Ljava/awt/image/ConvolveOp;->filter(Ljava/awt/image/BufferedImage;Ljava/awt/image/BufferedImage;)Ljava/awt/image/BufferedImage;

    move-result-object p0

    if-eq p1, v2, :cond_1

    .line 7
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result p2

    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result p1

    invoke-virtual {p0, v0, v1, p2, p1}, Ljava/awt/image/BufferedImage;->getSubimage(IIII)Ljava/awt/image/BufferedImage;

    move-result-object p0

    :cond_1
    return-object p0

    .line 8
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "source image cannot be the same as the destination image"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 9
    :cond_3
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "source image is null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public filter(Ljava/awt/image/Raster;Ljava/awt/image/WritableRaster;)Ljava/awt/image/WritableRaster;
    .locals 0

    .line 10
    iget-object p0, p0, Lcom/twelvemonkeys/image/ConvolveWithEdgeOp;->c:Ljava/awt/image/ConvolveOp;

    invoke-virtual {p0, p1, p2}, Ljava/awt/image/ConvolveOp;->filter(Ljava/awt/image/Raster;Ljava/awt/image/WritableRaster;)Ljava/awt/image/WritableRaster;

    move-result-object p0

    return-object p0
.end method

.method public getBounds2D(Ljava/awt/image/BufferedImage;)Ljava/awt/geom/Rectangle2D;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/twelvemonkeys/image/ConvolveWithEdgeOp;->c:Ljava/awt/image/ConvolveOp;

    invoke-virtual {p0, p1}, Ljava/awt/image/ConvolveOp;->getBounds2D(Ljava/awt/image/BufferedImage;)Ljava/awt/geom/Rectangle2D;

    move-result-object p0

    return-object p0
.end method

.method public getBounds2D(Ljava/awt/image/Raster;)Ljava/awt/geom/Rectangle2D;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/twelvemonkeys/image/ConvolveWithEdgeOp;->c:Ljava/awt/image/ConvolveOp;

    invoke-virtual {p0, p1}, Ljava/awt/image/ConvolveOp;->getBounds2D(Ljava/awt/image/Raster;)Ljava/awt/geom/Rectangle2D;

    move-result-object p0

    return-object p0
.end method

.method public getEdgeCondition()I
    .locals 0

    iget p0, p0, Lcom/twelvemonkeys/image/ConvolveWithEdgeOp;->b:I

    return p0
.end method

.method public getKernel()Ljava/awt/image/Kernel;
    .locals 0

    iget-object p0, p0, Lcom/twelvemonkeys/image/ConvolveWithEdgeOp;->c:Ljava/awt/image/ConvolveOp;

    invoke-virtual {p0}, Ljava/awt/image/ConvolveOp;->getKernel()Ljava/awt/image/Kernel;

    move-result-object p0

    return-object p0
.end method

.method public getPoint2D(Ljava/awt/geom/Point2D;Ljava/awt/geom/Point2D;)Ljava/awt/geom/Point2D;
    .locals 0

    iget-object p0, p0, Lcom/twelvemonkeys/image/ConvolveWithEdgeOp;->c:Ljava/awt/image/ConvolveOp;

    invoke-virtual {p0, p1, p2}, Ljava/awt/image/ConvolveOp;->getPoint2D(Ljava/awt/geom/Point2D;Ljava/awt/geom/Point2D;)Ljava/awt/geom/Point2D;

    move-result-object p0

    return-object p0
.end method

.method public getRenderingHints()Ljava/awt/RenderingHints;
    .locals 0

    iget-object p0, p0, Lcom/twelvemonkeys/image/ConvolveWithEdgeOp;->c:Ljava/awt/image/ConvolveOp;

    invoke-virtual {p0}, Ljava/awt/image/ConvolveOp;->getRenderingHints()Ljava/awt/RenderingHints;

    move-result-object p0

    return-object p0
.end method
