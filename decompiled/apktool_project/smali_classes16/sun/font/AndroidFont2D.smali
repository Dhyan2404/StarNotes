.class public Lsun/font/AndroidFont2D;
.super Lsun/font/TrueTypeFont;
.source "SourceFile"


# direct methods
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
    invoke-direct/range {v0 .. v5}, Lsun/font/AndroidFont2D;-><init>(Ljava/lang/String;Ljava/lang/Object;IZZ)V

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
    invoke-direct/range {p0 .. p5}, Lsun/font/TrueTypeFont;-><init>(Ljava/lang/String;Ljava/lang/Object;IZZ)V

    return-void
.end method


# virtual methods
.method public createStrike(Lsun/font/FontStrikeDesc;)Lsun/font/FontStrike;
    .locals 1

    new-instance v0, Lsun/font/AndroidFontStrike;

    invoke-direct {v0, p0, p1}, Lsun/font/AndroidFontStrike;-><init>(Lsun/font/FileFont;Lsun/font/FontStrikeDesc;)V

    return-object v0
.end method

.method public getHBTypeface()Lcom/onyx/harfbuzz/graphics/HBTypeface;
    .locals 0

    iget-object p0, p0, Lsun/font/PhysicalFont;->platName:Ljava/lang/String;

    invoke-static {p0}, Lcom/trans/android/font/FontManager;->getHBTypeface(Ljava/lang/String;)Lcom/onyx/harfbuzz/graphics/HBTypeface;

    move-result-object p0

    return-object p0
.end method

.method public declared-synchronized getScaler()Lsun/font/FontScaler;
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lsun/font/FileFont;->scaler:Lsun/font/FontScaler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v0, :cond_0

    :try_start_1
    new-instance v0, Lsun/font/AndroidFontScaler;

    iget v1, p0, Lsun/font/TrueTypeFont;->fontIndex:I

    iget-boolean v2, p0, Lsun/font/TrueTypeFont;->supportsCJK:Z

    iget v3, p0, Lsun/font/FileFont;->fileSize:I

    invoke-direct {v0, p0, v1, v2, v3}, Lsun/font/AndroidFontScaler;-><init>(Lsun/font/PhysicalFont;IZI)V

    iput-object v0, p0, Lsun/font/FileFont;->scaler:Lsun/font/FontScaler;

    invoke-static {p0, v0}, Lsun/java2d/Disposer;->addObjectRecord(Ljava/lang/Object;Lsun/java2d/DisposerRecord;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    :try_start_2
    invoke-static {}, Lsun/font/FontScaler;->getNullScaler()Lsun/font/FontScaler;

    move-result-object v0

    iput-object v0, p0, Lsun/font/FileFont;->scaler:Lsun/font/FontScaler;

    invoke-static {}, Lsun/font/FontManagerFactory;->getInstance()Lsun/font/FontManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lsun/font/FontManager;->deRegisterBadFont(Lsun/font/Font2D;)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lsun/font/FileFont;->scaler:Lsun/font/FontScaler;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit p0

    return-object v0

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getTypeface()Landroid/graphics/Typeface;
    .locals 0

    iget-object p0, p0, Lsun/font/PhysicalFont;->platName:Ljava/lang/String;

    invoke-static {p0}, Lcom/trans/android/font/FontManager;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "** Android Font: Family="

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
