.class public Lorg/apache/poi/xwpf/usermodel/XWPFPicturePart;
.super Lorg/apache/poi/wp/usermodel/WPPicture;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/sl/draw/geom/IAdjustableShape;
.implements Lorg/apache/poi/xwpf/usermodel/IRunPart;


# instance fields
.field protected anchor:Ljava/awt/geom/Rectangle2D;

.field protected name:Ljava/lang/String;

.field protected offsetX:D

.field protected offsetY:D

.field protected origin:Ljava/awt/geom/Rectangle2D;

.field protected outlines:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/sl/draw/geom/Outline;",
            ">;"
        }
    .end annotation
.end field

.field protected picture:Lorg/apache/poi/xwpf/usermodel/XWPFPicture;

.field protected pictureData:Lorg/apache/poi/xwpf/usermodel/XWPFPictureData;

.field protected pictureStream:Ljava/io/InputStream;

.field protected pictureType:Lorg/apache/poi/common/usermodel/PictureType;

.field protected position:Lorg/apache/poi/wp/usermodel/Position;

.field protected rotation:D

.field protected xfrm:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;


# direct methods
.method public constructor <init>(Lorg/apache/poi/xwpf/usermodel/XWPFPicture;)V
    .locals 1

    invoke-direct {p0}, Lorg/apache/poi/wp/usermodel/WPPicture;-><init>()V

    sget-object v0, Lorg/apache/poi/wp/usermodel/Position;->NONE:Lorg/apache/poi/wp/usermodel/Position;

    iput-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFPicturePart;->position:Lorg/apache/poi/wp/usermodel/Position;

    iput-object p1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFPicturePart;->picture:Lorg/apache/poi/xwpf/usermodel/XWPFPicture;

    invoke-direct {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFPicturePart;->init()V

    return-void
.end method

.method private getGeometry()Lorg/apache/poi/sl/draw/geom/CustomGeometry;
    .locals 4

    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFPicturePart;->picture:Lorg/apache/poi/xwpf/usermodel/XWPFPicture;

    invoke-virtual {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFPicture;->getCTPicture()Lorg/openxmlformats/schemas/drawingml/x2006/picture/CTPicture;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/picture/CTPicture;->getSpPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate;->getGeometryDelegate(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$XSLFGeometryProperties;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {}, Lorg/apache/poi/sl/draw/geom/PresetGeometries;->getInstance()Lorg/apache/poi/sl/draw/geom/PresetGeometries;

    move-result-object v0

    invoke-interface {p0}, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$XSLFGeometryProperties;->isSetPrstGeom()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$XSLFGeometryProperties;->getPrstGeom()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPresetGeometry2D;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPresetGeometry2D;->getPrst()Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/StringEnumAbstractBase;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/apache/poi/sl/draw/geom/PresetGeometries;->get(Ljava/lang/String;)Lorg/apache/poi/sl/draw/geom/CustomGeometry;

    move-result-object v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown shape geometry: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", available geometries are: "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/apache/poi/sl/draw/geom/PresetGeometries;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    invoke-interface {p0}, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$XSLFGeometryProperties;->isSetCustGeom()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$XSLFGeometryProperties;->getCustGeom()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTCustomGeometry2D;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/poi/xslf/draw/geom/XSLFCustomGeometry;->convertCustomGeometry(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTCustomGeometry2D;)Lorg/apache/poi/sl/draw/geom/CustomGeometry;

    move-result-object v1

    goto :goto_0

    :cond_3
    const-string p0, "rect"

    invoke-virtual {v0, p0}, Lorg/apache/poi/sl/draw/geom/PresetGeometries;->get(Ljava/lang/String;)Lorg/apache/poi/sl/draw/geom/CustomGeometry;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method private init()V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFPicturePart;->picture:Lorg/apache/poi/xwpf/usermodel/XWPFPicture;

    invoke-virtual {v0}, Lorg/apache/poi/xwpf/usermodel/XWPFPicture;->getCTPicture()Lorg/openxmlformats/schemas/drawingml/x2006/picture/CTPicture;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/picture/CTPicture;->getSpPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;->getXfrm()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFPicturePart;->xfrm:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;

    invoke-direct {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFPicturePart;->initPictureData()V

    invoke-direct {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFPicturePart;->initAnchor()V

    return-void
.end method

.method private initAnchor()V
    .locals 14

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFPicturePart;->xfrm:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    iput-wide v1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFPicturePart;->rotation:D

    new-instance v0, Ljava/awt/geom/Rectangle2D$Double;

    invoke-direct {v0}, Ljava/awt/geom/Rectangle2D$Double;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFPicturePart;->anchor:Ljava/awt/geom/Rectangle2D;

    iput-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFPicturePart;->origin:Ljava/awt/geom/Rectangle2D;

    return-void

    :cond_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;->isSetExt()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFPicturePart;->xfrm:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;->getExt()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveSize2D;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveSize2D;->getCx()J

    move-result-wide v3

    invoke-static {v3, v4}, Lorg/apache/poi/util/ExtUnits;->emuToPixel(J)D

    move-result-wide v10

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveSize2D;->getCy()J

    move-result-wide v3

    invoke-static {v3, v4}, Lorg/apache/poi/util/ExtUnits;->emuToPixel(J)D

    move-result-wide v12

    new-instance v0, Ljava/awt/geom/Rectangle2D$Double;

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    move-object v5, v0

    invoke-direct/range {v5 .. v13}, Ljava/awt/geom/Rectangle2D$Double;-><init>(DDDD)V

    iput-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFPicturePart;->anchor:Ljava/awt/geom/Rectangle2D;

    iput-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFPicturePart;->origin:Ljava/awt/geom/Rectangle2D;

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/awt/geom/Rectangle2D$Double;

    invoke-direct {v0}, Ljava/awt/geom/Rectangle2D$Double;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFPicturePart;->anchor:Ljava/awt/geom/Rectangle2D;

    iput-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFPicturePart;->origin:Ljava/awt/geom/Rectangle2D;

    :goto_0
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFPicturePart;->xfrm:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;->isSetRot()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFPicturePart;->xfrm:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;->getRot()I

    move-result v0

    int-to-double v3, v0

    const-wide v5, 0x40ed4c0000000000L    # 60000.0

    div-double/2addr v3, v5

    goto :goto_1

    :cond_2
    move-wide v3, v1

    :goto_1
    iput-wide v3, p0, Lorg/apache/poi/xwpf/usermodel/XWPFPicturePart;->rotation:D

    cmpl-double v0, v3, v1

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFPicturePart;->origin:Ljava/awt/geom/Rectangle2D;

    invoke-static {v0, v3, v4}, Lorg/apache/poi/util/RectUtils;->getRotateAnchor(Ljava/awt/geom/Rectangle2D;D)Ljava/awt/geom/Rectangle2D;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFPicturePart;->anchor:Ljava/awt/geom/Rectangle2D;

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFPicturePart;->origin:Ljava/awt/geom/Rectangle2D;

    invoke-virtual {v0}, Ljava/awt/geom/RectangularShape;->getWidth()D

    move-result-wide v0

    iget-object v2, p0, Lorg/apache/poi/xwpf/usermodel/XWPFPicturePart;->anchor:Ljava/awt/geom/Rectangle2D;

    invoke-virtual {v2}, Ljava/awt/geom/RectangularShape;->getWidth()D

    move-result-wide v2

    sub-double/2addr v0, v2

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    div-double/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFPicturePart;->offsetX:D

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFPicturePart;->origin:Ljava/awt/geom/Rectangle2D;

    invoke-virtual {v0}, Ljava/awt/geom/RectangularShape;->getHeight()D

    move-result-wide v0

    iget-object v4, p0, Lorg/apache/poi/xwpf/usermodel/XWPFPicturePart;->anchor:Ljava/awt/geom/Rectangle2D;

    invoke-virtual {v4}, Ljava/awt/geom/RectangularShape;->getHeight()D

    move-result-wide v4

    sub-double/2addr v0, v4

    div-double/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFPicturePart;->offsetY:D

    iget-object v2, p0, Lorg/apache/poi/xwpf/usermodel/XWPFPicturePart;->anchor:Ljava/awt/geom/Rectangle2D;

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    invoke-virtual {v2}, Ljava/awt/geom/RectangularShape;->getWidth()D

    move-result-wide v7

    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFPicturePart;->anchor:Ljava/awt/geom/Rectangle2D;

    invoke-virtual {p0}, Ljava/awt/geom/RectangularShape;->getHeight()D

    move-result-wide v9

    invoke-virtual/range {v2 .. v10}, Ljava/awt/geom/Rectangle2D;->setFrame(DDDD)V

    :cond_3
    return-void
.end method

.method private initPictureData()V
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFPicturePart;->picture:Lorg/apache/poi/xwpf/usermodel/XWPFPicture;

    invoke-virtual {v0}, Lorg/apache/poi/xwpf/usermodel/XWPFPicture;->getPictureData()Lorg/apache/poi/xwpf/usermodel/XWPFPictureData;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFPicturePart;->pictureData:Lorg/apache/poi/xwpf/usermodel/XWPFPictureData;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFPicturePart;->picture:Lorg/apache/poi/xwpf/usermodel/XWPFPicture;

    invoke-virtual {v0}, Lorg/apache/poi/xwpf/usermodel/XWPFPicture;->getDescription()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFPicturePart;->name:Ljava/lang/String;

    sget-object v0, Lorg/apache/poi/common/usermodel/PictureType;->UNKNOWN:Lorg/apache/poi/common/usermodel/PictureType;

    iput-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFPicturePart;->pictureType:Lorg/apache/poi/common/usermodel/PictureType;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/xwpf/usermodel/XWPFPictureData;->getFileName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFPicturePart;->name:Ljava/lang/String;

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFPicturePart;->pictureData:Lorg/apache/poi/xwpf/usermodel/XWPFPictureData;

    invoke-virtual {v0}, Lorg/apache/poi/xwpf/usermodel/XWPFPictureData;->getPictureType()I

    move-result v0

    invoke-static {v0}, Lorg/apache/poi/convert/xwpf/XWPFWordToHtmlUtils;->getPictureType(I)Lorg/apache/poi/common/usermodel/PictureType;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFPicturePart;->pictureType:Lorg/apache/poi/common/usermodel/PictureType;

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFPicturePart;->pictureData:Lorg/apache/poi/xwpf/usermodel/XWPFPictureData;

    invoke-static {v0}, Lorg/apache/poi/convert/xwpf/XWPFWordToHtmlUtils;->getInputStream(Lorg/apache/poi/xwpf/usermodel/XWPFPictureData;)Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFPicturePart;->pictureStream:Ljava/io/InputStream;

    invoke-static {v0}, Lorg/apache/poi/convert/xwpf/XWPFWordToHtmlUtils;->getPictureType(Ljava/io/InputStream;)Lorg/apache/poi/common/usermodel/PictureType;

    move-result-object v0

    sget-object v1, Lorg/apache/poi/common/usermodel/PictureType;->UNKNOWN:Lorg/apache/poi/common/usermodel/PictureType;

    if-eq v0, v1, :cond_1

    iput-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFPicturePart;->pictureType:Lorg/apache/poi/common/usermodel/PictureType;

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFPicturePart;->picture:Lorg/apache/poi/xwpf/usermodel/XWPFPicture;

    invoke-virtual {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFPicture;->getCTPicture()Lorg/openxmlformats/schemas/drawingml/x2006/picture/CTPicture;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/poi/common/XmlBeanUtils;->freeMemory(Lorg/apache/xmlbeans/XmlObject;)V

    return-void
.end method

.method public flipH()Z
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFPicturePart;->xfrm:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;->getFlipH()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public flipV()Z
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFPicturePart;->xfrm:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;->getFlipV()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getAdjustValue(Ljava/lang/String;)Lorg/apache/poi/sl/draw/geom/Guide;
    .locals 4

    .line 2
    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFPicturePart;->picture:Lorg/apache/poi/xwpf/usermodel/XWPFPicture;

    invoke-virtual {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFPicture;->getCTPicture()Lorg/openxmlformats/schemas/drawingml/x2006/picture/CTPicture;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/picture/CTPicture;->getSpPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate;->getGeometryDelegate(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$XSLFGeometryProperties;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 3
    invoke-interface {p0}, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$XSLFGeometryProperties;->isSetPrstGeom()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$XSLFGeometryProperties;->getPrstGeom()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPresetGeometry2D;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPresetGeometry2D;->isSetAvLst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    invoke-interface {p0}, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$XSLFGeometryProperties;->getPrstGeom()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPresetGeometry2D;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPresetGeometry2D;->getAvLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGeomGuideList;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGeomGuideList;->getGdArray()[Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGeomGuide;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    .line 5
    invoke-interface {v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGeomGuide;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 6
    new-instance p0, Lorg/apache/poi/sl/draw/geom/Guide;

    invoke-direct {p0}, Lorg/apache/poi/sl/draw/geom/Guide;-><init>()V

    .line 7
    invoke-interface {v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGeomGuide;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/poi/sl/draw/geom/Guide;->setName(Ljava/lang/String;)V

    .line 8
    invoke-interface {v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGeomGuide;->getFmla()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/poi/sl/draw/geom/Guide;->setFmla(Ljava/lang/String;)V

    return-object p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getAdjustValue(Ljava/lang/String;)Lorg/apache/poi/sl/draw/geom/GuideIf;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/poi/xwpf/usermodel/XWPFPicturePart;->getAdjustValue(Ljava/lang/String;)Lorg/apache/poi/sl/draw/geom/Guide;

    move-result-object p0

    return-object p0
.end method

.method public getAnchor()Ljava/awt/geom/Rectangle2D;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFPicturePart;->anchor:Ljava/awt/geom/Rectangle2D;

    return-object p0
.end method

.method public getClip()Ljava/awt/Insets;
    .locals 4

    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFPicturePart;->picture:Lorg/apache/poi/xwpf/usermodel/XWPFPicture;

    invoke-virtual {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFPicture;->getCTPicture()Lorg/openxmlformats/schemas/drawingml/x2006/picture/CTPicture;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/picture/CTPicture;->getBlipFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlipFillProperties;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlipFillProperties;->isSetSrcRect()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlipFillProperties;->getSrcRect()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRelativeRect;

    move-result-object p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/awt/Insets;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRelativeRect;->xgetT()Lorg/openxmlformats/schemas/drawingml/x2006/main/STPercentage;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/poi/ooxml/util/POIXMLUnits;->parsePercent(Lorg/openxmlformats/schemas/drawingml/x2006/main/STPercentage;)I

    move-result v1

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRelativeRect;->xgetL()Lorg/openxmlformats/schemas/drawingml/x2006/main/STPercentage;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/poi/ooxml/util/POIXMLUnits;->parsePercent(Lorg/openxmlformats/schemas/drawingml/x2006/main/STPercentage;)I

    move-result v2

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRelativeRect;->xgetB()Lorg/openxmlformats/schemas/drawingml/x2006/main/STPercentage;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/poi/ooxml/util/POIXMLUnits;->parsePercent(Lorg/openxmlformats/schemas/drawingml/x2006/main/STPercentage;)I

    move-result v3

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRelativeRect;->xgetR()Lorg/openxmlformats/schemas/drawingml/x2006/main/STPercentage;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/poi/ooxml/util/POIXMLUnits;->parsePercent(Lorg/openxmlformats/schemas/drawingml/x2006/main/STPercentage;)I

    move-result p0

    invoke-direct {v0, v1, v2, v3, p0}, Ljava/awt/Insets;-><init>(IIII)V

    :cond_2
    :goto_0
    return-object v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFPicturePart;->pictureType:Lorg/apache/poi/common/usermodel/PictureType;

    iget-object p0, p0, Lorg/apache/poi/common/usermodel/PictureType;->contentType:Ljava/lang/String;

    return-object p0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFPicturePart;->pictureStream:Ljava/io/InputStream;

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFPicturePart;->name:Ljava/lang/String;

    return-object p0
.end method

.method public getOriginAnchor()Ljava/awt/geom/Rectangle2D;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFPicturePart;->origin:Ljava/awt/geom/Rectangle2D;

    return-object p0
.end method

.method public getOutlines()Ljava/util/List;
    .locals 28
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/sl/draw/geom/Outline;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/poi/xwpf/usermodel/XWPFPicturePart;->outlines:Ljava/util/List;

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lorg/apache/poi/xwpf/usermodel/XWPFPicturePart;->outlines:Ljava/util/List;

    invoke-direct/range {p0 .. p0}, Lorg/apache/poi/xwpf/usermodel/XWPFPicturePart;->getGeometry()Lorg/apache/poi/sl/draw/geom/CustomGeometry;

    move-result-object v1

    if-nez v1, :cond_1

    iget-object v0, v0, Lorg/apache/poi/xwpf/usermodel/XWPFPicturePart;->outlines:Ljava/util/List;

    return-object v0

    :cond_1
    iget-object v2, v0, Lorg/apache/poi/xwpf/usermodel/XWPFPicturePart;->anchor:Ljava/awt/geom/Rectangle2D;

    if-nez v2, :cond_2

    iget-object v0, v0, Lorg/apache/poi/xwpf/usermodel/XWPFPicturePart;->outlines:Ljava/util/List;

    return-object v0

    :cond_2
    invoke-virtual {v1}, Lorg/apache/poi/sl/draw/geom/CustomGeometry;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/sl/draw/geom/PathIf;

    invoke-interface {v3}, Lorg/apache/poi/sl/draw/geom/PathIf;->getW()J

    move-result-wide v4

    long-to-double v4, v4

    invoke-interface {v3}, Lorg/apache/poi/sl/draw/geom/PathIf;->getH()J

    move-result-wide v6

    long-to-double v6, v6

    const-wide/high16 v8, -0x4010000000000000L    # -1.0

    cmpl-double v10, v4, v8

    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    const-wide/16 v13, 0x1

    const-wide/16 v15, 0x0

    if-nez v10, :cond_3

    iget-object v4, v0, Lorg/apache/poi/xwpf/usermodel/XWPFPicturePart;->anchor:Ljava/awt/geom/Rectangle2D;

    invoke-virtual {v4}, Ljava/awt/geom/RectangularShape;->getWidth()D

    move-result-wide v4

    invoke-static {v4, v5}, Lorg/apache/poi/util/Units;->toEMU(D)I

    move-result v4

    int-to-double v4, v4

    invoke-static {v13, v14}, Lorg/apache/poi/util/Units;->toPoints(J)D

    move-result-wide v17

    :goto_1
    move-wide/from16 v24, v4

    move-wide/from16 v4, v17

    goto :goto_2

    :cond_3
    iget-object v10, v0, Lorg/apache/poi/xwpf/usermodel/XWPFPicturePart;->anchor:Ljava/awt/geom/Rectangle2D;

    invoke-virtual {v10}, Ljava/awt/geom/RectangularShape;->getWidth()D

    move-result-wide v17

    cmpl-double v10, v17, v15

    if-nez v10, :cond_4

    move-wide/from16 v24, v4

    move-wide v4, v11

    goto :goto_2

    :cond_4
    iget-object v10, v0, Lorg/apache/poi/xwpf/usermodel/XWPFPicturePart;->anchor:Ljava/awt/geom/Rectangle2D;

    invoke-virtual {v10}, Ljava/awt/geom/RectangularShape;->getWidth()D

    move-result-wide v17

    div-double v17, v17, v4

    goto :goto_1

    :goto_2
    cmpl-double v8, v6, v8

    if-nez v8, :cond_5

    iget-object v6, v0, Lorg/apache/poi/xwpf/usermodel/XWPFPicturePart;->anchor:Ljava/awt/geom/Rectangle2D;

    invoke-virtual {v6}, Ljava/awt/geom/RectangularShape;->getHeight()D

    move-result-wide v6

    invoke-static {v6, v7}, Lorg/apache/poi/util/Units;->toEMU(D)I

    move-result v6

    int-to-double v6, v6

    invoke-static {v13, v14}, Lorg/apache/poi/util/Units;->toPoints(J)D

    move-result-wide v11

    :goto_3
    move-wide/from16 v26, v6

    goto :goto_4

    :cond_5
    iget-object v8, v0, Lorg/apache/poi/xwpf/usermodel/XWPFPicturePart;->anchor:Ljava/awt/geom/Rectangle2D;

    invoke-virtual {v8}, Ljava/awt/geom/RectangularShape;->getHeight()D

    move-result-wide v8

    cmpl-double v8, v8, v15

    if-nez v8, :cond_6

    goto :goto_3

    :cond_6
    iget-object v8, v0, Lorg/apache/poi/xwpf/usermodel/XWPFPicturePart;->anchor:Ljava/awt/geom/Rectangle2D;

    invoke-virtual {v8}, Ljava/awt/geom/RectangularShape;->getHeight()D

    move-result-wide v8

    div-double v11, v8, v6

    goto :goto_3

    :goto_4
    new-instance v6, Ljava/awt/geom/Rectangle2D$Double;

    const-wide/16 v20, 0x0

    const-wide/16 v22, 0x0

    move-object/from16 v19, v6

    invoke-direct/range {v19 .. v27}, Ljava/awt/geom/Rectangle2D$Double;-><init>(DDDD)V

    new-instance v7, Lorg/apache/poi/sl/draw/geom/Context;

    invoke-direct {v7, v1, v6, v0}, Lorg/apache/poi/sl/draw/geom/Context;-><init>(Lorg/apache/poi/sl/draw/geom/CustomGeometry;Ljava/awt/geom/Rectangle2D;Lorg/apache/poi/sl/draw/geom/IAdjustableShape;)V

    invoke-interface {v3, v7}, Lorg/apache/poi/sl/draw/geom/PathIf;->getPath(Lorg/apache/poi/sl/draw/geom/Context;)Ljava/awt/geom/Path2D$Double;

    move-result-object v6

    new-instance v7, Ljava/awt/geom/AffineTransform;

    invoke-direct {v7}, Ljava/awt/geom/AffineTransform;-><init>()V

    iget-object v8, v0, Lorg/apache/poi/xwpf/usermodel/XWPFPicturePart;->anchor:Ljava/awt/geom/Rectangle2D;

    invoke-virtual {v8}, Ljava/awt/geom/RectangularShape;->getX()D

    move-result-wide v8

    iget-object v10, v0, Lorg/apache/poi/xwpf/usermodel/XWPFPicturePart;->anchor:Ljava/awt/geom/Rectangle2D;

    invoke-virtual {v10}, Ljava/awt/geom/RectangularShape;->getY()D

    move-result-wide v13

    invoke-virtual {v7, v8, v9, v13, v14}, Ljava/awt/geom/AffineTransform;->translate(DD)V

    invoke-virtual {v7, v4, v5, v11, v12}, Ljava/awt/geom/AffineTransform;->scale(DD)V

    invoke-virtual {v7, v6}, Ljava/awt/geom/AffineTransform;->createTransformedShape(Ljava/awt/Shape;)Ljava/awt/Shape;

    move-result-object v4

    iget-object v5, v0, Lorg/apache/poi/xwpf/usermodel/XWPFPicturePart;->outlines:Ljava/util/List;

    new-instance v6, Lorg/apache/poi/sl/draw/geom/Outline;

    invoke-direct {v6, v4, v3}, Lorg/apache/poi/sl/draw/geom/Outline;-><init>(Ljava/awt/Shape;Lorg/apache/poi/sl/draw/geom/PathIf;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_7
    iget-object v0, v0, Lorg/apache/poi/xwpf/usermodel/XWPFPicturePart;->outlines:Ljava/util/List;

    return-object v0
.end method

.method public getPosition()Lorg/apache/poi/wp/usermodel/Position;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFPicturePart;->position:Lorg/apache/poi/wp/usermodel/Position;

    return-object p0
.end method

.method public getRotation()D
    .locals 2

    iget-wide v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFPicturePart;->rotation:D

    return-wide v0
.end method

.method public getText()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "XWPFPicture{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFPicturePart;->name:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public identifier()I
    .locals 7

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFPicturePart;->pictureType:Lorg/apache/poi/common/usermodel/PictureType;

    sget-object v1, Lorg/apache/poi/common/usermodel/PictureType;->UNKNOWN:Lorg/apache/poi/common/usermodel/PictureType;

    if-ne v0, v1, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    iget-object v0, v0, Lorg/apache/poi/common/usermodel/PictureType;->contentType:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    int-to-long v0, v0

    iget-object v2, p0, Lorg/apache/poi/xwpf/usermodel/XWPFPicturePart;->anchor:Ljava/awt/geom/Rectangle2D;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    int-to-long v2, v2

    const-wide/16 v4, 0x25

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    iget-object v2, p0, Lorg/apache/poi/xwpf/usermodel/XWPFPicturePart;->name:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    int-to-long v2, v2

    const-wide/16 v4, 0x2b

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    invoke-virtual {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFPicturePart;->getClip()Ljava/awt/Insets;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    int-to-long v2, v2

    const-wide/16 v4, 0x2f

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    invoke-virtual {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFPicturePart;->getRotation()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    const-wide/16 v4, 0x35

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    invoke-virtual {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFPicturePart;->flipH()Z

    move-result v2

    const-wide/16 v3, 0x0

    if-eqz v2, :cond_1

    move-wide v5, v3

    goto :goto_0

    :cond_1
    const-wide/16 v5, 0x3b

    :goto_0
    add-long/2addr v0, v5

    invoke-virtual {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFPicturePart;->flipV()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    const-wide/16 v3, 0x3d

    :goto_1
    add-long/2addr v0, v3

    iget-object v2, p0, Lorg/apache/poi/xwpf/usermodel/XWPFPicturePart;->position:Lorg/apache/poi/wp/usermodel/Position;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    int-to-long v2, v2

    const-wide/16 v4, 0x43

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    invoke-virtual {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFPicturePart;->getOutlines()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result p0

    int-to-long v2, p0

    const-wide/16 v4, 0x47

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    long-to-int p0, v0

    const/16 v2, 0x20

    shr-long/2addr v0, v2

    long-to-int v0, v0

    xor-int/2addr p0, v0

    return p0
.end method
