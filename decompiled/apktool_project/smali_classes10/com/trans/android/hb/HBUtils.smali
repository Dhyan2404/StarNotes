.class public Lcom/trans/android/hb/HBUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "HBUtils"


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static copyTo(Lcom/onyx/harfbuzz/collections/FloatList;Lcom/onyx/harfbuzz/collections/IntList;[FIZ)V
    .locals 4

    invoke-virtual {p1}, Lcom/onyx/harfbuzz/collections/IntList;->size()I

    move-result v0

    invoke-virtual {p0}, Lcom/onyx/harfbuzz/collections/FloatList;->size()I

    move-result v1

    if-ne v1, v0, :cond_0

    invoke-virtual {p0, p2, p3}, Lcom/onyx/harfbuzz/collections/FloatList;->copyTo([FI)V

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    add-int v2, p3, v1

    invoke-virtual {p1, v1}, Lcom/onyx/harfbuzz/collections/IntList;->get(I)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/onyx/harfbuzz/collections/FloatList;->get(I)F

    move-result v3

    aput v3, p2, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-eqz p4, :cond_2

    add-int/2addr v0, p3

    :goto_2
    if-ge p3, v0, :cond_2

    aget p0, p2, p3

    const p1, 0x3f333333    # 0.7f

    mul-float/2addr p0, p1

    aput p0, p2, p3

    add-int/lit8 p3, p3, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method public static enableHBDraw()Z
    .locals 2

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/trans/android/font/FontManager;->getFontProvider(Z)Lcom/trans/android/font/FontProvider;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static getAscent(Lcom/onyx/harfbuzz/graphics/HBTypeface;F)F
    .locals 1

    invoke-virtual {p0}, Lcom/onyx/harfbuzz/graphics/HBTypeface;->getUnitsPerEm()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p1, v0

    invoke-virtual {p0}, Lcom/onyx/harfbuzz/graphics/HBTypeface;->getAscent()I

    move-result p0

    int-to-float p0, p0

    mul-float/2addr p1, p0

    return p1
.end method

.method public static getDescent(Lcom/onyx/harfbuzz/graphics/HBTypeface;F)F
    .locals 1

    invoke-virtual {p0}, Lcom/onyx/harfbuzz/graphics/HBTypeface;->getUnitsPerEm()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p1, v0

    invoke-virtual {p0}, Lcom/onyx/harfbuzz/graphics/HBTypeface;->getDescent()I

    move-result p0

    int-to-float p0, p0

    mul-float/2addr p1, p0

    return p1
.end method

.method public static getHeight(Lcom/onyx/harfbuzz/graphics/HBTypeface;F)F
    .locals 2

    invoke-virtual {p0}, Lcom/onyx/harfbuzz/graphics/HBTypeface;->getUnitsPerEm()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p1, v0

    invoke-virtual {p0}, Lcom/onyx/harfbuzz/graphics/HBTypeface;->getDescent()I

    move-result v0

    invoke-virtual {p0}, Lcom/onyx/harfbuzz/graphics/HBTypeface;->getAscent()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/onyx/harfbuzz/graphics/HBTypeface;->getLeading()I

    move-result p0

    add-int/2addr v0, p0

    int-to-float p0, v0

    mul-float/2addr p1, p0

    return p1
.end method

.method public static getLeading(Lcom/onyx/harfbuzz/graphics/HBTypeface;F)F
    .locals 1

    invoke-virtual {p0}, Lcom/onyx/harfbuzz/graphics/HBTypeface;->getUnitsPerEm()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p1, v0

    invoke-virtual {p0}, Lcom/onyx/harfbuzz/graphics/HBTypeface;->getLeading()I

    move-result p0

    int-to-float p0, p0

    mul-float/2addr p1, p0

    return p1
.end method

.method public static getMetrics(Ljava/text/AttributedCharacterIterator;[F[F)V
    .locals 15

    new-instance v0, Lcom/onyx/harfbuzz/sfnt/ShapingEngine;

    invoke-direct {v0}, Lcom/onyx/harfbuzz/sfnt/ShapingEngine;-><init>()V

    sget-object v1, Lcom/onyx/harfbuzz/sfnt/WritingDirection;->LEFT_TO_RIGHT:Lcom/onyx/harfbuzz/sfnt/WritingDirection;

    invoke-virtual {v0, v1}, Lcom/onyx/harfbuzz/sfnt/ShapingEngine;->setWritingDirection(Lcom/onyx/harfbuzz/sfnt/WritingDirection;)V

    invoke-static {p0}, Lcom/trans/android/util/BridgeUtils;->convertCharacterIterator(Ljava/text/CharacterIterator;)Ljava/lang/String;

    move-result-object v1

    move-object v2, p0

    invoke-static {p0, v1}, Lcom/trans/android/util/BridgeUtils;->collectAttributeData(Ljava/text/AttributedCharacterIterator;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    move v6, v5

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    const/4 v8, 0x0

    const v9, 0x3e19999a    # 0.15f

    if-eqz v7, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/trans/android/common/AttributedData;

    invoke-virtual {v7}, Lcom/trans/android/common/AttributedData;->getAttributes()Ljava/util/Map;

    move-result-object v10

    invoke-virtual {v7}, Lcom/trans/android/common/AttributedData;->getBeginIndex()I

    move-result v11

    invoke-virtual {v7}, Lcom/trans/android/common/AttributedData;->getEndIndex()I

    move-result v7

    invoke-virtual {v1, v11, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    sget-object v12, Ljava/awt/Font;->DEFAULT_FONT:Ljava/awt/Font;

    invoke-static {v10, v12}, Lcom/trans/android/util/BridgeUtils;->getFontFromAttributedMap(Ljava/util/Map;Ljava/awt/Font;)Ljava/awt/Font;

    move-result-object v12

    invoke-virtual {v12}, Ljava/awt/Font;->getSize2D()F

    move-result v13

    invoke-static {v4, v13}, Ljava/lang/Math;->max(FF)F

    move-result v4

    invoke-static {v12, v7}, Lcom/trans/android/font/FontManager;->getHBTypeface(Ljava/awt/Font;Ljava/lang/String;)Lcom/onyx/harfbuzz/graphics/HBTypeface;

    move-result-object v12

    invoke-virtual {v0, v12}, Lcom/onyx/harfbuzz/sfnt/ShapingEngine;->setTypeface(Lcom/onyx/harfbuzz/graphics/HBTypeface;)V

    invoke-virtual {v0, v13}, Lcom/onyx/harfbuzz/sfnt/ShapingEngine;->setTypeSize(F)V

    invoke-static {v12, v13}, Lcom/trans/android/hb/HBUtils;->getAscent(Lcom/onyx/harfbuzz/graphics/HBTypeface;F)F

    move-result v14

    invoke-static {v3, v14}, Ljava/lang/Math;->max(FF)F

    move-result v3

    invoke-static {v12, v13}, Lcom/trans/android/hb/HBUtils;->getDescent(Lcom/onyx/harfbuzz/graphics/HBTypeface;F)F

    move-result v12

    mul-float/2addr v13, v9

    sub-float v9, v12, v13

    invoke-static {v6, v9}, Ljava/lang/Math;->max(FF)F

    move-result v6

    invoke-static {v5, v12}, Ljava/lang/Math;->max(FF)F

    move-result v5

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v0, v7, v8, v9}, Lcom/onyx/harfbuzz/sfnt/ShapingEngine;->shapeText(Ljava/lang/String;II)Lcom/onyx/harfbuzz/sfnt/ShapingResult;

    move-result-object v7

    invoke-virtual {v7}, Lcom/onyx/harfbuzz/sfnt/ShapingResult;->getGlyphAdvances()Lcom/onyx/harfbuzz/collections/FloatList;

    move-result-object v8

    invoke-virtual {v7}, Lcom/onyx/harfbuzz/sfnt/ShapingResult;->getClusterMap()Lcom/onyx/harfbuzz/collections/IntList;

    move-result-object v9

    invoke-static {v10}, Lcom/trans/android/util/BridgeUtils;->isScript(Ljava/util/Map;)Z

    move-result v10

    move-object/from16 v12, p1

    invoke-static {v8, v9, v12, v11, v10}, Lcom/trans/android/hb/HBUtils;->copyTo(Lcom/onyx/harfbuzz/collections/FloatList;Lcom/onyx/harfbuzz/collections/IntList;[FIZ)V

    invoke-virtual {v7}, Lcom/onyx/harfbuzz/sfnt/ShapingResult;->dispose()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/onyx/harfbuzz/sfnt/ShapingEngine;->dispose()V

    const v0, 0x3f59999a    # 0.85f

    mul-float/2addr v0, v4

    invoke-static {v3, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    mul-float/2addr v4, v9

    invoke-static {v5, v4}, Ljava/lang/Math;->max(FF)F

    move-result v1

    aput v0, p2, v8

    const/4 v0, 0x1

    aput v1, p2, v0

    const/4 v0, 0x2

    aput v6, p2, v0

    return-void
.end method

.method public static getSum(Lcom/onyx/harfbuzz/collections/FloatList;)F
    .locals 4

    invoke-virtual {p0}, Lcom/onyx/harfbuzz/collections/FloatList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    invoke-virtual {p0, v2}, Lcom/onyx/harfbuzz/collections/FloatList;->get(I)F

    move-result v3

    add-float/2addr v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method public static isBold(Lcom/onyx/harfbuzz/graphics/HBTypeface;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/onyx/harfbuzz/graphics/HBTypeface;->getWeight()Lcom/onyx/harfbuzz/graphics/TypeWeight;

    move-result-object p0

    sget-object v0, Lcom/onyx/harfbuzz/graphics/TypeWeight;->SEMI_BOLD:Lcom/onyx/harfbuzz/graphics/TypeWeight;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/onyx/harfbuzz/graphics/TypeWeight;->BOLD:Lcom/onyx/harfbuzz/graphics/TypeWeight;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/onyx/harfbuzz/graphics/TypeWeight;->EXTRA_BOLD:Lcom/onyx/harfbuzz/graphics/TypeWeight;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/onyx/harfbuzz/graphics/TypeWeight;->HEAVY:Lcom/onyx/harfbuzz/graphics/TypeWeight;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static isItalic(Lcom/onyx/harfbuzz/graphics/HBTypeface;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/onyx/harfbuzz/graphics/HBTypeface;->getSlope()Lcom/onyx/harfbuzz/graphics/TypeSlope;

    move-result-object p0

    sget-object v0, Lcom/onyx/harfbuzz/graphics/TypeSlope;->ITALIC:Lcom/onyx/harfbuzz/graphics/TypeSlope;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/onyx/harfbuzz/graphics/TypeSlope;->OBLIQUE:Lcom/onyx/harfbuzz/graphics/TypeSlope;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method
