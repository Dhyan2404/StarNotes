.class public Lsun/font/MFontConfiguration;
.super Lsun/awt/FontConfiguration;
.source "SourceFile"


# static fields
.field private static encodingMap:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static fontConfig:Lsun/awt/FontConfiguration; = null

.field private static final fontsDirPrefix:Ljava/lang/String; = "$JRE_LIB_FONTS"

.field private static logger:Lsun/util/logging/NeoPlatformLogger;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lsun/font/MFontConfiguration;->encodingMap:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Lsun/font/SunFontManager;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lsun/awt/FontConfiguration;-><init>(Lsun/font/SunFontManager;)V

    .line 2
    invoke-static {}, Lsun/font/FontUtilities;->debugFonts()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "sun.awt.FontConfiguration"

    .line 3
    invoke-static {p1}, Lsun/util/logging/NeoPlatformLogger;->getLogger(Ljava/lang/String;)Lsun/util/logging/NeoPlatformLogger;

    move-result-object p1

    sput-object p1, Lsun/font/MFontConfiguration;->logger:Lsun/util/logging/NeoPlatformLogger;

    .line 4
    :cond_0
    invoke-direct {p0}, Lsun/font/MFontConfiguration;->initTables()V

    return-void
.end method

.method public constructor <init>(Lsun/font/SunFontManager;ZZ)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2, p3}, Lsun/awt/FontConfiguration;-><init>(Lsun/font/SunFontManager;ZZ)V

    .line 6
    invoke-static {}, Lsun/font/FontUtilities;->debugFonts()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "sun.awt.FontConfiguration"

    .line 7
    invoke-static {p1}, Lsun/util/logging/NeoPlatformLogger;->getLogger(Ljava/lang/String;)Lsun/util/logging/NeoPlatformLogger;

    move-result-object p1

    sput-object p1, Lsun/font/MFontConfiguration;->logger:Lsun/util/logging/NeoPlatformLogger;

    .line 8
    :cond_0
    invoke-direct {p0}, Lsun/font/MFontConfiguration;->initTables()V

    return-void
.end method

.method private getVersionString(Ljava/io/File;)Ljava/lang/String;
    .locals 0

    :try_start_0
    new-instance p0, Ljava/util/Scanner;

    invoke-direct {p0, p1}, Ljava/util/Scanner;-><init>(Ljava/io/File;)V

    const-string p1, "(\\d)+((\\.)(\\d)+)*"

    invoke-virtual {p0, p1}, Ljava/util/Scanner;->findInLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private initTables()V
    .locals 2

    sget-object p0, Lsun/font/MFontConfiguration;->encodingMap:Ljava/util/HashMap;

    const-string v0, "iso8859-1"

    const-string v1, "ISO-8859-1"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lsun/font/MFontConfiguration;->encodingMap:Ljava/util/HashMap;

    const-string v0, "iso8859-2"

    const-string v1, "ISO-8859-2"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lsun/font/MFontConfiguration;->encodingMap:Ljava/util/HashMap;

    const-string v0, "iso8859-4"

    const-string v1, "ISO-8859-4"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lsun/font/MFontConfiguration;->encodingMap:Ljava/util/HashMap;

    const-string v0, "iso8859-5"

    const-string v1, "ISO-8859-5"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lsun/font/MFontConfiguration;->encodingMap:Ljava/util/HashMap;

    const-string v0, "iso8859-6"

    const-string v1, "ISO-8859-6"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lsun/font/MFontConfiguration;->encodingMap:Ljava/util/HashMap;

    const-string v0, "iso8859-7"

    const-string v1, "ISO-8859-7"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lsun/font/MFontConfiguration;->encodingMap:Ljava/util/HashMap;

    const-string v0, "iso8859-8"

    const-string v1, "ISO-8859-8"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lsun/font/MFontConfiguration;->encodingMap:Ljava/util/HashMap;

    const-string v0, "iso8859-9"

    const-string v1, "ISO-8859-9"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lsun/font/MFontConfiguration;->encodingMap:Ljava/util/HashMap;

    const-string v0, "iso8859-13"

    const-string v1, "ISO-8859-13"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lsun/font/MFontConfiguration;->encodingMap:Ljava/util/HashMap;

    const-string v0, "iso8859-15"

    const-string v1, "ISO-8859-15"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lsun/font/MFontConfiguration;->encodingMap:Ljava/util/HashMap;

    const-string v0, "gb2312.1980-0"

    const-string v1, "sun.font.X11GB2312"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lsun/awt/FontConfiguration;->osName:Ljava/lang/String;

    const-string v0, "gbk-0"

    if-nez p0, :cond_0

    sget-object p0, Lsun/font/MFontConfiguration;->encodingMap:Ljava/util/HashMap;

    const-string v1, "GBK"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    sget-object p0, Lsun/font/MFontConfiguration;->encodingMap:Ljava/util/HashMap;

    const-string v1, "sun.font.X11GBK"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    sget-object p0, Lsun/font/MFontConfiguration;->encodingMap:Ljava/util/HashMap;

    const-string v0, "gb18030.2000-0"

    const-string v1, "sun.font.X11GB18030_0"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lsun/font/MFontConfiguration;->encodingMap:Ljava/util/HashMap;

    const-string v0, "gb18030.2000-1"

    const-string v1, "sun.font.X11GB18030_1"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lsun/font/MFontConfiguration;->encodingMap:Ljava/util/HashMap;

    const-string v0, "cns11643-1"

    const-string v1, "sun.font.X11CNS11643P1"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lsun/font/MFontConfiguration;->encodingMap:Ljava/util/HashMap;

    const-string v0, "cns11643-2"

    const-string v1, "sun.font.X11CNS11643P2"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lsun/font/MFontConfiguration;->encodingMap:Ljava/util/HashMap;

    const-string v0, "cns11643-3"

    const-string v1, "sun.font.X11CNS11643P3"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lsun/font/MFontConfiguration;->encodingMap:Ljava/util/HashMap;

    const-string v0, "big5-1"

    const-string v1, "Big5"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lsun/font/MFontConfiguration;->encodingMap:Ljava/util/HashMap;

    const-string v0, "big5-0"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lsun/font/MFontConfiguration;->encodingMap:Ljava/util/HashMap;

    const-string v0, "hkscs-1"

    const-string v1, "Big5-HKSCS"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lsun/font/MFontConfiguration;->encodingMap:Ljava/util/HashMap;

    const-string v0, "ansi-1251"

    const-string v1, "windows-1251"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lsun/font/MFontConfiguration;->encodingMap:Ljava/util/HashMap;

    const-string v0, "koi8-r"

    const-string v1, "KOI8-R"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lsun/font/MFontConfiguration;->encodingMap:Ljava/util/HashMap;

    const-string v0, "jisx0201.1976-0"

    const-string v1, "JIS0201"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lsun/font/MFontConfiguration;->encodingMap:Ljava/util/HashMap;

    const-string v0, "jisx0208.1983-0"

    const-string v1, "JIS0208"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lsun/font/MFontConfiguration;->encodingMap:Ljava/util/HashMap;

    const-string v0, "jisx0212.1990-0"

    const-string v1, "JIS0212"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lsun/font/MFontConfiguration;->encodingMap:Ljava/util/HashMap;

    const-string v0, "ksc5601.1987-0"

    const-string v1, "sun.font.X11KSC5601"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lsun/font/MFontConfiguration;->encodingMap:Ljava/util/HashMap;

    const-string v0, "ksc5601.1992-3"

    const-string v1, "sun.font.X11Johab"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lsun/font/MFontConfiguration;->encodingMap:Ljava/util/HashMap;

    const-string v0, "tis620.2533-0"

    const-string v1, "TIS-620"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lsun/font/MFontConfiguration;->encodingMap:Ljava/util/HashMap;

    const-string v0, "iso10646-1"

    const-string v1, "UTF-16BE"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getAWTFontPathSet()Ljava/util/HashSet;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lsun/awt/FontConfiguration;->getCoreScripts(I)[S

    move-result-object p0

    move v2, v1

    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_3

    sget-object v3, Lsun/awt/FontConfiguration;->table_awtfontpaths:[S

    aget-short v4, p0, v2

    aget-short v3, v3, v4

    invoke-static {v3}, Lsun/awt/FontConfiguration;->getString(S)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    const/16 v4, 0x3a

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    move v6, v1

    :goto_1
    if-ltz v5, :cond_0

    invoke-virtual {v3, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v5, 0x1

    invoke-virtual {v3, v4, v6}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    goto :goto_1

    :cond_0
    if-nez v6, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    :goto_2
    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method public getDefaultFontCharset(Ljava/lang/String;)Ljava/nio/charset/Charset;
    .locals 0

    const-string p0, "ISO8859_1"

    invoke-static {p0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p0

    return-object p0
.end method

.method public getEncoding(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 p0, 0x0

    const/16 p2, 0xd

    :goto_0
    add-int/lit8 v0, p2, -0x1

    if-lez p2, :cond_0

    if-ltz p0, :cond_0

    const-string p2, "-"

    invoke-virtual {p1, p2, p0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    move p2, v0

    goto :goto_0

    :cond_0
    const-string p2, "default"

    const/4 v0, -0x1

    if-ne p0, v0, :cond_1

    return-object p2

    :cond_1
    invoke-virtual {p1, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "fontspecific"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_3

    const-string v0, "dingbats"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_2

    const-string p0, "sun.font.X11Dingbats"

    return-object p0

    :cond_2
    const-string v0, "symbol"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_3

    const-string p0, "sun.awt.Symbol"

    return-object p0

    :cond_3
    sget-object p1, Lsun/font/MFontConfiguration;->encodingMap:Ljava/util/HashMap;

    invoke-virtual {p1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-nez p0, :cond_4

    goto :goto_1

    :cond_4
    move-object p2, p0

    :goto_1
    return-object p2
.end method

.method public getFaceNameFromComponentFontName(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getFallbackFamilyName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0, p1}, Lsun/awt/FontConfiguration;->getCompatibilityFamilyName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    return-object p2
.end method

.method public getFileNameFromComponentFontName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-virtual {p0, p1}, Lsun/awt/FontConfiguration;->getFileNameFromPlatformName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2f

    if-ne v1, v2, :cond_0

    invoke-virtual {p0, v0}, Lsun/awt/FontConfiguration;->needToSearchForFile(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    iget-object p0, p0, Lsun/awt/FontConfiguration;->fontManager:Lsun/font/SunFontManager;

    check-cast p0, Lsun/awt/X11FontManager;

    invoke-virtual {p0, p1}, Lsun/awt/X11FontManager;->getFileNameFromXLFD(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public initReorderMap()V
    .locals 4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lsun/awt/FontConfiguration;->reorderMap:Ljava/util/HashMap;

    const-string v1, "UTF-8.ja.JP"

    const-string v2, "japanese-iso10646"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lsun/awt/FontConfiguration;->reorderMap:Ljava/util/HashMap;

    const-string v1, "UTF-8.ko.KR"

    const-string v2, "korean-iso10646"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lsun/awt/FontConfiguration;->reorderMap:Ljava/util/HashMap;

    const-string v1, "UTF-8.zh.TW"

    const-string v2, "chinese-tw-iso10646"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lsun/awt/FontConfiguration;->reorderMap:Ljava/util/HashMap;

    const-string v1, "UTF-8.zh.HK"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lsun/awt/FontConfiguration;->reorderMap:Ljava/util/HashMap;

    const-string v1, "UTF-8.zh.CN"

    const-string v2, "chinese-cn-iso10646"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lsun/awt/FontConfiguration;->reorderMap:Ljava/util/HashMap;

    const-string v1, "japanese-x0201,japanese-x0208"

    invoke-virtual {p0, v1}, Lsun/awt/FontConfiguration;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const-string v2, "x-euc-jp-linux"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lsun/awt/FontConfiguration;->reorderMap:Ljava/util/HashMap;

    const-string v1, "GB2312"

    const-string v2, "chinese-gb18030"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lsun/awt/FontConfiguration;->reorderMap:Ljava/util/HashMap;

    const-string v1, "Big5"

    const-string v3, "chinese-big5"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lsun/awt/FontConfiguration;->reorderMap:Ljava/util/HashMap;

    const-string v1, "EUC-KR"

    const-string v3, "korean"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lsun/awt/FontConfiguration;->reorderMap:Ljava/util/HashMap;

    const-string v0, "GB18030"

    invoke-virtual {p0, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public mapFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_0

    const-string p0, "$JRE_LIB_FONTS"

    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lsun/font/SunFontManager;->jreFontDirName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0xe

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    return-object p1
.end method

.method public setOsNameAndVersion()V
    .locals 2

    invoke-super {p0}, Lsun/awt/FontConfiguration;->setOsNameAndVersion()V

    sget-object v0, Lsun/awt/FontConfiguration;->osName:Ljava/lang/String;

    const-string v1, "Linux"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :try_start_0
    new-instance v0, Ljava/io/File;

    const-string v1, "/etc/fedora-release"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "Fedora"

    sput-object v1, Lsun/awt/FontConfiguration;->osName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lsun/font/MFontConfiguration;->getVersionString(Ljava/io/File;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lsun/awt/FontConfiguration;->osVersion:Ljava/lang/String;

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/io/File;

    const-string v1, "/etc/redhat-release"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "RedHat"

    sput-object v1, Lsun/awt/FontConfiguration;->osName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lsun/font/MFontConfiguration;->getVersionString(Ljava/io/File;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lsun/awt/FontConfiguration;->osVersion:Ljava/lang/String;

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/io/File;

    const-string v1, "/etc/turbolinux-release"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "Turbo"

    sput-object v1, Lsun/awt/FontConfiguration;->osName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lsun/font/MFontConfiguration;->getVersionString(Ljava/io/File;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lsun/awt/FontConfiguration;->osVersion:Ljava/lang/String;

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/io/File;

    const-string v1, "/etc/SuSE-release"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "SuSE"

    sput-object v1, Lsun/awt/FontConfiguration;->osName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lsun/font/MFontConfiguration;->getVersionString(Ljava/io/File;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lsun/awt/FontConfiguration;->osVersion:Ljava/lang/String;

    goto :goto_0

    :cond_3
    new-instance p0, Ljava/io/File;

    const-string v0, "/etc/lsb-release"

    invoke-direct {p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->canRead()Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v0, v1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    const-string p0, "DISTRIB_ID"

    invoke-virtual {v0, p0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lsun/awt/FontConfiguration;->osName:Ljava/lang/String;

    const-string p0, "DISTRIB_RELEASE"

    invoke-virtual {v0, p0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lsun/awt/FontConfiguration;->osVersion:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_4
    :goto_0
    return-void
.end method
