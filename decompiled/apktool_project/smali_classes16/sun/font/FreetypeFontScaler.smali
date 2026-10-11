.class Lsun/font/FreetypeFontScaler;
.super Lsun/font/FontScaler;
.source "SourceFile"


# static fields
.field private static final TRUETYPE_FONT:I = 0x1

.field private static final TYPE1_FONT:I = 0x2


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lsun/font/FontManagerNativeLibrary;->load()V

    const-class v0, Lsun/font/FreetypeFontScaler;

    invoke-static {v0}, Lsun/font/FreetypeFontScaler;->initIDs(Ljava/lang/Class;)V

    return-void
.end method

.method public constructor <init>(Lsun/font/Font2D;IZI)V
    .locals 7

    invoke-direct {p0}, Lsun/font/FontScaler;-><init>()V

    instance-of v0, p1, Lsun/font/Type1Font;

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    move v3, v0

    move-object v1, p0

    move-object v2, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lsun/font/FreetypeFontScaler;->initNativeScaler(Lsun/font/Font2D;IIZI)J

    move-result-wide p2

    iput-wide p2, p0, Lsun/font/FontScaler;->nativeScaler:J

    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lsun/font/FontScaler;->font:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private native createScalerContextNative(J[DIIFF)J
.end method

.method private native disposeNativeScaler(Lsun/font/Font2D;J)V
.end method

.method private native getFontMetricsNative(Lsun/font/Font2D;JJ)Lsun/font/StrikeMetrics;
.end method

.method private native getGlyphAdvanceNative(Lsun/font/Font2D;JJI)F
.end method

.method private native getGlyphCodeNative(Lsun/font/Font2D;JC)I
.end method

.method private native getGlyphImageNative(Lsun/font/Font2D;JJI)J
.end method

.method private native getGlyphMetricsNative(Lsun/font/Font2D;JJILjava/awt/geom/Point2D$Float;)V
.end method

.method private native getGlyphOutlineBoundsNative(Lsun/font/Font2D;JJI)Ljava/awt/geom/Rectangle2D$Float;
.end method

.method private native getGlyphOutlineNative(Lsun/font/Font2D;JJIFF)Ljava/awt/geom/GeneralPath;
.end method

.method private native getGlyphPointNative(Lsun/font/Font2D;JJII)Ljava/awt/geom/Point2D$Float;
.end method

.method private native getGlyphVectorOutlineNative(Lsun/font/Font2D;JJ[IIFF)Ljava/awt/geom/GeneralPath;
.end method

.method private native getMissingGlyphCodeNative(J)I
.end method

.method private native getNumGlyphsNative(J)I
.end method

.method private native getUnitsPerEMNative(J)J
.end method

.method private static initIDs(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method

.method private native initNativeScaler(Lsun/font/Font2D;IIZI)J
.end method

.method private invalidateScaler()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/font/FontScalerException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lsun/font/FontScaler;->nativeScaler:J

    const/4 v0, 0x0

    iput-object v0, p0, Lsun/font/FontScaler;->font:Ljava/lang/ref/WeakReference;

    new-instance p0, Lsun/font/FontScalerException;

    invoke-direct {p0}, Lsun/font/FontScalerException;-><init>()V

    throw p0
.end method


# virtual methods
.method public declared-synchronized createScalerContext([DIIFF)J
    .locals 8

    monitor-enter p0

    :try_start_0
    iget-wide v1, p0, Lsun/font/FontScaler;->nativeScaler:J

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-eqz v0, :cond_0

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-direct/range {v0 .. v7}, Lsun/font/FreetypeFontScaler;->createScalerContextNative(J[DIIFF)J

    move-result-wide p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide p1

    :cond_0
    :try_start_1
    invoke-static {}, Lsun/font/NullFontScaler;->getNullScalerContext()J

    move-result-wide p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-wide p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized dispose()V
    .locals 6

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lsun/font/FontScaler;->nativeScaler:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lsun/font/FontScaler;->font:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/font/Font2D;

    iget-wide v4, p0, Lsun/font/FontScaler;->nativeScaler:J

    invoke-direct {p0, v0, v4, v5}, Lsun/font/FreetypeFontScaler;->disposeNativeScaler(Lsun/font/Font2D;J)V

    iput-wide v2, p0, Lsun/font/FontScaler;->nativeScaler:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized disposeScaler()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lsun/font/FontScaler;->nativeScaler:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    new-instance v0, Lsun/font/FreetypeFontScaler$1;

    invoke-direct {v0, p0}, Lsun/font/FreetypeFontScaler$1;-><init>(Lsun/font/FreetypeFontScaler;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getFontMetrics(J)Lsun/font/StrikeMetrics;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/font/FontScalerException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lsun/font/FontScaler;->nativeScaler:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lsun/font/FontScaler;->font:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lsun/font/Font2D;

    iget-wide v5, p0, Lsun/font/FontScaler;->nativeScaler:J

    move-object v1, p0

    move-wide v3, p1

    invoke-direct/range {v1 .. v6}, Lsun/font/FreetypeFontScaler;->getFontMetricsNative(Lsun/font/Font2D;JJ)Lsun/font/StrikeMetrics;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_0
    :try_start_1
    invoke-static {}, Lsun/font/FontScaler;->getNullScaler()Lsun/font/FontScaler;

    move-result-object p1

    invoke-virtual {p1, v2, v3}, Lsun/font/FontScaler;->getFontMetrics(J)Lsun/font/StrikeMetrics;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getGlyphAdvance(JI)F
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/font/FontScalerException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lsun/font/FontScaler;->nativeScaler:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lsun/font/FontScaler;->font:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lsun/font/Font2D;

    iget-wide v5, p0, Lsun/font/FontScaler;->nativeScaler:J

    move-object v1, p0

    move-wide v3, p1

    move v7, p3

    invoke-direct/range {v1 .. v7}, Lsun/font/FreetypeFontScaler;->getGlyphAdvanceNative(Lsun/font/Font2D;JJI)F

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :cond_0
    :try_start_1
    invoke-static {}, Lsun/font/FontScaler;->getNullScaler()Lsun/font/FontScaler;

    move-result-object p1

    invoke-virtual {p1, v2, v3, p3}, Lsun/font/FontScaler;->getGlyphAdvance(JI)F

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getGlyphCode(C)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/font/FontScalerException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lsun/font/FontScaler;->nativeScaler:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lsun/font/FontScaler;->font:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/font/Font2D;

    iget-wide v1, p0, Lsun/font/FontScaler;->nativeScaler:J

    invoke-direct {p0, v0, v1, v2, p1}, Lsun/font/FreetypeFontScaler;->getGlyphCodeNative(Lsun/font/Font2D;JC)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :cond_0
    :try_start_1
    invoke-static {}, Lsun/font/FontScaler;->getNullScaler()Lsun/font/FontScaler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lsun/font/FontScaler;->getGlyphCode(C)I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getGlyphImage(JI)J
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/font/FontScalerException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lsun/font/FontScaler;->nativeScaler:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lsun/font/FontScaler;->font:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lsun/font/Font2D;

    iget-wide v5, p0, Lsun/font/FontScaler;->nativeScaler:J

    move-object v1, p0

    move-wide v3, p1

    move v7, p3

    invoke-direct/range {v1 .. v7}, Lsun/font/FreetypeFontScaler;->getGlyphImageNative(Lsun/font/Font2D;JJI)J

    move-result-wide p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide p1

    :cond_0
    :try_start_1
    invoke-static {}, Lsun/font/FontScaler;->getNullScaler()Lsun/font/FontScaler;

    move-result-object p1

    invoke-virtual {p1, v2, v3, p3}, Lsun/font/FontScaler;->getGlyphImage(JI)J

    move-result-wide p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-wide p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getGlyphMetrics(JILjava/awt/geom/Point2D$Float;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/font/FontScalerException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lsun/font/FontScaler;->nativeScaler:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lsun/font/FontScaler;->font:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lsun/font/Font2D;

    iget-wide v5, p0, Lsun/font/FontScaler;->nativeScaler:J

    move-object v1, p0

    move-wide v3, p1

    move v7, p3

    move-object v8, p4

    invoke-direct/range {v1 .. v8}, Lsun/font/FreetypeFontScaler;->getGlyphMetricsNative(Lsun/font/Font2D;JJILjava/awt/geom/Point2D$Float;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-static {}, Lsun/font/FontScaler;->getNullScaler()Lsun/font/FontScaler;

    move-result-object p1

    invoke-virtual {p1, v2, v3, p3, p4}, Lsun/font/FontScaler;->getGlyphMetrics(JILjava/awt/geom/Point2D$Float;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getGlyphOutline(JIFF)Ljava/awt/geom/GeneralPath;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/font/FontScalerException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lsun/font/FontScaler;->nativeScaler:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lsun/font/FontScaler;->font:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lsun/font/Font2D;

    iget-wide v5, p0, Lsun/font/FontScaler;->nativeScaler:J

    move-object v1, p0

    move-wide v3, p1

    move v7, p3

    move v8, p4

    move v9, p5

    invoke-direct/range {v1 .. v9}, Lsun/font/FreetypeFontScaler;->getGlyphOutlineNative(Lsun/font/Font2D;JJIFF)Ljava/awt/geom/GeneralPath;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_0
    :try_start_1
    invoke-static {}, Lsun/font/FontScaler;->getNullScaler()Lsun/font/FontScaler;

    move-result-object v0

    const-wide/16 v1, 0x0

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lsun/font/FontScaler;->getGlyphOutline(JIFF)Ljava/awt/geom/GeneralPath;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getGlyphOutlineBounds(JI)Ljava/awt/geom/Rectangle2D$Float;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/font/FontScalerException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lsun/font/FontScaler;->nativeScaler:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lsun/font/FontScaler;->font:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lsun/font/Font2D;

    iget-wide v5, p0, Lsun/font/FontScaler;->nativeScaler:J

    move-object v1, p0

    move-wide v3, p1

    move v7, p3

    invoke-direct/range {v1 .. v7}, Lsun/font/FreetypeFontScaler;->getGlyphOutlineBoundsNative(Lsun/font/Font2D;JJI)Ljava/awt/geom/Rectangle2D$Float;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_0
    :try_start_1
    invoke-static {}, Lsun/font/FontScaler;->getNullScaler()Lsun/font/FontScaler;

    move-result-object p1

    invoke-virtual {p1, v2, v3, p3}, Lsun/font/FontScaler;->getGlyphOutlineBounds(JI)Ljava/awt/geom/Rectangle2D$Float;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getGlyphPoint(JII)Ljava/awt/geom/Point2D$Float;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/font/FontScalerException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lsun/font/FontScaler;->nativeScaler:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lsun/font/FontScaler;->font:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lsun/font/Font2D;

    iget-wide v5, p0, Lsun/font/FontScaler;->nativeScaler:J

    move-object v1, p0

    move-wide v3, p1

    move v7, p3

    move v8, p4

    invoke-direct/range {v1 .. v8}, Lsun/font/FreetypeFontScaler;->getGlyphPointNative(Lsun/font/Font2D;JJII)Ljava/awt/geom/Point2D$Float;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_0
    :try_start_1
    invoke-static {}, Lsun/font/FontScaler;->getNullScaler()Lsun/font/FontScaler;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lsun/font/FontScaler;->getGlyphPoint(JII)Ljava/awt/geom/Point2D$Float;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getGlyphVectorOutline(J[IIFF)Ljava/awt/geom/GeneralPath;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/font/FontScalerException;
        }
    .end annotation

    move-object v11, p0

    monitor-enter p0

    :try_start_0
    iget-wide v0, v11, Lsun/font/FontScaler;->nativeScaler:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, v11, Lsun/font/FontScaler;->font:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lsun/font/Font2D;

    iget-wide v5, v11, Lsun/font/FontScaler;->nativeScaler:J

    move-object v1, p0

    move-wide v3, p1

    move-object v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    move/from16 v10, p6

    invoke-direct/range {v1 .. v10}, Lsun/font/FreetypeFontScaler;->getGlyphVectorOutlineNative(Lsun/font/Font2D;JJ[IIFF)Ljava/awt/geom/GeneralPath;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    invoke-static {}, Lsun/font/FontScaler;->getNullScaler()Lsun/font/FontScaler;

    move-result-object v1

    const-wide/16 v2, 0x0

    move-object v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    invoke-virtual/range {v1 .. v7}, Lsun/font/FontScaler;->getGlyphVectorOutline(J[IIFF)Ljava/awt/geom/GeneralPath;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getMissingGlyphCode()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/font/FontScalerException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lsun/font/FontScaler;->nativeScaler:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    invoke-direct {p0, v0, v1}, Lsun/font/FreetypeFontScaler;->getMissingGlyphCodeNative(J)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    invoke-static {}, Lsun/font/FontScaler;->getNullScaler()Lsun/font/FontScaler;

    move-result-object v0

    invoke-virtual {v0}, Lsun/font/FontScaler;->getMissingGlyphCode()I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getNumGlyphs()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/font/FontScalerException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lsun/font/FontScaler;->nativeScaler:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    invoke-direct {p0, v0, v1}, Lsun/font/FreetypeFontScaler;->getNumGlyphsNative(J)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    invoke-static {}, Lsun/font/FontScaler;->getNullScaler()Lsun/font/FontScaler;

    move-result-object v0

    invoke-virtual {v0}, Lsun/font/FontScaler;->getNumGlyphs()I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getUnitsPerEm()J
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lsun/font/FontScaler;->nativeScaler:J

    invoke-direct {p0, v0, v1}, Lsun/font/FreetypeFontScaler;->getUnitsPerEMNative(J)J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public invalidateScalerContext(J)V
    .locals 0

    return-void
.end method
