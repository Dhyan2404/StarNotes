.class public Lsun/font/TextSourceLabel;
.super Lsun/font/TextLabel;
.source "SourceFile"


# instance fields
.field ab:Ljava/awt/geom/Rectangle2D;

.field gv:Ljava/awt/font/GlyphVector;

.field ib:Ljava/awt/geom/Rectangle2D;

.field lb:Ljava/awt/geom/Rectangle2D;

.field source:Lsun/font/TextSource;

.field vb:Ljava/awt/geom/Rectangle2D;


# direct methods
.method public constructor <init>(Lsun/font/TextSource;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0, v0, v0}, Lsun/font/TextSourceLabel;-><init>(Lsun/font/TextSource;Ljava/awt/geom/Rectangle2D;Ljava/awt/geom/Rectangle2D;Ljava/awt/font/GlyphVector;)V

    return-void
.end method

.method public constructor <init>(Lsun/font/TextSource;Ljava/awt/geom/Rectangle2D;Ljava/awt/geom/Rectangle2D;Ljava/awt/font/GlyphVector;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lsun/font/TextLabel;-><init>()V

    .line 3
    iput-object p1, p0, Lsun/font/TextSourceLabel;->source:Lsun/font/TextSource;

    .line 4
    iput-object p2, p0, Lsun/font/TextSourceLabel;->lb:Ljava/awt/geom/Rectangle2D;

    .line 5
    iput-object p3, p0, Lsun/font/TextSourceLabel;->ab:Ljava/awt/geom/Rectangle2D;

    .line 6
    iput-object p4, p0, Lsun/font/TextSourceLabel;->gv:Ljava/awt/font/GlyphVector;

    return-void
.end method

.method private final getGV()Ljava/awt/font/GlyphVector;
    .locals 1

    iget-object v0, p0, Lsun/font/TextSourceLabel;->gv:Ljava/awt/font/GlyphVector;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lsun/font/TextSourceLabel;->createGV()Ljava/awt/font/GlyphVector;

    move-result-object v0

    iput-object v0, p0, Lsun/font/TextSourceLabel;->gv:Ljava/awt/font/GlyphVector;

    :cond_0
    iget-object p0, p0, Lsun/font/TextSourceLabel;->gv:Ljava/awt/font/GlyphVector;

    return-object p0
.end method


# virtual methods
.method public createAlignBounds()Ljava/awt/geom/Rectangle2D;
    .locals 0

    invoke-virtual {p0}, Lsun/font/TextSourceLabel;->createLogicalBounds()Ljava/awt/geom/Rectangle2D;

    move-result-object p0

    return-object p0
.end method

.method public createGV()Ljava/awt/font/GlyphVector;
    .locals 9

    iget-object v0, p0, Lsun/font/TextSourceLabel;->source:Lsun/font/TextSource;

    invoke-virtual {v0}, Lsun/font/TextSource;->getFont()Ljava/awt/Font;

    move-result-object v2

    iget-object v0, p0, Lsun/font/TextSourceLabel;->source:Lsun/font/TextSource;

    invoke-virtual {v0}, Lsun/font/TextSource;->getFRC()Ljava/awt/font/FontRenderContext;

    move-result-object v3

    iget-object v0, p0, Lsun/font/TextSourceLabel;->source:Lsun/font/TextSource;

    invoke-virtual {v0}, Lsun/font/TextSource;->getLayoutFlags()I

    move-result v7

    iget-object v0, p0, Lsun/font/TextSourceLabel;->source:Lsun/font/TextSource;

    invoke-virtual {v0}, Lsun/font/TextSource;->getChars()[C

    move-result-object v4

    iget-object v0, p0, Lsun/font/TextSourceLabel;->source:Lsun/font/TextSource;

    invoke-virtual {v0}, Lsun/font/TextSource;->getStart()I

    move-result v5

    iget-object p0, p0, Lsun/font/TextSourceLabel;->source:Lsun/font/TextSource;

    invoke-virtual {p0}, Lsun/font/TextSource;->getLength()I

    move-result v6

    const/4 p0, 0x0

    invoke-static {p0}, Lsun/font/GlyphLayout;->get(Lsun/font/GlyphLayout$LayoutEngineFactory;)Lsun/font/GlyphLayout;

    move-result-object p0

    const/4 v8, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v8}, Lsun/font/GlyphLayout;->layout(Ljava/awt/Font;Ljava/awt/font/FontRenderContext;[CIIILsun/font/AndroidGlyphVector;)Lsun/font/AndroidGlyphVector;

    move-result-object v0

    invoke-static {p0}, Lsun/font/GlyphLayout;->done(Lsun/font/GlyphLayout;)V

    return-object v0
.end method

.method public createItalicBounds()Ljava/awt/geom/Rectangle2D;
    .locals 0

    invoke-direct {p0}, Lsun/font/TextSourceLabel;->getGV()Ljava/awt/font/GlyphVector;

    move-result-object p0

    invoke-virtual {p0}, Ljava/awt/font/GlyphVector;->getLogicalBounds()Ljava/awt/geom/Rectangle2D;

    move-result-object p0

    return-object p0
.end method

.method public createLogicalBounds()Ljava/awt/geom/Rectangle2D;
    .locals 0

    invoke-direct {p0}, Lsun/font/TextSourceLabel;->getGV()Ljava/awt/font/GlyphVector;

    move-result-object p0

    invoke-virtual {p0}, Ljava/awt/font/GlyphVector;->getLogicalBounds()Ljava/awt/geom/Rectangle2D;

    move-result-object p0

    return-object p0
.end method

.method public createVisualBounds()Ljava/awt/geom/Rectangle2D;
    .locals 0

    invoke-direct {p0}, Lsun/font/TextSourceLabel;->getGV()Ljava/awt/font/GlyphVector;

    move-result-object p0

    invoke-virtual {p0}, Ljava/awt/font/GlyphVector;->getVisualBounds()Ljava/awt/geom/Rectangle2D;

    move-result-object p0

    return-object p0
.end method

.method public draw(Ljava/awt/Graphics2D;FF)V
    .locals 0

    invoke-direct {p0}, Lsun/font/TextSourceLabel;->getGV()Ljava/awt/font/GlyphVector;

    move-result-object p0

    invoke-virtual {p1, p0, p2, p3}, Ljava/awt/Graphics2D;->drawGlyphVector(Ljava/awt/font/GlyphVector;FF)V

    return-void
.end method

.method public final getAlignBounds(FF)Ljava/awt/geom/Rectangle2D;
    .locals 5

    iget-object v0, p0, Lsun/font/TextSourceLabel;->ab:Ljava/awt/geom/Rectangle2D;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lsun/font/TextSourceLabel;->createAlignBounds()Ljava/awt/geom/Rectangle2D;

    move-result-object v0

    iput-object v0, p0, Lsun/font/TextSourceLabel;->ab:Ljava/awt/geom/Rectangle2D;

    :cond_0
    new-instance v0, Ljava/awt/geom/Rectangle2D$Float;

    iget-object v1, p0, Lsun/font/TextSourceLabel;->ab:Ljava/awt/geom/Rectangle2D;

    invoke-virtual {v1}, Ljava/awt/geom/RectangularShape;->getX()D

    move-result-wide v1

    float-to-double v3, p1

    add-double/2addr v1, v3

    double-to-float p1, v1

    iget-object v1, p0, Lsun/font/TextSourceLabel;->ab:Ljava/awt/geom/Rectangle2D;

    invoke-virtual {v1}, Ljava/awt/geom/RectangularShape;->getY()D

    move-result-wide v1

    float-to-double v3, p2

    add-double/2addr v1, v3

    double-to-float p2, v1

    iget-object v1, p0, Lsun/font/TextSourceLabel;->ab:Ljava/awt/geom/Rectangle2D;

    invoke-virtual {v1}, Ljava/awt/geom/RectangularShape;->getWidth()D

    move-result-wide v1

    double-to-float v1, v1

    iget-object p0, p0, Lsun/font/TextSourceLabel;->ab:Ljava/awt/geom/Rectangle2D;

    invoke-virtual {p0}, Ljava/awt/geom/RectangularShape;->getHeight()D

    move-result-wide v2

    double-to-float p0, v2

    invoke-direct {v0, p1, p2, v1, p0}, Ljava/awt/geom/Rectangle2D$Float;-><init>(FFFF)V

    return-object v0
.end method

.method public getBaselineTransform()Ljava/awt/geom/AffineTransform;
    .locals 1

    iget-object p0, p0, Lsun/font/TextSourceLabel;->source:Lsun/font/TextSource;

    invoke-virtual {p0}, Lsun/font/TextSource;->getFont()Ljava/awt/Font;

    move-result-object p0

    invoke-virtual {p0}, Ljava/awt/Font;->hasLayoutAttributes()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/awt/Font;->getAttributes()Ljava/util/Map;

    move-result-object p0

    invoke-static {p0}, Lsun/font/AttributeValues;->getBaselineTransform(Ljava/util/Map;)Ljava/awt/geom/AffineTransform;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getItalicBounds(FF)Ljava/awt/geom/Rectangle2D;
    .locals 5

    iget-object v0, p0, Lsun/font/TextSourceLabel;->ib:Ljava/awt/geom/Rectangle2D;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lsun/font/TextSourceLabel;->createItalicBounds()Ljava/awt/geom/Rectangle2D;

    move-result-object v0

    iput-object v0, p0, Lsun/font/TextSourceLabel;->ib:Ljava/awt/geom/Rectangle2D;

    :cond_0
    new-instance v0, Ljava/awt/geom/Rectangle2D$Float;

    iget-object v1, p0, Lsun/font/TextSourceLabel;->ib:Ljava/awt/geom/Rectangle2D;

    invoke-virtual {v1}, Ljava/awt/geom/RectangularShape;->getX()D

    move-result-wide v1

    float-to-double v3, p1

    add-double/2addr v1, v3

    double-to-float p1, v1

    iget-object v1, p0, Lsun/font/TextSourceLabel;->ib:Ljava/awt/geom/Rectangle2D;

    invoke-virtual {v1}, Ljava/awt/geom/RectangularShape;->getY()D

    move-result-wide v1

    float-to-double v3, p2

    add-double/2addr v1, v3

    double-to-float p2, v1

    iget-object v1, p0, Lsun/font/TextSourceLabel;->ib:Ljava/awt/geom/Rectangle2D;

    invoke-virtual {v1}, Ljava/awt/geom/RectangularShape;->getWidth()D

    move-result-wide v1

    double-to-float v1, v1

    iget-object p0, p0, Lsun/font/TextSourceLabel;->ib:Ljava/awt/geom/Rectangle2D;

    invoke-virtual {p0}, Ljava/awt/geom/RectangularShape;->getHeight()D

    move-result-wide v2

    double-to-float p0, v2

    invoke-direct {v0, p1, p2, v1, p0}, Ljava/awt/geom/Rectangle2D$Float;-><init>(FFFF)V

    return-object v0
.end method

.method public final getLogicalBounds(FF)Ljava/awt/geom/Rectangle2D;
    .locals 5

    iget-object v0, p0, Lsun/font/TextSourceLabel;->lb:Ljava/awt/geom/Rectangle2D;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lsun/font/TextSourceLabel;->createLogicalBounds()Ljava/awt/geom/Rectangle2D;

    move-result-object v0

    iput-object v0, p0, Lsun/font/TextSourceLabel;->lb:Ljava/awt/geom/Rectangle2D;

    :cond_0
    new-instance v0, Ljava/awt/geom/Rectangle2D$Float;

    iget-object v1, p0, Lsun/font/TextSourceLabel;->lb:Ljava/awt/geom/Rectangle2D;

    invoke-virtual {v1}, Ljava/awt/geom/RectangularShape;->getX()D

    move-result-wide v1

    float-to-double v3, p1

    add-double/2addr v1, v3

    double-to-float p1, v1

    iget-object v1, p0, Lsun/font/TextSourceLabel;->lb:Ljava/awt/geom/Rectangle2D;

    invoke-virtual {v1}, Ljava/awt/geom/RectangularShape;->getY()D

    move-result-wide v1

    float-to-double v3, p2

    add-double/2addr v1, v3

    double-to-float p2, v1

    iget-object v1, p0, Lsun/font/TextSourceLabel;->lb:Ljava/awt/geom/Rectangle2D;

    invoke-virtual {v1}, Ljava/awt/geom/RectangularShape;->getWidth()D

    move-result-wide v1

    double-to-float v1, v1

    iget-object p0, p0, Lsun/font/TextSourceLabel;->lb:Ljava/awt/geom/Rectangle2D;

    invoke-virtual {p0}, Ljava/awt/geom/RectangularShape;->getHeight()D

    move-result-wide v2

    double-to-float p0, v2

    invoke-direct {v0, p1, p2, v1, p0}, Ljava/awt/geom/Rectangle2D$Float;-><init>(FFFF)V

    return-object v0
.end method

.method public getOutline(FF)Ljava/awt/Shape;
    .locals 0

    invoke-direct {p0}, Lsun/font/TextSourceLabel;->getGV()Ljava/awt/font/GlyphVector;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Ljava/awt/font/GlyphVector;->getOutline(FF)Ljava/awt/Shape;

    move-result-object p0

    return-object p0
.end method

.method public getPixelBounds(Ljava/awt/font/FontRenderContext;FF)Ljava/awt/Rectangle;
    .locals 0

    invoke-direct {p0}, Lsun/font/TextSourceLabel;->getGV()Ljava/awt/font/GlyphVector;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Ljava/awt/font/GlyphVector;->getPixelBounds(Ljava/awt/font/FontRenderContext;FF)Ljava/awt/Rectangle;

    move-result-object p0

    return-object p0
.end method

.method public getSource()Lsun/font/TextSource;
    .locals 0

    iget-object p0, p0, Lsun/font/TextSourceLabel;->source:Lsun/font/TextSource;

    return-object p0
.end method

.method public final getVisualBounds(FF)Ljava/awt/geom/Rectangle2D;
    .locals 5

    iget-object v0, p0, Lsun/font/TextSourceLabel;->vb:Ljava/awt/geom/Rectangle2D;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lsun/font/TextSourceLabel;->createVisualBounds()Ljava/awt/geom/Rectangle2D;

    move-result-object v0

    iput-object v0, p0, Lsun/font/TextSourceLabel;->vb:Ljava/awt/geom/Rectangle2D;

    :cond_0
    new-instance v0, Ljava/awt/geom/Rectangle2D$Float;

    iget-object v1, p0, Lsun/font/TextSourceLabel;->vb:Ljava/awt/geom/Rectangle2D;

    invoke-virtual {v1}, Ljava/awt/geom/RectangularShape;->getX()D

    move-result-wide v1

    float-to-double v3, p1

    add-double/2addr v1, v3

    double-to-float p1, v1

    iget-object v1, p0, Lsun/font/TextSourceLabel;->vb:Ljava/awt/geom/Rectangle2D;

    invoke-virtual {v1}, Ljava/awt/geom/RectangularShape;->getY()D

    move-result-wide v1

    float-to-double v3, p2

    add-double/2addr v1, v3

    double-to-float p2, v1

    iget-object v1, p0, Lsun/font/TextSourceLabel;->vb:Ljava/awt/geom/Rectangle2D;

    invoke-virtual {v1}, Ljava/awt/geom/RectangularShape;->getWidth()D

    move-result-wide v1

    double-to-float v1, v1

    iget-object p0, p0, Lsun/font/TextSourceLabel;->vb:Ljava/awt/geom/Rectangle2D;

    invoke-virtual {p0}, Ljava/awt/geom/RectangularShape;->getHeight()D

    move-result-wide v2

    double-to-float p0, v2

    invoke-direct {v0, p1, p2, v1, p0}, Ljava/awt/geom/Rectangle2D$Float;-><init>(FFFF)V

    return-object v0
.end method
