.class public Lcom/sun/org/apache/xpath/internal/axes/FilterExprIteratorSimple;
.super Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/org/apache/xpath/internal/axes/FilterExprIteratorSimple$filterExprOwner;
    }
.end annotation


# static fields
.field static final serialVersionUID:J = -0x60da4ec68033d15bL


# instance fields
.field private m_canDetachNodeset:Z

.field private m_expr:Lcom/sun/org/apache/xpath/internal/Expression;

.field private transient m_exprObj:Lcom/sun/org/apache/xpath/internal/objects/XNodeSet;

.field private m_mustHardReset:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;-><init>(Lcom/sun/org/apache/xml/internal/utils/PrefixResolver;)V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/sun/org/apache/xpath/internal/axes/FilterExprIteratorSimple;->m_mustHardReset:Z

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/sun/org/apache/xpath/internal/axes/FilterExprIteratorSimple;->m_canDetachNodeset:Z

    return-void
.end method

.method public constructor <init>(Lcom/sun/org/apache/xpath/internal/Expression;)V
    .locals 1

    const/4 v0, 0x0

    .line 4
    invoke-direct {p0, v0}, Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;-><init>(Lcom/sun/org/apache/xml/internal/utils/PrefixResolver;)V

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/sun/org/apache/xpath/internal/axes/FilterExprIteratorSimple;->m_mustHardReset:Z

    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/sun/org/apache/xpath/internal/axes/FilterExprIteratorSimple;->m_canDetachNodeset:Z

    .line 7
    iput-object p1, p0, Lcom/sun/org/apache/xpath/internal/axes/FilterExprIteratorSimple;->m_expr:Lcom/sun/org/apache/xpath/internal/Expression;

    return-void
.end method

.method public static synthetic access$000(Lcom/sun/org/apache/xpath/internal/axes/FilterExprIteratorSimple;)Lcom/sun/org/apache/xpath/internal/Expression;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/axes/FilterExprIteratorSimple;->m_expr:Lcom/sun/org/apache/xpath/internal/Expression;

    return-object p0
.end method

.method public static synthetic access$002(Lcom/sun/org/apache/xpath/internal/axes/FilterExprIteratorSimple;Lcom/sun/org/apache/xpath/internal/Expression;)Lcom/sun/org/apache/xpath/internal/Expression;
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xpath/internal/axes/FilterExprIteratorSimple;->m_expr:Lcom/sun/org/apache/xpath/internal/Expression;

    return-object p1
.end method

.method public static executeFilterExpr(ILcom/sun/org/apache/xpath/internal/XPathContext;Lcom/sun/org/apache/xml/internal/utils/PrefixResolver;ZILcom/sun/org/apache/xpath/internal/Expression;)Lcom/sun/org/apache/xpath/internal/objects/XNodeSet;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/utils/WrappedRuntimeException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/sun/org/apache/xpath/internal/XPathContext;->getNamespaceContext()Lcom/sun/org/apache/xml/internal/utils/PrefixResolver;

    move-result-object v0

    :try_start_0
    invoke-virtual {p1, p0}, Lcom/sun/org/apache/xpath/internal/XPathContext;->pushCurrentNode(I)V

    invoke-virtual {p1, p2}, Lcom/sun/org/apache/xpath/internal/XPathContext;->setNamespaceContext(Lcom/sun/org/apache/xml/internal/utils/PrefixResolver;)V

    if-eqz p3, :cond_0

    invoke-virtual {p1}, Lcom/sun/org/apache/xpath/internal/XPathContext;->getVarStack()Lcom/sun/org/apache/xpath/internal/VariableStack;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/VariableStack;->getStackFrame()I

    move-result p2

    invoke-virtual {p0, p4}, Lcom/sun/org/apache/xpath/internal/VariableStack;->setStackFrame(I)V

    invoke-virtual {p5, p1}, Lcom/sun/org/apache/xpath/internal/Expression;->execute(Lcom/sun/org/apache/xpath/internal/XPathContext;)Lcom/sun/org/apache/xpath/internal/objects/XObject;

    move-result-object p3

    check-cast p3, Lcom/sun/org/apache/xpath/internal/objects/XNodeSet;

    const/4 p4, 0x1

    invoke-virtual {p3, p4}, Lcom/sun/org/apache/xpath/internal/axes/NodeSequence;->setShouldCacheNodes(Z)V

    invoke-virtual {p0, p2}, Lcom/sun/org/apache/xpath/internal/VariableStack;->setStackFrame(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p5, p1}, Lcom/sun/org/apache/xpath/internal/Expression;->execute(Lcom/sun/org/apache/xpath/internal/XPathContext;)Lcom/sun/org/apache/xpath/internal/objects/XObject;

    move-result-object p0

    move-object p3, p0

    check-cast p3, Lcom/sun/org/apache/xpath/internal/objects/XNodeSet;
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-virtual {p1}, Lcom/sun/org/apache/xpath/internal/XPathContext;->popCurrentNode()V

    invoke-virtual {p1, v0}, Lcom/sun/org/apache/xpath/internal/XPathContext;->setNamespaceContext(Lcom/sun/org/apache/xml/internal/utils/PrefixResolver;)V

    return-object p3

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    :try_start_1
    new-instance p2, Lcom/sun/org/apache/xml/internal/utils/WrappedRuntimeException;

    invoke-direct {p2, p0}, Lcom/sun/org/apache/xml/internal/utils/WrappedRuntimeException;-><init>(Ljava/lang/Exception;)V

    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    invoke-virtual {p1}, Lcom/sun/org/apache/xpath/internal/XPathContext;->popCurrentNode()V

    invoke-virtual {p1, v0}, Lcom/sun/org/apache/xpath/internal/XPathContext;->setNamespaceContext(Lcom/sun/org/apache/xml/internal/utils/PrefixResolver;)V

    throw p0
.end method


# virtual methods
.method public callPredicateVisitors(Lcom/sun/org/apache/xpath/internal/XPathVisitor;)V
    .locals 2

    iget-object v0, p0, Lcom/sun/org/apache/xpath/internal/axes/FilterExprIteratorSimple;->m_expr:Lcom/sun/org/apache/xpath/internal/Expression;

    new-instance v1, Lcom/sun/org/apache/xpath/internal/axes/FilterExprIteratorSimple$filterExprOwner;

    invoke-direct {v1, p0}, Lcom/sun/org/apache/xpath/internal/axes/FilterExprIteratorSimple$filterExprOwner;-><init>(Lcom/sun/org/apache/xpath/internal/axes/FilterExprIteratorSimple;)V

    invoke-interface {v0, v1, p1}, Lcom/sun/org/apache/xpath/internal/XPathVisitable;->callVisitors(Lcom/sun/org/apache/xpath/internal/ExpressionOwner;Lcom/sun/org/apache/xpath/internal/XPathVisitor;)V

    invoke-super {p0, p1}, Lcom/sun/org/apache/xpath/internal/axes/PredicatedNodeTest;->callPredicateVisitors(Lcom/sun/org/apache/xpath/internal/XPathVisitor;)V

    return-void
.end method

.method public deepEquals(Lcom/sun/org/apache/xpath/internal/Expression;)Z
    .locals 2

    invoke-super {p0, p1}, Lcom/sun/org/apache/xpath/internal/axes/PredicatedNodeTest;->deepEquals(Lcom/sun/org/apache/xpath/internal/Expression;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lcom/sun/org/apache/xpath/internal/axes/FilterExprIteratorSimple;

    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/axes/FilterExprIteratorSimple;->m_expr:Lcom/sun/org/apache/xpath/internal/Expression;

    iget-object p1, p1, Lcom/sun/org/apache/xpath/internal/axes/FilterExprIteratorSimple;->m_expr:Lcom/sun/org/apache/xpath/internal/Expression;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xpath/internal/Expression;->deepEquals(Lcom/sun/org/apache/xpath/internal/Expression;)Z

    move-result p0

    if-nez p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public detach()V
    .locals 1

    iget-boolean v0, p0, Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;->m_allowDetach:Z

    if-eqz v0, :cond_0

    invoke-super {p0}, Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;->detach()V

    iget-object v0, p0, Lcom/sun/org/apache/xpath/internal/axes/FilterExprIteratorSimple;->m_exprObj:Lcom/sun/org/apache/xpath/internal/objects/XNodeSet;

    invoke-virtual {v0}, Lcom/sun/org/apache/xpath/internal/axes/NodeSequence;->detach()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/org/apache/xpath/internal/axes/FilterExprIteratorSimple;->m_exprObj:Lcom/sun/org/apache/xpath/internal/objects/XNodeSet;

    :cond_0
    return-void
.end method

.method public fixupVariables(Ljava/util/Vector;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/sun/org/apache/xpath/internal/axes/PredicatedNodeTest;->fixupVariables(Ljava/util/Vector;I)V

    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/axes/FilterExprIteratorSimple;->m_expr:Lcom/sun/org/apache/xpath/internal/Expression;

    invoke-virtual {p0, p1, p2}, Lcom/sun/org/apache/xpath/internal/Expression;->fixupVariables(Ljava/util/Vector;I)V

    return-void
.end method

.method public getAnalysisBits()I
    .locals 1

    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/axes/FilterExprIteratorSimple;->m_expr:Lcom/sun/org/apache/xpath/internal/Expression;

    if-eqz p0, :cond_0

    instance-of v0, p0, Lcom/sun/org/apache/xpath/internal/axes/PathComponent;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/sun/org/apache/xpath/internal/axes/PathComponent;

    invoke-interface {p0}, Lcom/sun/org/apache/xpath/internal/axes/PathComponent;->getAnalysisBits()I

    move-result p0

    return p0

    :cond_0
    const/high16 p0, 0x4000000

    return p0
.end method

.method public getAxis()I
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/axes/FilterExprIteratorSimple;->m_exprObj:Lcom/sun/org/apache/xpath/internal/objects/XNodeSet;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/axes/NodeSequence;->getAxis()I

    move-result p0

    return p0

    :cond_0
    const/16 p0, 0x14

    return p0
.end method

.method public getInnerExpression()Lcom/sun/org/apache/xpath/internal/Expression;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/axes/FilterExprIteratorSimple;->m_expr:Lcom/sun/org/apache/xpath/internal/Expression;

    return-object p0
.end method

.method public isDocOrdered()Z
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/axes/FilterExprIteratorSimple;->m_exprObj:Lcom/sun/org/apache/xpath/internal/objects/XNodeSet;

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/axes/NodeSequence;->isDocOrdered()Z

    move-result p0

    return p0
.end method

.method public nextNode()I
    .locals 3

    iget-boolean v0, p0, Lcom/sun/org/apache/xpath/internal/axes/PredicatedNodeTest;->m_foundLast:Z

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xpath/internal/axes/FilterExprIteratorSimple;->m_exprObj:Lcom/sun/org/apache/xpath/internal/objects/XNodeSet;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/sun/org/apache/xpath/internal/axes/NodeSequence;->nextNode()I

    move-result v0

    iput v0, p0, Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;->m_lastFetched:I

    goto :goto_0

    :cond_1
    iput v1, p0, Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;->m_lastFetched:I

    move v0, v1

    :goto_0
    const/4 v2, 0x1

    if-eq v1, v0, :cond_2

    iget v1, p0, Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;->m_pos:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;->m_pos:I

    return v0

    :cond_2
    iput-boolean v2, p0, Lcom/sun/org/apache/xpath/internal/axes/PredicatedNodeTest;->m_foundLast:Z

    return v1
.end method

.method public setInnerExpression(Lcom/sun/org/apache/xpath/internal/Expression;)V
    .locals 0

    invoke-virtual {p1, p0}, Lcom/sun/org/apache/xpath/internal/Expression;->exprSetParent(Lcom/sun/org/apache/xpath/internal/ExpressionNode;)V

    iput-object p1, p0, Lcom/sun/org/apache/xpath/internal/axes/FilterExprIteratorSimple;->m_expr:Lcom/sun/org/apache/xpath/internal/Expression;

    return-void
.end method

.method public setRoot(ILjava/lang/Object;)V
    .locals 6

    invoke-super {p0, p1, p2}, Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;->setRoot(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;->m_execContext:Lcom/sun/org/apache/xpath/internal/XPathContext;

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;->getPrefixResolver()Lcom/sun/org/apache/xml/internal/utils/PrefixResolver;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;->getIsTopLevel()Z

    move-result v3

    iget v4, p0, Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;->m_stackFrame:I

    iget-object v5, p0, Lcom/sun/org/apache/xpath/internal/axes/FilterExprIteratorSimple;->m_expr:Lcom/sun/org/apache/xpath/internal/Expression;

    move v0, p1

    invoke-static/range {v0 .. v5}, Lcom/sun/org/apache/xpath/internal/axes/FilterExprIteratorSimple;->executeFilterExpr(ILcom/sun/org/apache/xpath/internal/XPathContext;Lcom/sun/org/apache/xml/internal/utils/PrefixResolver;ZILcom/sun/org/apache/xpath/internal/Expression;)Lcom/sun/org/apache/xpath/internal/objects/XNodeSet;

    move-result-object p1

    iput-object p1, p0, Lcom/sun/org/apache/xpath/internal/axes/FilterExprIteratorSimple;->m_exprObj:Lcom/sun/org/apache/xpath/internal/objects/XNodeSet;

    return-void
.end method
