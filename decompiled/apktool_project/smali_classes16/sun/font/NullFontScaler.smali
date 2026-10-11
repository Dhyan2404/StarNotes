.class Lsun/font/NullFontScaler;
.super Lsun/font/FontScaler;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lsun/font/FontScaler;-><init>()V

    return-void
.end method

.method public constructor <init>(Lsun/font/Font2D;IZI)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lsun/font/FontScaler;-><init>()V

    return-void
.end method

.method public static getNullScalerContext()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method


# virtual methods
.method public createScalerContext([DIIFF)J
    .locals 0

    invoke-static {}, Lsun/font/NullFontScaler;->getNullScalerContext()J

    move-result-wide p0

    return-wide p0
.end method

.method public getFontMetrics(J)Lsun/font/StrikeMetrics;
    .locals 11

    new-instance p0, Lsun/font/StrikeMetrics;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v10}, Lsun/font/StrikeMetrics;-><init>(FFFFFFFFFF)V

    return-object p0
.end method

.method public getGlyphAdvance(JI)F
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getGlyphCode(C)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/font/FontScalerException;
        }
    .end annotation

    const/4 p0, 0x0

    return p0
.end method

.method public getGlyphImage(JI)J
    .locals 0

    int-to-long p0, p3

    return-wide p0
.end method

.method public getGlyphMetrics(JILjava/awt/geom/Point2D$Float;)V
    .locals 0

    const/4 p0, 0x0

    iput p0, p4, Ljava/awt/geom/Point2D$Float;->x:F

    iput p0, p4, Ljava/awt/geom/Point2D$Float;->y:F

    return-void
.end method

.method public getGlyphOutline(JIFF)Ljava/awt/geom/GeneralPath;
    .locals 0

    new-instance p0, Ljava/awt/geom/GeneralPath;

    invoke-direct {p0}, Ljava/awt/geom/GeneralPath;-><init>()V

    return-object p0
.end method

.method public getGlyphOutlineBounds(JI)Ljava/awt/geom/Rectangle2D$Float;
    .locals 0

    new-instance p0, Ljava/awt/geom/Rectangle2D$Float;

    const/4 p1, 0x0

    invoke-direct {p0, p1, p1, p1, p1}, Ljava/awt/geom/Rectangle2D$Float;-><init>(FFFF)V

    return-object p0
.end method

.method public getGlyphPoint(JII)Ljava/awt/geom/Point2D$Float;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getGlyphVectorOutline(J[IIFF)Ljava/awt/geom/GeneralPath;
    .locals 0

    new-instance p0, Ljava/awt/geom/GeneralPath;

    invoke-direct {p0}, Ljava/awt/geom/GeneralPath;-><init>()V

    return-object p0
.end method

.method public getMissingGlyphCode()I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/font/FontScalerException;
        }
    .end annotation

    const/4 p0, 0x0

    return p0
.end method

.method public getNumGlyphs()I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/font/FontScalerException;
        }
    .end annotation

    const/4 p0, 0x1

    return p0
.end method

.method public getUnitsPerEm()J
    .locals 2

    const-wide/16 v0, 0x800

    return-wide v0
.end method

.method public invalidateScalerContext(J)V
    .locals 0

    return-void
.end method
