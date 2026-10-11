.class public final Lsun/font/GlyphList;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final DEFAULT_LENGTH:I = 0x20

.field private static final MAXGRAYLENGTH:I = 0x2000

.field private static final MINGRAYLENGTH:I = 0x400

.field private static inUse:Z

.field private static reusableGL:Lsun/font/GlyphList;


# instance fields
.field chData:[C

.field glyphData:[I

.field glyphindex:I

.field gposx:F

.field gposy:F

.field graybits:[B

.field images:[J

.field lcdRGBOrder:Z

.field lcdSubPixPos:Z

.field len:I

.field maxLen:I

.field maxPosLen:I

.field metrics:[I

.field positions:[F

.field strikelist:Ljava/lang/Object;

.field usePositions:Z

.field x:F

.field y:F


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lsun/font/GlyphList;

    invoke-direct {v0}, Lsun/font/GlyphList;-><init>()V

    sput-object v0, Lsun/font/GlyphList;->reusableGL:Lsun/font/GlyphList;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lsun/font/GlyphList;->len:I

    iput v0, p0, Lsun/font/GlyphList;->maxLen:I

    iput v0, p0, Lsun/font/GlyphList;->maxPosLen:I

    return-void
.end method

.method private fillBounds([I)V
    .locals 9

    sget v0, Lsun/font/StrikeCache;->topLeftXOffset:I

    sget v0, Lsun/font/StrikeCache;->topLeftYOffset:I

    sget v0, Lsun/font/StrikeCache;->widthOffset:I

    sget v0, Lsun/font/StrikeCache;->heightOffset:I

    sget v0, Lsun/font/StrikeCache;->xAdvanceOffset:I

    sget v0, Lsun/font/StrikeCache;->yAdvanceOffset:I

    iget v0, p0, Lsun/font/GlyphList;->len:I

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v0, :cond_0

    aput v4, p1, v1

    aput v4, p1, v2

    aput v4, p1, v3

    aput v4, p1, v4

    return-void

    :cond_0
    move v0, v4

    :goto_0
    iget v5, p0, Lsun/font/GlyphList;->len:I

    if-ge v0, v5, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/high16 p0, 0x7f800000    # Float.POSITIVE_INFINITY

    float-to-double v5, p0

    invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D

    move-result-wide v7

    double-to-int p0, v7

    aput p0, p1, v4

    invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int p0, v4

    aput p0, p1, v3

    const/high16 p0, -0x800000    # Float.NEGATIVE_INFINITY

    float-to-double v3, p0

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v5

    double-to-int p0, v5

    aput p0, p1, v2

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int p0, v2

    aput p0, p1, v1

    return-void
.end method

.method public static getInstance()Lsun/font/GlyphList;
    .locals 2

    sget-boolean v0, Lsun/font/GlyphList;->inUse:Z

    if-eqz v0, :cond_0

    new-instance v0, Lsun/font/GlyphList;

    invoke-direct {v0}, Lsun/font/GlyphList;-><init>()V

    return-object v0

    :cond_0
    const-class v0, Lsun/font/GlyphList;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lsun/font/GlyphList;->inUse:Z

    if-eqz v1, :cond_1

    new-instance v1, Lsun/font/GlyphList;

    invoke-direct {v1}, Lsun/font/GlyphList;-><init>()V

    monitor-exit v0

    return-object v1

    :cond_1
    const/4 v1, 0x1

    sput-boolean v1, Lsun/font/GlyphList;->inUse:Z

    sget-object v1, Lsun/font/GlyphList;->reusableGL:Lsun/font/GlyphList;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private final mapChars(Lsun/java2d/loops/FontInfo;I)Z
    .locals 3

    iget-object v0, p1, Lsun/java2d/loops/FontInfo;->font2D:Lsun/font/Font2D;

    invoke-virtual {v0}, Lsun/font/Font2D;->getMapper()Lsun/font/CharToGlyphMapper;

    move-result-object v0

    iget-object v1, p0, Lsun/font/GlyphList;->chData:[C

    iget-object v2, p0, Lsun/font/GlyphList;->glyphData:[I

    invoke-virtual {v0, p2, v1, v2}, Lsun/font/CharToGlyphMapper;->charsToGlyphsNS(I[C[I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p1, p1, Lsun/java2d/loops/FontInfo;->fontStrike:Lsun/font/FontStrike;

    iget-object v0, p0, Lsun/font/GlyphList;->glyphData:[I

    iget-object v1, p0, Lsun/font/GlyphList;->images:[J

    invoke-virtual {p1, v0, v1, p2}, Lsun/font/FontStrike;->getGlyphImagePtrs([I[JI)V

    const/4 p1, -0x1

    iput p1, p0, Lsun/font/GlyphList;->glyphindex:I

    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public dispose()V
    .locals 3

    sget-object v0, Lsun/font/GlyphList;->reusableGL:Lsun/font/GlyphList;

    if-ne p0, v0, :cond_1

    iget-object v0, p0, Lsun/font/GlyphList;->graybits:[B

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    array-length v0, v0

    const/16 v2, 0x2000

    if-le v0, v2, :cond_0

    iput-object v1, p0, Lsun/font/GlyphList;->graybits:[B

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun/font/GlyphList;->usePositions:Z

    iput-object v1, p0, Lsun/font/GlyphList;->strikelist:Ljava/lang/Object;

    sput-boolean v0, Lsun/font/GlyphList;->inUse:Z

    :cond_1
    return-void
.end method

.method public ensureCapacity(I)V
    .locals 1

    if-gez p1, :cond_0

    const/4 p1, 0x0

    :cond_0
    iget-boolean v0, p0, Lsun/font/GlyphList;->usePositions:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lsun/font/GlyphList;->maxPosLen:I

    if-le p1, v0, :cond_1

    mul-int/lit8 v0, p1, 0x2

    add-int/lit8 v0, v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Lsun/font/GlyphList;->positions:[F

    iput p1, p0, Lsun/font/GlyphList;->maxPosLen:I

    :cond_1
    iget v0, p0, Lsun/font/GlyphList;->maxLen:I

    if-eqz v0, :cond_2

    if-le p1, v0, :cond_3

    :cond_2
    new-array v0, p1, [I

    iput-object v0, p0, Lsun/font/GlyphList;->glyphData:[I

    new-array v0, p1, [C

    iput-object v0, p0, Lsun/font/GlyphList;->chData:[C

    new-array v0, p1, [J

    iput-object v0, p0, Lsun/font/GlyphList;->images:[J

    iput p1, p0, Lsun/font/GlyphList;->maxLen:I

    :cond_3
    return-void
.end method

.method public getBounds()[I
    .locals 2

    iget v0, p0, Lsun/font/GlyphList;->glyphindex:I

    if-gez v0, :cond_1

    iget-object v0, p0, Lsun/font/GlyphList;->metrics:[I

    if-nez v0, :cond_0

    const/4 v0, 0x5

    new-array v0, v0, [I

    iput-object v0, p0, Lsun/font/GlyphList;->metrics:[I

    :cond_0
    iget v0, p0, Lsun/font/GlyphList;->x:F

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    iput v0, p0, Lsun/font/GlyphList;->gposx:F

    iget v0, p0, Lsun/font/GlyphList;->y:F

    add-float/2addr v0, v1

    iput v0, p0, Lsun/font/GlyphList;->gposy:F

    iget-object v0, p0, Lsun/font/GlyphList;->metrics:[I

    invoke-direct {p0, v0}, Lsun/font/GlyphList;->fillBounds([I)V

    iget-object p0, p0, Lsun/font/GlyphList;->metrics:[I

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/InternalError;

    const-string v0, "calling getBounds after setGlyphIndex"

    invoke-direct {p0, v0}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getGrayBits()[B
    .locals 3

    iget-object v0, p0, Lsun/font/GlyphList;->metrics:[I

    const/4 v1, 0x4

    aget v1, v0, v1

    const/4 v2, 0x3

    aget v0, v0, v2

    mul-int/2addr v1, v0

    iget-object v0, p0, Lsun/font/GlyphList;->graybits:[B

    if-nez v0, :cond_0

    const/16 v0, 0x400

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lsun/font/GlyphList;->graybits:[B

    goto :goto_0

    :cond_0
    array-length v0, v0

    if-le v1, v0, :cond_1

    new-array v0, v1, [B

    iput-object v0, p0, Lsun/font/GlyphList;->graybits:[B

    :cond_1
    :goto_0
    iget-object p0, p0, Lsun/font/GlyphList;->graybits:[B

    return-object p0
.end method

.method public getImages()[J
    .locals 0

    iget-object p0, p0, Lsun/font/GlyphList;->images:[J

    return-object p0
.end method

.method public getMetrics()[I
    .locals 0

    iget-object p0, p0, Lsun/font/GlyphList;->metrics:[I

    return-object p0
.end method

.method public getNumGlyphs()I
    .locals 0

    iget p0, p0, Lsun/font/GlyphList;->len:I

    return p0
.end method

.method public getPositions()[F
    .locals 0

    iget-object p0, p0, Lsun/font/GlyphList;->positions:[F

    return-object p0
.end method

.method public getStrike()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lsun/font/GlyphList;->strikelist:Ljava/lang/Object;

    return-object p0
.end method

.method public getX()F
    .locals 0

    iget p0, p0, Lsun/font/GlyphList;->x:F

    return p0
.end method

.method public getY()F
    .locals 0

    iget p0, p0, Lsun/font/GlyphList;->y:F

    return p0
.end method

.method public isRGBOrder()Z
    .locals 0

    iget-boolean p0, p0, Lsun/font/GlyphList;->lcdRGBOrder:Z

    return p0
.end method

.method public isSubPixPos()Z
    .locals 0

    iget-boolean p0, p0, Lsun/font/GlyphList;->lcdSubPixPos:Z

    return p0
.end method

.method public setFromChars(Lsun/java2d/loops/FontInfo;[CIIFF)Z
    .locals 0

    iput p5, p0, Lsun/font/GlyphList;->x:F

    iput p6, p0, Lsun/font/GlyphList;->y:F

    iget-object p5, p1, Lsun/java2d/loops/FontInfo;->fontStrike:Lsun/font/FontStrike;

    iput-object p5, p0, Lsun/font/GlyphList;->strikelist:Ljava/lang/Object;

    iget-boolean p5, p1, Lsun/java2d/loops/FontInfo;->lcdRGBOrder:Z

    iput-boolean p5, p0, Lsun/font/GlyphList;->lcdRGBOrder:Z

    iget-boolean p5, p1, Lsun/java2d/loops/FontInfo;->lcdSubPixPos:Z

    iput-boolean p5, p0, Lsun/font/GlyphList;->lcdSubPixPos:Z

    iput p4, p0, Lsun/font/GlyphList;->len:I

    const/4 p5, 0x0

    if-gez p4, :cond_0

    iput p5, p0, Lsun/font/GlyphList;->len:I

    goto :goto_0

    :cond_0
    iput p4, p0, Lsun/font/GlyphList;->len:I

    :goto_0
    iget p4, p0, Lsun/font/GlyphList;->len:I

    invoke-virtual {p0, p4}, Lsun/font/GlyphList;->ensureCapacity(I)V

    iget-object p4, p0, Lsun/font/GlyphList;->chData:[C

    iget p6, p0, Lsun/font/GlyphList;->len:I

    invoke-static {p2, p3, p4, p5, p6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p2, p0, Lsun/font/GlyphList;->len:I

    invoke-direct {p0, p1, p2}, Lsun/font/GlyphList;->mapChars(Lsun/java2d/loops/FontInfo;I)Z

    move-result p0

    return p0
.end method

.method public setFromGlyphVector(Lsun/java2d/loops/FontInfo;Ljava/awt/font/GlyphVector;FF)V
    .locals 0

    iput p3, p0, Lsun/font/GlyphList;->x:F

    iput p4, p0, Lsun/font/GlyphList;->y:F

    iget-boolean p3, p1, Lsun/java2d/loops/FontInfo;->lcdRGBOrder:Z

    iput-boolean p3, p0, Lsun/font/GlyphList;->lcdRGBOrder:Z

    iget-boolean p3, p1, Lsun/java2d/loops/FontInfo;->lcdSubPixPos:Z

    iput-boolean p3, p0, Lsun/font/GlyphList;->lcdSubPixPos:Z

    invoke-static {p2, p1}, Lsun/font/StandardGlyphVector;->getStandardGV(Ljava/awt/font/GlyphVector;Lsun/java2d/loops/FontInfo;)Lsun/font/StandardGlyphVector;

    move-result-object p2

    iget-object p3, p1, Lsun/java2d/loops/FontInfo;->devTx:[D

    invoke-virtual {p2, p3}, Lsun/font/StandardGlyphVector;->needsPositions([D)Z

    move-result p3

    iput-boolean p3, p0, Lsun/font/GlyphList;->usePositions:Z

    invoke-virtual {p2}, Lsun/font/StandardGlyphVector;->getNumGlyphs()I

    move-result p3

    iput p3, p0, Lsun/font/GlyphList;->len:I

    invoke-virtual {p0, p3}, Lsun/font/GlyphList;->ensureCapacity(I)V

    iget-object p3, p0, Lsun/font/GlyphList;->images:[J

    iget-boolean p4, p0, Lsun/font/GlyphList;->usePositions:Z

    if-eqz p4, :cond_0

    iget-object p4, p0, Lsun/font/GlyphList;->positions:[F

    goto :goto_0

    :cond_0
    const/4 p4, 0x0

    :goto_0
    iget-object p1, p1, Lsun/java2d/loops/FontInfo;->devTx:[D

    invoke-virtual {p2, p3, p4, p1}, Lsun/font/StandardGlyphVector;->setupGlyphImages([J[F[D)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lsun/font/GlyphList;->strikelist:Ljava/lang/Object;

    const/4 p1, -0x1

    iput p1, p0, Lsun/font/GlyphList;->glyphindex:I

    return-void
.end method

.method public setFromString(Lsun/java2d/loops/FontInfo;Ljava/lang/String;FF)Z
    .locals 1

    iput p3, p0, Lsun/font/GlyphList;->x:F

    iput p4, p0, Lsun/font/GlyphList;->y:F

    iget-object p3, p1, Lsun/java2d/loops/FontInfo;->fontStrike:Lsun/font/FontStrike;

    iput-object p3, p0, Lsun/font/GlyphList;->strikelist:Ljava/lang/Object;

    iget-boolean p3, p1, Lsun/java2d/loops/FontInfo;->lcdRGBOrder:Z

    iput-boolean p3, p0, Lsun/font/GlyphList;->lcdRGBOrder:Z

    iget-boolean p3, p1, Lsun/java2d/loops/FontInfo;->lcdSubPixPos:Z

    iput-boolean p3, p0, Lsun/font/GlyphList;->lcdSubPixPos:Z

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p3

    iput p3, p0, Lsun/font/GlyphList;->len:I

    invoke-virtual {p0, p3}, Lsun/font/GlyphList;->ensureCapacity(I)V

    iget p3, p0, Lsun/font/GlyphList;->len:I

    iget-object p4, p0, Lsun/font/GlyphList;->chData:[C

    const/4 v0, 0x0

    invoke-virtual {p2, v0, p3, p4, v0}, Ljava/lang/String;->getChars(II[CI)V

    iget p2, p0, Lsun/font/GlyphList;->len:I

    invoke-direct {p0, p1, p2}, Lsun/font/GlyphList;->mapChars(Lsun/java2d/loops/FontInfo;I)Z

    move-result p0

    return p0
.end method

.method public setGlyphIndex(I)V
    .locals 0

    iput p1, p0, Lsun/font/GlyphList;->glyphindex:I

    return-void
.end method

.method public usePositions()Z
    .locals 0

    iget-boolean p0, p0, Lsun/font/GlyphList;->usePositions:Z

    return p0
.end method
