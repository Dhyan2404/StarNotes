.class public final Ljava/awt/LinearGradientPaint;
.super Ljava/awt/MultipleGradientPaint;
.source "SourceFile"


# instance fields
.field private final end:Ljava/awt/geom/Point2D;

.field private final start:Ljava/awt/geom/Point2D;


# direct methods
.method public constructor <init>(FFFF[F[Ljava/awt/Color;)V
    .locals 6

    .line 1
    new-instance v1, Ljava/awt/geom/Point2D$Float;

    invoke-direct {v1, p1, p2}, Ljava/awt/geom/Point2D$Float;-><init>(FF)V

    new-instance v2, Ljava/awt/geom/Point2D$Float;

    invoke-direct {v2, p3, p4}, Ljava/awt/geom/Point2D$Float;-><init>(FF)V

    sget-object v5, Ljava/awt/MultipleGradientPaint$CycleMethod;->NO_CYCLE:Ljava/awt/MultipleGradientPaint$CycleMethod;

    move-object v0, p0

    move-object v3, p5

    move-object v4, p6

    invoke-direct/range {v0 .. v5}, Ljava/awt/LinearGradientPaint;-><init>(Ljava/awt/geom/Point2D;Ljava/awt/geom/Point2D;[F[Ljava/awt/Color;Ljava/awt/MultipleGradientPaint$CycleMethod;)V

    return-void
.end method

.method public constructor <init>(FFFF[F[Ljava/awt/Color;Ljava/awt/MultipleGradientPaint$CycleMethod;)V
    .locals 6

    .line 2
    new-instance v1, Ljava/awt/geom/Point2D$Float;

    invoke-direct {v1, p1, p2}, Ljava/awt/geom/Point2D$Float;-><init>(FF)V

    new-instance v2, Ljava/awt/geom/Point2D$Float;

    invoke-direct {v2, p3, p4}, Ljava/awt/geom/Point2D$Float;-><init>(FF)V

    move-object v0, p0

    move-object v3, p5

    move-object v4, p6

    move-object v5, p7

    invoke-direct/range {v0 .. v5}, Ljava/awt/LinearGradientPaint;-><init>(Ljava/awt/geom/Point2D;Ljava/awt/geom/Point2D;[F[Ljava/awt/Color;Ljava/awt/MultipleGradientPaint$CycleMethod;)V

    return-void
.end method

.method public constructor <init>(Ljava/awt/geom/Point2D;Ljava/awt/geom/Point2D;[F[Ljava/awt/Color;)V
    .locals 6

    .line 3
    sget-object v5, Ljava/awt/MultipleGradientPaint$CycleMethod;->NO_CYCLE:Ljava/awt/MultipleGradientPaint$CycleMethod;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Ljava/awt/LinearGradientPaint;-><init>(Ljava/awt/geom/Point2D;Ljava/awt/geom/Point2D;[F[Ljava/awt/Color;Ljava/awt/MultipleGradientPaint$CycleMethod;)V

    return-void
.end method

.method public constructor <init>(Ljava/awt/geom/Point2D;Ljava/awt/geom/Point2D;[F[Ljava/awt/Color;Ljava/awt/MultipleGradientPaint$CycleMethod;)V
    .locals 8

    .line 4
    sget-object v6, Ljava/awt/MultipleGradientPaint$ColorSpaceType;->SRGB:Ljava/awt/MultipleGradientPaint$ColorSpaceType;

    new-instance v7, Ljava/awt/geom/AffineTransform;

    invoke-direct {v7}, Ljava/awt/geom/AffineTransform;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v7}, Ljava/awt/LinearGradientPaint;-><init>(Ljava/awt/geom/Point2D;Ljava/awt/geom/Point2D;[F[Ljava/awt/Color;Ljava/awt/MultipleGradientPaint$CycleMethod;Ljava/awt/MultipleGradientPaint$ColorSpaceType;Ljava/awt/geom/AffineTransform;)V

    return-void
.end method

.method public constructor <init>(Ljava/awt/geom/Point2D;Ljava/awt/geom/Point2D;[F[Ljava/awt/Color;Ljava/awt/MultipleGradientPaint$CycleMethod;Ljava/awt/MultipleGradientPaint$ColorSpaceType;Ljava/awt/geom/AffineTransform;)V
    .locals 6

    move-object v0, p0

    move-object v1, p3

    move-object v2, p4

    move-object v3, p5

    move-object v4, p6

    move-object v5, p7

    .line 5
    invoke-direct/range {v0 .. v5}, Ljava/awt/MultipleGradientPaint;-><init>([F[Ljava/awt/Color;Ljava/awt/MultipleGradientPaint$CycleMethod;Ljava/awt/MultipleGradientPaint$ColorSpaceType;Ljava/awt/geom/AffineTransform;)V

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 6
    invoke-virtual {p1, p2}, Ljava/awt/geom/Point2D;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_0

    .line 7
    new-instance p3, Ljava/awt/geom/Point2D$Double;

    invoke-virtual {p1}, Ljava/awt/geom/Point2D;->getX()D

    move-result-wide p4

    invoke-virtual {p1}, Ljava/awt/geom/Point2D;->getY()D

    move-result-wide p6

    invoke-direct {p3, p4, p5, p6, p7}, Ljava/awt/geom/Point2D$Double;-><init>(DD)V

    iput-object p3, p0, Ljava/awt/LinearGradientPaint;->start:Ljava/awt/geom/Point2D;

    .line 8
    new-instance p1, Ljava/awt/geom/Point2D$Double;

    invoke-virtual {p2}, Ljava/awt/geom/Point2D;->getX()D

    move-result-wide p3

    invoke-virtual {p2}, Ljava/awt/geom/Point2D;->getY()D

    move-result-wide p5

    invoke-direct {p1, p3, p4, p5, p6}, Ljava/awt/geom/Point2D$Double;-><init>(DD)V

    iput-object p1, p0, Ljava/awt/LinearGradientPaint;->end:Ljava/awt/geom/Point2D;

    return-void

    .line 9
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Start point cannot equalendpoint"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 10
    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Start and end points must benon-null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public createContext(Ljava/awt/image/ColorModel;Ljava/awt/Rectangle;Ljava/awt/geom/Rectangle2D;Ljava/awt/geom/AffineTransform;Ljava/awt/RenderingHints;)Ljava/awt/PaintContext;
    .locals 14

    move-object v1, p0

    new-instance v5, Ljava/awt/geom/AffineTransform;

    move-object/from16 v0, p4

    invoke-direct {v5, v0}, Ljava/awt/geom/AffineTransform;-><init>(Ljava/awt/geom/AffineTransform;)V

    iget-object v0, v1, Ljava/awt/MultipleGradientPaint;->gradientTransform:Ljava/awt/geom/AffineTransform;

    invoke-virtual {v5, v0}, Ljava/awt/geom/AffineTransform;->concatenate(Ljava/awt/geom/AffineTransform;)V

    iget-object v0, v1, Ljava/awt/MultipleGradientPaint;->fractions:[F

    array-length v0, v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    iget-object v0, v1, Ljava/awt/MultipleGradientPaint;->cycleMethod:Ljava/awt/MultipleGradientPaint$CycleMethod;

    sget-object v2, Ljava/awt/MultipleGradientPaint$CycleMethod;->REPEAT:Ljava/awt/MultipleGradientPaint$CycleMethod;

    if-eq v0, v2, :cond_1

    iget-object v2, v1, Ljava/awt/MultipleGradientPaint;->colorSpace:Ljava/awt/MultipleGradientPaint$ColorSpaceType;

    sget-object v3, Ljava/awt/MultipleGradientPaint$ColorSpaceType;->SRGB:Ljava/awt/MultipleGradientPaint$ColorSpaceType;

    if-ne v2, v3, :cond_1

    sget-object v2, Ljava/awt/MultipleGradientPaint$CycleMethod;->NO_CYCLE:Ljava/awt/MultipleGradientPaint$CycleMethod;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq v0, v2, :cond_0

    move v7, v3

    goto :goto_0

    :cond_0
    move v7, v4

    :goto_0
    new-instance v8, Ljava/awt/GradientPaintContext;

    iget-object v2, v1, Ljava/awt/LinearGradientPaint;->start:Ljava/awt/geom/Point2D;

    iget-object v6, v1, Ljava/awt/LinearGradientPaint;->end:Ljava/awt/geom/Point2D;

    iget-object v0, v1, Ljava/awt/MultipleGradientPaint;->colors:[Ljava/awt/Color;

    aget-object v9, v0, v4

    aget-object v10, v0, v3

    move-object v0, v8

    move-object v1, p1

    move-object v3, v6

    move-object v4, v5

    move-object v5, v9

    move-object v6, v10

    invoke-direct/range {v0 .. v7}, Ljava/awt/GradientPaintContext;-><init>(Ljava/awt/image/ColorModel;Ljava/awt/geom/Point2D;Ljava/awt/geom/Point2D;Ljava/awt/geom/AffineTransform;Ljava/awt/Color;Ljava/awt/Color;Z)V

    return-object v8

    :cond_1
    new-instance v13, Ljava/awt/LinearGradientPaintContext;

    iget-object v7, v1, Ljava/awt/LinearGradientPaint;->start:Ljava/awt/geom/Point2D;

    iget-object v8, v1, Ljava/awt/LinearGradientPaint;->end:Ljava/awt/geom/Point2D;

    iget-object v9, v1, Ljava/awt/MultipleGradientPaint;->fractions:[F

    iget-object v10, v1, Ljava/awt/MultipleGradientPaint;->colors:[Ljava/awt/Color;

    iget-object v11, v1, Ljava/awt/MultipleGradientPaint;->cycleMethod:Ljava/awt/MultipleGradientPaint$CycleMethod;

    iget-object v12, v1, Ljava/awt/MultipleGradientPaint;->colorSpace:Ljava/awt/MultipleGradientPaint$ColorSpaceType;

    move-object v0, v13

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v6, p5

    invoke-direct/range {v0 .. v12}, Ljava/awt/LinearGradientPaintContext;-><init>(Ljava/awt/LinearGradientPaint;Ljava/awt/image/ColorModel;Ljava/awt/Rectangle;Ljava/awt/geom/Rectangle2D;Ljava/awt/geom/AffineTransform;Ljava/awt/RenderingHints;Ljava/awt/geom/Point2D;Ljava/awt/geom/Point2D;[F[Ljava/awt/Color;Ljava/awt/MultipleGradientPaint$CycleMethod;Ljava/awt/MultipleGradientPaint$ColorSpaceType;)V

    return-object v13
.end method

.method public getEndPoint()Ljava/awt/geom/Point2D;
    .locals 5

    new-instance v0, Ljava/awt/geom/Point2D$Double;

    iget-object v1, p0, Ljava/awt/LinearGradientPaint;->end:Ljava/awt/geom/Point2D;

    invoke-virtual {v1}, Ljava/awt/geom/Point2D;->getX()D

    move-result-wide v1

    iget-object p0, p0, Ljava/awt/LinearGradientPaint;->end:Ljava/awt/geom/Point2D;

    invoke-virtual {p0}, Ljava/awt/geom/Point2D;->getY()D

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/awt/geom/Point2D$Double;-><init>(DD)V

    return-object v0
.end method

.method public getShader()Landroid/graphics/Shader;
    .locals 6

    invoke-virtual {p0}, Ljava/awt/MultipleGradientPaint;->getTransform()Ljava/awt/geom/AffineTransform;

    move-result-object v0

    invoke-virtual {p0}, Ljava/awt/LinearGradientPaint;->getStartPoint()Ljava/awt/geom/Point2D;

    move-result-object v1

    invoke-virtual {p0}, Ljava/awt/LinearGradientPaint;->getEndPoint()Ljava/awt/geom/Point2D;

    move-result-object v2

    invoke-virtual {p0}, Ljava/awt/MultipleGradientPaint;->getColors()[Ljava/awt/Color;

    move-result-object v3

    invoke-virtual {p0}, Ljava/awt/MultipleGradientPaint;->getFractions()[F

    move-result-object v4

    invoke-virtual {p0}, Ljava/awt/MultipleGradientPaint;->getTileMode()Landroid/graphics/Shader$TileMode;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Lcom/trans/android/util/BridgeUtils;->getLinearGradient(Ljava/awt/geom/AffineTransform;Ljava/awt/geom/Point2D;Ljava/awt/geom/Point2D;[Ljava/awt/Color;[FLandroid/graphics/Shader$TileMode;)Landroid/graphics/LinearGradient;

    move-result-object p0

    return-object p0
.end method

.method public getStartPoint()Ljava/awt/geom/Point2D;
    .locals 5

    new-instance v0, Ljava/awt/geom/Point2D$Double;

    iget-object v1, p0, Ljava/awt/LinearGradientPaint;->start:Ljava/awt/geom/Point2D;

    invoke-virtual {v1}, Ljava/awt/geom/Point2D;->getX()D

    move-result-wide v1

    iget-object p0, p0, Ljava/awt/LinearGradientPaint;->start:Ljava/awt/geom/Point2D;

    invoke-virtual {p0}, Ljava/awt/geom/Point2D;->getY()D

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/awt/geom/Point2D$Double;-><init>(DD)V

    return-object v0
.end method
