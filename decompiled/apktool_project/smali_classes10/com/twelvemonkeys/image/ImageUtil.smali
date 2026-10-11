.class public final Lcom/twelvemonkeys/image/ImageUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final COLOR_SELECTION_DEFAULT:I = 0x0

.field public static final COLOR_SELECTION_FAST:I = 0x100

.field public static final COLOR_SELECTION_QUALITY:I = 0x200

.field public static final DITHER_DEFAULT:I = 0x0

.field public static final DITHER_DIFFUSION:I = 0x2

.field public static final DITHER_DIFFUSION_ALTSCANS:I = 0x3

.field public static final DITHER_NONE:I = 0x1

.field public static final EDGE_NO_OP:I = 0x1

.field public static final EDGE_REFLECT:I = 0x2

.field public static final EDGE_WRAP:I = 0x3

.field public static final EDGE_ZERO_FILL:I = 0x0

.field public static final FLIP_HORIZONTAL:I = 0x1

.field public static final FLIP_VERTICAL:I = -0x1

.field protected static final IDENTITY_TRANSFORM:Ljava/awt/geom/AffineTransform;

.field protected static final LOCATION_UPPER_LEFT:Ljava/awt/Point;

.field public static final ROTATE_180:I = 0xb4

.field public static final ROTATE_90_CCW:I = -0x5a

.field public static final ROTATE_90_CW:I = 0x5a

.field public static final TRANSPARENCY_BITMASK:I = 0x20000

.field public static final TRANSPARENCY_DEFAULT:I = 0x0

.field public static final TRANSPARENCY_OPAQUE:I = 0x10000

.field protected static final TRANSPARENCY_TRANSLUCENT:I = 0x30000

.field public static final a:I = -0x1

.field public static b:Z = true

.field public static final c:[F

.field public static final d:Ljava/awt/image/Kernel;

.field public static final e:Ljava/awt/Component;

.field public static f:Ljava/awt/MediaTracker;

.field public static final g:Ljava/awt/GraphicsConfiguration;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x9

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/twelvemonkeys/image/ImageUtil;->c:[F

    new-instance v1, Ljava/awt/image/Kernel;

    const/4 v2, 0x3

    invoke-direct {v1, v2, v2, v0}, Ljava/awt/image/Kernel;-><init>(II[F)V

    sput-object v1, Lcom/twelvemonkeys/image/ImageUtil;->d:Ljava/awt/image/Kernel;

    new-instance v0, Lcom/twelvemonkeys/image/ImageUtil$a;

    invoke-direct {v0}, Lcom/twelvemonkeys/image/ImageUtil$a;-><init>()V

    sput-object v0, Lcom/twelvemonkeys/image/ImageUtil;->e:Ljava/awt/Component;

    new-instance v1, Ljava/awt/MediaTracker;

    invoke-direct {v1, v0}, Ljava/awt/MediaTracker;-><init>(Ljava/awt/Component;)V

    sput-object v1, Lcom/twelvemonkeys/image/ImageUtil;->f:Ljava/awt/MediaTracker;

    new-instance v0, Ljava/awt/geom/AffineTransform;

    invoke-direct {v0}, Ljava/awt/geom/AffineTransform;-><init>()V

    sput-object v0, Lcom/twelvemonkeys/image/ImageUtil;->IDENTITY_TRANSFORM:Ljava/awt/geom/AffineTransform;

    new-instance v0, Ljava/awt/Point;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Ljava/awt/Point;-><init>(II)V

    sput-object v0, Lcom/twelvemonkeys/image/ImageUtil;->LOCATION_UPPER_LEFT:Ljava/awt/Point;

    invoke-static {}, Lcom/twelvemonkeys/image/ImageUtil;->o()Ljava/awt/GraphicsConfiguration;

    move-result-object v0

    sput-object v0, Lcom/twelvemonkeys/image/ImageUtil;->g:Ljava/awt/GraphicsConfiguration;

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        -0x41666666    # -0.3f
        0x0
        -0x41666666    # -0.3f
        0x400ccccd    # 2.2f
        -0x41666666    # -0.3f
        0x0
        -0x41666666    # -0.3f
        0x0
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/awt/Image;Ljava/awt/Color;Ljava/awt/GraphicsConfiguration;)Ljava/awt/image/BufferedImage;
    .locals 8

    instance-of v0, p0, Ljava/awt/image/BufferedImage;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Ljava/awt/image/BufferedImage;

    invoke-virtual {v0}, Ljava/awt/image/BufferedImage;->getType()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/awt/image/BufferedImage;->getColorModel()Ljava/awt/image/ColorModel;

    move-result-object v1

    invoke-virtual {v0}, Ljava/awt/image/BufferedImage;->getTransparency()I

    move-result v2

    invoke-virtual {p2, v2}, Ljava/awt/GraphicsConfiguration;->getColorModel(I)Ljava/awt/image/ColorModel;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/twelvemonkeys/image/ImageUtil;->m(Ljava/awt/image/ColorModel;Ljava/awt/image/ColorModel;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    if-eqz p0, :cond_1

    invoke-static {p0}, Lcom/twelvemonkeys/image/ImageUtil;->getWidth(Ljava/awt/Image;)I

    move-result v2

    invoke-static {p0}, Lcom/twelvemonkeys/image/ImageUtil;->getHeight(Ljava/awt/Image;)I

    move-result v3

    const/4 v4, -0x1

    invoke-static {p0}, Lcom/twelvemonkeys/image/ImageUtil;->q(Ljava/awt/Image;)I

    move-result v5

    move-object v6, p1

    move-object v7, p2

    invoke-static/range {v2 .. v7}, Lcom/twelvemonkeys/image/ImageUtil;->h(IIIILjava/awt/Color;Ljava/awt/GraphicsConfiguration;)Ljava/awt/image/BufferedImage;

    move-result-object p1

    invoke-static {p1, p0}, Lcom/twelvemonkeys/image/ImageUtil;->l(Ljava/awt/image/BufferedImage;Ljava/awt/Image;)V

    return-object p1

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "image == null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static accelerate(Ljava/awt/Image;)Ljava/awt/image/BufferedImage;
    .locals 2

    const/4 v0, 0x0

    .line 1
    sget-object v1, Lcom/twelvemonkeys/image/ImageUtil;->g:Ljava/awt/GraphicsConfiguration;

    invoke-static {p0, v0, v1}, Lcom/twelvemonkeys/image/ImageUtil;->a(Ljava/awt/Image;Ljava/awt/Color;Ljava/awt/GraphicsConfiguration;)Ljava/awt/image/BufferedImage;

    move-result-object p0

    return-object p0
.end method

.method public static accelerate(Ljava/awt/Image;Ljava/awt/GraphicsConfiguration;)Ljava/awt/image/BufferedImage;
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-static {p0, v0, p1}, Lcom/twelvemonkeys/image/ImageUtil;->a(Ljava/awt/Image;Ljava/awt/Color;Ljava/awt/GraphicsConfiguration;)Ljava/awt/image/BufferedImage;

    move-result-object p0

    return-object p0
.end method

.method public static b(Ljava/awt/image/BufferedImage;III)Ljava/awt/image/BufferedImage;
    .locals 22

    move-object/from16 v0, p0

    move/from16 v12, p1

    move/from16 v13, p2

    move/from16 v1, p3

    invoke-virtual/range {p0 .. p0}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v14

    invoke-virtual/range {p0 .. p0}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v15

    invoke-virtual/range {p0 .. p0}, Ljava/awt/image/BufferedImage;->getColorModel()Ljava/awt/image/ColorModel;

    move-result-object v2

    mul-int/lit8 v3, v12, 0x2

    add-int v11, v14, v3

    mul-int/lit8 v3, v13, 0x2

    add-int v10, v15, v3

    invoke-virtual {v2, v11, v10}, Ljava/awt/image/ColorModel;->createCompatibleWritableRaster(II)Ljava/awt/image/WritableRaster;

    move-result-object v3

    new-instance v9, Ljava/awt/image/BufferedImage;

    invoke-virtual {v2}, Ljava/awt/image/ColorModel;->isAlphaPremultiplied()Z

    move-result v4

    const/4 v5, 0x0

    invoke-direct {v9, v2, v3, v4, v5}, Ljava/awt/image/BufferedImage;-><init>(Ljava/awt/image/ColorModel;Ljava/awt/image/WritableRaster;ZLjava/util/Hashtable;)V

    invoke-virtual {v9}, Ljava/awt/image/BufferedImage;->createGraphics()Ljava/awt/Graphics2D;

    move-result-object v8

    :try_start_0
    sget-object v2, Ljava/awt/AlphaComposite;->Src:Ljava/awt/AlphaComposite;

    invoke-virtual {v8, v2}, Ljava/awt/Graphics2D;->setComposite(Ljava/awt/Composite;)V

    sget-object v2, Ljava/awt/RenderingHints;->KEY_DITHERING:Ljava/awt/RenderingHints$Key;

    sget-object v3, Ljava/awt/RenderingHints;->VALUE_DITHER_DISABLE:Ljava/lang/Object;

    invoke-virtual {v8, v2, v3}, Ljava/awt/Graphics2D;->setRenderingHint(Ljava/awt/RenderingHints$Key;Ljava/lang/Object;)V

    invoke-virtual {v8, v0, v12, v13, v5}, Ljava/awt/Graphics2D;->drawImage(Ljava/awt/Image;IILjava/awt/image/ImageObserver;)Z

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    neg-int v1, v14

    add-int/2addr v1, v12

    neg-int v2, v15

    add-int/2addr v2, v13

    invoke-virtual {v8, v0, v1, v2, v5}, Ljava/awt/Graphics2D;->drawImage(Ljava/awt/Image;IILjava/awt/image/ImageObserver;)Z

    invoke-virtual {v8, v0, v12, v2, v5}, Ljava/awt/Graphics2D;->drawImage(Ljava/awt/Image;IILjava/awt/image/ImageObserver;)Z

    add-int/2addr v14, v12

    invoke-virtual {v8, v0, v14, v2, v5}, Ljava/awt/Graphics2D;->drawImage(Ljava/awt/Image;IILjava/awt/image/ImageObserver;)Z

    invoke-virtual {v8, v0, v1, v13, v5}, Ljava/awt/Graphics2D;->drawImage(Ljava/awt/Image;IILjava/awt/image/ImageObserver;)Z

    invoke-virtual {v8, v0, v14, v13, v5}, Ljava/awt/Graphics2D;->drawImage(Ljava/awt/Image;IILjava/awt/image/ImageObserver;)Z

    add-int/2addr v15, v13

    invoke-virtual {v8, v0, v1, v15, v5}, Ljava/awt/Graphics2D;->drawImage(Ljava/awt/Image;IILjava/awt/image/ImageObserver;)Z

    invoke-virtual {v8, v0, v12, v15, v5}, Ljava/awt/Graphics2D;->drawImage(Ljava/awt/Image;IILjava/awt/image/ImageObserver;)Z

    invoke-virtual {v8, v0, v14, v15, v5}, Ljava/awt/Graphics2D;->drawImage(Ljava/awt/Image;IILjava/awt/image/ImageObserver;)Z

    move-object/from16 v20, v8

    move-object/from16 v17, v9

    goto/16 :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Illegal edge operation "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :cond_1
    const/4 v4, 0x0

    add-int v16, v12, v14

    const/4 v7, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x1

    const/16 v19, 0x0

    move-object v1, v8

    move-object/from16 v2, p0

    move/from16 v3, p1

    move/from16 v5, v16

    move/from16 v6, p2

    move-object/from16 v20, v8

    move/from16 v8, v17

    move-object/from16 v17, v9

    move v9, v14

    move/from16 v21, v10

    move/from16 v10, v18

    move/from16 v18, v11

    move-object/from16 v11, v19

    :try_start_1
    invoke-virtual/range {v1 .. v11}, Ljava/awt/Graphics;->drawImage(Ljava/awt/Image;IIIIIIIILjava/awt/image/ImageObserver;)Z

    neg-int v1, v14

    add-int v3, v1, v12

    add-int v19, v15, v13

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v11, 0x0

    move-object/from16 v1, v20

    move-object/from16 v2, p0

    move/from16 v4, p2

    move/from16 v5, p1

    move/from16 v6, v19

    move v10, v15

    invoke-virtual/range {v1 .. v11}, Ljava/awt/Graphics;->drawImage(Ljava/awt/Image;IIIIIIIILjava/awt/image/ImageObserver;)Z

    add-int/lit8 v7, v14, -0x1

    const/4 v8, 0x0

    const/4 v11, 0x0

    move-object/from16 v1, v20

    move-object/from16 v2, p0

    move/from16 v3, v16

    move/from16 v4, p2

    move/from16 v5, v18

    move/from16 v6, v19

    move v9, v14

    move v10, v15

    invoke-virtual/range {v1 .. v11}, Ljava/awt/Graphics;->drawImage(Ljava/awt/Image;IIIIIIIILjava/awt/image/ImageObserver;)Z

    const/4 v7, 0x0

    add-int/lit8 v8, v15, -0x1

    const/4 v11, 0x0

    move-object/from16 v1, v20

    move-object/from16 v2, p0

    move/from16 v3, p1

    move/from16 v4, v19

    move/from16 v5, v16

    move/from16 v6, v21

    move v9, v14

    move v10, v15

    invoke-virtual/range {v1 .. v11}, Ljava/awt/Graphics;->drawImage(Ljava/awt/Image;IIIIIIIILjava/awt/image/ImageObserver;)Z
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

    move-object/from16 v20, v8

    :goto_1
    invoke-virtual/range {v20 .. v20}, Ljava/awt/Graphics2D;->dispose()V

    throw v0
.end method

.method public static blend(Ljava/awt/Color;Ljava/awt/Color;)Ljava/awt/Color;
    .locals 1

    .line 1
    new-instance v0, Ljava/awt/Color;

    invoke-virtual {p0}, Ljava/awt/Color;->getRGB()I

    move-result p0

    invoke-virtual {p1}, Ljava/awt/Color;->getRGB()I

    move-result p1

    invoke-static {p0, p1}, Lcom/twelvemonkeys/image/ImageUtil;->c(II)I

    move-result p0

    const/4 p1, 0x1

    invoke-direct {v0, p0, p1}, Ljava/awt/Color;-><init>(IZ)V

    return-object v0
.end method

.method public static blend(Ljava/awt/Color;Ljava/awt/Color;F)Ljava/awt/Color;
    .locals 6

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p2

    .line 2
    new-instance v1, Ljava/awt/Color;

    invoke-virtual {p0}, Ljava/awt/Color;->getRed()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v0

    invoke-virtual {p1}, Ljava/awt/Color;->getRed()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, p2

    add-float/2addr v2, v3

    invoke-static {v2}, Lcom/twelvemonkeys/image/ImageUtil;->d(F)I

    move-result v2

    invoke-virtual {p0}, Ljava/awt/Color;->getGreen()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v0

    invoke-virtual {p1}, Ljava/awt/Color;->getGreen()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, p2

    add-float/2addr v3, v4

    invoke-static {v3}, Lcom/twelvemonkeys/image/ImageUtil;->d(F)I

    move-result v3

    invoke-virtual {p0}, Ljava/awt/Color;->getBlue()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v0

    invoke-virtual {p1}, Ljava/awt/Color;->getBlue()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, p2

    add-float/2addr v4, v5

    invoke-static {v4}, Lcom/twelvemonkeys/image/ImageUtil;->d(F)I

    move-result v4

    invoke-virtual {p0}, Ljava/awt/Color;->getAlpha()I

    move-result p0

    int-to-float p0, p0

    mul-float/2addr p0, v0

    invoke-virtual {p1}, Ljava/awt/Color;->getAlpha()I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr p1, p2

    add-float/2addr p0, p1

    invoke-static {p0}, Lcom/twelvemonkeys/image/ImageUtil;->d(F)I

    move-result p0

    invoke-direct {v1, v2, v3, v4, p0}, Ljava/awt/Color;-><init>(IIII)V

    return-object v1
.end method

.method public static blur(Ljava/awt/image/BufferedImage;)Ljava/awt/image/BufferedImage;
    .locals 1

    const/high16 v0, 0x3fc00000    # 1.5f

    .line 1
    invoke-static {p0, v0}, Lcom/twelvemonkeys/image/ImageUtil;->blur(Ljava/awt/image/BufferedImage;F)Ljava/awt/image/BufferedImage;

    move-result-object p0

    return-object p0
.end method

.method public static blur(Ljava/awt/image/BufferedImage;F)Ljava/awt/image/BufferedImage;
    .locals 4

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    invoke-static {p1}, Lcom/twelvemonkeys/image/ImageUtil;->s(F)Ljava/awt/image/Kernel;

    move-result-object p1

    .line 3
    new-instance v0, Ljava/awt/image/Kernel;

    invoke-virtual {p1}, Ljava/awt/image/Kernel;->getHeight()I

    move-result v1

    invoke-virtual {p1}, Ljava/awt/image/Kernel;->getWidth()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Ljava/awt/image/Kernel;->getKernelData([F)[F

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Ljava/awt/image/Kernel;-><init>(II[F)V

    .line 4
    invoke-virtual {p1}, Ljava/awt/image/Kernel;->getWidth()I

    move-result v1

    const/4 v2, 0x2

    div-int/2addr v1, v2

    invoke-virtual {v0}, Ljava/awt/image/Kernel;->getHeight()I

    move-result v3

    div-int/2addr v3, v2

    invoke-static {p0, v1, v3, v2}, Lcom/twelvemonkeys/image/ImageUtil;->b(Ljava/awt/image/BufferedImage;III)Ljava/awt/image/BufferedImage;

    move-result-object v1

    const/4 v3, 0x1

    .line 5
    invoke-static {v1, p1, v3}, Lcom/twelvemonkeys/image/ImageUtil;->convolve(Ljava/awt/image/BufferedImage;Ljava/awt/image/Kernel;I)Ljava/awt/image/BufferedImage;

    move-result-object v1

    .line 6
    invoke-static {v1, v0, v3}, Lcom/twelvemonkeys/image/ImageUtil;->convolve(Ljava/awt/image/BufferedImage;Ljava/awt/image/Kernel;I)Ljava/awt/image/BufferedImage;

    move-result-object v1

    .line 7
    invoke-virtual {p1}, Ljava/awt/image/Kernel;->getWidth()I

    move-result p1

    div-int/2addr p1, v2

    invoke-virtual {v0}, Ljava/awt/image/Kernel;->getHeight()I

    move-result v0

    div-int/2addr v0, v2

    invoke-virtual {p0}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result p0

    invoke-virtual {v1, p1, v0, v2, p0}, Ljava/awt/image/BufferedImage;->getSubimage(IIII)Ljava/awt/image/BufferedImage;

    move-result-object p0

    return-object p0
.end method

.method public static brightness(Ljava/awt/Image;F)Ljava/awt/Image;
    .locals 2

    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    if-nez v1, :cond_0

    return-object p0

    :cond_0
    new-instance v1, Lcom/twelvemonkeys/image/BrightnessContrastFilter;

    invoke-direct {v1, p1, v0}, Lcom/twelvemonkeys/image/BrightnessContrastFilter;-><init>(FF)V

    invoke-static {p0, v1}, Lcom/twelvemonkeys/image/ImageUtil;->filter(Ljava/awt/Image;Ljava/awt/image/ImageFilter;)Ljava/awt/Image;

    move-result-object p0

    return-object p0
.end method

.method public static c(II)I
    .locals 2

    xor-int v0, p0, p1

    const v1, -0x1010102

    and-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x1

    and-int/2addr p0, p1

    add-int/2addr v0, p0

    return v0
.end method

.method public static contrast(Ljava/awt/Image;)Ljava/awt/Image;
    .locals 1

    const v0, 0x3e99999a    # 0.3f

    .line 1
    invoke-static {p0, v0}, Lcom/twelvemonkeys/image/ImageUtil;->contrast(Ljava/awt/Image;F)Ljava/awt/Image;

    move-result-object p0

    return-object p0
.end method

.method public static contrast(Ljava/awt/Image;F)Ljava/awt/Image;
    .locals 2

    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    if-nez v1, :cond_0

    return-object p0

    .line 2
    :cond_0
    new-instance v1, Lcom/twelvemonkeys/image/BrightnessContrastFilter;

    invoke-direct {v1, v0, p1}, Lcom/twelvemonkeys/image/BrightnessContrastFilter;-><init>(FF)V

    .line 3
    invoke-static {p0, v1}, Lcom/twelvemonkeys/image/ImageUtil;->filter(Ljava/awt/Image;Ljava/awt/image/ImageFilter;)Ljava/awt/Image;

    move-result-object p0

    return-object p0
.end method

.method public static convolve(Ljava/awt/image/BufferedImage;Ljava/awt/image/Kernel;I)Ljava/awt/image/BufferedImage;
    .locals 6

    const/4 v0, 0x2

    if-eq p2, v0, :cond_0

    const/4 v1, 0x3

    if-eq p2, v1, :cond_0

    move-object v1, p0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/awt/image/Kernel;->getWidth()I

    move-result v1

    div-int/2addr v1, v0

    invoke-virtual {p1}, Ljava/awt/image/Kernel;->getHeight()I

    move-result v2

    div-int/2addr v2, v0

    invoke-static {p0, v1, v2, p2}, Lcom/twelvemonkeys/image/ImageUtil;->b(Ljava/awt/image/BufferedImage;III)Ljava/awt/image/BufferedImage;

    move-result-object v1

    :goto_0
    new-instance v2, Ljava/awt/image/ConvolveOp;

    const/4 v3, 0x0

    invoke-direct {v2, p1, p2, v3}, Ljava/awt/image/ConvolveOp;-><init>(Ljava/awt/image/Kernel;ILjava/awt/RenderingHints;)V

    invoke-virtual {v1}, Ljava/awt/image/BufferedImage;->getType()I

    move-result p2

    const/4 v4, 0x5

    if-ne p2, v4, :cond_1

    invoke-virtual {p0}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result p2

    invoke-virtual {p0}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Ljava/awt/image/BufferedImage;->getType()I

    move-result v4

    invoke-virtual {p0}, Ljava/awt/image/BufferedImage;->getColorModel()Ljava/awt/image/ColorModel;

    move-result-object v5

    invoke-virtual {v5}, Ljava/awt/image/ColorModel;->getTransparency()I

    move-result v5

    invoke-static {p2, v3, v4, v5}, Lcom/twelvemonkeys/image/ImageUtil;->f(IIII)Ljava/awt/image/BufferedImage;

    move-result-object v3

    :cond_1
    invoke-virtual {v2, v1, v3}, Ljava/awt/image/ConvolveOp;->filter(Ljava/awt/image/BufferedImage;Ljava/awt/image/BufferedImage;)Ljava/awt/image/BufferedImage;

    move-result-object p2

    if-eq p0, v1, :cond_2

    invoke-virtual {p1}, Ljava/awt/image/Kernel;->getWidth()I

    move-result v1

    div-int/2addr v1, v0

    invoke-virtual {p1}, Ljava/awt/image/Kernel;->getHeight()I

    move-result p1

    div-int/2addr p1, v0

    invoke-virtual {p0}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result p0

    invoke-virtual {p2, v1, p1, v0, p0}, Ljava/awt/image/BufferedImage;->getSubimage(IIII)Ljava/awt/image/BufferedImage;

    move-result-object p2

    :cond_2
    return-object p2
.end method

.method public static createClear(IIILjava/awt/Color;)Ljava/awt/image/BufferedImage;
    .locals 6

    const/4 v3, 0x1

    .line 2
    sget-object v5, Lcom/twelvemonkeys/image/ImageUtil;->g:Ljava/awt/GraphicsConfiguration;

    move v0, p0

    move v1, p1

    move v2, p2

    move-object v4, p3

    invoke-static/range {v0 .. v5}, Lcom/twelvemonkeys/image/ImageUtil;->h(IIIILjava/awt/Color;Ljava/awt/GraphicsConfiguration;)Ljava/awt/image/BufferedImage;

    move-result-object p0

    return-object p0
.end method

.method public static createClear(IILjava/awt/Color;)Ljava/awt/image/BufferedImage;
    .locals 1

    const/4 v0, -0x1

    .line 1
    invoke-static {p0, p1, v0, p2}, Lcom/twelvemonkeys/image/ImageUtil;->createClear(IIILjava/awt/Color;)Ljava/awt/image/BufferedImage;

    move-result-object p0

    return-object p0
.end method

.method public static createCopy(Ljava/awt/image/BufferedImage;)Ljava/awt/image/BufferedImage;
    .locals 5

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/awt/image/BufferedImage;->getColorModel()Ljava/awt/image/ColorModel;

    move-result-object v0

    new-instance v1, Ljava/awt/image/BufferedImage;

    invoke-virtual {p0}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Ljava/awt/image/ColorModel;->createCompatibleWritableRaster(II)Ljava/awt/image/WritableRaster;

    move-result-object v2

    invoke-virtual {v0}, Ljava/awt/image/ColorModel;->isAlphaPremultiplied()Z

    move-result v3

    const/4 v4, 0x0

    invoke-direct {v1, v0, v2, v3, v4}, Ljava/awt/image/BufferedImage;-><init>(Ljava/awt/image/ColorModel;Ljava/awt/image/WritableRaster;ZLjava/util/Hashtable;)V

    invoke-static {v1, p0}, Lcom/twelvemonkeys/image/ImageUtil;->l(Ljava/awt/image/BufferedImage;Ljava/awt/Image;)V

    return-object v1

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "image == null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static createFlipped(Ljava/awt/Image;I)Ljava/awt/image/BufferedImage;
    .locals 10

    const/4 v0, -0x1

    const/4 v1, 0x1

    if-eq p1, v0, :cond_1

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Illegal direction: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    invoke-static {p0}, Lcom/twelvemonkeys/image/ImageUtil;->toBuffered(Ljava/awt/Image;)Ljava/awt/image/BufferedImage;

    move-result-object p0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    const-wide/16 v6, 0x0

    if-ne p1, v1, :cond_2

    invoke-virtual {p0}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result p1

    int-to-double v8, p1

    invoke-static {v6, v7, v8, v9}, Ljava/awt/geom/AffineTransform;->getTranslateInstance(DD)Ljava/awt/geom/AffineTransform;

    move-result-object p1

    invoke-virtual {p1, v2, v3, v4, v5}, Ljava/awt/geom/AffineTransform;->scale(DD)V

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result p1

    int-to-double v8, p1

    invoke-static {v8, v9, v6, v7}, Ljava/awt/geom/AffineTransform;->getTranslateInstance(DD)Ljava/awt/geom/AffineTransform;

    move-result-object p1

    invoke-virtual {p1, v4, v5, v2, v3}, Ljava/awt/geom/AffineTransform;->scale(DD)V

    :goto_1
    new-instance v0, Lcom/twelvemonkeys/image/AffineTransformOp;

    invoke-direct {v0, p1, v1}, Lcom/twelvemonkeys/image/AffineTransformOp;-><init>(Ljava/awt/geom/AffineTransform;I)V

    const/4 p1, 0x0

    invoke-virtual {v0, p0, p1}, Lcom/twelvemonkeys/image/AffineTransformOp;->filter(Ljava/awt/image/BufferedImage;Ljava/awt/image/BufferedImage;)Ljava/awt/image/BufferedImage;

    move-result-object p0

    return-object p0
.end method

.method public static createIndexed(Ljava/awt/Image;)Ljava/awt/image/BufferedImage;
    .locals 3

    .line 1
    invoke-static {p0}, Lcom/twelvemonkeys/image/ImageUtil;->toBuffered(Ljava/awt/Image;)Ljava/awt/image/BufferedImage;

    move-result-object p0

    sget-object v0, Ljava/awt/Color;->black:Ljava/awt/Color;

    const/4 v1, 0x0

    const/16 v2, 0x100

    invoke-static {p0, v2, v0, v1}, Lcom/sunia/HTREnginev2/qji;->h(Ljava/awt/image/BufferedImage;ILjava/awt/Color;I)Ljava/awt/image/BufferedImage;

    move-result-object p0

    return-object p0
.end method

.method public static createIndexed(Ljava/awt/Image;ILjava/awt/Color;I)Ljava/awt/image/BufferedImage;
    .locals 0

    .line 2
    invoke-static {p0}, Lcom/twelvemonkeys/image/ImageUtil;->toBuffered(Ljava/awt/Image;)Ljava/awt/image/BufferedImage;

    move-result-object p0

    invoke-static {p0, p1, p2, p3}, Lcom/sunia/HTREnginev2/qji;->h(Ljava/awt/image/BufferedImage;ILjava/awt/Color;I)Ljava/awt/image/BufferedImage;

    move-result-object p0

    return-object p0
.end method

.method public static createIndexed(Ljava/awt/Image;Ljava/awt/Image;Ljava/awt/Color;I)Ljava/awt/image/BufferedImage;
    .locals 1

    .line 4
    invoke-static {p0}, Lcom/twelvemonkeys/image/ImageUtil;->toBuffered(Ljava/awt/Image;)Ljava/awt/image/BufferedImage;

    move-result-object p0

    const/16 v0, 0xff

    invoke-static {p1, v0, p3}, Lcom/sunia/HTREnginev2/qji;->d(Ljava/awt/Image;II)Ljava/awt/image/IndexColorModel;

    move-result-object p1

    invoke-static {p0, p1, p2, p3}, Lcom/sunia/HTREnginev2/qji;->l(Ljava/awt/image/BufferedImage;Ljava/awt/image/IndexColorModel;Ljava/awt/Color;I)Ljava/awt/image/BufferedImage;

    move-result-object p0

    return-object p0
.end method

.method public static createIndexed(Ljava/awt/Image;Ljava/awt/image/IndexColorModel;Ljava/awt/Color;I)Ljava/awt/image/BufferedImage;
    .locals 0

    .line 3
    invoke-static {p0}, Lcom/twelvemonkeys/image/ImageUtil;->toBuffered(Ljava/awt/Image;)Ljava/awt/image/BufferedImage;

    move-result-object p0

    invoke-static {p0, p1, p2, p3}, Lcom/sunia/HTREnginev2/qji;->l(Ljava/awt/image/BufferedImage;Ljava/awt/image/IndexColorModel;Ljava/awt/Color;I)Ljava/awt/image/BufferedImage;

    move-result-object p0

    return-object p0
.end method

.method public static createResampled(Ljava/awt/Image;III)Ljava/awt/image/BufferedImage;
    .locals 1

    .line 1
    instance-of v0, p0, Ljava/awt/image/BufferedImage;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/awt/image/BufferedImage;

    goto :goto_0

    :cond_0
    const/4 v0, 0x6

    invoke-static {p0, v0}, Lcom/twelvemonkeys/image/ImageUtil;->toBuffered(Ljava/awt/Image;I)Ljava/awt/image/BufferedImage;

    move-result-object p0

    .line 2
    :goto_0
    invoke-static {p0, p1, p2, p3}, Lcom/twelvemonkeys/image/ImageUtil;->createResampled(Ljava/awt/image/BufferedImage;III)Ljava/awt/image/BufferedImage;

    move-result-object p0

    return-object p0
.end method

.method public static createResampled(Ljava/awt/image/BufferedImage;III)Ljava/awt/image/BufferedImage;
    .locals 1

    .line 5
    new-instance v0, Lcom/twelvemonkeys/image/ResampleOp;

    invoke-static {p3}, Lcom/twelvemonkeys/image/ImageUtil;->e(I)I

    move-result p3

    invoke-direct {v0, p1, p2, p3}, Lcom/twelvemonkeys/image/ResampleOp;-><init>(III)V

    const/4 p1, 0x0

    invoke-virtual {v0, p0, p1}, Lcom/twelvemonkeys/image/ResampleOp;->filter(Ljava/awt/image/BufferedImage;Ljava/awt/image/BufferedImage;)Ljava/awt/image/BufferedImage;

    move-result-object p0

    return-object p0
.end method

.method public static createResampled(Ljava/awt/image/RenderedImage;III)Ljava/awt/image/BufferedImage;
    .locals 1

    .line 3
    instance-of v0, p0, Ljava/awt/image/BufferedImage;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/awt/image/BufferedImage;

    goto :goto_1

    :cond_0
    invoke-interface {p0}, Ljava/awt/image/RenderedImage;->getColorModel()Ljava/awt/image/ColorModel;

    move-result-object v0

    invoke-virtual {v0}, Ljava/awt/image/ColorModel;->hasAlpha()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x6

    goto :goto_0

    :cond_1
    const/4 v0, 0x5

    :goto_0
    invoke-static {p0, v0}, Lcom/twelvemonkeys/image/ImageUtil;->toBuffered(Ljava/awt/image/RenderedImage;I)Ljava/awt/image/BufferedImage;

    move-result-object p0

    .line 4
    :goto_1
    invoke-static {p0, p1, p2, p3}, Lcom/twelvemonkeys/image/ImageUtil;->createResampled(Ljava/awt/image/BufferedImage;III)Ljava/awt/image/BufferedImage;

    move-result-object p0

    return-object p0
.end method

.method public static createRotated(Ljava/awt/Image;D)Ljava/awt/image/BufferedImage;
    .locals 0

    .line 3
    invoke-static {p0}, Lcom/twelvemonkeys/image/ImageUtil;->toBuffered(Ljava/awt/Image;)Ljava/awt/image/BufferedImage;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lcom/twelvemonkeys/image/ImageUtil;->k(Ljava/awt/image/BufferedImage;D)Ljava/awt/image/BufferedImage;

    move-result-object p0

    return-object p0
.end method

.method public static createRotated(Ljava/awt/Image;I)Ljava/awt/image/BufferedImage;
    .locals 2

    const/16 v0, -0x5a

    if-eq p1, v0, :cond_1

    const/16 v0, 0x5a

    if-eq p1, v0, :cond_1

    const/16 v0, 0xb4

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Illegal direction: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    int-to-double v0, p1

    .line 2
    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lcom/twelvemonkeys/image/ImageUtil;->createRotated(Ljava/awt/Image;D)Ljava/awt/image/BufferedImage;

    move-result-object p0

    return-object p0
.end method

.method public static createScaled(Ljava/awt/Image;III)Ljava/awt/image/BufferedImage;
    .locals 5

    instance-of v0, p0, Ljava/awt/image/RenderedImage;

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Ljava/awt/image/RenderedImage;

    invoke-interface {v0}, Ljava/awt/image/RenderedImage;->getColorModel()Ljava/awt/image/ColorModel;

    move-result-object v0

    instance-of v2, p0, Ljava/awt/image/BufferedImage;

    if-eqz v2, :cond_1

    move-object v2, p0

    check-cast v2, Ljava/awt/image/BufferedImage;

    invoke-virtual {v2}, Ljava/awt/image/BufferedImage;->getType()I

    move-result v2

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/twelvemonkeys/image/BufferedImageFactory;

    invoke-direct {v0, p0}, Lcom/twelvemonkeys/image/BufferedImageFactory;-><init>(Ljava/awt/Image;)V

    invoke-virtual {v0}, Lcom/twelvemonkeys/image/BufferedImageFactory;->getColorModel()Ljava/awt/image/ColorModel;

    move-result-object v0

    :cond_1
    move v2, v1

    :goto_0
    invoke-static {p0, p1, p2, p3}, Lcom/twelvemonkeys/image/ImageUtil;->createResampled(Ljava/awt/Image;III)Ljava/awt/image/BufferedImage;

    move-result-object v3

    invoke-virtual {v3}, Ljava/awt/image/BufferedImage;->getType()I

    move-result v4

    if-eq v2, v4, :cond_2

    if-ne v2, v1, :cond_3

    :cond_2
    invoke-virtual {v3}, Ljava/awt/image/BufferedImage;->getColorModel()Ljava/awt/image/ColorModel;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/twelvemonkeys/image/ImageUtil;->m(Ljava/awt/image/ColorModel;Ljava/awt/image/ColorModel;)Z

    move-result v1

    if-nez v1, :cond_6

    :cond_3
    instance-of v1, p0, Ljava/awt/image/BufferedImage;

    if-eqz v1, :cond_4

    check-cast p0, Ljava/awt/image/BufferedImage;

    invoke-static {p0, v0, p1, p2}, Lcom/twelvemonkeys/image/ImageUtil;->i(Ljava/awt/image/BufferedImage;Ljava/awt/image/ColorModel;II)Ljava/awt/image/WritableRaster;

    move-result-object p0

    goto :goto_1

    :cond_4
    invoke-virtual {v0, p1, p2}, Ljava/awt/image/ColorModel;->createCompatibleWritableRaster(II)Ljava/awt/image/WritableRaster;

    move-result-object p0

    :goto_1
    new-instance p1, Ljava/awt/image/BufferedImage;

    invoke-virtual {v0}, Ljava/awt/image/ColorModel;->isAlphaPremultiplied()Z

    move-result p2

    const/4 v1, 0x0

    invoke-direct {p1, v0, p0, p2, v1}, Ljava/awt/image/BufferedImage;-><init>(Ljava/awt/image/ColorModel;Ljava/awt/image/WritableRaster;ZLjava/util/Hashtable;)V

    instance-of p0, v0, Ljava/awt/image/IndexColorModel;

    if-eqz p0, :cond_5

    const/4 p0, 0x4

    if-ne p3, p0, :cond_5

    new-instance p0, Lcom/twelvemonkeys/image/DiffusionDither;

    check-cast v0, Ljava/awt/image/IndexColorModel;

    invoke-direct {p0, v0}, Lcom/twelvemonkeys/image/DiffusionDither;-><init>(Ljava/awt/image/IndexColorModel;)V

    invoke-virtual {p0, v3, p1}, Lcom/twelvemonkeys/image/DiffusionDither;->filter(Ljava/awt/image/BufferedImage;Ljava/awt/image/BufferedImage;)Ljava/awt/image/BufferedImage;

    goto :goto_2

    :cond_5
    invoke-static {p1, v3}, Lcom/twelvemonkeys/image/ImageUtil;->l(Ljava/awt/image/BufferedImage;Ljava/awt/Image;)V

    :goto_2
    move-object v3, p1

    :cond_6
    return-object v3
.end method

.method public static createTranslucent(Ljava/awt/Color;I)Ljava/awt/Color;
    .locals 2

    new-instance v0, Ljava/awt/Color;

    and-int/lit16 p1, p1, 0xff

    shl-int/lit8 p1, p1, 0x18

    invoke-virtual {p0}, Ljava/awt/Color;->getRGB()I

    move-result p0

    const v1, 0xffffff

    and-int/2addr p0, v1

    or-int/2addr p0, p1

    const/4 p1, 0x1

    invoke-direct {v0, p0, p1}, Ljava/awt/Color;-><init>(IZ)V

    return-object v0
.end method

.method public static createTransparent(II)Ljava/awt/image/BufferedImage;
    .locals 1

    const/4 v0, -0x1

    .line 1
    invoke-static {p0, p1, v0}, Lcom/twelvemonkeys/image/ImageUtil;->createTransparent(III)Ljava/awt/image/BufferedImage;

    move-result-object p0

    return-object p0
.end method

.method public static createTransparent(III)Ljava/awt/image/BufferedImage;
    .locals 2

    const/4 v0, 0x3

    .line 2
    invoke-static {p0, p1, p2, v0}, Lcom/twelvemonkeys/image/ImageUtil;->f(IIII)Ljava/awt/image/BufferedImage;

    move-result-object p2

    .line 3
    invoke-virtual {p2}, Ljava/awt/image/BufferedImage;->createGraphics()Ljava/awt/Graphics2D;

    move-result-object v0

    .line 4
    :try_start_0
    sget-object v1, Ljava/awt/AlphaComposite;->Clear:Ljava/awt/AlphaComposite;

    invoke-virtual {v0, v1}, Ljava/awt/Graphics2D;->setComposite(Ljava/awt/Composite;)V

    const/4 v1, 0x0

    .line 5
    invoke-virtual {v0, v1, v1, p0, p1}, Ljava/awt/Graphics2D;->fillRect(IIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    invoke-virtual {v0}, Ljava/awt/Graphics2D;->dispose()V

    return-object p2

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Ljava/awt/Graphics2D;->dispose()V

    throw p0
.end method

.method public static d(F)I
    .locals 0

    float-to-int p0, p0

    return p0
.end method

.method public static e(I)I
    .locals 2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v1, 0x4

    if-eq p0, v1, :cond_1

    const/16 v1, 0x8

    if-eq p0, v1, :cond_2

    const/16 v1, 0x10

    if-eq p0, v1, :cond_0

    const/16 p0, 0x9

    return p0

    :cond_0
    return v0

    :cond_1
    const/16 p0, 0xd

    return p0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public static f(IIII)Ljava/awt/image/BufferedImage;
    .locals 1

    sget-object v0, Lcom/twelvemonkeys/image/ImageUtil;->g:Ljava/awt/GraphicsConfiguration;

    invoke-static {p0, p1, p2, p3, v0}, Lcom/twelvemonkeys/image/ImageUtil;->g(IIIILjava/awt/GraphicsConfiguration;)Ljava/awt/image/BufferedImage;

    move-result-object p0

    return-object p0
.end method

.method public static filter(Ljava/awt/Image;Ljava/awt/image/ImageFilter;)Ljava/awt/Image;
    .locals 1

    new-instance v0, Ljava/awt/image/FilteredImageSource;

    invoke-virtual {p0}, Ljava/awt/Image;->getSource()Ljava/awt/image/ImageProducer;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Ljava/awt/image/FilteredImageSource;-><init>(Ljava/awt/image/ImageProducer;Ljava/awt/image/ImageFilter;)V

    invoke-static {}, Ljava/awt/Toolkit;->getDefaultToolkit()Ljava/awt/Toolkit;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/awt/Toolkit;->createImage(Ljava/awt/image/ImageProducer;)Ljava/awt/Image;

    move-result-object p0

    return-object p0
.end method

.method public static g(IIIILjava/awt/GraphicsConfiguration;)Ljava/awt/image/BufferedImage;
    .locals 1

    sget-boolean v0, Lcom/twelvemonkeys/image/ImageUtil;->b:Z

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    invoke-static {}, Ljava/awt/GraphicsEnvironment;->getLocalGraphicsEnvironment()Ljava/awt/GraphicsEnvironment;

    move-result-object v0

    invoke-static {v0}, Lcom/twelvemonkeys/image/ImageUtil;->t(Ljava/awt/GraphicsEnvironment;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p4}, Lcom/twelvemonkeys/image/ImageUtil;->n(Ljava/awt/GraphicsConfiguration;)Ljava/awt/GraphicsConfiguration;

    move-result-object p2

    invoke-virtual {p2, p0, p1, p3}, Ljava/awt/GraphicsConfiguration;->createCompatibleImage(III)Ljava/awt/image/BufferedImage;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p4, Ljava/awt/image/BufferedImage;

    invoke-static {p2, p3}, Lcom/twelvemonkeys/image/ImageUtil;->p(II)I

    move-result p2

    invoke-direct {p4, p0, p1, p2}, Ljava/awt/image/BufferedImage;-><init>(III)V

    return-object p4
.end method

.method public static getHeight(Ljava/awt/Image;)I
    .locals 2

    sget-object v0, Lcom/twelvemonkeys/image/ImageUtil;->e:Ljava/awt/Component;

    invoke-virtual {p0, v0}, Ljava/awt/Image;->getHeight(Ljava/awt/image/ImageObserver;)I

    move-result v1

    if-gez v1, :cond_1

    invoke-static {p0}, Lcom/twelvemonkeys/image/ImageUtil;->waitForImage(Ljava/awt/Image;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    invoke-virtual {p0, v0}, Ljava/awt/Image;->getHeight(Ljava/awt/image/ImageObserver;)I

    move-result v1

    :cond_1
    return v1
.end method

.method public static getIndexColorModel(Ljava/awt/Image;II)Ljava/awt/image/IndexColorModel;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/sunia/HTREnginev2/qji;->d(Ljava/awt/Image;II)Ljava/awt/image/IndexColorModel;

    move-result-object p0

    return-object p0
.end method

.method public static getWidth(Ljava/awt/Image;)I
    .locals 2

    sget-object v0, Lcom/twelvemonkeys/image/ImageUtil;->e:Ljava/awt/Component;

    invoke-virtual {p0, v0}, Ljava/awt/Image;->getWidth(Ljava/awt/image/ImageObserver;)I

    move-result v1

    if-gez v1, :cond_1

    invoke-static {p0}, Lcom/twelvemonkeys/image/ImageUtil;->waitForImage(Ljava/awt/Image;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    invoke-virtual {p0, v0}, Ljava/awt/Image;->getWidth(Ljava/awt/image/ImageObserver;)I

    move-result v1

    :cond_1
    return v1
.end method

.method public static grayscale(Ljava/awt/Image;)Ljava/awt/Image;
    .locals 1

    new-instance v0, Lcom/twelvemonkeys/image/GrayFilter;

    invoke-direct {v0}, Lcom/twelvemonkeys/image/GrayFilter;-><init>()V

    invoke-static {p0, v0}, Lcom/twelvemonkeys/image/ImageUtil;->filter(Ljava/awt/Image;Ljava/awt/image/ImageFilter;)Ljava/awt/Image;

    move-result-object p0

    return-object p0
.end method

.method public static h(IIIILjava/awt/Color;Ljava/awt/GraphicsConfiguration;)Ljava/awt/image/BufferedImage;
    .locals 0

    if-eqz p4, :cond_0

    invoke-virtual {p4}, Ljava/awt/Color;->getTransparency()I

    move-result p3

    :cond_0
    invoke-static {p0, p1, p2, p3, p5}, Lcom/twelvemonkeys/image/ImageUtil;->g(IIIILjava/awt/GraphicsConfiguration;)Ljava/awt/image/BufferedImage;

    move-result-object p2

    if-eqz p4, :cond_1

    invoke-virtual {p2}, Ljava/awt/image/BufferedImage;->createGraphics()Ljava/awt/Graphics2D;

    move-result-object p3

    :try_start_0
    sget-object p5, Ljava/awt/AlphaComposite;->Src:Ljava/awt/AlphaComposite;

    invoke-virtual {p3, p5}, Ljava/awt/Graphics2D;->setComposite(Ljava/awt/Composite;)V

    invoke-virtual {p3, p4}, Ljava/awt/Graphics2D;->setColor(Ljava/awt/Color;)V

    const/4 p4, 0x0

    invoke-virtual {p3, p4, p4, p0, p1}, Ljava/awt/Graphics2D;->fillRect(IIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p3}, Ljava/awt/Graphics2D;->dispose()V

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-virtual {p3}, Ljava/awt/Graphics2D;->dispose()V

    throw p0

    :cond_1
    :goto_0
    return-object p2
.end method

.method public static hasTransparentPixels(Ljava/awt/image/RenderedImage;Z)Z
    .locals 13

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-interface {p0}, Ljava/awt/image/RenderedImage;->getColorModel()Ljava/awt/image/ColorModel;

    move-result-object v1

    invoke-virtual {v1}, Ljava/awt/image/ColorModel;->hasAlpha()Z

    move-result v2

    if-nez v2, :cond_1

    return v0

    :cond_1
    invoke-virtual {v1}, Ljava/awt/image/ColorModel;->getTransparency()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_2

    invoke-virtual {v1}, Ljava/awt/image/ColorModel;->getTransparency()I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_2

    return v0

    :cond_2
    invoke-interface {p0}, Ljava/awt/image/RenderedImage;->getMinTileY()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/awt/image/RenderedImage;->getNumYTiles()I

    move-result v4

    if-ge v2, v4, :cond_9

    invoke-interface {p0}, Ljava/awt/image/RenderedImage;->getMinTileX()I

    move-result v4

    :goto_1
    invoke-interface {p0}, Ljava/awt/image/RenderedImage;->getNumXTiles()I

    move-result v5

    if-ge v4, v5, :cond_8

    invoke-interface {p0, v4, v2}, Ljava/awt/image/RenderedImage;->getTile(II)Ljava/awt/image/Raster;

    move-result-object v5

    const/4 v6, 0x1

    if-eqz p1, :cond_3

    invoke-virtual {v5}, Ljava/awt/image/Raster;->getWidth()I

    move-result v7

    div-int/lit8 v7, v7, 0xa

    invoke-static {v7, v6}, Ljava/lang/Math;->max(II)I

    move-result v7

    goto :goto_2

    :cond_3
    move v7, v6

    :goto_2
    if-eqz p1, :cond_4

    invoke-virtual {v5}, Ljava/awt/image/Raster;->getHeight()I

    move-result v8

    div-int/lit8 v8, v8, 0xa

    invoke-static {v8, v6}, Ljava/lang/Math;->max(II)I

    move-result v8

    goto :goto_3

    :cond_4
    move v8, v6

    :goto_3
    move v9, v0

    :goto_4
    invoke-virtual {v5}, Ljava/awt/image/Raster;->getHeight()I

    move-result v10

    if-ge v9, v10, :cond_7

    move v10, v0

    :goto_5
    invoke-virtual {v5}, Ljava/awt/image/Raster;->getWidth()I

    move-result v11

    if-ge v10, v11, :cond_6

    invoke-virtual {v5, v10, v9, v3}, Ljava/awt/image/Raster;->getDataElements(IILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/awt/image/ColorModel;->getAlpha(Ljava/lang/Object;)I

    move-result v11

    const/16 v12, 0xff

    if-eq v11, v12, :cond_5

    return v6

    :cond_5
    add-int/2addr v10, v7

    goto :goto_5

    :cond_6
    add-int/2addr v9, v8

    goto :goto_4

    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_9
    return v0
.end method

.method public static i(Ljava/awt/image/BufferedImage;Ljava/awt/image/ColorModel;II)Ljava/awt/image/WritableRaster;
    .locals 11

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/awt/image/BufferedImage;->getColorModel()Ljava/awt/image/ColorModel;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/twelvemonkeys/image/ImageUtil;->m(Ljava/awt/image/ColorModel;Ljava/awt/image/ColorModel;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p2, p3}, Ljava/awt/image/ColorModel;->createCompatibleWritableRaster(II)Ljava/awt/image/WritableRaster;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    invoke-virtual {p0}, Ljava/awt/image/BufferedImage;->getType()I

    move-result p1

    if-eqz p1, :cond_4

    const/4 v0, 0x5

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x6

    if-eq p1, v0, :cond_2

    const/4 v0, 0x7

    if-eq p1, v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 p0, 0x3

    filled-new-array {p0, v3, v2, v1}, [I

    move-result-object v9

    const/4 v4, 0x0

    mul-int/lit8 v7, p2, 0x4

    const/4 v8, 0x4

    const/4 v10, 0x0

    move v5, p2

    move v6, p3

    invoke-static/range {v4 .. v10}, Ljava/awt/image/Raster;->createInterleavedRaster(IIIII[ILjava/awt/Point;)Ljava/awt/image/WritableRaster;

    move-result-object p0

    return-object p0

    :cond_3
    filled-new-array {v3, v2, v1}, [I

    move-result-object v5

    const/4 v0, 0x0

    mul-int/lit8 v3, p2, 0x3

    const/4 v4, 0x3

    const/4 v6, 0x0

    move v1, p2

    move v2, p3

    invoke-static/range {v0 .. v6}, Ljava/awt/image/Raster;->createInterleavedRaster(IIIII[ILjava/awt/Point;)Ljava/awt/image/WritableRaster;

    move-result-object p0

    return-object p0

    :cond_4
    invoke-virtual {p0}, Ljava/awt/image/BufferedImage;->getRaster()Ljava/awt/image/WritableRaster;

    move-result-object p1

    invoke-virtual {p1}, Ljava/awt/image/Raster;->getSampleModel()Ljava/awt/image/SampleModel;

    move-result-object p1

    instance-of v0, p1, Ljava/awt/image/ComponentSampleModel;

    if-eqz v0, :cond_5

    move-object p0, p1

    check-cast p0, Ljava/awt/image/ComponentSampleModel;

    invoke-virtual {p0}, Ljava/awt/image/ComponentSampleModel;->getBandOffsets()[I

    move-result-object v5

    invoke-virtual {p1}, Ljava/awt/image/SampleModel;->getDataType()I

    move-result v0

    array-length p0, v5

    mul-int v3, p2, p0

    array-length v4, v5

    const/4 v6, 0x0

    move v1, p2

    move v2, p3

    invoke-static/range {v0 .. v6}, Ljava/awt/image/Raster;->createInterleavedRaster(IIIII[ILjava/awt/Point;)Ljava/awt/image/WritableRaster;

    move-result-object p0

    return-object p0

    :cond_5
    :goto_1
    invoke-virtual {p0}, Ljava/awt/image/BufferedImage;->getColorModel()Ljava/awt/image/ColorModel;

    move-result-object p0

    invoke-virtual {p0, p2, p3}, Ljava/awt/image/ColorModel;->createCompatibleWritableRaster(II)Ljava/awt/image/WritableRaster;

    move-result-object p0

    return-object p0
.end method

.method public static j(IILjava/lang/Object;Ljava/awt/image/ColorModel;)Ljava/awt/image/WritableRaster;
    .locals 10

    instance-of v0, p2, [I

    const/4 v8, 0x0

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, [I

    new-instance v1, Ljava/awt/image/DataBufferInt;

    array-length v2, v0

    invoke-direct {v1, v0, v2}, Ljava/awt/image/DataBufferInt;-><init>([II)V

    invoke-virtual {p3}, Ljava/awt/image/ColorModel;->getNumComponents()I

    move-result v0

    :goto_0
    move v4, v0

    move-object v0, v1

    goto :goto_1

    :cond_0
    instance-of v0, p2, [S

    if-eqz v0, :cond_1

    move-object v0, p2

    check-cast v0, [S

    new-instance v1, Ljava/awt/image/DataBufferUShort;

    array-length v2, v0

    invoke-direct {v1, v0, v2}, Ljava/awt/image/DataBufferUShort;-><init>([SI)V

    array-length v0, v0

    mul-int v2, p0, p1

    div-int/2addr v0, v2

    goto :goto_0

    :cond_1
    instance-of v0, p2, [B

    if-eqz v0, :cond_3

    move-object v0, p2

    check-cast v0, [B

    new-instance v1, Ljava/awt/image/DataBufferByte;

    array-length v2, v0

    invoke-direct {v1, v0, v2}, Ljava/awt/image/DataBufferByte;-><init>([BI)V

    instance-of v2, p3, Ljava/awt/image/IndexColorModel;

    if-eqz v2, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    array-length v0, v0

    mul-int v2, p0, p1

    div-int/2addr v0, v2

    goto :goto_0

    :cond_3
    invoke-virtual {p3, p0, p1}, Ljava/awt/image/ColorModel;->createCompatibleWritableRaster(II)Ljava/awt/image/WritableRaster;

    move-result-object v9

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, v9

    move v3, p0

    move v4, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Ljava/awt/image/WritableRaster;->setDataElements(IIIILjava/lang/Object;)V

    const/4 v0, -0x1

    move v4, v0

    move-object v0, v8

    move-object v8, v9

    :goto_1
    if-nez v8, :cond_7

    instance-of v1, p3, Ljava/awt/image/IndexColorModel;

    if-eqz v1, :cond_4

    move-object v1, p3

    check-cast v1, Ljava/awt/image/IndexColorModel;

    invoke-static {v1}, Lcom/twelvemonkeys/image/ImageUtil;->r(Ljava/awt/image/IndexColorModel;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p3}, Ljava/awt/image/ColorModel;->getPixelSize()I

    move-result v1

    sget-object v2, Lcom/twelvemonkeys/image/ImageUtil;->LOCATION_UPPER_LEFT:Ljava/awt/Point;

    invoke-static {v0, p0, p1, v1, v2}, Ljava/awt/image/Raster;->createPackedRaster(Ljava/awt/image/DataBuffer;IIILjava/awt/Point;)Ljava/awt/image/WritableRaster;

    move-result-object v8

    goto :goto_3

    :cond_4
    instance-of v1, p3, Ljava/awt/image/PackedColorModel;

    if-eqz v1, :cond_5

    move-object v1, p3

    check-cast v1, Ljava/awt/image/PackedColorModel;

    invoke-virtual {v1}, Ljava/awt/image/PackedColorModel;->getMasks()[I

    move-result-object v4

    sget-object v5, Lcom/twelvemonkeys/image/ImageUtil;->LOCATION_UPPER_LEFT:Ljava/awt/Point;

    move v1, p0

    move v2, p1

    move v3, p0

    invoke-static/range {v0 .. v5}, Ljava/awt/image/Raster;->createPackedRaster(Ljava/awt/image/DataBuffer;III[ILjava/awt/Point;)Ljava/awt/image/WritableRaster;

    move-result-object v8

    goto :goto_3

    :cond_5
    new-array v5, v4, [I

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v4, :cond_6

    add-int/lit8 v2, v1, 0x1

    sub-int v3, v4, v2

    aput v3, v5, v1

    move v1, v2

    goto :goto_2

    :cond_6
    mul-int v3, p0, v4

    sget-object v7, Lcom/twelvemonkeys/image/ImageUtil;->LOCATION_UPPER_LEFT:Ljava/awt/Point;

    move v1, p0

    move v2, p1

    move-object v6, v7

    invoke-static/range {v0 .. v6}, Ljava/awt/image/Raster;->createInterleavedRaster(Ljava/awt/image/DataBuffer;IIII[ILjava/awt/Point;)Ljava/awt/image/WritableRaster;

    move-result-object v8

    :cond_7
    :goto_3
    return-object v8
.end method

.method public static k(Ljava/awt/image/BufferedImage;D)Ljava/awt/image/BufferedImage;
    .locals 24

    move-object/from16 v0, p0

    invoke-static/range {p1 .. p2}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    const-wide v3, 0x4076800000000000L    # 360.0

    rem-double/2addr v1, v3

    const-wide/16 v3, 0x0

    cmpl-double v1, v1, v3

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    invoke-static/range {p1 .. p2}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    const-wide v5, 0x4056800000000000L    # 90.0

    rem-double/2addr v1, v5

    cmpl-double v1, v1, v3

    const/4 v2, 0x0

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    invoke-virtual/range {p0 .. p0}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v4

    invoke-static/range {p1 .. p2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v5

    invoke-static/range {p1 .. p2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Math;->abs(D)D

    move-result-wide v7

    int-to-double v9, v3

    mul-double v11, v9, v7

    int-to-double v13, v4

    mul-double v15, v13, v5

    add-double/2addr v11, v15

    invoke-static {v11, v12}, Ljava/lang/Math;->floor(D)D

    move-result-wide v11

    double-to-int v11, v11

    mul-double/2addr v7, v13

    mul-double/2addr v5, v9

    add-double/2addr v7, v5

    invoke-static {v7, v8}, Ljava/lang/Math;->floor(D)D

    move-result-wide v5

    double-to-int v5, v5

    sub-int v3, v11, v3

    int-to-double v6, v3

    const-wide/high16 v15, 0x4000000000000000L    # 2.0

    div-double/2addr v6, v15

    sub-int v3, v5, v4

    int-to-double v3, v3

    div-double/2addr v3, v15

    invoke-static {v6, v7, v3, v4}, Ljava/awt/geom/AffineTransform;->getTranslateInstance(DD)Ljava/awt/geom/AffineTransform;

    move-result-object v3

    div-double v20, v9, v15

    div-double v22, v13, v15

    move-object/from16 v17, v3

    move-wide/from16 v18, p1

    invoke-virtual/range {v17 .. v23}, Ljava/awt/geom/AffineTransform;->rotate(DDD)V

    invoke-static {v11, v5}, Lcom/twelvemonkeys/image/ImageUtil;->createTransparent(II)Ljava/awt/image/BufferedImage;

    move-result-object v4

    invoke-virtual {v4}, Ljava/awt/image/BufferedImage;->createGraphics()Ljava/awt/Graphics2D;

    move-result-object v5

    :try_start_0
    invoke-virtual {v5, v3}, Ljava/awt/Graphics2D;->transform(Ljava/awt/geom/AffineTransform;)V

    if-nez v1, :cond_2

    sget-object v1, Ljava/awt/RenderingHints;->KEY_ALPHA_INTERPOLATION:Ljava/awt/RenderingHints$Key;

    sget-object v3, Ljava/awt/RenderingHints;->VALUE_ALPHA_INTERPOLATION_QUALITY:Ljava/lang/Object;

    invoke-virtual {v5, v1, v3}, Ljava/awt/Graphics2D;->setRenderingHint(Ljava/awt/RenderingHints$Key;Ljava/lang/Object;)V

    sget-object v1, Ljava/awt/RenderingHints;->KEY_INTERPOLATION:Ljava/awt/RenderingHints$Key;

    sget-object v3, Ljava/awt/RenderingHints;->VALUE_INTERPOLATION_BILINEAR:Ljava/lang/Object;

    invoke-virtual {v5, v1, v3}, Ljava/awt/Graphics2D;->setRenderingHint(Ljava/awt/RenderingHints$Key;Ljava/lang/Object;)V

    sget-object v1, Ljava/awt/RenderingHints;->KEY_ANTIALIASING:Ljava/awt/RenderingHints$Key;

    sget-object v3, Ljava/awt/RenderingHints;->VALUE_ANTIALIAS_ON:Ljava/lang/Object;

    invoke-virtual {v5, v1, v3}, Ljava/awt/Graphics2D;->setRenderingHint(Ljava/awt/RenderingHints$Key;Ljava/lang/Object;)V

    new-instance v1, Ljava/awt/TexturePaint;

    new-instance v3, Ljava/awt/geom/Rectangle2D$Float;

    invoke-virtual/range {p0 .. p0}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual/range {p0 .. p0}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v7

    int-to-float v7, v7

    const/4 v8, 0x0

    invoke-direct {v3, v8, v8, v6, v7}, Ljava/awt/geom/Rectangle2D$Float;-><init>(FFFF)V

    invoke-direct {v1, v0, v3}, Ljava/awt/TexturePaint;-><init>(Ljava/awt/image/BufferedImage;Ljava/awt/geom/Rectangle2D;)V

    invoke-virtual {v5, v1}, Ljava/awt/Graphics2D;->setPaint(Ljava/awt/Paint;)V

    invoke-virtual/range {p0 .. p0}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v0

    invoke-virtual {v5, v2, v2, v1, v0}, Ljava/awt/Graphics2D;->fillRect(IIII)V

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    invoke-virtual {v5, v0, v2, v2, v1}, Ljava/awt/Graphics2D;->drawImage(Ljava/awt/Image;IILjava/awt/image/ImageObserver;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    invoke-virtual {v5}, Ljava/awt/Graphics2D;->dispose()V

    return-object v4

    :catchall_0
    move-exception v0

    invoke-virtual {v5}, Ljava/awt/Graphics2D;->dispose()V

    throw v0
.end method

.method public static l(Ljava/awt/image/BufferedImage;Ljava/awt/Image;)V
    .locals 2

    invoke-virtual {p0}, Ljava/awt/image/BufferedImage;->createGraphics()Ljava/awt/Graphics2D;

    move-result-object p0

    :try_start_0
    sget-object v0, Ljava/awt/AlphaComposite;->Src:Ljava/awt/AlphaComposite;

    invoke-virtual {p0, v0}, Ljava/awt/Graphics2D;->setComposite(Ljava/awt/Composite;)V

    sget-object v0, Ljava/awt/RenderingHints;->KEY_DITHERING:Ljava/awt/RenderingHints$Key;

    sget-object v1, Ljava/awt/RenderingHints;->VALUE_DITHER_DISABLE:Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Ljava/awt/Graphics2D;->setRenderingHint(Ljava/awt/RenderingHints$Key;Ljava/lang/Object;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v1, v0}, Ljava/awt/Graphics2D;->drawImage(Ljava/awt/Image;IILjava/awt/image/ImageObserver;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Ljava/awt/Graphics2D;->dispose()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Ljava/awt/Graphics2D;->dispose()V

    throw p1
.end method

.method public static m(Ljava/awt/image/ColorModel;Ljava/awt/image/ColorModel;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0, p1}, Ljava/awt/image/ColorModel;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    instance-of v1, p0, Ljava/awt/image/IndexColorModel;

    if-eqz v1, :cond_4

    check-cast p0, Ljava/awt/image/IndexColorModel;

    check-cast p1, Ljava/awt/image/IndexColorModel;

    invoke-virtual {p0}, Ljava/awt/image/IndexColorModel;->getMapSize()I

    move-result v1

    invoke-virtual {p1}, Ljava/awt/image/IndexColorModel;->getMapSize()I

    move-result v3

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    move v3, v2

    :goto_0
    if-le v3, v1, :cond_4

    invoke-virtual {p0, v3}, Ljava/awt/image/IndexColorModel;->getRGB(I)I

    move-result v4

    invoke-virtual {p1, v3}, Ljava/awt/image/IndexColorModel;->getRGB(I)I

    move-result v5

    if-eq v4, v5, :cond_3

    return v2

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    return v0
.end method

.method public static n(Ljava/awt/GraphicsConfiguration;)Ljava/awt/GraphicsConfiguration;
    .locals 0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/twelvemonkeys/image/ImageUtil;->g:Ljava/awt/GraphicsConfiguration;

    :goto_0
    return-object p0
.end method

.method public static o()Ljava/awt/GraphicsConfiguration;
    .locals 2

    :try_start_0
    invoke-static {}, Ljava/awt/GraphicsEnvironment;->getLocalGraphicsEnvironment()Ljava/awt/GraphicsEnvironment;

    move-result-object v0

    invoke-virtual {v0}, Ljava/awt/GraphicsEnvironment;->isHeadlessInstance()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/awt/GraphicsEnvironment;->getDefaultScreenDevice()Ljava/awt/GraphicsDevice;

    move-result-object v0

    invoke-virtual {v0}, Ljava/awt/GraphicsDevice;->getDefaultConfiguration()Ljava/awt/GraphicsConfiguration;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    sput-boolean v0, Lcom/twelvemonkeys/image/ImageUtil;->b:Z

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static p(II)I
    .locals 2

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    return p0

    :cond_0
    const/4 p0, 0x1

    if-eq p1, p0, :cond_2

    const/4 p0, 0x2

    if-eq p1, p0, :cond_2

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown transparency type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_0
    return p0
.end method

.method public static q(Ljava/awt/Image;)I
    .locals 1

    instance-of v0, p0, Ljava/awt/image/BufferedImage;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/awt/image/BufferedImage;

    invoke-virtual {p0}, Ljava/awt/image/BufferedImage;->getTransparency()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public static r(Ljava/awt/image/IndexColorModel;)Z
    .locals 3

    invoke-virtual {p0}, Ljava/awt/image/ColorModel;->getPixelSize()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Ljava/awt/image/ColorModel;->getPixelSize()I

    move-result v0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    invoke-virtual {p0}, Ljava/awt/image/ColorModel;->getPixelSize()I

    move-result p0

    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public static s(F)Ljava/awt/image/Kernel;
    .locals 13

    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    mul-int/lit8 v1, v0, 0x2

    const/4 v2, 0x1

    add-int/2addr v1, v2

    new-array v3, v1, [F

    const/high16 v4, 0x40400000    # 3.0f

    div-float v4, p0, v4

    const/high16 v5, 0x40000000    # 2.0f

    mul-float/2addr v5, v4

    mul-float/2addr v5, v4

    const-wide v6, 0x401921fb54442d18L    # 6.283185307179586

    float-to-double v8, v4

    mul-double/2addr v8, v6

    double-to-float v4, v8

    float-to-double v6, v4

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    double-to-float v4, v6

    mul-float/2addr p0, p0

    neg-int v6, v0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move v10, v7

    move v9, v8

    :goto_0
    if-gt v6, v0, :cond_1

    mul-int v11, v6, v6

    int-to-float v11, v11

    cmpl-float v12, v11, p0

    if-lez v12, :cond_0

    aput v7, v3, v9

    goto :goto_1

    :cond_0
    neg-float v11, v11

    div-float/2addr v11, v5

    float-to-double v11, v11

    invoke-static {v11, v12}, Ljava/lang/Math;->exp(D)D

    move-result-wide v11

    double-to-float v11, v11

    div-float/2addr v11, v4

    aput v11, v3, v9

    :goto_1
    aget v11, v3, v9

    add-float/2addr v10, v11

    add-int/lit8 v9, v9, 0x1

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    :goto_2
    if-ge v8, v1, :cond_2

    aget p0, v3, v8

    div-float/2addr p0, v10

    aput p0, v3, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_2
    new-instance p0, Ljava/awt/image/Kernel;

    invoke-direct {p0, v1, v2, v3}, Ljava/awt/image/Kernel;-><init>(II[F)V

    return-object p0
.end method

.method public static sharpen(Ljava/awt/image/BufferedImage;)Ljava/awt/image/BufferedImage;
    .locals 2

    .line 1
    sget-object v0, Lcom/twelvemonkeys/image/ImageUtil;->d:Ljava/awt/image/Kernel;

    const/4 v1, 0x2

    invoke-static {p0, v0, v1}, Lcom/twelvemonkeys/image/ImageUtil;->convolve(Ljava/awt/image/BufferedImage;Ljava/awt/image/Kernel;I)Ljava/awt/image/BufferedImage;

    move-result-object p0

    return-object p0
.end method

.method public static sharpen(Ljava/awt/image/BufferedImage;F)Ljava/awt/image/BufferedImage;
    .locals 6

    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    if-nez v1, :cond_0

    return-object p0

    :cond_0
    const/16 v1, 0x9

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput v0, v1, v2

    neg-float v2, p1

    const/4 v3, 0x1

    aput v2, v1, v3

    const/4 v3, 0x2

    aput v0, v1, v3

    const/4 v4, 0x3

    aput v2, v1, v4

    const/high16 v5, 0x40800000    # 4.0f

    mul-float/2addr p1, v5

    const/high16 v5, 0x3f800000    # 1.0f

    add-float/2addr p1, v5

    const/4 v5, 0x4

    aput p1, v1, v5

    const/4 p1, 0x5

    aput v2, v1, p1

    const/4 p1, 0x6

    aput v0, v1, p1

    const/4 p1, 0x7

    aput v2, v1, p1

    const/16 p1, 0x8

    aput v0, v1, p1

    .line 2
    new-instance p1, Ljava/awt/image/Kernel;

    invoke-direct {p1, v4, v4, v1}, Ljava/awt/image/Kernel;-><init>(II[F)V

    invoke-static {p0, p1, v3}, Lcom/twelvemonkeys/image/ImageUtil;->convolve(Ljava/awt/image/BufferedImage;Ljava/awt/image/Kernel;I)Ljava/awt/image/BufferedImage;

    move-result-object p0

    return-object p0
.end method

.method public static t(Ljava/awt/GraphicsEnvironment;)Z
    .locals 0

    :try_start_0
    invoke-virtual {p0}, Ljava/awt/GraphicsEnvironment;->isHeadlessInstance()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_0} :catch_0

    xor-int/lit8 p0, p0, 0x1

    return p0

    :catch_0
    const/4 p0, 0x0

    sput-boolean p0, Lcom/twelvemonkeys/image/ImageUtil;->b:Z

    return p0
.end method

.method public static toBuffered(Ljava/awt/Image;)Ljava/awt/image/BufferedImage;
    .locals 1

    .line 24
    instance-of v0, p0, Ljava/awt/image/BufferedImage;

    if-eqz v0, :cond_0

    .line 25
    check-cast p0, Ljava/awt/image/BufferedImage;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    .line 26
    new-instance v0, Lcom/twelvemonkeys/image/BufferedImageFactory;

    invoke-direct {v0, p0}, Lcom/twelvemonkeys/image/BufferedImageFactory;-><init>(Ljava/awt/Image;)V

    .line 27
    invoke-virtual {v0}, Lcom/twelvemonkeys/image/BufferedImageFactory;->getBufferedImage()Ljava/awt/image/BufferedImage;

    move-result-object p0

    return-object p0

    .line 28
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "original == null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static toBuffered(Ljava/awt/Image;I)Ljava/awt/image/BufferedImage;
    .locals 1

    const/4 v0, 0x0

    .line 29
    invoke-static {p0, p1, v0}, Lcom/twelvemonkeys/image/ImageUtil;->u(Ljava/awt/Image;ILjava/awt/image/IndexColorModel;)Ljava/awt/image/BufferedImage;

    move-result-object p0

    return-object p0
.end method

.method public static toBuffered(Ljava/awt/image/BufferedImage;I)Ljava/awt/image/BufferedImage;
    .locals 0

    .line 23
    invoke-static {p0, p1}, Lcom/twelvemonkeys/image/ImageUtil;->toBuffered(Ljava/awt/image/RenderedImage;I)Ljava/awt/image/BufferedImage;

    move-result-object p0

    return-object p0
.end method

.method public static toBuffered(Ljava/awt/image/RenderedImage;)Ljava/awt/image/BufferedImage;
    .locals 6

    .line 1
    instance-of v0, p0, Ljava/awt/image/BufferedImage;

    if-eqz v0, :cond_0

    .line 2
    check-cast p0, Ljava/awt/image/BufferedImage;

    return-object p0

    :cond_0
    if-eqz p0, :cond_4

    .line 3
    invoke-interface {p0}, Ljava/awt/image/RenderedImage;->getPropertyNames()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    array-length v1, v0

    if-lez v1, :cond_1

    .line 5
    new-instance v1, Ljava/util/Hashtable;

    array-length v2, v0

    invoke-direct {v1, v2}, Ljava/util/Hashtable;-><init>(I)V

    .line 6
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v0, v3

    .line 7
    invoke-interface {p0, v4}, Ljava/awt/image/RenderedImage;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 8
    :cond_2
    invoke-interface {p0}, Ljava/awt/image/RenderedImage;->getData()Ljava/awt/image/Raster;

    move-result-object v0

    .line 9
    instance-of v2, v0, Ljava/awt/image/WritableRaster;

    if-eqz v2, :cond_3

    .line 10
    check-cast v0, Ljava/awt/image/WritableRaster;

    goto :goto_1

    .line 11
    :cond_3
    invoke-virtual {v0}, Ljava/awt/image/Raster;->createCompatibleWritableRaster()Ljava/awt/image/WritableRaster;

    move-result-object v0

    .line 12
    invoke-interface {p0, v0}, Ljava/awt/image/RenderedImage;->copyData(Ljava/awt/image/WritableRaster;)Ljava/awt/image/WritableRaster;

    move-result-object v0

    .line 13
    :goto_1
    invoke-interface {p0}, Ljava/awt/image/RenderedImage;->getColorModel()Ljava/awt/image/ColorModel;

    move-result-object p0

    .line 14
    new-instance v2, Ljava/awt/image/BufferedImage;

    invoke-virtual {p0}, Ljava/awt/image/ColorModel;->isAlphaPremultiplied()Z

    move-result v3

    invoke-direct {v2, p0, v0, v3, v1}, Ljava/awt/image/BufferedImage;-><init>(Ljava/awt/image/ColorModel;Ljava/awt/image/WritableRaster;ZLjava/util/Hashtable;)V

    return-object v2

    .line 15
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "original == null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static toBuffered(Ljava/awt/image/RenderedImage;I)Ljava/awt/image/BufferedImage;
    .locals 3

    .line 16
    instance-of v0, p0, Ljava/awt/image/BufferedImage;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Ljava/awt/image/BufferedImage;

    invoke-virtual {v0}, Ljava/awt/image/BufferedImage;->getType()I

    move-result v1

    if-ne v1, p1, :cond_0

    return-object v0

    :cond_0
    if-eqz p0, :cond_1

    .line 17
    invoke-interface {p0}, Ljava/awt/image/RenderedImage;->getWidth()I

    move-result v0

    invoke-interface {p0}, Ljava/awt/image/RenderedImage;->getHeight()I

    move-result v1

    const/4 v2, 0x3

    invoke-static {v0, v1, p1, v2}, Lcom/twelvemonkeys/image/ImageUtil;->f(IIII)Ljava/awt/image/BufferedImage;

    move-result-object p1

    .line 18
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->createGraphics()Ljava/awt/Graphics2D;

    move-result-object v0

    .line 19
    :try_start_0
    sget-object v1, Ljava/awt/AlphaComposite;->Src:Ljava/awt/AlphaComposite;

    invoke-virtual {v0, v1}, Ljava/awt/Graphics2D;->setComposite(Ljava/awt/Composite;)V

    .line 20
    sget-object v1, Lcom/twelvemonkeys/image/ImageUtil;->IDENTITY_TRANSFORM:Ljava/awt/geom/AffineTransform;

    invoke-virtual {v0, p0, v1}, Ljava/awt/Graphics2D;->drawRenderedImage(Ljava/awt/image/RenderedImage;Ljava/awt/geom/AffineTransform;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    invoke-virtual {v0}, Ljava/awt/Graphics2D;->dispose()V

    return-object p1

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Ljava/awt/Graphics2D;->dispose()V

    throw p0

    .line 22
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "original == null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static u(Ljava/awt/Image;ILjava/awt/image/IndexColorModel;)Ljava/awt/image/BufferedImage;
    .locals 3

    instance-of v0, p0, Ljava/awt/image/BufferedImage;

    if-eqz v0, :cond_1

    move-object v0, p0

    check-cast v0, Ljava/awt/image/BufferedImage;

    invoke-virtual {v0}, Ljava/awt/image/BufferedImage;->getType()I

    move-result v1

    if-ne v1, p1, :cond_1

    if-eqz p2, :cond_0

    invoke-virtual {v0}, Ljava/awt/image/BufferedImage;->getColorModel()Ljava/awt/image/ColorModel;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/twelvemonkeys/image/ImageUtil;->m(Ljava/awt/image/ColorModel;Ljava/awt/image/ColorModel;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    return-object v0

    :cond_1
    if-eqz p0, :cond_3

    if-nez p2, :cond_2

    invoke-static {p0}, Lcom/twelvemonkeys/image/ImageUtil;->getWidth(Ljava/awt/Image;)I

    move-result p2

    invoke-static {p0}, Lcom/twelvemonkeys/image/ImageUtil;->getHeight(Ljava/awt/Image;)I

    move-result v0

    const/4 v1, 0x3

    invoke-static {p2, v0, p1, v1}, Lcom/twelvemonkeys/image/ImageUtil;->f(IIII)Ljava/awt/image/BufferedImage;

    move-result-object p1

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/awt/image/BufferedImage;

    invoke-static {p0}, Lcom/twelvemonkeys/image/ImageUtil;->getWidth(Ljava/awt/Image;)I

    move-result v1

    invoke-static {p0}, Lcom/twelvemonkeys/image/ImageUtil;->getHeight(Ljava/awt/Image;)I

    move-result v2

    invoke-direct {v0, v1, v2, p1, p2}, Ljava/awt/image/BufferedImage;-><init>(IIILjava/awt/image/IndexColorModel;)V

    move-object p1, v0

    :goto_0
    invoke-static {p1, p0}, Lcom/twelvemonkeys/image/ImageUtil;->l(Ljava/awt/image/BufferedImage;Ljava/awt/Image;)V

    return-object p1

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "original == null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static waitForImage(Ljava/awt/Image;)Z
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/awt/Image;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const-wide/16 v1, -0x1

    .line 1
    invoke-static {v0, v1, v2}, Lcom/twelvemonkeys/image/ImageUtil;->waitForImages([Ljava/awt/Image;J)Z

    move-result p0

    return p0
.end method

.method public static waitForImage(Ljava/awt/Image;J)Z
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/awt/Image;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    .line 2
    invoke-static {v0, p1, p2}, Lcom/twelvemonkeys/image/ImageUtil;->waitForImages([Ljava/awt/Image;J)Z

    move-result p0

    return p0
.end method

.method public static waitForImages([Ljava/awt/Image;)Z
    .locals 2

    const-wide/16 v0, -0x1

    .line 1
    invoke-static {p0, v0, v1}, Lcom/twelvemonkeys/image/ImageUtil;->waitForImages([Ljava/awt/Image;J)Z

    move-result p0

    return p0
.end method

.method public static waitForImages([Ljava/awt/Image;J)Z
    .locals 7

    .line 2
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    aget-object v0, p0, v1

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    .line 3
    :goto_0
    array-length v3, p0

    move v4, v1

    :goto_1
    if-ge v4, v3, :cond_2

    aget-object v5, p0, v4

    .line 4
    sget-object v6, Lcom/twelvemonkeys/image/ImageUtil;->f:Ljava/awt/MediaTracker;

    invoke-virtual {v6, v5, v0}, Ljava/awt/MediaTracker;->addImage(Ljava/awt/Image;I)V

    .line 5
    sget-object v6, Lcom/twelvemonkeys/image/ImageUtil;->f:Ljava/awt/MediaTracker;

    invoke-virtual {v6, v0, v1}, Ljava/awt/MediaTracker;->checkID(IZ)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 6
    sget-object v6, Lcom/twelvemonkeys/image/ImageUtil;->f:Ljava/awt/MediaTracker;

    invoke-virtual {v6, v5, v0}, Ljava/awt/MediaTracker;->removeImage(Ljava/awt/Image;I)V

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    const-wide/16 v3, 0x0

    cmp-long v3, p1, v3

    if-gez v3, :cond_3

    .line 7
    :try_start_0
    sget-object p1, Lcom/twelvemonkeys/image/ImageUtil;->f:Ljava/awt/MediaTracker;

    invoke-virtual {p1, v0}, Ljava/awt/MediaTracker;->waitForID(I)V

    move p1, v2

    goto :goto_2

    .line 8
    :cond_3
    sget-object v3, Lcom/twelvemonkeys/image/ImageUtil;->f:Ljava/awt/MediaTracker;

    invoke-virtual {v3, v0, p1, p2}, Ljava/awt/MediaTracker;->waitForID(IJ)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    :goto_2
    array-length p2, p0

    move v3, v1

    :goto_3
    if-ge v3, p2, :cond_6

    aget-object v4, p0, v3

    .line 10
    sget-object v5, Lcom/twelvemonkeys/image/ImageUtil;->f:Ljava/awt/MediaTracker;

    invoke-virtual {v5, v4, v0}, Ljava/awt/MediaTracker;->removeImage(Ljava/awt/Image;I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :catchall_0
    move-exception p1

    .line 11
    array-length p2, p0

    :goto_4
    if-ge v1, p2, :cond_4

    aget-object v2, p0, v1

    .line 12
    sget-object v3, Lcom/twelvemonkeys/image/ImageUtil;->f:Ljava/awt/MediaTracker;

    invoke-virtual {v3, v2, v0}, Ljava/awt/MediaTracker;->removeImage(Ljava/awt/Image;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 13
    :cond_4
    throw p1

    :catch_0
    array-length p1, p0

    move p2, v1

    :goto_5
    if-ge p2, p1, :cond_5

    aget-object v3, p0, p2

    .line 14
    sget-object v4, Lcom/twelvemonkeys/image/ImageUtil;->f:Ljava/awt/MediaTracker;

    invoke-virtual {v4, v3, v0}, Ljava/awt/MediaTracker;->removeImage(Ljava/awt/Image;I)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_5

    :cond_5
    move p1, v1

    :cond_6
    if-eqz p1, :cond_7

    .line 15
    sget-object p0, Lcom/twelvemonkeys/image/ImageUtil;->f:Ljava/awt/MediaTracker;

    invoke-virtual {p0, v0}, Ljava/awt/MediaTracker;->isErrorID(I)Z

    move-result p0

    if-nez p0, :cond_7

    move v1, v2

    :cond_7
    return v1
.end method
