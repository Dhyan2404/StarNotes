.class public Lcom/trans/android/font/FontHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final FONT_CJK:Ljava/lang/String; = "CJK"

.field private static final FONT_ONYX_CUSTOM:Ljava/lang/String; = "OnyxCustomFont"

.field private static final FONT_ONYX_CUSTOM_EN:Ljava/lang/String; = "OnyxCustomFont-EN"

.field private static final FONT_ONYX_CUSTOM_ZH:Ljava/lang/String; = "OnyxCustomFont-ZH"

.field private static final FONT_REGULAR:Ljava/lang/String; = "Regular"

.field private static final FONT_ROBOTO:Ljava/lang/String; = "Roboto"

.field private static final FONT_SERIF:Ljava/lang/String; = "Serif"

.field private static final FONT_SYMBOLS:Ljava/lang/String; = "Symbols"

.field public static final OTF:Ljava/lang/String; = "otf"

.field public static final SYSTEM_FONTS_PATH:Ljava/lang/String; = "/system/fonts/"

.field private static final TAG:Ljava/lang/String; = "FontHandler"

.field public static final TTC:Ljava/lang/String; = "ttc"

.field public static final TTF:Ljava/lang/String; = "ttf"

.field public static final WIN_FONTS_PATH:Ljava/lang/String; = "/sdcard/fonts/"

.field private static defaultChineseFontList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static defaultEnglishFontList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final HB_TYPEFACE_CACHE:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Ljava/lang/String;",
            "Lcom/onyx/harfbuzz/graphics/HBTypeface;",
            ">;"
        }
    .end annotation
.end field

.field private final TYPEFACE_CACHE:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Ljava/lang/String;",
            "Landroid/graphics/Typeface;",
            ">;"
        }
    .end annotation
.end field

.field private defTypefaces:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/onyx/harfbuzz/graphics/HBTypeface;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const-string v0, "Serif"

    const-string v1, "Symbols"

    const-string v2, "OnyxCustomFont-EN"

    const-string v3, "Roboto"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/trans/android/font/FontHandler;->defaultEnglishFontList:Ljava/util/List;

    const-string v0, "OnyxCustomFont"

    const-string v1, "CJK"

    const-string v2, "OnyxCustomFont-ZH"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/trans/android/font/FontHandler;->defaultChineseFontList:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/LruCache;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    iput-object v0, p0, Lcom/trans/android/font/FontHandler;->TYPEFACE_CACHE:Landroid/util/LruCache;

    new-instance v0, Lcom/trans/android/font/FontHandler$1;

    invoke-direct {v0, p0, v1}, Lcom/trans/android/font/FontHandler$1;-><init>(Lcom/trans/android/font/FontHandler;I)V

    iput-object v0, p0, Lcom/trans/android/font/FontHandler;->HB_TYPEFACE_CACHE:Landroid/util/LruCache;

    return-void
.end method

.method public static synthetic a(Ljava/io/File;)Z
    .locals 0

    invoke-static {p0}, Lcom/trans/android/font/FontHandler;->lambda$loadSystemFontFiles$1(Ljava/io/File;)Z

    move-result p0

    return p0
.end method

.method private addSymbolPathList(Ljava/util/Map;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Lcom/onyx/common/util/FileUtils;->fileCanRead(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Lcom/onyx/common/util/FileUtils;->getBaseName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Symbols"

    invoke-static {v0, v1}, Lcom/onyx/common/util/StringUtils;->containsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "en"

    invoke-static {p1, v0}, Lcom/onyx/common/util/CollectionUtils;->ensureList(Ljava/util/Map;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static synthetic b(Lcom/onyx/harfbuzz/graphics/HBTypeface;Lcom/onyx/harfbuzz/graphics/HBTypeface;)I
    .locals 0

    invoke-static {p0, p1}, Lcom/trans/android/font/FontHandler;->lambda$initDefaultTypefaceMap$0(Lcom/onyx/harfbuzz/graphics/HBTypeface;Lcom/onyx/harfbuzz/graphics/HBTypeface;)I

    move-result p0

    return p0
.end method

.method private createTypeface(Ljava/lang/String;)Lcom/onyx/harfbuzz/graphics/HBTypeface;
    .locals 2

    :try_start_0
    new-instance p0, Lcom/onyx/harfbuzz/graphics/HBTypeface;

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/onyx/harfbuzz/graphics/HBTypeface;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/trans/android/font/FontHandler;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, p0, p1, v1}, Lcom/onyx/common/util/JLog;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private findDefaultFontPath(Ljava/util/List;Ljava/util/List;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-static {p2}, Lcom/onyx/common/util/CollectionUtils;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/onyx/common/util/FileUtils;->getBaseName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/onyx/common/util/StringUtils;->containsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    return-object v1

    :cond_3
    const/4 p0, 0x0

    invoke-interface {p2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method private getDefaultFont([Ljava/lang/String;)V
    .locals 3

    .line 6
    invoke-virtual {p0}, Lcom/trans/android/font/FontHandler;->getDefTypefaces()Ljava/util/Map;

    move-result-object p0

    const-string v0, "zh-CN"

    .line 7
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 8
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 9
    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 10
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 11
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/harfbuzz/graphics/HBTypeface;

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_0

    .line 12
    :cond_2
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/harfbuzz/graphics/HBTypeface;

    :goto_0
    if-eqz p0, :cond_3

    .line 13
    invoke-virtual {p0}, Lcom/onyx/harfbuzz/graphics/HBTypeface;->getFullName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, v2

    const/4 v0, 0x1

    .line 14
    invoke-virtual {p0}, Lcom/onyx/harfbuzz/graphics/HBTypeface;->getFilePath()Ljava/lang/String;

    move-result-object p0

    aput-object p0, p1, v0

    :cond_3
    return-void
.end method

.method private initDefaultTypefaceMap(Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/onyx/harfbuzz/graphics/HBTypeface;",
            ">;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/trans/android/font/FontHandler;->loadDefaultFontPaths()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/trans/android/font/FontHandler;->createTypeface(Ljava/lang/String;)Lcom/onyx/harfbuzz/graphics/HBTypeface;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-static {p1, v4}, Lcom/onyx/common/util/CollectionUtils;->ensureList(Ljava/util/Map;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    new-instance p0, Lcom/sunia/HTREnginev2/zpg;

    invoke-direct {p0}, Lcom/sunia/HTREnginev2/zpg;-><init>()V

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_1

    :cond_3
    return-void
.end method

.method private isDefaultFont(Ljava/util/List;Ljava/lang/String;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p2, p1}, Lcom/onyx/common/util/StringUtils;->containsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static isFontFile(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p0}, Lcom/trans/android/font/FontHandler;->isTtfFile(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/trans/android/font/FontHandler;->isTtcFile(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/trans/android/font/FontHandler;->isOtfFIle(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

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

.method private isNormalFont(Ljava/lang/String;)Z
    .locals 0

    const-string p0, "Regular"

    invoke-static {p1, p0}, Lcom/onyx/common/util/StringUtils;->containsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isOtfFIle(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p0}, Lcom/onyx/common/util/FileUtils;->getExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "otf"

    invoke-static {p0, v0}, Lcom/onyx/common/util/StringUtils;->equalsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isSystemFont(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "/system/fonts/"

    invoke-static {p0, v0}, Lcom/onyx/common/util/StringUtils;->startsWith(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isTtcFile(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p0}, Lcom/onyx/common/util/FileUtils;->getExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "ttc"

    invoke-static {p0, v0}, Lcom/onyx/common/util/StringUtils;->equalsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isTtfFile(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p0}, Lcom/onyx/common/util/FileUtils;->getExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "ttf"

    invoke-static {p0, v0}, Lcom/onyx/common/util/StringUtils;->equalsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$initDefaultTypefaceMap$0(Lcom/onyx/harfbuzz/graphics/HBTypeface;Lcom/onyx/harfbuzz/graphics/HBTypeface;)I
    .locals 2

    invoke-virtual {p0}, Lcom/onyx/harfbuzz/graphics/HBTypeface;->getWeight()Lcom/onyx/harfbuzz/graphics/TypeWeight;

    move-result-object v0

    invoke-virtual {p1}, Lcom/onyx/harfbuzz/graphics/HBTypeface;->getWeight()Lcom/onyx/harfbuzz/graphics/TypeWeight;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/onyx/harfbuzz/graphics/HBTypeface;->getSlope()Lcom/onyx/harfbuzz/graphics/TypeSlope;

    move-result-object p0

    invoke-virtual {p1}, Lcom/onyx/harfbuzz/graphics/HBTypeface;->getSlope()Lcom/onyx/harfbuzz/graphics/TypeSlope;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/harfbuzz/graphics/HBTypeface;->getWeight()Lcom/onyx/harfbuzz/graphics/TypeWeight;

    move-result-object p0

    invoke-virtual {p1}, Lcom/onyx/harfbuzz/graphics/HBTypeface;->getWeight()Lcom/onyx/harfbuzz/graphics/TypeWeight;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result p0

    return p0
.end method

.method private static synthetic lambda$loadSystemFontFiles$1(Ljava/io/File;)Z
    .locals 1

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/onyx/common/util/FileUtils;->fileCanRead(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/trans/android/font/FontHandler;->isFontFile(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private loadDefaultFontPaths()Ljava/util/Map;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    const-string v0, "/system/fonts/"

    invoke-static {v0}, Lcom/onyx/common/util/FileUtils;->fileCanRead(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    sget-object p0, Lcom/trans/android/font/FontHandler;->TAG:Ljava/lang/String;

    const-string v0, "/system/fonts/, cannot read!"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/onyx/common/util/JLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    return-object p0

    :cond_0
    invoke-direct {p0}, Lcom/trans/android/font/FontHandler;->loadSystemFontFiles()[Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/onyx/common/util/ArrayUtils;->isNullOrEmpty([Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object p0, Lcom/trans/android/font/FontHandler;->TAG:Ljava/lang/String;

    const-string v0, "font file not found!"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/onyx/common/util/JLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    return-object p0

    :cond_1
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    array-length v5, v0

    move v6, v1

    :goto_0
    if-ge v6, v5, :cond_5

    aget-object v7, v0, v6

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/onyx/common/util/FileUtils;->getFileBaseName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/trans/android/font/FontHandler;->isNormalFont(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_2

    goto :goto_1

    :cond_2
    sget-object v9, Lcom/trans/android/font/FontHandler;->defaultEnglishFontList:Ljava/util/List;

    invoke-direct {p0, v9, v8}, Lcom/trans/android/font/FontHandler;->isDefaultFont(Ljava/util/List;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    sget-object v9, Lcom/trans/android/font/FontHandler;->defaultChineseFontList:Ljava/util/List;

    invoke-direct {p0, v9, v8}, Lcom/trans/android/font/FontHandler;->isDefaultFont(Ljava/util/List;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_5
    sget-object v5, Lcom/trans/android/font/FontHandler;->defaultEnglishFontList:Ljava/util/List;

    invoke-direct {p0, v5, v4}, Lcom/trans/android/font/FontHandler;->findDefaultFontPath(Ljava/util/List;Ljava/util/List;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/onyx/common/util/FileUtils;->fileCanRead(Ljava/lang/String;)Z

    move-result v6

    const-string v7, "en"

    if-eqz v6, :cond_6

    invoke-static {v2, v7}, Lcom/onyx/common/util/CollectionUtils;->ensureList(Ljava/util/Map;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    invoke-direct {p0, v2, v4}, Lcom/trans/android/font/FontHandler;->addSymbolPathList(Ljava/util/Map;Ljava/util/List;)V

    sget-object v4, Lcom/trans/android/font/FontHandler;->defaultChineseFontList:Ljava/util/List;

    invoke-direct {p0, v4, v3}, Lcom/trans/android/font/FontHandler;->findDefaultFontPath(Ljava/util/List;Ljava/util/List;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/onyx/common/util/FileUtils;->fileCanRead(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    const-string v3, "zh-CN"

    invoke-static {v2, v3}, Lcom/onyx/common/util/CollectionUtils;->ensureList(Ljava/util/Map;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    invoke-static {v2}, Lcom/onyx/common/util/CollectionUtils;->isNullOrEmpty(Ljava/util/Map;)Z

    move-result p0

    if-eqz p0, :cond_8

    aget-object p0, v0, v1

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/trans/android/font/FontHandler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "default config font not found, use first system font as default font. path = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v3, v1}, Lcom/onyx/common/util/JLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v2, v7}, Lcom/onyx/common/util/CollectionUtils;->ensureList(Ljava/util/Map;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8
    return-object v2
.end method

.method private loadSystemFontFiles()[Ljava/io/File;
    .locals 1

    new-instance p0, Ljava/io/File;

    const-string v0, "/system/fonts/"

    invoke-direct {p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/sunia/HTREnginev2/ypg;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/ypg;-><init>()V

    invoke-virtual {p0, v0}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getDefTypefaces()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/onyx/harfbuzz/graphics/HBTypeface;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/trans/android/font/FontHandler;->defTypefaces:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/trans/android/font/FontHandler;->defTypefaces:Ljava/util/Map;

    invoke-direct {p0, v0}, Lcom/trans/android/font/FontHandler;->initDefaultTypefaceMap(Ljava/util/Map;)V

    :cond_0
    iget-object p0, p0, Lcom/trans/android/font/FontHandler;->defTypefaces:Ljava/util/Map;

    return-object p0
.end method

.method public getDefaultFont()[Ljava/lang/String;
    .locals 4

    const-string v0, "Arial"

    const-string v1, "/sdcard/fonts/arial.ttf"

    .line 1
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    .line 2
    aget-object v2, v0, v1

    invoke-static {v2}, Lcom/onyx/common/util/FileUtils;->fileCanRead(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 3
    aput-object v3, v0, v2

    .line 4
    aput-object v3, v0, v1

    .line 5
    invoke-direct {p0, v0}, Lcom/trans/android/font/FontHandler;->getDefaultFont([Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public getHBTypeface(Ljava/lang/String;)Lcom/onyx/harfbuzz/graphics/HBTypeface;
    .locals 1

    iget-object v0, p0, Lcom/trans/android/font/FontHandler;->HB_TYPEFACE_CACHE:Landroid/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/harfbuzz/graphics/HBTypeface;

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/trans/android/font/FontHandler;->createTypeface(Ljava/lang/String;)Lcom/onyx/harfbuzz/graphics/HBTypeface;

    move-result-object v0

    iget-object p0, p0, Lcom/trans/android/font/FontHandler;->HB_TYPEFACE_CACHE:Landroid/util/LruCache;

    invoke-virtual {p0, p1, v0}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method public getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;
    .locals 1

    iget-object v0, p0, Lcom/trans/android/font/FontHandler;->TYPEFACE_CACHE:Landroid/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Typeface;

    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    iget-object p0, p0, Lcom/trans/android/font/FontHandler;->TYPEFACE_CACHE:Landroid/util/LruCache;

    invoke-virtual {p0, p1, v0}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method public getWinFontPath()Ljava/lang/String;
    .locals 0

    const-string p0, "/sdcard/fonts/"

    return-object p0
.end method

.method public release()V
    .locals 3

    iget-object v0, p0, Lcom/trans/android/font/FontHandler;->defTypefaces:Ljava/util/Map;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/harfbuzz/graphics/HBTypeface;

    invoke-virtual {v2}, Lcom/onyx/harfbuzz/graphics/HBTypeface;->dispose()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/trans/android/font/FontHandler;->defTypefaces:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/trans/android/font/FontHandler;->defTypefaces:Ljava/util/Map;

    :cond_2
    iget-object v0, p0, Lcom/trans/android/font/FontHandler;->TYPEFACE_CACHE:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->evictAll()V

    iget-object p0, p0, Lcom/trans/android/font/FontHandler;->HB_TYPEFACE_CACHE:Landroid/util/LruCache;

    invoke-virtual {p0}, Landroid/util/LruCache;->evictAll()V

    return-void
.end method
