.class public Lcom/sun/org/apache/xalan/internal/templates/ElemWithParam;
.super Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;
.source "SourceFile"


# static fields
.field static final serialVersionUID:J = -0xedaaa5c88e4d871L


# instance fields
.field m_index:I

.field private m_qname:Lcom/sun/org/apache/xml/internal/utils/QName;

.field m_qnameID:I

.field private m_selectPattern:Lcom/sun/org/apache/xpath/internal/XPath;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemWithParam;->m_selectPattern:Lcom/sun/org/apache/xpath/internal/XPath;

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemWithParam;->m_qname:Lcom/sun/org/apache/xml/internal/utils/QName;

    return-void
.end method


# virtual methods
.method public appendChild(Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;)Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemWithParam;->m_selectPattern:Lcom/sun/org/apache/xpath/internal/XPath;

    if-eqz v0, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "xsl:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/templates/ElemWithParam;->getNodeName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "ER_CANT_HAVE_CONTENT_AND_SELECT"

    invoke-virtual {p0, v0, p1}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-super {p0, p1}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->appendChild(Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;)Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;

    move-result-object p0

    return-object p0
.end method

.method public callChildVisitors(Lcom/sun/org/apache/xalan/internal/templates/XSLTVisitor;Z)V
    .locals 2

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemWithParam;->m_selectPattern:Lcom/sun/org/apache/xpath/internal/XPath;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sun/org/apache/xpath/internal/XPath;->getExpression()Lcom/sun/org/apache/xpath/internal/Expression;

    move-result-object v0

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemWithParam;->m_selectPattern:Lcom/sun/org/apache/xpath/internal/XPath;

    invoke-interface {v0, v1, p1}, Lcom/sun/org/apache/xpath/internal/XPathVisitable;->callVisitors(Lcom/sun/org/apache/xpath/internal/ExpressionOwner;Lcom/sun/org/apache/xpath/internal/XPathVisitor;)V

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->callChildVisitors(Lcom/sun/org/apache/xalan/internal/templates/XSLTVisitor;Z)V

    return-void
.end method

.method public compose(Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemWithParam;->m_selectPattern:Lcom/sun/org/apache/xpath/internal/XPath;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;->getOptimizer()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/sun/org/apache/xalan/internal/templates/ElemVariable;->rewriteChildToExpression(Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;)Lcom/sun/org/apache/xpath/internal/XPath;

    move-result-object v0

    if-eqz v0, :cond_0

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemWithParam;->m_selectPattern:Lcom/sun/org/apache/xpath/internal/XPath;

    :cond_0
    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;->getComposeState()Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot$ComposeState;

    move-result-object v0

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemWithParam;->m_qname:Lcom/sun/org/apache/xml/internal/utils/QName;

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot$ComposeState;->getQNameID(Lcom/sun/org/apache/xml/internal/utils/QName;)I

    move-result v0

    iput v0, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemWithParam;->m_qnameID:I

    invoke-super {p0, p1}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->compose(Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;)V

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;->getComposeState()Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot$ComposeState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot$ComposeState;->getVariableNames()Ljava/util/Vector;

    move-result-object v0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemWithParam;->m_selectPattern:Lcom/sun/org/apache/xpath/internal/XPath;

    if-eqz p0, :cond_1

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;->getComposeState()Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot$ComposeState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot$ComposeState;->getGlobalsSize()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/sun/org/apache/xpath/internal/XPath;->fixupVariables(Ljava/util/Vector;I)V

    :cond_1
    return-void
.end method

.method public getName()Lcom/sun/org/apache/xml/internal/utils/QName;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemWithParam;->m_qname:Lcom/sun/org/apache/xml/internal/utils/QName;

    return-object p0
.end method

.method public getNodeName()Ljava/lang/String;
    .locals 0

    const-string p0, "with-param"

    return-object p0
.end method

.method public getSelect()Lcom/sun/org/apache/xpath/internal/XPath;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemWithParam;->m_selectPattern:Lcom/sun/org/apache/xpath/internal/XPath;

    return-object p0
.end method

.method public getValue(Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;I)Lcom/sun/org/apache/xpath/internal/objects/XObject;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getXPathContext()Lcom/sun/org/apache/xpath/internal/XPathContext;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/sun/org/apache/xpath/internal/XPathContext;->pushCurrentNode(I)V

    :try_start_0
    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemWithParam;->m_selectPattern:Lcom/sun/org/apache/xpath/internal/XPath;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0, p2, p0}, Lcom/sun/org/apache/xpath/internal/XPath;->execute(Lcom/sun/org/apache/xpath/internal/XPathContext;ILcom/sun/org/apache/xml/internal/utils/PrefixResolver;)Lcom/sun/org/apache/xpath/internal/objects/XObject;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sun/org/apache/xpath/internal/objects/XObject;->allowDetachToRelease(Z)V

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getDebug()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getTraceManager()Lcom/sun/org/apache/xalan/internal/trace/TraceManager;

    move-result-object v2

    const-string v5, "select"

    iget-object v6, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemWithParam;->m_selectPattern:Lcom/sun/org/apache/xpath/internal/XPath;

    move v3, p2

    move-object v4, p0

    move-object v7, v1

    invoke-virtual/range {v2 .. v7}, Lcom/sun/org/apache/xalan/internal/trace/TraceManager;->fireSelectedEvent(ILcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;Ljava/lang/String;Lcom/sun/org/apache/xpath/internal/XPath;Lcom/sun/org/apache/xpath/internal/objects/XObject;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->getFirstChildElem()Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;

    move-result-object p2

    if-nez p2, :cond_1

    sget-object v1, Lcom/sun/org/apache/xpath/internal/objects/XString;->EMPTYSTRING:Lcom/sun/org/apache/xpath/internal/objects/XString;

    goto :goto_0

    :cond_1
    invoke-virtual {p1, p0}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->transformToRTF(Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;)I

    move-result p1

    new-instance v1, Lcom/sun/org/apache/xpath/internal/objects/XRTreeFrag;

    invoke-direct {v1, p1, v0, p0}, Lcom/sun/org/apache/xpath/internal/objects/XRTreeFrag;-><init>(ILcom/sun/org/apache/xpath/internal/XPathContext;Lcom/sun/org/apache/xpath/internal/ExpressionNode;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    :goto_0
    invoke-virtual {v0}, Lcom/sun/org/apache/xpath/internal/XPathContext;->popCurrentNode()V

    return-object v1

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Lcom/sun/org/apache/xpath/internal/XPathContext;->popCurrentNode()V

    throw p0
.end method

.method public getXSLToken()I
    .locals 0

    const/4 p0, 0x2

    return p0
.end method

.method public setName(Lcom/sun/org/apache/xml/internal/utils/QName;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemWithParam;->m_qname:Lcom/sun/org/apache/xml/internal/utils/QName;

    return-void
.end method

.method public setParentElem(Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->setParentElem(Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;)V

    const/4 p0, 0x1

    iput-boolean p0, p1, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->m_hasVariableDecl:Z

    return-void
.end method

.method public setSelect(Lcom/sun/org/apache/xpath/internal/XPath;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemWithParam;->m_selectPattern:Lcom/sun/org/apache/xpath/internal/XPath;

    return-void
.end method
