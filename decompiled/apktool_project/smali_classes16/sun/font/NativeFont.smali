.class public Lsun/font/NativeFont;
.super Lsun/font/PhysicalFont;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/awt/FontFormatException;
        }
    .end annotation

    invoke-direct {p0}, Lsun/font/PhysicalFont;-><init>()V

    new-instance p0, Ljava/awt/FontFormatException;

    const-string p1, "NativeFont not used on Windows"

    invoke-direct {p0, p1}, Ljava/awt/FontFormatException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static fontExists(Ljava/lang/String;)Z
    .locals 0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static hasExternalBitmaps(Ljava/lang/String;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public createStrike(Lsun/font/FontStrikeDesc;)Lsun/font/FontStrike;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getDelegateFont()Lsun/font/PhysicalFont;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getFontMetrics(J)Lsun/font/StrikeMetrics;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getGlyphAdvance(JI)F
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getGlyphImage(JI)J
    .locals 0

    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public getGlyphMetrics(JILjava/awt/geom/Point2D$Float;)V
    .locals 0

    return-void
.end method

.method public getGlyphOutline(JIFF)Ljava/awt/geom/GeneralPath;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getGlyphOutlineBounds(JI)Ljava/awt/geom/Rectangle2D$Float;
    .locals 0

    new-instance p0, Ljava/awt/geom/Rectangle2D$Float;

    const/4 p1, 0x0

    invoke-direct {p0, p1, p1, p1, p1}, Ljava/awt/geom/Rectangle2D$Float;-><init>(FFFF)V

    return-object p0
.end method

.method public getGlyphVectorOutline(J[IIFF)Ljava/awt/geom/GeneralPath;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getMapper()Lsun/font/CharToGlyphMapper;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getMaxCharBounds(Ljava/awt/font/FontRenderContext;)Ljava/awt/geom/Rectangle2D;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method
