.class public final Lsun/awt/Win32FontManager;
.super Lsun/font/SunFontManager;
.source "SourceFile"


# static fields
.field private static eudcFont:Lsun/font/TrueTypeFont;

.field static fontsForPrinting:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lsun/awt/Win32FontManager$1;

    invoke-direct {v0}, Lsun/awt/Win32FontManager$1;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    const/4 v0, 0x0

    sput-object v0, Lsun/awt/Win32FontManager;->fontsForPrinting:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lsun/font/SunFontManager;-><init>()V

    new-instance v0, Lsun/awt/Win32FontManager$2;

    invoke-direct {v0, p0}, Lsun/awt/Win32FontManager$2;-><init>(Lsun/awt/Win32FontManager;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    return-void
.end method

.method public static synthetic access$000()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lsun/awt/Win32FontManager;->getEUDCFontFile()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic access$102(Lsun/font/TrueTypeFont;)Lsun/font/TrueTypeFont;
    .locals 0

    sput-object p0, Lsun/awt/Win32FontManager;->eudcFont:Lsun/font/TrueTypeFont;

    return-object p0
.end method

.method public static synthetic access$200(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lsun/awt/Win32FontManager;->registerFontWithPlatform(Ljava/lang/String;)V

    return-void
.end method

.method private static native deRegisterFontWithPlatform(Ljava/lang/String;)V
.end method

.method private static native getEUDCFontFile()Ljava/lang/String;
.end method

.method private static native populateFontFileNameMap0(Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/Locale;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/util/Locale;",
            ")V"
        }
    .end annotation
.end method

.method private static native registerFontWithPlatform(Ljava/lang/String;)V
.end method

.method public static registerJREFontsForPrinting()V
    .locals 3

    const-class v0, Lsun/awt/Win32FontManager;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Ljava/awt/GraphicsEnvironment;->getLocalGraphicsEnvironment()Ljava/awt/GraphicsEnvironment;

    sget-object v1, Lsun/awt/Win32FontManager;->fontsForPrinting:Ljava/lang/String;

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    const/4 v2, 0x0

    sput-object v2, Lsun/awt/Win32FontManager;->fontsForPrinting:Ljava/lang/String;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v0, Lsun/awt/Win32FontManager$4;

    invoke-direct {v0, v1}, Lsun/awt/Win32FontManager$4;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public createFontConfiguration()Lsun/awt/FontConfiguration;
    .locals 1

    .line 1
    new-instance v0, Lsun/awt/WFontConfiguration;

    invoke-direct {v0, p0}, Lsun/awt/WFontConfiguration;-><init>(Lsun/font/SunFontManager;)V

    .line 2
    invoke-virtual {v0}, Lsun/awt/FontConfiguration;->init()Z

    return-object v0
.end method

.method public createFontConfiguration(ZZ)Lsun/awt/FontConfiguration;
    .locals 1

    .line 3
    new-instance v0, Lsun/awt/WFontConfiguration;

    invoke-direct {v0, p0, p1, p2}, Lsun/awt/WFontConfiguration;-><init>(Lsun/font/SunFontManager;ZZ)V

    return-object v0
.end method

.method public getDefaultPlatformFont()[Ljava/lang/String;
    .locals 4

    const-string v0, "Arial"

    const-string v1, "c:\\windows\\fonts"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lsun/font/SunFontManager;->getPlatformFontDirs(Z)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    if-le v3, v1, :cond_0

    new-instance v3, Lsun/awt/Win32FontManager$3;

    invoke-direct {v3, p0, v2}, Lsun/awt/Win32FontManager$3;-><init>(Lsun/awt/Win32FontManager;[Ljava/lang/String;)V

    invoke-static {v3}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_1

    aput-object p0, v0, v1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    aget-object p0, v2, p0

    aput-object p0, v0, v1

    :cond_1
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v2, v0, v1

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "arial.ttf"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v1

    return-object v0
.end method

.method public getEUDCFont()Lsun/font/TrueTypeFont;
    .locals 0

    sget-object p0, Lsun/awt/Win32FontManager;->eudcFont:Lsun/font/TrueTypeFont;

    return-object p0
.end method

.method public synchronized native getFontPath(Z)Ljava/lang/String;
.end method

.method public populateFontFileNameMap(Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/Locale;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/util/Locale;",
            ")V"
        }
    .end annotation

    invoke-static {p1, p2, p3, p4}, Lsun/awt/Win32FontManager;->populateFontFileNameMap0(Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/Locale;)V

    return-void
.end method

.method public populateHardcodedFileNameMap()Ljava/util/HashMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lsun/font/SunFontManager$FamilyDescription;",
            ">;"
        }
    .end annotation

    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    new-instance v0, Lsun/font/SunFontManager$FamilyDescription;

    invoke-direct {v0}, Lsun/font/SunFontManager$FamilyDescription;-><init>()V

    const-string v1, "Segoe UI"

    iput-object v1, v0, Lsun/font/SunFontManager$FamilyDescription;->familyName:Ljava/lang/String;

    iput-object v1, v0, Lsun/font/SunFontManager$FamilyDescription;->plainFullName:Ljava/lang/String;

    const-string v1, "segoeui.ttf"

    iput-object v1, v0, Lsun/font/SunFontManager$FamilyDescription;->plainFileName:Ljava/lang/String;

    const-string v1, "Segoe UI Bold"

    iput-object v1, v0, Lsun/font/SunFontManager$FamilyDescription;->boldFullName:Ljava/lang/String;

    const-string v1, "segoeuib.ttf"

    iput-object v1, v0, Lsun/font/SunFontManager$FamilyDescription;->boldFileName:Ljava/lang/String;

    const-string v1, "Segoe UI Italic"

    iput-object v1, v0, Lsun/font/SunFontManager$FamilyDescription;->italicFullName:Ljava/lang/String;

    const-string v1, "segoeuii.ttf"

    iput-object v1, v0, Lsun/font/SunFontManager$FamilyDescription;->italicFileName:Ljava/lang/String;

    const-string v1, "Segoe UI Bold Italic"

    iput-object v1, v0, Lsun/font/SunFontManager$FamilyDescription;->boldItalicFullName:Ljava/lang/String;

    const-string v1, "segoeuiz.ttf"

    iput-object v1, v0, Lsun/font/SunFontManager$FamilyDescription;->boldItalicFileName:Ljava/lang/String;

    const-string v1, "segoe"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lsun/font/SunFontManager$FamilyDescription;

    invoke-direct {v0}, Lsun/font/SunFontManager$FamilyDescription;-><init>()V

    const-string v1, "Tahoma"

    iput-object v1, v0, Lsun/font/SunFontManager$FamilyDescription;->familyName:Ljava/lang/String;

    iput-object v1, v0, Lsun/font/SunFontManager$FamilyDescription;->plainFullName:Ljava/lang/String;

    const-string v1, "tahoma.ttf"

    iput-object v1, v0, Lsun/font/SunFontManager$FamilyDescription;->plainFileName:Ljava/lang/String;

    const-string v1, "Tahoma Bold"

    iput-object v1, v0, Lsun/font/SunFontManager$FamilyDescription;->boldFullName:Ljava/lang/String;

    const-string v1, "tahomabd.ttf"

    iput-object v1, v0, Lsun/font/SunFontManager$FamilyDescription;->boldFileName:Ljava/lang/String;

    const-string v1, "tahoma"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lsun/font/SunFontManager$FamilyDescription;

    invoke-direct {v0}, Lsun/font/SunFontManager$FamilyDescription;-><init>()V

    const-string v1, "Verdana"

    iput-object v1, v0, Lsun/font/SunFontManager$FamilyDescription;->familyName:Ljava/lang/String;

    iput-object v1, v0, Lsun/font/SunFontManager$FamilyDescription;->plainFullName:Ljava/lang/String;

    const-string v1, "verdana.TTF"

    iput-object v1, v0, Lsun/font/SunFontManager$FamilyDescription;->plainFileName:Ljava/lang/String;

    const-string v1, "Verdana Bold"

    iput-object v1, v0, Lsun/font/SunFontManager$FamilyDescription;->boldFullName:Ljava/lang/String;

    const-string v1, "verdanab.TTF"

    iput-object v1, v0, Lsun/font/SunFontManager$FamilyDescription;->boldFileName:Ljava/lang/String;

    const-string v1, "Verdana Italic"

    iput-object v1, v0, Lsun/font/SunFontManager$FamilyDescription;->italicFullName:Ljava/lang/String;

    const-string v1, "verdanai.TTF"

    iput-object v1, v0, Lsun/font/SunFontManager$FamilyDescription;->italicFileName:Ljava/lang/String;

    const-string v1, "Verdana Bold Italic"

    iput-object v1, v0, Lsun/font/SunFontManager$FamilyDescription;->boldItalicFullName:Ljava/lang/String;

    const-string v1, "verdanaz.TTF"

    iput-object v1, v0, Lsun/font/SunFontManager$FamilyDescription;->boldItalicFileName:Ljava/lang/String;

    const-string v1, "verdana"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lsun/font/SunFontManager$FamilyDescription;

    invoke-direct {v0}, Lsun/font/SunFontManager$FamilyDescription;-><init>()V

    const-string v1, "Arial"

    iput-object v1, v0, Lsun/font/SunFontManager$FamilyDescription;->familyName:Ljava/lang/String;

    iput-object v1, v0, Lsun/font/SunFontManager$FamilyDescription;->plainFullName:Ljava/lang/String;

    const-string v1, "ARIAL.TTF"

    iput-object v1, v0, Lsun/font/SunFontManager$FamilyDescription;->plainFileName:Ljava/lang/String;

    const-string v1, "Arial Bold"

    iput-object v1, v0, Lsun/font/SunFontManager$FamilyDescription;->boldFullName:Ljava/lang/String;

    const-string v1, "ARIALBD.TTF"

    iput-object v1, v0, Lsun/font/SunFontManager$FamilyDescription;->boldFileName:Ljava/lang/String;

    const-string v1, "Arial Italic"

    iput-object v1, v0, Lsun/font/SunFontManager$FamilyDescription;->italicFullName:Ljava/lang/String;

    const-string v1, "ARIALI.TTF"

    iput-object v1, v0, Lsun/font/SunFontManager$FamilyDescription;->italicFileName:Ljava/lang/String;

    const-string v1, "Arial Bold Italic"

    iput-object v1, v0, Lsun/font/SunFontManager$FamilyDescription;->boldItalicFullName:Ljava/lang/String;

    const-string v1, "ARIALBI.TTF"

    iput-object v1, v0, Lsun/font/SunFontManager$FamilyDescription;->boldItalicFileName:Ljava/lang/String;

    const-string v1, "arial"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lsun/font/SunFontManager$FamilyDescription;

    invoke-direct {v0}, Lsun/font/SunFontManager$FamilyDescription;-><init>()V

    const-string v1, "Symbol"

    iput-object v1, v0, Lsun/font/SunFontManager$FamilyDescription;->familyName:Ljava/lang/String;

    iput-object v1, v0, Lsun/font/SunFontManager$FamilyDescription;->plainFullName:Ljava/lang/String;

    const-string v1, "Symbol.TTF"

    iput-object v1, v0, Lsun/font/SunFontManager$FamilyDescription;->plainFileName:Ljava/lang/String;

    const-string v1, "symbol"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lsun/font/SunFontManager$FamilyDescription;

    invoke-direct {v0}, Lsun/font/SunFontManager$FamilyDescription;-><init>()V

    const-string v1, "WingDings"

    iput-object v1, v0, Lsun/font/SunFontManager$FamilyDescription;->familyName:Ljava/lang/String;

    iput-object v1, v0, Lsun/font/SunFontManager$FamilyDescription;->plainFullName:Ljava/lang/String;

    const-string v1, "WINGDING.TTF"

    iput-object v1, v0, Lsun/font/SunFontManager$FamilyDescription;->plainFileName:Ljava/lang/String;

    const-string v1, "wingdings"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public registerFontFile(Ljava/lang/String;[Ljava/lang/String;IZ)V
    .locals 11

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

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    move v0, v3

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lsun/font/SunFontManager;->getType1Filter()Ljava/io/FilenameFilter;

    move-result-object v0

    invoke-interface {v0, v1, p1}, Ljava/io/FilenameFilter;->accept(Ljava/io/File;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    move v0, v2

    :goto_0
    iget-object v1, p0, Lsun/font/SunFontManager;->fontPath:Ljava/lang/String;

    if-nez v1, :cond_2

    sget-boolean v1, Lsun/font/SunFontManager;->noType1Font:Z

    invoke-virtual {p0, v1}, Lsun/font/SunFontManager;->getPlatformFontPath(Z)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lsun/font/SunFontManager;->fontPath:Ljava/lang/String;

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lsun/font/SunFontManager;->jreFontDirName:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Ljava/io/File;->pathSeparator:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lsun/font/SunFontManager;->fontPath:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v5, Ljava/util/StringTokenizer;

    invoke-direct {v5, v1, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :try_start_0
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    sget-object v4, Lsun/font/SunFontManager;->jreFontDirName:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->canRead()Z

    move-result v1
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v1, :cond_3

    :try_start_1
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    if-eqz p4, :cond_4

    move-object v4, p0

    move-object v5, p1

    move-object v6, v1

    move-object v7, p2

    move v8, v0

    move v10, p3

    invoke-virtual/range {v4 .. v10}, Lsun/font/SunFontManager;->registerDeferredFont(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;IZI)V

    goto :goto_2

    :cond_4
    move-object v4, p0

    move-object v5, v1

    move-object v6, p2

    move v7, v0

    move v8, v9

    move v9, p3

    invoke-virtual/range {v4 .. v9}, Lsun/font/SunFontManager;->registerFontFile(Ljava/lang/String;[Ljava/lang/String;IZI)Lsun/font/PhysicalFont;
    :try_end_1
    .catch Ljava/util/NoSuchElementException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception p2

    goto :goto_1

    :cond_5
    move v2, v3

    goto :goto_2

    :catch_1
    move-exception p2

    move v2, v3

    :goto_1
    sget-object p3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p3, p2}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    :goto_2
    if-nez v2, :cond_6

    invoke-virtual {p0, p1}, Lsun/font/SunFontManager;->addToMissingFontFileList(Ljava/lang/String;)V

    :cond_6
    return-void
.end method

.method public registerJREFontsWithPlatform(Ljava/lang/String;)V
    .locals 0

    sput-object p1, Lsun/awt/Win32FontManager;->fontsForPrinting:Ljava/lang/String;

    return-void
.end method

.method public useAbsoluteFontFileNames()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public usingPerAppContextComposites()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
