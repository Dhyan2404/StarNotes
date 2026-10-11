.class public Lcom/sun/org/apache/xalan/internal/processor/ProcessorStylesheetElement;
.super Lcom/sun/org/apache/xalan/internal/processor/XSLTElementProcessor;
.source "SourceFile"


# static fields
.field static final serialVersionUID:J = -0xc2e917946bf5818L


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sun/org/apache/xalan/internal/processor/XSLTElementProcessor;-><init>()V

    return-void
.end method


# virtual methods
.method public endElement(Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-super {p0, p1, p2, p3, p4}, Lcom/sun/org/apache/xalan/internal/processor/XSLTElementProcessor;->endElement(Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->popElemTemplateElement()Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->popStylesheet()Lcom/sun/org/apache/xalan/internal/templates/Stylesheet;

    return-void
.end method

.method public getStylesheetRoot(Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;)Lcom/sun/org/apache/xalan/internal/templates/Stylesheet;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerConfigurationException;
        }
    .end annotation

    new-instance p0, Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->getSchema()Lcom/sun/org/apache/xalan/internal/processor/XSLTSchema;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->getStylesheetProcessor()Lcom/sun/org/apache/xalan/internal/processor/TransformerFactoryImpl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/org/apache/xalan/internal/processor/TransformerFactoryImpl;->getErrorListener()Ljavax/xml/transform/ErrorListener;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;-><init>(Lcom/sun/org/apache/xalan/internal/processor/XSLTSchema;Ljavax/xml/transform/ErrorListener;)V

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->getStylesheetProcessor()Lcom/sun/org/apache/xalan/internal/processor/TransformerFactoryImpl;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/processor/TransformerFactoryImpl;->isSecureProcessing()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;->setSecureProcessing(Z)V

    :cond_0
    return-object p0
.end method

.method public startElement(Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-super/range {p0 .. p5}, Lcom/sun/org/apache/xalan/internal/processor/XSLTElementProcessor;->startElement(Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    :try_start_0
    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->getStylesheetType()I

    move-result p2
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 p3, 0x1

    if-ne p2, p3, :cond_0

    :try_start_1
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xalan/internal/processor/ProcessorStylesheetElement;->getStylesheetRoot(Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;)Lcom/sun/org/apache/xalan/internal/templates/Stylesheet;

    move-result-object p2
    :try_end_1
    .catch Ljavax/xml/transform/TransformerConfigurationException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-exception p0

    :try_start_2
    new-instance p1, Ljavax/xml/transform/TransformerException;

    invoke-direct {p1, p0}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_0
    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->getStylesheet()Lcom/sun/org/apache/xalan/internal/templates/Stylesheet;

    move-result-object p3

    const/4 v0, 0x3

    if-ne p2, v0, :cond_1

    new-instance p2, Lcom/sun/org/apache/xalan/internal/templates/StylesheetComposed;

    invoke-direct {p2, p3}, Lcom/sun/org/apache/xalan/internal/templates/StylesheetComposed;-><init>(Lcom/sun/org/apache/xalan/internal/templates/Stylesheet;)V

    invoke-virtual {p3, p2}, Lcom/sun/org/apache/xalan/internal/templates/Stylesheet;->setImport(Lcom/sun/org/apache/xalan/internal/templates/StylesheetComposed;)V

    goto :goto_0

    :cond_1
    new-instance p2, Lcom/sun/org/apache/xalan/internal/templates/Stylesheet;

    invoke-direct {p2, p3}, Lcom/sun/org/apache/xalan/internal/templates/Stylesheet;-><init>(Lcom/sun/org/apache/xalan/internal/templates/Stylesheet;)V

    invoke-virtual {p3, p2}, Lcom/sun/org/apache/xalan/internal/templates/Stylesheet;->setInclude(Lcom/sun/org/apache/xalan/internal/templates/Stylesheet;)V

    :goto_0
    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->getOriginatingNode()Lorg/w3c/dom/Node;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->setDOMBackPointer(Lorg/w3c/dom/Node;)V

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->getLocator()Lcom/sun/org/apache/xml/internal/utils/SAXSourceLocator;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/sun/org/apache/xalan/internal/templates/Stylesheet;->setLocaterInfo(Ljavax/xml/transform/SourceLocator;)V

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->getNamespaceSupport()Lorg/xml/sax/helpers/NamespaceSupport;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->setPrefixes(Lorg/xml/sax/helpers/NamespaceSupport;)V

    invoke-virtual {p1, p2}, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->pushStylesheet(Lcom/sun/org/apache/xalan/internal/templates/Stylesheet;)V

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->getStylesheet()Lcom/sun/org/apache/xalan/internal/templates/Stylesheet;

    move-result-object p2

    invoke-virtual {p0, p1, p4, p5, p2}, Lcom/sun/org/apache/xalan/internal/processor/XSLTElementProcessor;->setPropertiesFromAttributes(Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;Ljava/lang/String;Lorg/xml/sax/Attributes;Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;)V

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->getStylesheet()Lcom/sun/org/apache/xalan/internal/templates/Stylesheet;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->pushElemTemplateElement(Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;)V
    :try_end_2
    .catch Ljavax/xml/transform/TransformerException; {:try_start_2 .. :try_end_2} :catch_1

    return-void

    :catch_1
    move-exception p0

    new-instance p1, Lorg/xml/sax/SAXException;

    invoke-direct {p1, p0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw p1
.end method
