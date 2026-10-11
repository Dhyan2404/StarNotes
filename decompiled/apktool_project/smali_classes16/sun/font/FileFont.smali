.class public abstract Lsun/font/FileFont;
.super Lsun/font/PhysicalFont;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/font/FileFont$CreatedFontFileDisposerRecord;
    }
.end annotation


# instance fields
.field protected fileSize:I

.field protected glyphToCharMap:[C

.field protected nativeFonts:[Lsun/font/NativeFont;

.field protected scaler:Lsun/font/FontScaler;

.field protected useJavaRasterizer:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/awt/FontFormatException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lsun/font/PhysicalFont;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lsun/font/FileFont;->useJavaRasterizer:Z

    return-void
.end method

.method public static setFileToRemove(Ljava/util/List;Ljava/io/File;ILsun/font/CreatedFontTracker;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lsun/font/Font2D;",
            ">;",
            "Ljava/io/File;",
            "I",
            "Lsun/font/CreatedFontTracker;",
            ")V"
        }
    .end annotation

    new-instance v0, Lsun/font/FileFont$CreatedFontFileDisposerRecord;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, p3, v1}, Lsun/font/FileFont$CreatedFontFileDisposerRecord;-><init>(Ljava/io/File;ILsun/font/CreatedFontTracker;Lsun/font/FileFont$1;)V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lsun/font/Font2D;

    invoke-static {p1, v0}, Lsun/java2d/Disposer;->addObjectRecord(Ljava/lang/Object;Lsun/java2d/DisposerRecord;)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public canDoStyle(I)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public abstract close()V
.end method

.method public createStrike(Lsun/font/FontStrikeDesc;)Lsun/font/FontStrike;
    .locals 1

    new-instance v0, Lsun/font/FileFontStrike;

    invoke-direct {v0, p0, p1}, Lsun/font/FileFontStrike;-><init>(Lsun/font/FileFont;Lsun/font/FontStrikeDesc;)V

    return-object v0
.end method

.method public declared-synchronized deregisterFontAndClearStrikeCache()V
    .locals 5

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lsun/font/SunFontManager;->getInstance()Lsun/font/SunFontManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lsun/font/SunFontManager;->deRegisterBadFont(Lsun/font/Font2D;)V

    iget-object v0, p0, Lsun/font/Font2D;->strikeCache:Ljava/util/concurrent/ConcurrentHashMap;

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

    check-cast v1, Ljava/lang/ref/Reference;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsun/font/FileFontStrike;

    if-eqz v1, :cond_0

    iget-wide v1, v1, Lsun/font/PhysicalStrike;->pScalerContext:J

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lsun/font/FileFont;->scaler:Lsun/font/FontScaler;

    invoke-virtual {v3, v1, v2}, Lsun/font/FontScaler;->invalidateScalerContext(J)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lsun/font/FileFont;->scaler:Lsun/font/FontScaler;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lsun/font/FontScaler;->disposeScaler()V

    :cond_2
    invoke-static {}, Lsun/font/FontScaler;->getNullScaler()Lsun/font/FontScaler;

    move-result-object v0

    iput-object v0, p0, Lsun/font/FileFont;->scaler:Lsun/font/FontScaler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getFontMetrics(J)Lsun/font/StrikeMetrics;
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Lsun/font/FileFont;->getScaler()Lsun/font/FontScaler;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lsun/font/FontScaler;->getFontMetrics(J)Lsun/font/StrikeMetrics;

    move-result-object p0
    :try_end_0
    .catch Lsun/font/FontScalerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    invoke-static {}, Lsun/font/FontScaler;->getNullScaler()Lsun/font/FontScaler;

    move-result-object v0

    iput-object v0, p0, Lsun/font/FileFont;->scaler:Lsun/font/FontScaler;

    invoke-virtual {p0, p1, p2}, Lsun/font/FileFont;->getFontMetrics(J)Lsun/font/StrikeMetrics;

    move-result-object p0

    return-object p0
.end method

.method public getGlyphAdvance(JI)F
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Lsun/font/FileFont;->getScaler()Lsun/font/FontScaler;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lsun/font/FontScaler;->getGlyphAdvance(JI)F

    move-result p0
    :try_end_0
    .catch Lsun/font/FontScalerException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    invoke-static {}, Lsun/font/FontScaler;->getNullScaler()Lsun/font/FontScaler;

    move-result-object v0

    iput-object v0, p0, Lsun/font/FileFont;->scaler:Lsun/font/FontScaler;

    invoke-virtual {p0, p1, p2, p3}, Lsun/font/FileFont;->getGlyphAdvance(JI)F

    move-result p0

    return p0
.end method

.method public getGlyphImage(JI)J
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Lsun/font/FileFont;->getScaler()Lsun/font/FontScaler;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lsun/font/FontScaler;->getGlyphImage(JI)J

    move-result-wide p0
    :try_end_0
    .catch Lsun/font/FontScalerException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p0

    :catch_0
    invoke-static {}, Lsun/font/FontScaler;->getNullScaler()Lsun/font/FontScaler;

    move-result-object v0

    iput-object v0, p0, Lsun/font/FileFont;->scaler:Lsun/font/FontScaler;

    invoke-virtual {p0, p1, p2, p3}, Lsun/font/FileFont;->getGlyphImage(JI)J

    move-result-wide p0

    return-wide p0
.end method

.method public getGlyphMetrics(JILjava/awt/geom/Point2D$Float;)V
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Lsun/font/FileFont;->getScaler()Lsun/font/FontScaler;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lsun/font/FontScaler;->getGlyphMetrics(JILjava/awt/geom/Point2D$Float;)V
    :try_end_0
    .catch Lsun/font/FontScalerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-static {}, Lsun/font/FontScaler;->getNullScaler()Lsun/font/FontScaler;

    move-result-object v0

    iput-object v0, p0, Lsun/font/FileFont;->scaler:Lsun/font/FontScaler;

    invoke-virtual {p0, p1, p2, p3, p4}, Lsun/font/FileFont;->getGlyphMetrics(JILjava/awt/geom/Point2D$Float;)V

    :goto_0
    return-void
.end method

.method public getGlyphOutline(JIFF)Ljava/awt/geom/GeneralPath;
    .locals 6

    :try_start_0
    invoke-virtual {p0}, Lsun/font/FileFont;->getScaler()Lsun/font/FontScaler;

    move-result-object v0

    move-wide v1, p1

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lsun/font/FontScaler;->getGlyphOutline(JIFF)Ljava/awt/geom/GeneralPath;

    move-result-object p0
    :try_end_0
    .catch Lsun/font/FontScalerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    invoke-static {}, Lsun/font/FontScaler;->getNullScaler()Lsun/font/FontScaler;

    move-result-object v0

    iput-object v0, p0, Lsun/font/FileFont;->scaler:Lsun/font/FontScaler;

    invoke-virtual/range {p0 .. p5}, Lsun/font/FileFont;->getGlyphOutline(JIFF)Ljava/awt/geom/GeneralPath;

    move-result-object p0

    return-object p0
.end method

.method public getGlyphOutlineBounds(JI)Ljava/awt/geom/Rectangle2D$Float;
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Lsun/font/FileFont;->getScaler()Lsun/font/FontScaler;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lsun/font/FontScaler;->getGlyphOutlineBounds(JI)Ljava/awt/geom/Rectangle2D$Float;

    move-result-object p0
    :try_end_0
    .catch Lsun/font/FontScalerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    invoke-static {}, Lsun/font/FontScaler;->getNullScaler()Lsun/font/FontScaler;

    move-result-object v0

    iput-object v0, p0, Lsun/font/FileFont;->scaler:Lsun/font/FontScaler;

    invoke-virtual {p0, p1, p2, p3}, Lsun/font/FileFont;->getGlyphOutlineBounds(JI)Ljava/awt/geom/Rectangle2D$Float;

    move-result-object p0

    return-object p0
.end method

.method public getGlyphVectorOutline(J[IIFF)Ljava/awt/geom/GeneralPath;
    .locals 7

    :try_start_0
    invoke-virtual {p0}, Lsun/font/FileFont;->getScaler()Lsun/font/FontScaler;

    move-result-object v0

    move-wide v1, p1

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lsun/font/FontScaler;->getGlyphVectorOutline(J[IIFF)Ljava/awt/geom/GeneralPath;

    move-result-object p0
    :try_end_0
    .catch Lsun/font/FontScalerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    invoke-static {}, Lsun/font/FontScaler;->getNullScaler()Lsun/font/FontScaler;

    move-result-object v0

    iput-object v0, p0, Lsun/font/FileFont;->scaler:Lsun/font/FontScaler;

    invoke-virtual/range {p0 .. p6}, Lsun/font/FileFont;->getGlyphVectorOutline(J[IIFF)Ljava/awt/geom/GeneralPath;

    move-result-object p0

    return-object p0
.end method

.method public getPublicFileName()Ljava/lang/String;
    .locals 2

    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lsun/font/PhysicalFont;->platName:Ljava/lang/String;

    return-object p0

    :cond_0
    :try_start_0
    const-string v1, "java.io.tmpdir"

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPropertyAccess(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    iget-object p0, p0, Lsun/font/PhysicalFont;->platName:Ljava/lang/String;

    return-object p0

    :cond_1
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lsun/font/PhysicalFont;->platName:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :try_start_1
    new-instance v1, Lsun/font/FileFont$1;

    invoke-direct {v1, p0, v0}, Lsun/font/FileFont$1;-><init>(Lsun/font/FileFont;Ljava/io/File;)V

    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;
    :try_end_1
    .catch Ljava/security/PrivilegedActionException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p0, "temp file"

    goto :goto_2

    :cond_2
    iget-object p0, p0, Lsun/font/PhysicalFont;->platName:Ljava/lang/String;

    :goto_2
    return-object p0
.end method

.method public abstract getScaler()Lsun/font/FontScaler;
.end method

.method public getUnitsPerEm()J
    .locals 2

    invoke-virtual {p0}, Lsun/font/FileFont;->getScaler()Lsun/font/FontScaler;

    move-result-object p0

    invoke-virtual {p0}, Lsun/font/FontScaler;->getUnitsPerEm()J

    move-result-wide v0

    return-wide v0
.end method

.method public abstract readBlock(II)Ljava/nio/ByteBuffer;
.end method
