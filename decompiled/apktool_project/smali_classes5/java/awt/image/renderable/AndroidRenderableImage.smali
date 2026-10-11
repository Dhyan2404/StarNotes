.class public Ljava/awt/image/renderable/AndroidRenderableImage;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/awt/image/renderable/RenderableImage;
.implements Ljava/io/Closeable;


# instance fields
.field private image:Lcom/trans/android/AndroidImage;

.field protected imageVector:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Ljava/awt/image/renderable/AndroidRenderableImage;",
            ">;"
        }
    .end annotation
.end field

.field protected props:Ljava/util/Map;


# direct methods
.method public constructor <init>(Lcom/trans/android/AndroidImage;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Ljava/awt/image/renderable/AndroidRenderableImage;->imageVector:Ljava/util/Vector;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ljava/awt/image/renderable/AndroidRenderableImage;->props:Ljava/util/Map;

    .line 4
    iput-object p1, p0, Ljava/awt/image/renderable/AndroidRenderableImage;->image:Lcom/trans/android/AndroidImage;

    const/4 p0, 0x0

    .line 5
    invoke-virtual {p1, p0}, Lcom/trans/android/AndroidImage;->setCloseable(Z)V

    return-void
.end method

.method public constructor <init>(Ljava/awt/image/renderable/AndroidRenderableImage;)V
    .locals 1

    const/4 v0, 0x0

    .line 6
    invoke-direct {p0, p1, v0}, Ljava/awt/image/renderable/AndroidRenderableImage;-><init>(Ljava/awt/image/renderable/AndroidRenderableImage;Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>(Ljava/awt/image/renderable/AndroidRenderableImage;Ljava/util/Map;)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/awt/image/renderable/AndroidRenderableImage;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 7
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Ljava/awt/image/renderable/AndroidRenderableImage;-><init>(Ljava/util/List;Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/awt/image/renderable/AndroidRenderableImage;",
            ">;",
            "Ljava/util/Map;",
            ")V"
        }
    .end annotation

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Ljava/awt/image/renderable/AndroidRenderableImage;->imageVector:Ljava/util/Vector;

    .line 10
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ljava/awt/image/renderable/AndroidRenderableImage;->props:Ljava/util/Map;

    .line 11
    iget-object p0, p0, Ljava/awt/image/renderable/AndroidRenderableImage;->imageVector:Ljava/util/Vector;

    invoke-static {p0, p1}, Lcom/onyx/common/util/CollectionUtils;->safeAddAll(Ljava/util/Collection;Ljava/util/Collection;)V

    .line 12
    invoke-static {p2, p2}, Lcom/onyx/common/util/CollectionUtils;->safeAddAllMap(Ljava/util/Map;Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    iget-object v0, p0, Ljava/awt/image/renderable/AndroidRenderableImage;->image:Lcom/trans/android/AndroidImage;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/trans/android/AndroidImage;->setCloseable(Z)V

    iget-object v0, p0, Ljava/awt/image/renderable/AndroidRenderableImage;->image:Lcom/trans/android/AndroidImage;

    invoke-static {v0}, Lcom/onyx/common/util/CloseUtils;->close(Ljava/io/Closeable;)V

    const/4 v0, 0x0

    iput-object v0, p0, Ljava/awt/image/renderable/AndroidRenderableImage;->image:Lcom/trans/android/AndroidImage;

    :cond_0
    iget-object v0, p0, Ljava/awt/image/renderable/AndroidRenderableImage;->imageVector:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/awt/image/renderable/AndroidRenderableImage;

    invoke-static {v1}, Lcom/onyx/common/util/CloseUtils;->close(Ljava/io/Closeable;)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Ljava/awt/image/renderable/AndroidRenderableImage;->imageVector:Ljava/util/Vector;

    invoke-virtual {p0}, Ljava/util/Vector;->clear()V

    return-void
.end method

.method public createDefaultRendering()Lcom/trans/android/BufferedImageWrapper;
    .locals 6

    .line 2
    iget-object v0, p0, Ljava/awt/image/renderable/AndroidRenderableImage;->image:Lcom/trans/android/AndroidImage;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/trans/android/AndroidImage;->isValid()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    :cond_0
    invoke-virtual {p0}, Ljava/awt/image/renderable/AndroidRenderableImage;->getBounds2D()Ljava/awt/geom/Rectangle2D;

    move-result-object v0

    .line 4
    new-instance v1, Lcom/trans/android/AndroidImage;

    invoke-virtual {v0}, Ljava/awt/geom/RectangularShape;->getWidth()D

    move-result-wide v2

    invoke-virtual {v0}, Ljava/awt/geom/RectangularShape;->getHeight()D

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/trans/android/AndroidImage;-><init>(DD)V

    iput-object v1, p0, Ljava/awt/image/renderable/AndroidRenderableImage;->image:Lcom/trans/android/AndroidImage;

    .line 5
    invoke-virtual {v1}, Lcom/trans/android/AndroidImage;->createGraphics()Lcom/trans/android/AndroidGraphics2D;

    move-result-object v0

    .line 6
    iget-object v1, p0, Ljava/awt/image/renderable/AndroidRenderableImage;->imageVector:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 7
    iget-object v1, p0, Ljava/awt/image/renderable/AndroidRenderableImage;->imageVector:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/awt/image/renderable/AndroidRenderableImage;

    .line 8
    invoke-virtual {v2}, Ljava/awt/image/renderable/AndroidRenderableImage;->createDefaultRendering()Lcom/trans/android/BufferedImageWrapper;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Ljava/awt/Graphics2D;->drawRenderedImage(Ljava/awt/image/RenderedImage;Ljava/awt/geom/AffineTransform;)V

    goto :goto_0

    .line 9
    :cond_1
    new-instance v0, Lcom/trans/android/BufferedImageWrapper;

    iget-object p0, p0, Ljava/awt/image/renderable/AndroidRenderableImage;->image:Lcom/trans/android/AndroidImage;

    invoke-direct {v0, p0}, Lcom/trans/android/BufferedImageWrapper;-><init>(Lcom/trans/android/AndroidImage;)V

    return-object v0
.end method

.method public bridge synthetic createDefaultRendering()Ljava/awt/image/RenderedImage;
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljava/awt/image/renderable/AndroidRenderableImage;->createDefaultRendering()Lcom/trans/android/BufferedImageWrapper;

    move-result-object p0

    return-object p0
.end method

.method public createRendering(Ljava/awt/image/renderable/RenderContext;)Lcom/trans/android/BufferedImageWrapper;
    .locals 0

    .line 2
    invoke-virtual {p0}, Ljava/awt/image/renderable/AndroidRenderableImage;->createDefaultRendering()Lcom/trans/android/BufferedImageWrapper;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/trans/android/BufferedImageWrapper;->setRenderContext(Ljava/awt/image/renderable/RenderContext;)Lcom/trans/android/BufferedImageWrapper;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic createRendering(Ljava/awt/image/renderable/RenderContext;)Ljava/awt/image/RenderedImage;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Ljava/awt/image/renderable/AndroidRenderableImage;->createRendering(Ljava/awt/image/renderable/RenderContext;)Lcom/trans/android/BufferedImageWrapper;

    move-result-object p0

    return-object p0
.end method

.method public createScaledRendering(IILjava/awt/RenderingHints;)Lcom/trans/android/BufferedImageWrapper;
    .locals 1

    .line 2
    invoke-virtual {p0}, Ljava/awt/image/renderable/AndroidRenderableImage;->createDefaultRendering()Lcom/trans/android/BufferedImageWrapper;

    move-result-object p0

    .line 3
    invoke-virtual {p0}, Lcom/trans/android/BufferedImageWrapper;->getAndroidImage()Lcom/trans/android/AndroidImage;

    move-result-object p3

    .line 4
    invoke-virtual {p3}, Lcom/trans/android/AndroidImage;->getWidth()I

    move-result v0

    if-ne v0, p1, :cond_0

    invoke-virtual {p3}, Lcom/trans/android/AndroidImage;->getHeight()I

    move-result v0

    if-ne v0, p2, :cond_0

    return-object p0

    .line 5
    :cond_0
    invoke-virtual {p3}, Lcom/trans/android/AndroidImage;->getAndroidBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    const/4 p3, 0x1

    invoke-static {p0, p1, p2, p3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 6
    new-instance p1, Lcom/trans/android/BufferedImageWrapper;

    new-instance p2, Lcom/trans/android/AndroidImage;

    invoke-direct {p2, p0}, Lcom/trans/android/AndroidImage;-><init>(Landroid/graphics/Bitmap;)V

    invoke-direct {p1, p2}, Lcom/trans/android/BufferedImageWrapper;-><init>(Lcom/trans/android/AndroidImage;)V

    return-object p1
.end method

.method public bridge synthetic createScaledRendering(IILjava/awt/RenderingHints;)Ljava/awt/image/RenderedImage;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Ljava/awt/image/renderable/AndroidRenderableImage;->createScaledRendering(IILjava/awt/RenderingHints;)Lcom/trans/android/BufferedImageWrapper;

    move-result-object p0

    return-object p0
.end method

.method public getBounds2D()Ljava/awt/geom/Rectangle2D;
    .locals 11

    iget-object v0, p0, Ljava/awt/image/renderable/AndroidRenderableImage;->image:Lcom/trans/android/AndroidImage;

    if-eqz v0, :cond_0

    new-instance v1, Ljava/awt/geom/Rectangle2D$Float;

    invoke-virtual {v0}, Lcom/trans/android/AndroidImage;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object p0, p0, Ljava/awt/image/renderable/AndroidRenderableImage;->image:Lcom/trans/android/AndroidImage;

    invoke-virtual {p0}, Lcom/trans/android/AndroidImage;->getHeight()I

    move-result p0

    int-to-float p0, p0

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2, v0, p0}, Ljava/awt/geom/Rectangle2D$Float;-><init>(FFFF)V

    return-object v1

    :cond_0
    iget-object v0, p0, Ljava/awt/image/renderable/AndroidRenderableImage;->imageVector:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Ljava/awt/image/renderable/AndroidRenderableImage;->imageVector:Ljava/util/Vector;

    invoke-virtual {p0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/awt/image/renderable/AndroidRenderableImage;

    invoke-virtual {v0}, Ljava/awt/image/renderable/AndroidRenderableImage;->getBounds2D()Ljava/awt/geom/Rectangle2D;

    move-result-object v0

    invoke-virtual {v0}, Ljava/awt/geom/RectangularShape;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/awt/geom/Rectangle2D;

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/awt/image/renderable/AndroidRenderableImage;

    invoke-virtual {v1}, Ljava/awt/image/renderable/AndroidRenderableImage;->getBounds2D()Ljava/awt/geom/Rectangle2D;

    move-result-object v1

    invoke-static {v0, v1, v0}, Ljava/awt/geom/Rectangle2D;->union(Ljava/awt/geom/Rectangle2D;Ljava/awt/geom/Rectangle2D;Ljava/awt/geom/Rectangle2D;)V

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/awt/geom/Rectangle2D$Double;

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    move-object v2, v0

    invoke-direct/range {v2 .. v10}, Ljava/awt/geom/Rectangle2D$Double;-><init>(DDDD)V

    :cond_2
    return-object v0
.end method

.method public getHeight()F
    .locals 2

    invoke-virtual {p0}, Ljava/awt/image/renderable/AndroidRenderableImage;->getBounds2D()Ljava/awt/geom/Rectangle2D;

    move-result-object p0

    invoke-virtual {p0}, Ljava/awt/geom/RectangularShape;->getHeight()D

    move-result-wide v0

    double-to-float p0, v0

    return p0
.end method

.method public getMinX()F
    .locals 2

    invoke-virtual {p0}, Ljava/awt/image/renderable/AndroidRenderableImage;->getBounds2D()Ljava/awt/geom/Rectangle2D;

    move-result-object p0

    invoke-virtual {p0}, Ljava/awt/geom/RectangularShape;->getX()D

    move-result-wide v0

    double-to-float p0, v0

    return p0
.end method

.method public getMinY()F
    .locals 2

    invoke-virtual {p0}, Ljava/awt/image/renderable/AndroidRenderableImage;->getBounds2D()Ljava/awt/geom/Rectangle2D;

    move-result-object p0

    invoke-virtual {p0}, Ljava/awt/geom/RectangularShape;->getY()D

    move-result-wide v0

    double-to-float p0, v0

    return p0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Ljava/awt/image/renderable/AndroidRenderableImage;->props:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object p0, p0, Ljava/awt/image/renderable/AndroidRenderableImage;->imageVector:Ljava/util/Vector;

    invoke-virtual {p0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/awt/image/renderable/AndroidRenderableImage;

    invoke-virtual {v0, p1}, Ljava/awt/image/renderable/AndroidRenderableImage;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public getPropertyNames()[Ljava/lang/String;
    .locals 6

    iget-object v0, p0, Ljava/awt/image/renderable/AndroidRenderableImage;->props:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    add-int/lit8 v4, v3, 0x1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    aput-object v5, v0, v3

    move v3, v4

    goto :goto_0

    :cond_0
    iget-object p0, p0, Ljava/awt/image/renderable/AndroidRenderableImage;->imageVector:Ljava/util/Vector;

    invoke-virtual {p0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/awt/image/renderable/RenderableImage;

    invoke-interface {v1}, Ljava/awt/image/renderable/RenderableImage;->getPropertyNames()[Ljava/lang/String;

    move-result-object v1

    array-length v3, v1

    if-eqz v3, :cond_1

    array-length v3, v0

    array-length v4, v1

    add-int/2addr v3, v4

    new-array v3, v3, [Ljava/lang/String;

    array-length v4, v0

    invoke-static {v0, v2, v3, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v0

    array-length v4, v1

    invoke-static {v3, v0, v1, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, v3

    goto :goto_1

    :cond_2
    return-object v0
.end method

.method public getSources()Ljava/util/Vector;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector<",
            "Ljava/awt/image/renderable/AndroidRenderableImage;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Ljava/awt/image/renderable/AndroidRenderableImage;->imageVector:Ljava/util/Vector;

    return-object p0
.end method

.method public getWidth()F
    .locals 2

    invoke-virtual {p0}, Ljava/awt/image/renderable/AndroidRenderableImage;->getBounds2D()Ljava/awt/geom/Rectangle2D;

    move-result-object p0

    invoke-virtual {p0}, Ljava/awt/geom/RectangularShape;->getWidth()D

    move-result-wide v0

    double-to-float p0, v0

    return p0
.end method

.method public isDynamic()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
