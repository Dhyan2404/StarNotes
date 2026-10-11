.class public Lsun/font/NativeStrike;
.super Lsun/font/PhysicalStrike;
.source "SourceFile"


# instance fields
.field nativeFont:Lsun/font/NativeFont;


# direct methods
.method public constructor <init>(Lsun/font/NativeFont;Lsun/font/FontStrikeDesc;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lsun/font/PhysicalStrike;-><init>(Lsun/font/PhysicalFont;Lsun/font/FontStrikeDesc;)V

    .line 2
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "NativeFont not used on Windows"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>(Lsun/font/NativeFont;Lsun/font/FontStrikeDesc;Z)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Lsun/font/PhysicalStrike;-><init>(Lsun/font/PhysicalFont;Lsun/font/FontStrikeDesc;)V

    .line 4
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "NativeFont not used on Windows"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public getGlyphAdvance(I)F
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getGlyphImageBounds(ILjava/awt/geom/Point2D$Float;Ljava/awt/Rectangle;)V
    .locals 0

    return-void
.end method

.method public getGlyphImagePtr(I)J
    .locals 0

    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public getGlyphImagePtrNoCache(I)J
    .locals 0

    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public getGlyphImagePtrs([I[JI)V
    .locals 0

    return-void
.end method

.method public getGlyphMetrics(I)Ljava/awt/geom/Point2D$Float;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getGlyphOutline(IFF)Ljava/awt/geom/GeneralPath;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getGlyphOutlineBounds(I)Ljava/awt/geom/Rectangle2D$Float;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getGlyphVectorOutline([IFF)Ljava/awt/geom/GeneralPath;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method
