.class public Lcom/trans/android/font/FontManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static defaultFontProvider:Lcom/trans/android/font/FontProvider;

.field private static final fontProviderTL:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lcom/trans/android/font/FontProvider;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/trans/android/hb/HBUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/trans/android/font/FontManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/trans/android/font/FontManager;->fontProviderTL:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static canDisplay(Lcom/onyx/harfbuzz/graphics/HBTypeface;I)Z
    .locals 0

    .line 4
    invoke-virtual {p0, p1}, Lcom/onyx/harfbuzz/graphics/HBTypeface;->getGlyphId(I)I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static canDisplay(Lcom/onyx/harfbuzz/graphics/HBTypeface;Ljava/lang/String;)Z
    .locals 4

    .line 1
    invoke-static {p1}, Lcom/onyx/common/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    move v2, v0

    .line 2
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 3
    invoke-virtual {p1, v2}, Ljava/lang/String;->codePointAt(I)I

    move-result v3

    invoke-static {p0, v3}, Lcom/trans/android/font/FontManager;->canDisplay(Lcom/onyx/harfbuzz/graphics/HBTypeface;I)Z

    move-result v3

    if-nez v3, :cond_1

    return v0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public static getFallbackTypeface(Lcom/trans/android/font/FontProvider;Ljava/lang/String;Ljava/lang/String;)Lcom/onyx/harfbuzz/graphics/HBTypeface;
    .locals 6

    invoke-interface {p0}, Lcom/trans/android/font/FontProvider;->getDefTypefaces()Ljava/util/Map;

    move-result-object p0

    const-string v0, "zh-CN"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {p2}, Lcom/onyx/common/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    invoke-static {p2}, Lcom/onyx/common/util/StringUtils;->getChineseIndex(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_0

    move v3, v1

    move-object v1, v0

    goto :goto_0

    :cond_0
    const-string v1, "en"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    move v3, v2

    :goto_0
    invoke-static {v1}, Lcom/onyx/common/util/CollectionUtils;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {p2, v3}, Ljava/lang/String;->codePointAt(I)I

    move-result v3

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/onyx/harfbuzz/graphics/HBTypeface;

    invoke-virtual {v4, v3}, Lcom/onyx/harfbuzz/graphics/HBTypeface;->getGlyphId(I)I

    move-result v5

    if-lez v5, :cond_1

    sget-object p0, Lcom/trans/android/font/FontManager;->TAG:Ljava/lang/String;

    invoke-virtual {v4}, Lcom/onyx/harfbuzz/graphics/HBTypeface;->getFullName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4}, Lcom/onyx/harfbuzz/graphics/HBTypeface;->getFilePath()Ljava/lang/String;

    move-result-object v1

    filled-new-array {p1, v0, v1, p2}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "%s found fallback HBTypeface: %s, path: %s for text: \'%s\'"

    invoke-static {p0, p2, p1}, Lcom/onyx/common/util/JLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v4

    :cond_2
    sget-object v1, Lcom/trans/android/font/FontManager;->TAG:Ljava/lang/String;

    const-string v3, "%s not found fallback HBTypeface for text: \'%s\'"

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v1, v3, p1}, Lcom/onyx/common/util/JLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/harfbuzz/graphics/HBTypeface;

    return-object p0

    :cond_3
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_4

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/harfbuzz/graphics/HBTypeface;

    return-object p0

    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "FontProvider not support any default typeface"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getFont2D(Ljava/awt/Font;)Lsun/font/Font2D;
    .locals 1

    invoke-static {p0}, Lsun/font/FontUtilities;->getFont2D(Ljava/awt/Font;)Lsun/font/Font2D;

    move-result-object p0

    instance-of v0, p0, Lsun/font/FontSubstitution;

    if-eqz v0, :cond_0

    check-cast p0, Lsun/font/FontSubstitution;

    invoke-interface {p0}, Lsun/font/FontSubstitution;->getCompositeFont2D()Lsun/font/CompositeFont;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static getFontProvider()Lcom/trans/android/font/FontProvider;
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-static {v0}, Lcom/trans/android/font/FontManager;->getFontProvider(Z)Lcom/trans/android/font/FontProvider;

    move-result-object v0

    return-object v0
.end method

.method public static getFontProvider(Z)Lcom/trans/android/font/FontProvider;
    .locals 1

    .line 2
    sget-object v0, Lcom/trans/android/font/FontManager;->fontProviderTL:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/trans/android/font/FontProvider;

    if-eqz p0, :cond_1

    if-nez v0, :cond_1

    .line 3
    sget-object p0, Lcom/trans/android/font/FontManager;->defaultFontProvider:Lcom/trans/android/font/FontProvider;

    if-nez p0, :cond_0

    .line 4
    new-instance p0, Lcom/trans/android/font/DefaultFontProvider;

    invoke-direct {p0}, Lcom/trans/android/font/DefaultFontProvider;-><init>()V

    sput-object p0, Lcom/trans/android/font/FontManager;->defaultFontProvider:Lcom/trans/android/font/FontProvider;

    .line 5
    :cond_0
    sget-object v0, Lcom/trans/android/font/FontManager;->defaultFontProvider:Lcom/trans/android/font/FontProvider;

    :cond_1
    return-object v0
.end method

.method public static getGlyphCode(Lsun/font/Font2D;I)I
    .locals 0

    instance-of p0, p0, Lsun/font/CompositeFont;

    if-eqz p0, :cond_0

    const p0, 0xffffff

    and-int/2addr p0, p1

    return p0

    :cond_0
    return p1
.end method

.method public static getHBTypeface(Ljava/awt/Font;I)Lcom/onyx/harfbuzz/graphics/HBTypeface;
    .locals 3

    .line 9
    invoke-static {p0}, Lcom/trans/android/font/FontManager;->getFont2D(Ljava/awt/Font;)Lsun/font/Font2D;

    move-result-object v0

    invoke-virtual {v0, p1}, Lsun/font/Font2D;->getHBTypefaceForGlyph(I)Lcom/onyx/harfbuzz/graphics/HBTypeface;

    move-result-object p1

    if-eqz p1, :cond_0

    return-object p1

    .line 10
    :cond_0
    invoke-static {}, Lcom/trans/android/font/FontManager;->getFontProvider()Lcom/trans/android/font/FontProvider;

    move-result-object p1

    .line 11
    invoke-virtual {p0}, Ljava/awt/Font;->getName()Ljava/lang/String;

    move-result-object p0

    .line 12
    invoke-interface {p1, p0}, Lcom/trans/android/font/FontProvider;->getHBTypeface(Ljava/lang/String;)Lcom/onyx/harfbuzz/graphics/HBTypeface;

    move-result-object v0

    if-nez v0, :cond_1

    .line 13
    sget-object v0, Lcom/trans/android/font/FontManager;->TAG:Ljava/lang/String;

    const-string v1, "%s not found"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/onyx/common/util/JLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 14
    invoke-static {p1, p0, v0}, Lcom/trans/android/font/FontManager;->getFallbackTypeface(Lcom/trans/android/font/FontProvider;Ljava/lang/String;Ljava/lang/String;)Lcom/onyx/harfbuzz/graphics/HBTypeface;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public static getHBTypeface(Ljava/awt/Font;Ljava/lang/String;)Lcom/onyx/harfbuzz/graphics/HBTypeface;
    .locals 4

    .line 1
    invoke-static {p1}, Lcom/onyx/common/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p0}, Lcom/trans/android/font/FontManager;->getFont2D(Ljava/awt/Font;)Lsun/font/Font2D;

    move-result-object v0

    invoke-virtual {v0}, Lsun/font/Font2D;->getHBTypeface()Lcom/onyx/harfbuzz/graphics/HBTypeface;

    move-result-object v0

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {p0}, Lcom/trans/android/font/FontManager;->getFont2D(Ljava/awt/Font;)Lsun/font/Font2D;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lsun/font/Font2D;->getHBTypeface(I)Lcom/onyx/harfbuzz/graphics/HBTypeface;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    return-object v0

    .line 4
    :cond_1
    invoke-virtual {p0}, Ljava/awt/Font;->getName()Ljava/lang/String;

    move-result-object p0

    .line 5
    invoke-static {}, Lcom/trans/android/font/FontManager;->getFontProvider()Lcom/trans/android/font/FontProvider;

    move-result-object v0

    .line 6
    invoke-interface {v0, p0}, Lcom/trans/android/font/FontProvider;->getHBTypeface(Ljava/lang/String;)Lcom/onyx/harfbuzz/graphics/HBTypeface;

    move-result-object v1

    if-nez v1, :cond_2

    .line 7
    sget-object v1, Lcom/trans/android/font/FontManager;->TAG:Ljava/lang/String;

    const-string v2, "%s not found"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/onyx/common/util/JLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 8
    invoke-static {v0, p0, p1}, Lcom/trans/android/font/FontManager;->getFallbackTypeface(Lcom/trans/android/font/FontProvider;Ljava/lang/String;Ljava/lang/String;)Lcom/onyx/harfbuzz/graphics/HBTypeface;

    move-result-object v1

    :cond_2
    return-object v1
.end method

.method public static getHBTypeface(Ljava/lang/String;)Lcom/onyx/harfbuzz/graphics/HBTypeface;
    .locals 1

    const/4 v0, 0x0

    .line 15
    invoke-static {p0, v0}, Lcom/trans/android/font/FontManager;->getHBTypeface(Ljava/lang/String;Ljava/lang/String;)Lcom/onyx/harfbuzz/graphics/HBTypeface;

    move-result-object p0

    return-object p0
.end method

.method public static getHBTypeface(Ljava/lang/String;Ljava/lang/String;)Lcom/onyx/harfbuzz/graphics/HBTypeface;
    .locals 5

    .line 16
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    invoke-static {}, Lcom/trans/android/font/FontManager;->getFontProvider()Lcom/trans/android/font/FontProvider;

    move-result-object v0

    .line 18
    invoke-interface {v0, p0}, Lcom/trans/android/font/FontProvider;->getHBTypeface(Ljava/lang/String;)Lcom/onyx/harfbuzz/graphics/HBTypeface;

    move-result-object v1

    if-nez v1, :cond_0

    .line 19
    sget-object v2, Lcom/trans/android/font/FontManager;->TAG:Ljava/lang/String;

    const-string v3, "%s not found"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/onyx/common/util/JLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 20
    invoke-static {p0}, Lcom/onyx/common/util/FileUtils;->getBaseName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, p1}, Lcom/trans/android/font/FontManager;->getFallbackTypeface(Lcom/trans/android/font/FontProvider;Ljava/lang/String;Ljava/lang/String;)Lcom/onyx/harfbuzz/graphics/HBTypeface;

    :cond_0
    return-object v1
.end method

.method public static getTypeface(Ljava/awt/Font;)Landroid/graphics/Typeface;
    .locals 0

    .line 2
    invoke-static {p0}, Lcom/trans/android/font/FontManager;->getFont2D(Ljava/awt/Font;)Lsun/font/Font2D;

    move-result-object p0

    invoke-virtual {p0}, Lsun/font/Font2D;->getTypeface()Landroid/graphics/Typeface;

    move-result-object p0

    return-object p0
.end method

.method public static getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;
    .locals 1

    .line 1
    invoke-static {}, Lcom/trans/android/font/FontManager;->getFontProvider()Lcom/trans/android/font/FontProvider;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/trans/android/font/FontProvider;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p0

    return-object p0
.end method

.method public static init()V
    .locals 1

    sget-object v0, Ljava/awt/Font;->DEFAULT_FONT:Ljava/awt/Font;

    invoke-static {v0}, Lcom/trans/android/font/FontManager;->getFont2D(Ljava/awt/Font;)Lsun/font/Font2D;

    return-void
.end method

.method public static setFontProvider(Lcom/trans/android/font/FontProvider;)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-static {p0, v0}, Lcom/trans/android/font/FontManager;->setFontProvider(Lcom/trans/android/font/FontProvider;Z)V

    return-void
.end method

.method public static setFontProvider(Lcom/trans/android/font/FontProvider;Z)V
    .locals 0

    if-eqz p0, :cond_0

    .line 2
    sget-object p1, Lcom/trans/android/font/FontManager;->fontProviderTL:Ljava/lang/ThreadLocal;

    invoke-virtual {p1, p0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 3
    sget-object p0, Lcom/trans/android/font/FontManager;->fontProviderTL:Ljava/lang/ThreadLocal;

    invoke-virtual {p0}, Ljava/lang/ThreadLocal;->remove()V

    :cond_1
    :goto_0
    return-void
.end method
