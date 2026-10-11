.class public Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusTextureBrushData;,
        Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusPathGradientBrushData;,
        Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusLinearGradientBrushData;,
        Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusHatchBrushData;,
        Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusSolidBrushData;,
        Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusBrush;,
        Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusBrushData;,
        Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusHatchStyle;,
        Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusBrushType;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a([ILjava/util/function/Consumer;[F)V
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush;->lambda$readFactors$1([ILjava/util/function/Consumer;[F)V

    return-void
.end method

.method public static synthetic access$000(Lorg/apache/poi/util/LittleEndianInputStream;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)I
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush;->readColors(Lorg/apache/poi/util/LittleEndianInputStream;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)I

    move-result p0

    return p0
.end method

.method public static synthetic access$100(Lorg/apache/poi/util/LittleEndianInputStream;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)I
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush;->readFactors(Lorg/apache/poi/util/LittleEndianInputStream;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)I

    move-result p0

    return p0
.end method

.method public static synthetic b([ILjava/util/function/Consumer;[F)V
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush;->lambda$readColors$0([ILjava/util/function/Consumer;[F)V

    return-void
.end method

.method private static synthetic lambda$readColors$0([ILjava/util/function/Consumer;[F)V
    .locals 2

    array-length v0, p2

    const/4 v1, 0x0

    aput v0, p0, v1

    invoke-interface {p1, p2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method private static synthetic lambda$readFactors$1([ILjava/util/function/Consumer;[F)V
    .locals 2

    array-length v0, p2

    const/4 v1, 0x0

    aput v0, p0, v1

    invoke-interface {p1, p2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method private static readColors(Lorg/apache/poi/util/LittleEndianInputStream;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/util/LittleEndianInputStream;",
            "Ljava/util/function/Consumer<",
            "[F>;",
            "Ljava/util/function/Consumer<",
            "[",
            "Ljava/awt/Color;",
            ">;)I"
        }
    .end annotation

    const/4 v0, 0x0

    filled-new-array {v0}, [I

    move-result-object v1

    new-instance v2, Lcom/sunia/HTREnginev2/wlh;

    invoke-direct {v2, v1, p1}, Lcom/sunia/HTREnginev2/wlh;-><init>([ILjava/util/function/Consumer;)V

    invoke-static {p0, v2}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush;->readPositions(Lorg/apache/poi/util/LittleEndianInputStream;Ljava/util/function/Consumer;)I

    move-result p1

    aget v1, v1, v0

    new-array v2, v1, [Ljava/awt/Color;

    :goto_0
    if-ge v0, v1, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/util/LittleEndianInputStream;->readInt()I

    move-result v3

    invoke-static {v3}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusDraw;->readARGB(I)Ljava/awt/Color;

    move-result-object v3

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-interface {p2, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    mul-int/lit8 v1, v1, 0x4

    add-int/2addr p1, v1

    return p1
.end method

.method private static readFactors(Lorg/apache/poi/util/LittleEndianInputStream;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/util/LittleEndianInputStream;",
            "Ljava/util/function/Consumer<",
            "[F>;",
            "Ljava/util/function/Consumer<",
            "[F>;)I"
        }
    .end annotation

    const/4 v0, 0x0

    filled-new-array {v0}, [I

    move-result-object v1

    new-instance v2, Lcom/sunia/HTREnginev2/xlh;

    invoke-direct {v2, v1, p1}, Lcom/sunia/HTREnginev2/xlh;-><init>([ILjava/util/function/Consumer;)V

    invoke-static {p0, v2}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush;->readPositions(Lorg/apache/poi/util/LittleEndianInputStream;Ljava/util/function/Consumer;)I

    move-result p1

    aget v1, v1, v0

    new-array v2, v1, [F

    :goto_0
    if-ge v0, v1, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/util/LittleEndianInputStream;->readFloat()F

    move-result v3

    aput v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-interface {p2, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    mul-int/lit8 v1, v1, 0x4

    add-int/2addr p1, v1

    return p1
.end method

.method private static readPositions(Lorg/apache/poi/util/LittleEndianInputStream;Ljava/util/function/Consumer;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/util/LittleEndianInputStream;",
            "Ljava/util/function/Consumer<",
            "[F>;)I"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/poi/util/LittleEndianInputStream;->readInt()I

    move-result v0

    new-array v1, v0, [F

    const/4 v2, 0x4

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/util/LittleEndianInputStream;->readFloat()F

    move-result v4

    aput v4, v1, v3

    add-int/lit8 v2, v2, 0x4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return v2
.end method
