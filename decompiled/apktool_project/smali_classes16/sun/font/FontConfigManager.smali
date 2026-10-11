.class public Lsun/font/FontConfigManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/font/FontConfigManager$FontConfigInfo;,
        Lsun/font/FontConfigManager$FcCompFont;,
        Lsun/font/FontConfigManager$FontConfigFont;
    }
.end annotation


# static fields
.field private static final fcInfo:Lsun/font/FontConfigManager$FontConfigInfo;

.field static fontConfigFailed:Z

.field private static fontConfigNames:[Ljava/lang/String;


# instance fields
.field private fontConfigFonts:[Lsun/font/FontConfigManager$FcCompFont;


# direct methods
.method public static constructor <clinit>()V
    .locals 13

    new-instance v0, Lsun/font/FontConfigManager$FontConfigInfo;

    invoke-direct {v0}, Lsun/font/FontConfigManager$FontConfigInfo;-><init>()V

    sput-object v0, Lsun/font/FontConfigManager;->fcInfo:Lsun/font/FontConfigManager$FontConfigInfo;

    const-string v1, "sans:regular:roman"

    const-string v2, "sans:bold:roman"

    const-string v3, "sans:regular:italic"

    const-string v4, "sans:bold:italic"

    const-string v5, "serif:regular:roman"

    const-string v6, "serif:bold:roman"

    const-string v7, "serif:regular:italic"

    const-string v8, "serif:bold:italic"

    const-string v9, "monospace:regular:roman"

    const-string v10, "monospace:bold:roman"

    const-string v11, "monospace:regular:italic"

    const-string v12, "monospace:bold:italic"

    filled-new-array/range {v1 .. v12}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lsun/font/FontConfigManager;->fontConfigNames:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getFCLocaleStr()Ljava/lang/String;
    .locals 3

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_0
    return-object v1
.end method

.method private static getFontConfig(Ljava/lang/String;Lsun/font/FontConfigManager$FontConfigInfo;[Lsun/font/FontConfigManager$FcCompFont;Z)V
    .locals 0

    return-void
.end method

.method public static getFontConfigAAHint()Ljava/lang/Object;
    .locals 1

    const-string v0, "sans"

    .line 1
    invoke-static {v0}, Lsun/font/FontConfigManager;->getFontConfigAAHint(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static getFontConfigAAHint(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    .line 2
    sget-boolean v0, Lsun/font/FontUtilities;->isWindows:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 3
    :cond_0
    invoke-static {}, Lsun/font/FontConfigManager;->getFCLocaleStr()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lsun/font/FontConfigManager;->getFontConfigAASettings(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    if-gez p0, :cond_1

    return-object v1

    :cond_1
    const/4 v0, 0x2

    .line 4
    invoke-static {v0, p0}, Lsun/awt/SunHints$Value;->get(II)Lsun/awt/SunHints$Value;

    move-result-object p0

    return-object p0
.end method

.method private static getFontConfigAASettings(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public static getFontConfigVersion()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public getFontConfigFont(Ljava/lang/String;I)Lsun/font/CompositeFont;
    .locals 7

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lsun/font/FontConfigManager;->initFontConfigFonts(Z)V

    iget-object v1, p0, Lsun/font/FontConfigManager;->fontConfigFonts:[Lsun/font/FontConfigManager$FcCompFont;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    :cond_0
    move v1, v0

    :goto_0
    iget-object v3, p0, Lsun/font/FontConfigManager;->fontConfigFonts:[Lsun/font/FontConfigManager$FcCompFont;

    array-length v4, v3

    if-ge v1, v4, :cond_2

    aget-object v3, v3, v1

    iget-object v3, v3, Lsun/font/FontConfigManager$FcCompFont;->fcFamily:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lsun/font/FontConfigManager;->fontConfigFonts:[Lsun/font/FontConfigManager$FcCompFont;

    aget-object v3, v3, v1

    iget v4, v3, Lsun/font/FontConfigManager$FcCompFont;->style:I

    if-ne p2, v4, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    move-object v3, v2

    :goto_1
    if-nez v3, :cond_3

    iget-object v1, p0, Lsun/font/FontConfigManager;->fontConfigFonts:[Lsun/font/FontConfigManager$FcCompFont;

    aget-object v3, v1, v0

    :cond_3
    invoke-static {}, Lsun/font/FontUtilities;->isLogging()Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FC name="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " style="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " uses "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, v3, Lsun/font/FontConfigManager$FcCompFont;->firstFont:Lsun/font/FontConfigManager$FontConfigFont;

    iget-object p1, p1, Lsun/font/FontConfigManager$FontConfigFont;->familyName:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " in file: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, v3, Lsun/font/FontConfigManager$FcCompFont;->firstFont:Lsun/font/FontConfigManager$FontConfigFont;

    iget-object p1, p1, Lsun/font/FontConfigManager$FontConfigFont;->fontFile:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lsun/font/FontUtilities;->logInfo(Ljava/lang/String;)V

    :cond_4
    iget-object p1, v3, Lsun/font/FontConfigManager$FcCompFont;->compFont:Lsun/font/CompositeFont;

    if-eqz p1, :cond_5

    return-object p1

    :cond_5
    invoke-static {}, Lsun/font/FontManagerFactory;->getInstance()Lsun/font/FontManager;

    move-result-object p1

    iget-object v1, v3, Lsun/font/FontConfigManager$FcCompFont;->jdkName:Ljava/lang/String;

    const/4 v4, 0x2

    invoke-interface {p1, v1, p2, v4}, Lsun/font/FontManager;->findFont2D(Ljava/lang/String;II)Lsun/font/Font2D;

    move-result-object p1

    check-cast p1, Lsun/font/CompositeFont;

    iget-object p2, v3, Lsun/font/FontConfigManager$FcCompFont;->firstFont:Lsun/font/FontConfigManager$FontConfigFont;

    iget-object v1, p2, Lsun/font/FontConfigManager$FontConfigFont;->familyName:Ljava/lang/String;

    if-eqz v1, :cond_d

    iget-object p2, p2, Lsun/font/FontConfigManager$FontConfigFont;->fontFile:Ljava/lang/String;

    if-nez p2, :cond_6

    goto/16 :goto_4

    :cond_6
    invoke-static {v1}, Lsun/font/FontFamily;->getFamily(Ljava/lang/String;)Lsun/font/FontFamily;

    move-result-object p2

    if-eqz p2, :cond_7

    iget v1, v3, Lsun/font/FontConfigManager$FcCompFont;->style:I

    invoke-virtual {p2, v1}, Lsun/font/FontFamily;->getFontWithExactStyleMatch(I)Lsun/font/Font2D;

    move-result-object v1

    instance-of v4, v1, Lsun/font/PhysicalFont;

    if-eqz v4, :cond_7

    check-cast v1, Lsun/font/PhysicalFont;

    goto :goto_2

    :cond_7
    move-object v1, v2

    :goto_2
    if-eqz v1, :cond_8

    iget-object v4, v3, Lsun/font/FontConfigManager$FcCompFont;->firstFont:Lsun/font/FontConfigManager$FontConfigFont;

    iget-object v4, v4, Lsun/font/FontConfigManager$FontConfigFont;->fontFile:Ljava/lang/String;

    iget-object v5, v1, Lsun/font/PhysicalFont;->platName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a

    :cond_8
    invoke-virtual {p0, v3}, Lsun/font/FontConfigManager;->registerFromFcInfo(Lsun/font/FontConfigManager$FcCompFont;)Lsun/font/PhysicalFont;

    move-result-object v1

    if-nez v1, :cond_9

    iput-object p1, v3, Lsun/font/FontConfigManager$FcCompFont;->compFont:Lsun/font/CompositeFont;

    return-object p1

    :cond_9
    invoke-virtual {v1, v2}, Lsun/font/Font2D;->getFamilyName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lsun/font/FontFamily;->getFamily(Ljava/lang/String;)Lsun/font/FontFamily;

    move-result-object p2

    :cond_a
    :goto_3
    iget-object v4, p0, Lsun/font/FontConfigManager;->fontConfigFonts:[Lsun/font/FontConfigManager$FcCompFont;

    array-length v5, v4

    if-ge v0, v5, :cond_c

    aget-object v4, v4, v0

    if-eq v4, v3, :cond_b

    invoke-virtual {v1, v2}, Lsun/font/Font2D;->getFamilyName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, v4, Lsun/font/FontConfigManager$FcCompFont;->firstFont:Lsun/font/FontConfigManager$FontConfigFont;

    iget-object v6, v6, Lsun/font/FontConfigManager$FontConfigFont;->familyName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    iget-object v5, v4, Lsun/font/FontConfigManager$FcCompFont;->firstFont:Lsun/font/FontConfigManager$FontConfigFont;

    iget-object v5, v5, Lsun/font/FontConfigManager$FontConfigFont;->fontFile:Ljava/lang/String;

    iget-object v6, v1, Lsun/font/PhysicalFont;->platName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b

    iget v4, v4, Lsun/font/FontConfigManager$FcCompFont;->style:I

    invoke-virtual {p2, v4}, Lsun/font/FontFamily;->getFontWithExactStyleMatch(I)Lsun/font/Font2D;

    move-result-object v4

    if-nez v4, :cond_b

    iget-object v4, p0, Lsun/font/FontConfigManager;->fontConfigFonts:[Lsun/font/FontConfigManager$FcCompFont;

    aget-object v4, v4, v0

    invoke-virtual {p0, v4}, Lsun/font/FontConfigManager;->registerFromFcInfo(Lsun/font/FontConfigManager$FcCompFont;)Lsun/font/PhysicalFont;

    :cond_b
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_c
    new-instance p0, Lsun/font/CompositeFont;

    invoke-direct {p0, v1, p1}, Lsun/font/CompositeFont;-><init>(Lsun/font/PhysicalFont;Lsun/font/CompositeFont;)V

    iput-object p0, v3, Lsun/font/FontConfigManager$FcCompFont;->compFont:Lsun/font/CompositeFont;

    return-object p0

    :cond_d
    :goto_4
    iput-object p1, v3, Lsun/font/FontConfigManager$FcCompFont;->compFont:Lsun/font/CompositeFont;

    return-object p1
.end method

.method public getFontConfigFonts()[Lsun/font/FontConfigManager$FcCompFont;
    .locals 0

    iget-object p0, p0, Lsun/font/FontConfigManager;->fontConfigFonts:[Lsun/font/FontConfigManager$FcCompFont;

    return-object p0
.end method

.method public getFontConfigInfo()Lsun/font/FontConfigManager$FontConfigInfo;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lsun/font/FontConfigManager;->initFontConfigFonts(Z)V

    sget-object p0, Lsun/font/FontConfigManager;->fcInfo:Lsun/font/FontConfigManager$FontConfigInfo;

    return-object p0
.end method

.method public declared-synchronized initFontConfigFonts(Z)V
    .locals 9

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lsun/font/FontConfigManager;->fontConfigFonts:[Lsun/font/FontConfigManager$FcCompFont;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    aget-object v0, v0, v1

    iget-object v0, v0, Lsun/font/FontConfigManager$FcCompFont;->allFonts:[Lsun/font/FontConfigManager$FontConfigFont;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    :cond_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    sget-boolean v0, Lsun/font/FontUtilities;->isWindows:Z

    if-nez v0, :cond_f

    sget-boolean v0, Lsun/font/FontConfigManager;->fontConfigFailed:Z

    if-eqz v0, :cond_2

    goto/16 :goto_7

    :cond_2
    invoke-static {}, Lsun/font/FontUtilities;->isLogging()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    goto :goto_0

    :cond_3
    const-wide/16 v2, 0x0

    :goto_0
    sget-object v0, Lsun/font/FontConfigManager;->fontConfigNames:[Ljava/lang/String;

    array-length v0, v0

    new-array v4, v0, [Lsun/font/FontConfigManager$FcCompFont;

    move v5, v1

    :goto_1
    if-ge v5, v0, :cond_4

    new-instance v6, Lsun/font/FontConfigManager$FcCompFont;

    invoke-direct {v6}, Lsun/font/FontConfigManager$FcCompFont;-><init>()V

    aput-object v6, v4, v5

    sget-object v7, Lsun/font/FontConfigManager;->fontConfigNames:[Ljava/lang/String;

    aget-object v7, v7, v5

    iput-object v7, v6, Lsun/font/FontConfigManager$FcCompFont;->fcName:Ljava/lang/String;

    const/16 v6, 0x3a

    invoke-virtual {v7, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    aget-object v7, v4, v5

    iget-object v8, v7, Lsun/font/FontConfigManager$FcCompFont;->fcName:Ljava/lang/String;

    invoke-virtual {v8, v1, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v7, Lsun/font/FontConfigManager$FcCompFont;->fcFamily:Ljava/lang/String;

    aget-object v6, v4, v5

    iget-object v7, v6, Lsun/font/FontConfigManager$FcCompFont;->fcFamily:Ljava/lang/String;

    invoke-static {v7}, Lsun/font/FontUtilities;->mapFcName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lsun/font/FontConfigManager$FcCompFont;->jdkName:Ljava/lang/String;

    aget-object v6, v4, v5

    rem-int/lit8 v7, v5, 0x4

    iput v7, v6, Lsun/font/FontConfigManager$FcCompFont;->style:I

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_4
    invoke-static {}, Lsun/font/FontConfigManager;->getFCLocaleStr()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lsun/font/FontConfigManager;->fcInfo:Lsun/font/FontConfigManager$FontConfigInfo;

    invoke-static {v5, v6, v4, p1}, Lsun/font/FontConfigManager;->getFontConfig(Ljava/lang/String;Lsun/font/FontConfigManager$FontConfigInfo;[Lsun/font/FontConfigManager$FcCompFont;Z)V

    const/4 p1, 0x0

    move v5, v1

    :goto_2
    const/4 v6, 0x1

    if-ge v5, v0, :cond_8

    aget-object v7, v4, v5

    iget-object v7, v7, Lsun/font/FontConfigManager$FcCompFont;->firstFont:Lsun/font/FontConfigManager$FontConfigFont;

    if-nez v7, :cond_6

    invoke-static {}, Lsun/font/FontUtilities;->isLogging()Z

    move-result v7

    if-eqz v7, :cond_5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Fontconfig returned no font for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v8, v4, v5

    iget-object v8, v8, Lsun/font/FontConfigManager$FcCompFont;->fcName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lsun/font/FontUtilities;->logInfo(Ljava/lang/String;)V

    :cond_5
    sput-boolean v6, Lsun/font/FontConfigManager;->fontConfigFailed:Z

    goto :goto_3

    :cond_6
    if-nez p1, :cond_7

    move-object p1, v7

    :cond_7
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_8
    if-nez p1, :cond_a

    invoke-static {}, Lsun/font/FontUtilities;->isLogging()Z

    move-result p1

    if-eqz p1, :cond_9

    const-string p1, "Fontconfig returned no fonts at all."

    invoke-static {p1}, Lsun/font/FontUtilities;->logInfo(Ljava/lang/String;)V

    :cond_9
    sput-boolean v6, Lsun/font/FontConfigManager;->fontConfigFailed:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_a
    :try_start_2
    sget-boolean v5, Lsun/font/FontConfigManager;->fontConfigFailed:Z

    if-eqz v5, :cond_c

    move v5, v1

    :goto_4
    if-ge v5, v0, :cond_c

    aget-object v6, v4, v5

    iget-object v7, v6, Lsun/font/FontConfigManager$FcCompFont;->firstFont:Lsun/font/FontConfigManager$FontConfigFont;

    if-nez v7, :cond_b

    iput-object p1, v6, Lsun/font/FontConfigManager$FcCompFont;->firstFont:Lsun/font/FontConfigManager$FontConfigFont;

    :cond_b
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_c
    iput-object v4, p0, Lsun/font/FontConfigManager;->fontConfigFonts:[Lsun/font/FontConfigManager$FcCompFont;

    invoke-static {}, Lsun/font/FontUtilities;->isLogging()Z

    move-result p1

    if-eqz p1, :cond_e

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Time spent accessing fontconfig="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long/2addr v4, v2

    const-wide/32 v2, 0xf4240

    div-long/2addr v4, v2

    invoke-virtual {p1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "ms."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lsun/font/FontUtilities;->logInfo(Ljava/lang/String;)V

    move p1, v1

    :goto_5
    iget-object v0, p0, Lsun/font/FontConfigManager;->fontConfigFonts:[Lsun/font/FontConfigManager$FcCompFont;

    array-length v2, v0

    if-ge p1, v2, :cond_e

    aget-object v0, v0, p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FC font "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lsun/font/FontConfigManager$FcCompFont;->fcName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " maps to family "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lsun/font/FontConfigManager$FcCompFont;->firstFont:Lsun/font/FontConfigManager$FontConfigFont;

    iget-object v3, v3, Lsun/font/FontConfigManager$FontConfigFont;->familyName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " in file "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lsun/font/FontConfigManager$FcCompFont;->firstFont:Lsun/font/FontConfigManager$FontConfigFont;

    iget-object v3, v3, Lsun/font/FontConfigManager$FontConfigFont;->fontFile:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lsun/font/FontUtilities;->logInfo(Ljava/lang/String;)V

    iget-object v2, v0, Lsun/font/FontConfigManager$FcCompFont;->allFonts:[Lsun/font/FontConfigManager$FontConfigFont;

    if-eqz v2, :cond_d

    move v2, v1

    :goto_6
    iget-object v3, v0, Lsun/font/FontConfigManager$FcCompFont;->allFonts:[Lsun/font/FontConfigManager$FontConfigFont;

    array-length v4, v3

    if-ge v2, v4, :cond_d

    aget-object v3, v3, v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Family="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v3, Lsun/font/FontConfigManager$FontConfigFont;->familyName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " Style="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v3, Lsun/font/FontConfigManager$FontConfigFont;->styleStr:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " Fullname="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v3, Lsun/font/FontConfigManager$FontConfigFont;->fullName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " File="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v3, Lsun/font/FontConfigManager$FontConfigFont;->fontFile:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lsun/font/FontUtilities;->logInfo(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_d
    add-int/lit8 p1, p1, 0x1

    goto :goto_5

    :cond_e
    monitor-exit p0

    return-void

    :cond_f
    :goto_7
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public loadFontConfig()[Lsun/font/FontConfigManager$FcCompFont;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lsun/font/FontConfigManager;->initFontConfigFonts(Z)V

    iget-object p0, p0, Lsun/font/FontConfigManager;->fontConfigFonts:[Lsun/font/FontConfigManager$FcCompFont;

    return-object p0
.end method

.method public populateFontConfig([Lsun/font/FontConfigManager$FcCompFont;)V
    .locals 0

    iput-object p1, p0, Lsun/font/FontConfigManager;->fontConfigFonts:[Lsun/font/FontConfigManager$FcCompFont;

    return-void
.end method

.method public registerFromFcInfo(Lsun/font/FontConfigManager$FcCompFont;)Lsun/font/PhysicalFont;
    .locals 8

    invoke-static {}, Lsun/font/SunFontManager;->getInstance()Lsun/font/SunFontManager;

    move-result-object v0

    iget-object p0, p1, Lsun/font/FontConfigManager$FcCompFont;->firstFont:Lsun/font/FontConfigManager$FontConfigFont;

    iget-object p0, p0, Lsun/font/FontConfigManager$FontConfigFont;->fontFile:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x4

    sub-int/2addr v1, v2

    const/4 v3, 0x0

    if-gtz v1, :cond_0

    return-object v3

    :cond_0
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v4, ".ttc"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    invoke-virtual {v0, p0}, Lsun/font/SunFontManager;->getRegisteredFontFile(Ljava/lang/String;)Lsun/font/PhysicalFont;

    move-result-object v5

    const/4 v6, 0x0

    if-eqz v5, :cond_3

    if-eqz v4, :cond_2

    iget-object p0, p1, Lsun/font/FontConfigManager$FcCompFont;->firstFont:Lsun/font/FontConfigManager$FontConfigFont;

    iget-object p0, p0, Lsun/font/FontConfigManager$FontConfigFont;->familyName:Ljava/lang/String;

    iget p1, p1, Lsun/font/FontConfigManager$FcCompFont;->style:I

    invoke-virtual {v0, p0, p1, v6}, Lsun/font/SunFontManager;->findFont2D(Ljava/lang/String;II)Lsun/font/Font2D;

    move-result-object p0

    instance-of p1, p0, Lsun/font/PhysicalFont;

    if-eqz p1, :cond_1

    check-cast p0, Lsun/font/PhysicalFont;

    return-object p0

    :cond_1
    return-object v3

    :cond_2
    return-object v5

    :cond_3
    iget-object v5, p1, Lsun/font/FontConfigManager$FcCompFont;->firstFont:Lsun/font/FontConfigManager$FontConfigFont;

    iget-object v5, v5, Lsun/font/FontConfigManager$FontConfigFont;->familyName:Ljava/lang/String;

    iget v7, p1, Lsun/font/FontConfigManager$FcCompFont;->style:I

    invoke-virtual {v0, v5, v7}, Lsun/font/SunFontManager;->findJREDeferredFont(Ljava/lang/String;I)Lsun/font/PhysicalFont;

    move-result-object v5

    const/4 v7, 0x1

    if-nez v5, :cond_6

    invoke-virtual {v0, p0}, Lsun/font/SunFontManager;->isDeferredFont(Ljava/lang/String;)Z

    move-result p0

    if-ne p0, v7, :cond_6

    iget-object p0, p1, Lsun/font/FontConfigManager$FcCompFont;->firstFont:Lsun/font/FontConfigManager$FontConfigFont;

    iget-object p0, p0, Lsun/font/FontConfigManager$FontConfigFont;->fontFile:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lsun/font/SunFontManager;->initialiseDeferredFont(Ljava/lang/String;)Lsun/font/PhysicalFont;

    move-result-object v5

    if-eqz v5, :cond_6

    if-eqz v4, :cond_5

    iget-object p0, p1, Lsun/font/FontConfigManager$FcCompFont;->firstFont:Lsun/font/FontConfigManager$FontConfigFont;

    iget-object p0, p0, Lsun/font/FontConfigManager$FontConfigFont;->familyName:Ljava/lang/String;

    iget p1, p1, Lsun/font/FontConfigManager$FcCompFont;->style:I

    invoke-virtual {v0, p0, p1, v6}, Lsun/font/SunFontManager;->findFont2D(Ljava/lang/String;II)Lsun/font/Font2D;

    move-result-object p0

    instance-of p1, p0, Lsun/font/PhysicalFont;

    if-eqz p1, :cond_4

    check-cast p0, Lsun/font/PhysicalFont;

    return-object p0

    :cond_4
    return-object v3

    :cond_5
    return-object v5

    :cond_6
    if-nez v5, :cond_b

    const-string p0, ".ttf"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a

    if-eqz v4, :cond_7

    goto :goto_1

    :cond_7
    const-string p0, ".pfa"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9

    const-string p0, ".pfb"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_8

    goto :goto_0

    :cond_8
    const/4 p0, -0x1

    const/4 v1, 0x6

    move v3, p0

    move v5, v1

    goto :goto_2

    :cond_9
    :goto_0
    move v5, v2

    move v3, v7

    goto :goto_2

    :cond_a
    :goto_1
    const/4 p0, 0x3

    move v5, p0

    move v3, v6

    :goto_2
    iget-object p0, p1, Lsun/font/FontConfigManager$FcCompFont;->firstFont:Lsun/font/FontConfigManager$FontConfigFont;

    iget-object v1, p0, Lsun/font/FontConfigManager$FontConfigFont;->fontFile:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v4, 0x1

    invoke-virtual/range {v0 .. v5}, Lsun/font/SunFontManager;->registerFontFile(Ljava/lang/String;[Ljava/lang/String;IZI)Lsun/font/PhysicalFont;

    move-result-object v5

    :cond_b
    return-object v5
.end method
