.class public Lsun/awt/FcFontManager;
.super Lsun/font/SunFontManager;
.source "SourceFile"


# instance fields
.field private fcManager:Lsun/font/FontConfigManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lsun/font/SunFontManager;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lsun/awt/FcFontManager;->fcManager:Lsun/font/FontConfigManager;

    return-void
.end method


# virtual methods
.method public createFontConfiguration()Lsun/awt/FontConfiguration;
    .locals 1

    .line 1
    new-instance v0, Lsun/font/FcFontConfiguration;

    invoke-direct {v0, p0}, Lsun/font/FcFontConfiguration;-><init>(Lsun/font/SunFontManager;)V

    .line 2
    invoke-virtual {v0}, Lsun/font/FcFontConfiguration;->init()Z

    move-result p0

    if-eqz p0, :cond_0

    return-object v0

    .line 3
    :cond_0
    new-instance p0, Ljava/lang/InternalError;

    const-string v0, "failed to initialize fontconfig"

    invoke-direct {p0, v0}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public createFontConfiguration(ZZ)Lsun/awt/FontConfiguration;
    .locals 1

    .line 4
    new-instance v0, Lsun/font/FcFontConfiguration;

    invoke-direct {v0, p0, p1, p2}, Lsun/font/FcFontConfiguration;-><init>(Lsun/font/SunFontManager;ZZ)V

    .line 5
    invoke-virtual {v0}, Lsun/font/FcFontConfiguration;->init()Z

    move-result p0

    if-eqz p0, :cond_0

    return-object v0

    .line 6
    :cond_0
    new-instance p0, Ljava/lang/InternalError;

    const-string p1, "failed to initialize fontconfig"

    invoke-direct {p0, p1}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getDefaultPlatformFont()[Ljava/lang/String;
    .locals 6

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {p0}, Lsun/awt/FcFontManager;->getFontConfigManager()Lsun/font/FontConfigManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lsun/font/FontConfigManager;->initFontConfigFonts(Z)V

    invoke-virtual {p0}, Lsun/awt/FcFontManager;->getFontConfigManager()Lsun/font/FontConfigManager;

    move-result-object p0

    invoke-virtual {p0}, Lsun/font/FontConfigManager;->getFontConfigFonts()[Lsun/font/FontConfigManager$FcCompFont;

    move-result-object p0

    const/4 v1, 0x1

    if-eqz p0, :cond_1

    move v3, v2

    :goto_0
    array-length v4, p0

    if-ge v3, v4, :cond_1

    aget-object v4, p0, v3

    iget-object v4, v4, Lsun/font/FontConfigManager$FcCompFont;->fcFamily:Ljava/lang/String;

    const-string v5, "sans"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    aget-object v4, p0, v3

    iget v5, v4, Lsun/font/FontConfigManager$FcCompFont;->style:I

    if-nez v5, :cond_0

    iget-object v4, v4, Lsun/font/FontConfigManager$FcCompFont;->firstFont:Lsun/font/FontConfigManager$FontConfigFont;

    iget-object v4, v4, Lsun/font/FontConfigManager$FontConfigFont;->fullName:Ljava/lang/String;

    aput-object v4, v0, v2

    aget-object v3, p0, v3

    iget-object v3, v3, Lsun/font/FontConfigManager$FcCompFont;->firstFont:Lsun/font/FontConfigManager$FontConfigFont;

    iget-object v3, v3, Lsun/font/FontConfigManager$FontConfigFont;->fontFile:Ljava/lang/String;

    aput-object v3, v0, v1

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    aget-object v3, v0, v2

    if-nez v3, :cond_3

    if-eqz p0, :cond_2

    array-length v3, p0

    if-lez v3, :cond_2

    aget-object v3, p0, v2

    iget-object v3, v3, Lsun/font/FontConfigManager$FcCompFont;->firstFont:Lsun/font/FontConfigManager$FontConfigFont;

    iget-object v4, v3, Lsun/font/FontConfigManager$FontConfigFont;->fontFile:Ljava/lang/String;

    if-eqz v4, :cond_2

    iget-object v3, v3, Lsun/font/FontConfigManager$FontConfigFont;->fullName:Ljava/lang/String;

    if-eqz v3, :cond_2

    aput-object v3, v0, v2

    aget-object p0, p0, v2

    iget-object p0, p0, Lsun/font/FontConfigManager$FcCompFont;->firstFont:Lsun/font/FontConfigManager$FontConfigFont;

    iget-object p0, p0, Lsun/font/FontConfigManager$FontConfigFont;->fontFile:Ljava/lang/String;

    aput-object p0, v0, v1

    goto :goto_2

    :cond_2
    const-string p0, "Dialog"

    aput-object p0, v0, v2

    const-string p0, "/dialog.ttf"

    aput-object p0, v0, v1

    :cond_3
    :goto_2
    return-object v0
.end method

.method public declared-synchronized getFontConfigManager()Lsun/font/FontConfigManager;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lsun/awt/FcFontManager;->fcManager:Lsun/font/FontConfigManager;

    if-nez v0, :cond_0

    new-instance v0, Lsun/font/FontConfigManager;

    invoke-direct {v0}, Lsun/font/FontConfigManager;-><init>()V

    iput-object v0, p0, Lsun/awt/FcFontManager;->fcManager:Lsun/font/FontConfigManager;

    :cond_0
    iget-object v0, p0, Lsun/awt/FcFontManager;->fcManager:Lsun/font/FontConfigManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getFontPath(Z)Ljava/lang/String;
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
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

.method public native getFontPathNative(ZZ)Ljava/lang/String;
.end method

.method public usingPerAppContextComposites()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
