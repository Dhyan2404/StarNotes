.class public final Ljava/awt/RadialGradientPaint;
.super Ljava/awt/MultipleGradientPaint;
.source "SourceFile"


# instance fields
.field private final center:Ljava/awt/geom/Point2D;

.field private final focus:Ljava/awt/geom/Point2D;

.field private final radius:F


# direct methods
.method public constructor <init>(FFFFF[F[Ljava/awt/Color;Ljava/awt/MultipleGradientPaint$CycleMethod;)V
    .locals 7

    .line 5
    new-instance v1, Ljava/awt/geom/Point2D$Float;

    invoke-direct {v1, p1, p2}, Ljava/awt/geom/Point2D$Float;-><init>(FF)V

    new-instance v3, Ljava/awt/geom/Point2D$Float;

    invoke-direct {v3, p4, p5}, Ljava/awt/geom/Point2D$Float;-><init>(FF)V

    move-object v0, p0

    move v2, p3

    move-object v4, p6

    move-object v5, p7

    move-object v6, p8

    invoke-direct/range {v0 .. v6}, Ljava/awt/RadialGradientPaint;-><init>(Ljava/awt/geom/Point2D;FLjava/awt/geom/Point2D;[F[Ljava/awt/Color;Ljava/awt/MultipleGradientPaint$CycleMethod;)V

    return-void
.end method

.method public constructor <init>(FFF[F[Ljava/awt/Color;)V
    .locals 9

    .line 1
    sget-object v8, Ljava/awt/MultipleGradientPaint$CycleMethod;->NO_CYCLE:Ljava/awt/MultipleGradientPaint$CycleMethod;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p1

    move v5, p2

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v8}, Ljava/awt/RadialGradientPaint;-><init>(FFFFF[F[Ljava/awt/Color;Ljava/awt/MultipleGradientPaint$CycleMethod;)V

    return-void
.end method

.method public constructor <init>(FFF[F[Ljava/awt/Color;Ljava/awt/MultipleGradientPaint$CycleMethod;)V
    .locals 9

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p1

    move v5, p2

    move-object v6, p4

    move-object v7, p5

    move-object v8, p6

    .line 3
    invoke-direct/range {v0 .. v8}, Ljava/awt/RadialGradientPaint;-><init>(FFFFF[F[Ljava/awt/Color;Ljava/awt/MultipleGradientPaint$CycleMethod;)V

    return-void
.end method

.method public constructor <init>(Ljava/awt/geom/Point2D;FLjava/awt/geom/Point2D;[F[Ljava/awt/Color;Ljava/awt/MultipleGradientPaint$CycleMethod;)V
    .locals 9

    .line 6
    sget-object v7, Ljava/awt/MultipleGradientPaint$ColorSpaceType;->SRGB:Ljava/awt/MultipleGradientPaint$ColorSpaceType;

    new-instance v8, Ljava/awt/geom/AffineTransform;

    invoke-direct {v8}, Ljava/awt/geom/AffineTransform;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v8}, Ljava/awt/RadialGradientPaint;-><init>(Ljava/awt/geom/Point2D;FLjava/awt/geom/Point2D;[F[Ljava/awt/Color;Ljava/awt/MultipleGradientPaint$CycleMethod;Ljava/awt/MultipleGradientPaint$ColorSpaceType;Ljava/awt/geom/AffineTransform;)V

    return-void
.end method

.method public constructor <init>(Ljava/awt/geom/Point2D;FLjava/awt/geom/Point2D;[F[Ljava/awt/Color;Ljava/awt/MultipleGradientPaint$CycleMethod;Ljava/awt/MultipleGradientPaint$ColorSpaceType;Ljava/awt/geom/AffineTransform;)V
    .locals 6

    move-object v0, p0

    move-object v1, p4

    move-object v2, p5

    move-object v3, p6

    move-object v4, p7

    move-object v5, p8

    .line 7
    invoke-direct/range {v0 .. v5}, Ljava/awt/MultipleGradientPaint;-><init>([F[Ljava/awt/Color;Ljava/awt/MultipleGradientPaint$CycleMethod;Ljava/awt/MultipleGradientPaint$ColorSpaceType;Ljava/awt/geom/AffineTransform;)V

    if-eqz p1, :cond_2

    if-eqz p3, :cond_1

    const/4 p4, 0x0

    cmpg-float p4, p2, p4

    if-lez p4, :cond_0

    .line 8
    new-instance p4, Ljava/awt/geom/Point2D$Double;

    invoke-virtual {p1}, Ljava/awt/geom/Point2D;->getX()D

    move-result-wide p5

    invoke-virtual {p1}, Ljava/awt/geom/Point2D;->getY()D

    move-result-wide p7

    invoke-direct {p4, p5, p6, p7, p8}, Ljava/awt/geom/Point2D$Double;-><init>(DD)V

    iput-object p4, p0, Ljava/awt/RadialGradientPaint;->center:Ljava/awt/geom/Point2D;

    .line 9
    new-instance p1, Ljava/awt/geom/Point2D$Double;

    invoke-virtual {p3}, Ljava/awt/geom/Point2D;->getX()D

    move-result-wide p4

    invoke-virtual {p3}, Ljava/awt/geom/Point2D;->getY()D

    move-result-wide p6

    invoke-direct {p1, p4, p5, p6, p7}, Ljava/awt/geom/Point2D$Double;-><init>(DD)V

    iput-object p1, p0, Ljava/awt/RadialGradientPaint;->focus:Ljava/awt/geom/Point2D;

    .line 10
    iput p2, p0, Ljava/awt/RadialGradientPaint;->radius:F

    return-void

    .line 11
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Radius must be greater than zero"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 12
    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Focus point must be non-null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 13
    :cond_2
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Center point must be non-null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>(Ljava/awt/geom/Point2D;F[F[Ljava/awt/Color;)V
    .locals 7

    .line 2
    sget-object v6, Ljava/awt/MultipleGradientPaint$CycleMethod;->NO_CYCLE:Ljava/awt/MultipleGradientPaint$CycleMethod;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p1

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Ljava/awt/RadialGradientPaint;-><init>(Ljava/awt/geom/Point2D;FLjava/awt/geom/Point2D;[F[Ljava/awt/Color;Ljava/awt/MultipleGradientPaint$CycleMethod;)V

    return-void
.end method

.method public constructor <init>(Ljava/awt/geom/Point2D;F[F[Ljava/awt/Color;Ljava/awt/MultipleGradientPaint$CycleMethod;)V
    .locals 7

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p1

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    .line 4
    invoke-direct/range {v0 .. v6}, Ljava/awt/RadialGradientPaint;-><init>(Ljava/awt/geom/Point2D;FLjava/awt/geom/Point2D;[F[Ljava/awt/Color;Ljava/awt/MultipleGradientPaint$CycleMethod;)V

    return-void
.end method

.method public constructor <init>(Ljava/awt/geom/Rectangle2D;[F[Ljava/awt/Color;Ljava/awt/MultipleGradientPaint$CycleMethod;)V
    .locals 9

    .line 14
    new-instance v1, Ljava/awt/geom/Point2D$Double;

    invoke-virtual {p1}, Ljava/awt/geom/RectangularShape;->getCenterX()D

    move-result-wide v2

    .line 15
    invoke-virtual {p1}, Ljava/awt/geom/RectangularShape;->getCenterY()D

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Ljava/awt/geom/Point2D$Double;-><init>(DD)V

    const/high16 v2, 0x3f800000    # 1.0f

    new-instance v3, Ljava/awt/geom/Point2D$Double;

    .line 16
    invoke-virtual {p1}, Ljava/awt/geom/RectangularShape;->getCenterX()D

    move-result-wide v4

    .line 17
    invoke-virtual {p1}, Ljava/awt/geom/RectangularShape;->getCenterY()D

    move-result-wide v6

    invoke-direct {v3, v4, v5, v6, v7}, Ljava/awt/geom/Point2D$Double;-><init>(DD)V

    sget-object v7, Ljava/awt/MultipleGradientPaint$ColorSpaceType;->SRGB:Ljava/awt/MultipleGradientPaint$ColorSpaceType;

    .line 18
    invoke-static {p1}, Ljava/awt/RadialGradientPaint;->createGradientTransform(Ljava/awt/geom/Rectangle2D;)Ljava/awt/geom/AffineTransform;

    move-result-object v8

    move-object v0, p0

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    .line 19
    invoke-direct/range {v0 .. v8}, Ljava/awt/RadialGradientPaint;-><init>(Ljava/awt/geom/Point2D;FLjava/awt/geom/Point2D;[F[Ljava/awt/Color;Ljava/awt/MultipleGradientPaint$CycleMethod;Ljava/awt/MultipleGradientPaint$ColorSpaceType;Ljava/awt/geom/AffineTransform;)V

    .line 20
    invoke-virtual {p1}, Ljava/awt/geom/RectangularShape;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    .line 21
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Gradient bounds must be non-empty"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static createGradientTransform(Ljava/awt/geom/Rectangle2D;)Ljava/awt/geom/AffineTransform;
    .locals 11

    invoke-virtual {p0}, Ljava/awt/geom/RectangularShape;->getCenterX()D

    move-result-wide v0

    invoke-virtual {p0}, Ljava/awt/geom/RectangularShape;->getCenterY()D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/awt/geom/AffineTransform;->getTranslateInstance(DD)Ljava/awt/geom/AffineTransform;

    move-result-object v4

    invoke-virtual {p0}, Ljava/awt/geom/RectangularShape;->getWidth()D

    move-result-wide v5

    const-wide/high16 v7, 0x4000000000000000L    # 2.0

    div-double/2addr v5, v7

    invoke-virtual {p0}, Ljava/awt/geom/RectangularShape;->getHeight()D

    move-result-wide v9

    div-double/2addr v9, v7

    invoke-virtual {v4, v5, v6, v9, v10}, Ljava/awt/geom/AffineTransform;->scale(DD)V

    neg-double v0, v0

    neg-double v2, v2

    invoke-virtual {v4, v0, v1, v2, v3}, Ljava/awt/geom/AffineTransform;->translate(DD)V

    return-object v4
.end method


# virtual methods
.method public createContext(Ljava/awt/image/ColorModel;Ljava/awt/Rectangle;Ljava/awt/geom/Rectangle2D;Ljava/awt/geom/AffineTransform;Ljava/awt/RenderingHints;)Ljava/awt/PaintContext;
    .locals 17

    move-object/from16 v1, p0

    new-instance v5, Ljava/awt/geom/AffineTransform;

    move-object/from16 v0, p4

    invoke-direct {v5, v0}, Ljava/awt/geom/AffineTransform;-><init>(Ljava/awt/geom/AffineTransform;)V

    iget-object v0, v1, Ljava/awt/MultipleGradientPaint;->gradientTransform:Ljava/awt/geom/AffineTransform;

    invoke-virtual {v5, v0}, Ljava/awt/geom/AffineTransform;->concatenate(Ljava/awt/geom/AffineTransform;)V

    new-instance v16, Ljava/awt/RadialGradientPaintContext;

    iget-object v0, v1, Ljava/awt/RadialGradientPaint;->center:Ljava/awt/geom/Point2D;

    invoke-virtual {v0}, Ljava/awt/geom/Point2D;->getX()D

    move-result-wide v2

    double-to-float v7, v2

    iget-object v0, v1, Ljava/awt/RadialGradientPaint;->center:Ljava/awt/geom/Point2D;

    invoke-virtual {v0}, Ljava/awt/geom/Point2D;->getY()D

    move-result-wide v2

    double-to-float v8, v2

    iget v9, v1, Ljava/awt/RadialGradientPaint;->radius:F

    iget-object v0, v1, Ljava/awt/RadialGradientPaint;->focus:Ljava/awt/geom/Point2D;

    invoke-virtual {v0}, Ljava/awt/geom/Point2D;->getX()D

    move-result-wide v2

    double-to-float v10, v2

    iget-object v0, v1, Ljava/awt/RadialGradientPaint;->focus:Ljava/awt/geom/Point2D;

    invoke-virtual {v0}, Ljava/awt/geom/Point2D;->getY()D

    move-result-wide v2

    double-to-float v11, v2

    iget-object v12, v1, Ljava/awt/MultipleGradientPaint;->fractions:[F

    iget-object v13, v1, Ljava/awt/MultipleGradientPaint;->colors:[Ljava/awt/Color;

    iget-object v14, v1, Ljava/awt/MultipleGradientPaint;->cycleMethod:Ljava/awt/MultipleGradientPaint$CycleMethod;

    iget-object v15, v1, Ljava/awt/MultipleGradientPaint;->colorSpace:Ljava/awt/MultipleGradientPaint$ColorSpaceType;

    move-object/from16 v0, v16

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v6, p5

    invoke-direct/range {v0 .. v15}, Ljava/awt/RadialGradientPaintContext;-><init>(Ljava/awt/RadialGradientPaint;Ljava/awt/image/ColorModel;Ljava/awt/Rectangle;Ljava/awt/geom/Rectangle2D;Ljava/awt/geom/AffineTransform;Ljava/awt/RenderingHints;FFFFF[F[Ljava/awt/Color;Ljava/awt/MultipleGradientPaint$CycleMethod;Ljava/awt/MultipleGradientPaint$ColorSpaceType;)V

    return-object v16
.end method

.method public getCenterPoint()Ljava/awt/geom/Point2D;
    .locals 5

    new-instance v0, Ljava/awt/geom/Point2D$Double;

    iget-object v1, p0, Ljava/awt/RadialGradientPaint;->center:Ljava/awt/geom/Point2D;

    invoke-virtual {v1}, Ljava/awt/geom/Point2D;->getX()D

    move-result-wide v1

    iget-object p0, p0, Ljava/awt/RadialGradientPaint;->center:Ljava/awt/geom/Point2D;

    invoke-virtual {p0}, Ljava/awt/geom/Point2D;->getY()D

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/awt/geom/Point2D$Double;-><init>(DD)V

    return-object v0
.end method

.method public getFocusPoint()Ljava/awt/geom/Point2D;
    .locals 5

    new-instance v0, Ljava/awt/geom/Point2D$Double;

    iget-object v1, p0, Ljava/awt/RadialGradientPaint;->focus:Ljava/awt/geom/Point2D;

    invoke-virtual {v1}, Ljava/awt/geom/Point2D;->getX()D

    move-result-wide v1

    iget-object p0, p0, Ljava/awt/RadialGradientPaint;->focus:Ljava/awt/geom/Point2D;

    invoke-virtual {p0}, Ljava/awt/geom/Point2D;->getY()D

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/awt/geom/Point2D$Double;-><init>(DD)V

    return-object v0
.end method

.method public getRadius()F
    .locals 0

    iget p0, p0, Ljava/awt/RadialGradientPaint;->radius:F

    return p0
.end method

.method public getShader()Landroid/graphics/Shader;
    .locals 8

    invoke-virtual {p0}, Ljava/awt/MultipleGradientPaint;->getTransform()Ljava/awt/geom/AffineTransform;

    move-result-object v0

    invoke-virtual {p0}, Ljava/awt/RadialGradientPaint;->getCenterPoint()Ljava/awt/geom/Point2D;

    move-result-object v1

    invoke-virtual {p0}, Ljava/awt/RadialGradientPaint;->getFocusPoint()Ljava/awt/geom/Point2D;

    move-result-object v2

    invoke-virtual {p0}, Ljava/awt/RadialGradientPaint;->getRadius()F

    move-result v3

    float-to-double v3, v3

    invoke-virtual {p0}, Ljava/awt/MultipleGradientPaint;->getColors()[Ljava/awt/Color;

    move-result-object v5

    invoke-virtual {p0}, Ljava/awt/MultipleGradientPaint;->getFractions()[F

    move-result-object v6

    invoke-virtual {p0}, Ljava/awt/MultipleGradientPaint;->getTileMode()Landroid/graphics/Shader$TileMode;

    move-result-object v7

    invoke-static/range {v0 .. v7}, Lcom/trans/android/util/BridgeUtils;->getRadialGradient(Ljava/awt/geom/AffineTransform;Ljava/awt/geom/Point2D;Ljava/awt/geom/Point2D;D[Ljava/awt/Color;[FLandroid/graphics/Shader$TileMode;)Landroid/graphics/RadialGradient;

    move-result-object p0

    return-object p0
.end method
