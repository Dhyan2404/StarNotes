.class public Lcom/sun/org/apache/xalan/internal/transformer/TreeWalker2Result;
.super Lcom/sun/org/apache/xml/internal/dtm/ref/DTMTreeWalker;
.source "SourceFile"


# instance fields
.field m_handler:Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;

.field m_startNode:I

.field m_transformer:Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;


# direct methods
.method public constructor <init>(Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMTreeWalker;-><init>(Lorg/xml/sax/ContentHandler;Lcom/sun/org/apache/xml/internal/dtm/DTM;)V

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/transformer/TreeWalker2Result;->m_transformer:Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;

    iput-object p2, p0, Lcom/sun/org/apache/xalan/internal/transformer/TreeWalker2Result;->m_handler:Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;

    return-void
.end method


# virtual methods
.method public endNode(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMTreeWalker;->endNode(I)V

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMTreeWalker;->m_dtm:Lcom/sun/org/apache/xml/internal/dtm/DTM;

    invoke-interface {v0, p1}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->getNodeType(I)S

    move-result p1

    const/4 v0, 0x1

    if-ne v0, p1, :cond_0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/transformer/TreeWalker2Result;->m_transformer:Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getXPathContext()Lcom/sun/org/apache/xpath/internal/XPathContext;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/XPathContext;->popCurrentNode()V

    :cond_0
    return-void
.end method

.method public startNode(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/transformer/TreeWalker2Result;->m_transformer:Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;

    invoke-virtual {v0}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getXPathContext()Lcom/sun/org/apache/xpath/internal/XPathContext;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMTreeWalker;->m_dtm:Lcom/sun/org/apache/xml/internal/dtm/DTM;

    invoke-interface {v1, p1}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->getNodeType(I)S

    move-result v1

    const/4 v2, 0x1

    if-ne v2, v1, :cond_2

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xpath/internal/XPathContext;->pushCurrentNode(I)V

    iget v0, p0, Lcom/sun/org/apache/xalan/internal/transformer/TreeWalker2Result;->m_startNode:I

    if-eq v0, p1, :cond_0

    invoke-super {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMTreeWalker;->startNode(I)V

    goto :goto_2

    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMTreeWalker;->m_dtm:Lcom/sun/org/apache/xml/internal/dtm/DTM;

    invoke-interface {v0, p1}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->getNodeName(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMTreeWalker;->m_dtm:Lcom/sun/org/apache/xml/internal/dtm/DTM;

    invoke-interface {v1, p1}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->getLocalName(I)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMTreeWalker;->m_dtm:Lcom/sun/org/apache/xml/internal/dtm/DTM;

    invoke-interface {v3, p1}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->getNamespaceURI(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/sun/org/apache/xalan/internal/transformer/TreeWalker2Result;->m_handler:Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;

    invoke-interface {v4, v3, v1, v0}, Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMTreeWalker;->m_dtm:Lcom/sun/org/apache/xml/internal/dtm/DTM;

    invoke-interface {v0, p1, v2}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->getFirstNamespaceNode(IZ)I

    move-result v1

    :goto_0
    const/4 v3, -0x1

    if-eq v3, v1, :cond_1

    iget-object v3, p0, Lcom/sun/org/apache/xalan/internal/transformer/TreeWalker2Result;->m_handler:Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;

    invoke-static {v3, v0, v1}, Lcom/sun/org/apache/xalan/internal/serialize/SerializerUtils;->ensureNamespaceDeclDeclared(Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;Lcom/sun/org/apache/xml/internal/dtm/DTM;I)V

    invoke-interface {v0, p1, v1, v2}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->getNextNamespaceNode(IIZ)I

    move-result v1

    goto :goto_0

    :cond_1
    invoke-interface {v0, p1}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->getFirstAttribute(I)I

    move-result p1

    :goto_1
    if-eq v3, p1, :cond_3

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/transformer/TreeWalker2Result;->m_handler:Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;

    invoke-static {v1, p1}, Lcom/sun/org/apache/xalan/internal/serialize/SerializerUtils;->addAttribute(Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;I)V

    invoke-interface {v0, p1}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->getNextAttribute(I)I

    move-result p1

    goto :goto_1

    :cond_2
    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xpath/internal/XPathContext;->pushCurrentNode(I)V

    invoke-super {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMTreeWalker;->startNode(I)V

    invoke-virtual {v0}, Lcom/sun/org/apache/xpath/internal/XPathContext;->popCurrentNode()V
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_2
    return-void

    :catch_0
    move-exception p0

    new-instance p1, Lorg/xml/sax/SAXException;

    invoke-direct {p1, p0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw p1
.end method

.method public traverse(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/transformer/TreeWalker2Result;->m_transformer:Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;

    invoke-virtual {v0}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getXPathContext()Lcom/sun/org/apache/xpath/internal/XPathContext;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xpath/internal/XPathContext;->getDTM(I)Lcom/sun/org/apache/xml/internal/dtm/DTM;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMTreeWalker;->m_dtm:Lcom/sun/org/apache/xml/internal/dtm/DTM;

    iput p1, p0, Lcom/sun/org/apache/xalan/internal/transformer/TreeWalker2Result;->m_startNode:I

    invoke-super {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMTreeWalker;->traverse(I)V

    return-void
.end method
