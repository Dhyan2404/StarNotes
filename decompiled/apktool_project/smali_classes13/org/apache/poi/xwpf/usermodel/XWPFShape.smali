.class public abstract Lorg/apache/poi/xwpf/usermodel/XWPFShape;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/xwpf/usermodel/Shape;
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<XM",
        "L::Lorg/apache/xmlbeans/XmlObject;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/poi/xwpf/usermodel/Shape<",
        "Lorg/apache/poi/xwpf/usermodel/XWPFShape<",
        "*>;>;",
        "Ljava/io/Closeable;"
    }
.end annotation


# instance fields
.field protected final LOG:Lorg/apache/logging/log4j/Logger;

.field protected parent:Lorg/apache/poi/xwpf/usermodel/ShapeContainer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/poi/xwpf/usermodel/ShapeContainer<",
            "Lorg/apache/poi/xwpf/usermodel/XWPFShape<",
            "*>;>;"
        }
    .end annotation
.end field

.field protected properties:Lorg/apache/poi/xwpf/usermodel/ShapeProperties;

.field protected xmlObject:Lorg/apache/xmlbeans/XmlObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TXM",
            "L;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/apache/poi/xwpf/usermodel/ShapeContainer;Lorg/apache/xmlbeans/XmlObject;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/xwpf/usermodel/ShapeContainer<",
            "Lorg/apache/poi/xwpf/usermodel/XWPFShape<",
            "*>;>;TXM",
            "L;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/logging/log4j/LogManager;->getLogger(Ljava/lang/Class;)Lorg/apache/logging/log4j/Logger;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFShape;->LOG:Lorg/apache/logging/log4j/Logger;

    new-instance v0, Lorg/apache/poi/xwpf/usermodel/ShapeProperties;

    invoke-direct {v0}, Lorg/apache/poi/xwpf/usermodel/ShapeProperties;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFShape;->properties:Lorg/apache/poi/xwpf/usermodel/ShapeProperties;

    iput-object p1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFShape;->parent:Lorg/apache/poi/xwpf/usermodel/ShapeContainer;

    iput-object p2, p0, Lorg/apache/poi/xwpf/usermodel/XWPFShape;->xmlObject:Lorg/apache/xmlbeans/XmlObject;

    invoke-virtual {p0, p2}, Lorg/apache/poi/xwpf/usermodel/XWPFShape;->parseShapeProperties(Lorg/apache/xmlbeans/XmlObject;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFShape;->xmlObject:Lorg/apache/xmlbeans/XmlObject;

    invoke-static {p0}, Lorg/apache/poi/common/XmlBeanUtils;->freeMemory(Lorg/apache/xmlbeans/XmlObject;)V

    return-void
.end method

.method public drawJavaShape(Ljava/awt/Graphics2D;Ljava/awt/Shape;)V
    .locals 5

    invoke-virtual {p1}, Ljava/awt/Graphics2D;->getColor()Ljava/awt/Color;

    move-result-object v0

    invoke-virtual {p1}, Ljava/awt/Graphics2D;->getStroke()Ljava/awt/Stroke;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/poi/xwpf/usermodel/XWPFShape;->properties:Lorg/apache/poi/xwpf/usermodel/ShapeProperties;

    iget-object v2, v2, Lorg/apache/poi/xwpf/usermodel/ShapeProperties;->stroke:Ljava/awt/BasicStroke;

    if-eqz v2, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_1

    invoke-virtual {p1, v2}, Ljava/awt/Graphics2D;->setStroke(Ljava/awt/Stroke;)V

    :cond_1
    iget-object v2, p0, Lorg/apache/poi/xwpf/usermodel/XWPFShape;->properties:Lorg/apache/poi/xwpf/usermodel/ShapeProperties;

    iget-boolean v4, v2, Lorg/apache/poi/xwpf/usermodel/ShapeProperties;->filled:Z

    if-eqz v4, :cond_2

    iget-object v2, v2, Lorg/apache/poi/xwpf/usermodel/ShapeProperties;->fillColor:Ljava/awt/Color;

    invoke-virtual {p1, v2}, Ljava/awt/Graphics2D;->setColor(Ljava/awt/Color;)V

    invoke-virtual {p1, p2}, Ljava/awt/Graphics2D;->fill(Ljava/awt/Shape;)V

    :cond_2
    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFShape;->properties:Lorg/apache/poi/xwpf/usermodel/ShapeProperties;

    iget-boolean v2, p0, Lorg/apache/poi/xwpf/usermodel/ShapeProperties;->stroked:Z

    if-eqz v2, :cond_3

    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/ShapeProperties;->strokedColor:Ljava/awt/Color;

    invoke-virtual {p1, p0}, Ljava/awt/Graphics2D;->setColor(Ljava/awt/Color;)V

    invoke-virtual {p1, p2}, Ljava/awt/Graphics2D;->draw(Ljava/awt/Shape;)V

    :cond_3
    invoke-virtual {p1, v0}, Ljava/awt/Graphics2D;->setColor(Ljava/awt/Color;)V

    if-eqz v3, :cond_4

    invoke-virtual {p1, v1}, Ljava/awt/Graphics2D;->setStroke(Ljava/awt/Stroke;)V

    :cond_4
    return-void
.end method

.method public getAnchor()Ljava/awt/geom/Rectangle2D;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFShape;->properties:Lorg/apache/poi/xwpf/usermodel/ShapeProperties;

    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/ShapeProperties;->anchor:Ljava/awt/geom/Rectangle2D;

    return-object p0
.end method

.method public getParent()Lorg/apache/poi/xwpf/usermodel/ShapeContainer;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/poi/xwpf/usermodel/ShapeContainer<",
            "Lorg/apache/poi/xwpf/usermodel/XWPFShape<",
            "*>;>;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFShape;->parent:Lorg/apache/poi/xwpf/usermodel/ShapeContainer;

    return-object p0
.end method

.method public getPosition()Lorg/apache/poi/wp/usermodel/Position;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFShape;->properties:Lorg/apache/poi/xwpf/usermodel/ShapeProperties;

    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/ShapeProperties;->position:Lorg/apache/poi/wp/usermodel/Position;

    return-object p0
.end method

.method public getShapeId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFShape;->properties:Lorg/apache/poi/xwpf/usermodel/ShapeProperties;

    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/ShapeProperties;->shapeId:Ljava/lang/String;

    return-object p0
.end method

.method public getXmlObject()Lorg/apache/xmlbeans/XmlObject;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TXM",
            "L;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFShape;->xmlObject:Lorg/apache/xmlbeans/XmlObject;

    return-object p0
.end method

.method public abstract parseShapeProperties(Lorg/apache/xmlbeans/XmlObject;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TXM",
            "L;",
            ")V"
        }
    .end annotation
.end method

.method public parseStroke(Lorg/apache/poi/xwpf/usermodel/ShapeProperties;Lcom/microsoft/schemas/vml/CTStroke;)V
    .locals 10

    invoke-interface {p2}, Lcom/microsoft/schemas/vml/CTStroke;->isSetColor()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-interface {p2}, Lcom/microsoft/schemas/vml/CTStroke;->getColor()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/poi/util/ColorUtils;->decode(Ljava/lang/String;)Ljava/awt/Color;

    move-result-object p0

    iput-object p0, p1, Lorg/apache/poi/xwpf/usermodel/ShapeProperties;->strokedColor:Ljava/awt/Color;

    :cond_0
    invoke-interface {p2}, Lcom/microsoft/schemas/vml/CTStroke;->isSetEndarrow()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-interface {p2}, Lcom/microsoft/schemas/vml/CTStroke;->getEndarrow()Lcom/microsoft/schemas/vml/STStrokeArrowType$Enum;

    move-result-object p0

    iput-object p0, p1, Lorg/apache/poi/xwpf/usermodel/ShapeProperties;->arrow:Lcom/microsoft/schemas/vml/STStrokeArrowType$Enum;

    :cond_1
    invoke-interface {p2}, Lcom/microsoft/schemas/vml/CTStroke;->isSetWeight()Z

    move-result p0

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p0, :cond_2

    invoke-interface {p2}, Lcom/microsoft/schemas/vml/CTStroke;->getWeight()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/poi/convert/xwpf/XWPFWordToHtmlUtils;->parseNumberValue(Ljava/lang/String;)D

    move-result-wide v3

    double-to-float p0, v3

    move v4, p0

    move p0, v2

    goto :goto_0

    :cond_2
    move v4, v0

    move p0, v1

    :goto_0
    invoke-interface {p2}, Lcom/microsoft/schemas/vml/CTStroke;->isSetMiterlimit()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p2}, Lcom/microsoft/schemas/vml/CTStroke;->getMiterlimit()Ljava/math/BigDecimal;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigDecimal;->floatValue()F

    move-result p0

    invoke-static {v0, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    move v7, p0

    move p0, v2

    goto :goto_1

    :cond_3
    const/high16 v0, 0x41200000    # 10.0f

    move v7, v0

    :goto_1
    invoke-interface {p2}, Lcom/microsoft/schemas/vml/CTStroke;->isSetJoinstyle()Z

    move-result v0

    const/4 v3, 0x2

    if-eqz v0, :cond_6

    invoke-interface {p2}, Lcom/microsoft/schemas/vml/CTStroke;->getJoinstyle()Lcom/microsoft/schemas/vml/STStrokeJoinStyle$Enum;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/StringEnumAbstractBase;->intValue()I

    move-result p0

    if-eq p0, v2, :cond_5

    if-eq p0, v3, :cond_4

    move p0, v1

    goto :goto_2

    :cond_4
    move p0, v3

    goto :goto_2

    :cond_5
    move p0, v2

    :goto_2
    move v6, p0

    move p0, v2

    goto :goto_3

    :cond_6
    move v6, v1

    :goto_3
    invoke-interface {p2}, Lcom/microsoft/schemas/vml/CTStroke;->isSetEndcap()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {p2}, Lcom/microsoft/schemas/vml/CTStroke;->getEndcap()Lcom/microsoft/schemas/vml/STStrokeEndCap$Enum;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/StringEnumAbstractBase;->intValue()I

    move-result p0

    if-eq p0, v2, :cond_8

    const/4 v0, 0x3

    if-eq p0, v0, :cond_7

    move v1, v3

    goto :goto_4

    :cond_7
    move v1, v2

    :cond_8
    :goto_4
    move v5, v1

    goto :goto_5

    :cond_9
    move v2, p0

    move v5, v3

    :goto_5
    invoke-interface {p2}, Lcom/microsoft/schemas/vml/CTStroke;->isSetDashstyle()Z

    move-result p0

    if-eqz p0, :cond_a

    invoke-interface {p2}, Lcom/microsoft/schemas/vml/CTStroke;->getDashstyle()Ljava/lang/String;

    :cond_a
    if-eqz v2, :cond_b

    new-instance p0, Ljava/awt/BasicStroke;

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v3, p0

    invoke-direct/range {v3 .. v9}, Ljava/awt/BasicStroke;-><init>(FIIF[FF)V

    iput-object p0, p1, Lorg/apache/poi/xwpf/usermodel/ShapeProperties;->stroke:Ljava/awt/BasicStroke;

    :cond_b
    return-void
.end method

.method public parseStyleProperties(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFShape;->properties:Lorg/apache/poi/xwpf/usermodel/ShapeProperties;

    invoke-virtual {p0, p1}, Lorg/apache/poi/xwpf/usermodel/ShapeProperties;->parse(Ljava/lang/String;)V

    return-void
.end method
