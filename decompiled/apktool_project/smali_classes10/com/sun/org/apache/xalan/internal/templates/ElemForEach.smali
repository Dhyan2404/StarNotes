.class public Lcom/sun/org/apache/xalan/internal/templates/ElemForEach;
.super Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;
.source "SourceFile"

# interfaces
.implements Lcom/sun/org/apache/xpath/internal/ExpressionOwner;


# static fields
.field static final DEBUG:Z = false

.field static final serialVersionUID:J = 0x5384bb05f6cb70caL


# instance fields
.field public m_doc_cache_off:Z

.field protected m_selectExpression:Lcom/sun/org/apache/xpath/internal/Expression;

.field protected m_sortElems:Ljava/util/Vector;

.field protected m_xpath:Lcom/sun/org/apache/xpath/internal/XPath;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemForEach;->m_doc_cache_off:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemForEach;->m_selectExpression:Lcom/sun/org/apache/xpath/internal/Expression;

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemForEach;->m_xpath:Lcom/sun/org/apache/xpath/internal/XPath;

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemForEach;->m_sortElems:Ljava/util/Vector;

    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemForEach;->m_xpath:Lcom/sun/org/apache/xpath/internal/XPath;

    return-void
.end method


# virtual methods
.method public appendChild(Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;)Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;
    .locals 2

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->getXSLToken()I

    move-result v0

    const/16 v1, 0x40

    if-ne v1, v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/sun/org/apache/xalan/internal/templates/ElemSort;

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xalan/internal/templates/ElemForEach;->setSortElem(Lcom/sun/org/apache/xalan/internal/templates/ElemSort;)V

    return-object p1

    :cond_0
    invoke-super {p0, p1}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->appendChild(Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;)Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;

    move-result-object p0

    return-object p0
.end method

.method public callChildVisitors(Lcom/sun/org/apache/xalan/internal/templates/XSLTVisitor;Z)V
    .locals 3

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemForEach;->m_selectExpression:Lcom/sun/org/apache/xpath/internal/Expression;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1}, Lcom/sun/org/apache/xpath/internal/XPathVisitable;->callVisitors(Lcom/sun/org/apache/xpath/internal/ExpressionOwner;Lcom/sun/org/apache/xpath/internal/XPathVisitor;)V

    :cond_0
    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/templates/ElemForEach;->getSortElemCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Lcom/sun/org/apache/xalan/internal/templates/ElemForEach;->getSortElem(I)Lcom/sun/org/apache/xalan/internal/templates/ElemSort;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->callVisitors(Lcom/sun/org/apache/xalan/internal/templates/XSLTVisitor;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-super {p0, p1, p2}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->callChildVisitors(Lcom/sun/org/apache/xalan/internal/templates/XSLTVisitor;Z)V

    return-void
.end method

.method public compose(Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->compose(Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;)V

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/templates/ElemForEach;->getSortElemCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/sun/org/apache/xalan/internal/templates/ElemForEach;->getSortElem(I)Lcom/sun/org/apache/xalan/internal/templates/ElemSort;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/sun/org/apache/xalan/internal/templates/ElemSort;->compose(Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;->getComposeState()Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot$ComposeState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot$ComposeState;->getVariableNames()Ljava/util/Vector;

    move-result-object v0

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemForEach;->m_selectExpression:Lcom/sun/org/apache/xpath/internal/Expression;

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;->getComposeState()Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot$ComposeState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot$ComposeState;->getGlobalsSize()I

    move-result p0

    invoke-virtual {v1, v0, p0}, Lcom/sun/org/apache/xpath/internal/Expression;->fixupVariables(Ljava/util/Vector;I)V

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->getStylesheetRoot()Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;

    move-result-object p1

    iget-object p1, p1, Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;->m_selectDefault:Lcom/sun/org/apache/xpath/internal/XPath;

    invoke-virtual {p1}, Lcom/sun/org/apache/xpath/internal/XPath;->getExpression()Lcom/sun/org/apache/xpath/internal/Expression;

    move-result-object p1

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemForEach;->m_selectExpression:Lcom/sun/org/apache/xpath/internal/Expression;

    :goto_1
    return-void
.end method

.method public endCompose(Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/templates/ElemForEach;->getSortElemCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/sun/org/apache/xalan/internal/templates/ElemForEach;->getSortElem(I)Lcom/sun/org/apache/xalan/internal/templates/ElemSort;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->endCompose(Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->endCompose(Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;)V

    return-void
.end method

.method public execute(Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->pushCurrentTemplateRuleIsNull(Z)V

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getTraceManager()Lcom/sun/org/apache/xalan/internal/trace/TraceManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sun/org/apache/xalan/internal/trace/TraceManager;->fireTraceEvent(Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;)V

    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xalan/internal/templates/ElemForEach;->transformSelectedNodes(Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getDebug()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getTraceManager()Lcom/sun/org/apache/xalan/internal/trace/TraceManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sun/org/apache/xalan/internal/trace/TraceManager;->fireTraceEndEvent(Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;)V

    :cond_1
    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->popCurrentTemplateRuleIsNull()V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getDebug()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getTraceManager()Lcom/sun/org/apache/xalan/internal/trace/TraceManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/sun/org/apache/xalan/internal/trace/TraceManager;->fireTraceEndEvent(Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;)V

    :cond_2
    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->popCurrentTemplateRuleIsNull()V

    throw v0
.end method

.method public getExpression()Lcom/sun/org/apache/xpath/internal/Expression;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemForEach;->m_selectExpression:Lcom/sun/org/apache/xpath/internal/Expression;

    return-object p0
.end method

.method public getNodeName()Ljava/lang/String;
    .locals 0

    const-string p0, "for-each"

    return-object p0
.end method

.method public getSelect()Lcom/sun/org/apache/xpath/internal/Expression;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemForEach;->m_selectExpression:Lcom/sun/org/apache/xpath/internal/Expression;

    return-object p0
.end method

.method public getSortElem(I)Lcom/sun/org/apache/xalan/internal/templates/ElemSort;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemForEach;->m_sortElems:Ljava/util/Vector;

    invoke-virtual {p0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sun/org/apache/xalan/internal/templates/ElemSort;

    return-object p0
.end method

.method public getSortElemCount()I
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemForEach;->m_sortElems:Ljava/util/Vector;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result p0

    :goto_0
    return p0
.end method

.method public getTemplateMatch()Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;
    .locals 0

    return-object p0
.end method

.method public getXSLToken()I
    .locals 0

    const/16 p0, 0x1c

    return p0
.end method

.method public setExpression(Lcom/sun/org/apache/xpath/internal/Expression;)V
    .locals 0

    invoke-virtual {p1, p0}, Lcom/sun/org/apache/xpath/internal/Expression;->exprSetParent(Lcom/sun/org/apache/xpath/internal/ExpressionNode;)V

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemForEach;->m_selectExpression:Lcom/sun/org/apache/xpath/internal/Expression;

    return-void
.end method

.method public setSelect(Lcom/sun/org/apache/xpath/internal/XPath;)V
    .locals 1

    invoke-virtual {p1}, Lcom/sun/org/apache/xpath/internal/XPath;->getExpression()Lcom/sun/org/apache/xpath/internal/Expression;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemForEach;->m_selectExpression:Lcom/sun/org/apache/xpath/internal/Expression;

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemForEach;->m_xpath:Lcom/sun/org/apache/xpath/internal/XPath;

    return-void
.end method

.method public setSortElem(Lcom/sun/org/apache/xalan/internal/templates/ElemSort;)V
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemForEach;->m_sortElems:Ljava/util/Vector;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemForEach;->m_sortElems:Ljava/util/Vector;

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemForEach;->m_sortElems:Ljava/util/Vector;

    invoke-virtual {p0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

.method public sortNodes(Lcom/sun/org/apache/xpath/internal/XPathContext;Ljava/util/Vector;Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;)Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    new-instance p0, Lcom/sun/org/apache/xalan/internal/transformer/NodeSorter;

    invoke-direct {p0, p1}, Lcom/sun/org/apache/xalan/internal/transformer/NodeSorter;-><init>(Lcom/sun/org/apache/xpath/internal/XPathContext;)V

    const/4 v0, 0x1

    invoke-interface {p3, v0}, Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;->setShouldCacheNodes(Z)V

    const/4 v0, -0x1

    invoke-interface {p3, v0}, Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;->runTo(I)V

    invoke-virtual {p1, p3}, Lcom/sun/org/apache/xpath/internal/XPathContext;->pushContextNodeList(Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;)V

    :try_start_0
    invoke-virtual {p0, p3, p2, p1}, Lcom/sun/org/apache/xalan/internal/transformer/NodeSorter;->sort(Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;Ljava/util/Vector;Lcom/sun/org/apache/xpath/internal/XPathContext;)V

    const/4 p0, 0x0

    invoke-interface {p3, p0}, Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;->setCurrentPos(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1}, Lcom/sun/org/apache/xpath/internal/XPathContext;->popContextNodeList()V

    return-object p3

    :catchall_0
    move-exception p0

    invoke-virtual {p1}, Lcom/sun/org/apache/xpath/internal/XPathContext;->popContextNodeList()V

    throw p0
.end method

.method public transformSelectedNodes(Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;)V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getXPathContext()Lcom/sun/org/apache/xpath/internal/XPathContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/org/apache/xpath/internal/XPathContext;->getCurrentNode()I

    move-result v2

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemForEach;->m_selectExpression:Lcom/sun/org/apache/xpath/internal/Expression;

    invoke-virtual {v1, v0, v2}, Lcom/sun/org/apache/xpath/internal/Expression;->asIterator(Lcom/sun/org/apache/xpath/internal/XPathContext;I)Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;

    move-result-object v1

    :try_start_0
    iget-object v3, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemForEach;->m_sortElems:Ljava/util/Vector;

    const/4 v4, 0x0

    if-nez v3, :cond_0

    move-object v3, v4

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p0, v2}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->processSortKeys(Lcom/sun/org/apache/xalan/internal/templates/ElemForEach;I)Ljava/util/Vector;

    move-result-object v3

    :goto_0
    if-eqz v3, :cond_1

    invoke-virtual {p0, v0, v3, v1}, Lcom/sun/org/apache/xalan/internal/templates/ElemForEach;->sortNodes(Lcom/sun/org/apache/xpath/internal/XPathContext;Ljava/util/Vector;Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;)Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :cond_1
    move-object v7, v1

    :try_start_1
    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getDebug()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemForEach;->m_xpath:Lcom/sun/org/apache/xpath/internal/XPath;

    invoke-virtual {v1}, Lcom/sun/org/apache/xpath/internal/XPath;->getExpression()Lcom/sun/org/apache/xpath/internal/Expression;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sun/org/apache/xpath/internal/Expression;->execute(Lcom/sun/org/apache/xpath/internal/XPathContext;)Lcom/sun/org/apache/xpath/internal/objects/XObject;

    move-result-object v13

    invoke-virtual {v0}, Lcom/sun/org/apache/xpath/internal/XPathContext;->getCurrentNode()I

    move-result v9

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getTraceManager()Lcom/sun/org/apache/xalan/internal/trace/TraceManager;

    move-result-object v8

    const-string v11, "select"

    iget-object v12, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemForEach;->m_xpath:Lcom/sun/org/apache/xpath/internal/XPath;

    move-object v10, p0

    invoke-virtual/range {v8 .. v13}, Lcom/sun/org/apache/xalan/internal/trace/TraceManager;->fireSelectedEvent(ILcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;Ljava/lang/String;Lcom/sun/org/apache/xpath/internal/XPath;Lcom/sun/org/apache/xpath/internal/objects/XObject;)V

    :cond_2
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xpath/internal/XPathContext;->pushCurrentNode(I)V

    invoke-virtual {v0}, Lcom/sun/org/apache/xpath/internal/XPathContext;->getCurrentNodeStack()Lcom/sun/org/apache/xml/internal/utils/IntStack;

    move-result-object v3

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xpath/internal/XPathContext;->pushCurrentExpressionNode(I)V

    invoke-virtual {v0}, Lcom/sun/org/apache/xpath/internal/XPathContext;->getCurrentExpressionNodeStack()Lcom/sun/org/apache/xml/internal/utils/IntStack;

    move-result-object v5

    invoke-virtual {v0}, Lcom/sun/org/apache/xpath/internal/XPathContext;->pushSAXLocatorNull()V

    invoke-virtual {v0, v7}, Lcom/sun/org/apache/xpath/internal/XPathContext;->pushContextNodeList(Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;)V

    invoke-virtual {p1, v4}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->pushElemTemplateElement(Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;)V

    invoke-virtual {v0, v2}, Lcom/sun/org/apache/xpath/internal/XPathContext;->getDTM(I)Lcom/sun/org/apache/xml/internal/dtm/DTM;

    move-result-object v6

    const/high16 v8, -0x10000

    and-int v9, v2, v8

    :cond_3
    :goto_1
    invoke-interface {v7}, Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;->nextNode()I

    move-result v10

    if-eq v1, v10, :cond_8

    invoke-virtual {v3, v10}, Lcom/sun/org/apache/xml/internal/utils/IntStack;->setTop(I)V

    invoke-virtual {v5, v10}, Lcom/sun/org/apache/xml/internal/utils/IntStack;->setTop(I)V

    and-int v11, v10, v8

    if-eq v11, v9, :cond_4

    invoke-virtual {v0, v10}, Lcom/sun/org/apache/xpath/internal/XPathContext;->getDTM(I)Lcom/sun/org/apache/xml/internal/dtm/DTM;

    move-result-object v6

    move v9, v11

    :cond_4
    invoke-interface {v6, v10}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->getNodeType(I)S

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getDebug()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getTraceManager()Lcom/sun/org/apache/xalan/internal/trace/TraceManager;

    move-result-object v10

    invoke-virtual {v10, p0}, Lcom/sun/org/apache/xalan/internal/trace/TraceManager;->fireTraceEvent(Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;)V

    :cond_5
    iget-object v10, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->m_firstChild:Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;

    :goto_2
    if-eqz v10, :cond_6

    invoke-virtual {v0, v10}, Lcom/sun/org/apache/xpath/internal/XPathContext;->setSAXLocator(Ljavax/xml/transform/SourceLocator;)V

    invoke-virtual {p1, v10}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->setCurrentElement(Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;)V

    invoke-virtual {v10, p1}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->execute(Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;)V

    iget-object v10, v10, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->m_nextSibling:Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;

    goto :goto_2

    :cond_6
    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getDebug()Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-virtual {p1, v4}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->setCurrentElement(Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;)V

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getTraceManager()Lcom/sun/org/apache/xalan/internal/trace/TraceManager;

    move-result-object v10

    invoke-virtual {v10, p0}, Lcom/sun/org/apache/xalan/internal/trace/TraceManager;->fireTraceEndEvent(Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;)V

    :cond_7
    iget-boolean v10, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemForEach;->m_doc_cache_off:Z

    if-eqz v10, :cond_3

    invoke-virtual {v0}, Lcom/sun/org/apache/xpath/internal/XPathContext;->getSourceTreeManager()Lcom/sun/org/apache/xpath/internal/SourceTreeManager;

    move-result-object v10

    invoke-interface {v6}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->getDocument()I

    move-result v11

    invoke-virtual {v10, v11}, Lcom/sun/org/apache/xpath/internal/SourceTreeManager;->removeDocumentFromCache(I)V

    const/4 v10, 0x0

    invoke-virtual {v0, v6, v10}, Lcom/sun/org/apache/xpath/internal/XPathContext;->release(Lcom/sun/org/apache/xml/internal/dtm/DTM;Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :cond_8
    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getDebug()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getTraceManager()Lcom/sun/org/apache/xalan/internal/trace/TraceManager;

    move-result-object v1

    const-string v4, "select"

    new-instance v5, Lcom/sun/org/apache/xpath/internal/XPath;

    iget-object v3, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemForEach;->m_selectExpression:Lcom/sun/org/apache/xpath/internal/Expression;

    invoke-direct {v5, v3}, Lcom/sun/org/apache/xpath/internal/XPath;-><init>(Lcom/sun/org/apache/xpath/internal/Expression;)V

    new-instance v6, Lcom/sun/org/apache/xpath/internal/objects/XNodeSet;

    invoke-direct {v6, v7}, Lcom/sun/org/apache/xpath/internal/objects/XNodeSet;-><init>(Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;)V

    move-object v3, p0

    invoke-virtual/range {v1 .. v6}, Lcom/sun/org/apache/xalan/internal/trace/TraceManager;->fireSelectedEndEvent(ILcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;Ljava/lang/String;Lcom/sun/org/apache/xpath/internal/XPath;Lcom/sun/org/apache/xpath/internal/objects/XObject;)V

    :cond_9
    invoke-virtual {v0}, Lcom/sun/org/apache/xpath/internal/XPathContext;->popSAXLocator()V

    invoke-virtual {v0}, Lcom/sun/org/apache/xpath/internal/XPathContext;->popContextNodeList()V

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->popElemTemplateElement()V

    invoke-virtual {v0}, Lcom/sun/org/apache/xpath/internal/XPathContext;->popCurrentExpressionNode()V

    invoke-virtual {v0}, Lcom/sun/org/apache/xpath/internal/XPathContext;->popCurrentNode()V

    invoke-interface {v7}, Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;->detach()V

    return-void

    :catchall_0
    move-exception v3

    goto :goto_3

    :catchall_1
    move-exception v3

    move-object v7, v1

    :goto_3
    move-object v8, v3

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getDebug()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getTraceManager()Lcom/sun/org/apache/xalan/internal/trace/TraceManager;

    move-result-object v1

    const-string v4, "select"

    new-instance v5, Lcom/sun/org/apache/xpath/internal/XPath;

    iget-object v3, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemForEach;->m_selectExpression:Lcom/sun/org/apache/xpath/internal/Expression;

    invoke-direct {v5, v3}, Lcom/sun/org/apache/xpath/internal/XPath;-><init>(Lcom/sun/org/apache/xpath/internal/Expression;)V

    new-instance v6, Lcom/sun/org/apache/xpath/internal/objects/XNodeSet;

    invoke-direct {v6, v7}, Lcom/sun/org/apache/xpath/internal/objects/XNodeSet;-><init>(Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;)V

    move-object v3, p0

    invoke-virtual/range {v1 .. v6}, Lcom/sun/org/apache/xalan/internal/trace/TraceManager;->fireSelectedEndEvent(ILcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;Ljava/lang/String;Lcom/sun/org/apache/xpath/internal/XPath;Lcom/sun/org/apache/xpath/internal/objects/XObject;)V

    :cond_a
    invoke-virtual {v0}, Lcom/sun/org/apache/xpath/internal/XPathContext;->popSAXLocator()V

    invoke-virtual {v0}, Lcom/sun/org/apache/xpath/internal/XPathContext;->popContextNodeList()V

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->popElemTemplateElement()V

    invoke-virtual {v0}, Lcom/sun/org/apache/xpath/internal/XPathContext;->popCurrentExpressionNode()V

    invoke-virtual {v0}, Lcom/sun/org/apache/xpath/internal/XPathContext;->popCurrentNode()V

    invoke-interface {v7}, Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;->detach()V

    throw v8
.end method
