.class public Lcom/sun/org/apache/xalan/internal/xsltc/trax/SAX2DOM;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/xml/sax/ContentHandler;
.implements Lorg/xml/sax/ext/LexicalHandler;
.implements Lcom/sun/org/apache/xalan/internal/xsltc/runtime/Constants;


# instance fields
.field private _document:Lorg/w3c/dom/Document;

.field private _lastSibling:Lorg/w3c/dom/Node;

.field private _namespaceDecls:Ljava/util/Vector;

.field private _nextSibling:Lorg/w3c/dom/Node;

.field private _nodeStk:Ljava/util/Stack;

.field private _root:Lorg/w3c/dom/Node;

.field private locator:Lorg/xml/sax/Locator;

.field private needToSetDocumentInfo:Z


# direct methods
.method public constructor <init>()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/parsers/ParserConfigurationException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SAX2DOM;->_root:Lorg/w3c/dom/Node;

    .line 3
    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SAX2DOM;->_document:Lorg/w3c/dom/Document;

    .line 4
    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SAX2DOM;->_nextSibling:Lorg/w3c/dom/Node;

    .line 5
    new-instance v1, Ljava/util/Stack;

    invoke-direct {v1}, Ljava/util/Stack;-><init>()V

    iput-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SAX2DOM;->_nodeStk:Ljava/util/Stack;

    .line 6
    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SAX2DOM;->_namespaceDecls:Ljava/util/Vector;

    .line 7
    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SAX2DOM;->_lastSibling:Lorg/w3c/dom/Node;

    .line 8
    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SAX2DOM;->locator:Lorg/xml/sax/Locator;

    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SAX2DOM;->needToSetDocumentInfo:Z

    .line 10
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    .line 11
    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilder;->newDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SAX2DOM;->_document:Lorg/w3c/dom/Document;

    .line 12
    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SAX2DOM;->_root:Lorg/w3c/dom/Node;

    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Node;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/parsers/ParserConfigurationException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 30
    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SAX2DOM;-><init>(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)V

    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/parsers/ParserConfigurationException;
        }
    .end annotation

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SAX2DOM;->_root:Lorg/w3c/dom/Node;

    .line 15
    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SAX2DOM;->_document:Lorg/w3c/dom/Document;

    .line 16
    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SAX2DOM;->_nextSibling:Lorg/w3c/dom/Node;

    .line 17
    new-instance v1, Ljava/util/Stack;

    invoke-direct {v1}, Ljava/util/Stack;-><init>()V

    iput-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SAX2DOM;->_nodeStk:Ljava/util/Stack;

    .line 18
    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SAX2DOM;->_namespaceDecls:Ljava/util/Vector;

    .line 19
    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SAX2DOM;->_lastSibling:Lorg/w3c/dom/Node;

    .line 20
    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SAX2DOM;->locator:Lorg/xml/sax/Locator;

    const/4 v0, 0x1

    .line 21
    iput-boolean v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SAX2DOM;->needToSetDocumentInfo:Z

    .line 22
    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SAX2DOM;->_root:Lorg/w3c/dom/Node;

    .line 23
    instance-of v0, p1, Lorg/w3c/dom/Document;

    if-eqz v0, :cond_0

    .line 24
    check-cast p1, Lorg/w3c/dom/Document;

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SAX2DOM;->_document:Lorg/w3c/dom/Document;

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 25
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object p1

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SAX2DOM;->_document:Lorg/w3c/dom/Document;

    goto :goto_0

    .line 26
    :cond_1
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object p1

    .line 27
    invoke-virtual {p1}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljavax/xml/parsers/DocumentBuilder;->newDocument()Lorg/w3c/dom/Document;

    move-result-object p1

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SAX2DOM;->_document:Lorg/w3c/dom/Document;

    .line 28
    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SAX2DOM;->_root:Lorg/w3c/dom/Node;

    .line 29
    :goto_0
    iput-object p2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SAX2DOM;->_nextSibling:Lorg/w3c/dom/Node;

    return-void
.end method

.method private setDocumentInfo()V
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SAX2DOM;->locator:Lorg/xml/sax/Locator;

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SAX2DOM;->_document:Lorg/w3c/dom/Document;

    check-cast v0, Lorg/xml/sax/ext/Locator2;

    invoke-interface {v0}, Lorg/xml/sax/ext/Locator2;->getXMLVersion()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lorg/w3c/dom/Document;->setXmlVersion(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 2

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SAX2DOM;->_nodeStk:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Node;

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SAX2DOM;->_document:Lorg/w3c/dom/Document;

    if-eq v0, v1, :cond_2

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    iget-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SAX2DOM;->_lastSibling:Lorg/w3c/dom/Node;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result p1

    const/4 p2, 0x3

    if-ne p1, p2, :cond_0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SAX2DOM;->_lastSibling:Lorg/w3c/dom/Node;

    check-cast p0, Lorg/w3c/dom/Text;

    invoke-interface {p0, v1}, Lorg/w3c/dom/CharacterData;->appendData(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SAX2DOM;->_root:Lorg/w3c/dom/Node;

    if-ne v0, p1, :cond_1

    iget-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SAX2DOM;->_nextSibling:Lorg/w3c/dom/Node;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SAX2DOM;->_document:Lorg/w3c/dom/Document;

    invoke-interface {p1, v1}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object p1

    iget-object p2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SAX2DOM;->_nextSibling:Lorg/w3c/dom/Node;

    invoke-interface {v0, p1, p2}, Lorg/w3c/dom/Node;->insertBefore(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object p1

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SAX2DOM;->_lastSibling:Lorg/w3c/dom/Node;

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SAX2DOM;->_document:Lorg/w3c/dom/Document;

    invoke-interface {p1, v1}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object p1

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SAX2DOM;->_lastSibling:Lorg/w3c/dom/Node;

    :cond_2
    :goto_0
    return-void
.end method

.method public comment([CII)V
    .locals 3

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SAX2DOM;->_nodeStk:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Node;

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SAX2DOM;->_document:Lorg/w3c/dom/Document;

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-interface {v1, v2}, Lorg/w3c/dom/Document;->createComment(Ljava/lang/String;)Lorg/w3c/dom/Comment;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SAX2DOM;->_root:Lorg/w3c/dom/Node;

    if-ne v0, p2, :cond_0

    iget-object p2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SAX2DOM;->_nextSibling:Lorg/w3c/dom/Node;

    if-eqz p2, :cond_0

    invoke-interface {v0, p1, p2}, Lorg/w3c/dom/Node;->insertBefore(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto :goto_0

    :cond_0
    invoke-interface {v0, p1}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :goto_0
    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SAX2DOM;->_lastSibling:Lorg/w3c/dom/Node;

    :cond_1
    return-void
.end method

.method public endCDATA()V
    .locals 0

    return-void
.end method

.method public endDTD()V
    .locals 0

    return-void
.end method

.method public endDocument()V
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SAX2DOM;->_nodeStk:Ljava/util/Stack;

    invoke-virtual {p0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iget-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SAX2DOM;->_nodeStk:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SAX2DOM;->_lastSibling:Lorg/w3c/dom/Node;

    return-void
.end method

.method public endEntity(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public endPrefixMapping(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public getDOM()Lorg/w3c/dom/Node;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SAX2DOM;->_root:Lorg/w3c/dom/Node;

    return-object p0
.end method

.method public ignorableWhitespace([CII)V
    .locals 0

    return-void
.end method

.method public processingInstruction(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SAX2DOM;->_nodeStk:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Node;

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SAX2DOM;->_document:Lorg/w3c/dom/Document;

    invoke-interface {v1, p1, p2}, Lorg/w3c/dom/Document;->createProcessingInstruction(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/ProcessingInstruction;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SAX2DOM;->_root:Lorg/w3c/dom/Node;

    if-ne v0, p2, :cond_0

    iget-object p2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SAX2DOM;->_nextSibling:Lorg/w3c/dom/Node;

    if-eqz p2, :cond_0

    invoke-interface {v0, p1, p2}, Lorg/w3c/dom/Node;->insertBefore(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto :goto_0

    :cond_0
    invoke-interface {v0, p1}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :goto_0
    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SAX2DOM;->_lastSibling:Lorg/w3c/dom/Node;

    :cond_1
    return-void
.end method

.method public setDocumentLocator(Lorg/xml/sax/Locator;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SAX2DOM;->locator:Lorg/xml/sax/Locator;

    return-void
.end method

.method public skippedEntity(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public startCDATA()V
    .locals 0

    return-void
.end method

.method public startDTD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    return-void
.end method

.method public startDocument()V
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SAX2DOM;->_nodeStk:Ljava/util/Stack;

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SAX2DOM;->_root:Lorg/w3c/dom/Node;

    invoke-virtual {v0, p0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 6

    iget-boolean p2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SAX2DOM;->needToSetDocumentInfo:Z

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    invoke-direct {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SAX2DOM;->setDocumentInfo()V

    iput-boolean v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SAX2DOM;->needToSetDocumentInfo:Z

    :cond_0
    iget-object p2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SAX2DOM;->_document:Lorg/w3c/dom/Document;

    invoke-interface {p2, p1, p3}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p1

    iget-object p2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SAX2DOM;->_namespaceDecls:Ljava/util/Vector;

    const-string p3, ""

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Ljava/util/Vector;->size()I

    move-result p2

    move v1, v0

    :goto_0
    if-ge v1, p2, :cond_3

    iget-object v2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SAX2DOM;->_namespaceDecls:Ljava/util/Vector;

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "http://www.w3.org/2000/xmlns/"

    if-eqz v1, :cond_2

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "xmlns:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SAX2DOM;->_namespaceDecls:Ljava/util/Vector;

    invoke-virtual {v4, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {p1, v2, v1, v4}, Lorg/w3c/dom/Element;->setAttributeNS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SAX2DOM;->_namespaceDecls:Ljava/util/Vector;

    invoke-virtual {v1, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v4, "xmlns"

    invoke-interface {p1, v2, v4, v1}, Lorg/w3c/dom/Element;->setAttributeNS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    add-int/lit8 v1, v3, 0x1

    goto :goto_0

    :cond_3
    iget-object p2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SAX2DOM;->_namespaceDecls:Ljava/util/Vector;

    invoke-virtual {p2}, Ljava/util/Vector;->clear()V

    :cond_4
    invoke-interface {p4}, Lorg/xml/sax/Attributes;->getLength()I

    move-result p2

    :goto_3
    if-ge v0, p2, :cond_7

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getURI(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "ID"

    const/4 v5, 0x1

    if-eqz v3, :cond_5

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getType(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {p1, v1, v5}, Lorg/w3c/dom/Element;->setIdAttribute(Ljava/lang/String;Z)V

    goto :goto_4

    :cond_5
    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v2, v1, v3}, Lorg/w3c/dom/Element;->setAttributeNS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getType(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v1, v5}, Lorg/w3c/dom/Element;->setIdAttributeNS(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_6
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_7
    iget-object p2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SAX2DOM;->_nodeStk:Ljava/util/Stack;

    invoke-virtual {p2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/w3c/dom/Node;

    iget-object p3, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SAX2DOM;->_root:Lorg/w3c/dom/Node;

    if-ne p2, p3, :cond_8

    iget-object p3, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SAX2DOM;->_nextSibling:Lorg/w3c/dom/Node;

    if-eqz p3, :cond_8

    invoke-interface {p2, p1, p3}, Lorg/w3c/dom/Node;->insertBefore(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto :goto_5

    :cond_8
    invoke-interface {p2, p1}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :goto_5
    iget-object p2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SAX2DOM;->_nodeStk:Ljava/util/Stack;

    invoke-virtual {p2, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SAX2DOM;->_lastSibling:Lorg/w3c/dom/Node;

    return-void
.end method

.method public startEntity(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SAX2DOM;->_namespaceDecls:Ljava/util/Vector;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/Vector;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SAX2DOM;->_namespaceDecls:Ljava/util/Vector;

    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SAX2DOM;->_namespaceDecls:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SAX2DOM;->_namespaceDecls:Ljava/util/Vector;

    invoke-virtual {p0, p2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method
