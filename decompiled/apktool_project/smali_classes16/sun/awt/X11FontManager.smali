.class public final Lsun/awt/X11FontManager;
.super Lsun/awt/FcFontManager;
.source "SourceFile"


# static fields
.field private static final ADD_STYLE_NAME_FIELD:I = 0x6

.field private static final AVERAGE_WIDTH_FIELD:I = 0xc

.field private static final CHARSET_ENCODING_FIELD:I = 0xe

.field private static final CHARSET_REGISTRY_FIELD:I = 0xd

.field private static final FAMILY_NAME_FIELD:I = 0x2

.field private static final FOUNDRY_FIELD:I = 0x1

.field private static final PIXEL_SIZE_FIELD:I = 0x7

.field private static final POINT_SIZE_FIELD:I = 0x8

.field private static final RESOLUTION_X_FIELD:I = 0x9

.field private static final RESOLUTION_Y_FIELD:I = 0xa

.field private static final SETWIDTH_NAME_FIELD:I = 0x5

.field private static final SLANT_FIELD:I = 0x4

.field private static final SPACING_FIELD:I = 0xb

.field private static final WEIGHT_NAME_FIELD:I = 0x3

.field private static fontConfigDirs:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static fontNameMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static fontdirs:[Ljava/lang/String;

.field private static registeredDirs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static xFontDirsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static xlfdMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Vector<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lsun/awt/X11FontManager;->fontNameMap:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lsun/awt/X11FontManager;->xlfdMap:Ljava/util/Map;

    const/4 v0, 0x0

    sput-object v0, Lsun/awt/X11FontManager;->fontConfigDirs:Ljava/util/HashSet;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lsun/awt/X11FontManager;->registeredDirs:Ljava/util/HashMap;

    sput-object v0, Lsun/awt/X11FontManager;->fontdirs:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lsun/awt/FcFontManager;-><init>()V

    return-void
.end method

.method public static getInstance()Lsun/awt/X11FontManager;
    .locals 1

    invoke-static {}, Lsun/font/SunFontManager;->getInstance()Lsun/font/SunFontManager;

    move-result-object v0

    check-cast v0, Lsun/awt/X11FontManager;

    return-object v0
.end method

.method private getPlatformFontPathFromFontConfig()V
    .locals 3

    sget-object v0, Lsun/awt/X11FontManager;->fontConfigDirs:Ljava/util/HashSet;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lsun/font/SunFontManager;->getFontConfiguration()Lsun/awt/FontConfiguration;

    move-result-object p0

    invoke-virtual {p0}, Lsun/awt/FontConfiguration;->getAWTFontPathSet()Ljava/util/HashSet;

    move-result-object p0

    sput-object p0, Lsun/awt/X11FontManager;->fontConfigDirs:Ljava/util/HashSet;

    invoke-static {}, Lsun/font/FontUtilities;->debugFonts()Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lsun/awt/X11FontManager;->fontConfigDirs:Ljava/util/HashSet;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "awtfontpath : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v2, p0, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lsun/font/FontUtilities;->logInfo(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static getX11FontName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "%d"

    const-string v1, "*"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lsun/font/NativeFont;->fontExists(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private isHeadless()Z
    .locals 0

    invoke-static {}, Ljava/awt/GraphicsEnvironment;->getLocalGraphicsEnvironment()Ljava/awt/GraphicsEnvironment;

    invoke-static {}, Ljava/awt/GraphicsEnvironment;->isHeadless()Z

    move-result p0

    return p0
.end method

.method private specificFontIDForName(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const/16 p0, 0xe

    new-array v0, p0, [I

    const/4 v1, 0x1

    move v2, v1

    move v3, v2

    :cond_0
    :goto_0
    const/4 v4, -0x1

    if-eq v2, v4, :cond_1

    if-ge v3, p0, :cond_1

    const/16 v5, 0x2d

    invoke-virtual {p1, v5, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    if-eq v2, v4, :cond_0

    add-int/lit8 v4, v3, 0x1

    aput v2, v0, v3

    add-int/lit8 v2, v2, 0x1

    move v3, v4

    goto :goto_0

    :cond_1
    if-eq v3, p0, :cond_3

    invoke-static {}, Lsun/font/FontUtilities;->debugFonts()Z

    move-result p0

    if-eqz p0, :cond_2

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Font Configuration Font ID is malformed:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lsun/font/FontUtilities;->logSevere(Ljava/lang/String;)V

    :cond_2
    return-object p1

    :cond_3
    new-instance p0, Ljava/lang/StringBuffer;

    aget v1, v0, v1

    const/4 v2, 0x5

    aget v2, v0, v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const/16 v1, 0xc

    aget v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object p1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, p1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private switchFontIDForName(Ljava/lang/String;)Ljava/lang/String;
    .locals 11

    const/16 p0, 0xe

    new-array v0, p0, [I

    const/4 v1, 0x1

    move v2, v1

    move v3, v2

    :cond_0
    :goto_0
    const/4 v4, -0x1

    if-eq v2, v4, :cond_1

    if-ge v3, p0, :cond_1

    const/16 v5, 0x2d

    invoke-virtual {p1, v5, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    if-eq v2, v4, :cond_0

    add-int/lit8 v4, v3, 0x1

    aput v2, v0, v3

    add-int/lit8 v2, v2, 0x1

    move v3, v4

    goto :goto_0

    :cond_1
    if-eq v3, p0, :cond_3

    invoke-static {}, Lsun/font/FontUtilities;->debugFonts()Z

    move-result p0

    if-eqz p0, :cond_2

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Font Configuration Font ID is malformed:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lsun/font/FontUtilities;->logSevere(Ljava/lang/String;)V

    :cond_2
    return-object p1

    :cond_3
    const/4 p0, 0x3

    aget v2, v0, p0

    add-int/2addr v2, v1

    const/4 v3, 0x4

    aget v4, v0, v3

    invoke-virtual {p1, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    aget v4, v0, v1

    add-int/2addr v4, v1

    const/4 v5, 0x2

    aget v5, v0, v5

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0xc

    aget v5, v0, v5

    add-int/2addr v5, v1

    const/16 v6, 0xd

    aget v7, v0, v6

    invoke-virtual {p1, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    aget v7, v0, v6

    add-int/2addr v7, v1

    invoke-virtual {p1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "i"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    const-string v10, "o"

    if-eqz v9, :cond_4

    move-object v2, v10

    goto :goto_1

    :cond_4
    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    move-object v2, v8

    :cond_5
    :goto_1
    const-string v8, "itc zapfdingbats"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    const-string v4, "sun"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    const-string v4, "fontspecific"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    const-string v5, "adobe"

    :cond_6
    new-instance v4, Ljava/lang/StringBuffer;

    aget v7, v0, v1

    aget p0, v0, p0

    add-int/2addr p0, v1

    invoke-virtual {p1, v7, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v4, p0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    aget p0, v0, v3

    const/4 v2, 0x5

    aget v2, v0, v2

    add-int/2addr v2, v1

    invoke-virtual {p1, p0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    aget p0, v0, v6

    invoke-virtual {p1, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object p1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, p1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public addFontToPlatformFontPath(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lsun/awt/X11FontManager;->getPlatformFontPathFromFontConfig()V

    sget-object v0, Lsun/awt/X11FontManager;->xFontDirsMap:Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lsun/awt/X11FontManager;->specificFontIDForName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lsun/awt/X11FontManager;->xFontDirsMap:Ljava/util/Map;

    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_0

    sget-object p1, Lsun/awt/X11FontManager;->fontConfigDirs:Ljava/util/HashSet;

    invoke-virtual {p1, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public createFontConfiguration()Lsun/awt/FontConfiguration;
    .locals 2

    .line 1
    new-instance v0, Lsun/font/MFontConfiguration;

    invoke-direct {v0, p0}, Lsun/font/MFontConfiguration;-><init>(Lsun/font/SunFontManager;)V

    .line 2
    sget-boolean v1, Lsun/font/FontUtilities;->isLinux:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lsun/awt/FontConfiguration;->foundOsSpecificFile()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    new-instance v1, Lsun/font/FcFontConfiguration;

    invoke-direct {v1, p0}, Lsun/font/FcFontConfiguration;-><init>(Lsun/font/SunFontManager;)V

    .line 4
    invoke-virtual {v1}, Lsun/font/FcFontConfiguration;->init()Z

    move-result p0

    if-eqz p0, :cond_0

    return-object v1

    .line 5
    :cond_0
    invoke-virtual {v0}, Lsun/awt/FontConfiguration;->init()Z

    return-object v0
.end method

.method public createFontConfiguration(ZZ)Lsun/awt/FontConfiguration;
    .locals 1

    .line 6
    new-instance v0, Lsun/font/MFontConfiguration;

    invoke-direct {v0, p0, p1, p2}, Lsun/font/MFontConfiguration;-><init>(Lsun/font/SunFontManager;ZZ)V

    return-object v0
.end method

.method public getFileNameFromPlatformName(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object p1

    :cond_0
    invoke-direct {p0, p1}, Lsun/awt/X11FontManager;->specificFontIDForName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-super {p0, p1}, Lsun/font/SunFontManager;->getFileNameFromPlatformName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-direct {p0}, Lsun/awt/X11FontManager;->isHeadless()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v4

    :cond_1
    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    sget-object v3, Lsun/awt/X11FontManager;->xlfdMap:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Vector;

    if-nez v3, :cond_3

    invoke-virtual {p0}, Lsun/font/SunFontManager;->getFontConfiguration()Lsun/awt/FontConfiguration;

    move-result-object v3

    invoke-virtual {v3, v2}, Lsun/awt/FontConfiguration;->needToSearchForFile(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    move-object v2, v4

    :cond_2
    if-eqz v2, :cond_4

    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    invoke-virtual {v3, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    sget-object v4, Lsun/awt/X11FontManager;->xlfdMap:Ljava/util/Map;

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    invoke-virtual {v3, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {v3, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_0
    if-eqz v2, :cond_5

    sget-object p0, Lsun/awt/X11FontManager;->fontNameMap:Ljava/util/Map;

    invoke-interface {p0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v2

    :cond_5
    if-eqz v1, :cond_c

    sget-object v2, Lsun/awt/X11FontManager;->fontNameMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lsun/font/SunFontManager;->fontPath:Ljava/lang/String;

    if-nez v3, :cond_9

    if-eqz v2, :cond_6

    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    :cond_6
    invoke-static {}, Lsun/font/FontUtilities;->debugFonts()Z

    move-result v0

    if-eqz v0, :cond_7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "** Registering all font paths because can\'t find file for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lsun/font/FontUtilities;->logWarning(Ljava/lang/String;)V

    :cond_7
    sget-boolean v0, Lsun/font/SunFontManager;->noType1Font:Z

    invoke-virtual {p0, v0}, Lsun/font/SunFontManager;->getPlatformFontPath(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lsun/font/SunFontManager;->fontPath:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lsun/awt/X11FontManager;->registerFontDirs(Ljava/lang/String;)V

    invoke-static {}, Lsun/font/FontUtilities;->debugFonts()Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "** Finished registering all font paths"

    invoke-static {v0}, Lsun/font/FontUtilities;->logWarning(Ljava/lang/String;)V

    :cond_8
    sget-object v0, Lsun/awt/X11FontManager;->fontNameMap:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    :cond_9
    if-nez v2, :cond_a

    invoke-direct {p0}, Lsun/awt/X11FontManager;->isHeadless()Z

    move-result v0

    if-nez v0, :cond_a

    invoke-static {p1}, Lsun/awt/X11FontManager;->getX11FontName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_a
    if-nez v2, :cond_b

    invoke-direct {p0, p1}, Lsun/awt/X11FontManager;->switchFontIDForName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object p0, Lsun/awt/X11FontManager;->fontNameMap:Ljava/util/Map;

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    move-object v2, p0

    :cond_b
    if-eqz v2, :cond_c

    sget-object p0, Lsun/awt/X11FontManager;->fontNameMap:Ljava/util/Map;

    invoke-interface {p0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c
    return-object v2
.end method

.method public getFileNameFromXLFD(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-direct {p0, p1}, Lsun/awt/X11FontManager;->specificFontIDForName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v1, Lsun/awt/X11FontManager;->fontNameMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lsun/awt/X11FontManager;->switchFontIDForName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lsun/awt/X11FontManager;->fontNameMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    :cond_0
    if-nez v0, :cond_2

    invoke-virtual {p0}, Lsun/font/SunFontManager;->getDefaultFontFile()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :cond_2
    :goto_0
    return-object v0
.end method

.method public getFontConfigFUIR(Ljava/lang/String;II)Ljavax/swing/plaf/FontUIResource;
    .locals 1

    invoke-virtual {p0}, Lsun/awt/FcFontManager;->getFontConfigManager()Lsun/font/FontConfigManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lsun/font/FontConfigManager;->getFontConfigFont(Ljava/lang/String;I)Lsun/font/CompositeFont;

    move-result-object p0

    if-nez p0, :cond_0

    new-instance p0, Ljavax/swing/plaf/FontUIResource;

    invoke-direct {p0, p1, p2, p3}, Ljavax/swing/plaf/FontUIResource;-><init>(Ljava/lang/String;II)V

    return-object p0

    :cond_0
    new-instance p1, Ljavax/swing/plaf/FontUIResource;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lsun/font/Font2D;->getFamilyName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, p2, p3}, Ljavax/swing/plaf/FontUIResource;-><init>(Ljava/lang/String;II)V

    invoke-static {}, Lsun/font/FontAccess;->getFontAccess()Lsun/font/FontAccess;

    move-result-object p2

    iget-object p0, p0, Lsun/font/Font2D;->handle:Lsun/font/Font2DHandle;

    invoke-virtual {p2, p1, p0}, Lsun/font/FontAccess;->setFont2D(Ljava/awt/Font;Lsun/font/Font2DHandle;)V

    invoke-static {}, Lsun/font/FontAccess;->getFontAccess()Lsun/font/FontAccess;

    move-result-object p0

    invoke-virtual {p0, p1}, Lsun/font/FontAccess;->setCreatedFont(Ljava/awt/Font;)V

    return-object p1
.end method

.method public declared-synchronized getFontPath(Z)Ljava/lang/String;
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lsun/awt/X11FontManager;->isHeadless()Z

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lsun/awt/FcFontManager;->getFontPathNative(ZZ)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getNativeNames(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 0

    sget-object p0, Lsun/awt/X11FontManager;->xlfdMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Vector;

    if-nez p0, :cond_1

    if-nez p2, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public loadFonts()V
    .locals 1

    invoke-super {p0}, Lsun/font/SunFontManager;->loadFonts()V

    const/4 p0, 0x0

    sput-object p0, Lsun/awt/X11FontManager;->xFontDirsMap:Ljava/util/Map;

    new-instance p0, Ljava/util/HashMap;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Ljava/util/HashMap;-><init>(I)V

    sput-object p0, Lsun/awt/X11FontManager;->xlfdMap:Ljava/util/Map;

    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0, v0}, Ljava/util/HashMap;-><init>(I)V

    sput-object p0, Lsun/awt/X11FontManager;->fontNameMap:Ljava/util/Map;

    return-void
.end method

.method public registerFontDir(Ljava/lang/String;)V
    .locals 14

    invoke-static {}, Lsun/font/FontUtilities;->debugFonts()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ParseFontDir "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lsun/font/FontUtilities;->logInfo(Ljava/lang/String;)V

    :cond_0
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "fonts.dir"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v2

    if-eqz v2, :cond_12

    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    new-instance v0, Ljava/io/BufferedReader;

    const/16 v1, 0x2000

    invoke-direct {v0, v2, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    new-instance v1, Ljava/io/StreamTokenizer;

    invoke-direct {v1, v0}, Ljava/io/StreamTokenizer;-><init>(Ljava/io/Reader;)V

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/io/StreamTokenizer;->eolIsSignificant(Z)V

    invoke-virtual {v1}, Ljava/io/StreamTokenizer;->nextToken()I

    move-result v0

    const/4 v3, -0x2

    if-ne v0, v3, :cond_11

    iget-wide v3, v1, Ljava/io/StreamTokenizer;->nval:D

    double-to-int v0, v3

    invoke-virtual {v1}, Ljava/io/StreamTokenizer;->nextToken()I

    move-result v3

    const/16 v4, 0xa

    if-ne v3, v4, :cond_11

    invoke-virtual {v1}, Ljava/io/StreamTokenizer;->resetSyntax()V

    const/16 v3, 0x7f

    const/16 v5, 0x20

    invoke-virtual {v1, v5, v3}, Ljava/io/StreamTokenizer;->wordChars(II)V

    const/16 v3, 0xa0

    const/16 v6, 0xff

    invoke-virtual {v1, v3, v6}, Ljava/io/StreamTokenizer;->wordChars(II)V

    const/16 v3, 0x1f

    const/4 v6, 0x0

    invoke-virtual {v1, v6, v3}, Ljava/io/StreamTokenizer;->whitespaceChars(II)V

    move v3, v6

    :goto_0
    if-ge v3, v0, :cond_11

    invoke-virtual {v1}, Ljava/io/StreamTokenizer;->nextToken()I

    move-result v7

    const/4 v8, -0x1

    if-ne v7, v8, :cond_1

    goto/16 :goto_3

    :cond_1
    const/4 v8, -0x3

    if-eq v7, v8, :cond_2

    goto/16 :goto_3

    :cond_2
    iget-object v7, v1, Ljava/io/StreamTokenizer;->sval:Ljava/lang/String;

    invoke-virtual {v7, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    if-gtz v7, :cond_3

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1}, Ljava/io/StreamTokenizer;->nextToken()I

    move-result v7

    if-eq v7, v4, :cond_10

    goto/16 :goto_3

    :cond_3
    iget-object v8, v1, Ljava/io/StreamTokenizer;->sval:Ljava/lang/String;

    invoke-virtual {v8, v6}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x21

    if-ne v8, v9, :cond_4

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1}, Ljava/io/StreamTokenizer;->nextToken()I

    move-result v7

    if-eq v7, v4, :cond_10

    goto/16 :goto_3

    :cond_4
    iget-object v8, v1, Ljava/io/StreamTokenizer;->sval:Ljava/lang/String;

    invoke-virtual {v8, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x3a

    invoke-virtual {v8, v9}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v9

    if-lez v9, :cond_6

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v10

    if-lt v9, v10, :cond_5

    goto/16 :goto_2

    :cond_5
    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    :cond_6
    iget-object v9, v1, Ljava/io/StreamTokenizer;->sval:Ljava/lang/String;

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v9, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lsun/awt/X11FontManager;->specificFontIDForName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    sget-object v10, Lsun/awt/X11FontManager;->fontNameMap:Ljava/util/Map;

    invoke-interface {v10, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-static {}, Lsun/font/FontUtilities;->debugFonts()Z

    move-result v11

    if-eqz v11, :cond_7

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "file="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " xlfd="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lsun/font/FontUtilities;->logInfo(Ljava/lang/String;)V

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "fontID="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " sVal="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lsun/font/FontUtilities;->logInfo(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_7
    :try_start_2
    new-instance v11, Ljava/io/File;

    invoke-direct {v11, p1, v8}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v12, Lsun/awt/X11FontManager;->xFontDirsMap:Ljava/util/Map;

    if-nez v12, :cond_8

    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    sput-object v12, Lsun/awt/X11FontManager;->xFontDirsMap:Ljava/util/Map;

    :cond_8
    sget-object v12, Lsun/awt/X11FontManager;->xFontDirsMap:Ljava/util/Map;

    invoke-interface {v12, v9, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v11}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v8
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_0
    :try_start_3
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v12, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    :goto_1
    sget-object v11, Lsun/awt/X11FontManager;->xlfdMap:Ljava/util/Map;

    invoke-interface {v11, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Vector;

    invoke-static {}, Lsun/font/FontUtilities;->debugFonts()Z

    move-result v12

    if-eqz v12, :cond_9

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "fullPath="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " xVal="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lsun/font/FontUtilities;->logInfo(Ljava/lang/String;)V

    :cond_9
    if-eqz v11, :cond_a

    invoke-virtual {v11, v7}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_b

    :cond_a
    if-eqz v10, :cond_c

    :cond_b
    const-string v12, "/"

    invoke-virtual {v10, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_f

    :cond_c
    invoke-static {}, Lsun/font/FontUtilities;->debugFonts()Z

    move-result v10

    if-eqz v10, :cond_d

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Map fontID:"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "to file:"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lsun/font/FontUtilities;->logInfo(Ljava/lang/String;)V

    :cond_d
    sget-object v10, Lsun/awt/X11FontManager;->fontNameMap:Ljava/util/Map;

    invoke-interface {v10, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez v11, :cond_e

    new-instance v11, Ljava/util/Vector;

    invoke-direct {v11}, Ljava/util/Vector;-><init>()V

    sget-object v9, Lsun/awt/X11FontManager;->xlfdMap:Ljava/util/Map;

    invoke-interface {v9, v8, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_e
    invoke-virtual {v11, v7}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :cond_f
    invoke-virtual {v1}, Ljava/io/StreamTokenizer;->nextToken()I

    move-result v7

    if-eq v7, v4, :cond_10

    goto :goto_3

    :cond_10
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_11
    :goto_3
    invoke-virtual {v2}, Ljava/io/Reader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v1, v2

    goto :goto_4

    :catchall_0
    move-exception p0

    move-object v1, v2

    goto :goto_6

    :catch_1
    move-object v1, v2

    goto :goto_7

    :cond_12
    :goto_4
    if-eqz v1, :cond_14

    :goto_5
    :try_start_4
    invoke-virtual {v1}, Ljava/io/Reader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_8

    :catchall_1
    move-exception p0

    :goto_6
    if-eqz v1, :cond_13

    :try_start_5
    invoke-virtual {v1}, Ljava/io/Reader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    :catch_2
    :cond_13
    throw p0

    :catch_3
    :goto_7
    if-eqz v1, :cond_14

    goto :goto_5

    :catch_4
    :cond_14
    :goto_8
    return-void
.end method

.method public registerFontDirs(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/util/StringTokenizer;

    sget-object v1, Ljava/io/File;->pathSeparator:Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    :try_start_0
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    sget-object v1, Lsun/awt/X11FontManager;->registeredDirs:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lsun/awt/X11FontManager;->registeredDirs:Ljava/util/HashMap;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lsun/awt/X11FontManager;->registerFontDir(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_1
    return-void
.end method

.method public registerPlatformFontsUsedByFontConfiguration()V
    .locals 2

    invoke-direct {p0}, Lsun/awt/X11FontManager;->getPlatformFontPathFromFontConfig()V

    sget-object p0, Lsun/awt/X11FontManager;->fontConfigDirs:Ljava/util/HashSet;

    if-nez p0, :cond_0

    return-void

    :cond_0
    sget-boolean p0, Lsun/font/FontUtilities;->isLinux:Z

    if-eqz p0, :cond_1

    sget-object p0, Lsun/awt/X11FontManager;->fontConfigDirs:Ljava/util/HashSet;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lsun/font/SunFontManager;->jreLibDirName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "oblique-fonts"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_1
    sget-object p0, Lsun/awt/X11FontManager;->fontConfigDirs:Ljava/util/HashSet;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    sput-object p0, Lsun/awt/X11FontManager;->fontdirs:[Ljava/lang/String;

    return-void
.end method
