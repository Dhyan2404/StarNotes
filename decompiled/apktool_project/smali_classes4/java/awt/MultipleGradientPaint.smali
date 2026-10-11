.class public abstract Ljava/awt/MultipleGradientPaint;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/awt/Paint;
.implements Ljava/awt/IAndroidGradient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/awt/MultipleGradientPaint$ColorSpaceType;,
        Ljava/awt/MultipleGradientPaint$CycleMethod;
    }
.end annotation


# instance fields
.field final colorSpace:Ljava/awt/MultipleGradientPaint$ColorSpaceType;

.field final colors:[Ljava/awt/Color;

.field final cycleMethod:Ljava/awt/MultipleGradientPaint$CycleMethod;

.field fastGradientArraySize:I

.field final fractions:[F

.field gradient:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference<",
            "[I>;"
        }
    .end annotation
.end field

.field final gradientTransform:Ljava/awt/geom/AffineTransform;

.field gradients:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference<",
            "[[I>;"
        }
    .end annotation
.end field

.field isSimpleLookup:Z

.field model:Ljava/awt/image/ColorModel;

.field normalizedIntervals:[F

.field final transparency:I


# direct methods
.method public constructor <init>([F[Ljava/awt/Color;Ljava/awt/MultipleGradientPaint$CycleMethod;Ljava/awt/MultipleGradientPaint$ColorSpaceType;Ljava/awt/geom/AffineTransform;)V
    .locals 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_10

    if-eqz p2, :cond_f

    if-eqz p3, :cond_e

    if-eqz p4, :cond_d

    if-eqz p5, :cond_c

    array-length v0, p1

    array-length v1, p2

    if-ne v0, v1, :cond_b

    array-length v0, p2

    const/4 v1, 0x2

    if-lt v0, v1, :cond_a

    array-length v0, p1

    const/4 v1, 0x0

    const/high16 v2, -0x40800000    # -1.0f

    move v3, v1

    :goto_0
    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    if-ge v3, v0, :cond_2

    aget v6, p1, v3

    cmpg-float v5, v6, v5

    if-ltz v5, :cond_1

    cmpl-float v4, v6, v4

    if-gtz v4, :cond_1

    cmpg-float v2, v6, v2

    if-lez v2, :cond_0

    add-int/lit8 v3, v3, 0x1

    move v2, v6

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Keyframe fractions must be increasing: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Fraction values must be in the range 0 to 1: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    array-length v0, p1

    aget v2, p1, v1

    cmpl-float v2, v2, v5

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    add-int/lit8 v0, v0, 0x1

    move v2, v3

    goto :goto_1

    :cond_3
    move v2, v1

    :goto_1
    move v6, v2

    array-length v7, p1

    sub-int/2addr v7, v3

    aget v7, p1, v7

    cmpl-float v7, v7, v4

    if-eqz v7, :cond_4

    add-int/lit8 v0, v0, 0x1

    move v7, v3

    goto :goto_2

    :cond_4
    move v7, v1

    :goto_2
    new-array v8, v0, [F

    iput-object v8, p0, Ljava/awt/MultipleGradientPaint;->fractions:[F

    array-length v9, p1

    invoke-static {p1, v1, v8, v6, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-array p1, v0, [Ljava/awt/Color;

    iput-object p1, p0, Ljava/awt/MultipleGradientPaint;->colors:[Ljava/awt/Color;

    array-length v9, p2

    invoke-static {p2, v1, p1, v6, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    if-eqz v2, :cond_5

    aput v5, v8, v1

    aget-object v2, p2, v1

    aput-object v2, p1, v1

    :cond_5
    if-eqz v7, :cond_6

    sub-int/2addr v0, v3

    aput v4, v8, v0

    array-length v2, p2

    sub-int/2addr v2, v3

    aget-object v2, p2, v2

    aput-object v2, p1, v0

    :cond_6
    iput-object p4, p0, Ljava/awt/MultipleGradientPaint;->colorSpace:Ljava/awt/MultipleGradientPaint$ColorSpaceType;

    iput-object p3, p0, Ljava/awt/MultipleGradientPaint;->cycleMethod:Ljava/awt/MultipleGradientPaint$CycleMethod;

    new-instance p1, Ljava/awt/geom/AffineTransform;

    invoke-direct {p1, p5}, Ljava/awt/geom/AffineTransform;-><init>(Ljava/awt/geom/AffineTransform;)V

    iput-object p1, p0, Ljava/awt/MultipleGradientPaint;->gradientTransform:Ljava/awt/geom/AffineTransform;

    move p1, v1

    move p3, v3

    :goto_3
    array-length p4, p2

    if-ge p1, p4, :cond_8

    if-eqz p3, :cond_7

    aget-object p3, p2, p1

    invoke-virtual {p3}, Ljava/awt/Color;->getAlpha()I

    move-result p3

    const/16 p4, 0xff

    if-ne p3, p4, :cond_7

    move p3, v3

    goto :goto_4

    :cond_7
    move p3, v1

    :goto_4
    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    :cond_8
    if-eqz p3, :cond_9

    goto :goto_5

    :cond_9
    const/4 v3, 0x3

    :goto_5
    iput v3, p0, Ljava/awt/MultipleGradientPaint;->transparency:I

    return-void

    :cond_a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "User must specify at least 2 colors"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Colors and fractions must have equal size"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_c
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Gradient transform cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_d
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Color space cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_e
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Cycle method cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_f
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Colors array cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_10
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Fractions array cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final getColorSpace()Ljava/awt/MultipleGradientPaint$ColorSpaceType;
    .locals 0

    iget-object p0, p0, Ljava/awt/MultipleGradientPaint;->colorSpace:Ljava/awt/MultipleGradientPaint$ColorSpaceType;

    return-object p0
.end method

.method public final getColors()[Ljava/awt/Color;
    .locals 1

    iget-object p0, p0, Ljava/awt/MultipleGradientPaint;->colors:[Ljava/awt/Color;

    array-length v0, p0

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/awt/Color;

    return-object p0
.end method

.method public final getCycleMethod()Ljava/awt/MultipleGradientPaint$CycleMethod;
    .locals 0

    iget-object p0, p0, Ljava/awt/MultipleGradientPaint;->cycleMethod:Ljava/awt/MultipleGradientPaint$CycleMethod;

    return-object p0
.end method

.method public final getFractions()[F
    .locals 1

    iget-object p0, p0, Ljava/awt/MultipleGradientPaint;->fractions:[F

    array-length v0, p0

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object p0

    return-object p0
.end method

.method public getTileMode()Landroid/graphics/Shader$TileMode;
    .locals 1

    sget-object v0, Ljava/awt/MultipleGradientPaint$1;->$SwitchMap$java$awt$MultipleGradientPaint$CycleMethod:[I

    iget-object p0, p0, Ljava/awt/MultipleGradientPaint;->cycleMethod:Ljava/awt/MultipleGradientPaint$CycleMethod;

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    sget-object p0, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    goto :goto_0

    :cond_0
    sget-object p0, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    goto :goto_0

    :cond_1
    sget-object p0, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    :goto_0
    return-object p0
.end method

.method public final getTransform()Ljava/awt/geom/AffineTransform;
    .locals 1

    new-instance v0, Ljava/awt/geom/AffineTransform;

    iget-object p0, p0, Ljava/awt/MultipleGradientPaint;->gradientTransform:Ljava/awt/geom/AffineTransform;

    invoke-direct {v0, p0}, Ljava/awt/geom/AffineTransform;-><init>(Ljava/awt/geom/AffineTransform;)V

    return-object v0
.end method

.method public final getTransparency()I
    .locals 0

    iget p0, p0, Ljava/awt/MultipleGradientPaint;->transparency:I

    return p0
.end method
