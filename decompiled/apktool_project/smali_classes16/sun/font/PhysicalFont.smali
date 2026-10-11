.class public abstract Lsun/font/PhysicalFont;
.super Lsun/font/Font2D;
.source "SourceFile"


# instance fields
.field protected nativeNames:Ljava/lang/Object;

.field protected platName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 5
    invoke-direct {p0}, Lsun/font/Font2D;-><init>()V

    .line 6
    new-instance v0, Lsun/font/Font2DHandle;

    invoke-direct {v0, p0}, Lsun/font/Font2DHandle;-><init>(Lsun/font/Font2D;)V

    iput-object v0, p0, Lsun/font/Font2D;->handle:Lsun/font/Font2DHandle;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/awt/FontFormatException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lsun/font/Font2D;-><init>()V

    .line 2
    new-instance v0, Lsun/font/Font2DHandle;

    invoke-direct {v0, p0}, Lsun/font/Font2DHandle;-><init>(Lsun/font/Font2D;)V

    iput-object v0, p0, Lsun/font/Font2D;->handle:Lsun/font/Font2DHandle;

    .line 3
    iput-object p1, p0, Lsun/font/PhysicalFont;->platName:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lsun/font/PhysicalFont;->nativeNames:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_0

    check-cast p1, Lsun/font/Font2D;

    iget-object p1, p1, Lsun/font/Font2D;->fullName:Ljava/lang/String;

    iget-object p0, p0, Lsun/font/Font2D;->fullName:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public abstract getFontMetrics(J)Lsun/font/StrikeMetrics;
.end method

.method public abstract getGlyphAdvance(JI)F
.end method

.method public abstract getGlyphImage(JI)J
.end method

.method public abstract getGlyphMetrics(JILjava/awt/geom/Point2D$Float;)V
.end method

.method public abstract getGlyphOutline(JIFF)Ljava/awt/geom/GeneralPath;
.end method

.method public abstract getGlyphOutlineBounds(JI)Ljava/awt/geom/Rectangle2D$Float;
.end method

.method public getGlyphPoint(JII)Ljava/awt/geom/Point2D$Float;
    .locals 0

    new-instance p0, Ljava/awt/geom/Point2D$Float;

    invoke-direct {p0}, Ljava/awt/geom/Point2D$Float;-><init>()V

    return-object p0
.end method

.method public abstract getGlyphVectorOutline(J[IIFF)Ljava/awt/geom/GeneralPath;
.end method

.method public hashCode()I
    .locals 0

    iget-object p0, p0, Lsun/font/Font2D;->fullName:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    return p0
.end method
