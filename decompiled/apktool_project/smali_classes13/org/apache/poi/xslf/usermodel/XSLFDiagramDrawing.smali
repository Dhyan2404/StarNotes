.class public Lorg/apache/poi/xslf/usermodel/XSLFDiagramDrawing;
.super Lorg/apache/poi/ooxml/POIXMLDocumentPart;
.source "SourceFile"


# instance fields
.field private final _drawingDoc:Lcom/microsoft/schemas/office/drawing/x2008/diagram/DrawingDocument;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;-><init>()V

    .line 2
    sget-object v0, Lcom/microsoft/schemas/office/drawing/x2008/diagram/DrawingDocument;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/microsoft/schemas/office/drawing/x2008/diagram/DrawingDocument;

    iput-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFDiagramDrawing;->_drawingDoc:Lcom/microsoft/schemas/office/drawing/x2008/diagram/DrawingDocument;

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xmlbeans/XmlException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;-><init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V

    .line 4
    invoke-static {p1}, Lorg/apache/poi/xslf/usermodel/XSLFDiagramDrawing;->readPackagePart(Lorg/apache/poi/openxml4j/opc/PackagePart;)Lcom/microsoft/schemas/office/drawing/x2008/diagram/DrawingDocument;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/xslf/usermodel/XSLFDiagramDrawing;->_drawingDoc:Lcom/microsoft/schemas/office/drawing/x2008/diagram/DrawingDocument;

    return-void
.end method

.method private static readPackagePart(Lorg/apache/poi/openxml4j/opc/PackagePart;)Lcom/microsoft/schemas/office/drawing/x2008/diagram/DrawingDocument;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/xmlbeans/XmlException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getInputStream()Ljava/io/InputStream;

    move-result-object p0

    :try_start_0
    sget-object v0, Lcom/microsoft/schemas/office/drawing/x2008/diagram/DrawingDocument;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0, p0}, Lorg/apache/xmlbeans/impl/schema/AbstractDocumentFactory;->parse(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/microsoft/schemas/office/drawing/x2008/diagram/DrawingDocument;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    :cond_0
    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v1

    if-eqz p0, :cond_1

    :try_start_2
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception p0

    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v1
.end method


# virtual methods
.method public getDrawingDocument()Lcom/microsoft/schemas/office/drawing/x2008/diagram/DrawingDocument;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xslf/usermodel/XSLFDiagramDrawing;->_drawingDoc:Lcom/microsoft/schemas/office/drawing/x2008/diagram/DrawingDocument;

    return-object p0
.end method
