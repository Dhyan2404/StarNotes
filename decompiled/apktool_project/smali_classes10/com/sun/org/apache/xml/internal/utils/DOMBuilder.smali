.class public Lcom/sun/org/apache/xml/internal/utils/DOMBuilder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/xml/sax/ContentHandler;
.implements Lorg/xml/sax/ext/LexicalHandler;


# instance fields
.field protected m_currentNode:Lorg/w3c/dom/Node;

.field public m_doc:Lorg/w3c/dom/Document;

.field public m_docFrag:Lorg/w3c/dom/DocumentFragment;

.field protected m_elemStack:Ljava/util/Stack;

.field protected m_inCData:Z

.field protected m_nextSibling:Lorg/w3c/dom/Node;

.field protected m_root:Lorg/w3c/dom/Node;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Document;)V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 22
    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/utils/DOMBuilder;->m_currentNode:Lorg/w3c/dom/Node;

    .line 23
    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/utils/DOMBuilder;->m_root:Lorg/w3c/dom/Node;

    .line 24
    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/utils/DOMBuilder;->m_nextSibling:Lorg/w3c/dom/Node;

    .line 25
    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/utils/DOMBuilder;->m_docFrag:Lorg/w3c/dom/DocumentFragment;

    .line 26
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/utils/DOMBuilder;->m_elemStack:Ljava/util/Stack;

    const/4 v0, 0x0

    .line 27
    iput-boolean v0, p0, Lcom/sun/org/apache/xml/internal/utils/DOMBuilder;->m_inCData:Z

    .line 28
    iput-object p1, p0, Lcom/sun/org/apache/xml/internal/utils/DOMBuilder;->m_doc:Lorg/w3c/dom/Document;

    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Document;Lorg/w3c/dom/DocumentFragment;)V
    .locals 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 13
    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/utils/DOMBuilder;->m_currentNode:Lorg/w3c/dom/Node;

    .line 14
    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/utils/DOMBuilder;->m_root:Lorg/w3c/dom/Node;

    .line 15
    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/utils/DOMBuilder;->m_nextSibling:Lorg/w3c/dom/Node;

    .line 16
    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/utils/DOMBuilder;->m_docFrag:Lorg/w3c/dom/DocumentFragment;

    .line 17
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/utils/DOMBuilder;->m_elemStack:Ljava/util/Stack;

    const/4 v0, 0x0

    .line 18
    iput-boolean v0, p0, Lcom/sun/org/apache/xml/internal/utils/DOMBuilder;->m_inCData:Z

    .line 19
    iput-object p1, p0, Lcom/sun/org/apache/xml/internal/utils/DOMBuilder;->m_doc:Lorg/w3c/dom/Document;

    .line 20
    iput-object p2, p0, Lcom/sun/org/apache/xml/internal/utils/DOMBuilder;->m_docFrag:Lorg/w3c/dom/DocumentFragment;

    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Document;Lorg/w3c/dom/Node;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/utils/DOMBuilder;->m_currentNode:Lorg/w3c/dom/Node;

    .line 3
    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/utils/DOMBuilder;->m_root:Lorg/w3c/dom/Node;

    .line 4
    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/utils/DOMBuilder;->m_nextSibling:Lorg/w3c/dom/Node;

    .line 5
    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/utils/DOMBuilder;->m_docFrag:Lorg/w3c/dom/DocumentFragment;

    .line 6
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/utils/DOMBuilder;->m_elemStack:Ljava/util/Stack;

    const/4 v1, 0x0

    .line 7
    iput-boolean v1, p0, Lcom/sun/org/apache/xml/internal/utils/DOMBuilder;->m_inCData:Z

    .line 8
    iput-object p1, p0, Lcom/sun/org/apache/xml/internal/utils/DOMBuilder;->m_doc:Lorg/w3c/dom/Document;

    .line 9
    iput-object p2, p0, Lcom/sun/org/apache/xml/internal/utils/DOMBuilder;->m_root:Lorg/w3c/dom/Node;

    iput-object p2, p0, Lcom/sun/org/apache/xml/internal/utils/DOMBuilder;->m_currentNode:Lorg/w3c/dom/Node;

    .line 10
    instance-of p0, p2, Lorg/w3c/dom/Element;

    if-eqz p0, :cond_0

    .line 11
    invoke-virtual {v0, p2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private isOutsideDocElem()Z
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/utils/DOMBuilder;->m_docFrag:Lorg/w3c/dom/DocumentFragment;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/utils/DOMBuilder;->m_elemStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/utils/DOMBuilder;->m_currentNode:Lorg/w3c/dom/Node;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result p0

    const/16 v0, 0x9

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public append(Lorg/w3c/dom/Node;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/utils/DOMBuilder;->m_currentNode:Lorg/w3c/dom/Node;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/utils/DOMBuilder;->m_root:Lorg/w3c/dom/Node;

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/utils/DOMBuilder;->m_nextSibling:Lorg/w3c/dom/Node;

    if-eqz p0, :cond_0

    invoke-interface {v0, p1, p0}, Lorg/w3c/dom/Node;->insertBefore(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto/16 :goto_3

    :cond_0
    invoke-interface {v0, p1}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto :goto_3

    :cond_1
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/utils/DOMBuilder;->m_docFrag:Lorg/w3c/dom/DocumentFragment;

    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/utils/DOMBuilder;->m_nextSibling:Lorg/w3c/dom/Node;

    if-eqz p0, :cond_2

    invoke-interface {v0, p1, p0}, Lorg/w3c/dom/Node;->insertBefore(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto :goto_3

    :cond_2
    invoke-interface {v0, p1}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto :goto_3

    :cond_3
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    if-ne v0, v1, :cond_6

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_4

    goto :goto_0

    :cond_4
    new-instance p0, Lorg/xml/sax/SAXException;

    const-string p1, "ER_CANT_OUTPUT_TEXT_BEFORE_DOC"

    invoke-static {p1, v2}, Lcom/sun/org/apache/xml/internal/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    :goto_0
    const/4 v0, 0x0

    goto :goto_2

    :cond_6
    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/utils/DOMBuilder;->m_doc:Lorg/w3c/dom/Document;

    invoke-interface {v0}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v0

    if-nez v0, :cond_7

    goto :goto_1

    :cond_7
    new-instance p0, Lorg/xml/sax/SAXException;

    const-string p1, "ER_CANT_HAVE_MORE_THAN_ONE_ROOT"

    invoke-static {p1, v2}, Lcom/sun/org/apache/xml/internal/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    :goto_1
    move v0, v1

    :goto_2
    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/utils/DOMBuilder;->m_nextSibling:Lorg/w3c/dom/Node;

    if-eqz v0, :cond_9

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/utils/DOMBuilder;->m_doc:Lorg/w3c/dom/Document;

    invoke-interface {p0, p1, v0}, Lorg/w3c/dom/Node;->insertBefore(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto :goto_3

    :cond_9
    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/utils/DOMBuilder;->m_doc:Lorg/w3c/dom/Document;

    invoke-interface {p0, p1}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_a
    :goto_3
    return-void
.end method

.method public cdata([CII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/sun/org/apache/xml/internal/utils/DOMBuilder;->isOutsideDocElem()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1, p2, p3}, Lcom/sun/org/apache/xml/internal/utils/XMLCharacterRecognizer;->isWhiteSpace([CII)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/utils/DOMBuilder;->m_currentNode:Lorg/w3c/dom/Node;

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getLastChild()Lorg/w3c/dom/Node;

    move-result-object p0

    check-cast p0, Lorg/w3c/dom/CDATASection;

    invoke-interface {p0, v0}, Lorg/w3c/dom/CharacterData;->appendData(Ljava/lang/String;)V

    return-void
.end method

.method public characters([CII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/sun/org/apache/xml/internal/utils/DOMBuilder;->isOutsideDocElem()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1, p2, p3}, Lcom/sun/org/apache/xml/internal/utils/XMLCharacterRecognizer;->isWhiteSpace([CII)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/sun/org/apache/xml/internal/utils/DOMBuilder;->m_inCData:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1, p2, p3}, Lcom/sun/org/apache/xml/internal/utils/DOMBuilder;->cdata([CII)V

    return-void

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    iget-object p1, p0, Lcom/sun/org/apache/xml/internal/utils/DOMBuilder;->m_currentNode:Lorg/w3c/dom/Node;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getLastChild()Lorg/w3c/dom/Node;

    move-result-object p1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_3

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result p2

    const/4 p3, 0x3

    if-ne p2, p3, :cond_3

    check-cast p1, Lorg/w3c/dom/Text;

    invoke-interface {p1, v0}, Lorg/w3c/dom/CharacterData;->appendData(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/sun/org/apache/xml/internal/utils/DOMBuilder;->m_doc:Lorg/w3c/dom/Document;

    invoke-interface {p1, v0}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/utils/DOMBuilder;->append(Lorg/w3c/dom/Node;)V

    :goto_1
    return-void
.end method

.method public charactersRaw([CII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/sun/org/apache/xml/internal/utils/DOMBuilder;->isOutsideDocElem()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1, p2, p3}, Lcom/sun/org/apache/xml/internal/utils/XMLCharacterRecognizer;->isWhiteSpace([CII)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    iget-object p1, p0, Lcom/sun/org/apache/xml/internal/utils/DOMBuilder;->m_doc:Lorg/w3c/dom/Document;

    const-string p2, "xslt-next-is-raw"

    const-string p3, "formatter-to-dom"

    invoke-interface {p1, p2, p3}, Lorg/w3c/dom/Document;->createProcessingInstruction(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/ProcessingInstruction;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/utils/DOMBuilder;->append(Lorg/w3c/dom/Node;)V

    iget-object p1, p0, Lcom/sun/org/apache/xml/internal/utils/DOMBuilder;->m_doc:Lorg/w3c/dom/Document;

    invoke-interface {p1, v0}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/utils/DOMBuilder;->append(Lorg/w3c/dom/Node;)V

    return-void
.end method

.method public comment([CII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/utils/DOMBuilder;->m_doc:Lorg/w3c/dom/Document;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->createComment(Ljava/lang/String;)Lorg/w3c/dom/Comment;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/utils/DOMBuilder;->append(Lorg/w3c/dom/Node;)V

    return-void
.end method

.method public endCDATA()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/org/apache/xml/internal/utils/DOMBuilder;->m_inCData:Z

    return-void
.end method

.method public endDTD()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    return-void
.end method

.method public endDocument()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object p1, p0, Lcom/sun/org/apache/xml/internal/utils/DOMBuilder;->m_elemStack:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    iget-object p1, p0, Lcom/sun/org/apache/xml/internal/utils/DOMBuilder;->m_elemStack:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/sun/org/apache/xml/internal/utils/DOMBuilder;->m_elemStack:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/w3c/dom/Node;

    :goto_0
    iput-object p1, p0, Lcom/sun/org/apache/xml/internal/utils/DOMBuilder;->m_currentNode:Lorg/w3c/dom/Node;

    return-void
.end method

.method public endEntity(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    return-void
.end method

.method public endPrefixMapping(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    return-void
.end method

.method public entityReference(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/utils/DOMBuilder;->m_doc:Lorg/w3c/dom/Document;

    invoke-interface {v0, p1}, Lorg/w3c/dom/Document;->createEntityReference(Ljava/lang/String;)Lorg/w3c/dom/EntityReference;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/utils/DOMBuilder;->append(Lorg/w3c/dom/Node;)V

    return-void
.end method

.method public getCurrentNode()Lorg/w3c/dom/Node;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/utils/DOMBuilder;->m_currentNode:Lorg/w3c/dom/Node;

    return-object p0
.end method

.method public getNextSibling()Lorg/w3c/dom/Node;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/utils/DOMBuilder;->m_nextSibling:Lorg/w3c/dom/Node;

    return-object p0
.end method

.method public getRootDocument()Lorg/w3c/dom/Node;
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/utils/DOMBuilder;->m_docFrag:Lorg/w3c/dom/DocumentFragment;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/utils/DOMBuilder;->m_doc:Lorg/w3c/dom/Document;

    :goto_0
    return-object v0
.end method

.method public getRootNode()Lorg/w3c/dom/Node;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/utils/DOMBuilder;->m_root:Lorg/w3c/dom/Node;

    return-object p0
.end method

.method public getWriter()Ljava/io/Writer;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public ignorableWhitespace([CII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/sun/org/apache/xml/internal/utils/DOMBuilder;->isOutsideDocElem()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    iget-object p1, p0, Lcom/sun/org/apache/xml/internal/utils/DOMBuilder;->m_doc:Lorg/w3c/dom/Document;

    invoke-interface {p1, v0}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/utils/DOMBuilder;->append(Lorg/w3c/dom/Node;)V

    return-void
.end method

.method public processingInstruction(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/utils/DOMBuilder;->m_doc:Lorg/w3c/dom/Document;

    invoke-interface {v0, p1, p2}, Lorg/w3c/dom/Document;->createProcessingInstruction(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/ProcessingInstruction;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/utils/DOMBuilder;->append(Lorg/w3c/dom/Node;)V

    return-void
.end method

.method public setDocumentLocator(Lorg/xml/sax/Locator;)V
    .locals 0

    return-void
.end method

.method public setIDAttribute(Ljava/lang/String;Lorg/w3c/dom/Element;)V
    .locals 0

    return-void
.end method

.method public setNextSibling(Lorg/w3c/dom/Node;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xml/internal/utils/DOMBuilder;->m_nextSibling:Lorg/w3c/dom/Node;

    return-void
.end method

.method public skippedEntity(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    return-void
.end method

.method public startCDATA()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sun/org/apache/xml/internal/utils/DOMBuilder;->m_inCData:Z

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/utils/DOMBuilder;->m_doc:Lorg/w3c/dom/Document;

    const-string v1, ""

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->createCDATASection(Ljava/lang/String;)Lorg/w3c/dom/CDATASection;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xml/internal/utils/DOMBuilder;->append(Lorg/w3c/dom/Node;)V

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
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/utils/DOMBuilder;->m_doc:Lorg/w3c/dom/Document;

    invoke-interface {v0, p1, p3}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p1

    goto :goto_1

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/sun/org/apache/xml/internal/utils/DOMBuilder;->m_doc:Lorg/w3c/dom/Document;

    invoke-interface {p1, p2, p3}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p1

    :goto_1
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/utils/DOMBuilder;->append(Lorg/w3c/dom/Node;)V

    :try_start_0
    invoke-interface {p4}, Lorg/xml/sax/Attributes;->getLength()I

    move-result p3

    if-eqz p3, :cond_6

    const/4 v0, 0x0

    :goto_2
    if-ge v0, p3, :cond_6

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getType(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ID"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, p1}, Lcom/sun/org/apache/xml/internal/utils/DOMBuilder;->setIDAttribute(Ljava/lang/String;Lorg/w3c/dom/Element;)V

    :cond_2
    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getURI(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    move-object v1, p2

    :cond_3
    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "xmlns:"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "xmlns"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_4
    const-string v1, "http://www.w3.org/2000/xmlns/"

    :cond_5
    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v1, v2, v3}, Lorg/w3c/dom/Element;->setAttributeNS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_6
    iget-object p2, p0, Lcom/sun/org/apache/xml/internal/utils/DOMBuilder;->m_elemStack:Ljava/util/Stack;

    invoke-virtual {p2, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/sun/org/apache/xml/internal/utils/DOMBuilder;->m_currentNode:Lorg/w3c/dom/Node;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Lorg/xml/sax/SAXException;

    invoke-direct {p1, p0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw p1
.end method

.method public startEntity(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    return-void
.end method

.method public startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    return-void
.end method
