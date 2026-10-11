.class public Lcom/onyx/poi/service/AndroidPOIService;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/trans/android/poi/POIService;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getShader(Ljava/awt/Paint;)Landroid/graphics/Shader;
    .locals 8

    check-cast p1, Lorg/apache/poi/sl/draw/PathGradientPaint;

    new-instance p0, Landroid/graphics/LinearGradient;

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v0, p1, Lorg/apache/poi/sl/draw/PathGradientPaint;->fractions:[F

    array-length v3, v0

    add-int/lit8 v3, v3, -0x1

    aget v3, v0, v3

    const/4 v4, 0x0

    iget-object v0, p1, Lorg/apache/poi/sl/draw/PathGradientPaint;->colors:[Ljava/awt/Color;

    invoke-static {v0}, Lcom/trans/android/util/ColorUtils;->toColorInt([Ljava/awt/Color;)[I

    move-result-object v5

    iget-object v6, p1, Lorg/apache/poi/sl/draw/PathGradientPaint;->fractions:[F

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    return-object p0
.end method

.method public isPOIPaint(Ljava/awt/Paint;)Z
    .locals 0

    instance-of p0, p1, Lorg/apache/poi/sl/draw/PathGradientPaint;

    return p0
.end method
