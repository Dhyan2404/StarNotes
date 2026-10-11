.class public abstract Lsun/font/PhysicalStrike;
.super Lsun/font/FontStrike;
.source "SourceFile"


# static fields
.field static final INTMASK:J = 0xffffffffL

.field protected static final complexTX:I = 0x7c

.field static longAddresses:Z


# instance fields
.field protected getImageWithAdvance:Z

.field glyphPointMapCache:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Ljava/awt/geom/Point2D$Float;",
            ">;"
        }
    .end annotation
.end field

.field protected intGlyphImages:[I

.field protected longGlyphImages:[J

.field protected mapper:Lsun/font/CharToGlyphMapper;

.field protected pScalerContext:J

.field private physicalFont:Lsun/font/PhysicalFont;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    sget v0, Lsun/font/StrikeCache;->nativeAddressSize:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    sput-boolean v0, Lsun/font/PhysicalStrike;->longAddresses:Z

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unexpected address size"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 v0, 0x0

    sput-boolean v0, Lsun/font/PhysicalStrike;->longAddresses:Z

    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Lsun/font/FontStrike;-><init>()V

    return-void
.end method

.method public constructor <init>(Lsun/font/PhysicalFont;Lsun/font/FontStrikeDesc;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lsun/font/FontStrike;-><init>()V

    .line 2
    iput-object p1, p0, Lsun/font/PhysicalStrike;->physicalFont:Lsun/font/PhysicalFont;

    .line 3
    iput-object p2, p0, Lsun/font/FontStrike;->desc:Lsun/font/FontStrikeDesc;

    return-void
.end method


# virtual methods
.method public adjustPoint(Ljava/awt/geom/Point2D$Float;)V
    .locals 0

    return-void
.end method

.method public getCharMetrics(C)Ljava/awt/geom/Point2D$Float;
    .locals 1

    iget-object v0, p0, Lsun/font/PhysicalStrike;->physicalFont:Lsun/font/PhysicalFont;

    invoke-virtual {v0}, Lsun/font/Font2D;->getMapper()Lsun/font/CharToGlyphMapper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lsun/font/CharToGlyphMapper;->charToGlyph(C)I

    move-result p1

    invoke-virtual {p0, p1}, Lsun/font/FontStrike;->getGlyphMetrics(I)Ljava/awt/geom/Point2D$Float;

    move-result-object p0

    return-object p0
.end method

.method public getCodePointAdvance(I)F
    .locals 1

    iget-object v0, p0, Lsun/font/PhysicalStrike;->physicalFont:Lsun/font/PhysicalFont;

    invoke-virtual {v0}, Lsun/font/Font2D;->getMapper()Lsun/font/CharToGlyphMapper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lsun/font/CharToGlyphMapper;->charToGlyph(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lsun/font/FontStrike;->getGlyphAdvance(I)F

    move-result p0

    return p0
.end method

.method public getFontMetrics()Lsun/font/StrikeMetrics;
    .locals 3

    iget-object v0, p0, Lsun/font/FontStrike;->strikeMetrics:Lsun/font/StrikeMetrics;

    if-nez v0, :cond_0

    iget-object v0, p0, Lsun/font/PhysicalStrike;->physicalFont:Lsun/font/PhysicalFont;

    iget-wide v1, p0, Lsun/font/PhysicalStrike;->pScalerContext:J

    invoke-virtual {v0, v1, v2}, Lsun/font/PhysicalFont;->getFontMetrics(J)Lsun/font/StrikeMetrics;

    move-result-object v0

    iput-object v0, p0, Lsun/font/FontStrike;->strikeMetrics:Lsun/font/StrikeMetrics;

    :cond_0
    iget-object p0, p0, Lsun/font/FontStrike;->strikeMetrics:Lsun/font/StrikeMetrics;

    return-object p0
.end method

.method public getGlyphPoint(II)Ljava/awt/geom/Point2D$Float;
    .locals 4

    shl-int/lit8 v0, p1, 0x10

    or-int/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lsun/font/PhysicalStrike;->glyphPointMapCache:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v1, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lsun/font/PhysicalStrike;->glyphPointMapCache:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lsun/font/PhysicalStrike;->glyphPointMapCache:Ljava/util/concurrent/ConcurrentHashMap;

    :cond_0
    monitor-exit p0

    const/4 v1, 0x0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/awt/geom/Point2D$Float;

    :goto_0
    if-nez v1, :cond_2

    iget-object v1, p0, Lsun/font/PhysicalStrike;->physicalFont:Lsun/font/PhysicalFont;

    iget-wide v2, p0, Lsun/font/PhysicalStrike;->pScalerContext:J

    invoke-virtual {v1, v2, v3, p1, p2}, Lsun/font/PhysicalFont;->getGlyphPoint(JII)Ljava/awt/geom/Point2D$Float;

    move-result-object v1

    invoke-virtual {p0, v1}, Lsun/font/PhysicalStrike;->adjustPoint(Ljava/awt/geom/Point2D$Float;)V

    iget-object p0, p0, Lsun/font/PhysicalStrike;->glyphPointMapCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v1
.end method

.method public getMapper()Lsun/font/CharToGlyphMapper;
    .locals 0

    iget-object p0, p0, Lsun/font/PhysicalStrike;->mapper:Lsun/font/CharToGlyphMapper;

    return-object p0
.end method

.method public getNumGlyphs()I
    .locals 0

    iget-object p0, p0, Lsun/font/PhysicalStrike;->physicalFont:Lsun/font/PhysicalFont;

    invoke-virtual {p0}, Lsun/font/Font2D;->getNumGlyphs()I

    move-result p0

    return p0
.end method

.method public getSlot0GlyphImagePtrs([I[JI)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
