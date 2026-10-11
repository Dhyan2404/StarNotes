.class public Lorg/apache/poi/xslf/usermodel/XSLFFreeformShape;
.super Lorg/apache/poi/xslf/usermodel/XSLFAutoShape;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/sl/usermodel/FreeformShape;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/poi/xslf/usermodel/XSLFAutoShape;",
        "Lorg/apache/poi/sl/usermodel/FreeformShape<",
        "Lorg/apache/poi/xslf/usermodel/XSLFShape;",
        "Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;",
        ">;"
    }
.end annotation


# static fields
.field private static final LOG:Lorg/apache/logging/log4j/Logger;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/apache/poi/xslf/usermodel/XSLFFreeformShape;

    invoke-static {v0}, Lorg/apache/logging/log4j/LogManager;->getLogger(Ljava/lang/Class;)Lorg/apache/logging/log4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/xslf/usermodel/XSLFFreeformShape;->LOG:Lorg/apache/logging/log4j/Logger;

    return-void
.end method

.method public constructor <init>(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTShape;Lorg/apache/poi/xslf/usermodel/XSLFSheet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/apache/poi/xslf/usermodel/XSLFAutoShape;-><init>(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTShape;Lorg/apache/poi/xslf/usermodel/XSLFSheet;)V

    return-void
.end method

.method private static addClosePath(Ljava/awt/geom/Path2D;)V
    .locals 0

    .line 2
    invoke-virtual {p0}, Ljava/awt/geom/Path2D;->closePath()V

    return-void
.end method

.method private static addClosePath(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2D;)[Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjPoint2D;
    .locals 0

    .line 1
    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2D;->addNewClose()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DClose;

    const/4 p0, 0x0

    new-array p0, p0, [Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjPoint2D;

    return-object p0
.end method

.method private static addCubicBezierTo(Ljava/awt/geom/Path2D;Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DCubicBezierTo;)V
    .locals 18

    move-object/from16 v0, p1

    const/4 v1, 0x0

    .line 3
    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DCubicBezierTo;->getPtArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjPoint2D;

    move-result-object v1

    const/4 v2, 0x1

    .line 4
    invoke-interface {v0, v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DCubicBezierTo;->getPtArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjPoint2D;

    move-result-object v2

    const/4 v3, 0x2

    .line 5
    invoke-interface {v0, v3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DCubicBezierTo;->getPtArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjPoint2D;

    move-result-object v0

    .line 6
    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjPoint2D;->getX()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    long-to-double v6, v3

    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjPoint2D;->getY()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    long-to-double v8, v3

    .line 7
    invoke-interface {v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjPoint2D;->getX()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    long-to-double v10, v3

    invoke-interface {v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjPoint2D;->getY()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    long-to-double v12, v1

    .line 8
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjPoint2D;->getX()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    long-to-double v14, v1

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjPoint2D;->getY()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    long-to-double v0, v0

    move-object/from16 v5, p0

    move-wide/from16 v16, v0

    .line 9
    invoke-virtual/range {v5 .. v17}, Ljava/awt/geom/Path2D;->curveTo(DDDDDD)V

    return-void
.end method

.method private static addCubicBezierTo(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2D;)[Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjPoint2D;
    .locals 3

    .line 1
    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2D;->addNewCubicBezTo()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DCubicBezierTo;

    move-result-object p0

    const/4 v0, 0x3

    new-array v0, v0, [Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjPoint2D;

    .line 2
    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DCubicBezierTo;->addNewPt()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjPoint2D;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DCubicBezierTo;->addNewPt()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjPoint2D;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DCubicBezierTo;->addNewPt()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjPoint2D;

    move-result-object p0

    aput-object p0, v0, v1

    return-object v0
.end method

.method private static addLineTo(Ljava/awt/geom/Path2D;Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DLineTo;)V
    .locals 4

    .line 2
    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DLineTo;->getPt()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjPoint2D;

    move-result-object p1

    .line 3
    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjPoint2D;->getX()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    long-to-double v0, v0

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjPoint2D;->getY()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    long-to-double v2, v2

    invoke-virtual {p0, v0, v1, v2, v3}, Ljava/awt/geom/Path2D;->lineTo(DD)V

    return-void
.end method

.method private static addLineTo(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2D;)[Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjPoint2D;
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjPoint2D;

    .line 1
    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2D;->addNewLnTo()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DLineTo;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DLineTo;->addNewPt()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjPoint2D;

    move-result-object p0

    const/4 v1, 0x0

    aput-object p0, v0, v1

    return-object v0
.end method

.method private static addMoveTo(Ljava/awt/geom/Path2D;Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DMoveTo;)V
    .locals 4

    .line 2
    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DMoveTo;->getPt()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjPoint2D;

    move-result-object p1

    .line 3
    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjPoint2D;->getX()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    long-to-double v0, v0

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjPoint2D;->getY()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    long-to-double v2, v2

    invoke-virtual {p0, v0, v1, v2, v3}, Ljava/awt/geom/Path2D;->moveTo(DD)V

    return-void
.end method

.method private static addMoveTo(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2D;)[Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjPoint2D;
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjPoint2D;

    .line 1
    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2D;->addNewMoveTo()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DMoveTo;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DMoveTo;->addNewPt()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjPoint2D;

    move-result-object p0

    const/4 v1, 0x0

    aput-object p0, v0, v1

    return-object v0
.end method

.method private static addQuadBezierTo(Ljava/awt/geom/Path2D;Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DQuadBezierTo;)V
    .locals 12

    const/4 v0, 0x0

    .line 3
    invoke-interface {p1, v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DQuadBezierTo;->getPtArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjPoint2D;

    move-result-object v0

    const/4 v1, 0x1

    .line 4
    invoke-interface {p1, v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DQuadBezierTo;->getPtArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjPoint2D;

    move-result-object p1

    .line 5
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjPoint2D;->getX()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    long-to-double v4, v1

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjPoint2D;->getY()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    long-to-double v6, v0

    .line 6
    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjPoint2D;->getX()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    long-to-double v8, v0

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjPoint2D;->getY()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    long-to-double v10, v0

    move-object v3, p0

    .line 7
    invoke-virtual/range {v3 .. v11}, Ljava/awt/geom/Path2D;->quadTo(DDDD)V

    return-void
.end method

.method private static addQuadBezierTo(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2D;)[Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjPoint2D;
    .locals 3

    .line 1
    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2D;->addNewQuadBezTo()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DQuadBezierTo;

    move-result-object p0

    const/4 v0, 0x2

    new-array v0, v0, [Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjPoint2D;

    .line 2
    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DQuadBezierTo;->addNewPt()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjPoint2D;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DQuadBezierTo;->addNewPt()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjPoint2D;

    move-result-object p0

    aput-object p0, v0, v1

    return-object v0
.end method

.method public static prototype(I)Lorg/openxmlformats/schemas/presentationml/x2006/main/CTShape;
    .locals 5

    sget-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTShape;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTShape;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTShape;->addNewNvSpPr()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTShapeNonVisual;

    move-result-object v1

    invoke-interface {v1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTShapeNonVisual;->addNewCNvPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingProps;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Freeform "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingProps;->setName(Ljava/lang/String;)V

    int-to-long v3, p0

    invoke-interface {v2, v3, v4}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingProps;->setId(J)V

    invoke-interface {v1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTShapeNonVisual;->addNewCNvSpPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingShapeProps;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTShapeNonVisual;->addNewNvPr()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTApplicationNonVisualDrawingProps;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTShape;->addNewSpPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;->addNewCustGeom()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTCustomGeometry2D;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTCustomGeometry2D;->addNewAvLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGeomGuideList;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTCustomGeometry2D;->addNewGdLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGeomGuideList;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTCustomGeometry2D;->addNewAhLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjustHandleList;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTCustomGeometry2D;->addNewCxnLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTConnectionSiteList;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTCustomGeometry2D;->addNewRect()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGeomRect;

    move-result-object v1

    const-string v2, "r"

    invoke-interface {v1, v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGeomRect;->setR(Ljava/lang/Object;)V

    const-string v2, "b"

    invoke-interface {v1, v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGeomRect;->setB(Ljava/lang/Object;)V

    const-string v2, "t"

    invoke-interface {v1, v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGeomRect;->setT(Ljava/lang/Object;)V

    const-string v2, "l"

    invoke-interface {v1, v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGeomRect;->setL(Ljava/lang/Object;)V

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTCustomGeometry2D;->addNewPathLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DList;

    return-object v0
.end method


# virtual methods
.method public getGeometry()Lorg/apache/poi/sl/draw/geom/CustomGeometry;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->getShapeProperties()Lorg/apache/xmlbeans/XmlObject;

    move-result-object p0

    instance-of v0, p0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    check-cast p0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;->getCustGeom()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTCustomGeometry2D;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/poi/xslf/draw/geom/XSLFCustomGeometry;->convertCustomGeometry(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTCustomGeometry2D;)Lorg/apache/poi/sl/draw/geom/CustomGeometry;

    move-result-object p0

    return-object p0
.end method

.method public getPath()Ljava/awt/geom/Path2D$Double;
    .locals 13

    .line 2
    new-instance v0, Ljava/awt/geom/Path2D$Double;

    invoke-direct {v0}, Ljava/awt/geom/Path2D$Double;-><init>()V

    .line 3
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->getShapeProperties()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v1

    .line 4
    instance-of v2, v1, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;

    if-nez v2, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 5
    :cond_0
    move-object v2, v1

    check-cast v2, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;

    invoke-interface {v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;->getCustGeom()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTCustomGeometry2D;

    move-result-object v2

    .line 6
    invoke-interface {v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTCustomGeometry2D;->getPathLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DList;

    move-result-object v2

    invoke-interface {v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DList;->getPathArray()[Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2D;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_9

    aget-object v6, v2, v5

    .line 7
    invoke-interface {v6}, Lorg/apache/xmlbeans/XmlTokenSource;->newCursor()Lorg/apache/xmlbeans/XmlCursor;

    move-result-object v6

    .line 8
    :try_start_0
    invoke-interface {v6}, Lorg/apache/xmlbeans/XmlCursor;->toFirstChild()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 9
    :cond_1
    invoke-interface {v6}, Lorg/apache/xmlbeans/XmlCursor;->getObject()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v7

    .line 10
    instance-of v8, v7, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DMoveTo;

    if-eqz v8, :cond_2

    .line 11
    check-cast v7, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DMoveTo;

    invoke-static {v0, v7}, Lorg/apache/poi/xslf/usermodel/XSLFFreeformShape;->addMoveTo(Ljava/awt/geom/Path2D;Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DMoveTo;)V

    goto :goto_1

    .line 12
    :cond_2
    instance-of v8, v7, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DLineTo;

    if-eqz v8, :cond_3

    .line 13
    check-cast v7, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DLineTo;

    invoke-static {v0, v7}, Lorg/apache/poi/xslf/usermodel/XSLFFreeformShape;->addLineTo(Ljava/awt/geom/Path2D;Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DLineTo;)V

    goto :goto_1

    .line 14
    :cond_3
    instance-of v8, v7, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DQuadBezierTo;

    if-eqz v8, :cond_4

    .line 15
    check-cast v7, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DQuadBezierTo;

    invoke-static {v0, v7}, Lorg/apache/poi/xslf/usermodel/XSLFFreeformShape;->addQuadBezierTo(Ljava/awt/geom/Path2D;Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DQuadBezierTo;)V

    goto :goto_1

    .line 16
    :cond_4
    instance-of v8, v7, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DCubicBezierTo;

    if-eqz v8, :cond_5

    .line 17
    check-cast v7, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DCubicBezierTo;

    invoke-static {v0, v7}, Lorg/apache/poi/xslf/usermodel/XSLFFreeformShape;->addCubicBezierTo(Ljava/awt/geom/Path2D;Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DCubicBezierTo;)V

    goto :goto_1

    .line 18
    :cond_5
    instance-of v7, v7, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DClose;

    if-eqz v7, :cond_6

    .line 19
    invoke-static {v0}, Lorg/apache/poi/xslf/usermodel/XSLFFreeformShape;->addClosePath(Ljava/awt/geom/Path2D;)V

    goto :goto_1

    .line 20
    :cond_6
    sget-object v7, Lorg/apache/poi/xslf/usermodel/XSLFFreeformShape;->LOG:Lorg/apache/logging/log4j/Logger;

    invoke-interface {v7}, Lorg/apache/logging/log4j/Logger;->atWarn()Lorg/apache/logging/log4j/LogBuilder;

    move-result-object v7

    const-string v8, "can\'t handle path of type {}"

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Lorg/apache/logging/log4j/LogBuilder;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 21
    :goto_1
    invoke-interface {v6}, Lorg/apache/xmlbeans/XmlCursor;->toNextSibling()Z

    move-result v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v7, :cond_1

    .line 22
    :cond_7
    invoke-interface {v6}, Lorg/apache/xmlbeans/XmlCursor;->close()V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 23
    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    if-eqz v6, :cond_8

    .line 24
    :try_start_2
    invoke-interface {v6}, Lorg/apache/xmlbeans/XmlCursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception v1

    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_8
    :goto_2
    throw v0

    .line 25
    :cond_9
    new-instance v1, Ljava/awt/geom/AffineTransform;

    invoke-direct {v1}, Ljava/awt/geom/AffineTransform;-><init>()V

    .line 26
    invoke-virtual {p0, v4}, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;->getXfrm(Z)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;

    move-result-object v2

    .line 27
    new-instance v12, Ljava/awt/geom/Rectangle2D$Double;

    .line 28
    invoke-interface {v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;->getOff()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPoint2D;

    move-result-object v3

    invoke-interface {v3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPoint2D;->xgetX()Lorg/openxmlformats/schemas/drawingml/x2006/main/STCoordinate;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/poi/ooxml/util/POIXMLUnits;->parseLength(Lorg/openxmlformats/schemas/drawingml/x2006/main/STCoordinate;)J

    move-result-wide v3

    long-to-double v4, v3

    invoke-interface {v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;->getOff()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPoint2D;

    move-result-object v3

    invoke-interface {v3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPoint2D;->xgetY()Lorg/openxmlformats/schemas/drawingml/x2006/main/STCoordinate;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/poi/ooxml/util/POIXMLUnits;->parseLength(Lorg/openxmlformats/schemas/drawingml/x2006/main/STCoordinate;)J

    move-result-wide v6

    long-to-double v6, v6

    invoke-interface {v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;->getExt()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveSize2D;

    move-result-object v3

    invoke-interface {v3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveSize2D;->getCx()J

    move-result-wide v8

    long-to-double v8, v8

    invoke-interface {v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;->getExt()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveSize2D;

    move-result-object v2

    invoke-interface {v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveSize2D;->getCy()J

    move-result-wide v2

    long-to-double v10, v2

    move-object v3, v12

    invoke-direct/range {v3 .. v11}, Ljava/awt/geom/Rectangle2D$Double;-><init>(DDDD)V

    .line 29
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;->getAnchor()Ljava/awt/geom/Rectangle2D;

    move-result-object p0

    .line 30
    invoke-virtual {p0}, Ljava/awt/geom/RectangularShape;->getX()D

    move-result-wide v2

    invoke-virtual {p0}, Ljava/awt/geom/RectangularShape;->getCenterX()D

    move-result-wide v4

    add-double/2addr v2, v4

    invoke-virtual {p0}, Ljava/awt/geom/RectangularShape;->getY()D

    move-result-wide v4

    invoke-virtual {p0}, Ljava/awt/geom/RectangularShape;->getCenterY()D

    move-result-wide v6

    add-double/2addr v4, v6

    invoke-virtual {v1, v2, v3, v4, v5}, Ljava/awt/geom/AffineTransform;->translate(DD)V

    const-wide v2, 0x3f14a4299ae3dc33L    # 7.874015748031496E-5

    .line 31
    invoke-virtual {v1, v2, v3, v2, v3}, Ljava/awt/geom/AffineTransform;->scale(DD)V

    .line 32
    invoke-virtual {v12}, Ljava/awt/geom/RectangularShape;->getCenterX()D

    move-result-wide v2

    neg-double v2, v2

    invoke-virtual {v12}, Ljava/awt/geom/RectangularShape;->getCenterY()D

    move-result-wide v4

    neg-double v4, v4

    invoke-virtual {v1, v2, v3, v4, v5}, Ljava/awt/geom/AffineTransform;->translate(DD)V

    .line 33
    new-instance p0, Ljava/awt/geom/Path2D$Double;

    invoke-virtual {v1, v0}, Ljava/awt/geom/AffineTransform;->createTransformedShape(Ljava/awt/Shape;)Ljava/awt/Shape;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/awt/geom/Path2D$Double;-><init>(Ljava/awt/Shape;)V

    return-object p0
.end method

.method public bridge synthetic getPath()Ljava/awt/geom/Path2D;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFFreeformShape;->getPath()Ljava/awt/geom/Path2D$Double;

    move-result-object p0

    return-object p0
.end method

.method public setPath(Ljava/awt/geom/Path2D;)I
    .locals 17

    sget-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2D;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2D;

    invoke-interface/range {p1 .. p1}, Ljava/awt/Shape;->getBounds2D()Ljava/awt/geom/Rectangle2D;

    move-result-object v1

    invoke-virtual {v1}, Ljava/awt/geom/RectangularShape;->getX()D

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/apache/poi/util/Units;->toEMU(D)I

    move-result v2

    invoke-virtual {v1}, Ljava/awt/geom/RectangularShape;->getY()D

    move-result-wide v3

    invoke-static {v3, v4}, Lorg/apache/poi/util/Units;->toEMU(D)I

    move-result v3

    new-instance v4, Ljava/awt/geom/AffineTransform;

    invoke-direct {v4}, Ljava/awt/geom/AffineTransform;-><init>()V

    move-object/from16 v5, p1

    invoke-interface {v5, v4}, Ljava/awt/Shape;->getPathIterator(Ljava/awt/geom/AffineTransform;)Ljava/awt/geom/PathIterator;

    move-result-object v4

    invoke-virtual {v1}, Ljava/awt/geom/RectangularShape;->getHeight()D

    move-result-wide v5

    invoke-static {v5, v6}, Lorg/apache/poi/util/Units;->toEMU(D)I

    move-result v5

    int-to-long v5, v5

    invoke-interface {v0, v5, v6}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2D;->setH(J)V

    invoke-virtual {v1}, Ljava/awt/geom/RectangularShape;->getWidth()D

    move-result-wide v5

    invoke-static {v5, v6}, Lorg/apache/poi/util/Units;->toEMU(D)I

    move-result v5

    int-to-long v5, v5

    invoke-interface {v0, v5, v6}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2D;->setW(J)V

    const/4 v5, 0x6

    new-array v5, v5, [D

    const/4 v6, 0x0

    move v7, v6

    :goto_0
    invoke-interface {v4}, Ljava/awt/geom/PathIterator;->isDone()Z

    move-result v8

    const/4 v9, 0x1

    if-nez v8, :cond_6

    invoke-interface {v4, v5}, Ljava/awt/geom/PathIterator;->currentSegment([D)I

    move-result v8

    if-eqz v8, :cond_4

    if-eq v8, v9, :cond_3

    const/4 v10, 0x2

    if-eq v8, v10, :cond_2

    const/4 v10, 0x3

    if-eq v8, v10, :cond_1

    const/4 v10, 0x4

    if-ne v8, v10, :cond_0

    invoke-static {v0}, Lorg/apache/poi/xslf/usermodel/XSLFFreeformShape;->addClosePath(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2D;)[Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjPoint2D;

    move-result-object v8

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognized path segment type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static {v0}, Lorg/apache/poi/xslf/usermodel/XSLFFreeformShape;->addCubicBezierTo(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2D;)[Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjPoint2D;

    move-result-object v8

    goto :goto_1

    :cond_2
    invoke-static {v0}, Lorg/apache/poi/xslf/usermodel/XSLFFreeformShape;->addQuadBezierTo(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2D;)[Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjPoint2D;

    move-result-object v8

    goto :goto_1

    :cond_3
    invoke-static {v0}, Lorg/apache/poi/xslf/usermodel/XSLFFreeformShape;->addLineTo(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2D;)[Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjPoint2D;

    move-result-object v8

    goto :goto_1

    :cond_4
    invoke-static {v0}, Lorg/apache/poi/xslf/usermodel/XSLFFreeformShape;->addMoveTo(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2D;)[Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjPoint2D;

    move-result-object v8

    :goto_1
    array-length v10, v8

    move v11, v6

    move v12, v11

    :goto_2
    if-ge v11, v10, :cond_5

    aget-object v13, v8, v11

    add-int/lit8 v14, v12, 0x1

    aget-wide v15, v5, v12

    invoke-static/range {v15 .. v16}, Lorg/apache/poi/util/Units;->toEMU(D)I

    move-result v12

    sub-int/2addr v12, v2

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v13, v12}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjPoint2D;->setX(Ljava/lang/Object;)V

    add-int/lit8 v12, v14, 0x1

    aget-wide v14, v5, v14

    invoke-static {v14, v15}, Lorg/apache/poi/util/Units;->toEMU(D)I

    move-result v14

    sub-int/2addr v14, v3

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v13, v14}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjPoint2D;->setY(Ljava/lang/Object;)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_5
    array-length v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    add-int/2addr v7, v8

    invoke-interface {v4}, Ljava/awt/geom/PathIterator;->next()V

    goto :goto_0

    :cond_6
    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->getShapeProperties()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v2

    instance-of v3, v2, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;

    if-nez v3, :cond_7

    const/4 v0, -0x1

    return v0

    :cond_7
    check-cast v2, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;

    invoke-interface {v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;->getCustGeom()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTCustomGeometry2D;

    move-result-object v2

    invoke-interface {v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTCustomGeometry2D;->getPathLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DList;

    move-result-object v2

    new-array v3, v9, [Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2D;

    aput-object v0, v3, v6

    invoke-interface {v2, v3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DList;->setPathArray([Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2D;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;->setAnchor(Ljava/awt/geom/Rectangle2D;)V

    return v7
.end method
