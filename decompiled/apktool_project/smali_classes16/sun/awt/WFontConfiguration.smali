.class public Lsun/awt/WFontConfiguration;
.super Lsun/awt/FontConfiguration;
.source "SourceFile"


# static fields
.field private static subsetCharsetMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static subsetEncodingMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static textInputCharset:Ljava/lang/String;


# instance fields
.field private useCompatibilityFallbacks:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lsun/awt/WFontConfiguration;->subsetCharsetMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lsun/awt/WFontConfiguration;->subsetEncodingMap:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Lsun/font/SunFontManager;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lsun/awt/FontConfiguration;-><init>(Lsun/font/SunFontManager;)V

    const-string p1, "windows-1252"

    .line 2
    sget-object v0, Lsun/awt/FontConfiguration;->encoding:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lsun/awt/WFontConfiguration;->useCompatibilityFallbacks:Z

    .line 3
    sget-object p1, Lsun/awt/FontConfiguration;->encoding:Ljava/lang/String;

    invoke-direct {p0, p1}, Lsun/awt/WFontConfiguration;->initTables(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lsun/font/SunFontManager;ZZ)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2, p3}, Lsun/awt/FontConfiguration;-><init>(Lsun/font/SunFontManager;ZZ)V

    const-string p1, "windows-1252"

    .line 5
    sget-object p2, Lsun/awt/FontConfiguration;->encoding:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lsun/awt/WFontConfiguration;->useCompatibilityFallbacks:Z

    return-void
.end method

.method private findFontWithCharset([Lsun/awt/FontDescriptor;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 p0, 0x0

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    aget-object v1, p1, v0

    invoke-virtual {v1}, Lsun/awt/FontDescriptor;->getNativeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object p0, v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method private initTables(Ljava/lang/String;)V
    .locals 24

    move-object/from16 v0, p1

    sget-object v1, Lsun/awt/WFontConfiguration;->subsetCharsetMap:Ljava/util/HashMap;

    const-string v2, "alphabetic"

    const-string v3, "ANSI_CHARSET"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lsun/awt/WFontConfiguration;->subsetCharsetMap:Ljava/util/HashMap;

    const-string v4, "alphabetic/1252"

    invoke-virtual {v1, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lsun/awt/WFontConfiguration;->subsetCharsetMap:Ljava/util/HashMap;

    const-string v5, "alphabetic/default"

    const-string v6, "DEFAULT_CHARSET"

    invoke-virtual {v1, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lsun/awt/WFontConfiguration;->subsetCharsetMap:Ljava/util/HashMap;

    const-string v7, "arabic"

    const-string v8, "ARABIC_CHARSET"

    invoke-virtual {v1, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lsun/awt/WFontConfiguration;->subsetCharsetMap:Ljava/util/HashMap;

    const-string v9, "chinese-ms936"

    const-string v10, "GB2312_CHARSET"

    invoke-virtual {v1, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lsun/awt/WFontConfiguration;->subsetCharsetMap:Ljava/util/HashMap;

    const-string v11, "chinese-gb18030"

    invoke-virtual {v1, v11, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lsun/awt/WFontConfiguration;->subsetCharsetMap:Ljava/util/HashMap;

    const-string v12, "chinese-ms950"

    const-string v13, "CHINESEBIG5_CHARSET"

    invoke-virtual {v1, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lsun/awt/WFontConfiguration;->subsetCharsetMap:Ljava/util/HashMap;

    const-string v14, "chinese-hkscs"

    invoke-virtual {v1, v14, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lsun/awt/WFontConfiguration;->subsetCharsetMap:Ljava/util/HashMap;

    const-string v15, "cyrillic"

    move-object/from16 p0, v13

    const-string v13, "RUSSIAN_CHARSET"

    invoke-virtual {v1, v15, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lsun/awt/WFontConfiguration;->subsetCharsetMap:Ljava/util/HashMap;

    move-object/from16 v16, v13

    const-string v13, "devanagari"

    invoke-virtual {v1, v13, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lsun/awt/WFontConfiguration;->subsetCharsetMap:Ljava/util/HashMap;

    move-object/from16 v17, v6

    const-string v6, "dingbats"

    move-object/from16 v18, v10

    const-string v10, "SYMBOL_CHARSET"

    invoke-virtual {v1, v6, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lsun/awt/WFontConfiguration;->subsetCharsetMap:Ljava/util/HashMap;

    move-object/from16 v19, v8

    const-string v8, "greek"

    move-object/from16 v20, v6

    const-string v6, "GREEK_CHARSET"

    invoke-virtual {v1, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lsun/awt/WFontConfiguration;->subsetCharsetMap:Ljava/util/HashMap;

    move-object/from16 v21, v6

    const-string v6, "HEBREW_CHARSET"

    move-object/from16 v22, v8

    const-string v8, "hebrew"

    invoke-virtual {v1, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lsun/awt/WFontConfiguration;->subsetCharsetMap:Ljava/util/HashMap;

    const-string v6, "japanese"

    move-object/from16 v23, v8

    const-string v8, "SHIFTJIS_CHARSET"

    invoke-virtual {v1, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lsun/awt/WFontConfiguration;->subsetCharsetMap:Ljava/util/HashMap;

    const-string v6, "korean"

    const-string v8, "HANGEUL_CHARSET"

    invoke-virtual {v1, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lsun/awt/WFontConfiguration;->subsetCharsetMap:Ljava/util/HashMap;

    const-string v6, "latin"

    invoke-virtual {v1, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lsun/awt/WFontConfiguration;->subsetCharsetMap:Ljava/util/HashMap;

    const-string v3, "symbol"

    invoke-virtual {v1, v3, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lsun/awt/WFontConfiguration;->subsetCharsetMap:Ljava/util/HashMap;

    const-string v3, "thai"

    const-string v6, "THAI_CHARSET"

    invoke-virtual {v1, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lsun/awt/WFontConfiguration;->subsetEncodingMap:Ljava/util/HashMap;

    const-string v3, "default"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lsun/awt/WFontConfiguration;->subsetEncodingMap:Ljava/util/HashMap;

    const-string v2, "windows-1252"

    invoke-virtual {v1, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lsun/awt/WFontConfiguration;->subsetEncodingMap:Ljava/util/HashMap;

    invoke-virtual {v1, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lsun/awt/WFontConfiguration;->subsetEncodingMap:Ljava/util/HashMap;

    const-string v2, "windows-1256"

    invoke-virtual {v1, v7, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lsun/awt/WFontConfiguration;->subsetEncodingMap:Ljava/util/HashMap;

    const-string v2, "GBK"

    invoke-virtual {v1, v9, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lsun/awt/WFontConfiguration;->subsetEncodingMap:Ljava/util/HashMap;

    const-string v2, "GB18030"

    invoke-virtual {v1, v11, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "x-MS950-HKSCS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lsun/awt/WFontConfiguration;->subsetEncodingMap:Ljava/util/HashMap;

    invoke-virtual {v2, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    sget-object v2, Lsun/awt/WFontConfiguration;->subsetEncodingMap:Ljava/util/HashMap;

    const-string v3, "x-windows-950"

    invoke-virtual {v2, v12, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    sget-object v2, Lsun/awt/WFontConfiguration;->subsetEncodingMap:Ljava/util/HashMap;

    const-string v3, "sun.awt.HKSCS"

    invoke-virtual {v2, v14, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lsun/awt/WFontConfiguration;->subsetEncodingMap:Ljava/util/HashMap;

    const-string v3, "windows-1251"

    invoke-virtual {v2, v15, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lsun/awt/WFontConfiguration;->subsetEncodingMap:Ljava/util/HashMap;

    const-string v3, "UTF-16LE"

    invoke-virtual {v2, v13, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lsun/awt/WFontConfiguration;->subsetEncodingMap:Ljava/util/HashMap;

    const-string v3, "sun.awt.windows.WingDings"

    move-object/from16 v4, v20

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lsun/awt/WFontConfiguration;->subsetEncodingMap:Ljava/util/HashMap;

    const-string v3, "windows-1253"

    move-object/from16 v4, v22

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lsun/awt/WFontConfiguration;->subsetEncodingMap:Ljava/util/HashMap;

    const-string v3, "windows-1255"

    move-object/from16 v4, v23

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lsun/awt/WFontConfiguration;->subsetEncodingMap:Ljava/util/HashMap;

    const-string v3, "japanese"

    const-string v4, "windows-31j"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lsun/awt/WFontConfiguration;->subsetEncodingMap:Ljava/util/HashMap;

    const-string v3, "korean"

    const-string v4, "x-windows-949"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lsun/awt/WFontConfiguration;->subsetEncodingMap:Ljava/util/HashMap;

    const-string v3, "latin"

    const-string v4, "windows-1252"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lsun/awt/WFontConfiguration;->subsetEncodingMap:Ljava/util/HashMap;

    const-string v3, "symbol"

    const-string v4, "sun.awt.Symbol"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lsun/awt/WFontConfiguration;->subsetEncodingMap:Ljava/util/HashMap;

    const-string v3, "thai"

    const-string v4, "x-windows-874"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "windows-1256"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    sput-object v19, Lsun/awt/WFontConfiguration;->textInputCharset:Ljava/lang/String;

    goto/16 :goto_1

    :cond_1
    const-string v2, "GBK"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    sput-object v18, Lsun/awt/WFontConfiguration;->textInputCharset:Ljava/lang/String;

    goto/16 :goto_1

    :cond_2
    const-string v2, "GB18030"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    sput-object v18, Lsun/awt/WFontConfiguration;->textInputCharset:Ljava/lang/String;

    goto/16 :goto_1

    :cond_3
    const-string v2, "x-windows-950"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    sput-object p0, Lsun/awt/WFontConfiguration;->textInputCharset:Ljava/lang/String;

    goto :goto_1

    :cond_4
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    sput-object p0, Lsun/awt/WFontConfiguration;->textInputCharset:Ljava/lang/String;

    goto :goto_1

    :cond_5
    const-string v1, "windows-1251"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    sput-object v16, Lsun/awt/WFontConfiguration;->textInputCharset:Ljava/lang/String;

    goto :goto_1

    :cond_6
    const-string v1, "UTF-8"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    sput-object v17, Lsun/awt/WFontConfiguration;->textInputCharset:Ljava/lang/String;

    goto :goto_1

    :cond_7
    const-string v1, "windows-1253"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    sput-object v21, Lsun/awt/WFontConfiguration;->textInputCharset:Ljava/lang/String;

    goto :goto_1

    :cond_8
    const-string v1, "windows-1255"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    const-string v0, "HEBREW_CHARSET"

    sput-object v0, Lsun/awt/WFontConfiguration;->textInputCharset:Ljava/lang/String;

    goto :goto_1

    :cond_9
    const-string v1, "windows-31j"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    const-string v0, "SHIFTJIS_CHARSET"

    sput-object v0, Lsun/awt/WFontConfiguration;->textInputCharset:Ljava/lang/String;

    goto :goto_1

    :cond_a
    const-string v1, "x-windows-949"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    const-string v0, "HANGEUL_CHARSET"

    sput-object v0, Lsun/awt/WFontConfiguration;->textInputCharset:Ljava/lang/String;

    goto :goto_1

    :cond_b
    const-string v1, "x-windows-874"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const-string v0, "THAI_CHARSET"

    sput-object v0, Lsun/awt/WFontConfiguration;->textInputCharset:Ljava/lang/String;

    goto :goto_1

    :cond_c
    sput-object v17, Lsun/awt/WFontConfiguration;->textInputCharset:Ljava/lang/String;

    :goto_1
    return-void
.end method


# virtual methods
.method public getDefaultFontCharset(Ljava/lang/String;)Ljava/nio/charset/Charset;
    .locals 0

    new-instance p0, Lsun/awt/WDefaultFontCharset;

    invoke-direct {p0, p1}, Lsun/awt/WDefaultFontCharset;-><init>(Ljava/lang/String;)V

    return-object p0
.end method

.method public getEncoding(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    sget-object p0, Lsun/awt/WFontConfiguration;->subsetEncodingMap:Ljava/util/HashMap;

    invoke-virtual {p0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-nez p0, :cond_0

    const-string p0, "default"

    :cond_0
    return-object p0
.end method

.method public getFaceNameFromComponentFontName(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    return-object p1
.end method

.method public getFallbackFamilyName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-boolean v0, p0, Lsun/awt/WFontConfiguration;->useCompatibilityFallbacks:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lsun/awt/FontConfiguration;->getCompatibilityFamilyName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    return-object p2
.end method

.method public getFileNameFromComponentFontName(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0, p1}, Lsun/awt/FontConfiguration;->getFileNameFromPlatformName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTextComponentFontName(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0, p1, p2}, Lsun/awt/FontConfiguration;->getFontDescriptors(Ljava/lang/String;I)[Lsun/awt/FontDescriptor;

    move-result-object p1

    sget-object p2, Lsun/awt/WFontConfiguration;->textInputCharset:Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lsun/awt/WFontConfiguration;->findFontWithCharset([Lsun/awt/FontDescriptor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_0

    sget-object v0, Lsun/awt/WFontConfiguration;->textInputCharset:Ljava/lang/String;

    const-string v1, "DEFAULT_CHARSET"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1, v1}, Lsun/awt/WFontConfiguration;->findFontWithCharset([Lsun/awt/FontDescriptor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :cond_0
    if-nez p2, :cond_2

    array-length p0, p1

    if-lez p0, :cond_1

    const/4 p0, 0x0

    aget-object p0, p1, p0

    invoke-virtual {p0}, Lsun/awt/FontDescriptor;->getNativeName()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    const-string p0, "Arial,ANSI_CHARSET"

    :goto_0
    move-object p2, p0

    :cond_2
    return-object p2
.end method

.method public initReorderMap()V
    .locals 4

    sget-object v0, Lsun/awt/FontConfiguration;->encoding:Ljava/lang/String;

    const-string v1, "windows-31j"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lsun/awt/FontConfiguration;->localeMap:Ljava/util/Hashtable;

    const-string v2, "dialoginput.plain.japanese"

    const-string v3, "MS Mincho"

    invoke-virtual {v0, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/awt/FontConfiguration;->localeMap:Ljava/util/Hashtable;

    const-string v2, "dialoginput.bold.japanese"

    invoke-virtual {v0, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/awt/FontConfiguration;->localeMap:Ljava/util/Hashtable;

    const-string v2, "dialoginput.italic.japanese"

    invoke-virtual {v0, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/awt/FontConfiguration;->localeMap:Ljava/util/Hashtable;

    const-string v2, "dialoginput.bolditalic.japanese"

    invoke-virtual {v0, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lsun/awt/FontConfiguration;->reorderMap:Ljava/util/HashMap;

    const-string v2, "UTF-8.hi"

    const-string v3, "devanagari"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lsun/awt/FontConfiguration;->reorderMap:Ljava/util/HashMap;

    const-string v2, "windows-1255"

    const-string v3, "hebrew"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lsun/awt/FontConfiguration;->reorderMap:Ljava/util/HashMap;

    const-string v2, "x-windows-874"

    const-string v3, "thai"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lsun/awt/FontConfiguration;->reorderMap:Ljava/util/HashMap;

    const-string v2, "japanese"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lsun/awt/FontConfiguration;->reorderMap:Ljava/util/HashMap;

    const-string v1, "x-windows-949"

    const-string v2, "korean"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lsun/awt/FontConfiguration;->reorderMap:Ljava/util/HashMap;

    const-string v1, "GBK"

    const-string v2, "chinese-ms936"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lsun/awt/FontConfiguration;->reorderMap:Ljava/util/HashMap;

    const-string v1, "GB18030"

    const-string v2, "chinese-gb18030"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lsun/awt/FontConfiguration;->reorderMap:Ljava/util/HashMap;

    const-string v1, "x-windows-950"

    const-string v2, "chinese-ms950"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lsun/awt/FontConfiguration;->reorderMap:Ljava/util/HashMap;

    const-string v1, "chinese-ms950,chinese-hkscs"

    invoke-virtual {p0, v1}, Lsun/awt/FontConfiguration;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const-string v1, "x-MS950-HKSCS"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public makeAWTFontName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    sget-object p0, Lsun/awt/WFontConfiguration;->subsetCharsetMap:Ljava/util/HashMap;

    invoke-virtual {p0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-nez p0, :cond_0

    const-string p0, "DEFAULT_CHARSET"

    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ","

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public setOsNameAndVersion()V
    .locals 4

    invoke-super {p0}, Lsun/awt/FontConfiguration;->setOsNameAndVersion()V

    sget-object p0, Lsun/awt/FontConfiguration;->osName:Ljava/lang/String;

    const-string v0, "Windows"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    sget-object p0, Lsun/awt/FontConfiguration;->osName:Ljava/lang/String;

    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result p0

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne p0, v2, :cond_0

    sput-object v1, Lsun/awt/FontConfiguration;->osName:Ljava/lang/String;

    goto :goto_0

    :cond_0
    sget-object v3, Lsun/awt/FontConfiguration;->osName:Ljava/lang/String;

    add-int/lit8 p0, p0, 0x1

    invoke-virtual {v3, v0, p0}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    if-ne v0, v2, :cond_1

    sget-object v0, Lsun/awt/FontConfiguration;->osName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lsun/awt/FontConfiguration;->osName:Ljava/lang/String;

    goto :goto_0

    :cond_1
    sget-object v2, Lsun/awt/FontConfiguration;->osName:Ljava/lang/String;

    invoke-virtual {v2, p0, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lsun/awt/FontConfiguration;->osName:Ljava/lang/String;

    :goto_0
    sput-object v1, Lsun/awt/FontConfiguration;->osVersion:Ljava/lang/String;

    :cond_2
    return-void
.end method
