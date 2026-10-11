.class public Lorg/apache/poi/xwpf/usermodel/LineShape;
.super Lorg/apache/poi/xwpf/usermodel/XWPFShape;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/poi/xwpf/usermodel/XWPFShape<",
        "Lcom/microsoft/schemas/vml/CTLine;",
        ">;"
    }
.end annotation


# static fields
.field private static final DECO_SIZE_POW:D = 1.5


# direct methods
.method public constructor <init>(Lorg/apache/poi/xwpf/usermodel/ShapeContainer;Lcom/microsoft/schemas/vml/CTLine;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/xwpf/usermodel/ShapeContainer<",
            "Lorg/apache/poi/xwpf/usermodel/XWPFShape<",
            "*>;>;",
            "Lcom/microsoft/schemas/vml/CTLine;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lorg/apache/poi/xwpf/usermodel/XWPFShape;-><init>(Lorg/apache/poi/xwpf/usermodel/ShapeContainer;Lorg/apache/xmlbeans/XmlObject;)V

    return-void
.end method

.method private drawLineArrow(Ljava/awt/Graphics2D;Ljava/awt/geom/Line2D;)V
    .locals 29

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lorg/apache/poi/xwpf/usermodel/XWPFShape;->properties:Lorg/apache/poi/xwpf/usermodel/ShapeProperties;

    iget-boolean v3, v2, Lorg/apache/poi/xwpf/usermodel/ShapeProperties;->arrowOk:Z

    if-eqz v3, :cond_5

    iget-object v2, v2, Lorg/apache/poi/xwpf/usermodel/ShapeProperties;->arrow:Lcom/microsoft/schemas/vml/STStrokeArrowType$Enum;

    if-eqz v2, :cond_5

    sget-object v3, Lcom/microsoft/schemas/vml/STStrokeArrowType;->NONE:Lcom/microsoft/schemas/vml/STStrokeArrowType$Enum;

    if-ne v2, v3, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-virtual/range {p2 .. p2}, Ljava/awt/geom/Line2D;->getX2()D

    move-result-wide v2

    invoke-virtual/range {p2 .. p2}, Ljava/awt/geom/Line2D;->getY2()D

    move-result-wide v4

    invoke-virtual/range {p2 .. p2}, Ljava/awt/geom/Line2D;->getY1()D

    move-result-wide v6

    invoke-virtual/range {p2 .. p2}, Ljava/awt/geom/Line2D;->getY2()D

    move-result-wide v8

    sub-double/2addr v6, v8

    invoke-virtual/range {p2 .. p2}, Ljava/awt/geom/Line2D;->getX1()D

    move-result-wide v8

    invoke-virtual/range {p2 .. p2}, Ljava/awt/geom/Line2D;->getX2()D

    move-result-wide v10

    sub-double/2addr v8, v10

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v11

    const-wide/high16 v6, 0x3ff8000000000000L    # 1.5

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v13

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    new-instance v15, Ljava/awt/geom/AffineTransform;

    invoke-direct {v15}, Ljava/awt/geom/AffineTransform;-><init>()V

    iget-object v0, v0, Lorg/apache/poi/xwpf/usermodel/XWPFShape;->properties:Lorg/apache/poi/xwpf/usermodel/ShapeProperties;

    iget-object v0, v0, Lorg/apache/poi/xwpf/usermodel/ShapeProperties;->arrow:Lcom/microsoft/schemas/vml/STStrokeArrowType$Enum;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/StringEnumAbstractBase;->intValue()I

    move-result v0

    const/4 v10, 0x2

    const-wide/high16 v16, -0x4000000000000000L    # -2.0

    const-wide/16 v8, 0x0

    if-eq v0, v10, :cond_3

    const/4 v10, 0x4

    if-eq v0, v10, :cond_2

    const/4 v10, 0x5

    if-eq v0, v10, :cond_1

    new-instance v0, Lorg/apache/poi/sl/draw/geom/Path;

    invoke-direct {v0}, Lorg/apache/poi/sl/draw/geom/Path;-><init>()V

    sget-object v10, Lorg/apache/poi/sl/usermodel/PaintStyle$PaintModifier;->NONE:Lorg/apache/poi/sl/usermodel/PaintStyle$PaintModifier;

    invoke-virtual {v0, v10}, Lorg/apache/poi/sl/draw/geom/Path;->setFill(Lorg/apache/poi/sl/usermodel/PaintStyle$PaintModifier;)V

    const/4 v10, 0x1

    invoke-virtual {v0, v10}, Lorg/apache/poi/sl/draw/geom/Path;->setStroke(Z)V

    new-instance v10, Ljava/awt/geom/Path2D$Double;

    invoke-direct {v10}, Ljava/awt/geom/Path2D$Double;-><init>()V

    const-wide/high16 v18, 0x4000000000000000L    # 2.0

    mul-double v13, v13, v18

    mul-double v16, v16, v6

    move-object/from16 p0, v0

    div-double v0, v16, v18

    invoke-virtual {v10, v13, v14, v0, v1}, Ljava/awt/geom/Path2D$Double;->moveTo(DD)V

    invoke-virtual {v10, v8, v9, v8, v9}, Ljava/awt/geom/Path2D$Double;->lineTo(DD)V

    mul-double v6, v6, v18

    div-double v6, v6, v18

    invoke-virtual {v10, v13, v14, v6, v7}, Ljava/awt/geom/Path2D$Double;->lineTo(DD)V

    invoke-virtual {v15, v2, v3, v4, v5}, Ljava/awt/geom/AffineTransform;->translate(DD)V

    invoke-virtual {v15, v11, v12}, Ljava/awt/geom/AffineTransform;->rotate(D)V

    :goto_0
    move-object/from16 v1, p0

    move-object v0, v15

    goto/16 :goto_1

    :cond_1
    const-wide/high16 v18, 0x4000000000000000L    # 2.0

    new-instance v0, Lorg/apache/poi/sl/draw/geom/Path;

    invoke-direct {v0}, Lorg/apache/poi/sl/draw/geom/Path;-><init>()V

    new-instance v10, Ljava/awt/geom/Path2D$Double;

    invoke-direct {v10}, Ljava/awt/geom/Path2D$Double;-><init>()V

    mul-double v13, v13, v18

    mul-double v16, v16, v6

    move-object/from16 p0, v0

    div-double v0, v16, v18

    invoke-virtual {v10, v13, v14, v0, v1}, Ljava/awt/geom/Path2D$Double;->moveTo(DD)V

    invoke-virtual {v10, v8, v9, v8, v9}, Ljava/awt/geom/Path2D$Double;->lineTo(DD)V

    mul-double v6, v6, v18

    div-double v6, v6, v18

    invoke-virtual {v10, v13, v14, v6, v7}, Ljava/awt/geom/Path2D$Double;->lineTo(DD)V

    mul-double v13, v13, v18

    invoke-virtual {v10, v13, v14, v8, v9}, Ljava/awt/geom/Path2D$Double;->lineTo(DD)V

    invoke-virtual {v10}, Ljava/awt/geom/Path2D;->closePath()V

    invoke-virtual {v15, v2, v3, v4, v5}, Ljava/awt/geom/AffineTransform;->translate(DD)V

    invoke-virtual {v15, v11, v12}, Ljava/awt/geom/AffineTransform;->rotate(D)V

    goto :goto_0

    :cond_2
    const-wide/high16 v18, 0x4000000000000000L    # 2.0

    new-instance v0, Lorg/apache/poi/sl/draw/geom/Path;

    invoke-direct {v0}, Lorg/apache/poi/sl/draw/geom/Path;-><init>()V

    new-instance v1, Ljava/awt/geom/Ellipse2D$Double;

    const-wide/16 v21, 0x0

    const-wide/16 v23, 0x0

    mul-double v25, v13, v18

    mul-double v27, v6, v18

    move-object/from16 v20, v1

    invoke-direct/range {v20 .. v28}, Ljava/awt/geom/Ellipse2D$Double;-><init>(DDDD)V

    invoke-interface {v1}, Ljava/awt/Shape;->getBounds2D()Ljava/awt/geom/Rectangle2D;

    move-result-object v6

    invoke-virtual {v6}, Ljava/awt/geom/RectangularShape;->getWidth()D

    move-result-wide v7

    div-double v7, v7, v18

    sub-double/2addr v2, v7

    invoke-virtual {v6}, Ljava/awt/geom/RectangularShape;->getHeight()D

    move-result-wide v7

    div-double v7, v7, v18

    sub-double/2addr v4, v7

    invoke-virtual {v15, v2, v3, v4, v5}, Ljava/awt/geom/AffineTransform;->translate(DD)V

    invoke-virtual {v6}, Ljava/awt/geom/RectangularShape;->getX()D

    move-result-wide v2

    invoke-virtual {v6}, Ljava/awt/geom/RectangularShape;->getWidth()D

    move-result-wide v4

    div-double v4, v4, v18

    add-double v13, v2, v4

    invoke-virtual {v6}, Ljava/awt/geom/RectangularShape;->getY()D

    move-result-wide v2

    invoke-virtual {v6}, Ljava/awt/geom/RectangularShape;->getHeight()D

    move-result-wide v4

    div-double v4, v4, v18

    add-double/2addr v2, v4

    move-object v10, v15

    move-object v4, v15

    move-wide v15, v2

    invoke-virtual/range {v10 .. v16}, Ljava/awt/geom/AffineTransform;->rotate(DDD)V

    move-object v10, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_1

    :cond_3
    move-object v0, v15

    new-instance v1, Lorg/apache/poi/sl/draw/geom/Path;

    invoke-direct {v1}, Lorg/apache/poi/sl/draw/geom/Path;-><init>()V

    new-instance v10, Ljava/awt/geom/Path2D$Double;

    invoke-direct {v10}, Ljava/awt/geom/Path2D$Double;-><init>()V

    const-wide/high16 v18, 0x4000000000000000L    # 2.0

    mul-double v13, v13, v18

    mul-double v16, v16, v6

    move-wide/from16 v20, v11

    div-double v11, v16, v18

    invoke-virtual {v10, v13, v14, v11, v12}, Ljava/awt/geom/Path2D$Double;->moveTo(DD)V

    invoke-virtual {v10, v8, v9, v8, v9}, Ljava/awt/geom/Path2D$Double;->lineTo(DD)V

    mul-double v6, v6, v18

    div-double v6, v6, v18

    invoke-virtual {v10, v13, v14, v6, v7}, Ljava/awt/geom/Path2D$Double;->lineTo(DD)V

    invoke-virtual {v10}, Ljava/awt/geom/Path2D;->closePath()V

    invoke-virtual {v0, v2, v3, v4, v5}, Ljava/awt/geom/AffineTransform;->translate(DD)V

    move-wide/from16 v2, v20

    invoke-virtual {v0, v2, v3}, Ljava/awt/geom/AffineTransform;->rotate(D)V

    :goto_1
    invoke-virtual {v0, v10}, Ljava/awt/geom/AffineTransform;->createTransformedShape(Ljava/awt/Shape;)Ljava/awt/Shape;

    move-result-object v0

    invoke-virtual {v1}, Lorg/apache/poi/sl/draw/geom/Path;->isFilled()Z

    move-result v2

    if-eqz v2, :cond_4

    move-object/from16 v2, p1

    invoke-virtual {v2, v0}, Ljava/awt/Graphics2D;->fill(Ljava/awt/Shape;)V

    goto :goto_2

    :cond_4
    move-object/from16 v2, p1

    :goto_2
    invoke-virtual {v1}, Lorg/apache/poi/sl/draw/geom/Path;->isStroked()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v2, v0}, Ljava/awt/Graphics2D;->draw(Ljava/awt/Shape;)V

    :cond_5
    :goto_3
    return-void
.end method

.method private getLineShape()Ljava/awt/geom/Line2D;
    .locals 21

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/poi/xwpf/usermodel/XWPFShape;->properties:Lorg/apache/poi/xwpf/usermodel/ShapeProperties;

    iget-object v1, v0, Lorg/apache/poi/xwpf/usermodel/ShapeProperties;->anchor:Ljava/awt/geom/Rectangle2D;

    sget-object v2, Lorg/apache/poi/xwpf/usermodel/LineShape$1;->$SwitchMap$org$apache$poi$xwpf$usermodel$Flip:[I

    iget-object v0, v0, Lorg/apache/poi/xwpf/usermodel/ShapeProperties;->flip:Lorg/apache/poi/xwpf/usermodel/Flip;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v2, v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    new-instance v0, Ljava/awt/geom/Line2D$Double;

    invoke-virtual {v1}, Ljava/awt/geom/RectangularShape;->getX()D

    move-result-wide v4

    invoke-virtual {v1}, Ljava/awt/geom/RectangularShape;->getY()D

    move-result-wide v6

    invoke-virtual {v1}, Ljava/awt/geom/RectangularShape;->getMaxX()D

    move-result-wide v8

    invoke-virtual {v1}, Ljava/awt/geom/RectangularShape;->getMaxY()D

    move-result-wide v10

    move-object v3, v0

    invoke-direct/range {v3 .. v11}, Ljava/awt/geom/Line2D$Double;-><init>(DDDD)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/awt/geom/Line2D$Double;

    invoke-virtual {v1}, Ljava/awt/geom/RectangularShape;->getX()D

    move-result-wide v13

    invoke-virtual {v1}, Ljava/awt/geom/RectangularShape;->getMaxY()D

    move-result-wide v15

    invoke-virtual {v1}, Ljava/awt/geom/RectangularShape;->getMaxX()D

    move-result-wide v17

    invoke-virtual {v1}, Ljava/awt/geom/RectangularShape;->getY()D

    move-result-wide v19

    move-object v12, v0

    invoke-direct/range {v12 .. v20}, Ljava/awt/geom/Line2D$Double;-><init>(DDDD)V

    return-object v0

    :cond_1
    new-instance v0, Ljava/awt/geom/Line2D$Double;

    invoke-virtual {v1}, Ljava/awt/geom/RectangularShape;->getMaxX()D

    move-result-wide v2

    invoke-virtual {v1}, Ljava/awt/geom/RectangularShape;->getY()D

    move-result-wide v4

    invoke-virtual {v1}, Ljava/awt/geom/RectangularShape;->getX()D

    move-result-wide v6

    invoke-virtual {v1}, Ljava/awt/geom/RectangularShape;->getY()D

    move-result-wide v8

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Ljava/awt/geom/Line2D$Double;-><init>(DDDD)V

    return-object v0
.end method

.method private parseFromTo(Lorg/apache/poi/xwpf/usermodel/ShapeProperties;Lcom/microsoft/schemas/vml/CTLine;)V
    .locals 10

    invoke-interface {p2}, Lcom/microsoft/schemas/vml/CTLine;->getFrom()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2}, Lcom/microsoft/schemas/vml/CTLine;->getTo()Ljava/lang/String;

    move-result-object p2

    if-eqz p0, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lorg/apache/poi/convert/xwpf/XWPFWordToHtmlUtils;->parsePoint(Ljava/lang/String;)Ljava/awt/geom/Point2D;

    move-result-object p0

    invoke-static {p2}, Lorg/apache/poi/convert/xwpf/XWPFWordToHtmlUtils;->parsePoint(Ljava/lang/String;)Ljava/awt/geom/Point2D;

    move-result-object p2

    invoke-static {p0}, Lorg/apache/poi/convert/WordToHtmlUtils;->isNull(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p2}, Lorg/apache/poi/convert/WordToHtmlUtils;->isNull(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v1, p1, Lorg/apache/poi/xwpf/usermodel/ShapeProperties;->anchor:Ljava/awt/geom/Rectangle2D;

    invoke-virtual {p0}, Ljava/awt/geom/Point2D;->getX()D

    move-result-wide v2

    invoke-virtual {p0}, Ljava/awt/geom/Point2D;->getY()D

    move-result-wide v4

    invoke-virtual {p2}, Ljava/awt/geom/Point2D;->getX()D

    move-result-wide v6

    invoke-virtual {p0}, Ljava/awt/geom/Point2D;->getX()D

    move-result-wide v8

    sub-double/2addr v6, v8

    invoke-virtual {p2}, Ljava/awt/geom/Point2D;->getY()D

    move-result-wide p1

    invoke-virtual {p0}, Ljava/awt/geom/Point2D;->getY()D

    move-result-wide v8

    sub-double v8, p1, v8

    invoke-virtual/range {v1 .. v9}, Ljava/awt/geom/Rectangle2D;->setRect(DDDD)V

    :cond_1
    :goto_0
    return-void
.end method

.method private parseLineProperties(Lorg/apache/poi/xwpf/usermodel/ShapeProperties;Lcom/microsoft/schemas/vml/CTLine;)V
    .locals 11

    invoke-interface {p2}, Lcom/microsoft/schemas/vml/CTLine;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lorg/apache/poi/xwpf/usermodel/ShapeProperties;->shapeId:Ljava/lang/String;

    invoke-interface {p2}, Lcom/microsoft/schemas/vml/CTLine;->isSetAllowincell()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Lcom/microsoft/schemas/vml/CTLine;->getAllowincell()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalse$Enum;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/poi/convert/xwpf/XWPFWordToHtmlUtils;->parseSTTrueFalse(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalse$Enum;)Z

    move-result v0

    iput-boolean v0, p1, Lorg/apache/poi/xwpf/usermodel/ShapeProperties;->allowInCell:Z

    :cond_0
    invoke-interface {p2}, Lcom/microsoft/schemas/vml/CTLine;->isSetSpt()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Lcom/microsoft/schemas/vml/CTLine;->getSpt()F

    move-result v0

    float-to-double v0, v0

    iput-wide v0, p1, Lorg/apache/poi/xwpf/usermodel/ShapeProperties;->spt:D

    :cond_1
    iget-object v0, p1, Lorg/apache/poi/xwpf/usermodel/ShapeProperties;->anchor:Ljava/awt/geom/Rectangle2D;

    invoke-virtual {v0}, Ljava/awt/geom/RectangularShape;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p2}, Lcom/microsoft/schemas/vml/CTLine;->isSetCoordorigin()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Lcom/microsoft/schemas/vml/CTLine;->getCoordorigin()Ljava/lang/String;

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
    invoke-interface {p2}, Lcom/microsoft/schemas/vml/CTLine;->isSetCoordsize()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p2}, Lcom/microsoft/schemas/vml/CTLine;->getCoordsize()Ljava/lang/String;

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
    invoke-interface {p2}, Lcom/microsoft/schemas/vml/CTLine;->isSetFilled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    invoke-interface {p2}, Lcom/microsoft/schemas/vml/CTLine;->getFilled()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalse$Enum;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/poi/convert/xwpf/XWPFWordToHtmlUtils;->parseSTTrueFalse(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalse$Enum;)Z

    move-result v0

    iput-boolean v0, p1, Lorg/apache/poi/xwpf/usermodel/ShapeProperties;->filled:Z

    invoke-interface {p2}, Lcom/microsoft/schemas/vml/CTLine;->isSetFillcolor()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p2}, Lcom/microsoft/schemas/vml/CTLine;->getFillcolor()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/poi/util/ColorUtils;->decode(Ljava/lang/String;)Ljava/awt/Color;

    move-result-object v0

    iput-object v0, p1, Lorg/apache/poi/xwpf/usermodel/ShapeProperties;->fillColor:Ljava/awt/Color;

    goto :goto_0

    :cond_4
    invoke-interface {p2}, Lcom/microsoft/schemas/vml/CTLine;->sizeOfFillArray()I

    move-result v0

    if-lez v0, :cond_5

    invoke-interface {p2, v1}, Lcom/microsoft/schemas/vml/CTLine;->getFillArray(I)Lcom/microsoft/schemas/vml/CTFill;

    move-result-object v0

    invoke-interface {v0}, Lcom/microsoft/schemas/vml/CTFill;->getOn()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalse$Enum;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/poi/convert/xwpf/XWPFWordToHtmlUtils;->parseSTTrueFalse(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalse$Enum;)Z

    move-result v0

    iput-boolean v0, p1, Lorg/apache/poi/xwpf/usermodel/ShapeProperties;->filled:Z

    :cond_5
    :goto_0
    invoke-interface {p2}, Lcom/microsoft/schemas/vml/CTLine;->isSetStroked()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p2}, Lcom/microsoft/schemas/vml/CTLine;->getStroked()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalse$Enum;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/poi/convert/xwpf/XWPFWordToHtmlUtils;->parseSTTrueFalse(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalse$Enum;)Z

    move-result v0

    iput-boolean v0, p1, Lorg/apache/poi/xwpf/usermodel/ShapeProperties;->stroked:Z

    goto :goto_1

    :cond_6
    const/4 v0, 0x1

    iput-boolean v0, p1, Lorg/apache/poi/xwpf/usermodel/ShapeProperties;->stroked:Z

    :goto_1
    iget-boolean v0, p1, Lorg/apache/poi/xwpf/usermodel/ShapeProperties;->stroked:Z

    if-eqz v0, :cond_7

    invoke-interface {p2}, Lcom/microsoft/schemas/vml/CTLine;->isSetStrokecolor()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p2}, Lcom/microsoft/schemas/vml/CTLine;->getStrokecolor()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/poi/util/ColorUtils;->decode(Ljava/lang/String;)Ljava/awt/Color;

    move-result-object v0

    iput-object v0, p1, Lorg/apache/poi/xwpf/usermodel/ShapeProperties;->strokedColor:Ljava/awt/Color;

    :cond_7
    invoke-interface {p2}, Lcom/microsoft/schemas/vml/CTLine;->sizeOfPathArray()I

    move-result v0

    if-lez v0, :cond_8

    invoke-interface {p2, v1}, Lcom/microsoft/schemas/vml/CTLine;->getPathArray(I)Lcom/microsoft/schemas/vml/CTPath;

    move-result-object v0

    invoke-interface {v0}, Lcom/microsoft/schemas/vml/CTPath;->getArrowok()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalse$Enum;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/poi/convert/xwpf/XWPFWordToHtmlUtils;->parseSTTrueFalse(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalse$Enum;)Z

    move-result v0

    iput-boolean v0, p1, Lorg/apache/poi/xwpf/usermodel/ShapeProperties;->arrowOk:Z

    :cond_8
    invoke-interface {p2}, Lcom/microsoft/schemas/vml/CTLine;->sizeOfStrokeArray()I

    move-result v0

    if-lez v0, :cond_9

    invoke-interface {p2, v1}, Lcom/microsoft/schemas/vml/CTLine;->getStrokeArray(I)Lcom/microsoft/schemas/vml/CTStroke;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/xwpf/usermodel/XWPFShape;->parseStroke(Lorg/apache/poi/xwpf/usermodel/ShapeProperties;Lcom/microsoft/schemas/vml/CTStroke;)V

    :cond_9
    return-void
.end method


# virtual methods
.method public draw(Ljava/awt/Graphics2D;)V
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFShape;->properties:Lorg/apache/poi/xwpf/usermodel/ShapeProperties;

    iget-boolean v0, v0, Lorg/apache/poi/xwpf/usermodel/ShapeProperties;->stroked:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/apache/poi/xwpf/usermodel/LineShape;->getLineShape()Ljava/awt/geom/Line2D;

    move-result-object v0

    invoke-virtual {p1}, Ljava/awt/Graphics2D;->getColor()Ljava/awt/Color;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/poi/xwpf/usermodel/XWPFShape;->properties:Lorg/apache/poi/xwpf/usermodel/ShapeProperties;

    iget-object v2, v2, Lorg/apache/poi/xwpf/usermodel/ShapeProperties;->strokedColor:Ljava/awt/Color;

    invoke-virtual {p1, v2}, Ljava/awt/Graphics2D;->setColor(Ljava/awt/Color;)V

    invoke-virtual {p1, v0}, Ljava/awt/Graphics2D;->draw(Ljava/awt/Shape;)V

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/xwpf/usermodel/LineShape;->drawLineArrow(Ljava/awt/Graphics2D;Ljava/awt/geom/Line2D;)V

    invoke-virtual {p1, v1}, Ljava/awt/Graphics2D;->setColor(Ljava/awt/Color;)V

    :cond_0
    return-void
.end method

.method public parseShapeProperties(Lcom/microsoft/schemas/vml/CTLine;)V
    .locals 2

    .line 2
    invoke-interface {p1}, Lcom/microsoft/schemas/vml/CTLine;->getStyle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFShape;->parseStyleProperties(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFShape;->properties:Lorg/apache/poi/xwpf/usermodel/ShapeProperties;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lorg/apache/poi/xwpf/usermodel/ShapeProperties;->stroked:Z

    .line 4
    invoke-direct {p0, v0, p1}, Lorg/apache/poi/xwpf/usermodel/LineShape;->parseLineProperties(Lorg/apache/poi/xwpf/usermodel/ShapeProperties;Lcom/microsoft/schemas/vml/CTLine;)V

    .line 5
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFShape;->properties:Lorg/apache/poi/xwpf/usermodel/ShapeProperties;

    invoke-direct {p0, v0, p1}, Lorg/apache/poi/xwpf/usermodel/LineShape;->parseFromTo(Lorg/apache/poi/xwpf/usermodel/ShapeProperties;Lcom/microsoft/schemas/vml/CTLine;)V

    return-void
.end method

.method public bridge synthetic parseShapeProperties(Lorg/apache/xmlbeans/XmlObject;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/microsoft/schemas/vml/CTLine;

    invoke-virtual {p0, p1}, Lorg/apache/poi/xwpf/usermodel/LineShape;->parseShapeProperties(Lcom/microsoft/schemas/vml/CTLine;)V

    return-void
.end method
