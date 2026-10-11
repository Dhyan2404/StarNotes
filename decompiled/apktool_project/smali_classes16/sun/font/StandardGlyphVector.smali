.class public Lsun/font/StandardGlyphVector;
.super Ljava/awt/font/GlyphVector;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/font/StandardGlyphVector$ADL;,
        Lsun/font/StandardGlyphVector$GlyphStrike;,
        Lsun/font/StandardGlyphVector$GlyphTransformInfo;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final FLAG_USES_ALTERNATE_ORIENTATION:I = 0x200

.field public static final FLAG_USES_VERTICAL_BASELINE:I = 0x80

.field public static final FLAG_USES_VERTICAL_METRICS:I = 0x100

.field private static final UNINITIALIZED_FLAGS:I = -0x1


# instance fields
.field private charIndices:[I

.field private dtx:Ljava/awt/geom/AffineTransform;

.field private flags:I

.field private font:Ljava/awt/Font;

.field private font2D:Lsun/font/Font2D;

.field private frc:Ljava/awt/font/FontRenderContext;

.field private frctx:Ljava/awt/geom/AffineTransform;

.field private fsref:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference<",
            "Lsun/font/StandardGlyphVector$GlyphStrike;",
            ">;"
        }
    .end annotation
.end field

.field private ftx:Ljava/awt/geom/AffineTransform;

.field private glyphs:[I

.field private gti:Lsun/font/StandardGlyphVector$GlyphTransformInfo;

.field private invdtx:Ljava/awt/geom/AffineTransform;

.field private lbcacheRef:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference<",
            "[",
            "Ljava/awt/Shape;",
            ">;"
        }
    .end annotation
.end field

.field private positions:[F

.field private userGlyphs:[I

.field private vbcacheRef:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference<",
            "[",
            "Ljava/awt/Shape;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/awt/Font;Ljava/awt/font/FontRenderContext;[I[F[II)V
    .locals 6

    .line 7
    invoke-direct {p0}, Ljava/awt/font/GlyphVector;-><init>()V

    .line 8
    invoke-virtual/range {p0 .. p6}, Lsun/font/StandardGlyphVector;->initGlyphVector(Ljava/awt/Font;Ljava/awt/font/FontRenderContext;[I[F[II)V

    .line 9
    invoke-direct {p0, p1}, Lsun/font/StandardGlyphVector;->getTracking(Ljava/awt/Font;)F

    move-result p0

    const/4 p5, 0x0

    cmpl-float p6, p0, p5

    if-eqz p6, :cond_4

    .line 10
    invoke-virtual {p1}, Ljava/awt/Font;->getSize2D()F

    move-result p6

    mul-float/2addr p0, p6

    .line 11
    new-instance p6, Ljava/awt/geom/Point2D$Float;

    invoke-direct {p6, p0, p5}, Ljava/awt/geom/Point2D$Float;-><init>(FF)V

    .line 12
    invoke-virtual {p1}, Ljava/awt/Font;->isTransformed()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 13
    invoke-virtual {p1}, Ljava/awt/Font;->getTransform()Ljava/awt/geom/AffineTransform;

    move-result-object p0

    .line 14
    invoke-virtual {p0, p6, p6}, Ljava/awt/geom/AffineTransform;->deltaTransform(Ljava/awt/geom/Point2D;Ljava/awt/geom/Point2D;)Ljava/awt/geom/Point2D;

    .line 15
    :cond_0
    invoke-static {p1}, Lsun/font/FontUtilities;->getFont2D(Ljava/awt/Font;)Lsun/font/Font2D;

    move-result-object p0

    .line 16
    invoke-virtual {p0, p1, p2}, Lsun/font/Font2D;->getStrike(Ljava/awt/Font;Ljava/awt/font/FontRenderContext;)Lsun/font/FontStrike;

    move-result-object p0

    const/4 p1, 0x2

    new-array p2, p1, [F

    .line 17
    iget v0, p6, Ljava/awt/geom/Point2D$Float;->x:F

    const/4 v1, 0x0

    aput v0, p2, v1

    iget p6, p6, Ljava/awt/geom/Point2D$Float;->y:F

    const/4 v0, 0x1

    aput p6, p2, v0

    move p6, v1

    :goto_0
    if-ge p6, p1, :cond_4

    .line 18
    aget v0, p2, p6

    cmpl-float v2, v0, p5

    if-eqz v2, :cond_3

    move v3, p5

    move v4, p6

    move v2, v1

    .line 19
    :goto_1
    array-length v5, p3

    if-ge v2, v5, :cond_2

    add-int/lit8 v5, v2, 0x1

    .line 20
    aget v2, p3, v2

    invoke-virtual {p0, v2}, Lsun/font/FontStrike;->getGlyphAdvance(I)F

    move-result v2

    cmpl-float v2, v2, p5

    if-eqz v2, :cond_1

    .line 21
    aget v2, p4, v4

    add-float/2addr v2, v3

    aput v2, p4, v4

    add-float/2addr v3, v0

    :cond_1
    add-int/lit8 v4, v4, 0x2

    move v2, v5

    goto :goto_1

    .line 22
    :cond_2
    array-length v0, p4

    sub-int/2addr v0, p1

    add-int/2addr v0, p6

    aget v2, p4, v0

    add-float/2addr v2, v3

    aput v2, p4, v0

    :cond_3
    add-int/lit8 p6, p6, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method public constructor <init>(Ljava/awt/Font;Ljava/lang/String;Ljava/awt/font/FontRenderContext;)V
    .locals 7

    .line 1
    invoke-direct {p0}, Ljava/awt/font/GlyphVector;-><init>()V

    .line 2
    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v6, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v5, p3

    invoke-direct/range {v0 .. v6}, Lsun/font/StandardGlyphVector;->init(Ljava/awt/Font;[CIILjava/awt/font/FontRenderContext;I)V

    return-void
.end method

.method public constructor <init>(Ljava/awt/Font;Ljava/text/CharacterIterator;Ljava/awt/font/FontRenderContext;)V
    .locals 9

    .line 23
    invoke-direct {p0}, Ljava/awt/font/GlyphVector;-><init>()V

    .line 24
    invoke-interface {p2}, Ljava/text/CharacterIterator;->getBeginIndex()I

    move-result v0

    .line 25
    invoke-interface {p2}, Ljava/text/CharacterIterator;->getEndIndex()I

    move-result v1

    sub-int v6, v1, v0

    new-array v4, v6, [C

    .line 26
    invoke-interface {p2}, Ljava/text/CharacterIterator;->first()C

    move-result v1

    :goto_0
    const v2, 0xffff

    if-eq v1, v2, :cond_0

    .line 27
    invoke-interface {p2}, Ljava/text/CharacterIterator;->getIndex()I

    move-result v2

    sub-int/2addr v2, v0

    aput-char v1, v4, v2

    .line 28
    invoke-interface {p2}, Ljava/text/CharacterIterator;->next()C

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    const/4 v8, -0x1

    move-object v2, p0

    move-object v3, p1

    move-object v7, p3

    .line 29
    invoke-direct/range {v2 .. v8}, Lsun/font/StandardGlyphVector;->init(Ljava/awt/Font;[CIILjava/awt/font/FontRenderContext;I)V

    return-void
.end method

.method public constructor <init>(Ljava/awt/Font;[CIILjava/awt/font/FontRenderContext;)V
    .locals 7

    .line 5
    invoke-direct {p0}, Ljava/awt/font/GlyphVector;-><init>()V

    const/4 v6, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    .line 6
    invoke-direct/range {v0 .. v6}, Lsun/font/StandardGlyphVector;->init(Ljava/awt/Font;[CIILjava/awt/font/FontRenderContext;I)V

    return-void
.end method

.method public constructor <init>(Ljava/awt/Font;[CLjava/awt/font/FontRenderContext;)V
    .locals 7

    .line 3
    invoke-direct {p0}, Ljava/awt/font/GlyphVector;-><init>()V

    const/4 v3, 0x0

    .line 4
    array-length v4, p2

    const/4 v6, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v6}, Lsun/font/StandardGlyphVector;->init(Ljava/awt/Font;[CIILjava/awt/font/FontRenderContext;I)V

    return-void
.end method

.method public constructor <init>(Ljava/awt/Font;[ILjava/awt/font/FontRenderContext;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/awt/font/GlyphVector;-><init>()V

    .line 31
    iput-object p1, p0, Lsun/font/StandardGlyphVector;->font:Ljava/awt/Font;

    .line 32
    iput-object p3, p0, Lsun/font/StandardGlyphVector;->frc:Ljava/awt/font/FontRenderContext;

    const/4 p1, -0x1

    .line 33
    iput p1, p0, Lsun/font/StandardGlyphVector;->flags:I

    .line 34
    invoke-direct {p0}, Lsun/font/StandardGlyphVector;->initFontData()V

    .line 35
    iput-object p2, p0, Lsun/font/StandardGlyphVector;->userGlyphs:[I

    .line 36
    invoke-virtual {p0, p2}, Lsun/font/StandardGlyphVector;->getValidatedGlyphs([I)[I

    move-result-object p1

    iput-object p1, p0, Lsun/font/StandardGlyphVector;->glyphs:[I

    return-void
.end method

.method private constructor <init>(Ljava/awt/font/GlyphVector;Ljava/awt/font/FontRenderContext;)V
    .locals 4

    .line 37
    invoke-direct {p0}, Ljava/awt/font/GlyphVector;-><init>()V

    .line 38
    invoke-virtual {p1}, Ljava/awt/font/GlyphVector;->getFont()Ljava/awt/Font;

    move-result-object v0

    iput-object v0, p0, Lsun/font/StandardGlyphVector;->font:Ljava/awt/Font;

    .line 39
    iput-object p2, p0, Lsun/font/StandardGlyphVector;->frc:Ljava/awt/font/FontRenderContext;

    .line 40
    invoke-direct {p0}, Lsun/font/StandardGlyphVector;->initFontData()V

    .line 41
    invoke-virtual {p1}, Ljava/awt/font/GlyphVector;->getNumGlyphs()I

    move-result p2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 42
    invoke-virtual {p1, v0, p2, v1}, Ljava/awt/font/GlyphVector;->getGlyphCodes(II[I)[I

    move-result-object v2

    iput-object v2, p0, Lsun/font/StandardGlyphVector;->userGlyphs:[I

    .line 43
    instance-of v3, p1, Lsun/font/StandardGlyphVector;

    if-eqz v3, :cond_0

    .line 44
    iput-object v2, p0, Lsun/font/StandardGlyphVector;->glyphs:[I

    goto :goto_0

    .line 45
    :cond_0
    invoke-virtual {p0, v2}, Lsun/font/StandardGlyphVector;->getValidatedGlyphs([I)[I

    move-result-object v2

    iput-object v2, p0, Lsun/font/StandardGlyphVector;->glyphs:[I

    .line 46
    :goto_0
    invoke-virtual {p1}, Ljava/awt/font/GlyphVector;->getLayoutFlags()I

    move-result v2

    and-int/lit8 v2, v2, 0xf

    iput v2, p0, Lsun/font/StandardGlyphVector;->flags:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_1

    add-int/lit8 v2, p2, 0x1

    .line 47
    invoke-virtual {p1, v0, v2, v1}, Ljava/awt/font/GlyphVector;->getGlyphPositions(II[F)[F

    move-result-object v2

    iput-object v2, p0, Lsun/font/StandardGlyphVector;->positions:[F

    .line 48
    :cond_1
    iget v2, p0, Lsun/font/StandardGlyphVector;->flags:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_2

    .line 49
    invoke-virtual {p1, v0, p2, v1}, Ljava/awt/font/GlyphVector;->getGlyphCharIndices(II[I)[I

    move-result-object v1

    iput-object v1, p0, Lsun/font/StandardGlyphVector;->charIndices:[I

    .line 50
    :cond_2
    iget v1, p0, Lsun/font/StandardGlyphVector;->flags:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_4

    .line 51
    new-array v1, p2, [Ljava/awt/geom/AffineTransform;

    :goto_1
    if-ge v0, p2, :cond_3

    .line 52
    invoke-virtual {p1, v0}, Ljava/awt/font/GlyphVector;->getGlyphTransform(I)Ljava/awt/geom/AffineTransform;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 53
    :cond_3
    invoke-virtual {p0, v1}, Lsun/font/StandardGlyphVector;->setGlyphTransforms([Ljava/awt/geom/AffineTransform;)V

    :cond_4
    return-void
.end method

.method public static synthetic access$000(Lsun/font/StandardGlyphVector;)[I
    .locals 0

    iget-object p0, p0, Lsun/font/StandardGlyphVector;->glyphs:[I

    return-object p0
.end method

.method public static synthetic access$100(Lsun/font/StandardGlyphVector;I)V
    .locals 0

    invoke-direct {p0, p1}, Lsun/font/StandardGlyphVector;->clearCaches(I)V

    return-void
.end method

.method public static synthetic access$1000(Lsun/font/StandardGlyphVector;)Ljava/awt/Font;
    .locals 0

    iget-object p0, p0, Lsun/font/StandardGlyphVector;->font:Ljava/awt/Font;

    return-object p0
.end method

.method public static synthetic access$1100(Lsun/font/StandardGlyphVector;)Ljava/awt/geom/AffineTransform;
    .locals 0

    iget-object p0, p0, Lsun/font/StandardGlyphVector;->invdtx:Ljava/awt/geom/AffineTransform;

    return-object p0
.end method

.method public static synthetic access$200(Lsun/font/StandardGlyphVector;I)V
    .locals 0

    invoke-direct {p0, p1}, Lsun/font/StandardGlyphVector;->clearFlags(I)V

    return-void
.end method

.method public static synthetic access$300(Lsun/font/StandardGlyphVector;I)V
    .locals 0

    invoke-direct {p0, p1}, Lsun/font/StandardGlyphVector;->addFlags(I)V

    return-void
.end method

.method public static synthetic access$400(Lsun/font/StandardGlyphVector;)[F
    .locals 0

    iget-object p0, p0, Lsun/font/StandardGlyphVector;->positions:[F

    return-object p0
.end method

.method public static synthetic access$500(Lsun/font/StandardGlyphVector;)Lsun/font/StandardGlyphVector$GlyphStrike;
    .locals 0

    invoke-direct {p0}, Lsun/font/StandardGlyphVector;->getDefaultStrike()Lsun/font/StandardGlyphVector$GlyphStrike;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$600(Lsun/font/StandardGlyphVector;)Ljava/awt/geom/AffineTransform;
    .locals 0

    iget-object p0, p0, Lsun/font/StandardGlyphVector;->dtx:Ljava/awt/geom/AffineTransform;

    return-object p0
.end method

.method public static synthetic access$700(Lsun/font/StandardGlyphVector;)Ljava/awt/geom/AffineTransform;
    .locals 0

    iget-object p0, p0, Lsun/font/StandardGlyphVector;->ftx:Ljava/awt/geom/AffineTransform;

    return-object p0
.end method

.method public static synthetic access$800(Lsun/font/StandardGlyphVector;)Ljava/awt/font/FontRenderContext;
    .locals 0

    iget-object p0, p0, Lsun/font/StandardGlyphVector;->frc:Ljava/awt/font/FontRenderContext;

    return-object p0
.end method

.method public static synthetic access$900(Lsun/font/StandardGlyphVector;)Lsun/font/Font2D;
    .locals 0

    iget-object p0, p0, Lsun/font/StandardGlyphVector;->font2D:Lsun/font/Font2D;

    return-object p0
.end method

.method private addFlags(I)V
    .locals 1

    invoke-virtual {p0}, Lsun/font/StandardGlyphVector;->getLayoutFlags()I

    move-result v0

    or-int/2addr p1, v0

    iput p1, p0, Lsun/font/StandardGlyphVector;->flags:I

    return-void
.end method

.method private clearCaches()V
    .locals 1

    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lsun/font/StandardGlyphVector;->lbcacheRef:Ljava/lang/ref/SoftReference;

    .line 8
    iput-object v0, p0, Lsun/font/StandardGlyphVector;->vbcacheRef:Ljava/lang/ref/SoftReference;

    return-void
.end method

.method private clearCaches(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lsun/font/StandardGlyphVector;->lbcacheRef:Ljava/lang/ref/SoftReference;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/awt/Shape;

    if-eqz v0, :cond_0

    .line 3
    aput-object v1, v0, p1

    .line 4
    :cond_0
    iget-object p0, p0, Lsun/font/StandardGlyphVector;->vbcacheRef:Ljava/lang/ref/SoftReference;

    if-eqz p0, :cond_1

    .line 5
    invoke-virtual {p0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/awt/Shape;

    if-eqz p0, :cond_1

    .line 6
    aput-object v1, p0, p1

    :cond_1
    return-void
.end method

.method private clearFlags(I)V
    .locals 1

    invoke-virtual {p0}, Lsun/font/StandardGlyphVector;->getLayoutFlags()I

    move-result v0

    not-int p1, p1

    and-int/2addr p1, v0

    iput p1, p0, Lsun/font/StandardGlyphVector;->flags:I

    return-void
.end method

.method private static equalNonTranslateTX(Ljava/awt/geom/AffineTransform;Ljava/awt/geom/AffineTransform;)Z
    .locals 4

    invoke-virtual {p0}, Ljava/awt/geom/AffineTransform;->getScaleX()D

    move-result-wide v0

    invoke-virtual {p1}, Ljava/awt/geom/AffineTransform;->getScaleX()D

    move-result-wide v2

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/awt/geom/AffineTransform;->getShearY()D

    move-result-wide v0

    invoke-virtual {p1}, Ljava/awt/geom/AffineTransform;->getShearY()D

    move-result-wide v2

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/awt/geom/AffineTransform;->getShearX()D

    move-result-wide v0

    invoke-virtual {p1}, Ljava/awt/geom/AffineTransform;->getShearX()D

    move-result-wide v2

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/awt/geom/AffineTransform;->getScaleY()D

    move-result-wide v0

    invoke-virtual {p1}, Ljava/awt/geom/AffineTransform;->getScaleY()D

    move-result-wide p0

    cmpl-double p0, v0, p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private getDefaultStrike()Lsun/font/StandardGlyphVector$GlyphStrike;
    .locals 2

    iget-object v0, p0, Lsun/font/StandardGlyphVector;->fsref:Ljava/lang/ref/SoftReference;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/font/StandardGlyphVector$GlyphStrike;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-nez v0, :cond_1

    iget-object v0, p0, Lsun/font/StandardGlyphVector;->dtx:Ljava/awt/geom/AffineTransform;

    invoke-static {p0, v0, v1}, Lsun/font/StandardGlyphVector$GlyphStrike;->create(Lsun/font/StandardGlyphVector;Ljava/awt/geom/AffineTransform;Ljava/awt/geom/AffineTransform;)Lsun/font/StandardGlyphVector$GlyphStrike;

    move-result-object v0

    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lsun/font/StandardGlyphVector;->fsref:Ljava/lang/ref/SoftReference;

    :cond_1
    return-object v0
.end method

.method private getGlyphOutlineBounds(I)Ljava/awt/geom/Rectangle2D;
    .locals 3

    invoke-direct {p0}, Lsun/font/StandardGlyphVector;->setFRCTX()V

    invoke-direct {p0}, Lsun/font/StandardGlyphVector;->initPositions()V

    invoke-direct {p0, p1}, Lsun/font/StandardGlyphVector;->getGlyphStrike(I)Lsun/font/StandardGlyphVector$GlyphStrike;

    move-result-object v0

    iget-object v1, p0, Lsun/font/StandardGlyphVector;->glyphs:[I

    aget v1, v1, p1

    iget-object p0, p0, Lsun/font/StandardGlyphVector;->positions:[F

    mul-int/lit8 p1, p1, 0x2

    aget v2, p0, p1

    add-int/lit8 p1, p1, 0x1

    aget p0, p0, p1

    invoke-virtual {v0, v1, v2, p0}, Lsun/font/StandardGlyphVector$GlyphStrike;->getGlyphOutlineBounds(IFF)Ljava/awt/geom/Rectangle2D;

    move-result-object p0

    return-object p0
.end method

.method private getGlyphStrike(I)Lsun/font/StandardGlyphVector$GlyphStrike;
    .locals 1

    iget-object v0, p0, Lsun/font/StandardGlyphVector;->gti:Lsun/font/StandardGlyphVector$GlyphTransformInfo;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lsun/font/StandardGlyphVector;->getDefaultStrike()Lsun/font/StandardGlyphVector$GlyphStrike;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {v0, p1}, Lsun/font/StandardGlyphVector$GlyphTransformInfo;->getStrike(I)Lsun/font/StandardGlyphVector$GlyphStrike;

    move-result-object p0

    return-object p0
.end method

.method private getGlyphsOutline(IIFF)Ljava/awt/Shape;
    .locals 6

    invoke-direct {p0}, Lsun/font/StandardGlyphVector;->setFRCTX()V

    invoke-direct {p0}, Lsun/font/StandardGlyphVector;->initPositions()V

    new-instance v0, Ljava/awt/geom/GeneralPath;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/awt/geom/GeneralPath;-><init>(I)V

    add-int/2addr p2, p1

    mul-int/lit8 v1, p1, 0x2

    :goto_0
    if-ge p1, p2, :cond_0

    iget-object v2, p0, Lsun/font/StandardGlyphVector;->positions:[F

    aget v3, v2, v1

    add-float/2addr v3, p3

    add-int/lit8 v4, v1, 0x1

    aget v2, v2, v4

    add-float/2addr v2, p4

    invoke-direct {p0, p1}, Lsun/font/StandardGlyphVector;->getGlyphStrike(I)Lsun/font/StandardGlyphVector$GlyphStrike;

    move-result-object v4

    iget-object v5, p0, Lsun/font/StandardGlyphVector;->glyphs:[I

    aget v5, v5, p1

    invoke-virtual {v4, v5, v0, v3, v2}, Lsun/font/StandardGlyphVector$GlyphStrike;->appendGlyphOutline(ILjava/awt/geom/GeneralPath;FF)V

    add-int/lit8 p1, p1, 0x1

    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private getGlyphsPixelBounds(Ljava/awt/font/FontRenderContext;FFII)Ljava/awt/Rectangle;
    .locals 7

    invoke-direct {p0}, Lsun/font/StandardGlyphVector;->initPositions()V

    if-eqz p1, :cond_1

    iget-object v0, p0, Lsun/font/StandardGlyphVector;->frc:Ljava/awt/font/FontRenderContext;

    invoke-virtual {p1, v0}, Ljava/awt/font/FontRenderContext;->equals(Ljava/awt/font/FontRenderContext;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/awt/font/FontRenderContext;->getTransform()Ljava/awt/geom/AffineTransform;

    move-result-object p1

    goto :goto_1

    :cond_1
    :goto_0
    iget-object p1, p0, Lsun/font/StandardGlyphVector;->frctx:Ljava/awt/geom/AffineTransform;

    :goto_1
    move-object v1, p1

    invoke-direct {p0, v1}, Lsun/font/StandardGlyphVector;->setDTX(Ljava/awt/geom/AffineTransform;)V

    iget-object v0, p0, Lsun/font/StandardGlyphVector;->gti:Lsun/font/StandardGlyphVector$GlyphTransformInfo;

    if-eqz v0, :cond_2

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lsun/font/StandardGlyphVector$GlyphTransformInfo;->getGlyphsPixelBounds(Ljava/awt/geom/AffineTransform;FFII)Ljava/awt/Rectangle;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-direct {p0}, Lsun/font/StandardGlyphVector;->getDefaultStrike()Lsun/font/StandardGlyphVector$GlyphStrike;

    move-result-object p1

    iget-object p1, p1, Lsun/font/StandardGlyphVector$GlyphStrike;->strike:Lsun/font/FontStrike;

    new-instance v0, Ljava/awt/Rectangle;

    invoke-direct {v0}, Ljava/awt/Rectangle;-><init>()V

    new-instance v2, Ljava/awt/geom/Point2D$Float;

    invoke-direct {v2}, Ljava/awt/geom/Point2D$Float;-><init>()V

    mul-int/lit8 v3, p4, 0x2

    const/4 v4, 0x0

    :goto_2
    add-int/lit8 p5, p5, -0x1

    if-ltz p5, :cond_5

    iget-object v5, p0, Lsun/font/StandardGlyphVector;->positions:[F

    add-int/lit8 v6, v3, 0x1

    aget v3, v5, v3

    add-float/2addr v3, p2

    iput v3, v2, Ljava/awt/geom/Point2D$Float;->x:F

    add-int/lit8 v3, v6, 0x1

    aget v5, v5, v6

    add-float/2addr v5, p3

    iput v5, v2, Ljava/awt/geom/Point2D$Float;->y:F

    invoke-virtual {v1, v2, v2}, Ljava/awt/geom/AffineTransform;->transform(Ljava/awt/geom/Point2D;Ljava/awt/geom/Point2D;)Ljava/awt/geom/Point2D;

    iget-object v5, p0, Lsun/font/StandardGlyphVector;->glyphs:[I

    add-int/lit8 v6, p4, 0x1

    aget p4, v5, p4

    invoke-virtual {p1, p4, v2, v0}, Lsun/font/FontStrike;->getGlyphImageBounds(ILjava/awt/geom/Point2D$Float;Ljava/awt/Rectangle;)V

    invoke-virtual {v0}, Ljava/awt/Rectangle;->isEmpty()Z

    move-result p4

    if-nez p4, :cond_4

    if-nez v4, :cond_3

    new-instance v4, Ljava/awt/Rectangle;

    invoke-direct {v4, v0}, Ljava/awt/Rectangle;-><init>(Ljava/awt/Rectangle;)V

    goto :goto_3

    :cond_3
    invoke-virtual {v4, v0}, Ljava/awt/Rectangle;->add(Ljava/awt/Rectangle;)V

    :cond_4
    :goto_3
    move p4, v6

    goto :goto_2

    :cond_5
    if-eqz v4, :cond_6

    move-object v0, v4

    :cond_6
    return-object v0
.end method

.method private static getNonTranslateTX(Ljava/awt/geom/AffineTransform;)Ljava/awt/geom/AffineTransform;
    .locals 14

    invoke-virtual {p0}, Ljava/awt/geom/AffineTransform;->getTranslateX()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/awt/geom/AffineTransform;->getTranslateY()D

    move-result-wide v0

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/awt/geom/AffineTransform;

    invoke-virtual {p0}, Ljava/awt/geom/AffineTransform;->getScaleX()D

    move-result-wide v2

    invoke-virtual {p0}, Ljava/awt/geom/AffineTransform;->getShearY()D

    move-result-wide v4

    invoke-virtual {p0}, Ljava/awt/geom/AffineTransform;->getShearX()D

    move-result-wide v6

    invoke-virtual {p0}, Ljava/awt/geom/AffineTransform;->getScaleY()D

    move-result-wide v8

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v13}, Ljava/awt/geom/AffineTransform;-><init>(DDDDDD)V

    move-object p0, v0

    :cond_1
    return-object p0
.end method

.method public static getStandardGV(Ljava/awt/font/GlyphVector;Lsun/java2d/loops/FontInfo;)Lsun/font/StandardGlyphVector;
    .locals 3

    iget p1, p1, Lsun/java2d/loops/FontInfo;->aaHint:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Ljava/awt/font/GlyphVector;->getFontRenderContext()Ljava/awt/font/FontRenderContext;

    move-result-object p1

    invoke-virtual {p1}, Ljava/awt/font/FontRenderContext;->getAntiAliasingHint()Ljava/lang/Object;

    move-result-object p1

    sget-object v0, Ljava/awt/RenderingHints;->VALUE_TEXT_ANTIALIAS_ON:Ljava/lang/Object;

    if-eq p1, v0, :cond_0

    sget-object v1, Ljava/awt/RenderingHints;->VALUE_TEXT_ANTIALIAS_GASP:Ljava/lang/Object;

    if-eq p1, v1, :cond_0

    invoke-virtual {p0}, Ljava/awt/font/GlyphVector;->getFontRenderContext()Ljava/awt/font/FontRenderContext;

    move-result-object p1

    new-instance v1, Ljava/awt/font/FontRenderContext;

    invoke-virtual {p1}, Ljava/awt/font/FontRenderContext;->getTransform()Ljava/awt/geom/AffineTransform;

    move-result-object v2

    invoke-virtual {p1}, Ljava/awt/font/FontRenderContext;->getFractionalMetricsHint()Ljava/lang/Object;

    move-result-object p1

    invoke-direct {v1, v2, v0, p1}, Ljava/awt/font/FontRenderContext;-><init>(Ljava/awt/geom/AffineTransform;Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance p1, Lsun/font/StandardGlyphVector;

    invoke-direct {p1, p0, v1}, Lsun/font/StandardGlyphVector;-><init>(Ljava/awt/font/GlyphVector;Ljava/awt/font/FontRenderContext;)V

    return-object p1

    :cond_0
    instance-of p1, p0, Lsun/font/StandardGlyphVector;

    if-eqz p1, :cond_1

    check-cast p0, Lsun/font/StandardGlyphVector;

    return-object p0

    :cond_1
    new-instance p1, Lsun/font/StandardGlyphVector;

    invoke-virtual {p0}, Ljava/awt/font/GlyphVector;->getFontRenderContext()Ljava/awt/font/FontRenderContext;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lsun/font/StandardGlyphVector;-><init>(Ljava/awt/font/GlyphVector;Ljava/awt/font/FontRenderContext;)V

    return-object p1
.end method

.method private getTracking(Ljava/awt/Font;)F
    .locals 0

    invoke-virtual {p1}, Ljava/awt/Font;->hasLayoutAttributes()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Ljava/awt/Font;->getAttributes()Ljava/util/Map;

    move-result-object p0

    check-cast p0, Lsun/font/AttributeMap;

    invoke-virtual {p0}, Lsun/font/AttributeMap;->getValues()Lsun/font/AttributeValues;

    move-result-object p0

    invoke-virtual {p0}, Lsun/font/AttributeValues;->getTracking()F

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private init(Ljava/awt/Font;[CIILjava/awt/font/FontRenderContext;I)V
    .locals 2

    if-ltz p3, :cond_2

    if-ltz p4, :cond_2

    add-int v0, p3, p4

    array-length v1, p2

    if-gt v0, v1, :cond_2

    iput-object p1, p0, Lsun/font/StandardGlyphVector;->font:Ljava/awt/Font;

    iput-object p5, p0, Lsun/font/StandardGlyphVector;->frc:Ljava/awt/font/FontRenderContext;

    iput p6, p0, Lsun/font/StandardGlyphVector;->flags:I

    invoke-direct {p0, p1}, Lsun/font/StandardGlyphVector;->getTracking(Ljava/awt/Font;)F

    move-result p1

    const/4 p5, 0x0

    cmpl-float p1, p1, p5

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lsun/font/StandardGlyphVector;->addFlags(I)V

    :cond_0
    if-eqz p3, :cond_1

    new-array p1, p4, [C

    const/4 p5, 0x0

    invoke-static {p2, p3, p1, p5, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p2, p1

    :cond_1
    invoke-direct {p0}, Lsun/font/StandardGlyphVector;->initFontData()V

    new-array p1, p4, [I

    iput-object p1, p0, Lsun/font/StandardGlyphVector;->glyphs:[I

    iput-object p1, p0, Lsun/font/StandardGlyphVector;->userGlyphs:[I

    iget-object p1, p0, Lsun/font/StandardGlyphVector;->font2D:Lsun/font/Font2D;

    invoke-virtual {p1}, Lsun/font/Font2D;->getMapper()Lsun/font/CharToGlyphMapper;

    move-result-object p1

    iget-object p0, p0, Lsun/font/StandardGlyphVector;->glyphs:[I

    invoke-virtual {p1, p4, p2, p0}, Lsun/font/CharToGlyphMapper;->charsToGlyphs(I[C[I)V

    return-void

    :cond_2
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string p1, "start or count out of bounds"

    invoke-direct {p0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private initFontData()V
    .locals 15

    iget-object v0, p0, Lsun/font/StandardGlyphVector;->font:Ljava/awt/Font;

    invoke-static {v0}, Lsun/font/FontUtilities;->getFont2D(Ljava/awt/Font;)Lsun/font/Font2D;

    move-result-object v0

    iput-object v0, p0, Lsun/font/StandardGlyphVector;->font2D:Lsun/font/Font2D;

    instance-of v1, v0, Lsun/font/FontSubstitution;

    if-eqz v1, :cond_0

    check-cast v0, Lsun/font/FontSubstitution;

    invoke-interface {v0}, Lsun/font/FontSubstitution;->getCompositeFont2D()Lsun/font/CompositeFont;

    move-result-object v0

    iput-object v0, p0, Lsun/font/StandardGlyphVector;->font2D:Lsun/font/Font2D;

    :cond_0
    iget-object v0, p0, Lsun/font/StandardGlyphVector;->font:Ljava/awt/Font;

    invoke-virtual {v0}, Ljava/awt/Font;->getSize2D()F

    move-result v0

    iget-object v1, p0, Lsun/font/StandardGlyphVector;->font:Ljava/awt/Font;

    invoke-virtual {v1}, Ljava/awt/Font;->isTransformed()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lsun/font/StandardGlyphVector;->font:Ljava/awt/Font;

    invoke-virtual {v1}, Ljava/awt/Font;->getTransform()Ljava/awt/geom/AffineTransform;

    move-result-object v1

    iput-object v1, p0, Lsun/font/StandardGlyphVector;->ftx:Ljava/awt/geom/AffineTransform;

    invoke-virtual {v1}, Ljava/awt/geom/AffineTransform;->getTranslateX()D

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmpl-double v1, v1, v3

    if-nez v1, :cond_1

    iget-object v1, p0, Lsun/font/StandardGlyphVector;->ftx:Ljava/awt/geom/AffineTransform;

    invoke-virtual {v1}, Ljava/awt/geom/AffineTransform;->getTranslateY()D

    move-result-wide v1

    cmpl-double v1, v1, v3

    if-eqz v1, :cond_2

    :cond_1
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lsun/font/StandardGlyphVector;->addFlags(I)V

    :cond_2
    iget-object v2, p0, Lsun/font/StandardGlyphVector;->ftx:Ljava/awt/geom/AffineTransform;

    invoke-virtual {v2}, Ljava/awt/geom/AffineTransform;->getScaleX()D

    move-result-wide v3

    iget-object v1, p0, Lsun/font/StandardGlyphVector;->ftx:Ljava/awt/geom/AffineTransform;

    invoke-virtual {v1}, Ljava/awt/geom/AffineTransform;->getShearY()D

    move-result-wide v5

    iget-object v1, p0, Lsun/font/StandardGlyphVector;->ftx:Ljava/awt/geom/AffineTransform;

    invoke-virtual {v1}, Ljava/awt/geom/AffineTransform;->getShearX()D

    move-result-wide v7

    iget-object v1, p0, Lsun/font/StandardGlyphVector;->ftx:Ljava/awt/geom/AffineTransform;

    invoke-virtual {v1}, Ljava/awt/geom/AffineTransform;->getScaleY()D

    move-result-wide v9

    const-wide/16 v11, 0x0

    const-wide/16 v13, 0x0

    invoke-virtual/range {v2 .. v14}, Ljava/awt/geom/AffineTransform;->setTransform(DDDDDD)V

    iget-object v1, p0, Lsun/font/StandardGlyphVector;->ftx:Ljava/awt/geom/AffineTransform;

    float-to-double v2, v0

    invoke-virtual {v1, v2, v3, v2, v3}, Ljava/awt/geom/AffineTransform;->scale(DD)V

    goto :goto_0

    :cond_3
    float-to-double v0, v0

    invoke-static {v0, v1, v0, v1}, Ljava/awt/geom/AffineTransform;->getScaleInstance(DD)Ljava/awt/geom/AffineTransform;

    move-result-object v0

    iput-object v0, p0, Lsun/font/StandardGlyphVector;->ftx:Ljava/awt/geom/AffineTransform;

    :goto_0
    iget-object v0, p0, Lsun/font/StandardGlyphVector;->frc:Ljava/awt/font/FontRenderContext;

    invoke-virtual {v0}, Ljava/awt/font/FontRenderContext;->getTransform()Ljava/awt/geom/AffineTransform;

    move-result-object v0

    iput-object v0, p0, Lsun/font/StandardGlyphVector;->frctx:Ljava/awt/geom/AffineTransform;

    invoke-static {v0}, Lsun/font/StandardGlyphVector;->getNonTranslateTX(Ljava/awt/geom/AffineTransform;)Ljava/awt/geom/AffineTransform;

    move-result-object v0

    invoke-direct {p0, v0}, Lsun/font/StandardGlyphVector;->resetDTX(Ljava/awt/geom/AffineTransform;)V

    return-void
.end method

.method private initPositions()V
    .locals 8

    iget-object v0, p0, Lsun/font/StandardGlyphVector;->positions:[F

    if-nez v0, :cond_3

    invoke-direct {p0}, Lsun/font/StandardGlyphVector;->setFRCTX()V

    iget-object v0, p0, Lsun/font/StandardGlyphVector;->glyphs:[I

    array-length v0, v0

    const/4 v1, 0x2

    mul-int/2addr v0, v1

    add-int/2addr v0, v1

    new-array v0, v0, [F

    iput-object v0, p0, Lsun/font/StandardGlyphVector;->positions:[F

    iget-object v0, p0, Lsun/font/StandardGlyphVector;->font:Ljava/awt/Font;

    invoke-direct {p0, v0}, Lsun/font/StandardGlyphVector;->getTracking(Ljava/awt/Font;)F

    move-result v0

    const/4 v2, 0x0

    cmpl-float v3, v0, v2

    if-eqz v3, :cond_0

    iget-object v3, p0, Lsun/font/StandardGlyphVector;->font:Ljava/awt/Font;

    invoke-virtual {v3}, Ljava/awt/Font;->getSize2D()F

    move-result v3

    mul-float/2addr v0, v3

    new-instance v3, Ljava/awt/geom/Point2D$Float;

    invoke-direct {v3, v0, v2}, Ljava/awt/geom/Point2D$Float;-><init>(FF)V

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    new-instance v0, Ljava/awt/geom/Point2D$Float;

    invoke-direct {v0, v2, v2}, Ljava/awt/geom/Point2D$Float;-><init>(FF)V

    iget-object v2, p0, Lsun/font/StandardGlyphVector;->font:Ljava/awt/Font;

    invoke-virtual {v2}, Ljava/awt/Font;->isTransformed()Z

    move-result v2

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    iget-object v2, p0, Lsun/font/StandardGlyphVector;->font:Ljava/awt/Font;

    invoke-virtual {v2}, Ljava/awt/Font;->getTransform()Ljava/awt/geom/AffineTransform;

    move-result-object v2

    invoke-virtual {v2, v0, v0}, Ljava/awt/geom/AffineTransform;->transform(Ljava/awt/geom/Point2D;Ljava/awt/geom/Point2D;)Ljava/awt/geom/Point2D;

    iget-object v5, p0, Lsun/font/StandardGlyphVector;->positions:[F

    iget v6, v0, Ljava/awt/geom/Point2D$Float;->x:F

    aput v6, v5, v4

    iget v6, v0, Ljava/awt/geom/Point2D$Float;->y:F

    const/4 v7, 0x1

    aput v6, v5, v7

    if-eqz v3, :cond_1

    invoke-virtual {v2, v3, v3}, Ljava/awt/geom/AffineTransform;->deltaTransform(Ljava/awt/geom/Point2D;Ljava/awt/geom/Point2D;)Ljava/awt/geom/Point2D;

    :cond_1
    move v2, v1

    :goto_1
    iget-object v5, p0, Lsun/font/StandardGlyphVector;->glyphs:[I

    array-length v5, v5

    if-ge v4, v5, :cond_3

    invoke-direct {p0, v4}, Lsun/font/StandardGlyphVector;->getGlyphStrike(I)Lsun/font/StandardGlyphVector$GlyphStrike;

    move-result-object v5

    iget-object v6, p0, Lsun/font/StandardGlyphVector;->glyphs:[I

    aget v6, v6, v4

    invoke-virtual {v5, v6, v0}, Lsun/font/StandardGlyphVector$GlyphStrike;->addDefaultGlyphAdvance(ILjava/awt/geom/Point2D$Float;)V

    if-eqz v3, :cond_2

    iget v5, v0, Ljava/awt/geom/Point2D$Float;->x:F

    iget v6, v3, Ljava/awt/geom/Point2D$Float;->x:F

    add-float/2addr v5, v6

    iput v5, v0, Ljava/awt/geom/Point2D$Float;->x:F

    iget v5, v0, Ljava/awt/geom/Point2D$Float;->y:F

    iget v6, v3, Ljava/awt/geom/Point2D$Float;->y:F

    add-float/2addr v5, v6

    iput v5, v0, Ljava/awt/geom/Point2D$Float;->y:F

    :cond_2
    iget-object v5, p0, Lsun/font/StandardGlyphVector;->positions:[F

    iget v6, v0, Ljava/awt/geom/Point2D$Float;->x:F

    aput v6, v5, v2

    add-int/lit8 v6, v2, 0x1

    iget v7, v0, Ljava/awt/geom/Point2D$Float;->y:F

    aput v7, v5, v6

    add-int/lit8 v4, v4, 0x1

    add-int/2addr v2, v1

    goto :goto_1

    :cond_3
    return-void
.end method

.method private internalGetGlyphPositions(III[F)[F
    .locals 1

    if-nez p4, :cond_0

    mul-int/lit8 p4, p2, 0x2

    add-int/2addr p4, p3

    new-array p4, p4, [F

    :cond_0
    invoke-direct {p0}, Lsun/font/StandardGlyphVector;->initPositions()V

    mul-int/lit8 p2, p2, 0x2

    add-int/2addr p2, p3

    mul-int/lit8 p1, p1, 0x2

    :goto_0
    if-ge p3, p2, :cond_1

    iget-object v0, p0, Lsun/font/StandardGlyphVector;->positions:[F

    aget v0, v0, p1

    aput v0, p4, p3

    add-int/lit8 p3, p3, 0x1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-object p4
.end method

.method private static matchTX([DLjava/awt/geom/AffineTransform;)Z
    .locals 6

    const/4 v0, 0x0

    aget-wide v1, p0, v0

    invoke-virtual {p1}, Ljava/awt/geom/AffineTransform;->getScaleX()D

    move-result-wide v3

    cmpl-double v1, v1, v3

    if-nez v1, :cond_0

    const/4 v1, 0x1

    aget-wide v2, p0, v1

    invoke-virtual {p1}, Ljava/awt/geom/AffineTransform;->getShearY()D

    move-result-wide v4

    cmpl-double v2, v2, v4

    if-nez v2, :cond_0

    const/4 v2, 0x2

    aget-wide v2, p0, v2

    invoke-virtual {p1}, Ljava/awt/geom/AffineTransform;->getShearX()D

    move-result-wide v4

    cmpl-double v2, v2, v4

    if-nez v2, :cond_0

    const/4 v2, 0x3

    aget-wide v2, p0, v2

    invoke-virtual {p1}, Ljava/awt/geom/AffineTransform;->getScaleY()D

    move-result-wide p0

    cmpl-double p0, v2, p0

    if-nez p0, :cond_0

    move v0, v1

    :cond_0
    return v0
.end method

.method private resetDTX(Ljava/awt/geom/AffineTransform;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lsun/font/StandardGlyphVector;->fsref:Ljava/lang/ref/SoftReference;

    iput-object p1, p0, Lsun/font/StandardGlyphVector;->dtx:Ljava/awt/geom/AffineTransform;

    iput-object v0, p0, Lsun/font/StandardGlyphVector;->invdtx:Ljava/awt/geom/AffineTransform;

    invoke-virtual {p1}, Ljava/awt/geom/AffineTransform;->isIdentity()Z

    move-result p1

    if-nez p1, :cond_0

    :try_start_0
    iget-object p1, p0, Lsun/font/StandardGlyphVector;->dtx:Ljava/awt/geom/AffineTransform;

    invoke-virtual {p1}, Ljava/awt/geom/AffineTransform;->createInverse()Ljava/awt/geom/AffineTransform;

    move-result-object p1

    iput-object p1, p0, Lsun/font/StandardGlyphVector;->invdtx:Ljava/awt/geom/AffineTransform;
    :try_end_0
    .catch Ljava/awt/geom/NoninvertibleTransformException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    iget-object p0, p0, Lsun/font/StandardGlyphVector;->gti:Lsun/font/StandardGlyphVector$GlyphTransformInfo;

    if-eqz p0, :cond_1

    iput-object v0, p0, Lsun/font/StandardGlyphVector$GlyphTransformInfo;->strikesRef:Ljava/lang/ref/SoftReference;

    :cond_1
    return-void
.end method

.method private setDTX(Ljava/awt/geom/AffineTransform;)V
    .locals 1

    iget-object v0, p0, Lsun/font/StandardGlyphVector;->dtx:Ljava/awt/geom/AffineTransform;

    invoke-static {v0, p1}, Lsun/font/StandardGlyphVector;->equalNonTranslateTX(Ljava/awt/geom/AffineTransform;Ljava/awt/geom/AffineTransform;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lsun/font/StandardGlyphVector;->getNonTranslateTX(Ljava/awt/geom/AffineTransform;)Ljava/awt/geom/AffineTransform;

    move-result-object p1

    invoke-direct {p0, p1}, Lsun/font/StandardGlyphVector;->resetDTX(Ljava/awt/geom/AffineTransform;)V

    :cond_0
    return-void
.end method

.method private setFRCTX()V
    .locals 2

    iget-object v0, p0, Lsun/font/StandardGlyphVector;->frctx:Ljava/awt/geom/AffineTransform;

    iget-object v1, p0, Lsun/font/StandardGlyphVector;->dtx:Ljava/awt/geom/AffineTransform;

    invoke-static {v0, v1}, Lsun/font/StandardGlyphVector;->equalNonTranslateTX(Ljava/awt/geom/AffineTransform;Ljava/awt/geom/AffineTransform;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lsun/font/StandardGlyphVector;->frctx:Ljava/awt/geom/AffineTransform;

    invoke-static {v0}, Lsun/font/StandardGlyphVector;->getNonTranslateTX(Ljava/awt/geom/AffineTransform;)Ljava/awt/geom/AffineTransform;

    move-result-object v0

    invoke-direct {p0, v0}, Lsun/font/StandardGlyphVector;->resetDTX(Ljava/awt/geom/AffineTransform;)V

    :cond_0
    return-void
.end method

.method private setRenderTransform([D)V
    .locals 1

    iget-object v0, p0, Lsun/font/StandardGlyphVector;->dtx:Ljava/awt/geom/AffineTransform;

    invoke-static {p1, v0}, Lsun/font/StandardGlyphVector;->matchTX([DLjava/awt/geom/AffineTransform;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/awt/geom/AffineTransform;

    invoke-direct {v0, p1}, Ljava/awt/geom/AffineTransform;-><init>([D)V

    invoke-direct {p0, v0}, Lsun/font/StandardGlyphVector;->resetDTX(Ljava/awt/geom/AffineTransform;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public appendString(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 7

    const-string v0, "]"

    const-string v1, ")["

    if-nez p1, :cond_0

    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    :cond_0
    :try_start_0
    const-string v2, "SGV{font: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lsun/font/StandardGlyphVector;->font:Ljava/awt/Font;

    invoke-virtual {v2}, Ljava/awt/Font;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, ", frc: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lsun/font/StandardGlyphVector;->frc:Ljava/awt/font/FontRenderContext;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, ", glyphs: ("

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lsun/font/StandardGlyphVector;->glyphs:[I

    array-length v2, v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    iget-object v4, p0, Lsun/font/StandardGlyphVector;->glyphs:[I

    array-length v4, v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v5, ", "

    if-ge v3, v4, :cond_2

    if-lez v3, :cond_1

    :try_start_1
    invoke-virtual {p1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    iget-object v4, p0, Lsun/font/StandardGlyphVector;->glyphs:[I

    aget v4, v4, v3

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v3, p0, Lsun/font/StandardGlyphVector;->positions:[F

    if-eqz v3, :cond_5

    const-string v3, ", positions: ("

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v3, p0, Lsun/font/StandardGlyphVector;->positions:[F

    array-length v3, v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v3, v2

    :goto_1
    iget-object v4, p0, Lsun/font/StandardGlyphVector;->positions:[F

    array-length v4, v4

    if-ge v3, v4, :cond_4

    if-lez v3, :cond_3

    invoke-virtual {p1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_3
    iget-object v4, p0, Lsun/font/StandardGlyphVector;->positions:[F

    aget v4, v4, v3

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(F)Ljava/lang/StringBuffer;

    const-string v4, "@"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v4, p0, Lsun/font/StandardGlyphVector;->positions:[F

    add-int/lit8 v6, v3, 0x1

    aget v4, v4, v6

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(F)Ljava/lang/StringBuffer;

    add-int/lit8 v3, v3, 0x2

    goto :goto_1

    :cond_4
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_5
    iget-object v3, p0, Lsun/font/StandardGlyphVector;->charIndices:[I

    if-eqz v3, :cond_8

    const-string v3, ", indices: ("

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v3, p0, Lsun/font/StandardGlyphVector;->charIndices:[I

    array-length v3, v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_2
    iget-object v1, p0, Lsun/font/StandardGlyphVector;->charIndices:[I

    array-length v1, v1

    if-ge v2, v1, :cond_7

    if-lez v2, :cond_6

    invoke-virtual {p1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_6
    iget-object v1, p0, Lsun/font/StandardGlyphVector;->charIndices:[I

    aget v1, v1, v2

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_7
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_8
    const-string v0, ", flags:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lsun/font/StandardGlyphVector;->getLayoutFlags()I

    move-result v0

    if-nez v0, :cond_9

    const-string p0, " default"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    :cond_9
    iget v0, p0, Lsun/font/StandardGlyphVector;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_a

    const-string v0, " tx"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_a
    iget v0, p0, Lsun/font/StandardGlyphVector;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_b

    const-string v0, " pos"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_b
    iget v0, p0, Lsun/font/StandardGlyphVector;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_c

    const-string v0, " rtl"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_c
    iget p0, p0, Lsun/font/StandardGlyphVector;->flags:I

    and-int/lit8 p0, p0, 0x8

    if-eqz p0, :cond_d

    const-string p0, " complex"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception p0

    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_d
    :goto_3
    const/16 p0, 0x7d

    invoke-virtual {p1, p0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    return-object p1
.end method

.method public clone()Ljava/lang/Object;
    .locals 3

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/font/StandardGlyphVector;

    invoke-direct {v0}, Lsun/font/StandardGlyphVector;->clearCaches()V

    iget-object v1, p0, Lsun/font/StandardGlyphVector;->positions:[F

    if-eqz v1, :cond_0

    invoke-virtual {v1}, [F->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [F

    iput-object v1, v0, Lsun/font/StandardGlyphVector;->positions:[F

    :cond_0
    iget-object v1, p0, Lsun/font/StandardGlyphVector;->gti:Lsun/font/StandardGlyphVector$GlyphTransformInfo;

    if-eqz v1, :cond_1

    new-instance v2, Lsun/font/StandardGlyphVector$GlyphTransformInfo;

    invoke-direct {v2, v0, v1}, Lsun/font/StandardGlyphVector$GlyphTransformInfo;-><init>(Lsun/font/StandardGlyphVector;Lsun/font/StandardGlyphVector$GlyphTransformInfo;)V

    iput-object v2, v0, Lsun/font/StandardGlyphVector;->gti:Lsun/font/StandardGlyphVector$GlyphTransformInfo;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-object v0

    :catch_0
    return-object p0
.end method

.method public copy()Lsun/font/StandardGlyphVector;
    .locals 0

    invoke-virtual {p0}, Lsun/font/StandardGlyphVector;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lsun/font/StandardGlyphVector;

    return-object p0
.end method

.method public equals(Ljava/awt/font/GlyphVector;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 1
    :cond_1
    :try_start_0
    check-cast p1, Lsun/font/StandardGlyphVector;

    .line 2
    iget-object v2, p0, Lsun/font/StandardGlyphVector;->glyphs:[I

    array-length v2, v2

    iget-object v3, p1, Lsun/font/StandardGlyphVector;->glyphs:[I

    array-length v3, v3

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    move v2, v1

    .line 3
    :goto_0
    iget-object v3, p0, Lsun/font/StandardGlyphVector;->glyphs:[I

    array-length v4, v3

    if-ge v2, v4, :cond_4

    .line 4
    aget v3, v3, v2

    iget-object v4, p1, Lsun/font/StandardGlyphVector;->glyphs:[I

    aget v4, v4, v2

    if-eq v3, v4, :cond_3

    return v1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5
    :cond_4
    iget-object v2, p0, Lsun/font/StandardGlyphVector;->font:Ljava/awt/Font;

    iget-object v3, p1, Lsun/font/StandardGlyphVector;->font:Ljava/awt/Font;

    invoke-virtual {v2, v3}, Ljava/awt/Font;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    return v1

    .line 6
    :cond_5
    iget-object v2, p0, Lsun/font/StandardGlyphVector;->frc:Ljava/awt/font/FontRenderContext;

    iget-object v3, p1, Lsun/font/StandardGlyphVector;->frc:Ljava/awt/font/FontRenderContext;

    invoke-virtual {v2, v3}, Ljava/awt/font/FontRenderContext;->equals(Ljava/awt/font/FontRenderContext;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    .line 7
    :cond_6
    iget-object v2, p1, Lsun/font/StandardGlyphVector;->positions:[F

    if-nez v2, :cond_7

    move v2, v0

    goto :goto_1

    :cond_7
    move v2, v1

    :goto_1
    iget-object v3, p0, Lsun/font/StandardGlyphVector;->positions:[F

    if-nez v3, :cond_8

    move v4, v0

    goto :goto_2

    :cond_8
    move v4, v1

    :goto_2
    if-eq v2, v4, :cond_a

    if-nez v3, :cond_9

    .line 8
    invoke-direct {p0}, Lsun/font/StandardGlyphVector;->initPositions()V

    goto :goto_3

    .line 9
    :cond_9
    invoke-direct {p1}, Lsun/font/StandardGlyphVector;->initPositions()V

    .line 10
    :cond_a
    :goto_3
    iget-object v2, p0, Lsun/font/StandardGlyphVector;->positions:[F

    if-eqz v2, :cond_c

    move v2, v1

    .line 11
    :goto_4
    iget-object v3, p0, Lsun/font/StandardGlyphVector;->positions:[F

    array-length v4, v3

    if-ge v2, v4, :cond_c

    .line 12
    aget v3, v3, v2

    iget-object v4, p1, Lsun/font/StandardGlyphVector;->positions:[F

    aget v4, v4, v2

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_b

    return v1

    :cond_b
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 13
    :cond_c
    iget-object p0, p0, Lsun/font/StandardGlyphVector;->gti:Lsun/font/StandardGlyphVector$GlyphTransformInfo;

    if-nez p0, :cond_e

    .line 14
    iget-object p0, p1, Lsun/font/StandardGlyphVector;->gti:Lsun/font/StandardGlyphVector$GlyphTransformInfo;

    if-nez p0, :cond_d

    goto :goto_5

    :cond_d
    move v0, v1

    :goto_5
    return v0

    .line 15
    :cond_e
    iget-object p1, p1, Lsun/font/StandardGlyphVector;->gti:Lsun/font/StandardGlyphVector$GlyphTransformInfo;

    invoke-virtual {p0, p1}, Lsun/font/StandardGlyphVector$GlyphTransformInfo;->equals(Lsun/font/StandardGlyphVector$GlyphTransformInfo;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    return v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 0

    .line 16
    :try_start_0
    check-cast p1, Ljava/awt/font/GlyphVector;

    invoke-virtual {p0, p1}, Lsun/font/StandardGlyphVector;->equals(Ljava/awt/font/GlyphVector;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method public getFont()Ljava/awt/Font;
    .locals 0

    iget-object p0, p0, Lsun/font/StandardGlyphVector;->font:Ljava/awt/Font;

    return-object p0
.end method

.method public getFontRenderContext()Ljava/awt/font/FontRenderContext;
    .locals 0

    iget-object p0, p0, Lsun/font/StandardGlyphVector;->frc:Ljava/awt/font/FontRenderContext;

    return-object p0
.end method

.method public getGlyphCharIndex(I)I
    .locals 2

    if-gez p1, :cond_1

    iget-object v0, p0, Lsun/font/StandardGlyphVector;->glyphs:[I

    array-length v0, v0

    if-ge p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    iget-object v0, p0, Lsun/font/StandardGlyphVector;->charIndices:[I

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lsun/font/StandardGlyphVector;->getLayoutFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    iget-object p0, p0, Lsun/font/StandardGlyphVector;->glyphs:[I

    array-length p0, p0

    add-int/lit8 p0, p0, -0x1

    sub-int/2addr p0, p1

    return p0

    :cond_2
    return p1

    :cond_3
    aget p0, v0, p1

    return p0
.end method

.method public getGlyphCharIndices(II[I)[I
    .locals 3

    if-ltz p1, :cond_4

    if-ltz p2, :cond_4

    iget-object v0, p0, Lsun/font/StandardGlyphVector;->glyphs:[I

    array-length v0, v0

    sub-int/2addr v0, p1

    if-gt p2, v0, :cond_4

    if-nez p3, :cond_0

    new-array p3, p2, [I

    :cond_0
    iget-object v0, p0, Lsun/font/StandardGlyphVector;->charIndices:[I

    const/4 v1, 0x0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lsun/font/StandardGlyphVector;->getLayoutFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_1

    iget-object p0, p0, Lsun/font/StandardGlyphVector;->glyphs:[I

    array-length p0, p0

    add-int/lit8 p0, p0, -0x1

    sub-int/2addr p0, p1

    :goto_0
    if-ge v1, p2, :cond_3

    aput p0, p3, v1

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 p0, p0, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-ge v1, p2, :cond_3

    aput p1, p3, v1

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    if-ge v1, p2, :cond_3

    iget-object v0, p0, Lsun/font/StandardGlyphVector;->charIndices:[I

    add-int v2, v1, p1

    aget v0, v0, v2

    aput v0, p3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    return-object p3

    :cond_4
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, ""

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getGlyphCode(I)I
    .locals 0

    iget-object p0, p0, Lsun/font/StandardGlyphVector;->userGlyphs:[I

    aget p0, p0, p1

    return p0
.end method

.method public getGlyphCodes(II[I)[I
    .locals 3

    if-ltz p2, :cond_4

    if-ltz p1, :cond_3

    iget-object v0, p0, Lsun/font/StandardGlyphVector;->glyphs:[I

    array-length v0, v0

    sub-int/2addr v0, p2

    if-gt p1, v0, :cond_2

    if-nez p3, :cond_0

    new-array p3, p2, [I

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_1

    iget-object v1, p0, Lsun/font/StandardGlyphVector;->userGlyphs:[I

    add-int v2, v0, p1

    aget v1, v1, v2

    aput v1, p3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object p3

    :cond_2
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "start + count = "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/2addr p1, p2

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "start = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "count = "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getGlyphInfo()[F
    .locals 7

    invoke-direct {p0}, Lsun/font/StandardGlyphVector;->setFRCTX()V

    invoke-direct {p0}, Lsun/font/StandardGlyphVector;->initPositions()V

    iget-object v0, p0, Lsun/font/StandardGlyphVector;->glyphs:[I

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x8

    new-array v0, v0, [F

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget-object v3, p0, Lsun/font/StandardGlyphVector;->glyphs:[I

    array-length v4, v3

    if-ge v1, v4, :cond_0

    iget-object v4, p0, Lsun/font/StandardGlyphVector;->positions:[F

    mul-int/lit8 v5, v1, 0x2

    aget v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    aget v4, v4, v5

    aput v6, v0, v2

    add-int/lit8 v5, v2, 0x1

    aput v4, v0, v5

    aget v3, v3, v1

    invoke-direct {p0, v1}, Lsun/font/StandardGlyphVector;->getGlyphStrike(I)Lsun/font/StandardGlyphVector$GlyphStrike;

    move-result-object v4

    iget-object v4, v4, Lsun/font/StandardGlyphVector$GlyphStrike;->strike:Lsun/font/FontStrike;

    invoke-virtual {v4, v3}, Lsun/font/FontStrike;->getGlyphMetrics(I)Ljava/awt/geom/Point2D$Float;

    move-result-object v3

    add-int/lit8 v4, v2, 0x2

    iget v5, v3, Ljava/awt/geom/Point2D$Float;->x:F

    aput v5, v0, v4

    add-int/lit8 v4, v2, 0x3

    iget v3, v3, Ljava/awt/geom/Point2D$Float;->y:F

    aput v3, v0, v4

    invoke-virtual {p0, v1}, Lsun/font/StandardGlyphVector;->getGlyphVisualBounds(I)Ljava/awt/Shape;

    move-result-object v3

    invoke-interface {v3}, Ljava/awt/Shape;->getBounds2D()Ljava/awt/geom/Rectangle2D;

    move-result-object v3

    add-int/lit8 v4, v2, 0x4

    invoke-virtual {v3}, Ljava/awt/geom/RectangularShape;->getMinX()D

    move-result-wide v5

    double-to-float v5, v5

    aput v5, v0, v4

    add-int/lit8 v4, v2, 0x5

    invoke-virtual {v3}, Ljava/awt/geom/RectangularShape;->getMinY()D

    move-result-wide v5

    double-to-float v5, v5

    aput v5, v0, v4

    add-int/lit8 v4, v2, 0x6

    invoke-virtual {v3}, Ljava/awt/geom/RectangularShape;->getWidth()D

    move-result-wide v5

    double-to-float v5, v5

    aput v5, v0, v4

    add-int/lit8 v4, v2, 0x7

    invoke-virtual {v3}, Ljava/awt/geom/RectangularShape;->getHeight()D

    move-result-wide v5

    double-to-float v3, v5

    aput v3, v0, v4

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, 0x8

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getGlyphJustificationInfo(I)Ljava/awt/font/GlyphJustificationInfo;
    .locals 2

    if-ltz p1, :cond_0

    iget-object p0, p0, Lsun/font/StandardGlyphVector;->glyphs:[I

    array-length p0, p0

    if-ge p1, p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ix = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getGlyphLogicalBounds(I)Ljava/awt/Shape;
    .locals 11

    if-ltz p1, :cond_3

    iget-object v0, p0, Lsun/font/StandardGlyphVector;->glyphs:[I

    array-length v0, v0

    if-ge p1, v0, :cond_3

    iget-object v0, p0, Lsun/font/StandardGlyphVector;->lbcacheRef:Ljava/lang/ref/SoftReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/awt/Shape;

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lsun/font/StandardGlyphVector;->glyphs:[I

    array-length v0, v0

    new-array v0, v0, [Ljava/awt/Shape;

    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lsun/font/StandardGlyphVector;->lbcacheRef:Ljava/lang/ref/SoftReference;

    :cond_1
    aget-object v1, v0, p1

    if-nez v1, :cond_2

    invoke-direct {p0}, Lsun/font/StandardGlyphVector;->setFRCTX()V

    invoke-direct {p0}, Lsun/font/StandardGlyphVector;->initPositions()V

    new-instance v1, Lsun/font/StandardGlyphVector$ADL;

    invoke-direct {v1}, Lsun/font/StandardGlyphVector$ADL;-><init>()V

    invoke-direct {p0, p1}, Lsun/font/StandardGlyphVector;->getGlyphStrike(I)Lsun/font/StandardGlyphVector$GlyphStrike;

    move-result-object v2

    invoke-virtual {v2, v1}, Lsun/font/StandardGlyphVector$GlyphStrike;->getADL(Lsun/font/StandardGlyphVector$ADL;)V

    iget-object v3, v2, Lsun/font/StandardGlyphVector$GlyphStrike;->strike:Lsun/font/FontStrike;

    iget-object v4, p0, Lsun/font/StandardGlyphVector;->glyphs:[I

    aget v4, v4, p1

    invoke-virtual {v3, v4}, Lsun/font/FontStrike;->getGlyphMetrics(I)Ljava/awt/geom/Point2D$Float;

    move-result-object v3

    iget v4, v3, Ljava/awt/geom/Point2D$Float;->x:F

    iget v3, v3, Ljava/awt/geom/Point2D$Float;->y:F

    iget v5, v1, Lsun/font/StandardGlyphVector$ADL;->descentX:F

    iget v6, v1, Lsun/font/StandardGlyphVector$ADL;->leadingX:F

    add-float/2addr v5, v6

    iget v6, v1, Lsun/font/StandardGlyphVector$ADL;->ascentX:F

    add-float/2addr v5, v6

    iget v7, v1, Lsun/font/StandardGlyphVector$ADL;->descentY:F

    iget v8, v1, Lsun/font/StandardGlyphVector$ADL;->leadingY:F

    add-float/2addr v7, v8

    iget v1, v1, Lsun/font/StandardGlyphVector$ADL;->ascentY:F

    add-float/2addr v7, v1

    iget-object p0, p0, Lsun/font/StandardGlyphVector;->positions:[F

    mul-int/lit8 v8, p1, 0x2

    aget v9, p0, v8

    iget v10, v2, Lsun/font/StandardGlyphVector$GlyphStrike;->dx:F

    add-float/2addr v9, v10

    sub-float/2addr v9, v6

    add-int/lit8 v8, v8, 0x1

    aget p0, p0, v8

    iget v2, v2, Lsun/font/StandardGlyphVector$GlyphStrike;->dy:F

    add-float/2addr p0, v2

    sub-float/2addr p0, v1

    new-instance v1, Ljava/awt/geom/GeneralPath;

    invoke-direct {v1}, Ljava/awt/geom/GeneralPath;-><init>()V

    invoke-virtual {v1, v9, p0}, Ljava/awt/geom/Path2D$Float;->moveTo(FF)V

    add-float/2addr v4, v9

    add-float/2addr v3, p0

    invoke-virtual {v1, v4, v3}, Ljava/awt/geom/Path2D$Float;->lineTo(FF)V

    add-float/2addr v4, v5

    add-float/2addr v3, v7

    invoke-virtual {v1, v4, v3}, Ljava/awt/geom/Path2D$Float;->lineTo(FF)V

    add-float/2addr v9, v5

    add-float/2addr p0, v7

    invoke-virtual {v1, v9, p0}, Ljava/awt/geom/Path2D$Float;->lineTo(FF)V

    invoke-virtual {v1}, Ljava/awt/geom/Path2D;->closePath()V

    new-instance p0, Lsun/font/DelegatingShape;

    invoke-direct {p0, v1}, Lsun/font/DelegatingShape;-><init>(Ljava/awt/Shape;)V

    aput-object p0, v0, p1

    move-object v1, p0

    :cond_2
    return-object v1

    :cond_3
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ix = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getGlyphMetrics(I)Ljava/awt/font/GlyphMetrics;
    .locals 10

    if-ltz p1, :cond_0

    iget-object v0, p0, Lsun/font/StandardGlyphVector;->glyphs:[I

    array-length v0, v0

    if-ge p1, v0, :cond_0

    invoke-virtual {p0, p1}, Lsun/font/StandardGlyphVector;->getGlyphVisualBounds(I)Ljava/awt/Shape;

    move-result-object v0

    invoke-interface {v0}, Ljava/awt/Shape;->getBounds2D()Ljava/awt/geom/Rectangle2D;

    move-result-object v0

    invoke-virtual {p0, p1}, Lsun/font/StandardGlyphVector;->getGlyphPosition(I)Ljava/awt/geom/Point2D;

    move-result-object v1

    invoke-virtual {v0}, Ljava/awt/geom/RectangularShape;->getMinX()D

    move-result-wide v2

    invoke-virtual {v1}, Ljava/awt/geom/Point2D;->getX()D

    move-result-wide v4

    sub-double/2addr v2, v4

    invoke-virtual {v0}, Ljava/awt/geom/RectangularShape;->getMinY()D

    move-result-wide v4

    invoke-virtual {v1}, Ljava/awt/geom/Point2D;->getY()D

    move-result-wide v6

    sub-double/2addr v4, v6

    invoke-virtual {v0}, Ljava/awt/geom/RectangularShape;->getWidth()D

    move-result-wide v6

    invoke-virtual {v0}, Ljava/awt/geom/RectangularShape;->getHeight()D

    move-result-wide v8

    move-object v1, v0

    invoke-virtual/range {v1 .. v9}, Ljava/awt/geom/Rectangle2D;->setRect(DDDD)V

    invoke-direct {p0, p1}, Lsun/font/StandardGlyphVector;->getGlyphStrike(I)Lsun/font/StandardGlyphVector$GlyphStrike;

    move-result-object v1

    iget-object v1, v1, Lsun/font/StandardGlyphVector$GlyphStrike;->strike:Lsun/font/FontStrike;

    iget-object p0, p0, Lsun/font/StandardGlyphVector;->glyphs:[I

    aget p0, p0, p1

    invoke-virtual {v1, p0}, Lsun/font/FontStrike;->getGlyphMetrics(I)Ljava/awt/geom/Point2D$Float;

    move-result-object p0

    new-instance p1, Ljava/awt/font/GlyphMetrics;

    const/4 v2, 0x1

    iget v3, p0, Ljava/awt/geom/Point2D$Float;->x:F

    iget v4, p0, Ljava/awt/geom/Point2D$Float;->y:F

    const/4 v6, 0x0

    move-object v1, p1

    move-object v5, v0

    invoke-direct/range {v1 .. v6}, Ljava/awt/font/GlyphMetrics;-><init>(ZFFLjava/awt/geom/Rectangle2D;B)V

    return-object p1

    :cond_0
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ix = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getGlyphOutline(I)Ljava/awt/Shape;
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, p1, v0, v1, v1}, Lsun/font/StandardGlyphVector;->getGlyphsOutline(IIFF)Ljava/awt/Shape;

    move-result-object p0

    return-object p0
.end method

.method public getGlyphOutline(IFF)Ljava/awt/Shape;
    .locals 1

    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, p1, v0, p2, p3}, Lsun/font/StandardGlyphVector;->getGlyphsOutline(IIFF)Ljava/awt/Shape;

    move-result-object p0

    return-object p0
.end method

.method public getGlyphPixelBounds(ILjava/awt/font/FontRenderContext;FF)Ljava/awt/Rectangle;
    .locals 6

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v4, p1

    invoke-direct/range {v0 .. v5}, Lsun/font/StandardGlyphVector;->getGlyphsPixelBounds(Ljava/awt/font/FontRenderContext;FFII)Ljava/awt/Rectangle;

    move-result-object p0

    return-object p0
.end method

.method public getGlyphPosition(I)Ljava/awt/geom/Point2D;
    .locals 2

    invoke-direct {p0}, Lsun/font/StandardGlyphVector;->initPositions()V

    mul-int/lit8 p1, p1, 0x2

    new-instance v0, Ljava/awt/geom/Point2D$Float;

    iget-object p0, p0, Lsun/font/StandardGlyphVector;->positions:[F

    aget v1, p0, p1

    add-int/lit8 p1, p1, 0x1

    aget p0, p0, p1

    invoke-direct {v0, v1, p0}, Ljava/awt/geom/Point2D$Float;-><init>(FF)V

    return-object v0
.end method

.method public getGlyphPositions(II[F)[F
    .locals 1

    if-ltz p2, :cond_2

    if-ltz p1, :cond_1

    .line 1
    iget-object v0, p0, Lsun/font/StandardGlyphVector;->glyphs:[I

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    sub-int/2addr v0, p2

    if-gt p1, v0, :cond_0

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0, p3}, Lsun/font/StandardGlyphVector;->internalGetGlyphPositions(III[F)[F

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "start + count = "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/2addr p1, p2

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 4
    :cond_1
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "start = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 5
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "count = "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getGlyphPositions([F)[F
    .locals 2

    .line 6
    iget-object v0, p0, Lsun/font/StandardGlyphVector;->glyphs:[I

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0, v1, p1}, Lsun/font/StandardGlyphVector;->internalGetGlyphPositions(III[F)[F

    move-result-object p0

    return-object p0
.end method

.method public getGlyphTransform(I)Ljava/awt/geom/AffineTransform;
    .locals 2

    if-ltz p1, :cond_1

    iget-object v0, p0, Lsun/font/StandardGlyphVector;->glyphs:[I

    array-length v0, v0

    if-ge p1, v0, :cond_1

    iget-object p0, p0, Lsun/font/StandardGlyphVector;->gti:Lsun/font/StandardGlyphVector$GlyphTransformInfo;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lsun/font/StandardGlyphVector$GlyphTransformInfo;->getGlyphTransform(I)Ljava/awt/geom/AffineTransform;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ix = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getGlyphTransforms()[Ljava/awt/geom/AffineTransform;
    .locals 3

    .line 6
    iget-object v0, p0, Lsun/font/StandardGlyphVector;->glyphs:[I

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0, v1}, Lsun/font/StandardGlyphVector;->getGlyphTransforms(II[Ljava/awt/geom/AffineTransform;)[Ljava/awt/geom/AffineTransform;

    move-result-object p0

    return-object p0
.end method

.method public getGlyphTransforms(II[Ljava/awt/geom/AffineTransform;)[Ljava/awt/geom/AffineTransform;
    .locals 2

    if-ltz p1, :cond_3

    if-ltz p2, :cond_3

    add-int v0, p1, p2

    .line 1
    iget-object v1, p0, Lsun/font/StandardGlyphVector;->glyphs:[I

    array-length v1, v1

    if-gt v0, v1, :cond_3

    .line 2
    iget-object v0, p0, Lsun/font/StandardGlyphVector;->gti:Lsun/font/StandardGlyphVector$GlyphTransformInfo;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    if-nez p3, :cond_1

    .line 3
    new-array p3, p2, [Ljava/awt/geom/AffineTransform;

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_2

    .line 4
    iget-object v1, p0, Lsun/font/StandardGlyphVector;->gti:Lsun/font/StandardGlyphVector$GlyphTransformInfo;

    invoke-virtual {v1, p1}, Lsun/font/StandardGlyphVector$GlyphTransformInfo;->getGlyphTransform(I)Ljava/awt/geom/AffineTransform;

    move-result-object v1

    aput-object v1, p3, v0

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    return-object p3

    .line 5
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "start: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " count: "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getGlyphVisualBounds(I)Ljava/awt/Shape;
    .locals 2

    if-ltz p1, :cond_3

    iget-object v0, p0, Lsun/font/StandardGlyphVector;->glyphs:[I

    array-length v0, v0

    if-ge p1, v0, :cond_3

    iget-object v0, p0, Lsun/font/StandardGlyphVector;->vbcacheRef:Ljava/lang/ref/SoftReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/awt/Shape;

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lsun/font/StandardGlyphVector;->glyphs:[I

    array-length v0, v0

    new-array v0, v0, [Ljava/awt/Shape;

    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lsun/font/StandardGlyphVector;->vbcacheRef:Ljava/lang/ref/SoftReference;

    :cond_1
    aget-object v1, v0, p1

    if-nez v1, :cond_2

    new-instance v1, Lsun/font/DelegatingShape;

    invoke-direct {p0, p1}, Lsun/font/StandardGlyphVector;->getGlyphOutlineBounds(I)Ljava/awt/geom/Rectangle2D;

    move-result-object p0

    invoke-direct {v1, p0}, Lsun/font/DelegatingShape;-><init>(Ljava/awt/Shape;)V

    aput-object v1, v0, p1

    :cond_2
    return-object v1

    :cond_3
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ix = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getLayoutFlags()I
    .locals 8

    iget v0, p0, Lsun/font/StandardGlyphVector;->flags:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_5

    const/4 v0, 0x0

    iput v0, p0, Lsun/font/StandardGlyphVector;->flags:I

    iget-object v1, p0, Lsun/font/StandardGlyphVector;->charIndices:[I

    if-eqz v1, :cond_5

    iget-object v2, p0, Lsun/font/StandardGlyphVector;->glyphs:[I

    array-length v2, v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_5

    array-length v1, v1

    move v2, v0

    move v4, v3

    move v5, v4

    :goto_0
    iget-object v6, p0, Lsun/font/StandardGlyphVector;->charIndices:[I

    array-length v7, v6

    if-ge v2, v7, :cond_3

    if-nez v4, :cond_0

    if-eqz v5, :cond_3

    :cond_0
    aget v6, v6, v2

    if-eqz v4, :cond_1

    if-ne v6, v2, :cond_1

    move v4, v3

    goto :goto_1

    :cond_1
    move v4, v0

    :goto_1
    if-eqz v5, :cond_2

    add-int/lit8 v1, v1, -0x1

    if-ne v6, v1, :cond_2

    move v5, v3

    goto :goto_2

    :cond_2
    move v5, v0

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    if-eqz v5, :cond_4

    iget v0, p0, Lsun/font/StandardGlyphVector;->flags:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lsun/font/StandardGlyphVector;->flags:I

    :cond_4
    if-nez v5, :cond_5

    if-nez v4, :cond_5

    iget v0, p0, Lsun/font/StandardGlyphVector;->flags:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lsun/font/StandardGlyphVector;->flags:I

    :cond_5
    iget p0, p0, Lsun/font/StandardGlyphVector;->flags:I

    return p0
.end method

.method public getLogicalBounds()Ljava/awt/geom/Rectangle2D;
    .locals 4

    invoke-direct {p0}, Lsun/font/StandardGlyphVector;->setFRCTX()V

    invoke-direct {p0}, Lsun/font/StandardGlyphVector;->initPositions()V

    iget-object v0, p0, Lsun/font/StandardGlyphVector;->font:Ljava/awt/Font;

    const-string v1, ""

    iget-object v2, p0, Lsun/font/StandardGlyphVector;->frc:Ljava/awt/font/FontRenderContext;

    invoke-virtual {v0, v1, v2}, Ljava/awt/Font;->getLineMetrics(Ljava/lang/String;Ljava/awt/font/FontRenderContext;)Ljava/awt/font/LineMetrics;

    move-result-object v0

    invoke-virtual {v0}, Ljava/awt/font/LineMetrics;->getAscent()F

    move-result v1

    neg-float v1, v1

    invoke-virtual {v0}, Ljava/awt/font/LineMetrics;->getDescent()F

    move-result v2

    invoke-virtual {v0}, Ljava/awt/font/LineMetrics;->getLeading()F

    move-result v0

    add-float/2addr v2, v0

    iget-object v0, p0, Lsun/font/StandardGlyphVector;->glyphs:[I

    array-length v0, v0

    const/4 v3, 0x0

    if-lez v0, :cond_0

    iget-object p0, p0, Lsun/font/StandardGlyphVector;->positions:[F

    array-length v0, p0

    add-int/lit8 v0, v0, -0x2

    aget p0, p0, v0

    goto :goto_0

    :cond_0
    move p0, v3

    :goto_0
    new-instance v0, Ljava/awt/geom/Rectangle2D$Float;

    sub-float/2addr p0, v3

    sub-float/2addr v2, v1

    invoke-direct {v0, v3, v1, p0, v2}, Ljava/awt/geom/Rectangle2D$Float;-><init>(FFFF)V

    return-object v0
.end method

.method public getNumGlyphs()I
    .locals 0

    iget-object p0, p0, Lsun/font/StandardGlyphVector;->glyphs:[I

    array-length p0, p0

    return p0
.end method

.method public getOutline()Ljava/awt/Shape;
    .locals 3

    .line 1
    iget-object v0, p0, Lsun/font/StandardGlyphVector;->glyphs:[I

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1, v1}, Lsun/font/StandardGlyphVector;->getGlyphsOutline(IIFF)Ljava/awt/Shape;

    move-result-object p0

    return-object p0
.end method

.method public getOutline(FF)Ljava/awt/Shape;
    .locals 2

    .line 2
    iget-object v0, p0, Lsun/font/StandardGlyphVector;->glyphs:[I

    array-length v0, v0

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0, p1, p2}, Lsun/font/StandardGlyphVector;->getGlyphsOutline(IIFF)Ljava/awt/Shape;

    move-result-object p0

    return-object p0
.end method

.method public getPixelBounds(Ljava/awt/font/FontRenderContext;FF)Ljava/awt/Rectangle;
    .locals 6

    const/4 v4, 0x0

    iget-object v0, p0, Lsun/font/StandardGlyphVector;->glyphs:[I

    array-length v5, v0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lsun/font/StandardGlyphVector;->getGlyphsPixelBounds(Ljava/awt/font/FontRenderContext;FFII)Ljava/awt/Rectangle;

    move-result-object p0

    return-object p0
.end method

.method public getValidatedGlyphs([I)[I
    .locals 5

    array-length v0, p1

    new-array v1, v0, [I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    aget v3, p1, v2

    const v4, 0xfffe

    if-eq v3, v4, :cond_1

    const v4, 0xffff

    if-ne v3, v4, :cond_0

    goto :goto_1

    :cond_0
    iget-object v4, p0, Lsun/font/StandardGlyphVector;->font2D:Lsun/font/Font2D;

    invoke-virtual {v4, v3}, Lsun/font/Font2D;->getValidatedGlyphCode(I)I

    move-result v3

    aput v3, v1, v2

    goto :goto_2

    :cond_1
    :goto_1
    aput v3, v1, v2

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method public getVisualBounds()Ljava/awt/geom/Rectangle2D;
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lsun/font/StandardGlyphVector;->glyphs:[I

    array-length v2, v2

    if-ge v1, v2, :cond_2

    invoke-virtual {p0, v1}, Lsun/font/StandardGlyphVector;->getGlyphVisualBounds(I)Ljava/awt/Shape;

    move-result-object v2

    invoke-interface {v2}, Ljava/awt/Shape;->getBounds2D()Ljava/awt/geom/Rectangle2D;

    move-result-object v2

    invoke-virtual {v2}, Ljava/awt/geom/RectangularShape;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    if-nez v0, :cond_0

    move-object v0, v2

    goto :goto_1

    :cond_0
    invoke-static {v0, v2, v0}, Ljava/awt/geom/Rectangle2D;->union(Ljava/awt/geom/Rectangle2D;Ljava/awt/geom/Rectangle2D;Ljava/awt/geom/Rectangle2D;)V

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    if-nez v0, :cond_3

    new-instance v0, Ljava/awt/geom/Rectangle2D$Float;

    const/4 p0, 0x0

    invoke-direct {v0, p0, p0, p0, p0}, Ljava/awt/geom/Rectangle2D$Float;-><init>(FFFF)V

    :cond_3
    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lsun/font/StandardGlyphVector;->font:Ljava/awt/Font;

    invoke-virtual {v0}, Ljava/awt/Font;->hashCode()I

    move-result v0

    iget-object p0, p0, Lsun/font/StandardGlyphVector;->glyphs:[I

    array-length p0, p0

    xor-int/2addr p0, v0

    return p0
.end method

.method public initGlyphVector(Ljava/awt/Font;Ljava/awt/font/FontRenderContext;[I[F[II)V
    .locals 0

    iput-object p1, p0, Lsun/font/StandardGlyphVector;->font:Ljava/awt/Font;

    iput-object p2, p0, Lsun/font/StandardGlyphVector;->frc:Ljava/awt/font/FontRenderContext;

    iput-object p3, p0, Lsun/font/StandardGlyphVector;->glyphs:[I

    iput-object p3, p0, Lsun/font/StandardGlyphVector;->userGlyphs:[I

    iput-object p4, p0, Lsun/font/StandardGlyphVector;->positions:[F

    iput-object p5, p0, Lsun/font/StandardGlyphVector;->charIndices:[I

    iput p6, p0, Lsun/font/StandardGlyphVector;->flags:I

    invoke-direct {p0}, Lsun/font/StandardGlyphVector;->initFontData()V

    return-void
.end method

.method public needsPositions([D)Z
    .locals 1

    iget-object v0, p0, Lsun/font/StandardGlyphVector;->gti:Lsun/font/StandardGlyphVector$GlyphTransformInfo;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lsun/font/StandardGlyphVector;->getLayoutFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1

    iget-object p0, p0, Lsun/font/StandardGlyphVector;->frctx:Ljava/awt/geom/AffineTransform;

    invoke-static {p1, p0}, Lsun/font/StandardGlyphVector;->matchTX([DLjava/awt/geom/AffineTransform;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public performDefaultLayout()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lsun/font/StandardGlyphVector;->positions:[F

    iget-object v0, p0, Lsun/font/StandardGlyphVector;->font:Ljava/awt/Font;

    invoke-direct {p0, v0}, Lsun/font/StandardGlyphVector;->getTracking(Ljava/awt/Font;)F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lsun/font/StandardGlyphVector;->clearFlags(I)V

    :cond_0
    return-void
.end method

.method public setGlyphPosition(ILjava/awt/geom/Point2D;)V
    .locals 4

    if-ltz p1, :cond_1

    iget-object v0, p0, Lsun/font/StandardGlyphVector;->glyphs:[I

    array-length v0, v0

    if-gt p1, v0, :cond_1

    invoke-direct {p0}, Lsun/font/StandardGlyphVector;->initPositions()V

    shl-int/lit8 v0, p1, 0x1

    iget-object v1, p0, Lsun/font/StandardGlyphVector;->positions:[F

    invoke-virtual {p2}, Ljava/awt/geom/Point2D;->getX()D

    move-result-wide v2

    double-to-float v2, v2

    aput v2, v1, v0

    iget-object v1, p0, Lsun/font/StandardGlyphVector;->positions:[F

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p2}, Ljava/awt/geom/Point2D;->getY()D

    move-result-wide v2

    double-to-float p2, v2

    aput p2, v1, v0

    iget-object p2, p0, Lsun/font/StandardGlyphVector;->glyphs:[I

    array-length p2, p2

    if-ge p1, p2, :cond_0

    invoke-direct {p0, p1}, Lsun/font/StandardGlyphVector;->clearCaches(I)V

    :cond_0
    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lsun/font/StandardGlyphVector;->addFlags(I)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ix = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setGlyphPositions([F)V
    .locals 3

    .line 6
    iget-object v0, p0, Lsun/font/StandardGlyphVector;->glyphs:[I

    array-length v0, v0

    const/4 v1, 0x2

    mul-int/2addr v0, v1

    add-int/2addr v0, v1

    .line 7
    array-length v2, p1

    if-ne v2, v0, :cond_0

    .line 8
    invoke-virtual {p1}, [F->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [F

    iput-object p1, p0, Lsun/font/StandardGlyphVector;->positions:[F

    .line 9
    invoke-direct {p0}, Lsun/font/StandardGlyphVector;->clearCaches()V

    .line 10
    invoke-direct {p0, v1}, Lsun/font/StandardGlyphVector;->addFlags(I)V

    return-void

    .line 11
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "srcPositions.length != "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setGlyphPositions([FIII)V
    .locals 3

    if-ltz p4, :cond_1

    .line 1
    invoke-direct {p0}, Lsun/font/StandardGlyphVector;->initPositions()V

    const/4 v0, 0x2

    mul-int/2addr p3, v0

    mul-int/2addr p4, v0

    add-int/2addr p4, p3

    :goto_0
    if-ge p3, p4, :cond_0

    .line 2
    iget-object v1, p0, Lsun/font/StandardGlyphVector;->positions:[F

    aget v2, p1, p2

    aput v2, v1, p3

    add-int/lit8 p3, p3, 0x1

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 3
    :cond_0
    invoke-direct {p0}, Lsun/font/StandardGlyphVector;->clearCaches()V

    .line 4
    invoke-direct {p0, v0}, Lsun/font/StandardGlyphVector;->addFlags(I)V

    return-void

    .line 5
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "count = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setGlyphTransform(ILjava/awt/geom/AffineTransform;)V
    .locals 1

    if-ltz p1, :cond_4

    iget-object v0, p0, Lsun/font/StandardGlyphVector;->glyphs:[I

    array-length v0, v0

    if-ge p1, v0, :cond_4

    iget-object v0, p0, Lsun/font/StandardGlyphVector;->gti:Lsun/font/StandardGlyphVector$GlyphTransformInfo;

    if-nez v0, :cond_2

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/awt/geom/AffineTransform;->isIdentity()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lsun/font/StandardGlyphVector$GlyphTransformInfo;

    invoke-direct {v0, p0}, Lsun/font/StandardGlyphVector$GlyphTransformInfo;-><init>(Lsun/font/StandardGlyphVector;)V

    iput-object v0, p0, Lsun/font/StandardGlyphVector;->gti:Lsun/font/StandardGlyphVector$GlyphTransformInfo;

    goto :goto_1

    :cond_1
    :goto_0
    return-void

    :cond_2
    :goto_1
    iget-object v0, p0, Lsun/font/StandardGlyphVector;->gti:Lsun/font/StandardGlyphVector$GlyphTransformInfo;

    invoke-virtual {v0, p1, p2}, Lsun/font/StandardGlyphVector$GlyphTransformInfo;->setGlyphTransform(ILjava/awt/geom/AffineTransform;)V

    iget-object p1, p0, Lsun/font/StandardGlyphVector;->gti:Lsun/font/StandardGlyphVector$GlyphTransformInfo;

    invoke-virtual {p1}, Lsun/font/StandardGlyphVector$GlyphTransformInfo;->transformCount()I

    move-result p1

    if-nez p1, :cond_3

    const/4 p1, 0x0

    iput-object p1, p0, Lsun/font/StandardGlyphVector;->gti:Lsun/font/StandardGlyphVector$GlyphTransformInfo;

    :cond_3
    return-void

    :cond_4
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ix = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setGlyphTransforms([Ljava/awt/geom/AffineTransform;)V
    .locals 2

    .line 2
    iget-object v0, p0, Lsun/font/StandardGlyphVector;->glyphs:[I

    array-length v0, v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v1, v0}, Lsun/font/StandardGlyphVector;->setGlyphTransforms([Ljava/awt/geom/AffineTransform;III)V

    return-void
.end method

.method public setGlyphTransforms([Ljava/awt/geom/AffineTransform;III)V
    .locals 1

    add-int/2addr p4, p3

    :goto_0
    if-ge p3, p4, :cond_0

    add-int v0, p2, p3

    .line 1
    aget-object v0, p1, v0

    invoke-virtual {p0, p3, v0}, Lsun/font/StandardGlyphVector;->setGlyphTransform(ILjava/awt/geom/AffineTransform;)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setupGlyphImages([J[F[D)Ljava/lang/Object;
    .locals 7

    invoke-direct {p0}, Lsun/font/StandardGlyphVector;->initPositions()V

    invoke-direct {p0, p3}, Lsun/font/StandardGlyphVector;->setRenderTransform([D)V

    iget-object p3, p0, Lsun/font/StandardGlyphVector;->gti:Lsun/font/StandardGlyphVector$GlyphTransformInfo;

    if-eqz p3, :cond_0

    iget-object p0, p0, Lsun/font/StandardGlyphVector;->dtx:Ljava/awt/geom/AffineTransform;

    invoke-virtual {p3, p1, p2, p0}, Lsun/font/StandardGlyphVector$GlyphTransformInfo;->setupGlyphImages([J[FLjava/awt/geom/AffineTransform;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-direct {p0}, Lsun/font/StandardGlyphVector;->getDefaultStrike()Lsun/font/StandardGlyphVector$GlyphStrike;

    move-result-object p3

    iget-object v0, p3, Lsun/font/StandardGlyphVector$GlyphStrike;->strike:Lsun/font/FontStrike;

    iget-object v1, p0, Lsun/font/StandardGlyphVector;->glyphs:[I

    array-length v2, v1

    invoke-virtual {v0, v1, p1, v2}, Lsun/font/FontStrike;->getGlyphImagePtrs([I[JI)V

    if-eqz p2, :cond_2

    iget-object p1, p0, Lsun/font/StandardGlyphVector;->dtx:Ljava/awt/geom/AffineTransform;

    invoke-virtual {p1}, Ljava/awt/geom/AffineTransform;->isIdentity()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lsun/font/StandardGlyphVector;->positions:[F

    iget-object p0, p0, Lsun/font/StandardGlyphVector;->glyphs:[I

    array-length p0, p0

    mul-int/lit8 p0, p0, 0x2

    const/4 v0, 0x0

    invoke-static {p1, v0, p2, v0, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lsun/font/StandardGlyphVector;->dtx:Ljava/awt/geom/AffineTransform;

    iget-object v2, p0, Lsun/font/StandardGlyphVector;->positions:[F

    const/4 v3, 0x0

    const/4 v5, 0x0

    iget-object p0, p0, Lsun/font/StandardGlyphVector;->glyphs:[I

    array-length v6, p0

    move-object v4, p2

    invoke-virtual/range {v1 .. v6}, Ljava/awt/geom/AffineTransform;->transform([FI[FII)V

    :cond_2
    :goto_0
    return-object p3
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lsun/font/StandardGlyphVector;->appendString(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
