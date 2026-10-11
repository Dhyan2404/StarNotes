.class Lcom/trans/android/hb/StyleGraphics;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field ascent:F

.field defaultDescent:F

.field descent:F

.field extra:F

.field fontSize:F


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public calculate(Lcom/trans/android/AndroidGraphics2D;Ljava/lang/String;F)V
    .locals 1

    .line 18
    invoke-virtual {p0}, Lcom/trans/android/hb/StyleGraphics;->reset()V

    .line 19
    invoke-virtual {p1}, Lcom/trans/android/AndroidGraphics2D;->getFont()Ljava/awt/Font;

    move-result-object p1

    .line 20
    invoke-virtual {p1}, Ljava/awt/Font;->getSize2D()F

    move-result v0

    mul-float/2addr v0, p3

    iput v0, p0, Lcom/trans/android/hb/StyleGraphics;->fontSize:F

    .line 21
    invoke-static {p1, p2}, Lcom/trans/android/font/FontManager;->getHBTypeface(Ljava/awt/Font;Ljava/lang/String;)Lcom/onyx/harfbuzz/graphics/HBTypeface;

    move-result-object p1

    .line 22
    iget p2, p0, Lcom/trans/android/hb/StyleGraphics;->fontSize:F

    invoke-static {p1, p2}, Lcom/trans/android/hb/HBUtils;->getAscent(Lcom/onyx/harfbuzz/graphics/HBTypeface;F)F

    move-result p2

    iput p2, p0, Lcom/trans/android/hb/StyleGraphics;->ascent:F

    .line 23
    iget p2, p0, Lcom/trans/android/hb/StyleGraphics;->fontSize:F

    invoke-static {p1, p2}, Lcom/trans/android/hb/HBUtils;->getDescent(Lcom/onyx/harfbuzz/graphics/HBTypeface;F)F

    move-result p1

    iput p1, p0, Lcom/trans/android/hb/StyleGraphics;->descent:F

    .line 24
    iget p2, p0, Lcom/trans/android/hb/StyleGraphics;->fontSize:F

    const p3, 0x3e19999a    # 0.15f

    mul-float/2addr p2, p3

    iput p2, p0, Lcom/trans/android/hb/StyleGraphics;->defaultDescent:F

    .line 25
    invoke-static {p1, p2}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lcom/trans/android/hb/StyleGraphics;->descent:F

    .line 26
    iget p1, p0, Lcom/trans/android/hb/StyleGraphics;->ascent:F

    iget p2, p0, Lcom/trans/android/hb/StyleGraphics;->fontSize:F

    iget p3, p0, Lcom/trans/android/hb/StyleGraphics;->defaultDescent:F

    sub-float/2addr p2, p3

    invoke-static {p1, p2}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lcom/trans/android/hb/StyleGraphics;->ascent:F

    .line 27
    iget p1, p0, Lcom/trans/android/hb/StyleGraphics;->extra:F

    iget p2, p0, Lcom/trans/android/hb/StyleGraphics;->descent:F

    iget p3, p0, Lcom/trans/android/hb/StyleGraphics;->defaultDescent:F

    sub-float/2addr p2, p3

    invoke-static {p1, p2}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lcom/trans/android/hb/StyleGraphics;->extra:F

    return-void
.end method

.method public calculate(Lcom/trans/android/AndroidGraphics2D;Ljava/util/List;Ljava/lang/String;F)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/trans/android/AndroidGraphics2D;",
            "Ljava/util/List<",
            "Lcom/trans/android/common/AttributedData;",
            ">;",
            "Ljava/lang/String;",
            "F)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/trans/android/hb/StyleGraphics;->reset()V

    .line 2
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const v1, 0x3e19999a    # 0.15f

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/trans/android/common/AttributedData;

    .line 3
    invoke-virtual {v0}, Lcom/trans/android/common/AttributedData;->getAttributes()Ljava/util/Map;

    move-result-object v2

    .line 4
    invoke-virtual {v0}, Lcom/trans/android/common/AttributedData;->getBeginIndex()I

    move-result v3

    .line 5
    invoke-virtual {v0}, Lcom/trans/android/common/AttributedData;->getEndIndex()I

    move-result v0

    .line 6
    invoke-virtual {p3, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 7
    invoke-virtual {p1}, Lcom/trans/android/AndroidGraphics2D;->getFont()Ljava/awt/Font;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/trans/android/util/BridgeUtils;->getFontFromAttributedMap(Ljava/util/Map;Ljava/awt/Font;)Ljava/awt/Font;

    move-result-object v2

    .line 8
    invoke-virtual {v2}, Ljava/awt/Font;->getSize2D()F

    move-result v3

    mul-float/2addr v3, p4

    .line 9
    iget v4, p0, Lcom/trans/android/hb/StyleGraphics;->fontSize:F

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    iput v4, p0, Lcom/trans/android/hb/StyleGraphics;->fontSize:F

    .line 10
    invoke-static {v2, v0}, Lcom/trans/android/font/FontManager;->getHBTypeface(Ljava/awt/Font;Ljava/lang/String;)Lcom/onyx/harfbuzz/graphics/HBTypeface;

    move-result-object v0

    .line 11
    iget v2, p0, Lcom/trans/android/hb/StyleGraphics;->ascent:F

    invoke-static {v0, v3}, Lcom/trans/android/hb/HBUtils;->getAscent(Lcom/onyx/harfbuzz/graphics/HBTypeface;F)F

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, p0, Lcom/trans/android/hb/StyleGraphics;->ascent:F

    .line 12
    invoke-static {v0, v3}, Lcom/trans/android/hb/HBUtils;->getDescent(Lcom/onyx/harfbuzz/graphics/HBTypeface;F)F

    move-result v0

    .line 13
    iget v2, p0, Lcom/trans/android/hb/StyleGraphics;->extra:F

    mul-float/2addr v3, v1

    sub-float v1, v0, v3

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, p0, Lcom/trans/android/hb/StyleGraphics;->extra:F

    .line 14
    iget v1, p0, Lcom/trans/android/hb/StyleGraphics;->descent:F

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/trans/android/hb/StyleGraphics;->descent:F

    goto :goto_0

    .line 15
    :cond_0
    iget p1, p0, Lcom/trans/android/hb/StyleGraphics;->fontSize:F

    mul-float/2addr p1, v1

    iput p1, p0, Lcom/trans/android/hb/StyleGraphics;->defaultDescent:F

    .line 16
    iget p2, p0, Lcom/trans/android/hb/StyleGraphics;->descent:F

    invoke-static {p2, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lcom/trans/android/hb/StyleGraphics;->descent:F

    .line 17
    iget p1, p0, Lcom/trans/android/hb/StyleGraphics;->ascent:F

    iget p2, p0, Lcom/trans/android/hb/StyleGraphics;->fontSize:F

    iget p3, p0, Lcom/trans/android/hb/StyleGraphics;->defaultDescent:F

    sub-float/2addr p2, p3

    invoke-static {p1, p2}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lcom/trans/android/hb/StyleGraphics;->ascent:F

    return-void
.end method

.method public drawBackground(Lcom/trans/android/AndroidGraphics2D;Ljava/util/Map;Landroid/graphics/Paint;Lcom/onyx/harfbuzz/collections/FloatList;FFFFF)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/trans/android/AndroidGraphics2D;",
            "Ljava/util/Map<",
            "Ljava/text/AttributedCharacterIterator$Attribute;",
            "Ljava/lang/Object;",
            ">;",
            "Landroid/graphics/Paint;",
            "Lcom/onyx/harfbuzz/collections/FloatList;",
            "FFFFF)V"
        }
    .end annotation

    sget-object v0, Ljava/awt/font/TextAttribute;->BACKGROUND:Ljava/awt/font/TextAttribute;

    invoke-static {p2, v0}, Lcom/trans/android/util/BridgeUtils;->getValue(Ljava/util/Map;Ljava/awt/font/TextAttribute;)Ljava/lang/Object;

    move-result-object p2

    instance-of v0, p2, Ljava/awt/Color;

    if-eqz v0, :cond_2

    check-cast p2, Ljava/awt/Color;

    invoke-static {p4}, Lcom/trans/android/hb/HBUtils;->getSum(Lcom/onyx/harfbuzz/collections/FloatList;)F

    move-result p4

    invoke-virtual {p3}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    invoke-virtual {p2}, Ljava/awt/Color;->getRGB()I

    move-result p2

    invoke-virtual {p3, p2}, Landroid/graphics/Paint;->setColor(I)V

    const/4 p2, 0x0

    cmpl-float v1, p9, p2

    const v2, 0x3f333333    # 0.7f

    if-lez v1, :cond_0

    iget p2, p0, Lcom/trans/android/hb/StyleGraphics;->ascent:F

    sub-float p2, p6, p2

    iget p7, p0, Lcom/trans/android/hb/StyleGraphics;->extra:F

    sub-float/2addr p2, p7

    mul-float/2addr p8, v2

    add-float/2addr p8, p9

    iget p0, p0, Lcom/trans/android/hb/StyleGraphics;->descent:F

    invoke-static {p8, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    :goto_0
    add-float/2addr p6, p0

    goto :goto_1

    :cond_0
    cmpg-float p2, p9, p2

    if-gez p2, :cond_1

    mul-float/2addr p7, v2

    sub-float/2addr p7, p9

    iget p2, p0, Lcom/trans/android/hb/StyleGraphics;->ascent:F

    iget p8, p0, Lcom/trans/android/hb/StyleGraphics;->extra:F

    add-float/2addr p2, p8

    invoke-static {p7, p2}, Ljava/lang/Math;->max(FF)F

    move-result p2

    sub-float p2, p6, p2

    iget p0, p0, Lcom/trans/android/hb/StyleGraphics;->descent:F

    goto :goto_0

    :cond_1
    iget p2, p0, Lcom/trans/android/hb/StyleGraphics;->ascent:F

    sub-float p2, p6, p2

    iget p7, p0, Lcom/trans/android/hb/StyleGraphics;->extra:F

    sub-float/2addr p2, p7

    iget p0, p0, Lcom/trans/android/hb/StyleGraphics;->descent:F

    goto :goto_0

    :goto_1
    new-instance p0, Landroid/graphics/RectF;

    float-to-double p7, p2

    invoke-static {p7, p8}, Ljava/lang/Math;->floor(D)D

    move-result-wide p7

    double-to-float p2, p7

    add-float/2addr p4, p5

    invoke-direct {p0, p5, p2, p4, p6}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p1}, Lcom/trans/android/AndroidGraphics2D;->getCanvas()Landroid/graphics/Canvas;

    move-result-object p1

    invoke-virtual {p1, p0, p3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setColor(I)V

    :cond_2
    return-void
.end method

.method public drawStrikethrough(Lcom/trans/android/AndroidGraphics2D;Ljava/util/Map;Landroid/graphics/Paint;FFFFF)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/trans/android/AndroidGraphics2D;",
            "Ljava/util/Map<",
            "Ljava/text/AttributedCharacterIterator$Attribute;",
            "Ljava/lang/Object;",
            ">;",
            "Landroid/graphics/Paint;",
            "FFFFF)V"
        }
    .end annotation

    sget-object v0, Ljava/awt/font/TextAttribute;->STRIKETHROUGH_ON:Ljava/lang/Boolean;

    sget-object v1, Ljava/awt/font/TextAttribute;->STRIKETHROUGH:Ljava/awt/font/TextAttribute;

    invoke-static {p2, v1}, Lcom/trans/android/util/BridgeUtils;->getValue(Ljava/util/Map;Ljava/awt/font/TextAttribute;)Ljava/lang/Object;

    move-result-object p2

    if-ne v0, p2, :cond_1

    invoke-virtual {p3, p5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/4 p2, 0x0

    cmpl-float p2, p8, p2

    const/high16 p5, 0x40000000    # 2.0f

    if-eqz p2, :cond_0

    iget p2, p0, Lcom/trans/android/hb/StyleGraphics;->defaultDescent:F

    iget p0, p0, Lcom/trans/android/hb/StyleGraphics;->ascent:F

    div-float/2addr p0, p5

    sub-float/2addr p2, p0

    const p0, 0x3f333333    # 0.7f

    mul-float/2addr p2, p0

    add-float/2addr p7, p2

    add-float/2addr p7, p8

    float-to-double p7, p7

    invoke-static {p7, p8}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p7

    goto :goto_0

    :cond_0
    iget p2, p0, Lcom/trans/android/hb/StyleGraphics;->defaultDescent:F

    add-float/2addr p7, p2

    iget p0, p0, Lcom/trans/android/hb/StyleGraphics;->ascent:F

    div-float/2addr p0, p5

    sub-float/2addr p7, p0

    float-to-double p7, p7

    invoke-static {p7, p8}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p7

    :goto_0
    double-to-float p0, p7

    move v4, p0

    invoke-virtual {p1}, Lcom/trans/android/AndroidGraphics2D;->getCanvas()Landroid/graphics/Canvas;

    move-result-object v0

    add-float v3, p6, p4

    move v1, p6

    move v2, v4

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_1
    return-void
.end method

.method public drawUnderline(Lcom/trans/android/AndroidGraphics2D;Ljava/util/Map;Landroid/graphics/Paint;FFFFF)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/trans/android/AndroidGraphics2D;",
            "Ljava/util/Map<",
            "Ljava/text/AttributedCharacterIterator$Attribute;",
            "Ljava/lang/Object;",
            ">;",
            "Landroid/graphics/Paint;",
            "FFFFF)V"
        }
    .end annotation

    sget-object v0, Ljava/awt/font/TextAttribute;->UNDERLINE_ON:Ljava/lang/Integer;

    sget-object v1, Ljava/awt/font/TextAttribute;->UNDERLINE:Ljava/awt/font/TextAttribute;

    invoke-static {p2, v1}, Lcom/trans/android/util/BridgeUtils;->getValue(Ljava/util/Map;Ljava/awt/font/TextAttribute;)Ljava/lang/Object;

    move-result-object p2

    if-ne v0, p2, :cond_1

    invoke-virtual {p3, p5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/4 p2, 0x0

    cmpl-float p2, p8, p2

    if-lez p2, :cond_0

    iget p0, p0, Lcom/trans/android/hb/StyleGraphics;->defaultDescent:F

    const p2, 0x3f333333    # 0.7f

    mul-float/2addr p0, p2

    add-float/2addr p7, p0

    add-float/2addr p7, p8

    float-to-double p7, p7

    invoke-static {p7, p8}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p7

    goto :goto_0

    :cond_0
    iget p0, p0, Lcom/trans/android/hb/StyleGraphics;->defaultDescent:F

    add-float/2addr p7, p0

    float-to-double p7, p7

    invoke-static {p7, p8}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p7

    :goto_0
    double-to-float p0, p7

    move v4, p0

    invoke-virtual {p1}, Lcom/trans/android/AndroidGraphics2D;->getCanvas()Landroid/graphics/Canvas;

    move-result-object v0

    add-float v3, p6, p4

    move v1, p6

    move v2, v4

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_1
    return-void
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/trans/android/hb/StyleGraphics;->fontSize:F

    iput v0, p0, Lcom/trans/android/hb/StyleGraphics;->ascent:F

    iput v0, p0, Lcom/trans/android/hb/StyleGraphics;->descent:F

    iput v0, p0, Lcom/trans/android/hb/StyleGraphics;->extra:F

    iput v0, p0, Lcom/trans/android/hb/StyleGraphics;->defaultDescent:F

    return-void
.end method
