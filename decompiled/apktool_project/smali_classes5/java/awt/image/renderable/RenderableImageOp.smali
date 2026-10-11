.class public Ljava/awt/image/renderable/RenderableImageOp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/awt/image/renderable/RenderableImage;


# instance fields
.field boundingBox:Ljava/awt/geom/Rectangle2D;

.field myCRIF:Ljava/awt/image/renderable/ContextualRenderedImageFactory;

.field paramBlock:Ljava/awt/image/renderable/ParameterBlock;


# direct methods
.method public constructor <init>(Ljava/awt/image/renderable/ContextualRenderedImageFactory;Ljava/awt/image/renderable/ParameterBlock;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/awt/image/renderable/RenderableImageOp;->myCRIF:Ljava/awt/image/renderable/ContextualRenderedImageFactory;

    invoke-virtual {p2}, Ljava/awt/image/renderable/ParameterBlock;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/awt/image/renderable/ParameterBlock;

    iput-object p1, p0, Ljava/awt/image/renderable/RenderableImageOp;->paramBlock:Ljava/awt/image/renderable/ParameterBlock;

    return-void
.end method

.method private getRenderableSources()Ljava/util/Vector;
    .locals 4

    iget-object v0, p0, Ljava/awt/image/renderable/RenderableImageOp;->paramBlock:Ljava/awt/image/renderable/ParameterBlock;

    invoke-virtual {v0}, Ljava/awt/image/renderable/ParameterBlock;->getNumSources()I

    move-result v0

    if-lez v0, :cond_0

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Ljava/awt/image/renderable/RenderableImageOp;->paramBlock:Ljava/awt/image/renderable/ParameterBlock;

    invoke-virtual {v2}, Ljava/awt/image/renderable/ParameterBlock;->getNumSources()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Ljava/awt/image/renderable/RenderableImageOp;->paramBlock:Ljava/awt/image/renderable/ParameterBlock;

    invoke-virtual {v2, v1}, Ljava/awt/image/renderable/ParameterBlock;->getSource(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Ljava/awt/image/renderable/RenderableImage;

    if-eqz v3, :cond_1

    check-cast v2, Ljava/awt/image/renderable/RenderableImage;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    return-object v0
.end method


# virtual methods
.method public createDefaultRendering()Ljava/awt/image/RenderedImage;
    .locals 2

    new-instance v0, Ljava/awt/geom/AffineTransform;

    invoke-direct {v0}, Ljava/awt/geom/AffineTransform;-><init>()V

    new-instance v1, Ljava/awt/image/renderable/RenderContext;

    invoke-direct {v1, v0}, Ljava/awt/image/renderable/RenderContext;-><init>(Ljava/awt/geom/AffineTransform;)V

    invoke-virtual {p0, v1}, Ljava/awt/image/renderable/RenderableImageOp;->createRendering(Ljava/awt/image/renderable/RenderContext;)Ljava/awt/image/RenderedImage;

    move-result-object p0

    return-object p0
.end method

.method public createRendering(Ljava/awt/image/renderable/RenderContext;)Ljava/awt/image/RenderedImage;
    .locals 7

    iget-object v0, p0, Ljava/awt/image/renderable/RenderableImageOp;->paramBlock:Ljava/awt/image/renderable/ParameterBlock;

    invoke-virtual {v0}, Ljava/awt/image/renderable/ParameterBlock;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/awt/image/renderable/ParameterBlock;

    invoke-direct {p0}, Ljava/awt/image/renderable/RenderableImageOp;->getRenderableSources()Ljava/util/Vector;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    :try_start_0
    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    const/4 v4, 0x0

    :goto_0
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    iget-object v5, p0, Ljava/awt/image/renderable/RenderableImageOp;->myCRIF:Ljava/awt/image/renderable/ContextualRenderedImageFactory;

    iget-object v6, p0, Ljava/awt/image/renderable/RenderableImageOp;->paramBlock:Ljava/awt/image/renderable/ParameterBlock;

    invoke-interface {v5, v4, p1, v6, p0}, Ljava/awt/image/renderable/ContextualRenderedImageFactory;->mapRenderContext(ILjava/awt/image/renderable/RenderContext;Ljava/awt/image/renderable/ParameterBlock;Ljava/awt/image/renderable/RenderableImage;)Ljava/awt/image/renderable/RenderContext;

    move-result-object v5

    invoke-virtual {v1, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/awt/image/renderable/RenderableImage;

    invoke-interface {v6, v5}, Ljava/awt/image/renderable/RenderableImage;->createRendering(Ljava/awt/image/renderable/RenderContext;)Ljava/awt/image/RenderedImage;

    move-result-object v5

    if-nez v5, :cond_0

    return-object v2

    :cond_0
    invoke-virtual {v3, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v1

    if-lez v1, :cond_2

    invoke-virtual {v0, v3}, Ljava/awt/image/renderable/ParameterBlock;->setSources(Ljava/util/Vector;)V

    :cond_2
    iget-object p0, p0, Ljava/awt/image/renderable/RenderableImageOp;->myCRIF:Ljava/awt/image/renderable/ContextualRenderedImageFactory;

    invoke-interface {p0, p1, v0}, Ljava/awt/image/renderable/ContextualRenderedImageFactory;->create(Ljava/awt/image/renderable/RenderContext;Ljava/awt/image/renderable/ParameterBlock;)Ljava/awt/image/RenderedImage;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    return-object v2
.end method

.method public createScaledRendering(IILjava/awt/RenderingHints;)Ljava/awt/image/RenderedImage;
    .locals 6

    int-to-double v0, p1

    invoke-virtual {p0}, Ljava/awt/image/renderable/RenderableImageOp;->getWidth()F

    move-result p1

    float-to-double v2, p1

    div-double/2addr v0, v2

    int-to-double p1, p2

    invoke-virtual {p0}, Ljava/awt/image/renderable/RenderableImageOp;->getHeight()F

    move-result v2

    float-to-double v2, v2

    div-double/2addr p1, v2

    div-double v2, v0, p1

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    const-wide v4, 0x3f847ae147ae147bL    # 0.01

    cmpg-double v2, v2, v4

    if-gez v2, :cond_0

    move-wide v0, p1

    :cond_0
    invoke-static {v0, v1, p1, p2}, Ljava/awt/geom/AffineTransform;->getScaleInstance(DD)Ljava/awt/geom/AffineTransform;

    move-result-object p1

    new-instance p2, Ljava/awt/image/renderable/RenderContext;

    invoke-direct {p2, p1, p3}, Ljava/awt/image/renderable/RenderContext;-><init>(Ljava/awt/geom/AffineTransform;Ljava/awt/RenderingHints;)V

    invoke-virtual {p0, p2}, Ljava/awt/image/renderable/RenderableImageOp;->createRendering(Ljava/awt/image/renderable/RenderContext;)Ljava/awt/image/RenderedImage;

    move-result-object p0

    return-object p0
.end method

.method public getHeight()F
    .locals 2

    iget-object v0, p0, Ljava/awt/image/renderable/RenderableImageOp;->boundingBox:Ljava/awt/geom/Rectangle2D;

    if-nez v0, :cond_0

    iget-object v0, p0, Ljava/awt/image/renderable/RenderableImageOp;->myCRIF:Ljava/awt/image/renderable/ContextualRenderedImageFactory;

    iget-object v1, p0, Ljava/awt/image/renderable/RenderableImageOp;->paramBlock:Ljava/awt/image/renderable/ParameterBlock;

    invoke-interface {v0, v1}, Ljava/awt/image/renderable/ContextualRenderedImageFactory;->getBounds2D(Ljava/awt/image/renderable/ParameterBlock;)Ljava/awt/geom/Rectangle2D;

    move-result-object v0

    iput-object v0, p0, Ljava/awt/image/renderable/RenderableImageOp;->boundingBox:Ljava/awt/geom/Rectangle2D;

    :cond_0
    iget-object p0, p0, Ljava/awt/image/renderable/RenderableImageOp;->boundingBox:Ljava/awt/geom/Rectangle2D;

    invoke-virtual {p0}, Ljava/awt/geom/RectangularShape;->getHeight()D

    move-result-wide v0

    double-to-float p0, v0

    return p0
.end method

.method public getMinX()F
    .locals 2

    iget-object v0, p0, Ljava/awt/image/renderable/RenderableImageOp;->boundingBox:Ljava/awt/geom/Rectangle2D;

    if-nez v0, :cond_0

    iget-object v0, p0, Ljava/awt/image/renderable/RenderableImageOp;->myCRIF:Ljava/awt/image/renderable/ContextualRenderedImageFactory;

    iget-object v1, p0, Ljava/awt/image/renderable/RenderableImageOp;->paramBlock:Ljava/awt/image/renderable/ParameterBlock;

    invoke-interface {v0, v1}, Ljava/awt/image/renderable/ContextualRenderedImageFactory;->getBounds2D(Ljava/awt/image/renderable/ParameterBlock;)Ljava/awt/geom/Rectangle2D;

    move-result-object v0

    iput-object v0, p0, Ljava/awt/image/renderable/RenderableImageOp;->boundingBox:Ljava/awt/geom/Rectangle2D;

    :cond_0
    iget-object p0, p0, Ljava/awt/image/renderable/RenderableImageOp;->boundingBox:Ljava/awt/geom/Rectangle2D;

    invoke-virtual {p0}, Ljava/awt/geom/RectangularShape;->getMinX()D

    move-result-wide v0

    double-to-float p0, v0

    return p0
.end method

.method public getMinY()F
    .locals 2

    iget-object v0, p0, Ljava/awt/image/renderable/RenderableImageOp;->boundingBox:Ljava/awt/geom/Rectangle2D;

    if-nez v0, :cond_0

    iget-object v0, p0, Ljava/awt/image/renderable/RenderableImageOp;->myCRIF:Ljava/awt/image/renderable/ContextualRenderedImageFactory;

    iget-object v1, p0, Ljava/awt/image/renderable/RenderableImageOp;->paramBlock:Ljava/awt/image/renderable/ParameterBlock;

    invoke-interface {v0, v1}, Ljava/awt/image/renderable/ContextualRenderedImageFactory;->getBounds2D(Ljava/awt/image/renderable/ParameterBlock;)Ljava/awt/geom/Rectangle2D;

    move-result-object v0

    iput-object v0, p0, Ljava/awt/image/renderable/RenderableImageOp;->boundingBox:Ljava/awt/geom/Rectangle2D;

    :cond_0
    iget-object p0, p0, Ljava/awt/image/renderable/RenderableImageOp;->boundingBox:Ljava/awt/geom/Rectangle2D;

    invoke-virtual {p0}, Ljava/awt/geom/RectangularShape;->getMinY()D

    move-result-wide v0

    double-to-float p0, v0

    return p0
.end method

.method public getParameterBlock()Ljava/awt/image/renderable/ParameterBlock;
    .locals 0

    iget-object p0, p0, Ljava/awt/image/renderable/RenderableImageOp;->paramBlock:Ljava/awt/image/renderable/ParameterBlock;

    return-object p0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Ljava/awt/image/renderable/RenderableImageOp;->myCRIF:Ljava/awt/image/renderable/ContextualRenderedImageFactory;

    iget-object p0, p0, Ljava/awt/image/renderable/RenderableImageOp;->paramBlock:Ljava/awt/image/renderable/ParameterBlock;

    invoke-interface {v0, p0, p1}, Ljava/awt/image/renderable/ContextualRenderedImageFactory;->getProperty(Ljava/awt/image/renderable/ParameterBlock;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getPropertyNames()[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Ljava/awt/image/renderable/RenderableImageOp;->myCRIF:Ljava/awt/image/renderable/ContextualRenderedImageFactory;

    invoke-interface {p0}, Ljava/awt/image/renderable/ContextualRenderedImageFactory;->getPropertyNames()[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSources()Ljava/util/Vector;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector<",
            "Ljava/awt/image/renderable/RenderableImage;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Ljava/awt/image/renderable/RenderableImageOp;->getRenderableSources()Ljava/util/Vector;

    move-result-object p0

    return-object p0
.end method

.method public getWidth()F
    .locals 2

    iget-object v0, p0, Ljava/awt/image/renderable/RenderableImageOp;->boundingBox:Ljava/awt/geom/Rectangle2D;

    if-nez v0, :cond_0

    iget-object v0, p0, Ljava/awt/image/renderable/RenderableImageOp;->myCRIF:Ljava/awt/image/renderable/ContextualRenderedImageFactory;

    iget-object v1, p0, Ljava/awt/image/renderable/RenderableImageOp;->paramBlock:Ljava/awt/image/renderable/ParameterBlock;

    invoke-interface {v0, v1}, Ljava/awt/image/renderable/ContextualRenderedImageFactory;->getBounds2D(Ljava/awt/image/renderable/ParameterBlock;)Ljava/awt/geom/Rectangle2D;

    move-result-object v0

    iput-object v0, p0, Ljava/awt/image/renderable/RenderableImageOp;->boundingBox:Ljava/awt/geom/Rectangle2D;

    :cond_0
    iget-object p0, p0, Ljava/awt/image/renderable/RenderableImageOp;->boundingBox:Ljava/awt/geom/Rectangle2D;

    invoke-virtual {p0}, Ljava/awt/geom/RectangularShape;->getWidth()D

    move-result-wide v0

    double-to-float p0, v0

    return p0
.end method

.method public isDynamic()Z
    .locals 0

    iget-object p0, p0, Ljava/awt/image/renderable/RenderableImageOp;->myCRIF:Ljava/awt/image/renderable/ContextualRenderedImageFactory;

    invoke-interface {p0}, Ljava/awt/image/renderable/ContextualRenderedImageFactory;->isDynamic()Z

    move-result p0

    return p0
.end method

.method public setParameterBlock(Ljava/awt/image/renderable/ParameterBlock;)Ljava/awt/image/renderable/ParameterBlock;
    .locals 1

    iget-object v0, p0, Ljava/awt/image/renderable/RenderableImageOp;->paramBlock:Ljava/awt/image/renderable/ParameterBlock;

    invoke-virtual {p1}, Ljava/awt/image/renderable/ParameterBlock;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/awt/image/renderable/ParameterBlock;

    iput-object p1, p0, Ljava/awt/image/renderable/RenderableImageOp;->paramBlock:Ljava/awt/image/renderable/ParameterBlock;

    return-object v0
.end method
