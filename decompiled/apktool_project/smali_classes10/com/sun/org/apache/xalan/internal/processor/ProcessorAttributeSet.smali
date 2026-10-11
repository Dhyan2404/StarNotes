.class Lcom/sun/org/apache/xalan/internal/processor/ProcessorAttributeSet;
.super Lcom/sun/org/apache/xalan/internal/processor/XSLTElementProcessor;
.source "SourceFile"


# static fields
.field static final serialVersionUID:J = -0x59d7578cbb3d8960L


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

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->popElemTemplateElement()Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;

    return-void
.end method

.method public startElement(Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    new-instance p2, Lcom/sun/org/apache/xalan/internal/templates/ElemAttributeSet;

    invoke-direct {p2}, Lcom/sun/org/apache/xalan/internal/templates/ElemAttributeSet;-><init>()V

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->getLocator()Lcom/sun/org/apache/xml/internal/utils/SAXSourceLocator;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->setLocaterInfo(Ljavax/xml/transform/SourceLocator;)V

    :try_start_0
    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->getNamespaceSupport()Lorg/xml/sax/helpers/NamespaceSupport;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->setPrefixes(Lorg/xml/sax/helpers/NamespaceSupport;)V
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->getOriginatingNode()Lorg/w3c/dom/Node;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->setDOMBackPointer(Lorg/w3c/dom/Node;)V

    invoke-virtual {p0, p1, p4, p5, p2}, Lcom/sun/org/apache/xalan/internal/processor/XSLTElementProcessor;->setPropertiesFromAttributes(Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;Ljava/lang/String;Lorg/xml/sax/Attributes;Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;)V

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->getStylesheet()Lcom/sun/org/apache/xalan/internal/templates/Stylesheet;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/sun/org/apache/xalan/internal/templates/Stylesheet;->setAttributeSet(Lcom/sun/org/apache/xalan/internal/templates/ElemAttributeSet;)V

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->getElemTemplateElement()Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->appendChild(Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;)Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;

    invoke-virtual {p1, p2}, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->pushElemTemplateElement(Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;)V

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Lorg/xml/sax/SAXException;

    invoke-direct {p1, p0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw p1
.end method
