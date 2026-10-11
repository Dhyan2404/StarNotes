.class Lcom/sun/org/apache/xalan/internal/processor/ProcessorOutputElem;
.super Lcom/sun/org/apache/xalan/internal/processor/XSLTElementProcessor;
.source "SourceFile"


# static fields
.field static final serialVersionUID:J = 0x30c35205e6f98e86L


# instance fields
.field private m_outputProperties:Lcom/sun/org/apache/xalan/internal/templates/OutputProperties;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sun/org/apache/xalan/internal/processor/XSLTElementProcessor;-><init>()V

    return-void
.end method


# virtual methods
.method public addLiteralResultAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    new-instance p3, Lcom/sun/org/apache/xml/internal/utils/QName;

    invoke-direct {p3, p1, p2}, Lcom/sun/org/apache/xml/internal/utils/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/processor/ProcessorOutputElem;->m_outputProperties:Lcom/sun/org/apache/xalan/internal/templates/OutputProperties;

    invoke-virtual {p0, p3, p4}, Lcom/sun/org/apache/xalan/internal/templates/OutputProperties;->setProperty(Lcom/sun/org/apache/xml/internal/utils/QName;Ljava/lang/String;)V

    return-void
.end method

.method public setCdataSectionElements(Ljava/util/Vector;)V
    .locals 1

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/processor/ProcessorOutputElem;->m_outputProperties:Lcom/sun/org/apache/xalan/internal/templates/OutputProperties;

    const-string v0, "cdata-section-elements"

    invoke-virtual {p0, v0, p1}, Lcom/sun/org/apache/xalan/internal/templates/OutputProperties;->setQNameProperties(Ljava/lang/String;Ljava/util/Vector;)V

    return-void
.end method

.method public setDoctypePublic(Ljava/lang/String;)V
    .locals 1

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/processor/ProcessorOutputElem;->m_outputProperties:Lcom/sun/org/apache/xalan/internal/templates/OutputProperties;

    const-string v0, "doctype-public"

    invoke-virtual {p0, v0, p1}, Lcom/sun/org/apache/xalan/internal/templates/OutputProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setDoctypeSystem(Ljava/lang/String;)V
    .locals 1

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/processor/ProcessorOutputElem;->m_outputProperties:Lcom/sun/org/apache/xalan/internal/templates/OutputProperties;

    const-string v0, "doctype-system"

    invoke-virtual {p0, v0, p1}, Lcom/sun/org/apache/xalan/internal/templates/OutputProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setEncoding(Ljava/lang/String;)V
    .locals 1

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/processor/ProcessorOutputElem;->m_outputProperties:Lcom/sun/org/apache/xalan/internal/templates/OutputProperties;

    const-string v0, "encoding"

    invoke-virtual {p0, v0, p1}, Lcom/sun/org/apache/xalan/internal/templates/OutputProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setForeignAttr(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    new-instance p3, Lcom/sun/org/apache/xml/internal/utils/QName;

    invoke-direct {p3, p1, p2}, Lcom/sun/org/apache/xml/internal/utils/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/processor/ProcessorOutputElem;->m_outputProperties:Lcom/sun/org/apache/xalan/internal/templates/OutputProperties;

    invoke-virtual {p0, p3, p4}, Lcom/sun/org/apache/xalan/internal/templates/OutputProperties;->setProperty(Lcom/sun/org/apache/xml/internal/utils/QName;Ljava/lang/String;)V

    return-void
.end method

.method public setIndent(Z)V
    .locals 1

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/processor/ProcessorOutputElem;->m_outputProperties:Lcom/sun/org/apache/xalan/internal/templates/OutputProperties;

    const-string v0, "indent"

    invoke-virtual {p0, v0, p1}, Lcom/sun/org/apache/xalan/internal/templates/OutputProperties;->setBooleanProperty(Ljava/lang/String;Z)V

    return-void
.end method

.method public setMediaType(Ljava/lang/String;)V
    .locals 1

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/processor/ProcessorOutputElem;->m_outputProperties:Lcom/sun/org/apache/xalan/internal/templates/OutputProperties;

    const-string v0, "media-type"

    invoke-virtual {p0, v0, p1}, Lcom/sun/org/apache/xalan/internal/templates/OutputProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setMethod(Lcom/sun/org/apache/xml/internal/utils/QName;)V
    .locals 1

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/processor/ProcessorOutputElem;->m_outputProperties:Lcom/sun/org/apache/xalan/internal/templates/OutputProperties;

    const-string v0, "method"

    invoke-virtual {p0, v0, p1}, Lcom/sun/org/apache/xalan/internal/templates/OutputProperties;->setQNameProperty(Ljava/lang/String;Lcom/sun/org/apache/xml/internal/utils/QName;)V

    return-void
.end method

.method public setOmitXmlDeclaration(Z)V
    .locals 1

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/processor/ProcessorOutputElem;->m_outputProperties:Lcom/sun/org/apache/xalan/internal/templates/OutputProperties;

    const-string v0, "omit-xml-declaration"

    invoke-virtual {p0, v0, p1}, Lcom/sun/org/apache/xalan/internal/templates/OutputProperties;->setBooleanProperty(Ljava/lang/String;Z)V

    return-void
.end method

.method public setStandalone(Z)V
    .locals 1

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/processor/ProcessorOutputElem;->m_outputProperties:Lcom/sun/org/apache/xalan/internal/templates/OutputProperties;

    const-string v0, "standalone"

    invoke-virtual {p0, v0, p1}, Lcom/sun/org/apache/xalan/internal/templates/OutputProperties;->setBooleanProperty(Ljava/lang/String;Z)V

    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 1

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/processor/ProcessorOutputElem;->m_outputProperties:Lcom/sun/org/apache/xalan/internal/templates/OutputProperties;

    const-string v0, "version"

    invoke-virtual {p0, v0, p1}, Lcom/sun/org/apache/xalan/internal/templates/OutputProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public startElement(Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    new-instance p2, Lcom/sun/org/apache/xalan/internal/templates/OutputProperties;

    invoke-direct {p2}, Lcom/sun/org/apache/xalan/internal/templates/OutputProperties;-><init>()V

    iput-object p2, p0, Lcom/sun/org/apache/xalan/internal/processor/ProcessorOutputElem;->m_outputProperties:Lcom/sun/org/apache/xalan/internal/templates/OutputProperties;

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->getOriginatingNode()Lorg/w3c/dom/Node;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->setDOMBackPointer(Lorg/w3c/dom/Node;)V

    iget-object p2, p0, Lcom/sun/org/apache/xalan/internal/processor/ProcessorOutputElem;->m_outputProperties:Lcom/sun/org/apache/xalan/internal/templates/OutputProperties;

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->getLocator()Lcom/sun/org/apache/xml/internal/utils/SAXSourceLocator;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->setLocaterInfo(Ljavax/xml/transform/SourceLocator;)V

    iget-object p2, p0, Lcom/sun/org/apache/xalan/internal/processor/ProcessorOutputElem;->m_outputProperties:Lcom/sun/org/apache/xalan/internal/templates/OutputProperties;

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->nextUid()I

    move-result p3

    invoke-virtual {p2, p3}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->setUid(I)V

    invoke-virtual {p0, p1, p4, p5, p0}, Lcom/sun/org/apache/xalan/internal/processor/XSLTElementProcessor;->setPropertiesFromAttributes(Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;Ljava/lang/String;Lorg/xml/sax/Attributes;Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;)V

    iget-object p2, p0, Lcom/sun/org/apache/xalan/internal/processor/ProcessorOutputElem;->m_outputProperties:Lcom/sun/org/apache/xalan/internal/templates/OutputProperties;

    invoke-virtual {p2}, Lcom/sun/org/apache/xalan/internal/templates/OutputProperties;->getProperties()Ljava/util/Properties;

    move-result-object p2

    const-string p3, "{http://xml.apache.org/xalan}entities"

    invoke-virtual {p2, p3}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    if-eqz p2, :cond_0

    :try_start_0
    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->getBaseIdentifier()Ljava/lang/String;

    move-result-object p4

    invoke-static {p2, p4}, Lcom/sun/org/apache/xml/internal/utils/SystemIDResolver;->getAbsoluteURI(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iget-object p4, p0, Lcom/sun/org/apache/xalan/internal/processor/ProcessorOutputElem;->m_outputProperties:Lcom/sun/org/apache/xalan/internal/templates/OutputProperties;

    invoke-virtual {p4}, Lcom/sun/org/apache/xalan/internal/templates/OutputProperties;->getProperties()Ljava/util/Properties;

    move-result-object p4

    invoke-virtual {p4, p3, p2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3, p2}, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->error(Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->getStylesheet()Lcom/sun/org/apache/xalan/internal/templates/Stylesheet;

    move-result-object p2

    iget-object p3, p0, Lcom/sun/org/apache/xalan/internal/processor/ProcessorOutputElem;->m_outputProperties:Lcom/sun/org/apache/xalan/internal/templates/OutputProperties;

    invoke-virtual {p2, p3}, Lcom/sun/org/apache/xalan/internal/templates/Stylesheet;->setOutput(Lcom/sun/org/apache/xalan/internal/templates/OutputProperties;)V

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->getElemTemplateElement()Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;

    move-result-object p1

    iget-object p2, p0, Lcom/sun/org/apache/xalan/internal/processor/ProcessorOutputElem;->m_outputProperties:Lcom/sun/org/apache/xalan/internal/templates/OutputProperties;

    invoke-virtual {p1, p2}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->appendChild(Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;)Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/processor/ProcessorOutputElem;->m_outputProperties:Lcom/sun/org/apache/xalan/internal/templates/OutputProperties;

    return-void
.end method
