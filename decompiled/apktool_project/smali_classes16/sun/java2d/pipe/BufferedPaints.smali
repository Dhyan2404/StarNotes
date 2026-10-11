.class public Lsun/java2d/pipe/BufferedPaints;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final MULTI_MAX_FRACTIONS:I = 0xc


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static colorToIntArgbPrePixel(Ljava/awt/Color;Z)I
    .locals 3

    invoke-virtual {p0}, Ljava/awt/Color;->getRGB()I

    move-result p0

    if-nez p1, :cond_0

    shr-int/lit8 v0, p0, 0x18

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return p0

    :cond_0
    ushr-int/lit8 v0, p0, 0x18

    shr-int/lit8 v1, p0, 0x10

    and-int/lit16 v1, v1, 0xff

    shr-int/lit8 v2, p0, 0x8

    and-int/lit16 v2, v2, 0xff

    and-int/lit16 p0, p0, 0xff

    if-eqz p1, :cond_1

    invoke-static {v1}, Lsun/java2d/pipe/BufferedPaints;->convertSRGBtoLinearRGB(I)I

    move-result v1

    invoke-static {v2}, Lsun/java2d/pipe/BufferedPaints;->convertSRGBtoLinearRGB(I)I

    move-result v2

    invoke-static {p0}, Lsun/java2d/pipe/BufferedPaints;->convertSRGBtoLinearRGB(I)I

    move-result p0

    :cond_1
    shr-int/lit8 p1, v0, 0x7

    add-int/2addr p1, v0

    mul-int/2addr v1, p1

    shr-int/lit8 v1, v1, 0x8

    mul-int/2addr v2, p1

    shr-int/lit8 v2, v2, 0x8

    mul-int/2addr p0, p1

    shr-int/lit8 p0, p0, 0x8

    shl-int/lit8 p1, v0, 0x18

    shl-int/lit8 v0, v1, 0x10

    or-int/2addr p1, v0

    shl-int/lit8 v0, v2, 0x8

    or-int/2addr p1, v0

    or-int/2addr p0, p1

    return p0
.end method

.method public static convertSRGBtoLinearRGB(I)I
    .locals 5

    int-to-float p0, p0

    const/high16 v0, 0x437f0000    # 255.0f

    div-float/2addr p0, v0

    const v1, 0x3d25aee6    # 0.04045f

    cmpg-float v1, p0, v1

    if-gtz v1, :cond_0

    const v1, 0x414eb852    # 12.92f

    div-float/2addr p0, v1

    goto :goto_0

    :cond_0
    float-to-double v1, p0

    const-wide v3, 0x3fac28f5c28f5c29L    # 0.055

    add-double/2addr v1, v3

    const-wide v3, 0x3ff0e147ae147ae1L    # 1.055

    div-double/2addr v1, v3

    const-wide v3, 0x4003333333333333L    # 2.4

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    double-to-float p0, v1

    :goto_0
    mul-float/2addr p0, v0

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0
.end method

.method private static convertToIntArgbPrePixels([Ljava/awt/Color;Z)[I
    .locals 3

    array-length v0, p0

    new-array v0, v0, [I

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    aget-object v2, p0, v1

    invoke-static {v2, p1}, Lsun/java2d/pipe/BufferedPaints;->colorToIntArgbPrePixel(Ljava/awt/Color;Z)I

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static resetPaint(Lsun/java2d/pipe/RenderQueue;)V
    .locals 1

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lsun/java2d/pipe/RenderQueue;->ensureCapacity(I)V

    invoke-virtual {p0}, Lsun/java2d/pipe/RenderQueue;->getBuffer()Lsun/java2d/pipe/RenderBuffer;

    move-result-object p0

    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lsun/java2d/pipe/RenderBuffer;->putInt(I)Lsun/java2d/pipe/RenderBuffer;

    return-void
.end method

.method private static setColor(Lsun/java2d/pipe/RenderQueue;I)V
    .locals 1

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lsun/java2d/pipe/RenderQueue;->ensureCapacity(I)V

    invoke-virtual {p0}, Lsun/java2d/pipe/RenderQueue;->getBuffer()Lsun/java2d/pipe/RenderBuffer;

    move-result-object p0

    const/16 v0, 0x65

    invoke-virtual {p0, v0}, Lsun/java2d/pipe/RenderBuffer;->putInt(I)Lsun/java2d/pipe/RenderBuffer;

    invoke-virtual {p0, p1}, Lsun/java2d/pipe/RenderBuffer;->putInt(I)Lsun/java2d/pipe/RenderBuffer;

    return-void
.end method

.method private static setGradientPaint(Lsun/java2d/pipe/RenderQueue;Ljava/awt/geom/AffineTransform;Ljava/awt/Color;Ljava/awt/Color;Ljava/awt/geom/Point2D;Ljava/awt/geom/Point2D;ZZ)V
    .locals 8

    .line 1
    sget-object v0, Lsun/awt/image/PixelConverter$ArgbPre;->instance:Lsun/awt/image/PixelConverter;

    .line 2
    invoke-virtual {p2}, Ljava/awt/Color;->getRGB()I

    move-result p2

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Lsun/awt/image/PixelConverter;->rgbToPixel(ILjava/awt/image/ColorModel;)I

    move-result p2

    .line 3
    invoke-virtual {p3}, Ljava/awt/Color;->getRGB()I

    move-result p3

    invoke-virtual {v0, p3, v1}, Lsun/awt/image/PixelConverter;->rgbToPixel(ILjava/awt/image/ColorModel;)I

    move-result p3

    .line 4
    invoke-virtual {p4}, Ljava/awt/geom/Point2D;->getX()D

    move-result-wide v0

    .line 5
    invoke-virtual {p4}, Ljava/awt/geom/Point2D;->getY()D

    move-result-wide v2

    .line 6
    invoke-virtual {p1, v0, v1, v2, v3}, Ljava/awt/geom/AffineTransform;->translate(DD)V

    .line 7
    invoke-virtual {p5}, Ljava/awt/geom/Point2D;->getX()D

    move-result-wide v4

    sub-double/2addr v4, v0

    .line 8
    invoke-virtual {p5}, Ljava/awt/geom/Point2D;->getY()D

    move-result-wide p4

    sub-double/2addr p4, v2

    mul-double v0, v4, v4

    mul-double v2, p4, p4

    add-double/2addr v0, v2

    .line 9
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    .line 10
    invoke-virtual {p1, v4, v5, p4, p5}, Ljava/awt/geom/AffineTransform;->rotate(DD)V

    const-wide/high16 p4, 0x4000000000000000L    # 2.0

    mul-double/2addr v0, p4

    const-wide/high16 p4, 0x3ff0000000000000L    # 1.0

    .line 11
    invoke-virtual {p1, v0, v1, p4, p5}, Ljava/awt/geom/AffineTransform;->scale(DD)V

    const-wide/high16 p4, -0x4030000000000000L    # -0.25

    const-wide/16 v0, 0x0

    .line 12
    invoke-virtual {p1, p4, p5, v0, v1}, Ljava/awt/geom/AffineTransform;->translate(DD)V

    .line 13
    :try_start_0
    invoke-virtual {p1}, Ljava/awt/geom/AffineTransform;->invert()V

    .line 14
    invoke-virtual {p1}, Ljava/awt/geom/AffineTransform;->getScaleX()D

    move-result-wide p4

    .line 15
    invoke-virtual {p1}, Ljava/awt/geom/AffineTransform;->getShearX()D

    move-result-wide v2

    .line 16
    invoke-virtual {p1}, Ljava/awt/geom/AffineTransform;->getTranslateX()D

    move-result-wide v0
    :try_end_0
    .catch Ljava/awt/geom/NoninvertibleTransformException; {:try_start_0 .. :try_end_0} :catch_0

    move-wide v6, p4

    move-wide p4, v0

    move-wide v0, v6

    goto :goto_0

    :catch_0
    move-wide p4, v0

    move-wide v2, p4

    :goto_0
    const/16 p1, 0x2c

    const/16 v4, 0xc

    .line 17
    invoke-virtual {p0, p1, v4}, Lsun/java2d/pipe/RenderQueue;->ensureCapacityAndAlignment(II)V

    .line 18
    invoke-virtual {p0}, Lsun/java2d/pipe/RenderQueue;->getBuffer()Lsun/java2d/pipe/RenderBuffer;

    move-result-object p0

    const/16 p1, 0x66

    .line 19
    invoke-virtual {p0, p1}, Lsun/java2d/pipe/RenderBuffer;->putInt(I)Lsun/java2d/pipe/RenderBuffer;

    .line 20
    invoke-virtual {p0, p7}, Lsun/java2d/pipe/RenderBuffer;->putInt(I)Lsun/java2d/pipe/RenderBuffer;

    .line 21
    invoke-virtual {p0, p6}, Lsun/java2d/pipe/RenderBuffer;->putInt(I)Lsun/java2d/pipe/RenderBuffer;

    .line 22
    invoke-virtual {p0, v0, v1}, Lsun/java2d/pipe/RenderBuffer;->putDouble(D)Lsun/java2d/pipe/RenderBuffer;

    move-result-object p1

    invoke-virtual {p1, v2, v3}, Lsun/java2d/pipe/RenderBuffer;->putDouble(D)Lsun/java2d/pipe/RenderBuffer;

    move-result-object p1

    invoke-virtual {p1, p4, p5}, Lsun/java2d/pipe/RenderBuffer;->putDouble(D)Lsun/java2d/pipe/RenderBuffer;

    .line 23
    invoke-virtual {p0, p2}, Lsun/java2d/pipe/RenderBuffer;->putInt(I)Lsun/java2d/pipe/RenderBuffer;

    move-result-object p0

    invoke-virtual {p0, p3}, Lsun/java2d/pipe/RenderBuffer;->putInt(I)Lsun/java2d/pipe/RenderBuffer;

    return-void
.end method

.method private static setGradientPaint(Lsun/java2d/pipe/RenderQueue;Lsun/java2d/SunGraphics2D;Ljava/awt/GradientPaint;Z)V
    .locals 8

    .line 24
    iget-object p1, p1, Lsun/java2d/SunGraphics2D;->transform:Ljava/awt/geom/AffineTransform;

    invoke-virtual {p1}, Ljava/awt/geom/AffineTransform;->clone()Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Ljava/awt/geom/AffineTransform;

    .line 25
    invoke-virtual {p2}, Ljava/awt/GradientPaint;->getColor1()Ljava/awt/Color;

    move-result-object v2

    invoke-virtual {p2}, Ljava/awt/GradientPaint;->getColor2()Ljava/awt/Color;

    move-result-object v3

    .line 26
    invoke-virtual {p2}, Ljava/awt/GradientPaint;->getPoint1()Ljava/awt/geom/Point2D;

    move-result-object v4

    invoke-virtual {p2}, Ljava/awt/GradientPaint;->getPoint2()Ljava/awt/geom/Point2D;

    move-result-object v5

    .line 27
    invoke-virtual {p2}, Ljava/awt/GradientPaint;->isCyclic()Z

    move-result v6

    move-object v0, p0

    move v7, p3

    .line 28
    invoke-static/range {v0 .. v7}, Lsun/java2d/pipe/BufferedPaints;->setGradientPaint(Lsun/java2d/pipe/RenderQueue;Ljava/awt/geom/AffineTransform;Ljava/awt/Color;Ljava/awt/Color;Ljava/awt/geom/Point2D;Ljava/awt/geom/Point2D;ZZ)V

    return-void
.end method

.method private static setLinearGradientPaint(Lsun/java2d/pipe/RenderQueue;Lsun/java2d/SunGraphics2D;Ljava/awt/LinearGradientPaint;Z)V
    .locals 15

    invoke-virtual/range {p2 .. p2}, Ljava/awt/MultipleGradientPaint;->getColorSpace()Ljava/awt/MultipleGradientPaint$ColorSpaceType;

    move-result-object v0

    sget-object v1, Ljava/awt/MultipleGradientPaint$ColorSpaceType;->LINEAR_RGB:Ljava/awt/MultipleGradientPaint$ColorSpaceType;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    invoke-virtual/range {p2 .. p2}, Ljava/awt/MultipleGradientPaint;->getColors()[Ljava/awt/Color;

    move-result-object v1

    array-length v4, v1

    invoke-virtual/range {p2 .. p2}, Ljava/awt/LinearGradientPaint;->getStartPoint()Ljava/awt/geom/Point2D;

    move-result-object v9

    invoke-virtual/range {p2 .. p2}, Ljava/awt/LinearGradientPaint;->getEndPoint()Ljava/awt/geom/Point2D;

    move-result-object v10

    invoke-virtual/range {p2 .. p2}, Ljava/awt/MultipleGradientPaint;->getTransform()Ljava/awt/geom/AffineTransform;

    move-result-object v6

    move-object/from16 v5, p1

    iget-object v5, v5, Lsun/java2d/SunGraphics2D;->transform:Ljava/awt/geom/AffineTransform;

    invoke-virtual {v6, v5}, Ljava/awt/geom/AffineTransform;->preConcatenate(Ljava/awt/geom/AffineTransform;)V

    const/4 v5, 0x2

    if-nez v0, :cond_2

    if-ne v4, v5, :cond_2

    invoke-virtual/range {p2 .. p2}, Ljava/awt/MultipleGradientPaint;->getCycleMethod()Ljava/awt/MultipleGradientPaint$CycleMethod;

    move-result-object v7

    sget-object v8, Ljava/awt/MultipleGradientPaint$CycleMethod;->REPEAT:Ljava/awt/MultipleGradientPaint$CycleMethod;

    if-eq v7, v8, :cond_2

    invoke-virtual/range {p2 .. p2}, Ljava/awt/MultipleGradientPaint;->getCycleMethod()Ljava/awt/MultipleGradientPaint$CycleMethod;

    move-result-object v0

    sget-object v4, Ljava/awt/MultipleGradientPaint$CycleMethod;->NO_CYCLE:Ljava/awt/MultipleGradientPaint$CycleMethod;

    if-eq v0, v4, :cond_1

    move v11, v2

    goto :goto_1

    :cond_1
    move v11, v3

    :goto_1
    aget-object v7, v1, v3

    aget-object v8, v1, v2

    move-object v5, p0

    move/from16 v12, p3

    invoke-static/range {v5 .. v12}, Lsun/java2d/pipe/BufferedPaints;->setGradientPaint(Lsun/java2d/pipe/RenderQueue;Ljava/awt/geom/AffineTransform;Ljava/awt/Color;Ljava/awt/Color;Ljava/awt/geom/Point2D;Ljava/awt/geom/Point2D;ZZ)V

    return-void

    :cond_2
    invoke-virtual/range {p2 .. p2}, Ljava/awt/MultipleGradientPaint;->getCycleMethod()Ljava/awt/MultipleGradientPaint$CycleMethod;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Ljava/awt/MultipleGradientPaint;->getFractions()[F

    move-result-object v3

    invoke-static {v1, v0}, Lsun/java2d/pipe/BufferedPaints;->convertToIntArgbPrePixels([Ljava/awt/Color;Z)[I

    move-result-object v1

    invoke-virtual {v9}, Ljava/awt/geom/Point2D;->getX()D

    move-result-wide v7

    invoke-virtual {v9}, Ljava/awt/geom/Point2D;->getY()D

    move-result-wide v11

    invoke-virtual {v6, v7, v8, v11, v12}, Ljava/awt/geom/AffineTransform;->translate(DD)V

    invoke-virtual {v10}, Ljava/awt/geom/Point2D;->getX()D

    move-result-wide v13

    sub-double/2addr v13, v7

    invoke-virtual {v10}, Ljava/awt/geom/Point2D;->getY()D

    move-result-wide v7

    sub-double/2addr v7, v11

    mul-double v9, v13, v13

    mul-double v11, v7, v7

    add-double/2addr v9, v11

    invoke-static {v9, v10}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v9

    invoke-virtual {v6, v13, v14, v7, v8}, Ljava/awt/geom/AffineTransform;->rotate(DD)V

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v6, v9, v10, v7, v8}, Ljava/awt/geom/AffineTransform;->scale(DD)V

    :try_start_0
    invoke-virtual {v6}, Ljava/awt/geom/AffineTransform;->invert()V

    invoke-virtual {v6}, Ljava/awt/geom/AffineTransform;->getScaleX()D

    move-result-wide v7

    double-to-float v7, v7

    invoke-virtual {v6}, Ljava/awt/geom/AffineTransform;->getShearX()D

    move-result-wide v8

    double-to-float v8, v8

    invoke-virtual {v6}, Ljava/awt/geom/AffineTransform;->getTranslateX()D

    move-result-wide v9
    :try_end_0
    .catch Ljava/awt/geom/NoninvertibleTransformException; {:try_start_0 .. :try_end_0} :catch_0

    double-to-float v6, v9

    goto :goto_2

    :catch_0
    const/4 v7, 0x0

    move v6, v7

    move v8, v6

    :goto_2
    mul-int/lit8 v9, v4, 0x4

    mul-int/2addr v9, v5

    add-int/lit8 v9, v9, 0x20

    move-object v5, p0

    invoke-virtual {p0, v9}, Lsun/java2d/pipe/RenderQueue;->ensureCapacity(I)V

    invoke-virtual {p0}, Lsun/java2d/pipe/RenderQueue;->getBuffer()Lsun/java2d/pipe/RenderBuffer;

    move-result-object v5

    const/16 v9, 0x67

    invoke-virtual {v5, v9}, Lsun/java2d/pipe/RenderBuffer;->putInt(I)Lsun/java2d/pipe/RenderBuffer;

    move/from16 v9, p3

    invoke-virtual {v5, v9}, Lsun/java2d/pipe/RenderBuffer;->putInt(I)Lsun/java2d/pipe/RenderBuffer;

    invoke-virtual {v5, v0}, Lsun/java2d/pipe/RenderBuffer;->putInt(I)Lsun/java2d/pipe/RenderBuffer;

    invoke-virtual {v5, v2}, Lsun/java2d/pipe/RenderBuffer;->putInt(I)Lsun/java2d/pipe/RenderBuffer;

    invoke-virtual {v5, v4}, Lsun/java2d/pipe/RenderBuffer;->putInt(I)Lsun/java2d/pipe/RenderBuffer;

    invoke-virtual {v5, v7}, Lsun/java2d/pipe/RenderBuffer;->putFloat(F)Lsun/java2d/pipe/RenderBuffer;

    invoke-virtual {v5, v8}, Lsun/java2d/pipe/RenderBuffer;->putFloat(F)Lsun/java2d/pipe/RenderBuffer;

    invoke-virtual {v5, v6}, Lsun/java2d/pipe/RenderBuffer;->putFloat(F)Lsun/java2d/pipe/RenderBuffer;

    invoke-virtual {v5, v3}, Lsun/java2d/pipe/RenderBuffer;->put([F)Lsun/java2d/pipe/RenderBuffer;

    invoke-virtual {v5, v1}, Lsun/java2d/pipe/RenderBuffer;->put([I)Lsun/java2d/pipe/RenderBuffer;

    return-void
.end method

.method public static setPaint(Lsun/java2d/pipe/RenderQueue;Lsun/java2d/SunGraphics2D;Ljava/awt/Paint;I)V
    .locals 3

    iget v0, p1, Lsun/java2d/SunGraphics2D;->paintState:I

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    iget p1, p1, Lsun/java2d/SunGraphics2D;->pixel:I

    invoke-static {p0, p1}, Lsun/java2d/pipe/BufferedPaints;->setColor(Lsun/java2d/pipe/RenderQueue;I)V

    goto :goto_1

    :cond_0
    const/4 v2, 0x2

    and-int/2addr p3, v2

    if-eqz p3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eq v0, v2, :cond_5

    const/4 p3, 0x3

    if-eq v0, p3, :cond_4

    const/4 p3, 0x4

    if-eq v0, p3, :cond_3

    const/4 p3, 0x5

    if-eq v0, p3, :cond_2

    goto :goto_1

    :cond_2
    check-cast p2, Ljava/awt/TexturePaint;

    invoke-static {p0, p1, p2, v1}, Lsun/java2d/pipe/BufferedPaints;->setTexturePaint(Lsun/java2d/pipe/RenderQueue;Lsun/java2d/SunGraphics2D;Ljava/awt/TexturePaint;Z)V

    goto :goto_1

    :cond_3
    check-cast p2, Ljava/awt/RadialGradientPaint;

    invoke-static {p0, p1, p2, v1}, Lsun/java2d/pipe/BufferedPaints;->setRadialGradientPaint(Lsun/java2d/pipe/RenderQueue;Lsun/java2d/SunGraphics2D;Ljava/awt/RadialGradientPaint;Z)V

    goto :goto_1

    :cond_4
    check-cast p2, Ljava/awt/LinearGradientPaint;

    invoke-static {p0, p1, p2, v1}, Lsun/java2d/pipe/BufferedPaints;->setLinearGradientPaint(Lsun/java2d/pipe/RenderQueue;Lsun/java2d/SunGraphics2D;Ljava/awt/LinearGradientPaint;Z)V

    goto :goto_1

    :cond_5
    check-cast p2, Ljava/awt/GradientPaint;

    invoke-static {p0, p1, p2, v1}, Lsun/java2d/pipe/BufferedPaints;->setGradientPaint(Lsun/java2d/pipe/RenderQueue;Lsun/java2d/SunGraphics2D;Ljava/awt/GradientPaint;Z)V

    :goto_1
    return-void
.end method

.method private static setRadialGradientPaint(Lsun/java2d/pipe/RenderQueue;Lsun/java2d/SunGraphics2D;Ljava/awt/RadialGradientPaint;Z)V
    .locals 17

    invoke-virtual/range {p2 .. p2}, Ljava/awt/MultipleGradientPaint;->getColorSpace()Ljava/awt/MultipleGradientPaint$ColorSpaceType;

    move-result-object v0

    sget-object v1, Ljava/awt/MultipleGradientPaint$ColorSpaceType;->LINEAR_RGB:Ljava/awt/MultipleGradientPaint$ColorSpaceType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual/range {p2 .. p2}, Ljava/awt/MultipleGradientPaint;->getCycleMethod()Ljava/awt/MultipleGradientPaint$CycleMethod;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Ljava/awt/MultipleGradientPaint;->getFractions()[F

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Ljava/awt/MultipleGradientPaint;->getColors()[Ljava/awt/Color;

    move-result-object v3

    array-length v4, v3

    invoke-static {v3, v0}, Lsun/java2d/pipe/BufferedPaints;->convertToIntArgbPrePixels([Ljava/awt/Color;Z)[I

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Ljava/awt/RadialGradientPaint;->getCenterPoint()Ljava/awt/geom/Point2D;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Ljava/awt/RadialGradientPaint;->getFocusPoint()Ljava/awt/geom/Point2D;

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Ljava/awt/RadialGradientPaint;->getRadius()F

    move-result v7

    invoke-virtual {v5}, Ljava/awt/geom/Point2D;->getX()D

    move-result-wide v8

    invoke-virtual {v5}, Ljava/awt/geom/Point2D;->getY()D

    move-result-wide v10

    invoke-virtual {v6}, Ljava/awt/geom/Point2D;->getX()D

    move-result-wide v12

    invoke-virtual {v6}, Ljava/awt/geom/Point2D;->getY()D

    move-result-wide v14

    invoke-virtual/range {p2 .. p2}, Ljava/awt/MultipleGradientPaint;->getTransform()Ljava/awt/geom/AffineTransform;

    move-result-object v5

    move-object/from16 v16, v3

    move-object/from16 v3, p1

    iget-object v3, v3, Lsun/java2d/SunGraphics2D;->transform:Ljava/awt/geom/AffineTransform;

    invoke-virtual {v5, v3}, Ljava/awt/geom/AffineTransform;->preConcatenate(Ljava/awt/geom/AffineTransform;)V

    invoke-virtual {v5, v6, v6}, Ljava/awt/geom/AffineTransform;->transform(Ljava/awt/geom/Point2D;Ljava/awt/geom/Point2D;)Ljava/awt/geom/Point2D;

    move-result-object v3

    invoke-virtual {v5, v8, v9, v10, v11}, Ljava/awt/geom/AffineTransform;->translate(DD)V

    sub-double/2addr v12, v8

    sub-double/2addr v14, v10

    invoke-virtual {v5, v12, v13, v14, v15}, Ljava/awt/geom/AffineTransform;->rotate(DD)V

    float-to-double v6, v7

    invoke-virtual {v5, v6, v7, v6, v7}, Ljava/awt/geom/AffineTransform;->scale(DD)V

    :try_start_0
    invoke-virtual {v5}, Ljava/awt/geom/AffineTransform;->invert()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-wide/16 v6, 0x0

    invoke-virtual {v5, v6, v7, v6, v7}, Ljava/awt/geom/AffineTransform;->setToScale(DD)V

    :goto_1
    invoke-virtual {v5, v3, v3}, Ljava/awt/geom/AffineTransform;->transform(Ljava/awt/geom/Point2D;Ljava/awt/geom/Point2D;)Ljava/awt/geom/Point2D;

    move-result-object v3

    invoke-virtual {v3}, Ljava/awt/geom/Point2D;->getX()D

    move-result-wide v6

    const-wide v8, 0x3fefae147ae147aeL    # 0.99

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->min(DD)D

    move-result-wide v6

    mul-int/lit8 v3, v4, 0x4

    mul-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, 0x30

    move-object/from16 v8, p0

    invoke-virtual {v8, v3}, Lsun/java2d/pipe/RenderQueue;->ensureCapacity(I)V

    invoke-virtual/range {p0 .. p0}, Lsun/java2d/pipe/RenderQueue;->getBuffer()Lsun/java2d/pipe/RenderBuffer;

    move-result-object v3

    const/16 v8, 0x68

    invoke-virtual {v3, v8}, Lsun/java2d/pipe/RenderBuffer;->putInt(I)Lsun/java2d/pipe/RenderBuffer;

    move/from16 v8, p3

    invoke-virtual {v3, v8}, Lsun/java2d/pipe/RenderBuffer;->putInt(I)Lsun/java2d/pipe/RenderBuffer;

    invoke-virtual {v3, v0}, Lsun/java2d/pipe/RenderBuffer;->putInt(I)Lsun/java2d/pipe/RenderBuffer;

    invoke-virtual {v3, v4}, Lsun/java2d/pipe/RenderBuffer;->putInt(I)Lsun/java2d/pipe/RenderBuffer;

    invoke-virtual {v3, v1}, Lsun/java2d/pipe/RenderBuffer;->putInt(I)Lsun/java2d/pipe/RenderBuffer;

    invoke-virtual {v5}, Ljava/awt/geom/AffineTransform;->getScaleX()D

    move-result-wide v0

    double-to-float v0, v0

    invoke-virtual {v3, v0}, Lsun/java2d/pipe/RenderBuffer;->putFloat(F)Lsun/java2d/pipe/RenderBuffer;

    invoke-virtual {v5}, Ljava/awt/geom/AffineTransform;->getShearX()D

    move-result-wide v0

    double-to-float v0, v0

    invoke-virtual {v3, v0}, Lsun/java2d/pipe/RenderBuffer;->putFloat(F)Lsun/java2d/pipe/RenderBuffer;

    invoke-virtual {v5}, Ljava/awt/geom/AffineTransform;->getTranslateX()D

    move-result-wide v0

    double-to-float v0, v0

    invoke-virtual {v3, v0}, Lsun/java2d/pipe/RenderBuffer;->putFloat(F)Lsun/java2d/pipe/RenderBuffer;

    invoke-virtual {v5}, Ljava/awt/geom/AffineTransform;->getShearY()D

    move-result-wide v0

    double-to-float v0, v0

    invoke-virtual {v3, v0}, Lsun/java2d/pipe/RenderBuffer;->putFloat(F)Lsun/java2d/pipe/RenderBuffer;

    invoke-virtual {v5}, Ljava/awt/geom/AffineTransform;->getScaleY()D

    move-result-wide v0

    double-to-float v0, v0

    invoke-virtual {v3, v0}, Lsun/java2d/pipe/RenderBuffer;->putFloat(F)Lsun/java2d/pipe/RenderBuffer;

    invoke-virtual {v5}, Ljava/awt/geom/AffineTransform;->getTranslateY()D

    move-result-wide v0

    double-to-float v0, v0

    invoke-virtual {v3, v0}, Lsun/java2d/pipe/RenderBuffer;->putFloat(F)Lsun/java2d/pipe/RenderBuffer;

    double-to-float v0, v6

    invoke-virtual {v3, v0}, Lsun/java2d/pipe/RenderBuffer;->putFloat(F)Lsun/java2d/pipe/RenderBuffer;

    invoke-virtual {v3, v2}, Lsun/java2d/pipe/RenderBuffer;->put([F)Lsun/java2d/pipe/RenderBuffer;

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Lsun/java2d/pipe/RenderBuffer;->put([I)Lsun/java2d/pipe/RenderBuffer;

    return-void
.end method

.method private static setTexturePaint(Lsun/java2d/pipe/RenderQueue;Lsun/java2d/SunGraphics2D;Ljava/awt/TexturePaint;Z)V
    .locals 0

    return-void
.end method
