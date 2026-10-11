.class public Lcom/sun/org/apache/xalan/internal/templates/ElemVariable;
.super Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;
.source "SourceFile"


# static fields
.field static final serialVersionUID:J = 0x7e713d70aea340adL


# instance fields
.field m_frameSize:I

.field protected m_index:I

.field private m_isTopLevel:Z

.field protected m_qname:Lcom/sun/org/apache/xml/internal/utils/QName;

.field private m_selectPattern:Lcom/sun/org/apache/xpath/internal/XPath;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemVariable;->m_frameSize:I

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemVariable;->m_isTopLevel:Z

    return-void
.end method

.method public constructor <init>(Lcom/sun/org/apache/xalan/internal/templates/ElemVariable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 4
    invoke-direct {p0}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;-><init>()V

    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemVariable;->m_frameSize:I

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemVariable;->m_isTopLevel:Z

    .line 7
    iget-object v0, p1, Lcom/sun/org/apache/xalan/internal/templates/ElemVariable;->m_selectPattern:Lcom/sun/org/apache/xpath/internal/XPath;

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemVariable;->m_selectPattern:Lcom/sun/org/apache/xpath/internal/XPath;

    .line 8
    iget-object v0, p1, Lcom/sun/org/apache/xalan/internal/templates/ElemVariable;->m_qname:Lcom/sun/org/apache/xml/internal/utils/QName;

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemVariable;->m_qname:Lcom/sun/org/apache/xml/internal/utils/QName;

    .line 9
    iget-boolean p1, p1, Lcom/sun/org/apache/xalan/internal/templates/ElemVariable;->m_isTopLevel:Z

    iput-boolean p1, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemVariable;->m_isTopLevel:Z

    return-void
.end method

.method public static rewriteChildToExpression(Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;)Lcom/sun/org/apache/xpath/internal/XPath;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->getFirstChildElem()Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->getNextSiblingElem()Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;

    move-result-object v2

    if-nez v2, :cond_1

    invoke-virtual {v0}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->getXSLToken()I

    move-result v2

    const/16 v3, 0x1e

    if-ne v3, v2, :cond_0

    check-cast v0, Lcom/sun/org/apache/xalan/internal/templates/ElemValueOf;

    invoke-virtual {v0}, Lcom/sun/org/apache/xalan/internal/templates/ElemValueOf;->getDisableOutputEscaping()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->getDOMBackPointer()Lorg/w3c/dom/Node;

    move-result-object v2

    if-nez v2, :cond_1

    iput-object v1, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->m_firstChild:Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;

    new-instance p0, Lcom/sun/org/apache/xpath/internal/XPath;

    new-instance v1, Lcom/sun/org/apache/xpath/internal/objects/XRTreeFragSelectWrapper;

    invoke-virtual {v0}, Lcom/sun/org/apache/xalan/internal/templates/ElemValueOf;->getSelect()Lcom/sun/org/apache/xpath/internal/XPath;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/org/apache/xpath/internal/XPath;->getExpression()Lcom/sun/org/apache/xpath/internal/Expression;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/sun/org/apache/xpath/internal/objects/XRTreeFragSelectWrapper;-><init>(Lcom/sun/org/apache/xpath/internal/Expression;)V

    invoke-direct {p0, v1}, Lcom/sun/org/apache/xpath/internal/XPath;-><init>(Lcom/sun/org/apache/xpath/internal/Expression;)V

    return-object p0

    :cond_0
    const/16 v3, 0x4e

    if-ne v3, v2, :cond_1

    check-cast v0, Lcom/sun/org/apache/xalan/internal/templates/ElemTextLiteral;

    invoke-virtual {v0}, Lcom/sun/org/apache/xalan/internal/templates/ElemTextLiteral;->getDisableOutputEscaping()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->getDOMBackPointer()Lorg/w3c/dom/Node;

    move-result-object v2

    if-nez v2, :cond_1

    invoke-virtual {v0}, Lcom/sun/org/apache/xalan/internal/templates/ElemTextLiteral;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/sun/org/apache/xpath/internal/objects/XString;

    invoke-direct {v2, v0}, Lcom/sun/org/apache/xpath/internal/objects/XString;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->m_firstChild:Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;

    new-instance p0, Lcom/sun/org/apache/xpath/internal/XPath;

    new-instance v0, Lcom/sun/org/apache/xpath/internal/objects/XRTreeFragSelectWrapper;

    invoke-direct {v0, v2}, Lcom/sun/org/apache/xpath/internal/objects/XRTreeFragSelectWrapper;-><init>(Lcom/sun/org/apache/xpath/internal/Expression;)V

    invoke-direct {p0, v0}, Lcom/sun/org/apache/xpath/internal/XPath;-><init>(Lcom/sun/org/apache/xpath/internal/Expression;)V

    return-object p0

    :cond_1
    return-object v1
.end method


# virtual methods
.method public accept(Lcom/sun/org/apache/xalan/internal/templates/XSLTVisitor;)Z
    .locals 0

    invoke-virtual {p1, p0}, Lcom/sun/org/apache/xalan/internal/templates/XSLTVisitor;->visitVariableOrParamDecl(Lcom/sun/org/apache/xalan/internal/templates/ElemVariable;)Z

    move-result p0

    return p0
.end method

.method public appendChild(Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;)Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemVariable;->m_selectPattern:Lcom/sun/org/apache/xpath/internal/XPath;

    if-eqz v0, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "xsl:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/templates/ElemVariable;->getNodeName()Ljava/lang/String;

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

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemVariable;->m_selectPattern:Lcom/sun/org/apache/xpath/internal/XPath;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sun/org/apache/xpath/internal/XPath;->getExpression()Lcom/sun/org/apache/xpath/internal/Expression;

    move-result-object v0

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemVariable;->m_selectPattern:Lcom/sun/org/apache/xpath/internal/XPath;

    invoke-interface {v0, v1, p1}, Lcom/sun/org/apache/xpath/internal/XPathVisitable;->callVisitors(Lcom/sun/org/apache/xpath/internal/ExpressionOwner;Lcom/sun/org/apache/xpath/internal/XPathVisitor;)V

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->callChildVisitors(Lcom/sun/org/apache/xalan/internal/templates/XSLTVisitor;Z)V

    return-void
.end method

.method public compose(Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemVariable;->m_selectPattern:Lcom/sun/org/apache/xpath/internal/XPath;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;->getOptimizer()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/sun/org/apache/xalan/internal/templates/ElemVariable;->rewriteChildToExpression(Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;)Lcom/sun/org/apache/xpath/internal/XPath;

    move-result-object v0

    if-eqz v0, :cond_0

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemVariable;->m_selectPattern:Lcom/sun/org/apache/xpath/internal/XPath;

    :cond_0
    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;->getComposeState()Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot$ComposeState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot$ComposeState;->getVariableNames()Ljava/util/Vector;

    move-result-object v1

    iget-object v2, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemVariable;->m_selectPattern:Lcom/sun/org/apache/xpath/internal/XPath;

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot$ComposeState;->getGlobalsSize()I

    move-result v3

    invoke-virtual {v2, v1, v3}, Lcom/sun/org/apache/xpath/internal/XPath;->fixupVariables(Ljava/util/Vector;I)V

    :cond_1
    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->m_parentNode:Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;

    instance-of v2, v1, Lcom/sun/org/apache/xalan/internal/templates/Stylesheet;

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemVariable;->m_qname:Lcom/sun/org/apache/xml/internal/utils/QName;

    if-eqz v2, :cond_2

    invoke-virtual {v0, v2}, Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot$ComposeState;->addVariableName(Lcom/sun/org/apache/xml/internal/utils/QName;)I

    move-result v1

    invoke-virtual {v0}, Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot$ComposeState;->getGlobalsSize()I

    move-result v0

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemVariable;->m_index:I

    goto :goto_0

    :cond_2
    instance-of v1, v1, Lcom/sun/org/apache/xalan/internal/templates/Stylesheet;

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot$ComposeState;->resetStackFrameSize()V

    :cond_3
    :goto_0
    invoke-super {p0, p1}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->compose(Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;)V

    return-void
.end method

.method public endCompose(Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->endCompose(Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;)V

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->m_parentNode:Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;

    instance-of v0, v0, Lcom/sun/org/apache/xalan/internal/templates/Stylesheet;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;->getComposeState()Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot$ComposeState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot$ComposeState;->getFrameSize()I

    move-result v0

    iput v0, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemVariable;->m_frameSize:I

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot$ComposeState;->resetStackFrameSize()V

    :cond_0
    return-void
.end method

.method public execute(Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getTraceManager()Lcom/sun/org/apache/xalan/internal/trace/TraceManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sun/org/apache/xalan/internal/trace/TraceManager;->fireTraceEvent(Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;)V

    :cond_0
    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getXPathContext()Lcom/sun/org/apache/xpath/internal/XPathContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/org/apache/xpath/internal/XPathContext;->getCurrentNode()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/sun/org/apache/xalan/internal/templates/ElemVariable;->getValue(Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;I)Lcom/sun/org/apache/xpath/internal/objects/XObject;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getXPathContext()Lcom/sun/org/apache/xpath/internal/XPathContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/org/apache/xpath/internal/XPathContext;->getVarStack()Lcom/sun/org/apache/xpath/internal/VariableStack;

    move-result-object v1

    iget v2, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemVariable;->m_index:I

    invoke-virtual {v1, v2, v0}, Lcom/sun/org/apache/xpath/internal/VariableStack;->setLocalVariable(ILcom/sun/org/apache/xpath/internal/objects/XObject;)V

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getDebug()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getTraceManager()Lcom/sun/org/apache/xalan/internal/trace/TraceManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/sun/org/apache/xalan/internal/trace/TraceManager;->fireTraceEndEvent(Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;)V

    :cond_1
    return-void
.end method

.method public getIndex()I
    .locals 0

    iget p0, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemVariable;->m_index:I

    return p0
.end method

.method public getIsTopLevel()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemVariable;->m_isTopLevel:Z

    return p0
.end method

.method public getName()Lcom/sun/org/apache/xml/internal/utils/QName;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemVariable;->m_qname:Lcom/sun/org/apache/xml/internal/utils/QName;

    return-object p0
.end method

.method public getNodeName()Ljava/lang/String;
    .locals 0

    const-string p0, "variable"

    return-object p0
.end method

.method public getSelect()Lcom/sun/org/apache/xpath/internal/XPath;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemVariable;->m_selectPattern:Lcom/sun/org/apache/xpath/internal/XPath;

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
    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemVariable;->m_selectPattern:Lcom/sun/org/apache/xpath/internal/XPath;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0, p2, p0}, Lcom/sun/org/apache/xpath/internal/XPath;->execute(Lcom/sun/org/apache/xpath/internal/XPathContext;ILcom/sun/org/apache/xml/internal/utils/PrefixResolver;)Lcom/sun/org/apache/xpath/internal/objects/XObject;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sun/org/apache/xpath/internal/objects/XObject;->allowDetachToRelease(Z)V

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getDebug()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getTraceManager()Lcom/sun/org/apache/xalan/internal/trace/TraceManager;

    move-result-object v2

    const-string v5, "select"

    iget-object v6, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemVariable;->m_selectPattern:Lcom/sun/org/apache/xpath/internal/XPath;

    move v3, p2

    move-object v4, p0

    move-object v7, v1

    invoke-virtual/range {v2 .. v7}, Lcom/sun/org/apache/xalan/internal/trace/TraceManager;->fireSelectedEvent(ILcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;Ljava/lang/String;Lcom/sun/org/apache/xpath/internal/XPath;Lcom/sun/org/apache/xpath/internal/objects/XObject;)V

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->getFirstChildElem()Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;

    move-result-object p2

    if-nez p2, :cond_1

    sget-object v1, Lcom/sun/org/apache/xpath/internal/objects/XString;->EMPTYSTRING:Lcom/sun/org/apache/xpath/internal/objects/XString;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto :goto_1

    :cond_1
    :try_start_1
    iget-object p2, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->m_parentNode:Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;

    instance-of p2, p2, Lcom/sun/org/apache/xalan/internal/templates/Stylesheet;

    if-eqz p2, :cond_2

    invoke-virtual {p1, p0}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->transformToGlobalRTF(Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;)I

    move-result p1

    goto :goto_0

    :cond_2
    invoke-virtual {p1, p0}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->transformToRTF(Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;)I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    :try_start_2
    new-instance v1, Lcom/sun/org/apache/xpath/internal/objects/XRTreeFrag;

    invoke-direct {v1, p1, v0, p0}, Lcom/sun/org/apache/xpath/internal/objects/XRTreeFrag;-><init>(ILcom/sun/org/apache/xpath/internal/XPathContext;Lcom/sun/org/apache/xpath/internal/ExpressionNode;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_3
    :goto_1
    invoke-virtual {v0}, Lcom/sun/org/apache/xpath/internal/XPathContext;->popCurrentNode()V

    return-object v1

    :catchall_0
    move-exception p0

    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p0

    invoke-virtual {v0}, Lcom/sun/org/apache/xpath/internal/XPathContext;->popCurrentNode()V

    throw p0
.end method

.method public getXSLToken()I
    .locals 0

    const/16 p0, 0x49

    return p0
.end method

.method public isPsuedoVar()Z
    .locals 2

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemVariable;->m_qname:Lcom/sun/org/apache/xml/internal/utils/QName;

    invoke-virtual {v0}, Lcom/sun/org/apache/xml/internal/utils/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "http://xml.apache.org/xalan/psuedovar"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemVariable;->m_qname:Lcom/sun/org/apache/xml/internal/utils/QName;

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/utils/QName;->getLocalName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "#"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public recompose(Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;)V
    .locals 0

    invoke-virtual {p1, p0}, Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;->recomposeVariables(Lcom/sun/org/apache/xalan/internal/templates/ElemVariable;)V

    return-void
.end method

.method public setIndex(I)V
    .locals 0

    iput p1, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemVariable;->m_index:I

    return-void
.end method

.method public setIsTopLevel(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemVariable;->m_isTopLevel:Z

    return-void
.end method

.method public setName(Lcom/sun/org/apache/xml/internal/utils/QName;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemVariable;->m_qname:Lcom/sun/org/apache/xml/internal/utils/QName;

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

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemVariable;->m_selectPattern:Lcom/sun/org/apache/xpath/internal/XPath;

    return-void
.end method
