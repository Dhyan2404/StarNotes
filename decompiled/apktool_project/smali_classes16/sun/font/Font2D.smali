.class public abstract Lsun/font/Font2D;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DEFAULT_FRC:Ljava/awt/font/FontRenderContext;

.field public static final DEFAULT_RANK:I = 0x4

.field public static final FONT_CONFIG_RANK:I = 0x2

.field public static final FWEIGHT_BOLD:I = 0x2bc

.field public static final FWEIGHT_NORMAL:I = 0x190

.field public static final FWIDTH_NORMAL:I = 0x5

.field public static final JRE_RANK:I = 0x2

.field public static final NATIVE_RANK:I = 0x5

.field public static final TTF_RANK:I = 0x3

.field public static final TYPE1_RANK:I = 0x4

.field public static final UNKNOWN_RANK:I = 0x6

.field public static final boldItalicNames:[Ljava/lang/String;

.field public static final boldNames:[Ljava/lang/String;

.field public static final italicNames:[Ljava/lang/String;


# instance fields
.field protected family:Lsun/font/FontFamily;

.field protected familyName:Ljava/lang/String;

.field protected fontRank:I

.field protected fullName:Ljava/lang/String;

.field public handle:Lsun/font/Font2DHandle;

.field protected lastFontStrike:Ljava/lang/ref/Reference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/Reference<",
            "Lsun/font/FontStrike;",
            ">;"
        }
    .end annotation
.end field

.field protected mapper:Lsun/font/CharToGlyphMapper;

.field protected strikeCache:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Lsun/font/FontStrikeDesc;",
            "Ljava/lang/ref/Reference<",
            "Lsun/font/FontStrike;",
            ">;>;"
        }
    .end annotation
.end field

.field private strikeCacheMax:I

.field protected style:I

.field private useWeak:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 10

    const-string v0, "bold"

    const-string v1, "demibold"

    const-string v2, "demi-bold"

    const-string v3, "demi bold"

    const-string v4, "negreta"

    const-string v5, "demi"

    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lsun/font/Font2D;->boldNames:[Ljava/lang/String;

    const-string v0, "oblique"

    const-string v1, "inclined"

    const-string v2, "italic"

    const-string v3, "cursiva"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lsun/font/Font2D;->italicNames:[Ljava/lang/String;

    const-string v1, "bolditalic"

    const-string v2, "bold-italic"

    const-string v3, "bold italic"

    const-string v4, "boldoblique"

    const-string v5, "bold-oblique"

    const-string v6, "bold oblique"

    const-string v7, "demibold italic"

    const-string v8, "negreta cursiva"

    const-string v9, "demi oblique"

    filled-new-array/range {v1 .. v9}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lsun/font/Font2D;->boldItalicNames:[Ljava/lang/String;

    new-instance v0, Ljava/awt/font/FontRenderContext;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Ljava/awt/font/FontRenderContext;-><init>(Ljava/awt/geom/AffineTransform;ZZ)V

    sput-object v0, Lsun/font/Font2D;->DEFAULT_FRC:Ljava/awt/font/FontRenderContext;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lsun/font/Font2D;->style:I

    const/4 v1, 0x4

    iput v1, p0, Lsun/font/Font2D;->fontRank:I

    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lsun/font/Font2D;->strikeCache:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v1, Ljava/lang/ref/WeakReference;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lsun/font/Font2D;->lastFontStrike:Ljava/lang/ref/Reference;

    iput v0, p0, Lsun/font/Font2D;->strikeCacheMax:I

    return-void
.end method

.method private getStrike(Lsun/font/FontStrikeDesc;Z)Lsun/font/FontStrike;
    .locals 2

    .line 37
    iget-object v0, p0, Lsun/font/Font2D;->lastFontStrike:Ljava/lang/ref/Reference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/font/FontStrike;

    if-eqz v0, :cond_0

    .line 38
    iget-object v1, v0, Lsun/font/FontStrike;->desc:Lsun/font/FontStrikeDesc;

    invoke-virtual {p1, v1}, Lsun/font/FontStrikeDesc;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 39
    :cond_0
    iget-object v0, p0, Lsun/font/Font2D;->strikeCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/Reference;

    if-eqz v0, :cond_1

    .line 40
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/font/FontStrike;

    if-eqz v0, :cond_1

    .line 41
    invoke-virtual {p0, v0}, Lsun/font/Font2D;->updateLastStrikeRef(Lsun/font/FontStrike;)V

    .line 42
    invoke-static {v0}, Lsun/font/StrikeCache;->refStrike(Lsun/font/FontStrike;)V

    return-object v0

    :cond_1
    if-eqz p2, :cond_2

    .line 43
    new-instance p2, Lsun/font/FontStrikeDesc;

    invoke-direct {p2, p1}, Lsun/font/FontStrikeDesc;-><init>(Lsun/font/FontStrikeDesc;)V

    move-object p1, p2

    .line 44
    :cond_2
    invoke-virtual {p0, p1}, Lsun/font/Font2D;->createStrike(Lsun/font/FontStrikeDesc;)Lsun/font/FontStrike;

    move-result-object p2

    .line 45
    iget-object v0, p1, Lsun/font/FontStrikeDesc;->glyphTx:Ljava/awt/geom/AffineTransform;

    invoke-virtual {v0}, Ljava/awt/geom/AffineTransform;->getType()I

    move-result v0

    .line 46
    iget-boolean v1, p0, Lsun/font/Font2D;->useWeak:Z

    if-nez v1, :cond_4

    const/16 v1, 0x20

    if-eq v0, v1, :cond_4

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_3

    iget-object v0, p0, Lsun/font/Font2D;->strikeCache:Ljava/util/concurrent/ConcurrentHashMap;

    .line 47
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    const/16 v1, 0xa

    if-le v0, v1, :cond_3

    goto :goto_0

    .line 48
    :cond_3
    iget-boolean v0, p0, Lsun/font/Font2D;->useWeak:Z

    invoke-static {p2, v0}, Lsun/font/StrikeCache;->getStrikeRef(Lsun/font/FontStrike;Z)Ljava/lang/ref/Reference;

    move-result-object v0

    goto :goto_1

    :cond_4
    :goto_0
    const/4 v0, 0x1

    .line 49
    invoke-static {p2, v0}, Lsun/font/StrikeCache;->getStrikeRef(Lsun/font/FontStrike;Z)Ljava/lang/ref/Reference;

    move-result-object v0

    .line 50
    :goto_1
    iget-object v1, p0, Lsun/font/Font2D;->strikeCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    invoke-virtual {p0, p2}, Lsun/font/Font2D;->updateLastStrikeRef(Lsun/font/FontStrike;)V

    .line 52
    invoke-static {p2}, Lsun/font/StrikeCache;->refStrike(Lsun/font/FontStrike;)V

    return-object p2
.end method


# virtual methods
.method public canDisplay(C)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lsun/font/Font2D;->getMapper()Lsun/font/CharToGlyphMapper;

    move-result-object p0

    invoke-virtual {p0, p1}, Lsun/font/CharToGlyphMapper;->canDisplay(C)Z

    move-result p0

    return p0
.end method

.method public canDisplay(I)Z
    .locals 0

    .line 2
    invoke-virtual {p0}, Lsun/font/Font2D;->getMapper()Lsun/font/CharToGlyphMapper;

    move-result-object p0

    invoke-virtual {p0, p1}, Lsun/font/CharToGlyphMapper;->canDisplay(I)Z

    move-result p0

    return p0
.end method

.method public canDoStyle(I)Z
    .locals 0

    iget p0, p0, Lsun/font/Font2D;->style:I

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public charToGlyph(I)I
    .locals 0

    invoke-virtual {p0}, Lsun/font/Font2D;->getMapper()Lsun/font/CharToGlyphMapper;

    move-result-object p0

    invoke-virtual {p0, p1}, Lsun/font/CharToGlyphMapper;->charToGlyph(I)I

    move-result p0

    return p0
.end method

.method public charToVariationGlyph(II)I
    .locals 0

    invoke-virtual {p0}, Lsun/font/Font2D;->getMapper()Lsun/font/CharToGlyphMapper;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lsun/font/CharToGlyphMapper;->charToVariationGlyph(II)I

    move-result p0

    return p0
.end method

.method public abstract createStrike(Lsun/font/FontStrikeDesc;)Lsun/font/FontStrike;
.end method

.method public getBaselineFor(C)B
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getFamilyName(Ljava/util/Locale;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lsun/font/Font2D;->familyName:Ljava/lang/String;

    return-object p0
.end method

.method public getFontMetrics(Ljava/awt/Font;Ljava/awt/font/FontRenderContext;[F)V
    .locals 0

    .line 10
    invoke-virtual {p0, p1, p2}, Lsun/font/Font2D;->getStrike(Ljava/awt/Font;Ljava/awt/font/FontRenderContext;)Lsun/font/FontStrike;

    move-result-object p0

    invoke-virtual {p0}, Lsun/font/FontStrike;->getFontMetrics()Lsun/font/StrikeMetrics;

    move-result-object p0

    .line 11
    invoke-virtual {p0}, Lsun/font/StrikeMetrics;->getAscent()F

    move-result p1

    const/4 p2, 0x0

    aput p1, p3, p2

    const/4 p1, 0x1

    .line 12
    invoke-virtual {p0}, Lsun/font/StrikeMetrics;->getDescent()F

    move-result p2

    aput p2, p3, p1

    const/4 p1, 0x2

    .line 13
    invoke-virtual {p0}, Lsun/font/StrikeMetrics;->getLeading()F

    move-result p2

    aput p2, p3, p1

    const/4 p1, 0x3

    .line 14
    invoke-virtual {p0}, Lsun/font/StrikeMetrics;->getMaxAdvance()F

    move-result p0

    aput p0, p3, p1

    return-void
.end method

.method public getFontMetrics(Ljava/awt/Font;Ljava/awt/geom/AffineTransform;Ljava/lang/Object;Ljava/lang/Object;[F)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/awt/Font;->getSize()I

    move-result v0

    invoke-static {p3, p0, v0}, Lsun/font/FontStrikeDesc;->getAAHintIntVal(Ljava/lang/Object;Lsun/font/Font2D;I)I

    move-result p3

    .line 2
    invoke-static {p4}, Lsun/font/FontStrikeDesc;->getFMHintIntVal(Ljava/lang/Object;)I

    move-result p4

    .line 3
    invoke-virtual {p0, p1, p2, p3, p4}, Lsun/font/Font2D;->getStrike(Ljava/awt/Font;Ljava/awt/geom/AffineTransform;II)Lsun/font/FontStrike;

    move-result-object p2

    .line 4
    invoke-virtual {p2}, Lsun/font/FontStrike;->getFontMetrics()Lsun/font/StrikeMetrics;

    move-result-object p2

    .line 5
    invoke-virtual {p2}, Lsun/font/StrikeMetrics;->getAscent()F

    move-result p3

    const/4 p4, 0x0

    aput p3, p5, p4

    const/4 p3, 0x1

    .line 6
    invoke-virtual {p2}, Lsun/font/StrikeMetrics;->getDescent()F

    move-result p4

    aput p4, p5, p3

    const/4 p3, 0x2

    .line 7
    invoke-virtual {p2}, Lsun/font/StrikeMetrics;->getLeading()F

    move-result p4

    aput p4, p5, p3

    const/4 p3, 0x3

    .line 8
    invoke-virtual {p2}, Lsun/font/StrikeMetrics;->getMaxAdvance()F

    move-result p2

    aput p2, p5, p3

    .line 9
    invoke-virtual {p1}, Ljava/awt/Font;->getSize2D()F

    move-result p1

    const/4 p2, 0x4

    invoke-virtual {p0, p1, p5, p2}, Lsun/font/Font2D;->getStyleMetrics(F[FI)V

    return-void
.end method

.method public getFontName(Ljava/util/Locale;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lsun/font/Font2D;->fullName:Ljava/lang/String;

    return-object p0
.end method

.method public getHBTypeface()Lcom/onyx/harfbuzz/graphics/HBTypeface;
    .locals 0

    .line 1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public getHBTypeface(I)Lcom/onyx/harfbuzz/graphics/HBTypeface;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lsun/font/Font2D;->getHBTypeface()Lcom/onyx/harfbuzz/graphics/HBTypeface;

    move-result-object p0

    return-object p0
.end method

.method public getHBTypefaceForGlyph(I)Lcom/onyx/harfbuzz/graphics/HBTypeface;
    .locals 0

    invoke-virtual {p0}, Lsun/font/Font2D;->getHBTypeface()Lcom/onyx/harfbuzz/graphics/HBTypeface;

    move-result-object p0

    return-object p0
.end method

.method public getItalicAngle(Ljava/awt/Font;Ljava/awt/geom/AffineTransform;Ljava/lang/Object;Ljava/lang/Object;)F
    .locals 1

    const/16 v0, 0xc

    invoke-static {p3, p0, v0}, Lsun/font/FontStrikeDesc;->getAAHintIntVal(Ljava/lang/Object;Lsun/font/Font2D;I)I

    move-result p3

    invoke-static {p4}, Lsun/font/FontStrikeDesc;->getFMHintIntVal(Ljava/lang/Object;)I

    move-result p4

    invoke-virtual {p0, p1, p2, p3, p4}, Lsun/font/Font2D;->getStrike(Ljava/awt/Font;Ljava/awt/geom/AffineTransform;II)Lsun/font/FontStrike;

    move-result-object p0

    invoke-virtual {p0}, Lsun/font/FontStrike;->getFontMetrics()Lsun/font/StrikeMetrics;

    move-result-object p0

    iget p1, p0, Lsun/font/StrikeMetrics;->ascentY:F

    const/4 p2, 0x0

    cmpl-float p3, p1, p2

    if-eqz p3, :cond_1

    iget p0, p0, Lsun/font/StrikeMetrics;->ascentX:F

    cmpl-float p3, p0, p2

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    neg-float p1, p1

    div-float/2addr p0, p1

    return p0

    :cond_1
    :goto_0
    return p2
.end method

.method public abstract getMapper()Lsun/font/CharToGlyphMapper;
.end method

.method public getMissingGlyphCode()I
    .locals 0

    invoke-virtual {p0}, Lsun/font/Font2D;->getMapper()Lsun/font/CharToGlyphMapper;

    move-result-object p0

    invoke-virtual {p0}, Lsun/font/CharToGlyphMapper;->getMissingGlyphCode()I

    move-result p0

    return p0
.end method

.method public getNumGlyphs()I
    .locals 0

    invoke-virtual {p0}, Lsun/font/Font2D;->getMapper()Lsun/font/CharToGlyphMapper;

    move-result-object p0

    invoke-virtual {p0}, Lsun/font/CharToGlyphMapper;->getNumGlyphs()I

    move-result p0

    return p0
.end method

.method public getPlatformNativeFontPtr()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getPostscriptName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lsun/font/Font2D;->fullName:Ljava/lang/String;

    return-object p0
.end method

.method public getRank()I
    .locals 0

    iget p0, p0, Lsun/font/Font2D;->fontRank:I

    return p0
.end method

.method public getStrike(Ljava/awt/Font;)Lsun/font/FontStrike;
    .locals 1

    .line 1
    iget-object v0, p0, Lsun/font/Font2D;->lastFontStrike:Ljava/lang/ref/Reference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/font/FontStrike;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    sget-object v0, Lsun/font/Font2D;->DEFAULT_FRC:Ljava/awt/font/FontRenderContext;

    invoke-virtual {p0, p1, v0}, Lsun/font/Font2D;->getStrike(Ljava/awt/Font;Ljava/awt/font/FontRenderContext;)Lsun/font/FontStrike;

    move-result-object p0

    return-object p0
.end method

.method public getStrike(Ljava/awt/Font;Ljava/awt/font/FontRenderContext;)Lsun/font/FontStrike;
    .locals 14

    .line 20
    invoke-virtual/range {p2 .. p2}, Ljava/awt/font/FontRenderContext;->getTransform()Ljava/awt/geom/AffineTransform;

    move-result-object v13

    .line 21
    invoke-virtual {p1}, Ljava/awt/Font;->getSize2D()F

    move-result v0

    float-to-double v0, v0

    .line 22
    invoke-virtual {v13, v0, v1, v0, v1}, Ljava/awt/geom/AffineTransform;->scale(DD)V

    .line 23
    invoke-virtual {p1}, Ljava/awt/Font;->isTransformed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 24
    invoke-virtual {p1}, Ljava/awt/Font;->getTransform()Ljava/awt/geom/AffineTransform;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/awt/geom/AffineTransform;->concatenate(Ljava/awt/geom/AffineTransform;)V

    .line 25
    invoke-virtual {v13}, Ljava/awt/geom/AffineTransform;->getTranslateX()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    invoke-virtual {v13}, Ljava/awt/geom/AffineTransform;->getTranslateY()D

    move-result-wide v0

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_1

    .line 26
    :cond_0
    invoke-virtual {v13}, Ljava/awt/geom/AffineTransform;->getScaleX()D

    move-result-wide v1

    .line 27
    invoke-virtual {v13}, Ljava/awt/geom/AffineTransform;->getShearY()D

    move-result-wide v3

    .line 28
    invoke-virtual {v13}, Ljava/awt/geom/AffineTransform;->getShearX()D

    move-result-wide v5

    .line 29
    invoke-virtual {v13}, Ljava/awt/geom/AffineTransform;->getScaleY()D

    move-result-wide v7

    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x0

    move-object v0, v13

    .line 30
    invoke-virtual/range {v0 .. v12}, Ljava/awt/geom/AffineTransform;->setTransform(DDDDDD)V

    .line 31
    :cond_1
    invoke-static/range {p0 .. p2}, Lsun/font/FontStrikeDesc;->getAAHintIntVal(Lsun/font/Font2D;Ljava/awt/Font;Ljava/awt/font/FontRenderContext;)I

    move-result v4

    .line 32
    invoke-virtual/range {p2 .. p2}, Ljava/awt/font/FontRenderContext;->getFractionalMetricsHint()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lsun/font/FontStrikeDesc;->getFMHintIntVal(Ljava/lang/Object;)I

    move-result v5

    .line 33
    new-instance v6, Lsun/font/FontStrikeDesc;

    invoke-virtual/range {p2 .. p2}, Ljava/awt/font/FontRenderContext;->getTransform()Ljava/awt/geom/AffineTransform;

    move-result-object v1

    .line 34
    invoke-virtual {p1}, Ljava/awt/Font;->getStyle()I

    move-result v3

    move-object v0, v6

    move-object v2, v13

    invoke-direct/range {v0 .. v5}, Lsun/font/FontStrikeDesc;-><init>(Ljava/awt/geom/AffineTransform;Ljava/awt/geom/AffineTransform;III)V

    const/4 v0, 0x0

    move-object v1, p0

    .line 35
    invoke-direct {p0, v6, v0}, Lsun/font/Font2D;->getStrike(Lsun/font/FontStrikeDesc;Z)Lsun/font/FontStrike;

    move-result-object v0

    return-object v0
.end method

.method public getStrike(Ljava/awt/Font;Ljava/awt/geom/AffineTransform;II)Lsun/font/FontStrike;
    .locals 16

    .line 3
    invoke-virtual/range {p1 .. p1}, Ljava/awt/Font;->getSize2D()F

    move-result v0

    float-to-double v0, v0

    .line 4
    invoke-virtual/range {p2 .. p2}, Ljava/awt/geom/AffineTransform;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/awt/geom/AffineTransform;

    .line 5
    invoke-virtual {v2, v0, v1, v0, v1}, Ljava/awt/geom/AffineTransform;->scale(DD)V

    .line 6
    invoke-virtual/range {p1 .. p1}, Ljava/awt/Font;->isTransformed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7
    invoke-virtual/range {p1 .. p1}, Ljava/awt/Font;->getTransform()Ljava/awt/geom/AffineTransform;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/awt/geom/AffineTransform;->concatenate(Ljava/awt/geom/AffineTransform;)V

    .line 8
    :cond_0
    invoke-virtual {v2}, Ljava/awt/geom/AffineTransform;->getTranslateX()D

    move-result-wide v0

    const-wide/16 v3, 0x0

    cmpl-double v0, v0, v3

    if-nez v0, :cond_1

    invoke-virtual {v2}, Ljava/awt/geom/AffineTransform;->getTranslateY()D

    move-result-wide v0

    cmpl-double v0, v0, v3

    if-eqz v0, :cond_2

    .line 9
    :cond_1
    invoke-virtual {v2}, Ljava/awt/geom/AffineTransform;->getScaleX()D

    move-result-wide v4

    .line 10
    invoke-virtual {v2}, Ljava/awt/geom/AffineTransform;->getShearY()D

    move-result-wide v6

    .line 11
    invoke-virtual {v2}, Ljava/awt/geom/AffineTransform;->getShearX()D

    move-result-wide v8

    .line 12
    invoke-virtual {v2}, Ljava/awt/geom/AffineTransform;->getScaleY()D

    move-result-wide v10

    const-wide/16 v12, 0x0

    const-wide/16 v14, 0x0

    move-object v3, v2

    .line 13
    invoke-virtual/range {v3 .. v15}, Ljava/awt/geom/AffineTransform;->setTransform(DDDDDD)V

    .line 14
    :cond_2
    new-instance v0, Lsun/font/FontStrikeDesc;

    .line 15
    invoke-virtual/range {p1 .. p1}, Ljava/awt/Font;->getStyle()I

    move-result v6

    move-object v3, v0

    move-object/from16 v4, p2

    move-object v5, v2

    move/from16 v7, p3

    move/from16 v8, p4

    invoke-direct/range {v3 .. v8}, Lsun/font/FontStrikeDesc;-><init>(Ljava/awt/geom/AffineTransform;Ljava/awt/geom/AffineTransform;III)V

    const/4 v1, 0x0

    move-object/from16 v2, p0

    .line 16
    invoke-direct {v2, v0, v1}, Lsun/font/Font2D;->getStrike(Lsun/font/FontStrikeDesc;Z)Lsun/font/FontStrike;

    move-result-object v0

    return-object v0
.end method

.method public getStrike(Ljava/awt/Font;Ljava/awt/geom/AffineTransform;Ljava/awt/geom/AffineTransform;II)Lsun/font/FontStrike;
    .locals 7

    .line 17
    new-instance v6, Lsun/font/FontStrikeDesc;

    .line 18
    invoke-virtual {p1}, Ljava/awt/Font;->getStyle()I

    move-result v3

    move-object v0, v6

    move-object v1, p2

    move-object v2, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lsun/font/FontStrikeDesc;-><init>(Ljava/awt/geom/AffineTransform;Ljava/awt/geom/AffineTransform;III)V

    const/4 p1, 0x0

    .line 19
    invoke-direct {p0, v6, p1}, Lsun/font/Font2D;->getStrike(Lsun/font/FontStrikeDesc;Z)Lsun/font/FontStrike;

    move-result-object p0

    return-object p0
.end method

.method public getStrike(Lsun/font/FontStrikeDesc;)Lsun/font/FontStrike;
    .locals 1

    const/4 v0, 0x1

    .line 36
    invoke-direct {p0, p1, v0}, Lsun/font/Font2D;->getStrike(Lsun/font/FontStrikeDesc;Z)Lsun/font/FontStrike;

    move-result-object p0

    return-object p0
.end method

.method public getStyle()I
    .locals 0

    iget p0, p0, Lsun/font/Font2D;->style:I

    return p0
.end method

.method public getStyleMetrics(F[FI)V
    .locals 2

    const/4 p0, 0x0

    aget p0, p2, p0

    neg-float p0, p0

    const/high16 v0, 0x40200000    # 2.5f

    div-float/2addr p0, v0

    aput p0, p2, p3

    add-int/lit8 p0, p3, 0x1

    const/high16 v0, 0x41400000    # 12.0f

    div-float/2addr p1, v0

    aput p1, p2, p0

    add-int/lit8 v0, p3, 0x2

    const/high16 v1, 0x3fc00000    # 1.5f

    div-float/2addr p1, v1

    aput p1, p2, v0

    add-int/lit8 p3, p3, 0x3

    aget p0, p2, p0

    aput p0, p2, p3

    return-void
.end method

.method public getTableBytes(I)[B
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getTypeface()Landroid/graphics/Typeface;
    .locals 0

    .line 1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public getTypeface(I)Landroid/graphics/Typeface;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lsun/font/Font2D;->getTypeface()Landroid/graphics/Typeface;

    move-result-object p0

    return-object p0
.end method

.method public getTypefaceForGlyph(I)Landroid/graphics/Typeface;
    .locals 0

    invoke-virtual {p0}, Lsun/font/Font2D;->getTypeface()Landroid/graphics/Typeface;

    move-result-object p0

    return-object p0
.end method

.method public getUnitsPerEm()J
    .locals 2

    const-wide/16 v0, 0x800

    return-wide v0
.end method

.method public getValidatedGlyphCode(I)I
    .locals 1

    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lsun/font/Font2D;->getMapper()Lsun/font/CharToGlyphMapper;

    move-result-object v0

    invoke-virtual {v0}, Lsun/font/CharToGlyphMapper;->getNumGlyphs()I

    move-result v0

    if-lt p1, v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lsun/font/Font2D;->getMapper()Lsun/font/CharToGlyphMapper;

    move-result-object p0

    invoke-virtual {p0}, Lsun/font/CharToGlyphMapper;->getMissingGlyphCode()I

    move-result p1

    :cond_1
    return p1
.end method

.method public getWeight()I
    .locals 0

    iget p0, p0, Lsun/font/Font2D;->style:I

    and-int/lit8 p0, p0, 0x1

    if-eqz p0, :cond_0

    const/16 p0, 0x2bc

    return p0

    :cond_0
    const/16 p0, 0x190

    return p0
.end method

.method public getWidth()I
    .locals 0

    const/4 p0, 0x5

    return p0
.end method

.method public hasSupplementaryChars()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public setRank(I)V
    .locals 0

    iput p1, p0, Lsun/font/Font2D;->fontRank:I

    return-void
.end method

.method public setStyle()V
    .locals 6

    iget-object v0, p0, Lsun/font/Font2D;->fullName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    sget-object v3, Lsun/font/Font2D;->boldItalicNames:[Ljava/lang/String;

    array-length v4, v3

    const/4 v5, -0x1

    if-ge v2, v4, :cond_1

    aget-object v3, v3, v2

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-eq v3, v5, :cond_0

    const/4 v0, 0x3

    iput v0, p0, Lsun/font/Font2D;->style:I

    return-void

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_1
    sget-object v3, Lsun/font/Font2D;->italicNames:[Ljava/lang/String;

    array-length v4, v3

    if-ge v2, v4, :cond_3

    aget-object v3, v3, v2

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-eq v3, v5, :cond_2

    const/4 v0, 0x2

    iput v0, p0, Lsun/font/Font2D;->style:I

    return-void

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    sget-object v2, Lsun/font/Font2D;->boldNames:[Ljava/lang/String;

    array-length v3, v2

    if-ge v1, v3, :cond_5

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v5, :cond_4

    const/4 v0, 0x1

    iput v0, p0, Lsun/font/Font2D;->style:I

    return-void

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    return-void
.end method

.method public setUseWeakRefs(ZI)V
    .locals 0

    iput-boolean p1, p0, Lsun/font/Font2D;->useWeak:Z

    if-eqz p1, :cond_0

    if-lez p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iput p2, p0, Lsun/font/Font2D;->strikeCacheMax:I

    return-void
.end method

.method public supportsEncoding(Ljava/lang/String;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public updateLastStrikeRef(Lsun/font/FontStrike;)V
    .locals 1

    iget-object v0, p0, Lsun/font/Font2D;->lastFontStrike:Ljava/lang/ref/Reference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->clear()V

    iget-boolean v0, p0, Lsun/font/Font2D;->useWeak:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lsun/font/Font2D;->lastFontStrike:Ljava/lang/ref/Reference;

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/ref/SoftReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lsun/font/Font2D;->lastFontStrike:Ljava/lang/ref/Reference;

    :goto_0
    return-void
.end method

.method public useAAForPtSize(I)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
