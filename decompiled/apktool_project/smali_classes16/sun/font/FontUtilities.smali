.class public final Lsun/font/FontUtilities;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final MAX_LAYOUT_CHARCODE:I = 0x206f

.field public static final MIN_LAYOUT_CHARCODE:I = 0x300

.field private static volatile compMapRef:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference<",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Lsun/font/PhysicalFont;",
            "Lsun/font/CompositeFont;",
            ">;>;"
        }
    .end annotation
.end field

.field private static debugFonts:Z

.field public static isLinux:Z

.field public static isMacOSX:Z

.field public static isMacOSX14:Z

.field public static isWindows:Z

.field private static logger:Lsun/util/logging/NeoPlatformLogger;

.field private static logging:Z

.field private static final nameMap:[[Ljava/lang/String;

.field public static useJDKScaler:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Lsun/font/FontUtilities$1;

    invoke-direct {v0}, Lsun/font/FontUtilities$1;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    new-instance v0, Ljava/lang/ref/SoftReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lsun/font/FontUtilities;->compMapRef:Ljava/lang/ref/SoftReference;

    const/4 v0, 0x4

    new-array v0, v0, [[Ljava/lang/String;

    const-string v1, "sans"

    const-string v2, "sansserif"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    aput-object v1, v0, v3

    const-string v1, "sans-serif"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "serif"

    filled-new-array {v1, v1}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "monospace"

    const-string v2, "monospaced"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sput-object v0, Lsun/font/FontUtilities;->nameMap:[[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$002(Z)Z
    .locals 0

    sput-boolean p0, Lsun/font/FontUtilities;->debugFonts:Z

    return p0
.end method

.method public static synthetic access$100()Lsun/util/logging/NeoPlatformLogger;
    .locals 1

    sget-object v0, Lsun/font/FontUtilities;->logger:Lsun/util/logging/NeoPlatformLogger;

    return-object v0
.end method

.method public static synthetic access$102(Lsun/util/logging/NeoPlatformLogger;)Lsun/util/logging/NeoPlatformLogger;
    .locals 0

    sput-object p0, Lsun/font/FontUtilities;->logger:Lsun/util/logging/NeoPlatformLogger;

    return-object p0
.end method

.method public static synthetic access$202(Z)Z
    .locals 0

    sput-boolean p0, Lsun/font/FontUtilities;->logging:Z

    return p0
.end method

.method public static debugFonts()Z
    .locals 1

    sget-boolean v0, Lsun/font/FontUtilities;->debugFonts:Z

    return v0
.end method

.method public static fontSupportsDefaultEncoding(Ljava/awt/Font;)Z
    .locals 0

    invoke-static {p0}, Lsun/font/FontUtilities;->getFont2D(Ljava/awt/Font;)Lsun/font/Font2D;

    move-result-object p0

    instance-of p0, p0, Lsun/font/CompositeFont;

    return p0
.end method

.method public static getCompositeFontUIResource(Ljava/awt/Font;)Ljavax/swing/plaf/FontUIResource;
    .locals 5

    new-instance v0, Ljavax/swing/plaf/FontUIResource;

    invoke-direct {v0, p0}, Ljavax/swing/plaf/FontUIResource;-><init>(Ljava/awt/Font;)V

    invoke-static {p0}, Lsun/font/FontUtilities;->getFont2D(Ljava/awt/Font;)Lsun/font/Font2D;

    move-result-object v1

    instance-of v2, v1, Lsun/font/PhysicalFont;

    if-nez v2, :cond_0

    return-object v0

    :cond_0
    invoke-static {}, Lsun/font/FontManagerFactory;->getInstance()Lsun/font/FontManager;

    move-result-object v2

    invoke-virtual {p0}, Ljava/awt/Font;->getStyle()I

    move-result p0

    const/4 v3, 0x0

    const-string v4, "dialog"

    invoke-interface {v2, v4, p0, v3}, Lsun/font/FontManager;->findFont2D(Ljava/lang/String;II)Lsun/font/Font2D;

    move-result-object p0

    if-eqz p0, :cond_4

    instance-of v2, p0, Lsun/font/CompositeFont;

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    check-cast p0, Lsun/font/CompositeFont;

    check-cast v1, Lsun/font/PhysicalFont;

    sget-object v2, Lsun/font/FontUtilities;->compMapRef:Ljava/lang/ref/SoftReference;

    invoke-virtual {v2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v2, :cond_2

    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    new-instance v3, Ljava/lang/ref/SoftReference;

    invoke-direct {v3, v2}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    sput-object v3, Lsun/font/FontUtilities;->compMapRef:Ljava/lang/ref/SoftReference;

    :cond_2
    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lsun/font/CompositeFont;

    if-nez v3, :cond_3

    new-instance v3, Lsun/font/CompositeFont;

    invoke-direct {v3, v1, p0}, Lsun/font/CompositeFont;-><init>(Lsun/font/PhysicalFont;Lsun/font/CompositeFont;)V

    invoke-virtual {v2, v1, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    invoke-static {}, Lsun/font/FontAccess;->getFontAccess()Lsun/font/FontAccess;

    move-result-object p0

    iget-object v1, v3, Lsun/font/Font2D;->handle:Lsun/font/Font2DHandle;

    invoke-virtual {p0, v0, v1}, Lsun/font/FontAccess;->setFont2D(Ljava/awt/Font;Lsun/font/Font2DHandle;)V

    invoke-static {}, Lsun/font/FontAccess;->getFontAccess()Lsun/font/FontAccess;

    move-result-object p0

    invoke-virtual {p0, v0}, Lsun/font/FontAccess;->setCreatedFont(Ljava/awt/Font;)V

    :cond_4
    :goto_0
    return-object v0
.end method

.method public static getFont2D(Ljava/awt/Font;)Lsun/font/Font2D;
    .locals 1

    invoke-static {}, Lsun/font/FontAccess;->getFontAccess()Lsun/font/FontAccess;

    move-result-object v0

    invoke-virtual {v0, p0}, Lsun/font/FontAccess;->getFont2D(Ljava/awt/Font;)Lsun/font/Font2D;

    move-result-object p0

    return-object p0
.end method

.method public static getFontConfigFUIR(Ljava/lang/String;II)Ljavax/swing/plaf/FontUIResource;
    .locals 2

    invoke-static {p0}, Lsun/font/FontUtilities;->mapFcName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, "sansserif"

    :cond_0
    invoke-static {}, Lsun/font/FontManagerFactory;->getInstance()Lsun/font/FontManager;

    move-result-object v0

    instance-of v1, v0, Lsun/font/SunFontManager;

    if-eqz v1, :cond_1

    check-cast v0, Lsun/font/SunFontManager;

    invoke-virtual {v0, p0, p1, p2}, Lsun/font/SunFontManager;->getFontConfigFUIR(Ljava/lang/String;II)Ljavax/swing/plaf/FontUIResource;

    move-result-object p0

    goto :goto_0

    :cond_1
    new-instance v0, Ljavax/swing/plaf/FontUIResource;

    invoke-direct {v0, p0, p1, p2}, Ljavax/swing/plaf/FontUIResource;-><init>(Ljava/lang/String;II)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public static getLogger()Lsun/util/logging/NeoPlatformLogger;
    .locals 1

    sget-object v0, Lsun/font/FontUtilities;->logger:Lsun/util/logging/NeoPlatformLogger;

    return-object v0
.end method

.method public static isComplexCharCode(I)Z
    .locals 4

    const/16 v0, 0x300

    const/4 v1, 0x0

    if-lt p0, v0, :cond_10

    const/16 v0, 0x206f

    if-le p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v2, 0x36f

    const/4 v3, 0x1

    if-gt p0, v2, :cond_1

    return v3

    :cond_1
    const/16 v2, 0x590

    if-ge p0, v2, :cond_2

    return v1

    :cond_2
    const/16 v2, 0x6ff

    if-gt p0, v2, :cond_3

    return v3

    :cond_3
    const/16 v2, 0x900

    if-ge p0, v2, :cond_4

    return v1

    :cond_4
    const/16 v2, 0xe7f

    if-gt p0, v2, :cond_5

    return v3

    :cond_5
    const/16 v2, 0xf00

    if-ge p0, v2, :cond_6

    return v1

    :cond_6
    const/16 v2, 0xfff

    if-gt p0, v2, :cond_7

    return v3

    :cond_7
    const/16 v2, 0x10a0

    if-ge p0, v2, :cond_8

    return v3

    :cond_8
    const/16 v2, 0x1100

    if-ge p0, v2, :cond_9

    return v1

    :cond_9
    const/16 v2, 0x11ff

    if-ge p0, v2, :cond_a

    return v3

    :cond_a
    const/16 v2, 0x1780

    if-ge p0, v2, :cond_b

    return v1

    :cond_b
    const/16 v2, 0x17ff

    if-gt p0, v2, :cond_c

    return v3

    :cond_c
    const/16 v2, 0x200c

    if-ge p0, v2, :cond_d

    return v1

    :cond_d
    const/16 v2, 0x200d

    if-gt p0, v2, :cond_e

    return v3

    :cond_e
    const/16 v2, 0x202a

    if-lt p0, v2, :cond_f

    const/16 v2, 0x202e

    if-gt p0, v2, :cond_f

    return v3

    :cond_f
    const/16 v2, 0x206a

    if-lt p0, v2, :cond_10

    if-gt p0, v0, :cond_10

    return v3

    :cond_10
    :goto_0
    return v1
.end method

.method public static isComplexScript([CII)Z
    .locals 2

    :goto_0
    if-ge p1, p2, :cond_2

    aget-char v0, p0, p1

    const/16 v1, 0x300

    if-ge v0, v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {v0}, Lsun/font/FontUtilities;->isComplexCharCode(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public static isComplexText([CII)Z
    .locals 2

    :goto_0
    if-ge p1, p2, :cond_2

    aget-char v0, p0, p1

    const/16 v1, 0x300

    if-ge v0, v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {v0}, Lsun/font/FontUtilities;->isNonSimpleChar(C)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public static isLogging()Z
    .locals 1

    sget-boolean v0, Lsun/font/FontUtilities;->logging:Z

    return v0
.end method

.method public static isNonSimpleChar(C)Z
    .locals 1

    invoke-static {p0}, Lsun/font/FontUtilities;->isComplexCharCode(I)Z

    move-result v0

    if-nez v0, :cond_1

    const v0, 0xd800

    if-lt p0, v0, :cond_0

    const v0, 0xdfff

    if-gt p0, v0, :cond_0

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

.method public static logInfo(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lsun/font/FontUtilities;->getLogger()Lsun/util/logging/NeoPlatformLogger;

    move-result-object v0

    invoke-virtual {v0, p0}, Lsun/util/logging/NeoPlatformLogger;->info(Ljava/lang/String;)V

    return-void
.end method

.method public static logSevere(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lsun/font/FontUtilities;->getLogger()Lsun/util/logging/NeoPlatformLogger;

    move-result-object v0

    invoke-virtual {v0, p0}, Lsun/util/logging/NeoPlatformLogger;->severe(Ljava/lang/String;)V

    return-void
.end method

.method public static logWarning(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lsun/font/FontUtilities;->getLogger()Lsun/util/logging/NeoPlatformLogger;

    move-result-object v0

    invoke-virtual {v0, p0}, Lsun/util/logging/NeoPlatformLogger;->warning(Ljava/lang/String;)V

    return-void
.end method

.method public static mapFcName(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    sget-object v2, Lsun/font/FontUtilities;->nameMap:[[Ljava/lang/String;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    aget-object v3, v2, v1

    aget-object v3, v3, v0

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    aget-object p0, v2, v1

    const/4 v0, 0x1

    aget-object p0, p0, v0

    return-object p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static textLayoutIsCompatible(Ljava/awt/Font;)Z
    .locals 2

    invoke-static {p0}, Lsun/font/FontUtilities;->getFont2D(Ljava/awt/Font;)Lsun/font/Font2D;

    move-result-object p0

    instance-of v0, p0, Lsun/font/TrueTypeFont;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    check-cast p0, Lsun/font/TrueTypeFont;

    const v0, 0x47535542

    invoke-virtual {p0, v0}, Lsun/font/TrueTypeFont;->getDirectoryEntry(I)Lsun/font/TrueTypeFont$DirectoryEntry;

    move-result-object v0

    if-eqz v0, :cond_0

    const v0, 0x47504f53

    invoke-virtual {p0, v0}, Lsun/font/TrueTypeFont;->getDirectoryEntry(I)Lsun/font/TrueTypeFont$DirectoryEntry;

    move-result-object p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method
