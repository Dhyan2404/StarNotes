.class public Lorg/apache/poi/xwpf/usermodel/GroupShape;
.super Lorg/apache/poi/xwpf/usermodel/XWPFShape;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/xwpf/usermodel/ShapeContainer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/poi/xwpf/usermodel/XWPFShape<",
        "Lcom/microsoft/schemas/vml/CTGroup;",
        ">;",
        "Lorg/apache/poi/xwpf/usermodel/ShapeContainer<",
        "Lorg/apache/poi/xwpf/usermodel/XWPFShape<",
        "*>;>;"
    }
.end annotation


# instance fields
.field private shapes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/xwpf/usermodel/XWPFShape<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/apache/poi/xwpf/usermodel/ShapeContainer;Lcom/microsoft/schemas/vml/CTGroup;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/xwpf/usermodel/ShapeContainer<",
            "Lorg/apache/poi/xwpf/usermodel/XWPFShape<",
            "*>;>;",
            "Lcom/microsoft/schemas/vml/CTGroup;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lorg/apache/poi/xwpf/usermodel/XWPFShape;-><init>(Lorg/apache/poi/xwpf/usermodel/ShapeContainer;Lorg/apache/xmlbeans/XmlObject;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xwpf/usermodel/GroupShape;->shapes:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public bridge synthetic addShape(Lorg/apache/poi/xwpf/usermodel/Shape;)V
    .locals 0

    .line 1
    check-cast p1, Lorg/apache/poi/xwpf/usermodel/XWPFShape;

    invoke-virtual {p0, p1}, Lorg/apache/poi/xwpf/usermodel/GroupShape;->addShape(Lorg/apache/poi/xwpf/usermodel/XWPFShape;)V

    return-void
.end method

.method public addShape(Lorg/apache/poi/xwpf/usermodel/XWPFShape;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/xwpf/usermodel/XWPFShape<",
            "*>;)V"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/GroupShape;->shapes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFShape;->properties:Lorg/apache/poi/xwpf/usermodel/ShapeProperties;

    iget-object v0, v0, Lorg/apache/poi/xwpf/usermodel/ShapeProperties;->anchor:Ljava/awt/geom/Rectangle2D;

    invoke-virtual {p1}, Lorg/apache/poi/xwpf/usermodel/XWPFShape;->getAnchor()Ljava/awt/geom/Rectangle2D;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/poi/text/Utils;->union(Ljava/awt/geom/Rectangle2D;Ljava/awt/geom/Rectangle2D;)V

    .line 4
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFShape;->properties:Lorg/apache/poi/xwpf/usermodel/ShapeProperties;

    iget-object v0, v0, Lorg/apache/poi/xwpf/usermodel/ShapeProperties;->shapeId:Ljava/lang/String;

    invoke-static {v0}, Lorg/apache/poi/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFShape;->properties:Lorg/apache/poi/xwpf/usermodel/ShapeProperties;

    invoke-virtual {p1}, Lorg/apache/poi/xwpf/usermodel/XWPFShape;->getShapeId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/xwpf/usermodel/ShapeProperties;->shapeId:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public close()V
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/GroupShape;->shapes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/xwpf/usermodel/XWPFShape;

    invoke-static {v1}, Lorg/apache/poi/util/CloseUtils;->close(Ljava/io/Closeable;)V

    goto :goto_0

    :cond_0
    invoke-super {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFShape;->close()V

    return-void
.end method

.method public draw(Ljava/awt/Graphics2D;)V
    .locals 1

    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/GroupShape;->shapes:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/xwpf/usermodel/XWPFShape;

    invoke-interface {v0, p1}, Lorg/apache/poi/xwpf/usermodel/Shape;->draw(Ljava/awt/Graphics2D;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getShapes()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/xwpf/usermodel/XWPFShape<",
            "*>;>;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/GroupShape;->shapes:Ljava/util/List;

    return-object p0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/apache/poi/xwpf/usermodel/XWPFShape<",
            "*>;>;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/GroupShape;->shapes:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public parseShapeProperties(Lcom/microsoft/schemas/vml/CTGroup;)V
    .locals 11

    .line 2
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFShape;->properties:Lorg/apache/poi/xwpf/usermodel/ShapeProperties;

    invoke-interface {p1}, Lcom/microsoft/schemas/vml/CTGroup;->getId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/poi/xwpf/usermodel/ShapeProperties;->shapeId:Ljava/lang/String;

    .line 3
    invoke-interface {p1}, Lcom/microsoft/schemas/vml/CTGroup;->getStyle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFShape;->parseStyleProperties(Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFShape;->properties:Lorg/apache/poi/xwpf/usermodel/ShapeProperties;

    iget-object v0, v0, Lorg/apache/poi/xwpf/usermodel/ShapeProperties;->anchor:Ljava/awt/geom/Rectangle2D;

    invoke-virtual {v0}, Ljava/awt/geom/RectangularShape;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    invoke-interface {p1}, Lcom/microsoft/schemas/vml/CTGroup;->isSetCoordorigin()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    invoke-interface {p1}, Lcom/microsoft/schemas/vml/CTGroup;->getCoordorigin()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/poi/convert/xwpf/XWPFWordToHtmlUtils;->parsePoint(Ljava/lang/String;)Ljava/awt/geom/Point2D;

    move-result-object v0

    .line 7
    invoke-static {v0}, Lorg/apache/poi/convert/WordToHtmlUtils;->isNull(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 8
    iget-object v1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFShape;->properties:Lorg/apache/poi/xwpf/usermodel/ShapeProperties;

    iget-object v2, v1, Lorg/apache/poi/xwpf/usermodel/ShapeProperties;->anchor:Ljava/awt/geom/Rectangle2D;

    invoke-virtual {v0}, Ljava/awt/geom/Point2D;->getX()D

    move-result-wide v3

    invoke-virtual {v0}, Ljava/awt/geom/Point2D;->getY()D

    move-result-wide v5

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFShape;->properties:Lorg/apache/poi/xwpf/usermodel/ShapeProperties;

    iget-object v0, v0, Lorg/apache/poi/xwpf/usermodel/ShapeProperties;->anchor:Ljava/awt/geom/Rectangle2D;

    invoke-virtual {v0}, Ljava/awt/geom/RectangularShape;->getWidth()D

    move-result-wide v7

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFShape;->properties:Lorg/apache/poi/xwpf/usermodel/ShapeProperties;

    iget-object v0, v0, Lorg/apache/poi/xwpf/usermodel/ShapeProperties;->anchor:Ljava/awt/geom/Rectangle2D;

    invoke-virtual {v0}, Ljava/awt/geom/RectangularShape;->getHeight()D

    move-result-wide v9

    invoke-virtual/range {v2 .. v10}, Ljava/awt/geom/Rectangle2D;->setFrame(DDDD)V

    .line 9
    :cond_0
    invoke-interface {p1}, Lcom/microsoft/schemas/vml/CTGroup;->getCoordsize()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/poi/convert/xwpf/XWPFWordToHtmlUtils;->parsePoint(Ljava/lang/String;)Ljava/awt/geom/Point2D;

    move-result-object p1

    .line 10
    invoke-static {p1}, Lorg/apache/poi/convert/WordToHtmlUtils;->isNull(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 11
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFShape;->properties:Lorg/apache/poi/xwpf/usermodel/ShapeProperties;

    iget-object v1, v0, Lorg/apache/poi/xwpf/usermodel/ShapeProperties;->anchor:Ljava/awt/geom/Rectangle2D;

    invoke-virtual {v1}, Ljava/awt/geom/RectangularShape;->getX()D

    move-result-wide v2

    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFShape;->properties:Lorg/apache/poi/xwpf/usermodel/ShapeProperties;

    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/ShapeProperties;->anchor:Ljava/awt/geom/Rectangle2D;

    invoke-virtual {p0}, Ljava/awt/geom/RectangularShape;->getY()D

    move-result-wide v4

    invoke-virtual {p1}, Ljava/awt/geom/Point2D;->getX()D

    move-result-wide v6

    invoke-virtual {p1}, Ljava/awt/geom/Point2D;->getY()D

    move-result-wide v8

    invoke-virtual/range {v1 .. v9}, Ljava/awt/geom/Rectangle2D;->setFrame(DDDD)V

    :cond_1
    return-void
.end method

.method public bridge synthetic parseShapeProperties(Lorg/apache/xmlbeans/XmlObject;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/microsoft/schemas/vml/CTGroup;

    invoke-virtual {p0, p1}, Lorg/apache/poi/xwpf/usermodel/GroupShape;->parseShapeProperties(Lcom/microsoft/schemas/vml/CTGroup;)V

    return-void
.end method
