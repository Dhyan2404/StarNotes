.class public abstract Lsun/font/SunFontManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsun/java2d/FontSupport;
.implements Lsun/font/FontManagerForSGE;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/font/SunFontManager$FamilyDescription;,
        Lsun/font/SunFontManager$FontRegistrationInfo;,
        Lsun/font/SunFontManager$TTorT1Filter;,
        Lsun/font/SunFontManager$T1Filter;,
        Lsun/font/SunFontManager$TTFilter;
    }
.end annotation


# static fields
.field protected static final CHANNELPOOLSIZE:I = 0x14

.field public static final FONTFORMAT_COMPOSITE:I = 0x3

.field public static final FONTFORMAT_NATIVE:I = 0x4

.field public static final FONTFORMAT_NONE:I = -0x1

.field public static final FONTFORMAT_TRUETYPE:I = 0x0

.field public static final FONTFORMAT_TTC:I = 0x2

.field public static final FONTFORMAT_TYPE1:I = 0x1

.field private static FONT_HANDLE_NULL:Lsun/font/Font2DHandle;

.field private static STR_ARRAY:[Ljava/lang/String;

.field private static gAltJAFont:Z

.field private static installedNames:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static jreFontDirName:Ljava/lang/String;

.field public static jreLibDirName:Ljava/lang/String;

.field static longAddresses:Z

.field protected static maxSoftRefCnt:I

.field private static missingFontFiles:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static noType1Font:Z

.field static platformFontMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lsun/font/SunFontManager$FamilyDescription;",
            ">;"
        }
    .end annotation
.end field

.field private static final regFamilyLock:Ljava/lang/Object;

.field private static systemLocale:Ljava/util/Locale;

.field private static final t1Filter:Ljava/io/FilenameFilter;

.field private static final ttFilter:Ljava/io/FilenameFilter;


# instance fields
.field private _usingAlternateComposites:Z

.field private allFamilies:[Ljava/lang/String;

.field private allFonts:[Ljava/awt/Font;

.field private badFonts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private compFonts:[Lsun/font/CompositeFont;

.field private compositeFonts:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lsun/font/CompositeFont;",
            ">;"
        }
    .end annotation
.end field

.field private createdByFamilyName:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Lsun/font/FontFamily;",
            ">;"
        }
    .end annotation
.end field

.field private createdByFullName:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Lsun/font/Font2D;",
            ">;"
        }
    .end annotation
.end field

.field protected createdFontCount:I

.field private defaultFontFileName:Ljava/lang/String;

.field private defaultFontName:Ljava/lang/String;

.field private defaultPhysicalFont:Lsun/font/PhysicalFont;

.field private final deferredFontFiles:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lsun/font/SunFontManager$FontRegistrationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private discoveredAllFonts:Z

.field private familyToFontListMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field fileCloser:Ljava/lang/Thread;

.field private fontConfig:Lsun/awt/FontConfiguration;

.field protected fontFileCache:[Lsun/font/FileFont;

.field private fontNameCache:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lsun/font/Font2D;",
            ">;"
        }
    .end annotation
.end field

.field protected fontPath:Ljava/lang/String;

.field private fontToFamilyNameMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private fontToFileMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private fontsAreRegistered:Z

.field protected fullNameToFont:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lsun/font/Font2D;",
            ">;"
        }
    .end annotation
.end field

.field private gLocalePref:Z

.field private gPropPref:Z

.field private haveCheckedUnreferencedFontFiles:Z

.field private final initialisedFonts:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lsun/font/Font2DHandle;",
            ">;"
        }
    .end annotation
.end field

.field jreOtherFontFiles:[Ljava/lang/String;

.field private lastDefaultLocale:Ljava/util/Locale;

.field private lastPoolIndex:I

.field private loaded1dot0Fonts:Z

.field loadedAllFontFiles:Z

.field loadedAllFonts:Z

.field private localeFullNamesToFont:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lsun/font/TrueTypeFont;",
            ">;"
        }
    .end annotation
.end field

.field private maxCompFont:I

.field noOtherJREFontFiles:Z

.field private pathDirs:[Ljava/lang/String;

.field private physicalFonts:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lsun/font/PhysicalFont;",
            ">;"
        }
    .end annotation
.end field

.field protected registeredFontFiles:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private registeredFonts:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lsun/font/PhysicalFont;",
            ">;"
        }
    .end annotation
.end field

.field tmpFontFiles:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private usePlatformFontMetrics:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lsun/font/Font2DHandle;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lsun/font/Font2DHandle;-><init>(Lsun/font/Font2D;)V

    sput-object v0, Lsun/font/SunFontManager;->FONT_HANDLE_NULL:Lsun/font/Font2DHandle;

    sput-object v1, Lsun/font/SunFontManager;->missingFontFiles:Ljava/util/HashSet;

    new-instance v0, Lsun/font/SunFontManager$TTFilter;

    invoke-direct {v0, v1}, Lsun/font/SunFontManager$TTFilter;-><init>(Lsun/font/SunFontManager$1;)V

    sput-object v0, Lsun/font/SunFontManager;->ttFilter:Ljava/io/FilenameFilter;

    new-instance v0, Lsun/font/SunFontManager$T1Filter;

    invoke-direct {v0, v1}, Lsun/font/SunFontManager$T1Filter;-><init>(Lsun/font/SunFontManager$1;)V

    sput-object v0, Lsun/font/SunFontManager;->t1Filter:Ljava/io/FilenameFilter;

    const/4 v0, 0x0

    new-array v2, v0, [Ljava/lang/String;

    sput-object v2, Lsun/font/SunFontManager;->STR_ARRAY:[Ljava/lang/String;

    const/16 v2, 0xa

    sput v2, Lsun/font/SunFontManager;->maxSoftRefCnt:I

    new-instance v2, Lsun/font/SunFontManager$1;

    invoke-direct {v2}, Lsun/font/SunFontManager$1;-><init>()V

    invoke-static {v2}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    sput-boolean v0, Lsun/font/SunFontManager;->gAltJAFont:Z

    sput-object v1, Lsun/font/SunFontManager;->installedNames:Ljava/util/HashSet;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lsun/font/SunFontManager;->regFamilyLock:Ljava/lang/Object;

    sput-object v1, Lsun/font/SunFontManager;->systemLocale:Ljava/util/Locale;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x14

    new-array v1, v0, [Lsun/font/FileFont;

    iput-object v1, p0, Lsun/font/SunFontManager;->fontFileCache:[Lsun/font/FileFont;

    const/4 v1, 0x0

    iput v1, p0, Lsun/font/SunFontManager;->lastPoolIndex:I

    iput v1, p0, Lsun/font/SunFontManager;->maxCompFont:I

    new-array v0, v0, [Lsun/font/CompositeFont;

    iput-object v0, p0, Lsun/font/SunFontManager;->compFonts:[Lsun/font/CompositeFont;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lsun/font/SunFontManager;->compositeFonts:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lsun/font/SunFontManager;->physicalFonts:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lsun/font/SunFontManager;->registeredFonts:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lsun/font/SunFontManager;->fullNameToFont:Ljava/util/concurrent/ConcurrentHashMap;

    iput-boolean v1, p0, Lsun/font/SunFontManager;->loaded1dot0Fonts:Z

    iput-boolean v1, p0, Lsun/font/SunFontManager;->loadedAllFonts:Z

    iput-boolean v1, p0, Lsun/font/SunFontManager;->loadedAllFontFiles:Z

    iput-boolean v1, p0, Lsun/font/SunFontManager;->noOtherJREFontFiles:Z

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lsun/font/SunFontManager;->registeredFontFiles:Ljava/util/HashSet;

    iput-boolean v1, p0, Lsun/font/SunFontManager;->discoveredAllFonts:Z

    iput-boolean v1, p0, Lsun/font/SunFontManager;->usePlatformFontMetrics:Z

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lsun/font/SunFontManager;->deferredFontFiles:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lsun/font/SunFontManager;->initialisedFonts:Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v0, 0x0

    iput-object v0, p0, Lsun/font/SunFontManager;->fontToFileMap:Ljava/util/HashMap;

    iput-object v0, p0, Lsun/font/SunFontManager;->fontToFamilyNameMap:Ljava/util/HashMap;

    iput-object v0, p0, Lsun/font/SunFontManager;->familyToFontListMap:Ljava/util/HashMap;

    iput-object v0, p0, Lsun/font/SunFontManager;->pathDirs:[Ljava/lang/String;

    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v2, p0, Lsun/font/SunFontManager;->fontNameCache:Ljava/util/concurrent/ConcurrentHashMap;

    iput-object v0, p0, Lsun/font/SunFontManager;->fileCloser:Ljava/lang/Thread;

    iput-object v0, p0, Lsun/font/SunFontManager;->tmpFontFiles:Ljava/util/Vector;

    iput v1, p0, Lsun/font/SunFontManager;->createdFontCount:I

    iput-boolean v1, p0, Lsun/font/SunFontManager;->_usingAlternateComposites:Z

    iput-boolean v1, p0, Lsun/font/SunFontManager;->gLocalePref:Z

    iput-boolean v1, p0, Lsun/font/SunFontManager;->gPropPref:Z

    iput-boolean v1, p0, Lsun/font/SunFontManager;->fontsAreRegistered:Z

    new-instance v0, Lsun/font/SunFontManager$2;

    invoke-direct {v0, p0}, Lsun/font/SunFontManager$2;-><init>(Lsun/font/SunFontManager;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    new-instance v0, Lsun/font/SunFontManager$3;

    invoke-direct {v0, p0}, Lsun/font/SunFontManager$3;-><init>(Lsun/font/SunFontManager;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lsun/font/SunFontManager;->usePlatformFontMetrics:Z

    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "Enabling platform font metrics for win32. This is an unsupported option."

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "This yields incorrect composite font metrics as reported by 1.1.x releases."

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "It is appropriate only for use by applications which do not use any Java 2"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "functionality. This property will be removed in a later release."

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static synthetic a(Lsun/font/SunFontManager;Ljava/lang/Runnable;)Ljava/lang/Void;
    .locals 0

    invoke-direct {p0, p1}, Lsun/font/SunFontManager;->lambda$createFont2D$0(Ljava/lang/Runnable;)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$1000()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lsun/font/SunFontManager;->STR_ARRAY:[Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic access$1100(Lsun/font/SunFontManager;Ljava/lang/String;ZIZZ)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lsun/font/SunFontManager;->registerFontsOnPath(Ljava/lang/String;ZIZZ)V

    return-void
.end method

.method public static synthetic access$1202(Lsun/font/SunFontManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lsun/font/SunFontManager;->discoveredAllFonts:Z

    return p1
.end method

.method public static synthetic access$200()V
    .locals 0

    invoke-static {}, Lsun/font/SunFontManager;->initIDs()V

    return-void
.end method

.method public static synthetic access$300(Lsun/font/SunFontManager;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lsun/font/SunFontManager;->badFonts:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static synthetic access$302(Lsun/font/SunFontManager;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    iput-object p1, p0, Lsun/font/SunFontManager;->badFonts:Ljava/util/ArrayList;

    return-object p1
.end method

.method public static synthetic access$400(Lsun/font/SunFontManager;)Lsun/awt/FontConfiguration;
    .locals 0

    iget-object p0, p0, Lsun/font/SunFontManager;->fontConfig:Lsun/awt/FontConfiguration;

    return-object p0
.end method

.method public static synthetic access$402(Lsun/font/SunFontManager;Lsun/awt/FontConfiguration;)Lsun/awt/FontConfiguration;
    .locals 0

    iput-object p1, p0, Lsun/font/SunFontManager;->fontConfig:Lsun/awt/FontConfiguration;

    return-object p1
.end method

.method public static synthetic access$500(Lsun/font/SunFontManager;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lsun/font/SunFontManager;->defaultFontName:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$502(Lsun/font/SunFontManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lsun/font/SunFontManager;->defaultFontName:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic access$602(Lsun/font/SunFontManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lsun/font/SunFontManager;->defaultFontFileName:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic access$700(Lsun/font/SunFontManager;Lsun/awt/FontConfiguration;Ljava/util/concurrent/ConcurrentHashMap;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lsun/font/SunFontManager;->initCompositeFonts(Lsun/awt/FontConfiguration;Ljava/util/concurrent/ConcurrentHashMap;)V

    return-void
.end method

.method public static synthetic access$900(Lsun/font/SunFontManager;)[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lsun/font/SunFontManager;->pathDirs:[Ljava/lang/String;

    return-object p0
.end method

.method private addCompositeToFontList(Lsun/font/CompositeFont;I)V
    .locals 2

    invoke-static {}, Lsun/font/FontUtilities;->isLogging()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Add to Family "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lsun/font/Font2D;->familyName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", Font "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lsun/font/Font2D;->fullName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " rank="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lsun/font/FontUtilities;->logInfo(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p1, p2}, Lsun/font/Font2D;->setRank(I)V

    iget-object v0, p0, Lsun/font/SunFontManager;->compositeFonts:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v1, p1, Lsun/font/Font2D;->fullName:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lsun/font/SunFontManager;->fullNameToFont:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v0, p1, Lsun/font/Font2D;->fullName:Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p1, Lsun/font/Font2D;->familyName:Ljava/lang/String;

    invoke-static {p0}, Lsun/font/FontFamily;->getFamily(Ljava/lang/String;)Lsun/font/FontFamily;

    move-result-object p0

    if-nez p0, :cond_1

    new-instance p0, Lsun/font/FontFamily;

    iget-object v0, p1, Lsun/font/Font2D;->familyName:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, p2}, Lsun/font/FontFamily;-><init>(Ljava/lang/String;ZI)V

    :cond_1
    iget p2, p1, Lsun/font/Font2D;->style:I

    invoke-virtual {p0, p1, p2}, Lsun/font/FontFamily;->setFont(Lsun/font/Font2D;I)V

    return-void
.end method

.method private addDirFonts(Ljava/lang/String;Ljava/io/File;Ljava/io/FilenameFilter;IZIZZ)V
    .locals 15

    move-object v0, p0

    invoke-virtual/range {p2 .. p3}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_a

    array-length v2, v1

    if-nez v2, :cond_0

    goto/16 :goto_6

    :cond_0
    array-length v2, v1

    new-array v2, v2, [Ljava/lang/String;

    array-length v3, v1

    new-array v3, v3, [[Ljava/lang/String;

    const/4 v4, 0x0

    move v5, v4

    move v6, v5

    :goto_0
    array-length v7, v1

    if-ge v6, v7, :cond_9

    new-instance v7, Ljava/io/File;

    aget-object v8, v1, v6

    move-object/from16 v9, p2

    invoke-direct {v7, v9, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v8, 0x0

    if-eqz p8, :cond_1

    :try_start_0
    invoke-virtual {v7}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v7
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    :cond_1
    move-object v7, v8

    :goto_1
    if-nez v7, :cond_2

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v10, p1

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v11, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v11, v1, v6

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_2

    :cond_2
    move-object/from16 v10, p1

    :goto_2
    iget-object v11, v0, Lsun/font/SunFontManager;->registeredFontFiles:Ljava/util/HashSet;

    invoke-virtual {v11, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    goto/16 :goto_5

    :cond_3
    iget-object v11, v0, Lsun/font/SunFontManager;->badFonts:Ljava/util/ArrayList;

    if-eqz v11, :cond_4

    invoke-virtual {v11, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-static {}, Lsun/font/FontUtilities;->debugFonts()Z

    move-result v8

    if-eqz v8, :cond_8

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "skip bad font "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lsun/font/FontUtilities;->logWarning(Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_4
    iget-object v11, v0, Lsun/font/SunFontManager;->registeredFontFiles:Ljava/util/HashSet;

    invoke-virtual {v11, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lsun/font/FontUtilities;->debugFonts()Z

    move-result v11

    if-eqz v11, :cond_7

    invoke-static {}, Lsun/font/FontUtilities;->getLogger()Lsun/util/logging/NeoPlatformLogger;

    move-result-object v11

    sget-object v12, Lsun/util/logging/NeoPlatformLogger$Level;->INFO:Lsun/util/logging/NeoPlatformLogger$Level;

    invoke-virtual {v11, v12}, Lsun/util/logging/NeoPlatformLogger;->isLoggable(Lsun/util/logging/NeoPlatformLogger$Level;)Z

    move-result v11

    if-eqz v11, :cond_7

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Registering font "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v7, v8}, Lsun/font/SunFontManager;->getNativeNames(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    if-nez v12, :cond_5

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " with no native name"

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    goto :goto_4

    :cond_5
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " with native name(s) "

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v11, v12, v4

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v13, 0x1

    :goto_3
    array-length v14, v12

    if-ge v13, v14, :cond_6

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ", "

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v11, v12, v13

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    :cond_6
    :goto_4
    invoke-static {v11}, Lsun/font/FontUtilities;->logInfo(Ljava/lang/String;)V

    :cond_7
    aput-object v7, v2, v5

    add-int/lit8 v11, v5, 0x1

    invoke-virtual {p0, v7, v8}, Lsun/font/SunFontManager;->getNativeNames(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v5

    move v5, v11

    :cond_8
    :goto_5
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    :cond_9
    move-object v0, p0

    move-object v1, v2

    move-object v2, v3

    move v3, v5

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    invoke-virtual/range {v0 .. v7}, Lsun/font/SunFontManager;->registerFonts([Ljava/lang/String;[[Ljava/lang/String;IIZIZ)V

    :cond_a
    :goto_6
    return-void
.end method

.method private declared-synchronized checkForUnreferencedFontFiles()V
    .locals 12

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lsun/font/SunFontManager;->haveCheckedUnreferencedFontFiles:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lsun/font/SunFontManager;->haveCheckedUnreferencedFontFiles:Z

    sget-boolean v0, Lsun/font/FontUtilities;->isWindows:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_1

    monitor-exit p0

    return-void

    :cond_1
    :try_start_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lsun/font/SunFontManager;->fontToFileMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lsun/font/SunFontManager;->getFontFilesFromPath(Z)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    move-object v5, v4

    move-object v6, v5

    move-object v7, v6

    :goto_1
    if-ge v1, v3, :cond_8

    aget-object v8, v2, v1

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_7

    invoke-static {}, Lsun/font/FontUtilities;->isLogging()Z

    move-result v9

    if-eqz v9, :cond_3

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Found non-registry file : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lsun/font/FontUtilities;->logInfo(Ljava/lang/String;)V

    :cond_3
    invoke-direct {p0, v8}, Lsun/font/SunFontManager;->getPathName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lsun/font/SunFontManager;->registerFontFile(Ljava/lang/String;)Lsun/font/PhysicalFont;

    move-result-object v9

    if-nez v9, :cond_4

    goto :goto_3

    :cond_4
    if-nez v5, :cond_5

    new-instance v5, Ljava/util/HashMap;

    iget-object v6, p0, Lsun/font/SunFontManager;->fontToFileMap:Ljava/util/HashMap;

    invoke-direct {v5, v6}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    new-instance v7, Ljava/util/HashMap;

    iget-object v6, p0, Lsun/font/SunFontManager;->fontToFamilyNameMap:Ljava/util/HashMap;

    invoke-direct {v7, v6}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    new-instance v6, Ljava/util/HashMap;

    iget-object v10, p0, Lsun/font/SunFontManager;->familyToFontListMap:Ljava/util/HashMap;

    invoke-direct {v6, v10}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    :cond_5
    invoke-virtual {v9, v4}, Lsun/font/Font2D;->getFontName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v4}, Lsun/font/Font2D;->getFamilyName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v10, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v5, v10, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v6, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    if-nez v8, :cond_6

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    goto :goto_2

    :cond_6
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v8, v9

    :goto_2
    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v6, v11, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_8
    if-eqz v5, :cond_9

    iput-object v5, p0, Lsun/font/SunFontManager;->fontToFileMap:Ljava/util/HashMap;

    iput-object v6, p0, Lsun/font/SunFontManager;->familyToFontListMap:Ljava/util/HashMap;

    iput-object v7, p0, Lsun/font/SunFontManager;->fontToFamilyNameMap:Ljava/util/HashMap;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_9
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static dotStyleStr(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const-string p0, ".plain"

    return-object p0

    :cond_0
    const-string p0, ".bolditalic"

    return-object p0

    :cond_1
    const-string p0, ".italic"

    return-object p0

    :cond_2
    const-string p0, ".bold"

    return-object p0
.end method

.method private findDeferredFont(Ljava/lang/String;I)Lsun/font/PhysicalFont;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lsun/font/SunFontManager;->findJREDeferredFont(Ljava/lang/String;I)Lsun/font/PhysicalFont;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-direct {p0, p1, p2}, Lsun/font/SunFontManager;->findOtherDeferredFont(Ljava/lang/String;I)Lsun/font/PhysicalFont;

    move-result-object p0

    return-object p0
.end method

.method private findFont2DAllLocales(Ljava/lang/String;I)Lsun/font/Font2D;
    .locals 2

    invoke-static {}, Lsun/font/FontUtilities;->isLogging()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Searching localised font names for:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lsun/font/FontUtilities;->logInfo(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lsun/font/SunFontManager;->localeFullNamesToFont:Ljava/util/HashMap;

    if-nez v0, :cond_1

    invoke-direct {p0}, Lsun/font/SunFontManager;->loadLocaleNames()V

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lsun/font/FontFamily;->getLocaleFamily(Ljava/lang/String;)Lsun/font/FontFamily;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0, p2}, Lsun/font/FontFamily;->getFont(I)Lsun/font/Font2D;

    move-result-object v1

    if-nez v1, :cond_2

    invoke-virtual {v0, p2}, Lsun/font/FontFamily;->getClosestStyle(I)Lsun/font/Font2D;

    move-result-object v1

    :cond_2
    if-eqz v1, :cond_3

    return-object v1

    :cond_3
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lsun/font/SunFontManager;->localeFullNamesToFont:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lsun/font/Font2D;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_7

    iget p0, p1, Lsun/font/Font2D;->style:I

    if-eq p0, p2, :cond_7

    if-nez p2, :cond_4

    goto :goto_1

    :cond_4
    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Lsun/font/Font2D;->getFamilyName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lsun/font/FontFamily;->getFamily(Ljava/lang/String;)Lsun/font/FontFamily;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {v0, p2}, Lsun/font/FontFamily;->getFont(I)Lsun/font/Font2D;

    move-result-object v1

    if-eqz v1, :cond_5

    return-object v1

    :cond_5
    invoke-virtual {v0, p2}, Lsun/font/FontFamily;->getClosestStyle(I)Lsun/font/Font2D;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {v0, p2}, Lsun/font/Font2D;->canDoStyle(I)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_0

    :cond_6
    move-object p0, v0

    :goto_0
    return-object p0

    :cond_7
    :goto_1
    return-object p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private findFontFromPlatform(Ljava/lang/String;I)Lsun/font/Font2D;
    .locals 13

    invoke-direct {p0}, Lsun/font/SunFontManager;->getFullNameToFileMap()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lsun/font/SunFontManager;->fontToFamilyNameMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v3, p0, Lsun/font/SunFontManager;->fontToFileMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iget-object v3, p0, Lsun/font/SunFontManager;->familyToFontListMap:Ljava/util/HashMap;

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lsun/font/SunFontManager;->familyToFontListMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Ljava/util/ArrayList;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object v0, p0, Lsun/font/SunFontManager;->fontToFamilyNameMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    :cond_2
    move-object p1, v1

    :goto_0
    if-eqz v3, :cond_c

    if-nez v0, :cond_3

    goto/16 :goto_4

    :cond_3
    sget-object v4, Lsun/font/SunFontManager;->STR_ARRAY:[Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    array-length v4, v3

    if-nez v4, :cond_4

    return-object v1

    :cond_4
    move v4, v2

    :goto_1
    array-length v5, v3

    if-ge v4, v5, :cond_7

    aget-object v5, v3, v4

    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v5, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lsun/font/SunFontManager;->fontToFileMap:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-nez v5, :cond_6

    invoke-static {}, Lsun/font/FontUtilities;->isLogging()Z

    move-result p0

    if-eqz p0, :cond_5

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Platform lookup : No file for font "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p1, v3, v4

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " in family "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lsun/font/FontUtilities;->logInfo(Ljava/lang/String;)V

    :cond_5
    return-object v1

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_7
    if-eqz p1, :cond_8

    invoke-direct {p0, p1}, Lsun/font/SunFontManager;->getPathName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x3

    move-object v5, p0

    invoke-virtual/range {v5 .. v10}, Lsun/font/SunFontManager;->registerFontFile(Ljava/lang/String;[Ljava/lang/String;IZI)Lsun/font/PhysicalFont;

    move-result-object v4

    goto :goto_2

    :cond_8
    move-object v4, v1

    :goto_2
    array-length v5, v3

    if-ge v2, v5, :cond_a

    aget-object v5, v3, v2

    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v5, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lsun/font/SunFontManager;->fontToFileMap:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-eqz p1, :cond_9

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    goto :goto_3

    :cond_9
    invoke-direct {p0, v5}, Lsun/font/SunFontManager;->getPathName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x3

    move-object v7, p0

    invoke-virtual/range {v7 .. v12}, Lsun/font/SunFontManager;->registerFontFile(Ljava/lang/String;[Ljava/lang/String;IZI)Lsun/font/PhysicalFont;

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_a
    invoke-static {v0}, Lsun/font/FontFamily;->getFamily(Ljava/lang/String;)Lsun/font/FontFamily;

    move-result-object p0

    if-eqz v4, :cond_b

    iget p1, v4, Lsun/font/Font2D;->style:I

    or-int/2addr p2, p1

    :cond_b
    if-eqz p0, :cond_c

    invoke-virtual {p0, p2}, Lsun/font/FontFamily;->getFont(I)Lsun/font/Font2D;

    move-result-object v1

    if-nez v1, :cond_c

    invoke-virtual {p0, p2}, Lsun/font/FontFamily;->getClosestStyle(I)Lsun/font/Font2D;

    move-result-object v1

    :cond_c
    :goto_4
    return-object v1
.end method

.method private findOtherDeferredFont(Ljava/lang/String;I)Lsun/font/PhysicalFont;
    .locals 4

    iget-object v0, p0, Lsun/font/SunFontManager;->deferredFontFiles:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Lsun/font/SunFontManager;->initialiseDeferredFont(Ljava/lang/String;)Lsun/font/PhysicalFont;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, v2}, Lsun/font/Font2D;->getFontName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v1, v2}, Lsun/font/Font2D;->getFamilyName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_1
    iget v2, v1, Lsun/font/Font2D;->style:I

    if-ne v2, p2, :cond_0

    return-object v1

    :cond_2
    return-object v2
.end method

.method private static fontSupportsEncoding(Ljava/awt/Font;Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0}, Lsun/font/FontUtilities;->getFont2D(Ljava/awt/Font;)Lsun/font/Font2D;

    move-result-object p0

    invoke-virtual {p0, p1}, Lsun/font/Font2D;->supportsEncoding(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private getFontFilesFromPath(Z)[Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_0

    sget-object p1, Lsun/font/SunFontManager;->ttFilter:Ljava/io/FilenameFilter;

    goto :goto_0

    :cond_0
    new-instance p1, Lsun/font/SunFontManager$TTorT1Filter;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lsun/font/SunFontManager$TTorT1Filter;-><init>(Lsun/font/SunFontManager$1;)V

    :goto_0
    new-instance v0, Lsun/font/SunFontManager$4;

    invoke-direct {v0, p0, p1}, Lsun/font/SunFontManager$4;-><init>(Lsun/font/SunFontManager;Ljava/io/FilenameFilter;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method private declared-synchronized getFullNameToFileMap()Ljava/util/HashMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lsun/font/SunFontManager;->fontToFileMap:Ljava/util/HashMap;

    if-nez v0, :cond_1

    sget-boolean v0, Lsun/font/SunFontManager;->noType1Font:Z

    invoke-virtual {p0, v0}, Lsun/font/SunFontManager;->getPlatformFontDirs(Z)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lsun/font/SunFontManager;->pathDirs:[Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lsun/font/SunFontManager;->fontToFileMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lsun/font/SunFontManager;->fontToFamilyNameMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lsun/font/SunFontManager;->familyToFontListMap:Ljava/util/HashMap;

    iget-object v1, p0, Lsun/font/SunFontManager;->fontToFileMap:Ljava/util/HashMap;

    iget-object v2, p0, Lsun/font/SunFontManager;->fontToFamilyNameMap:Ljava/util/HashMap;

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v1, v2, v0, v3}, Lsun/font/SunFontManager;->populateFontFileNameMap(Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/Locale;)V

    sget-boolean v0, Lsun/font/FontUtilities;->isWindows:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lsun/font/SunFontManager;->resolveWindowsFonts()V

    :cond_0
    invoke-static {}, Lsun/font/FontUtilities;->isLogging()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lsun/font/SunFontManager;->logPlatformFontInfo()V

    :cond_1
    iget-object v0, p0, Lsun/font/SunFontManager;->fontToFileMap:Ljava/util/HashMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static getInstalledNames()Ljava/util/HashSet;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v0, Lsun/font/SunFontManager;->installedNames:Ljava/util/HashSet;

    if-nez v0, :cond_2

    invoke-static {}, Lsun/font/SunFontManager;->getSystemStartupLocale()Ljava/util/Locale;

    move-result-object v0

    invoke-static {}, Lsun/font/SunFontManager;->getInstance()Lsun/font/SunFontManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lsun/font/SunFontManager;->getInstalledFontFamilyNames(Ljava/util/Locale;)[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lsun/font/SunFontManager;->getAllInstalledFonts()[Ljava/awt/Font;

    move-result-object v1

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    array-length v6, v2

    if-ge v5, v6, :cond_0

    aget-object v6, v2, v5

    invoke-virtual {v6, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    array-length v2, v1

    if-ge v4, v2, :cond_1

    aget-object v2, v1, v4

    invoke-virtual {v2, v0}, Ljava/awt/Font;->getFontName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    sput-object v3, Lsun/font/SunFontManager;->installedNames:Ljava/util/HashSet;

    :cond_2
    sget-object v0, Lsun/font/SunFontManager;->installedNames:Ljava/util/HashSet;

    return-object v0
.end method

.method public static getInstance()Lsun/font/SunFontManager;
    .locals 1

    invoke-static {}, Lsun/font/FontManagerFactory;->getInstance()Lsun/font/FontManager;

    move-result-object v0

    check-cast v0, Lsun/font/SunFontManager;

    return-object v0
.end method

.method public static final getJDKFontDir()Ljava/lang/String;
    .locals 1

    sget-object v0, Lsun/font/SunFontManager;->jreFontDirName:Ljava/lang/String;

    return-object v0
.end method

.method private getPathName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isAbsolute()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    iget-object v0, p0, Lsun/font/SunFontManager;->pathDirs:[Ljava/lang/String;

    array-length v0, v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lsun/font/SunFontManager;->pathDirs:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object p0, p0, v1

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance v0, Lsun/font/SunFontManager$6;

    invoke-direct {v0, p0, p1}, Lsun/font/SunFontManager$6;-><init>(Lsun/font/SunFontManager;Ljava/lang/String;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_2

    return-object p0

    :cond_2
    return-object p1
.end method

.method private static getSystemStartupLocale()Ljava/util/Locale;
    .locals 1

    sget-object v0, Lsun/font/SunFontManager;->systemLocale:Ljava/util/Locale;

    if-nez v0, :cond_0

    new-instance v0, Lsun/font/SunFontManager$12;

    invoke-direct {v0}, Lsun/font/SunFontManager$12;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Locale;

    sput-object v0, Lsun/font/SunFontManager;->systemLocale:Ljava/util/Locale;

    :cond_0
    sget-object v0, Lsun/font/SunFontManager;->systemLocale:Ljava/util/Locale;

    return-object v0
.end method

.method private initCompositeFonts(Lsun/awt/FontConfiguration;Ljava/util/concurrent/ConcurrentHashMap;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lsun/awt/FontConfiguration;",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lsun/font/Font2D;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lsun/font/FontUtilities;->isLogging()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Initialising composite fonts"

    invoke-static {v0}, Lsun/font/FontUtilities;->logInfo(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p1}, Lsun/awt/FontConfiguration;->getNumberCoreFonts()I

    move-result v0

    invoke-virtual {p1}, Lsun/awt/FontConfiguration;->getPlatformFontNames()[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_4

    aget-object v4, v1, v3

    invoke-virtual {p0, v4}, Lsun/font/SunFontManager;->getFileNameFromPlatformName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_1

    :cond_1
    if-ge v3, v0, :cond_2

    invoke-virtual {p0, v4}, Lsun/font/SunFontManager;->addFontToPlatformFontPath(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p0, v5, v4}, Lsun/font/SunFontManager;->getNativeNames(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    move-object v11, v5

    move-object v5, v4

    move-object v4, v11

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v5, 0x0

    :goto_2
    const/4 v6, 0x2

    const/4 v7, 0x1

    invoke-virtual {p0, v4, v5, v6, v7}, Lsun/font/SunFontManager;->registerFontFile(Ljava/lang/String;[Ljava/lang/String;IZ)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lsun/font/SunFontManager;->registerPlatformFontsUsedByFontConfiguration()V

    invoke-virtual {p1}, Lsun/awt/FontConfiguration;->get2DCompositeFontInfo()[Lsun/font/CompositeFontDescriptor;

    move-result-object p1

    move v0, v2

    :goto_3
    array-length v1, p1

    if-ge v0, v1, :cond_9

    aget-object v1, p1, v0

    invoke-virtual {v1}, Lsun/font/CompositeFontDescriptor;->getComponentFileNames()[Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Lsun/font/CompositeFontDescriptor;->getComponentFaceNames()[Ljava/lang/String;

    move-result-object v6

    sget-object v3, Lsun/font/SunFontManager;->missingFontFiles:Ljava/util/HashSet;

    if-eqz v3, :cond_6

    move v3, v2

    :goto_4
    array-length v4, v5

    if-ge v3, v4, :cond_6

    sget-object v4, Lsun/font/SunFontManager;->missingFontFiles:Ljava/util/HashSet;

    aget-object v7, v5, v3

    invoke-virtual {v4, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {p0}, Lsun/font/SunFontManager;->getDefaultFontFile()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v5, v3

    invoke-virtual {p0}, Lsun/font/SunFontManager;->getDefaultFontFaceName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v6, v3

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_6
    if-eqz p2, :cond_7

    invoke-virtual {v1}, Lsun/font/CompositeFontDescriptor;->getFaceName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lsun/font/CompositeFontDescriptor;->getCoreComponentCount()I

    move-result v7

    invoke-virtual {v1}, Lsun/font/CompositeFontDescriptor;->getExclusionRanges()[I

    move-result-object v8

    invoke-virtual {v1}, Lsun/font/CompositeFontDescriptor;->getExclusionRangeLimits()[I

    move-result-object v9

    const/4 v10, 0x1

    move-object v4, v5

    move-object v5, v6

    move v6, v7

    move-object v7, v8

    move-object v8, v9

    move v9, v10

    move-object v10, p2

    invoke-static/range {v3 .. v10}, Lsun/font/SunFontManager;->registerCompositeFont(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;I[I[IZLjava/util/concurrent/ConcurrentHashMap;)V

    goto :goto_5

    :cond_7
    invoke-virtual {v1}, Lsun/font/CompositeFontDescriptor;->getFaceName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lsun/font/CompositeFontDescriptor;->getCoreComponentCount()I

    move-result v7

    invoke-virtual {v1}, Lsun/font/CompositeFontDescriptor;->getExclusionRanges()[I

    move-result-object v8

    invoke-virtual {v1}, Lsun/font/CompositeFontDescriptor;->getExclusionRangeLimits()[I

    move-result-object v9

    const/4 v10, 0x1

    move-object v3, p0

    invoke-virtual/range {v3 .. v10}, Lsun/font/SunFontManager;->registerCompositeFont(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;I[I[IZ)V

    :goto_5
    invoke-static {}, Lsun/font/FontUtilities;->debugFonts()Z

    move-result v3

    if-eqz v3, :cond_8

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "registered "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lsun/font/CompositeFontDescriptor;->getFaceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lsun/font/FontUtilities;->logInfo(Ljava/lang/String;)V

    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_3

    :cond_9
    return-void
.end method

.method private static initIDs()V
    .locals 0

    return-void
.end method

.method private isNameForRegisteredFile(Ljava/lang/String;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lsun/font/SunFontManager;->getFileNameForFontName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p0, p0, Lsun/font/SunFontManager;->registeredFontFiles:Ljava/util/HashSet;

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$createFont2D$0(Ljava/lang/Runnable;)Ljava/lang/Void;
    .locals 7

    invoke-static {}, Lsun/awt/util/ThreadGroupUtils;->getRootThreadGroup()Ljava/lang/ThreadGroup;

    move-result-object v1

    new-instance v6, Ljava/lang/Thread;

    const-string v3, "FileCloser"

    const-wide/16 v4, 0x0

    move-object v0, v6

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;J)V

    iput-object v6, p0, Lsun/font/SunFontManager;->fileCloser:Ljava/lang/Thread;

    const/4 p1, 0x0

    invoke-virtual {v6, p1}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    iget-object p0, p0, Lsun/font/SunFontManager;->fileCloser:Ljava/lang/Thread;

    invoke-virtual {v0, p0}, Ljava/lang/Runtime;->addShutdownHook(Ljava/lang/Thread;)V

    return-object p1
.end method

.method private declared-synchronized loadLocaleNames()V
    .locals 8

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lsun/font/SunFontManager;->localeFullNamesToFont:Ljava/util/HashMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lsun/font/SunFontManager;->localeFullNamesToFont:Ljava/util/HashMap;

    invoke-virtual {p0}, Lsun/font/SunFontManager;->getRegisteredFonts()[Lsun/font/Font2D;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_3

    aget-object v3, v0, v2

    instance-of v4, v3, Lsun/font/TrueTypeFont;

    if-eqz v4, :cond_2

    check-cast v3, Lsun/font/TrueTypeFont;

    invoke-virtual {v3}, Lsun/font/TrueTypeFont;->getAllFullNames()[Ljava/lang/String;

    move-result-object v4

    move v5, v1

    :goto_1
    array-length v6, v4

    if-ge v5, v6, :cond_1

    iget-object v6, p0, Lsun/font/SunFontManager;->localeFullNamesToFont:Ljava/util/HashMap;

    aget-object v7, v4, v5

    invoke-virtual {v6, v7, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    iget-object v4, v3, Lsun/font/Font2D;->familyName:Ljava/lang/String;

    invoke-static {v4}, Lsun/font/FontFamily;->getFamily(Ljava/lang/String;)Lsun/font/FontFamily;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Lsun/font/TrueTypeFont;->getAllFamilyNames()[Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lsun/font/FontFamily;->addLocaleNames(Lsun/font/FontFamily;[Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private logPlatformFontInfo()V
    .locals 6

    invoke-static {}, Lsun/font/FontUtilities;->getLogger()Lsun/util/logging/NeoPlatformLogger;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lsun/font/SunFontManager;->pathDirs:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fontdir="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lsun/font/SunFontManager;->pathDirs:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lsun/util/logging/NeoPlatformLogger;->info(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lsun/font/SunFontManager;->fontToFileMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v3, "font="

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " file="

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lsun/font/SunFontManager;->fontToFileMap:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lsun/util/logging/NeoPlatformLogger;->info(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lsun/font/SunFontManager;->fontToFamilyNameMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " family="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lsun/font/SunFontManager;->fontToFamilyNameMap:Ljava/util/HashMap;

    invoke-virtual {v5, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lsun/util/logging/NeoPlatformLogger;->info(Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    iget-object v1, p0, Lsun/font/SunFontManager;->familyToFontListMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "family="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " fonts="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lsun/font/SunFontManager;->familyToFontListMap:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lsun/util/logging/NeoPlatformLogger;->info(Ljava/lang/String;)V

    goto :goto_3

    :cond_3
    return-void
.end method

.method public static registerCompositeFont(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;I[I[IZLjava/util/concurrent/ConcurrentHashMap;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "I[I[IZ",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lsun/font/Font2D;",
            ">;)V"
        }
    .end annotation

    move-object v9, p0

    move-object/from16 v10, p7

    .line 6
    new-instance v11, Lsun/font/CompositeFont;

    .line 7
    invoke-static {}, Lsun/font/SunFontManager;->getInstance()Lsun/font/SunFontManager;

    move-result-object v8

    move-object v0, v11

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    invoke-direct/range {v0 .. v8}, Lsun/font/CompositeFont;-><init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;I[I[IZLsun/font/SunFontManager;)V

    .line 8
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsun/font/Font2D;

    .line 9
    instance-of v2, v1, Lsun/font/CompositeFont;

    if-eqz v2, :cond_0

    .line 10
    iget-object v1, v1, Lsun/font/Font2D;->handle:Lsun/font/Font2DHandle;

    iput-object v11, v1, Lsun/font/Font2DHandle;->font2D:Lsun/font/Font2D;

    .line 11
    :cond_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0, v11}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private registerFontFile(Ljava/lang/String;)Lsun/font/PhysicalFont;
    .locals 10

    .line 14
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isAbsolute()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lsun/font/SunFontManager;->registeredFonts:Ljava/util/concurrent/ConcurrentHashMap;

    .line 15
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 16
    sget-object v0, Lsun/font/SunFontManager;->ttFilter:Ljava/io/FilenameFilter;

    invoke-interface {v0, v1, p1}, Ljava/io/FilenameFilter;->accept(Ljava/io/File;Ljava/lang/String;)Z

    move-result v0

    const/4 v2, -0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/4 v3, 0x3

    :goto_0
    move v7, v0

    goto :goto_1

    .line 17
    :cond_0
    sget-object v0, Lsun/font/SunFontManager;->t1Filter:Ljava/io/FilenameFilter;

    .line 18
    invoke-interface {v0, v1, p1}, Ljava/io/FilenameFilter;->accept(Ljava/io/File;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    const/4 v3, 0x4

    goto :goto_0

    :cond_1
    const/4 v3, 0x6

    move v7, v2

    :goto_1
    move v9, v3

    if-ne v7, v2, :cond_2

    return-object v1

    :cond_2
    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v4, p0

    move-object v5, p1

    .line 19
    invoke-virtual/range {v4 .. v9}, Lsun/font/SunFontManager;->registerFontFile(Ljava/lang/String;[Ljava/lang/String;IZI)Lsun/font/PhysicalFont;

    move-result-object p0

    return-object p0

    :cond_3
    return-object v1
.end method

.method private registerFontsOnPath(Ljava/lang/String;ZIZZ)V
    .locals 7

    new-instance v0, Ljava/util/StringTokenizer;

    sget-object v1, Ljava/io/File;->pathSeparator:Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    :try_start_0
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    move-object v1, p0

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Lsun/font/SunFontManager;->registerFontsInDir(Ljava/lang/String;ZIZZ)V
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_0
    return-void
.end method

.method private removeFromCache(Lsun/font/Font2D;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lsun/font/SunFontManager;->fontNameCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    sget-object v1, Lsun/font/SunFontManager;->STR_ARRAY:[Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lsun/font/SunFontManager;->fontNameCache:Ljava/util/concurrent/ConcurrentHashMap;

    aget-object v3, v0, v1

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_1

    iget-object v2, p0, Lsun/font/SunFontManager;->fontNameCache:Ljava/util/concurrent/ConcurrentHashMap;

    aget-object v3, v0, v1

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private resolveFontFiles(Ljava/util/HashSet;Ljava/util/ArrayList;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :catch_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    :try_start_0
    invoke-direct {p0, v1}, Lsun/font/SunFontManager;->getPathName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lsun/font/FontUtilities;->isLogging()Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Trying to resolve file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lsun/font/FontUtilities;->logInfo(Ljava/lang/String;)V

    :cond_0
    const/4 v3, 0x0

    move v4, v3

    :goto_1
    new-instance v5, Lsun/font/TrueTypeFont;

    add-int/lit8 v6, v4, 0x1

    const/4 v7, 0x0

    invoke-direct {v5, v2, v7, v4, v3}, Lsun/font/TrueTypeFont;-><init>(Ljava/lang/String;Ljava/lang/Object;IZ)V

    invoke-virtual {v5, v0}, Lsun/font/TrueTypeFont;->getFontName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v7, p0, Lsun/font/SunFontManager;->fontToFileMap:Ljava/util/HashMap;

    invoke-virtual {v7, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-static {}, Lsun/font/FontUtilities;->isLogging()Z

    move-result v7

    if-eqz v7, :cond_1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Resolved absent registry entry for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " located in "

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lsun/font/FontUtilities;->logInfo(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v5}, Lsun/font/TrueTypeFont;->getFontCount()I

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-lt v6, v4, :cond_2

    goto :goto_0

    :cond_2
    move v4, v6

    goto :goto_1

    :cond_3
    return-void
.end method

.method private resolveWindowsFonts()V
    .locals 10

    iget-object v0, p0, Lsun/font/SunFontManager;->fontToFamilyNameMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lsun/font/SunFontManager;->fontToFileMap:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-nez v3, :cond_0

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_1

    const-string v4, " "

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lsun/font/SunFontManager;->fontToFileMap:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_0

    iget-object v5, p0, Lsun/font/SunFontManager;->fontToFamilyNameMap:Ljava/util/HashMap;

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lsun/font/SunFontManager;->fontToFileMap:Ljava/util/HashMap;

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lsun/font/SunFontManager;->fontToFileMap:Ljava/util/HashMap;

    invoke-virtual {v3, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    const-string v3, "marlett"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lsun/font/SunFontManager;->fontToFileMap:Ljava/util/HashMap;

    const-string v4, "marlett.ttf"

    invoke-virtual {v3, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    const-string v3, "david"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v2, p0, Lsun/font/SunFontManager;->fontToFileMap:Ljava/util/HashMap;

    const-string v4, "david regular"

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v5, p0, Lsun/font/SunFontManager;->fontToFileMap:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, p0, Lsun/font/SunFontManager;->fontToFileMap:Ljava/util/HashMap;

    invoke-virtual {v4, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    if-nez v1, :cond_4

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :cond_4
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    if-eqz v1, :cond_e

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object v2, p0, Lsun/font/SunFontManager;->fontToFileMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    iget-object v3, p0, Lsun/font/SunFontManager;->fontToFamilyNameMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_6
    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Lsun/font/SunFontManager;->fontToFileMap:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_7
    invoke-direct {p0, v0, v1}, Lsun/font/SunFontManager;->resolveFontFiles(Ljava/util/HashSet;Ljava/util/ArrayList;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-lez v2, :cond_b

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v5, p0, Lsun/font/SunFontManager;->fontToFileMap:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_8
    invoke-direct {p0, v4}, Lsun/font/SunFontManager;->getFontFilesFromPath(Z)[Ljava/lang/String;

    move-result-object v5

    array-length v6, v5

    move v7, v3

    :goto_4
    if-ge v7, v6, :cond_a

    aget-object v8, v5, v7

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_9

    invoke-virtual {v0, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_9
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_a
    invoke-direct {p0, v0, v1}, Lsun/font/SunFontManager;->resolveFontFiles(Ljava/util/HashSet;Ljava/util/ArrayList;)V

    :cond_b
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_e

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_5
    if-ge v3, v0, :cond_e

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v5, p0, Lsun/font/SunFontManager;->fontToFamilyNameMap:Ljava/util/HashMap;

    invoke-virtual {v5, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-eqz v5, :cond_c

    iget-object v6, p0, Lsun/font/SunFontManager;->familyToFontListMap:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    if-eqz v6, :cond_c

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-gt v6, v4, :cond_c

    iget-object v6, p0, Lsun/font/SunFontManager;->familyToFontListMap:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c
    iget-object v5, p0, Lsun/font/SunFontManager;->fontToFamilyNameMap:Ljava/util/HashMap;

    invoke-virtual {v5, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lsun/font/FontUtilities;->isLogging()Z

    move-result v5

    if-eqz v5, :cond_d

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No file for font:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lsun/font/FontUtilities;->logInfo(Ljava/lang/String;)V

    :cond_d
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_e
    return-void
.end method


# virtual methods
.method public addFontToPlatformFontPath(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public addNativeFontFamilyNames(Ljava/util/TreeMap;Ljava/util/Locale;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Locale;",
            ")V"
        }
    .end annotation

    return-void
.end method

.method public addToFontList(Lsun/font/PhysicalFont;I)Lsun/font/PhysicalFont;
    .locals 8

    iget-object v0, p1, Lsun/font/Font2D;->fullName:Ljava/lang/String;

    iget-object v1, p1, Lsun/font/Font2D;->familyName:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object v3, p0, Lsun/font/SunFontManager;->compositeFonts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v0}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v2

    :cond_1
    invoke-virtual {p1, p2}, Lsun/font/Font2D;->setRank(I)V

    iget-object v3, p0, Lsun/font/SunFontManager;->physicalFonts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v0}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_4

    invoke-static {}, Lsun/font/FontUtilities;->isLogging()Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Add to Family "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", Font "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " rank="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lsun/font/FontUtilities;->logInfo(Ljava/lang/String;)V

    :cond_2
    iget-object v2, p0, Lsun/font/SunFontManager;->physicalFonts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1}, Lsun/font/FontFamily;->getFamily(Ljava/lang/String;)Lsun/font/FontFamily;

    move-result-object v2

    if-nez v2, :cond_3

    new-instance v2, Lsun/font/FontFamily;

    invoke-direct {v2, v1, v4, p2}, Lsun/font/FontFamily;-><init>(Ljava/lang/String;ZI)V

    iget p2, p1, Lsun/font/Font2D;->style:I

    invoke-virtual {v2, p1, p2}, Lsun/font/FontFamily;->setFont(Lsun/font/Font2D;I)V

    goto :goto_0

    :cond_3
    iget p2, p1, Lsun/font/Font2D;->style:I

    invoke-virtual {v2, p1, p2}, Lsun/font/FontFamily;->setFont(Lsun/font/Font2D;I)V

    :goto_0
    iget-object p0, p0, Lsun/font/SunFontManager;->fullNameToFont:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object p2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, p2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1

    :cond_4
    iget-object v3, p0, Lsun/font/SunFontManager;->physicalFonts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lsun/font/PhysicalFont;

    if-nez v3, :cond_5

    return-object v2

    :cond_5
    invoke-virtual {v3}, Lsun/font/Font2D;->getRank()I

    move-result v2

    if-lt v2, p2, :cond_d

    iget-object v2, v3, Lsun/font/Font2D;->mapper:Lsun/font/CharToGlyphMapper;

    if-eqz v2, :cond_6

    const/4 v2, 0x2

    if-le p2, v2, :cond_6

    return-object v3

    :cond_6
    invoke-virtual {v3}, Lsun/font/Font2D;->getRank()I

    move-result v2

    if-ne v2, p2, :cond_8

    instance-of v2, v3, Lsun/font/TrueTypeFont;

    if-eqz v2, :cond_7

    instance-of v2, p1, Lsun/font/TrueTypeFont;

    if-eqz v2, :cond_7

    move-object v2, v3

    check-cast v2, Lsun/font/TrueTypeFont;

    move-object v5, p1

    check-cast v5, Lsun/font/TrueTypeFont;

    iget v2, v2, Lsun/font/FileFont;->fileSize:I

    iget v5, v5, Lsun/font/FileFont;->fileSize:I

    if-lt v2, v5, :cond_8

    :cond_7
    return-object v3

    :cond_8
    iget-object v2, v3, Lsun/font/PhysicalFont;->platName:Ljava/lang/String;

    sget-object v5, Lsun/font/SunFontManager;->jreFontDirName:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    const-string v5, " with "

    const-string v6, " from "

    if-eqz v2, :cond_a

    invoke-static {}, Lsun/font/FontUtilities;->isLogging()Z

    move-result p0

    if-eqz p0, :cond_9

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unexpected attempt to replace a JRE  font "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, v3, Lsun/font/PhysicalFont;->platName:Ljava/lang/String;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lsun/font/PhysicalFont;->platName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lsun/font/FontUtilities;->logWarning(Ljava/lang/String;)V

    :cond_9
    return-object v3

    :cond_a
    invoke-static {}, Lsun/font/FontUtilities;->isLogging()Z

    move-result v2

    if-eqz v2, :cond_b

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Replace in Family "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ",Font "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " new rank="

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v3, Lsun/font/PhysicalFont;->platName:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p1, Lsun/font/PhysicalFont;->platName:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lsun/font/FontUtilities;->logInfo(Ljava/lang/String;)V

    :cond_b
    invoke-virtual {p0, v3, p1}, Lsun/font/SunFontManager;->replaceFont(Lsun/font/PhysicalFont;Lsun/font/PhysicalFont;)V

    iget-object v2, p0, Lsun/font/SunFontManager;->physicalFonts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lsun/font/SunFontManager;->fullNameToFont:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1}, Lsun/font/FontFamily;->getFamily(Ljava/lang/String;)Lsun/font/FontFamily;

    move-result-object p0

    if-nez p0, :cond_c

    new-instance p0, Lsun/font/FontFamily;

    invoke-direct {p0, v1, v4, p2}, Lsun/font/FontFamily;-><init>(Ljava/lang/String;ZI)V

    iget p2, p1, Lsun/font/Font2D;->style:I

    invoke-virtual {p0, p1, p2}, Lsun/font/FontFamily;->setFont(Lsun/font/Font2D;I)V

    goto :goto_1

    :cond_c
    iget p2, p1, Lsun/font/Font2D;->style:I

    invoke-virtual {p0, p1, p2}, Lsun/font/FontFamily;->setFont(Lsun/font/Font2D;I)V

    :goto_1
    return-object p1

    :cond_d
    return-object v3

    :cond_e
    :goto_2
    return-object v2
.end method

.method public addToMissingFontFileList(Ljava/lang/String;)V
    .locals 0

    sget-object p0, Lsun/font/SunFontManager;->missingFontFiles:Ljava/util/HashSet;

    if-nez p0, :cond_0

    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    sput-object p0, Lsun/font/SunFontManager;->missingFontFiles:Ljava/util/HashSet;

    :cond_0
    sget-object p0, Lsun/font/SunFontManager;->missingFontFiles:Ljava/util/HashSet;

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addToPool(Lsun/font/FileFont;)V
    .locals 5

    iget-object v0, p0, Lsun/font/SunFontManager;->fontFileCache:[Lsun/font/FileFont;

    monitor-enter v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x14

    if-ge v2, v3, :cond_2

    :try_start_0
    iget-object v3, p0, Lsun/font/SunFontManager;->fontFileCache:[Lsun/font/FileFont;

    aget-object v3, v3, v2

    if-ne v3, p1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    if-nez v3, :cond_1

    if-gez v1, :cond_1

    move v1, v2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_2
    if-ltz v1, :cond_3

    iget-object p0, p0, Lsun/font/SunFontManager;->fontFileCache:[Lsun/font/FileFont;

    aput-object p1, p0, v1

    monitor-exit v0

    return-void

    :cond_3
    iget-object v1, p0, Lsun/font/SunFontManager;->fontFileCache:[Lsun/font/FileFont;

    iget v2, p0, Lsun/font/SunFontManager;->lastPoolIndex:I

    aget-object v4, v1, v2

    aput-object p1, v1, v2

    add-int/lit8 v2, v2, 0x1

    rem-int/2addr v2, v3

    iput v2, p0, Lsun/font/SunFontManager;->lastPoolIndex:I

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Lsun/font/FileFont;->close()V

    :cond_4
    return-void

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public createCompositeFonts(Ljava/util/concurrent/ConcurrentHashMap;ZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lsun/font/Font2D;",
            ">;ZZ)V"
        }
    .end annotation

    invoke-virtual {p0, p2, p3}, Lsun/font/SunFontManager;->createFontConfiguration(ZZ)Lsun/awt/FontConfiguration;

    move-result-object p2

    invoke-direct {p0, p2, p1}, Lsun/font/SunFontManager;->initCompositeFonts(Lsun/awt/FontConfiguration;Ljava/util/concurrent/ConcurrentHashMap;)V

    return-void
.end method

.method public createFont2D(Ljava/io/File;IZLsun/font/CreatedFontTracker;)Lsun/font/Font2D;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/awt/FontFormatException;
        }
    .end annotation

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v4, p3

    move-object v5, p4

    .line 1
    invoke-virtual/range {v0 .. v5}, Lsun/font/SunFontManager;->createFont2D(Ljava/io/File;IZZLsun/font/CreatedFontTracker;)[Lsun/font/Font2D;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 2
    array-length p1, p0

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    aget-object p0, p0, p1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    :goto_1
    return-object p0
.end method

.method public createFont2D(Ljava/io/File;IZZLsun/font/CreatedFontTracker;)[Lsun/font/Font2D;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/awt/FontFormatException;
        }
    .end annotation

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 5
    monitor-enter p0

    .line 6
    :try_start_0
    iget v2, p0, Lsun/font/SunFontManager;->createdFontCount:I

    sget v3, Lsun/font/SunFontManager;->maxSoftRefCnt:I

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ge v2, v3, :cond_0

    add-int/2addr v2, v4

    .line 7
    iput v2, p0, Lsun/font/SunFontManager;->createdFontCount:I

    move v2, v5

    move v3, v2

    goto :goto_0

    :cond_0
    const/16 v2, 0xa

    move v3, v4

    .line 8
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v6, 0x0

    if-eqz p2, :cond_2

    if-ne p2, v4, :cond_1

    .line 9
    :try_start_1
    new-instance p2, Lsun/font/Type1Font;

    invoke-direct {p2, v1, v6, p4}, Lsun/font/Type1Font;-><init>(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 10
    invoke-virtual {p2, v3, v2}, Lsun/font/Font2D;->setUseWeakRefs(ZI)V

    .line 11
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 12
    :cond_1
    new-instance p2, Ljava/awt/FontFormatException;

    const-string p3, "Unrecognised Font Format"

    invoke-direct {p2, p3}, Ljava/awt/FontFormatException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 13
    :cond_2
    new-instance p2, Lsun/font/AndroidFont2D;

    invoke-direct {p2, v1, v6, v5, v4}, Lsun/font/AndroidFont2D;-><init>(Ljava/lang/String;Ljava/lang/Object;IZ)V

    .line 14
    invoke-virtual {p2, v3, v2}, Lsun/font/Font2D;->setUseWeakRefs(ZI)V

    .line 15
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-nez p3, :cond_3

    goto :goto_2

    .line 16
    :cond_3
    invoke-virtual {p2}, Lsun/font/TrueTypeFont;->getFontCount()I

    move-result p2

    move p3, v4

    :goto_1
    if-ge p3, p2, :cond_4

    .line 17
    new-instance v7, Lsun/font/AndroidFont2D;

    add-int/lit8 v8, p3, 0x1

    invoke-direct {v7, v1, v6, p3, v4}, Lsun/font/AndroidFont2D;-><init>(Ljava/lang/String;Ljava/lang/Object;IZ)V

    .line 18
    invoke-virtual {v7, v3, v2}, Lsun/font/Font2D;->setUseWeakRefs(ZI)V

    .line 19
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/awt/FontFormatException; {:try_start_1 .. :try_end_1} :catch_0

    move p3, v8

    goto :goto_1

    :cond_4
    move v4, p2

    :goto_2
    if-eqz p4, :cond_7

    .line 20
    invoke-static {v0, p1, v4, p5}, Lsun/font/FileFont;->setFileToRemove(Ljava/util/List;Ljava/io/File;ILsun/font/CreatedFontTracker;)V

    .line 21
    const-class p2, Lsun/font/FontManager;

    monitor-enter p2

    .line 22
    :try_start_2
    iget-object p3, p0, Lsun/font/SunFontManager;->tmpFontFiles:Ljava/util/Vector;

    if-nez p3, :cond_5

    .line 23
    new-instance p3, Ljava/util/Vector;

    invoke-direct {p3}, Ljava/util/Vector;-><init>()V

    iput-object p3, p0, Lsun/font/SunFontManager;->tmpFontFiles:Ljava/util/Vector;

    .line 24
    :cond_5
    iget-object p3, p0, Lsun/font/SunFontManager;->tmpFontFiles:Ljava/util/Vector;

    invoke-virtual {p3, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 25
    iget-object p1, p0, Lsun/font/SunFontManager;->fileCloser:Ljava/lang/Thread;

    if-nez p1, :cond_6

    .line 26
    new-instance p1, Lsun/font/SunFontManager$8;

    invoke-direct {p1, p0}, Lsun/font/SunFontManager$8;-><init>(Lsun/font/SunFontManager;)V

    .line 27
    new-instance p3, Lcom/sunia/HTREnginev2/w5n;

    invoke-direct {p3, p0, p1}, Lcom/sunia/HTREnginev2/w5n;-><init>(Lsun/font/SunFontManager;Ljava/lang/Runnable;)V

    invoke-static {p3}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    .line 28
    :cond_6
    monitor-exit p2

    goto :goto_3

    :catchall_0
    move-exception p0

    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :cond_7
    :goto_3
    new-array p0, v5, [Lsun/font/Font2D;

    .line 29
    invoke-interface {v0, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lsun/font/Font2D;

    return-object p0

    :catch_0
    move-exception p2

    if-eqz p4, :cond_8

    .line 30
    new-instance p3, Lsun/font/SunFontManager$7;

    invoke-direct {p3, p0, p5, p1}, Lsun/font/SunFontManager$7;-><init>(Lsun/font/SunFontManager;Lsun/font/CreatedFontTracker;Ljava/io/File;)V

    invoke-static {p3}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    .line 31
    :cond_8
    throw p2

    :catchall_1
    move-exception p1

    .line 32
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1
.end method

.method public abstract createFontConfiguration()Lsun/awt/FontConfiguration;
.end method

.method public abstract createFontConfiguration(ZZ)Lsun/awt/FontConfiguration;
.end method

.method public declared-synchronized deRegisterBadFont(Lsun/font/Font2D;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    instance-of v0, p1, Lsun/font/PhysicalFont;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-static {}, Lsun/font/FontUtilities;->isLogging()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Deregister bad font: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lsun/font/FontUtilities;->logSevere(Ljava/lang/String;)V

    :cond_1
    check-cast p1, Lsun/font/PhysicalFont;

    invoke-virtual {p0}, Lsun/font/SunFontManager;->getDefaultPhysicalFont()Lsun/font/PhysicalFont;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lsun/font/SunFontManager;->replaceFont(Lsun/font/PhysicalFont;Lsun/font/PhysicalFont;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public findFont2D(Ljava/lang/String;II)Lsun/font/Font2D;
    .locals 8

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lsun/font/SunFontManager;->dotStyleStr(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lsun/font/SunFontManager;->fontNameCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lsun/font/Font2D;

    if-eqz v3, :cond_1

    return-object v3

    :cond_1
    invoke-static {}, Lsun/font/FontUtilities;->isLogging()Z

    move-result v3

    if-eqz v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Search for font: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lsun/font/FontUtilities;->logInfo(Ljava/lang/String;)V

    :cond_2
    sget-boolean v3, Lsun/font/FontUtilities;->isWindows:Z

    const-string v4, "serif"

    const-string v5, "sansserif"

    if-eqz v3, :cond_4

    const-string v3, "ms sans serif"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    move-object p1, v5

    goto :goto_0

    :cond_3
    const-string v3, "ms serif"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    move-object p1, v4

    :cond_4
    :goto_0
    const-string v3, "default"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const-string p1, "dialog"

    :cond_5
    invoke-static {p1}, Lsun/font/FontFamily;->getFamily(Ljava/lang/String;)Lsun/font/FontFamily;

    move-result-object v3

    if-eqz v3, :cond_a

    invoke-virtual {v3, p2}, Lsun/font/FontFamily;->getFontWithExactStyleMatch(I)Lsun/font/Font2D;

    move-result-object v6

    if-nez v6, :cond_6

    invoke-direct {p0, p1, p2}, Lsun/font/SunFontManager;->findDeferredFont(Ljava/lang/String;I)Lsun/font/PhysicalFont;

    move-result-object v6

    :cond_6
    if-nez v6, :cond_7

    invoke-direct {p0, v1, p2}, Lsun/font/SunFontManager;->findFontFromPlatform(Ljava/lang/String;I)Lsun/font/Font2D;

    move-result-object v6

    :cond_7
    if-nez v6, :cond_8

    invoke-virtual {v3, p2}, Lsun/font/FontFamily;->getFont(I)Lsun/font/Font2D;

    move-result-object v6

    :cond_8
    if-nez v6, :cond_9

    invoke-virtual {v3, p2}, Lsun/font/FontFamily;->getClosestStyle(I)Lsun/font/Font2D;

    move-result-object v6

    :cond_9
    if-eqz v6, :cond_a

    iget-object p0, p0, Lsun/font/SunFontManager;->fontNameCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, v2, v6}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v6

    :cond_a
    iget-object v3, p0, Lsun/font/SunFontManager;->fullNameToFont:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lsun/font/Font2D;

    if-eqz v3, :cond_e

    iget v6, v3, Lsun/font/Font2D;->style:I

    if-eq v6, p2, :cond_d

    if-nez p2, :cond_b

    goto :goto_1

    :cond_b
    invoke-virtual {v3, v0}, Lsun/font/Font2D;->getFamilyName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lsun/font/FontFamily;->getFamily(Ljava/lang/String;)Lsun/font/FontFamily;

    move-result-object v6

    if-eqz v6, :cond_e

    iget v7, v3, Lsun/font/Font2D;->style:I

    or-int/2addr v7, p2

    invoke-virtual {v6, v7}, Lsun/font/FontFamily;->getFont(I)Lsun/font/Font2D;

    move-result-object v7

    if-eqz v7, :cond_c

    iget-object p0, p0, Lsun/font/SunFontManager;->fontNameCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, v2, v7}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v7

    :cond_c
    iget v7, v3, Lsun/font/Font2D;->style:I

    or-int/2addr v7, p2

    invoke-virtual {v6, v7}, Lsun/font/FontFamily;->getClosestStyle(I)Lsun/font/Font2D;

    move-result-object v6

    if-eqz v6, :cond_e

    iget v3, v3, Lsun/font/Font2D;->style:I

    or-int/2addr v3, p2

    invoke-virtual {v6, v3}, Lsun/font/Font2D;->canDoStyle(I)Z

    move-result v3

    if-eqz v3, :cond_e

    iget-object p0, p0, Lsun/font/SunFontManager;->fontNameCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, v2, v6}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v6

    :cond_d
    :goto_1
    iget-object p0, p0, Lsun/font/SunFontManager;->fontNameCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v3

    :cond_e
    sget-boolean v3, Lsun/font/FontUtilities;->isWindows:Z

    if-eqz v3, :cond_13

    invoke-virtual {p0, v1, p2}, Lsun/font/SunFontManager;->findFontFromPlatformMap(Ljava/lang/String;I)Lsun/font/Font2D;

    move-result-object v3

    invoke-static {}, Lsun/font/FontUtilities;->isLogging()Z

    move-result v6

    if-eqz v6, :cond_f

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "findFontFromPlatformMap returned "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lsun/font/FontUtilities;->logInfo(Ljava/lang/String;)V

    :cond_f
    if-eqz v3, :cond_10

    iget-object p0, p0, Lsun/font/SunFontManager;->fontNameCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v3

    :cond_10
    iget-object v3, p0, Lsun/font/SunFontManager;->deferredFontFiles:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v3

    if-lez v3, :cond_11

    invoke-virtual {p0, v1, p2}, Lsun/font/SunFontManager;->findJREDeferredFont(Ljava/lang/String;I)Lsun/font/PhysicalFont;

    move-result-object v3

    if-eqz v3, :cond_11

    iget-object p0, p0, Lsun/font/SunFontManager;->fontNameCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v3

    :cond_11
    invoke-direct {p0, v1, p2}, Lsun/font/SunFontManager;->findFontFromPlatform(Ljava/lang/String;I)Lsun/font/Font2D;

    move-result-object v3

    if-eqz v3, :cond_13

    invoke-static {}, Lsun/font/FontUtilities;->isLogging()Z

    move-result p3

    if-eqz p3, :cond_12

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Found font via platform API for request:\""

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\":, style="

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " found font: "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lsun/font/FontUtilities;->logInfo(Ljava/lang/String;)V

    :cond_12
    iget-object p0, p0, Lsun/font/SunFontManager;->fontNameCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v3

    :cond_13
    iget-object v3, p0, Lsun/font/SunFontManager;->deferredFontFiles:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v3

    if-lez v3, :cond_14

    invoke-direct {p0, p1, p2}, Lsun/font/SunFontManager;->findDeferredFont(Ljava/lang/String;I)Lsun/font/PhysicalFont;

    move-result-object v3

    if-eqz v3, :cond_14

    iget-object p0, p0, Lsun/font/SunFontManager;->fontNameCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v3

    :cond_14
    iget-boolean v3, p0, Lsun/font/SunFontManager;->fontsAreRegistered:Z

    if-eqz v3, :cond_1a

    iget-object v3, p0, Lsun/font/SunFontManager;->createdByFamilyName:Ljava/util/Hashtable;

    iget-object v6, p0, Lsun/font/SunFontManager;->createdByFullName:Ljava/util/Hashtable;

    invoke-virtual {v3, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lsun/font/FontFamily;

    if-eqz v3, :cond_18

    invoke-virtual {v3, p2}, Lsun/font/FontFamily;->getFontWithExactStyleMatch(I)Lsun/font/Font2D;

    move-result-object v7

    if-nez v7, :cond_15

    invoke-virtual {v3, p2}, Lsun/font/FontFamily;->getFont(I)Lsun/font/Font2D;

    move-result-object v7

    :cond_15
    if-nez v7, :cond_16

    invoke-virtual {v3, p2}, Lsun/font/FontFamily;->getClosestStyle(I)Lsun/font/Font2D;

    move-result-object v7

    :cond_16
    if-eqz v7, :cond_18

    iget-boolean p1, p0, Lsun/font/SunFontManager;->fontsAreRegistered:Z

    if-eqz p1, :cond_17

    iget-object p0, p0, Lsun/font/SunFontManager;->fontNameCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, v2, v7}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_17
    return-object v7

    :cond_18
    invoke-virtual {v6, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lsun/font/Font2D;

    if-eqz v3, :cond_1a

    iget-boolean p1, p0, Lsun/font/SunFontManager;->fontsAreRegistered:Z

    if-eqz p1, :cond_19

    iget-object p0, p0, Lsun/font/SunFontManager;->fontNameCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_19
    return-object v3

    :cond_1a
    iget-boolean v3, p0, Lsun/font/SunFontManager;->loadedAllFonts:Z

    const/4 v6, 0x1

    if-nez v3, :cond_1c

    invoke-static {}, Lsun/font/FontUtilities;->isLogging()Z

    move-result v0

    if-eqz v0, :cond_1b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Load fonts looking for:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lsun/font/FontUtilities;->logInfo(Ljava/lang/String;)V

    :cond_1b
    invoke-virtual {p0}, Lsun/font/SunFontManager;->loadFonts()V

    iput-boolean v6, p0, Lsun/font/SunFontManager;->loadedAllFonts:Z

    invoke-virtual {p0, p1, p2, p3}, Lsun/font/SunFontManager;->findFont2D(Ljava/lang/String;II)Lsun/font/Font2D;

    move-result-object p0

    return-object p0

    :cond_1c
    iget-boolean v3, p0, Lsun/font/SunFontManager;->loadedAllFontFiles:Z

    if-nez v3, :cond_1e

    invoke-static {}, Lsun/font/FontUtilities;->isLogging()Z

    move-result v0

    if-eqz v0, :cond_1d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Load font files looking for:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lsun/font/FontUtilities;->logInfo(Ljava/lang/String;)V

    :cond_1d
    invoke-virtual {p0}, Lsun/font/SunFontManager;->loadFontFiles()V

    iput-boolean v6, p0, Lsun/font/SunFontManager;->loadedAllFontFiles:Z

    invoke-virtual {p0, p1, p2, p3}, Lsun/font/SunFontManager;->findFont2D(Ljava/lang/String;II)Lsun/font/Font2D;

    move-result-object p0

    return-object p0

    :cond_1e
    invoke-direct {p0, p1, p2}, Lsun/font/SunFontManager;->findFont2DAllLocales(Ljava/lang/String;I)Lsun/font/Font2D;

    move-result-object v3

    if-eqz v3, :cond_1f

    iget-object p0, p0, Lsun/font/SunFontManager;->fontNameCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v3

    :cond_1f
    sget-boolean v3, Lsun/font/FontUtilities;->isWindows:Z

    if-eqz v3, :cond_20

    invoke-virtual {p0}, Lsun/font/SunFontManager;->getFontConfiguration()Lsun/awt/FontConfiguration;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lsun/awt/FontConfiguration;->getFallbackFamilyName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_23

    invoke-virtual {p0, v1, p2, p3}, Lsun/font/SunFontManager;->findFont2D(Ljava/lang/String;II)Lsun/font/Font2D;

    move-result-object p1

    iget-object p0, p0, Lsun/font/SunFontManager;->fontNameCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1

    :cond_20
    const-string v3, "timesroman"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_21

    invoke-virtual {p0, v4, p2, p3}, Lsun/font/SunFontManager;->findFont2D(Ljava/lang/String;II)Lsun/font/Font2D;

    move-result-object p1

    iget-object p0, p0, Lsun/font/SunFontManager;->fontNameCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1

    :cond_21
    const-string v3, "helvetica"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_22

    invoke-virtual {p0, v5, p2, p3}, Lsun/font/SunFontManager;->findFont2D(Ljava/lang/String;II)Lsun/font/Font2D;

    move-result-object p1

    iget-object p0, p0, Lsun/font/SunFontManager;->fontNameCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1

    :cond_22
    const-string v3, "courier"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23

    const-string p1, "monospaced"

    invoke-virtual {p0, p1, p2, p3}, Lsun/font/SunFontManager;->findFont2D(Ljava/lang/String;II)Lsun/font/Font2D;

    move-result-object p1

    iget-object p0, p0, Lsun/font/SunFontManager;->fontNameCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1

    :cond_23
    invoke-static {}, Lsun/font/FontUtilities;->isLogging()Z

    move-result v1

    if-eqz v1, :cond_24

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No font found for:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lsun/font/FontUtilities;->logInfo(Ljava/lang/String;)V

    :cond_24
    if-eq p3, v6, :cond_26

    const/4 p1, 0x2

    if-eq p3, p1, :cond_25

    return-object v0

    :cond_25
    invoke-virtual {p0, p2}, Lsun/font/SunFontManager;->getDefaultLogicalFont(I)Lsun/font/Font2D;

    move-result-object p0

    return-object p0

    :cond_26
    invoke-virtual {p0}, Lsun/font/SunFontManager;->getDefaultPhysicalFont()Lsun/font/PhysicalFont;

    move-result-object p0

    return-object p0
.end method

.method public findFontFromPlatformMap(Ljava/lang/String;I)Lsun/font/Font2D;
    .locals 12

    sget-object v0, Lsun/font/SunFontManager;->platformFontMap:Ljava/util/HashMap;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lsun/font/SunFontManager;->populateHardcodedFileNameMap()Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lsun/font/SunFontManager;->platformFontMap:Ljava/util/HashMap;

    :cond_0
    sget-object v0, Lsun/font/SunFontManager;->platformFontMap:Ljava/util/HashMap;

    const/4 v1, 0x0

    if-eqz v0, :cond_19

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_8

    :cond_1
    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v2, 0x0

    if-lez v0, :cond_2

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    move-object v0, p1

    :goto_0
    sget-object v3, Lsun/font/SunFontManager;->platformFontMap:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lsun/font/SunFontManager$FamilyDescription;

    if-nez v3, :cond_3

    return-object v1

    :cond_3
    iget-object v4, v3, Lsun/font/SunFontManager$FamilyDescription;->plainFullName:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, -0x1

    const/4 v6, 0x1

    if-eqz v4, :cond_4

    move v4, v2

    goto :goto_1

    :cond_4
    iget-object v4, v3, Lsun/font/SunFontManager$FamilyDescription;->boldFullName:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    move v4, v6

    goto :goto_1

    :cond_5
    iget-object v4, v3, Lsun/font/SunFontManager$FamilyDescription;->italicFullName:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    const/4 v4, 0x2

    goto :goto_1

    :cond_6
    iget-object v4, v3, Lsun/font/SunFontManager$FamilyDescription;->boldItalicFullName:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    const/4 v4, 0x3

    goto :goto_1

    :cond_7
    move v4, v5

    :goto_1
    if-ne v4, v5, :cond_8

    iget-object v5, v3, Lsun/font/SunFontManager$FamilyDescription;->familyName:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_8

    return-object v1

    :cond_8
    sget-boolean v5, Lsun/font/SunFontManager;->noType1Font:Z

    invoke-virtual {p0, v5}, Lsun/font/SunFontManager;->getPlatformFontDirs(Z)[Ljava/lang/String;

    iget-object v5, v3, Lsun/font/SunFontManager$FamilyDescription;->plainFileName:Ljava/lang/String;

    if-eqz v5, :cond_9

    invoke-direct {p0, v5}, Lsun/font/SunFontManager;->getPathName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_a

    move v7, v6

    goto :goto_2

    :cond_9
    move-object v5, v1

    :cond_a
    move v7, v2

    :goto_2
    iget-object v8, v3, Lsun/font/SunFontManager$FamilyDescription;->boldFileName:Ljava/lang/String;

    if-eqz v8, :cond_b

    invoke-direct {p0, v8}, Lsun/font/SunFontManager;->getPathName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_c

    move v7, v6

    goto :goto_3

    :cond_b
    move-object v8, v1

    :cond_c
    :goto_3
    iget-object v9, v3, Lsun/font/SunFontManager$FamilyDescription;->italicFileName:Ljava/lang/String;

    if-eqz v9, :cond_d

    invoke-direct {p0, v9}, Lsun/font/SunFontManager;->getPathName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_e

    move v7, v6

    goto :goto_4

    :cond_d
    move-object v9, v1

    :cond_e
    :goto_4
    iget-object v10, v3, Lsun/font/SunFontManager$FamilyDescription;->boldItalicFileName:Ljava/lang/String;

    if-eqz v10, :cond_f

    invoke-direct {p0, v10}, Lsun/font/SunFontManager;->getPathName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-nez v10, :cond_10

    goto :goto_5

    :cond_f
    move-object v10, v1

    :cond_10
    move v6, v7

    :goto_5
    const-string v7, "Hardcoded file missing looking for "

    if-eqz v6, :cond_12

    invoke-static {}, Lsun/font/FontUtilities;->isLogging()Z

    move-result p0

    if-eqz p0, :cond_11

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lsun/font/FontUtilities;->logInfo(Ljava/lang/String;)V

    :cond_11
    sget-object p0, Lsun/font/SunFontManager;->platformFontMap:Ljava/util/HashMap;

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1

    :cond_12
    filled-new-array {v5, v8, v9, v10}, [Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lsun/font/SunFontManager$5;

    invoke-direct {v6, p0, v5}, Lsun/font/SunFontManager$5;-><init>(Lsun/font/SunFontManager;[Ljava/lang/String;)V

    invoke-static {v6}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_14

    invoke-static {}, Lsun/font/FontUtilities;->isLogging()Z

    move-result p0

    if-eqz p0, :cond_13

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lsun/font/FontUtilities;->logInfo(Ljava/lang/String;)V

    :cond_13
    sget-object p0, Lsun/font/SunFontManager;->platformFontMap:Ljava/util/HashMap;

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1

    :cond_14
    :goto_6
    const/4 p1, 0x4

    if-ge v2, p1, :cond_17

    aget-object v7, v5, v2

    if-nez v7, :cond_15

    goto :goto_7

    :cond_15
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x3

    move-object v6, p0

    invoke-virtual/range {v6 .. v11}, Lsun/font/SunFontManager;->registerFontFile(Ljava/lang/String;[Ljava/lang/String;IZI)Lsun/font/PhysicalFont;

    move-result-object p1

    if-ne v2, v4, :cond_16

    move-object v1, p1

    :cond_16
    :goto_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_17
    iget-object p0, v3, Lsun/font/SunFontManager$FamilyDescription;->familyName:Ljava/lang/String;

    invoke-static {p0}, Lsun/font/FontFamily;->getFamily(Ljava/lang/String;)Lsun/font/FontFamily;

    move-result-object p0

    if-eqz p0, :cond_19

    if-nez v1, :cond_18

    invoke-virtual {p0, p2}, Lsun/font/FontFamily;->getFont(I)Lsun/font/Font2D;

    move-result-object v1

    if-nez v1, :cond_19

    invoke-virtual {p0, p2}, Lsun/font/FontFamily;->getClosestStyle(I)Lsun/font/Font2D;

    move-result-object v1

    goto :goto_8

    :cond_18
    if-lez p2, :cond_19

    iget p1, v1, Lsun/font/Font2D;->style:I

    if-eq p2, p1, :cond_19

    or-int/2addr p1, p2

    invoke-virtual {p0, p1}, Lsun/font/FontFamily;->getFont(I)Lsun/font/Font2D;

    move-result-object v1

    if-nez v1, :cond_19

    invoke-virtual {p0, p1}, Lsun/font/FontFamily;->getClosestStyle(I)Lsun/font/Font2D;

    move-result-object v1

    :cond_19
    :goto_8
    return-object v1
.end method

.method public findJREDeferredFont(Ljava/lang/String;I)Lsun/font/PhysicalFont;
    .locals 7

    iget-boolean v0, p0, Lsun/font/SunFontManager;->noOtherJREFontFiles:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    sget-object v0, Lsun/font/SunFontManager;->jreFontDirName:Ljava/lang/String;

    monitor-enter v0

    :try_start_0
    iget-object v2, p0, Lsun/font/SunFontManager;->jreOtherFontFiles:[Ljava/lang/String;

    if-nez v2, :cond_4

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iget-object v3, p0, Lsun/font/SunFontManager;->deferredFontFiles:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    sget-object v6, Lsun/font/SunFontManager;->jreFontDirName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v2, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    sget-object v3, Lsun/font/SunFontManager;->STR_ARRAY:[Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    iput-object v2, p0, Lsun/font/SunFontManager;->jreOtherFontFiles:[Ljava/lang/String;

    array-length v2, v2

    if-nez v2, :cond_4

    const/4 v2, 0x1

    iput-boolean v2, p0, Lsun/font/SunFontManager;->noOtherJREFontFiles:Z

    :cond_4
    const/4 v2, 0x0

    :goto_1
    iget-object v3, p0, Lsun/font/SunFontManager;->jreOtherFontFiles:[Ljava/lang/String;

    array-length v4, v3

    if-ge v2, v4, :cond_8

    aget-object v4, v3, v2

    if-nez v4, :cond_5

    goto :goto_2

    :cond_5
    aput-object v1, v3, v2

    invoke-virtual {p0, v4}, Lsun/font/SunFontManager;->initialiseDeferredFont(Ljava/lang/String;)Lsun/font/PhysicalFont;

    move-result-object v3

    if-eqz v3, :cond_7

    invoke-virtual {v3, v1}, Lsun/font/Font2D;->getFontName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_6

    invoke-virtual {v3, v1}, Lsun/font/Font2D;->getFamilyName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    :cond_6
    iget v4, v3, Lsun/font/Font2D;->style:I

    if-ne v4, p2, :cond_7

    monitor-exit v0

    return-object v3

    :cond_7
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_8
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getAllInstalledFonts()[Ljava/awt/Font;
    .locals 8

    iget-object v0, p0, Lsun/font/SunFontManager;->allFonts:[Ljava/awt/Font;

    const/4 v1, 0x0

    if-nez v0, :cond_7

    invoke-virtual {p0}, Lsun/font/SunFontManager;->loadFonts()V

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    invoke-virtual {p0}, Lsun/font/SunFontManager;->getRegisteredFonts()[Lsun/font/Font2D;

    move-result-object v2

    move v3, v1

    :goto_0
    array-length v4, v2

    const/4 v5, 0x0

    if-ge v3, v4, :cond_1

    aget-object v4, v2, v3

    instance-of v6, v4, Lsun/font/NativeFont;

    if-nez v6, :cond_0

    invoke-virtual {v4, v5}, Lsun/font/Font2D;->getFontName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    aget-object v5, v2, v3

    invoke-virtual {v0, v4, v5}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lsun/font/SunFontManager;->getFontNamesFromPlatform()[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    move v3, v1

    :goto_1
    array-length v4, v2

    if-ge v3, v4, :cond_3

    aget-object v4, v2, v3

    invoke-direct {p0, v4}, Lsun/font/SunFontManager;->isNameForRegisteredFile(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    aget-object v4, v2, v3

    invoke-virtual {v0, v4, v5}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Ljava/util/TreeMap;->size()I

    move-result v2

    if-lez v2, :cond_4

    invoke-virtual {v0}, Ljava/util/TreeMap;->size()I

    move-result v2

    new-array v5, v2, [Ljava/lang/String;

    invoke-virtual {v0}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v2

    move v3, v1

    :goto_2
    array-length v4, v2

    if-ge v3, v4, :cond_4

    aget-object v4, v2, v3

    check-cast v4, Ljava/lang/String;

    aput-object v4, v5, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_4
    array-length v2, v5

    new-array v2, v2, [Ljava/awt/Font;

    move v3, v1

    :goto_3
    array-length v4, v5

    if-ge v3, v4, :cond_6

    new-instance v4, Ljava/awt/Font;

    aget-object v6, v5, v3

    const/4 v7, 0x1

    invoke-direct {v4, v6, v1, v7}, Ljava/awt/Font;-><init>(Ljava/lang/String;II)V

    aput-object v4, v2, v3

    aget-object v4, v5, v3

    invoke-virtual {v0, v4}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lsun/font/Font2D;

    if-eqz v4, :cond_5

    invoke-static {}, Lsun/font/FontAccess;->getFontAccess()Lsun/font/FontAccess;

    move-result-object v6

    aget-object v7, v2, v3

    iget-object v4, v4, Lsun/font/Font2D;->handle:Lsun/font/Font2DHandle;

    invoke-virtual {v6, v7, v4}, Lsun/font/FontAccess;->setFont2D(Ljava/awt/Font;Lsun/font/Font2DHandle;)V

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_6
    iput-object v2, p0, Lsun/font/SunFontManager;->allFonts:[Ljava/awt/Font;

    :cond_7
    iget-object p0, p0, Lsun/font/SunFontManager;->allFonts:[Ljava/awt/Font;

    array-length v0, p0

    new-array v0, v0, [Ljava/awt/Font;

    array-length v2, p0

    invoke-static {p0, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public getCreatedFontFamilyNames()Ljava/util/TreeMap;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/TreeMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-boolean v0, p0, Lsun/font/SunFontManager;->fontsAreRegistered:Z

    if-eqz v0, :cond_2

    iget-object p0, p0, Lsun/font/SunFontManager;->createdByFamilyName:Ljava/util/Hashtable;

    invoke-static {}, Lsun/font/SunFontManager;->getSystemStartupLocale()Ljava/util/Locale;

    move-result-object v0

    monitor-enter p0

    :try_start_0
    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    invoke-virtual {p0}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lsun/font/FontFamily;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lsun/font/FontFamily;->getFont(I)Lsun/font/Font2D;

    move-result-object v5

    if-nez v5, :cond_0

    invoke-virtual {v3, v4}, Lsun/font/FontFamily;->getClosestStyle(I)Lsun/font/Font2D;

    move-result-object v5

    :cond_0
    invoke-virtual {v5, v0}, Lsun/font/Font2D;->getFamilyName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public getCreatedFonts()[Ljava/awt/Font;
    .locals 9

    iget-boolean v0, p0, Lsun/font/SunFontManager;->fontsAreRegistered:Z

    if-eqz v0, :cond_1

    iget-object p0, p0, Lsun/font/SunFontManager;->createdByFullName:Ljava/util/Hashtable;

    invoke-static {}, Lsun/font/SunFontManager;->getSystemStartupLocale()Ljava/util/Locale;

    move-result-object v0

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Ljava/util/Hashtable;->size()I

    move-result v1

    new-array v1, v1, [Ljava/awt/Font;

    invoke-virtual {p0}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lsun/font/Font2D;

    add-int/lit8 v6, v4, 0x1

    new-instance v7, Ljava/awt/Font;

    invoke-virtual {v5, v0}, Lsun/font/Font2D;->getFontName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x1

    invoke-direct {v7, v5, v3, v8}, Ljava/awt/Font;-><init>(Ljava/lang/String;II)V

    aput-object v7, v1, v4

    move v4, v6

    goto :goto_0

    :cond_0
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public declared-synchronized getDefaultFontFaceName()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lsun/font/SunFontManager;->defaultFontName:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getDefaultFontFile()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lsun/font/SunFontManager;->defaultFontFileName:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getDefaultLogicalFont(I)Lsun/font/Font2D;
    .locals 2

    const-string v0, "dialog"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lsun/font/SunFontManager;->findFont2D(Ljava/lang/String;II)Lsun/font/Font2D;

    move-result-object p0

    return-object p0
.end method

.method public getDefaultPhysicalFont()Lsun/font/PhysicalFont;
    .locals 5

    iget-object v0, p0, Lsun/font/SunFontManager;->defaultPhysicalFont:Lsun/font/PhysicalFont;

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lsun/font/SunFontManager;->getDefaultFontFaceName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lsun/font/SunFontManager;->findFont2D(Ljava/lang/String;II)Lsun/font/Font2D;

    move-result-object v2

    if-eqz v2, :cond_1

    instance-of v3, v2, Lsun/font/PhysicalFont;

    if-eqz v3, :cond_0

    check-cast v2, Lsun/font/PhysicalFont;

    iput-object v2, p0, Lsun/font/SunFontManager;->defaultPhysicalFont:Lsun/font/PhysicalFont;

    goto :goto_0

    :cond_0
    invoke-static {}, Lsun/font/FontUtilities;->isLogging()Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Font returned by findFont2D for default font name "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " is not a physical font: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Lsun/font/Font2D;->getFontName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lsun/font/FontUtilities;->logWarning(Ljava/lang/String;)V

    :cond_1
    :goto_0
    iget-object v0, p0, Lsun/font/SunFontManager;->defaultPhysicalFont:Lsun/font/PhysicalFont;

    if-nez v0, :cond_3

    iget-object v0, p0, Lsun/font/SunFontManager;->physicalFonts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lsun/font/SunFontManager;->physicalFonts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/font/PhysicalFont;

    iput-object v0, p0, Lsun/font/SunFontManager;->defaultPhysicalFont:Lsun/font/PhysicalFont;

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/lang/Error;

    const-string v0, "Probable fatal error: No physical fonts found."

    invoke-direct {p0, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_1
    iget-object p0, p0, Lsun/font/SunFontManager;->defaultPhysicalFont:Lsun/font/PhysicalFont;

    return-object p0
.end method

.method public abstract getDefaultPlatformFont()[Ljava/lang/String;
.end method

.method public getEUDCFont()Lsun/font/TrueTypeFont;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getFamilyNamesFromPlatform(Ljava/util/TreeMap;Ljava/util/Locale;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Locale;",
            ")Z"
        }
    .end annotation

    invoke-direct {p0}, Lsun/font/SunFontManager;->getFullNameToFileMap()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-direct {p0}, Lsun/font/SunFontManager;->checkForUnreferencedFontFiles()V

    iget-object p0, p0, Lsun/font/SunFontManager;->fontToFamilyNameMap:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public getFileNameForFontName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lsun/font/SunFontManager;->fontToFileMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getFileNameFromPlatformName(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lsun/font/SunFontManager;->fontConfig:Lsun/awt/FontConfiguration;

    invoke-virtual {p0, p1}, Lsun/awt/FontConfiguration;->getFileNameFromPlatformName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getFontConfigFUIR(Ljava/lang/String;II)Ljavax/swing/plaf/FontUIResource;
    .locals 0

    new-instance p0, Ljavax/swing/plaf/FontUIResource;

    invoke-direct {p0, p1, p2, p3}, Ljavax/swing/plaf/FontUIResource;-><init>(Ljava/lang/String;II)V

    return-object p0
.end method

.method public getFontConfiguration()Lsun/awt/FontConfiguration;
    .locals 0

    iget-object p0, p0, Lsun/font/SunFontManager;->fontConfig:Lsun/awt/FontConfiguration;

    return-object p0
.end method

.method public getFontNamesFromPlatform()[Ljava/lang/String;
    .locals 3

    invoke-direct {p0}, Lsun/font/SunFontManager;->getFullNameToFileMap()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-direct {p0}, Lsun/font/SunFontManager;->checkForUnreferencedFontFiles()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object p0, p0, Lsun/font/SunFontManager;->familyToFontListMap:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    sget-object p0, Lsun/font/SunFontManager;->STR_ARRAY:[Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public abstract getFontPath(Z)Ljava/lang/String;
.end method

.method public declared-synchronized getFullNameByFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lsun/font/SunFontManager;->getPhysicalFonts()[Lsun/font/PhysicalFont;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    const/4 v3, 0x0

    if-ge v1, v2, :cond_1

    aget-object v2, v0, v1

    iget-object v2, v2, Lsun/font/PhysicalFont;->platName:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    aget-object p1, v0, v1

    invoke-virtual {p1, v3}, Lsun/font/Font2D;->getFontName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    monitor-exit p0

    return-object v3

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getInstalledFontFamilyNames(Ljava/util/Locale;)[Ljava/lang/String;
    .locals 7

    if-nez p1, :cond_0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    :cond_0
    iget-object v0, p0, Lsun/font/SunFontManager;->allFamilies:[Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lsun/font/SunFontManager;->lastDefaultLocale:Ljava/util/Locale;

    if-eqz v0, :cond_1

    invoke-virtual {p1, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lsun/font/SunFontManager;->allFamilies:[Ljava/lang/String;

    array-length p1, p0

    new-array p1, p1, [Ljava/lang/String;

    array-length v0, p0

    invoke-static {p0, v1, p1, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p1

    :cond_1
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    const-string v2, "Serif"

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "SansSerif"

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "Monospaced"

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "Dialog"

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "DialogInput"

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lsun/font/SunFontManager;->getSystemStartupLocale()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0, v0, p1}, Lsun/font/SunFontManager;->getFamilyNamesFromPlatform(Ljava/util/TreeMap;Ljava/util/Locale;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0, v0, p1}, Lsun/font/SunFontManager;->getJREFontFamilyNames(Ljava/util/TreeMap;Ljava/util/Locale;)V

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lsun/font/SunFontManager;->loadFontFiles()V

    invoke-virtual {p0}, Lsun/font/SunFontManager;->getPhysicalFonts()[Lsun/font/PhysicalFont;

    move-result-object v2

    move v3, v1

    :goto_0
    array-length v4, v2

    if-ge v3, v4, :cond_4

    aget-object v4, v2, v3

    instance-of v5, v4, Lsun/font/NativeFont;

    if-nez v5, :cond_3

    invoke-virtual {v4, p1}, Lsun/font/Font2D;->getFamilyName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5, v4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    invoke-virtual {p0, v0, p1}, Lsun/font/SunFontManager;->addNativeFontFamilyNames(Ljava/util/TreeMap;Ljava/util/Locale;)V

    invoke-virtual {v0}, Ljava/util/TreeMap;->size()I

    move-result v2

    new-array v3, v2, [Ljava/lang/String;

    invoke-virtual {v0}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v4

    move v5, v1

    :goto_2
    array-length v6, v4

    if-ge v5, v6, :cond_5

    aget-object v6, v4, v5

    invoke-virtual {v0, v6}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    aput-object v6, v3, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_5
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iput-object p1, p0, Lsun/font/SunFontManager;->lastDefaultLocale:Ljava/util/Locale;

    new-array p1, v2, [Ljava/lang/String;

    iput-object p1, p0, Lsun/font/SunFontManager;->allFamilies:[Ljava/lang/String;

    array-length p0, p1

    invoke-static {v3, v1, p1, v1, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_6
    return-object v3
.end method

.method public getJREFontFamilyNames(Ljava/util/TreeMap;Ljava/util/Locale;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Locale;",
            ")V"
        }
    .end annotation

    sget-object v0, Lsun/font/SunFontManager;->jreFontDirName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lsun/font/SunFontManager;->registerDeferredJREFonts(Ljava/lang/String;)V

    invoke-virtual {p0}, Lsun/font/SunFontManager;->getPhysicalFonts()[Lsun/font/PhysicalFont;

    move-result-object p0

    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    aget-object v1, p0, v0

    instance-of v2, v1, Lsun/font/NativeFont;

    if-nez v2, :cond_0

    invoke-virtual {v1, p2}, Lsun/font/Font2D;->getFamilyName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public getNativeNames(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getNewComposite(Ljava/lang/String;ILsun/font/Font2DHandle;)Lsun/font/Font2DHandle;
    .locals 4

    iget-object v0, p3, Lsun/font/Font2DHandle;->font2D:Lsun/font/Font2D;

    instance-of v1, v0, Lsun/font/CompositeFont;

    if-nez v1, :cond_0

    return-object p3

    :cond_0
    check-cast v0, Lsun/font/CompositeFont;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lsun/font/CompositeFont;->getSlotFont(I)Lsun/font/PhysicalFont;

    move-result-object v2

    if-nez p1, :cond_1

    const/4 p1, 0x0

    invoke-virtual {v2, p1}, Lsun/font/Font2D;->getFamilyName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    :cond_1
    const/4 v3, -0x1

    if-ne p2, v3, :cond_2

    invoke-virtual {v0}, Lsun/font/Font2D;->getStyle()I

    move-result p2

    :cond_2
    invoke-virtual {p0, p1, p2, v1}, Lsun/font/SunFontManager;->findFont2D(Ljava/lang/String;II)Lsun/font/Font2D;

    move-result-object p1

    instance-of v0, p1, Lsun/font/PhysicalFont;

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    move-object v2, p1

    :goto_0
    check-cast v2, Lsun/font/PhysicalFont;

    const-string p1, "dialog"

    invoke-virtual {p0, p1, p2, v1}, Lsun/font/SunFontManager;->findFont2D(Ljava/lang/String;II)Lsun/font/Font2D;

    move-result-object p0

    check-cast p0, Lsun/font/CompositeFont;

    if-nez p0, :cond_4

    return-object p3

    :cond_4
    new-instance p1, Lsun/font/CompositeFont;

    invoke-direct {p1, v2, p0}, Lsun/font/CompositeFont;-><init>(Lsun/font/PhysicalFont;Lsun/font/CompositeFont;)V

    new-instance p0, Lsun/font/Font2DHandle;

    invoke-direct {p0, p1}, Lsun/font/Font2DHandle;-><init>(Lsun/font/Font2D;)V

    return-object p0
.end method

.method public getNumFonts()I
    .locals 1

    iget-object v0, p0, Lsun/font/SunFontManager;->physicalFonts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    iget p0, p0, Lsun/font/SunFontManager;->maxCompFont:I

    add-int/2addr v0, p0

    return v0
.end method

.method public getPhysicalFonts()[Lsun/font/PhysicalFont;
    .locals 1

    iget-object p0, p0, Lsun/font/SunFontManager;->physicalFonts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object p0

    const/4 v0, 0x0

    new-array v0, v0, [Lsun/font/PhysicalFont;

    invoke-interface {p0, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lsun/font/PhysicalFont;

    return-object p0
.end method

.method public getPlatformFontDirs(Z)[Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lsun/font/SunFontManager;->pathDirs:[Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0, p1}, Lsun/font/SunFontManager;->getPlatformFontPath(Z)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/util/StringTokenizer;

    sget-object v1, Ljava/io/File;->pathSeparator:Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    :try_start_0
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_1
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    iput-object p1, p0, Lsun/font/SunFontManager;->pathDirs:[Ljava/lang/String;

    return-object p1
.end method

.method public getPlatformFontPath(Z)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lsun/font/SunFontManager;->fontPath:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lsun/font/SunFontManager;->getFontPath(Z)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lsun/font/SunFontManager;->fontPath:Ljava/lang/String;

    :cond_0
    iget-object p0, p0, Lsun/font/SunFontManager;->fontPath:Ljava/lang/String;

    return-object p0
.end method

.method public getRegisteredFontFile(Ljava/lang/String;)Lsun/font/PhysicalFont;
    .locals 0

    iget-object p0, p0, Lsun/font/SunFontManager;->registeredFonts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lsun/font/PhysicalFont;

    return-object p0
.end method

.method public getRegisteredFonts()[Lsun/font/Font2D;
    .locals 4

    invoke-virtual {p0}, Lsun/font/SunFontManager;->getPhysicalFonts()[Lsun/font/PhysicalFont;

    move-result-object v0

    iget v1, p0, Lsun/font/SunFontManager;->maxCompFont:I

    array-length v2, v0

    add-int/2addr v2, v1

    new-array v2, v2, [Lsun/font/Font2D;

    iget-object p0, p0, Lsun/font/SunFontManager;->compFonts:[Lsun/font/CompositeFont;

    const/4 v3, 0x0

    invoke-static {p0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length p0, v0

    invoke-static {v0, v3, v2, v1, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method

.method public getTrueTypeFilter()Ljava/io/FilenameFilter;
    .locals 0

    sget-object p0, Lsun/font/SunFontManager;->ttFilter:Ljava/io/FilenameFilter;

    return-object p0
.end method

.method public getType1Filter()Ljava/io/FilenameFilter;
    .locals 0

    sget-object p0, Lsun/font/SunFontManager;->t1Filter:Ljava/io/FilenameFilter;

    return-object p0
.end method

.method public gotFontsFromPlatform()Z
    .locals 0

    invoke-direct {p0}, Lsun/font/SunFontManager;->getFullNameToFileMap()Ljava/util/HashMap;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/HashMap;->size()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public declared-synchronized initialiseDeferredFont(Ljava/lang/String;)Lsun/font/PhysicalFont;
    .locals 8

    monitor-enter p0

    const/4 v0, 0x0

    if-nez p1, :cond_0

    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_0
    invoke-static {}, Lsun/font/FontUtilities;->isLogging()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Opening deferred font file "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lsun/font/FontUtilities;->logInfo(Ljava/lang/String;)V

    :cond_1
    iget-object v1, p0, Lsun/font/SunFontManager;->deferredFontFiles:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsun/font/SunFontManager$FontRegistrationInfo;

    if-eqz v1, :cond_3

    iget-object v0, p0, Lsun/font/SunFontManager;->deferredFontFiles:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, v1, Lsun/font/SunFontManager$FontRegistrationInfo;->fontFilePath:Ljava/lang/String;

    iget-object v4, v1, Lsun/font/SunFontManager$FontRegistrationInfo;->nativeNames:[Ljava/lang/String;

    iget v5, v1, Lsun/font/SunFontManager$FontRegistrationInfo;->fontFormat:I

    iget-boolean v6, v1, Lsun/font/SunFontManager$FontRegistrationInfo;->javaRasterizer:Z

    iget v7, v1, Lsun/font/SunFontManager$FontRegistrationInfo;->fontRank:I

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lsun/font/SunFontManager;->registerFontFile(Ljava/lang/String;[Ljava/lang/String;IZI)Lsun/font/PhysicalFont;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lsun/font/SunFontManager;->initialisedFonts:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v2, v0, Lsun/font/Font2D;->handle:Lsun/font/Font2DHandle;

    invoke-virtual {v1, p1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lsun/font/SunFontManager;->initialisedFonts:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v2, Lsun/font/SunFontManager;->FONT_HANDLE_NULL:Lsun/font/Font2DHandle;

    invoke-virtual {v1, p1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lsun/font/SunFontManager;->initialisedFonts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsun/font/Font2DHandle;

    if-nez v1, :cond_4

    iget-object v1, p0, Lsun/font/SunFontManager;->initialisedFonts:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v2, Lsun/font/SunFontManager;->FONT_HANDLE_NULL:Lsun/font/Font2DHandle;

    invoke-virtual {v1, p1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_4
    iget-object p1, v1, Lsun/font/Font2DHandle;->font2D:Lsun/font/Font2D;

    move-object v0, p1

    check-cast v0, Lsun/font/PhysicalFont;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized initialiseDeferredFonts()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lsun/font/SunFontManager;->deferredFontFiles:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Lsun/font/SunFontManager;->initialiseDeferredFont(Ljava/lang/String;)Lsun/font/PhysicalFont;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isDeferredFont(Ljava/lang/String;)Z
    .locals 0

    iget-object p0, p0, Lsun/font/SunFontManager;->deferredFontFiles:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isRegisteredFontFile(Ljava/lang/String;)Z
    .locals 0

    iget-object p0, p0, Lsun/font/SunFontManager;->registeredFonts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public loadFontFiles()V
    .locals 1

    invoke-virtual {p0}, Lsun/font/SunFontManager;->loadFonts()V

    iget-boolean v0, p0, Lsun/font/SunFontManager;->loadedAllFontFiles:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lsun/font/FontUtilities;->debugFonts()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Ljava/lang/Thread;->dumpStack()V

    const-string v0, "loadAllFontFiles() called"

    invoke-static {v0}, Lsun/font/FontUtilities;->logInfo(Ljava/lang/String;)V

    :cond_1
    new-instance v0, Lsun/font/SunFontManager$10;

    invoke-direct {v0, p0}, Lsun/font/SunFontManager$10;-><init>(Lsun/font/SunFontManager;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public loadFonts()V
    .locals 1

    iget-boolean v0, p0, Lsun/font/SunFontManager;->discoveredAllFonts:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lsun/font/FontUtilities;->debugFonts()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Ljava/lang/Thread;->dumpStack()V

    const-string v0, "SunGraphicsEnvironment.loadFonts() called"

    invoke-static {v0}, Lsun/font/FontUtilities;->logInfo(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p0}, Lsun/font/SunFontManager;->initialiseDeferredFonts()V

    new-instance v0, Lsun/font/SunFontManager$9;

    invoke-direct {v0, p0}, Lsun/font/SunFontManager$9;-><init>(Lsun/font/SunFontManager;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
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

    return-void
.end method

.method public populateHardcodedFileNameMap()Ljava/util/HashMap;
    .locals 1
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

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava/util/HashMap;-><init>(I)V

    return-object p0
.end method

.method public declared-synchronized preferLocaleFonts()V
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lsun/font/FontUtilities;->isLogging()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Entered preferLocaleFonts()."

    invoke-static {v0}, Lsun/font/FontUtilities;->logInfo(Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Lsun/awt/FontConfiguration;->willReorderForStartupLocale()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-boolean v0, p0, Lsun/font/SunFontManager;->gLocalePref:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    monitor-exit p0

    return-void

    :cond_2
    :try_start_2
    iput-boolean v1, p0, Lsun/font/SunFontManager;->gLocalePref:Z

    iget-object v0, p0, Lsun/font/SunFontManager;->fontNameCache:Ljava/util/concurrent/ConcurrentHashMap;

    iget-boolean v2, p0, Lsun/font/SunFontManager;->gPropPref:Z

    invoke-virtual {p0, v0, v1, v2}, Lsun/font/SunFontManager;->createCompositeFonts(Ljava/util/concurrent/ConcurrentHashMap;ZZ)V

    iput-boolean v1, p0, Lsun/font/SunFontManager;->_usingAlternateComposites:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized preferProportionalFonts()V
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lsun/font/FontUtilities;->isLogging()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Entered preferProportionalFonts()."

    invoke-static {v0}, Lsun/font/FontUtilities;->logInfo(Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Lsun/awt/FontConfiguration;->hasMonoToPropMap()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-boolean v0, p0, Lsun/font/SunFontManager;->gPropPref:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    monitor-exit p0

    return-void

    :cond_2
    :try_start_2
    iput-boolean v1, p0, Lsun/font/SunFontManager;->gPropPref:Z

    iget-object v0, p0, Lsun/font/SunFontManager;->fontNameCache:Ljava/util/concurrent/ConcurrentHashMap;

    iget-boolean v2, p0, Lsun/font/SunFontManager;->gLocalePref:Z

    invoke-virtual {p0, v0, v2, v1}, Lsun/font/SunFontManager;->createCompositeFonts(Ljava/util/concurrent/ConcurrentHashMap;ZZ)V

    iput-boolean v1, p0, Lsun/font/SunFontManager;->_usingAlternateComposites:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public register1dot0Fonts()V
    .locals 1

    new-instance v0, Lsun/font/SunFontManager$11;

    invoke-direct {v0, p0}, Lsun/font/SunFontManager$11;-><init>(Lsun/font/SunFontManager;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    return-void
.end method

.method public registerCompositeFont(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;I[I[IZ)V
    .locals 11

    move-object v0, p0

    .line 1
    new-instance v10, Lsun/font/CompositeFont;

    move-object v1, v10

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move-object v9, p0

    invoke-direct/range {v1 .. v9}, Lsun/font/CompositeFont;-><init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;I[I[IZLsun/font/SunFontManager;)V

    const/4 v1, 0x2

    .line 2
    invoke-direct {p0, v10, v1}, Lsun/font/SunFontManager;->addCompositeToFontList(Lsun/font/CompositeFont;I)V

    .line 3
    iget-object v1, v0, Lsun/font/SunFontManager;->compFonts:[Lsun/font/CompositeFont;

    monitor-enter v1

    .line 4
    :try_start_0
    iget-object v2, v0, Lsun/font/SunFontManager;->compFonts:[Lsun/font/CompositeFont;

    iget v3, v0, Lsun/font/SunFontManager;->maxCompFont:I

    add-int/lit8 v4, v3, 0x1

    iput v4, v0, Lsun/font/SunFontManager;->maxCompFont:I

    aput-object v10, v2, v3

    .line 5
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public registerDeferredFont(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;IZI)V
    .locals 7

    new-instance v6, Lsun/font/SunFontManager$FontRegistrationInfo;

    move-object v0, v6

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lsun/font/SunFontManager$FontRegistrationInfo;-><init>(Ljava/lang/String;[Ljava/lang/String;IZI)V

    iget-object p0, p0, Lsun/font/SunFontManager;->deferredFontFiles:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p1, v6}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public declared-synchronized registerDeferredJREFonts(Ljava/lang/String;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lsun/font/SunFontManager;->deferredFontFiles:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsun/font/SunFontManager$FontRegistrationInfo;

    iget-object v2, v1, Lsun/font/SunFontManager$FontRegistrationInfo;->fontFilePath:Ljava/lang/String;

    if-eqz v2, :cond_0

    invoke-virtual {v2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v1, v1, Lsun/font/SunFontManager$FontRegistrationInfo;->fontFilePath:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lsun/font/SunFontManager;->initialiseDeferredFont(Ljava/lang/String;)Lsun/font/PhysicalFont;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public registerFont(Ljava/awt/Font;)Z
    .locals 10

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    sget-object v1, Lsun/font/SunFontManager;->regFamilyLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lsun/font/SunFontManager;->createdByFamilyName:Ljava/util/Hashtable;

    if-nez v2, :cond_1

    new-instance v2, Ljava/util/Hashtable;

    invoke-direct {v2}, Ljava/util/Hashtable;-><init>()V

    iput-object v2, p0, Lsun/font/SunFontManager;->createdByFamilyName:Ljava/util/Hashtable;

    new-instance v2, Ljava/util/Hashtable;

    invoke-direct {v2}, Ljava/util/Hashtable;-><init>()V

    iput-object v2, p0, Lsun/font/SunFontManager;->createdByFullName:Ljava/util/Hashtable;

    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lsun/font/FontAccess;->getFontAccess()Lsun/font/FontAccess;

    move-result-object v1

    invoke-virtual {v1, p1}, Lsun/font/FontAccess;->isCreatedFont(Ljava/awt/Font;)Z

    move-result v1

    if-nez v1, :cond_2

    return v0

    :cond_2
    invoke-static {}, Lsun/font/SunFontManager;->getInstalledNames()Ljava/util/HashSet;

    move-result-object v1

    invoke-static {}, Lsun/font/SunFontManager;->getSystemStartupLocale()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/awt/Font;->getFamily(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2}, Ljava/awt/Font;->getFontName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    invoke-virtual {v1, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lsun/font/SunFontManager;->createdByFamilyName:Ljava/util/Hashtable;

    iget-object v5, p0, Lsun/font/SunFontManager;->createdByFullName:Ljava/util/Hashtable;

    const/4 v6, 0x1

    iput-boolean v6, p0, Lsun/font/SunFontManager;->fontsAreRegistered:Z

    invoke-static {p1}, Lsun/font/FontUtilities;->getFont2D(Ljava/awt/Font;)Lsun/font/Font2D;

    move-result-object v7

    invoke-virtual {v7}, Lsun/font/Font2D;->getStyle()I

    move-result v8

    invoke-virtual {v1, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lsun/font/FontFamily;

    if-nez v9, :cond_4

    new-instance v9, Lsun/font/FontFamily;

    invoke-virtual {p1, v2}, Ljava/awt/Font;->getFamily(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v9, p1}, Lsun/font/FontFamily;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3, v9}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    iget-boolean p1, p0, Lsun/font/SunFontManager;->fontsAreRegistered:Z

    if-eqz p1, :cond_5

    invoke-virtual {v9, v0}, Lsun/font/FontFamily;->getFont(I)Lsun/font/Font2D;

    move-result-object p1

    invoke-direct {p0, p1}, Lsun/font/SunFontManager;->removeFromCache(Lsun/font/Font2D;)V

    invoke-virtual {v9, v6}, Lsun/font/FontFamily;->getFont(I)Lsun/font/Font2D;

    move-result-object p1

    invoke-direct {p0, p1}, Lsun/font/SunFontManager;->removeFromCache(Lsun/font/Font2D;)V

    const/4 p1, 0x2

    invoke-virtual {v9, p1}, Lsun/font/FontFamily;->getFont(I)Lsun/font/Font2D;

    move-result-object p1

    invoke-direct {p0, p1}, Lsun/font/SunFontManager;->removeFromCache(Lsun/font/Font2D;)V

    const/4 p1, 0x3

    invoke-virtual {v9, p1}, Lsun/font/FontFamily;->getFont(I)Lsun/font/Font2D;

    move-result-object p1

    invoke-direct {p0, p1}, Lsun/font/SunFontManager;->removeFromCache(Lsun/font/Font2D;)V

    invoke-virtual {v5, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lsun/font/Font2D;

    invoke-direct {p0, p1}, Lsun/font/SunFontManager;->removeFromCache(Lsun/font/Font2D;)V

    :cond_5
    invoke-virtual {v9, v7, v8}, Lsun/font/FontFamily;->setFont(Lsun/font/Font2D;I)V

    invoke-virtual {v5, v4, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v6

    :cond_6
    :goto_0
    return v0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public registerFontDir(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public registerFontDirs(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public registerFontFile(Ljava/lang/String;[Ljava/lang/String;IZI)Lsun/font/PhysicalFont;
    .locals 5

    .line 1
    iget-object v0, p0, Lsun/font/SunFontManager;->registeredFonts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/font/PhysicalFont;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-eqz p3, :cond_3

    const/4 p4, 0x1

    if-eq p3, p4, :cond_2

    if-eq p3, v1, :cond_1

    goto :goto_1

    .line 2
    :cond_1
    :try_start_0
    new-instance p2, Lsun/font/NativeFont;

    invoke-direct {p2, p1, v0}, Lsun/font/NativeFont;-><init>(Ljava/lang/String;Z)V

    .line 3
    invoke-virtual {p0, p2, p5}, Lsun/font/SunFontManager;->addToFontList(Lsun/font/PhysicalFont;I)Lsun/font/PhysicalFont;

    move-result-object v2

    goto :goto_1

    .line 4
    :cond_2
    new-instance p4, Lsun/font/Type1Font;

    invoke-direct {p4, p1, p2}, Lsun/font/Type1Font;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 5
    invoke-virtual {p0, p4, p5}, Lsun/font/SunFontManager;->addToFontList(Lsun/font/PhysicalFont;I)Lsun/font/PhysicalFont;

    move-result-object v2

    goto :goto_1

    .line 6
    :cond_3
    :goto_0
    new-instance v3, Lsun/font/AndroidFont2D;

    add-int/lit8 v4, v0, 0x1

    invoke-direct {v3, p1, p2, v0, p4}, Lsun/font/AndroidFont2D;-><init>(Ljava/lang/String;Ljava/lang/Object;IZ)V

    .line 7
    invoke-virtual {p0, v3, p5}, Lsun/font/SunFontManager;->addToFontList(Lsun/font/PhysicalFont;I)Lsun/font/PhysicalFont;

    move-result-object v0

    if-nez v2, :cond_4

    move-object v2, v0

    .line 8
    :cond_4
    invoke-virtual {v3}, Lsun/font/TrueTypeFont;->getFontCount()I

    move-result v0

    if-lt v4, v0, :cond_5

    .line 9
    :goto_1
    invoke-static {}, Lsun/font/FontUtilities;->isLogging()Z

    move-result p2

    if-eqz p2, :cond_6

    .line 10
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Registered file "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, " as font "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p4, " rank="

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lsun/font/FontUtilities;->logInfo(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/awt/FontFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p2

    goto :goto_2

    :cond_5
    move v0, v4

    goto :goto_0

    .line 11
    :goto_2
    invoke-static {}, Lsun/font/FontUtilities;->isLogging()Z

    move-result p4

    if-eqz p4, :cond_6

    .line 12
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "Unusable font: "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p5, " "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lsun/font/FontUtilities;->logInfo(Ljava/lang/String;)V

    :cond_6
    :goto_3
    if-eqz v2, :cond_7

    if-eq p3, v1, :cond_7

    .line 13
    iget-object p0, p0, Lsun/font/SunFontManager;->registeredFonts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    return-object v2
.end method

.method public registerFontFile(Ljava/lang/String;[Ljava/lang/String;IZ)V
    .locals 8

    .line 20
    iget-object v0, p0, Lsun/font/SunFontManager;->registeredFontFiles:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 21
    :cond_0
    sget-object v0, Lsun/font/SunFontManager;->ttFilter:Ljava/io/FilenameFilter;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Ljava/io/FilenameFilter;->accept(Ljava/io/File;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    .line 22
    :cond_1
    sget-object v0, Lsun/font/SunFontManager;->t1Filter:Ljava/io/FilenameFilter;

    invoke-interface {v0, v1, p1}, Ljava/io/FilenameFilter;->accept(Ljava/io/File;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x4

    .line 23
    :goto_0
    iget-object v1, p0, Lsun/font/SunFontManager;->registeredFontFiles:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    if-eqz p4, :cond_3

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p1

    move-object v4, p2

    move v5, v0

    move v7, p3

    .line 24
    invoke-virtual/range {v1 .. v7}, Lsun/font/SunFontManager;->registerDeferredFont(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;IZI)V

    goto :goto_1

    :cond_3
    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, v0

    move v6, p3

    .line 25
    invoke-virtual/range {v1 .. v6}, Lsun/font/SunFontManager;->registerFontFile(Ljava/lang/String;[Ljava/lang/String;IZI)Lsun/font/PhysicalFont;

    :goto_1
    return-void
.end method

.method public registerFonts([Ljava/lang/String;[[Ljava/lang/String;IIZIZ)V
    .locals 12

    const/4 v0, 0x0

    move v1, p3

    :goto_0
    if-ge v0, v1, :cond_1

    if-eqz p7, :cond_0

    aget-object v4, p1, v0

    aget-object v5, p2, v0

    move-object v2, p0

    move-object v3, v4

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    invoke-virtual/range {v2 .. v8}, Lsun/font/SunFontManager;->registerDeferredFont(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;IZI)V

    goto :goto_1

    :cond_0
    aget-object v7, p1, v0

    aget-object v8, p2, v0

    move-object v6, p0

    move/from16 v9, p4

    move/from16 v10, p5

    move/from16 v11, p6

    invoke-virtual/range {v6 .. v11}, Lsun/font/SunFontManager;->registerFontFile(Ljava/lang/String;[Ljava/lang/String;IZI)Lsun/font/PhysicalFont;

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public registerFontsInDir(Ljava/lang/String;)V
    .locals 6

    const/4 v2, 0x1

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    .line 1
    invoke-virtual/range {v0 .. v5}, Lsun/font/SunFontManager;->registerFontsInDir(Ljava/lang/String;ZIZZ)V

    return-void
.end method

.method public registerFontsInDir(Ljava/lang/String;ZIZZ)V
    .locals 13

    move/from16 v0, p3

    .line 2
    new-instance v10, Ljava/io/File;

    move-object v11, p1

    invoke-direct {v10, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3
    sget-object v4, Lsun/font/SunFontManager;->ttFilter:Ljava/io/FilenameFilter;

    const/4 v5, 0x0

    const/4 v12, 0x6

    if-ne v0, v12, :cond_0

    const/4 v1, 0x3

    move v7, v1

    goto :goto_0

    :cond_0
    move v7, v0

    :goto_0
    move-object v1, p0

    move-object v2, p1

    move-object v3, v10

    move v6, p2

    move/from16 v8, p4

    move/from16 v9, p5

    invoke-direct/range {v1 .. v9}, Lsun/font/SunFontManager;->addDirFonts(Ljava/lang/String;Ljava/io/File;Ljava/io/FilenameFilter;IZIZZ)V

    .line 4
    sget-object v3, Lsun/font/SunFontManager;->t1Filter:Ljava/io/FilenameFilter;

    const/4 v4, 0x1

    if-ne v0, v12, :cond_1

    const/4 v0, 0x4

    :cond_1
    move v6, v0

    move-object v0, p0

    move-object v1, p1

    move-object v2, v10

    move v5, p2

    move/from16 v7, p4

    move/from16 v8, p5

    invoke-direct/range {v0 .. v8}, Lsun/font/SunFontManager;->addDirFonts(Ljava/lang/String;Ljava/io/File;Ljava/io/FilenameFilter;IZIZZ)V

    return-void
.end method

.method public registerOtherFontFiles(Ljava/util/HashSet;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lsun/font/SunFontManager;->getFullNameToFileMap()Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lsun/font/SunFontManager;->fontToFileMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lsun/font/SunFontManager;->registerFontFile(Ljava/lang/String;)Lsun/font/PhysicalFont;

    goto :goto_0

    :cond_1
    return-void
.end method

.method public registerPlatformFontsUsedByFontConfiguration()V
    .locals 0

    return-void
.end method

.method public declared-synchronized replaceFont(Lsun/font/PhysicalFont;Lsun/font/PhysicalFont;)V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-object v0, p1, Lsun/font/Font2D;->handle:Lsun/font/Font2DHandle;

    iget-object v0, v0, Lsun/font/Font2DHandle;->font2D:Lsun/font/Font2D;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v0, p1, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x0

    if-ne p1, p2, :cond_5

    :try_start_1
    invoke-static {}, Lsun/font/FontUtilities;->isLogging()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t replace bad font with itself "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lsun/font/FontUtilities;->logSevere(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p0}, Lsun/font/SunFontManager;->getPhysicalFonts()[Lsun/font/PhysicalFont;

    move-result-object v1

    move v2, v0

    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_3

    aget-object v3, v1, v2

    if-eq v3, p2, :cond_2

    move-object p2, v3

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    if-ne p1, p2, :cond_5

    invoke-static {}, Lsun/font/FontUtilities;->isLogging()Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "This is bad. No good physicalFonts found."

    invoke-static {p1}, Lsun/font/FontUtilities;->logSevere(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_4
    monitor-exit p0

    return-void

    :cond_5
    :try_start_2
    iget-object v1, p1, Lsun/font/Font2D;->handle:Lsun/font/Font2DHandle;

    iput-object p2, v1, Lsun/font/Font2DHandle;->font2D:Lsun/font/Font2D;

    iget-object v1, p0, Lsun/font/SunFontManager;->physicalFonts:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v2, p1, Lsun/font/Font2D;->fullName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lsun/font/SunFontManager;->fullNameToFont:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v2, p1, Lsun/font/Font2D;->fullName:Ljava/lang/String;

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Lsun/font/FontFamily;->remove(Lsun/font/Font2D;)V

    iget-object v1, p0, Lsun/font/SunFontManager;->localeFullNamesToFont:Ljava/util/HashMap;

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    new-array v2, v0, [Ljava/util/Map$Entry;

    invoke-interface {v1, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/util/Map$Entry;

    move v2, v0

    :goto_2
    array-length v3, v1

    if-ge v2, v3, :cond_7

    aget-object v3, v1, v2

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-ne v3, p1, :cond_6

    :try_start_3
    aget-object v3, v1, v2

    invoke-interface {v3, p2}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    :catch_0
    :try_start_4
    iget-object v3, p0, Lsun/font/SunFontManager;->localeFullNamesToFont:Ljava/util/HashMap;

    aget-object v4, v1, v2

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_7
    :goto_4
    iget v1, p0, Lsun/font/SunFontManager;->maxCompFont:I

    if-ge v0, v1, :cond_9

    invoke-virtual {p2}, Lsun/font/Font2D;->getRank()I

    move-result v1

    const/4 v2, 0x2

    if-le v1, v2, :cond_8

    iget-object v1, p0, Lsun/font/SunFontManager;->compFonts:[Lsun/font/CompositeFont;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1, p2}, Lsun/font/CompositeFont;->replaceComponentFont(Lsun/font/PhysicalFont;Lsun/font/PhysicalFont;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_9
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public useAbsoluteFontFileNames()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public declared-synchronized useAlternateFontforJALocales()V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lsun/font/FontUtilities;->isLogging()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Entered useAlternateFontforJALocales()."

    invoke-static {v0}, Lsun/font/FontUtilities;->logInfo(Ljava/lang/String;)V

    :cond_0
    sget-boolean v0, Lsun/font/FontUtilities;->isWindows:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    monitor-exit p0

    return-void

    :cond_1
    const/4 v0, 0x1

    :try_start_1
    sput-boolean v0, Lsun/font/SunFontManager;->gAltJAFont:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public usePlatformFontMetrics()Z
    .locals 0

    iget-boolean p0, p0, Lsun/font/SunFontManager;->usePlatformFontMetrics:Z

    return p0
.end method

.method public usingAlternateCompositeFonts()Z
    .locals 0

    iget-boolean p0, p0, Lsun/font/SunFontManager;->_usingAlternateComposites:Z

    return p0
.end method

.method public usingAlternateFontforJALocales()Z
    .locals 0

    sget-boolean p0, Lsun/font/SunFontManager;->gAltJAFont:Z

    return p0
.end method
