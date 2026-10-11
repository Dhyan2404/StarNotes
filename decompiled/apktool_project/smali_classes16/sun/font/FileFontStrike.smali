.class public Lsun/font/FileFontStrike;
.super Lsun/font/PhysicalStrike;
.source "SourceFile"


# static fields
.field private static final INTARRAY:I = 0x1

.field static final INVISIBLE_GLYPHS:I = 0xfffe

.field private static final LONGARRAY:I = 0x2

.field private static final SEGINTARRAY:I = 0x3

.field private static final SEGLONGARRAY:I = 0x4

.field private static final SEGSHIFT:I = 0x5

.field private static final SEGSIZE:I = 0x20

.field private static final UNINITIALISED:I

.field private static isXPorLater:Z


# instance fields
.field boundsMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Ljava/awt/geom/Rectangle2D$Float;",
            ">;"
        }
    .end annotation
.end field

.field private fileFont:Lsun/font/FileFont;

.field private volatile glyphCacheFormat:I

.field glyphMetricsMapRef:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference<",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Ljava/awt/geom/Point2D$Float;",
            ">;>;"
        }
    .end annotation
.end field

.field private horizontalAdvances:[F

.field private intPtSize:I

.field invertDevTx:Ljava/awt/geom/AffineTransform;

.field nativeStrikes:[Lsun/font/NativeStrike;

.field private outlineMapRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Ljava/awt/geom/GeneralPath;",
            ">;>;"
        }
    .end annotation
.end field

.field private segHorizontalAdvances:[[F

.field private segIntGlyphImages:[[I

.field private segLongGlyphImages:[[J

.field private segmentedCache:Z

.field useNatives:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lsun/font/FontUtilities;->isWindows:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lsun/font/FontUtilities;->useJDKScaler:Z

    if-nez v0, :cond_0

    invoke-static {}, Ljava/awt/GraphicsEnvironment;->isHeadless()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lsun/font/FileFontStrike;->initNative()Z

    move-result v0

    sput-boolean v0, Lsun/font/FileFontStrike;->isXPorLater:Z

    :cond_0
    return-void
.end method

.method public constructor <init>(Lsun/font/FileFont;Lsun/font/FontStrikeDesc;)V
    .locals 13

    invoke-direct {p0, p1, p2}, Lsun/font/PhysicalStrike;-><init>(Lsun/font/PhysicalFont;Lsun/font/FontStrikeDesc;)V

    const/4 v0, 0x0

    iput v0, p0, Lsun/font/FileFontStrike;->glyphCacheFormat:I

    iput-object p1, p0, Lsun/font/FileFontStrike;->fileFont:Lsun/font/FileFont;

    iget v1, p2, Lsun/font/FontStrikeDesc;->style:I

    iget v2, p1, Lsun/font/Font2D;->style:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v1, v2, :cond_1

    and-int/lit8 v5, v1, 0x2

    if-ne v5, v3, :cond_0

    and-int/lit8 v5, v2, 0x2

    if-nez v5, :cond_0

    iput-boolean v4, p0, Lsun/font/FontStrike;->algoStyle:Z

    const v5, 0x3f333333    # 0.7f

    iput v5, p0, Lsun/font/FontStrike;->italic:F

    :cond_0
    and-int/2addr v1, v4

    if-ne v1, v4, :cond_1

    and-int/lit8 v1, v2, 0x1

    if-nez v1, :cond_1

    iput-boolean v4, p0, Lsun/font/FontStrike;->algoStyle:Z

    const v1, 0x3faa3d71    # 1.33f

    iput v1, p0, Lsun/font/FontStrike;->boldness:F

    :cond_1
    const/4 v1, 0x4

    new-array v2, v1, [D

    iget-object v11, p2, Lsun/font/FontStrikeDesc;->glyphTx:Ljava/awt/geom/AffineTransform;

    invoke-virtual {v11, v2}, Ljava/awt/geom/AffineTransform;->getMatrix([D)V

    iget-object v5, p2, Lsun/font/FontStrikeDesc;->devTx:Ljava/awt/geom/AffineTransform;

    invoke-virtual {v5}, Ljava/awt/geom/AffineTransform;->isIdentity()Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, p2, Lsun/font/FontStrikeDesc;->devTx:Ljava/awt/geom/AffineTransform;

    invoke-virtual {v5}, Ljava/awt/geom/AffineTransform;->getType()I

    move-result v5

    if-eq v5, v4, :cond_2

    :try_start_0
    iget-object v5, p2, Lsun/font/FontStrikeDesc;->devTx:Ljava/awt/geom/AffineTransform;

    invoke-virtual {v5}, Ljava/awt/geom/AffineTransform;->createInverse()Ljava/awt/geom/AffineTransform;

    move-result-object v5

    iput-object v5, p0, Lsun/font/FileFontStrike;->invertDevTx:Ljava/awt/geom/AffineTransform;
    :try_end_0
    .catch Ljava/awt/geom/NoninvertibleTransformException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    aget-wide v5, v2, v0

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    move-result v5

    const/4 v12, 0x3

    if-nez v5, :cond_4

    aget-wide v5, v2, v4

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    move-result v5

    if-nez v5, :cond_4

    aget-wide v5, v2, v3

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    move-result v5

    if-nez v5, :cond_4

    aget-wide v5, v2, v12

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual {p1}, Lsun/font/FileFont;->getScaler()Lsun/font/FontScaler;

    move-result-object v5

    if-nez v5, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lsun/font/FileFont;->getScaler()Lsun/font/FontScaler;

    move-result-object v5

    iget v7, p2, Lsun/font/FontStrikeDesc;->aaHint:I

    iget v8, p2, Lsun/font/FontStrikeDesc;->fmHint:I

    iget v9, p0, Lsun/font/FontStrike;->boldness:F

    iget v10, p0, Lsun/font/FontStrike;->italic:F

    move-object v6, v2

    invoke-virtual/range {v5 .. v10}, Lsun/font/FontScaler;->createScalerContext([DIIFF)J

    move-result-wide v5

    iput-wide v5, p0, Lsun/font/PhysicalStrike;->pScalerContext:J

    goto :goto_1

    :cond_4
    :goto_0
    invoke-static {}, Lsun/font/NullFontScaler;->getNullScalerContext()J

    move-result-wide v5

    iput-wide v5, p0, Lsun/font/PhysicalStrike;->pScalerContext:J

    :goto_1
    invoke-virtual {p1}, Lsun/font/Font2D;->getMapper()Lsun/font/CharToGlyphMapper;

    move-result-object v5

    iput-object v5, p0, Lsun/font/PhysicalStrike;->mapper:Lsun/font/CharToGlyphMapper;

    invoke-virtual {v5}, Lsun/font/CharToGlyphMapper;->getNumGlyphs()I

    move-result v5

    aget-wide v6, v2, v12

    double-to-float v6, v6

    float-to-int v7, v6

    iput v7, p0, Lsun/font/FileFontStrike;->intPtSize:I

    invoke-virtual {v11}, Ljava/awt/geom/AffineTransform;->getType()I

    move-result v8

    and-int/lit8 v8, v8, 0x7c

    if-nez v8, :cond_5

    move v8, v4

    goto :goto_2

    :cond_5
    move v8, v0

    :goto_2
    const/16 v9, 0x100

    if-gt v5, v9, :cond_7

    const/16 v9, 0x40

    if-le v5, v9, :cond_6

    if-eqz v8, :cond_7

    int-to-float v8, v7

    cmpl-float v6, v6, v8

    if-nez v6, :cond_7

    const/4 v6, 0x6

    if-lt v7, v6, :cond_7

    const/16 v6, 0x24

    if-le v7, v6, :cond_6

    goto :goto_3

    :cond_6
    move v6, v0

    goto :goto_4

    :cond_7
    :goto_3
    move v6, v4

    :goto_4
    iput-boolean v6, p0, Lsun/font/FileFontStrike;->segmentedCache:Z

    iget-wide v6, p0, Lsun/font/PhysicalStrike;->pScalerContext:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-nez v6, :cond_8

    new-instance v0, Lsun/font/FontStrikeDisposer;

    invoke-direct {v0, p1, p2}, Lsun/font/FontStrikeDisposer;-><init>(Lsun/font/Font2D;Lsun/font/FontStrikeDesc;)V

    iput-object v0, p0, Lsun/font/FontStrike;->disposer:Lsun/font/FontStrikeDisposer;

    invoke-direct {p0}, Lsun/font/FileFontStrike;->initGlyphCache()V

    invoke-static {}, Lsun/font/NullFontScaler;->getNullScalerContext()J

    move-result-wide v0

    iput-wide v0, p0, Lsun/font/PhysicalStrike;->pScalerContext:J

    invoke-static {}, Lsun/font/SunFontManager;->getInstance()Lsun/font/SunFontManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lsun/font/SunFontManager;->deRegisterBadFont(Lsun/font/Font2D;)V

    return-void

    :cond_8
    sget-boolean v6, Lsun/font/FontUtilities;->isWindows:Z

    if-eqz v6, :cond_a

    sget-boolean v6, Lsun/font/FileFontStrike;->isXPorLater:Z

    if-eqz v6, :cond_a

    sget-boolean v6, Lsun/font/FontUtilities;->useJDKScaler:Z

    if-nez v6, :cond_a

    invoke-static {}, Ljava/awt/GraphicsEnvironment;->isHeadless()Z

    move-result v6

    if-nez v6, :cond_a

    iget-boolean v6, p1, Lsun/font/FileFont;->useJavaRasterizer:Z

    if-nez v6, :cond_a

    iget v6, p2, Lsun/font/FontStrikeDesc;->aaHint:I

    if-eq v6, v1, :cond_9

    const/4 v1, 0x5

    if-ne v6, v1, :cond_a

    :cond_9
    aget-wide v6, v2, v4

    const-wide/16 v8, 0x0

    cmpl-double v1, v6, v8

    if-nez v1, :cond_a

    aget-wide v6, v2, v3

    cmpl-double v1, v6, v8

    if-nez v1, :cond_a

    aget-wide v6, v2, v0

    aget-wide v1, v2, v12

    cmpl-double v1, v6, v1

    if-nez v1, :cond_a

    const-wide/high16 v1, 0x4008000000000000L    # 3.0

    cmpl-double v1, v6, v1

    if-ltz v1, :cond_a

    const-wide/high16 v1, 0x4059000000000000L    # 100.0

    cmpg-double v1, v6, v1

    if-gtz v1, :cond_a

    move-object v1, p1

    check-cast v1, Lsun/font/TrueTypeFont;

    iget v2, p0, Lsun/font/FileFontStrike;->intPtSize:I

    invoke-virtual {v1, v2}, Lsun/font/TrueTypeFont;->useEmbeddedBitmapsForSize(I)Z

    move-result v1

    if-nez v1, :cond_a

    iput-boolean v4, p0, Lsun/font/FileFontStrike;->useNatives:Z

    :cond_a
    invoke-static {}, Lsun/font/FontUtilities;->isLogging()Z

    move-result v1

    if-eqz v1, :cond_b

    sget-boolean v1, Lsun/font/FontUtilities;->isWindows:Z

    if-eqz v1, :cond_b

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Strike for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " at size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lsun/font/FileFontStrike;->intPtSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " use natives = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lsun/font/FileFontStrike;->useNatives:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " useJavaRasteriser = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p1, Lsun/font/FileFont;->useJavaRasterizer:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " AAHint = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p2, Lsun/font/FontStrikeDesc;->aaHint:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " Has Embedded bitmaps = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v2, p1

    check-cast v2, Lsun/font/TrueTypeFont;

    iget v3, p0, Lsun/font/FileFontStrike;->intPtSize:I

    invoke-virtual {v2, v3}, Lsun/font/TrueTypeFont;->useEmbeddedBitmapsForSize(I)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lsun/font/FontUtilities;->logInfo(Ljava/lang/String;)V

    :cond_b
    new-instance v1, Lsun/font/FontStrikeDisposer;

    iget-wide v2, p0, Lsun/font/PhysicalStrike;->pScalerContext:J

    invoke-direct {v1, p1, p2, v2, v3}, Lsun/font/FontStrikeDisposer;-><init>(Lsun/font/Font2D;Lsun/font/FontStrikeDesc;J)V

    iput-object v1, p0, Lsun/font/FontStrike;->disposer:Lsun/font/FontStrikeDisposer;

    iput-boolean v0, p0, Lsun/font/PhysicalStrike;->getImageWithAdvance:Z

    iget-boolean p1, p0, Lsun/font/FileFontStrike;->segmentedCache:Z

    if-nez p1, :cond_c

    new-array p1, v5, [F

    iput-object p1, p0, Lsun/font/FileFontStrike;->horizontalAdvances:[F

    :goto_5
    if-ge v0, v5, :cond_d

    iget-object p1, p0, Lsun/font/FileFontStrike;->horizontalAdvances:[F

    const p2, 0x7f7fffff    # Float.MAX_VALUE

    aput p2, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_c
    add-int/lit8 v5, v5, 0x20

    sub-int/2addr v5, v4

    div-int/lit8 v5, v5, 0x20

    new-array p1, v5, [[F

    iput-object p1, p0, Lsun/font/FileFontStrike;->segHorizontalAdvances:[[F

    :cond_d
    return-void
.end method

.method private native _getGlyphImageFromWindows(Ljava/lang/String;IIIZI)J
.end method

.method private getCachedGlyphPtrInternal(I)J
    .locals 6

    iget v0, p0, Lsun/font/FileFontStrike;->glyphCacheFormat:I

    const/4 v1, 0x1

    const-wide v2, 0xffffffffL

    if-eq v0, v1, :cond_5

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    const/4 v1, 0x3

    const-wide/16 v4, 0x0

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    return-wide v4

    :cond_0
    shr-int/lit8 v0, p1, 0x5

    iget-object p0, p0, Lsun/font/FileFontStrike;->segLongGlyphImages:[[J

    aget-object p0, p0, v0

    if-eqz p0, :cond_1

    rem-int/lit8 p1, p1, 0x20

    aget-wide p0, p0, p1

    return-wide p0

    :cond_1
    return-wide v4

    :cond_2
    shr-int/lit8 v0, p1, 0x5

    iget-object p0, p0, Lsun/font/FileFontStrike;->segIntGlyphImages:[[I

    aget-object p0, p0, v0

    if-eqz p0, :cond_3

    rem-int/lit8 p1, p1, 0x20

    aget p0, p0, p1

    int-to-long p0, p0

    and-long/2addr p0, v2

    return-wide p0

    :cond_3
    return-wide v4

    :cond_4
    iget-object p0, p0, Lsun/font/PhysicalStrike;->longGlyphImages:[J

    aget-wide p0, p0, p1

    return-wide p0

    :cond_5
    iget-object p0, p0, Lsun/font/PhysicalStrike;->intGlyphImages:[I

    aget p0, p0, p1

    int-to-long p0, p0

    and-long/2addr p0, v2

    return-wide p0
.end method

.method private getGlyphAdvance(IZ)F
    .locals 5

    const v0, 0xfffe

    const/4 v1, 0x0

    if-lt p1, v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Lsun/font/FileFontStrike;->horizontalAdvances:[F

    const v2, 0x7f7fffff    # Float.MAX_VALUE

    if-eqz v0, :cond_2

    .line 3
    aget v0, v0, p1

    cmpl-float v3, v0, v2

    if-eqz v3, :cond_4

    if-nez p2, :cond_1

    .line 4
    iget-object p1, p0, Lsun/font/FileFontStrike;->invertDevTx:Ljava/awt/geom/AffineTransform;

    if-eqz p1, :cond_1

    .line 5
    new-instance p1, Ljava/awt/geom/Point2D$Float;

    invoke-direct {p1, v0, v1}, Ljava/awt/geom/Point2D$Float;-><init>(FF)V

    .line 6
    iget-object p0, p0, Lsun/font/FontStrike;->desc:Lsun/font/FontStrikeDesc;

    iget-object p0, p0, Lsun/font/FontStrikeDesc;->devTx:Ljava/awt/geom/AffineTransform;

    invoke-virtual {p0, p1, p1}, Ljava/awt/geom/AffineTransform;->deltaTransform(Ljava/awt/geom/Point2D;Ljava/awt/geom/Point2D;)Ljava/awt/geom/Point2D;

    .line 7
    iget p0, p1, Ljava/awt/geom/Point2D$Float;->x:F

    return p0

    :cond_1
    return v0

    .line 8
    :cond_2
    iget-boolean v0, p0, Lsun/font/FileFontStrike;->segmentedCache:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lsun/font/FileFontStrike;->segHorizontalAdvances:[[F

    if-eqz v0, :cond_4

    shr-int/lit8 v3, p1, 0x5

    .line 9
    aget-object v0, v0, v3

    if-eqz v0, :cond_4

    .line 10
    rem-int/lit8 v3, p1, 0x20

    aget v0, v0, v3

    cmpl-float v3, v0, v2

    if-eqz v3, :cond_4

    if-nez p2, :cond_3

    .line 11
    iget-object p1, p0, Lsun/font/FileFontStrike;->invertDevTx:Ljava/awt/geom/AffineTransform;

    if-eqz p1, :cond_3

    .line 12
    new-instance p1, Ljava/awt/geom/Point2D$Float;

    invoke-direct {p1, v0, v1}, Ljava/awt/geom/Point2D$Float;-><init>(FF)V

    .line 13
    iget-object p0, p0, Lsun/font/FontStrike;->desc:Lsun/font/FontStrikeDesc;

    iget-object p0, p0, Lsun/font/FontStrikeDesc;->devTx:Ljava/awt/geom/AffineTransform;

    invoke-virtual {p0, p1, p1}, Ljava/awt/geom/AffineTransform;->deltaTransform(Ljava/awt/geom/Point2D;Ljava/awt/geom/Point2D;)Ljava/awt/geom/Point2D;

    .line 14
    iget p0, p1, Ljava/awt/geom/Point2D$Float;->x:F

    return p0

    :cond_3
    return v0

    :cond_4
    if-nez p2, :cond_5

    .line 15
    iget-object v0, p0, Lsun/font/FileFontStrike;->invertDevTx:Ljava/awt/geom/AffineTransform;

    if-eqz v0, :cond_5

    .line 16
    new-instance p2, Ljava/awt/geom/Point2D$Float;

    invoke-direct {p2}, Ljava/awt/geom/Point2D$Float;-><init>()V

    .line 17
    iget-object v0, p0, Lsun/font/FileFontStrike;->fileFont:Lsun/font/FileFont;

    iget-wide v1, p0, Lsun/font/PhysicalStrike;->pScalerContext:J

    invoke-virtual {v0, v1, v2, p1, p2}, Lsun/font/FileFont;->getGlyphMetrics(JILjava/awt/geom/Point2D$Float;)V

    .line 18
    iget p0, p2, Ljava/awt/geom/Point2D$Float;->x:F

    return p0

    .line 19
    :cond_5
    iget-object v0, p0, Lsun/font/FileFontStrike;->invertDevTx:Ljava/awt/geom/AffineTransform;

    if-nez v0, :cond_9

    if-nez p2, :cond_6

    goto :goto_1

    .line 20
    :cond_6
    iget-boolean p2, p0, Lsun/font/PhysicalStrike;->getImageWithAdvance:Z

    if-eqz p2, :cond_7

    .line 21
    invoke-virtual {p0, p1}, Lsun/font/FileFontStrike;->getGlyphImagePtr(I)J

    move-result-wide v0

    goto :goto_0

    .line 22
    :cond_7
    invoke-virtual {p0, p1}, Lsun/font/FileFontStrike;->getCachedGlyphPtr(I)J

    move-result-wide v0

    :goto_0
    const-wide/16 v3, 0x0

    cmp-long p2, v0, v3

    if-eqz p2, :cond_8

    .line 23
    sget-object p2, Lsun/font/StrikeCache;->unsafe:Ljdk/internal/misc/NeoUnsafe;

    sget v3, Lsun/font/StrikeCache;->xAdvanceOffset:I

    int-to-long v3, v3

    add-long/2addr v0, v3

    .line 24
    invoke-virtual {p2, v0, v1}, Ljdk/internal/misc/NeoUnsafe;->getFloat(J)F

    move-result p2

    goto :goto_2

    .line 25
    :cond_8
    iget-object p2, p0, Lsun/font/FileFontStrike;->fileFont:Lsun/font/FileFont;

    iget-wide v0, p0, Lsun/font/PhysicalStrike;->pScalerContext:J

    invoke-virtual {p2, v0, v1, p1}, Lsun/font/FileFont;->getGlyphAdvance(JI)F

    move-result p2

    goto :goto_2

    .line 26
    :cond_9
    :goto_1
    invoke-direct {p0, p1, p2}, Lsun/font/FileFontStrike;->getGlyphMetrics(IZ)Ljava/awt/geom/Point2D$Float;

    move-result-object p2

    iget p2, p2, Ljava/awt/geom/Point2D$Float;->x:F

    .line 27
    :goto_2
    iget-object v0, p0, Lsun/font/FileFontStrike;->horizontalAdvances:[F

    if-eqz v0, :cond_a

    .line 28
    aput p2, v0, p1

    goto :goto_4

    .line 29
    :cond_a
    iget-boolean v0, p0, Lsun/font/FileFontStrike;->segmentedCache:Z

    if-eqz v0, :cond_c

    iget-object v0, p0, Lsun/font/FileFontStrike;->segHorizontalAdvances:[[F

    if-eqz v0, :cond_c

    shr-int/lit8 v1, p1, 0x5

    const/16 v3, 0x20

    .line 30
    rem-int/2addr p1, v3

    .line 31
    aget-object v4, v0, v1

    if-nez v4, :cond_b

    new-array v4, v3, [F

    .line 32
    aput-object v4, v0, v1

    const/4 v0, 0x0

    :goto_3
    if-ge v0, v3, :cond_b

    .line 33
    iget-object v4, p0, Lsun/font/FileFontStrike;->segHorizontalAdvances:[[F

    aget-object v4, v4, v1

    aput v2, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 34
    :cond_b
    iget-object p0, p0, Lsun/font/FileFontStrike;->segHorizontalAdvances:[[F

    aget-object p0, p0, v1

    aput p2, p0, p1

    :cond_c
    :goto_4
    return p2
.end method

.method private getGlyphImageMinX(JI)I
    .locals 9

    sget-object p0, Lsun/font/StrikeCache;->unsafe:Ljdk/internal/misc/NeoUnsafe;

    sget v0, Lsun/font/StrikeCache;->widthOffset:I

    int-to-long v0, v0

    add-long/2addr v0, p1

    invoke-virtual {p0, v0, v1}, Ljdk/internal/misc/NeoUnsafe;->getChar(J)C

    move-result v0

    sget v1, Lsun/font/StrikeCache;->heightOffset:I

    int-to-long v1, v1

    add-long/2addr v1, p1

    invoke-virtual {p0, v1, v2}, Ljdk/internal/misc/NeoUnsafe;->getChar(J)C

    move-result v1

    sget v2, Lsun/font/StrikeCache;->rowBytesOffset:I

    int-to-long v2, v2

    add-long/2addr v2, p1

    invoke-virtual {p0, v2, v3}, Ljdk/internal/misc/NeoUnsafe;->getChar(J)C

    move-result v2

    if-ne v2, v0, :cond_0

    return p3

    :cond_0
    sget v0, Lsun/font/StrikeCache;->pixelDataOffset:I

    int-to-long v3, v0

    add-long/2addr p1, v3

    invoke-virtual {p0, p1, p2}, Ljdk/internal/misc/NeoUnsafe;->getAddress(J)J

    move-result-wide p0

    const-wide/16 v3, 0x0

    cmp-long p2, p0, v3

    if-nez p2, :cond_1

    return p3

    :cond_1
    const/4 p2, 0x0

    move v0, p2

    :goto_0
    if-ge v0, v1, :cond_4

    move v3, p2

    :goto_1
    const/4 v4, 0x3

    if-ge v3, v4, :cond_3

    sget-object v4, Lsun/font/StrikeCache;->unsafe:Ljdk/internal/misc/NeoUnsafe;

    mul-int v5, v0, v2

    int-to-long v5, v5

    add-long/2addr v5, p0

    int-to-long v7, v3

    add-long/2addr v5, v7

    invoke-virtual {v4, v5, v6}, Ljdk/internal/misc/NeoUnsafe;->getByte(J)B

    move-result v4

    if-eqz v4, :cond_2

    return p3

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    add-int/lit8 p3, p3, 0x1

    return p3
.end method

.method private getGlyphMetrics(IZ)Ljava/awt/geom/Point2D$Float;
    .locals 5

    .line 2
    new-instance p2, Ljava/awt/geom/Point2D$Float;

    invoke-direct {p2}, Ljava/awt/geom/Point2D$Float;-><init>()V

    const v0, 0xfffe

    if-lt p1, v0, :cond_0

    return-object p2

    .line 3
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lsun/font/FileFontStrike;->glyphMetricsMapRef:Ljava/lang/ref/SoftReference;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 5
    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/ConcurrentHashMap;

    goto :goto_0

    :cond_1
    move-object v1, v2

    :goto_0
    if-eqz v1, :cond_2

    .line 6
    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/awt/geom/Point2D$Float;

    if-eqz v2, :cond_2

    .line 7
    iget p0, v2, Ljava/awt/geom/Point2D$Float;->x:F

    iput p0, p2, Ljava/awt/geom/Point2D$Float;->x:F

    .line 8
    iget p0, v2, Ljava/awt/geom/Point2D$Float;->y:F

    iput p0, p2, Ljava/awt/geom/Point2D$Float;->y:F

    return-object p2

    :cond_2
    if-nez v2, :cond_5

    .line 9
    iget-object v2, p0, Lsun/font/FileFontStrike;->fileFont:Lsun/font/FileFont;

    iget-wide v3, p0, Lsun/font/PhysicalStrike;->pScalerContext:J

    invoke-virtual {v2, v3, v4, p1, p2}, Lsun/font/FileFont;->getGlyphMetrics(JILjava/awt/geom/Point2D$Float;)V

    .line 10
    iget-object p1, p0, Lsun/font/FileFontStrike;->invertDevTx:Ljava/awt/geom/AffineTransform;

    if-eqz p1, :cond_3

    .line 11
    invoke-virtual {p1, p2, p2}, Ljava/awt/geom/AffineTransform;->deltaTransform(Ljava/awt/geom/Point2D;Ljava/awt/geom/Point2D;)Ljava/awt/geom/Point2D;

    .line 12
    :cond_3
    new-instance p1, Ljava/awt/geom/Point2D$Float;

    iget v2, p2, Ljava/awt/geom/Point2D$Float;->x:F

    iget v3, p2, Ljava/awt/geom/Point2D$Float;->y:F

    invoke-direct {p1, v2, v3}, Ljava/awt/geom/Point2D$Float;-><init>(FF)V

    if-nez v1, :cond_4

    .line 13
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 14
    new-instance v2, Ljava/lang/ref/SoftReference;

    invoke-direct {v2, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Lsun/font/FileFontStrike;->glyphMetricsMapRef:Ljava/lang/ref/SoftReference;

    .line 15
    :cond_4
    invoke-virtual {v1, v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    return-object p2
.end method

.method private declared-synchronized initGlyphCache()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lsun/font/PhysicalStrike;->mapper:Lsun/font/CharToGlyphMapper;

    invoke-virtual {v0}, Lsun/font/CharToGlyphMapper;->getNumGlyphs()I

    move-result v0

    iget-boolean v1, p0, Lsun/font/FileFontStrike;->segmentedCache:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    add-int/lit8 v0, v0, 0x20

    sub-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x20

    sget-boolean v1, Lsun/font/PhysicalStrike;->longAddresses:Z

    if-eqz v1, :cond_0

    new-array v0, v0, [[J

    iput-object v0, p0, Lsun/font/FileFontStrike;->segLongGlyphImages:[[J

    iget-object v1, p0, Lsun/font/FontStrike;->disposer:Lsun/font/FontStrikeDisposer;

    iput-object v0, v1, Lsun/font/FontStrikeDisposer;->segLongGlyphImages:[[J

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    new-array v0, v0, [[I

    iput-object v0, p0, Lsun/font/FileFontStrike;->segIntGlyphImages:[[I

    iget-object v1, p0, Lsun/font/FontStrike;->disposer:Lsun/font/FontStrikeDisposer;

    iput-object v0, v1, Lsun/font/FontStrikeDisposer;->segIntGlyphImages:[[I

    const/4 v0, 0x3

    :goto_0
    move v2, v0

    goto :goto_1

    :cond_1
    sget-boolean v1, Lsun/font/PhysicalStrike;->longAddresses:Z

    if-eqz v1, :cond_2

    new-array v0, v0, [J

    iput-object v0, p0, Lsun/font/PhysicalStrike;->longGlyphImages:[J

    iget-object v1, p0, Lsun/font/FontStrike;->disposer:Lsun/font/FontStrikeDisposer;

    iput-object v0, v1, Lsun/font/FontStrikeDisposer;->longGlyphImages:[J

    const/4 v2, 0x2

    goto :goto_1

    :cond_2
    new-array v0, v0, [I

    iput-object v0, p0, Lsun/font/PhysicalStrike;->intGlyphImages:[I

    iget-object v1, p0, Lsun/font/FontStrike;->disposer:Lsun/font/FontStrikeDisposer;

    iput-object v0, v1, Lsun/font/FontStrikeDisposer;->intGlyphImages:[I

    :goto_1
    iput v2, p0, Lsun/font/FileFontStrike;->glyphCacheFormat:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static initNative()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private declared-synchronized setCachedGlyphPtr(IJ)J
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lsun/font/FileFontStrike;->setCachedGlyphPtrInternal(IJ)J

    move-result-wide p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide p1

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    :try_start_1
    iget v0, p0, Lsun/font/FileFontStrike;->glyphCacheFormat:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p2, p3}, Lsun/font/StrikeCache;->freeLongPointer(J)V

    goto :goto_0

    :cond_1
    long-to-int p2, p2

    invoke-static {p2}, Lsun/font/StrikeCache;->freeIntPointer(I)V

    :goto_0
    invoke-static {}, Lsun/font/FontScaler;->getNullScaler()Lsun/font/FontScaler;

    move-result-object p2

    check-cast p2, Lsun/font/NullFontScaler;

    invoke-static {}, Lsun/font/NullFontScaler;->getNullScalerContext()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1, p1}, Lsun/font/NullFontScaler;->getGlyphImage(JI)J

    move-result-wide p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-wide p1

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method private setCachedGlyphPtrInternal(IJ)J
    .locals 7

    iget v0, p0, Lsun/font/FileFontStrike;->glyphCacheFormat:I

    const/4 v1, 0x1

    const-wide v2, 0xffffffffL

    if-eq v0, v1, :cond_8

    const/4 v1, 0x2

    const-wide/16 v4, 0x0

    if-eq v0, v1, :cond_6

    const/4 v1, 0x3

    const/16 v6, 0x20

    if-eq v0, v1, :cond_3

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    invoke-direct {p0}, Lsun/font/FileFontStrike;->initGlyphCache()V

    invoke-direct {p0, p1, p2, p3}, Lsun/font/FileFontStrike;->setCachedGlyphPtr(IJ)J

    move-result-wide p0

    return-wide p0

    :cond_0
    shr-int/lit8 v0, p1, 0x5

    rem-int/2addr p1, v6

    iget-object v1, p0, Lsun/font/FileFontStrike;->segLongGlyphImages:[[J

    aget-object v2, v1, v0

    if-nez v2, :cond_1

    new-array v2, v6, [J

    aput-object v2, v1, v0

    :cond_1
    aget-object v1, v1, v0

    aget-wide v2, v1, p1

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    aput-wide p2, v1, p1

    return-wide p2

    :cond_2
    invoke-static {p2, p3}, Lsun/font/StrikeCache;->freeLongPointer(J)V

    iget-object p0, p0, Lsun/font/FileFontStrike;->segLongGlyphImages:[[J

    aget-object p0, p0, v0

    aget-wide p0, p0, p1

    return-wide p0

    :cond_3
    shr-int/lit8 v0, p1, 0x5

    rem-int/2addr p1, v6

    iget-object v1, p0, Lsun/font/FileFontStrike;->segIntGlyphImages:[[I

    aget-object v4, v1, v0

    if-nez v4, :cond_4

    new-array v4, v6, [I

    aput-object v4, v1, v0

    :cond_4
    aget-object v1, v1, v0

    aget v4, v1, p1

    if-nez v4, :cond_5

    long-to-int p0, p2

    aput p0, v1, p1

    return-wide p2

    :cond_5
    long-to-int p2, p2

    invoke-static {p2}, Lsun/font/StrikeCache;->freeIntPointer(I)V

    iget-object p0, p0, Lsun/font/FileFontStrike;->segIntGlyphImages:[[I

    aget-object p0, p0, v0

    aget p0, p0, p1

    int-to-long p0, p0

    and-long/2addr p0, v2

    return-wide p0

    :cond_6
    iget-object v0, p0, Lsun/font/PhysicalStrike;->longGlyphImages:[J

    aget-wide v1, v0, p1

    cmp-long v1, v1, v4

    if-nez v1, :cond_7

    aput-wide p2, v0, p1

    return-wide p2

    :cond_7
    invoke-static {p2, p3}, Lsun/font/StrikeCache;->freeLongPointer(J)V

    iget-object p0, p0, Lsun/font/PhysicalStrike;->longGlyphImages:[J

    aget-wide p0, p0, p1

    return-wide p0

    :cond_8
    iget-object v0, p0, Lsun/font/PhysicalStrike;->intGlyphImages:[I

    aget v1, v0, p1

    if-nez v1, :cond_9

    long-to-int p0, p2

    aput p0, v0, p1

    return-wide p2

    :cond_9
    long-to-int p2, p2

    invoke-static {p2}, Lsun/font/StrikeCache;->freeIntPointer(I)V

    iget-object p0, p0, Lsun/font/PhysicalStrike;->intGlyphImages:[I

    aget p0, p0, p1

    int-to-long p0, p0

    and-long/2addr p0, v2

    return-wide p0
.end method


# virtual methods
.method public adjustPoint(Ljava/awt/geom/Point2D$Float;)V
    .locals 0

    iget-object p0, p0, Lsun/font/FileFontStrike;->invertDevTx:Ljava/awt/geom/AffineTransform;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p1}, Ljava/awt/geom/AffineTransform;->deltaTransform(Ljava/awt/geom/Point2D;Ljava/awt/geom/Point2D;)Ljava/awt/geom/Point2D;

    :cond_0
    return-void
.end method

.method public getCachedGlyphPtr(I)J
    .locals 2

    :try_start_0
    invoke-direct {p0, p1}, Lsun/font/FileFontStrike;->getCachedGlyphPtrInternal(I)J

    move-result-wide p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p0

    :catch_0
    invoke-static {}, Lsun/font/FontScaler;->getNullScaler()Lsun/font/FontScaler;

    move-result-object p0

    check-cast p0, Lsun/font/NullFontScaler;

    invoke-static {}, Lsun/font/NullFontScaler;->getNullScalerContext()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p1}, Lsun/font/NullFontScaler;->getGlyphImage(JI)J

    move-result-wide p0

    return-wide p0
.end method

.method public getCharMetrics(C)Ljava/awt/geom/Point2D$Float;
    .locals 1

    iget-object v0, p0, Lsun/font/PhysicalStrike;->mapper:Lsun/font/CharToGlyphMapper;

    invoke-virtual {v0, p1}, Lsun/font/CharToGlyphMapper;->charToGlyph(C)I

    move-result p1

    invoke-virtual {p0, p1}, Lsun/font/FileFontStrike;->getGlyphMetrics(I)Ljava/awt/geom/Point2D$Float;

    move-result-object p0

    return-object p0
.end method

.method public getCodePointAdvance(I)F
    .locals 1

    iget-object v0, p0, Lsun/font/PhysicalStrike;->mapper:Lsun/font/CharToGlyphMapper;

    invoke-virtual {v0, p1}, Lsun/font/CharToGlyphMapper;->charToGlyph(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lsun/font/FileFontStrike;->getGlyphAdvance(I)F

    move-result p0

    return p0
.end method

.method public getFontMetrics()Lsun/font/StrikeMetrics;
    .locals 3

    iget-object v0, p0, Lsun/font/FontStrike;->strikeMetrics:Lsun/font/StrikeMetrics;

    if-nez v0, :cond_0

    iget-object v0, p0, Lsun/font/FileFontStrike;->fileFont:Lsun/font/FileFont;

    iget-wide v1, p0, Lsun/font/PhysicalStrike;->pScalerContext:J

    invoke-virtual {v0, v1, v2}, Lsun/font/FileFont;->getFontMetrics(J)Lsun/font/StrikeMetrics;

    move-result-object v0

    iput-object v0, p0, Lsun/font/FontStrike;->strikeMetrics:Lsun/font/StrikeMetrics;

    iget-object v1, p0, Lsun/font/FileFontStrike;->invertDevTx:Ljava/awt/geom/AffineTransform;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Lsun/font/StrikeMetrics;->convertToUserSpace(Ljava/awt/geom/AffineTransform;)V

    :cond_0
    iget-object p0, p0, Lsun/font/FontStrike;->strikeMetrics:Lsun/font/StrikeMetrics;

    return-object p0
.end method

.method public getGlyphAdvance(I)F
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, p1, v0}, Lsun/font/FileFontStrike;->getGlyphAdvance(IZ)F

    move-result p0

    return p0
.end method

.method public getGlyphImageBounds(ILjava/awt/geom/Point2D$Float;Ljava/awt/Rectangle;)V
    .locals 7

    invoke-virtual {p0, p1}, Lsun/font/FileFontStrike;->getGlyphImagePtr(I)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    const/high16 v2, 0x3f000000    # 0.5f

    if-nez p1, :cond_0

    iget p0, p2, Ljava/awt/geom/Point2D$Float;->x:F

    add-float/2addr p0, v2

    float-to-double p0, p0

    invoke-static {p0, p1}, Ljava/lang/Math;->floor(D)D

    move-result-wide p0

    double-to-int p0, p0

    iput p0, p3, Ljava/awt/Rectangle;->x:I

    iget p0, p2, Ljava/awt/geom/Point2D$Float;->y:F

    add-float/2addr p0, v2

    float-to-double p0, p0

    invoke-static {p0, p1}, Ljava/lang/Math;->floor(D)D

    move-result-wide p0

    double-to-int p0, p0

    iput p0, p3, Ljava/awt/Rectangle;->y:I

    const/4 p0, 0x0

    iput p0, p3, Ljava/awt/Rectangle;->height:I

    iput p0, p3, Ljava/awt/Rectangle;->width:I

    return-void

    :cond_0
    sget-object p1, Lsun/font/StrikeCache;->unsafe:Ljdk/internal/misc/NeoUnsafe;

    sget v3, Lsun/font/StrikeCache;->topLeftXOffset:I

    int-to-long v3, v3

    add-long/2addr v3, v0

    invoke-virtual {p1, v3, v4}, Ljdk/internal/misc/NeoUnsafe;->getFloat(J)F

    move-result v3

    sget v4, Lsun/font/StrikeCache;->topLeftYOffset:I

    int-to-long v4, v4

    add-long/2addr v4, v0

    invoke-virtual {p1, v4, v5}, Ljdk/internal/misc/NeoUnsafe;->getFloat(J)F

    move-result v4

    iget v5, p2, Ljava/awt/geom/Point2D$Float;->x:F

    add-float/2addr v5, v3

    add-float/2addr v5, v2

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D

    move-result-wide v5

    double-to-int v5, v5

    iput v5, p3, Ljava/awt/Rectangle;->x:I

    iget p2, p2, Ljava/awt/geom/Point2D$Float;->y:F

    add-float/2addr p2, v4

    add-float/2addr p2, v2

    float-to-double v4, p2

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int p2, v4

    iput p2, p3, Ljava/awt/Rectangle;->y:I

    sget p2, Lsun/font/StrikeCache;->widthOffset:I

    int-to-long v4, p2

    add-long/2addr v4, v0

    invoke-virtual {p1, v4, v5}, Ljdk/internal/misc/NeoUnsafe;->getShort(J)S

    move-result p2

    const v2, 0xffff

    and-int/2addr p2, v2

    iput p2, p3, Ljava/awt/Rectangle;->width:I

    sget p2, Lsun/font/StrikeCache;->heightOffset:I

    int-to-long v4, p2

    add-long/2addr v4, v0

    invoke-virtual {p1, v4, v5}, Ljdk/internal/misc/NeoUnsafe;->getShort(J)S

    move-result p1

    and-int/2addr p1, v2

    iput p1, p3, Ljava/awt/Rectangle;->height:I

    iget-object p1, p0, Lsun/font/FontStrike;->desc:Lsun/font/FontStrikeDesc;

    iget p1, p1, Lsun/font/FontStrikeDesc;->aaHint:I

    const/4 p2, 0x4

    if-eq p1, p2, :cond_1

    const/4 p2, 0x5

    if-ne p1, p2, :cond_2

    :cond_1
    const/high16 p1, -0x40000000    # -2.0f

    cmpg-float p1, v3, p1

    if-gtz p1, :cond_2

    iget p1, p3, Ljava/awt/Rectangle;->x:I

    invoke-direct {p0, v0, v1, p1}, Lsun/font/FileFontStrike;->getGlyphImageMinX(JI)I

    move-result p0

    iget p1, p3, Ljava/awt/Rectangle;->x:I

    if-le p0, p1, :cond_2

    add-int/lit8 p1, p1, 0x1

    iput p1, p3, Ljava/awt/Rectangle;->x:I

    iget p0, p3, Ljava/awt/Rectangle;->width:I

    add-int/lit8 p0, p0, -0x1

    iput p0, p3, Ljava/awt/Rectangle;->width:I

    :cond_2
    return-void
.end method

.method public getGlyphImageFromNative(I)J
    .locals 1

    sget-boolean v0, Lsun/font/FontUtilities;->isWindows:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lsun/font/FileFontStrike;->getGlyphImageFromWindows(I)J

    move-result-wide p0

    return-wide p0

    :cond_0
    invoke-virtual {p0, p1}, Lsun/font/FileFontStrike;->getGlyphImageFromX11(I)J

    move-result-wide p0

    return-wide p0
.end method

.method public getGlyphImageFromWindows(I)J
    .locals 11

    iget-object v0, p0, Lsun/font/FileFontStrike;->fileFont:Lsun/font/FileFont;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lsun/font/Font2D;->getFamilyName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lsun/font/FontStrike;->desc:Lsun/font/FontStrikeDesc;

    iget v1, v1, Lsun/font/FontStrikeDesc;->style:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x2

    and-int/2addr v1, v3

    or-int/2addr v1, v2

    iget-object v2, p0, Lsun/font/FileFontStrike;->fileFont:Lsun/font/FileFont;

    invoke-virtual {v2}, Lsun/font/Font2D;->getStyle()I

    move-result v2

    or-int/2addr v1, v2

    iget v9, p0, Lsun/font/FileFontStrike;->intPtSize:I

    iget-object v2, p0, Lsun/font/FontStrike;->desc:Lsun/font/FontStrikeDesc;

    iget v2, v2, Lsun/font/FontStrikeDesc;->fmHint:I

    const/4 v10, 0x0

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    move v7, v2

    goto :goto_0

    :cond_0
    move v7, v10

    :goto_0
    iget-object v2, p0, Lsun/font/FileFontStrike;->fileFont:Lsun/font/FileFont;

    check-cast v2, Lsun/font/TrueTypeFont;

    iget v8, v2, Lsun/font/TrueTypeFont;->fontDataSize:I

    move-object v2, p0

    move-object v3, v0

    move v4, v1

    move v5, v9

    move v6, p1

    invoke-direct/range {v2 .. v8}, Lsun/font/FileFontStrike;->_getGlyphImageFromWindows(Ljava/lang/String;IIIZI)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-eqz v4, :cond_1

    invoke-direct {p0, p1, v10}, Lsun/font/FileFontStrike;->getGlyphAdvance(IZ)F

    move-result p0

    sget-object p1, Lsun/font/StrikeCache;->unsafe:Ljdk/internal/misc/NeoUnsafe;

    sget v0, Lsun/font/StrikeCache;->xAdvanceOffset:I

    int-to-long v0, v0

    add-long/2addr v0, v2

    invoke-virtual {p1, v0, v1, p0}, Ljdk/internal/misc/NeoUnsafe;->putFloat(JF)V

    return-wide v2

    :cond_1
    invoke-static {}, Lsun/font/FontUtilities;->isLogging()Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to render glyph using GDI: code="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", fontFamily="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", style="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", size="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lsun/font/FontUtilities;->logWarning(Ljava/lang/String;)V

    :cond_2
    iget-object v0, p0, Lsun/font/FileFontStrike;->fileFont:Lsun/font/FileFont;

    iget-wide v1, p0, Lsun/font/PhysicalStrike;->pScalerContext:J

    invoke-virtual {v0, v1, v2, p1}, Lsun/font/FileFont;->getGlyphImage(JI)J

    move-result-wide p0

    return-wide p0
.end method

.method public getGlyphImageFromX11(I)J
    .locals 6

    iget-object v0, p0, Lsun/font/FileFontStrike;->fileFont:Lsun/font/FileFont;

    iget-object v0, v0, Lsun/font/FileFont;->glyphToCharMap:[C

    aget-char v0, v0, p1

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lsun/font/FileFontStrike;->nativeStrikes:[Lsun/font/NativeStrike;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lsun/font/FileFontStrike;->fileFont:Lsun/font/FileFont;

    iget-object v2, v2, Lsun/font/FileFont;->nativeFonts:[Lsun/font/NativeFont;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lsun/font/NativeFont;->getMapper()Lsun/font/CharToGlyphMapper;

    move-result-object v2

    invoke-virtual {v2, v0}, Lsun/font/CharToGlyphMapper;->charToGlyph(C)I

    move-result v3

    const v4, 0xffff

    and-int/2addr v3, v4

    invoke-virtual {v2}, Lsun/font/CharToGlyphMapper;->getMissingGlyphCode()I

    move-result v2

    if-eq v3, v2, :cond_0

    iget-object v2, p0, Lsun/font/FileFontStrike;->nativeStrikes:[Lsun/font/NativeStrike;

    aget-object v2, v2, v1

    invoke-virtual {v2, v3}, Lsun/font/NativeStrike;->getGlyphImagePtrNoCache(I)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-eqz v4, :cond_0

    return-wide v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lsun/font/FileFontStrike;->fileFont:Lsun/font/FileFont;

    iget-wide v1, p0, Lsun/font/PhysicalStrike;->pScalerContext:J

    invoke-virtual {v0, v1, v2, p1}, Lsun/font/FileFont;->getGlyphImage(JI)J

    move-result-wide p0

    return-wide p0
.end method

.method public getGlyphImagePtr(I)J
    .locals 6

    const v0, 0xfffe

    if-lt p1, v0, :cond_0

    sget-wide p0, Lsun/font/StrikeCache;->invisibleGlyphPtr:J

    return-wide p0

    :cond_0
    invoke-virtual {p0, p1}, Lsun/font/FileFontStrike;->getCachedGlyphPtr(I)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    return-wide v0

    :cond_1
    iget-boolean v4, p0, Lsun/font/FileFontStrike;->useNatives:Z

    if-eqz v4, :cond_2

    invoke-virtual {p0, p1}, Lsun/font/FileFontStrike;->getGlyphImageFromNative(I)J

    move-result-wide v0

    cmp-long v4, v0, v2

    if-nez v4, :cond_2

    invoke-static {}, Lsun/font/FontUtilities;->isLogging()Z

    move-result v4

    if-eqz v4, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Strike for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lsun/font/FileFontStrike;->fileFont:Lsun/font/FileFont;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " at size = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lsun/font/FileFontStrike;->intPtSize:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " couldn\'t get native glyph for code = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lsun/font/FontUtilities;->logInfo(Ljava/lang/String;)V

    :cond_2
    cmp-long v2, v0, v2

    if-nez v2, :cond_3

    iget-object v0, p0, Lsun/font/FileFontStrike;->fileFont:Lsun/font/FileFont;

    iget-wide v1, p0, Lsun/font/PhysicalStrike;->pScalerContext:J

    invoke-virtual {v0, v1, v2, p1}, Lsun/font/FileFont;->getGlyphImage(JI)J

    move-result-wide v0

    :cond_3
    invoke-direct {p0, p1, v0, v1}, Lsun/font/FileFontStrike;->setCachedGlyphPtr(IJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public getGlyphImagePtrs([I[JI)V
    .locals 6

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_4

    aget v1, p1, v0

    const v2, 0xfffe

    if-lt v1, v2, :cond_0

    sget-wide v1, Lsun/font/StrikeCache;->invisibleGlyphPtr:J

    aput-wide v1, p2, v0

    goto :goto_2

    :cond_0
    invoke-virtual {p0, v1}, Lsun/font/FileFontStrike;->getCachedGlyphPtr(I)J

    move-result-wide v2

    aput-wide v2, p2, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    goto :goto_2

    :cond_1
    iget-boolean v2, p0, Lsun/font/FileFontStrike;->useNatives:Z

    if-eqz v2, :cond_2

    invoke-virtual {p0, v1}, Lsun/font/FileFontStrike;->getGlyphImageFromNative(I)J

    move-result-wide v2

    goto :goto_1

    :cond_2
    move-wide v2, v4

    :goto_1
    cmp-long v4, v2, v4

    if-nez v4, :cond_3

    iget-object v2, p0, Lsun/font/FileFontStrike;->fileFont:Lsun/font/FileFont;

    iget-wide v3, p0, Lsun/font/PhysicalStrike;->pScalerContext:J

    invoke-virtual {v2, v3, v4, v1}, Lsun/font/FileFont;->getGlyphImage(JI)J

    move-result-wide v2

    :cond_3
    invoke-direct {p0, v1, v2, v3}, Lsun/font/FileFontStrike;->setCachedGlyphPtr(IJ)J

    move-result-wide v1

    aput-wide v1, p2, v0

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method public getGlyphMetrics(I)Ljava/awt/geom/Point2D$Float;
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, p1, v0}, Lsun/font/FileFontStrike;->getGlyphMetrics(IZ)Ljava/awt/geom/Point2D$Float;

    move-result-object p0

    return-object p0
.end method

.method public getGlyphOutline(IFF)Ljava/awt/geom/GeneralPath;
    .locals 8

    iget-object v0, p0, Lsun/font/FileFontStrike;->outlineMapRef:Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/awt/geom/GeneralPath;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :cond_1
    :goto_0
    if-nez v1, :cond_3

    iget-object v2, p0, Lsun/font/FileFontStrike;->fileFont:Lsun/font/FileFont;

    iget-wide v3, p0, Lsun/font/PhysicalStrike;->pScalerContext:J

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v5, p1

    invoke-virtual/range {v2 .. v7}, Lsun/font/FileFont;->getGlyphOutline(JIFF)Ljava/awt/geom/GeneralPath;

    move-result-object v1

    if-nez v0, :cond_2

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Lsun/font/FileFontStrike;->outlineMapRef:Ljava/lang/ref/WeakReference;

    :cond_2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    invoke-virtual {v1}, Ljava/awt/geom/Path2D$Float;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/awt/geom/GeneralPath;

    const/4 p1, 0x0

    cmpl-float v0, p2, p1

    if-nez v0, :cond_4

    cmpl-float p1, p3, p1

    if-eqz p1, :cond_5

    :cond_4
    float-to-double p1, p2

    float-to-double v0, p3

    invoke-static {p1, p2, v0, v1}, Ljava/awt/geom/AffineTransform;->getTranslateInstance(DD)Ljava/awt/geom/AffineTransform;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/awt/geom/Path2D$Float;->transform(Ljava/awt/geom/AffineTransform;)V

    :cond_5
    return-object p0
.end method

.method public getGlyphOutlineBounds(I)Ljava/awt/geom/Rectangle2D$Float;
    .locals 4

    iget-object v0, p0, Lsun/font/FileFontStrike;->boundsMap:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lsun/font/FileFontStrike;->boundsMap:Ljava/util/concurrent/ConcurrentHashMap;

    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lsun/font/FileFontStrike;->boundsMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/awt/geom/Rectangle2D$Float;

    if-nez v1, :cond_1

    iget-object v1, p0, Lsun/font/FileFontStrike;->fileFont:Lsun/font/FileFont;

    iget-wide v2, p0, Lsun/font/PhysicalStrike;->pScalerContext:J

    invoke-virtual {v1, v2, v3, p1}, Lsun/font/FileFont;->getGlyphOutlineBounds(JI)Ljava/awt/geom/Rectangle2D$Float;

    move-result-object v1

    iget-object p0, p0, Lsun/font/FileFontStrike;->boundsMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public getGlyphVectorOutline([IFF)Ljava/awt/geom/GeneralPath;
    .locals 7

    iget-object v0, p0, Lsun/font/FileFontStrike;->fileFont:Lsun/font/FileFont;

    iget-wide v1, p0, Lsun/font/PhysicalStrike;->pScalerContext:J

    array-length v4, p1

    move-object v3, p1

    move v5, p2

    move v6, p3

    invoke-virtual/range {v0 .. v6}, Lsun/font/FileFont;->getGlyphVectorOutline(J[IIFF)Ljava/awt/geom/GeneralPath;

    move-result-object p0

    return-object p0
.end method

.method public getNumGlyphs()I
    .locals 0

    iget-object p0, p0, Lsun/font/FileFontStrike;->fileFont:Lsun/font/FileFont;

    invoke-virtual {p0}, Lsun/font/Font2D;->getNumGlyphs()I

    move-result p0

    return p0
.end method

.method public getOutlineBounds(I)Ljava/awt/geom/Rectangle2D;
    .locals 3

    iget-object v0, p0, Lsun/font/FileFontStrike;->fileFont:Lsun/font/FileFont;

    iget-wide v1, p0, Lsun/font/PhysicalStrike;->pScalerContext:J

    invoke-virtual {v0, v1, v2, p1}, Lsun/font/FileFont;->getGlyphOutlineBounds(JI)Ljava/awt/geom/Rectangle2D$Float;

    move-result-object p0

    return-object p0
.end method

.method public getSlot0GlyphImagePtrs([I[JI)I
    .locals 7

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v0, p3, :cond_5

    aget v2, p1, v0

    ushr-int/lit8 v3, v2, 0x18

    if-eqz v3, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    const v3, 0xfffe

    if-lt v2, v3, :cond_1

    sget-wide v2, Lsun/font/StrikeCache;->invisibleGlyphPtr:J

    aput-wide v2, p2, v0

    goto :goto_2

    :cond_1
    invoke-virtual {p0, v2}, Lsun/font/FileFontStrike;->getCachedGlyphPtr(I)J

    move-result-wide v3

    aput-wide v3, p2, v0

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_2

    goto :goto_2

    :cond_2
    iget-boolean v3, p0, Lsun/font/FileFontStrike;->useNatives:Z

    if-eqz v3, :cond_3

    invoke-virtual {p0, v2}, Lsun/font/FileFontStrike;->getGlyphImageFromNative(I)J

    move-result-wide v3

    goto :goto_1

    :cond_3
    move-wide v3, v5

    :goto_1
    cmp-long v5, v3, v5

    if-nez v5, :cond_4

    iget-object v3, p0, Lsun/font/FileFontStrike;->fileFont:Lsun/font/FileFont;

    iget-wide v4, p0, Lsun/font/PhysicalStrike;->pScalerContext:J

    invoke-virtual {v3, v4, v5, v2}, Lsun/font/FileFont;->getGlyphImage(JI)J

    move-result-wide v3

    :cond_4
    invoke-direct {p0, v2, v3, v4}, Lsun/font/FileFontStrike;->setCachedGlyphPtr(IJ)J

    move-result-wide v2

    aput-wide v2, p2, v0

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    return v1
.end method
