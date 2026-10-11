.class public Lorg/apache/poi/xwpf/usermodel/AutoShape;
.super Lorg/apache/poi/xwpf/usermodel/XWPFShape;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/xwpf/usermodel/ShapeContainer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/poi/xwpf/usermodel/XWPFShape<",
        "Lcom/microsoft/schemas/vml/CTShape;",
        ">;",
        "Lorg/apache/poi/xwpf/usermodel/ShapeContainer<",
        "Lorg/apache/poi/xwpf/usermodel/XWPFShape<",
        "*>;>;"
    }
.end annotation


# static fields
.field public static final PATH_REGEX:Ljava/lang/String; = "([a-z])((-?\\d+)(,(-?\\d+))+)?"


# instance fields
.field private path2D:Ljava/awt/geom/Path2D;

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
.method public constructor <init>(Lorg/apache/poi/xwpf/usermodel/ShapeContainer;Lcom/microsoft/schemas/vml/CTShape;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/xwpf/usermodel/ShapeContainer<",
            "Lorg/apache/poi/xwpf/usermodel/XWPFShape<",
            "*>;>;",
            "Lcom/microsoft/schemas/vml/CTShape;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lorg/apache/poi/xwpf/usermodel/XWPFShape;-><init>(Lorg/apache/poi/xwpf/usermodel/ShapeContainer;Lorg/apache/xmlbeans/XmlObject;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xwpf/usermodel/AutoShape;->shapes:Ljava/util/List;

    return-void
.end method

.method private parseCoords([D[Ljava/lang/String;I)I
    .locals 4

    const/4 p0, 0x0

    move v0, p3

    move p3, p0

    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    array-length v1, p1

    if-ge p0, v1, :cond_0

    aget-object v1, p2, v0

    invoke-static {v1}, Lorg/apache/poi/convert/xwpf/XWPFWordToHtmlUtils;->parseNumberValue(Ljava/lang/String;)D

    move-result-wide v1

    aput-wide v1, p1, p0

    add-int/lit8 v1, p0, 0x1

    add-int/lit8 v2, v0, 0x1

    aget-object v2, p2, v2

    invoke-static {v2}, Lorg/apache/poi/convert/xwpf/XWPFWordToHtmlUtils;->parseNumberValue(Ljava/lang/String;)D

    move-result-wide v2

    aput-wide v2, p1, v1

    add-int/lit8 p3, p3, 0x1

    add-int/lit8 v0, v0, 0x2

    add-int/lit8 p0, p0, 0x2

    goto :goto_0

    :cond_0
    return p3
.end method

.method private parsePath(Ljava/awt/geom/Path2D;Ljava/lang/String;Ljava/lang/String;)V
    .locals 25

    move-object/from16 v13, p1

    move-object/from16 v0, p3

    const/4 v14, 0x0

    move-object/from16 v1, p2

    invoke-virtual {v1, v14}, Ljava/lang/String;->charAt(I)C

    move-result v15

    const/16 v11, 0x6d

    if-nez v0, :cond_1

    if-ne v15, v11, :cond_0

    const-wide/16 v0, 0x0

    invoke-virtual {v13, v0, v1, v0, v1}, Ljava/awt/geom/Path2D;->moveTo(DD)V

    :cond_0
    return-void

    :cond_1
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    const/4 v0, 0x6

    new-array v9, v0, [D

    array-length v0, v12

    int-to-double v0, v0

    const-wide/high16 v2, 0x4018000000000000L    # 6.0

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v10, v0

    move v0, v14

    :goto_0
    if-ge v0, v10, :cond_7

    add-int/lit8 v16, v0, 0x1

    mul-int/lit8 v0, v0, 0x6

    move-object/from16 v7, p0

    invoke-direct {v7, v9, v12, v0}, Lorg/apache/poi/xwpf/usermodel/AutoShape;->parseCoords([D[Ljava/lang/String;I)I

    move-result v0

    const/16 v1, 0x63

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v15, v1, :cond_6

    const/16 v1, 0x71

    if-eq v15, v1, :cond_5

    const/16 v1, 0x6c

    if-eq v15, v1, :cond_4

    if-eq v15, v11, :cond_3

    :cond_2
    :goto_1
    move-object/from16 v17, v9

    move/from16 v18, v10

    move/from16 v20, v11

    move-object/from16 v19, v12

    goto :goto_3

    :cond_3
    aget-wide v0, v9, v14

    aget-wide v2, v9, v4

    invoke-virtual {v13, v0, v1, v2, v3}, Ljava/awt/geom/Path2D;->moveTo(DD)V

    goto :goto_1

    :cond_4
    move v1, v14

    :goto_2
    if-ge v1, v0, :cond_2

    mul-int/lit8 v2, v1, 0x2

    aget-wide v5, v9, v2

    add-int/2addr v2, v4

    aget-wide v2, v9, v2

    invoke-virtual {v13, v5, v6, v2, v3}, Ljava/awt/geom/Path2D;->lineTo(DD)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    aget-wide v5, v9, v14

    aget-wide v17, v9, v4

    aget-wide v19, v9, v3

    aget-wide v21, v9, v2

    move-object/from16 v0, p1

    move-wide v1, v5

    move-wide/from16 v3, v17

    move-wide/from16 v5, v19

    move-wide/from16 v7, v21

    invoke-virtual/range {v0 .. v8}, Ljava/awt/geom/Path2D;->quadTo(DDDD)V

    goto :goto_1

    :cond_6
    aget-wide v5, v9, v14

    aget-wide v7, v9, v4

    aget-wide v17, v9, v3

    aget-wide v19, v9, v2

    const/4 v0, 0x4

    aget-wide v21, v9, v0

    const/4 v0, 0x5

    aget-wide v23, v9, v0

    move-object/from16 v0, p1

    move-wide v1, v5

    move-wide v3, v7

    move-wide/from16 v5, v17

    move-wide/from16 v7, v19

    move-object/from16 v17, v9

    move/from16 v18, v10

    move-wide/from16 v9, v21

    move/from16 v20, v11

    move-object/from16 v19, v12

    move-wide/from16 v11, v23

    invoke-virtual/range {v0 .. v12}, Ljava/awt/geom/Path2D;->curveTo(DDDDDD)V

    :goto_3
    move/from16 v0, v16

    move-object/from16 v9, v17

    move/from16 v10, v18

    move-object/from16 v12, v19

    move/from16 v11, v20

    goto/16 :goto_0

    :cond_7
    return-void
.end method

.method private parseShapeProperties(Lorg/apache/poi/xwpf/usermodel/ShapeProperties;Lcom/microsoft/schemas/vml/CTShape;)V
    .locals 11

    .line 4
    invoke-interface {p2}, Lcom/microsoft/schemas/vml/CTShape;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lorg/apache/poi/xwpf/usermodel/ShapeProperties;->shapeId:Ljava/lang/String;

    .line 5
    invoke-interface {p2}, Lcom/microsoft/schemas/vml/CTShape;->isSetAllowincell()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    invoke-interface {p2}, Lcom/microsoft/schemas/vml/CTShape;->getAllowincell()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalse$Enum;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/poi/convert/xwpf/XWPFWordToHtmlUtils;->parseSTTrueFalse(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalse$Enum;)Z

    move-result v0

    iput-boolean v0, p1, Lorg/apache/poi/xwpf/usermodel/ShapeProperties;->allowInCell:Z

    .line 7
    :cond_0
    invoke-interface {p2}, Lcom/microsoft/schemas/vml/CTShape;->isSetSpt()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8
    invoke-interface {p2}, Lcom/microsoft/schemas/vml/CTShape;->getSpt()F

    move-result v0

    float-to-double v0, v0

    iput-wide v0, p1, Lorg/apache/poi/xwpf/usermodel/ShapeProperties;->spt:D

    .line 9
    :cond_1
    iget-object v0, p1, Lorg/apache/poi/xwpf/usermodel/ShapeProperties;->anchor:Ljava/awt/geom/Rectangle2D;

    invoke-virtual {v0}, Ljava/awt/geom/RectangularShape;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 10
    invoke-interface {p2}, Lcom/microsoft/schemas/vml/CTShape;->isSetCoordorigin()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 11
    invoke-interface {p2}, Lcom/microsoft/schemas/vml/CTShape;->getCoordorigin()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/poi/convert/xwpf/XWPFWordToHtmlUtils;->parsePoint(Ljava/lang/String;)Ljava/awt/geom/Point2D;

    move-result-object v0

    .line 12
    invoke-static {v0}, Lorg/apache/poi/convert/WordToHtmlUtils;->isNull(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 13
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

    .line 14
    :cond_2
    invoke-interface {p2}, Lcom/microsoft/schemas/vml/CTShape;->isSetCoordsize()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 15
    invoke-interface {p2}, Lcom/microsoft/schemas/vml/CTShape;->getCoordsize()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/poi/convert/xwpf/XWPFWordToHtmlUtils;->parsePoint(Ljava/lang/String;)Ljava/awt/geom/Point2D;

    move-result-object v0

    .line 16
    invoke-static {v0}, Lorg/apache/poi/convert/WordToHtmlUtils;->isNull(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 17
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

    .line 18
    :cond_3
    invoke-interface {p2}, Lcom/microsoft/schemas/vml/CTShape;->isSetFilled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 19
    invoke-interface {p2}, Lcom/microsoft/schemas/vml/CTShape;->getFilled()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalse$Enum;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/poi/convert/xwpf/XWPFWordToHtmlUtils;->parseSTTrueFalse(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalse$Enum;)Z

    move-result v0

    iput-boolean v0, p1, Lorg/apache/poi/xwpf/usermodel/ShapeProperties;->filled:Z

    .line 20
    invoke-interface {p2}, Lcom/microsoft/schemas/vml/CTShape;->isSetFillcolor()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 21
    invoke-interface {p2}, Lcom/microsoft/schemas/vml/CTShape;->getFillcolor()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/poi/util/ColorUtils;->decode(Ljava/lang/String;)Ljava/awt/Color;

    move-result-object v0

    iput-object v0, p1, Lorg/apache/poi/xwpf/usermodel/ShapeProperties;->fillColor:Ljava/awt/Color;

    goto :goto_0

    .line 22
    :cond_4
    invoke-interface {p2}, Lcom/microsoft/schemas/vml/CTShape;->sizeOfFillArray()I

    move-result v0

    if-lez v0, :cond_5

    .line 23
    invoke-interface {p2, v1}, Lcom/microsoft/schemas/vml/CTShape;->getFillArray(I)Lcom/microsoft/schemas/vml/CTFill;

    move-result-object v0

    .line 24
    invoke-interface {v0}, Lcom/microsoft/schemas/vml/CTFill;->getOn()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalse$Enum;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/poi/convert/xwpf/XWPFWordToHtmlUtils;->parseSTTrueFalse(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalse$Enum;)Z

    move-result v0

    iput-boolean v0, p1, Lorg/apache/poi/xwpf/usermodel/ShapeProperties;->filled:Z

    .line 25
    :cond_5
    :goto_0
    invoke-interface {p2}, Lcom/microsoft/schemas/vml/CTShape;->isSetStroked()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 26
    invoke-interface {p2}, Lcom/microsoft/schemas/vml/CTShape;->getStroked()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalse$Enum;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/poi/convert/xwpf/XWPFWordToHtmlUtils;->parseSTTrueFalse(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalse$Enum;)Z

    move-result v0

    iput-boolean v0, p1, Lorg/apache/poi/xwpf/usermodel/ShapeProperties;->stroked:Z

    goto :goto_1

    :cond_6
    const/4 v0, 0x1

    .line 27
    iput-boolean v0, p1, Lorg/apache/poi/xwpf/usermodel/ShapeProperties;->stroked:Z

    .line 28
    :goto_1
    iget-boolean v0, p1, Lorg/apache/poi/xwpf/usermodel/ShapeProperties;->stroked:Z

    if-eqz v0, :cond_7

    invoke-interface {p2}, Lcom/microsoft/schemas/vml/CTShape;->isSetStrokecolor()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 29
    invoke-interface {p2}, Lcom/microsoft/schemas/vml/CTShape;->getStrokecolor()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/poi/util/ColorUtils;->decode(Ljava/lang/String;)Ljava/awt/Color;

    move-result-object v0

    iput-object v0, p1, Lorg/apache/poi/xwpf/usermodel/ShapeProperties;->strokedColor:Ljava/awt/Color;

    .line 30
    :cond_7
    invoke-interface {p2}, Lcom/microsoft/schemas/vml/CTShape;->sizeOfPathArray()I

    move-result v0

    if-lez v0, :cond_8

    .line 31
    invoke-interface {p2, v1}, Lcom/microsoft/schemas/vml/CTShape;->getPathArray(I)Lcom/microsoft/schemas/vml/CTPath;

    move-result-object v0

    .line 32
    invoke-interface {v0}, Lcom/microsoft/schemas/vml/CTPath;->getArrowok()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalse$Enum;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/poi/convert/xwpf/XWPFWordToHtmlUtils;->parseSTTrueFalse(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalse$Enum;)Z

    move-result v0

    iput-boolean v0, p1, Lorg/apache/poi/xwpf/usermodel/ShapeProperties;->arrowOk:Z

    .line 33
    :cond_8
    invoke-interface {p2}, Lcom/microsoft/schemas/vml/CTShape;->isSetPath2()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 34
    invoke-interface {p2}, Lcom/microsoft/schemas/vml/CTShape;->getPath2()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/apache/poi/xwpf/usermodel/AutoShape;->parsePath2(Lorg/apache/poi/xwpf/usermodel/ShapeProperties;Ljava/lang/String;)V

    .line 35
    :cond_9
    invoke-interface {p2}, Lcom/microsoft/schemas/vml/CTShape;->sizeOfStrokeArray()I

    move-result v0

    if-lez v0, :cond_a

    .line 36
    invoke-interface {p2, v1}, Lcom/microsoft/schemas/vml/CTShape;->getStrokeArray(I)Lcom/microsoft/schemas/vml/CTStroke;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/xwpf/usermodel/XWPFShape;->parseStroke(Lorg/apache/poi/xwpf/usermodel/ShapeProperties;Lcom/microsoft/schemas/vml/CTStroke;)V

    :cond_a
    return-void
.end method


# virtual methods
.method public bridge synthetic addShape(Lorg/apache/poi/xwpf/usermodel/Shape;)V
    .locals 0

    .line 1
    check-cast p1, Lorg/apache/poi/xwpf/usermodel/XWPFShape;

    invoke-virtual {p0, p1}, Lorg/apache/poi/xwpf/usermodel/AutoShape;->addShape(Lorg/apache/poi/xwpf/usermodel/XWPFShape;)V

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
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/AutoShape;->shapes:Ljava/util/List;

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

.method public draw(Ljava/awt/Graphics2D;)V
    .locals 5

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFShape;->properties:Lorg/apache/poi/xwpf/usermodel/ShapeProperties;

    iget-object v0, v0, Lorg/apache/poi/xwpf/usermodel/ShapeProperties;->anchor:Ljava/awt/geom/Rectangle2D;

    invoke-virtual {v0}, Ljava/awt/geom/RectangularShape;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lorg/apache/poi/xwpf/usermodel/AutoShape;->path2D:Ljava/awt/geom/Path2D;

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/awt/geom/RectangularShape;->getX()D

    move-result-wide v1

    neg-double v1, v1

    invoke-virtual {v0}, Ljava/awt/geom/RectangularShape;->getY()D

    move-result-wide v3

    neg-double v3, v3

    invoke-virtual {p1, v1, v2, v3, v4}, Ljava/awt/Graphics2D;->translate(DD)V

    iget-object v1, p0, Lorg/apache/poi/xwpf/usermodel/AutoShape;->path2D:Ljava/awt/geom/Path2D;

    invoke-virtual {p0, p1, v1}, Lorg/apache/poi/xwpf/usermodel/XWPFShape;->drawJavaShape(Ljava/awt/Graphics2D;Ljava/awt/Shape;)V

    invoke-virtual {v0}, Ljava/awt/geom/RectangularShape;->getX()D

    move-result-wide v1

    invoke-virtual {v0}, Ljava/awt/geom/RectangularShape;->getY()D

    move-result-wide v3

    invoke-virtual {p1, v1, v2, v3, v4}, Ljava/awt/Graphics2D;->translate(DD)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lorg/apache/poi/xwpf/usermodel/AutoShape;->shapes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0, p1, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFShape;->drawJavaShape(Ljava/awt/Graphics2D;Ljava/awt/Shape;)V

    :cond_2
    :goto_0
    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/AutoShape;->shapes:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/xwpf/usermodel/XWPFShape;

    invoke-interface {v0, p1}, Lorg/apache/poi/xwpf/usermodel/Shape;->draw(Ljava/awt/Graphics2D;)V

    goto :goto_1

    :cond_3
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

    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/AutoShape;->shapes:Ljava/util/List;

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

    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/AutoShape;->shapes:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public parsePath2(Lorg/apache/poi/xwpf/usermodel/ShapeProperties;Ljava/lang/String;)V
    .locals 2

    invoke-static {p2}, Lorg/apache/poi/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/awt/geom/GeneralPath;

    invoke-direct {p1}, Ljava/awt/geom/GeneralPath;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xwpf/usermodel/AutoShape;->path2D:Ljava/awt/geom/Path2D;

    const-string p1, "([a-z])((-?\\d+)(,(-?\\d+))+)?"

    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    :goto_0
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lorg/apache/poi/xwpf/usermodel/AutoShape;->path2D:Ljava/awt/geom/Path2D;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p2, v0, v1}, Lorg/apache/poi/xwpf/usermodel/AutoShape;->parsePath(Ljava/awt/geom/Path2D;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public parseShapeProperties(Lcom/microsoft/schemas/vml/CTShape;)V
    .locals 1

    .line 2
    invoke-interface {p1}, Lcom/microsoft/schemas/vml/CTShape;->getStyle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFShape;->parseStyleProperties(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFShape;->properties:Lorg/apache/poi/xwpf/usermodel/ShapeProperties;

    invoke-direct {p0, v0, p1}, Lorg/apache/poi/xwpf/usermodel/AutoShape;->parseShapeProperties(Lorg/apache/poi/xwpf/usermodel/ShapeProperties;Lcom/microsoft/schemas/vml/CTShape;)V

    return-void
.end method

.method public bridge synthetic parseShapeProperties(Lorg/apache/xmlbeans/XmlObject;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/microsoft/schemas/vml/CTShape;

    invoke-virtual {p0, p1}, Lorg/apache/poi/xwpf/usermodel/AutoShape;->parseShapeProperties(Lcom/microsoft/schemas/vml/CTShape;)V

    return-void
.end method
