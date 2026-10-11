.class public final Lsun/font/StandardGlyphVector$GlyphStrike;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/font/StandardGlyphVector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GlyphStrike"
.end annotation


# instance fields
.field dx:F

.field dy:F

.field sgv:Lsun/font/StandardGlyphVector;

.field strike:Lsun/font/FontStrike;


# direct methods
.method private constructor <init>(Lsun/font/StandardGlyphVector;Lsun/font/FontStrike;FF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsun/font/StandardGlyphVector$GlyphStrike;->sgv:Lsun/font/StandardGlyphVector;

    iput-object p2, p0, Lsun/font/StandardGlyphVector$GlyphStrike;->strike:Lsun/font/FontStrike;

    iput p3, p0, Lsun/font/StandardGlyphVector$GlyphStrike;->dx:F

    iput p4, p0, Lsun/font/StandardGlyphVector$GlyphStrike;->dy:F

    return-void
.end method

.method public static create(Lsun/font/StandardGlyphVector;Ljava/awt/geom/AffineTransform;Ljava/awt/geom/AffineTransform;)Lsun/font/StandardGlyphVector$GlyphStrike;
    .locals 9

    invoke-static {p0}, Lsun/font/StandardGlyphVector;->access$700(Lsun/font/StandardGlyphVector;)Ljava/awt/geom/AffineTransform;

    move-result-object v0

    invoke-virtual {p1}, Ljava/awt/geom/AffineTransform;->isIdentity()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    move-object v5, v0

    move p2, v2

    goto :goto_2

    :cond_1
    :goto_0
    new-instance v0, Ljava/awt/geom/AffineTransform;

    invoke-static {p0}, Lsun/font/StandardGlyphVector;->access$700(Lsun/font/StandardGlyphVector;)Ljava/awt/geom/AffineTransform;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/awt/geom/AffineTransform;-><init>(Ljava/awt/geom/AffineTransform;)V

    if-eqz p2, :cond_2

    invoke-virtual {v0, p2}, Ljava/awt/geom/AffineTransform;->preConcatenate(Ljava/awt/geom/AffineTransform;)V

    invoke-virtual {v0}, Ljava/awt/geom/AffineTransform;->getTranslateX()D

    move-result-wide v1

    double-to-float v2, v1

    invoke-virtual {v0}, Ljava/awt/geom/AffineTransform;->getTranslateY()D

    move-result-wide v3

    double-to-float p2, v3

    goto :goto_1

    :cond_2
    move p2, v2

    :goto_1
    invoke-virtual {p1}, Ljava/awt/geom/AffineTransform;->isIdentity()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v0, p1}, Ljava/awt/geom/AffineTransform;->preConcatenate(Ljava/awt/geom/AffineTransform;)V

    :cond_3
    move-object v5, v0

    :goto_2
    invoke-static {p0}, Lsun/font/StandardGlyphVector;->access$800(Lsun/font/StandardGlyphVector;)Ljava/awt/font/FontRenderContext;

    move-result-object v0

    invoke-virtual {v0}, Ljava/awt/font/FontRenderContext;->getAntiAliasingHint()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Ljava/awt/RenderingHints;->VALUE_TEXT_ANTIALIAS_GASP:Ljava/lang/Object;

    if-ne v0, v1, :cond_5

    invoke-virtual {v5}, Ljava/awt/geom/AffineTransform;->isIdentity()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {v5}, Ljava/awt/geom/AffineTransform;->getType()I

    move-result v1

    and-int/lit8 v1, v1, -0x2

    if-eqz v1, :cond_5

    invoke-virtual {v5}, Ljava/awt/geom/AffineTransform;->getShearX()D

    move-result-wide v3

    const-wide/16 v6, 0x0

    cmpl-double v1, v3, v6

    if-eqz v1, :cond_4

    invoke-virtual {v5}, Ljava/awt/geom/AffineTransform;->getScaleY()D

    move-result-wide v6

    mul-double/2addr v3, v3

    mul-double/2addr v6, v6

    add-double/2addr v3, v6

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    goto :goto_3

    :cond_4
    invoke-virtual {v5}, Ljava/awt/geom/AffineTransform;->getScaleY()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    :goto_3
    double-to-int v1, v3

    goto :goto_4

    :cond_5
    const/4 v1, 0x1

    :goto_4
    invoke-static {p0}, Lsun/font/StandardGlyphVector;->access$900(Lsun/font/StandardGlyphVector;)Lsun/font/Font2D;

    move-result-object v3

    invoke-static {v0, v3, v1}, Lsun/font/FontStrikeDesc;->getAAHintIntVal(Ljava/lang/Object;Lsun/font/Font2D;I)I

    move-result v7

    invoke-static {p0}, Lsun/font/StandardGlyphVector;->access$800(Lsun/font/StandardGlyphVector;)Ljava/awt/font/FontRenderContext;

    move-result-object v0

    invoke-virtual {v0}, Ljava/awt/font/FontRenderContext;->getFractionalMetricsHint()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lsun/font/FontStrikeDesc;->getFMHintIntVal(Ljava/lang/Object;)I

    move-result v8

    new-instance v0, Lsun/font/FontStrikeDesc;

    invoke-static {p0}, Lsun/font/StandardGlyphVector;->access$1000(Lsun/font/StandardGlyphVector;)Ljava/awt/Font;

    move-result-object v1

    invoke-virtual {v1}, Ljava/awt/Font;->getStyle()I

    move-result v6

    move-object v3, v0

    move-object v4, p1

    invoke-direct/range {v3 .. v8}, Lsun/font/FontStrikeDesc;-><init>(Ljava/awt/geom/AffineTransform;Ljava/awt/geom/AffineTransform;III)V

    invoke-static {p0}, Lsun/font/StandardGlyphVector;->access$900(Lsun/font/StandardGlyphVector;)Lsun/font/Font2D;

    move-result-object p1

    instance-of v1, p1, Lsun/font/FontSubstitution;

    if-eqz v1, :cond_6

    check-cast p1, Lsun/font/FontSubstitution;

    invoke-interface {p1}, Lsun/font/FontSubstitution;->getCompositeFont2D()Lsun/font/CompositeFont;

    move-result-object p1

    :cond_6
    iget-object p1, p1, Lsun/font/Font2D;->handle:Lsun/font/Font2DHandle;

    iget-object p1, p1, Lsun/font/Font2DHandle;->font2D:Lsun/font/Font2D;

    invoke-virtual {p1, v0}, Lsun/font/Font2D;->getStrike(Lsun/font/FontStrikeDesc;)Lsun/font/FontStrike;

    move-result-object p1

    new-instance v0, Lsun/font/StandardGlyphVector$GlyphStrike;

    invoke-direct {v0, p0, p1, v2, p2}, Lsun/font/StandardGlyphVector$GlyphStrike;-><init>(Lsun/font/StandardGlyphVector;Lsun/font/FontStrike;FF)V

    return-object v0
.end method


# virtual methods
.method public addDefaultGlyphAdvance(ILjava/awt/geom/Point2D$Float;)V
    .locals 3

    iget-object v0, p0, Lsun/font/StandardGlyphVector$GlyphStrike;->strike:Lsun/font/FontStrike;

    invoke-virtual {v0, p1}, Lsun/font/FontStrike;->getGlyphMetrics(I)Ljava/awt/geom/Point2D$Float;

    move-result-object p1

    iget v0, p2, Ljava/awt/geom/Point2D$Float;->x:F

    iget v1, p1, Ljava/awt/geom/Point2D$Float;->x:F

    iget v2, p0, Lsun/font/StandardGlyphVector$GlyphStrike;->dx:F

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Ljava/awt/geom/Point2D$Float;->x:F

    iget v0, p2, Ljava/awt/geom/Point2D$Float;->y:F

    iget p1, p1, Ljava/awt/geom/Point2D$Float;->y:F

    iget p0, p0, Lsun/font/StandardGlyphVector$GlyphStrike;->dy:F

    add-float/2addr p1, p0

    add-float/2addr v0, p1

    iput v0, p2, Ljava/awt/geom/Point2D$Float;->y:F

    return-void
.end method

.method public appendGlyphOutline(ILjava/awt/geom/GeneralPath;FF)V
    .locals 2

    iget-object v0, p0, Lsun/font/StandardGlyphVector$GlyphStrike;->sgv:Lsun/font/StandardGlyphVector;

    invoke-static {v0}, Lsun/font/StandardGlyphVector;->access$1100(Lsun/font/StandardGlyphVector;)Ljava/awt/geom/AffineTransform;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lsun/font/StandardGlyphVector$GlyphStrike;->strike:Lsun/font/FontStrike;

    iget v1, p0, Lsun/font/StandardGlyphVector$GlyphStrike;->dx:F

    add-float/2addr p3, v1

    iget p0, p0, Lsun/font/StandardGlyphVector$GlyphStrike;->dy:F

    add-float/2addr p4, p0

    invoke-virtual {v0, p1, p3, p4}, Lsun/font/FontStrike;->getGlyphOutline(IFF)Ljava/awt/geom/GeneralPath;

    move-result-object p0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lsun/font/StandardGlyphVector$GlyphStrike;->strike:Lsun/font/FontStrike;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, v1}, Lsun/font/FontStrike;->getGlyphOutline(IFF)Ljava/awt/geom/GeneralPath;

    move-result-object p1

    iget-object v0, p0, Lsun/font/StandardGlyphVector$GlyphStrike;->sgv:Lsun/font/StandardGlyphVector;

    invoke-static {v0}, Lsun/font/StandardGlyphVector;->access$1100(Lsun/font/StandardGlyphVector;)Ljava/awt/geom/AffineTransform;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/awt/geom/Path2D$Float;->transform(Ljava/awt/geom/AffineTransform;)V

    iget v0, p0, Lsun/font/StandardGlyphVector$GlyphStrike;->dx:F

    add-float/2addr p3, v0

    float-to-double v0, p3

    iget p0, p0, Lsun/font/StandardGlyphVector$GlyphStrike;->dy:F

    add-float/2addr p4, p0

    float-to-double p3, p4

    invoke-static {v0, v1, p3, p4}, Ljava/awt/geom/AffineTransform;->getTranslateInstance(DD)Ljava/awt/geom/AffineTransform;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/awt/geom/Path2D$Float;->transform(Ljava/awt/geom/AffineTransform;)V

    move-object p0, p1

    :goto_0
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ljava/awt/geom/Path2D$Float;->getPathIterator(Ljava/awt/geom/AffineTransform;)Ljava/awt/geom/PathIterator;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p2, p0, p1}, Ljava/awt/geom/Path2D$Float;->append(Ljava/awt/geom/PathIterator;Z)V

    return-void
.end method

.method public getADL(Lsun/font/StandardGlyphVector$ADL;)V
    .locals 4

    iget-object v0, p0, Lsun/font/StandardGlyphVector$GlyphStrike;->strike:Lsun/font/FontStrike;

    invoke-virtual {v0}, Lsun/font/FontStrike;->getFontMetrics()Lsun/font/StrikeMetrics;

    move-result-object v0

    iget-object v1, p0, Lsun/font/StandardGlyphVector$GlyphStrike;->sgv:Lsun/font/StandardGlyphVector;

    invoke-static {v1}, Lsun/font/StandardGlyphVector;->access$1000(Lsun/font/StandardGlyphVector;)Ljava/awt/Font;

    move-result-object v1

    invoke-virtual {v1}, Ljava/awt/Font;->isTransformed()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/awt/geom/Point2D$Float;

    invoke-direct {v1}, Ljava/awt/geom/Point2D$Float;-><init>()V

    iget-object v2, p0, Lsun/font/StandardGlyphVector$GlyphStrike;->sgv:Lsun/font/StandardGlyphVector;

    invoke-static {v2}, Lsun/font/StandardGlyphVector;->access$1000(Lsun/font/StandardGlyphVector;)Ljava/awt/Font;

    move-result-object v2

    invoke-virtual {v2}, Ljava/awt/Font;->getTransform()Ljava/awt/geom/AffineTransform;

    move-result-object v2

    invoke-virtual {v2}, Ljava/awt/geom/AffineTransform;->getTranslateX()D

    move-result-wide v2

    double-to-float v2, v2

    iput v2, v1, Ljava/awt/geom/Point2D$Float;->x:F

    iget-object p0, p0, Lsun/font/StandardGlyphVector$GlyphStrike;->sgv:Lsun/font/StandardGlyphVector;

    invoke-static {p0}, Lsun/font/StandardGlyphVector;->access$1000(Lsun/font/StandardGlyphVector;)Ljava/awt/Font;

    move-result-object p0

    invoke-virtual {p0}, Ljava/awt/Font;->getTransform()Ljava/awt/geom/AffineTransform;

    move-result-object p0

    invoke-virtual {p0}, Ljava/awt/geom/AffineTransform;->getTranslateY()D

    move-result-wide v2

    double-to-float p0, v2

    iput p0, v1, Ljava/awt/geom/Point2D$Float;->y:F

    :cond_0
    iget p0, v0, Lsun/font/StrikeMetrics;->ascentX:F

    neg-float p0, p0

    iput p0, p1, Lsun/font/StandardGlyphVector$ADL;->ascentX:F

    iget p0, v0, Lsun/font/StrikeMetrics;->ascentY:F

    neg-float p0, p0

    iput p0, p1, Lsun/font/StandardGlyphVector$ADL;->ascentY:F

    iget p0, v0, Lsun/font/StrikeMetrics;->descentX:F

    iput p0, p1, Lsun/font/StandardGlyphVector$ADL;->descentX:F

    iget p0, v0, Lsun/font/StrikeMetrics;->descentY:F

    iput p0, p1, Lsun/font/StandardGlyphVector$ADL;->descentY:F

    iget p0, v0, Lsun/font/StrikeMetrics;->leadingX:F

    iput p0, p1, Lsun/font/StandardGlyphVector$ADL;->leadingX:F

    iget p0, v0, Lsun/font/StrikeMetrics;->leadingY:F

    iput p0, p1, Lsun/font/StandardGlyphVector$ADL;->leadingY:F

    return-void
.end method

.method public getGlyphOutlineBounds(IFF)Ljava/awt/geom/Rectangle2D;
    .locals 10

    iget-object v0, p0, Lsun/font/StandardGlyphVector$GlyphStrike;->sgv:Lsun/font/StandardGlyphVector;

    invoke-static {v0}, Lsun/font/StandardGlyphVector;->access$1100(Lsun/font/StandardGlyphVector;)Ljava/awt/geom/AffineTransform;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/awt/geom/Rectangle2D$Float;

    invoke-direct {v0}, Ljava/awt/geom/Rectangle2D$Float;-><init>()V

    iget-object v1, p0, Lsun/font/StandardGlyphVector$GlyphStrike;->strike:Lsun/font/FontStrike;

    invoke-virtual {v1, p1}, Lsun/font/FontStrike;->getGlyphOutlineBounds(I)Ljava/awt/geom/Rectangle2D$Float;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/awt/geom/Rectangle2D;->setRect(Ljava/awt/geom/Rectangle2D;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lsun/font/StandardGlyphVector$GlyphStrike;->strike:Lsun/font/FontStrike;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, v1}, Lsun/font/FontStrike;->getGlyphOutline(IFF)Ljava/awt/geom/GeneralPath;

    move-result-object p1

    iget-object v0, p0, Lsun/font/StandardGlyphVector$GlyphStrike;->sgv:Lsun/font/StandardGlyphVector;

    invoke-static {v0}, Lsun/font/StandardGlyphVector;->access$1100(Lsun/font/StandardGlyphVector;)Ljava/awt/geom/AffineTransform;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/awt/geom/Path2D$Float;->transform(Ljava/awt/geom/AffineTransform;)V

    invoke-virtual {p1}, Ljava/awt/geom/Path2D$Float;->getBounds2D()Ljava/awt/geom/Rectangle2D;

    move-result-object v0

    :goto_0
    invoke-virtual {v0}, Ljava/awt/geom/RectangularShape;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {v0}, Ljava/awt/geom/RectangularShape;->getMinX()D

    move-result-wide v1

    float-to-double p1, p2

    add-double/2addr v1, p1

    iget p1, p0, Lsun/font/StandardGlyphVector$GlyphStrike;->dx:F

    float-to-double p1, p1

    add-double v2, v1, p1

    invoke-virtual {v0}, Ljava/awt/geom/RectangularShape;->getMinY()D

    move-result-wide p1

    float-to-double v4, p3

    add-double/2addr p1, v4

    iget p0, p0, Lsun/font/StandardGlyphVector$GlyphStrike;->dy:F

    float-to-double v4, p0

    add-double/2addr v4, p1

    invoke-virtual {v0}, Ljava/awt/geom/RectangularShape;->getWidth()D

    move-result-wide v6

    invoke-virtual {v0}, Ljava/awt/geom/RectangularShape;->getHeight()D

    move-result-wide v8

    move-object v1, v0

    invoke-virtual/range {v1 .. v9}, Ljava/awt/geom/Rectangle2D;->setRect(DDDD)V

    :cond_1
    return-object v0
.end method

.method public getGlyphPosition(II[F[F)V
    .locals 1

    aget p1, p3, p2

    iget v0, p0, Lsun/font/StandardGlyphVector$GlyphStrike;->dx:F

    add-float/2addr p1, v0

    aput p1, p4, p2

    add-int/lit8 p2, p2, 0x1

    aget p1, p3, p2

    iget p0, p0, Lsun/font/StandardGlyphVector$GlyphStrike;->dy:F

    add-float/2addr p1, p0

    aput p1, p4, p2

    return-void
.end method
