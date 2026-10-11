.class public Lcom/trans/android/hb/HBGraphics;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field public static final OUTLINES_FONTS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "HBGraphics"


# instance fields
.field private antiAlias:Z

.field private closeAfterDraw:Z

.field private colorTable:[I

.field private engine:Lcom/onyx/harfbuzz/sfnt/ShapingEngine;

.field private glyphAttributes:Lcom/onyx/harfbuzz/graphics/GlyphAttributes;

.field private lineWidth:F

.field private paint:Landroid/graphics/Paint;

.field private styleGraphics:Lcom/trans/android/hb/StyleGraphics;

.field private threshold:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/trans/android/hb/HBGraphics$1;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Lcom/trans/android/hb/HBGraphics$1;-><init>(I)V

    sput-object v0, Lcom/trans/android/hb/HBGraphics;->OUTLINES_FONTS:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/trans/android/hb/HBGraphics;->lineWidth:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/trans/android/hb/HBGraphics;->antiAlias:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/trans/android/hb/HBGraphics;->closeAfterDraw:Z

    return-void
.end method

.method private closeAfterDraw()V
    .locals 1

    iget-boolean v0, p0, Lcom/trans/android/hb/HBGraphics;->closeAfterDraw:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/trans/android/hb/HBGraphics;->close()V

    :cond_0
    return-void
.end method

.method private drawString(Lcom/trans/android/AndroidGraphics2D;Ljava/util/Map;Ljava/lang/String;IIFFF)F
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/trans/android/AndroidGraphics2D;",
            "Ljava/util/Map<",
            "Ljava/text/AttributedCharacterIterator$Attribute;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "IIFFF)F"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v11, p2

    .line 39
    invoke-virtual/range {p1 .. p1}, Lcom/trans/android/AndroidGraphics2D;->getFont()Ljava/awt/Font;

    move-result-object v1

    invoke-static {v11, v1}, Lcom/trans/android/util/BridgeUtils;->getFontFromAttributedMap(Ljava/util/Map;Ljava/awt/Font;)Ljava/awt/Font;

    move-result-object v1

    .line 40
    invoke-virtual/range {p3 .. p5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 41
    invoke-static {v1, v9}, Lcom/trans/android/font/FontManager;->getHBTypeface(Ljava/awt/Font;Ljava/lang/String;)Lcom/onyx/harfbuzz/graphics/HBTypeface;

    move-result-object v2

    .line 42
    invoke-virtual {v1}, Ljava/awt/Font;->getSize2D()F

    move-result v3

    mul-float v3, v3, p8

    move-object/from16 v12, p1

    .line 43
    invoke-direct {v0, v12, v11, v3}, Lcom/trans/android/hb/HBGraphics;->setPaintColorOrShader(Lcom/trans/android/AndroidGraphics2D;Ljava/util/Map;F)V

    .line 44
    invoke-static {v2, v3}, Lcom/trans/android/hb/HBUtils;->getAscent(Lcom/onyx/harfbuzz/graphics/HBTypeface;F)F

    move-result v10

    .line 45
    invoke-static {v2, v3}, Lcom/trans/android/hb/HBUtils;->getDescent(Lcom/onyx/harfbuzz/graphics/HBTypeface;F)F

    move-result v13

    .line 46
    invoke-direct {v0, v11, v10}, Lcom/trans/android/hb/HBGraphics;->getSuperscriptOffset(Ljava/util/Map;F)F

    move-result v14

    const/4 v15, 0x0

    cmpl-float v4, v14, v15

    if-eqz v4, :cond_0

    const v4, 0x3f333333    # 0.7f

    mul-float/2addr v3, v4

    .line 47
    :cond_0
    invoke-direct {v0, v1, v2, v3}, Lcom/trans/android/hb/HBGraphics;->updateGlyphAttributes(Ljava/awt/Font;Lcom/onyx/harfbuzz/graphics/HBTypeface;F)V

    .line 48
    sget-object v8, Lcom/trans/android/hb/HBGraphics;->TAG:Ljava/lang/String;

    .line 49
    invoke-virtual {v1}, Ljava/awt/Font;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Ljava/awt/Font;->getStyle()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1}, Ljava/awt/Font;->getSize2D()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v2}, Lcom/onyx/harfbuzz/graphics/HBTypeface;->getFamilyName()Ljava/lang/String;

    move-result-object v6

    invoke-static/range {p6 .. p6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-static/range {p7 .. p7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    move-object v2, v9

    move-object v15, v8

    move-object v8, v1

    filled-new-array/range {v2 .. v8}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "drawText: %s, font: %s-%d(%.2f), typeface: %s, x: %.2f, y: %.2f"

    .line 50
    invoke-static {v15, v2, v1}, Lcom/onyx/common/util/JLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 51
    iget-object v1, v0, Lcom/trans/android/hb/HBGraphics;->engine:Lcom/onyx/harfbuzz/sfnt/ShapingEngine;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v15, 0x0

    invoke-virtual {v1, v9, v15, v2}, Lcom/onyx/harfbuzz/sfnt/ShapingEngine;->shapeText(Ljava/lang/String;II)Lcom/onyx/harfbuzz/sfnt/ShapingResult;

    move-result-object v16

    .line 52
    invoke-virtual/range {v16 .. v16}, Lcom/onyx/harfbuzz/sfnt/ShapingResult;->getGlyphAdvances()Lcom/onyx/harfbuzz/collections/FloatList;

    move-result-object v9

    .line 53
    invoke-static {}, Lcom/onyx/harfbuzz/graphics/GlyphCache;->getInstance()Lcom/onyx/harfbuzz/graphics/GlyphCache;

    move-result-object v8

    .line 54
    invoke-virtual/range {p1 .. p1}, Lcom/trans/android/AndroidGraphics2D;->getCanvas()Landroid/graphics/Canvas;

    move-result-object v7

    .line 55
    iget-object v1, v0, Lcom/trans/android/hb/HBGraphics;->styleGraphics:Lcom/trans/android/hb/StyleGraphics;

    iget-object v4, v0, Lcom/trans/android/hb/HBGraphics;->paint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object v5, v9

    move/from16 v6, p6

    move-object v15, v7

    move/from16 v7, p7

    move-object v11, v8

    move v8, v10

    move-object v10, v9

    move v9, v13

    move-object v13, v10

    move v10, v14

    invoke-virtual/range {v1 .. v10}, Lcom/trans/android/hb/StyleGraphics;->drawBackground(Lcom/trans/android/AndroidGraphics2D;Ljava/util/Map;Landroid/graphics/Paint;Lcom/onyx/harfbuzz/collections/FloatList;FFFFF)V

    .line 56
    invoke-virtual/range {v16 .. v16}, Lcom/onyx/harfbuzz/sfnt/ShapingResult;->getGlyphIds()Lcom/onyx/harfbuzz/collections/IntList;

    move-result-object v1

    .line 57
    invoke-virtual/range {v16 .. v16}, Lcom/onyx/harfbuzz/sfnt/ShapingResult;->getClusterMap()Lcom/onyx/harfbuzz/collections/IntList;

    move-result-object v2

    .line 58
    invoke-virtual {v2}, Lcom/onyx/harfbuzz/collections/IntList;->size()I

    move-result v3

    const/4 v4, 0x0

    const/4 v10, 0x0

    :goto_0
    if-ge v4, v3, :cond_4

    .line 59
    invoke-virtual {v2, v4}, Lcom/onyx/harfbuzz/collections/IntList;->get(I)I

    move-result v5

    add-int/lit8 v6, v3, -0x1

    if-ne v4, v6, :cond_1

    .line 60
    invoke-virtual {v1}, Lcom/onyx/harfbuzz/collections/IntList;->size()I

    move-result v6

    goto :goto_1

    :cond_1
    add-int/lit8 v6, v4, 0x1

    invoke-virtual {v2, v6}, Lcom/onyx/harfbuzz/collections/IntList;->get(I)I

    move-result v6

    :goto_1
    add-int/lit8 v6, v6, -0x1

    :goto_2
    if-lt v6, v5, :cond_3

    .line 61
    invoke-virtual {v1, v6}, Lcom/onyx/harfbuzz/collections/IntList;->get(I)I

    move-result v7

    .line 62
    iget-object v8, v0, Lcom/trans/android/hb/HBGraphics;->glyphAttributes:Lcom/onyx/harfbuzz/graphics/GlyphAttributes;

    iget-object v9, v0, Lcom/trans/android/hb/HBGraphics;->colorTable:[I

    move-object/from16 p3, v1

    iget v1, v0, Lcom/trans/android/hb/HBGraphics;->threshold:I

    invoke-virtual {v11, v8, v7, v9, v1}, Lcom/onyx/harfbuzz/graphics/GlyphCache;->getGlyphImage(Lcom/onyx/harfbuzz/graphics/GlyphAttributes;I[II)Lcom/onyx/harfbuzz/graphics/GlyphImage;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 63
    invoke-virtual {v1}, Lcom/onyx/harfbuzz/graphics/GlyphImage;->bitmap()Landroid/graphics/Bitmap;

    move-result-object v7

    add-float v8, p6, v10

    invoke-virtual {v1}, Lcom/onyx/harfbuzz/graphics/GlyphImage;->left()I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v8, v9

    invoke-virtual {v1}, Lcom/onyx/harfbuzz/graphics/GlyphImage;->top()I

    move-result v1

    int-to-float v1, v1

    sub-float v1, p7, v1

    add-float/2addr v1, v14

    iget-object v9, v0, Lcom/trans/android/hb/HBGraphics;->paint:Landroid/graphics/Paint;

    invoke-virtual {v15, v7, v8, v1, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_2
    add-int/lit8 v6, v6, -0x1

    move-object/from16 v1, p3

    goto :goto_2

    :cond_3
    move-object/from16 p3, v1

    .line 64
    invoke-virtual {v13, v5}, Lcom/onyx/harfbuzz/collections/FloatList;->get(I)F

    move-result v1

    add-float/2addr v10, v1

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v1, p3

    goto :goto_0

    .line 65
    :cond_4
    iget-object v1, v0, Lcom/trans/android/hb/HBGraphics;->styleGraphics:Lcom/trans/android/hb/StyleGraphics;

    iget-object v4, v0, Lcom/trans/android/hb/HBGraphics;->paint:Landroid/graphics/Paint;

    iget v2, v0, Lcom/trans/android/hb/HBGraphics;->lineWidth:F

    mul-float v6, v2, p8

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move v5, v10

    move/from16 v7, p6

    move/from16 v8, p7

    move v9, v14

    invoke-virtual/range {v1 .. v9}, Lcom/trans/android/hb/StyleGraphics;->drawUnderline(Lcom/trans/android/AndroidGraphics2D;Ljava/util/Map;Landroid/graphics/Paint;FFFFF)V

    .line 66
    iget-object v1, v0, Lcom/trans/android/hb/HBGraphics;->styleGraphics:Lcom/trans/android/hb/StyleGraphics;

    iget-object v3, v0, Lcom/trans/android/hb/HBGraphics;->paint:Landroid/graphics/Paint;

    iget v0, v0, Lcom/trans/android/hb/HBGraphics;->lineWidth:F

    mul-float v5, v0, p8

    move-object v0, v1

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v4, v10

    move/from16 v6, p6

    move/from16 v7, p7

    move v8, v14

    invoke-virtual/range {v0 .. v8}, Lcom/trans/android/hb/StyleGraphics;->drawStrikethrough(Lcom/trans/android/AndroidGraphics2D;Ljava/util/Map;Landroid/graphics/Paint;FFFFF)V

    .line 67
    invoke-virtual/range {v16 .. v16}, Lcom/onyx/harfbuzz/sfnt/ShapingResult;->dispose()V

    return v10
.end method

.method private existOutlinesFontAttribute(Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/trans/android/common/AttributedData;",
            ">;)Z"
        }
    .end annotation

    invoke-static {p1}, Lcom/onyx/common/util/CollectionUtils;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/trans/android/common/AttributedData;

    sget-object v2, Ljava/awt/font/TextAttribute;->FAMILY:Ljava/awt/font/TextAttribute;

    invoke-virtual {v0, v2}, Lcom/trans/android/common/AttributedData;->getValue(Ljava/text/AttributedCharacterIterator$Attribute;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/trans/android/hb/HBGraphics;->isOutlinesFont(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    return v3

    :cond_2
    sget-object v2, Ljava/awt/font/TextAttribute;->FONT:Ljava/awt/font/TextAttribute;

    invoke-virtual {v0, v2}, Lcom/trans/android/common/AttributedData;->getValue(Ljava/text/AttributedCharacterIterator$Attribute;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/awt/Font;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/awt/Font;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/trans/android/hb/HBGraphics;->isOutlinesFont(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v3

    :cond_3
    return v1
.end method

.method public static synthetic f(FLandroid/graphics/Bitmap;)Landroid/graphics/Matrix;
    .locals 0

    invoke-static {p0, p1}, Lcom/trans/android/hb/HBGraphics;->lambda$setPaintColorOrShader$0(FLandroid/graphics/Bitmap;)Landroid/graphics/Matrix;

    move-result-object p0

    return-object p0
.end method

.method private getSuperscriptOffset(Ljava/util/Map;F)F
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/text/AttributedCharacterIterator$Attribute;",
            "Ljava/lang/Object;",
            ">;F)F"
        }
    .end annotation

    sget-object p0, Ljava/awt/font/TextAttribute;->SUPERSCRIPT:Ljava/awt/font/TextAttribute;

    invoke-static {p1, p0}, Lcom/trans/android/util/BridgeUtils;->getValue(Ljava/util/Map;Ljava/awt/font/TextAttribute;)Ljava/lang/Object;

    move-result-object p0

    const/4 p1, 0x0

    if-nez p0, :cond_0

    return p1

    :cond_0
    sget-object v0, Ljava/awt/font/TextAttribute;->SUPERSCRIPT_SUPER:Ljava/lang/Integer;

    const/high16 v1, 0x3f000000    # 0.5f

    if-ne v0, p0, :cond_1

    neg-float p0, p2

    mul-float/2addr p0, v1

    return p0

    :cond_1
    sget-object v0, Ljava/awt/font/TextAttribute;->SUPERSCRIPT_SUB:Ljava/lang/Integer;

    if-ne v0, p0, :cond_2

    mul-float/2addr p2, v1

    return p2

    :cond_2
    return p1
.end method

.method private init()V
    .locals 2

    iget-object v0, p0, Lcom/trans/android/hb/HBGraphics;->engine:Lcom/onyx/harfbuzz/sfnt/ShapingEngine;

    if-nez v0, :cond_0

    new-instance v0, Lcom/onyx/harfbuzz/graphics/GlyphAttributes;

    invoke-direct {v0}, Lcom/onyx/harfbuzz/graphics/GlyphAttributes;-><init>()V

    iput-object v0, p0, Lcom/trans/android/hb/HBGraphics;->glyphAttributes:Lcom/onyx/harfbuzz/graphics/GlyphAttributes;

    iget-boolean v1, p0, Lcom/trans/android/hb/HBGraphics;->antiAlias:Z

    invoke-virtual {v0, v1}, Lcom/onyx/harfbuzz/graphics/GlyphAttributes;->setAntiAlias(Z)V

    new-instance v0, Lcom/onyx/harfbuzz/sfnt/ShapingEngine;

    invoke-direct {v0}, Lcom/onyx/harfbuzz/sfnt/ShapingEngine;-><init>()V

    iput-object v0, p0, Lcom/trans/android/hb/HBGraphics;->engine:Lcom/onyx/harfbuzz/sfnt/ShapingEngine;

    sget-object v1, Lcom/onyx/harfbuzz/sfnt/WritingDirection;->LEFT_TO_RIGHT:Lcom/onyx/harfbuzz/sfnt/WritingDirection;

    invoke-virtual {v0, v1}, Lcom/onyx/harfbuzz/sfnt/ShapingEngine;->setWritingDirection(Lcom/onyx/harfbuzz/sfnt/WritingDirection;)V

    new-instance v0, Lcom/trans/android/hb/StyleGraphics;

    invoke-direct {v0}, Lcom/trans/android/hb/StyleGraphics;-><init>()V

    iput-object v0, p0, Lcom/trans/android/hb/HBGraphics;->styleGraphics:Lcom/trans/android/hb/StyleGraphics;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/trans/android/hb/HBGraphics;->paint:Landroid/graphics/Paint;

    :cond_0
    return-void
.end method

.method private isOutlinesFont(Lcom/trans/android/AndroidGraphics2D;)Z
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/trans/android/AndroidGraphics2D;->getFont()Ljava/awt/Font;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/awt/Font;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/trans/android/hb/HBGraphics;->isOutlinesFont(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isOutlinesFont(Ljava/lang/String;)Z
    .locals 1

    .line 3
    invoke-static {p1}, Lcom/onyx/common/util/StringUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/trans/android/hb/HBGraphics;->OUTLINES_FONTS:Ljava/util/List;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$setPaintColorOrShader$0(FLandroid/graphics/Bitmap;)Landroid/graphics/Matrix;
    .locals 2

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float v1, p0, v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p0, p1

    invoke-virtual {v0, v1, p0}, Landroid/graphics/Matrix;->setScale(FF)V

    return-object v0
.end method

.method private setPaintColorOrShader(Lcom/trans/android/AndroidGraphics2D;Ljava/util/Map;F)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/trans/android/AndroidGraphics2D;",
            "Ljava/util/Map<",
            "Ljava/text/AttributedCharacterIterator$Attribute;",
            "Ljava/lang/Object;",
            ">;F)V"
        }
    .end annotation

    invoke-static {p2}, Lcom/trans/android/util/BridgeUtils;->getPaintFromAttributeMap(Ljava/util/Map;)Ljava/awt/Paint;

    move-result-object p2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/trans/android/hb/HBGraphics;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Lcom/trans/android/AndroidGraphics2D;->getAndroidTextPaint()Landroid/graphics/Paint;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Paint;->getColor()I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p0, p0, Lcom/trans/android/hb/HBGraphics;->paint:Landroid/graphics/Paint;

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    goto :goto_0

    :cond_0
    instance-of v1, p2, Ljava/awt/Color;

    if-eqz v1, :cond_1

    iget-object p1, p0, Lcom/trans/android/hb/HBGraphics;->paint:Landroid/graphics/Paint;

    check-cast p2, Ljava/awt/Color;

    invoke-virtual {p2}, Ljava/awt/Color;->getRGB()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p0, p0, Lcom/trans/android/hb/HBGraphics;->paint:Landroid/graphics/Paint;

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/sunia/HTREnginev2/v6h;

    invoke-direct {v0, p3}, Lcom/sunia/HTREnginev2/v6h;-><init>(F)V

    invoke-static {p2, v0}, Lcom/trans/android/util/PaintUtils;->getShader(Ljava/awt/Paint;Ljava/backport/function/Function;)Landroid/graphics/Shader;

    move-result-object p2

    iget-object p3, p0, Lcom/trans/android/hb/HBGraphics;->paint:Landroid/graphics/Paint;

    invoke-virtual {p3, p2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    if-nez p2, :cond_2

    iget-object p0, p0, Lcom/trans/android/hb/HBGraphics;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Lcom/trans/android/AndroidGraphics2D;->getAndroidTextPaint()Landroid/graphics/Paint;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Paint;->getColor()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/trans/android/hb/HBGraphics;->paint:Landroid/graphics/Paint;

    const/16 p1, 0xff

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    :goto_0
    return-void
.end method

.method private updateGlyphAttributes(Ljava/awt/Font;Lcom/onyx/harfbuzz/graphics/HBTypeface;F)V
    .locals 2

    iget-object v0, p0, Lcom/trans/android/hb/HBGraphics;->glyphAttributes:Lcom/onyx/harfbuzz/graphics/GlyphAttributes;

    invoke-virtual {v0, p2}, Lcom/onyx/harfbuzz/graphics/GlyphAttributes;->setTypeface(Lcom/onyx/harfbuzz/graphics/HBTypeface;)V

    iget-object v0, p0, Lcom/trans/android/hb/HBGraphics;->glyphAttributes:Lcom/onyx/harfbuzz/graphics/GlyphAttributes;

    invoke-virtual {v0, p3}, Lcom/onyx/harfbuzz/graphics/GlyphAttributes;->setPixelWidth(F)V

    iget-object v0, p0, Lcom/trans/android/hb/HBGraphics;->glyphAttributes:Lcom/onyx/harfbuzz/graphics/GlyphAttributes;

    invoke-virtual {v0, p3}, Lcom/onyx/harfbuzz/graphics/GlyphAttributes;->setPixelHeight(F)V

    invoke-virtual {p1}, Ljava/awt/Font;->isBold()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Lcom/trans/android/hb/HBUtils;->isBold(Lcom/onyx/harfbuzz/graphics/HBTypeface;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/trans/android/hb/HBGraphics;->glyphAttributes:Lcom/onyx/harfbuzz/graphics/GlyphAttributes;

    const/16 v1, 0x46

    invoke-virtual {v0, v1}, Lcom/onyx/harfbuzz/graphics/GlyphAttributes;->setStrength(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/trans/android/hb/HBGraphics;->glyphAttributes:Lcom/onyx/harfbuzz/graphics/GlyphAttributes;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/onyx/harfbuzz/graphics/GlyphAttributes;->setStrength(I)V

    :goto_0
    invoke-virtual {p1}, Ljava/awt/Font;->isItalic()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {p2}, Lcom/trans/android/hb/HBUtils;->isItalic(Lcom/onyx/harfbuzz/graphics/HBTypeface;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/trans/android/hb/HBGraphics;->glyphAttributes:Lcom/onyx/harfbuzz/graphics/GlyphAttributes;

    const/high16 v0, -0x41800000    # -0.25f

    invoke-virtual {p1, v0}, Lcom/onyx/harfbuzz/graphics/GlyphAttributes;->setSkewX(F)V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/trans/android/hb/HBGraphics;->glyphAttributes:Lcom/onyx/harfbuzz/graphics/GlyphAttributes;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/onyx/harfbuzz/graphics/GlyphAttributes;->setSkewX(F)V

    :goto_1
    iget-object p1, p0, Lcom/trans/android/hb/HBGraphics;->glyphAttributes:Lcom/onyx/harfbuzz/graphics/GlyphAttributes;

    iget v0, p0, Lcom/trans/android/hb/HBGraphics;->threshold:I

    invoke-virtual {p1, v0}, Lcom/onyx/harfbuzz/graphics/GlyphAttributes;->setThreshold(I)V

    iget-object p1, p0, Lcom/trans/android/hb/HBGraphics;->engine:Lcom/onyx/harfbuzz/sfnt/ShapingEngine;

    invoke-virtual {p1, p2}, Lcom/onyx/harfbuzz/sfnt/ShapingEngine;->setTypeface(Lcom/onyx/harfbuzz/graphics/HBTypeface;)V

    iget-object p0, p0, Lcom/trans/android/hb/HBGraphics;->engine:Lcom/onyx/harfbuzz/sfnt/ShapingEngine;

    invoke-virtual {p0, p3}, Lcom/onyx/harfbuzz/sfnt/ShapingEngine;->setTypeSize(F)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    iget-object v0, p0, Lcom/trans/android/hb/HBGraphics;->engine:Lcom/onyx/harfbuzz/sfnt/ShapingEngine;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/onyx/harfbuzz/sfnt/ShapingEngine;->dispose()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/trans/android/hb/HBGraphics;->glyphAttributes:Lcom/onyx/harfbuzz/graphics/GlyphAttributes;

    iput-object v0, p0, Lcom/trans/android/hb/HBGraphics;->engine:Lcom/onyx/harfbuzz/sfnt/ShapingEngine;

    iput-object v0, p0, Lcom/trans/android/hb/HBGraphics;->styleGraphics:Lcom/trans/android/hb/StyleGraphics;

    iput-object v0, p0, Lcom/trans/android/hb/HBGraphics;->paint:Landroid/graphics/Paint;

    return-void
.end method

.method public copy(Lcom/trans/android/hb/HBGraphics;)V
    .locals 1

    iget v0, p1, Lcom/trans/android/hb/HBGraphics;->lineWidth:F

    iput v0, p0, Lcom/trans/android/hb/HBGraphics;->lineWidth:F

    iget-object v0, p1, Lcom/trans/android/hb/HBGraphics;->colorTable:[I

    iput-object v0, p0, Lcom/trans/android/hb/HBGraphics;->colorTable:[I

    iget v0, p1, Lcom/trans/android/hb/HBGraphics;->threshold:I

    iput v0, p0, Lcom/trans/android/hb/HBGraphics;->threshold:I

    iget-boolean p1, p1, Lcom/trans/android/hb/HBGraphics;->closeAfterDraw:Z

    iput-boolean p1, p0, Lcom/trans/android/hb/HBGraphics;->closeAfterDraw:Z

    return-void
.end method

.method public drawGlyphVector(Lcom/trans/android/AndroidGraphics2D;Lsun/font/AndroidGlyphVector;FF)V
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    invoke-direct/range {p0 .. p0}, Lcom/trans/android/hb/HBGraphics;->init()V

    invoke-virtual/range {p1 .. p1}, Lcom/trans/android/AndroidGraphics2D;->getCanvas()Landroid/graphics/Canvas;

    move-result-object v2

    :try_start_0
    invoke-virtual {v2}, Landroid/graphics/Canvas;->save()I

    move/from16 v3, p3

    move/from16 v4, p4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual/range {p1 .. p1}, Lcom/trans/android/AndroidGraphics2D;->getScaleX()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    double-to-float v3, v3

    const/high16 v4, 0x3f800000    # 1.0f

    div-float/2addr v4, v3

    invoke-virtual {v2, v4, v4}, Landroid/graphics/Canvas;->scale(FF)V

    invoke-virtual/range {p2 .. p2}, Lsun/font/StandardGlyphVector;->getFont()Ljava/awt/Font;

    move-result-object v4

    invoke-static {v4}, Lcom/trans/android/font/FontManager;->getFont2D(Ljava/awt/Font;)Lsun/font/Font2D;

    move-result-object v5

    invoke-virtual {v4}, Ljava/awt/Font;->getSize2D()F

    move-result v6

    mul-float/2addr v6, v3

    const/4 v7, 0x0

    move-object/from16 v8, p1

    invoke-direct {v1, v8, v7, v6}, Lcom/trans/android/hb/HBGraphics;->setPaintColorOrShader(Lcom/trans/android/AndroidGraphics2D;Ljava/util/Map;F)V

    invoke-virtual {v0, v7}, Lsun/font/StandardGlyphVector;->getGlyphPositions([F)[F

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Lsun/font/StandardGlyphVector;->getNumGlyphs()I

    move-result v9

    invoke-static {}, Lcom/onyx/harfbuzz/graphics/GlyphCache;->getInstance()Lcom/onyx/harfbuzz/graphics/GlyphCache;

    move-result-object v10

    const/4 v11, 0x0

    :goto_0
    if-ge v11, v9, :cond_2

    invoke-virtual {v0, v11}, Lsun/font/StandardGlyphVector;->getGlyphCode(I)I

    move-result v12

    invoke-static {v4, v12}, Lcom/trans/android/font/FontManager;->getHBTypeface(Ljava/awt/Font;I)Lcom/onyx/harfbuzz/graphics/HBTypeface;

    move-result-object v13

    if-eq v7, v13, :cond_0

    invoke-direct {v1, v4, v13, v6}, Lcom/trans/android/hb/HBGraphics;->updateGlyphAttributes(Ljava/awt/Font;Lcom/onyx/harfbuzz/graphics/HBTypeface;F)V

    move-object v7, v13

    :cond_0
    invoke-static {v5, v12}, Lcom/trans/android/font/FontManager;->getGlyphCode(Lsun/font/Font2D;I)I

    move-result v12

    iget-object v13, v1, Lcom/trans/android/hb/HBGraphics;->glyphAttributes:Lcom/onyx/harfbuzz/graphics/GlyphAttributes;

    iget-object v14, v1, Lcom/trans/android/hb/HBGraphics;->colorTable:[I

    iget v15, v1, Lcom/trans/android/hb/HBGraphics;->threshold:I

    invoke-virtual {v10, v13, v12, v14, v15}, Lcom/onyx/harfbuzz/graphics/GlyphCache;->getGlyphImage(Lcom/onyx/harfbuzz/graphics/GlyphAttributes;I[II)Lcom/onyx/harfbuzz/graphics/GlyphImage;

    move-result-object v12

    if-eqz v12, :cond_1

    invoke-virtual {v12}, Lcom/onyx/harfbuzz/graphics/GlyphImage;->bitmap()Landroid/graphics/Bitmap;

    move-result-object v13

    mul-int/lit8 v14, v11, 0x2

    aget v15, v8, v14

    mul-float/2addr v15, v3

    invoke-virtual {v12}, Lcom/onyx/harfbuzz/graphics/GlyphImage;->left()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v15, v0

    add-int/lit8 v14, v14, 0x1

    aget v0, v8, v14

    mul-float/2addr v0, v3

    invoke-virtual {v12}, Lcom/onyx/harfbuzz/graphics/GlyphImage;->top()I

    move-result v12

    neg-int v12, v12

    int-to-float v12, v12

    add-float/2addr v0, v12

    iget-object v12, v1, Lcom/trans/android/hb/HBGraphics;->paint:Landroid/graphics/Paint;

    invoke-virtual {v2, v13, v15, v0, v12}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v0, p2

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Landroid/graphics/Canvas;->restore()V

    invoke-direct/range {p0 .. p0}, Lcom/trans/android/hb/HBGraphics;->closeAfterDraw()V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/graphics/Canvas;->restore()V

    invoke-direct/range {p0 .. p0}, Lcom/trans/android/hb/HBGraphics;->closeAfterDraw()V

    throw v0
.end method

.method public drawString(Lcom/trans/android/AndroidGraphics2D;Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    .line 22
    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/trans/android/hb/HBGraphics;->drawString(Lcom/trans/android/AndroidGraphics2D;Ljava/lang/String;FF)Z

    move-result p0

    return p0
.end method

.method public drawString(Lcom/trans/android/AndroidGraphics2D;Ljava/lang/String;FF)Z
    .locals 14

    move-object v10, p0

    move-object v0, p1

    move-object/from16 v4, p2

    const/4 v1, 0x0

    .line 23
    invoke-virtual {p0, p1, v1}, Lcom/trans/android/hb/HBGraphics;->enableHBDraw(Lcom/trans/android/AndroidGraphics2D;Ljava/util/List;)Z

    move-result v1

    const/4 v11, 0x0

    if-nez v1, :cond_0

    .line 24
    invoke-direct {p0}, Lcom/trans/android/hb/HBGraphics;->closeAfterDraw()V

    return v11

    .line 25
    :cond_0
    invoke-direct {p0}, Lcom/trans/android/hb/HBGraphics;->init()V

    .line 26
    invoke-virtual {p1}, Lcom/trans/android/AndroidGraphics2D;->getCanvas()Landroid/graphics/Canvas;

    move-result-object v12

    .line 27
    :try_start_0
    invoke-virtual {v12}, Landroid/graphics/Canvas;->save()I

    move/from16 v1, p3

    move/from16 v2, p4

    .line 28
    invoke-virtual {v12, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 29
    invoke-virtual {p1}, Lcom/trans/android/AndroidGraphics2D;->getScaleX()D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v5

    double-to-float v9, v5

    const/high16 v3, 0x3f800000    # 1.0f

    div-float/2addr v3, v9

    .line 30
    invoke-virtual {v12, v3, v3}, Landroid/graphics/Canvas;->scale(FF)V

    .line 31
    sget-object v3, Lcom/trans/android/hb/HBGraphics;->TAG:Ljava/lang/String;

    const-string v5, "text: %s, x: %.2f, y: %.2f, scale: %.2f"

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v4, v6, v11

    invoke-static/range {p3 .. p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v13, 0x1

    aput-object v1, v6, v13

    invoke-static/range {p4 .. p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v6, v2

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v6, v2

    invoke-static {v3, v5, v6}, Lcom/onyx/common/util/JLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 32
    iget-object v1, v10, Lcom/trans/android/hb/HBGraphics;->styleGraphics:Lcom/trans/android/hb/StyleGraphics;

    invoke-virtual {v1, p1, v4, v9}, Lcom/trans/android/hb/StyleGraphics;->calculate(Lcom/trans/android/AndroidGraphics2D;Ljava/lang/String;F)V

    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 33
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v4, p2

    invoke-direct/range {v1 .. v9}, Lcom/trans/android/hb/HBGraphics;->drawString(Lcom/trans/android/AndroidGraphics2D;Ljava/util/Map;Ljava/lang/String;IIFFF)F

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    move v11, v13

    .line 34
    :cond_1
    invoke-virtual {v12}, Landroid/graphics/Canvas;->restore()V

    .line 35
    invoke-direct {p0}, Lcom/trans/android/hb/HBGraphics;->closeAfterDraw()V

    return v11

    :catchall_0
    move-exception v0

    .line 36
    invoke-virtual {v12}, Landroid/graphics/Canvas;->restore()V

    .line 37
    invoke-direct {p0}, Lcom/trans/android/hb/HBGraphics;->closeAfterDraw()V

    .line 38
    throw v0
.end method

.method public drawString(Lcom/trans/android/AndroidGraphics2D;Ljava/text/AttributedCharacterIterator;)Z
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/trans/android/hb/HBGraphics;->drawString(Lcom/trans/android/AndroidGraphics2D;Ljava/text/AttributedCharacterIterator;FF)Z

    move-result p0

    return p0
.end method

.method public drawString(Lcom/trans/android/AndroidGraphics2D;Ljava/text/AttributedCharacterIterator;FF)Z
    .locals 6

    .line 2
    invoke-static {p2}, Lcom/trans/android/util/BridgeUtils;->convertCharacterIterator(Ljava/text/CharacterIterator;)Ljava/lang/String;

    move-result-object v3

    .line 3
    invoke-static {p2, v3}, Lcom/trans/android/util/BridgeUtils;->collectAttributeData(Ljava/text/AttributedCharacterIterator;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    move-object v0, p0

    move-object v1, p1

    move v4, p3

    move v5, p4

    .line 4
    invoke-virtual/range {v0 .. v5}, Lcom/trans/android/hb/HBGraphics;->drawString(Lcom/trans/android/AndroidGraphics2D;Ljava/util/List;Ljava/lang/String;FF)Z

    move-result p0

    return p0
.end method

.method public drawString(Lcom/trans/android/AndroidGraphics2D;Ljava/util/List;Ljava/lang/String;FF)Z
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/trans/android/AndroidGraphics2D;",
            "Ljava/util/List<",
            "Lcom/trans/android/common/AttributedData;",
            ">;",
            "Ljava/lang/String;",
            "FF)Z"
        }
    .end annotation

    move-object/from16 v0, p3

    .line 5
    invoke-virtual/range {p0 .. p2}, Lcom/trans/android/hb/HBGraphics;->enableHBDraw(Lcom/trans/android/AndroidGraphics2D;Ljava/util/List;)Z

    move-result v1

    const/4 v10, 0x0

    if-nez v1, :cond_0

    .line 6
    invoke-direct/range {p0 .. p0}, Lcom/trans/android/hb/HBGraphics;->closeAfterDraw()V

    return v10

    .line 7
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/trans/android/hb/HBGraphics;->init()V

    .line 8
    invoke-virtual/range {p1 .. p1}, Lcom/trans/android/AndroidGraphics2D;->getCanvas()Landroid/graphics/Canvas;

    move-result-object v11

    .line 9
    :try_start_0
    invoke-virtual {v11}, Landroid/graphics/Canvas;->save()I

    move/from16 v1, p4

    move/from16 v2, p5

    .line 10
    invoke-virtual {v11, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 11
    invoke-virtual/range {p1 .. p1}, Lcom/trans/android/AndroidGraphics2D;->getScaleX()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    double-to-float v12, v3

    const/high16 v3, 0x3f800000    # 1.0f

    div-float/2addr v3, v12

    .line 12
    invoke-virtual {v11, v3, v3}, Landroid/graphics/Canvas;->scale(FF)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v13, p0

    .line 13
    :try_start_1
    iget-object v3, v13, Lcom/trans/android/hb/HBGraphics;->styleGraphics:Lcom/trans/android/hb/StyleGraphics;

    move-object/from16 v14, p1

    move-object/from16 v4, p2

    invoke-virtual {v3, v14, v4, v0, v12}, Lcom/trans/android/hb/StyleGraphics;->calculate(Lcom/trans/android/AndroidGraphics2D;Ljava/util/List;Ljava/lang/String;F)V

    .line 14
    sget-object v3, Lcom/trans/android/hb/HBGraphics;->TAG:Ljava/lang/String;

    const-string v5, "text: %s, x: %.2f, y: %.2f, scale: %.2f"

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v0, v6, v10

    invoke-static/range {p4 .. p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v15, 0x1

    aput-object v1, v6, v15

    invoke-static/range {p5 .. p5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v6, v2

    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v6, v2

    invoke-static {v3, v5, v6}, Lcom/onyx/common/util/JLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v16, 0x0

    .line 15
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    const/16 v18, 0x0

    move/from16 v19, v18

    :goto_0
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/trans/android/common/AttributedData;

    .line 16
    invoke-virtual {v1}, Lcom/trans/android/common/AttributedData;->getAttributes()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v1}, Lcom/trans/android/common/AttributedData;->getBeginIndex()I

    move-result v5

    invoke-virtual {v1}, Lcom/trans/android/common/AttributedData;->getEndIndex()I

    move-result v6

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v4, p3

    move/from16 v7, v19

    move/from16 v8, v16

    move v9, v12

    invoke-direct/range {v1 .. v9}, Lcom/trans/android/hb/HBGraphics;->drawString(Lcom/trans/android/AndroidGraphics2D;Ljava/util/Map;Ljava/lang/String;IIFFF)F

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-float v19, v19, v1

    goto :goto_0

    :cond_1
    cmpl-float v0, v19, v18

    if-lez v0, :cond_2

    move v10, v15

    .line 17
    :cond_2
    invoke-virtual {v11}, Landroid/graphics/Canvas;->restore()V

    .line 18
    invoke-direct/range {p0 .. p0}, Lcom/trans/android/hb/HBGraphics;->closeAfterDraw()V

    return v10

    :catchall_0
    move-exception v0

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object/from16 v13, p0

    .line 19
    :goto_1
    invoke-virtual {v11}, Landroid/graphics/Canvas;->restore()V

    .line 20
    invoke-direct/range {p0 .. p0}, Lcom/trans/android/hb/HBGraphics;->closeAfterDraw()V

    .line 21
    throw v0
.end method

.method public enableHBDraw(Lcom/trans/android/AndroidGraphics2D;Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/trans/android/AndroidGraphics2D;",
            "Ljava/util/List<",
            "Lcom/trans/android/common/AttributedData;",
            ">;)Z"
        }
    .end annotation

    invoke-static {}, Lcom/trans/android/hb/HBUtils;->enableHBDraw()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/trans/android/hb/HBGraphics;->fontEnhance()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0, p2}, Lcom/trans/android/hb/HBGraphics;->existOutlinesFontAttribute(Ljava/util/List;)Z

    move-result p2

    if-eqz p2, :cond_1

    return v1

    :cond_1
    invoke-direct {p0, p1}, Lcom/trans/android/hb/HBGraphics;->isOutlinesFont(Lcom/trans/android/AndroidGraphics2D;)Z

    move-result p0

    return p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Font enhance must has FontProvider"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public fontEnhance()Z
    .locals 0

    iget-object p0, p0, Lcom/trans/android/hb/HBGraphics;->colorTable:[I

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public setAntiAlias(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/trans/android/hb/HBGraphics;->antiAlias:Z

    iget-object p0, p0, Lcom/trans/android/hb/HBGraphics;->glyphAttributes:Lcom/onyx/harfbuzz/graphics/GlyphAttributes;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/onyx/harfbuzz/graphics/GlyphAttributes;->setAntiAlias(Z)V

    :cond_0
    return-void
.end method

.method public setCloseAfterDraw(Z)Lcom/trans/android/hb/HBGraphics;
    .locals 0

    iput-boolean p1, p0, Lcom/trans/android/hb/HBGraphics;->closeAfterDraw:Z

    return-object p0
.end method

.method public setColorTable([II)Lcom/trans/android/hb/HBGraphics;
    .locals 0

    iput-object p1, p0, Lcom/trans/android/hb/HBGraphics;->colorTable:[I

    iput p2, p0, Lcom/trans/android/hb/HBGraphics;->threshold:I

    return-object p0
.end method

.method public setLineWidth(F)Lcom/trans/android/hb/HBGraphics;
    .locals 0

    iput p1, p0, Lcom/trans/android/hb/HBGraphics;->lineWidth:F

    return-object p0
.end method
