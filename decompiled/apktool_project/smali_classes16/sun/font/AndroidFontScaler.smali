.class Lsun/font/AndroidFontScaler;
.super Lsun/font/FontScaler;
.source "SourceFile"


# static fields
.field public static final FONT_SCALE:I = 0x2710


# instance fields
.field private fontPath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lsun/font/PhysicalFont;IZI)V
    .locals 0

    invoke-direct {p0}, Lsun/font/FontScaler;-><init>()V

    instance-of p2, p1, Lsun/font/Type1Font;

    if-nez p2, :cond_0

    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lsun/font/FontScaler;->font:Ljava/lang/ref/WeakReference;

    iget-object p2, p1, Lsun/font/PhysicalFont;->platName:Ljava/lang/String;

    iput-object p2, p0, Lsun/font/AndroidFontScaler;->fontPath:Ljava/lang/String;

    invoke-virtual {p1}, Lsun/font/PhysicalFont;->hashCode()I

    move-result p1

    int-to-long p1, p1

    iput-wide p1, p0, Lsun/font/FontScaler;->nativeScaler:J

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Unsupported font type: Type1Font"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private getHBTypeface()Lcom/onyx/harfbuzz/graphics/HBTypeface;
    .locals 0

    iget-object p0, p0, Lsun/font/AndroidFontScaler;->fontPath:Ljava/lang/String;

    invoke-static {p0}, Lcom/trans/android/font/FontManager;->getHBTypeface(Ljava/lang/String;)Lcom/onyx/harfbuzz/graphics/HBTypeface;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public declared-synchronized createScalerContext([DIIFF)J
    .locals 2

    monitor-enter p0

    :try_start_0
    array-length p2, p1

    const/4 p3, 0x0

    :goto_0
    if-ge p3, p2, :cond_1

    aget-wide p4, p1, p3

    const-wide/16 v0, 0x0

    cmpl-double v0, p4, v0

    if-eqz v0, :cond_0

    invoke-static {p4, p5}, Ljava/lang/Math;->abs(D)D

    move-result-wide p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide p3, 0x40c3880000000000L    # 10000.0

    mul-double/2addr p1, p3

    double-to-long p1, p1

    monitor-exit p0

    return-wide p1

    :cond_0
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_1
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    int-to-long p1, p1

    monitor-exit p0

    return-wide p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized dispose()V
    .locals 2

    monitor-enter p0

    const-wide/16 v0, 0x0

    :try_start_0
    iput-wide v0, p0, Lsun/font/FontScaler;->nativeScaler:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getFontMetrics(J)Lsun/font/StrikeMetrics;
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

    invoke-direct {p0}, Lsun/font/AndroidFontScaler;->getHBTypeface()Lcom/onyx/harfbuzz/graphics/HBTypeface;

    move-result-object v0

    long-to-float p1, p1

    const p2, 0x461c4000    # 10000.0f

    div-float/2addr p1, p2

    new-instance p2, Lsun/font/StrikeMetrics;

    invoke-direct {p2}, Lsun/font/StrikeMetrics;-><init>()V

    const/4 v1, 0x0

    iput v1, p2, Lsun/font/StrikeMetrics;->ascentX:F

    iput v1, p2, Lsun/font/StrikeMetrics;->descentX:F

    invoke-static {v0, p1}, Lcom/trans/android/hb/HBUtils;->getAscent(Lcom/onyx/harfbuzz/graphics/HBTypeface;F)F

    move-result v2

    neg-float v2, v2

    iput v2, p2, Lsun/font/StrikeMetrics;->ascentY:F

    invoke-static {v0, p1}, Lcom/trans/android/hb/HBUtils;->getDescent(Lcom/onyx/harfbuzz/graphics/HBTypeface;F)F

    move-result v2

    iput v2, p2, Lsun/font/StrikeMetrics;->descentY:F

    iput v1, p2, Lsun/font/StrikeMetrics;->leadingX:F

    invoke-static {v0, p1}, Lcom/trans/android/hb/HBUtils;->getLeading(Lcom/onyx/harfbuzz/graphics/HBTypeface;F)F

    move-result p1

    iput p1, p2, Lsun/font/StrikeMetrics;->leadingY:F

    iput v1, p2, Lsun/font/StrikeMetrics;->maxAdvanceX:F

    iget p1, p2, Lsun/font/StrikeMetrics;->descentY:F

    iget v0, p2, Lsun/font/StrikeMetrics;->ascentY:F

    sub-float/2addr p1, v0

    iput p1, p2, Lsun/font/StrikeMetrics;->maxAdvanceY:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p2

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

    invoke-direct {p0}, Lsun/font/AndroidFontScaler;->getHBTypeface()Lcom/onyx/harfbuzz/graphics/HBTypeface;

    move-result-object v0

    long-to-float p1, p1

    const p2, 0x461c4000    # 10000.0f

    div-float/2addr p1, p2

    const/4 p2, 0x0

    invoke-virtual {v0, p3, p1, p2}, Lcom/onyx/harfbuzz/graphics/HBTypeface;->getGlyphAdvance(IFZ)F

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

    invoke-direct {p0}, Lsun/font/AndroidFontScaler;->getHBTypeface()Lcom/onyx/harfbuzz/graphics/HBTypeface;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/onyx/harfbuzz/graphics/HBTypeface;->getGlyphId(I)I

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
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/font/FontScalerException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-wide p1, p0, Lsun/font/FontScaler;->nativeScaler:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-eqz p1, :cond_0

    int-to-long p1, p3

    monitor-exit p0

    return-wide p1

    :cond_0
    :try_start_1
    invoke-static {}, Lsun/font/FontScaler;->getNullScaler()Lsun/font/FontScaler;

    move-result-object p1

    invoke-virtual {p1, v0, v1, p3}, Lsun/font/FontScaler;->getGlyphImage(JI)J

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

    invoke-direct {p0}, Lsun/font/AndroidFontScaler;->getHBTypeface()Lcom/onyx/harfbuzz/graphics/HBTypeface;

    move-result-object v0

    long-to-float p1, p1

    const p2, 0x461c4000    # 10000.0f

    div-float/2addr p1, p2

    const/4 p2, 0x0

    invoke-virtual {v0, p3, p1, p2}, Lcom/onyx/harfbuzz/graphics/HBTypeface;->getGlyphAdvance(IFZ)F

    move-result p1

    iget p2, p4, Ljava/awt/geom/Point2D$Float;->y:F

    invoke-virtual {p4, p1, p2}, Ljava/awt/geom/Point2D$Float;->setLocation(FF)V
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
    .locals 6
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

    invoke-direct {p0}, Lsun/font/AndroidFontScaler;->getHBTypeface()Lcom/onyx/harfbuzz/graphics/HBTypeface;

    move-result-object v0

    long-to-float p1, p1

    const p2, 0x461c4000    # 10000.0f

    div-float/2addr p1, p2

    new-instance p2, Landroid/graphics/Matrix;

    invoke-direct {p2}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v0, p3, p1, p2}, Lcom/onyx/harfbuzz/graphics/HBTypeface;->getGlyphPath(IFLandroid/graphics/Matrix;)Landroid/graphics/Path;

    move-result-object p1

    invoke-static {p1, p4, p5}, Lcom/trans/android/util/PathUtils;->toJavePath(Landroid/graphics/Path;FF)Ljava/awt/geom/GeneralPath;

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

    invoke-direct {p0}, Lsun/font/AndroidFontScaler;->getHBTypeface()Lcom/onyx/harfbuzz/graphics/HBTypeface;

    move-result-object v0

    long-to-float p1, p1

    const p2, 0x461c4000    # 10000.0f

    div-float/2addr p1, p2

    const/4 p2, 0x0

    invoke-virtual {v0, p3, p1, p2}, Lcom/onyx/harfbuzz/graphics/HBTypeface;->getGlyphAdvance(IFZ)F

    move-result p2

    invoke-static {v0, p1}, Lcom/trans/android/hb/HBUtils;->getHeight(Lcom/onyx/harfbuzz/graphics/HBTypeface;F)F

    move-result p1

    new-instance p3, Ljava/awt/geom/Rectangle2D$Float;

    const/4 v0, 0x0

    invoke-direct {p3, v0, v0, p2, p1}, Ljava/awt/geom/Rectangle2D$Float;-><init>(FFFF)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p3

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

    invoke-direct {p0}, Lsun/font/AndroidFontScaler;->getHBTypeface()Lcom/onyx/harfbuzz/graphics/HBTypeface;

    move-result-object p4

    long-to-float p1, p1

    const p2, 0x461c4000    # 10000.0f

    div-float/2addr p1, p2

    const/4 p2, 0x0

    invoke-virtual {p4, p3, p1, p2}, Lcom/onyx/harfbuzz/graphics/HBTypeface;->getGlyphAdvance(IFZ)F

    move-result p1

    new-instance p2, Ljava/awt/geom/Point2D$Float;

    const/4 p3, 0x0

    invoke-direct {p2, p1, p3}, Ljava/awt/geom/Point2D$Float;-><init>(FF)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p2

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

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lsun/font/AndroidFontScaler;->getHBTypeface()Lcom/onyx/harfbuzz/graphics/HBTypeface;

    move-result-object v0

    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    long-to-float p1, p1

    const p2, 0x461c4000    # 10000.0f

    div-float/2addr p1, p2

    array-length p2, p3

    invoke-static {p2, p4}, Ljava/lang/Math;->min(II)I

    move-result p2

    const/4 p3, 0x0

    const/4 p4, 0x0

    :goto_0
    if-ge p4, p2, :cond_1

    if-nez p3, :cond_0

    invoke-virtual {v0, p4}, Lcom/onyx/harfbuzz/graphics/HBTypeface;->getGlyphId(I)I

    move-result p3

    invoke-virtual {v0, p3, p1, v1}, Lcom/onyx/harfbuzz/graphics/HBTypeface;->getGlyphPath(IFLandroid/graphics/Matrix;)Landroid/graphics/Path;

    move-result-object p3

    goto :goto_1

    :cond_0
    invoke-virtual {v0, p4}, Lcom/onyx/harfbuzz/graphics/HBTypeface;->getGlyphId(I)I

    move-result v2

    invoke-virtual {v0, v2, p1, v1}, Lcom/onyx/harfbuzz/graphics/HBTypeface;->getGlyphPath(IFLandroid/graphics/Matrix;)Landroid/graphics/Path;

    move-result-object v2

    invoke-virtual {p3, v2}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    :goto_1
    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_1
    invoke-static {p3, p5, p6}, Lcom/trans/android/util/PathUtils;->toJavePath(Landroid/graphics/Path;FF)Ljava/awt/geom/GeneralPath;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_2
    :try_start_1
    invoke-static {}, Lsun/font/FontScaler;->getNullScaler()Lsun/font/FontScaler;

    move-result-object v0

    const-wide/16 v1, 0x0

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lsun/font/FontScaler;->getGlyphVectorOutline(J[IIFF)Ljava/awt/geom/GeneralPath;

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
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    monitor-exit p0

    const/4 p0, 0x0

    return p0

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

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lsun/font/AndroidFontScaler;->getHBTypeface()Lcom/onyx/harfbuzz/graphics/HBTypeface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/harfbuzz/graphics/HBTypeface;->getGlyphCount()I

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
    invoke-direct {p0}, Lsun/font/AndroidFontScaler;->getHBTypeface()Lcom/onyx/harfbuzz/graphics/HBTypeface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/harfbuzz/graphics/HBTypeface;->getUnitsPerEm()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    int-to-long v0, v0

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
