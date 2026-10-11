.class public Lcom/sun/org/apache/xalan/internal/transformer/XalanTransformState;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sun/org/apache/xalan/internal/transformer/TransformState;


# instance fields
.field m_contextNodeList:Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;

.field m_currentElement:Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;

.field m_currentNode:Lorg/w3c/dom/Node;

.field m_currentNodeHandle:I

.field m_currentTemplate:Lcom/sun/org/apache/xalan/internal/templates/ElemTemplate;

.field m_elemPending:Z

.field m_matchedNode:I

.field m_matchedTemplate:Lcom/sun/org/apache/xalan/internal/templates/ElemTemplate;

.field m_node:Lorg/w3c/dom/Node;

.field m_transformer:Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/transformer/XalanTransformState;->m_node:Lorg/w3c/dom/Node;

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/transformer/XalanTransformState;->m_currentElement:Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/transformer/XalanTransformState;->m_currentTemplate:Lcom/sun/org/apache/xalan/internal/templates/ElemTemplate;

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/transformer/XalanTransformState;->m_matchedTemplate:Lcom/sun/org/apache/xalan/internal/templates/ElemTemplate;

    const/4 v1, -0x1

    iput v1, p0, Lcom/sun/org/apache/xalan/internal/transformer/XalanTransformState;->m_currentNodeHandle:I

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/transformer/XalanTransformState;->m_currentNode:Lorg/w3c/dom/Node;

    iput v1, p0, Lcom/sun/org/apache/xalan/internal/transformer/XalanTransformState;->m_matchedNode:I

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/transformer/XalanTransformState;->m_contextNodeList:Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sun/org/apache/xalan/internal/transformer/XalanTransformState;->m_elemPending:Z

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/transformer/XalanTransformState;->m_transformer:Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;

    return-void
.end method


# virtual methods
.method public getContextNodeList()Lorg/w3c/dom/traversal/NodeIterator;
    .locals 1

    iget-boolean v0, p0, Lcom/sun/org/apache/xalan/internal/transformer/XalanTransformState;->m_elemPending:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMNodeIterator;

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/transformer/XalanTransformState;->m_contextNodeList:Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;

    invoke-direct {v0, p0}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMNodeIterator;-><init>(Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;)V

    return-object v0

    :cond_0
    new-instance v0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMNodeIterator;

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/transformer/XalanTransformState;->m_transformer:Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getContextNodeList()Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMNodeIterator;-><init>(Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;)V

    return-object v0
.end method

.method public getCurrentElement()Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;
    .locals 1

    iget-boolean v0, p0, Lcom/sun/org/apache/xalan/internal/transformer/XalanTransformState;->m_elemPending:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/transformer/XalanTransformState;->m_currentElement:Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/transformer/XalanTransformState;->m_transformer:Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getCurrentElement()Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;

    move-result-object p0

    return-object p0
.end method

.method public getCurrentNode()Lorg/w3c/dom/Node;
    .locals 2

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/transformer/XalanTransformState;->m_currentNode:Lorg/w3c/dom/Node;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/transformer/XalanTransformState;->m_transformer:Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;

    invoke-virtual {v0}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getXPathContext()Lcom/sun/org/apache/xpath/internal/XPathContext;

    move-result-object v0

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/transformer/XalanTransformState;->m_transformer:Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;

    invoke-virtual {v1}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getCurrentNode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xpath/internal/XPathContext;->getDTM(I)Lcom/sun/org/apache/xml/internal/dtm/DTM;

    move-result-object v0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/transformer/XalanTransformState;->m_transformer:Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getCurrentNode()I

    move-result p0

    invoke-interface {v0, p0}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->getNode(I)Lorg/w3c/dom/Node;

    move-result-object p0

    return-object p0
.end method

.method public getCurrentTemplate()Lcom/sun/org/apache/xalan/internal/templates/ElemTemplate;
    .locals 1

    iget-boolean v0, p0, Lcom/sun/org/apache/xalan/internal/transformer/XalanTransformState;->m_elemPending:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/transformer/XalanTransformState;->m_currentTemplate:Lcom/sun/org/apache/xalan/internal/templates/ElemTemplate;

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/transformer/XalanTransformState;->m_transformer:Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getCurrentTemplate()Lcom/sun/org/apache/xalan/internal/templates/ElemTemplate;

    move-result-object p0

    return-object p0
.end method

.method public getMatchedNode()Lorg/w3c/dom/Node;
    .locals 2

    iget-boolean v0, p0, Lcom/sun/org/apache/xalan/internal/transformer/XalanTransformState;->m_elemPending:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/transformer/XalanTransformState;->m_transformer:Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;

    invoke-virtual {v0}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getXPathContext()Lcom/sun/org/apache/xpath/internal/XPathContext;

    move-result-object v0

    iget v1, p0, Lcom/sun/org/apache/xalan/internal/transformer/XalanTransformState;->m_matchedNode:I

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xpath/internal/XPathContext;->getDTM(I)Lcom/sun/org/apache/xml/internal/dtm/DTM;

    move-result-object v0

    iget p0, p0, Lcom/sun/org/apache/xalan/internal/transformer/XalanTransformState;->m_matchedNode:I

    invoke-interface {v0, p0}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->getNode(I)Lorg/w3c/dom/Node;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/transformer/XalanTransformState;->m_transformer:Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;

    invoke-virtual {v0}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getXPathContext()Lcom/sun/org/apache/xpath/internal/XPathContext;

    move-result-object v0

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/transformer/XalanTransformState;->m_transformer:Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;

    invoke-virtual {v1}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getMatchedNode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xpath/internal/XPathContext;->getDTM(I)Lcom/sun/org/apache/xml/internal/dtm/DTM;

    move-result-object v0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/transformer/XalanTransformState;->m_transformer:Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getMatchedNode()I

    move-result p0

    invoke-interface {v0, p0}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->getNode(I)Lorg/w3c/dom/Node;

    move-result-object p0

    return-object p0
.end method

.method public getMatchedTemplate()Lcom/sun/org/apache/xalan/internal/templates/ElemTemplate;
    .locals 1

    iget-boolean v0, p0, Lcom/sun/org/apache/xalan/internal/transformer/XalanTransformState;->m_elemPending:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/transformer/XalanTransformState;->m_matchedTemplate:Lcom/sun/org/apache/xalan/internal/templates/ElemTemplate;

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/transformer/XalanTransformState;->m_transformer:Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getMatchedTemplate()Lcom/sun/org/apache/xalan/internal/templates/ElemTemplate;

    move-result-object p0

    return-object p0
.end method

.method public getTransformer()Ljavax/xml/transform/Transformer;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/transformer/XalanTransformState;->m_transformer:Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;

    return-object p0
.end method

.method public resetState(Ljavax/xml/transform/Transformer;)V
    .locals 1

    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/transformer/XalanTransformState;->m_transformer:Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getCurrentElement()Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;

    move-result-object p1

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/transformer/XalanTransformState;->m_currentElement:Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;

    iget-object p1, p0, Lcom/sun/org/apache/xalan/internal/transformer/XalanTransformState;->m_transformer:Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getCurrentTemplate()Lcom/sun/org/apache/xalan/internal/templates/ElemTemplate;

    move-result-object p1

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/transformer/XalanTransformState;->m_currentTemplate:Lcom/sun/org/apache/xalan/internal/templates/ElemTemplate;

    iget-object p1, p0, Lcom/sun/org/apache/xalan/internal/transformer/XalanTransformState;->m_transformer:Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getMatchedTemplate()Lcom/sun/org/apache/xalan/internal/templates/ElemTemplate;

    move-result-object p1

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/transformer/XalanTransformState;->m_matchedTemplate:Lcom/sun/org/apache/xalan/internal/templates/ElemTemplate;

    iget-object p1, p0, Lcom/sun/org/apache/xalan/internal/transformer/XalanTransformState;->m_transformer:Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getCurrentNode()I

    move-result p1

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/transformer/XalanTransformState;->m_transformer:Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;

    invoke-virtual {v0}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getXPathContext()Lcom/sun/org/apache/xpath/internal/XPathContext;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xpath/internal/XPathContext;->getDTM(I)Lcom/sun/org/apache/xml/internal/dtm/DTM;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->getNode(I)Lorg/w3c/dom/Node;

    move-result-object p1

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/transformer/XalanTransformState;->m_currentNode:Lorg/w3c/dom/Node;

    iget-object p1, p0, Lcom/sun/org/apache/xalan/internal/transformer/XalanTransformState;->m_transformer:Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getMatchedNode()I

    move-result p1

    iput p1, p0, Lcom/sun/org/apache/xalan/internal/transformer/XalanTransformState;->m_matchedNode:I

    iget-object p1, p0, Lcom/sun/org/apache/xalan/internal/transformer/XalanTransformState;->m_transformer:Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getContextNodeList()Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;

    move-result-object p1

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/transformer/XalanTransformState;->m_contextNodeList:Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;

    :cond_0
    return-void
.end method

.method public setCurrentNode(Lorg/w3c/dom/Node;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/transformer/XalanTransformState;->m_node:Lorg/w3c/dom/Node;

    return-void
.end method
