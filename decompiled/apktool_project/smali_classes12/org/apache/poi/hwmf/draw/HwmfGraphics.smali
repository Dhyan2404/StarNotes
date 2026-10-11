.class public Lorg/apache/poi/hwmf/draw/HwmfGraphics;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/hwmf/usermodel/HwmfCharsetAware;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/hwmf/draw/HwmfGraphics$BufferedImageRenderer;,
        Lorg/apache/poi/hwmf/draw/HwmfGraphics$DxLayout;,
        Lorg/apache/poi/hwmf/draw/HwmfGraphics$FillDrawStyle;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final WEIGHT_MAP:[Ljava/lang/Float;


# instance fields
.field private final bbox:Ljava/awt/geom/Rectangle2D;

.field private charsetProvider:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Ljava/nio/charset/Charset;",
            ">;"
        }
    .end annotation
.end field

.field protected final graphicsCtx:Ljava/awt/Graphics2D;

.field private final initialAT:Ljava/awt/geom/AffineTransform;

.field protected final objectIndexes:Ljava/util/BitSet;

.field protected final objectTable:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap<",
            "Ljava/lang/Integer;",
            "Lorg/apache/poi/hwmf/record/HwmfObjectTableEntry;",
            ">;"
        }
    .end annotation
.end field

.field protected prop:Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;

.field private final propStack:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x16

    new-array v0, v0, [Ljava/lang/Float;

    const/high16 v1, 0x44610000    # 900.0f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    sget-object v2, Ljava/awt/font/TextAttribute;->WEIGHT_ULTRABOLD:Ljava/lang/Float;

    aput-object v2, v0, v1

    const/high16 v1, 0x44480000    # 800.0f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const/4 v1, 0x3

    sget-object v2, Ljava/awt/font/TextAttribute;->WEIGHT_EXTRABOLD:Ljava/lang/Float;

    aput-object v2, v0, v1

    const v1, 0x443b8000    # 750.0f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const/4 v1, 0x5

    sget-object v2, Ljava/awt/font/TextAttribute;->WEIGHT_HEAVY:Ljava/lang/Float;

    aput-object v2, v0, v1

    const/high16 v1, 0x442f0000    # 700.0f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const/4 v1, 0x7

    sget-object v2, Ljava/awt/font/TextAttribute;->WEIGHT_BOLD:Ljava/lang/Float;

    aput-object v2, v0, v1

    const/high16 v1, 0x44160000    # 600.0f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const/16 v1, 0x9

    sget-object v2, Ljava/awt/font/TextAttribute;->WEIGHT_DEMIBOLD:Ljava/lang/Float;

    aput-object v2, v0, v1

    const/high16 v1, 0x43fa0000    # 500.0f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const/16 v1, 0xb

    sget-object v2, Ljava/awt/font/TextAttribute;->WEIGHT_MEDIUM:Ljava/lang/Float;

    aput-object v2, v0, v1

    const/high16 v1, 0x43e10000    # 450.0f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/16 v2, 0xc

    aput-object v1, v0, v2

    const/16 v1, 0xd

    sget-object v2, Ljava/awt/font/TextAttribute;->WEIGHT_SEMIBOLD:Ljava/lang/Float;

    aput-object v2, v0, v1

    const/high16 v1, 0x43c80000    # 400.0f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/16 v2, 0xe

    aput-object v1, v0, v2

    const/16 v1, 0xf

    sget-object v2, Ljava/awt/font/TextAttribute;->WEIGHT_REGULAR:Ljava/lang/Float;

    aput-object v2, v0, v1

    const/high16 v1, 0x43960000    # 300.0f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/16 v2, 0x10

    aput-object v1, v0, v2

    const/16 v1, 0x11

    sget-object v2, Ljava/awt/font/TextAttribute;->WEIGHT_DEMILIGHT:Ljava/lang/Float;

    aput-object v2, v0, v1

    const/high16 v1, 0x43480000    # 200.0f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/16 v2, 0x12

    aput-object v1, v0, v2

    const/16 v1, 0x13

    sget-object v2, Ljava/awt/font/TextAttribute;->WEIGHT_LIGHT:Ljava/lang/Float;

    aput-object v2, v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/16 v2, 0x14

    aput-object v1, v0, v2

    const/16 v1, 0x15

    sget-object v2, Ljava/awt/font/TextAttribute;->WEIGHT_EXTRA_LIGHT:Ljava/lang/Float;

    aput-object v2, v0, v1

    sput-object v0, Lorg/apache/poi/hwmf/draw/HwmfGraphics;->WEIGHT_MAP:[Ljava/lang/Float;

    return-void
.end method

.method public constructor <init>(Ljava/awt/Graphics2D;Ljava/awt/geom/Rectangle2D;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hwmf/draw/HwmfGraphics;->propStack:Ljava/util/List;

    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hwmf/draw/HwmfGraphics;->objectIndexes:Ljava/util/BitSet;

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hwmf/draw/HwmfGraphics;->objectTable:Ljava/util/TreeMap;

    new-instance v0, Ljava/awt/geom/AffineTransform;

    invoke-direct {v0}, Ljava/awt/geom/AffineTransform;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hwmf/draw/HwmfGraphics;->initialAT:Ljava/awt/geom/AffineTransform;

    new-instance v1, Lcom/sunia/HTREnginev2/a5i;

    invoke-direct {v1}, Lcom/sunia/HTREnginev2/a5i;-><init>()V

    iput-object v1, p0, Lorg/apache/poi/hwmf/draw/HwmfGraphics;->charsetProvider:Ljava/util/function/Supplier;

    iput-object p1, p0, Lorg/apache/poi/hwmf/draw/HwmfGraphics;->graphicsCtx:Ljava/awt/Graphics2D;

    invoke-virtual {p2}, Ljava/awt/geom/RectangularShape;->clone()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/awt/geom/Rectangle2D;

    iput-object p2, p0, Lorg/apache/poi/hwmf/draw/HwmfGraphics;->bbox:Ljava/awt/geom/Rectangle2D;

    invoke-virtual {p1}, Ljava/awt/Graphics2D;->getTransform()Ljava/awt/geom/AffineTransform;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/awt/geom/AffineTransform;->setTransform(Ljava/awt/geom/AffineTransform;)V

    return-void
.end method

.method public static synthetic a()Ljava/nio/charset/Charset;
    .locals 1

    invoke-static {}, Lorg/apache/poi/hwmf/draw/HwmfGraphics;->lambda$new$0()Ljava/nio/charset/Charset;

    move-result-object v0

    return-object v0
.end method

.method private addAttributes(Ljava/util/function/BiConsumer;Lorg/apache/poi/hwmf/record/HwmfFont;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiConsumer<",
            "Ljava/awt/font/TextAttribute;",
            "Ljava/lang/Object;",
            ">;",
            "Lorg/apache/poi/hwmf/record/HwmfFont;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sget-object v1, Ljava/awt/font/TextAttribute;->FAMILY:Ljava/awt/font/TextAttribute;

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p3, Ljava/awt/font/TextAttribute;->SIZE:Ljava/awt/font/TextAttribute;

    invoke-direct {p0, p2}, Lorg/apache/poi/hwmf/draw/HwmfGraphics;->getFontHeight(Lorg/apache/poi/hwmf/record/HwmfFont;)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    invoke-interface {v0, p3, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2}, Lorg/apache/poi/hwmf/record/HwmfFont;->isStrikeOut()Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Ljava/awt/font/TextAttribute;->STRIKETHROUGH:Ljava/awt/font/TextAttribute;

    sget-object p3, Ljava/awt/font/TextAttribute;->STRIKETHROUGH_ON:Ljava/lang/Boolean;

    invoke-interface {v0, p0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {p2}, Lorg/apache/poi/hwmf/record/HwmfFont;->isUnderline()Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Ljava/awt/font/TextAttribute;->UNDERLINE:Ljava/awt/font/TextAttribute;

    sget-object p3, Ljava/awt/font/TextAttribute;->UNDERLINE_ON:Ljava/lang/Integer;

    invoke-interface {v0, p0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-virtual {p2}, Lorg/apache/poi/hwmf/record/HwmfFont;->isItalic()Z

    move-result p0

    if-eqz p0, :cond_2

    sget-object p0, Ljava/awt/font/TextAttribute;->POSTURE:Ljava/awt/font/TextAttribute;

    sget-object p3, Ljava/awt/font/TextAttribute;->POSTURE_OBLIQUE:Ljava/lang/Float;

    invoke-interface {v0, p0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    invoke-virtual {p2}, Lorg/apache/poi/hwmf/record/HwmfFont;->getWeight()I

    move-result p0

    sget-object p2, Ljava/awt/font/TextAttribute;->WEIGHT_REGULAR:Ljava/lang/Float;

    const/4 p3, 0x0

    :goto_0
    sget-object v1, Lorg/apache/poi/hwmf/draw/HwmfGraphics;->WEIGHT_MAP:[Ljava/lang/Float;

    array-length v2, v1

    if-ge p3, v2, :cond_4

    int-to-float v2, p0

    aget-object v3, v1, p3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_3

    add-int/lit8 p3, p3, 0x1

    aget-object p2, v1, p3

    goto :goto_1

    :cond_3
    add-int/lit8 p3, p3, 0x2

    goto :goto_0

    :cond_4
    :goto_1
    sget-object p0, Ljava/awt/font/TextAttribute;->WEIGHT:Ljava/awt/font/TextAttribute;

    invoke-interface {v0, p0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Ljava/awt/font/TextAttribute;->FONT:Ljava/awt/font/TextAttribute;

    new-instance p2, Ljava/awt/Font;

    invoke-direct {p2, v0}, Ljava/awt/Font;-><init>(Ljava/util/Map;)V

    invoke-interface {v0, p0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0, p1}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method private calculateDx(Ljava/lang/String;Ljava/util/List;Lorg/apache/poi/hwmf/record/HwmfFont;Lorg/apache/poi/common/usermodel/fonts/FontInfo;Ljava/awt/font/FontRenderContext;Ljava/text/AttributedString;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Lorg/apache/poi/hwmf/record/HwmfFont;",
            "Lorg/apache/poi/common/usermodel/fonts/FontInfo;",
            "Ljava/awt/font/FontRenderContext;",
            "Ljava/text/AttributedString;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p5

    if-eqz v1, :cond_4

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    goto/16 :goto_4

    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    new-instance v5, Lcom/sunia/HTREnginev2/b5i;

    invoke-direct {v5, v4}, Lcom/sunia/HTREnginev2/b5i;-><init>(Ljava/util/Map;)V

    invoke-interface/range {p4 .. p4}, Lorg/apache/poi/common/usermodel/fonts/FontInfo;->getTypeface()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v7, p0

    move-object/from16 v8, p3

    invoke-direct {v7, v5, v8, v6}, Lorg/apache/poi/hwmf/draw/HwmfGraphics;->addAttributes(Ljava/util/function/BiConsumer;Lorg/apache/poi/hwmf/record/HwmfFont;Ljava/lang/String;)V

    new-instance v5, Ljava/awt/Font;

    invoke-direct {v5, v4}, Ljava/awt/Font;-><init>(Ljava/util/Map;)V

    invoke-virtual {v5, v2, v0}, Ljava/awt/Font;->createGlyphVector(Ljava/awt/font/FontRenderContext;Ljava/lang/String;)Ljava/awt/font/GlyphVector;

    move-result-object v5

    sget-object v6, Ljava/awt/font/TextAttribute;->TRACKING:Ljava/awt/font/TextAttribute;

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v4, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v6, Ljava/awt/Font;

    invoke-direct {v6, v4}, Ljava/awt/Font;-><init>(Ljava/util/Map;)V

    invoke-virtual {v6, v2, v0}, Ljava/awt/Font;->createGlyphVector(Ljava/awt/font/FontRenderContext;Ljava/lang/String;)Ljava/awt/font/GlyphVector;

    move-result-object v2

    const/4 v4, 0x0

    move v6, v4

    :goto_0
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v8

    const/4 v9, 0x0

    if-ge v4, v8, :cond_2

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v8

    if-lt v6, v8, :cond_1

    goto :goto_1

    :cond_1
    new-instance v8, Lorg/apache/poi/hwmf/draw/HwmfGraphics$DxLayout;

    invoke-direct {v8, v9}, Lorg/apache/poi/hwmf/draw/HwmfGraphics$DxLayout;-><init>(Lorg/apache/poi/hwmf/draw/HwmfGraphics$1;)V

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    int-to-double v9, v9

    iput-wide v9, v8, Lorg/apache/poi/hwmf/draw/HwmfGraphics$DxLayout;->dx:D

    invoke-virtual {v5, v4}, Ljava/awt/font/GlyphVector;->getGlyphPosition(I)Ljava/awt/geom/Point2D;

    move-result-object v9

    invoke-virtual {v9}, Ljava/awt/geom/Point2D;->getX()D

    move-result-wide v9

    iput-wide v9, v8, Lorg/apache/poi/hwmf/draw/HwmfGraphics$DxLayout;->pos0:D

    invoke-virtual {v2, v4}, Ljava/awt/font/GlyphVector;->getGlyphPosition(I)Ljava/awt/geom/Point2D;

    move-result-object v9

    invoke-virtual {v9}, Ljava/awt/geom/Point2D;->getX()D

    move-result-wide v9

    iput-wide v9, v8, Lorg/apache/poi/hwmf/draw/HwmfGraphics$DxLayout;->pos1:D

    iput v6, v8, Lorg/apache/poi/hwmf/draw/HwmfGraphics$DxLayout;->beginIndex:I

    invoke-virtual {v0, v6, v7}, Ljava/lang/String;->offsetByCodePoints(II)I

    move-result v6

    iput v6, v8, Lorg/apache/poi/hwmf/draw/HwmfGraphics$DxLayout;->endIndex:I

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v6, v8, Lorg/apache/poi/hwmf/draw/HwmfGraphics$DxLayout;->endIndex:I

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/hwmf/draw/HwmfGraphics$DxLayout;

    if-eqz v9, :cond_3

    iget-wide v2, v1, Lorg/apache/poi/hwmf/draw/HwmfGraphics$DxLayout;->pos0:D

    iget-wide v4, v9, Lorg/apache/poi/hwmf/draw/HwmfGraphics$DxLayout;->pos0:D

    sub-double/2addr v2, v4

    iget-wide v4, v1, Lorg/apache/poi/hwmf/draw/HwmfGraphics$DxLayout;->pos1:D

    iget-wide v6, v9, Lorg/apache/poi/hwmf/draw/HwmfGraphics$DxLayout;->pos1:D

    sub-double/2addr v4, v6

    sub-double v6, v4, v2

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    div-double v12, v10, v6

    iget-wide v14, v9, Lorg/apache/poi/hwmf/draw/HwmfGraphics$DxLayout;->dx:D

    mul-double/2addr v12, v14

    const-wide/16 v14, 0x0

    mul-double/2addr v4, v14

    mul-double/2addr v2, v10

    sub-double/2addr v4, v2

    div-double/2addr v4, v6

    add-double/2addr v12, v4

    sget-object v2, Ljava/awt/font/TextAttribute;->TRACKING:Ljava/awt/font/TextAttribute;

    double-to-float v3, v12

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    iget v4, v9, Lorg/apache/poi/hwmf/draw/HwmfGraphics$DxLayout;->beginIndex:I

    iget v5, v9, Lorg/apache/poi/hwmf/draw/HwmfGraphics$DxLayout;->endIndex:I

    move-object/from16 v6, p6

    invoke-virtual {v6, v2, v3, v4, v5}, Ljava/text/AttributedString;->addAttribute(Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;II)V

    goto :goto_3

    :cond_3
    move-object/from16 v6, p6

    :goto_3
    move-object v9, v1

    goto :goto_2

    :cond_4
    :goto_4
    return-void
.end method

.method private getCharByteLength(Ljava/nio/charset/Charset;C)I
    .locals 0

    invoke-static {p2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    array-length p0, p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    array-length p0, p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    array-length p0, p0

    :goto_0
    return p0
.end method

.method private getCharWidth(Ljava/util/List;II)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;II)I"
        }
    .end annotation

    const/4 p0, 0x0

    move v0, p2

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    add-int v1, p2, p3

    if-ge v0, v1, :cond_0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/2addr p0, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return p0
.end method

.method private getCharset(Lorg/apache/poi/hwmf/record/HwmfFont;Z)Ljava/nio/charset/Charset;
    .locals 0

    if-eqz p2, :cond_0

    sget-object p0, Ljava/nio/charset/StandardCharsets;->UTF_16LE:Ljava/nio/charset/Charset;

    return-object p0

    :cond_0
    invoke-virtual {p1}, Lorg/apache/poi/hwmf/record/HwmfFont;->getCharset()Lorg/apache/poi/common/usermodel/fonts/FontCharset;

    move-result-object p1

    sget-object p2, Lorg/apache/poi/common/usermodel/fonts/FontCharset;->DEFAULT:Lorg/apache/poi/common/usermodel/fonts/FontCharset;

    if-ne p1, p2, :cond_1

    iget-object p0, p0, Lorg/apache/poi/hwmf/draw/HwmfGraphics;->charsetProvider:Ljava/util/function/Supplier;

    invoke-interface {p0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/nio/charset/Charset;

    return-object p0

    :cond_1
    invoke-virtual {p1}, Lorg/apache/poi/common/usermodel/fonts/FontCharset;->getCharset()Ljava/nio/charset/Charset;

    move-result-object p1

    if-nez p1, :cond_2

    iget-object p0, p0, Lorg/apache/poi/hwmf/draw/HwmfGraphics;->charsetProvider:Ljava/util/function/Supplier;

    invoke-interface {p0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p0

    move-object p1, p0

    check-cast p1, Ljava/nio/charset/Charset;

    :cond_2
    return-object p1
.end method

.method private getFontHeight(Lorg/apache/poi/hwmf/record/HwmfFont;)D
    .locals 3

    invoke-virtual {p1}, Lorg/apache/poi/hwmf/record/HwmfFont;->getHeight()D

    move-result-wide p0

    const-wide/16 v0, 0x0

    cmpl-double v2, p0, v0

    if-nez v2, :cond_0

    const-wide/high16 p0, 0x4028000000000000L    # 12.0

    return-wide p0

    :cond_0
    cmpg-double v0, p0, v0

    if-gez v0, :cond_1

    neg-double p0, p0

    return-wide p0

    :cond_1
    const-wide/high16 v0, 0x4008000000000000L    # 3.0

    mul-double/2addr p0, v0

    const-wide/high16 v0, 0x4010000000000000L    # 4.0

    div-double/2addr p0, v0

    return-wide p0
.end method

.method public static getPatternFromLong(JLjava/awt/Color;Ljava/awt/Color;Z)Ljava/awt/image/BufferedImage;
    .locals 8

    invoke-virtual {p2}, Ljava/awt/Color;->getRGB()I

    move-result p2

    invoke-virtual {p3}, Ljava/awt/Color;->getRGB()I

    move-result p3

    filled-new-array {p2, p3}, [I

    move-result-object v3

    new-instance p2, Ljava/awt/image/IndexColorModel;

    const/4 v1, 0x1

    const/4 v2, 0x2

    const/4 v4, 0x0

    const/4 p3, 0x0

    if-eqz p4, :cond_0

    move v6, p3

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    move v6, v0

    :goto_0
    const/4 v7, 0x0

    move-object v0, p2

    move v5, p4

    invoke-direct/range {v0 .. v7}, Ljava/awt/image/IndexColorModel;-><init>(II[IIZII)V

    new-instance p4, Ljava/awt/image/BufferedImage;

    const/16 v0, 0xd

    const/16 v1, 0x8

    invoke-direct {p4, v1, v1, v0, p2}, Ljava/awt/image/BufferedImage;-><init>(IIILjava/awt/image/IndexColorModel;)V

    const/16 p2, 0x40

    new-array v5, p2, [B

    :goto_1
    if-ge p3, p2, :cond_1

    ushr-long v0, p0, p3

    const-wide/16 v2, 0x1

    and-long/2addr v0, v2

    long-to-int v0, v0

    int-to-byte v0, v0

    aput-byte v0, v5, p3

    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p4}, Ljava/awt/image/BufferedImage;->getRaster()Ljava/awt/image/WritableRaster;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/16 v3, 0x8

    const/16 v4, 0x8

    invoke-virtual/range {v0 .. v5}, Ljava/awt/image/WritableRaster;->setDataElements(IIIILjava/lang/Object;)V

    return-object p4
.end method

.method private getRotatedOffset(DLjava/awt/font/FontRenderContext;Ljava/text/AttributedString;Z)Ljava/awt/geom/Point2D;
    .locals 1

    new-instance v0, Ljava/awt/font/TextLayout;

    invoke-virtual {p4}, Ljava/text/AttributedString;->getIterator()Ljava/text/AttributedCharacterIterator;

    move-result-object p4

    invoke-direct {v0, p4, p3}, Ljava/awt/font/TextLayout;-><init>(Ljava/text/AttributedCharacterIterator;Ljava/awt/font/FontRenderContext;)V

    new-instance p3, Ljava/awt/geom/AffineTransform;

    invoke-direct {p3}, Ljava/awt/geom/AffineTransform;-><init>()V

    invoke-direct {p0, p3, v0, p5}, Lorg/apache/poi/hwmf/draw/HwmfGraphics;->updateHorizontalAlign(Ljava/awt/geom/AffineTransform;Ljava/awt/font/TextLayout;Z)V

    invoke-direct {p0, p3, v0, p5}, Lorg/apache/poi/hwmf/draw/HwmfGraphics;->updateVerticalAlign(Ljava/awt/geom/AffineTransform;Ljava/awt/font/TextLayout;Z)V

    invoke-virtual {p3, p1, p2}, Ljava/awt/geom/AffineTransform;->rotate(D)V

    new-instance p0, Ljava/awt/geom/Point2D$Double;

    invoke-direct {p0}, Ljava/awt/geom/Point2D$Double;-><init>()V

    const/4 p1, 0x0

    invoke-virtual {p3, p0, p1}, Ljava/awt/geom/AffineTransform;->transform(Ljava/awt/geom/Point2D;Ljava/awt/geom/Point2D;)Ljava/awt/geom/Point2D;

    move-result-object p0

    return-object p0
.end method

.method private static getSubImageInsets(Ljava/awt/geom/Rectangle2D;Ljava/awt/geom/Rectangle2D;)Ljava/awt/Insets;
    .locals 9

    invoke-virtual {p0}, Ljava/awt/geom/RectangularShape;->getX()D

    move-result-wide v0

    invoke-virtual {p1}, Ljava/awt/geom/RectangularShape;->getX()D

    move-result-wide v2

    sub-double/2addr v0, v2

    invoke-virtual {p1}, Ljava/awt/geom/RectangularShape;->getWidth()D

    move-result-wide v2

    div-double/2addr v0, v2

    const-wide v2, 0x40f86a0000000000L    # 100000.0

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    invoke-virtual {p0}, Ljava/awt/geom/RectangularShape;->getY()D

    move-result-wide v4

    invoke-virtual {p1}, Ljava/awt/geom/RectangularShape;->getY()D

    move-result-wide v6

    sub-double/2addr v4, v6

    invoke-virtual {p1}, Ljava/awt/geom/RectangularShape;->getHeight()D

    move-result-wide v6

    div-double/2addr v4, v6

    mul-double/2addr v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-int v1, v4

    invoke-virtual {p1}, Ljava/awt/geom/RectangularShape;->getMaxX()D

    move-result-wide v4

    invoke-virtual {p0}, Ljava/awt/geom/RectangularShape;->getMaxX()D

    move-result-wide v6

    sub-double/2addr v4, v6

    invoke-virtual {p1}, Ljava/awt/geom/RectangularShape;->getWidth()D

    move-result-wide v6

    div-double/2addr v4, v6

    mul-double/2addr v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-int v4, v4

    invoke-virtual {p1}, Ljava/awt/geom/RectangularShape;->getMaxY()D

    move-result-wide v5

    invoke-virtual {p0}, Ljava/awt/geom/RectangularShape;->getMaxY()D

    move-result-wide v7

    sub-double/2addr v5, v7

    invoke-virtual {p1}, Ljava/awt/geom/RectangularShape;->getHeight()D

    move-result-wide p0

    div-double/2addr v5, p0

    mul-double/2addr v5, v2

    invoke-static {v5, v6}, Ljava/lang/Math;->round(D)J

    move-result-wide p0

    long-to-int p0, p0

    new-instance p1, Ljava/awt/Insets;

    invoke-direct {p1, v1, v0, p0, v4}, Ljava/awt/Insets;-><init>(IIII)V

    return-object p1
.end method

.method private static synthetic lambda$new$0()Ljava/nio/charset/Charset;
    .locals 1

    sget-object v0, Lorg/apache/poi/util/LocaleUtil;->CHARSET_1252:Ljava/nio/charset/Charset;

    return-object v0
.end method

.method private static normalizeRect(Ljava/awt/geom/Rectangle2D;)Ljava/awt/geom/Rectangle2D;
    .locals 14

    new-instance v9, Ljava/awt/geom/Rectangle2D$Double;

    invoke-virtual {p0}, Ljava/awt/geom/RectangularShape;->getWidth()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Ljava/awt/geom/RectangularShape;->getMinX()D

    move-result-wide v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/awt/geom/RectangularShape;->getMaxX()D

    move-result-wide v0

    :goto_0
    move-wide v4, v0

    invoke-virtual {p0}, Ljava/awt/geom/RectangularShape;->getHeight()D

    move-result-wide v0

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_1

    invoke-virtual {p0}, Ljava/awt/geom/RectangularShape;->getMinY()D

    move-result-wide v0

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Ljava/awt/geom/RectangularShape;->getMaxY()D

    move-result-wide v0

    :goto_1
    move-wide v6, v0

    invoke-virtual {p0}, Ljava/awt/geom/RectangularShape;->getWidth()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v10

    invoke-virtual {p0}, Ljava/awt/geom/RectangularShape;->getHeight()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v12

    move-object v0, v9

    move-wide v1, v4

    move-wide v3, v6

    move-wide v5, v10

    move-wide v7, v12

    invoke-direct/range {v0 .. v8}, Ljava/awt/geom/Rectangle2D$Double;-><init>(DDDD)V

    return-object v9
.end method

.method private trimText(Ljava/nio/charset/Charset;[BI)Ljava/lang/String;
    .locals 4

    const/4 p0, 0x0

    move v0, p0

    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_3

    array-length v1, p2

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_0

    aget-byte v1, p2, v0

    if-eqz v1, :cond_3

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    aget-byte v1, p2, v0

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    add-int/lit8 v3, v0, 0x1

    aget-byte v3, p2, v3

    if-eq v3, v2, :cond_3

    :cond_1
    and-int/lit16 v1, v1, 0xe0

    if-nez v1, :cond_2

    add-int/lit8 v1, v0, 0x1

    aget-byte v1, p2, v1

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_3
    :goto_1
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p2, p0, v0, p1}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-static {p1, p3}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-virtual {v1, p0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private updateClipping(Ljava/awt/Graphics2D;Ljava/awt/geom/Rectangle2D;DLorg/apache/poi/hwmf/record/HwmfText$WmfExtTextOutOptions;)V
    .locals 5

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Ljava/awt/geom/Rectangle2D;->getBounds2D()Ljava/awt/geom/Rectangle2D;

    move-result-object v0

    invoke-virtual {v0}, Ljava/awt/geom/RectangularShape;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/awt/Graphics2D;->getTransform()Ljava/awt/geom/AffineTransform;

    move-result-object v0

    invoke-virtual {p2}, Ljava/awt/geom/RectangularShape;->getCenterX()D

    move-result-wide v1

    neg-double v1, v1

    invoke-virtual {p2}, Ljava/awt/geom/RectangularShape;->getCenterY()D

    move-result-wide v3

    neg-double v3, v3

    invoke-virtual {p1, v1, v2, v3, v4}, Ljava/awt/Graphics2D;->translate(DD)V

    invoke-virtual {p1, p3, p4}, Ljava/awt/Graphics2D;->rotate(D)V

    invoke-virtual {p2}, Ljava/awt/geom/RectangularShape;->getCenterX()D

    move-result-wide p3

    invoke-virtual {p2}, Ljava/awt/geom/RectangularShape;->getCenterY()D

    move-result-wide v1

    invoke-virtual {p1, p3, p4, v1, v2}, Ljava/awt/Graphics2D;->translate(DD)V

    iget-object p3, p0, Lorg/apache/poi/hwmf/draw/HwmfGraphics;->prop:Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;

    invoke-virtual {p3}, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->getBkMode()Lorg/apache/poi/hwmf/record/HwmfMisc$WmfSetBkMode$HwmfBkMode;

    move-result-object p3

    sget-object p4, Lorg/apache/poi/hwmf/record/HwmfMisc$WmfSetBkMode$HwmfBkMode;->OPAQUE:Lorg/apache/poi/hwmf/record/HwmfMisc$WmfSetBkMode$HwmfBkMode;

    if-ne p3, p4, :cond_1

    invoke-virtual {p5}, Lorg/apache/poi/hwmf/record/HwmfText$WmfExtTextOutOptions;->isOpaque()Z

    move-result p3

    if-eqz p3, :cond_1

    iget-object p0, p0, Lorg/apache/poi/hwmf/draw/HwmfGraphics;->prop:Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;

    invoke-virtual {p0}, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->getBackgroundColor()Lorg/apache/poi/hwmf/record/HwmfColorRef;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/hwmf/record/HwmfColorRef;->getColor()Ljava/awt/Color;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/awt/Graphics2D;->setPaint(Ljava/awt/Paint;)V

    invoke-virtual {p1, p2}, Ljava/awt/Graphics2D;->fill(Ljava/awt/Shape;)V

    :cond_1
    invoke-virtual {p5}, Lorg/apache/poi/hwmf/record/HwmfText$WmfExtTextOutOptions;->isClipped()Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-virtual {p1, p2}, Ljava/awt/Graphics2D;->setClip(Ljava/awt/Shape;)V

    :cond_2
    invoke-virtual {p1, v0}, Ljava/awt/Graphics2D;->setTransform(Ljava/awt/geom/AffineTransform;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private updateHorizontalAlign(Ljava/awt/geom/AffineTransform;Ljava/awt/font/TextLayout;Z)V
    .locals 4

    sget-object p3, Lorg/apache/poi/hwmf/draw/HwmfGraphics$1;->$SwitchMap$org$apache$poi$hwmf$record$HwmfText$HwmfTextAlignment:[I

    iget-object p0, p0, Lorg/apache/poi/hwmf/draw/HwmfGraphics;->prop:Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;

    invoke-virtual {p0}, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->getTextAlignLatin()Lorg/apache/poi/hwmf/record/HwmfText$HwmfTextAlignment;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, p3, p0

    const/4 p3, 0x2

    const-wide/16 v0, 0x0

    if-eq p0, p3, :cond_1

    const/4 p3, 0x3

    if-eq p0, p3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Ljava/awt/font/TextLayout;->getAdvance()F

    move-result p0

    neg-float p0, p0

    float-to-double p2, p0

    invoke-virtual {p1, p2, p3, v0, v1}, Ljava/awt/geom/AffineTransform;->translate(DD)V

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Ljava/awt/font/TextLayout;->getBounds()Ljava/awt/geom/Rectangle2D;

    move-result-object p0

    invoke-virtual {p0}, Ljava/awt/geom/RectangularShape;->getWidth()D

    move-result-wide p2

    neg-double p2, p2

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    div-double/2addr p2, v2

    invoke-virtual {p1, p2, p3, v0, v1}, Ljava/awt/geom/AffineTransform;->translate(DD)V

    :goto_0
    return-void
.end method

.method private updateVerticalAlign(Ljava/awt/geom/AffineTransform;Ljava/awt/font/TextLayout;Z)V
    .locals 4

    sget-object v0, Lorg/apache/poi/hwmf/draw/HwmfGraphics$1;->$SwitchMap$org$apache$poi$hwmf$record$HwmfText$HwmfTextVerticalAlignment:[I

    iget-object p0, p0, Lorg/apache/poi/hwmf/draw/HwmfGraphics;->prop:Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;

    if-eqz p3, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->getTextVAlignAsian()Lorg/apache/poi/hwmf/record/HwmfText$HwmfTextVerticalAlignment;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->getTextVAlignLatin()Lorg/apache/poi/hwmf/record/HwmfText$HwmfTextVerticalAlignment;

    move-result-object p0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 p3, 0x1

    const-wide/16 v0, 0x0

    if-eq p0, p3, :cond_2

    const/4 p3, 0x3

    if-eq p0, p3, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p2}, Ljava/awt/font/TextLayout;->getBounds()Ljava/awt/geom/Rectangle2D;

    move-result-object p0

    invoke-virtual {p0}, Ljava/awt/geom/RectangularShape;->getHeight()D

    move-result-wide v2

    invoke-virtual {p2}, Ljava/awt/font/TextLayout;->getDescent()F

    move-result p0

    float-to-double p2, p0

    sub-double/2addr v2, p2

    neg-double p2, v2

    invoke-virtual {p1, v0, v1, p2, p3}, Ljava/awt/geom/AffineTransform;->translate(DD)V

    goto :goto_1

    :cond_2
    invoke-virtual {p2}, Ljava/awt/font/TextLayout;->getAscent()F

    move-result p0

    float-to-double p2, p0

    invoke-virtual {p1, v0, v1, p2, p3}, Ljava/awt/geom/AffineTransform;->translate(DD)V

    :goto_1
    return-void
.end method


# virtual methods
.method public addObjectTableEntry(Lorg/apache/poi/hwmf/record/HwmfObjectTableEntry;)V
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/hwmf/draw/HwmfGraphics;->objectIndexes:Ljava/util/BitSet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->nextClearBit(I)I

    move-result v0

    iget-object v1, p0, Lorg/apache/poi/hwmf/draw/HwmfGraphics;->objectIndexes:Ljava/util/BitSet;

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->set(I)V

    iget-object p0, p0, Lorg/apache/poi/hwmf/draw/HwmfGraphics;->objectTable:Ljava/util/TreeMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public applyObjectTableEntry(I)V
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/hwmf/draw/HwmfGraphics;->objectTable:Ljava/util/TreeMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hwmf/record/HwmfObjectTableEntry;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lorg/apache/poi/hwmf/record/HwmfObjectTableEntry;->applyObject(Lorg/apache/poi/hwmf/draw/HwmfGraphics;)V

    return-void

    :cond_0
    new-instance p0, Ljava/util/NoSuchElementException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WMF reference exception - object table entry on index "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " was deleted before."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public draw(Ljava/awt/Shape;)V
    .locals 4

    invoke-virtual {p0}, Lorg/apache/poi/hwmf/draw/HwmfGraphics;->getProperties()Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->getPenStyle()Lorg/apache/poi/hwmf/record/HwmfPenStyle;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/hwmf/record/HwmfPenStyle;->getLineDash()Lorg/apache/poi/hwmf/record/HwmfPenStyle$HwmfLineDash;

    move-result-object v0

    sget-object v1, Lorg/apache/poi/hwmf/record/HwmfPenStyle$HwmfLineDash;->NULL:Lorg/apache/poi/hwmf/record/HwmfPenStyle$HwmfLineDash;

    if-ne v0, v1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Lorg/apache/poi/hwmf/draw/HwmfGraphics;->getStroke()Ljava/awt/BasicStroke;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/poi/hwmf/draw/HwmfGraphics;->getProperties()Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->getBkMode()Lorg/apache/poi/hwmf/record/HwmfMisc$WmfSetBkMode$HwmfBkMode;

    move-result-object v2

    sget-object v3, Lorg/apache/poi/hwmf/record/HwmfMisc$WmfSetBkMode$HwmfBkMode;->OPAQUE:Lorg/apache/poi/hwmf/record/HwmfMisc$WmfSetBkMode$HwmfBkMode;

    if-ne v2, v3, :cond_2

    sget-object v2, Lorg/apache/poi/hwmf/record/HwmfPenStyle$HwmfLineDash;->SOLID:Lorg/apache/poi/hwmf/record/HwmfPenStyle$HwmfLineDash;

    if-eq v0, v2, :cond_2

    sget-object v2, Lorg/apache/poi/hwmf/record/HwmfPenStyle$HwmfLineDash;->INSIDEFRAME:Lorg/apache/poi/hwmf/record/HwmfPenStyle$HwmfLineDash;

    if-eq v0, v2, :cond_2

    iget-object v0, p0, Lorg/apache/poi/hwmf/draw/HwmfGraphics;->graphicsCtx:Ljava/awt/Graphics2D;

    new-instance v2, Ljava/awt/BasicStroke;

    invoke-virtual {v1}, Ljava/awt/BasicStroke;->getLineWidth()F

    move-result v3

    invoke-direct {v2, v3}, Ljava/awt/BasicStroke;-><init>(F)V

    invoke-virtual {v0, v2}, Ljava/awt/Graphics2D;->setStroke(Ljava/awt/Stroke;)V

    iget-object v0, p0, Lorg/apache/poi/hwmf/draw/HwmfGraphics;->graphicsCtx:Ljava/awt/Graphics2D;

    invoke-virtual {p0}, Lorg/apache/poi/hwmf/draw/HwmfGraphics;->getProperties()Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->getBackgroundColor()Lorg/apache/poi/hwmf/record/HwmfColorRef;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/poi/hwmf/record/HwmfColorRef;->getColor()Ljava/awt/Color;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/awt/Graphics2D;->setColor(Ljava/awt/Color;)V

    iget-object v0, p0, Lorg/apache/poi/hwmf/draw/HwmfGraphics;->graphicsCtx:Ljava/awt/Graphics2D;

    invoke-virtual {v0, p1}, Ljava/awt/Graphics2D;->draw(Ljava/awt/Shape;)V

    :cond_2
    iget-object v0, p0, Lorg/apache/poi/hwmf/draw/HwmfGraphics;->graphicsCtx:Ljava/awt/Graphics2D;

    invoke-virtual {v0, v1}, Ljava/awt/Graphics2D;->setStroke(Ljava/awt/Stroke;)V

    iget-object v0, p0, Lorg/apache/poi/hwmf/draw/HwmfGraphics;->graphicsCtx:Ljava/awt/Graphics2D;

    invoke-virtual {p0}, Lorg/apache/poi/hwmf/draw/HwmfGraphics;->getProperties()Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->getPenColor()Lorg/apache/poi/hwmf/record/HwmfColorRef;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/hwmf/record/HwmfColorRef;->getColor()Ljava/awt/Color;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/awt/Graphics2D;->setColor(Ljava/awt/Color;)V

    iget-object p0, p0, Lorg/apache/poi/hwmf/draw/HwmfGraphics;->graphicsCtx:Ljava/awt/Graphics2D;

    invoke-virtual {p0, p1}, Ljava/awt/Graphics2D;->draw(Ljava/awt/Shape;)V

    return-void
.end method

.method public drawImage(Ljava/awt/image/BufferedImage;Ljava/awt/geom/Rectangle2D;Ljava/awt/geom/Rectangle2D;)V
    .locals 1

    .line 1
    new-instance v0, Lorg/apache/poi/hwmf/draw/HwmfGraphics$BufferedImageRenderer;

    invoke-direct {v0, p1}, Lorg/apache/poi/hwmf/draw/HwmfGraphics$BufferedImageRenderer;-><init>(Ljava/awt/image/BufferedImage;)V

    invoke-virtual {p0, v0, p2, p3}, Lorg/apache/poi/hwmf/draw/HwmfGraphics;->drawImage(Lorg/apache/poi/sl/draw/ImageRenderer;Ljava/awt/geom/Rectangle2D;Ljava/awt/geom/Rectangle2D;)V

    return-void
.end method

.method public drawImage(Lorg/apache/poi/sl/draw/ImageRenderer;Ljava/awt/geom/Rectangle2D;Ljava/awt/geom/Rectangle2D;)V
    .locals 11

    .line 2
    invoke-virtual {p2}, Ljava/awt/geom/RectangularShape;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/hwmf/draw/HwmfGraphics;->getProperties()Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;

    move-result-object v0

    .line 4
    sget-object v1, Lorg/apache/poi/hwmf/draw/HwmfGraphics$1;->$SwitchMap$org$apache$poi$hwmf$record$HwmfTernaryRasterOp:[I

    invoke-virtual {v0}, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->getRasterOp3()Lorg/apache/poi/hwmf/record/HwmfTernaryRasterOp;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v2, v1, v2

    const/4 v3, 0x4

    if-eq v2, v3, :cond_9

    const/4 v3, 0x5

    if-eq v2, v3, :cond_8

    const/4 v4, 0x6

    if-eq v2, v4, :cond_7

    const/4 v4, 0x7

    if-eq v2, v4, :cond_6

    if-nez p1, :cond_1

    return-void

    .line 5
    :cond_1
    iget-object v2, p0, Lorg/apache/poi/hwmf/draw/HwmfGraphics;->graphicsCtx:Ljava/awt/Graphics2D;

    invoke-virtual {v2}, Ljava/awt/Graphics2D;->getClip()Ljava/awt/Shape;

    move-result-object v2

    .line 6
    iget-object v4, p0, Lorg/apache/poi/hwmf/draw/HwmfGraphics;->graphicsCtx:Ljava/awt/Graphics2D;

    invoke-virtual {v4}, Ljava/awt/Graphics2D;->getTransform()Ljava/awt/geom/AffineTransform;

    move-result-object v4

    .line 7
    invoke-static {p3}, Lorg/apache/poi/hwmf/draw/HwmfGraphics;->normalizeRect(Ljava/awt/geom/Rectangle2D;)Ljava/awt/geom/Rectangle2D;

    move-result-object v5

    .line 8
    invoke-virtual {v0}, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->getBkMode()Lorg/apache/poi/hwmf/record/HwmfMisc$WmfSetBkMode$HwmfBkMode;

    move-result-object v6

    sget-object v7, Lorg/apache/poi/hwmf/record/HwmfMisc$WmfSetBkMode$HwmfBkMode;->OPAQUE:Lorg/apache/poi/hwmf/record/HwmfMisc$WmfSetBkMode$HwmfBkMode;

    if-ne v6, v7, :cond_2

    .line 9
    iget-object v6, p0, Lorg/apache/poi/hwmf/draw/HwmfGraphics;->graphicsCtx:Ljava/awt/Graphics2D;

    invoke-virtual {v6}, Ljava/awt/Graphics2D;->getPaint()Ljava/awt/Paint;

    move-result-object v6

    .line 10
    iget-object v7, p0, Lorg/apache/poi/hwmf/draw/HwmfGraphics;->graphicsCtx:Ljava/awt/Graphics2D;

    invoke-virtual {v0}, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->getBackgroundColor()Lorg/apache/poi/hwmf/record/HwmfColorRef;

    move-result-object v8

    invoke-virtual {v8}, Lorg/apache/poi/hwmf/record/HwmfColorRef;->getColor()Ljava/awt/Color;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/awt/Graphics2D;->setPaint(Ljava/awt/Paint;)V

    .line 11
    iget-object v7, p0, Lorg/apache/poi/hwmf/draw/HwmfGraphics;->graphicsCtx:Ljava/awt/Graphics2D;

    invoke-virtual {v7, p3}, Ljava/awt/Graphics2D;->fill(Ljava/awt/Shape;)V

    .line 12
    iget-object v7, p0, Lorg/apache/poi/hwmf/draw/HwmfGraphics;->graphicsCtx:Ljava/awt/Graphics2D;

    invoke-virtual {v7, v6}, Ljava/awt/Graphics2D;->setPaint(Ljava/awt/Paint;)V

    .line 13
    :cond_2
    iget-object v6, p0, Lorg/apache/poi/hwmf/draw/HwmfGraphics;->graphicsCtx:Ljava/awt/Graphics2D;

    invoke-virtual {v5}, Ljava/awt/geom/RectangularShape;->getCenterX()D

    move-result-wide v7

    invoke-virtual {v5}, Ljava/awt/geom/RectangularShape;->getCenterY()D

    move-result-wide v9

    invoke-virtual {v6, v7, v8, v9, v10}, Ljava/awt/Graphics2D;->translate(DD)V

    .line 14
    iget-object v6, p0, Lorg/apache/poi/hwmf/draw/HwmfGraphics;->graphicsCtx:Ljava/awt/Graphics2D;

    invoke-virtual {p3}, Ljava/awt/geom/RectangularShape;->getWidth()D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Math;->signum(D)D

    move-result-wide v7

    invoke-virtual {p3}, Ljava/awt/geom/RectangularShape;->getHeight()D

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Math;->signum(D)D

    move-result-wide v9

    invoke-virtual {v6, v7, v8, v9, v10}, Ljava/awt/Graphics2D;->scale(DD)V

    .line 15
    iget-object p3, p0, Lorg/apache/poi/hwmf/draw/HwmfGraphics;->graphicsCtx:Ljava/awt/Graphics2D;

    invoke-virtual {v5}, Ljava/awt/geom/RectangularShape;->getCenterX()D

    move-result-wide v6

    neg-double v6, v6

    invoke-virtual {v5}, Ljava/awt/geom/RectangularShape;->getCenterY()D

    move-result-wide v8

    neg-double v8, v8

    invoke-virtual {p3, v6, v7, v8, v9}, Ljava/awt/Graphics2D;->translate(DD)V

    .line 16
    iget-object p3, p0, Lorg/apache/poi/hwmf/draw/HwmfGraphics;->graphicsCtx:Ljava/awt/Graphics2D;

    invoke-virtual {p3}, Ljava/awt/Graphics2D;->getComposite()Ljava/awt/Composite;

    move-result-object p3

    .line 17
    invoke-virtual {v0}, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->getRasterOp3()Lorg/apache/poi/hwmf/record/HwmfTernaryRasterOp;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    const/4 v3, 0x3

    if-eq v0, v3, :cond_3

    goto :goto_0

    :cond_3
    move v3, v1

    .line 18
    :cond_4
    :goto_0
    iget-object v0, p0, Lorg/apache/poi/hwmf/draw/HwmfGraphics;->graphicsCtx:Ljava/awt/Graphics2D;

    invoke-static {v3}, Ljava/awt/AlphaComposite;->getInstance(I)Ljava/awt/AlphaComposite;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/awt/Graphics2D;->setComposite(Ljava/awt/Composite;)V

    .line 19
    invoke-interface {p1}, Lorg/apache/poi/sl/draw/ImageRenderer;->useDeviceBounds()Z

    move-result v0

    .line 20
    iget-object v1, p0, Lorg/apache/poi/hwmf/draw/HwmfGraphics;->graphicsCtx:Ljava/awt/Graphics2D;

    if-eqz v0, :cond_5

    .line 21
    invoke-interface {p1}, Lorg/apache/poi/sl/draw/ImageRenderer;->getNativeBounds()Ljava/awt/geom/Rectangle2D;

    move-result-object v0

    goto :goto_1

    :cond_5
    invoke-interface {p1}, Lorg/apache/poi/sl/draw/ImageRenderer;->getBounds()Ljava/awt/geom/Rectangle2D;

    move-result-object v0

    :goto_1
    invoke-static {p2, v0}, Lorg/apache/poi/hwmf/draw/HwmfGraphics;->getSubImageInsets(Ljava/awt/geom/Rectangle2D;Ljava/awt/geom/Rectangle2D;)Ljava/awt/Insets;

    move-result-object p2

    .line 22
    invoke-interface {p1, v1, v5, p2}, Lorg/apache/poi/sl/draw/ImageRenderer;->drawImage(Ljava/awt/Graphics2D;Ljava/awt/geom/Rectangle2D;Ljava/awt/Insets;)Z

    .line 23
    iget-object p1, p0, Lorg/apache/poi/hwmf/draw/HwmfGraphics;->graphicsCtx:Ljava/awt/Graphics2D;

    invoke-virtual {p1, p3}, Ljava/awt/Graphics2D;->setComposite(Ljava/awt/Composite;)V

    .line 24
    iget-object p1, p0, Lorg/apache/poi/hwmf/draw/HwmfGraphics;->graphicsCtx:Ljava/awt/Graphics2D;

    invoke-virtual {p1, v4}, Ljava/awt/Graphics2D;->setTransform(Ljava/awt/geom/AffineTransform;)V

    .line 25
    iget-object p0, p0, Lorg/apache/poi/hwmf/draw/HwmfGraphics;->graphicsCtx:Ljava/awt/Graphics2D;

    invoke-virtual {p0, v2}, Ljava/awt/Graphics2D;->setClip(Ljava/awt/Shape;)V

    goto :goto_2

    .line 26
    :cond_6
    iget-object p1, p0, Lorg/apache/poi/hwmf/draw/HwmfGraphics;->graphicsCtx:Ljava/awt/Graphics2D;

    sget-object p2, Ljava/awt/Color;->WHITE:Ljava/awt/Color;

    invoke-virtual {p1, p2}, Ljava/awt/Graphics2D;->setPaint(Ljava/awt/Paint;)V

    .line 27
    iget-object p0, p0, Lorg/apache/poi/hwmf/draw/HwmfGraphics;->graphicsCtx:Ljava/awt/Graphics2D;

    invoke-virtual {p0, p3}, Ljava/awt/Graphics2D;->fill(Ljava/awt/Shape;)V

    goto :goto_2

    .line 28
    :cond_7
    iget-object p1, p0, Lorg/apache/poi/hwmf/draw/HwmfGraphics;->graphicsCtx:Ljava/awt/Graphics2D;

    sget-object p2, Ljava/awt/Color;->BLACK:Ljava/awt/Color;

    invoke-virtual {p1, p2}, Ljava/awt/Graphics2D;->setPaint(Ljava/awt/Paint;)V

    .line 29
    iget-object p0, p0, Lorg/apache/poi/hwmf/draw/HwmfGraphics;->graphicsCtx:Ljava/awt/Graphics2D;

    invoke-virtual {p0, p3}, Ljava/awt/Graphics2D;->fill(Ljava/awt/Shape;)V

    goto :goto_2

    .line 30
    :cond_8
    iget-object p1, p0, Lorg/apache/poi/hwmf/draw/HwmfGraphics;->graphicsCtx:Ljava/awt/Graphics2D;

    invoke-virtual {p0}, Lorg/apache/poi/hwmf/draw/HwmfGraphics;->getFill()Ljava/awt/Paint;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/awt/Graphics2D;->setPaint(Ljava/awt/Paint;)V

    .line 31
    iget-object p0, p0, Lorg/apache/poi/hwmf/draw/HwmfGraphics;->graphicsCtx:Ljava/awt/Graphics2D;

    invoke-virtual {p0, p3}, Ljava/awt/Graphics2D;->fill(Ljava/awt/Shape;)V

    :cond_9
    :goto_2
    return-void
.end method

.method public drawString([BILjava/awt/geom/Point2D;)V
    .locals 9

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    .line 1
    invoke-virtual/range {v0 .. v8}, Lorg/apache/poi/hwmf/draw/HwmfGraphics;->drawString([BILjava/awt/geom/Point2D;Ljava/awt/geom/Dimension2D;Ljava/awt/geom/Rectangle2D;Lorg/apache/poi/hwmf/record/HwmfText$WmfExtTextOutOptions;Ljava/util/List;Z)V

    return-void
.end method

.method public drawString([BILjava/awt/geom/Point2D;Ljava/awt/geom/Dimension2D;Ljava/awt/geom/Rectangle2D;Lorg/apache/poi/hwmf/record/HwmfText$WmfExtTextOutOptions;Ljava/util/List;Z)V
    .locals 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI",
            "Ljava/awt/geom/Point2D;",
            "Ljava/awt/geom/Dimension2D;",
            "Ljava/awt/geom/Rectangle2D;",
            "Lorg/apache/poi/hwmf/record/HwmfText$WmfExtTextOutOptions;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v0, p1

    move/from16 v8, p2

    move-object/from16 v9, p7

    .line 2
    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/hwmf/draw/HwmfGraphics;->getProperties()Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;

    move-result-object v10

    .line 3
    iget-object v1, v7, Lorg/apache/poi/hwmf/draw/HwmfGraphics;->graphicsCtx:Ljava/awt/Graphics2D;

    invoke-virtual {v1}, Ljava/awt/Graphics2D;->getTransform()Ljava/awt/geom/AffineTransform;

    move-result-object v11

    .line 4
    :try_start_0
    invoke-virtual {v11}, Ljava/awt/geom/AffineTransform;->createInverse()Ljava/awt/geom/AffineTransform;
    :try_end_0
    .catch Ljava/awt/geom/NoninvertibleTransformException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    invoke-virtual {v10}, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->getFont()Lorg/apache/poi/hwmf/record/HwmfFont;

    move-result-object v1

    if-eqz v1, :cond_10

    if-eqz v0, :cond_10

    .line 6
    array-length v2, v0

    if-nez v2, :cond_0

    goto/16 :goto_c

    :cond_0
    move/from16 v2, p8

    .line 7
    invoke-direct {v7, v1, v2}, Lorg/apache/poi/hwmf/draw/HwmfGraphics;->getCharset(Lorg/apache/poi/hwmf/record/HwmfFont;Z)Ljava/nio/charset/Charset;

    move-result-object v12

    .line 8
    invoke-direct {v7, v12, v0, v8}, Lorg/apache/poi/hwmf/draw/HwmfGraphics;->trimText(Ljava/nio/charset/Charset;[BI)Ljava/lang/String;

    move-result-object v0

    .line 9
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    return-void

    .line 10
    :cond_1
    iget-object v2, v7, Lorg/apache/poi/hwmf/draw/HwmfGraphics;->graphicsCtx:Ljava/awt/Graphics2D;

    invoke-static {v2}, Lorg/apache/poi/sl/draw/DrawFactory;->getInstance(Ljava/awt/Graphics2D;)Lorg/apache/poi/sl/draw/DrawFactory;

    move-result-object v2

    iget-object v3, v7, Lorg/apache/poi/hwmf/draw/HwmfGraphics;->graphicsCtx:Ljava/awt/Graphics2D;

    invoke-virtual {v2, v3}, Lorg/apache/poi/sl/draw/DrawFactory;->getFontManager(Ljava/awt/Graphics2D;)Lorg/apache/poi/sl/draw/DrawFontManager;

    move-result-object v2

    .line 11
    iget-object v3, v7, Lorg/apache/poi/hwmf/draw/HwmfGraphics;->graphicsCtx:Ljava/awt/Graphics2D;

    invoke-interface {v2, v3, v1}, Lorg/apache/poi/sl/draw/DrawFontManager;->getMappedFont(Ljava/awt/Graphics2D;Lorg/apache/poi/common/usermodel/fonts/FontInfo;)Lorg/apache/poi/common/usermodel/fonts/FontInfo;

    move-result-object v3

    .line 12
    iget-object v4, v7, Lorg/apache/poi/hwmf/draw/HwmfGraphics;->graphicsCtx:Ljava/awt/Graphics2D;

    invoke-interface {v2, v4, v3, v0}, Lorg/apache/poi/sl/draw/DrawFontManager;->mapFontCharset(Ljava/awt/Graphics2D;Lorg/apache/poi/common/usermodel/fonts/FontInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 13
    new-instance v13, Ljava/text/AttributedString;

    invoke-direct {v13, v0}, Ljava/text/AttributedString;-><init>(Ljava/lang/String;)V

    .line 14
    new-instance v2, Lcom/sunia/HTREnginev2/c5i;

    invoke-direct {v2, v13}, Lcom/sunia/HTREnginev2/c5i;-><init>(Ljava/text/AttributedString;)V

    invoke-interface {v3}, Lorg/apache/poi/common/usermodel/fonts/FontInfo;->getTypeface()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v7, v2, v1, v3}, Lorg/apache/poi/hwmf/draw/HwmfGraphics;->addAttributes(Ljava/util/function/BiConsumer;Lorg/apache/poi/hwmf/record/HwmfFont;Ljava/lang/String;)V

    .line 15
    iget-object v2, v7, Lorg/apache/poi/hwmf/draw/HwmfGraphics;->graphicsCtx:Ljava/awt/Graphics2D;

    invoke-virtual {v2}, Ljava/awt/Graphics2D;->getFontRenderContext()Ljava/awt/font/FontRenderContext;

    move-result-object v4

    .line 16
    new-instance v2, Ljava/awt/font/LineBreakMeasurer;

    invoke-virtual {v13}, Ljava/text/AttributedString;->getIterator()Ljava/text/AttributedCharacterIterator;

    move-result-object v3

    invoke-direct {v2, v3, v4}, Ljava/awt/font/LineBreakMeasurer;-><init>(Ljava/text/AttributedCharacterIterator;Ljava/awt/font/FontRenderContext;)V

    const/high16 v3, 0x4f000000

    .line 17
    invoke-virtual {v2, v3}, Ljava/awt/font/LineBreakMeasurer;->nextLayout(F)Ljava/awt/font/TextLayout;

    move-result-object v14

    .line 18
    invoke-virtual {v1}, Lorg/apache/poi/hwmf/record/HwmfFont;->getEscapement()I

    move-result v1

    neg-int v1, v1

    int-to-double v1, v1

    const-wide/high16 v5, 0x4024000000000000L    # 10.0

    div-double/2addr v1, v5

    invoke-static {v1, v2}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v5

    const/4 v2, 0x0

    if-nez p6, :cond_2

    .line 19
    invoke-virtual {v0}, Ljava/lang/String;->codePoints()Ljava/util/stream/IntStream;

    move-result-object v1

    new-instance v3, Lcom/sunia/HTREnginev2/d5i;

    invoke-direct {v3}, Lcom/sunia/HTREnginev2/d5i;-><init>()V

    invoke-interface {v1, v3}, Ljava/util/stream/IntStream;->anyMatch(Ljava/util/function/IntPredicate;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 20
    invoke-virtual {v12, v1}, Ljava/nio/charset/Charset;->displayName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "GB"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v16, 0x1

    goto :goto_0

    :cond_2
    move/from16 v16, v2

    :goto_0
    move-object/from16 v1, p0

    move v15, v2

    move-wide v2, v5

    move-wide/from16 v17, v5

    move-object v5, v13

    move/from16 v6, v16

    .line 21
    invoke-direct/range {v1 .. v6}, Lorg/apache/poi/hwmf/draw/HwmfGraphics;->getRotatedOffset(DLjava/awt/font/FontRenderContext;Ljava/text/AttributedString;Z)Ljava/awt/geom/Point2D;

    move-result-object v16

    .line 22
    iget-object v1, v7, Lorg/apache/poi/hwmf/draw/HwmfGraphics;->graphicsCtx:Ljava/awt/Graphics2D;

    invoke-virtual {v1}, Ljava/awt/Graphics2D;->getClip()Ljava/awt/Shape;

    move-result-object v6

    .line 23
    :try_start_1
    iget-object v2, v7, Lorg/apache/poi/hwmf/draw/HwmfGraphics;->graphicsCtx:Ljava/awt/Graphics2D;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object/from16 v1, p0

    move-object/from16 v3, p5

    move-wide/from16 v4, v17

    move-object/from16 v19, v6

    move-object/from16 v6, p6

    :try_start_2
    invoke-direct/range {v1 .. v6}, Lorg/apache/poi/hwmf/draw/HwmfGraphics;->updateClipping(Ljava/awt/Graphics2D;Ljava/awt/geom/Rectangle2D;DLorg/apache/poi/hwmf/record/HwmfText$WmfExtTextOutOptions;)V

    const-wide/16 v1, 0x0

    move-object/from16 v3, p3

    .line 24
    invoke-virtual {v3, v1, v2, v1, v2}, Ljava/awt/geom/Point2D;->distance(DD)D

    move-result-wide v4

    cmpl-double v4, v4, v1

    if-nez v4, :cond_3

    invoke-virtual {v10}, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->getLocation()Ljava/awt/geom/Point2D;

    move-result-object v3

    .line 25
    :cond_3
    iget-object v4, v7, Lorg/apache/poi/hwmf/draw/HwmfGraphics;->graphicsCtx:Ljava/awt/Graphics2D;

    invoke-virtual {v3}, Ljava/awt/geom/Point2D;->getX()D

    move-result-wide v5

    invoke-virtual {v3}, Ljava/awt/geom/Point2D;->getY()D

    move-result-wide v1

    invoke-virtual {v4, v5, v6, v1, v2}, Ljava/awt/Graphics2D;->translate(DD)V

    .line 26
    iget-object v1, v7, Lorg/apache/poi/hwmf/draw/HwmfGraphics;->graphicsCtx:Ljava/awt/Graphics2D;

    move-wide/from16 v2, v17

    invoke-virtual {v1, v2, v3}, Ljava/awt/Graphics2D;->rotate(D)V

    const-wide/high16 v17, 0x3ff0000000000000L    # 1.0

    if-eqz p4, :cond_6

    .line 27
    iget-object v1, v7, Lorg/apache/poi/hwmf/draw/HwmfGraphics;->graphicsCtx:Ljava/awt/Graphics2D;

    invoke-virtual/range {p4 .. p4}, Ljava/awt/geom/Dimension2D;->getWidth()D

    move-result-wide v20

    const-wide/16 v22, 0x0

    cmpg-double v6, v20, v22

    if-gez v6, :cond_4

    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    goto :goto_1

    :cond_4
    move-wide/from16 v4, v17

    :goto_1
    invoke-virtual/range {p4 .. p4}, Ljava/awt/geom/Dimension2D;->getHeight()D

    move-result-wide v24

    cmpg-double v6, v24, v22

    move-wide/from16 v22, v2

    if-gez v6, :cond_5

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    goto :goto_2

    :cond_5
    move-wide/from16 v2, v17

    :goto_2
    invoke-virtual {v1, v4, v5, v2, v3}, Ljava/awt/Graphics2D;->scale(DD)V

    goto :goto_3

    :cond_6
    move-wide/from16 v22, v2

    .line 28
    :goto_3
    iget-object v1, v7, Lorg/apache/poi/hwmf/draw/HwmfGraphics;->graphicsCtx:Ljava/awt/Graphics2D;

    invoke-virtual {v11}, Ljava/awt/geom/AffineTransform;->getScaleX()D

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmpg-double v2, v2, v4

    if-gez v2, :cond_7

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    goto :goto_4

    :cond_7
    move-wide/from16 v2, v17

    :goto_4
    invoke-virtual {v11}, Ljava/awt/geom/AffineTransform;->getScaleY()D

    move-result-wide v24

    cmpg-double v6, v24, v4

    if-gez v6, :cond_8

    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    goto :goto_5

    :cond_8
    move-wide/from16 v4, v17

    :goto_5
    invoke-virtual {v1, v2, v3, v4, v5}, Ljava/awt/Graphics2D;->scale(DD)V

    .line 29
    iget-object v1, v7, Lorg/apache/poi/hwmf/draw/HwmfGraphics;->graphicsCtx:Ljava/awt/Graphics2D;

    invoke-virtual/range {v16 .. v16}, Ljava/awt/geom/Point2D;->getX()D

    move-result-wide v2

    invoke-virtual/range {v16 .. v16}, Ljava/awt/geom/Point2D;->getY()D

    move-result-wide v4

    invoke-virtual {v1, v2, v3, v4, v5}, Ljava/awt/Graphics2D;->translate(DD)V

    .line 30
    iget-object v1, v7, Lorg/apache/poi/hwmf/draw/HwmfGraphics;->graphicsCtx:Ljava/awt/Graphics2D;

    invoke-virtual {v10}, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->getTextColor()Lorg/apache/poi/hwmf/record/HwmfColorRef;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/poi/hwmf/record/HwmfColorRef;->getColor()Ljava/awt/Color;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/awt/Graphics2D;->setColor(Ljava/awt/Color;)V

    if-eqz v9, :cond_b

    .line 31
    invoke-interface/range {p7 .. p7}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v8, :cond_b

    .line 32
    invoke-interface/range {p7 .. p7}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v1, v2, :cond_9

    const/4 v2, 0x1

    goto :goto_6

    :cond_9
    move v2, v15

    :goto_6
    move v1, v15

    move v5, v1

    const-wide/16 v3, 0x0

    .line 33
    :goto_7
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v1, v6, :cond_c

    add-int/lit8 v6, v1, 0x1

    const/4 v8, 0x0

    .line 34
    invoke-virtual {v13, v8, v1, v6}, Ljava/text/AttributedString;->getIterator([Ljava/text/AttributedCharacterIterator$Attribute;II)Ljava/text/AttributedCharacterIterator;

    move-result-object v1

    .line 35
    iget-object v8, v7, Lorg/apache/poi/hwmf/draw/HwmfGraphics;->graphicsCtx:Ljava/awt/Graphics2D;

    double-to-int v14, v3

    invoke-virtual {v8, v1, v14, v15}, Ljava/awt/Graphics2D;->drawString(Ljava/text/AttributedCharacterIterator;II)V

    if-eqz v2, :cond_a

    const/4 v1, 0x1

    goto :goto_8

    .line 36
    :cond_a
    invoke-interface {v1}, Ljava/text/CharacterIterator;->first()C

    move-result v1

    invoke-direct {v7, v12, v1}, Lorg/apache/poi/hwmf/draw/HwmfGraphics;->getCharByteLength(Ljava/nio/charset/Charset;C)I

    move-result v1

    .line 37
    :goto_8
    invoke-direct {v7, v9, v5, v1}, Lorg/apache/poi/hwmf/draw/HwmfGraphics;->getCharWidth(Ljava/util/List;II)I

    move-result v8

    add-int/2addr v5, v1

    move-object/from16 p8, v0

    int-to-double v0, v8

    add-double/2addr v3, v0

    move-object/from16 v0, p8

    move v1, v6

    goto :goto_7

    .line 38
    :cond_b
    iget-object v0, v7, Lorg/apache/poi/hwmf/draw/HwmfGraphics;->graphicsCtx:Ljava/awt/Graphics2D;

    invoke-virtual {v13}, Ljava/text/AttributedString;->getIterator()Ljava/text/AttributedCharacterIterator;

    move-result-object v1

    invoke-virtual {v0, v1, v15, v15}, Ljava/awt/Graphics2D;->drawString(Ljava/text/AttributedCharacterIterator;II)V

    .line 39
    invoke-virtual {v14}, Ljava/awt/font/TextLayout;->getBounds()Ljava/awt/geom/Rectangle2D;

    move-result-object v0

    invoke-virtual {v0}, Ljava/awt/geom/RectangularShape;->getWidth()D

    move-result-wide v3

    .line 40
    :cond_c
    new-instance v0, Ljava/awt/geom/AffineTransform;

    invoke-direct {v0}, Ljava/awt/geom/AffineTransform;-><init>()V

    .line 41
    invoke-virtual/range {v16 .. v16}, Ljava/awt/geom/Point2D;->getX()D

    move-result-wide v1

    neg-double v1, v1

    invoke-virtual/range {v16 .. v16}, Ljava/awt/geom/Point2D;->getY()D

    move-result-wide v5

    neg-double v5, v5

    invoke-virtual {v0, v1, v2, v5, v6}, Ljava/awt/geom/AffineTransform;->translate(DD)V

    if-eqz p4, :cond_f

    .line 42
    invoke-virtual/range {p4 .. p4}, Ljava/awt/geom/Dimension2D;->getWidth()D

    move-result-wide v1

    const-wide/16 v5, 0x0

    cmpg-double v1, v1, v5

    if-gez v1, :cond_d

    move-wide/from16 v1, v17

    goto :goto_9

    :cond_d
    const-wide/high16 v1, -0x4010000000000000L    # -1.0

    :goto_9
    invoke-virtual/range {p4 .. p4}, Ljava/awt/geom/Dimension2D;->getHeight()D

    move-result-wide v8

    cmpg-double v8, v8, v5

    if-gez v8, :cond_e

    move-wide/from16 v5, v17

    goto :goto_a

    :cond_e
    const-wide/high16 v5, -0x4010000000000000L    # -1.0

    :goto_a
    invoke-virtual {v0, v1, v2, v5, v6}, Ljava/awt/geom/AffineTransform;->scale(DD)V

    :cond_f
    move-wide/from16 v1, v22

    neg-double v1, v1

    .line 43
    invoke-virtual {v0, v1, v2}, Ljava/awt/geom/AffineTransform;->rotate(D)V

    .line 44
    new-instance v0, Ljava/awt/geom/Point2D$Double;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v3, v4, v1, v2}, Ljava/awt/geom/Point2D$Double;-><init>(DD)V

    .line 45
    invoke-virtual {v10}, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->getLocation()Ljava/awt/geom/Point2D;

    move-result-object v1

    .line 46
    invoke-virtual {v1}, Ljava/awt/geom/Point2D;->getX()D

    move-result-wide v2

    invoke-virtual {v0}, Ljava/awt/geom/Point2D;->getX()D

    move-result-wide v4

    add-double/2addr v2, v4

    invoke-virtual {v1}, Ljava/awt/geom/Point2D;->getY()D

    move-result-wide v4

    invoke-virtual {v0}, Ljava/awt/geom/Point2D;->getY()D

    move-result-wide v0

    add-double/2addr v4, v0

    invoke-virtual {v10, v2, v3, v4, v5}, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->setLocation(DD)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 47
    iget-object v0, v7, Lorg/apache/poi/hwmf/draw/HwmfGraphics;->graphicsCtx:Ljava/awt/Graphics2D;

    invoke-virtual {v0, v11}, Ljava/awt/Graphics2D;->setTransform(Ljava/awt/geom/AffineTransform;)V

    .line 48
    iget-object v0, v7, Lorg/apache/poi/hwmf/draw/HwmfGraphics;->graphicsCtx:Ljava/awt/Graphics2D;

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/awt/Graphics2D;->setClip(Ljava/awt/Shape;)V

    return-void

    :catchall_0
    move-exception v0

    move-object/from16 v1, v19

    goto :goto_b

    :catchall_1
    move-exception v0

    move-object v1, v6

    .line 49
    :goto_b
    iget-object v2, v7, Lorg/apache/poi/hwmf/draw/HwmfGraphics;->graphicsCtx:Ljava/awt/Graphics2D;

    invoke-virtual {v2, v11}, Ljava/awt/Graphics2D;->setTransform(Ljava/awt/geom/AffineTransform;)V

    .line 50
    iget-object v2, v7, Lorg/apache/poi/hwmf/draw/HwmfGraphics;->graphicsCtx:Ljava/awt/Graphics2D;

    invoke-virtual {v2, v1}, Ljava/awt/Graphics2D;->setClip(Ljava/awt/Shape;)V

    .line 51
    throw v0

    :catch_0
    :cond_10
    :goto_c
    return-void
.end method

.method public fill(Ljava/awt/Shape;)V
    .locals 3

    invoke-virtual {p0}, Lorg/apache/poi/hwmf/draw/HwmfGraphics;->getProperties()Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->getBrushStyle()Lorg/apache/poi/hwmf/record/HwmfBrushStyle;

    move-result-object v0

    sget-object v1, Lorg/apache/poi/hwmf/record/HwmfBrushStyle;->BS_NULL:Lorg/apache/poi/hwmf/record/HwmfBrushStyle;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lorg/apache/poi/hwmf/draw/HwmfGraphics;->graphicsCtx:Ljava/awt/Graphics2D;

    invoke-virtual {v0}, Ljava/awt/Graphics2D;->getComposite()Ljava/awt/Composite;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/hwmf/draw/HwmfGraphics;->graphicsCtx:Ljava/awt/Graphics2D;

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/awt/AlphaComposite;->getInstance(I)Ljava/awt/AlphaComposite;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/awt/Graphics2D;->setComposite(Ljava/awt/Composite;)V

    iget-object v1, p0, Lorg/apache/poi/hwmf/draw/HwmfGraphics;->graphicsCtx:Ljava/awt/Graphics2D;

    invoke-virtual {p0}, Lorg/apache/poi/hwmf/draw/HwmfGraphics;->getFill()Ljava/awt/Paint;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/awt/Graphics2D;->setPaint(Ljava/awt/Paint;)V

    iget-object v1, p0, Lorg/apache/poi/hwmf/draw/HwmfGraphics;->graphicsCtx:Ljava/awt/Graphics2D;

    invoke-virtual {v1, p1}, Ljava/awt/Graphics2D;->fill(Ljava/awt/Shape;)V

    iget-object v1, p0, Lorg/apache/poi/hwmf/draw/HwmfGraphics;->graphicsCtx:Ljava/awt/Graphics2D;

    invoke-virtual {v1, v0}, Ljava/awt/Graphics2D;->setComposite(Ljava/awt/Composite;)V

    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/poi/hwmf/draw/HwmfGraphics;->draw(Ljava/awt/Shape;)V

    return-void
.end method

.method public getFill()Ljava/awt/Paint;
    .locals 2

    sget-object v0, Lorg/apache/poi/hwmf/draw/HwmfGraphics$1;->$SwitchMap$org$apache$poi$hwmf$record$HwmfBrushStyle:[I

    invoke-virtual {p0}, Lorg/apache/poi/hwmf/draw/HwmfGraphics;->getProperties()Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->getBrushStyle()Lorg/apache/poi/hwmf/record/HwmfBrushStyle;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    invoke-virtual {p0}, Lorg/apache/poi/hwmf/draw/HwmfGraphics;->getLinearGradient()Ljava/awt/Paint;

    move-result-object p0

    return-object p0

    :pswitch_1
    invoke-virtual {p0}, Lorg/apache/poi/hwmf/draw/HwmfGraphics;->getHatchedFill()Ljava/awt/Paint;

    move-result-object p0

    return-object p0

    :pswitch_2
    invoke-virtual {p0}, Lorg/apache/poi/hwmf/draw/HwmfGraphics;->getSolidFill()Ljava/awt/Paint;

    move-result-object p0

    return-object p0

    :pswitch_3
    invoke-virtual {p0}, Lorg/apache/poi/hwmf/draw/HwmfGraphics;->getPatternPaint()Ljava/awt/Paint;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getHatchedFill()Ljava/awt/Paint;
    .locals 6

    invoke-virtual {p0}, Lorg/apache/poi/hwmf/draw/HwmfGraphics;->getProperties()Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->getBrushHatch()Lorg/apache/poi/hwmf/record/HwmfHatchStyle;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hwmf/record/HwmfHatchStyle;->getPattern()J

    move-result-wide v0

    invoke-virtual {p0}, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->getBackgroundColor()Lorg/apache/poi/hwmf/record/HwmfColorRef;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/poi/hwmf/record/HwmfColorRef;->getColor()Ljava/awt/Color;

    move-result-object v2

    invoke-virtual {p0}, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->getBrushColor()Lorg/apache/poi/hwmf/record/HwmfColorRef;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/poi/hwmf/record/HwmfColorRef;->getColor()Ljava/awt/Color;

    move-result-object v3

    invoke-virtual {p0}, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->getBkMode()Lorg/apache/poi/hwmf/record/HwmfMisc$WmfSetBkMode$HwmfBkMode;

    move-result-object p0

    sget-object v4, Lorg/apache/poi/hwmf/record/HwmfMisc$WmfSetBkMode$HwmfBkMode;->TRANSPARENT:Lorg/apache/poi/hwmf/record/HwmfMisc$WmfSetBkMode$HwmfBkMode;

    const/4 v5, 0x0

    if-ne p0, v4, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    move p0, v5

    :goto_0
    invoke-static {v0, v1, v2, v3, p0}, Lorg/apache/poi/hwmf/draw/HwmfGraphics;->getPatternFromLong(JLjava/awt/Color;Ljava/awt/Color;Z)Ljava/awt/image/BufferedImage;

    move-result-object p0

    new-instance v0, Ljava/awt/TexturePaint;

    new-instance v1, Ljava/awt/Rectangle;

    const/16 v2, 0x8

    invoke-direct {v1, v5, v5, v2, v2}, Ljava/awt/Rectangle;-><init>(IIII)V

    invoke-direct {v0, p0, v1}, Ljava/awt/TexturePaint;-><init>(Ljava/awt/image/BufferedImage;Ljava/awt/geom/Rectangle2D;)V

    return-object v0
.end method

.method public getImageRenderer(Ljava/lang/String;)Lorg/apache/poi/sl/draw/ImageRenderer;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hwmf/draw/HwmfGraphics;->graphicsCtx:Ljava/awt/Graphics2D;

    invoke-static {p0, p1}, Lorg/apache/poi/sl/draw/DrawPictureShape;->getImageRenderer(Ljava/awt/Graphics2D;Ljava/lang/String;)Lorg/apache/poi/sl/draw/ImageRenderer;

    move-result-object p0

    return-object p0
.end method

.method public getInitTransform()Ljava/awt/geom/AffineTransform;
    .locals 1

    new-instance v0, Ljava/awt/geom/AffineTransform;

    iget-object p0, p0, Lorg/apache/poi/hwmf/draw/HwmfGraphics;->initialAT:Ljava/awt/geom/AffineTransform;

    invoke-direct {v0, p0}, Ljava/awt/geom/AffineTransform;-><init>(Ljava/awt/geom/AffineTransform;)V

    return-object v0
.end method

.method public getLinearGradient()Ljava/awt/Paint;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getPatternPaint()Ljava/awt/Paint;
    .locals 12

    invoke-virtual {p0}, Lorg/apache/poi/hwmf/draw/HwmfGraphics;->getProperties()Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->getBrushBitmap()Lorg/apache/poi/sl/draw/ImageRenderer;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-interface {v0}, Lorg/apache/poi/sl/draw/ImageRenderer;->getDimension()Ljava/awt/geom/Dimension2D;

    move-result-object v1

    new-instance v11, Ljava/awt/geom/Rectangle2D$Double;

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    invoke-virtual {v1}, Ljava/awt/geom/Dimension2D;->getWidth()D

    move-result-wide v7

    invoke-virtual {v1}, Ljava/awt/geom/Dimension2D;->getHeight()D

    move-result-wide v9

    move-object v2, v11

    invoke-direct/range {v2 .. v10}, Ljava/awt/geom/Rectangle2D$Double;-><init>(DDDD)V

    invoke-virtual {p0}, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->getBrushTransform()Ljava/awt/geom/AffineTransform;

    move-result-object p0

    invoke-virtual {p0, v11}, Ljava/awt/geom/AffineTransform;->createTransformedShape(Ljava/awt/Shape;)Ljava/awt/Shape;

    move-result-object p0

    invoke-interface {p0}, Ljava/awt/Shape;->getBounds2D()Ljava/awt/geom/Rectangle2D;

    move-result-object p0

    new-instance v1, Ljava/awt/TexturePaint;

    invoke-interface {v0}, Lorg/apache/poi/sl/draw/ImageRenderer;->getImage()Ljava/awt/image/BufferedImage;

    move-result-object v0

    invoke-direct {v1, v0, p0}, Ljava/awt/TexturePaint;-><init>(Ljava/awt/image/BufferedImage;Ljava/awt/geom/Rectangle2D;)V

    return-object v1
.end method

.method public getProperties()Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hwmf/draw/HwmfGraphics;->prop:Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/poi/hwmf/draw/HwmfGraphics;->newProperties(Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;)Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/hwmf/draw/HwmfGraphics;->prop:Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/hwmf/draw/HwmfGraphics;->prop:Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;

    return-object p0
.end method

.method public getSolidFill()Ljava/awt/Paint;
    .locals 0

    invoke-virtual {p0}, Lorg/apache/poi/hwmf/draw/HwmfGraphics;->getProperties()Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->getBrushColor()Lorg/apache/poi/hwmf/record/HwmfColorRef;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/hwmf/record/HwmfColorRef;->getColor()Ljava/awt/Color;

    move-result-object p0

    return-object p0
.end method

.method public getStroke()Ljava/awt/BasicStroke;
    .locals 12

    invoke-virtual {p0}, Lorg/apache/poi/hwmf/draw/HwmfGraphics;->getProperties()Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->getPenStyle()Lorg/apache/poi/hwmf/record/HwmfPenStyle;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->getPenWidth()D

    move-result-wide v1

    double-to-float v1, v1

    const/4 v2, 0x0

    cmpl-float v3, v1, v2

    const/high16 v4, 0x3f800000    # 1.0f

    if-nez v3, :cond_0

    move v6, v4

    goto :goto_0

    :cond_0
    move v6, v1

    :goto_0
    invoke-virtual {v0}, Lorg/apache/poi/hwmf/record/HwmfPenStyle;->getLineCap()Lorg/apache/poi/hwmf/record/HwmfPenStyle$HwmfLineCap;

    move-result-object v1

    iget v7, v1, Lorg/apache/poi/hwmf/record/HwmfPenStyle$HwmfLineCap;->awtFlag:I

    invoke-virtual {v0}, Lorg/apache/poi/hwmf/record/HwmfPenStyle;->getLineJoin()Lorg/apache/poi/hwmf/record/HwmfPenStyle$HwmfLineJoin;

    move-result-object v1

    iget v8, v1, Lorg/apache/poi/hwmf/record/HwmfPenStyle$HwmfLineJoin;->awtFlag:I

    invoke-virtual {p0}, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->getPenMiterLimit()D

    move-result-wide v9

    double-to-float p0, v9

    invoke-virtual {v0}, Lorg/apache/poi/hwmf/record/HwmfPenStyle;->getLineDashes()[F

    move-result-object v10

    invoke-virtual {v0}, Lorg/apache/poi/hwmf/record/HwmfPenStyle;->isAlternateDash()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz v10, :cond_1

    array-length v0, v10

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    const/4 v0, 0x0

    aget v2, v10, v0

    :cond_1
    move v11, v2

    new-instance v0, Ljava/awt/BasicStroke;

    invoke-static {v4, p0}, Ljava/lang/Math;->max(FF)F

    move-result v9

    move-object v5, v0

    invoke-direct/range {v5 .. v11}, Ljava/awt/BasicStroke;-><init>(FIIF[FF)V

    return-object v0
.end method

.method public getTransform()Ljava/awt/geom/AffineTransform;
    .locals 1

    new-instance v0, Ljava/awt/geom/AffineTransform;

    iget-object p0, p0, Lorg/apache/poi/hwmf/draw/HwmfGraphics;->graphicsCtx:Ljava/awt/Graphics2D;

    invoke-virtual {p0}, Ljava/awt/Graphics2D;->getTransform()Ljava/awt/geom/AffineTransform;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/awt/geom/AffineTransform;-><init>(Ljava/awt/geom/AffineTransform;)V

    return-object v0
.end method

.method public newProperties(Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;)Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;
    .locals 0

    new-instance p0, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;

    if-nez p1, :cond_0

    invoke-direct {p0}, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;-><init>()V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;-><init>(Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;)V

    :goto_0
    return-object p0
.end method

.method public restoreProperties(I)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, -0x1

    if-gez p1, :cond_2

    iget-object v1, p0, Lorg/apache/poi/hwmf/draw/HwmfGraphics;->propStack:Ljava/util/List;

    invoke-virtual {p0}, Lorg/apache/poi/hwmf/draw/HwmfGraphics;->getProperties()Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    if-ne v1, v0, :cond_1

    iget-object v1, p0, Lorg/apache/poi/hwmf/draw/HwmfGraphics;->propStack:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    :cond_1
    add-int/2addr p1, v1

    :cond_2
    if-ne p1, v0, :cond_3

    iget-object p1, p0, Lorg/apache/poi/hwmf/draw/HwmfGraphics;->propStack:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :cond_3
    iget-object v0, p0, Lorg/apache/poi/hwmf/draw/HwmfGraphics;->propStack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-lt v0, p1, :cond_4

    iget-object v1, p0, Lorg/apache/poi/hwmf/draw/HwmfGraphics;->propStack:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;

    iput-object v1, p0, Lorg/apache/poi/hwmf/draw/HwmfGraphics;->prop:Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lorg/apache/poi/hwmf/draw/HwmfGraphics;->graphicsCtx:Ljava/awt/Graphics2D;

    iget-object v0, p0, Lorg/apache/poi/hwmf/draw/HwmfGraphics;->prop:Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;

    invoke-virtual {v0}, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->getTransform()Ljava/awt/geom/AffineTransform;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/awt/Graphics2D;->setTransform(Ljava/awt/geom/AffineTransform;)V

    iget-object p1, p0, Lorg/apache/poi/hwmf/draw/HwmfGraphics;->graphicsCtx:Ljava/awt/Graphics2D;

    iget-object p0, p0, Lorg/apache/poi/hwmf/draw/HwmfGraphics;->prop:Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;

    invoke-virtual {p0}, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->getClip()Ljava/awt/Shape;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/awt/Graphics2D;->setClip(Ljava/awt/Shape;)V

    return-void
.end method

.method public saveProperties()V
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/hwmf/draw/HwmfGraphics;->getProperties()Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/hwmf/draw/HwmfGraphics;->graphicsCtx:Ljava/awt/Graphics2D;

    invoke-virtual {v1}, Ljava/awt/Graphics2D;->getTransform()Ljava/awt/geom/AffineTransform;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->setTransform(Ljava/awt/geom/AffineTransform;)V

    iget-object v1, p0, Lorg/apache/poi/hwmf/draw/HwmfGraphics;->graphicsCtx:Ljava/awt/Graphics2D;

    invoke-virtual {v1}, Ljava/awt/Graphics2D;->getClip()Ljava/awt/Shape;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->setClip(Ljava/awt/Shape;)V

    iget-object v1, p0, Lorg/apache/poi/hwmf/draw/HwmfGraphics;->propStack:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v0}, Lorg/apache/poi/hwmf/draw/HwmfGraphics;->newProperties(Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;)Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/hwmf/draw/HwmfGraphics;->prop:Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;

    return-void
.end method

.method public setCharsetProvider(Ljava/util/function/Supplier;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier<",
            "Ljava/nio/charset/Charset;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/apache/poi/hwmf/draw/HwmfGraphics;->charsetProvider:Ljava/util/function/Supplier;

    return-void
.end method

.method public setClip(Ljava/awt/Shape;Lorg/apache/poi/hwmf/record/HwmfRegionMode;Z)V
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/hwmf/draw/HwmfGraphics;->graphicsCtx:Ljava/awt/Graphics2D;

    invoke-virtual {v0}, Ljava/awt/Graphics2D;->getTransform()Ljava/awt/geom/AffineTransform;

    move-result-object v0

    if-eqz p3, :cond_0

    iget-object v1, p0, Lorg/apache/poi/hwmf/draw/HwmfGraphics;->graphicsCtx:Ljava/awt/Graphics2D;

    invoke-virtual {p0}, Lorg/apache/poi/hwmf/draw/HwmfGraphics;->getInitTransform()Ljava/awt/geom/AffineTransform;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/awt/Graphics2D;->setTransform(Ljava/awt/geom/AffineTransform;)V

    :cond_0
    iget-object v1, p0, Lorg/apache/poi/hwmf/draw/HwmfGraphics;->graphicsCtx:Ljava/awt/Graphics2D;

    invoke-virtual {v1}, Ljava/awt/Graphics2D;->getClip()Ljava/awt/Shape;

    move-result-object v1

    invoke-virtual {p2, v1, p1}, Lorg/apache/poi/hwmf/record/HwmfRegionMode;->applyOp(Ljava/awt/Shape;Ljava/awt/Shape;)Ljava/awt/Shape;

    move-result-object p1

    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, p0, Lorg/apache/poi/hwmf/draw/HwmfGraphics;->graphicsCtx:Ljava/awt/Graphics2D;

    invoke-virtual {p2, p1}, Ljava/awt/Graphics2D;->setClip(Ljava/awt/Shape;)V

    :cond_1
    if-eqz p3, :cond_2

    iget-object p1, p0, Lorg/apache/poi/hwmf/draw/HwmfGraphics;->graphicsCtx:Ljava/awt/Graphics2D;

    invoke-virtual {p1, v0}, Ljava/awt/Graphics2D;->setTransform(Ljava/awt/geom/AffineTransform;)V

    :cond_2
    iget-object p1, p0, Lorg/apache/poi/hwmf/draw/HwmfGraphics;->prop:Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;

    iget-object p0, p0, Lorg/apache/poi/hwmf/draw/HwmfGraphics;->graphicsCtx:Ljava/awt/Graphics2D;

    invoke-virtual {p0}, Ljava/awt/Graphics2D;->getClip()Ljava/awt/Shape;

    move-result-object p0

    invoke-virtual {p1, p0}, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->setClip(Ljava/awt/Shape;)V

    return-void
.end method

.method public setTransform(Ljava/awt/geom/AffineTransform;)V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hwmf/draw/HwmfGraphics;->graphicsCtx:Ljava/awt/Graphics2D;

    invoke-virtual {p0, p1}, Ljava/awt/Graphics2D;->setTransform(Ljava/awt/geom/AffineTransform;)V

    return-void
.end method

.method public unsetObjectTableEntry(I)V
    .locals 2

    if-ltz p1, :cond_0

    iget-object v0, p0, Lorg/apache/poi/hwmf/draw/HwmfGraphics;->objectTable:Ljava/util/TreeMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lorg/apache/poi/hwmf/draw/HwmfGraphics;->objectIndexes:Ljava/util/BitSet;

    invoke-virtual {p0, p1}, Ljava/util/BitSet;->clear(I)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid index: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public updateWindowMapMode()V
    .locals 9

    invoke-virtual {p0}, Lorg/apache/poi/hwmf/draw/HwmfGraphics;->getProperties()Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->getWindow()Ljava/awt/geom/Rectangle2D;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/poi/hwmf/draw/HwmfGraphics;->getProperties()Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->getViewport()Ljava/awt/geom/Rectangle2D;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/poi/hwmf/draw/HwmfGraphics;->getProperties()Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->getMapMode()Lorg/apache/poi/hwmf/record/HwmfMapMode;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/poi/hwmf/draw/HwmfGraphics;->graphicsCtx:Ljava/awt/Graphics2D;

    invoke-virtual {p0}, Lorg/apache/poi/hwmf/draw/HwmfGraphics;->getInitTransform()Ljava/awt/geom/AffineTransform;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/awt/Graphics2D;->setTransform(Ljava/awt/geom/AffineTransform;)V

    sget-object v3, Lorg/apache/poi/hwmf/draw/HwmfGraphics$1;->$SwitchMap$org$apache$poi$hwmf$record$HwmfMapMode:[I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    if-eqz v1, :cond_0

    iget-object v2, p0, Lorg/apache/poi/hwmf/draw/HwmfGraphics;->graphicsCtx:Ljava/awt/Graphics2D;

    invoke-virtual {v1}, Ljava/awt/geom/RectangularShape;->getCenterX()D

    move-result-wide v3

    invoke-virtual {v1}, Ljava/awt/geom/RectangularShape;->getCenterY()D

    move-result-wide v5

    invoke-virtual {v2, v3, v4, v5, v6}, Ljava/awt/Graphics2D;->translate(DD)V

    iget-object v2, p0, Lorg/apache/poi/hwmf/draw/HwmfGraphics;->graphicsCtx:Ljava/awt/Graphics2D;

    invoke-virtual {v1}, Ljava/awt/geom/RectangularShape;->getWidth()D

    move-result-wide v3

    invoke-virtual {v0}, Ljava/awt/geom/RectangularShape;->getWidth()D

    move-result-wide v5

    div-double/2addr v3, v5

    invoke-virtual {v1}, Ljava/awt/geom/RectangularShape;->getHeight()D

    move-result-wide v5

    invoke-virtual {v0}, Ljava/awt/geom/RectangularShape;->getHeight()D

    move-result-wide v7

    div-double/2addr v5, v7

    invoke-virtual {v2, v3, v4, v5, v6}, Ljava/awt/Graphics2D;->scale(DD)V

    iget-object p0, p0, Lorg/apache/poi/hwmf/draw/HwmfGraphics;->graphicsCtx:Ljava/awt/Graphics2D;

    invoke-virtual {v0}, Ljava/awt/geom/RectangularShape;->getCenterX()D

    move-result-wide v1

    neg-double v1, v1

    invoke-virtual {v0}, Ljava/awt/geom/RectangularShape;->getCenterY()D

    move-result-wide v3

    neg-double v3, v3

    invoke-virtual {p0, v1, v2, v3, v4}, Ljava/awt/Graphics2D;->translate(DD)V

    goto :goto_0

    :pswitch_0
    iget-object v1, p0, Lorg/apache/poi/hwmf/draw/HwmfGraphics;->graphicsCtx:Ljava/awt/Graphics2D;

    invoke-virtual {v1}, Ljava/awt/Graphics2D;->getDeviceConfiguration()Ljava/awt/GraphicsConfiguration;

    move-result-object v1

    iget-object v3, p0, Lorg/apache/poi/hwmf/draw/HwmfGraphics;->graphicsCtx:Ljava/awt/Graphics2D;

    invoke-virtual {v1}, Ljava/awt/GraphicsConfiguration;->getNormalizingTransform()Ljava/awt/geom/AffineTransform;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/awt/Graphics2D;->transform(Ljava/awt/geom/AffineTransform;)V

    iget-object v1, p0, Lorg/apache/poi/hwmf/draw/HwmfGraphics;->graphicsCtx:Ljava/awt/Graphics2D;

    iget v2, v2, Lorg/apache/poi/hwmf/record/HwmfMapMode;->scale:I

    int-to-double v3, v2

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    div-double/2addr v5, v3

    const-wide/high16 v3, -0x4010000000000000L    # -1.0

    int-to-double v7, v2

    div-double/2addr v3, v7

    invoke-virtual {v1, v5, v6, v3, v4}, Ljava/awt/Graphics2D;->scale(DD)V

    iget-object p0, p0, Lorg/apache/poi/hwmf/draw/HwmfGraphics;->graphicsCtx:Ljava/awt/Graphics2D;

    invoke-virtual {v0}, Ljava/awt/geom/RectangularShape;->getX()D

    move-result-wide v1

    neg-double v1, v1

    invoke-virtual {v0}, Ljava/awt/geom/RectangularShape;->getY()D

    move-result-wide v3

    neg-double v3, v3

    invoke-virtual {p0, v1, v2, v3, v4}, Ljava/awt/Graphics2D;->translate(DD)V

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lorg/apache/poi/hwmf/draw/HwmfGraphics;->graphicsCtx:Ljava/awt/Graphics2D;

    iget-object v2, p0, Lorg/apache/poi/hwmf/draw/HwmfGraphics;->bbox:Ljava/awt/geom/Rectangle2D;

    invoke-virtual {v2}, Ljava/awt/geom/RectangularShape;->getCenterX()D

    move-result-wide v2

    iget-object v4, p0, Lorg/apache/poi/hwmf/draw/HwmfGraphics;->bbox:Ljava/awt/geom/Rectangle2D;

    invoke-virtual {v4}, Ljava/awt/geom/RectangularShape;->getCenterY()D

    move-result-wide v4

    invoke-virtual {v1, v2, v3, v4, v5}, Ljava/awt/Graphics2D;->translate(DD)V

    iget-object v1, p0, Lorg/apache/poi/hwmf/draw/HwmfGraphics;->graphicsCtx:Ljava/awt/Graphics2D;

    iget-object v2, p0, Lorg/apache/poi/hwmf/draw/HwmfGraphics;->bbox:Ljava/awt/geom/Rectangle2D;

    invoke-virtual {v2}, Ljava/awt/geom/RectangularShape;->getWidth()D

    move-result-wide v2

    invoke-virtual {v0}, Ljava/awt/geom/RectangularShape;->getWidth()D

    move-result-wide v4

    div-double/2addr v2, v4

    iget-object v4, p0, Lorg/apache/poi/hwmf/draw/HwmfGraphics;->bbox:Ljava/awt/geom/Rectangle2D;

    invoke-virtual {v4}, Ljava/awt/geom/RectangularShape;->getWidth()D

    move-result-wide v4

    invoke-virtual {v0}, Ljava/awt/geom/RectangularShape;->getWidth()D

    move-result-wide v6

    div-double/2addr v4, v6

    invoke-virtual {v1, v2, v3, v4, v5}, Ljava/awt/Graphics2D;->scale(DD)V

    iget-object p0, p0, Lorg/apache/poi/hwmf/draw/HwmfGraphics;->graphicsCtx:Ljava/awt/Graphics2D;

    invoke-virtual {v0}, Ljava/awt/geom/RectangularShape;->getCenterX()D

    move-result-wide v1

    neg-double v1, v1

    invoke-virtual {v0}, Ljava/awt/geom/RectangularShape;->getCenterY()D

    move-result-wide v3

    neg-double v3, v3

    invoke-virtual {p0, v1, v2, v3, v4}, Ljava/awt/Graphics2D;->translate(DD)V

    :cond_0
    :goto_0
    :pswitch_2
    return-void

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
