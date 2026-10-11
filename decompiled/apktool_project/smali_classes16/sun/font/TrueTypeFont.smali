.class public Lsun/font/TrueTypeFont;
.super Lsun/font/FileFont;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/font/TrueTypeFont$TTDisposerRecord;,
        Lsun/font/TrueTypeFont$DirectoryEntry;
    }
.end annotation


# static fields
.field private static final DIRECTORYENTRYSIZE:I = 0x10

.field private static final DIRECTORYHEADERSIZE:I = 0xc

.field public static final EBLCTag:I = 0x45424c43

.field private static final EMPTY_COMPATIBLE_LCIDS:[S

.field public static final ENGLISH_LOCALE_ID:S = 0x409s

.field public static final FAMILY_NAME_ID:I = 0x1

.field public static final FULL_NAME_ID:I = 0x4

.field public static final GDEFTag:I = 0x47444546

.field public static final GPOSTag:I = 0x47504f53

.field public static final GSUBTag:I = 0x47535542

.field public static final MACROMAN_ENGLISH_LANG:I = 0x0

.field public static final MACROMAN_SPECIFIC_ID:I = 0x0

.field public static final MAC_PLATFORM_ID:I = 0x1

.field public static final MS_PLATFORM_ID:I = 0x3

.field public static final POSTSCRIPT_NAME_ID:I = 0x6

.field private static final TTCHEADERSIZE:I = 0xc

.field private static final US_LCID:S = 0x409s

.field public static final cmapTag:I = 0x636d6170

.field private static final codePages:[Ljava/lang/String;

.field private static defaultCodePage:Ljava/lang/String; = null

.field static final encoding_mapping:[Ljava/lang/String;

.field public static final fdscTag:I = 0x66647363

.field public static final featTag:I = 0x66656174

.field private static final fsSelectionBoldBit:I = 0x20

.field private static final fsSelectionItalicBit:I = 0x1

.field private static final fsSelectionRegularBit:I = 0x40

.field public static final fvarTag:I = 0x66766172

.field public static final gaspTag:I = 0x67617370

.field public static final glyfTag:I = 0x676c7966

.field public static final headTag:I = 0x68656164

.field public static final hheaTag:I = 0x68686561

.field public static final hmtxTag:I = 0x686d7478

.field private static final languages:[[Ljava/lang/String;

.field private static lcidLanguageCompatibilityMap:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[S>;"
        }
    .end annotation
.end field

.field private static lcidMap:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Short;",
            ">;"
        }
    .end annotation
.end field

.field public static final locaTag:I = 0x6c6f6361

.field public static final maxpTag:I = 0x6d617870

.field public static final mortTag:I = 0x6d6f7274

.field public static final morxTag:I = 0x6d6f7278

.field public static final nameTag:I = 0x6e616d65

.field public static final os_2Tag:I = 0x4f532f32

.field public static final ottoTag:I = 0x4f54544f

.field public static final postTag:I = 0x706f7374

.field public static final reserved_bits1:I = -0x80000000

.field public static final reserved_bits2:I = 0xffff

.field public static final trueTag:I = 0x74727565

.field public static final ttcfTag:I = 0x74746366

.field public static final v1ttTag:I = 0x10000


# instance fields
.field directoryCount:I

.field directoryOffset:I

.field disposerRecord:Lsun/font/TrueTypeFont$TTDisposerRecord;

.field fontDataSize:I

.field fontIndex:I

.field private fontWeight:I

.field private fontWidth:I

.field private gaspTable:[C

.field private languageCompatibleLCIDs:[S

.field private localeFamilyName:Ljava/lang/String;

.field private localeFullName:Ljava/lang/String;

.field private nameLocale:Ljava/util/Locale;

.field numTables:I

.field private stPos:F

.field private stSize:F

.field protected supportsCJK:Z

.field protected supportsJA:Z

.field tableDirectory:[Lsun/font/TrueTypeFont$DirectoryEntry;

.field private ulPos:F

.field private ulSize:F


# direct methods
.method public static constructor <clinit>()V
    .locals 32

    const-string v0, "cp1252"

    const-string v1, "cp1250"

    const-string v2, "cp1251"

    const-string v3, "cp1253"

    const-string v4, "cp1254"

    const-string v5, "cp1255"

    const-string v6, "cp1256"

    const-string v7, "cp1257"

    const-string v8, ""

    const-string v9, ""

    const-string v10, ""

    const-string v11, ""

    const-string v12, ""

    const-string v13, ""

    const-string v14, ""

    const-string v15, ""

    const-string v16, "ms874"

    const-string v17, "ms932"

    const-string v18, "gbk"

    const-string v19, "ms949"

    const-string v20, "ms950"

    const-string v21, "ms1361"

    const-string v22, ""

    const-string v23, ""

    const-string v24, ""

    const-string v25, ""

    const-string v26, ""

    const-string v27, ""

    const-string v28, ""

    const-string v29, ""

    const-string v30, ""

    const-string v31, ""

    filled-new-array/range {v0 .. v31}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lsun/font/TrueTypeFont;->encoding_mapping:[Ljava/lang/String;

    const/16 v0, 0xe

    new-array v0, v0, [[Ljava/lang/String;

    const-string v1, "en"

    const-string v2, "ca"

    const-string v3, "da"

    const-string v4, "de"

    const-string v5, "es"

    const-string v6, "fi"

    const-string v7, "fr"

    const-string v8, "is"

    const-string v9, "it"

    const-string v10, "nl"

    const-string v11, "no"

    const-string v12, "pt"

    const-string v13, "sq"

    const-string v14, "sv"

    filled-new-array/range {v1 .. v14}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v3, "cs"

    const-string v4, "cz"

    const-string v5, "et"

    const-string v6, "hr"

    const-string v7, "hu"

    const-string v8, "nr"

    const-string v9, "pl"

    const-string v10, "ro"

    const-string v11, "sk"

    const-string v12, "sl"

    const-string v13, "sq"

    const-string v14, "sr"

    filled-new-array/range {v3 .. v14}, [Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const-string v1, "sh"

    const-string v3, "uk"

    const-string v4, "bg"

    const-string v5, "mk"

    const-string v6, "ru"

    filled-new-array {v4, v5, v6, v1, v3}, [Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x2

    aput-object v1, v0, v3

    const-string v1, "el"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x3

    aput-object v1, v0, v3

    const-string v1, "tr"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x4

    aput-object v1, v0, v3

    const-string v1, "he"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x5

    aput-object v1, v0, v3

    const-string v1, "ar"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x6

    aput-object v1, v0, v3

    const-string v1, "lt"

    const-string v3, "lv"

    const-string v4, "et"

    filled-new-array {v4, v1, v3}, [Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x7

    aput-object v1, v0, v3

    const-string v1, "th"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x8

    aput-object v1, v0, v3

    const-string v1, "ja"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x9

    aput-object v1, v0, v3

    const-string v1, "zh"

    const-string v3, "zh_CN"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0xa

    aput-object v1, v0, v3

    const-string v1, "ko"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0xb

    aput-object v3, v0, v4

    const-string v3, "zh_HK"

    const-string v4, "zh_TW"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0xc

    aput-object v3, v0, v4

    const/16 v3, 0xd

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    sput-object v0, Lsun/font/TrueTypeFont;->languages:[[Ljava/lang/String;

    const-string v4, "cp1252"

    const-string v5, "cp1250"

    const-string v6, "cp1251"

    const-string v7, "cp1253"

    const-string v8, "cp1254"

    const-string v9, "cp1255"

    const-string v10, "cp1256"

    const-string v11, "cp1257"

    const-string v12, "ms874"

    const-string v13, "ms932"

    const-string v14, "gbk"

    const-string v15, "ms949"

    const-string v16, "ms950"

    const-string v17, "ms1361"

    filled-new-array/range {v4 .. v17}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lsun/font/TrueTypeFont;->codePages:[Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lsun/font/TrueTypeFont;->defaultCodePage:Ljava/lang/String;

    new-array v0, v2, [S

    sput-object v0, Lsun/font/TrueTypeFont;->EMPTY_COMPATIBLE_LCIDS:[S

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;IZ)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/awt/FontFormatException;
        }
    .end annotation

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    .line 1
    invoke-direct/range {v0 .. v5}, Lsun/font/TrueTypeFont;-><init>(Ljava/lang/String;Ljava/lang/Object;IZZ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;IZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/awt/FontFormatException;
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1, p2}, Lsun/font/FileFont;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 3
    new-instance p1, Lsun/font/TrueTypeFont$TTDisposerRecord;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lsun/font/TrueTypeFont$TTDisposerRecord;-><init>(Lsun/font/TrueTypeFont$1;)V

    iput-object p1, p0, Lsun/font/TrueTypeFont;->disposerRecord:Lsun/font/TrueTypeFont$TTDisposerRecord;

    const/4 p1, 0x0

    .line 4
    iput p1, p0, Lsun/font/TrueTypeFont;->fontIndex:I

    const/4 p2, 0x1

    .line 5
    iput p2, p0, Lsun/font/TrueTypeFont;->directoryCount:I

    .line 6
    iput p1, p0, Lsun/font/TrueTypeFont;->fontWidth:I

    .line 7
    iput p1, p0, Lsun/font/TrueTypeFont;->fontWeight:I

    .line 8
    iput-boolean p4, p0, Lsun/font/FileFont;->useJavaRasterizer:Z

    const/4 p1, 0x3

    .line 9
    iput p1, p0, Lsun/font/Font2D;->fontRank:I

    .line 10
    :try_start_0
    invoke-direct {p0, p5}, Lsun/font/TrueTypeFont;->verify(Z)V

    .line 11
    invoke-virtual {p0, p3}, Lsun/font/TrueTypeFont;->init(I)V

    if-nez p5, :cond_0

    .line 12
    invoke-virtual {p0}, Lsun/font/TrueTypeFont;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    :cond_0
    iget-object p1, p0, Lsun/font/TrueTypeFont;->disposerRecord:Lsun/font/TrueTypeFont$TTDisposerRecord;

    invoke-static {p0, p1}, Lsun/java2d/Disposer;->addObjectRecord(Ljava/lang/Object;Lsun/java2d/DisposerRecord;)V

    return-void

    :catchall_0
    move-exception p1

    .line 14
    invoke-virtual {p0}, Lsun/font/TrueTypeFont;->close()V

    .line 15
    instance-of p0, p1, Ljava/awt/FontFormatException;

    if-eqz p0, :cond_1

    .line 16
    check-cast p1, Ljava/awt/FontFormatException;

    throw p1

    .line 17
    :cond_1
    new-instance p0, Ljava/awt/FontFormatException;

    const-string p1, "Unexpected runtime exception."

    invoke-direct {p0, p1}, Ljava/awt/FontFormatException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static addLCIDMapEntry(Ljava/util/Map;Ljava/lang/String;S)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Short;",
            ">;",
            "Ljava/lang/String;",
            "S)V"
        }
    .end annotation

    invoke-static {p2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static createLCIDLanguageCompatibilityMap()V
    .locals 6

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x5

    new-array v2, v1, [S

    fill-array-data v2, :array_0

    const-string v3, "de"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x2

    new-array v3, v2, [S

    fill-array-data v3, :array_1

    const-string v4, "no"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v3, v2, [S

    fill-array-data v3, :array_2

    const-string v4, "ru"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v3, v2, [S

    fill-array-data v3, :array_3

    const-string v4, "sv"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v3, v2, [S

    fill-array-data v3, :array_4

    const-string v4, "pt"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x3

    new-array v4, v3, [S

    fill-array-data v4, :array_5

    const-string v5, "qu"

    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v4, v2, [S

    fill-array-data v4, :array_6

    const-string v5, "ms"

    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v4, 0xb

    new-array v4, v4, [S

    fill-array-data v4, :array_7

    const-string v5, "en"

    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v4, v2, [S

    fill-array-data v4, :array_8

    const-string v5, "hr"

    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v4, v2, [S

    fill-array-data v4, :array_9

    const-string v5, "it"

    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v4, 0x6

    new-array v4, v4, [S

    fill-array-data v4, :array_a

    const-string v5, "fr"

    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v4, 0x13

    new-array v4, v4, [S

    fill-array-data v4, :array_b

    const-string v5, "es"

    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v1, v1, [S

    fill-array-data v1, :array_c

    const-string v4, "zh"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x10

    new-array v1, v1, [S

    fill-array-data v1, :array_d

    const-string v4, "ar"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v1, v3, [S

    fill-array-data v1, :array_e

    const-string v3, "se"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v1, v2, [S

    fill-array-data v1, :array_f

    const-string v3, "ro"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v1, v2, [S

    fill-array-data v1, :array_10

    const-string v3, "nl"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v1, v2, [S

    fill-array-data v1, :array_11

    const-string v2, "sr"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sput-object v0, Lsun/font/TrueTypeFont;->lcidLanguageCompatibilityMap:Ljava/util/Map;

    return-void

    :array_0
    .array-data 2
        0x407s
        0xc07s
        0x1407s
        0x807s
        0x1007s
    .end array-data

    nop

    :array_1
    .array-data 2
        0x414s
        0x814s
    .end array-data

    :array_2
    .array-data 2
        0x419s
        0x819s
    .end array-data

    :array_3
    .array-data 2
        0x41ds
        0x81ds
    .end array-data

    :array_4
    .array-data 2
        0x416s
        0x816s
    .end array-data

    :array_5
    .array-data 2
        0x46bs
        0xc6bs
        0x86bs
    .end array-data

    nop

    :array_6
    .array-data 2
        0x43es
        0x83es
    .end array-data

    :array_7
    .array-data 2
        0x2c09s
        0xc09s
        0x3009s
        0x2009s
        0x2809s
        0x1009s
        0x3409s
        0x1809s
        0x1c09s
        0x1409s
        0x809s
    .end array-data

    nop

    :array_8
    .array-data 2
        0x41as
        0x101as
    .end array-data

    :array_9
    .array-data 2
        0x410s
        0x810s
    .end array-data

    :array_a
    .array-data 2
        0x40cs
        0x140cs
        0x180cs
        0x80cs
        0xc0cs
        0x100cs
    .end array-data

    :array_b
    .array-data 2
        0x40as
        0x300as
        0x380as
        0x80as
        0x200as
        0x4c0as
        0x440as
        0x240as
        0x340as
        0x140as
        0x1c0as
        0x2c0as
        0x400as
        0x100as
        0x280as
        0x180as
        0x480as
        0x500as
        0x3c0as
    .end array-data

    nop

    :array_c
    .array-data 2
        0x404s
        0xc04s
        0x1404s
        0x1004s
        0x804s
    .end array-data

    nop

    :array_d
    .array-data 2
        0x401s
        0x2001s
        0x4001s
        0x2401s
        0x801s
        0x3801s
        0x3c01s
        0x2c01s
        0x3401s
        0x2801s
        0x1c01s
        0x3001s
        0x1001s
        0x1401s
        0x1801s
        0xc01s
    .end array-data

    :array_e
    .array-data 2
        0x43bs
        0xc3bs
        0x83bs
    .end array-data

    nop

    :array_f
    .array-data 2
        0x418s
        0x818s
    .end array-data

    :array_10
    .array-data 2
        0x413s
        0x813s
    .end array-data

    :array_11
    .array-data 2
        0x1c1as
        0xc1as
    .end array-data
.end method

.method private static declared-synchronized createLCIDMap()V
    .locals 4

    const-class v0, Lsun/font/TrueTypeFont;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lsun/font/TrueTypeFont;->lcidMap:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    :try_start_1
    new-instance v1, Ljava/util/HashMap;

    const/16 v2, 0xc8

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    const-string v2, "ar"

    const/16 v3, 0x401

    invoke-static {v1, v2, v3}, Lsun/font/TrueTypeFont;->addLCIDMapEntry(Ljava/util/Map;Ljava/lang/String;S)V

    const-string v2, "bg"

    const/16 v3, 0x402

    invoke-static {v1, v2, v3}, Lsun/font/TrueTypeFont;->addLCIDMapEntry(Ljava/util/Map;Ljava/lang/String;S)V

    const-string v2, "ca"

    const/16 v3, 0x403

    invoke-static {v1, v2, v3}, Lsun/font/TrueTypeFont;->addLCIDMapEntry(Ljava/util/Map;Ljava/lang/String;S)V

    const-string v2, "zh"

    const/16 v3, 0x404

    invoke-static {v1, v2, v3}, Lsun/font/TrueTypeFont;->addLCIDMapEntry(Ljava/util/Map;Ljava/lang/String;S)V

    const-string v2, "cs"

    const/16 v3, 0x405

    invoke-static {v1, v2, v3}, Lsun/font/TrueTypeFont;->addLCIDMapEntry(Ljava/util/Map;Ljava/lang/String;S)V

    const-string v2, "da"

    const/16 v3, 0x406

    invoke-static {v1, v2, v3}, Lsun/font/TrueTypeFont;->addLCIDMapEntry(Ljava/util/Map;Ljava/lang/String;S)V

    const-string v2, "de"

    const/16 v3, 0x407

    invoke-static {v1, v2, v3}, Lsun/font/TrueTypeFont;->addLCIDMapEntry(Ljava/util/Map;Ljava/lang/String;S)V

    const-string v2, "el"

    const/16 v3, 0x408

    invoke-static {v1, v2, v3}, Lsun/font/TrueTypeFont;->addLCIDMapEntry(Ljava/util/Map;Ljava/lang/String;S)V

    const-string v2, "es"

    const/16 v3, 0x40a

    invoke-static {v1, v2, v3}, Lsun/font/TrueTypeFont;->addLCIDMapEntry(Ljava/util/Map;Ljava/lang/String;S)V

    const-string v2, "fi"

    const/16 v3, 0x40b

    invoke-static {v1, v2, v3}, Lsun/font/TrueTypeFont;->addLCIDMapEntry(Ljava/util/Map;Ljava/lang/String;S)V

    const-string v2, "fr"

    const/16 v3, 0x40c

    invoke-static {v1, v2, v3}, Lsun/font/TrueTypeFont;->addLCIDMapEntry(Ljava/util/Map;Ljava/lang/String;S)V

    const-string v2, "iw"

    const/16 v3, 0x40d

    invoke-static {v1, v2, v3}, Lsun/font/TrueTypeFont;->addLCIDMapEntry(Ljava/util/Map;Ljava/lang/String;S)V

    const-string v2, "hu"

    const/16 v3, 0x40e

    invoke-static {v1, v2, v3}, Lsun/font/TrueTypeFont;->addLCIDMapEntry(Ljava/util/Map;Ljava/lang/String;S)V

    const-string v2, "is"

    const/16 v3, 0x40f

    invoke-static {v1, v2, v3}, Lsun/font/TrueTypeFont;->addLCIDMapEntry(Ljava/util/Map;Ljava/lang/String;S)V

    const-string v2, "it"

    const/16 v3, 0x410

    invoke-static {v1, v2, v3}, Lsun/font/TrueTypeFont;->addLCIDMapEntry(Ljava/util/Map;Ljava/lang/String;S)V

    const-string v2, "ja"

    const/16 v3, 0x411

    invoke-static {v1, v2, v3}, Lsun/font/TrueTypeFont;->addLCIDMapEntry(Ljava/util/Map;Ljava/lang/String;S)V

    const-string v2, "ko"

    const/16 v3, 0x412

    invoke-static {v1, v2, v3}, Lsun/font/TrueTypeFont;->addLCIDMapEntry(Ljava/util/Map;Ljava/lang/String;S)V

    const-string v2, "nl"

    const/16 v3, 0x413

    invoke-static {v1, v2, v3}, Lsun/font/TrueTypeFont;->addLCIDMapEntry(Ljava/util/Map;Ljava/lang/String;S)V

    const-string v2, "no"

    const/16 v3, 0x414

    invoke-static {v1, v2, v3}, Lsun/font/TrueTypeFont;->addLCIDMapEntry(Ljava/util/Map;Ljava/lang/String;S)V

    const-string v2, "pl"

    const/16 v3, 0x415

    invoke-static {v1, v2, v3}, Lsun/font/TrueTypeFont;->addLCIDMapEntry(Ljava/util/Map;Ljava/lang/String;S)V

    const-string v2, "pt"

    const/16 v3, 0x416

    invoke-static {v1, v2, v3}, Lsun/font/TrueTypeFont;->addLCIDMapEntry(Ljava/util/Map;Ljava/lang/String;S)V

    const-string v2, "rm"

    const/16 v3, 0x417

    invoke-static {v1, v2, v3}, Lsun/font/TrueTypeFont;->addLCIDMapEntry(Ljava/util/Map;Ljava/lang/String;S)V

    const-string v2, "ro"

    const/16 v3, 0x418

    invoke-static {v1, v2, v3}, Lsun/font/TrueTypeFont;->addLCIDMapEntry(Ljava/util/Map;Ljava/lang/String;S)V

    const-string v2, "ru"

    const/16 v3, 0x419

    invoke-static {v1, v2, v3}, Lsun/font/TrueTypeFont;->addLCIDMapEntry(Ljava/util/Map;Ljava/lang/String;S)V

    const-string v2, "hr"

    const/16 v3, 0x41a

    invoke-static {v1, v2, v3}, Lsun/font/TrueTypeFont;->addLCIDMapEntry(Ljava/util/Map;Ljava/lang/String;S)V

    const-string v2, "sk"

    const/16 v3, 0x41b

    invoke-static {v1, v2, v3}, Lsun/font/TrueTypeFont;->addLCIDMapEntry(Ljava/util/Map;Ljava/lang/String;S)V

    const-string v2, "sq"

    const/16 v3, 0x41c

    invoke-static {v1, v2, v3}, Lsun/font/TrueTypeFont;->addLCIDMapEntry(Ljava/util/Map;Ljava/lang/String;S)V

    const-string v2, "sv"

    const/16 v3, 0x41d

    invoke-static {v1, v2, v3}, Lsun/font/TrueTypeFont;->addLCIDMapEntry(Ljava/util/Map;Ljava/lang/String;S)V

    const-string v2, "th"

    const/16 v3, 0x41e

    invoke-static {v1, v2, v3}, Lsun/font/TrueTypeFont;->addLCIDMapEntry(Ljava/util/Map;Ljava/lang/String;S)V

    const-string v2, "tr"

    const/16 v3, 0x41f

    invoke-static {v1, v2, v3}, Lsun/font/TrueTypeFont;->addLCIDMapEntry(Ljava/util/Map;Ljava/lang/String;S)V

    const-string v2, "ur"

    const/16 v3, 0x420

    invoke-static {v1, v2, v3}, Lsun/font/TrueTypeFont;->addLCIDMapEntry(Ljava/util/Map;Ljava/lang/String;S)V

    const-string v2, "in"

    const/16 v3, 0x421

    invoke-static {v1, v2, v3}, Lsun/font/TrueTypeFont;->addLCIDMapEntry(Ljava/util/Map;Ljava/lang/String;S)V

    const-string v2, "uk"

    const/16 v3, 0x422

    invoke-static {v1, v2, v3}, Lsun/font/TrueTypeFont;->addLCIDMapEntry(Ljava/util/Map;Ljava/lang/String;S)V

    const-string v2, "be"

    const/16 v3, 0x423

    invoke-static {v1, v2, v3}, Lsun/font/TrueTypeFont;->addLCIDMapEntry(Ljava/util/Map;Ljava/lang/String;S)V

    const-string v2, "sl"

    const/16 v3, 0x424

    invoke-static {v1, v2, v3}, Lsun/font/TrueTypeFont;->addLCIDMapEntry(Ljava/util/Map;Ljava/lang/String;S)V

    const-string v2, "et"

    const/16 v3, 0x425

    invoke-static {v1, v2, v3}, Lsun/font/TrueTypeFont;->addLCIDMapEntry(Ljava/util/Map;Ljava/lang/String;S)V

    const-string v2, "lv"

    const/16 v3, 0x426

    invoke-static {v1, v2, v3}, Lsun/font/TrueTypeFont;->addLCIDMapEntry(Ljava/util/Map;Ljava/lang/String;S)V

    const-string v2, "lt"

    const/16 v3, 0x427

    invoke-static {v1, v2, v3}, Lsun/font/TrueTypeFont;->addLCIDMapEntry(Ljava/util/Map;Ljava/lang/String;S)V

    const-string v2, "fa"

    const/16 v3, 0x429

    invoke-static {v1, v2, v3}, Lsun/font/TrueTypeFont;->addLCIDMapEntry(Ljava/util/Map;Ljava/lang/String;S)V

    const-string v2, "vi"

    const/16 v3, 0x42a

    invoke-static {v1, v2, v3}, Lsun/font/TrueTypeFont;->addLCIDMapEntry(Ljava/util/Map;Ljava/lang/String;S)V

    const-string v2, "hy"

    const/16 v3, 0x42b

    invoke-static {v1, v2, v3}, Lsun/font/TrueTypeFont;->addLCIDMapEntry(Ljava/util/Map;Ljava/lang/String;S)V

    const-string v2, "eu"

    const/16 v3, 0x42d

    invoke-static {v1, v2, v3}, Lsun/font/TrueTypeFont;->addLCIDMapEntry(Ljava/util/Map;Ljava/lang/String;S)V

    const-string v2, "mk"

    const/16 v3, 0x42f

    invoke-static {v1, v2, v3}, Lsun/font/TrueTypeFont;->addLCIDMapEntry(Ljava/util/Map;Ljava/lang/String;S)V

    const-string v2, "tn"

    const/16 v3, 0x432

    invoke-static {v1, v2, v3}, Lsun/font/TrueTypeFont;->addLCIDMapEntry(Ljava/util/Map;Ljava/lang/String;S)V

    const-string v2, "xh"

    const/16 v3, 0x434

    invoke-static {v1, v2, v3}, Lsun/font/TrueTypeFont;->addLCIDMapEntry(Ljava/util/Map;Ljava/lang/String;S)V

    const-string v2, "zu"

    const/16 v3, 0x435

    invoke-static {v1, v2, v3}, Lsun/font/TrueTypeFont;->addLCIDMapEntry(Ljava/util/Map;Ljava/lang/String;S)V

    const-string v2, "af"

    const/16 v3, 0x436

    invoke-static {v1, v2, v3}, Lsun/font/TrueTypeFont;->addLCIDMapEntry(Ljava/util/Map;Ljava/lang/String;S)V

    const-string v2, "ka"

    const/16 v3, 0x437

    invoke-static {v1, v2, v3}, Lsun/font/TrueTypeFont;->addLCIDMapEntry(Ljava/util/Map;Ljava/lang/String;S)V

    const-string v2, "fo"

    const/16 v3, 0x438

    invoke-static {v1, v2, v3}, Lsun/font/TrueTypeFont;->addLCIDMapEntry(Ljava/util/Map;Ljava/lang/String;S)V

    const-string v2, "hi"

    const/16 v3, 0x439

    invoke-static {v1, v2, v3}, Lsun/font/TrueTypeFont;->addLCIDMapEntry(Ljava/util/Map;Ljava/lang/String;S)V

    const-string v2, "mt"

    const/16 v3, 0x43a

    invoke-static {v1, v2, v3}, Lsun/font/TrueTypeFont;->addLCIDMapEntry(Ljava/util/Map;Ljava/lang/String;S)V

    const-string v2, "se"

    const/16 v3, 0x43b

    invoke-static {v1, v2, v3}, Lsun/font/TrueTypeFont;->addLCIDMapEntry(Ljava/util/Map;Ljava/lang/String;S)V

    const-string v2, "gd"

    const/16 v3, 0x43c

    invoke-static {v1, v2, v3}, Lsun/font/TrueTypeFont;->addLCIDMapEntry(Ljava/util/Map;Ljava/lang/String;S)V

    const-string v2, "ms"

    const/16 v3, 0x43e

    invoke-static {v1, v2, v3}, Lsun/font/TrueTypeFont;->addLCIDMapEntry(Ljava/util/Map;Ljava/lang/String;S)V

    const-string v2, "kk"

    const/16 v3, 0x43f

    invoke-static {v1, v2, v3}, Lsun/font/TrueTypeFont;->addLCIDMapEntry(Ljava/util/Map;Ljava/lang/String;S)V

    const-string v2, "ky"

    const/16 v3, 0x440

    invoke-static {v1, v2, v3}, Lsun/font/TrueTypeFont;->addLCIDMapEntry(Ljava/util/Map;Ljava/lang/String;S)V

    const-string v2, "sw"

    const/16 v3, 0x441

    invoke-static {v1, v2, v3}, Lsun/font/TrueTypeFont;->addLCIDMapEntry(Ljava/util/Map;Ljava/lang/String;S)V

    const-string v2, "tt"

    const/16 v3, 0x444

    invoke-static {v1, v2, v3}, Lsun/font/TrueTypeFont;->addLCIDMapEntry(Ljava/util/Map;Ljava/lang/String;S)V

    const-string v2, "bn"

    const/16 v3, 0x445

    invoke-static {v1, v2, v3}, Lsun/font/TrueTypeFont;->addLCIDMapEntry(Ljava/util/Map;Ljava/lang/String;S)V

    const-string v2, "pa"

    const/16 v3, 0x446

    invoke-static {v1, v2, v3}, Lsun/font/TrueTypeFont;->addLCIDMapEntry(Ljava/util/Map;Ljava/lang/String;S)V

    const-string v2, "gu"

    const/16 v3, 0x447

    invoke-static {v1, v2, v3}, Lsun/font/TrueTypeFont;->addLCIDMapEntry(Ljava/util/Map;Ljava/lang/String;S)V

    const-string v2, "ta"

    const/16 v3, 0x449

    invoke-static {v1, v2, v3}, Lsun/font/TrueTypeFont;->addLCIDMapEntry(Ljava/util/Map;Ljava/lang/String;S)V

    const-string v2, "te"

    const/16 v3, 0x44a

    invoke-static {v1, v2, v3}, Lsun/font/TrueTypeFont;->addLCIDMapEntry(Ljava/util/Map;Ljava/lang/String;S)V

    const-string v2, "kn"

    const/16 v3, 0x44b

    invoke-static {v1, v2, v3}, Lsun/font/TrueTypeFont;->addLCIDMapEntry(Ljava/util/Map;Ljava/lang/String;S)V

    const-string v2, "ml"

    const/16 v3, 0x44c

    invoke-static {v1, v2, v3}, Lsun/font/TrueTypeFont;->addLCIDMapEntry(Ljava/util/Map;Ljava/lang/String;S)V

    const-string v2, "mr"

    const/16 v3, 0x44e

    invoke-static {v1, v2, v3}, Lsun/font/TrueTypeFont;->addLCIDMapEntry(Ljava/util/Map;Ljava/lang/String;S)V

    const-string v2, "sa"

    const/16 v3, 0x44f

    invoke-static {v1, v2, v3}, Lsun/font/TrueTypeFont;->addLCIDMapEntry(Ljava/util/Map;Ljava/lang/String;S)V

    const-string v2, "mn"

    const/16 v3, 0x450

    invoke-static {v1, v2, v3}, Lsun/font/TrueTypeFont;->addLCIDMapEntry(Ljava/util/Map;Ljava/lang/String;S)V

    const-string v2, "cy"

    const/16 v3, 0x452

    invoke-static {v1, v2, v3}, Lsun/font/TrueTypeFont;->addLCIDMapEntry(Ljava/util/Map;Ljava/lang/String;S)V

    const-string v2, "gl"

    const/16 v3, 0x456

    invoke-static {v1, v2, v3}, Lsun/font/TrueTypeFont;->addLCIDMapEntry(Ljava/util/Map;Ljava/lang/String;S)V

    const-string v2, "dv"

    const/16 v3, 0x465

    invoke-static {v1, v2, v3}, Lsun/font/TrueTypeFont;->addLCIDMapEntry(Ljava/util/Map;Ljava/lang/String;S)V

    const-string v2, "qu"

    const/16 v3, 0x46b

    invoke-static {v1, v2, v3}, Lsun/font/TrueTypeFont;->addLCIDMapEntry(Ljava/util/Map;Ljava/lang/String;S)V

    const-string v2, "mi"

    const/16 v3, 0x481

    invoke-static {v1, v2, v3}, Lsun/font/TrueTypeFont;->addLCIDMapEntry(Ljava/util/Map;Ljava/lang/String;S)V

    const-string v2, "ar_IQ"

    const/16 v3, 0x801

    invoke-static {v1, v2, v3}, Lsun/font/TrueTypeFont;->addLCIDMapEntry(Ljava/util/Map;Ljava/lang/String;S)V

    const-string v2, "zh_CN"

    const/16 v3, 0x804

    invoke-static {v1, v2, v3}, Lsun/font/TrueTypeFont;->addLCIDMapEntry(Ljava/util/Map;Ljava/lang/String;S)V

    const-string v2, "de_CH"

    const/16 v3, 0x807

    invoke-static {v1, v2, v3}, Lsun/font/TrueTypeFont;->addLCIDMapEntry(Ljava/util/Map;Ljava/lang/String;S)V

    const-string v2, "en_GB"

    const/16 v3, 0x809

    invoke-static {v1, v2, v3}, Lsun/font/TrueTypeFont;->addLCIDMapEntry(Ljava/util/Map;Ljava/lang/String;S)V

    const-string v2, "es_MX"

    const/16 v3, 0x80a

    invoke-static {v1, v2, v3}, Lsun/font/TrueTypeFont;->addLCIDMapEntry(Ljava/util/Map;Ljava/lang/String;S)V

    const-string v2, "fr_BE"

    const/16 v3, 0x80c

    invoke-static {v1, v2, v3}, Lsun/font/TrueTypeFont;->addLCIDMapEntry(Ljava/util/Map;Ljava/lang/String;S)V

    const-string v2, "it_CH"

    const/16 v3, 0x810

    invoke-static {v1, v2, v3}, Lsun/font/TrueTypeFont;->addLCIDMapEntry(Ljava/util/Map;Ljava/lang/String;S)V

    const-string v2, "nl_BE"

    const/16 v3, 0x813

    invoke-static {v1, v2, v3}, Lsun/font/TrueTypeFont;->addLCIDMapEntry(Ljava/util/Map;Ljava/lang/String;S)V

    const-string v2, "no_NO_NY"

    const/16 v3, 0x814

    invoke-static {v1, v2, v3}, Lsun/font/TrueTypeFont;->addLCIDMapEntry(Ljava/util/Map;Ljava/lang/String;S)V

    const-string v2, "pt_PT"

    const/16 v3, 0x816

    invoke-static {v1, v2, v3}, Lsun/font/TrueTypeFont;->addLCIDMapEntry(Ljava/util/Map;Ljava/lang/String;S)V

    const-string v2, "ro_MD"

    const/16 v3, 0x818

    invoke-static {v1, v2, v3}, Lsun/font/TrueTypeFont;->addLCIDMapEntry(Ljava/util/Map;Ljava/lang/String;S)V

    const-string v2, "ru_MD"

    const/16 v3, 0x819

    invoke-static {v1, v2, v3}, Lsun/font/TrueTypeFont;->addLCIDMapEntry(Ljava/util/Map;Ljava/lang/String;S)V

    const-string v2, "sr_CS"

    const/16 v3, 0x81a

    invoke-static {v1, v2, v3}, Lsun/font/TrueTypeFont;->addLCIDMapEntry(Ljava/util/Map;Ljava/lang/String;S)V

    const-string v2, "sv_FI"

    const/16 v3, 0x81d

    invoke-static {v1, v2, v3}, Lsun/font/TrueTypeFont;->addLCIDMapEntry(Ljava/util/Map;Ljava/lang/String;S)V

    const-string v2, "az_AZ"

    const/16 v3, 0x82c

    invoke-static {v1, v2, v3}, Lsun/font/TrueTypeFont;->addLCIDMapEntry(Ljava/util/Map;Ljava/lang/String;S)V

    const-string v2, "se_SE"

    const/16 v3, 0x83b

    invoke-static {v1, v2, v3}, Lsun/font/TrueTypeFont;->addLCIDMapEntry(Ljava/util/Map;Ljava/lang/String;S)V

    const-string v2, "ga_IE"

    const/16 v3, 0x83c

    invoke-static {v1, v2, v3}, Lsun/font/TrueTypeFont;->addLCIDMapEntry(Ljava/util/Map;Ljava/lang/String;S)V

    const-string v2, "ms_BN"

    const/16 v3, 0x83e

    invoke-static {v1, v2, v3}, Lsun/font/TrueTypeFont;->addLCIDMapEntry(Ljava/util/Map;Ljava/lang/String;S)V

    const-string v2, "uz_UZ"

    const/16 v3, 0x843

    invoke-static {v1, v2, v3}, Lsun/font/TrueTypeFont;->addLCIDMapEntry(Ljava/util/Map;Ljava/lang/String;S)V

    const-string v2, "qu_EC"

    const/16 v3, 0x86b

    invoke-static {v1, v2, v3}, Lsun/font/TrueTypeFont;->addLCIDMapEntry(Ljava/util/Map;Ljava/lang/String;S)V

    const-string v2, "ar_EG"

    const/16 v3, 0xc01

    invoke-static {v1, v2, v3}, Lsun/font/TrueTypeFont;->addLCIDMapEntry(Ljava/util/Map;Ljava/lang/String;S)V

    const-string v2, "zh_HK"

    const/16 v3, 0xc04

    invoke-static {v1, v2, v3}, Lsun/font/TrueTypeFont;->addLCIDMapEntry(Ljava/util/Map;Ljava/lang/String;S)V

    const-string v2, "de_AT"

    const/16 v3, 0xc07

    invoke-static {v1, v2, v3}, Lsun/font/TrueTypeFont;->addLCIDMapEntry(Ljava/util/Map;Ljava/lang/String;S)V

    const-string v2, "en_AU"

    const/16 v3, 0xc09

    invoke-static {v1, v2, v3}, Lsun/font/TrueTypeFont;->addLCIDMapEntry(Ljava/util/Map;Ljava/lang/String;S)V

    const-string v2, "fr_CA"

    const/16 v3, 0xc0c

    invoke-static {v1, v2, v3}, Lsun/font/TrueTypeFont;->addLCIDMapEntry(Ljava/util/Map;Ljava/lang/String;S)V

    const-string v2, "sr_CS"

    const/16 v3, 0xc1a

    invoke-static {v1, v2, v3}, Lsun/font/TrueTypeFont;->addLCIDMapEntry(Ljava/util/Map;Ljava/lang/String;S)V

    const-string v2, "se_FI"

    const/16 v3, 0xc3b

    invoke-static {v1, v2, v3}, Lsun/font/TrueTypeFont;->addLCIDMapEntry(Ljava/util/Map;Ljava/lang/String;S)V

    const-string v2, "qu_PE"

    const/16 v3, 0xc6b

    invoke-static {v1, v2, v3}, Lsun/font/TrueTypeFont;->addLCIDMapEntry(Ljava/util/Map;Ljava/lang/String;S)V

    const-string v2, "ar_LY"

    const/16 v3, 0x1001

    invoke-static {v1, v2, v3}, Lsun/font/TrueTypeFont;->addLCIDMapEntry(Ljava/util/Map;Ljava/lang/String;S)V

    const-string v2, "zh_SG"

    const/16 v3, 0x1004

    invoke-static {v1, v2, v3}, Lsun/font/TrueTypeFont;->addLCIDMapEntry(Ljava/util/Map;Ljava/lang/String;S)V

    const-string v2, "de_LU"

    const/16 v3, 0x1007

    invoke-static {v1, v2, v3}, Lsun/font/TrueTypeFont;->addLCIDMapEntry(Ljava/util/Map;Ljava/lang/String;S)V

    const-string v2, "en_CA"

    const/16 v3, 0x1009

    invoke-static {v1, v2, v3}, Lsun/font/TrueTypeFont;->addLCIDMapEntry(Ljava/util/Map;Ljava/lang/String;S)V

    const-string v2, "es_GT"

    const/16 v3, 0x100a

    invoke-static {v1, v2, v3}, Lsun/font/TrueTypeFont;->addLCIDMapEntry(Ljava/util/Map;Ljava/lang/String;S)V

    const-string v2, "fr_CH"

    const/16 v3, 0x100c

    invoke-static {v1, v2, v3}, Lsun/font/TrueTypeFont;->addLCIDMapEntry(Ljava/util/Map;Ljava/lang/String;S)V

    const-string v2, "hr_BA"

    const/16 v3, 0x101a

    invoke-static {v1, v2, v3}, Lsun/font/TrueTypeFont;->addLCIDMapEntry(Ljava/util/Map;Ljava/lang/String;S)V

    const-string v2, "ar_DZ"

    const/16 v3, 0x1401

    invoke-static {v1, v2, v3}, Lsun/font/TrueTypeFont;->addLCIDMapEntry(Ljava/util/Map;Ljava/lang/String;S)V

    const-string v2, "zh_MO"

    const/16 v3, 0x1404

    invoke-static {v1, v2, v3}, Lsun/font/TrueTypeFont;->addLCIDMapEntry(Ljava/util/Map;Ljava/lang/String;S)V

    const-string v2, "de_LI"

    const/16 v3, 0x1407

    invoke-static {v1, v2, v3}, Lsun/font/TrueTypeFont;->addLCIDMapEntry(Ljava/util/Map;Ljava/lang/String;S)V

    const-string v2, "en_NZ"

    const/16 v3, 0x1409

    invoke-static {v1, v2, v3}, Lsun/font/TrueTypeFont;->addLCIDMapEntry(Ljava/util/Map;Ljava/lang/String;S)V

    const-string v2, "es_CR"

    const/16 v3, 0x140a

    invoke-static {v1, v2, v3}, Lsun/font/TrueTypeFont;->addLCIDMapEntry(Ljava/util/Map;Ljava/lang/String;S)V

    const-string v2, "fr_LU"

    const/16 v3, 0x140c

    invoke-static {v1, v2, v3}, Lsun/font/TrueTypeFont;->addLCIDMapEntry(Ljava/util/Map;Ljava/lang/String;S)V

    const-string v2, "bs_BA"

    const/16 v3, 0x141a

    invoke-static {v1, v2, v3}, Lsun/font/TrueTypeFont;->addLCIDMapEntry(Ljava/util/Map;Ljava/lang/String;S)V

    const-string v2, "ar_MA"

    const/16 v3, 0x1801

    invoke-static {v1, v2, v3}, Lsun/font/TrueTypeFont;->addLCIDMapEntry(Ljava/util/Map;Ljava/lang/String;S)V

    const-string v2, "en_IE"

    const/16 v3, 0x1809

    invoke-static {v1, v2, v3}, Lsun/font/TrueTypeFont;->addLCIDMapEntry(Ljava/util/Map;Ljava/lang/String;S)V

    const-string v2, "es_PA"

    const/16 v3, 0x180a

    invoke-static {v1, v2, v3}, Lsun/font/TrueTypeFont;->addLCIDMapEntry(Ljava/util/Map;Ljava/lang/String;S)V

    const-string v2, "fr_MC"

    const/16 v3, 0x180c

    invoke-static {v1, v2, v3}, Lsun/font/TrueTypeFont;->addLCIDMapEntry(Ljava/util/Map;Ljava/lang/String;S)V

    const-string v2, "sr_BA"

    const/16 v3, 0x181a

    invoke-static {v1, v2, v3}, Lsun/font/TrueTypeFont;->addLCIDMapEntry(Ljava/util/Map;Ljava/lang/String;S)V

    const-string v2, "ar_TN"

    const/16 v3, 0x1c01

    invoke-static {v1, v2, v3}, Lsun/font/TrueTypeFont;->addLCIDMapEntry(Ljava/util/Map;Ljava/lang/String;S)V

    const-string v2, "en_ZA"

    const/16 v3, 0x1c09

    invoke-static {v1, v2, v3}, Lsun/font/TrueTypeFont;->addLCIDMapEntry(Ljava/util/Map;Ljava/lang/String;S)V

    const-string v2, "es_DO"

    const/16 v3, 0x1c0a

    invoke-static {v1, v2, v3}, Lsun/font/TrueTypeFont;->addLCIDMapEntry(Ljava/util/Map;Ljava/lang/String;S)V

    const-string v2, "sr_BA"

    const/16 v3, 0x1c1a

    invoke-static {v1, v2, v3}, Lsun/font/TrueTypeFont;->addLCIDMapEntry(Ljava/util/Map;Ljava/lang/String;S)V

    const-string v2, "ar_OM"

    const/16 v3, 0x2001

    invoke-static {v1, v2, v3}, Lsun/font/TrueTypeFont;->addLCIDMapEntry(Ljava/util/Map;Ljava/lang/String;S)V

    const-string v2, "en_JM"

    const/16 v3, 0x2009

    invoke-static {v1, v2, v3}, Lsun/font/TrueTypeFont;->addLCIDMapEntry(Ljava/util/Map;Ljava/lang/String;S)V

    const-string v2, "es_VE"

    const/16 v3, 0x200a

    invoke-static {v1, v2, v3}, Lsun/font/TrueTypeFont;->addLCIDMapEntry(Ljava/util/Map;Ljava/lang/String;S)V

    const-string v2, "ar_YE"

    const/16 v3, 0x2401

    invoke-static {v1, v2, v3}, Lsun/font/TrueTypeFont;->addLCIDMapEntry(Ljava/util/Map;Ljava/lang/String;S)V

    const-string v2, "es_CO"

    const/16 v3, 0x240a

    invoke-static {v1, v2, v3}, Lsun/font/TrueTypeFont;->addLCIDMapEntry(Ljava/util/Map;Ljava/lang/String;S)V

    const-string v2, "ar_SY"

    const/16 v3, 0x2801

    invoke-static {v1, v2, v3}, Lsun/font/TrueTypeFont;->addLCIDMapEntry(Ljava/util/Map;Ljava/lang/String;S)V

    const-string v2, "en_BZ"

    const/16 v3, 0x2809

    invoke-static {v1, v2, v3}, Lsun/font/TrueTypeFont;->addLCIDMapEntry(Ljava/util/Map;Ljava/lang/String;S)V

    const-string v2, "es_PE"

    const/16 v3, 0x280a

    invoke-static {v1, v2, v3}, Lsun/font/TrueTypeFont;->addLCIDMapEntry(Ljava/util/Map;Ljava/lang/String;S)V

    const-string v2, "ar_JO"

    const/16 v3, 0x2c01

    invoke-static {v1, v2, v3}, Lsun/font/TrueTypeFont;->addLCIDMapEntry(Ljava/util/Map;Ljava/lang/String;S)V

    const-string v2, "en_TT"

    const/16 v3, 0x2c09

    invoke-static {v1, v2, v3}, Lsun/font/TrueTypeFont;->addLCIDMapEntry(Ljava/util/Map;Ljava/lang/String;S)V

    const-string v2, "es_AR"

    const/16 v3, 0x2c0a

    invoke-static {v1, v2, v3}, Lsun/font/TrueTypeFont;->addLCIDMapEntry(Ljava/util/Map;Ljava/lang/String;S)V

    const-string v2, "ar_LB"

    const/16 v3, 0x3001

    invoke-static {v1, v2, v3}, Lsun/font/TrueTypeFont;->addLCIDMapEntry(Ljava/util/Map;Ljava/lang/String;S)V

    const-string v2, "en_ZW"

    const/16 v3, 0x3009

    invoke-static {v1, v2, v3}, Lsun/font/TrueTypeFont;->addLCIDMapEntry(Ljava/util/Map;Ljava/lang/String;S)V

    const-string v2, "es_EC"

    const/16 v3, 0x300a

    invoke-static {v1, v2, v3}, Lsun/font/TrueTypeFont;->addLCIDMapEntry(Ljava/util/Map;Ljava/lang/String;S)V

    const-string v2, "ar_KW"

    const/16 v3, 0x3401

    invoke-static {v1, v2, v3}, Lsun/font/TrueTypeFont;->addLCIDMapEntry(Ljava/util/Map;Ljava/lang/String;S)V

    const-string v2, "en_PH"

    const/16 v3, 0x3409

    invoke-static {v1, v2, v3}, Lsun/font/TrueTypeFont;->addLCIDMapEntry(Ljava/util/Map;Ljava/lang/String;S)V

    const-string v2, "es_CL"

    const/16 v3, 0x340a

    invoke-static {v1, v2, v3}, Lsun/font/TrueTypeFont;->addLCIDMapEntry(Ljava/util/Map;Ljava/lang/String;S)V

    const-string v2, "ar_AE"

    const/16 v3, 0x3801

    invoke-static {v1, v2, v3}, Lsun/font/TrueTypeFont;->addLCIDMapEntry(Ljava/util/Map;Ljava/lang/String;S)V

    const-string v2, "es_UY"

    const/16 v3, 0x380a

    invoke-static {v1, v2, v3}, Lsun/font/TrueTypeFont;->addLCIDMapEntry(Ljava/util/Map;Ljava/lang/String;S)V

    const-string v2, "ar_BH"

    const/16 v3, 0x3c01

    invoke-static {v1, v2, v3}, Lsun/font/TrueTypeFont;->addLCIDMapEntry(Ljava/util/Map;Ljava/lang/String;S)V

    const-string v2, "es_PY"

    const/16 v3, 0x3c0a

    invoke-static {v1, v2, v3}, Lsun/font/TrueTypeFont;->addLCIDMapEntry(Ljava/util/Map;Ljava/lang/String;S)V

    const-string v2, "ar_QA"

    const/16 v3, 0x4001

    invoke-static {v1, v2, v3}, Lsun/font/TrueTypeFont;->addLCIDMapEntry(Ljava/util/Map;Ljava/lang/String;S)V

    const-string v2, "es_BO"

    const/16 v3, 0x400a

    invoke-static {v1, v2, v3}, Lsun/font/TrueTypeFont;->addLCIDMapEntry(Ljava/util/Map;Ljava/lang/String;S)V

    const-string v2, "es_SV"

    const/16 v3, 0x440a

    invoke-static {v1, v2, v3}, Lsun/font/TrueTypeFont;->addLCIDMapEntry(Ljava/util/Map;Ljava/lang/String;S)V

    const-string v2, "es_HN"

    const/16 v3, 0x480a

    invoke-static {v1, v2, v3}, Lsun/font/TrueTypeFont;->addLCIDMapEntry(Ljava/util/Map;Ljava/lang/String;S)V

    const-string v2, "es_NI"

    const/16 v3, 0x4c0a

    invoke-static {v1, v2, v3}, Lsun/font/TrueTypeFont;->addLCIDMapEntry(Ljava/util/Map;Ljava/lang/String;S)V

    const-string v2, "es_PR"

    const/16 v3, 0x500a

    invoke-static {v1, v2, v3}, Lsun/font/TrueTypeFont;->addLCIDMapEntry(Ljava/util/Map;Ljava/lang/String;S)V

    sput-object v1, Lsun/font/TrueTypeFont;->lcidMap:Ljava/util/Map;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static getCodePage()Ljava/lang/String;
    .locals 6

    sget-object v0, Lsun/font/TrueTypeFont;->defaultCodePage:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    sget-boolean v0, Lsun/font/FontUtilities;->isWindows:Z

    if-eqz v0, :cond_1

    new-instance v0, Lsun/security/action/GetPropertyAction;

    const-string v1, "file.encoding"

    invoke-direct {v0, v1}, Lsun/security/action/GetPropertyAction;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lsun/font/TrueTypeFont;->defaultCodePage:Ljava/lang/String;

    goto :goto_2

    :cond_1
    sget-object v0, Lsun/font/TrueTypeFont;->languages:[[Ljava/lang/String;

    array-length v0, v0

    sget-object v1, Lsun/font/TrueTypeFont;->codePages:[Ljava/lang/String;

    array-length v1, v1

    if-ne v0, v1, :cond_7

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    const-string v2, "zh"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_2
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    sget-object v3, Lsun/font/TrueTypeFont;->languages:[[Ljava/lang/String;

    array-length v3, v3

    if-ge v2, v3, :cond_5

    move v3, v0

    :goto_1
    sget-object v4, Lsun/font/TrueTypeFont;->languages:[[Ljava/lang/String;

    aget-object v4, v4, v2

    array-length v5, v4

    if-ge v3, v5, :cond_4

    aget-object v4, v4, v3

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    sget-object v0, Lsun/font/TrueTypeFont;->codePages:[Ljava/lang/String;

    aget-object v0, v0, v2

    sput-object v0, Lsun/font/TrueTypeFont;->defaultCodePage:Ljava/lang/String;

    return-object v0

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    :goto_2
    sget-object v0, Lsun/font/TrueTypeFont;->defaultCodePage:Ljava/lang/String;

    if-nez v0, :cond_6

    const-string v0, ""

    sput-object v0, Lsun/font/TrueTypeFont;->defaultCodePage:Ljava/lang/String;

    :cond_6
    sget-object v0, Lsun/font/TrueTypeFont;->defaultCodePage:Ljava/lang/String;

    return-object v0

    :cond_7
    new-instance v0, Ljava/lang/InternalError;

    const-string v1, "wrong code pages array length"

    invoke-direct {v0, v1}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getGaspTable()[C
    .locals 5

    iget-object v0, p0, Lsun/font/TrueTypeFont;->gaspTable:[C

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const v0, 0x67617370

    invoke-virtual {p0, v0}, Lsun/font/TrueTypeFont;->getTableBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    new-array v0, v2, [C

    iput-object v0, p0, Lsun/font/TrueTypeFont;->gaspTable:[C

    return-object v0

    :cond_1
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asCharBuffer()Ljava/nio/CharBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/CharBuffer;->get()C

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_2

    new-array v0, v2, [C

    iput-object v0, p0, Lsun/font/TrueTypeFont;->gaspTable:[C

    return-object v0

    :cond_2
    invoke-virtual {v1}, Ljava/nio/CharBuffer;->get()C

    move-result v3

    mul-int/lit8 v4, v3, 0x4

    add-int/lit8 v4, v4, 0x4

    invoke-virtual {p0, v0}, Lsun/font/TrueTypeFont;->getTableSize(I)I

    move-result v0

    if-le v4, v0, :cond_3

    new-array v0, v2, [C

    iput-object v0, p0, Lsun/font/TrueTypeFont;->gaspTable:[C

    return-object v0

    :cond_3
    mul-int/lit8 v3, v3, 0x2

    new-array v0, v3, [C

    iput-object v0, p0, Lsun/font/TrueTypeFont;->gaspTable:[C

    invoke-virtual {v1, v0}, Ljava/nio/CharBuffer;->get([C)Ljava/nio/CharBuffer;

    iget-object p0, p0, Lsun/font/TrueTypeFont;->gaspTable:[C

    return-object p0
.end method

.method private static getLCIDFromLocale(Ljava/util/Locale;)S
    .locals 3

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v1, 0x409

    if-eqz v0, :cond_0

    return v1

    :cond_0
    sget-object v0, Lsun/font/TrueTypeFont;->lcidMap:Ljava/util/Map;

    if-nez v0, :cond_1

    invoke-static {}, Lsun/font/TrueTypeFont;->createLCIDMap()V

    :cond_1
    invoke-virtual {p0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    const-string v0, ""

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Lsun/font/TrueTypeFont;->lcidMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Short;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    move-result p0

    return p0

    :cond_2
    const/16 v0, 0x5f

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/4 v2, 0x1

    if-ge v0, v2, :cond_3

    return v1

    :cond_3
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_4
    return v1
.end method

.method private static getLanguageCompatibleLCIDsFromLocale(Ljava/util/Locale;)[S
    .locals 1

    sget-object v0, Lsun/font/TrueTypeFont;->lcidLanguageCompatibilityMap:Ljava/util/Map;

    if-nez v0, :cond_0

    invoke-static {}, Lsun/font/TrueTypeFont;->createLCIDMap()V

    invoke-static {}, Lsun/font/TrueTypeFont;->createLCIDLanguageCompatibilityMap()V

    :cond_0
    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lsun/font/TrueTypeFont;->lcidLanguageCompatibilityMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [S

    if-nez p0, :cond_1

    sget-object p0, Lsun/font/TrueTypeFont;->EMPTY_COMPATIBLE_LCIDS:[S

    :cond_1
    return-object p0
.end method

.method private isLanguageCompatible(S)Z
    .locals 4

    iget-object p0, p0, Lsun/font/TrueTypeFont;->languageCompatibleLCIDs:[S

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-short v3, p0, v2

    if-ne v3, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private makeString([BISS)Ljava/lang/String;
    .locals 4

    const/4 p0, 0x1

    if-ne p3, p0, :cond_0

    const/4 p4, -0x1

    :cond_0
    const/4 p0, 0x2

    const/4 p3, 0x0

    if-lt p4, p0, :cond_3

    const/4 p0, 0x6

    if-gt p4, p0, :cond_3

    new-array p0, p2, [B

    move v0, p3

    move v1, v0

    :goto_0
    if-ge v0, p2, :cond_2

    aget-byte v2, p1, v0

    if-eqz v2, :cond_1

    add-int/lit8 v3, v1, 0x1

    aput-byte v2, p0, v1

    move v1, v3

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move-object p1, p0

    move p2, v1

    :cond_3
    const-string p0, "UTF-16"

    packed-switch p4, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const-string p0, "Johab"

    goto :goto_1

    :pswitch_1
    const-string p0, "EUC_KR"

    goto :goto_1

    :pswitch_2
    const-string p0, "MS950"

    goto :goto_1

    :pswitch_3
    const-string p0, "GBK"

    goto :goto_1

    :pswitch_4
    const-string p0, "SJIS"

    goto :goto_1

    :pswitch_5
    const-string p0, "US-ASCII"

    :goto_1
    :pswitch_6
    :try_start_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p3, p2, p0}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    const/4 p0, 0x0

    return-object p0

    :catch_0
    move-exception p0

    invoke-static {}, Lsun/font/FontUtilities;->isLogging()Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " EncodingID="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lsun/font/FontUtilities;->logWarning(Ljava/lang/String;)V

    :cond_4
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, p1, p3, p2}, Ljava/lang/String;-><init>([BII)V

    return-object p0

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_5
        :pswitch_6
        :pswitch_6
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private declared-synchronized open()Ljava/nio/channels/FileChannel;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/awt/FontFormatException;
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x1

    .line 1
    :try_start_0
    invoke-direct {p0, v0}, Lsun/font/TrueTypeFont;->open(Z)Ljava/nio/channels/FileChannel;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized open(Z)Ljava/nio/channels/FileChannel;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/awt/FontFormatException;
        }
    .end annotation

    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lsun/font/TrueTypeFont;->disposerRecord:Lsun/font/TrueTypeFont$TTDisposerRecord;

    iget-object v0, v0, Lsun/font/TrueTypeFont$TTDisposerRecord;->channel:Ljava/nio/channels/FileChannel;

    if-nez v0, :cond_2

    .line 3
    invoke-static {}, Lsun/font/FontUtilities;->isLogging()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "open TTF: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lsun/font/PhysicalFont;->platName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lsun/font/FontUtilities;->logInfo(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    :cond_0
    :try_start_1
    new-instance v0, Lsun/font/TrueTypeFont$1;

    invoke-direct {v0, p0}, Lsun/font/TrueTypeFont$1;-><init>(Lsun/font/TrueTypeFont;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/RandomAccessFile;

    .line 6
    iget-object v1, p0, Lsun/font/TrueTypeFont;->disposerRecord:Lsun/font/TrueTypeFont$TTDisposerRecord;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    iput-object v0, v1, Lsun/font/TrueTypeFont$TTDisposerRecord;->channel:Ljava/nio/channels/FileChannel;

    .line 7
    iget-object v0, p0, Lsun/font/TrueTypeFont;->disposerRecord:Lsun/font/TrueTypeFont$TTDisposerRecord;

    iget-object v0, v0, Lsun/font/TrueTypeFont$TTDisposerRecord;->channel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lsun/font/FileFont;->fileSize:I

    if-eqz p1, :cond_2

    .line 8
    invoke-static {}, Lsun/font/FontManagerFactory;->getInstance()Lsun/font/FontManager;

    move-result-object p1

    .line 9
    instance-of v0, p1, Lsun/font/SunFontManager;

    if-eqz v0, :cond_2

    .line 10
    check-cast p1, Lsun/font/SunFontManager;

    invoke-virtual {p1, p0}, Lsun/font/SunFontManager;->addToPool(Lsun/font/FileFont;)V
    :try_end_1
    .catch Ljava/security/PrivilegedActionException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/nio/channels/ClosedChannelException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 11
    :try_start_2
    invoke-virtual {p0}, Lsun/font/TrueTypeFont;->close()V

    .line 12
    new-instance v0, Ljava/awt/FontFormatException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/awt/FontFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 13
    :catch_1
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 14
    invoke-virtual {p0}, Lsun/font/TrueTypeFont;->close()V

    .line 15
    invoke-direct {p0}, Lsun/font/TrueTypeFont;->open()Ljava/nio/channels/FileChannel;

    goto :goto_1

    :catch_2
    move-exception p1

    .line 16
    invoke-virtual {p0}, Lsun/font/TrueTypeFont;->close()V

    .line 17
    invoke-virtual {p1}, Ljava/security/PrivilegedActionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    move-object p1, v0

    .line 18
    :goto_0
    new-instance v0, Ljava/awt/FontFormatException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/awt/FontFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 19
    :cond_2
    :goto_1
    iget-object p1, p0, Lsun/font/TrueTypeFont;->disposerRecord:Lsun/font/TrueTypeFont$TTDisposerRecord;

    iget-object p1, p1, Lsun/font/TrueTypeFont$TTDisposerRecord;->channel:Ljava/nio/channels/FileChannel;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private setCJKSupport(Ljava/nio/ByteBuffer;)V
    .locals 3

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/nio/Buffer;->capacity()I

    move-result v0

    const/16 v1, 0x32

    if-ge v0, v1, :cond_0

    goto :goto_2

    :cond_0
    const/16 v0, 0x2e

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result p1

    const/high16 v0, 0x29bf0000

    and-int/2addr v0, p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lsun/font/TrueTypeFont;->supportsCJK:Z

    const/high16 v0, 0x60000

    and-int/2addr p1, v0

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    iput-boolean v1, p0, Lsun/font/TrueTypeFont;->supportsJA:Z

    :cond_3
    :goto_2
    return-void
.end method

.method private setStrikethroughMetrics(Ljava/nio/ByteBuffer;I)V
    .locals 2

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/nio/Buffer;->capacity()I

    move-result v0

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_1

    if-gez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object p1

    const/16 v0, 0xd

    invoke-virtual {p1, v0}, Ljava/nio/ShortBuffer;->get(I)S

    move-result v0

    int-to-float v0, v0

    int-to-float p2, p2

    div-float/2addr v0, p2

    iput v0, p0, Lsun/font/TrueTypeFont;->stSize:F

    const/16 v0, 0xe

    invoke-virtual {p1, v0}, Ljava/nio/ShortBuffer;->get(I)S

    move-result p1

    neg-int p1, p1

    int-to-float p1, p1

    div-float/2addr p1, p2

    iput p1, p0, Lsun/font/TrueTypeFont;->stPos:F

    return-void

    :cond_1
    :goto_0
    const p1, 0x3d4ccccd    # 0.05f

    iput p1, p0, Lsun/font/TrueTypeFont;->stSize:F

    const p1, -0x41333333    # -0.4f

    iput p1, p0, Lsun/font/TrueTypeFont;->stPos:F

    return-void
.end method

.method private setStyle(Ljava/nio/ByteBuffer;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p1}, Ljava/nio/Buffer;->capacity()I

    move-result v0

    const/16 v1, 0x8

    const v2, 0xffff

    if-lt v0, v1, :cond_1

    const/4 v0, 0x4

    .line 3
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->getChar(I)C

    move-result v0

    and-int/2addr v0, v2

    iput v0, p0, Lsun/font/TrueTypeFont;->fontWeight:I

    const/4 v0, 0x6

    .line 4
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->getChar(I)C

    move-result v0

    and-int/2addr v0, v2

    iput v0, p0, Lsun/font/TrueTypeFont;->fontWidth:I

    .line 5
    :cond_1
    invoke-virtual {p1}, Ljava/nio/Buffer;->capacity()I

    move-result v0

    const/16 v1, 0x40

    if-ge v0, v1, :cond_2

    .line 6
    invoke-super {p0}, Lsun/font/Font2D;->setStyle()V

    return-void

    :cond_2
    const/16 v0, 0x3e

    .line 7
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->getChar(I)C

    move-result p1

    and-int/2addr p1, v2

    and-int/lit8 v0, p1, 0x1

    and-int/lit8 v2, p1, 0x20

    and-int/2addr p1, v1

    if-eqz p1, :cond_3

    or-int v1, v0, v2

    if-eqz v1, :cond_3

    .line 8
    invoke-super {p0}, Lsun/font/Font2D;->setStyle()V

    return-void

    :cond_3
    or-int/2addr p1, v0

    or-int/2addr p1, v2

    if-nez p1, :cond_4

    .line 9
    invoke-super {p0}, Lsun/font/Font2D;->setStyle()V

    return-void

    :cond_4
    or-int p1, v2, v0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_7

    const/16 v1, 0x20

    if-eq p1, v1, :cond_6

    const/16 v0, 0x21

    if-eq p1, v0, :cond_5

    goto :goto_0

    :cond_5
    const/4 p1, 0x3

    .line 10
    iput p1, p0, Lsun/font/Font2D;->style:I

    goto :goto_0

    .line 11
    :cond_6
    iput v0, p0, Lsun/font/Font2D;->style:I

    goto :goto_0

    :cond_7
    const/4 p1, 0x2

    .line 12
    iput p1, p0, Lsun/font/Font2D;->style:I

    :goto_0
    return-void
.end method

.method private setUnderlineMetrics(Ljava/nio/ByteBuffer;I)V
    .locals 2

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/nio/Buffer;->capacity()I

    move-result v0

    const/16 v1, 0xc

    if-lt v0, v1, :cond_1

    if-gez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object p1

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Ljava/nio/ShortBuffer;->get(I)S

    move-result v0

    int-to-float v0, v0

    int-to-float p2, p2

    div-float/2addr v0, p2

    iput v0, p0, Lsun/font/TrueTypeFont;->ulSize:F

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Ljava/nio/ShortBuffer;->get(I)S

    move-result p1

    neg-int p1, p1

    int-to-float p1, p1

    div-float/2addr p1, p2

    iput p1, p0, Lsun/font/TrueTypeFont;->ulPos:F

    return-void

    :cond_1
    :goto_0
    const p1, 0x3d4ccccd    # 0.05f

    iput p1, p0, Lsun/font/TrueTypeFont;->ulSize:F

    const p1, 0x3dcccccd    # 0.1f

    iput p1, p0, Lsun/font/TrueTypeFont;->ulPos:F

    return-void
.end method

.method private verify(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/awt/FontFormatException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lsun/font/TrueTypeFont;->open(Z)Ljava/nio/channels/FileChannel;

    return-void
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lsun/font/TrueTypeFont;->disposerRecord:Lsun/font/TrueTypeFont$TTDisposerRecord;

    invoke-virtual {v0}, Lsun/font/TrueTypeFont$TTDisposerRecord;->dispose()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getAllFamilyNames()[Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p0, v1, v0}, Lsun/font/TrueTypeFont;->initAllNames(ILjava/util/HashSet;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public getAllFullNames()[Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const/4 v1, 0x4

    :try_start_0
    invoke-virtual {p0, v1, v0}, Lsun/font/TrueTypeFont;->initAllNames(ILjava/util/HashSet;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public getDirectoryEntry(I)Lsun/font/TrueTypeFont$DirectoryEntry;
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lsun/font/TrueTypeFont;->numTables:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lsun/font/TrueTypeFont;->tableDirectory:[Lsun/font/TrueTypeFont$DirectoryEntry;

    aget-object v1, v1, v0

    iget v2, v1, Lsun/font/TrueTypeFont$DirectoryEntry;->tag:I

    if-ne v2, p1, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getFamilyName(Ljava/util/Locale;)Ljava/lang/String;
    .locals 1

    if-nez p1, :cond_0

    iget-object p0, p0, Lsun/font/Font2D;->familyName:Ljava/lang/String;

    return-object p0

    :cond_0
    iget-object v0, p0, Lsun/font/TrueTypeFont;->nameLocale:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lsun/font/TrueTypeFont;->localeFamilyName:Ljava/lang/String;

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    invoke-static {p1}, Lsun/font/TrueTypeFont;->getLCIDFromLocale(Ljava/util/Locale;)S

    move-result p1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lsun/font/TrueTypeFont;->lookupName(SI)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_2

    iget-object p0, p0, Lsun/font/Font2D;->familyName:Ljava/lang/String;

    return-object p0

    :cond_2
    return-object p1
.end method

.method public getFontCount()I
    .locals 0

    iget p0, p0, Lsun/font/TrueTypeFont;->directoryCount:I

    return p0
.end method

.method public getFontName(Ljava/util/Locale;)Ljava/lang/String;
    .locals 1

    if-nez p1, :cond_0

    iget-object p0, p0, Lsun/font/Font2D;->fullName:Ljava/lang/String;

    return-object p0

    :cond_0
    iget-object v0, p0, Lsun/font/TrueTypeFont;->nameLocale:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lsun/font/TrueTypeFont;->localeFullName:Ljava/lang/String;

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    invoke-static {p1}, Lsun/font/TrueTypeFont;->getLCIDFromLocale(Ljava/util/Locale;)S

    move-result p1

    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0}, Lsun/font/TrueTypeFont;->lookupName(SI)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_2

    iget-object p0, p0, Lsun/font/Font2D;->fullName:Ljava/lang/String;

    return-object p0

    :cond_2
    return-object p1
.end method

.method public getFullName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lsun/font/Font2D;->fullName:Ljava/lang/String;

    return-object p0
.end method

.method public getGlyphPoint(JII)Ljava/awt/geom/Point2D$Float;
    .locals 0

    :try_start_0
    invoke-virtual {p0}, Lsun/font/TrueTypeFont;->getScaler()Lsun/font/FontScaler;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3, p4}, Lsun/font/FontScaler;->getGlyphPoint(JII)Ljava/awt/geom/Point2D$Float;

    move-result-object p0
    :try_end_0
    .catch Lsun/font/FontScalerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getMapper()Lsun/font/CharToGlyphMapper;
    .locals 1

    iget-object v0, p0, Lsun/font/Font2D;->mapper:Lsun/font/CharToGlyphMapper;

    if-nez v0, :cond_0

    new-instance v0, Lsun/font/TrueTypeGlyphMapper;

    invoke-direct {v0, p0}, Lsun/font/TrueTypeGlyphMapper;-><init>(Lsun/font/TrueTypeFont;)V

    iput-object v0, p0, Lsun/font/Font2D;->mapper:Lsun/font/CharToGlyphMapper;

    :cond_0
    iget-object p0, p0, Lsun/font/Font2D;->mapper:Lsun/font/CharToGlyphMapper;

    return-object p0
.end method

.method public getPostscriptName()Ljava/lang/String;
    .locals 2

    const/16 v0, 0x409

    const/4 v1, 0x6

    invoke-virtual {p0, v0, v1}, Lsun/font/TrueTypeFont;->lookupName(SI)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lsun/font/Font2D;->fullName:Ljava/lang/String;

    return-object p0

    :cond_0
    return-object v0
.end method

.method public declared-synchronized getScaler()Lsun/font/FontScaler;
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lsun/font/FileFont;->scaler:Lsun/font/FontScaler;

    if-nez v0, :cond_0

    iget v0, p0, Lsun/font/TrueTypeFont;->fontIndex:I

    iget-boolean v1, p0, Lsun/font/TrueTypeFont;->supportsCJK:Z

    iget v2, p0, Lsun/font/FileFont;->fileSize:I

    invoke-static {p0, v0, v1, v2}, Lsun/font/FontScaler;->getScaler(Lsun/font/Font2D;IZI)Lsun/font/FontScaler;

    move-result-object v0

    iput-object v0, p0, Lsun/font/FileFont;->scaler:Lsun/font/FontScaler;

    :cond_0
    iget-object v0, p0, Lsun/font/FileFont;->scaler:Lsun/font/FontScaler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getStyleMetrics(F[FI)V
    .locals 3

    iget v0, p0, Lsun/font/TrueTypeFont;->ulSize:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_3

    iget v0, p0, Lsun/font/TrueTypeFont;->ulPos:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_3

    const v0, 0x68656164

    invoke-virtual {p0, v0}, Lsun/font/TrueTypeFont;->getTableBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/nio/Buffer;->capacity()I

    move-result v1

    const/16 v2, 0x12

    if-lt v1, v2, :cond_1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v0

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Ljava/nio/ShortBuffer;->get(I)S

    move-result v0

    const v1, 0xffff

    and-int/2addr v0, v1

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    const/16 v1, 0x4000

    if-le v0, v1, :cond_2

    :cond_0
    const/16 v0, 0x800

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    :cond_2
    :goto_0
    const v1, 0x4f532f32

    invoke-virtual {p0, v1}, Lsun/font/TrueTypeFont;->getTableBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lsun/font/TrueTypeFont;->setStrikethroughMetrics(Ljava/nio/ByteBuffer;I)V

    const v1, 0x706f7374

    invoke-virtual {p0, v1}, Lsun/font/TrueTypeFont;->getTableBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lsun/font/TrueTypeFont;->setUnderlineMetrics(Ljava/nio/ByteBuffer;I)V

    :cond_3
    iget v0, p0, Lsun/font/TrueTypeFont;->stPos:F

    mul-float/2addr v0, p1

    aput v0, p2, p3

    add-int/lit8 v0, p3, 0x1

    iget v1, p0, Lsun/font/TrueTypeFont;->stSize:F

    mul-float/2addr v1, p1

    aput v1, p2, v0

    add-int/lit8 v0, p3, 0x2

    iget v1, p0, Lsun/font/TrueTypeFont;->ulPos:F

    mul-float/2addr v1, p1

    aput v1, p2, v0

    add-int/lit8 p3, p3, 0x3

    iget p0, p0, Lsun/font/TrueTypeFont;->ulSize:F

    mul-float/2addr p0, p1

    aput p0, p2, p3

    return-void
.end method

.method public getTableBuffer(I)Ljava/nio/ByteBuffer;
    .locals 6

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lsun/font/TrueTypeFont;->numTables:I

    const/4 v2, 0x0

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lsun/font/TrueTypeFont;->tableDirectory:[Lsun/font/TrueTypeFont$DirectoryEntry;

    aget-object v1, v1, v0

    iget v3, v1, Lsun/font/TrueTypeFont$DirectoryEntry;->tag:I

    if-ne v3, p1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move-object v1, v2

    :goto_1
    if-eqz v1, :cond_5

    iget v0, v1, Lsun/font/TrueTypeFont$DirectoryEntry;->length:I

    if-eqz v0, :cond_5

    iget v3, v1, Lsun/font/TrueTypeFont$DirectoryEntry;->offset:I

    add-int/2addr v3, v0

    iget v4, p0, Lsun/font/FileFont;->fileSize:I

    if-le v3, v4, :cond_2

    goto :goto_3

    :cond_2
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lsun/font/TrueTypeFont;->disposerRecord:Lsun/font/TrueTypeFont$TTDisposerRecord;

    iget-object v3, v3, Lsun/font/TrueTypeFont$TTDisposerRecord;->channel:Ljava/nio/channels/FileChannel;

    if-nez v3, :cond_3

    invoke-direct {p0}, Lsun/font/TrueTypeFont;->open()Ljava/nio/channels/FileChannel;

    :cond_3
    iget-object v3, p0, Lsun/font/TrueTypeFont;->disposerRecord:Lsun/font/TrueTypeFont$TTDisposerRecord;

    iget-object v3, v3, Lsun/font/TrueTypeFont$TTDisposerRecord;->channel:Ljava/nio/channels/FileChannel;

    iget v4, v1, Lsun/font/TrueTypeFont$DirectoryEntry;->offset:I

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    iget-object v3, p0, Lsun/font/TrueTypeFont;->disposerRecord:Lsun/font/TrueTypeFont$TTDisposerRecord;

    iget-object v3, v3, Lsun/font/TrueTypeFont$TTDisposerRecord;->channel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v3, v0}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v3

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;
    :try_end_0
    .catch Ljava/nio/channels/ClosedChannelException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/awt/FontFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget p1, v1, Lsun/font/TrueTypeFont$DirectoryEntry;->length:I

    if-ge v3, p1, :cond_4

    monitor-exit p0

    return-object v2

    :cond_4
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    monitor-exit p0

    return-object v2

    :catch_1
    monitor-exit p0

    return-object v2

    :catch_2
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    invoke-virtual {p0}, Lsun/font/TrueTypeFont;->close()V

    invoke-virtual {p0, p1}, Lsun/font/TrueTypeFont;->getTableBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    monitor-exit p0

    return-object p1

    :goto_2
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_5
    :goto_3
    return-object v2
.end method

.method public getTableBytes(I)[B
    .locals 2

    invoke-virtual {p0, p1}, Lsun/font/TrueTypeFont;->getTableBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v1

    if-eqz v1, :cond_1

    :try_start_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_1
    invoke-virtual {p0, p1}, Lsun/font/TrueTypeFont;->getTableSize(I)I

    move-result p0

    new-array p0, p0, [B

    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public getTableOffset(I)I
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Lsun/font/TrueTypeFont;->numTables:I

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lsun/font/TrueTypeFont;->tableDirectory:[Lsun/font/TrueTypeFont$DirectoryEntry;

    aget-object v2, v2, v1

    iget v3, v2, Lsun/font/TrueTypeFont$DirectoryEntry;->tag:I

    if-ne v3, p1, :cond_0

    iget p0, v2, Lsun/font/TrueTypeFont$DirectoryEntry;->offset:I

    return p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public getTableSize(I)I
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Lsun/font/TrueTypeFont;->numTables:I

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lsun/font/TrueTypeFont;->tableDirectory:[Lsun/font/TrueTypeFont$DirectoryEntry;

    aget-object v2, v2, v1

    iget v3, v2, Lsun/font/TrueTypeFont$DirectoryEntry;->tag:I

    if-ne v3, p1, :cond_0

    iget p0, v2, Lsun/font/TrueTypeFont$DirectoryEntry;->length:I

    return p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public getWeight()I
    .locals 1

    iget v0, p0, Lsun/font/TrueTypeFont;->fontWeight:I

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-super {p0}, Lsun/font/Font2D;->getWeight()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Lsun/font/TrueTypeFont;->fontWidth:I

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-super {p0}, Lsun/font/Font2D;->getWidth()I

    move-result v0

    :goto_0
    return v0
.end method

.method public hasSupplementaryChars()Z
    .locals 0

    invoke-virtual {p0}, Lsun/font/TrueTypeFont;->getMapper()Lsun/font/CharToGlyphMapper;

    move-result-object p0

    check-cast p0, Lsun/font/TrueTypeGlyphMapper;

    invoke-virtual {p0}, Lsun/font/TrueTypeGlyphMapper;->hasSupplementaryChars()Z

    move-result p0

    return p0
.end method

.method public init(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/awt/FontFormatException;
        }
    .end annotation

    const/4 v0, 0x0

    const/16 v1, 0xc

    invoke-virtual {p0, v0, v1}, Lsun/font/TrueTypeFont;->readBlock(II)Ljava/nio/ByteBuffer;

    move-result-object v2

    :try_start_0
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    const/high16 v4, 0x10000

    if-eq v3, v4, :cond_2

    const v4, 0x4f54544f    # 3.56229504E9f

    if-eq v3, v4, :cond_2

    const v4, 0x74727565

    if-eq v3, v4, :cond_2

    const v4, 0x74746366

    if-ne v3, v4, :cond_1

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    iput v2, p0, Lsun/font/TrueTypeFont;->directoryCount:I

    if-ge p1, v2, :cond_0

    iput p1, p0, Lsun/font/TrueTypeFont;->fontIndex:I

    const/4 v2, 0x4

    mul-int/2addr p1, v2

    add-int/2addr p1, v1

    invoke-virtual {p0, p1, v2}, Lsun/font/TrueTypeFont;->readBlock(II)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p1

    iget v2, p0, Lsun/font/FileFont;->fileSize:I

    sub-int/2addr v2, p1

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Lsun/font/TrueTypeFont;->fontDataSize:I

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/awt/FontFormatException;

    const-string p1, "Bad collection index"

    invoke-direct {p0, p1}, Ljava/awt/FontFormatException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p1, Ljava/awt/FontFormatException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported sfnt "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lsun/font/FileFont;->getPublicFileName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/awt/FontFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget p1, p0, Lsun/font/FileFont;->fileSize:I

    iput p1, p0, Lsun/font/TrueTypeFont;->fontDataSize:I

    move p1, v0

    :goto_0
    add-int/lit8 v2, p1, 0x4

    const/4 v3, 0x2

    invoke-virtual {p0, v2, v3}, Lsun/font/TrueTypeFont;->readBlock(II)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v2

    iput v2, p0, Lsun/font/TrueTypeFont;->numTables:I

    add-int/2addr p1, v1

    iput p1, p0, Lsun/font/TrueTypeFont;->directoryOffset:I

    mul-int/lit8 v2, v2, 0x10

    invoke-virtual {p0, p1, v2}, Lsun/font/TrueTypeFont;->readBlock(II)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object p1

    iget v1, p0, Lsun/font/TrueTypeFont;->numTables:I

    new-array v1, v1, [Lsun/font/TrueTypeFont$DirectoryEntry;

    iput-object v1, p0, Lsun/font/TrueTypeFont;->tableDirectory:[Lsun/font/TrueTypeFont$DirectoryEntry;

    :goto_1
    iget v1, p0, Lsun/font/TrueTypeFont;->numTables:I

    if-ge v0, v1, :cond_4

    iget-object v1, p0, Lsun/font/TrueTypeFont;->tableDirectory:[Lsun/font/TrueTypeFont$DirectoryEntry;

    new-instance v2, Lsun/font/TrueTypeFont$DirectoryEntry;

    invoke-direct {v2}, Lsun/font/TrueTypeFont$DirectoryEntry;-><init>()V

    aput-object v2, v1, v0

    invoke-virtual {p1}, Ljava/nio/IntBuffer;->get()I

    move-result v1

    iput v1, v2, Lsun/font/TrueTypeFont$DirectoryEntry;->tag:I

    invoke-virtual {p1}, Ljava/nio/IntBuffer;->get()I

    invoke-virtual {p1}, Ljava/nio/IntBuffer;->get()I

    move-result v1

    const v3, 0x7fffffff

    and-int/2addr v1, v3

    iput v1, v2, Lsun/font/TrueTypeFont$DirectoryEntry;->offset:I

    invoke-virtual {p1}, Ljava/nio/IntBuffer;->get()I

    move-result v1

    and-int/2addr v1, v3

    iput v1, v2, Lsun/font/TrueTypeFont$DirectoryEntry;->length:I

    iget v3, v2, Lsun/font/TrueTypeFont$DirectoryEntry;->offset:I

    add-int/2addr v3, v1

    iget v1, p0, Lsun/font/FileFont;->fileSize:I

    if-gt v3, v1, :cond_3

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    new-instance p0, Ljava/awt/FontFormatException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "bad table, tag="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v2, Lsun/font/TrueTypeFont$DirectoryEntry;->tag:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/awt/FontFormatException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    const p1, 0x68656164

    invoke-virtual {p0, p1}, Lsun/font/TrueTypeFont;->getDirectoryEntry(I)Lsun/font/TrueTypeFont$DirectoryEntry;

    move-result-object p1

    if-eqz p1, :cond_9

    const p1, 0x6d617870

    invoke-virtual {p0, p1}, Lsun/font/TrueTypeFont;->getDirectoryEntry(I)Lsun/font/TrueTypeFont$DirectoryEntry;

    move-result-object p1

    if-eqz p1, :cond_8

    const p1, 0x686d7478

    invoke-virtual {p0, p1}, Lsun/font/TrueTypeFont;->getDirectoryEntry(I)Lsun/font/TrueTypeFont$DirectoryEntry;

    move-result-object p1

    if-eqz p1, :cond_6

    const p1, 0x68686561

    invoke-virtual {p0, p1}, Lsun/font/TrueTypeFont;->getDirectoryEntry(I)Lsun/font/TrueTypeFont$DirectoryEntry;

    move-result-object p1

    if-eqz p1, :cond_5

    goto :goto_2

    :cond_5
    new-instance p0, Ljava/awt/FontFormatException;

    const-string p1, "missing hhea table"

    invoke-direct {p0, p1}, Ljava/awt/FontFormatException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    :goto_2
    invoke-virtual {p0}, Lsun/font/TrueTypeFont;->initNames()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iget-object p1, p0, Lsun/font/Font2D;->familyName:Ljava/lang/String;

    if-eqz p1, :cond_7

    iget-object p1, p0, Lsun/font/Font2D;->fullName:Ljava/lang/String;

    if-eqz p1, :cond_7

    const p1, 0x4f532f32

    invoke-virtual {p0, p1}, Lsun/font/TrueTypeFont;->getTableBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-direct {p0, p1}, Lsun/font/TrueTypeFont;->setStyle(Ljava/nio/ByteBuffer;)V

    invoke-direct {p0, p1}, Lsun/font/TrueTypeFont;->setCJKSupport(Ljava/nio/ByteBuffer;)V

    return-void

    :cond_7
    new-instance p0, Ljava/awt/FontFormatException;

    const-string p1, "Font name not found"

    invoke-direct {p0, p1}, Ljava/awt/FontFormatException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    :try_start_1
    new-instance p0, Ljava/awt/FontFormatException;

    const-string p1, "missing maxp table"

    invoke-direct {p0, p1}, Ljava/awt/FontFormatException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_9
    new-instance p0, Ljava/awt/FontFormatException;

    const-string p1, "missing head table"

    invoke-direct {p0, p1}, Ljava/awt/FontFormatException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception p0

    invoke-static {}, Lsun/font/FontUtilities;->isLogging()Z

    move-result p1

    if-eqz p1, :cond_a

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lsun/font/FontUtilities;->logSevere(Ljava/lang/String;)V

    :cond_a
    instance-of p1, p0, Ljava/awt/FontFormatException;

    if-eqz p1, :cond_b

    check-cast p0, Ljava/awt/FontFormatException;

    throw p0

    :cond_b
    new-instance p1, Ljava/awt/FontFormatException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/awt/FontFormatException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public initAllNames(ILjava/util/HashSet;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/16 v0, 0x100

    new-array v0, v0, [B

    const v1, 0x6e616d65

    invoke-virtual {p0, v1}, Lsun/font/TrueTypeFont;->getTableBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ShortBuffer;->get()S

    invoke-virtual {v2}, Ljava/nio/ShortBuffer;->get()S

    move-result v3

    invoke-virtual {v2}, Ljava/nio/ShortBuffer;->get()S

    move-result v4

    const v5, 0xffff

    and-int/2addr v4, v5

    const/4 v6, 0x0

    move v7, v6

    :goto_0
    if-ge v7, v3, :cond_2

    invoke-virtual {v2}, Ljava/nio/ShortBuffer;->get()S

    move-result v8

    const/4 v9, 0x3

    if-eq v8, v9, :cond_0

    invoke-virtual {v2}, Ljava/nio/Buffer;->position()I

    move-result v8

    add-int/lit8 v8, v8, 0x5

    invoke-virtual {v2, v8}, Ljava/nio/ShortBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_1

    :cond_0
    invoke-virtual {v2}, Ljava/nio/ShortBuffer;->get()S

    move-result v9

    invoke-virtual {v2}, Ljava/nio/ShortBuffer;->get()S

    invoke-virtual {v2}, Ljava/nio/ShortBuffer;->get()S

    move-result v10

    invoke-virtual {v2}, Ljava/nio/ShortBuffer;->get()S

    move-result v11

    and-int/2addr v11, v5

    invoke-virtual {v2}, Ljava/nio/ShortBuffer;->get()S

    move-result v12

    and-int/2addr v12, v5

    add-int/2addr v12, v4

    if-ne v10, p1, :cond_1

    invoke-virtual {v1, v12}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v1, v0, v6, v11}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    invoke-direct {p0, v0, v11, v8, v9}, Lsun/font/TrueTypeFont;->makeString([BISS)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public initNames()V
    .locals 17

    move-object/from16 v0, p0

    const/16 v1, 0x100

    new-array v1, v1, [B

    const v2, 0x6e616d65

    invoke-virtual {v0, v2}, Lsun/font/TrueTypeFont;->getTableBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    if-eqz v2, :cond_10

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ShortBuffer;->get()S

    invoke-virtual {v3}, Ljava/nio/ShortBuffer;->get()S

    move-result v4

    invoke-virtual {v3}, Ljava/nio/ShortBuffer;->get()S

    move-result v5

    const v6, 0xffff

    and-int/2addr v5, v6

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    iput-object v7, v0, Lsun/font/TrueTypeFont;->nameLocale:Ljava/util/Locale;

    invoke-static {v7}, Lsun/font/TrueTypeFont;->getLCIDFromLocale(Ljava/util/Locale;)S

    move-result v7

    iget-object v8, v0, Lsun/font/TrueTypeFont;->nameLocale:Ljava/util/Locale;

    invoke-static {v8}, Lsun/font/TrueTypeFont;->getLanguageCompatibleLCIDsFromLocale(Ljava/util/Locale;)[S

    move-result-object v8

    iput-object v8, v0, Lsun/font/TrueTypeFont;->languageCompatibleLCIDs:[S

    const/4 v9, 0x0

    :goto_0
    if-ge v9, v4, :cond_e

    invoke-virtual {v3}, Ljava/nio/ShortBuffer;->get()S

    move-result v10

    const/4 v11, 0x3

    const/4 v12, 0x1

    if-eq v10, v11, :cond_0

    if-eq v10, v12, :cond_0

    invoke-virtual {v3}, Ljava/nio/Buffer;->position()I

    move-result v10

    add-int/lit8 v10, v10, 0x5

    invoke-virtual {v3, v10}, Ljava/nio/ShortBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_1

    :cond_0
    invoke-virtual {v3}, Ljava/nio/ShortBuffer;->get()S

    move-result v11

    invoke-virtual {v3}, Ljava/nio/ShortBuffer;->get()S

    move-result v13

    invoke-virtual {v3}, Ljava/nio/ShortBuffer;->get()S

    move-result v14

    invoke-virtual {v3}, Ljava/nio/ShortBuffer;->get()S

    move-result v15

    and-int/2addr v15, v6

    invoke-virtual {v3}, Ljava/nio/ShortBuffer;->get()S

    move-result v16

    and-int v16, v16, v6

    add-int v6, v16, v5

    if-ne v10, v12, :cond_1

    if-nez v11, :cond_2

    if-eqz v13, :cond_1

    goto :goto_1

    :cond_1
    const/16 v8, 0x409

    if-eq v14, v12, :cond_8

    const/4 v12, 0x4

    if-eq v14, v12, :cond_3

    :cond_2
    :goto_1
    const/4 v6, 0x0

    goto/16 :goto_4

    :cond_3
    iget-object v12, v0, Lsun/font/Font2D;->fullName:Ljava/lang/String;

    if-eqz v12, :cond_4

    if-eq v13, v8, :cond_4

    if-eq v13, v7, :cond_4

    iget-object v12, v0, Lsun/font/TrueTypeFont;->localeFullName:Ljava/lang/String;

    if-nez v12, :cond_2

    invoke-direct {v0, v13}, Lsun/font/TrueTypeFont;->isLanguageCompatible(S)Z

    move-result v12

    if-eqz v12, :cond_2

    goto :goto_2

    :cond_4
    const/4 v12, 0x0

    :goto_2
    invoke-virtual {v2, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    const/4 v6, 0x0

    invoke-virtual {v2, v1, v6, v15}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    invoke-direct {v0, v1, v15, v10, v11}, Lsun/font/TrueTypeFont;->makeString([BISS)Ljava/lang/String;

    move-result-object v6

    iget-object v10, v0, Lsun/font/Font2D;->fullName:Ljava/lang/String;

    if-eqz v10, :cond_5

    if-ne v13, v8, :cond_6

    :cond_5
    iput-object v6, v0, Lsun/font/Font2D;->fullName:Ljava/lang/String;

    :cond_6
    if-eq v13, v7, :cond_7

    iget-object v8, v0, Lsun/font/TrueTypeFont;->localeFullName:Ljava/lang/String;

    if-nez v8, :cond_2

    if-eqz v12, :cond_2

    :cond_7
    iput-object v6, v0, Lsun/font/TrueTypeFont;->localeFullName:Ljava/lang/String;

    goto :goto_1

    :cond_8
    iget-object v12, v0, Lsun/font/Font2D;->familyName:Ljava/lang/String;

    if-eqz v12, :cond_9

    if-eq v13, v8, :cond_9

    if-eq v13, v7, :cond_9

    iget-object v12, v0, Lsun/font/TrueTypeFont;->localeFamilyName:Ljava/lang/String;

    if-nez v12, :cond_2

    invoke-direct {v0, v13}, Lsun/font/TrueTypeFont;->isLanguageCompatible(S)Z

    move-result v12

    if-eqz v12, :cond_2

    goto :goto_3

    :cond_9
    const/4 v12, 0x0

    :goto_3
    invoke-virtual {v2, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    const/4 v6, 0x0

    invoke-virtual {v2, v1, v6, v15}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    invoke-direct {v0, v1, v15, v10, v11}, Lsun/font/TrueTypeFont;->makeString([BISS)Ljava/lang/String;

    move-result-object v10

    iget-object v11, v0, Lsun/font/Font2D;->familyName:Ljava/lang/String;

    if-eqz v11, :cond_a

    if-ne v13, v8, :cond_b

    :cond_a
    iput-object v10, v0, Lsun/font/Font2D;->familyName:Ljava/lang/String;

    :cond_b
    if-eq v13, v7, :cond_c

    iget-object v8, v0, Lsun/font/TrueTypeFont;->localeFamilyName:Ljava/lang/String;

    if-nez v8, :cond_d

    if-eqz v12, :cond_d

    :cond_c
    iput-object v10, v0, Lsun/font/TrueTypeFont;->localeFamilyName:Ljava/lang/String;

    :cond_d
    :goto_4
    add-int/lit8 v9, v9, 0x1

    const v6, 0xffff

    goto/16 :goto_0

    :cond_e
    iget-object v1, v0, Lsun/font/TrueTypeFont;->localeFamilyName:Ljava/lang/String;

    if-nez v1, :cond_f

    iget-object v1, v0, Lsun/font/Font2D;->familyName:Ljava/lang/String;

    iput-object v1, v0, Lsun/font/TrueTypeFont;->localeFamilyName:Ljava/lang/String;

    :cond_f
    iget-object v1, v0, Lsun/font/TrueTypeFont;->localeFullName:Ljava/lang/String;

    if-nez v1, :cond_10

    iget-object v1, v0, Lsun/font/Font2D;->fullName:Ljava/lang/String;

    iput-object v1, v0, Lsun/font/TrueTypeFont;->localeFullName:Ljava/lang/String;

    :cond_10
    return-void
.end method

.method public lookupName(SI)Ljava/lang/String;
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    const/16 v2, 0x400

    new-array v2, v2, [B

    const v3, 0x6e616d65

    invoke-virtual {v0, v3}, Lsun/font/TrueTypeFont;->getTableBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/nio/ShortBuffer;->get()S

    invoke-virtual {v5}, Ljava/nio/ShortBuffer;->get()S

    move-result v6

    invoke-virtual {v5}, Ljava/nio/ShortBuffer;->get()S

    move-result v7

    const v8, 0xffff

    and-int/2addr v7, v8

    const/4 v10, 0x0

    :goto_0
    if-ge v10, v6, :cond_5

    invoke-virtual {v5}, Ljava/nio/ShortBuffer;->get()S

    move-result v11

    const/4 v12, 0x3

    if-eq v11, v12, :cond_0

    invoke-virtual {v5}, Ljava/nio/Buffer;->position()I

    move-result v11

    add-int/lit8 v11, v11, 0x5

    invoke-virtual {v5, v11}, Ljava/nio/ShortBuffer;->position(I)Ljava/nio/Buffer;

    move/from16 v9, p2

    goto :goto_1

    :cond_0
    invoke-virtual {v5}, Ljava/nio/ShortBuffer;->get()S

    move-result v12

    invoke-virtual {v5}, Ljava/nio/ShortBuffer;->get()S

    move-result v13

    invoke-virtual {v5}, Ljava/nio/ShortBuffer;->get()S

    move-result v14

    invoke-virtual {v5}, Ljava/nio/ShortBuffer;->get()S

    move-result v15

    and-int/2addr v15, v8

    invoke-virtual {v5}, Ljava/nio/ShortBuffer;->get()S

    move-result v16

    and-int v16, v16, v8

    add-int v8, v16, v7

    move/from16 v9, p2

    if-ne v14, v9, :cond_3

    if-nez v4, :cond_1

    const/16 v14, 0x409

    if-eq v13, v14, :cond_2

    :cond_1
    if-ne v13, v1, :cond_3

    :cond_2
    invoke-virtual {v3, v8}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    const/4 v8, 0x0

    invoke-virtual {v3, v2, v8, v15}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    invoke-direct {v0, v2, v15, v11, v12}, Lsun/font/TrueTypeFont;->makeString([BISS)Ljava/lang/String;

    move-result-object v4

    if-ne v13, v1, :cond_4

    return-object v4

    :cond_3
    :goto_1
    const/4 v8, 0x0

    :cond_4
    add-int/lit8 v10, v10, 0x1

    const v8, 0xffff

    goto :goto_0

    :cond_5
    return-object v4
.end method

.method public readBlock(Ljava/nio/ByteBuffer;II)I
    .locals 5

    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 1
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/awt/FontFormatException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/nio/channels/ClosedChannelException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    :try_start_1
    iget-object v2, p0, Lsun/font/TrueTypeFont;->disposerRecord:Lsun/font/TrueTypeFont$TTDisposerRecord;

    iget-object v2, v2, Lsun/font/TrueTypeFont$TTDisposerRecord;->channel:Ljava/nio/channels/FileChannel;

    if-nez v2, :cond_0

    .line 3
    invoke-direct {p0}, Lsun/font/TrueTypeFont;->open()Ljava/nio/channels/FileChannel;

    :cond_0
    add-int v2, p2, p3

    .line 4
    iget v3, p0, Lsun/font/FileFont;->fileSize:I

    if-le v2, v3, :cond_3

    if-lt p2, v3, :cond_2

    .line 5
    invoke-static {}, Lsun/font/FontUtilities;->isLogging()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Read offset is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " file size is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lsun/font/FileFont;->fileSize:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " file is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lsun/font/PhysicalFont;->platName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 7
    invoke-static {v2}, Lsun/font/FontUtilities;->logSevere(Ljava/lang/String;)V

    .line 8
    :cond_1
    monitor-exit p0

    return v0

    :cond_2
    sub-int p3, v3, p2

    .line 9
    :cond_3
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 10
    iget-object v2, p0, Lsun/font/TrueTypeFont;->disposerRecord:Lsun/font/TrueTypeFont$TTDisposerRecord;

    iget-object v2, v2, Lsun/font/TrueTypeFont$TTDisposerRecord;->channel:Ljava/nio/channels/FileChannel;

    int-to-long v3, p2

    invoke-virtual {v2, v3, v4}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    :goto_0
    if-ge v1, p3, :cond_a

    .line 11
    iget-object v2, p0, Lsun/font/TrueTypeFont;->disposerRecord:Lsun/font/TrueTypeFont$TTDisposerRecord;

    iget-object v2, v2, Lsun/font/TrueTypeFont$TTDisposerRecord;->channel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v2, p1}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v2

    if-ne v2, v0, :cond_9

    .line 12
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected EOF "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 13
    iget-object v3, p0, Lsun/font/TrueTypeFont;->disposerRecord:Lsun/font/TrueTypeFont$TTDisposerRecord;

    iget-object v3, v3, Lsun/font/TrueTypeFont$TTDisposerRecord;->channel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v3

    long-to-int v3, v3

    .line 14
    iget v4, p0, Lsun/font/FileFont;->fileSize:I

    if-eq v3, v4, :cond_4

    .line 15
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " File size was "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lsun/font/FileFont;->fileSize:I

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " and now is "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 16
    :cond_4
    invoke-static {}, Lsun/font/FontUtilities;->isLogging()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 17
    invoke-static {v2}, Lsun/font/FontUtilities;->logSevere(Ljava/lang/String;)V

    .line 18
    :cond_5
    div-int/lit8 v3, p3, 0x2

    if-gt v1, v3, :cond_7

    const/16 v3, 0x4000

    if-le v1, v3, :cond_6

    goto :goto_1

    :cond_6
    move v1, v0

    goto :goto_2

    .line 19
    :cond_7
    :goto_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 20
    invoke-static {}, Lsun/font/FontUtilities;->isLogging()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 21
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Returning "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " bytes instead of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 22
    invoke-static {v2}, Lsun/font/FontUtilities;->logSevere(Ljava/lang/String;)V

    .line 23
    :cond_8
    :goto_2
    new-instance v3, Ljava/io/IOException;

    invoke-direct {v3, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_9
    add-int/2addr v1, v2

    goto/16 :goto_0

    .line 24
    :cond_a
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    if-le v1, p3, :cond_b

    move v1, p3

    .line 25
    :cond_b
    monitor-exit p0

    goto :goto_3

    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Ljava/awt/FontFormatException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/nio/channels/ClosedChannelException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p1

    .line 26
    invoke-static {}, Lsun/font/FontUtilities;->isLogging()Z

    move-result p2

    if-eqz p2, :cond_c

    .line 27
    invoke-static {}, Lsun/font/FontUtilities;->getLogger()Lsun/util/logging/NeoPlatformLogger;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "While reading "

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lsun/font/PhysicalFont;->platName:Ljava/lang/String;

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3, p1}, Lsun/util/logging/NeoPlatformLogger;->severe(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_c
    if-nez v1, :cond_d

    .line 28
    invoke-virtual {p0}, Lsun/font/FileFont;->deregisterFontAndClearStrikeCache()V

    goto :goto_4

    :cond_d
    :goto_3
    move v0, v1

    goto :goto_4

    .line 29
    :catch_1
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 30
    invoke-virtual {p0}, Lsun/font/TrueTypeFont;->close()V

    .line 31
    invoke-virtual {p0, p1, p2, p3}, Lsun/font/TrueTypeFont;->readBlock(Ljava/nio/ByteBuffer;II)I

    move-result p0

    return p0

    :catch_2
    move-exception p1

    .line 32
    invoke-static {}, Lsun/font/FontUtilities;->isLogging()Z

    move-result p2

    if-eqz p2, :cond_e

    .line 33
    invoke-static {}, Lsun/font/FontUtilities;->getLogger()Lsun/util/logging/NeoPlatformLogger;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "While reading "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lsun/font/PhysicalFont;->platName:Ljava/lang/String;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3, p1}, Lsun/util/logging/NeoPlatformLogger;->severe(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 34
    :cond_e
    invoke-virtual {p0}, Lsun/font/FileFont;->deregisterFontAndClearStrikeCache()V

    :goto_4
    return v0
.end method

.method public readBlock(II)Ljava/nio/ByteBuffer;
    .locals 5

    .line 35
    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    const/4 v1, 0x0

    .line 36
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/awt/FontFormatException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/nio/channels/ClosedChannelException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    :try_start_1
    iget-object v2, p0, Lsun/font/TrueTypeFont;->disposerRecord:Lsun/font/TrueTypeFont$TTDisposerRecord;

    iget-object v2, v2, Lsun/font/TrueTypeFont$TTDisposerRecord;->channel:Ljava/nio/channels/FileChannel;

    if-nez v2, :cond_0

    .line 38
    invoke-direct {p0}, Lsun/font/TrueTypeFont;->open()Ljava/nio/channels/FileChannel;

    :cond_0
    add-int v2, p1, p2

    .line 39
    iget v3, p0, Lsun/font/FileFont;->fileSize:I

    if-le v2, v3, :cond_2

    if-le p1, v3, :cond_1

    .line 40
    monitor-exit p0

    return-object v1

    :cond_1
    sub-int/2addr v3, p1

    .line 41
    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 42
    :cond_2
    iget-object v2, p0, Lsun/font/TrueTypeFont;->disposerRecord:Lsun/font/TrueTypeFont$TTDisposerRecord;

    iget-object v2, v2, Lsun/font/TrueTypeFont$TTDisposerRecord;->channel:Ljava/nio/channels/FileChannel;

    int-to-long v3, p1

    invoke-virtual {v2, v3, v4}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 43
    iget-object v2, p0, Lsun/font/TrueTypeFont;->disposerRecord:Lsun/font/TrueTypeFont$TTDisposerRecord;

    iget-object v2, v2, Lsun/font/TrueTypeFont$TTDisposerRecord;->channel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v2, v0}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    .line 44
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 45
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Ljava/awt/FontFormatException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/nio/channels/ClosedChannelException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    return-object v1

    .line 46
    :catch_1
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 47
    invoke-virtual {p0}, Lsun/font/TrueTypeFont;->close()V

    .line 48
    invoke-virtual {p0, v0, p1, p2}, Lsun/font/TrueTypeFont;->readBlock(Ljava/nio/ByteBuffer;II)I

    :goto_0
    return-object v0

    :catch_2
    return-object v1
.end method

.method public readBytes(II)[B
    .locals 0

    invoke-virtual {p0, p1, p2}, Lsun/font/TrueTypeFont;->readBlock(II)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/nio/Buffer;->limit()I

    move-result p1

    new-array p1, p1, [B

    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    return-object p1
.end method

.method public setStyle()V
    .locals 1

    const v0, 0x4f532f32

    .line 1
    invoke-virtual {p0, v0}, Lsun/font/TrueTypeFont;->getTableBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-direct {p0, v0}, Lsun/font/TrueTypeFont;->setStyle(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public supportsEncoding(Ljava/lang/String;)Z
    .locals 4

    if-nez p1, :cond_0

    invoke-static {}, Lsun/font/TrueTypeFont;->getCodePage()Ljava/lang/String;

    move-result-object p1

    :cond_0
    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const-string v0, "gb18030"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p1, "gbk"

    goto :goto_0

    :cond_2
    const-string v0, "ms950_hkscs"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p1, "ms950"

    :cond_3
    :goto_0
    const v0, 0x4f532f32

    invoke-virtual {p0, v0}, Lsun/font/TrueTypeFont;->getTableBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object p0

    if-eqz p0, :cond_6

    invoke-virtual {p0}, Ljava/nio/Buffer;->capacity()I

    move-result v0

    const/16 v2, 0x56

    if-ge v0, v2, :cond_4

    goto :goto_2

    :cond_4
    const/16 v0, 0x4e

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result p0

    move v0, v1

    :goto_1
    sget-object v2, Lsun/font/TrueTypeFont;->encoding_mapping:[Ljava/lang/String;

    array-length v3, v2

    if-ge v0, v3, :cond_6

    aget-object v2, v2, v0

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v2, 0x1

    shl-int v3, v2, v0

    and-int/2addr v3, p0

    if-eqz v3, :cond_5

    return v2

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_6
    :goto_2
    return v1
.end method

.method public supportsJA()Z
    .locals 0

    iget-boolean p0, p0, Lsun/font/TrueTypeFont;->supportsJA:Z

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "** TrueType Font: Family="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lsun/font/Font2D;->familyName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " Name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lsun/font/Font2D;->fullName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " style="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lsun/font/Font2D;->style:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " fileName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lsun/font/FileFont;->getPublicFileName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public useAAForPtSize(I)Z
    .locals 4

    invoke-direct {p0}, Lsun/font/TrueTypeFont;->getGaspTable()[C

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lez v1, :cond_3

    move p0, v2

    :goto_0
    array-length v1, v0

    if-ge p0, v1, :cond_2

    aget-char v1, v0, p0

    if-gt p1, v1, :cond_1

    add-int/2addr p0, v3

    aget-char p0, v0, p0

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_0

    move v2, v3

    :cond_0
    return v2

    :cond_1
    add-int/lit8 p0, p0, 0x2

    goto :goto_0

    :cond_2
    return v3

    :cond_3
    iget p0, p0, Lsun/font/Font2D;->style:I

    if-ne p0, v3, :cond_4

    return v3

    :cond_4
    const/16 p0, 0x8

    if-le p1, p0, :cond_5

    const/16 p0, 0x12

    if-lt p1, p0, :cond_6

    :cond_5
    move v2, v3

    :cond_6
    return v2
.end method

.method public useEmbeddedBitmapsForSize(I)Z
    .locals 4

    iget-boolean v0, p0, Lsun/font/TrueTypeFont;->supportsCJK:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const v0, 0x45424c43

    invoke-virtual {p0, v0}, Lsun/font/TrueTypeFont;->getDirectoryEntry(I)Lsun/font/TrueTypeFont$DirectoryEntry;

    move-result-object v2

    if-nez v2, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0, v0}, Lsun/font/TrueTypeFont;->getTableBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object p0

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_3

    mul-int/lit8 v3, v2, 0x30

    add-int/lit8 v3, v3, 0x8

    add-int/lit8 v3, v3, 0x2d

    invoke-virtual {p0, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    if-ne v3, p1, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return v1
.end method
