.class public Lcom/sun/org/apache/xalan/internal/processor/ProcessorExsltFunction;
.super Lcom/sun/org/apache/xalan/internal/processor/ProcessorTemplateElem;
.source "SourceFile"


# static fields
.field static final serialVersionUID:J = 0x21771cf559bd0644L


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sun/org/apache/xalan/internal/processor/ProcessorTemplateElem;-><init>()V

    return-void
.end method


# virtual methods
.method public ancestorIsOk(Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;)Z
    .locals 0

    :cond_0
    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->getParentElem()Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->getParentElem()Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;

    move-result-object p0

    instance-of p0, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemExsltFunction;

    if-nez p0, :cond_2

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->getParentElem()Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;

    move-result-object p1

    instance-of p0, p1, Lcom/sun/org/apache/xalan/internal/templates/ElemExsltFuncResult;

    if-nez p0, :cond_1

    instance-of p0, p1, Lcom/sun/org/apache/xalan/internal/templates/ElemVariable;

    if-nez p0, :cond_1

    instance-of p0, p1, Lcom/sun/org/apache/xalan/internal/templates/ElemParam;

    if-nez p0, :cond_1

    instance-of p0, p1, Lcom/sun/org/apache/xalan/internal/templates/ElemMessage;

    if-eqz p0, :cond_0

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public appendAndPush(Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lcom/sun/org/apache/xalan/internal/processor/ProcessorTemplateElem;->appendAndPush(Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;)V

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->getOriginatingNode()Lorg/w3c/dom/Node;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->setDOMBackPointer(Lorg/w3c/dom/Node;)V

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->getStylesheet()Lcom/sun/org/apache/xalan/internal/templates/Stylesheet;

    move-result-object p0

    check-cast p2, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplate;

    invoke-virtual {p0, p2}, Lcom/sun/org/apache/xalan/internal/templates/Stylesheet;->setTemplate(Lcom/sun/org/apache/xalan/internal/templates/ElemTemplate;)V

    return-void
.end method

.method public endElement(Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->getElemTemplateElement()Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->getLocator()Lcom/sun/org/apache/xml/internal/utils/SAXSourceLocator;

    invoke-virtual {p0, v0, p1}, Lcom/sun/org/apache/xalan/internal/processor/ProcessorExsltFunction;->validate(Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;)V

    invoke-super {p0, p1, p2, p3, p4}, Lcom/sun/org/apache/xalan/internal/processor/ProcessorTemplateElem;->endElement(Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public startElement(Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->getElemTemplateElement()Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;

    move-result-object v0

    instance-of v0, v0, Lcom/sun/org/apache/xalan/internal/templates/Stylesheet;

    if-nez v0, :cond_0

    new-instance v0, Lorg/xml/sax/SAXException;

    const-string v1, "func:function element must be top level."

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1, v0}, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->error(Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    invoke-super/range {p0 .. p5}, Lcom/sun/org/apache/xalan/internal/processor/ProcessorTemplateElem;->startElement(Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    const-string p0, "name"

    invoke-interface {p5, p0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p2, ":"

    invoke-virtual {p0, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p2

    if-lez p2, :cond_1

    const/4 p3, 0x0

    invoke-virtual {p0, p3, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p3

    add-int/lit8 p2, p2, 0x1

    invoke-virtual {p0, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->getNamespaceSupport()Lorg/xml/sax/helpers/NamespaceSupport;

    move-result-object p0

    invoke-virtual {p0, p3}, Lorg/xml/sax/helpers/NamespaceSupport;->getURI(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    :cond_1
    new-instance p0, Lorg/xml/sax/SAXException;

    const-string p2, "func:function name must have namespace"

    invoke-direct {p0, p2}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2, p0}, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->error(Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public validate(Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    :cond_0
    if-eqz p1, :cond_6

    instance-of v0, p1, Lcom/sun/org/apache/xalan/internal/templates/ElemExsltFuncResult;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->getNextSiblingElem()Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->getNextSiblingElem()Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;

    move-result-object v0

    instance-of v0, v0, Lcom/sun/org/apache/xalan/internal/templates/ElemFallback;

    if-nez v0, :cond_1

    new-instance v0, Lorg/xml/sax/SAXException;

    const-string v1, "func:result has an illegal following sibling (only xsl:fallback allowed)"

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v1, v0}, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->error(Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_1
    instance-of v0, p1, Lcom/sun/org/apache/xalan/internal/templates/ElemApplyImport;

    if-nez v0, :cond_2

    instance-of v0, p1, Lcom/sun/org/apache/xalan/internal/templates/ElemApplyTemplates;

    if-nez v0, :cond_2

    instance-of v0, p1, Lcom/sun/org/apache/xalan/internal/templates/ElemAttribute;

    if-nez v0, :cond_2

    instance-of v0, p1, Lcom/sun/org/apache/xalan/internal/templates/ElemCallTemplate;

    if-nez v0, :cond_2

    instance-of v0, p1, Lcom/sun/org/apache/xalan/internal/templates/ElemComment;

    if-nez v0, :cond_2

    instance-of v0, p1, Lcom/sun/org/apache/xalan/internal/templates/ElemCopy;

    if-nez v0, :cond_2

    instance-of v0, p1, Lcom/sun/org/apache/xalan/internal/templates/ElemCopyOf;

    if-nez v0, :cond_2

    instance-of v0, p1, Lcom/sun/org/apache/xalan/internal/templates/ElemElement;

    if-nez v0, :cond_2

    instance-of v0, p1, Lcom/sun/org/apache/xalan/internal/templates/ElemLiteralResult;

    if-nez v0, :cond_2

    instance-of v0, p1, Lcom/sun/org/apache/xalan/internal/templates/ElemNumber;

    if-nez v0, :cond_2

    instance-of v0, p1, Lcom/sun/org/apache/xalan/internal/templates/ElemPI;

    if-nez v0, :cond_2

    instance-of v0, p1, Lcom/sun/org/apache/xalan/internal/templates/ElemText;

    if-nez v0, :cond_2

    instance-of v0, p1, Lcom/sun/org/apache/xalan/internal/templates/ElemTextLiteral;

    if-nez v0, :cond_2

    instance-of v0, p1, Lcom/sun/org/apache/xalan/internal/templates/ElemValueOf;

    if-eqz v0, :cond_3

    :cond_2
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xalan/internal/processor/ProcessorExsltFunction;->ancestorIsOk(Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;)Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Lorg/xml/sax/SAXException;

    const-string v1, "misplaced literal result in a func:function container."

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v1, v0}, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->error(Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_3
    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->getFirstChildElem()Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;

    move-result-object v0

    move-object v2, v0

    move-object v0, p1

    move-object p1, v2

    :cond_4
    if-nez p1, :cond_0

    invoke-virtual {v0}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->getNextSiblingElem()Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;

    move-result-object p1

    if-nez p1, :cond_5

    invoke-virtual {v0}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->getParentElem()Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;

    move-result-object v0

    :cond_5
    if-eqz v0, :cond_6

    instance-of v1, v0, Lcom/sun/org/apache/xalan/internal/templates/ElemExsltFunction;

    if-eqz v1, :cond_4

    :cond_6
    return-void
.end method
