.class public Lorg/apache/poi/xwpf/usermodel/TextPathShape;
.super Lorg/apache/poi/xwpf/usermodel/XWPFShape;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/poi/xwpf/usermodel/XWPFShape<",
        "Lcom/microsoft/schemas/vml/CTTextPath;",
        ">;"
    }
.end annotation


# instance fields
.field private paragraph:Lorg/apache/poi/xwpf/usermodel/TextParagraph;

.field private text:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/apache/poi/xwpf/usermodel/ShapeContainer;Lcom/microsoft/schemas/vml/CTTextPath;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/xwpf/usermodel/ShapeContainer<",
            "Lorg/apache/poi/xwpf/usermodel/XWPFShape<",
            "*>;>;",
            "Lcom/microsoft/schemas/vml/CTTextPath;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lorg/apache/poi/xwpf/usermodel/XWPFShape;-><init>(Lorg/apache/poi/xwpf/usermodel/ShapeContainer;Lorg/apache/xmlbeans/XmlObject;)V

    return-void
.end method

.method private parseTextParagraph(Ljava/awt/Graphics2D;)V
    .locals 6

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/TextPathShape;->paragraph:Lorg/apache/poi/xwpf/usermodel/TextParagraph;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lorg/apache/poi/xwpf/usermodel/TextParagraph;

    iget-object v1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFShape;->parent:Lorg/apache/poi/xwpf/usermodel/ShapeContainer;

    invoke-interface {v1}, Lorg/apache/poi/xwpf/usermodel/Shape;->getAnchor()Ljava/awt/geom/Rectangle2D;

    move-result-object v1

    new-instance v2, Ljava/awt/Insets;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v3, v3, v3}, Ljava/awt/Insets;-><init>(IIII)V

    invoke-direct {v0, v1, v2}, Lorg/apache/poi/xwpf/usermodel/TextParagraph;-><init>(Ljava/awt/geom/Rectangle2D;Ljava/awt/Insets;)V

    iput-object v0, p0, Lorg/apache/poi/xwpf/usermodel/TextPathShape;->paragraph:Lorg/apache/poi/xwpf/usermodel/TextParagraph;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lorg/apache/poi/xwpf/usermodel/TextParagraph$AttributedStringData;

    sget-object v2, Ljava/awt/font/TextAttribute;->FAMILY:Ljava/awt/font/TextAttribute;

    iget-object v4, p0, Lorg/apache/poi/xwpf/usermodel/XWPFShape;->properties:Lorg/apache/poi/xwpf/usermodel/ShapeProperties;

    iget-object v4, v4, Lorg/apache/poi/xwpf/usermodel/ShapeProperties;->fontFamily:Ljava/lang/String;

    iget-object v5, p0, Lorg/apache/poi/xwpf/usermodel/TextPathShape;->text:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-direct {v1, v2, v4, v3, v5}, Lorg/apache/poi/xwpf/usermodel/TextParagraph$AttributedStringData;-><init>(Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lorg/apache/poi/xwpf/usermodel/TextParagraph$AttributedStringData;

    sget-object v2, Ljava/awt/font/TextAttribute;->SIZE:Ljava/awt/font/TextAttribute;

    iget-object v4, p0, Lorg/apache/poi/xwpf/usermodel/XWPFShape;->properties:Lorg/apache/poi/xwpf/usermodel/ShapeProperties;

    iget v4, v4, Lorg/apache/poi/xwpf/usermodel/ShapeProperties;->fontSize:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/poi/xwpf/usermodel/TextPathShape;->text:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-direct {v1, v2, v4, v3, v5}, Lorg/apache/poi/xwpf/usermodel/TextParagraph$AttributedStringData;-><init>(Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lorg/apache/poi/xwpf/usermodel/TextPathShape;->paragraph:Lorg/apache/poi/xwpf/usermodel/TextParagraph;

    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/TextPathShape;->text:Ljava/lang/String;

    invoke-virtual {v1, p1, p0, v0}, Lorg/apache/poi/xwpf/usermodel/TextParagraph;->breakText(Ljava/awt/Graphics2D;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method private parseTextPathProperties(Lcom/microsoft/schemas/vml/CTTextPath;)V
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFShape;->properties:Lorg/apache/poi/xwpf/usermodel/ShapeProperties;

    invoke-interface {p1}, Lcom/microsoft/schemas/vml/CTTextPath;->getId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/poi/xwpf/usermodel/ShapeProperties;->shapeId:Ljava/lang/String;

    invoke-interface {p1}, Lcom/microsoft/schemas/vml/CTTextPath;->getString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/xwpf/usermodel/TextPathShape;->text:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public draw(Ljava/awt/Graphics2D;)V
    .locals 11

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFShape;->parent:Lorg/apache/poi/xwpf/usermodel/ShapeContainer;

    invoke-interface {v0}, Lorg/apache/poi/xwpf/usermodel/Shape;->getAnchor()Ljava/awt/geom/Rectangle2D;

    move-result-object v4

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/TextPathShape;->text:Ljava/lang/String;

    invoke-static {v0}, Lorg/apache/poi/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v4}, Ljava/awt/geom/RectangularShape;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFShape;->properties:Lorg/apache/poi/xwpf/usermodel/ShapeProperties;

    iget v0, v0, Lorg/apache/poi/xwpf/usermodel/ShapeProperties;->fontSize:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lorg/apache/poi/xwpf/usermodel/TextPathShape;->parseTextParagraph(Ljava/awt/Graphics2D;)V

    invoke-virtual {v4}, Ljava/awt/geom/RectangularShape;->getX()D

    move-result-wide v7

    invoke-virtual {v4}, Ljava/awt/geom/RectangularShape;->getY()D

    move-result-wide v9

    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/TextPathShape;->paragraph:Lorg/apache/poi/xwpf/usermodel/TextParagraph;

    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    move-object v5, p1

    invoke-static/range {v5 .. v10}, Lorg/apache/poi/xwpf/usermodel/TextParagraph;->draw(Ljava/awt/Graphics2D;Ljava/util/List;DD)V

    return-void

    :cond_1
    :goto_0
    iget-object p1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFShape;->LOG:Lorg/apache/logging/log4j/Logger;

    invoke-interface {p1}, Lorg/apache/logging/log4j/Logger;->atError()Lorg/apache/logging/log4j/LogBuilder;

    move-result-object v1

    const-string v2, "Text:{}, anchor:{}, fontFamily:{}, fontSize:{}"

    iget-object v3, p0, Lorg/apache/poi/xwpf/usermodel/TextPathShape;->text:Ljava/lang/String;

    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFShape;->properties:Lorg/apache/poi/xwpf/usermodel/ShapeProperties;

    iget-object v5, p0, Lorg/apache/poi/xwpf/usermodel/ShapeProperties;->fontFamily:Ljava/lang/String;

    iget p0, p0, Lorg/apache/poi/xwpf/usermodel/ShapeProperties;->fontSize:F

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-interface/range {v1 .. v6}, Lorg/apache/logging/log4j/LogBuilder;->log(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public parseShapeProperties(Lcom/microsoft/schemas/vml/CTTextPath;)V
    .locals 1

    .line 2
    invoke-interface {p1}, Lcom/microsoft/schemas/vml/CTTextPath;->getStyle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFShape;->parseStyleProperties(Ljava/lang/String;)V

    .line 3
    invoke-direct {p0, p1}, Lorg/apache/poi/xwpf/usermodel/TextPathShape;->parseTextPathProperties(Lcom/microsoft/schemas/vml/CTTextPath;)V

    return-void
.end method

.method public bridge synthetic parseShapeProperties(Lorg/apache/xmlbeans/XmlObject;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/microsoft/schemas/vml/CTTextPath;

    invoke-virtual {p0, p1}, Lorg/apache/poi/xwpf/usermodel/TextPathShape;->parseShapeProperties(Lcom/microsoft/schemas/vml/CTTextPath;)V

    return-void
.end method
