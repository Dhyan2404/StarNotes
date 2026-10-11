.class public Lorg/apache/poi/xwpf/usermodel/ImageShape;
.super Lorg/apache/poi/xwpf/usermodel/XWPFShape;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/poi/xwpf/usermodel/XWPFShape<",
        "Lcom/microsoft/schemas/vml/CTImageData;",
        ">;"
    }
.end annotation


# instance fields
.field private pictureData:Lorg/apache/poi/xwpf/usermodel/XWPFPictureData;

.field private pictureStream:Ljava/io/InputStream;

.field private pictureType:Lorg/apache/poi/common/usermodel/PictureType;

.field private run:Lorg/apache/poi/xwpf/usermodel/XWPFRun;


# direct methods
.method public constructor <init>(Lorg/apache/poi/xwpf/usermodel/ShapeContainer;Lcom/microsoft/schemas/vml/CTImageData;Lorg/apache/poi/xwpf/usermodel/XWPFRun;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/xwpf/usermodel/ShapeContainer<",
            "Lorg/apache/poi/xwpf/usermodel/XWPFShape<",
            "*>;>;",
            "Lcom/microsoft/schemas/vml/CTImageData;",
            "Lorg/apache/poi/xwpf/usermodel/XWPFRun;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lorg/apache/poi/xwpf/usermodel/XWPFShape;-><init>(Lorg/apache/poi/xwpf/usermodel/ShapeContainer;Lorg/apache/xmlbeans/XmlObject;)V

    iput-object p3, p0, Lorg/apache/poi/xwpf/usermodel/ImageShape;->run:Lorg/apache/poi/xwpf/usermodel/XWPFRun;

    invoke-direct {p0, p2}, Lorg/apache/poi/xwpf/usermodel/ImageShape;->parsePicture(Lcom/microsoft/schemas/vml/CTImageData;)V

    return-void
.end method

.method private parsePicture(Lcom/microsoft/schemas/vml/CTImageData;)V
    .locals 1

    invoke-interface {p1}, Lcom/microsoft/schemas/vml/CTImageData;->getId2()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/poi/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/ImageShape;->run:Lorg/apache/poi/xwpf/usermodel/XWPFRun;

    invoke-virtual {v0}, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->getParent()Lorg/apache/poi/xwpf/usermodel/IRunBody;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/poi/xwpf/usermodel/IRunBody;->getPart()Lorg/apache/poi/ooxml/POIXMLDocumentPart;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->getRelationById(Ljava/lang/String;)Lorg/apache/poi/ooxml/POIXMLDocumentPart;

    move-result-object p1

    instance-of v0, p1, Lorg/apache/poi/xwpf/usermodel/XWPFPictureData;

    if-eqz v0, :cond_1

    check-cast p1, Lorg/apache/poi/xwpf/usermodel/XWPFPictureData;

    iput-object p1, p0, Lorg/apache/poi/xwpf/usermodel/ImageShape;->pictureData:Lorg/apache/poi/xwpf/usermodel/XWPFPictureData;

    invoke-virtual {p1}, Lorg/apache/poi/xwpf/usermodel/XWPFPictureData;->getPictureType()I

    move-result p1

    invoke-static {p1}, Lorg/apache/poi/convert/xwpf/XWPFWordToHtmlUtils;->getPictureType(I)Lorg/apache/poi/common/usermodel/PictureType;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/xwpf/usermodel/ImageShape;->pictureType:Lorg/apache/poi/common/usermodel/PictureType;

    iget-object p1, p0, Lorg/apache/poi/xwpf/usermodel/ImageShape;->pictureData:Lorg/apache/poi/xwpf/usermodel/XWPFPictureData;

    invoke-static {p1}, Lorg/apache/poi/convert/xwpf/XWPFWordToHtmlUtils;->getInputStream(Lorg/apache/poi/xwpf/usermodel/XWPFPictureData;)Ljava/io/InputStream;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/xwpf/usermodel/ImageShape;->pictureStream:Ljava/io/InputStream;

    invoke-static {p1}, Lorg/apache/poi/convert/xwpf/XWPFWordToHtmlUtils;->getPictureType(Ljava/io/InputStream;)Lorg/apache/poi/common/usermodel/PictureType;

    move-result-object p1

    sget-object v0, Lorg/apache/poi/common/usermodel/PictureType;->UNKNOWN:Lorg/apache/poi/common/usermodel/PictureType;

    if-eq p1, v0, :cond_1

    iput-object p1, p0, Lorg/apache/poi/xwpf/usermodel/ImageShape;->pictureType:Lorg/apache/poi/common/usermodel/PictureType;

    :cond_1
    return-void
.end method


# virtual methods
.method public draw(Ljava/awt/Graphics2D;)V
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/ImageShape;->pictureStream:Ljava/io/InputStream;

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/ImageShape;->pictureType:Lorg/apache/poi/common/usermodel/PictureType;

    iget-object v0, v0, Lorg/apache/poi/common/usermodel/PictureType;->contentType:Ljava/lang/String;

    invoke-static {p1, v0}, Lorg/apache/poi/sl/draw/DrawPictureShape;->getImageRenderer(Ljava/awt/Graphics2D;Ljava/lang/String;)Lorg/apache/poi/sl/draw/ImageRenderer;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/xwpf/usermodel/ImageShape;->pictureType:Lorg/apache/poi/common/usermodel/PictureType;

    iget-object v1, v1, Lorg/apache/poi/common/usermodel/PictureType;->contentType:Ljava/lang/String;

    invoke-interface {v0, v1}, Lorg/apache/poi/sl/draw/ImageRenderer;->canRender(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/apache/poi/xwpf/usermodel/ImageShape;->pictureStream:Ljava/io/InputStream;

    iget-object v2, p0, Lorg/apache/poi/xwpf/usermodel/ImageShape;->pictureType:Lorg/apache/poi/common/usermodel/PictureType;

    iget-object v2, v2, Lorg/apache/poi/common/usermodel/PictureType;->contentType:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lorg/apache/poi/sl/draw/ImageRenderer;->loadImage(Ljava/io/InputStream;Ljava/lang/String;)V

    iget-object v1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFShape;->parent:Lorg/apache/poi/xwpf/usermodel/ShapeContainer;

    invoke-interface {v1}, Lorg/apache/poi/xwpf/usermodel/Shape;->getAnchor()Ljava/awt/geom/Rectangle2D;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, p1, v1, v2}, Lorg/apache/poi/sl/draw/ImageRenderer;->drawImage(Ljava/awt/Graphics2D;Ljava/awt/geom/Rectangle2D;Ljava/awt/Insets;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFShape;->LOG:Lorg/apache/logging/log4j/Logger;

    invoke-interface {p0}, Lorg/apache/logging/log4j/Logger;->atError()Lorg/apache/logging/log4j/LogBuilder;

    move-result-object p0

    invoke-interface {p0, p1}, Lorg/apache/logging/log4j/LogBuilder;->withThrowable(Ljava/lang/Throwable;)Lorg/apache/logging/log4j/LogBuilder;

    move-result-object p0

    invoke-interface {p0}, Lorg/apache/logging/log4j/LogBuilder;->log()V

    :cond_1
    :goto_0
    return-void
.end method

.method public parseShapeProperties(Lcom/microsoft/schemas/vml/CTImageData;)V
    .locals 0

    .line 2
    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFShape;->properties:Lorg/apache/poi/xwpf/usermodel/ShapeProperties;

    invoke-interface {p1}, Lcom/microsoft/schemas/vml/CTImageData;->getId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/xwpf/usermodel/ShapeProperties;->shapeId:Ljava/lang/String;

    return-void
.end method

.method public bridge synthetic parseShapeProperties(Lorg/apache/xmlbeans/XmlObject;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/microsoft/schemas/vml/CTImageData;

    invoke-virtual {p0, p1}, Lorg/apache/poi/xwpf/usermodel/ImageShape;->parseShapeProperties(Lcom/microsoft/schemas/vml/CTImageData;)V

    return-void
.end method
