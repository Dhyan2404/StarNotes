.class public Lcom/sun/org/apache/xml/internal/utils/res/XResourceBundle;
.super Ljava/util/ListResourceBundle;
.source "SourceFile"


# static fields
.field public static final ERROR_RESOURCES:Ljava/lang/String; = "com.sun.org.apache.xalan.internal.res.XSLTErrorResources"

.field public static final LANG_ADDITIVE:Ljava/lang/String; = "additive"

.field public static final LANG_ALPHABET:Ljava/lang/String; = "alphabet"

.field public static final LANG_BUNDLE_NAME:Ljava/lang/String; = "com.sun.org.apache.xml.internal.utils.res.XResources"

.field public static final LANG_LEFTTORIGHT:Ljava/lang/String; = "leftToRight"

.field public static final LANG_MULTIPLIER:Ljava/lang/String; = "multiplier"

.field public static final LANG_MULTIPLIER_CHAR:Ljava/lang/String; = "multiplierChar"

.field public static final LANG_MULT_ADD:Ljava/lang/String; = "multiplicative-additive"

.field public static final LANG_NUMBERGROUPS:Ljava/lang/String; = "numberGroups"

.field public static final LANG_NUMBERING:Ljava/lang/String; = "numbering"

.field public static final LANG_NUM_TABLES:Ljava/lang/String; = "tables"

.field public static final LANG_ORIENTATION:Ljava/lang/String; = "orientation"

.field public static final LANG_RIGHTTOLEFT:Ljava/lang/String; = "rightToLeft"

.field public static final LANG_TRAD_ALPHABET:Ljava/lang/String; = "tradAlphabet"

.field public static final MULT_FOLLOWS:Ljava/lang/String; = "follows"

.field public static final MULT_ORDER:Ljava/lang/String; = "multiplierOrder"

.field public static final MULT_PRECEDES:Ljava/lang/String; = "precedes"

.field public static final XSLT_RESOURCE:Ljava/lang/String; = "com.sun.org.apache.xml.internal.utils.res.XResourceBundle"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/util/ListResourceBundle;-><init>()V

    return-void
.end method

.method private static final getResourceSuffix(Ljava/util/Locale;)Ljava/lang/String;
    .locals 5

    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v3, "zh"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_0
    const-string v0, "JP"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_1
    return-object p0
.end method

.method public static final loadResourceBundle(Ljava/lang/String;Ljava/util/Locale;)Lcom/sun/org/apache/xml/internal/utils/res/XResourceBundle;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/MissingResourceException;
        }
    .end annotation

    invoke-static {p1}, Lcom/sun/org/apache/xml/internal/utils/res/XResourceBundle;->getResourceSuffix(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object p1

    check-cast p1, Lcom/sun/org/apache/xml/internal/utils/res/XResourceBundle;
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    :try_start_1
    const-string p1, "com.sun.org.apache.xml.internal.utils.res.XResourceBundle"

    new-instance v0, Ljava/util/Locale;

    const-string v1, "en"

    const-string v2, "US"

    invoke-direct {v0, v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1, v0}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object p1

    check-cast p1, Lcom/sun/org/apache/xml/internal/utils/res/XResourceBundle;
    :try_end_1
    .catch Ljava/util/MissingResourceException; {:try_start_1 .. :try_end_1} :catch_1

    return-object p1

    :catch_1
    new-instance p1, Ljava/util/MissingResourceException;

    const-string v0, "Could not load any resource bundles."

    const-string v1, ""

    invoke-direct {p1, v0, p0, v1}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getContents()[[Ljava/lang/Object;
    .locals 3

    const/4 p0, 0x7

    new-array p0, p0, [[Ljava/lang/Object;

    const-string v0, "ui_language"

    const-string v1, "en"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v2, 0x0

    aput-object v0, p0, v2

    const-string v0, "help_language"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v2, 0x1

    aput-object v0, p0, v2

    const-string v0, "language"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x2

    aput-object v0, p0, v1

    new-instance v0, Lcom/sun/org/apache/xml/internal/utils/res/CharArrayWrapper;

    const/16 v1, 0x1a

    new-array v2, v1, [C

    fill-array-data v2, :array_0

    invoke-direct {v0, v2}, Lcom/sun/org/apache/xml/internal/utils/res/CharArrayWrapper;-><init>([C)V

    const-string v2, "alphabet"

    filled-new-array {v2, v0}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v2, 0x3

    aput-object v0, p0, v2

    new-instance v0, Lcom/sun/org/apache/xml/internal/utils/res/CharArrayWrapper;

    new-array v1, v1, [C

    fill-array-data v1, :array_1

    invoke-direct {v0, v1}, Lcom/sun/org/apache/xml/internal/utils/res/CharArrayWrapper;-><init>([C)V

    const-string v1, "tradAlphabet"

    filled-new-array {v1, v0}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x4

    aput-object v0, p0, v1

    const-string v0, "orientation"

    const-string v1, "LeftToRight"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x5

    aput-object v0, p0, v1

    const-string v0, "numbering"

    const-string v1, "additive"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x6

    aput-object v0, p0, v1

    return-object p0

    nop

    :array_0
    .array-data 2
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
        0x47s
        0x48s
        0x49s
        0x4as
        0x4bs
        0x4cs
        0x4ds
        0x4es
        0x4fs
        0x50s
        0x51s
        0x52s
        0x53s
        0x54s
        0x55s
        0x56s
        0x57s
        0x58s
        0x59s
        0x5as
    .end array-data

    :array_1
    .array-data 2
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
        0x47s
        0x48s
        0x49s
        0x4as
        0x4bs
        0x4cs
        0x4ds
        0x4es
        0x4fs
        0x50s
        0x51s
        0x52s
        0x53s
        0x54s
        0x55s
        0x56s
        0x57s
        0x58s
        0x59s
        0x5as
    .end array-data
.end method
