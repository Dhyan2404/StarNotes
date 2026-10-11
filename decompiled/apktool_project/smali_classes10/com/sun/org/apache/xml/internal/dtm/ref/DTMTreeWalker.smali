.class public Lcom/sun/org/apache/xml/internal/dtm/ref/DTMTreeWalker;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private m_contentHandler:Lorg/xml/sax/ContentHandler;

.field protected m_dtm:Lcom/sun/org/apache/xml/internal/dtm/DTM;

.field nextIsRaw:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMTreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMTreeWalker;->nextIsRaw:Z

    return-void
.end method

.method public constructor <init>(Lorg/xml/sax/ContentHandler;Lcom/sun/org/apache/xml/internal/dtm/DTM;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMTreeWalker;->nextIsRaw:Z

    .line 6
    iput-object p1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMTreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    .line 7
    iput-object p2, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMTreeWalker;->m_dtm:Lcom/sun/org/apache/xml/internal/dtm/DTM;

    return-void
.end method

.method private final dispatachChars(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMTreeWalker;->m_dtm:Lcom/sun/org/apache/xml/internal/dtm/DTM;

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMTreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    const/4 v1, 0x0

    invoke-interface {v0, p1, p0, v1}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->dispatchCharactersEvents(ILorg/xml/sax/ContentHandler;Z)V

    return-void
.end method


# virtual methods
.method public endNode(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMTreeWalker;->m_dtm:Lcom/sun/org/apache/xml/internal/dtm/DTM;

    invoke-interface {v0, p1}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->getNodeType(I)S

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    const/16 p1, 0x9

    if-eq v0, p1, :cond_0

    goto :goto_1

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMTreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {p0}, Lorg/xml/sax/ContentHandler;->endDocument()V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMTreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    instance-of v1, v0, Lorg/xml/sax/ext/LexicalHandler;

    if-eqz v1, :cond_4

    check-cast v0, Lorg/xml/sax/ext/LexicalHandler;

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMTreeWalker;->m_dtm:Lcom/sun/org/apache/xml/internal/dtm/DTM;

    invoke-interface {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->getNodeName(I)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lorg/xml/sax/ext/LexicalHandler;->endEntity(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMTreeWalker;->m_dtm:Lcom/sun/org/apache/xml/internal/dtm/DTM;

    invoke-interface {v0, p1}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->getNamespaceURI(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    const-string v0, ""

    :cond_3
    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMTreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    iget-object v3, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMTreeWalker;->m_dtm:Lcom/sun/org/apache/xml/internal/dtm/DTM;

    invoke-interface {v3, p1}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->getLocalName(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMTreeWalker;->m_dtm:Lcom/sun/org/apache/xml/internal/dtm/DTM;

    invoke-interface {v4, p1}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->getNodeName(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v0, v3, v4}, Lorg/xml/sax/ContentHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMTreeWalker;->m_dtm:Lcom/sun/org/apache/xml/internal/dtm/DTM;

    invoke-interface {v0, p1, v1}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->getFirstNamespaceNode(IZ)I

    move-result v0

    :goto_0
    const/4 v2, -0x1

    if-eq v2, v0, :cond_4

    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMTreeWalker;->m_dtm:Lcom/sun/org/apache/xml/internal/dtm/DTM;

    invoke-interface {v2, v0}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->getNodeNameX(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMTreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v3, v2}, Lorg/xml/sax/ContentHandler;->endPrefixMapping(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMTreeWalker;->m_dtm:Lcom/sun/org/apache/xml/internal/dtm/DTM;

    invoke-interface {v2, p1, v0, v1}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->getNextNamespaceNode(IIZ)I

    move-result v0

    goto :goto_0

    :cond_4
    :goto_1
    return-void
.end method

.method public getcontentHandler()Lorg/xml/sax/ContentHandler;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMTreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    return-object p0
.end method

.method public setDTM(Lcom/sun/org/apache/xml/internal/dtm/DTM;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMTreeWalker;->m_dtm:Lcom/sun/org/apache/xml/internal/dtm/DTM;

    return-void
.end method

.method public setcontentHandler(Lorg/xml/sax/ContentHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMTreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    return-void
.end method

.method public startNode(I)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMTreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    instance-of v0, v0, Lcom/sun/org/apache/xml/internal/utils/NodeConsumer;

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMTreeWalker;->m_dtm:Lcom/sun/org/apache/xml/internal/dtm/DTM;

    invoke-interface {v0, p1}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->getNodeType(I)S

    move-result v0

    const-string v1, ""

    const/4 v2, 0x1

    if-eq v0, v2, :cond_a

    const/4 v3, 0x3

    if-eq v0, v3, :cond_8

    const/4 v1, 0x4

    if-eq v0, v1, :cond_5

    const/4 v1, 0x5

    if-eq v0, v1, :cond_4

    const/4 v1, 0x7

    if-eq v0, v1, :cond_2

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    const/16 p1, 0x9

    if-eq v0, p1, :cond_0

    goto/16 :goto_4

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMTreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {p0}, Lorg/xml/sax/ContentHandler;->startDocument()V

    goto/16 :goto_4

    :cond_1
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMTreeWalker;->m_dtm:Lcom/sun/org/apache/xml/internal/dtm/DTM;

    invoke-interface {v0, p1}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->getStringValue(I)Lcom/sun/org/apache/xml/internal/utils/XMLString;

    move-result-object p1

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMTreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    instance-of v0, p0, Lorg/xml/sax/ext/LexicalHandler;

    if-eqz v0, :cond_e

    check-cast p0, Lorg/xml/sax/ext/LexicalHandler;

    invoke-interface {p1, p0}, Lcom/sun/org/apache/xml/internal/utils/XMLString;->dispatchAsComment(Lorg/xml/sax/ext/LexicalHandler;)V

    goto/16 :goto_4

    :cond_2
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMTreeWalker;->m_dtm:Lcom/sun/org/apache/xml/internal/dtm/DTM;

    invoke-interface {v0, p1}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->getNodeName(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "xslt-next-is-raw"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iput-boolean v2, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMTreeWalker;->nextIsRaw:Z

    goto/16 :goto_4

    :cond_3
    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMTreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMTreeWalker;->m_dtm:Lcom/sun/org/apache/xml/internal/dtm/DTM;

    invoke-interface {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->getNodeValue(I)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v1, v0, p0}, Lorg/xml/sax/ContentHandler;->processingInstruction(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_4
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMTreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    instance-of v1, v0, Lorg/xml/sax/ext/LexicalHandler;

    if-eqz v1, :cond_e

    check-cast v0, Lorg/xml/sax/ext/LexicalHandler;

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMTreeWalker;->m_dtm:Lcom/sun/org/apache/xml/internal/dtm/DTM;

    invoke-interface {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->getNodeName(I)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lorg/xml/sax/ext/LexicalHandler;->startEntity(Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_5
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMTreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    instance-of v1, v0, Lorg/xml/sax/ext/LexicalHandler;

    if-eqz v1, :cond_6

    check-cast v0, Lorg/xml/sax/ext/LexicalHandler;

    goto :goto_0

    :cond_6
    const/4 v0, 0x0

    :goto_0
    if-eqz v1, :cond_7

    invoke-interface {v0}, Lorg/xml/sax/ext/LexicalHandler;->startCDATA()V

    :cond_7
    invoke-direct {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMTreeWalker;->dispatachChars(I)V

    if-eqz v1, :cond_e

    invoke-interface {v0}, Lorg/xml/sax/ext/LexicalHandler;->endCDATA()V

    goto/16 :goto_4

    :cond_8
    iget-boolean v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMTreeWalker;->nextIsRaw:Z

    if-eqz v0, :cond_9

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMTreeWalker;->nextIsRaw:Z

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMTreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    const-string v2, "javax.xml.transform.disable-output-escaping"

    invoke-interface {v0, v2, v1}, Lorg/xml/sax/ContentHandler;->processingInstruction(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMTreeWalker;->dispatachChars(I)V

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMTreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    const-string p1, "javax.xml.transform.enable-output-escaping"

    invoke-interface {p0, p1, v1}, Lorg/xml/sax/ContentHandler;->processingInstruction(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_9
    invoke-direct {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMTreeWalker;->dispatachChars(I)V

    goto :goto_4

    :cond_a
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMTreeWalker;->m_dtm:Lcom/sun/org/apache/xml/internal/dtm/DTM;

    invoke-interface {v0, p1, v2}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->getFirstNamespaceNode(IZ)I

    move-result v3

    :goto_1
    const/4 v4, -0x1

    if-eq v4, v3, :cond_b

    invoke-interface {v0, v3}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->getNodeNameX(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMTreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v0, v3}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->getNodeValue(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v4, v6}, Lorg/xml/sax/ContentHandler;->startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, p1, v3, v2}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->getNextNamespaceNode(IIZ)I

    move-result v3

    goto :goto_1

    :cond_b
    invoke-interface {v0, p1}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->getNamespaceURI(I)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_c

    goto :goto_2

    :cond_c
    move-object v1, v2

    :goto_2
    new-instance v2, Lorg/xml/sax/helpers/AttributesImpl;

    invoke-direct {v2}, Lorg/xml/sax/helpers/AttributesImpl;-><init>()V

    invoke-interface {v0, p1}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->getFirstAttribute(I)I

    move-result v3

    :goto_3
    if-eq v3, v4, :cond_d

    invoke-interface {v0, v3}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->getNamespaceURI(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v3}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->getLocalName(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v3}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->getNodeName(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "CDATA"

    invoke-interface {v0, v3}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->getNodeValue(I)Ljava/lang/String;

    move-result-object v10

    move-object v5, v2

    invoke-virtual/range {v5 .. v10}, Lorg/xml/sax/helpers/AttributesImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v3}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->getNextAttribute(I)I

    move-result v3

    goto :goto_3

    :cond_d
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMTreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    iget-object v3, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMTreeWalker;->m_dtm:Lcom/sun/org/apache/xml/internal/dtm/DTM;

    invoke-interface {v3, p1}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->getLocalName(I)Ljava/lang/String;

    move-result-object v3

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMTreeWalker;->m_dtm:Lcom/sun/org/apache/xml/internal/dtm/DTM;

    invoke-interface {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->getNodeName(I)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, v1, v3, p0, v2}, Lorg/xml/sax/ContentHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    :cond_e
    :goto_4
    return-void
.end method

.method public traverse(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    move v0, p1

    :goto_0
    const/4 v1, -0x1

    if-eq v1, v0, :cond_5

    .line 1
    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMTreeWalker;->startNode(I)V

    .line 2
    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMTreeWalker;->m_dtm:Lcom/sun/org/apache/xml/internal/dtm/DTM;

    invoke-interface {v2, v0}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->getFirstChild(I)I

    move-result v2

    :cond_0
    if-ne v1, v2, :cond_4

    .line 3
    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMTreeWalker;->endNode(I)V

    if-ne p1, v0, :cond_1

    goto :goto_1

    .line 4
    :cond_1
    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMTreeWalker;->m_dtm:Lcom/sun/org/apache/xml/internal/dtm/DTM;

    invoke-interface {v2, v0}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->getNextSibling(I)I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 5
    iget-object v3, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMTreeWalker;->m_dtm:Lcom/sun/org/apache/xml/internal/dtm/DTM;

    invoke-interface {v3, v0}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->getParent(I)I

    move-result v0

    if-eq v1, v0, :cond_2

    if-ne p1, v0, :cond_0

    :cond_2
    if-eq v1, v0, :cond_3

    .line 6
    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMTreeWalker;->endNode(I)V

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    :goto_1
    move v0, v2

    goto :goto_0

    :cond_5
    return-void
.end method

.method public traverse(II)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    :goto_0
    const/4 v0, -0x1

    if-eq v0, p1, :cond_4

    .line 7
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMTreeWalker;->startNode(I)V

    .line 8
    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMTreeWalker;->m_dtm:Lcom/sun/org/apache/xml/internal/dtm/DTM;

    invoke-interface {v1, p1}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->getFirstChild(I)I

    move-result v1

    :cond_0
    if-ne v0, v1, :cond_3

    .line 9
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMTreeWalker;->endNode(I)V

    if-eq v0, p2, :cond_1

    if-ne p2, p1, :cond_1

    goto :goto_1

    .line 10
    :cond_1
    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMTreeWalker;->m_dtm:Lcom/sun/org/apache/xml/internal/dtm/DTM;

    invoke-interface {v1, p1}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->getNextSibling(I)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 11
    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMTreeWalker;->m_dtm:Lcom/sun/org/apache/xml/internal/dtm/DTM;

    invoke-interface {v2, p1}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->getParent(I)I

    move-result p1

    if-eq v0, p1, :cond_2

    if-eq v0, p2, :cond_0

    if-ne p2, p1, :cond_0

    :cond_2
    move p1, v0

    goto :goto_0

    :cond_3
    :goto_1
    move p1, v1

    goto :goto_0

    :cond_4
    return-void
.end method
