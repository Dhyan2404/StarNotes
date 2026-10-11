.class public abstract Lsun/awt/FontConfiguration;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/awt/FontConfiguration$PropertiesHandler;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final EMPTY_INT_ARRAY:[I

.field private static final EMPTY_SHORT_ARRAY:[S

.field private static final EMPTY_STRING_ARRAY:[Ljava/lang/String;

.field private static final HEAD_LENGTH:I = 0x14

.field private static final INDEX_TABLEEND:I = 0xe

.field private static final INDEX_alphabeticSuffix:I = 0xb

.field private static final INDEX_appendedfontpath:I = 0x10

.field private static final INDEX_awtfontpaths:I = 0x7

.field private static final INDEX_componentFontNameIDs:I = 0x5

.field private static final INDEX_elcIDs:I = 0x2

.field private static final INDEX_exclusions:I = 0x8

.field private static final INDEX_fallbackScripts:I = 0xf

.field private static final INDEX_filenames:I = 0x6

.field private static final INDEX_fontfileNameIDs:I = 0x4

.field private static final INDEX_proportionals:I = 0x9

.field private static final INDEX_scriptFonts:I = 0x1

.field private static final INDEX_scriptFontsMotif:I = 0xa

.field private static final INDEX_scriptIDs:I = 0x0

.field private static final INDEX_sequences:I = 0x3

.field private static final INDEX_stringIDs:I = 0xc

.field private static final INDEX_stringTable:I = 0xd

.field private static final INDEX_version:I = 0x11

.field protected static final NUM_FONTS:I = 0x5

.field protected static final NUM_STYLES:I = 0x4

.field private static final UNDEFINED_COMPONENT_FONT:Ljava/lang/String; = "unknown"

.field protected static encoding:Ljava/lang/String; = null

.field protected static fontConfig:Lsun/awt/FontConfiguration; = null

.field protected static final fontNames:[Ljava/lang/String;

.field private static head:[S = null

.field protected static installedFallbackFontFiles:[Ljava/lang/String; = null

.field protected static isProperties:Z = true

.field protected static localeMap:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected static logger:Lsun/util/logging/NeoPlatformLogger;

.field protected static osName:Ljava/lang/String;

.field protected static osVersion:Ljava/lang/String;

.field protected static final publicFontNames:[Ljava/lang/String;

.field protected static startupLocale:Ljava/util/Locale;

.field private static stringCache:[Ljava/lang/String;

.field private static stringIDNum:S

.field private static stringIDs:[S

.field private static stringTable:Ljava/lang/StringBuilder;

.field protected static final styleNames:[Ljava/lang/String;

.field private static table_alphabeticSuffix:[S

.field protected static table_awtfontpaths:[S

.field private static table_componentFontNameIDs:[S

.field private static table_elcIDs:[S

.field private static table_exclusions:[S

.field private static table_filenames:[S

.field private static table_fontfileNameIDs:[S

.field private static table_proportionals:[S

.field private static table_scriptFonts:[S

.field private static table_scriptFontsMotif:[S

.field private static table_scriptIDs:[S

.field private static table_sequences:[S

.field private static table_stringIDs:[S

.field private static table_stringTable:[C

.field public static verbose:Z


# instance fields
.field private alphabeticSuffix:Ljava/lang/String;

.field private charsetRegistry:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/nio/charset/Charset;",
            ">;"
        }
    .end annotation
.end field

.field private compCoreNum:[I

.field private compExclusions:[[[I

.field private compFontNameIDs:[[[S

.field private componentFonts:[Ljava/lang/String;

.field coreFontFileNames:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private coreFontNameIDs:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Short;",
            ">;"
        }
    .end annotation
.end field

.field existsMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private fallbackFontNameIDs:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Short;",
            ">;"
        }
    .end annotation
.end field

.field filenamesMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected fontConfigFile:Ljava/io/File;

.field private fontDescriptors:[[[Lsun/awt/FontDescriptor;

.field protected fontManager:Lsun/font/SunFontManager;

.field protected foundOsSpecificFile:Z

.field private initELC:S

.field private initEncoding:Ljava/lang/String;

.field private initLocale:Ljava/util/Locale;

.field protected inited:Z

.field protected javaLib:Ljava/lang/String;

.field private numCoreFonts:I

.field protected preferLocaleFonts:Z

.field protected preferPropFonts:Z

.field protected reorderMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private reorderScripts:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Short;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-string v0, "dialog"

    const-string v1, "dialoginput"

    const-string v2, "serif"

    const-string v3, "sansserif"

    const-string v4, "monospaced"

    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lsun/awt/FontConfiguration;->fontNames:[Ljava/lang/String;

    const-string v0, "Dialog"

    const-string v1, "DialogInput"

    const-string v2, "Serif"

    const-string v3, "SansSerif"

    const-string v4, "Monospaced"

    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lsun/awt/FontConfiguration;->publicFontNames:[Ljava/lang/String;

    const-string v0, "italic"

    const-string v1, "bolditalic"

    const-string v2, "plain"

    const-string v3, "bold"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lsun/awt/FontConfiguration;->styleNames:[Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lsun/awt/FontConfiguration;->installedFallbackFontFiles:[Ljava/lang/String;

    const/4 v0, 0x0

    new-array v1, v0, [I

    sput-object v1, Lsun/awt/FontConfiguration;->EMPTY_INT_ARRAY:[I

    new-array v1, v0, [Ljava/lang/String;

    sput-object v1, Lsun/awt/FontConfiguration;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    new-array v0, v0, [S

    sput-object v0, Lsun/awt/FontConfiguration;->EMPTY_SHORT_ARRAY:[S

    return-void
.end method

.method public constructor <init>(Lsun/font/SunFontManager;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput-short v0, p0, Lsun/awt/FontConfiguration;->initELC:S

    const/4 v1, 0x5

    const/4 v2, 0x4

    .line 3
    filled-new-array {v1, v2}, [I

    move-result-object v3

    const-class v4, [S

    invoke-static {v4, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[[S

    iput-object v3, p0, Lsun/awt/FontConfiguration;->compFontNameIDs:[[[S

    new-array v3, v1, [[[I

    .line 4
    iput-object v3, p0, Lsun/awt/FontConfiguration;->compExclusions:[[[I

    new-array v3, v1, [I

    .line 5
    iput-object v3, p0, Lsun/awt/FontConfiguration;->compCoreNum:[I

    .line 6
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    iput-object v3, p0, Lsun/awt/FontConfiguration;->coreFontNameIDs:Ljava/util/Set;

    .line 7
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    iput-object v3, p0, Lsun/awt/FontConfiguration;->fallbackFontNameIDs:Ljava/util/Set;

    const/4 v3, 0x0

    .line 8
    iput-object v3, p0, Lsun/awt/FontConfiguration;->reorderMap:Ljava/util/HashMap;

    .line 9
    new-instance v4, Ljava/util/Hashtable;

    invoke-direct {v4, v1}, Ljava/util/Hashtable;-><init>(I)V

    iput-object v4, p0, Lsun/awt/FontConfiguration;->charsetRegistry:Ljava/util/Hashtable;

    .line 10
    filled-new-array {v1, v2}, [I

    move-result-object v1

    const-class v2, [Lsun/awt/FontDescriptor;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[[Lsun/awt/FontDescriptor;

    iput-object v1, p0, Lsun/awt/FontConfiguration;->fontDescriptors:[[[Lsun/awt/FontDescriptor;

    .line 11
    iput v0, p0, Lsun/awt/FontConfiguration;->numCoreFonts:I

    .line 12
    iput-object v3, p0, Lsun/awt/FontConfiguration;->componentFonts:[Ljava/lang/String;

    .line 13
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lsun/awt/FontConfiguration;->filenamesMap:Ljava/util/HashMap;

    .line 14
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lsun/awt/FontConfiguration;->coreFontFileNames:Ljava/util/HashSet;

    .line 15
    invoke-static {}, Lsun/font/FontUtilities;->debugFonts()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Creating standard Font Configuration"

    .line 16
    invoke-static {v0}, Lsun/font/FontUtilities;->logInfo(Ljava/lang/String;)V

    .line 17
    :cond_0
    invoke-static {}, Lsun/font/FontUtilities;->debugFonts()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lsun/awt/FontConfiguration;->logger:Lsun/util/logging/NeoPlatformLogger;

    if-nez v0, :cond_1

    const-string v0, "sun.awt.FontConfiguration"

    .line 18
    invoke-static {v0}, Lsun/util/logging/NeoPlatformLogger;->getLogger(Ljava/lang/String;)Lsun/util/logging/NeoPlatformLogger;

    move-result-object v0

    sput-object v0, Lsun/awt/FontConfiguration;->logger:Lsun/util/logging/NeoPlatformLogger;

    .line 19
    :cond_1
    iput-object p1, p0, Lsun/awt/FontConfiguration;->fontManager:Lsun/font/SunFontManager;

    .line 20
    invoke-virtual {p0}, Lsun/awt/FontConfiguration;->setOsNameAndVersion()V

    .line 21
    invoke-direct {p0}, Lsun/awt/FontConfiguration;->setEncoding()V

    .line 22
    invoke-virtual {p0}, Lsun/awt/FontConfiguration;->findFontConfigFile()V

    return-void
.end method

.method public constructor <init>(Lsun/font/SunFontManager;ZZ)V
    .locals 5

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 24
    iput-short v0, p0, Lsun/awt/FontConfiguration;->initELC:S

    const/4 v1, 0x5

    const/4 v2, 0x4

    .line 25
    filled-new-array {v1, v2}, [I

    move-result-object v3

    const-class v4, [S

    invoke-static {v4, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[[S

    iput-object v3, p0, Lsun/awt/FontConfiguration;->compFontNameIDs:[[[S

    new-array v3, v1, [[[I

    .line 26
    iput-object v3, p0, Lsun/awt/FontConfiguration;->compExclusions:[[[I

    new-array v3, v1, [I

    .line 27
    iput-object v3, p0, Lsun/awt/FontConfiguration;->compCoreNum:[I

    .line 28
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    iput-object v3, p0, Lsun/awt/FontConfiguration;->coreFontNameIDs:Ljava/util/Set;

    .line 29
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    iput-object v3, p0, Lsun/awt/FontConfiguration;->fallbackFontNameIDs:Ljava/util/Set;

    const/4 v3, 0x0

    .line 30
    iput-object v3, p0, Lsun/awt/FontConfiguration;->reorderMap:Ljava/util/HashMap;

    .line 31
    new-instance v4, Ljava/util/Hashtable;

    invoke-direct {v4, v1}, Ljava/util/Hashtable;-><init>(I)V

    iput-object v4, p0, Lsun/awt/FontConfiguration;->charsetRegistry:Ljava/util/Hashtable;

    .line 32
    filled-new-array {v1, v2}, [I

    move-result-object v1

    const-class v2, [Lsun/awt/FontDescriptor;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[[Lsun/awt/FontDescriptor;

    iput-object v1, p0, Lsun/awt/FontConfiguration;->fontDescriptors:[[[Lsun/awt/FontDescriptor;

    .line 33
    iput v0, p0, Lsun/awt/FontConfiguration;->numCoreFonts:I

    .line 34
    iput-object v3, p0, Lsun/awt/FontConfiguration;->componentFonts:[Ljava/lang/String;

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lsun/awt/FontConfiguration;->filenamesMap:Ljava/util/HashMap;

    .line 36
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lsun/awt/FontConfiguration;->coreFontFileNames:Ljava/util/HashSet;

    .line 37
    iput-object p1, p0, Lsun/awt/FontConfiguration;->fontManager:Lsun/font/SunFontManager;

    .line 38
    invoke-static {}, Lsun/font/FontUtilities;->debugFonts()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "Creating alternate Font Configuration"

    .line 39
    invoke-static {p1}, Lsun/font/FontUtilities;->logInfo(Ljava/lang/String;)V

    .line 40
    :cond_0
    iput-boolean p2, p0, Lsun/awt/FontConfiguration;->preferLocaleFonts:Z

    .line 41
    iput-boolean p3, p0, Lsun/awt/FontConfiguration;->preferPropFonts:Z

    .line 42
    invoke-direct {p0}, Lsun/awt/FontConfiguration;->initFontConfig()V

    return-void
.end method

.method public static synthetic access$000()[S
    .locals 1

    sget-object v0, Lsun/awt/FontConfiguration;->head:[S

    return-object v0
.end method

.method public static synthetic access$002([S)[S
    .locals 0

    sput-object p0, Lsun/awt/FontConfiguration;->head:[S

    return-object p0
.end method

.method public static synthetic access$100()[S
    .locals 1

    sget-object v0, Lsun/awt/FontConfiguration;->table_scriptIDs:[S

    return-object v0
.end method

.method public static synthetic access$1000(Ljava/lang/String;)S
    .locals 0

    invoke-static {p0}, Lsun/awt/FontConfiguration;->getStringID(Ljava/lang/String;)S

    move-result p0

    return p0
.end method

.method public static synthetic access$102([S)[S
    .locals 0

    sput-object p0, Lsun/awt/FontConfiguration;->table_scriptIDs:[S

    return-object p0
.end method

.method public static synthetic access$1100()[S
    .locals 1

    sget-object v0, Lsun/awt/FontConfiguration;->table_proportionals:[S

    return-object v0
.end method

.method public static synthetic access$1102([S)[S
    .locals 0

    sput-object p0, Lsun/awt/FontConfiguration;->table_proportionals:[S

    return-object p0
.end method

.method public static synthetic access$1200()[S
    .locals 1

    sget-object v0, Lsun/awt/FontConfiguration;->table_scriptFontsMotif:[S

    return-object v0
.end method

.method public static synthetic access$1202([S)[S
    .locals 0

    sput-object p0, Lsun/awt/FontConfiguration;->table_scriptFontsMotif:[S

    return-object p0
.end method

.method public static synthetic access$1300()[S
    .locals 1

    sget-object v0, Lsun/awt/FontConfiguration;->EMPTY_SHORT_ARRAY:[S

    return-object v0
.end method

.method public static synthetic access$1400()[S
    .locals 1

    sget-object v0, Lsun/awt/FontConfiguration;->table_alphabeticSuffix:[S

    return-object v0
.end method

.method public static synthetic access$1402([S)[S
    .locals 0

    sput-object p0, Lsun/awt/FontConfiguration;->table_alphabeticSuffix:[S

    return-object p0
.end method

.method public static synthetic access$1500([S)S
    .locals 0

    invoke-static {p0}, Lsun/awt/FontConfiguration;->getShortArrayID([S)S

    move-result p0

    return p0
.end method

.method public static synthetic access$1600()[S
    .locals 1

    sget-object v0, Lsun/awt/FontConfiguration;->table_stringIDs:[S

    return-object v0
.end method

.method public static synthetic access$1602([S)[S
    .locals 0

    sput-object p0, Lsun/awt/FontConfiguration;->table_stringIDs:[S

    return-object p0
.end method

.method public static synthetic access$1700()S
    .locals 1

    sget-short v0, Lsun/awt/FontConfiguration;->stringIDNum:S

    return v0
.end method

.method public static synthetic access$1800()[S
    .locals 1

    sget-object v0, Lsun/awt/FontConfiguration;->stringIDs:[S

    return-object v0
.end method

.method public static synthetic access$1902([C)[C
    .locals 0

    sput-object p0, Lsun/awt/FontConfiguration;->table_stringTable:[C

    return-object p0
.end method

.method public static synthetic access$200(Ljava/util/HashMap;)[S
    .locals 0

    invoke-static {p0}, Lsun/awt/FontConfiguration;->toList(Ljava/util/HashMap;)[S

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$2000()Ljava/lang/StringBuilder;
    .locals 1

    sget-object v0, Lsun/awt/FontConfiguration;->stringTable:Ljava/lang/StringBuilder;

    return-object v0
.end method

.method public static synthetic access$2102([Ljava/lang/String;)[Ljava/lang/String;
    .locals 0

    sput-object p0, Lsun/awt/FontConfiguration;->stringCache:[Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$2200()[I
    .locals 1

    sget-object v0, Lsun/awt/FontConfiguration;->EMPTY_INT_ARRAY:[I

    return-object v0
.end method

.method public static synthetic access$2400()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lsun/awt/FontConfiguration;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic access$2500(Ljava/lang/String;)Ljava/util/Vector;
    .locals 0

    invoke-static {p0}, Lsun/awt/FontConfiguration;->splitSequence(Ljava/lang/String;)Ljava/util/Vector;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$300()[S
    .locals 1

    sget-object v0, Lsun/awt/FontConfiguration;->table_scriptFonts:[S

    return-object v0
.end method

.method public static synthetic access$302([S)[S
    .locals 0

    sput-object p0, Lsun/awt/FontConfiguration;->table_scriptFonts:[S

    return-object p0
.end method

.method public static synthetic access$400()[S
    .locals 1

    sget-object v0, Lsun/awt/FontConfiguration;->table_elcIDs:[S

    return-object v0
.end method

.method public static synthetic access$402([S)[S
    .locals 0

    sput-object p0, Lsun/awt/FontConfiguration;->table_elcIDs:[S

    return-object p0
.end method

.method public static synthetic access$500()[S
    .locals 1

    sget-object v0, Lsun/awt/FontConfiguration;->table_sequences:[S

    return-object v0
.end method

.method public static synthetic access$502([S)[S
    .locals 0

    sput-object p0, Lsun/awt/FontConfiguration;->table_sequences:[S

    return-object p0
.end method

.method public static synthetic access$600()[S
    .locals 1

    sget-object v0, Lsun/awt/FontConfiguration;->table_fontfileNameIDs:[S

    return-object v0
.end method

.method public static synthetic access$602([S)[S
    .locals 0

    sput-object p0, Lsun/awt/FontConfiguration;->table_fontfileNameIDs:[S

    return-object p0
.end method

.method public static synthetic access$700()[S
    .locals 1

    sget-object v0, Lsun/awt/FontConfiguration;->table_componentFontNameIDs:[S

    return-object v0
.end method

.method public static synthetic access$702([S)[S
    .locals 0

    sput-object p0, Lsun/awt/FontConfiguration;->table_componentFontNameIDs:[S

    return-object p0
.end method

.method public static synthetic access$800()[S
    .locals 1

    sget-object v0, Lsun/awt/FontConfiguration;->table_filenames:[S

    return-object v0
.end method

.method public static synthetic access$802([S)[S
    .locals 0

    sput-object p0, Lsun/awt/FontConfiguration;->table_filenames:[S

    return-object p0
.end method

.method public static synthetic access$900()[S
    .locals 1

    sget-object v0, Lsun/awt/FontConfiguration;->table_exclusions:[S

    return-object v0
.end method

.method public static synthetic access$902([S)[S
    .locals 0

    sput-object p0, Lsun/awt/FontConfiguration;->table_exclusions:[S

    return-object p0
.end method

.method private static contains([SSI)Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p2, :cond_1

    aget-short v2, p0, v1

    if-ne v2, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private static dump()V
    .locals 13

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "\n----Head Table------------"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/16 v2, 0x14

    const-string v3, " : "

    const-string v4, "  "

    if-ge v1, v2, :cond_0

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lsun/awt/FontConfiguration;->head:[S

    aget-short v3, v3, v1

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "\n----scriptIDs-------------"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v1, Lsun/awt/FontConfiguration;->table_scriptIDs:[S

    invoke-static {v1, v0}, Lsun/awt/FontConfiguration;->printTable([SI)V

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "\n----scriptFonts----------------"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move v1, v0

    :goto_1
    sget-object v2, Lsun/awt/FontConfiguration;->table_scriptIDs:[S

    array-length v2, v2

    const-string v5, "="

    if-ge v1, v2, :cond_2

    sget-object v2, Lsun/awt/FontConfiguration;->table_scriptFonts:[S

    aget-short v2, v2, v1

    if-ltz v2, :cond_1

    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  allfonts."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v8, Lsun/awt/FontConfiguration;->table_scriptIDs:[S

    aget-short v8, v8, v1

    invoke-static {v8}, Lsun/awt/FontConfiguration;->getString(S)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lsun/awt/FontConfiguration;->table_componentFontNameIDs:[S

    aget-short v2, v5, v2

    invoke-static {v2}, Lsun/awt/FontConfiguration;->getString(S)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    move v1, v0

    :goto_2
    sget-object v2, Lsun/awt/FontConfiguration;->table_scriptIDs:[S

    array-length v2, v2

    if-ge v1, v2, :cond_5

    sget-object v2, Lsun/awt/FontConfiguration;->table_scriptFonts:[S

    aget-short v2, v2, v1

    if-gez v2, :cond_4

    neg-int v2, v2

    int-to-short v2, v2

    move v6, v0

    :goto_3
    const/4 v7, 0x5

    if-ge v6, v7, :cond_4

    move v7, v0

    :goto_4
    const/4 v8, 0x4

    if-ge v7, v8, :cond_3

    mul-int/lit8 v8, v6, 0x4

    add-int/2addr v8, v7

    sget-object v9, Lsun/awt/FontConfiguration;->table_scriptFonts:[S

    add-int/2addr v8, v2

    aget-short v8, v9, v8

    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Lsun/awt/FontConfiguration;->getFontName(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7}, Lsun/awt/FontConfiguration;->getStyleName(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v11, Lsun/awt/FontConfiguration;->table_scriptIDs:[S

    aget-short v11, v11, v1

    invoke-static {v11}, Lsun/awt/FontConfiguration;->getString(S)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v11, Lsun/awt/FontConfiguration;->table_componentFontNameIDs:[S

    aget-short v8, v11, v8

    invoke-static {v8}, Lsun/awt/FontConfiguration;->getString(S)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "\n----elcIDs----------------"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v1, Lsun/awt/FontConfiguration;->table_elcIDs:[S

    invoke-static {v1, v0}, Lsun/awt/FontConfiguration;->printTable([SI)V

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "\n----sequences-------------"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move v1, v0

    :goto_5
    sget-object v2, Lsun/awt/FontConfiguration;->table_elcIDs:[S

    array-length v2, v2

    if-ge v1, v2, :cond_7

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Lsun/awt/FontConfiguration;->table_elcIDs:[S

    aget-short v6, v6, v1

    invoke-static {v6}, Lsun/awt/FontConfiguration;->getString(S)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v2, Lsun/awt/FontConfiguration;->table_sequences:[S

    mul-int/lit8 v5, v1, 0x5

    add-int/2addr v5, v0

    aget-short v2, v2, v5

    invoke-static {v2}, Lsun/awt/FontConfiguration;->getShortArray(S)[S

    move-result-object v2

    move v5, v0

    :goto_6
    array-length v6, v2

    if-ge v5, v6, :cond_6

    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "     "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v8, Lsun/awt/FontConfiguration;->table_scriptIDs:[S

    aget-short v9, v2, v5

    aget-short v8, v8, v9

    invoke-static {v8}, Lsun/awt/FontConfiguration;->getString(S)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_7
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "\n----fontfileNameIDs-------"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v1, Lsun/awt/FontConfiguration;->table_fontfileNameIDs:[S

    invoke-static {v1, v0}, Lsun/awt/FontConfiguration;->printTable([SI)V

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "\n----componentFontNameIDs--"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v1, Lsun/awt/FontConfiguration;->table_componentFontNameIDs:[S

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lsun/awt/FontConfiguration;->printTable([SI)V

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, "\n----filenames-------------"

    invoke-virtual {v1, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move v1, v0

    :goto_7
    sget-object v5, Lsun/awt/FontConfiguration;->table_filenames:[S

    array-length v6, v5

    if-ge v1, v6, :cond_9

    aget-short v5, v5, v1

    const/4 v6, -0x1

    if-ne v5, v6, :cond_8

    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " : null"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_8

    :cond_8
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Lsun/awt/FontConfiguration;->table_fontfileNameIDs:[S

    sget-object v8, Lsun/awt/FontConfiguration;->table_filenames:[S

    aget-short v8, v8, v1

    aget-short v7, v7, v8

    invoke-static {v7}, Lsun/awt/FontConfiguration;->getString(S)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_9
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, "\n----awtfontpaths---------"

    invoke-virtual {v1, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move v1, v0

    :goto_9
    sget-object v5, Lsun/awt/FontConfiguration;->table_awtfontpaths:[S

    array-length v5, v5

    if-ge v1, v5, :cond_a

    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Lsun/awt/FontConfiguration;->table_scriptIDs:[S

    aget-short v7, v7, v1

    invoke-static {v7}, Lsun/awt/FontConfiguration;->getString(S)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Lsun/awt/FontConfiguration;->table_awtfontpaths:[S

    aget-short v7, v7, v1

    invoke-static {v7}, Lsun/awt/FontConfiguration;->getString(S)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_a
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "\n----proportionals--------"

    invoke-virtual {v1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move v1, v0

    :goto_a
    sget-object v3, Lsun/awt/FontConfiguration;->table_proportionals:[S

    array-length v3, v3

    const-string v5, " -> "

    if-ge v1, v3, :cond_b

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Lsun/awt/FontConfiguration;->table_componentFontNameIDs:[S

    sget-object v8, Lsun/awt/FontConfiguration;->table_proportionals:[S

    add-int/lit8 v9, v1, 0x1

    aget-short v1, v8, v1

    aget-short v1, v7, v1

    invoke-static {v1}, Lsun/awt/FontConfiguration;->getString(S)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lsun/awt/FontConfiguration;->table_componentFontNameIDs:[S

    sget-object v5, Lsun/awt/FontConfiguration;->table_proportionals:[S

    aget-short v5, v5, v9

    aget-short v1, v1, v5

    invoke-static {v1}, Lsun/awt/FontConfiguration;->getString(S)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    add-int/lit8 v1, v9, 0x1

    goto :goto_a

    :cond_b
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "\n----alphabeticSuffix----"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move v1, v0

    :goto_b
    sget-object v2, Lsun/awt/FontConfiguration;->table_alphabeticSuffix:[S

    array-length v2, v2

    if-ge v1, v2, :cond_c

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "    "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Lsun/awt/FontConfiguration;->table_elcIDs:[S

    sget-object v7, Lsun/awt/FontConfiguration;->table_alphabeticSuffix:[S

    add-int/lit8 v8, v1, 0x1

    aget-short v1, v7, v1

    aget-short v1, v6, v1

    invoke-static {v1}, Lsun/awt/FontConfiguration;->getString(S)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lsun/awt/FontConfiguration;->table_alphabeticSuffix:[S

    add-int/lit8 v6, v8, 0x1

    aget-short v1, v1, v8

    invoke-static {v1}, Lsun/awt/FontConfiguration;->getString(S)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move v1, v6

    goto :goto_b

    :cond_c
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "\n----String Table---------"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    stringID:    Num ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lsun/awt/FontConfiguration;->table_stringIDs:[S

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    stringTable: Size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lsun/awt/FontConfiguration;->table_stringTable:[C

    array-length v3, v3

    mul-int/lit8 v3, v3, 0x2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "\n----fallbackScriptIDs---"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v1, Lsun/awt/FontConfiguration;->head:[S

    const/16 v2, 0xf

    aget-short v1, v1, v2

    invoke-static {v1}, Lsun/awt/FontConfiguration;->getShortArray(S)[S

    move-result-object v1

    :goto_c
    array-length v2, v1

    if-ge v0, v2, :cond_d

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lsun/awt/FontConfiguration;->table_scriptIDs:[S

    aget-short v6, v1, v0

    aget-short v5, v5, v6

    invoke-static {v5}, Lsun/awt/FontConfiguration;->getString(S)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_d
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "\n----appendedfontpath-----"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lsun/awt/FontConfiguration;->head:[S

    const/16 v3, 0x10

    aget-short v2, v2, v3

    invoke-static {v2}, Lsun/awt/FontConfiguration;->getString(S)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "\n----Version--------------"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lsun/awt/FontConfiguration;->head:[S

    const/16 v3, 0x11

    aget-short v2, v2, v3

    invoke-static {v2}, Lsun/awt/FontConfiguration;->getString(S)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method private findFontConfigFile(Ljava/lang/String;)Ljava/io/File;
    .locals 6

    .line 10
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 11
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "fontconfig"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 12
    sget-object v0, Lsun/awt/FontConfiguration;->osVersion:Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "."

    if-eqz v0, :cond_2

    sget-object v0, Lsun/awt/FontConfiguration;->osName:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lsun/awt/FontConfiguration;->osName:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lsun/awt/FontConfiguration;->osVersion:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lsun/awt/FontConfiguration;->findImpl(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    .line 14
    :cond_1
    sget-object v0, Lsun/awt/FontConfiguration;->osVersion:Ljava/lang/String;

    const/16 v4, 0x2e

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v5, -0x1

    if-eq v0, v5, :cond_2

    .line 15
    sget-object v0, Lsun/awt/FontConfiguration;->osVersion:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 16
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lsun/awt/FontConfiguration;->osName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lsun/awt/FontConfiguration;->findImpl(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    if-eqz v4, :cond_3

    return-object v4

    :cond_2
    move-object v0, v1

    .line 17
    :cond_3
    sget-object v4, Lsun/awt/FontConfiguration;->osName:Ljava/lang/String;

    if-eqz v4, :cond_4

    .line 18
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lsun/awt/FontConfiguration;->osName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lsun/awt/FontConfiguration;->findImpl(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    if-eqz v4, :cond_4

    return-object v4

    .line 19
    :cond_4
    sget-object v4, Lsun/awt/FontConfiguration;->osVersion:Ljava/lang/String;

    if-eqz v4, :cond_6

    .line 20
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lsun/awt/FontConfiguration;->osVersion:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lsun/awt/FontConfiguration;->findImpl(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    if-eqz v4, :cond_5

    return-object v4

    :cond_5
    if-eqz v0, :cond_6

    .line 21
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lsun/awt/FontConfiguration;->findImpl(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_6

    return-object v0

    .line 22
    :cond_6
    iput-boolean v2, p0, Lsun/awt/FontConfiguration;->foundOsSpecificFile:Z

    .line 23
    invoke-direct {p0, p1}, Lsun/awt/FontConfiguration;->findImpl(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_7

    return-object p0

    .line 24
    :cond_7
    invoke-static {}, Lsun/font/FontUtilities;->debugFonts()Z

    move-result p0

    if-eqz p0, :cond_8

    .line 25
    sget-object p0, Lsun/awt/FontConfiguration;->logger:Lsun/util/logging/NeoPlatformLogger;

    const-string p1, "Did not find a fontconfig file."

    invoke-virtual {p0, p1}, Lsun/util/logging/NeoPlatformLogger;->info(Ljava/lang/String;)V

    :cond_8
    return-object v1
.end method

.method private findImpl(Ljava/lang/String;)Ljava/io/File;
    .locals 3

    new-instance p0, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".properties"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lsun/font/FontUtilities;->debugFonts()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lsun/awt/FontConfiguration;->logger:Lsun/util/logging/NeoPlatformLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Looking for text fontconfig file : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsun/util/logging/NeoPlatformLogger;->info(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->canRead()Z

    move-result v0

    const-string v1, "Found file : "

    if-eqz v0, :cond_2

    invoke-static {}, Lsun/font/FontUtilities;->debugFonts()Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lsun/awt/FontConfiguration;->logger:Lsun/util/logging/NeoPlatformLogger;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lsun/util/logging/NeoPlatformLogger;->info(Ljava/lang/String;)V

    :cond_1
    const/4 p1, 0x1

    sput-boolean p1, Lsun/awt/FontConfiguration;->isProperties:Z

    return-object p0

    :cond_2
    new-instance p0, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".bfc"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lsun/font/FontUtilities;->debugFonts()Z

    move-result p1

    if-eqz p1, :cond_3

    sget-object p1, Lsun/awt/FontConfiguration;->logger:Lsun/util/logging/NeoPlatformLogger;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Looking for binary fontconfig file : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lsun/util/logging/NeoPlatformLogger;->info(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {p0}, Ljava/io/File;->canRead()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-static {}, Lsun/font/FontUtilities;->debugFonts()Z

    move-result p1

    if-eqz p1, :cond_4

    sget-object p1, Lsun/awt/FontConfiguration;->logger:Lsun/util/logging/NeoPlatformLogger;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lsun/util/logging/NeoPlatformLogger;->info(Ljava/lang/String;)V

    :cond_4
    const/4 p1, 0x0

    sput-boolean p1, Lsun/awt/FontConfiguration;->isProperties:Z

    return-object p0

    :cond_5
    const/4 p0, 0x0

    return-object p0
.end method

.method private static getArrayIndex([Ljava/lang/String;Ljava/lang/String;)I
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    aget-object v2, p0, v1

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private static getComponentFileID(S)S
    .locals 1

    sget-object v0, Lsun/awt/FontConfiguration;->table_filenames:[S

    aget-short p0, v0, p0

    return p0
.end method

.method private static getComponentFileName(S)Ljava/lang/String;
    .locals 1

    if-gez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object v0, Lsun/awt/FontConfiguration;->table_fontfileNameIDs:[S

    aget-short p0, v0, p0

    invoke-static {p0}, Lsun/awt/FontConfiguration;->getString(S)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getComponentFontID(SII)S
    .locals 1

    sget-object v0, Lsun/awt/FontConfiguration;->table_scriptFonts:[S

    aget-short p0, v0, p0

    if-ltz p0, :cond_0

    return p0

    :cond_0
    neg-int p0, p0

    mul-int/lit8 p1, p1, 0x4

    add-int/2addr p0, p1

    add-int/2addr p0, p2

    aget-short p0, v0, p0

    return p0
.end method

.method public static getComponentFontIDMotif(SII)S
    .locals 2

    sget-object v0, Lsun/awt/FontConfiguration;->table_scriptFontsMotif:[S

    array-length v1, v0

    if-nez v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    aget-short p0, v0, p0

    if-ltz p0, :cond_1

    return p0

    :cond_1
    neg-int p0, p0

    mul-int/lit8 p1, p1, 0x4

    add-int/2addr p0, p1

    add-int/2addr p0, p2

    aget-short p0, v0, p0

    return p0
.end method

.method public static getComponentFontName(S)Ljava/lang/String;
    .locals 1

    if-gez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object v0, Lsun/awt/FontConfiguration;->table_componentFontNameIDs:[S

    aget-short p0, v0, p0

    invoke-static {p0}, Lsun/awt/FontConfiguration;->getString(S)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getExclusionRanges(S)[I
    .locals 7

    sget-object v0, Lsun/awt/FontConfiguration;->table_exclusions:[S

    aget-short p0, v0, p0

    if-nez p0, :cond_0

    sget-object p0, Lsun/awt/FontConfiguration;->EMPTY_INT_ARRAY:[I

    return-object p0

    :cond_0
    invoke-static {p0}, Lsun/awt/FontConfiguration;->getString(S)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    array-length v0, p0

    div-int/lit8 v0, v0, 0x2

    new-array v1, v0, [I

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v2, v0, :cond_1

    add-int/lit8 v4, v3, 0x1

    aget-char v3, p0, v3

    shl-int/lit8 v3, v3, 0x10

    add-int/lit8 v5, v4, 0x1

    aget-char v4, p0, v4

    const v6, 0xffff

    and-int/2addr v4, v6

    add-int/2addr v3, v4

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    move v3, v5

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method private static getFallbackScripts()[S
    .locals 2

    sget-object v0, Lsun/awt/FontConfiguration;->head:[S

    const/16 v1, 0xf

    aget-short v0, v0, v1

    invoke-static {v0}, Lsun/awt/FontConfiguration;->getShortArray(S)[S

    move-result-object v0

    return-object v0
.end method

.method private getFontCharsetEncoder(Ljava/lang/String;Ljava/lang/String;)Ljava/nio/charset/CharsetEncoder;
    .locals 5

    const-string v0, "default"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lsun/awt/FontConfiguration;->charsetRegistry:Ljava/util/Hashtable;

    invoke-virtual {v1, p2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/charset/Charset;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lsun/awt/FontConfiguration;->charsetRegistry:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/charset/Charset;

    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object p0

    return-object p0

    :cond_1
    const-string v2, "sun.awt."

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    goto :goto_1

    :cond_2
    new-instance v2, Lsun/awt/FontConfiguration$2;

    invoke-direct {v2, p0, p1}, Lsun/awt/FontConfiguration$2;-><init>(Lsun/awt/FontConfiguration;Ljava/lang/String;)V

    invoke-static {v2}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    if-eqz v2, :cond_3

    const/4 v3, 0x0

    :try_start_0
    new-array v4, v3, [Ljava/lang/Class;

    invoke-virtual {v2, v4}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/nio/charset/Charset;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    :catch_0
    :cond_3
    :goto_1
    if-nez v1, :cond_4

    invoke-virtual {p0, p2}, Lsun/awt/FontConfiguration;->getDefaultFontCharset(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    :cond_4
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object p0, p0, Lsun/awt/FontConfiguration;->charsetRegistry:Ljava/util/Hashtable;

    invoke-virtual {p0, p2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_5
    iget-object p0, p0, Lsun/awt/FontConfiguration;->charsetRegistry:Ljava/util/Hashtable;

    invoke-virtual {p0, p1, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    invoke-virtual {v1}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object p0

    return-object p0
.end method

.method public static getFontConfiguration()Lsun/awt/FontConfiguration;
    .locals 1

    sget-object v0, Lsun/awt/FontConfiguration;->fontConfig:Lsun/awt/FontConfiguration;

    return-object v0
.end method

.method private getFontDescriptors(II)[Lsun/awt/FontDescriptor;
    .locals 1

    .line 5
    iget-object v0, p0, Lsun/awt/FontConfiguration;->fontDescriptors:[[[Lsun/awt/FontDescriptor;

    aget-object v0, v0, p1

    aget-object v0, v0, p2

    if-nez v0, :cond_0

    .line 6
    invoke-virtual {p0, p1, p2}, Lsun/awt/FontConfiguration;->buildFontDescriptors(II)[Lsun/awt/FontDescriptor;

    move-result-object v0

    .line 7
    iget-object p0, p0, Lsun/awt/FontConfiguration;->fontDescriptors:[[[Lsun/awt/FontDescriptor;

    aget-object p0, p0, p1

    aput-object v0, p0, p2

    :cond_0
    return-object v0
.end method

.method public static getFontIndex(Ljava/lang/String;)I
    .locals 1

    sget-object v0, Lsun/awt/FontConfiguration;->fontNames:[Ljava/lang/String;

    invoke-static {v0, p0}, Lsun/awt/FontConfiguration;->getArrayIndex([Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getFontName(I)Ljava/lang/String;
    .locals 1

    sget-object v0, Lsun/awt/FontConfiguration;->fontNames:[Ljava/lang/String;

    aget-object p0, v0, p0

    return-object p0
.end method

.method private getInitELC()S
    .locals 6

    iget-short v0, p0, Lsun/awt/FontConfiguration;->initELC:S

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    sget-object v3, Lsun/awt/FontConfiguration;->table_elcIDs:[S

    array-length v4, v3

    if-ge v2, v4, :cond_1

    aget-short v3, v3, v2

    invoke-static {v3}, Lsun/awt/FontConfiguration;->getString(S)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lsun/awt/FontConfiguration;->initLocale:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lsun/awt/FontConfiguration;->initLocale:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lsun/awt/FontConfiguration;->initEncoding:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lsun/awt/FontConfiguration;->initEncoding:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v3, p0, Lsun/awt/FontConfiguration;->initEncoding:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    const-string v2, "NULL.NULL.NULL"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->shortValue()S

    move-result v0

    iput-short v0, p0, Lsun/awt/FontConfiguration;->initELC:S

    goto :goto_2

    :cond_3
    :goto_1
    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->shortValue()S

    move-result v0

    iput-short v0, p0, Lsun/awt/FontConfiguration;->initELC:S

    :goto_2
    sget-object v0, Lsun/awt/FontConfiguration;->table_alphabeticSuffix:[S

    array-length v2, v0

    if-ge v1, v2, :cond_5

    iget-short v2, p0, Lsun/awt/FontConfiguration;->initELC:S

    aget-short v3, v0, v1

    if-ne v2, v3, :cond_4

    add-int/lit8 v1, v1, 0x1

    aget-short v0, v0, v1

    invoke-static {v0}, Lsun/awt/FontConfiguration;->getString(S)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lsun/awt/FontConfiguration;->alphabeticSuffix:Ljava/lang/String;

    iget-short p0, p0, Lsun/awt/FontConfiguration;->initELC:S

    return p0

    :cond_4
    add-int/lit8 v1, v1, 0x2

    goto :goto_2

    :cond_5
    iget-short p0, p0, Lsun/awt/FontConfiguration;->initELC:S

    return p0
.end method

.method public static getLogicalFontFaceName(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lsun/awt/FontConfiguration;->getStyleString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getReorderSequence()Ljava/lang/Object;
    .locals 5

    sget-object v0, Lsun/awt/FontConfiguration;->fontConfig:Lsun/awt/FontConfiguration;

    iget-object v1, v0, Lsun/awt/FontConfiguration;->reorderMap:Ljava/util/HashMap;

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lsun/awt/FontConfiguration;->initReorderMap()V

    :cond_0
    sget-object v0, Lsun/awt/FontConfiguration;->fontConfig:Lsun/awt/FontConfiguration;

    iget-object v0, v0, Lsun/awt/FontConfiguration;->reorderMap:Ljava/util/HashMap;

    sget-object v1, Lsun/awt/FontConfiguration;->startupLocale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lsun/awt/FontConfiguration;->startupLocale:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lsun/awt/FontConfiguration;->encoding:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lsun/awt/FontConfiguration;->encoding:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    :cond_1
    if-nez v2, :cond_2

    sget-object v1, Lsun/awt/FontConfiguration;->encoding:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    :cond_2
    return-object v2
.end method

.method private static getScriptName(S)Ljava/lang/String;
    .locals 1

    sget-object v0, Lsun/awt/FontConfiguration;->table_scriptIDs:[S

    aget-short p0, v0, p0

    invoke-static {p0}, Lsun/awt/FontConfiguration;->getString(S)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getShortArray(S)[S
    .locals 4

    invoke-static {p0}, Lsun/awt/FontConfiguration;->getString(S)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    array-length v0, p0

    new-array v0, v0, [S

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    aget-char v2, p0, v1

    const v3, 0xffff

    and-int/2addr v2, v3

    int-to-short v2, v2

    aput-short v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static getShortArrayID([S)S
    .locals 3

    array-length v0, p0

    new-array v0, v0, [C

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    aget-short v2, p0, v1

    int-to-char v2, v2

    aput-char v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([C)V

    invoke-static {p0}, Lsun/awt/FontConfiguration;->getStringID(Ljava/lang/String;)S

    move-result p0

    return p0
.end method

.method public static getString(S)Ljava/lang/String;
    .locals 6

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object v0, Lsun/awt/FontConfiguration;->stringCache:[Ljava/lang/String;

    aget-object v1, v0, p0

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/String;

    sget-object v2, Lsun/awt/FontConfiguration;->table_stringTable:[C

    sget-object v3, Lsun/awt/FontConfiguration;->table_stringIDs:[S

    aget-short v4, v3, p0

    add-int/lit8 v5, p0, 0x1

    aget-short v3, v3, v5

    sub-int/2addr v3, v4

    invoke-direct {v1, v2, v4, v3}, Ljava/lang/String;-><init>([CII)V

    aput-object v1, v0, p0

    :cond_1
    sget-object v0, Lsun/awt/FontConfiguration;->stringCache:[Ljava/lang/String;

    aget-object p0, v0, p0

    return-object p0
.end method

.method private static getStringID(Ljava/lang/String;)S
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    sget-object v1, Lsun/awt/FontConfiguration;->stringTable:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    int-to-short v1, v1

    sget-object v2, Lsun/awt/FontConfiguration;->stringTable:Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Lsun/awt/FontConfiguration;->stringTable:Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    int-to-short p0, p0

    sget-object v2, Lsun/awt/FontConfiguration;->stringIDs:[S

    sget-short v3, Lsun/awt/FontConfiguration;->stringIDNum:S

    aput-short v1, v2, v3

    add-int/lit8 v1, v3, 0x1

    aput-short p0, v2, v1

    add-int/lit8 v3, v3, 0x1

    int-to-short p0, v3

    sput-short p0, Lsun/awt/FontConfiguration;->stringIDNum:S

    add-int/lit8 v1, p0, 0x1

    array-length v3, v2

    if-lt v1, v3, :cond_1

    add-int/lit16 v1, p0, 0x3e8

    new-array v1, v1, [S

    invoke-static {v2, v0, v1, v0, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sput-object v1, Lsun/awt/FontConfiguration;->stringIDs:[S

    :cond_1
    sget-short p0, Lsun/awt/FontConfiguration;->stringIDNum:S

    add-int/lit8 p0, p0, -0x1

    int-to-short p0, p0

    return p0
.end method

.method public static getStyleIndex(I)I
    .locals 1

    .line 1
    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    return v0
.end method

.method public static getStyleIndex(Ljava/lang/String;)I
    .locals 1

    .line 2
    sget-object v0, Lsun/awt/FontConfiguration;->styleNames:[Ljava/lang/String;

    invoke-static {v0, p0}, Lsun/awt/FontConfiguration;->getArrayIndex([Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getStyleName(I)Ljava/lang/String;
    .locals 1

    sget-object v0, Lsun/awt/FontConfiguration;->styleNames:[Ljava/lang/String;

    aget-object p0, v0, p0

    return-object p0
.end method

.method public static getStyleString(I)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lsun/awt/FontConfiguration;->getStyleIndex(I)I

    move-result p0

    invoke-static {p0}, Lsun/awt/FontConfiguration;->getStyleName(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static hasMonoToPropMap()Z
    .locals 1

    sget-object v0, Lsun/awt/FontConfiguration;->table_proportionals:[S

    if-eqz v0, :cond_0

    array-length v0, v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private initAllComponentFonts()V
    .locals 12

    invoke-static {}, Lsun/awt/FontConfiguration;->getFallbackScripts()[S

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x5

    if-ge v2, v3, :cond_a

    invoke-virtual {p0, v2}, Lsun/awt/FontConfiguration;->getCoreScripts(I)[S

    move-result-object v3

    iget-object v4, p0, Lsun/awt/FontConfiguration;->compCoreNum:[I

    array-length v5, v3

    aput v5, v4, v2

    array-length v4, v3

    new-array v4, v4, [[I

    move v5, v1

    :goto_1
    array-length v6, v3

    if-ge v5, v6, :cond_0

    aget-short v6, v3, v5

    invoke-static {v6}, Lsun/awt/FontConfiguration;->getExclusionRanges(S)[I

    move-result-object v6

    aput-object v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_0
    iget-object v5, p0, Lsun/awt/FontConfiguration;->compExclusions:[[[I

    aput-object v4, v5, v2

    move v4, v1

    :goto_2
    const/4 v5, 0x4

    if-ge v4, v5, :cond_9

    array-length v5, v3

    array-length v6, v0

    add-int/2addr v5, v6

    new-array v6, v5, [S

    move v7, v1

    :goto_3
    array-length v8, v3

    if-ge v7, v8, :cond_3

    aget-short v8, v3, v7

    invoke-static {v8, v2, v4}, Lsun/awt/FontConfiguration;->getComponentFontID(SII)S

    move-result v8

    aput-short v8, v6, v7

    iget-boolean v8, p0, Lsun/awt/FontConfiguration;->preferLocaleFonts:Z

    if-eqz v8, :cond_1

    sget-object v8, Lsun/awt/FontConfiguration;->localeMap:Ljava/util/Hashtable;

    if-eqz v8, :cond_1

    iget-object v8, p0, Lsun/awt/FontConfiguration;->fontManager:Lsun/font/SunFontManager;

    invoke-virtual {v8}, Lsun/font/SunFontManager;->usingAlternateFontforJALocales()Z

    move-result v8

    if-eqz v8, :cond_1

    aget-short v8, v3, v7

    aget-short v9, v6, v7

    invoke-direct {p0, v2, v4, v8, v9}, Lsun/awt/FontConfiguration;->remapLocaleMap(IISS)S

    move-result v8

    aput-short v8, v6, v7

    :cond_1
    iget-boolean v8, p0, Lsun/awt/FontConfiguration;->preferPropFonts:Z

    if-eqz v8, :cond_2

    aget-short v8, v6, v7

    invoke-direct {p0, v2, v8}, Lsun/awt/FontConfiguration;->remapProportional(IS)S

    move-result v8

    aput-short v8, v6, v7

    :cond_2
    iget-object v8, p0, Lsun/awt/FontConfiguration;->coreFontNameIDs:Ljava/util/Set;

    aget-short v9, v6, v7

    invoke-static {v9}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_3
    move v8, v1

    :goto_4
    array-length v9, v0

    if-ge v8, v9, :cond_7

    aget-short v9, v0, v8

    invoke-static {v9, v2, v4}, Lsun/awt/FontConfiguration;->getComponentFontID(SII)S

    move-result v9

    iget-boolean v10, p0, Lsun/awt/FontConfiguration;->preferLocaleFonts:Z

    if-eqz v10, :cond_4

    sget-object v10, Lsun/awt/FontConfiguration;->localeMap:Ljava/util/Hashtable;

    if-eqz v10, :cond_4

    iget-object v10, p0, Lsun/awt/FontConfiguration;->fontManager:Lsun/font/SunFontManager;

    invoke-virtual {v10}, Lsun/font/SunFontManager;->usingAlternateFontforJALocales()Z

    move-result v10

    if-eqz v10, :cond_4

    aget-short v10, v0, v8

    invoke-direct {p0, v2, v4, v10, v9}, Lsun/awt/FontConfiguration;->remapLocaleMap(IISS)S

    move-result v9

    :cond_4
    iget-boolean v10, p0, Lsun/awt/FontConfiguration;->preferPropFonts:Z

    if-eqz v10, :cond_5

    invoke-direct {p0, v2, v9}, Lsun/awt/FontConfiguration;->remapProportional(IS)S

    move-result v9

    :cond_5
    invoke-static {v6, v9, v7}, Lsun/awt/FontConfiguration;->contains([SSI)Z

    move-result v10

    if-eqz v10, :cond_6

    goto :goto_5

    :cond_6
    iget-object v10, p0, Lsun/awt/FontConfiguration;->fallbackFontNameIDs:Ljava/util/Set;

    invoke-static {v9}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v7, 0x1

    aput-short v9, v6, v7

    move v7, v10

    :goto_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    :cond_7
    if-ge v7, v5, :cond_8

    new-array v5, v7, [S

    invoke-static {v6, v1, v5, v1, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v6, v5

    :cond_8
    iget-object v5, p0, Lsun/awt/FontConfiguration;->compFontNameIDs:[[[S

    aget-object v5, v5, v2

    aput-object v6, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_2

    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_a
    return-void
.end method

.method private initFontConfig()V
    .locals 1

    sget-object v0, Lsun/awt/FontConfiguration;->startupLocale:Ljava/util/Locale;

    iput-object v0, p0, Lsun/awt/FontConfiguration;->initLocale:Ljava/util/Locale;

    sget-object v0, Lsun/awt/FontConfiguration;->encoding:Ljava/lang/String;

    iput-object v0, p0, Lsun/awt/FontConfiguration;->initEncoding:Ljava/lang/String;

    iget-boolean v0, p0, Lsun/awt/FontConfiguration;->preferLocaleFonts:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lsun/awt/FontConfiguration;->willReorderForStartupLocale()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun/awt/FontConfiguration;->preferLocaleFonts:Z

    :cond_0
    invoke-direct {p0}, Lsun/awt/FontConfiguration;->getInitELC()S

    move-result v0

    iput-short v0, p0, Lsun/awt/FontConfiguration;->initELC:S

    invoke-direct {p0}, Lsun/awt/FontConfiguration;->initAllComponentFonts()V

    return-void
.end method

.method private static isEmpty([S)Z
    .locals 5

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-short v3, p0, v2

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    return v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static isLogicalFontFaceName(Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lsun/awt/FontConfiguration;->isLogicalFontFaceNameLC(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isLogicalFontFaceNameLC(Ljava/lang/String;)Z
    .locals 4

    const/16 v0, 0x2e

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    add-int/2addr v0, v3

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {v2}, Lsun/awt/FontConfiguration;->isLogicalFontFamilyName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lsun/awt/FontConfiguration;->isLogicalFontStyleName(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    move v1, v3

    :cond_0
    return v1

    :cond_1
    invoke-static {p0}, Lsun/awt/FontConfiguration;->isLogicalFontFamilyName(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isLogicalFontFamilyName(Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lsun/awt/FontConfiguration;->isLogicalFontFamilyNameLC(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isLogicalFontFamilyNameLC(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    sget-object v2, Lsun/awt/FontConfiguration;->fontNames:[Ljava/lang/String;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    aget-object v2, v2, v1

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private static isLogicalFontStyleName(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    sget-object v2, Lsun/awt/FontConfiguration;->styleNames:[Ljava/lang/String;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    aget-object v2, v2, v1

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public static loadBinary(Ljava/io/InputStream;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, p0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    const/16 p0, 0x14

    invoke-static {v0, p0}, Lsun/awt/FontConfiguration;->readShortTable(Ljava/io/DataInputStream;I)[S

    move-result-object p0

    sput-object p0, Lsun/awt/FontConfiguration;->head:[S

    const/16 p0, 0xe

    new-array v1, p0, [I

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, p0, :cond_0

    sget-object v4, Lsun/awt/FontConfiguration;->head:[S

    add-int/lit8 v5, v3, 0x1

    aget-short v6, v4, v5

    aget-short v4, v4, v3

    sub-int/2addr v6, v4

    aput v6, v1, v3

    move v3, v5

    goto :goto_0

    :cond_0
    aget p0, v1, v2

    invoke-static {v0, p0}, Lsun/awt/FontConfiguration;->readShortTable(Ljava/io/DataInputStream;I)[S

    move-result-object p0

    sput-object p0, Lsun/awt/FontConfiguration;->table_scriptIDs:[S

    const/4 p0, 0x1

    aget v3, v1, p0

    invoke-static {v0, v3}, Lsun/awt/FontConfiguration;->readShortTable(Ljava/io/DataInputStream;I)[S

    move-result-object v3

    sput-object v3, Lsun/awt/FontConfiguration;->table_scriptFonts:[S

    const/4 v3, 0x2

    aget v3, v1, v3

    invoke-static {v0, v3}, Lsun/awt/FontConfiguration;->readShortTable(Ljava/io/DataInputStream;I)[S

    move-result-object v3

    sput-object v3, Lsun/awt/FontConfiguration;->table_elcIDs:[S

    const/4 v3, 0x3

    aget v3, v1, v3

    invoke-static {v0, v3}, Lsun/awt/FontConfiguration;->readShortTable(Ljava/io/DataInputStream;I)[S

    move-result-object v3

    sput-object v3, Lsun/awt/FontConfiguration;->table_sequences:[S

    const/4 v3, 0x4

    aget v3, v1, v3

    invoke-static {v0, v3}, Lsun/awt/FontConfiguration;->readShortTable(Ljava/io/DataInputStream;I)[S

    move-result-object v3

    sput-object v3, Lsun/awt/FontConfiguration;->table_fontfileNameIDs:[S

    const/4 v3, 0x5

    aget v3, v1, v3

    invoke-static {v0, v3}, Lsun/awt/FontConfiguration;->readShortTable(Ljava/io/DataInputStream;I)[S

    move-result-object v3

    sput-object v3, Lsun/awt/FontConfiguration;->table_componentFontNameIDs:[S

    const/4 v3, 0x6

    aget v3, v1, v3

    invoke-static {v0, v3}, Lsun/awt/FontConfiguration;->readShortTable(Ljava/io/DataInputStream;I)[S

    move-result-object v3

    sput-object v3, Lsun/awt/FontConfiguration;->table_filenames:[S

    const/4 v3, 0x7

    aget v3, v1, v3

    invoke-static {v0, v3}, Lsun/awt/FontConfiguration;->readShortTable(Ljava/io/DataInputStream;I)[S

    move-result-object v3

    sput-object v3, Lsun/awt/FontConfiguration;->table_awtfontpaths:[S

    const/16 v3, 0x8

    aget v4, v1, v3

    invoke-static {v0, v4}, Lsun/awt/FontConfiguration;->readShortTable(Ljava/io/DataInputStream;I)[S

    move-result-object v4

    sput-object v4, Lsun/awt/FontConfiguration;->table_exclusions:[S

    const/16 v4, 0x9

    aget v4, v1, v4

    invoke-static {v0, v4}, Lsun/awt/FontConfiguration;->readShortTable(Ljava/io/DataInputStream;I)[S

    move-result-object v4

    sput-object v4, Lsun/awt/FontConfiguration;->table_proportionals:[S

    const/16 v4, 0xa

    aget v4, v1, v4

    invoke-static {v0, v4}, Lsun/awt/FontConfiguration;->readShortTable(Ljava/io/DataInputStream;I)[S

    move-result-object v4

    sput-object v4, Lsun/awt/FontConfiguration;->table_scriptFontsMotif:[S

    const/16 v4, 0xb

    aget v4, v1, v4

    invoke-static {v0, v4}, Lsun/awt/FontConfiguration;->readShortTable(Ljava/io/DataInputStream;I)[S

    move-result-object v4

    sput-object v4, Lsun/awt/FontConfiguration;->table_alphabeticSuffix:[S

    const/16 v4, 0xc

    aget v4, v1, v4

    invoke-static {v0, v4}, Lsun/awt/FontConfiguration;->readShortTable(Ljava/io/DataInputStream;I)[S

    move-result-object v4

    sput-object v4, Lsun/awt/FontConfiguration;->table_stringIDs:[S

    array-length v4, v4

    add-int/2addr v4, p0

    new-array p0, v4, [Ljava/lang/String;

    sput-object p0, Lsun/awt/FontConfiguration;->stringCache:[Ljava/lang/String;

    const/16 p0, 0xd

    aget p0, v1, p0

    mul-int/lit8 v1, p0, 0x2

    new-array v1, v1, [B

    new-array v4, p0, [C

    sput-object v4, Lsun/awt/FontConfiguration;->table_stringTable:[C

    invoke-virtual {v0, v1}, Ljava/io/DataInputStream;->read([B)I

    move v0, v2

    :goto_1
    if-ge v2, p0, :cond_1

    sget-object v4, Lsun/awt/FontConfiguration;->table_stringTable:[C

    add-int/lit8 v5, v2, 0x1

    add-int/lit8 v6, v0, 0x1

    aget-byte v0, v1, v0

    shl-int/2addr v0, v3

    add-int/lit8 v7, v6, 0x1

    aget-byte v6, v1, v6

    and-int/lit16 v6, v6, 0xff

    or-int/2addr v0, v6

    int-to-char v0, v0

    aput-char v0, v4, v2

    move v2, v5

    move v0, v7

    goto :goto_1

    :cond_1
    sget-boolean p0, Lsun/awt/FontConfiguration;->verbose:Z

    if-eqz p0, :cond_2

    invoke-static {}, Lsun/awt/FontConfiguration;->dump()V

    :cond_2
    return-void
.end method

.method public static loadProperties(Ljava/io/InputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    sput-short v0, Lsun/awt/FontConfiguration;->stringIDNum:S

    const/16 v0, 0x3e8

    new-array v0, v0, [S

    sput-object v0, Lsun/awt/FontConfiguration;->stringIDs:[S

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x1000

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    sput-object v0, Lsun/awt/FontConfiguration;->stringTable:Ljava/lang/StringBuilder;

    sget-boolean v0, Lsun/awt/FontConfiguration;->verbose:Z

    if-eqz v0, :cond_0

    sget-object v0, Lsun/awt/FontConfiguration;->logger:Lsun/util/logging/NeoPlatformLogger;

    if-nez v0, :cond_0

    const-string v0, "sun.awt.FontConfiguration"

    invoke-static {v0}, Lsun/util/logging/NeoPlatformLogger;->getLogger(Ljava/lang/String;)Lsun/util/logging/NeoPlatformLogger;

    move-result-object v0

    sput-object v0, Lsun/awt/FontConfiguration;->logger:Lsun/util/logging/NeoPlatformLogger;

    :cond_0
    new-instance v0, Lsun/awt/FontConfiguration$PropertiesHandler;

    invoke-direct {v0}, Lsun/awt/FontConfiguration$PropertiesHandler;-><init>()V

    invoke-virtual {v0, p0}, Lsun/awt/FontConfiguration$PropertiesHandler;->load(Ljava/io/InputStream;)V

    const/4 p0, 0x0

    sput-object p0, Lsun/awt/FontConfiguration;->stringIDs:[S

    sput-object p0, Lsun/awt/FontConfiguration;->stringTable:Ljava/lang/StringBuilder;

    return-void
.end method

.method private static printTable([SI)V
    .locals 3

    :goto_0
    array-length v0, p0

    if-ge p1, v0, :cond_0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-short v2, p0, p1

    invoke-static {v2}, Lsun/awt/FontConfiguration;->getString(S)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static readShortTable(Ljava/io/DataInputStream;I)[S
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    sget-object p0, Lsun/awt/FontConfiguration;->EMPTY_SHORT_ARRAY:[S

    return-object p0

    :cond_0
    new-array v0, p1, [S

    mul-int/lit8 v1, p1, 0x2

    new-array v1, v1, [B

    invoke-virtual {p0, v1}, Ljava/io/DataInputStream;->read([B)I

    const/4 p0, 0x0

    move v2, p0

    :goto_0
    if-ge p0, p1, :cond_1

    add-int/lit8 v3, p0, 0x1

    add-int/lit8 v4, v2, 0x1

    aget-byte v2, v1, v2

    shl-int/lit8 v2, v2, 0x8

    add-int/lit8 v5, v4, 0x1

    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v2, v4

    int-to-short v2, v2

    aput-short v2, v0, p0

    move p0, v3

    move v2, v5

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private remapLocaleMap(IISS)S
    .locals 1

    sget-object p0, Lsun/awt/FontConfiguration;->table_scriptIDs:[S

    aget-short p0, p0, p3

    invoke-static {p0}, Lsun/awt/FontConfiguration;->getString(S)Ljava/lang/String;

    move-result-object p0

    sget-object p3, Lsun/awt/FontConfiguration;->localeMap:Ljava/util/Hashtable;

    invoke-virtual {p3, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    if-nez p3, :cond_0

    sget-object p3, Lsun/awt/FontConfiguration;->fontNames:[Ljava/lang/String;

    aget-object p1, p3, p1

    sget-object p3, Lsun/awt/FontConfiguration;->styleNames:[Ljava/lang/String;

    aget-object p2, p3, p2

    sget-object p3, Lsun/awt/FontConfiguration;->localeMap:Ljava/util/Hashtable;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object p3, p0

    check-cast p3, Ljava/lang/String;

    :cond_0
    if-nez p3, :cond_1

    return p4

    :cond_1
    const/4 p0, 0x0

    :goto_0
    sget-object p1, Lsun/awt/FontConfiguration;->table_componentFontNameIDs:[S

    array-length p2, p1

    if-ge p0, p2, :cond_3

    aget-short p1, p1, p0

    invoke-static {p1}, Lsun/awt/FontConfiguration;->getString(S)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    int-to-short p4, p0

    goto :goto_1

    :cond_2
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return p4
.end method

.method private remapProportional(IS)S
    .locals 1

    iget-boolean p0, p0, Lsun/awt/FontConfiguration;->preferPropFonts:Z

    if-eqz p0, :cond_1

    sget-object p0, Lsun/awt/FontConfiguration;->table_proportionals:[S

    array-length p0, p0

    if-eqz p0, :cond_1

    const/4 p0, 0x2

    if-eq p1, p0, :cond_1

    const/4 p0, 0x4

    if-eq p1, p0, :cond_1

    const/4 p0, 0x0

    :goto_0
    sget-object p1, Lsun/awt/FontConfiguration;->table_proportionals:[S

    array-length v0, p1

    if-ge p0, v0, :cond_1

    aget-short v0, p1, p0

    if-ne v0, p2, :cond_0

    add-int/lit8 p0, p0, 0x1

    aget-short p0, p1, p0

    return p0

    :cond_0
    add-int/lit8 p0, p0, 0x2

    goto :goto_0

    :cond_1
    return p2
.end method

.method private reorderSequenceForLocale([Ljava/lang/String;)V
    .locals 6

    invoke-static {}, Lsun/awt/FontConfiguration;->getReorderSequence()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    move v1, v2

    :goto_0
    array-length v3, p1

    if-ge v1, v3, :cond_4

    aget-object v3, p1, v1

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-direct {p0, p1, v1, v2}, Lsun/awt/FontConfiguration;->shuffle([Ljava/lang/String;II)V

    return-void

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    instance-of v1, v0, [Ljava/lang/String;

    if-eqz v1, :cond_4

    check-cast v0, [Ljava/lang/String;

    move v1, v2

    :goto_1
    array-length v3, v0

    if-ge v1, v3, :cond_4

    move v3, v2

    :goto_2
    array-length v4, p1

    if-ge v3, v4, :cond_3

    aget-object v4, p1, v3

    aget-object v5, v0, v1

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-direct {p0, p1, v3, v1}, Lsun/awt/FontConfiguration;->shuffle([Ljava/lang/String;II)V

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method

.method private static sanityCheck()V
    .locals 12

    new-instance v0, Lsun/awt/FontConfiguration$3;

    invoke-direct {v0}, Lsun/awt/FontConfiguration$3;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x1

    move v4, v1

    move v3, v2

    :goto_0
    sget-object v5, Lsun/awt/FontConfiguration;->table_filenames:[S

    array-length v6, v5

    const-string v7, "> entry is missing!!!"

    if-ge v3, v6, :cond_2

    aget-short v5, v5, v3

    const/4 v6, -0x1

    if-ne v5, v6, :cond_1

    const-string v5, "Windows"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\n Error: <filename."

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v8, Lsun/awt/FontConfiguration;->table_componentFontNameIDs:[S

    aget-short v8, v8, v3

    invoke-static {v8}, Lsun/awt/FontConfiguration;->getString(S)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    sget-boolean v5, Lsun/awt/FontConfiguration;->verbose:Z

    if-eqz v5, :cond_1

    sget-object v5, Lsun/awt/FontConfiguration;->table_filenames:[S

    invoke-static {v5}, Lsun/awt/FontConfiguration;->isEmpty([S)Z

    move-result v5

    if-nez v5, :cond_1

    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\n Note: \'filename\' entry is undefined for \""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Lsun/awt/FontConfiguration;->table_componentFontNameIDs:[S

    aget-short v7, v7, v3

    invoke-static {v7}, Lsun/awt/FontConfiguration;->getString(S)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_2
    sget-object v3, Lsun/awt/FontConfiguration;->table_scriptIDs:[S

    array-length v3, v3

    if-ge v0, v3, :cond_7

    sget-object v3, Lsun/awt/FontConfiguration;->table_scriptFonts:[S

    aget-short v3, v3, v0

    if-nez v3, :cond_3

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\n Error: <allfonts."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Lsun/awt/FontConfiguration;->table_scriptIDs:[S

    aget-short v6, v6, v0

    invoke-static {v6}, Lsun/awt/FontConfiguration;->getString(S)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_3
    if-gez v3, :cond_6

    neg-int v3, v3

    int-to-short v3, v3

    move v5, v1

    :goto_3
    const/4 v6, 0x5

    if-ge v5, v6, :cond_6

    move v6, v1

    :goto_4
    const/4 v8, 0x4

    if-ge v6, v8, :cond_5

    mul-int/lit8 v8, v5, 0x4

    add-int/2addr v8, v6

    sget-object v9, Lsun/awt/FontConfiguration;->table_scriptFonts:[S

    add-int/2addr v8, v3

    aget-short v8, v9, v8

    if-nez v8, :cond_4

    sget-object v8, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "\n Error: <"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Lsun/awt/FontConfiguration;->getFontName(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Lsun/awt/FontConfiguration;->getStyleName(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v10, Lsun/awt/FontConfiguration;->table_scriptIDs:[S

    aget-short v10, v10, v0

    invoke-static {v10}, Lsun/awt/FontConfiguration;->getString(S)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_6
    :goto_5
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2

    :cond_7
    if-eqz v4, :cond_8

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "!!THERE ARE "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " ERROR(S) IN THE FONTCONFIG FILE, PLEASE CHECK ITS CONTENT!!\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-static {v2}, Ljava/lang/System;->exit(I)V

    :cond_8
    return-void
.end method

.method public static saveBinary(Ljava/io/OutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lsun/awt/FontConfiguration;->sanityCheck()V

    new-instance v0, Ljava/io/DataOutputStream;

    invoke-direct {v0, p0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    sget-object v1, Lsun/awt/FontConfiguration;->head:[S

    invoke-static {v0, v1}, Lsun/awt/FontConfiguration;->writeShortTable(Ljava/io/DataOutputStream;[S)V

    sget-object v1, Lsun/awt/FontConfiguration;->table_scriptIDs:[S

    invoke-static {v0, v1}, Lsun/awt/FontConfiguration;->writeShortTable(Ljava/io/DataOutputStream;[S)V

    sget-object v1, Lsun/awt/FontConfiguration;->table_scriptFonts:[S

    invoke-static {v0, v1}, Lsun/awt/FontConfiguration;->writeShortTable(Ljava/io/DataOutputStream;[S)V

    sget-object v1, Lsun/awt/FontConfiguration;->table_elcIDs:[S

    invoke-static {v0, v1}, Lsun/awt/FontConfiguration;->writeShortTable(Ljava/io/DataOutputStream;[S)V

    sget-object v1, Lsun/awt/FontConfiguration;->table_sequences:[S

    invoke-static {v0, v1}, Lsun/awt/FontConfiguration;->writeShortTable(Ljava/io/DataOutputStream;[S)V

    sget-object v1, Lsun/awt/FontConfiguration;->table_fontfileNameIDs:[S

    invoke-static {v0, v1}, Lsun/awt/FontConfiguration;->writeShortTable(Ljava/io/DataOutputStream;[S)V

    sget-object v1, Lsun/awt/FontConfiguration;->table_componentFontNameIDs:[S

    invoke-static {v0, v1}, Lsun/awt/FontConfiguration;->writeShortTable(Ljava/io/DataOutputStream;[S)V

    sget-object v1, Lsun/awt/FontConfiguration;->table_filenames:[S

    invoke-static {v0, v1}, Lsun/awt/FontConfiguration;->writeShortTable(Ljava/io/DataOutputStream;[S)V

    sget-object v1, Lsun/awt/FontConfiguration;->table_awtfontpaths:[S

    invoke-static {v0, v1}, Lsun/awt/FontConfiguration;->writeShortTable(Ljava/io/DataOutputStream;[S)V

    sget-object v1, Lsun/awt/FontConfiguration;->table_exclusions:[S

    invoke-static {v0, v1}, Lsun/awt/FontConfiguration;->writeShortTable(Ljava/io/DataOutputStream;[S)V

    sget-object v1, Lsun/awt/FontConfiguration;->table_proportionals:[S

    invoke-static {v0, v1}, Lsun/awt/FontConfiguration;->writeShortTable(Ljava/io/DataOutputStream;[S)V

    sget-object v1, Lsun/awt/FontConfiguration;->table_scriptFontsMotif:[S

    invoke-static {v0, v1}, Lsun/awt/FontConfiguration;->writeShortTable(Ljava/io/DataOutputStream;[S)V

    sget-object v1, Lsun/awt/FontConfiguration;->table_alphabeticSuffix:[S

    invoke-static {v0, v1}, Lsun/awt/FontConfiguration;->writeShortTable(Ljava/io/DataOutputStream;[S)V

    sget-object v1, Lsun/awt/FontConfiguration;->table_stringIDs:[S

    invoke-static {v0, v1}, Lsun/awt/FontConfiguration;->writeShortTable(Ljava/io/DataOutputStream;[S)V

    new-instance v1, Ljava/lang/String;

    sget-object v2, Lsun/awt/FontConfiguration;->table_stringTable:[C

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeChars(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V

    sget-boolean p0, Lsun/awt/FontConfiguration;->verbose:Z

    if-eqz p0, :cond_0

    invoke-static {}, Lsun/awt/FontConfiguration;->dump()V

    :cond_0
    return-void
.end method

.method private setEncoding()V
    .locals 0

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lsun/awt/FontConfiguration;->encoding:Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p0

    sput-object p0, Lsun/awt/FontConfiguration;->startupLocale:Ljava/util/Locale;

    return-void
.end method

.method private shuffle([Ljava/lang/String;II)V
    .locals 1

    if-lt p3, p2, :cond_0

    return-void

    :cond_0
    aget-object p0, p1, p2

    :goto_0
    if-le p2, p3, :cond_1

    add-int/lit8 v0, p2, -0x1

    aget-object v0, p1, v0

    aput-object v0, p1, p2

    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_1
    aput-object p0, p1, p3

    return-void
.end method

.method private static splitSequence(Ljava/lang/String;)Ljava/util/Vector;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Vector<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x2c

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    if-ltz v2, :cond_0

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v1, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :cond_1
    return-object v0
.end method

.method private static toList(Ljava/util/HashMap;)[S
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Short;",
            ">;)[S"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/util/HashMap;->size()I

    move-result v0

    new-array v0, v0, [S

    const/4 v1, -0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([SS)V

    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Short;

    invoke-virtual {v2}, Ljava/lang/Short;->shortValue()S

    move-result v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lsun/awt/FontConfiguration;->getStringID(Ljava/lang/String;)S

    move-result v1

    aput-short v1, v0, v2

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static willReorderForStartupLocale()Z
    .locals 1

    invoke-static {}, Lsun/awt/FontConfiguration;->getReorderSequence()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static writeShortTable(Ljava/io/DataOutputStream;[S)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-short v2, p1, v1

    invoke-virtual {p0, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public buildFontDescriptors(II)[Lsun/awt/FontDescriptor;
    .locals 9

    sget-object v0, Lsun/awt/FontConfiguration;->fontNames:[Ljava/lang/String;

    aget-object v0, v0, p1

    sget-object v0, Lsun/awt/FontConfiguration;->styleNames:[Ljava/lang/String;

    aget-object v0, v0, p2

    invoke-virtual {p0, p1}, Lsun/awt/FontConfiguration;->getCoreScripts(I)[S

    move-result-object v0

    iget-object v1, p0, Lsun/awt/FontConfiguration;->compFontNameIDs:[[[S

    aget-object v1, v1, p1

    aget-object p2, v1, p2

    array-length v1, v0

    new-array v2, v1, [Ljava/lang/String;

    array-length v3, v0

    new-array v4, v3, [Ljava/lang/String;

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-ge v6, v1, :cond_1

    aget-short v7, p2, v6

    invoke-static {v7}, Lsun/awt/FontConfiguration;->getComponentFontName(S)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v6

    aget-short v7, v0, v6

    invoke-static {v7}, Lsun/awt/FontConfiguration;->getScriptName(S)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v2, v6

    iget-object v8, p0, Lsun/awt/FontConfiguration;->alphabeticSuffix:Ljava/lang/String;

    if-eqz v8, :cond_0

    const-string v8, "alphabetic"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v8, v2, v6

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lsun/awt/FontConfiguration;->alphabeticSuffix:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v2, v6

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lsun/awt/FontConfiguration;->compExclusions:[[[I

    aget-object p1, p2, p1

    new-array p2, v3, [Lsun/awt/FontDescriptor;

    :goto_1
    if-ge v5, v3, :cond_3

    aget-object v0, v4, v5

    aget-object v1, v2, v5

    invoke-virtual {p0, v0, v1}, Lsun/awt/FontConfiguration;->makeAWTFontName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aget-object v1, v4, v5

    aget-object v6, v2, v5

    invoke-virtual {p0, v1, v6}, Lsun/awt/FontConfiguration;->getEncoding(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    const-string v1, "default"

    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lsun/awt/FontConfiguration;->getFontCharsetEncoder(Ljava/lang/String;Ljava/lang/String;)Ljava/nio/charset/CharsetEncoder;

    move-result-object v1

    aget-object v6, p1, v5

    new-instance v7, Lsun/awt/FontDescriptor;

    invoke-direct {v7, v0, v1, v6}, Lsun/awt/FontDescriptor;-><init>(Ljava/lang/String;Ljava/nio/charset/CharsetEncoder;[I)V

    aput-object v7, p2, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    return-object p2
.end method

.method public findFontConfigFile()V
    .locals 4

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lsun/awt/FontConfiguration;->foundOsSpecificFile:Z

    const-string v0, "java.home"

    .line 2
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "lib"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lsun/awt/FontConfiguration;->javaLib:Ljava/lang/String;

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "conf"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "fonts"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "sun.awt.fontconfig"

    .line 5
    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 6
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lsun/awt/FontConfiguration;->fontConfigFile:Ljava/io/File;

    goto :goto_0

    .line 7
    :cond_0
    invoke-direct {p0, v0}, Lsun/awt/FontConfiguration;->findFontConfigFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lsun/awt/FontConfiguration;->fontConfigFile:Ljava/io/File;

    if-nez v0, :cond_1

    .line 8
    iget-object v0, p0, Lsun/awt/FontConfiguration;->javaLib:Ljava/lang/String;

    invoke-direct {p0, v0}, Lsun/awt/FontConfiguration;->findFontConfigFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lsun/awt/FontConfiguration;->fontConfigFile:Ljava/io/File;

    :cond_1
    :goto_0
    return-void

    .line 9
    :cond_2
    new-instance p0, Ljava/lang/Error;

    const-string v0, "java.home property not set"

    invoke-direct {p0, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public fontFilesArePresent()Z
    .locals 2

    invoke-virtual {p0}, Lsun/awt/FontConfiguration;->init()Z

    iget-object v0, p0, Lsun/awt/FontConfiguration;->compFontNameIDs:[[[S

    const/4 v1, 0x0

    aget-object v0, v0, v1

    aget-object v0, v0, v1

    aget-short v0, v0, v1

    invoke-static {v0}, Lsun/awt/FontConfiguration;->getComponentFileID(S)S

    move-result v0

    invoke-static {v0}, Lsun/awt/FontConfiguration;->getComponentFileName(S)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lsun/awt/FontConfiguration;->mapFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lsun/awt/FontConfiguration$1;

    invoke-direct {v1, p0, v0}, Lsun/awt/FontConfiguration$1;-><init>(Lsun/awt/FontConfiguration;Ljava/lang/String;)V

    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public foundOsSpecificFile()Z
    .locals 0

    iget-boolean p0, p0, Lsun/awt/FontConfiguration;->foundOsSpecificFile:Z

    return p0
.end method

.method public get2DCompositeFontInfo()[Lsun/font/CompositeFontDescriptor;
    .locals 20

    move-object/from16 v0, p0

    const/16 v1, 0x14

    new-array v1, v1, [Lsun/font/CompositeFontDescriptor;

    iget-object v2, v0, Lsun/awt/FontConfiguration;->fontManager:Lsun/font/SunFontManager;

    invoke-virtual {v2}, Lsun/font/SunFontManager;->getDefaultFontFile()Ljava/lang/String;

    iget-object v2, v0, Lsun/awt/FontConfiguration;->fontManager:Lsun/font/SunFontManager;

    invoke-virtual {v2}, Lsun/font/SunFontManager;->getDefaultFontFaceName()Ljava/lang/String;

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x5

    if-ge v3, v4, :cond_c

    sget-object v4, Lsun/awt/FontConfiguration;->publicFontNames:[Ljava/lang/String;

    aget-object v4, v4, v3

    iget-object v5, v0, Lsun/awt/FontConfiguration;->compExclusions:[[[I

    aget-object v5, v5, v3

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_1
    array-length v8, v5

    if-ge v6, v8, :cond_0

    aget-object v8, v5, v6

    array-length v8, v8

    add-int/2addr v7, v8

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_0
    new-array v6, v7, [I

    array-length v15, v5

    new-array v14, v15, [I

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_2
    array-length v10, v5

    if-ge v8, v10, :cond_2

    aget-object v10, v5, v8

    const/4 v11, 0x0

    :goto_3
    array-length v12, v10

    if-ge v11, v12, :cond_1

    aget v12, v10, v11

    add-int/lit8 v13, v9, 0x1

    add-int/lit8 v11, v11, 0x1

    aput v12, v6, v9

    add-int/lit8 v9, v13, 0x1

    add-int/lit8 v12, v11, 0x1

    aget v11, v10, v11

    aput v11, v6, v13

    move v11, v12

    goto :goto_3

    :cond_1
    aput v9, v14, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_2
    const/4 v5, 0x0

    :goto_4
    const/4 v8, 0x4

    if-ge v5, v8, :cond_b

    iget-object v8, v0, Lsun/awt/FontConfiguration;->compFontNameIDs:[[[S

    aget-object v8, v8, v3

    aget-object v8, v8, v5

    array-length v8, v8

    sget-object v9, Lsun/awt/FontConfiguration;->installedFallbackFontFiles:[Ljava/lang/String;

    if-eqz v9, :cond_3

    array-length v9, v9

    add-int/2addr v8, v9

    :cond_3
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v10, Lsun/awt/FontConfiguration;->styleNames:[Ljava/lang/String;

    aget-object v10, v10, v5

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-array v10, v8, [Ljava/lang/String;

    new-array v11, v8, [Ljava/lang/String;

    const/4 v12, 0x0

    :goto_5
    iget-object v13, v0, Lsun/awt/FontConfiguration;->compFontNameIDs:[[[S

    aget-object v13, v13, v3

    aget-object v13, v13, v5

    array-length v2, v13

    if-ge v12, v2, :cond_6

    aget-short v2, v13, v12

    invoke-static {v2}, Lsun/awt/FontConfiguration;->getComponentFileID(S)S

    move-result v13

    move-object/from16 v17, v4

    invoke-static {v2}, Lsun/awt/FontConfiguration;->getComponentFontName(S)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lsun/awt/FontConfiguration;->getFaceNameFromComponentFontName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v10, v12

    invoke-static {v13}, Lsun/awt/FontConfiguration;->getComponentFileName(S)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lsun/awt/FontConfiguration;->mapFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v11, v12

    if-eqz v4, :cond_4

    invoke-virtual {v0, v4}, Lsun/awt/FontConfiguration;->needToSearchForFile(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    :cond_4
    invoke-static {v2}, Lsun/awt/FontConfiguration;->getComponentFontName(S)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lsun/awt/FontConfiguration;->getFileNameFromComponentFontName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v11, v12

    :cond_5
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v4, v17

    goto :goto_5

    :cond_6
    move-object/from16 v17, v4

    sget-object v2, Lsun/awt/FontConfiguration;->installedFallbackFontFiles:[Ljava/lang/String;

    if-eqz v2, :cond_7

    const/4 v2, 0x0

    :goto_6
    sget-object v4, Lsun/awt/FontConfiguration;->installedFallbackFontFiles:[Ljava/lang/String;

    array-length v13, v4

    if-ge v2, v13, :cond_7

    const/4 v13, 0x0

    aput-object v13, v10, v12

    aget-object v4, v4, v2

    aput-object v4, v11, v12

    add-int/lit8 v12, v12, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_7
    if-ge v12, v8, :cond_8

    new-array v2, v12, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v10, v4, v2, v4, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-array v8, v12, [Ljava/lang/String;

    invoke-static {v11, v4, v8, v4, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v11, v2

    move-object v2, v8

    goto :goto_7

    :cond_8
    const/4 v4, 0x0

    move-object v2, v11

    move-object v11, v10

    :goto_7
    if-eq v12, v15, :cond_a

    new-array v8, v12, [I

    invoke-static {v14, v4, v8, v4, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v10, v15

    :goto_8
    if-ge v10, v12, :cond_9

    aput v7, v8, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_8

    :cond_9
    move-object/from16 v16, v8

    goto :goto_9

    :cond_a
    move-object/from16 v16, v14

    :goto_9
    mul-int/lit8 v8, v3, 0x4

    add-int v18, v8, v5

    new-instance v19, Lsun/font/CompositeFontDescriptor;

    iget-object v8, v0, Lsun/awt/FontConfiguration;->compCoreNum:[I

    aget v10, v8, v3

    move-object/from16 v8, v19

    move-object v12, v2

    move-object v13, v6

    move-object v2, v14

    move-object/from16 v14, v16

    invoke-direct/range {v8 .. v14}, Lsun/font/CompositeFontDescriptor;-><init>(Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/String;[I[I)V

    aput-object v19, v1, v18

    add-int/lit8 v5, v5, 0x1

    move-object v14, v2

    move-object/from16 v4, v17

    goto/16 :goto_4

    :cond_b
    const/4 v4, 0x0

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_c
    return-object v1
.end method

.method public getAWTFontPathSet()Ljava/util/HashSet;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public getCompatibilityFamilyName(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    sget-object p0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, p0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "timesroman"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p0, "serif"

    return-object p0

    :cond_0
    const-string p1, "helvetica"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p0, "sansserif"

    return-object p0

    :cond_1
    const-string p1, "courier"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "monospaced"

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public getCoreScripts(I)[S
    .locals 7

    invoke-direct {p0}, Lsun/awt/FontConfiguration;->getInitELC()S

    move-result v0

    sget-object v1, Lsun/awt/FontConfiguration;->table_sequences:[S

    mul-int/lit8 v0, v0, 0x5

    add-int/2addr v0, p1

    aget-short p1, v1, v0

    invoke-static {p1}, Lsun/awt/FontConfiguration;->getShortArray(S)[S

    move-result-object p1

    iget-boolean v0, p0, Lsun/awt/FontConfiguration;->preferLocaleFonts:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lsun/awt/FontConfiguration;->reorderScripts:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lsun/awt/FontConfiguration;->reorderScripts:Ljava/util/HashMap;

    :cond_0
    array-length v0, p1

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_1

    aget-short v4, p1, v3

    invoke-static {v4}, Lsun/awt/FontConfiguration;->getScriptName(S)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    iget-object v5, p0, Lsun/awt/FontConfiguration;->reorderScripts:Ljava/util/HashMap;

    aget-short v6, p1, v3

    invoke-static {v6}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-direct {p0, v1}, Lsun/awt/FontConfiguration;->reorderSequenceForLocale([Ljava/lang/String;)V

    :goto_1
    if-ge v2, v0, :cond_2

    iget-object v3, p0, Lsun/awt/FontConfiguration;->reorderScripts:Ljava/util/HashMap;

    aget-object v4, v1, v2

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Short;

    invoke-virtual {v3}, Ljava/lang/Short;->shortValue()S

    move-result v3

    aput-short v3, p1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    return-object p1
.end method

.method public abstract getDefaultFontCharset(Ljava/lang/String;)Ljava/nio/charset/Charset;
.end method

.method public abstract getEncoding(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public getExtraFontPath()Ljava/lang/String;
    .locals 1

    sget-object p0, Lsun/awt/FontConfiguration;->head:[S

    const/16 v0, 0x10

    aget-short p0, p0, v0

    invoke-static {p0}, Lsun/awt/FontConfiguration;->getString(S)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public abstract getFaceNameFromComponentFontName(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getFallbackFamilyName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getFileNameFromComponentFontName(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public getFileNameFromPlatformName(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lsun/awt/FontConfiguration;->filenamesMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getFontDescriptors(Ljava/lang/String;I)[Lsun/awt/FontDescriptor;
    .locals 1

    .line 1
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-static {p1}, Lsun/awt/FontConfiguration;->getFontIndex(Ljava/lang/String;)I

    move-result p1

    .line 3
    invoke-static {p2}, Lsun/awt/FontConfiguration;->getStyleIndex(I)I

    move-result p2

    .line 4
    invoke-direct {p0, p1, p2}, Lsun/awt/FontConfiguration;->getFontDescriptors(II)[Lsun/awt/FontDescriptor;

    move-result-object p0

    return-object p0
.end method

.method public getInstalledFallbackFonts(Ljava/lang/String;)V
    .locals 10

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "fonts"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "fallback"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lsun/awt/FontConfiguration;->fontManager:Lsun/font/SunFontManager;

    invoke-virtual {v1}, Lsun/font/SunFontManager;->getTrueTypeFilter()Ljava/io/FilenameFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lsun/awt/FontConfiguration;->fontManager:Lsun/font/SunFontManager;

    invoke-virtual {v2}, Lsun/font/SunFontManager;->getType1Filter()Ljava/io/FilenameFilter;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v1, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    array-length v4, v1

    :goto_0
    if-nez v2, :cond_1

    move v5, v3

    goto :goto_1

    :cond_1
    array-length v5, v2

    :goto_1
    add-int v6, v4, v5

    if-nez v6, :cond_2

    return-void

    :cond_2
    new-array v6, v6, [Ljava/lang/String;

    sput-object v6, Lsun/awt/FontConfiguration;->installedFallbackFontFiles:[Ljava/lang/String;

    move v6, v3

    :goto_2
    if-ge v6, v4, :cond_3

    sget-object v7, Lsun/awt/FontConfiguration;->installedFallbackFontFiles:[Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v9, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v9, v1, v6

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_3
    :goto_3
    if-ge v3, v5, :cond_4

    sget-object v1, Lsun/awt/FontConfiguration;->installedFallbackFontFiles:[Ljava/lang/String;

    add-int v6, v3, v4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v8, v2, v3

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v1, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_4
    iget-object p0, p0, Lsun/awt/FontConfiguration;->fontManager:Lsun/font/SunFontManager;

    invoke-virtual {p0, p1}, Lsun/font/SunFontManager;->registerFontsInDir(Ljava/lang/String;)V

    :cond_5
    return-void
.end method

.method public getNumberCoreFonts()I
    .locals 7

    iget v0, p0, Lsun/awt/FontConfiguration;->numCoreFonts:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lsun/awt/FontConfiguration;->coreFontNameIDs:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    iput v0, p0, Lsun/awt/FontConfiguration;->numCoreFonts:I

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Short;

    iget-object v2, p0, Lsun/awt/FontConfiguration;->coreFontNameIDs:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Short;

    iget-object v3, p0, Lsun/awt/FontConfiguration;->fallbackFontNameIDs:Ljava/util/Set;

    invoke-interface {v3, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Short;

    move v3, v0

    move v4, v3

    :goto_0
    array-length v5, v1

    if-ge v3, v5, :cond_1

    iget-object v5, p0, Lsun/awt/FontConfiguration;->coreFontNameIDs:Ljava/util/Set;

    aget-object v6, v1, v3

    invoke-interface {v5, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x0

    aput-object v5, v1, v3

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iget v3, p0, Lsun/awt/FontConfiguration;->numCoreFonts:I

    add-int/2addr v3, v4

    new-array v3, v3, [Ljava/lang/String;

    iput-object v3, p0, Lsun/awt/FontConfiguration;->componentFonts:[Ljava/lang/String;

    move v3, v0

    :goto_2
    array-length v4, v2

    if-ge v3, v4, :cond_3

    aget-object v4, v2, v3

    invoke-virtual {v4}, Ljava/lang/Short;->shortValue()S

    move-result v4

    invoke-static {v4}, Lsun/awt/FontConfiguration;->getComponentFileID(S)S

    move-result v5

    iget-object v6, p0, Lsun/awt/FontConfiguration;->componentFonts:[Ljava/lang/String;

    invoke-static {v4}, Lsun/awt/FontConfiguration;->getComponentFontName(S)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v6, v3

    invoke-static {v5}, Lsun/awt/FontConfiguration;->getComponentFileName(S)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    iget-object v5, p0, Lsun/awt/FontConfiguration;->coreFontFileNames:Ljava/util/HashSet;

    invoke-virtual {v5, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_2
    iget-object v5, p0, Lsun/awt/FontConfiguration;->filenamesMap:Ljava/util/HashMap;

    iget-object v6, p0, Lsun/awt/FontConfiguration;->componentFonts:[Ljava/lang/String;

    aget-object v6, v6, v3

    invoke-virtual {p0, v4}, Lsun/awt/FontConfiguration;->mapFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    :goto_3
    array-length v2, v1

    if-ge v0, v2, :cond_5

    aget-object v2, v1, v0

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/Short;->shortValue()S

    move-result v2

    invoke-static {v2}, Lsun/awt/FontConfiguration;->getComponentFileID(S)S

    move-result v4

    iget-object v5, p0, Lsun/awt/FontConfiguration;->componentFonts:[Ljava/lang/String;

    invoke-static {v2}, Lsun/awt/FontConfiguration;->getComponentFontName(S)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v3

    iget-object v2, p0, Lsun/awt/FontConfiguration;->filenamesMap:Ljava/util/HashMap;

    iget-object v5, p0, Lsun/awt/FontConfiguration;->componentFonts:[Ljava/lang/String;

    aget-object v5, v5, v3

    invoke-static {v4}, Lsun/awt/FontConfiguration;->getComponentFileName(S)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lsun/awt/FontConfiguration;->mapFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_5
    iget p0, p0, Lsun/awt/FontConfiguration;->numCoreFonts:I

    return p0
.end method

.method public getPlatformFontNames()[Ljava/lang/String;
    .locals 2

    iget v0, p0, Lsun/awt/FontConfiguration;->numCoreFonts:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lsun/awt/FontConfiguration;->getNumberCoreFonts()I

    :cond_0
    iget-object p0, p0, Lsun/awt/FontConfiguration;->componentFonts:[Ljava/lang/String;

    return-object p0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    sget-object p0, Lsun/awt/FontConfiguration;->head:[S

    const/16 v0, 0x11

    aget-short p0, p0, v0

    invoke-static {p0}, Lsun/awt/FontConfiguration;->getString(S)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public declared-synchronized init()Z
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lsun/awt/FontConfiguration;->inited:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun/awt/FontConfiguration;->preferLocaleFonts:Z

    iput-boolean v0, p0, Lsun/awt/FontConfiguration;->preferPropFonts:Z

    invoke-virtual {p0}, Lsun/awt/FontConfiguration;->setFontConfiguration()V

    iget-object v0, p0, Lsun/awt/FontConfiguration;->fontConfigFile:Ljava/io/File;

    invoke-virtual {p0, v0}, Lsun/awt/FontConfiguration;->readFontConfigFile(Ljava/io/File;)V

    invoke-direct {p0}, Lsun/awt/FontConfiguration;->initFontConfig()V

    iput-boolean v1, p0, Lsun/awt/FontConfiguration;->inited:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return v1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public abstract initReorderMap()V
.end method

.method public makeAWTFontName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    return-object p1
.end method

.method public mapFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    return-object p1
.end method

.method public needToSearchForFile(Ljava/lang/String;)Z
    .locals 4

    sget-boolean v0, Lsun/font/FontUtilities;->isLinux:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lsun/awt/FontConfiguration;->existsMap:Ljava/util/HashMap;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lsun/awt/FontConfiguration;->existsMap:Ljava/util/HashMap;

    :cond_1
    iget-object v0, p0, Lsun/awt/FontConfiguration;->existsMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lsun/awt/FontConfiguration;->getNumberCoreFonts()I

    iget-object v0, p0, Lsun/awt/FontConfiguration;->coreFontFileNames:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iget-object p0, p0, Lsun/awt/FontConfiguration;->existsMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lsun/font/FontUtilities;->debugFonts()Z

    move-result p0

    if-eqz p0, :cond_3

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-ne v0, p0, :cond_3

    sget-object p0, Lsun/awt/FontConfiguration;->logger:Lsun/util/logging/NeoPlatformLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Couldn\'t locate font file "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lsun/util/logging/NeoPlatformLogger;->warning(Ljava/lang/String;)V

    :cond_3
    :goto_0
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-ne v0, p0, :cond_4

    const/4 v1, 0x1

    :cond_4
    return v1
.end method

.method public readFontConfigFile(Ljava/io/File;)V
    .locals 3

    iget-object v0, p0, Lsun/awt/FontConfiguration;->javaLib:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lsun/awt/FontConfiguration;->getInstalledFallbackFonts(Ljava/lang/String;)V

    if-eqz p1, :cond_1

    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    sget-boolean v1, Lsun/awt/FontConfiguration;->isProperties:Z

    if-eqz v1, :cond_0

    invoke-static {v0}, Lsun/awt/FontConfiguration;->loadProperties(Ljava/io/InputStream;)V

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lsun/awt/FontConfiguration;->loadBinary(Ljava/io/InputStream;)V

    :goto_0
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    invoke-static {}, Lsun/font/FontUtilities;->debugFonts()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lsun/awt/FontConfiguration;->logger:Lsun/util/logging/NeoPlatformLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Read logical font configuration from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsun/util/logging/NeoPlatformLogger;->config(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    invoke-static {}, Lsun/font/FontUtilities;->debugFonts()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lsun/awt/FontConfiguration;->logger:Lsun/util/logging/NeoPlatformLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to read logical font configuration from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lsun/util/logging/NeoPlatformLogger;->config(Ljava/lang/String;)V

    :cond_1
    :goto_1
    invoke-virtual {p0}, Lsun/awt/FontConfiguration;->getVersion()Ljava/lang/String;

    move-result-object p0

    const-string p1, "1"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    invoke-static {}, Lsun/font/FontUtilities;->debugFonts()Z

    move-result p1

    if-eqz p1, :cond_2

    sget-object p1, Lsun/awt/FontConfiguration;->logger:Lsun/util/logging/NeoPlatformLogger;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported fontconfig version: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lsun/util/logging/NeoPlatformLogger;->config(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public setFontConfiguration()V
    .locals 0

    sput-object p0, Lsun/awt/FontConfiguration;->fontConfig:Lsun/awt/FontConfiguration;

    return-void
.end method

.method public setOsNameAndVersion()V
    .locals 0

    const-string p0, "os.name"

    invoke-static {p0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lsun/awt/FontConfiguration;->osName:Ljava/lang/String;

    const-string p0, "os.version"

    invoke-static {p0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lsun/awt/FontConfiguration;->osVersion:Ljava/lang/String;

    return-void
.end method

.method public split(Ljava/lang/String;)[Ljava/lang/String;
    .locals 0

    invoke-static {p1}, Lsun/awt/FontConfiguration;->splitSequence(Ljava/lang/String;)Ljava/util/Vector;

    move-result-object p0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method
