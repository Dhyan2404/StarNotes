.class public Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusLinearGradientBrushData;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusBrushData;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EmfPlusLinearGradientBrushData"
.end annotation


# static fields
.field private static final FLAG_MASKS:[I

.field private static final FLAG_NAMES:[Ljava/lang/String;


# instance fields
.field private blendColors:[Ljava/awt/Color;

.field private blendFactorsH:[F

.field private blendFactorsV:[F

.field private blendTransform:Ljava/awt/geom/AffineTransform;

.field private dataFlags:I

.field private endColor:Ljava/awt/Color;

.field private positions:[F

.field private positionsH:[F

.field private positionsV:[F

.field private final rect:Ljava/awt/geom/Rectangle2D;

.field private startColor:Ljava/awt/Color;

.field private wrapMode:Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusWrapMode;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    const/16 v0, 0x10

    const/16 v1, 0x80

    const/4 v2, 0x2

    const/4 v3, 0x4

    const/16 v4, 0x8

    filled-new-array {v2, v3, v4, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusLinearGradientBrushData;->FLAG_MASKS:[I

    const-string v0, "BLEND_FACTORS_V"

    const-string v1, "BRUSH_DATA_IS_GAMMA_CORRECTED"

    const-string v2, "TRANSFORM"

    const-string v3, "PRESET_COLORS"

    const-string v4, "BLEND_FACTORS_H"

    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusLinearGradientBrushData;->FLAG_NAMES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/awt/geom/Rectangle2D$Double;

    invoke-direct {v0}, Ljava/awt/geom/Rectangle2D$Double;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusLinearGradientBrushData;->rect:Ljava/awt/geom/Rectangle2D;

    return-void
.end method

.method public static synthetic a(Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusLinearGradientBrushData;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusLinearGradientBrushData;->lambda$getGenericProperties$13()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusLinearGradientBrushData;I)Ljava/util/Map$Entry;
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusLinearGradientBrushData;->getBlendColorAt(I)Ljava/util/Map$Entry;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusLinearGradientBrushData;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusLinearGradientBrushData;->lambda$getGenericProperties$10()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusLinearGradientBrushData;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusLinearGradientBrushData;->lambda$getGenericProperties$11()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusLinearGradientBrushData;I)Ljava/util/Map$Entry;
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusLinearGradientBrushData;->getBlendHColorAt(I)Ljava/util/Map$Entry;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f(Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusLinearGradientBrushData;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusLinearGradientBrushData;->lambda$getGenericProperties$9()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic g(Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusLinearGradientBrushData;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusLinearGradientBrushData;->lambda$getGenericProperties$16()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private getBlendColorAt(I)Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/Float;",
            "Ljava/awt/Color;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusLinearGradientBrushData;->positions:[F

    aget v0, v0, p1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iget-object p0, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusLinearGradientBrushData;->blendColors:[Ljava/awt/Color;

    aget-object p0, p0, p1

    invoke-static {v0, p0}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusLinearGradientBrushData;->kv(Ljava/lang/Float;Ljava/awt/Color;)Ljava/util/Map$Entry;

    move-result-object p0

    return-object p0
.end method

.method private getBlendHColorAt(I)Ljava/util/Map$Entry;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/Float;",
            "Ljava/awt/Color;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusLinearGradientBrushData;->positionsH:[F

    aget v0, v0, p1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusLinearGradientBrushData;->blendFactorsH:[F

    aget p1, v1, p1

    float-to-double v1, p1

    invoke-direct {p0, v1, v2}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusLinearGradientBrushData;->interpolateColors(D)Ljava/awt/Color;

    move-result-object p0

    invoke-static {v0, p0}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusLinearGradientBrushData;->kv(Ljava/lang/Float;Ljava/awt/Color;)Ljava/util/Map$Entry;

    move-result-object p0

    return-object p0
.end method

.method private getBlendVColorAt(I)Ljava/util/Map$Entry;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/Float;",
            "Ljava/awt/Color;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusLinearGradientBrushData;->positionsV:[F

    aget v0, v0, p1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusLinearGradientBrushData;->blendFactorsV:[F

    aget p1, v1, p1

    float-to-double v1, p1

    invoke-direct {p0, v1, v2}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusLinearGradientBrushData;->interpolateColors(D)Ljava/awt/Color;

    move-result-object p0

    invoke-static {v0, p0}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusLinearGradientBrushData;->kv(Ljava/lang/Float;Ljava/awt/Color;)Ljava/util/Map$Entry;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic h(Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusLinearGradientBrushData;I)Ljava/util/Map$Entry;
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusLinearGradientBrushData;->getBlendVColorAt(I)Ljava/util/Map$Entry;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic i(Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusLinearGradientBrushData;[Ljava/awt/Color;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusLinearGradientBrushData;->lambda$init$1([Ljava/awt/Color;)V

    return-void
.end method

.method private interpolateColors(D)Ljava/awt/Color;
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusLinearGradientBrushData;->interpolateColorsRGB(D)Ljava/awt/Color;

    move-result-object p0

    return-object p0
.end method

.method private interpolateColorsRGB(D)Ljava/awt/Color;
    .locals 11

    iget-object v0, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusLinearGradientBrushData;->startColor:Ljava/awt/Color;

    invoke-static {v0}, Lorg/apache/poi/sl/draw/DrawPaint;->RGB2SCRGB(Ljava/awt/Color;)[D

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusLinearGradientBrushData;->endColor:Ljava/awt/Color;

    invoke-static {v1}, Lorg/apache/poi/sl/draw/DrawPaint;->RGB2SCRGB(Ljava/awt/Color;)[D

    move-result-object v1

    iget-object v2, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusLinearGradientBrushData;->startColor:Ljava/awt/Color;

    invoke-virtual {v2}, Ljava/awt/Color;->getAlpha()I

    move-result v2

    int-to-double v2, v2

    iget-object v4, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusLinearGradientBrushData;->endColor:Ljava/awt/Color;

    invoke-virtual {v4}, Ljava/awt/Color;->getAlpha()I

    move-result v4

    iget-object p0, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusLinearGradientBrushData;->startColor:Ljava/awt/Color;

    invoke-virtual {p0}, Ljava/awt/Color;->getAlpha()I

    move-result p0

    sub-int/2addr v4, p0

    int-to-double v4, v4

    mul-double/2addr v4, p1

    add-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int p0, v2

    const/4 v2, 0x0

    aget-wide v3, v0, v2

    aget-wide v5, v1, v2

    sub-double/2addr v5, v3

    mul-double/2addr v5, p1

    add-double/2addr v3, v5

    const/4 v5, 0x1

    aget-wide v6, v0, v5

    aget-wide v8, v1, v5

    sub-double/2addr v8, v6

    mul-double/2addr v8, p1

    add-double/2addr v6, v8

    const/4 v8, 0x2

    aget-wide v9, v0, v8

    aget-wide v0, v1, v8

    sub-double/2addr v0, v9

    mul-double/2addr p1, v0

    add-double/2addr v9, p1

    const/4 p1, 0x3

    new-array p1, p1, [D

    aput-wide v3, p1, v2

    aput-wide v6, p1, v5

    aput-wide v9, p1, v8

    invoke-static {p1}, Lorg/apache/poi/sl/draw/DrawPaint;->SCRGB2RGB([D)Ljava/awt/Color;

    move-result-object p1

    new-instance p2, Ljava/awt/Color;

    invoke-virtual {p1}, Ljava/awt/Color;->getRed()I

    move-result v0

    invoke-virtual {p1}, Ljava/awt/Color;->getGreen()I

    move-result v1

    invoke-virtual {p1}, Ljava/awt/Color;->getBlue()I

    move-result p1

    invoke-direct {p2, v0, v1, p1, p0}, Ljava/awt/Color;-><init>(IIII)V

    return-object p2
.end method

.method private isBlendH()Z
    .locals 1

    sget-object v0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusBrushData;->BLEND_FACTORS_H:Lorg/apache/poi/util/BitField;

    iget p0, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusLinearGradientBrushData;->dataFlags:I

    invoke-virtual {v0, p0}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result p0

    return p0
.end method

.method private isBlendV()Z
    .locals 1

    sget-object v0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusBrushData;->BLEND_FACTORS_V:Lorg/apache/poi/util/BitField;

    iget p0, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusLinearGradientBrushData;->dataFlags:I

    invoke-virtual {v0, p0}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result p0

    return p0
.end method

.method private isPreset()Z
    .locals 1

    sget-object v0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusBrushData;->PRESET_COLORS:Lorg/apache/poi/util/BitField;

    iget p0, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusLinearGradientBrushData;->dataFlags:I

    invoke-virtual {v0, p0}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result p0

    return p0
.end method

.method public static synthetic j(Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusLinearGradientBrushData;[F)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusLinearGradientBrushData;->lambda$init$3([F)V

    return-void
.end method

.method public static synthetic k(Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusLinearGradientBrushData;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusLinearGradientBrushData;->lambda$getGenericProperties$8()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static kv(Ljava/lang/Float;Ljava/awt/Color;)Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Float;",
            "Ljava/awt/Color;",
            ")",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/Float;",
            "Ljava/awt/Color;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/AbstractMap$SimpleEntry;

    invoke-direct {v0, p0, p1}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static synthetic l(Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusLinearGradientBrushData;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusLinearGradientBrushData;->lambda$getGenericProperties$12()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$10()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusLinearGradientBrushData;->endColor:Ljava/awt/Color;

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$11()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusLinearGradientBrushData;->blendTransform:Ljava/awt/geom/AffineTransform;

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$12()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusLinearGradientBrushData;->positions:[F

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$13()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusLinearGradientBrushData;->blendColors:[Ljava/awt/Color;

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$14()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusLinearGradientBrushData;->positionsV:[F

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$15()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusLinearGradientBrushData;->blendFactorsV:[F

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$16()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusLinearGradientBrushData;->positionsH:[F

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$17()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusLinearGradientBrushData;->blendFactorsH:[F

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$6()Ljava/lang/Number;
    .locals 0

    iget p0, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusLinearGradientBrushData;->dataFlags:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$7()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusLinearGradientBrushData;->wrapMode:Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusWrapMode;

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$8()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusLinearGradientBrushData;->rect:Ljava/awt/geom/Rectangle2D;

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$9()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusLinearGradientBrushData;->startColor:Ljava/awt/Color;

    return-object p0
.end method

.method private synthetic lambda$init$0([F)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusLinearGradientBrushData;->positions:[F

    return-void
.end method

.method private synthetic lambda$init$1([Ljava/awt/Color;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusLinearGradientBrushData;->blendColors:[Ljava/awt/Color;

    return-void
.end method

.method private synthetic lambda$init$2([F)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusLinearGradientBrushData;->positionsV:[F

    return-void
.end method

.method private synthetic lambda$init$3([F)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusLinearGradientBrushData;->blendFactorsV:[F

    return-void
.end method

.method private synthetic lambda$init$4([F)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusLinearGradientBrushData;->positionsH:[F

    return-void
.end method

.method private synthetic lambda$init$5([F)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusLinearGradientBrushData;->blendFactorsH:[F

    return-void
.end method

.method public static synthetic m(Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusLinearGradientBrushData;[F)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusLinearGradientBrushData;->lambda$init$5([F)V

    return-void
.end method

.method public static synthetic n(Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusLinearGradientBrushData;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusLinearGradientBrushData;->lambda$getGenericProperties$14()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic o(Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusLinearGradientBrushData;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusLinearGradientBrushData;->lambda$getGenericProperties$17()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic p(Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusLinearGradientBrushData;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusLinearGradientBrushData;->lambda$getGenericProperties$7()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic q(Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusLinearGradientBrushData;[F)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusLinearGradientBrushData;->lambda$init$4([F)V

    return-void
.end method

.method public static synthetic r(Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusLinearGradientBrushData;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusLinearGradientBrushData;->lambda$getGenericProperties$15()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic s(Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusLinearGradientBrushData;[F)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusLinearGradientBrushData;->lambda$init$2([F)V

    return-void
.end method

.method private static setColorProps(Ljava/util/function/Consumer;[FLjava/util/function/Function;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/util/List<",
            "+",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/Float;",
            "Ljava/awt/Color;",
            ">;>;>;[F",
            "Ljava/util/function/Function<",
            "Ljava/lang/Integer;",
            "+",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/Float;",
            "Ljava/awt/Color;",
            ">;>;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    array-length p1, p1

    invoke-static {v0, p1}, Ljava/util/stream/IntStream;->range(II)Ljava/util/stream/IntStream;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/stream/IntStream;->boxed()Ljava/util/stream/Stream;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public static synthetic t(Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusLinearGradientBrushData;[F)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusLinearGradientBrushData;->lambda$init$0([F)V

    return-void
.end method

.method public static synthetic u(Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusLinearGradientBrushData;)Ljava/lang/Number;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusLinearGradientBrushData;->lambda$getGenericProperties$6()Ljava/lang/Number;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public applyObject(Lorg/apache/poi/hemf/draw/HemfGraphics;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/hemf/draw/HemfGraphics;",
            "Ljava/util/List<",
            "+",
            "Lorg/apache/poi/hemf/record/emfplus/HemfPlusObject$EmfPlusObjectData;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lorg/apache/poi/hemf/draw/HemfGraphics;->getProperties()Lorg/apache/poi/hemf/draw/HemfDrawProperties;

    move-result-object p1

    sget-object p2, Lorg/apache/poi/hwmf/record/HwmfBrushStyle;->BS_LINEAR_GRADIENT:Lorg/apache/poi/hwmf/record/HwmfBrushStyle;

    invoke-virtual {p1, p2}, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->setBrushStyle(Lorg/apache/poi/hwmf/record/HwmfBrushStyle;)V

    iget-object p2, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusLinearGradientBrushData;->rect:Ljava/awt/geom/Rectangle2D;

    invoke-virtual {p1, p2}, Lorg/apache/poi/hemf/draw/HemfDrawProperties;->setBrushRect(Ljava/awt/geom/Rectangle2D;)V

    iget-object p2, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusLinearGradientBrushData;->blendTransform:Ljava/awt/geom/AffineTransform;

    invoke-virtual {p1, p2}, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->setBrushTransform(Ljava/awt/geom/AffineTransform;)V

    invoke-direct {p0}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusLinearGradientBrushData;->isPreset()Z

    move-result p2

    if-eqz p2, :cond_0

    new-instance p2, Lcom/sunia/HTREnginev2/lmh;

    invoke-direct {p2, p1}, Lcom/sunia/HTREnginev2/lmh;-><init>(Lorg/apache/poi/hemf/draw/HemfDrawProperties;)V

    iget-object v0, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusLinearGradientBrushData;->positions:[F

    new-instance v1, Lcom/sunia/HTREnginev2/mmh;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/mmh;-><init>(Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusLinearGradientBrushData;)V

    invoke-static {p2, v0, v1}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusLinearGradientBrushData;->setColorProps(Ljava/util/function/Consumer;[FLjava/util/function/Function;)V

    goto :goto_0

    :cond_0
    new-instance p2, Lcom/sunia/HTREnginev2/lmh;

    invoke-direct {p2, p1}, Lcom/sunia/HTREnginev2/lmh;-><init>(Lorg/apache/poi/hemf/draw/HemfDrawProperties;)V

    iget-object v0, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusLinearGradientBrushData;->positionsH:[F

    new-instance v1, Lcom/sunia/HTREnginev2/nmh;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/nmh;-><init>(Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusLinearGradientBrushData;)V

    invoke-static {p2, v0, v1}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusLinearGradientBrushData;->setColorProps(Ljava/util/function/Consumer;[FLjava/util/function/Function;)V

    :goto_0
    new-instance p2, Lcom/sunia/HTREnginev2/omh;

    invoke-direct {p2, p1}, Lcom/sunia/HTREnginev2/omh;-><init>(Lorg/apache/poi/hemf/draw/HemfDrawProperties;)V

    iget-object v0, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusLinearGradientBrushData;->positionsV:[F

    new-instance v1, Lcom/sunia/HTREnginev2/pmh;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/pmh;-><init>(Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusLinearGradientBrushData;)V

    invoke-static {p2, v0, v1}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusLinearGradientBrushData;->setColorProps(Ljava/util/function/Consumer;[FLjava/util/function/Function;)V

    invoke-direct {p0}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusLinearGradientBrushData;->isPreset()Z

    move-result p2

    if-nez p2, :cond_1

    invoke-direct {p0}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusLinearGradientBrushData;->isBlendH()Z

    move-result p2

    if-nez p2, :cond_1

    invoke-direct {p0}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusLinearGradientBrushData;->isBlendV()Z

    move-result p2

    if-nez p2, :cond_1

    const/4 p2, 0x2

    new-array p2, p2, [Ljava/util/Map$Entry;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusLinearGradientBrushData;->startColor:Ljava/awt/Color;

    invoke-static {v0, v1}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusLinearGradientBrushData;->kv(Ljava/lang/Float;Ljava/awt/Color;)Ljava/util/Map$Entry;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p2, v1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iget-object p0, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusLinearGradientBrushData;->endColor:Ljava/awt/Color;

    invoke-static {v0, p0}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusLinearGradientBrushData;->kv(Ljava/lang/Float;Ljava/awt/Color;)Ljava/util/Map$Entry;

    move-result-object p0

    const/4 v0, 0x1

    aput-object p0, p2, v0

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {p1, p0}, Lorg/apache/poi/hemf/draw/HemfDrawProperties;->setBrushColorsH(Ljava/util/List;)V

    :cond_1
    return-void
.end method

.method public applyPen(Lorg/apache/poi/hemf/draw/HemfGraphics;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/hemf/draw/HemfGraphics;",
            "Ljava/util/List<",
            "+",
            "Lorg/apache/poi/hemf/record/emfplus/HemfPlusObject$EmfPlusObjectData;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public getGenericProperties()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/function/Supplier<",
            "*>;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    new-instance v1, Lcom/sunia/HTREnginev2/imh;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/imh;-><init>(Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusLinearGradientBrushData;)V

    sget-object v2, Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusLinearGradientBrushData;->FLAG_MASKS:[I

    sget-object v3, Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusLinearGradientBrushData;->FLAG_NAMES:[Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lorg/apache/poi/util/GenericRecordUtil;->getBitsAsString(Ljava/util/function/Supplier;[I[Ljava/lang/String;)Ljava/util/function/Supplier;

    move-result-object v1

    const-string v2, "flags"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/ymh;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/ymh;-><init>(Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusLinearGradientBrushData;)V

    const-string v2, "wrapMode"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/zmh;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/zmh;-><init>(Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusLinearGradientBrushData;)V

    const-string v2, "rect"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/anh;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/anh;-><init>(Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusLinearGradientBrushData;)V

    const-string v2, "startColor"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/bnh;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/bnh;-><init>(Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusLinearGradientBrushData;)V

    const-string v2, "endColor"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/cnh;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/cnh;-><init>(Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusLinearGradientBrushData;)V

    const-string v2, "blendTransform"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/dnh;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/dnh;-><init>(Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusLinearGradientBrushData;)V

    const-string v2, "positions"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/enh;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/enh;-><init>(Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusLinearGradientBrushData;)V

    const-string v2, "blendColors"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/jmh;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/jmh;-><init>(Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusLinearGradientBrushData;)V

    const-string v2, "positionsV"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/kmh;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/kmh;-><init>(Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusLinearGradientBrushData;)V

    const-string v2, "blendFactorsV"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/tmh;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/tmh;-><init>(Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusLinearGradientBrushData;)V

    const-string v2, "positionsH"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/xmh;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/xmh;-><init>(Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusLinearGradientBrushData;)V

    const-string p0, "blendFactorsH"

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getGenericRecordType()Ljava/lang/Enum;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusLinearGradientBrushData;->getGenericRecordType()Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusBrushType;

    move-result-object p0

    return-object p0
.end method

.method public getGenericRecordType()Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusBrushType;
    .locals 0

    .line 2
    sget-object p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusBrushType;->LINEAR_GRADIENT:Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusBrushType;

    return-object p0
.end method

.method public init(Lorg/apache/poi/util/LittleEndianInputStream;J)J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readInt()I

    move-result p2

    iput p2, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusLinearGradientBrushData;->dataFlags:I

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readInt()I

    move-result p2

    invoke-static {p2}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusWrapMode;->valueOf(I)Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusWrapMode;

    move-result-object p2

    iput-object p2, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusLinearGradientBrushData;->wrapMode:Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusWrapMode;

    iget-object p2, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusLinearGradientBrushData;->rect:Ljava/awt/geom/Rectangle2D;

    invoke-static {p1, p2}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusDraw;->readRectF(Lorg/apache/poi/util/LittleEndianInputStream;Ljava/awt/geom/Rectangle2D;)I

    move-result p2

    int-to-long p2, p2

    const-wide/16 v0, 0x8

    add-long/2addr p2, v0

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readInt()I

    move-result v0

    invoke-static {v0}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusDraw;->readARGB(I)Ljava/awt/Color;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusLinearGradientBrushData;->startColor:Ljava/awt/Color;

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readInt()I

    move-result v0

    invoke-static {v0}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusDraw;->readARGB(I)Ljava/awt/Color;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusLinearGradientBrushData;->endColor:Ljava/awt/Color;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lorg/apache/poi/util/LittleEndianInputStream;->skipFully(I)V

    const-wide/16 v0, 0x10

    add-long/2addr p2, v0

    sget-object v0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusBrushData;->TRANSFORM:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusLinearGradientBrushData;->dataFlags:I

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/awt/geom/AffineTransform;

    invoke-direct {v0}, Ljava/awt/geom/AffineTransform;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusLinearGradientBrushData;->blendTransform:Ljava/awt/geom/AffineTransform;

    invoke-static {p1, v0}, Lorg/apache/poi/hemf/record/emf/HemfFill;->readXForm(Lorg/apache/poi/util/LittleEndianInputStream;Ljava/awt/geom/AffineTransform;)I

    move-result v0

    int-to-long v0, v0

    add-long/2addr p2, v0

    :cond_0
    invoke-direct {p0}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusLinearGradientBrushData;->isPreset()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusLinearGradientBrushData;->isBlendH()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusLinearGradientBrushData;->isBlendV()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/io/IOException;

    const-string p1, "invalid combination of preset colors and blend factors v/h"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_0
    invoke-direct {p0}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusLinearGradientBrushData;->isPreset()Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_3

    new-instance v0, Lcom/sunia/HTREnginev2/qmh;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/qmh;-><init>(Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusLinearGradientBrushData;)V

    new-instance v3, Lcom/sunia/HTREnginev2/rmh;

    invoke-direct {v3, p0}, Lcom/sunia/HTREnginev2/rmh;-><init>(Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusLinearGradientBrushData;)V

    invoke-static {p1, v0, v3}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush;->access$000(Lorg/apache/poi/util/LittleEndianInputStream;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)I

    move-result v0

    int-to-long v3, v0

    goto :goto_1

    :cond_3
    move-wide v3, v1

    :goto_1
    add-long/2addr p2, v3

    invoke-direct {p0}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusLinearGradientBrushData;->isBlendV()Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Lcom/sunia/HTREnginev2/smh;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/smh;-><init>(Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusLinearGradientBrushData;)V

    new-instance v3, Lcom/sunia/HTREnginev2/umh;

    invoke-direct {v3, p0}, Lcom/sunia/HTREnginev2/umh;-><init>(Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusLinearGradientBrushData;)V

    invoke-static {p1, v0, v3}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush;->access$100(Lorg/apache/poi/util/LittleEndianInputStream;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)I

    move-result v0

    int-to-long v3, v0

    goto :goto_2

    :cond_4
    move-wide v3, v1

    :goto_2
    add-long/2addr p2, v3

    invoke-direct {p0}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusLinearGradientBrushData;->isBlendH()Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Lcom/sunia/HTREnginev2/vmh;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/vmh;-><init>(Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusLinearGradientBrushData;)V

    new-instance v1, Lcom/sunia/HTREnginev2/wmh;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/wmh;-><init>(Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusLinearGradientBrushData;)V

    invoke-static {p1, v0, v1}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush;->access$100(Lorg/apache/poi/util/LittleEndianInputStream;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)I

    move-result p0

    int-to-long v1, p0

    :cond_5
    add-long/2addr p2, v1

    return-wide p2
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lorg/apache/poi/util/GenericRecordJsonWriter;->marshal(Lorg/apache/poi/common/usermodel/GenericRecord;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
