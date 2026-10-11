.class public Lorg/apache/poi/xwpf/usermodel/XWPFGraphicalFrame;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/xwpf/usermodel/ShapeContainer;
.implements Lorg/apache/poi/xwpf/usermodel/GraphicalFrame;
.implements Lorg/apache/poi/xwpf/usermodel/IRunPart;
.implements Lorg/apache/poi/wp/usermodel/IPicture;
.implements Lorg/apache/poi/xwpf/usermodel/AbsolutePicture;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/poi/xwpf/usermodel/ShapeContainer<",
        "Lorg/apache/poi/xwpf/usermodel/XWPFShape<",
        "*>;>;",
        "Lorg/apache/poi/xwpf/usermodel/GraphicalFrame;",
        "Lorg/apache/poi/xwpf/usermodel/IRunPart;",
        "Lorg/apache/poi/wp/usermodel/IPicture;",
        "Lorg/apache/poi/xwpf/usermodel/AbsolutePicture;"
    }
.end annotation


# static fields
.field private static final LOG:Lorg/apache/logging/log4j/Logger;


# instance fields
.field private anchor:Ljava/awt/geom/Rectangle2D;

.field private offsetX:D

.field private offsetY:D

.field private position:Lorg/apache/poi/wp/usermodel/Position;

.field private rotation:F

.field private run:Lorg/apache/poi/xwpf/usermodel/XWPFRun;

.field private shapeId:Ljava/lang/String;

.field private shapes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/xwpf/usermodel/XWPFShape<",
            "*>;>;"
        }
    .end annotation
.end field

.field private xmlObject:Lorg/apache/xmlbeans/XmlObject;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/apache/poi/xwpf/usermodel/XWPFGraphicalFrame;

    invoke-static {v0}, Lorg/apache/logging/log4j/LogManager;->getLogger(Ljava/lang/Class;)Lorg/apache/logging/log4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/xwpf/usermodel/XWPFGraphicalFrame;->LOG:Lorg/apache/logging/log4j/Logger;

    return-void
.end method

.method public constructor <init>(Lorg/apache/xmlbeans/XmlObject;Lorg/apache/poi/xwpf/usermodel/XWPFRun;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFGraphicalFrame;->shapes:Ljava/util/List;

    new-instance v0, Ljava/awt/geom/Rectangle2D$Double;

    invoke-direct {v0}, Ljava/awt/geom/Rectangle2D$Double;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFGraphicalFrame;->anchor:Ljava/awt/geom/Rectangle2D;

    sget-object v0, Lorg/apache/poi/wp/usermodel/Position;->NONE:Lorg/apache/poi/wp/usermodel/Position;

    iput-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFGraphicalFrame;->position:Lorg/apache/poi/wp/usermodel/Position;

    iput-object p1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFGraphicalFrame;->xmlObject:Lorg/apache/xmlbeans/XmlObject;

    iput-object p2, p0, Lorg/apache/poi/xwpf/usermodel/XWPFGraphicalFrame;->run:Lorg/apache/poi/xwpf/usermodel/XWPFRun;

    invoke-direct {p0, p1, p0, p2}, Lorg/apache/poi/xwpf/usermodel/XWPFGraphicalFrame;->buildFromXml(Lorg/apache/xmlbeans/XmlObject;Lorg/apache/poi/xwpf/usermodel/ShapeContainer;Lorg/apache/poi/xwpf/usermodel/XWPFRun;)V

    invoke-direct {p0, p1}, Lorg/apache/poi/xwpf/usermodel/XWPFGraphicalFrame;->initGraphicalProperties(Lorg/apache/xmlbeans/XmlObject;)V

    return-void
.end method

.method private appendLengthStyle(Ljava/lang/StringBuilder;Ljava/lang/String;F)V
    .locals 0

    const/4 p0, 0x0

    cmpl-float p0, p3, p0

    if-eqz p0, :cond_0

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p0, "px;"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    return-void
.end method

.method private buildFromXml(Lcom/microsoft/schemas/vml/CTShape;Lorg/apache/poi/xwpf/usermodel/ShapeContainer;Lorg/apache/poi/xwpf/usermodel/XWPFRun;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/schemas/vml/CTShape;",
            "Lorg/apache/poi/xwpf/usermodel/ShapeContainer<",
            "Lorg/apache/poi/xwpf/usermodel/XWPFShape<",
            "*>;>;",
            "Lorg/apache/poi/xwpf/usermodel/XWPFRun;",
            ")V"
        }
    .end annotation

    .line 37
    invoke-interface {p1}, Lorg/apache/xmlbeans/XmlTokenSource;->newCursor()Lorg/apache/xmlbeans/XmlCursor;

    move-result-object p0

    const-string p1, "./*"

    .line 38
    invoke-interface {p0, p1}, Lorg/apache/xmlbeans/XmlCursor;->selectPath(Ljava/lang/String;)V

    .line 39
    :cond_0
    :goto_0
    invoke-interface {p0}, Lorg/apache/xmlbeans/XmlCursor;->toNextSelection()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 40
    invoke-interface {p0}, Lorg/apache/xmlbeans/XmlCursor;->getObject()Lorg/apache/xmlbeans/XmlObject;

    move-result-object p1

    .line 41
    instance-of v0, p1, Lcom/microsoft/schemas/vml/CTImageData;

    if-eqz v0, :cond_1

    .line 42
    new-instance v0, Lorg/apache/poi/xwpf/usermodel/ImageShape;

    check-cast p1, Lcom/microsoft/schemas/vml/CTImageData;

    invoke-direct {v0, p2, p1, p3}, Lorg/apache/poi/xwpf/usermodel/ImageShape;-><init>(Lorg/apache/poi/xwpf/usermodel/ShapeContainer;Lcom/microsoft/schemas/vml/CTImageData;Lorg/apache/poi/xwpf/usermodel/XWPFRun;)V

    invoke-interface {p2, v0}, Lorg/apache/poi/xwpf/usermodel/ShapeContainer;->addShape(Lorg/apache/poi/xwpf/usermodel/Shape;)V

    goto :goto_0

    .line 43
    :cond_1
    instance-of v0, p1, Lcom/microsoft/schemas/vml/CTTextbox;

    if-eqz v0, :cond_2

    .line 44
    new-instance v0, Lorg/apache/poi/xwpf/usermodel/TextboxShape;

    check-cast p1, Lcom/microsoft/schemas/vml/CTTextbox;

    invoke-direct {v0, p2, p1}, Lorg/apache/poi/xwpf/usermodel/TextboxShape;-><init>(Lorg/apache/poi/xwpf/usermodel/ShapeContainer;Lcom/microsoft/schemas/vml/CTTextbox;)V

    invoke-interface {p2, v0}, Lorg/apache/poi/xwpf/usermodel/ShapeContainer;->addShape(Lorg/apache/poi/xwpf/usermodel/Shape;)V

    goto :goto_0

    .line 45
    :cond_2
    instance-of v0, p1, Lcom/microsoft/schemas/vml/CTTextPath;

    if-eqz v0, :cond_0

    .line 46
    new-instance v0, Lorg/apache/poi/xwpf/usermodel/TextPathShape;

    check-cast p1, Lcom/microsoft/schemas/vml/CTTextPath;

    invoke-direct {v0, p2, p1}, Lorg/apache/poi/xwpf/usermodel/TextPathShape;-><init>(Lorg/apache/poi/xwpf/usermodel/ShapeContainer;Lcom/microsoft/schemas/vml/CTTextPath;)V

    invoke-interface {p2, v0}, Lorg/apache/poi/xwpf/usermodel/ShapeContainer;->addShape(Lorg/apache/poi/xwpf/usermodel/Shape;)V

    goto :goto_0

    .line 47
    :cond_3
    invoke-interface {p0}, Lorg/apache/xmlbeans/XmlCursor;->close()V

    return-void
.end method

.method private buildFromXml(Lorg/apache/xmlbeans/XmlObject;Lorg/apache/poi/xwpf/usermodel/ShapeContainer;Lorg/apache/poi/xwpf/usermodel/XWPFRun;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/xmlbeans/XmlObject;",
            "Lorg/apache/poi/xwpf/usermodel/ShapeContainer<",
            "Lorg/apache/poi/xwpf/usermodel/XWPFShape<",
            "*>;>;",
            "Lorg/apache/poi/xwpf/usermodel/XWPFRun;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lorg/apache/xmlbeans/XmlTokenSource;->newCursor()Lorg/apache/xmlbeans/XmlCursor;

    move-result-object p1

    const-string v0, "./*"

    .line 2
    invoke-interface {p1, v0}, Lorg/apache/xmlbeans/XmlCursor;->selectPath(Ljava/lang/String;)V

    .line 3
    :goto_0
    invoke-interface {p1}, Lorg/apache/xmlbeans/XmlCursor;->toNextSelection()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 4
    invoke-interface {p1}, Lorg/apache/xmlbeans/XmlCursor;->getObject()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0

    .line 5
    instance-of v1, v0, Lcom/microsoft/schemas/vml/CTGroup;

    if-eqz v1, :cond_0

    .line 6
    new-instance v1, Lorg/apache/poi/xwpf/usermodel/GroupShape;

    move-object v2, v0

    check-cast v2, Lcom/microsoft/schemas/vml/CTGroup;

    invoke-direct {v1, p2, v2}, Lorg/apache/poi/xwpf/usermodel/GroupShape;-><init>(Lorg/apache/poi/xwpf/usermodel/ShapeContainer;Lcom/microsoft/schemas/vml/CTGroup;)V

    .line 7
    invoke-interface {p2, v1}, Lorg/apache/poi/xwpf/usermodel/ShapeContainer;->addShape(Lorg/apache/poi/xwpf/usermodel/Shape;)V

    .line 8
    invoke-direct {p0, v0, v1, p3}, Lorg/apache/poi/xwpf/usermodel/XWPFGraphicalFrame;->buildFromXml(Lorg/apache/xmlbeans/XmlObject;Lorg/apache/poi/xwpf/usermodel/ShapeContainer;Lorg/apache/poi/xwpf/usermodel/XWPFRun;)V

    goto :goto_0

    .line 9
    :cond_0
    instance-of v1, v0, Lcom/microsoft/schemas/vml/CTShape;

    if-eqz v1, :cond_1

    .line 10
    new-instance v1, Lorg/apache/poi/xwpf/usermodel/AutoShape;

    check-cast v0, Lcom/microsoft/schemas/vml/CTShape;

    invoke-direct {v1, p2, v0}, Lorg/apache/poi/xwpf/usermodel/AutoShape;-><init>(Lorg/apache/poi/xwpf/usermodel/ShapeContainer;Lcom/microsoft/schemas/vml/CTShape;)V

    .line 11
    invoke-interface {p2, v1}, Lorg/apache/poi/xwpf/usermodel/ShapeContainer;->addShape(Lorg/apache/poi/xwpf/usermodel/Shape;)V

    .line 12
    invoke-direct {p0, v0, v1, p3}, Lorg/apache/poi/xwpf/usermodel/XWPFGraphicalFrame;->buildFromXml(Lcom/microsoft/schemas/vml/CTShape;Lorg/apache/poi/xwpf/usermodel/ShapeContainer;Lorg/apache/poi/xwpf/usermodel/XWPFRun;)V

    goto :goto_0

    .line 13
    :cond_1
    instance-of v1, v0, Lcom/microsoft/schemas/vml/CTLine;

    if-eqz v1, :cond_2

    .line 14
    new-instance v1, Lorg/apache/poi/xwpf/usermodel/LineShape;

    check-cast v0, Lcom/microsoft/schemas/vml/CTLine;

    invoke-direct {v1, p2, v0}, Lorg/apache/poi/xwpf/usermodel/LineShape;-><init>(Lorg/apache/poi/xwpf/usermodel/ShapeContainer;Lcom/microsoft/schemas/vml/CTLine;)V

    invoke-interface {p2, v1}, Lorg/apache/poi/xwpf/usermodel/ShapeContainer;->addShape(Lorg/apache/poi/xwpf/usermodel/Shape;)V

    goto :goto_0

    .line 15
    :cond_2
    instance-of v1, v0, Lcom/microsoft/schemas/vml/CTOval;

    if-eqz v1, :cond_3

    .line 16
    new-instance v1, Lorg/apache/poi/xwpf/usermodel/OvalShape;

    check-cast v0, Lcom/microsoft/schemas/vml/CTOval;

    invoke-direct {v1, p2, v0}, Lorg/apache/poi/xwpf/usermodel/OvalShape;-><init>(Lorg/apache/poi/xwpf/usermodel/ShapeContainer;Lcom/microsoft/schemas/vml/CTOval;)V

    invoke-interface {p2, v1}, Lorg/apache/poi/xwpf/usermodel/ShapeContainer;->addShape(Lorg/apache/poi/xwpf/usermodel/Shape;)V

    goto :goto_0

    .line 17
    :cond_3
    instance-of v1, v0, Lcom/microsoft/schemas/vml/CTRect;

    if-eqz v1, :cond_4

    .line 18
    new-instance v1, Lorg/apache/poi/xwpf/usermodel/RectShape;

    check-cast v0, Lcom/microsoft/schemas/vml/CTRect;

    invoke-direct {v1, p2, v0}, Lorg/apache/poi/xwpf/usermodel/RectShape;-><init>(Lorg/apache/poi/xwpf/usermodel/ShapeContainer;Lcom/microsoft/schemas/vml/CTRect;)V

    invoke-interface {p2, v1}, Lorg/apache/poi/xwpf/usermodel/ShapeContainer;->addShape(Lorg/apache/poi/xwpf/usermodel/Shape;)V

    goto :goto_0

    .line 19
    :cond_4
    instance-of v1, v0, Lcom/microsoft/schemas/vml/CTArc;

    if-eqz v1, :cond_5

    .line 20
    new-instance v1, Lorg/apache/poi/xwpf/usermodel/ArcShape;

    check-cast v0, Lcom/microsoft/schemas/vml/CTArc;

    invoke-direct {v1, p2, v0}, Lorg/apache/poi/xwpf/usermodel/ArcShape;-><init>(Lorg/apache/poi/xwpf/usermodel/ShapeContainer;Lcom/microsoft/schemas/vml/CTArc;)V

    invoke-interface {p2, v1}, Lorg/apache/poi/xwpf/usermodel/ShapeContainer;->addShape(Lorg/apache/poi/xwpf/usermodel/Shape;)V

    goto :goto_0

    .line 21
    :cond_5
    instance-of v1, v0, Lcom/microsoft/schemas/vml/CTPolyLine;

    if-eqz v1, :cond_6

    .line 22
    new-instance v1, Lorg/apache/poi/xwpf/usermodel/PolyLineShape;

    check-cast v0, Lcom/microsoft/schemas/vml/CTPolyLine;

    invoke-direct {v1, p2, v0}, Lorg/apache/poi/xwpf/usermodel/PolyLineShape;-><init>(Lorg/apache/poi/xwpf/usermodel/ShapeContainer;Lcom/microsoft/schemas/vml/CTPolyLine;)V

    invoke-interface {p2, v1}, Lorg/apache/poi/xwpf/usermodel/ShapeContainer;->addShape(Lorg/apache/poi/xwpf/usermodel/Shape;)V

    goto :goto_0

    .line 23
    :cond_6
    instance-of v1, v0, Lcom/microsoft/schemas/vml/CTCurve;

    if-eqz v1, :cond_7

    .line 24
    new-instance v1, Lorg/apache/poi/xwpf/usermodel/CurveShape;

    check-cast v0, Lcom/microsoft/schemas/vml/CTCurve;

    invoke-direct {v1, p2, v0}, Lorg/apache/poi/xwpf/usermodel/CurveShape;-><init>(Lorg/apache/poi/xwpf/usermodel/ShapeContainer;Lcom/microsoft/schemas/vml/CTCurve;)V

    invoke-interface {p2, v1}, Lorg/apache/poi/xwpf/usermodel/ShapeContainer;->addShape(Lorg/apache/poi/xwpf/usermodel/Shape;)V

    goto/16 :goto_0

    .line 25
    :cond_7
    instance-of v1, v0, Lcom/microsoft/schemas/vml/CTImageData;

    if-eqz v1, :cond_8

    .line 26
    new-instance v1, Lorg/apache/poi/xwpf/usermodel/ImageShape;

    check-cast v0, Lcom/microsoft/schemas/vml/CTImageData;

    invoke-direct {v1, p2, v0, p3}, Lorg/apache/poi/xwpf/usermodel/ImageShape;-><init>(Lorg/apache/poi/xwpf/usermodel/ShapeContainer;Lcom/microsoft/schemas/vml/CTImageData;Lorg/apache/poi/xwpf/usermodel/XWPFRun;)V

    invoke-interface {p2, v1}, Lorg/apache/poi/xwpf/usermodel/ShapeContainer;->addShape(Lorg/apache/poi/xwpf/usermodel/Shape;)V

    goto/16 :goto_0

    .line 27
    :cond_8
    instance-of v1, v0, Lcom/microsoft/schemas/vml/CTTextbox;

    if-eqz v1, :cond_9

    .line 28
    new-instance v1, Lorg/apache/poi/xwpf/usermodel/TextboxShape;

    check-cast v0, Lcom/microsoft/schemas/vml/CTTextbox;

    invoke-direct {v1, p2, v0}, Lorg/apache/poi/xwpf/usermodel/TextboxShape;-><init>(Lorg/apache/poi/xwpf/usermodel/ShapeContainer;Lcom/microsoft/schemas/vml/CTTextbox;)V

    invoke-interface {p2, v1}, Lorg/apache/poi/xwpf/usermodel/ShapeContainer;->addShape(Lorg/apache/poi/xwpf/usermodel/Shape;)V

    goto/16 :goto_0

    .line 29
    :cond_9
    instance-of v1, v0, Lcom/microsoft/schemas/vml/CTTextPath;

    if-eqz v1, :cond_a

    .line 30
    new-instance v1, Lorg/apache/poi/xwpf/usermodel/TextPathShape;

    check-cast v0, Lcom/microsoft/schemas/vml/CTTextPath;

    invoke-direct {v1, p2, v0}, Lorg/apache/poi/xwpf/usermodel/TextPathShape;-><init>(Lorg/apache/poi/xwpf/usermodel/ShapeContainer;Lcom/microsoft/schemas/vml/CTTextPath;)V

    invoke-interface {p2, v1}, Lorg/apache/poi/xwpf/usermodel/ShapeContainer;->addShape(Lorg/apache/poi/xwpf/usermodel/Shape;)V

    goto/16 :goto_0

    .line 31
    :cond_a
    instance-of v1, v0, Lcom/microsoft/schemas/vml/CTShapetype;

    if-eqz v1, :cond_b

    goto/16 :goto_0

    .line 32
    :cond_b
    instance-of v1, v0, Lcom/microsoft/schemas/office/word/CTAnchorLock;

    if-eqz v1, :cond_c

    goto/16 :goto_0

    .line 33
    :cond_c
    instance-of v1, v0, Lcom/microsoft/schemas/office/office/CTOLEObject;

    if-eqz v1, :cond_d

    goto/16 :goto_0

    .line 34
    :cond_d
    instance-of v1, v0, Lcom/microsoft/schemas/office/office/CTLock;

    if-eqz v1, :cond_e

    goto/16 :goto_0

    .line 35
    :cond_e
    sget-object v1, Lorg/apache/poi/xwpf/usermodel/XWPFGraphicalFrame;->LOG:Lorg/apache/logging/log4j/Logger;

    invoke-interface {v1}, Lorg/apache/logging/log4j/Logger;->atError()Lorg/apache/logging/log4j/LogBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Unknown shape:{}"

    invoke-interface {v1, v2, v0}, Lorg/apache/logging/log4j/LogBuilder;->log(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 36
    :cond_f
    invoke-interface {p1}, Lorg/apache/xmlbeans/XmlCursor;->close()V

    return-void
.end method

.method private getCtObjectAnchor(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTObject;)Ljava/awt/geom/Rectangle2D;
    .locals 12

    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTObject;->isSetDxaOrig()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTObject;->isSetDyaOrig()Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTObject;->xgetDxaOrig()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTwipsMeasure;

    move-result-object p0

    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTObject;->xgetDyaOrig()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTwipsMeasure;

    move-result-object p1

    invoke-static {p0}, Lorg/apache/poi/ooxml/util/POIXMLUnits;->parseLength(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTwipsMeasure;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/poi/util/Units;->toDXA(J)D

    move-result-wide v0

    invoke-static {p1}, Lorg/apache/poi/ooxml/util/POIXMLUnits;->parseLength(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTwipsMeasure;)J

    move-result-wide p0

    invoke-static {p0, p1}, Lorg/apache/poi/util/Units;->toDXA(J)D

    move-result-wide p0

    new-instance v11, Ljava/awt/geom/Rectangle2D$Double;

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    invoke-static {v0, v1}, Lorg/apache/poi/util/ExtUnits;->dxaToPixel(D)D

    move-result-wide v7

    invoke-static {p0, p1}, Lorg/apache/poi/util/ExtUnits;->dxaToPixel(D)D

    move-result-wide v9

    move-object v2, v11

    invoke-direct/range {v2 .. v10}, Ljava/awt/geom/Rectangle2D$Double;-><init>(DDDD)V

    return-object v11

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private getPageLeft(Lorg/apache/poi/style/page/PageStyles;Lorg/apache/poi/style/ParagraphStyles;D)F
    .locals 2

    invoke-static {p2}, Lorg/apache/poi/convert/WordToHtmlUtils;->isNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFGraphicalFrame;->offsetX:D

    invoke-static {p0, p1}, Lorg/apache/poi/util/ExtUnits;->getFormatValue(D)F

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p1}, Lorg/apache/poi/style/page/PageStyles;->getPageMargin()Lorg/apache/poi/style/page/PageMargin;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/poi/style/page/PageMargin;->getLeft()F

    move-result p1

    float-to-double v0, p1

    sub-double/2addr p3, v0

    iget-wide v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFGraphicalFrame;->offsetX:D

    invoke-direct {p0, p2, v0, v1}, Lorg/apache/poi/xwpf/usermodel/XWPFGraphicalFrame;->getParagraphLeft(Lorg/apache/poi/style/ParagraphStyles;D)F

    move-result p0

    float-to-double p0, p0

    add-double/2addr p3, p0

    invoke-static {p3, p4}, Lorg/apache/poi/util/ExtUnits;->getFormatValue(D)F

    move-result p0

    return p0
.end method

.method private getParagraphLeft(Lorg/apache/poi/style/ParagraphStyles;D)F
    .locals 1

    invoke-static {p1}, Lorg/apache/poi/convert/WordToHtmlUtils;->isNull(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {p2, p3}, Lorg/apache/poi/util/ExtUnits;->getFormatValue(D)F

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p1}, Lorg/apache/poi/style/ParagraphStyles;->getTextIndent()Lorg/apache/poi/style/UnitValue;

    move-result-object p0

    invoke-virtual {p1}, Lorg/apache/poi/style/ParagraphStyles;->getMarginStyles()Lorg/apache/poi/style/MarginStyles;

    move-result-object p1

    invoke-static {p0}, Lorg/apache/poi/convert/WordToHtmlUtils;->isNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lorg/apache/poi/style/UnitValue;->getNumberValue()F

    move-result p0

    :goto_0
    invoke-virtual {p1}, Lorg/apache/poi/style/MarginStyles;->getLeftNumberValue()F

    move-result p1

    add-float/2addr p0, p1

    float-to-double p0, p0

    sub-double/2addr p2, p0

    invoke-static {p2, p3}, Lorg/apache/poi/util/ExtUnits;->getFormatValue(D)F

    move-result p0

    return p0
.end method

.method private getParagraphTop(Lorg/apache/poi/style/ParagraphStyles;D)F
    .locals 0

    invoke-static {p1}, Lorg/apache/poi/convert/WordToHtmlUtils;->isNull(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {p2, p3}, Lorg/apache/poi/util/ExtUnits;->getFormatValue(D)F

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p1}, Lorg/apache/poi/style/ParagraphStyles;->getMarginStyles()Lorg/apache/poi/style/MarginStyles;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/style/MarginStyles;->getTopNumberValue()F

    move-result p0

    float-to-double p0, p0

    sub-double/2addr p2, p0

    invoke-static {p2, p3}, Lorg/apache/poi/util/ExtUnits;->getFormatValue(D)F

    move-result p0

    return p0
.end method

.method private initGraphicalProperties(Lorg/apache/xmlbeans/XmlObject;)V
    .locals 11

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFGraphicalFrame;->shapes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/xwpf/usermodel/XWPFShape;

    iget-object v2, p0, Lorg/apache/poi/xwpf/usermodel/XWPFGraphicalFrame;->anchor:Ljava/awt/geom/Rectangle2D;

    invoke-virtual {v1}, Lorg/apache/poi/xwpf/usermodel/XWPFShape;->getAnchor()Ljava/awt/geom/Rectangle2D;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/apache/poi/text/Utils;->union(Ljava/awt/geom/Rectangle2D;Ljava/awt/geom/Rectangle2D;)V

    iget-object v2, p0, Lorg/apache/poi/xwpf/usermodel/XWPFGraphicalFrame;->shapeId:Ljava/lang/String;

    invoke-static {v2}, Lorg/apache/poi/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lorg/apache/poi/xwpf/usermodel/XWPFShape;->getShapeId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFGraphicalFrame;->shapeId:Ljava/lang/String;

    goto :goto_0

    :cond_1
    instance-of v0, p1, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTObject;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFGraphicalFrame;->anchor:Ljava/awt/geom/Rectangle2D;

    invoke-virtual {v0}, Ljava/awt/geom/RectangularShape;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFGraphicalFrame;->anchor:Ljava/awt/geom/Rectangle2D;

    check-cast p1, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTObject;

    invoke-direct {p0, p1}, Lorg/apache/poi/xwpf/usermodel/XWPFGraphicalFrame;->getCtObjectAnchor(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTObject;)Ljava/awt/geom/Rectangle2D;

    move-result-object p1

    invoke-static {v0, p1}, Lorg/apache/poi/text/Utils;->union(Ljava/awt/geom/Rectangle2D;Ljava/awt/geom/Rectangle2D;)V

    :cond_2
    iget-object p1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFGraphicalFrame;->shapes:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFGraphicalFrame;->shapes:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/poi/xwpf/usermodel/XWPFShape;

    invoke-virtual {p1}, Lorg/apache/poi/xwpf/usermodel/XWPFShape;->getPosition()Lorg/apache/poi/wp/usermodel/Position;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFGraphicalFrame;->position:Lorg/apache/poi/wp/usermodel/Position;

    iget-object p1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFGraphicalFrame;->shapes:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/poi/xwpf/usermodel/XWPFShape;

    iget-object p1, p1, Lorg/apache/poi/xwpf/usermodel/XWPFShape;->properties:Lorg/apache/poi/xwpf/usermodel/ShapeProperties;

    iget p1, p1, Lorg/apache/poi/xwpf/usermodel/ShapeProperties;->rotation:F

    iput p1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFGraphicalFrame;->rotation:F

    :cond_3
    iget-object p1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFGraphicalFrame;->shapeId:Ljava/lang/String;

    invoke-static {p1}, Lorg/apache/poi/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    sget-object p1, Lorg/apache/poi/xwpf/usermodel/XWPFGraphicalFrame;->LOG:Lorg/apache/logging/log4j/Logger;

    invoke-interface {p1}, Lorg/apache/logging/log4j/Logger;->atError()Lorg/apache/logging/log4j/LogBuilder;

    move-result-object p1

    const-string v0, "No shape id"

    invoke-interface {p1, v0}, Lorg/apache/logging/log4j/LogBuilder;->log(Ljava/lang/String;)V

    :cond_4
    iget p1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFGraphicalFrame;->rotation:F

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-eqz p1, :cond_5

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFGraphicalFrame;->anchor:Ljava/awt/geom/Rectangle2D;

    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x0

    invoke-virtual {v0}, Ljava/awt/geom/RectangularShape;->getWidth()D

    move-result-wide v5

    iget-object p1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFGraphicalFrame;->anchor:Ljava/awt/geom/Rectangle2D;

    invoke-virtual {p1}, Ljava/awt/geom/RectangularShape;->getHeight()D

    move-result-wide v7

    invoke-virtual/range {v0 .. v8}, Ljava/awt/geom/Rectangle2D;->setFrame(DDDD)V

    iget-object p1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFGraphicalFrame;->anchor:Ljava/awt/geom/Rectangle2D;

    iget v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFGraphicalFrame;->rotation:F

    const/high16 v1, 0x42b40000    # 90.0f

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {p1, v0, v1}, Lorg/apache/poi/util/RectUtils;->getRotateAnchor(Ljava/awt/geom/Rectangle2D;D)Ljava/awt/geom/Rectangle2D;

    move-result-object p1

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFGraphicalFrame;->anchor:Ljava/awt/geom/Rectangle2D;

    invoke-virtual {v0}, Ljava/awt/geom/RectangularShape;->getWidth()D

    move-result-wide v0

    invoke-virtual {p1}, Ljava/awt/geom/RectangularShape;->getWidth()D

    move-result-wide v2

    sub-double/2addr v0, v2

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    div-double/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFGraphicalFrame;->offsetX:D

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFGraphicalFrame;->anchor:Ljava/awt/geom/Rectangle2D;

    invoke-virtual {v0}, Ljava/awt/geom/RectangularShape;->getHeight()D

    move-result-wide v0

    invoke-virtual {p1}, Ljava/awt/geom/RectangularShape;->getHeight()D

    move-result-wide v4

    sub-double/2addr v0, v4

    div-double/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFGraphicalFrame;->offsetY:D

    iget-object v2, p0, Lorg/apache/poi/xwpf/usermodel/XWPFGraphicalFrame;->anchor:Ljava/awt/geom/Rectangle2D;

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    invoke-virtual {p1}, Ljava/awt/geom/RectangularShape;->getWidth()D

    move-result-wide v7

    invoke-virtual {p1}, Ljava/awt/geom/RectangularShape;->getHeight()D

    move-result-wide v9

    invoke-virtual/range {v2 .. v10}, Ljava/awt/geom/Rectangle2D;->setFrame(DDDD)V

    :cond_5
    return-void
.end method

.method private rotate(Ljava/awt/Graphics2D;Ljava/awt/geom/Rectangle2D;)V
    .locals 9

    iget v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFGraphicalFrame;->rotation:F

    float-to-double v1, v0

    const-wide/16 v3, 0x0

    cmpl-double v1, v1, v3

    if-eqz v1, :cond_0

    const/high16 v1, 0x42b40000    # 90.0f

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v3

    invoke-virtual {p2}, Ljava/awt/geom/RectangularShape;->getCenterX()D

    move-result-wide v5

    invoke-virtual {p2}, Ljava/awt/geom/RectangularShape;->getCenterY()D

    move-result-wide v7

    move-object v2, p1

    invoke-virtual/range {v2 .. v8}, Ljava/awt/Graphics2D;->rotate(DDD)V

    iget-wide v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFGraphicalFrame;->offsetX:D

    neg-double v0, v0

    iget-wide v2, p0, Lorg/apache/poi/xwpf/usermodel/XWPFGraphicalFrame;->offsetY:D

    neg-double v2, v2

    invoke-virtual {p1, v0, v1, v2, v3}, Ljava/awt/Graphics2D;->translate(DD)V

    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic addShape(Lorg/apache/poi/xwpf/usermodel/Shape;)V
    .locals 0

    .line 1
    check-cast p1, Lorg/apache/poi/xwpf/usermodel/XWPFShape;

    invoke-virtual {p0, p1}, Lorg/apache/poi/xwpf/usermodel/XWPFGraphicalFrame;->addShape(Lorg/apache/poi/xwpf/usermodel/XWPFShape;)V

    return-void
.end method

.method public addShape(Lorg/apache/poi/xwpf/usermodel/XWPFShape;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/xwpf/usermodel/XWPFShape<",
            "*>;)V"
        }
    .end annotation

    .line 2
    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFGraphicalFrame;->shapes:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public close()V
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFGraphicalFrame;->shapes:Ljava/util/List;

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
    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFGraphicalFrame;->xmlObject:Lorg/apache/xmlbeans/XmlObject;

    invoke-static {p0}, Lorg/apache/poi/common/XmlBeanUtils;->freeMemory(Lorg/apache/xmlbeans/XmlObject;)V

    return-void
.end method

.method public draw(Ljava/awt/Graphics2D;)V
    .locals 1

    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFGraphicalFrame;->shapes:Ljava/util/List;

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

.method public getAbsolutePositionStyle(Lorg/apache/poi/style/page/PageStyles;Lorg/apache/poi/style/ParagraphStyles;)Ljava/lang/String;
    .locals 7

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFGraphicalFrame;->position:Lorg/apache/poi/wp/usermodel/Position;

    sget-object v1, Lorg/apache/poi/wp/usermodel/Position;->ABSOLUTE:Lorg/apache/poi/wp/usermodel/Position;

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFGraphicalFrame;->shapes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFGraphicalFrame;->shapes:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/xwpf/usermodel/XWPFShape;

    iget-object v0, v0, Lorg/apache/poi/xwpf/usermodel/XWPFShape;->properties:Lorg/apache/poi/xwpf/usermodel/ShapeProperties;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lorg/apache/poi/xwpf/usermodel/ShapeProperties;->relativeH:Lorg/apache/poi/xwpf/usermodel/RelativeH;

    sget-object v3, Lorg/apache/poi/xwpf/usermodel/RelativeH;->PAGE:Lorg/apache/poi/xwpf/usermodel/RelativeH;

    const-string v4, "margin-left:"

    if-ne v2, v3, :cond_1

    iget-wide v2, v0, Lorg/apache/poi/xwpf/usermodel/ShapeProperties;->marginLeft:D

    invoke-direct {p0, p1, p2, v2, v3}, Lorg/apache/poi/xwpf/usermodel/XWPFGraphicalFrame;->getPageLeft(Lorg/apache/poi/style/page/PageStyles;Lorg/apache/poi/style/ParagraphStyles;D)F

    move-result p1

    invoke-direct {p0, v1, v4, p1}, Lorg/apache/poi/xwpf/usermodel/XWPFGraphicalFrame;->appendLengthStyle(Ljava/lang/StringBuilder;Ljava/lang/String;F)V

    goto :goto_0

    :cond_1
    iget-wide v2, v0, Lorg/apache/poi/xwpf/usermodel/ShapeProperties;->marginLeft:D

    iget-wide v5, p0, Lorg/apache/poi/xwpf/usermodel/XWPFGraphicalFrame;->offsetX:D

    add-double/2addr v2, v5

    invoke-direct {p0, p2, v2, v3}, Lorg/apache/poi/xwpf/usermodel/XWPFGraphicalFrame;->getParagraphLeft(Lorg/apache/poi/style/ParagraphStyles;D)F

    move-result p1

    invoke-direct {p0, v1, v4, p1}, Lorg/apache/poi/xwpf/usermodel/XWPFGraphicalFrame;->appendLengthStyle(Ljava/lang/StringBuilder;Ljava/lang/String;F)V

    :goto_0
    iget-wide v2, v0, Lorg/apache/poi/xwpf/usermodel/ShapeProperties;->marginTop:D

    iget-wide v4, p0, Lorg/apache/poi/xwpf/usermodel/XWPFGraphicalFrame;->offsetY:D

    add-double/2addr v2, v4

    invoke-direct {p0, p2, v2, v3}, Lorg/apache/poi/xwpf/usermodel/XWPFGraphicalFrame;->getParagraphTop(Lorg/apache/poi/style/ParagraphStyles;D)F

    move-result p1

    const-string p2, "margin-top:"

    invoke-direct {p0, v1, p2, p1}, Lorg/apache/poi/xwpf/usermodel/XWPFGraphicalFrame;->appendLengthStyle(Ljava/lang/StringBuilder;Ljava/lang/String;F)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_1
    const-string p0, ""

    return-object p0
.end method

.method public getAnchor()Ljava/awt/geom/Rectangle2D;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFGraphicalFrame;->anchor:Ljava/awt/geom/Rectangle2D;

    return-object p0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 0

    const-string p0, "image/graphicalFrame"

    return-object p0
.end method

.method public getImage(Lorg/apache/poi/wp/draw/ImageCreator;)Ljava/awt/Image;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<IMAGE:",
            "Ljava/awt/Image;",
            ">(",
            "Lorg/apache/poi/wp/draw/ImageCreator<",
            "TIMAGE;>;)TIMAGE;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFGraphicalFrame;->anchor:Ljava/awt/geom/Rectangle2D;

    invoke-static {v0}, Lorg/apache/poi/util/RectUtils;->isEmptyImage(Ljava/awt/geom/RectangularShape;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Lorg/apache/poi/xwpf/usermodel/XWPFGraphicalFrame;->LOG:Lorg/apache/logging/log4j/Logger;

    invoke-interface {p1}, Lorg/apache/logging/log4j/Logger;->atError()Lorg/apache/logging/log4j/LogBuilder;

    move-result-object p1

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFGraphicalFrame;->shapeId:Ljava/lang/String;

    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFGraphicalFrame;->anchor:Ljava/awt/geom/Rectangle2D;

    const-string v1, "Empty image[{}] anchor:{}"

    invoke-interface {p1, v1, v0, p0}, Lorg/apache/logging/log4j/LogBuilder;->log(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFGraphicalFrame;->anchor:Ljava/awt/geom/Rectangle2D;

    invoke-virtual {v0}, Ljava/awt/geom/RectangularShape;->getWidth()D

    move-result-wide v0

    double-to-int v0, v0

    iget-object v1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFGraphicalFrame;->anchor:Ljava/awt/geom/Rectangle2D;

    invoke-virtual {v1}, Ljava/awt/geom/RectangularShape;->getHeight()D

    move-result-wide v1

    double-to-int v1, v1

    invoke-interface {p1, v0, v1}, Lorg/apache/poi/wp/draw/ImageCreator;->createImage(II)Ljava/awt/Image;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/apache/poi/wp/draw/ImageCreator;->getGraphics(Ljava/awt/Image;)Ljava/awt/Graphics2D;

    move-result-object p1

    iget-object v1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFGraphicalFrame;->anchor:Ljava/awt/geom/Rectangle2D;

    invoke-direct {p0, p1, v1}, Lorg/apache/poi/xwpf/usermodel/XWPFGraphicalFrame;->rotate(Ljava/awt/Graphics2D;Ljava/awt/geom/Rectangle2D;)V

    invoke-virtual {p0, p1}, Lorg/apache/poi/xwpf/usermodel/XWPFGraphicalFrame;->draw(Ljava/awt/Graphics2D;)V

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFGraphicalFrame;->getShapeId()Ljava/lang/String;

    move-result-object p0

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

    const/4 p0, 0x0

    return-object p0
.end method

.method public getPosition()Lorg/apache/poi/wp/usermodel/Position;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFGraphicalFrame;->position:Lorg/apache/poi/wp/usermodel/Position;

    return-object p0
.end method

.method public getShapeId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFGraphicalFrame;->shapeId:Ljava/lang/String;

    return-object p0
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

    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFGraphicalFrame;->shapes:Ljava/util/List;

    return-object p0
.end method

.method public getText()Ljava/lang/String;
    .locals 0

    const-string p0, "XWPFGraphicalFrame"

    return-object p0
.end method

.method public identifier()I
    .locals 6

    const v0, 0x26e6df4e

    int-to-long v0, v0

    iget-object v2, p0, Lorg/apache/poi/xwpf/usermodel/XWPFGraphicalFrame;->anchor:Ljava/awt/geom/Rectangle2D;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    int-to-long v2, v2

    const-wide/16 v4, 0x25

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    iget-object v2, p0, Lorg/apache/poi/xwpf/usermodel/XWPFGraphicalFrame;->shapeId:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    int-to-long v2, v2

    const-wide/16 v4, 0x2b

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFGraphicalFrame;->position:Lorg/apache/poi/wp/usermodel/Position;

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    int-to-long v2, p0

    const-wide/16 v4, 0x2f

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    long-to-int p0, v0

    const/16 v2, 0x20

    shr-long/2addr v0, v2

    long-to-int v0, v0

    xor-int/2addr p0, v0

    return p0
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

    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFGraphicalFrame;->shapes:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method
