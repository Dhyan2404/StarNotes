.class public Lorg/apache/poi/sl/draw/DrawSimpleShape;
.super Lorg/apache/poi/sl/draw/DrawShape;
.source "SourceFile"


# static fields
.field private static final DECO_SIZE_POW:D = 1.5


# direct methods
.method public constructor <init>(Lorg/apache/poi/sl/usermodel/SimpleShape;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/sl/usermodel/SimpleShape<",
            "**>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lorg/apache/poi/sl/draw/DrawShape;-><init>(Lorg/apache/poi/sl/usermodel/Shape;)V

    return-void
.end method

.method public static synthetic a(Lorg/apache/poi/sl/draw/DrawSimpleShape;Ljava/awt/Graphics2D;Ljava/awt/geom/Path2D;Lorg/apache/poi/sl/usermodel/PaintStyle$PaintModifier;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/poi/sl/draw/DrawSimpleShape;->lambda$draw$0(Ljava/awt/Graphics2D;Ljava/awt/geom/Path2D;Lorg/apache/poi/sl/usermodel/PaintStyle$PaintModifier;)V

    return-void
.end method

.method private fillArea(Ljava/awt/Graphics2D;Lorg/apache/poi/sl/usermodel/PaintStyle$PaintModifier;Ljava/awt/geom/Path2D;)V
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/sl/draw/DrawSimpleShape;->getShape()Lorg/apache/poi/sl/usermodel/SimpleShape;

    move-result-object p0

    invoke-interface {p0}, Lorg/apache/poi/sl/usermodel/SimpleShape;->getFillStyle()Lorg/apache/poi/sl/usermodel/FillStyle;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/poi/sl/usermodel/FillStyle;->getPaint()Lorg/apache/poi/sl/usermodel/PaintStyle;

    move-result-object v0

    invoke-static {p1}, Lorg/apache/poi/sl/draw/DrawFactory;->getInstance(Ljava/awt/Graphics2D;)Lorg/apache/poi/sl/draw/DrawFactory;

    move-result-object v1

    invoke-virtual {v1, p0}, Lorg/apache/poi/sl/draw/DrawFactory;->getPaint(Lorg/apache/poi/sl/usermodel/PlaceableShape;)Lorg/apache/poi/sl/draw/DrawPaint;

    move-result-object p0

    invoke-virtual {p0, p1, v0, p2}, Lorg/apache/poi/sl/draw/DrawPaint;->getPaint(Ljava/awt/Graphics2D;Lorg/apache/poi/sl/usermodel/PaintStyle;Lorg/apache/poi/sl/usermodel/PaintStyle$PaintModifier;)Ljava/awt/Paint;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p1, p0}, Ljava/awt/Graphics2D;->setPaint(Ljava/awt/Paint;)V

    invoke-static {p1, p3}, Lorg/apache/poi/sl/draw/DrawPaint;->fillPaintWorkaround(Ljava/awt/Graphics2D;Ljava/awt/Shape;)V

    :cond_0
    return-void
.end method

.method private getShadowColors(Ljava/awt/Color;)[Ljava/awt/Color;
    .locals 7

    invoke-virtual {p1}, Ljava/awt/Color;->getRed()I

    move-result p0

    invoke-virtual {p1}, Ljava/awt/Color;->getGreen()I

    move-result v0

    invoke-virtual {p1}, Ljava/awt/Color;->getBlue()I

    move-result p1

    const/16 v1, 0xa

    new-array v2, v1, [I

    fill-array-data v2, :array_0

    new-array v3, v1, [Ljava/awt/Color;

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_0

    new-instance v5, Ljava/awt/Color;

    aget v6, v2, v4

    invoke-direct {v5, p0, v0, p1, v6}, Ljava/awt/Color;-><init>(IIII)V

    aput-object v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    return-object v3

    nop

    :array_0
    .array-data 4
        0x5
        0xf
        0x14
        0x19
        0x1e
        0x23
        0x28
        0x3c
        0x50
        0x5a
    .end array-data
.end method

.method private isInvalidDecoration(Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationShape;)Z
    .locals 0

    if-eqz p1, :cond_1

    sget-object p0, Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationShape;->DIAMOND:Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationShape;

    if-eq p1, p0, :cond_1

    sget-object p0, Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationShape;->NONE:Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationShape;

    if-ne p1, p0, :cond_0

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

.method private synthetic lambda$draw$0(Ljava/awt/Graphics2D;Ljava/awt/geom/Path2D;Lorg/apache/poi/sl/usermodel/PaintStyle$PaintModifier;)V
    .locals 0

    invoke-direct {p0, p1, p3, p2}, Lorg/apache/poi/sl/draw/DrawSimpleShape;->fillArea(Ljava/awt/Graphics2D;Lorg/apache/poi/sl/usermodel/PaintStyle$PaintModifier;Ljava/awt/geom/Path2D;)V

    return-void
.end method


# virtual methods
.method public computeOutlines(Ljava/awt/Graphics2D;)Ljava/util/Collection;
    .locals 28
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/awt/Graphics2D;",
            ")",
            "Ljava/util/Collection<",
            "Lorg/apache/poi/sl/draw/geom/Outline;",
            ">;"
        }
    .end annotation

    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/sl/draw/DrawSimpleShape;->getShape()Lorg/apache/poi/sl/usermodel/SimpleShape;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Lorg/apache/poi/sl/usermodel/SimpleShape;->getGeometry()Lorg/apache/poi/sl/draw/geom/CustomGeometry;

    move-result-object v2

    if-nez v2, :cond_0

    return-object v1

    :cond_0
    move-object/from16 v3, p1

    invoke-static {v3, v0}, Lorg/apache/poi/sl/draw/DrawShape;->getAnchor(Ljava/awt/Graphics2D;Lorg/apache/poi/sl/usermodel/PlaceableShape;)Ljava/awt/geom/Rectangle2D;

    move-result-object v3

    if-nez v3, :cond_1

    return-object v1

    :cond_1
    invoke-virtual {v2}, Lorg/apache/poi/sl/draw/geom/CustomGeometry;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/poi/sl/draw/geom/PathIf;

    invoke-interface {v5}, Lorg/apache/poi/sl/draw/geom/PathIf;->getW()J

    move-result-wide v6

    long-to-double v6, v6

    invoke-interface {v5}, Lorg/apache/poi/sl/draw/geom/PathIf;->getH()J

    move-result-wide v8

    long-to-double v8, v8

    const-wide/16 v10, 0x0

    cmpg-double v12, v6, v10

    const-wide/high16 v13, 0x3ff0000000000000L    # 1.0

    const-wide/16 v15, 0x1

    if-gtz v12, :cond_2

    invoke-virtual {v3}, Ljava/awt/geom/RectangularShape;->getWidth()D

    move-result-wide v6

    invoke-static {v6, v7}, Lorg/apache/poi/util/Units;->toEMU(D)I

    move-result v6

    int-to-double v6, v6

    invoke-static/range {v15 .. v16}, Lorg/apache/poi/util/Units;->toPoints(J)D

    move-result-wide v17

    :goto_1
    move-wide/from16 v24, v6

    move-wide/from16 v6, v17

    goto :goto_2

    :cond_2
    invoke-virtual {v3}, Ljava/awt/geom/RectangularShape;->getWidth()D

    move-result-wide v17

    cmpl-double v12, v17, v10

    if-nez v12, :cond_3

    move-wide/from16 v24, v6

    move-wide v6, v13

    goto :goto_2

    :cond_3
    invoke-virtual {v3}, Ljava/awt/geom/RectangularShape;->getWidth()D

    move-result-wide v17

    div-double v17, v17, v6

    goto :goto_1

    :goto_2
    cmpg-double v12, v8, v10

    if-gtz v12, :cond_4

    invoke-virtual {v3}, Ljava/awt/geom/RectangularShape;->getHeight()D

    move-result-wide v8

    invoke-static {v8, v9}, Lorg/apache/poi/util/Units;->toEMU(D)I

    move-result v8

    int-to-double v8, v8

    invoke-static/range {v15 .. v16}, Lorg/apache/poi/util/Units;->toPoints(J)D

    move-result-wide v13

    :goto_3
    move-wide/from16 v26, v8

    goto :goto_4

    :cond_4
    invoke-virtual {v3}, Ljava/awt/geom/RectangularShape;->getHeight()D

    move-result-wide v15

    cmpl-double v10, v15, v10

    if-nez v10, :cond_5

    goto :goto_3

    :cond_5
    invoke-virtual {v3}, Ljava/awt/geom/RectangularShape;->getHeight()D

    move-result-wide v10

    div-double v13, v10, v8

    goto :goto_3

    :goto_4
    new-instance v8, Ljava/awt/geom/Rectangle2D$Double;

    const-wide/16 v20, 0x0

    const-wide/16 v22, 0x0

    move-object/from16 v19, v8

    invoke-direct/range {v19 .. v27}, Ljava/awt/geom/Rectangle2D$Double;-><init>(DDDD)V

    new-instance v9, Lorg/apache/poi/sl/draw/geom/Context;

    invoke-direct {v9, v2, v8, v0}, Lorg/apache/poi/sl/draw/geom/Context;-><init>(Lorg/apache/poi/sl/draw/geom/CustomGeometry;Ljava/awt/geom/Rectangle2D;Lorg/apache/poi/sl/draw/geom/IAdjustableShape;)V

    invoke-interface {v5, v9}, Lorg/apache/poi/sl/draw/geom/PathIf;->getPath(Lorg/apache/poi/sl/draw/geom/Context;)Ljava/awt/geom/Path2D$Double;

    move-result-object v8

    new-instance v9, Ljava/awt/geom/AffineTransform;

    invoke-direct {v9}, Ljava/awt/geom/AffineTransform;-><init>()V

    invoke-virtual {v3}, Ljava/awt/geom/RectangularShape;->getX()D

    move-result-wide v10

    move-object/from16 p0, v0

    move-object v12, v1

    invoke-virtual {v3}, Ljava/awt/geom/RectangularShape;->getY()D

    move-result-wide v0

    invoke-virtual {v9, v10, v11, v0, v1}, Ljava/awt/geom/AffineTransform;->translate(DD)V

    invoke-virtual {v9, v6, v7, v13, v14}, Ljava/awt/geom/AffineTransform;->scale(DD)V

    invoke-virtual {v9, v8}, Ljava/awt/geom/AffineTransform;->createTransformedShape(Ljava/awt/Shape;)Ljava/awt/Shape;

    move-result-object v0

    new-instance v1, Lorg/apache/poi/sl/draw/geom/Outline;

    invoke-direct {v1, v0, v5}, Lorg/apache/poi/sl/draw/geom/Outline;-><init>(Ljava/awt/Shape;Lorg/apache/poi/sl/draw/geom/PathIf;)V

    invoke-interface {v12, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    move-object v1, v12

    goto/16 :goto_0

    :cond_6
    move-object v12, v1

    return-object v12
.end method

.method public draw(Ljava/awt/Graphics2D;)V
    .locals 13

    invoke-virtual {p0}, Lorg/apache/poi/sl/draw/DrawSimpleShape;->getShape()Lorg/apache/poi/sl/usermodel/SimpleShape;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/apache/poi/sl/draw/DrawShape;->getAnchor(Ljava/awt/Graphics2D;Lorg/apache/poi/sl/usermodel/PlaceableShape;)Ljava/awt/geom/Rectangle2D;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/awt/Graphics2D;->getPaint()Ljava/awt/Paint;

    move-result-object v0

    invoke-virtual {p1}, Ljava/awt/Graphics2D;->getStroke()Ljava/awt/Stroke;

    move-result-object v1

    invoke-virtual {p1}, Ljava/awt/Graphics2D;->getColor()Ljava/awt/Color;

    move-result-object v2

    invoke-virtual {p0, p1}, Lorg/apache/poi/sl/draw/DrawSimpleShape;->getFillPaint(Ljava/awt/Graphics2D;)Ljava/awt/Paint;

    move-result-object v3

    invoke-virtual {p0, p1}, Lorg/apache/poi/sl/draw/DrawSimpleShape;->getLinePaint(Ljava/awt/Graphics2D;)Ljava/awt/Paint;

    move-result-object v4

    invoke-virtual {p0}, Lorg/apache/poi/sl/draw/DrawSimpleShape;->getStroke()Ljava/awt/BasicStroke;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/awt/Graphics2D;->setStroke(Ljava/awt/Stroke;)V

    invoke-virtual {p0, p1}, Lorg/apache/poi/sl/draw/DrawSimpleShape;->computeOutlines(Ljava/awt/Graphics2D;)Ljava/util/Collection;

    move-result-object v6

    invoke-virtual {p0, p1, v6, v3, v4}, Lorg/apache/poi/sl/draw/DrawSimpleShape;->drawShadow(Ljava/awt/Graphics2D;Ljava/util/Collection;Ljava/awt/Paint;Ljava/awt/Paint;)V

    if-eqz v3, :cond_4

    new-instance v3, Ljava/awt/geom/Path2D$Double;

    invoke-direct {v3}, Ljava/awt/geom/Path2D$Double;-><init>()V

    sget-object v7, Lorg/apache/poi/sl/draw/Drawable;->GRADIENT_SHAPE:Lorg/apache/poi/sl/draw/Drawable$DrawableHint;

    invoke-virtual {p1, v7, v3}, Ljava/awt/Graphics2D;->setRenderingHint(Ljava/awt/RenderingHints$Key;Ljava/lang/Object;)V

    new-instance v7, Lcom/sunia/HTREnginev2/eif;

    invoke-direct {v7, p0, p1, v3}, Lcom/sunia/HTREnginev2/eif;-><init>(Lorg/apache/poi/sl/draw/DrawSimpleShape;Ljava/awt/Graphics2D;Ljava/awt/geom/Path2D;)V

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    const/4 v9, 0x0

    :cond_1
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/poi/sl/draw/geom/Outline;

    invoke-virtual {v10}, Lorg/apache/poi/sl/draw/geom/Outline;->getPath()Lorg/apache/poi/sl/draw/geom/PathIf;

    move-result-object v11

    invoke-interface {v11}, Lorg/apache/poi/sl/draw/geom/PathIf;->isFilled()Z

    move-result v12

    if-eqz v12, :cond_1

    invoke-interface {v11}, Lorg/apache/poi/sl/draw/geom/PathIf;->getFill()Lorg/apache/poi/sl/usermodel/PaintStyle$PaintModifier;

    move-result-object v11

    if-eqz v9, :cond_2

    if-eq v9, v11, :cond_2

    invoke-interface {v7, v9}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    invoke-virtual {v3}, Ljava/awt/geom/Path2D;->reset()V

    goto :goto_1

    :cond_2
    invoke-virtual {v10}, Lorg/apache/poi/sl/draw/geom/Outline;->getOutline()Ljava/awt/Shape;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v3, v9, v10}, Ljava/awt/geom/Path2D;->append(Ljava/awt/Shape;Z)V

    :goto_1
    move-object v9, v11

    goto :goto_0

    :cond_3
    invoke-virtual {v3}, Ljava/awt/geom/Path2D;->getCurrentPoint()Ljava/awt/geom/Point2D;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-interface {v7, v9}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_4
    invoke-virtual {p0, p1}, Lorg/apache/poi/sl/draw/DrawShape;->drawContent(Ljava/awt/Graphics2D;)V

    if-eqz v4, :cond_6

    invoke-virtual {p1, v4}, Ljava/awt/Graphics2D;->setPaint(Ljava/awt/Paint;)V

    invoke-virtual {p1, v5}, Ljava/awt/Graphics2D;->setStroke(Ljava/awt/Stroke;)V

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/poi/sl/draw/geom/Outline;

    invoke-virtual {v7}, Lorg/apache/poi/sl/draw/geom/Outline;->getPath()Lorg/apache/poi/sl/draw/geom/PathIf;

    move-result-object v8

    invoke-interface {v8}, Lorg/apache/poi/sl/draw/geom/PathIf;->isStroked()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-virtual {v7}, Lorg/apache/poi/sl/draw/geom/Outline;->getOutline()Ljava/awt/Shape;

    move-result-object v7

    sget-object v8, Lorg/apache/poi/sl/draw/Drawable;->GRADIENT_SHAPE:Lorg/apache/poi/sl/draw/Drawable$DrawableHint;

    invoke-virtual {p1, v8, v7}, Ljava/awt/Graphics2D;->setRenderingHint(Ljava/awt/RenderingHints$Key;Ljava/lang/Object;)V

    invoke-virtual {p1, v7}, Ljava/awt/Graphics2D;->draw(Ljava/awt/Shape;)V

    goto :goto_2

    :cond_6
    invoke-virtual {p0, p1, v6, v4, v5}, Lorg/apache/poi/sl/draw/DrawSimpleShape;->drawDecoration(Ljava/awt/Graphics2D;Ljava/util/Collection;Ljava/awt/Paint;Ljava/awt/BasicStroke;)V

    invoke-virtual {p1, v2}, Ljava/awt/Graphics2D;->setColor(Ljava/awt/Color;)V

    invoke-virtual {p1, v0}, Ljava/awt/Graphics2D;->setPaint(Ljava/awt/Paint;)V

    invoke-virtual {p1, v1}, Ljava/awt/Graphics2D;->setStroke(Ljava/awt/Stroke;)V

    return-void
.end method

.method public drawDecoration(Ljava/awt/Graphics2D;Ljava/util/Collection;Ljava/awt/Paint;Ljava/awt/BasicStroke;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/awt/Graphics2D;",
            "Ljava/util/Collection<",
            "Lorg/apache/poi/sl/draw/geom/Outline;",
            ">;",
            "Ljava/awt/Paint;",
            "Ljava/awt/BasicStroke;",
            ")V"
        }
    .end annotation

    if-eqz p3, :cond_5

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1, p3}, Ljava/awt/Graphics2D;->setPaint(Ljava/awt/Paint;)V

    invoke-interface {p2}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/apache/poi/sl/draw/geom/Outline;

    new-instance p3, Lorg/apache/poi/sl/draw/geom/OutlineDecoration;

    invoke-direct {p3, p2}, Lorg/apache/poi/sl/draw/geom/OutlineDecoration;-><init>(Lorg/apache/poi/sl/draw/geom/Outline;)V

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lorg/apache/poi/sl/draw/DrawSimpleShape;->getShape()Lorg/apache/poi/sl/usermodel/SimpleShape;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/poi/sl/usermodel/SimpleShape;->getLineDecoration()Lorg/apache/poi/sl/usermodel/LineDecoration;

    move-result-object v0

    invoke-virtual {p0, p1, p3, v0, p4}, Lorg/apache/poi/sl/draw/DrawSimpleShape;->getHeadDecoration(Ljava/awt/Graphics2D;Lorg/apache/poi/sl/draw/geom/OutlineDecoration;Lorg/apache/poi/sl/usermodel/LineDecoration;Ljava/awt/BasicStroke;)Lorg/apache/poi/sl/draw/geom/Outline;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-virtual {p0, p1, p3, v0, p4}, Lorg/apache/poi/sl/draw/DrawSimpleShape;->getTailDecoration(Ljava/awt/Graphics2D;Lorg/apache/poi/sl/draw/geom/OutlineDecoration;Lorg/apache/poi/sl/usermodel/LineDecoration;Ljava/awt/BasicStroke;)Lorg/apache/poi/sl/draw/geom/Outline;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_3
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/apache/poi/sl/draw/geom/Outline;

    invoke-virtual {p2}, Lorg/apache/poi/sl/draw/geom/Outline;->getOutline()Ljava/awt/Shape;

    move-result-object p3

    invoke-virtual {p2}, Lorg/apache/poi/sl/draw/geom/Outline;->getPath()Lorg/apache/poi/sl/draw/geom/PathIf;

    move-result-object p2

    sget-object p4, Lorg/apache/poi/sl/draw/Drawable;->GRADIENT_SHAPE:Lorg/apache/poi/sl/draw/Drawable$DrawableHint;

    invoke-virtual {p1, p4, p3}, Ljava/awt/Graphics2D;->setRenderingHint(Ljava/awt/RenderingHints$Key;Ljava/lang/Object;)V

    invoke-interface {p2}, Lorg/apache/poi/sl/draw/geom/PathIf;->isFilled()Z

    move-result p4

    if-eqz p4, :cond_4

    invoke-virtual {p1, p3}, Ljava/awt/Graphics2D;->fill(Ljava/awt/Shape;)V

    :cond_4
    invoke-interface {p2}, Lorg/apache/poi/sl/draw/geom/PathIf;->isStroked()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-virtual {p1, p3}, Ljava/awt/Graphics2D;->draw(Ljava/awt/Shape;)V

    goto :goto_0

    :cond_5
    :goto_1
    return-void
.end method

.method public drawShadow(Ljava/awt/Graphics2D;Ljava/util/Collection;Ljava/awt/Paint;Ljava/awt/Paint;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/awt/Graphics2D;",
            "Ljava/util/Collection<",
            "Lorg/apache/poi/sl/draw/geom/Outline;",
            ">;",
            "Ljava/awt/Paint;",
            "Ljava/awt/Paint;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p1

    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/sl/draw/DrawSimpleShape;->getShape()Lorg/apache/poi/sl/usermodel/SimpleShape;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/poi/sl/usermodel/SimpleShape;->getShadow()Lorg/apache/poi/sl/usermodel/Shadow;

    move-result-object v1

    if-eqz v1, :cond_6

    if-nez p3, :cond_0

    if-nez p4, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-interface {v1}, Lorg/apache/poi/sl/usermodel/Shadow;->getFillStyle()Lorg/apache/poi/sl/usermodel/PaintStyle$SolidPaint;

    move-result-object v2

    if-nez v2, :cond_1

    return-void

    :cond_1
    invoke-interface {v2}, Lorg/apache/poi/sl/usermodel/PaintStyle$SolidPaint;->getSolidColor()Lorg/apache/poi/sl/usermodel/ColorStyle;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/poi/sl/draw/DrawPaint;->applyColorTransform(Lorg/apache/poi/sl/usermodel/ColorStyle;)Ljava/awt/Color;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/sl/draw/DrawSimpleShape;->getShape()Lorg/apache/poi/sl/usermodel/SimpleShape;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/poi/sl/usermodel/PlaceableShape;->getRotation()D

    move-result-wide v3

    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/sl/draw/DrawSimpleShape;->getShape()Lorg/apache/poi/sl/usermodel/SimpleShape;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/poi/sl/usermodel/PlaceableShape;->getFlipVertical()Z

    move-result v5

    if-eqz v5, :cond_2

    const-wide v5, 0x4066800000000000L    # 180.0

    add-double/2addr v3, v5

    :cond_2
    invoke-interface {v1}, Lorg/apache/poi/sl/usermodel/Shadow;->getAngle()D

    move-result-wide v5

    sub-double/2addr v5, v3

    invoke-interface {v1}, Lorg/apache/poi/sl/usermodel/Shadow;->getDistance()D

    move-result-wide v3

    invoke-static {v5, v6}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    mul-double/2addr v7, v3

    invoke-static {v5, v6}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    mul-double/2addr v3, v5

    invoke-interface/range {p2 .. p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/poi/sl/draw/geom/Outline;

    invoke-virtual {v5}, Lorg/apache/poi/sl/draw/geom/Outline;->getOutline()Ljava/awt/Shape;

    move-result-object v6

    invoke-virtual {v5}, Lorg/apache/poi/sl/draw/geom/Outline;->getPath()Lorg/apache/poi/sl/draw/geom/PathIf;

    move-result-object v5

    sget-object v9, Lorg/apache/poi/sl/draw/Drawable;->GRADIENT_SHAPE:Lorg/apache/poi/sl/draw/Drawable$DrawableHint;

    invoke-virtual {v0, v9, v6}, Ljava/awt/Graphics2D;->setRenderingHint(Ljava/awt/RenderingHints$Key;Ljava/lang/Object;)V

    move-object/from16 v9, p0

    invoke-direct {v9, v2}, Lorg/apache/poi/sl/draw/DrawSimpleShape;->getShadowColors(Ljava/awt/Color;)[Ljava/awt/Color;

    move-result-object v10

    const/4 v11, 0x0

    :goto_0
    array-length v12, v10

    if-ge v11, v12, :cond_3

    array-length v12, v10

    sub-int/2addr v12, v11

    int-to-float v12, v12

    const/high16 v13, 0x3f800000    # 1.0f

    mul-float/2addr v12, v13

    array-length v13, v10

    int-to-float v13, v13

    div-float/2addr v12, v13

    float-to-double v12, v12

    mul-double v14, v7, v12

    move-object/from16 p2, v1

    move-object/from16 v16, v2

    mul-double v1, v3, v12

    invoke-virtual {v0, v14, v15, v1, v2}, Ljava/awt/Graphics2D;->translate(DD)V

    aget-object v1, v10, v11

    invoke-virtual {v0, v1}, Ljava/awt/Graphics2D;->setPaint(Ljava/awt/Paint;)V

    if-eqz p3, :cond_4

    invoke-interface {v5}, Lorg/apache/poi/sl/draw/geom/PathIf;->isFilled()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {v0, v6}, Lorg/apache/poi/sl/draw/DrawPaint;->fillPaintWorkaround(Ljava/awt/Graphics2D;Ljava/awt/Shape;)V

    goto :goto_1

    :cond_4
    if-eqz p4, :cond_5

    invoke-interface {v5}, Lorg/apache/poi/sl/draw/geom/PathIf;->isStroked()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v0, v6}, Ljava/awt/Graphics2D;->draw(Ljava/awt/Shape;)V

    :cond_5
    :goto_1
    neg-double v1, v7

    mul-double/2addr v1, v12

    neg-double v14, v3

    mul-double/2addr v14, v12

    invoke-virtual {v0, v1, v2, v14, v15}, Ljava/awt/Graphics2D;->translate(DD)V

    add-int/lit8 v11, v11, 0x1

    move-object/from16 v1, p2

    move-object/from16 v2, v16

    goto :goto_0

    :cond_6
    :goto_2
    return-void
.end method

.method public getFillPaint(Ljava/awt/Graphics2D;)Ljava/awt/Paint;
    .locals 2

    invoke-interface {p0, p1}, Lorg/apache/poi/sl/draw/Drawable;->disableDraw(Ljava/awt/Graphics2D;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {p1}, Lorg/apache/poi/sl/draw/DrawFactory;->getInstance(Ljava/awt/Graphics2D;)Lorg/apache/poi/sl/draw/DrawFactory;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/poi/sl/draw/DrawSimpleShape;->getShape()Lorg/apache/poi/sl/usermodel/SimpleShape;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/sl/draw/DrawFactory;->getPaint(Lorg/apache/poi/sl/usermodel/PlaceableShape;)Lorg/apache/poi/sl/draw/DrawPaint;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/poi/sl/draw/DrawSimpleShape;->getShape()Lorg/apache/poi/sl/usermodel/SimpleShape;

    move-result-object p0

    invoke-interface {p0}, Lorg/apache/poi/sl/usermodel/SimpleShape;->getFillStyle()Lorg/apache/poi/sl/usermodel/FillStyle;

    move-result-object p0

    invoke-interface {p0}, Lorg/apache/poi/sl/usermodel/FillStyle;->getPaint()Lorg/apache/poi/sl/usermodel/PaintStyle;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Lorg/apache/poi/sl/draw/DrawPaint;->getPaint(Ljava/awt/Graphics2D;Lorg/apache/poi/sl/usermodel/PaintStyle;)Ljava/awt/Paint;

    move-result-object p0

    return-object p0
.end method

.method public getHeadDecoration(Ljava/awt/Graphics2D;Lorg/apache/poi/sl/draw/geom/OutlineDecoration;Lorg/apache/poi/sl/usermodel/LineDecoration;Ljava/awt/BasicStroke;)Lorg/apache/poi/sl/draw/geom/Outline;
    .locals 33

    const/4 v0, 0x0

    if-eqz p3, :cond_a

    if-nez p4, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-interface/range {p3 .. p3}, Lorg/apache/poi/sl/usermodel/LineDecoration;->getHeadShape()Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationShape;

    move-result-object v1

    move-object/from16 v2, p0

    invoke-direct {v2, v1}, Lorg/apache/poi/sl/draw/DrawSimpleShape;->isInvalidDecoration(Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationShape;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v0

    :cond_1
    invoke-interface/range {p3 .. p3}, Lorg/apache/poi/sl/usermodel/LineDecoration;->getHeadLength()Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationSize;

    move-result-object v2

    if-nez v2, :cond_2

    sget-object v2, Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationSize;->MEDIUM:Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationSize;

    :cond_2
    invoke-interface/range {p3 .. p3}, Lorg/apache/poi/sl/usermodel/LineDecoration;->getHeadWidth()Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationSize;

    move-result-object v3

    if-nez v3, :cond_3

    sget-object v3, Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationSize;->MEDIUM:Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationSize;

    :cond_3
    invoke-virtual/range {p4 .. p4}, Ljava/awt/BasicStroke;->getLineWidth()F

    move-result v4

    float-to-double v4, v4

    const-wide/high16 v6, 0x4004000000000000L    # 2.5

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    invoke-virtual/range {p2 .. p2}, Lorg/apache/poi/sl/draw/geom/OutlineDecoration;->getHeadDecoration()[D

    move-result-object v6

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-eqz v6, :cond_4

    const/4 v11, 0x0

    aget-wide v11, v6, v11

    aget-wide v13, v6, v8

    aget-wide v15, v6, v7

    move-wide/from16 v22, v15

    goto :goto_0

    :cond_4
    const-wide/16 v11, 0x0

    const-wide/16 v13, 0x0

    const-wide/16 v22, 0x0

    :goto_0
    new-instance v6, Ljava/awt/geom/AffineTransform;

    invoke-direct {v6}, Ljava/awt/geom/AffineTransform;-><init>()V

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    int-to-double v9, v3

    const-wide/high16 v15, 0x3ff0000000000000L    # 1.0

    add-double/2addr v9, v15

    const-wide/high16 v7, 0x3ff8000000000000L    # 1.5

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v9

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    int-to-double v2, v2

    add-double/2addr v2, v15

    invoke-static {v7, v8, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    sget-object v7, Lorg/apache/poi/sl/draw/DrawSimpleShape$1;->$SwitchMap$org$apache$poi$sl$usermodel$LineDecoration$DecorationShape:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v7, v1

    const-wide/high16 v7, 0x4000000000000000L    # 2.0

    const/4 v15, 0x1

    if-eq v1, v15, :cond_7

    const/4 v15, 0x2

    if-eq v1, v15, :cond_6

    const/4 v15, 0x3

    if-eq v1, v15, :cond_6

    const/4 v15, 0x4

    if-eq v1, v15, :cond_5

    move-object v1, v0

    move-object v15, v1

    goto/16 :goto_1

    :cond_5
    new-instance v1, Lorg/apache/poi/sl/draw/geom/Path;

    invoke-direct {v1}, Lorg/apache/poi/sl/draw/geom/Path;-><init>()V

    new-instance v15, Ljava/awt/geom/Path2D$Double;

    invoke-direct {v15}, Ljava/awt/geom/Path2D$Double;-><init>()V

    mul-double/2addr v2, v4

    move-object/from16 p2, v1

    neg-double v0, v4

    mul-double/2addr v0, v9

    div-double/2addr v0, v7

    invoke-virtual {v15, v2, v3, v0, v1}, Ljava/awt/geom/Path2D$Double;->moveTo(DD)V

    const-wide/16 v0, 0x0

    invoke-virtual {v15, v0, v1, v0, v1}, Ljava/awt/geom/Path2D$Double;->lineTo(DD)V

    mul-double/2addr v4, v9

    div-double/2addr v4, v7

    invoke-virtual {v15, v2, v3, v4, v5}, Ljava/awt/geom/Path2D$Double;->lineTo(DD)V

    invoke-virtual {v15}, Ljava/awt/geom/Path2D;->closePath()V

    invoke-virtual {v6, v11, v12, v13, v14}, Ljava/awt/geom/AffineTransform;->translate(DD)V

    move-wide/from16 v0, v22

    invoke-virtual {v6, v0, v1}, Ljava/awt/geom/AffineTransform;->rotate(D)V

    move-object/from16 v1, p2

    goto/16 :goto_1

    :cond_6
    move-wide/from16 v0, v22

    new-instance v15, Lorg/apache/poi/sl/draw/geom/Path;

    invoke-direct {v15}, Lorg/apache/poi/sl/draw/geom/Path;-><init>()V

    sget-object v7, Lorg/apache/poi/sl/usermodel/PaintStyle$PaintModifier;->NONE:Lorg/apache/poi/sl/usermodel/PaintStyle$PaintModifier;

    invoke-virtual {v15, v7}, Lorg/apache/poi/sl/draw/geom/Path;->setFill(Lorg/apache/poi/sl/usermodel/PaintStyle$PaintModifier;)V

    const/4 v7, 0x1

    invoke-virtual {v15, v7}, Lorg/apache/poi/sl/draw/geom/Path;->setStroke(Z)V

    new-instance v7, Ljava/awt/geom/Path2D$Double;

    invoke-direct {v7}, Ljava/awt/geom/Path2D$Double;-><init>()V

    mul-double/2addr v2, v4

    move-wide/from16 v18, v0

    neg-double v0, v4

    mul-double/2addr v0, v9

    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    div-double v0, v0, v16

    invoke-virtual {v7, v2, v3, v0, v1}, Ljava/awt/geom/Path2D$Double;->moveTo(DD)V

    const-wide/16 v0, 0x0

    invoke-virtual {v7, v0, v1, v0, v1}, Ljava/awt/geom/Path2D$Double;->lineTo(DD)V

    mul-double/2addr v4, v9

    div-double v4, v4, v16

    invoke-virtual {v7, v2, v3, v4, v5}, Ljava/awt/geom/Path2D$Double;->lineTo(DD)V

    invoke-virtual {v6, v11, v12, v13, v14}, Ljava/awt/geom/AffineTransform;->translate(DD)V

    move-wide/from16 v0, v18

    invoke-virtual {v6, v0, v1}, Ljava/awt/geom/AffineTransform;->rotate(D)V

    move-object v1, v15

    move-object v15, v7

    goto :goto_1

    :cond_7
    move-wide/from16 v0, v22

    new-instance v7, Lorg/apache/poi/sl/draw/geom/Path;

    invoke-direct {v7}, Lorg/apache/poi/sl/draw/geom/Path;-><init>()V

    new-instance v8, Ljava/awt/geom/Ellipse2D$Double;

    const-wide/16 v25, 0x0

    const-wide/16 v27, 0x0

    mul-double v29, v4, v2

    mul-double v31, v4, v9

    move-object/from16 v24, v8

    invoke-direct/range {v24 .. v32}, Ljava/awt/geom/Ellipse2D$Double;-><init>(DDDD)V

    invoke-interface {v8}, Ljava/awt/Shape;->getBounds2D()Ljava/awt/geom/Rectangle2D;

    move-result-object v2

    invoke-virtual {v2}, Ljava/awt/geom/RectangularShape;->getWidth()D

    move-result-wide v3

    const-wide/high16 v9, 0x4000000000000000L    # 2.0

    div-double/2addr v3, v9

    sub-double/2addr v11, v3

    invoke-virtual {v2}, Ljava/awt/geom/RectangularShape;->getHeight()D

    move-result-wide v3

    div-double/2addr v3, v9

    sub-double/2addr v13, v3

    invoke-virtual {v6, v11, v12, v13, v14}, Ljava/awt/geom/AffineTransform;->translate(DD)V

    invoke-virtual {v2}, Ljava/awt/geom/RectangularShape;->getX()D

    move-result-wide v3

    invoke-virtual {v2}, Ljava/awt/geom/RectangularShape;->getWidth()D

    move-result-wide v11

    div-double/2addr v11, v9

    add-double v18, v3, v11

    invoke-virtual {v2}, Ljava/awt/geom/RectangularShape;->getY()D

    move-result-wide v3

    invoke-virtual {v2}, Ljava/awt/geom/RectangularShape;->getHeight()D

    move-result-wide v11

    div-double/2addr v11, v9

    add-double v20, v3, v11

    move-object v15, v6

    move-wide/from16 v16, v0

    invoke-virtual/range {v15 .. v21}, Ljava/awt/geom/AffineTransform;->rotate(DDD)V

    move-object v1, v7

    move-object v15, v8

    :goto_1
    if-eqz v15, :cond_8

    invoke-virtual {v6, v15}, Ljava/awt/geom/AffineTransform;->createTransformedShape(Ljava/awt/Shape;)Ljava/awt/Shape;

    move-result-object v15

    :cond_8
    if-nez v15, :cond_9

    const/4 v0, 0x0

    goto :goto_2

    :cond_9
    new-instance v0, Lorg/apache/poi/sl/draw/geom/Outline;

    invoke-direct {v0, v15, v1}, Lorg/apache/poi/sl/draw/geom/Outline;-><init>(Ljava/awt/Shape;Lorg/apache/poi/sl/draw/geom/PathIf;)V

    :cond_a
    :goto_2
    return-object v0
.end method

.method public getLinePaint(Ljava/awt/Graphics2D;)Ljava/awt/Paint;
    .locals 2

    invoke-interface {p0, p1}, Lorg/apache/poi/sl/draw/Drawable;->disableDraw(Ljava/awt/Graphics2D;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {p1}, Lorg/apache/poi/sl/draw/DrawFactory;->getInstance(Ljava/awt/Graphics2D;)Lorg/apache/poi/sl/draw/DrawFactory;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/poi/sl/draw/DrawSimpleShape;->getShape()Lorg/apache/poi/sl/usermodel/SimpleShape;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/sl/draw/DrawFactory;->getPaint(Lorg/apache/poi/sl/usermodel/PlaceableShape;)Lorg/apache/poi/sl/draw/DrawPaint;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/poi/sl/draw/DrawSimpleShape;->getShape()Lorg/apache/poi/sl/usermodel/SimpleShape;

    move-result-object p0

    invoke-interface {p0}, Lorg/apache/poi/sl/usermodel/SimpleShape;->getStrokeStyle()Lorg/apache/poi/sl/usermodel/StrokeStyle;

    move-result-object p0

    invoke-interface {p0}, Lorg/apache/poi/sl/usermodel/StrokeStyle;->getPaint()Lorg/apache/poi/sl/usermodel/PaintStyle;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Lorg/apache/poi/sl/draw/DrawPaint;->getPaint(Ljava/awt/Graphics2D;Lorg/apache/poi/sl/usermodel/PaintStyle;)Ljava/awt/Paint;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getShape()Lorg/apache/poi/sl/usermodel/Shape;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/sl/draw/DrawSimpleShape;->getShape()Lorg/apache/poi/sl/usermodel/SimpleShape;

    move-result-object p0

    return-object p0
.end method

.method public getShape()Lorg/apache/poi/sl/usermodel/SimpleShape;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/poi/sl/usermodel/SimpleShape<",
            "**>;"
        }
    .end annotation

    .line 2
    iget-object p0, p0, Lorg/apache/poi/sl/draw/DrawShape;->shape:Lorg/apache/poi/sl/usermodel/Shape;

    check-cast p0, Lorg/apache/poi/sl/usermodel/SimpleShape;

    return-object p0
.end method

.method public getStroke()Ljava/awt/BasicStroke;
    .locals 0

    invoke-virtual {p0}, Lorg/apache/poi/sl/draw/DrawSimpleShape;->getShape()Lorg/apache/poi/sl/usermodel/SimpleShape;

    move-result-object p0

    invoke-interface {p0}, Lorg/apache/poi/sl/usermodel/SimpleShape;->getStrokeStyle()Lorg/apache/poi/sl/usermodel/StrokeStyle;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/poi/sl/draw/DrawShape;->getStroke(Lorg/apache/poi/sl/usermodel/StrokeStyle;)Ljava/awt/BasicStroke;

    move-result-object p0

    return-object p0
.end method

.method public getTailDecoration(Ljava/awt/Graphics2D;Lorg/apache/poi/sl/draw/geom/OutlineDecoration;Lorg/apache/poi/sl/usermodel/LineDecoration;Ljava/awt/BasicStroke;)Lorg/apache/poi/sl/draw/geom/Outline;
    .locals 33

    const/4 v0, 0x0

    if-eqz p3, :cond_a

    if-nez p4, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-interface/range {p3 .. p3}, Lorg/apache/poi/sl/usermodel/LineDecoration;->getTailShape()Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationShape;

    move-result-object v1

    move-object/from16 v2, p0

    invoke-direct {v2, v1}, Lorg/apache/poi/sl/draw/DrawSimpleShape;->isInvalidDecoration(Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationShape;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v0

    :cond_1
    invoke-interface/range {p3 .. p3}, Lorg/apache/poi/sl/usermodel/LineDecoration;->getTailLength()Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationSize;

    move-result-object v2

    if-nez v2, :cond_2

    sget-object v2, Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationSize;->MEDIUM:Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationSize;

    :cond_2
    invoke-interface/range {p3 .. p3}, Lorg/apache/poi/sl/usermodel/LineDecoration;->getTailWidth()Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationSize;

    move-result-object v3

    if-nez v3, :cond_3

    sget-object v3, Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationSize;->MEDIUM:Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationSize;

    :cond_3
    invoke-virtual/range {p4 .. p4}, Ljava/awt/BasicStroke;->getLineWidth()F

    move-result v4

    float-to-double v4, v4

    const-wide/high16 v6, 0x4004000000000000L    # 2.5

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    invoke-virtual/range {p2 .. p2}, Lorg/apache/poi/sl/draw/geom/OutlineDecoration;->getTailDecoration()[D

    move-result-object v6

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-eqz v6, :cond_4

    const/4 v11, 0x0

    aget-wide v11, v6, v11

    aget-wide v13, v6, v8

    aget-wide v15, v6, v7

    move-wide/from16 v22, v15

    goto :goto_0

    :cond_4
    const-wide/16 v11, 0x0

    const-wide/16 v13, 0x0

    const-wide/16 v22, 0x0

    :goto_0
    new-instance v6, Ljava/awt/geom/AffineTransform;

    invoke-direct {v6}, Ljava/awt/geom/AffineTransform;-><init>()V

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    int-to-double v9, v3

    const-wide/high16 v15, 0x3ff0000000000000L    # 1.0

    add-double/2addr v9, v15

    const-wide/high16 v7, 0x3ff8000000000000L    # 1.5

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v9

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    int-to-double v2, v2

    add-double/2addr v2, v15

    invoke-static {v7, v8, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    sget-object v7, Lorg/apache/poi/sl/draw/DrawSimpleShape$1;->$SwitchMap$org$apache$poi$sl$usermodel$LineDecoration$DecorationShape:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v7, v1

    const-wide/high16 v7, 0x4000000000000000L    # 2.0

    const/4 v15, 0x1

    if-eq v1, v15, :cond_7

    const/4 v15, 0x2

    if-eq v1, v15, :cond_6

    const/4 v15, 0x3

    if-eq v1, v15, :cond_6

    const/4 v15, 0x4

    if-eq v1, v15, :cond_5

    move-object v1, v0

    move-object v15, v1

    goto/16 :goto_1

    :cond_5
    new-instance v1, Lorg/apache/poi/sl/draw/geom/Path;

    invoke-direct {v1}, Lorg/apache/poi/sl/draw/geom/Path;-><init>()V

    new-instance v15, Ljava/awt/geom/Path2D$Double;

    invoke-direct {v15}, Ljava/awt/geom/Path2D$Double;-><init>()V

    move-object/from16 p2, v1

    neg-double v0, v4

    mul-double/2addr v2, v0

    mul-double/2addr v0, v9

    div-double/2addr v0, v7

    invoke-virtual {v15, v2, v3, v0, v1}, Ljava/awt/geom/Path2D$Double;->moveTo(DD)V

    const-wide/16 v0, 0x0

    invoke-virtual {v15, v0, v1, v0, v1}, Ljava/awt/geom/Path2D$Double;->lineTo(DD)V

    mul-double/2addr v4, v9

    div-double/2addr v4, v7

    invoke-virtual {v15, v2, v3, v4, v5}, Ljava/awt/geom/Path2D$Double;->lineTo(DD)V

    invoke-virtual {v15}, Ljava/awt/geom/Path2D;->closePath()V

    invoke-virtual {v6, v11, v12, v13, v14}, Ljava/awt/geom/AffineTransform;->translate(DD)V

    move-wide/from16 v0, v22

    invoke-virtual {v6, v0, v1}, Ljava/awt/geom/AffineTransform;->rotate(D)V

    move-object/from16 v1, p2

    goto/16 :goto_1

    :cond_6
    move-wide/from16 v0, v22

    new-instance v15, Lorg/apache/poi/sl/draw/geom/Path;

    invoke-direct {v15}, Lorg/apache/poi/sl/draw/geom/Path;-><init>()V

    sget-object v7, Lorg/apache/poi/sl/usermodel/PaintStyle$PaintModifier;->NONE:Lorg/apache/poi/sl/usermodel/PaintStyle$PaintModifier;

    invoke-virtual {v15, v7}, Lorg/apache/poi/sl/draw/geom/Path;->setFill(Lorg/apache/poi/sl/usermodel/PaintStyle$PaintModifier;)V

    const/4 v7, 0x1

    invoke-virtual {v15, v7}, Lorg/apache/poi/sl/draw/geom/Path;->setStroke(Z)V

    new-instance v7, Ljava/awt/geom/Path2D$Double;

    invoke-direct {v7}, Ljava/awt/geom/Path2D$Double;-><init>()V

    move-wide/from16 v18, v0

    neg-double v0, v4

    mul-double/2addr v2, v0

    mul-double/2addr v0, v9

    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    div-double v0, v0, v16

    invoke-virtual {v7, v2, v3, v0, v1}, Ljava/awt/geom/Path2D$Double;->moveTo(DD)V

    const-wide/16 v0, 0x0

    invoke-virtual {v7, v0, v1, v0, v1}, Ljava/awt/geom/Path2D$Double;->lineTo(DD)V

    mul-double/2addr v4, v9

    div-double v4, v4, v16

    invoke-virtual {v7, v2, v3, v4, v5}, Ljava/awt/geom/Path2D$Double;->lineTo(DD)V

    invoke-virtual {v6, v11, v12, v13, v14}, Ljava/awt/geom/AffineTransform;->translate(DD)V

    move-wide/from16 v0, v18

    invoke-virtual {v6, v0, v1}, Ljava/awt/geom/AffineTransform;->rotate(D)V

    move-object v1, v15

    move-object v15, v7

    goto :goto_1

    :cond_7
    move-wide/from16 v0, v22

    new-instance v7, Lorg/apache/poi/sl/draw/geom/Path;

    invoke-direct {v7}, Lorg/apache/poi/sl/draw/geom/Path;-><init>()V

    new-instance v8, Ljava/awt/geom/Ellipse2D$Double;

    const-wide/16 v25, 0x0

    const-wide/16 v27, 0x0

    mul-double v29, v4, v2

    mul-double v31, v4, v9

    move-object/from16 v24, v8

    invoke-direct/range {v24 .. v32}, Ljava/awt/geom/Ellipse2D$Double;-><init>(DDDD)V

    invoke-interface {v8}, Ljava/awt/Shape;->getBounds2D()Ljava/awt/geom/Rectangle2D;

    move-result-object v2

    invoke-virtual {v2}, Ljava/awt/geom/RectangularShape;->getWidth()D

    move-result-wide v3

    const-wide/high16 v9, 0x4000000000000000L    # 2.0

    div-double/2addr v3, v9

    sub-double/2addr v11, v3

    invoke-virtual {v2}, Ljava/awt/geom/RectangularShape;->getHeight()D

    move-result-wide v3

    div-double/2addr v3, v9

    sub-double/2addr v13, v3

    invoke-virtual {v6, v11, v12, v13, v14}, Ljava/awt/geom/AffineTransform;->translate(DD)V

    invoke-virtual {v2}, Ljava/awt/geom/RectangularShape;->getX()D

    move-result-wide v3

    invoke-virtual {v2}, Ljava/awt/geom/RectangularShape;->getWidth()D

    move-result-wide v11

    div-double/2addr v11, v9

    add-double v18, v3, v11

    invoke-virtual {v2}, Ljava/awt/geom/RectangularShape;->getY()D

    move-result-wide v3

    invoke-virtual {v2}, Ljava/awt/geom/RectangularShape;->getHeight()D

    move-result-wide v11

    div-double/2addr v11, v9

    add-double v20, v3, v11

    move-object v15, v6

    move-wide/from16 v16, v0

    invoke-virtual/range {v15 .. v21}, Ljava/awt/geom/AffineTransform;->rotate(DDD)V

    move-object v1, v7

    move-object v15, v8

    :goto_1
    if-eqz v15, :cond_8

    invoke-virtual {v6, v15}, Ljava/awt/geom/AffineTransform;->createTransformedShape(Ljava/awt/Shape;)Ljava/awt/Shape;

    move-result-object v15

    :cond_8
    if-nez v15, :cond_9

    const/4 v0, 0x0

    goto :goto_2

    :cond_9
    new-instance v0, Lorg/apache/poi/sl/draw/geom/Outline;

    invoke-direct {v0, v15, v1}, Lorg/apache/poi/sl/draw/geom/Outline;-><init>(Ljava/awt/Shape;Lorg/apache/poi/sl/draw/geom/PathIf;)V

    :cond_a
    :goto_2
    return-object v0
.end method
