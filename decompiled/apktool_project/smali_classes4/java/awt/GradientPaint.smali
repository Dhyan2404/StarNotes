.class public Ljava/awt/GradientPaint;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/awt/Paint;
.implements Ljava/awt/IAndroidGradient;


# instance fields
.field color1:Ljava/awt/Color;

.field color2:Ljava/awt/Color;

.field cyclic:Z

.field p1:Ljava/awt/geom/Point2D$Float;

.field p2:Ljava/awt/geom/Point2D$Float;


# direct methods
.method public constructor <init>(FFLjava/awt/Color;FFLjava/awt/Color;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p3, :cond_0

    if-eqz p6, :cond_0

    .line 2
    new-instance v0, Ljava/awt/geom/Point2D$Float;

    invoke-direct {v0, p1, p2}, Ljava/awt/geom/Point2D$Float;-><init>(FF)V

    iput-object v0, p0, Ljava/awt/GradientPaint;->p1:Ljava/awt/geom/Point2D$Float;

    .line 3
    new-instance p1, Ljava/awt/geom/Point2D$Float;

    invoke-direct {p1, p4, p5}, Ljava/awt/geom/Point2D$Float;-><init>(FF)V

    iput-object p1, p0, Ljava/awt/GradientPaint;->p2:Ljava/awt/geom/Point2D$Float;

    .line 4
    iput-object p3, p0, Ljava/awt/GradientPaint;->color1:Ljava/awt/Color;

    .line 5
    iput-object p6, p0, Ljava/awt/GradientPaint;->color2:Ljava/awt/Color;

    return-void

    .line 6
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Colors cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>(FFLjava/awt/Color;FFLjava/awt/Color;Z)V
    .locals 0

    .line 13
    invoke-direct/range {p0 .. p6}, Ljava/awt/GradientPaint;-><init>(FFLjava/awt/Color;FFLjava/awt/Color;)V

    .line 14
    iput-boolean p7, p0, Ljava/awt/GradientPaint;->cyclic:Z

    return-void
.end method

.method public constructor <init>(Ljava/awt/geom/Point2D;Ljava/awt/Color;Ljava/awt/geom/Point2D;Ljava/awt/Color;)V
    .locals 4

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_0

    if-eqz p4, :cond_0

    if-eqz p1, :cond_0

    if-eqz p3, :cond_0

    .line 8
    new-instance v0, Ljava/awt/geom/Point2D$Float;

    invoke-virtual {p1}, Ljava/awt/geom/Point2D;->getX()D

    move-result-wide v1

    double-to-float v1, v1

    invoke-virtual {p1}, Ljava/awt/geom/Point2D;->getY()D

    move-result-wide v2

    double-to-float p1, v2

    invoke-direct {v0, v1, p1}, Ljava/awt/geom/Point2D$Float;-><init>(FF)V

    iput-object v0, p0, Ljava/awt/GradientPaint;->p1:Ljava/awt/geom/Point2D$Float;

    .line 9
    new-instance p1, Ljava/awt/geom/Point2D$Float;

    invoke-virtual {p3}, Ljava/awt/geom/Point2D;->getX()D

    move-result-wide v0

    double-to-float v0, v0

    invoke-virtual {p3}, Ljava/awt/geom/Point2D;->getY()D

    move-result-wide v1

    double-to-float p3, v1

    invoke-direct {p1, v0, p3}, Ljava/awt/geom/Point2D$Float;-><init>(FF)V

    iput-object p1, p0, Ljava/awt/GradientPaint;->p2:Ljava/awt/geom/Point2D$Float;

    .line 10
    iput-object p2, p0, Ljava/awt/GradientPaint;->color1:Ljava/awt/Color;

    .line 11
    iput-object p4, p0, Ljava/awt/GradientPaint;->color2:Ljava/awt/Color;

    return-void

    .line 12
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Colors and points should be non-null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>(Ljava/awt/geom/Point2D;Ljava/awt/Color;Ljava/awt/geom/Point2D;Ljava/awt/Color;Z)V
    .locals 0
    .annotation runtime Ljava/beans/ConstructorProperties;
        value = {
            "point1",
            "color1",
            "point2",
            "color2",
            "cyclic"
        }
    .end annotation

    .line 15
    invoke-direct {p0, p1, p2, p3, p4}, Ljava/awt/GradientPaint;-><init>(Ljava/awt/geom/Point2D;Ljava/awt/Color;Ljava/awt/geom/Point2D;Ljava/awt/Color;)V

    .line 16
    iput-boolean p5, p0, Ljava/awt/GradientPaint;->cyclic:Z

    return-void
.end method


# virtual methods
.method public createContext(Ljava/awt/image/ColorModel;Ljava/awt/Rectangle;Ljava/awt/geom/Rectangle2D;Ljava/awt/geom/AffineTransform;Ljava/awt/RenderingHints;)Ljava/awt/PaintContext;
    .locals 8

    new-instance p2, Ljava/awt/GradientPaintContext;

    iget-object v2, p0, Ljava/awt/GradientPaint;->p1:Ljava/awt/geom/Point2D$Float;

    iget-object v3, p0, Ljava/awt/GradientPaint;->p2:Ljava/awt/geom/Point2D$Float;

    iget-object v5, p0, Ljava/awt/GradientPaint;->color1:Ljava/awt/Color;

    iget-object v6, p0, Ljava/awt/GradientPaint;->color2:Ljava/awt/Color;

    iget-boolean v7, p0, Ljava/awt/GradientPaint;->cyclic:Z

    move-object v0, p2

    move-object v1, p1

    move-object v4, p4

    invoke-direct/range {v0 .. v7}, Ljava/awt/GradientPaintContext;-><init>(Ljava/awt/image/ColorModel;Ljava/awt/geom/Point2D;Ljava/awt/geom/Point2D;Ljava/awt/geom/AffineTransform;Ljava/awt/Color;Ljava/awt/Color;Z)V

    return-object p2
.end method

.method public getColor1()Ljava/awt/Color;
    .locals 0

    iget-object p0, p0, Ljava/awt/GradientPaint;->color1:Ljava/awt/Color;

    return-object p0
.end method

.method public getColor2()Ljava/awt/Color;
    .locals 0

    iget-object p0, p0, Ljava/awt/GradientPaint;->color2:Ljava/awt/Color;

    return-object p0
.end method

.method public getPoint1()Ljava/awt/geom/Point2D;
    .locals 2

    new-instance v0, Ljava/awt/geom/Point2D$Float;

    iget-object p0, p0, Ljava/awt/GradientPaint;->p1:Ljava/awt/geom/Point2D$Float;

    iget v1, p0, Ljava/awt/geom/Point2D$Float;->x:F

    iget p0, p0, Ljava/awt/geom/Point2D$Float;->y:F

    invoke-direct {v0, v1, p0}, Ljava/awt/geom/Point2D$Float;-><init>(FF)V

    return-object v0
.end method

.method public getPoint2()Ljava/awt/geom/Point2D;
    .locals 2

    new-instance v0, Ljava/awt/geom/Point2D$Float;

    iget-object p0, p0, Ljava/awt/GradientPaint;->p2:Ljava/awt/geom/Point2D$Float;

    iget v1, p0, Ljava/awt/geom/Point2D$Float;->x:F

    iget p0, p0, Ljava/awt/geom/Point2D$Float;->y:F

    invoke-direct {v0, v1, p0}, Ljava/awt/geom/Point2D$Float;-><init>(FF)V

    return-object v0
.end method

.method public getShader()Landroid/graphics/Shader;
    .locals 9

    new-instance v8, Landroid/graphics/LinearGradient;

    iget-object v0, p0, Ljava/awt/GradientPaint;->p1:Ljava/awt/geom/Point2D$Float;

    iget v1, v0, Ljava/awt/geom/Point2D$Float;->x:F

    iget v2, v0, Ljava/awt/geom/Point2D$Float;->y:F

    iget-object v0, p0, Ljava/awt/GradientPaint;->p2:Ljava/awt/geom/Point2D$Float;

    iget v3, v0, Ljava/awt/geom/Point2D$Float;->x:F

    iget v4, v0, Ljava/awt/geom/Point2D$Float;->y:F

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/awt/Color;

    const/4 v5, 0x0

    iget-object v6, p0, Ljava/awt/GradientPaint;->color1:Ljava/awt/Color;

    aput-object v6, v0, v5

    const/4 v5, 0x1

    iget-object v6, p0, Ljava/awt/GradientPaint;->color2:Ljava/awt/Color;

    aput-object v6, v0, v5

    invoke-static {v0}, Lcom/trans/android/util/ColorUtils;->toColorInt([Ljava/awt/Color;)[I

    move-result-object v5

    const/4 v6, 0x0

    iget-boolean p0, p0, Ljava/awt/GradientPaint;->cyclic:Z

    if-eqz p0, :cond_0

    sget-object p0, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    goto :goto_0

    :cond_0
    sget-object p0, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    :goto_0
    move-object v7, p0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    return-object v8
.end method

.method public getTransparency()I
    .locals 1

    iget-object v0, p0, Ljava/awt/GradientPaint;->color1:Ljava/awt/Color;

    invoke-virtual {v0}, Ljava/awt/Color;->getAlpha()I

    move-result v0

    iget-object p0, p0, Ljava/awt/GradientPaint;->color2:Ljava/awt/Color;

    invoke-virtual {p0}, Ljava/awt/Color;->getAlpha()I

    move-result p0

    and-int/2addr p0, v0

    const/16 v0, 0xff

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x3

    :goto_0
    return p0
.end method

.method public isCyclic()Z
    .locals 0

    iget-boolean p0, p0, Ljava/awt/GradientPaint;->cyclic:Z

    return p0
.end method
