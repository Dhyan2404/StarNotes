.class public Lorg/apache/poi/xwpf/usermodel/RectShape;
.super Lorg/apache/poi/xwpf/usermodel/XWPFShape;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/poi/xwpf/usermodel/XWPFShape<",
        "Lcom/microsoft/schemas/vml/CTRect;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lorg/apache/poi/xwpf/usermodel/ShapeContainer;Lcom/microsoft/schemas/vml/CTRect;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/xwpf/usermodel/ShapeContainer<",
            "Lorg/apache/poi/xwpf/usermodel/XWPFShape<",
            "*>;>;",
            "Lcom/microsoft/schemas/vml/CTRect;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lorg/apache/poi/xwpf/usermodel/XWPFShape;-><init>(Lorg/apache/poi/xwpf/usermodel/ShapeContainer;Lorg/apache/xmlbeans/XmlObject;)V

    return-void
.end method

.method private parseRectProperties(Lorg/apache/poi/xwpf/usermodel/ShapeProperties;Lcom/microsoft/schemas/vml/CTRect;)V
    .locals 11

    invoke-interface {p2}, Lcom/microsoft/schemas/vml/CTRect;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lorg/apache/poi/xwpf/usermodel/ShapeProperties;->shapeId:Ljava/lang/String;

    invoke-interface {p2}, Lcom/microsoft/schemas/vml/CTRect;->isSetAllowincell()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Lcom/microsoft/schemas/vml/CTRect;->getAllowincell()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalse$Enum;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/poi/convert/xwpf/XWPFWordToHtmlUtils;->parseSTTrueFalse(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalse$Enum;)Z

    move-result v0

    iput-boolean v0, p1, Lorg/apache/poi/xwpf/usermodel/ShapeProperties;->allowInCell:Z

    :cond_0
    invoke-interface {p2}, Lcom/microsoft/schemas/vml/CTRect;->isSetSpt()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Lcom/microsoft/schemas/vml/CTRect;->getSpt()F

    move-result v0

    float-to-double v0, v0

    iput-wide v0, p1, Lorg/apache/poi/xwpf/usermodel/ShapeProperties;->spt:D

    :cond_1
    iget-object v0, p1, Lorg/apache/poi/xwpf/usermodel/ShapeProperties;->anchor:Ljava/awt/geom/Rectangle2D;

    invoke-virtual {v0}, Ljava/awt/geom/RectangularShape;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p2}, Lcom/microsoft/schemas/vml/CTRect;->isSetCoordorigin()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Lcom/microsoft/schemas/vml/CTRect;->getCoordorigin()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/poi/convert/xwpf/XWPFWordToHtmlUtils;->parsePoint(Ljava/lang/String;)Ljava/awt/geom/Point2D;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/poi/convert/WordToHtmlUtils;->isNull(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v2, p1, Lorg/apache/poi/xwpf/usermodel/ShapeProperties;->anchor:Ljava/awt/geom/Rectangle2D;

    invoke-virtual {v0}, Ljava/awt/geom/Point2D;->getX()D

    move-result-wide v3

    invoke-virtual {v0}, Ljava/awt/geom/Point2D;->getY()D

    move-result-wide v5

    iget-object v0, p1, Lorg/apache/poi/xwpf/usermodel/ShapeProperties;->anchor:Ljava/awt/geom/Rectangle2D;

    invoke-virtual {v0}, Ljava/awt/geom/RectangularShape;->getWidth()D

    move-result-wide v7

    iget-object v0, p1, Lorg/apache/poi/xwpf/usermodel/ShapeProperties;->anchor:Ljava/awt/geom/Rectangle2D;

    invoke-virtual {v0}, Ljava/awt/geom/RectangularShape;->getHeight()D

    move-result-wide v9

    invoke-virtual/range {v2 .. v10}, Ljava/awt/geom/Rectangle2D;->setFrame(DDDD)V

    :cond_2
    invoke-interface {p2}, Lcom/microsoft/schemas/vml/CTRect;->isSetCoordsize()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p2}, Lcom/microsoft/schemas/vml/CTRect;->getCoordsize()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/poi/convert/xwpf/XWPFWordToHtmlUtils;->parsePoint(Ljava/lang/String;)Ljava/awt/geom/Point2D;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/poi/convert/WordToHtmlUtils;->isNull(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v2, p1, Lorg/apache/poi/xwpf/usermodel/ShapeProperties;->anchor:Ljava/awt/geom/Rectangle2D;

    invoke-virtual {v2}, Ljava/awt/geom/RectangularShape;->getX()D

    move-result-wide v3

    iget-object v1, p1, Lorg/apache/poi/xwpf/usermodel/ShapeProperties;->anchor:Ljava/awt/geom/Rectangle2D;

    invoke-virtual {v1}, Ljava/awt/geom/RectangularShape;->getY()D

    move-result-wide v5

    invoke-virtual {v0}, Ljava/awt/geom/Point2D;->getX()D

    move-result-wide v7

    invoke-virtual {v0}, Ljava/awt/geom/Point2D;->getY()D

    move-result-wide v9

    invoke-virtual/range {v2 .. v10}, Ljava/awt/geom/Rectangle2D;->setFrame(DDDD)V

    :cond_3
    invoke-interface {p2}, Lcom/microsoft/schemas/vml/CTRect;->isSetFilled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    invoke-interface {p2}, Lcom/microsoft/schemas/vml/CTRect;->getFilled()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalse$Enum;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/poi/convert/xwpf/XWPFWordToHtmlUtils;->parseSTTrueFalse(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalse$Enum;)Z

    move-result v0

    iput-boolean v0, p1, Lorg/apache/poi/xwpf/usermodel/ShapeProperties;->filled:Z

    goto :goto_0

    :cond_4
    invoke-interface {p2}, Lcom/microsoft/schemas/vml/CTRect;->sizeOfFillArray()I

    move-result v0

    if-lez v0, :cond_5

    invoke-interface {p2, v1}, Lcom/microsoft/schemas/vml/CTRect;->getFillArray(I)Lcom/microsoft/schemas/vml/CTFill;

    move-result-object v0

    invoke-interface {v0}, Lcom/microsoft/schemas/vml/CTFill;->getOn()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalse$Enum;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/poi/convert/xwpf/XWPFWordToHtmlUtils;->parseSTTrueFalse(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalse$Enum;)Z

    move-result v0

    iput-boolean v0, p1, Lorg/apache/poi/xwpf/usermodel/ShapeProperties;->filled:Z

    goto :goto_0

    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p1, Lorg/apache/poi/xwpf/usermodel/ShapeProperties;->filled:Z

    :goto_0
    iget-boolean v0, p1, Lorg/apache/poi/xwpf/usermodel/ShapeProperties;->filled:Z

    if-eqz v0, :cond_6

    invoke-interface {p2}, Lcom/microsoft/schemas/vml/CTRect;->isSetFillcolor()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p2}, Lcom/microsoft/schemas/vml/CTRect;->getFillcolor()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/poi/util/ColorUtils;->decode(Ljava/lang/String;)Ljava/awt/Color;

    move-result-object v0

    iput-object v0, p1, Lorg/apache/poi/xwpf/usermodel/ShapeProperties;->fillColor:Ljava/awt/Color;

    :cond_6
    invoke-interface {p2}, Lcom/microsoft/schemas/vml/CTRect;->isSetStroked()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p2}, Lcom/microsoft/schemas/vml/CTRect;->getStroked()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalse$Enum;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/poi/convert/xwpf/XWPFWordToHtmlUtils;->parseSTTrueFalse(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalse$Enum;)Z

    move-result v0

    iput-boolean v0, p1, Lorg/apache/poi/xwpf/usermodel/ShapeProperties;->stroked:Z

    :cond_7
    iget-boolean v0, p1, Lorg/apache/poi/xwpf/usermodel/ShapeProperties;->stroked:Z

    if-eqz v0, :cond_8

    invoke-interface {p2}, Lcom/microsoft/schemas/vml/CTRect;->isSetStrokecolor()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p2}, Lcom/microsoft/schemas/vml/CTRect;->getStrokecolor()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/poi/util/ColorUtils;->decode(Ljava/lang/String;)Ljava/awt/Color;

    move-result-object v0

    iput-object v0, p1, Lorg/apache/poi/xwpf/usermodel/ShapeProperties;->strokedColor:Ljava/awt/Color;

    :cond_8
    invoke-interface {p2}, Lcom/microsoft/schemas/vml/CTRect;->sizeOfPathArray()I

    move-result v0

    if-lez v0, :cond_9

    invoke-interface {p2, v1}, Lcom/microsoft/schemas/vml/CTRect;->getPathArray(I)Lcom/microsoft/schemas/vml/CTPath;

    move-result-object v0

    invoke-interface {v0}, Lcom/microsoft/schemas/vml/CTPath;->getArrowok()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalse$Enum;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/poi/convert/xwpf/XWPFWordToHtmlUtils;->parseSTTrueFalse(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalse$Enum;)Z

    move-result v0

    iput-boolean v0, p1, Lorg/apache/poi/xwpf/usermodel/ShapeProperties;->arrowOk:Z

    :cond_9
    invoke-interface {p2}, Lcom/microsoft/schemas/vml/CTRect;->sizeOfStrokeArray()I

    move-result v0

    if-lez v0, :cond_a

    invoke-interface {p2, v1}, Lcom/microsoft/schemas/vml/CTRect;->getStrokeArray(I)Lcom/microsoft/schemas/vml/CTStroke;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/xwpf/usermodel/XWPFShape;->parseStroke(Lorg/apache/poi/xwpf/usermodel/ShapeProperties;Lcom/microsoft/schemas/vml/CTStroke;)V

    :cond_a
    return-void
.end method


# virtual methods
.method public draw(Ljava/awt/Graphics2D;)V
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFShape;->properties:Lorg/apache/poi/xwpf/usermodel/ShapeProperties;

    iget-object v0, v0, Lorg/apache/poi/xwpf/usermodel/ShapeProperties;->anchor:Ljava/awt/geom/Rectangle2D;

    invoke-virtual {v0}, Ljava/awt/geom/RectangularShape;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, p1, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFShape;->drawJavaShape(Ljava/awt/Graphics2D;Ljava/awt/Shape;)V

    :cond_0
    return-void
.end method

.method public parseShapeProperties(Lcom/microsoft/schemas/vml/CTRect;)V
    .locals 1

    .line 2
    invoke-interface {p1}, Lcom/microsoft/schemas/vml/CTRect;->getStyle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFShape;->parseStyleProperties(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFShape;->properties:Lorg/apache/poi/xwpf/usermodel/ShapeProperties;

    invoke-direct {p0, v0, p1}, Lorg/apache/poi/xwpf/usermodel/RectShape;->parseRectProperties(Lorg/apache/poi/xwpf/usermodel/ShapeProperties;Lcom/microsoft/schemas/vml/CTRect;)V

    return-void
.end method

.method public bridge synthetic parseShapeProperties(Lorg/apache/xmlbeans/XmlObject;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/microsoft/schemas/vml/CTRect;

    invoke-virtual {p0, p1}, Lorg/apache/poi/xwpf/usermodel/RectShape;->parseShapeProperties(Lcom/microsoft/schemas/vml/CTRect;)V

    return-void
.end method
