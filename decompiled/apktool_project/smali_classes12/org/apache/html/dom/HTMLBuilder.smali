.class public Lorg/apache/html/dom/HTMLBuilder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/xml/sax/DocumentHandler;


# instance fields
.field protected _current:Lorg/apache/xerces/dom/ElementImpl;

.field protected _document:Lorg/apache/html/dom/HTMLDocumentImpl;

.field protected _preRootNodes:Ljava/util/Vector;

.field public e:Z

.field public f:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/html/dom/HTMLBuilder;->e:Z

    iput-boolean v0, p0, Lorg/apache/html/dom/HTMLBuilder;->f:Z

    return-void
.end method


# virtual methods
.method public characters(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/html/dom/HTMLBuilder;->_current:Lorg/apache/xerces/dom/ElementImpl;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/apache/html/dom/HTMLBuilder;->_document:Lorg/apache/html/dom/HTMLDocumentImpl;

    invoke-virtual {p0, p1}, Lorg/apache/xerces/dom/CoreDocumentImpl;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/apache/xerces/dom/NodeImpl;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    return-void

    :cond_0
    new-instance p0, Lorg/xml/sax/SAXException;

    const-string p1, "HTM009 State error: character data found outside of root element."

    invoke-direct {p0, p1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public characters([CII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lorg/apache/html/dom/HTMLBuilder;->_current:Lorg/apache/xerces/dom/ElementImpl;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/apache/html/dom/HTMLBuilder;->_document:Lorg/apache/html/dom/HTMLDocumentImpl;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p0, v1}, Lorg/apache/xerces/dom/CoreDocumentImpl;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/apache/xerces/dom/NodeImpl;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    return-void

    :cond_0
    new-instance p0, Lorg/xml/sax/SAXException;

    const-string p1, "HTM010 State error: character data found outside of root element."

    invoke-direct {p0, p1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public endDocument()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/html/dom/HTMLBuilder;->_document:Lorg/apache/html/dom/HTMLDocumentImpl;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/html/dom/HTMLBuilder;->_current:Lorg/apache/xerces/dom/ElementImpl;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/html/dom/HTMLBuilder;->_current:Lorg/apache/xerces/dom/ElementImpl;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/html/dom/HTMLBuilder;->f:Z

    return-void

    :cond_0
    new-instance p0, Lorg/xml/sax/SAXException;

    const-string v0, "HTM003 State error: document ended before end of document element."

    invoke-direct {p0, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Lorg/xml/sax/SAXException;

    const-string v0, "HTM002 State error: document never started or missing document element."

    invoke-direct {p0, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public endElement(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/html/dom/HTMLBuilder;->_current:Lorg/apache/xerces/dom/ElementImpl;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/apache/xerces/dom/ElementImpl;->getNodeName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p0, Lorg/apache/html/dom/HTMLBuilder;->_current:Lorg/apache/xerces/dom/ElementImpl;

    invoke-virtual {p1}, Lorg/apache/xerces/dom/ChildNode;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object p1

    iget-object v0, p0, Lorg/apache/html/dom/HTMLBuilder;->_current:Lorg/apache/xerces/dom/ElementImpl;

    invoke-virtual {v0}, Lorg/apache/xerces/dom/ParentNode;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/apache/html/dom/HTMLBuilder;->_current:Lorg/apache/xerces/dom/ElementImpl;

    invoke-virtual {p1}, Lorg/apache/xerces/dom/ChildNode;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object p1

    check-cast p1, Lorg/apache/xerces/dom/ElementImpl;

    :goto_0
    iput-object p1, p0, Lorg/apache/html/dom/HTMLBuilder;->_current:Lorg/apache/xerces/dom/ElementImpl;

    return-void

    :cond_1
    new-instance p0, Lorg/xml/sax/SAXException;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "HTM008 State error: mismatch in closing tag name "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Lorg/xml/sax/SAXException;

    const-string p1, "HTM007 State error: endElement called with no current node."

    invoke-direct {p0, p1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getHTMLDocument()Lorg/w3c/dom/html/HTMLDocument;
    .locals 0

    iget-object p0, p0, Lorg/apache/html/dom/HTMLBuilder;->_document:Lorg/apache/html/dom/HTMLDocumentImpl;

    return-object p0
.end method

.method public ignorableWhitespace([CII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-boolean v0, p0, Lorg/apache/html/dom/HTMLBuilder;->e:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/html/dom/HTMLBuilder;->_current:Lorg/apache/xerces/dom/ElementImpl;

    iget-object p0, p0, Lorg/apache/html/dom/HTMLBuilder;->_document:Lorg/apache/html/dom/HTMLDocumentImpl;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p0, v1}, Lorg/apache/xerces/dom/CoreDocumentImpl;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/apache/xerces/dom/NodeImpl;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_0
    return-void
.end method

.method public processingInstruction(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/html/dom/HTMLBuilder;->_current:Lorg/apache/xerces/dom/ElementImpl;

    if-nez v0, :cond_1

    iget-object v1, p0, Lorg/apache/html/dom/HTMLBuilder;->_document:Lorg/apache/html/dom/HTMLDocumentImpl;

    if-nez v1, :cond_1

    iget-object v0, p0, Lorg/apache/html/dom/HTMLBuilder;->_preRootNodes:Ljava/util/Vector;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/html/dom/HTMLBuilder;->_preRootNodes:Ljava/util/Vector;

    :cond_0
    iget-object p0, p0, Lorg/apache/html/dom/HTMLBuilder;->_preRootNodes:Ljava/util/Vector;

    new-instance v0, Lorg/apache/xerces/dom/ProcessingInstructionImpl;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1, p2}, Lorg/apache/xerces/dom/ProcessingInstructionImpl;-><init>(Lorg/apache/xerces/dom/CoreDocumentImpl;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    if-nez v0, :cond_2

    iget-object v1, p0, Lorg/apache/html/dom/HTMLBuilder;->_document:Lorg/apache/html/dom/HTMLDocumentImpl;

    if-eqz v1, :cond_2

    invoke-virtual {v1, p1, p2}, Lorg/apache/xerces/dom/CoreDocumentImpl;->createProcessingInstruction(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/ProcessingInstruction;

    move-result-object p0

    invoke-virtual {v1, p0}, Lorg/apache/xerces/dom/NodeImpl;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lorg/apache/html/dom/HTMLBuilder;->_document:Lorg/apache/html/dom/HTMLDocumentImpl;

    invoke-virtual {p0, p1, p2}, Lorg/apache/xerces/dom/CoreDocumentImpl;->createProcessingInstruction(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/ProcessingInstruction;

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/apache/xerces/dom/NodeImpl;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :goto_0
    return-void
.end method

.method public setDocumentLocator(Lorg/xml/sax/Locator;)V
    .locals 0

    return-void
.end method

.method public startDocument()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-boolean v0, p0, Lorg/apache/html/dom/HTMLBuilder;->f:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/html/dom/HTMLBuilder;->_document:Lorg/apache/html/dom/HTMLDocumentImpl;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/html/dom/HTMLBuilder;->f:Z

    return-void

    :cond_0
    new-instance p0, Lorg/xml/sax/SAXException;

    const-string v0, "HTM001 State error: startDocument fired twice on one builder."

    invoke-direct {p0, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public declared-synchronized startElement(Ljava/lang/String;Lorg/xml/sax/AttributeList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    monitor-enter p0

    if-eqz p1, :cond_7

    :try_start_0
    iget-object v0, p0, Lorg/apache/html/dom/HTMLBuilder;->_document:Lorg/apache/html/dom/HTMLDocumentImpl;

    if-nez v0, :cond_2

    new-instance p1, Lorg/apache/html/dom/HTMLDocumentImpl;

    invoke-direct {p1}, Lorg/apache/html/dom/HTMLDocumentImpl;-><init>()V

    iput-object p1, p0, Lorg/apache/html/dom/HTMLBuilder;->_document:Lorg/apache/html/dom/HTMLDocumentImpl;

    invoke-virtual {p1}, Lorg/apache/html/dom/HTMLDocumentImpl;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object p1

    check-cast p1, Lorg/apache/xerces/dom/ElementImpl;

    iput-object p1, p0, Lorg/apache/html/dom/HTMLBuilder;->_current:Lorg/apache/xerces/dom/ElementImpl;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lorg/apache/html/dom/HTMLBuilder;->_preRootNodes:Ljava/util/Vector;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    :goto_0
    add-int/lit8 v1, v0, -0x1

    if-gtz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/html/dom/HTMLBuilder;->_preRootNodes:Ljava/util/Vector;

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lorg/apache/html/dom/HTMLBuilder;->_document:Lorg/apache/html/dom/HTMLDocumentImpl;

    iget-object v2, p0, Lorg/apache/html/dom/HTMLBuilder;->_preRootNodes:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/Node;

    invoke-virtual {v0, v2, p1}, Lorg/apache/xerces/dom/CoreDocumentImpl;->insertBefore(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move v0, v1

    goto :goto_0

    :cond_1
    new-instance p1, Lorg/xml/sax/SAXException;

    const-string p2, "HTM005 State error: Document.getDocumentElement returns null."

    invoke-direct {p1, p2}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object v1, p0, Lorg/apache/html/dom/HTMLBuilder;->_current:Lorg/apache/xerces/dom/ElementImpl;

    if-eqz v1, :cond_6

    invoke-virtual {v0, p1}, Lorg/apache/html/dom/HTMLDocumentImpl;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p1

    check-cast p1, Lorg/apache/xerces/dom/ElementImpl;

    iget-object v0, p0, Lorg/apache/html/dom/HTMLBuilder;->_current:Lorg/apache/xerces/dom/ElementImpl;

    invoke-virtual {v0, p1}, Lorg/apache/xerces/dom/NodeImpl;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    iput-object p1, p0, Lorg/apache/html/dom/HTMLBuilder;->_current:Lorg/apache/xerces/dom/ElementImpl;

    :cond_3
    :goto_1
    if-eqz p2, :cond_5

    const/4 v0, 0x0

    :goto_2
    invoke-interface {p2}, Lorg/xml/sax/AttributeList;->getLength()I

    move-result v1

    if-lt v0, v1, :cond_4

    goto :goto_3

    :cond_4
    invoke-interface {p2, v0}, Lorg/xml/sax/AttributeList;->getName(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0}, Lorg/xml/sax/AttributeList;->getValue(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lorg/apache/xerces/dom/ElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    :goto_3
    monitor-exit p0

    return-void

    :cond_6
    :try_start_1
    new-instance p1, Lorg/xml/sax/SAXException;

    const-string p2, "HTM006 State error: startElement called after end of document element."

    invoke-direct {p1, p2}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    goto :goto_4

    :cond_7
    new-instance p1, Lorg/xml/sax/SAXException;

    const-string p2, "HTM004 Argument \'tagName\' is null."

    invoke-direct {p1, p2}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_4
    monitor-exit p0

    throw p1
.end method
