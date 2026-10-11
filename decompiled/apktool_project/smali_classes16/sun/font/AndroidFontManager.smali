.class public Lsun/font/AndroidFontManager;
.super Lsun/font/SunFontManager;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "AndroidFontManager"


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lsun/font/SunFontManager;-><init>()V

    return-void
.end method


# virtual methods
.method public createFont2D(Ljava/io/File;IZLsun/font/CreatedFontTracker;)Lsun/font/Font2D;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/awt/FontFormatException;
        }
    .end annotation

    sget-object v0, Lsun/font/AndroidFontManager;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "createFont2D: %s"

    invoke-static {v0, v2, v1}, Lcom/onyx/common/util/JLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-super {p0, p1, p2, p3, p4}, Lsun/font/SunFontManager;->createFont2D(Ljava/io/File;IZLsun/font/CreatedFontTracker;)Lsun/font/Font2D;

    move-result-object p0

    return-object p0
.end method

.method public createFontConfiguration()Lsun/awt/FontConfiguration;
    .locals 1

    .line 1
    new-instance v0, Lsun/font/AndroidFontConfiguration;

    invoke-direct {v0, p0}, Lsun/font/AndroidFontConfiguration;-><init>(Lsun/font/SunFontManager;)V

    .line 2
    invoke-virtual {v0}, Lsun/awt/FontConfiguration;->init()Z

    move-result p0

    if-eqz p0, :cond_0

    return-object v0

    .line 3
    :cond_0
    new-instance p0, Ljava/lang/InternalError;

    const-string v0, "failed to initialize fontconfig"

    invoke-direct {p0, v0}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public createFontConfiguration(ZZ)Lsun/awt/FontConfiguration;
    .locals 1

    .line 4
    new-instance v0, Lsun/font/AndroidFontConfiguration;

    invoke-direct {v0, p0, p1, p2}, Lsun/font/AndroidFontConfiguration;-><init>(Lsun/font/SunFontManager;ZZ)V

    .line 5
    invoke-virtual {v0}, Lsun/awt/FontConfiguration;->init()Z

    move-result p0

    if-eqz p0, :cond_0

    return-object v0

    .line 6
    :cond_0
    new-instance p0, Ljava/lang/InternalError;

    const-string p1, "failed to initialize fontconfig"

    invoke-direct {p0, p1}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public deRegisterBadFont(Lsun/font/Font2D;)V
    .locals 3

    sget-object v0, Lsun/font/AndroidFontManager;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lsun/font/Font2D;->getFontName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "deRegisterBadFont: %s"

    invoke-static {v0, v2, v1}, Lcom/onyx/common/util/JLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-super {p0, p1}, Lsun/font/SunFontManager;->deRegisterBadFont(Lsun/font/Font2D;)V

    return-void
.end method

.method public findFont2D(Ljava/lang/String;II)Lsun/font/Font2D;
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lsun/font/SunFontManager;->findFont2D(Ljava/lang/String;II)Lsun/font/Font2D;

    move-result-object p0

    return-object p0
.end method

.method public getAllInstalledFonts()[Ljava/awt/Font;
    .locals 0

    invoke-super {p0}, Lsun/font/SunFontManager;->getAllInstalledFonts()[Ljava/awt/Font;

    move-result-object p0

    return-object p0
.end method

.method public getCreatedFontFamilyNames()Ljava/util/TreeMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/TreeMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-super {p0}, Lsun/font/SunFontManager;->getCreatedFontFamilyNames()Ljava/util/TreeMap;

    move-result-object p0

    return-object p0
.end method

.method public getCreatedFonts()[Ljava/awt/Font;
    .locals 0

    invoke-super {p0}, Lsun/font/SunFontManager;->getCreatedFonts()[Ljava/awt/Font;

    move-result-object p0

    return-object p0
.end method

.method public getDefaultPlatformFont()[Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/trans/android/font/FontManager;->getFontProvider()Lcom/trans/android/font/FontProvider;

    move-result-object p0

    invoke-interface {p0}, Lcom/trans/android/font/FontProvider;->getDefaultFont()[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    array-length v0, p0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    aget-object v0, p0, v0

    invoke-static {v0}, Lcom/onyx/common/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    aget-object v0, p0, v0

    invoke-static {v0}, Lcom/onyx/common/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/InternalError;

    const-string v0, "Not default font"

    invoke-direct {p0, v0}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getFontPath(Z)Ljava/lang/String;
    .locals 0

    invoke-static {}, Lcom/trans/android/font/FontManager;->getFontProvider()Lcom/trans/android/font/FontProvider;

    move-result-object p0

    invoke-interface {p0}, Lcom/trans/android/font/FontProvider;->getFontPath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/onyx/common/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/InternalError;

    const-string p1, "Not font path"

    invoke-direct {p0, p1}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getInstalledFontFamilyNames(Ljava/util/Locale;)[Ljava/lang/String;
    .locals 0

    invoke-super {p0, p1}, Lsun/font/SunFontManager;->getInstalledFontFamilyNames(Ljava/util/Locale;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getNewComposite(Ljava/lang/String;ILsun/font/Font2DHandle;)Lsun/font/Font2DHandle;
    .locals 3

    sget-object v0, Lsun/font/AndroidFontManager;->TAG:Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {p1, v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "getNewComposite: %s-%d"

    invoke-static {v0, v2, v1}, Lcom/onyx/common/util/JLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-super {p0, p1, p2, p3}, Lsun/font/SunFontManager;->getNewComposite(Ljava/lang/String;ILsun/font/Font2DHandle;)Lsun/font/Font2DHandle;

    move-result-object p0

    return-object p0
.end method

.method public registerDefaultFont()V
    .locals 9

    sget-boolean v0, Lsun/font/SunFontManager;->noType1Font:Z

    invoke-virtual {p0, v0}, Lsun/font/SunFontManager;->getPlatformFontPath(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lsun/font/AndroidFontManager;->getDefaultPlatformFont()[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aget-object v3, v1, v2

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    aget-object v4, v1, v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x3

    move-object v3, p0

    invoke-virtual/range {v3 .. v8}, Lsun/font/SunFontManager;->registerFontFile(Ljava/lang/String;[Ljava/lang/String;IZI)Lsun/font/PhysicalFont;

    :cond_0
    return-void
.end method

.method public registerFont(Ljava/awt/Font;)Z
    .locals 3

    sget-object v0, Lsun/font/AndroidFontManager;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/awt/Font;->getName()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "registerFont: %s"

    invoke-static {v0, v2, v1}, Lcom/onyx/common/util/JLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-super {p0, p1}, Lsun/font/SunFontManager;->registerFont(Ljava/awt/Font;)Z

    move-result p0

    return p0
.end method

.method public registerFontFile(Ljava/lang/String;[Ljava/lang/String;IZ)V
    .locals 8

    iget-object v0, p0, Lsun/font/SunFontManager;->registeredFontFiles:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lsun/font/SunFontManager;->registeredFontFiles:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lsun/font/SunFontManager;->getTrueTypeFilter()Ljava/io/FilenameFilter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Ljava/io/FilenameFilter;->accept(Ljava/io/File;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lsun/font/SunFontManager;->getType1Filter()Ljava/io/FilenameFilter;

    move-result-object v0

    invoke-interface {v0, v1, p1}, Ljava/io/FilenameFilter;->accept(Ljava/io/File;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lsun/font/SunFontManager;->fontPath:Ljava/lang/String;

    if-nez v1, :cond_2

    sget-boolean v1, Lsun/font/SunFontManager;->noType1Font:Z

    invoke-virtual {p0, v1}, Lsun/font/SunFontManager;->getPlatformFontPath(Z)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lsun/font/SunFontManager;->fontPath:Ljava/lang/String;

    :cond_2
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lsun/font/SunFontManager;->fontPath:Ljava/lang/String;

    invoke-direct {v1, v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    if-eqz p4, :cond_3

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move v5, v0

    move v7, p3

    invoke-virtual/range {v1 .. v7}, Lsun/font/SunFontManager;->registerDeferredFont(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;IZI)V

    goto :goto_1

    :cond_3
    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, v3

    move-object v3, p2

    move v4, v0

    move v6, p3

    invoke-virtual/range {v1 .. v6}, Lsun/font/SunFontManager;->registerFontFile(Ljava/lang/String;[Ljava/lang/String;IZI)Lsun/font/PhysicalFont;

    goto :goto_1

    :cond_4
    invoke-virtual {p0, p1}, Lsun/font/SunFontManager;->addToMissingFontFileList(Ljava/lang/String;)V

    :cond_5
    :goto_1
    return-void
.end method

.method public useAlternateFontforJALocales()V
    .locals 0

    return-void
.end method

.method public usingPerAppContextComposites()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
