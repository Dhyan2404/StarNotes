.class public Lcom/sun/org/apache/xpath/internal/axes/WalkingIterator;
.super Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;
.source "SourceFile"

# interfaces
.implements Lcom/sun/org/apache/xpath/internal/ExpressionOwner;


# static fields
.field static final serialVersionUID:J = 0x7e6e0639dd78a4f2L


# instance fields
.field protected m_firstWalker:Lcom/sun/org/apache/xpath/internal/axes/AxesWalker;

.field protected m_lastUsedWalker:Lcom/sun/org/apache/xpath/internal/axes/AxesWalker;


# direct methods
.method public constructor <init>(Lcom/sun/org/apache/xml/internal/utils/PrefixResolver;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1}, Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;-><init>(Lcom/sun/org/apache/xml/internal/utils/PrefixResolver;)V

    return-void
.end method

.method public constructor <init>(Lcom/sun/org/apache/xpath/internal/compiler/Compiler;IIZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;-><init>(Lcom/sun/org/apache/xpath/internal/compiler/Compiler;IIZ)V

    .line 2
    invoke-static {p2}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->getFirstChildPos(I)I

    move-result p2

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 3
    invoke-static {p0, p1, p2, p3}, Lcom/sun/org/apache/xpath/internal/axes/WalkerFactory;->loadWalkers(Lcom/sun/org/apache/xpath/internal/axes/WalkingIterator;Lcom/sun/org/apache/xpath/internal/compiler/Compiler;II)Lcom/sun/org/apache/xpath/internal/axes/AxesWalker;

    move-result-object p1

    iput-object p1, p0, Lcom/sun/org/apache/xpath/internal/axes/WalkingIterator;->m_firstWalker:Lcom/sun/org/apache/xpath/internal/axes/AxesWalker;

    .line 4
    iput-object p1, p0, Lcom/sun/org/apache/xpath/internal/axes/WalkingIterator;->m_lastUsedWalker:Lcom/sun/org/apache/xpath/internal/axes/AxesWalker;

    :cond_0
    return-void
.end method


# virtual methods
.method public callVisitors(Lcom/sun/org/apache/xpath/internal/ExpressionOwner;Lcom/sun/org/apache/xpath/internal/XPathVisitor;)V
    .locals 0

    invoke-virtual {p2, p1, p0}, Lcom/sun/org/apache/xpath/internal/XPathVisitor;->visitLocationPath(Lcom/sun/org/apache/xpath/internal/ExpressionOwner;Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sun/org/apache/xpath/internal/axes/WalkingIterator;->m_firstWalker:Lcom/sun/org/apache/xpath/internal/axes/AxesWalker;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p0, p2}, Lcom/sun/org/apache/xpath/internal/axes/AxesWalker;->callVisitors(Lcom/sun/org/apache/xpath/internal/ExpressionOwner;Lcom/sun/org/apache/xpath/internal/XPathVisitor;)V

    :cond_0
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-super {p0}, Lcom/sun/org/apache/xpath/internal/axes/PredicatedNodeTest;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/xpath/internal/axes/WalkingIterator;

    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/axes/WalkingIterator;->m_firstWalker:Lcom/sun/org/apache/xpath/internal/axes/AxesWalker;

    if-eqz p0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sun/org/apache/xpath/internal/axes/AxesWalker;->cloneDeep(Lcom/sun/org/apache/xpath/internal/axes/WalkingIterator;Ljava/util/Vector;)Lcom/sun/org/apache/xpath/internal/axes/AxesWalker;

    move-result-object p0

    iput-object p0, v0, Lcom/sun/org/apache/xpath/internal/axes/WalkingIterator;->m_firstWalker:Lcom/sun/org/apache/xpath/internal/axes/AxesWalker;

    :cond_0
    return-object v0
.end method

.method public deepEquals(Lcom/sun/org/apache/xpath/internal/Expression;)Z
    .locals 2

    invoke-super {p0, p1}, Lcom/sun/org/apache/xpath/internal/axes/PredicatedNodeTest;->deepEquals(Lcom/sun/org/apache/xpath/internal/Expression;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/axes/WalkingIterator;->m_firstWalker:Lcom/sun/org/apache/xpath/internal/axes/AxesWalker;

    check-cast p1, Lcom/sun/org/apache/xpath/internal/axes/WalkingIterator;

    iget-object p1, p1, Lcom/sun/org/apache/xpath/internal/axes/WalkingIterator;->m_firstWalker:Lcom/sun/org/apache/xpath/internal/axes/AxesWalker;

    :goto_0
    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xpath/internal/axes/AxesWalker;->deepEquals(Lcom/sun/org/apache/xpath/internal/Expression;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/axes/AxesWalker;->getNextWalker()Lcom/sun/org/apache/xpath/internal/axes/AxesWalker;

    move-result-object p0

    invoke-virtual {p1}, Lcom/sun/org/apache/xpath/internal/axes/AxesWalker;->getNextWalker()Lcom/sun/org/apache/xpath/internal/axes/AxesWalker;

    move-result-object p1

    goto :goto_0

    :cond_2
    if-nez p0, :cond_4

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    const/4 p0, 0x1

    return p0

    :cond_4
    :goto_1
    return v1
.end method

.method public detach()V
    .locals 1

    iget-boolean v0, p0, Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;->m_allowDetach:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sun/org/apache/xpath/internal/axes/WalkingIterator;->m_firstWalker:Lcom/sun/org/apache/xpath/internal/axes/AxesWalker;

    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sun/org/apache/xpath/internal/axes/AxesWalker;->detach()V

    invoke-virtual {v0}, Lcom/sun/org/apache/xpath/internal/axes/AxesWalker;->getNextWalker()Lcom/sun/org/apache/xpath/internal/axes/AxesWalker;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/org/apache/xpath/internal/axes/WalkingIterator;->m_lastUsedWalker:Lcom/sun/org/apache/xpath/internal/axes/AxesWalker;

    invoke-super {p0}, Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;->detach()V

    :cond_1
    return-void
.end method

.method public fixupVariables(Ljava/util/Vector;I)V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lcom/sun/org/apache/xpath/internal/axes/PredicatedNodeTest;->m_predicateIndex:I

    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/axes/WalkingIterator;->m_firstWalker:Lcom/sun/org/apache/xpath/internal/axes/AxesWalker;

    :goto_0
    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/sun/org/apache/xpath/internal/axes/PredicatedNodeTest;->fixupVariables(Ljava/util/Vector;I)V

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/axes/AxesWalker;->getNextWalker()Lcom/sun/org/apache/xpath/internal/axes/AxesWalker;

    move-result-object p0

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getAnalysisBits()I
    .locals 2

    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/axes/WalkingIterator;->m_firstWalker:Lcom/sun/org/apache/xpath/internal/axes/AxesWalker;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    :goto_0
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/axes/AxesWalker;->getAnalysisBits()I

    move-result v1

    or-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/axes/AxesWalker;->getNextWalker()Lcom/sun/org/apache/xpath/internal/axes/AxesWalker;

    move-result-object p0

    goto :goto_0

    :cond_0
    return v0
.end method

.method public getExpression()Lcom/sun/org/apache/xpath/internal/Expression;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/axes/WalkingIterator;->m_firstWalker:Lcom/sun/org/apache/xpath/internal/axes/AxesWalker;

    return-object p0
.end method

.method public final getFirstWalker()Lcom/sun/org/apache/xpath/internal/axes/AxesWalker;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/axes/WalkingIterator;->m_firstWalker:Lcom/sun/org/apache/xpath/internal/axes/AxesWalker;

    return-object p0
.end method

.method public final getLastUsedWalker()Lcom/sun/org/apache/xpath/internal/axes/AxesWalker;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/axes/WalkingIterator;->m_lastUsedWalker:Lcom/sun/org/apache/xpath/internal/axes/AxesWalker;

    return-object p0
.end method

.method public nextNode()I
    .locals 3

    iget-boolean v0, p0, Lcom/sun/org/apache/xpath/internal/axes/PredicatedNodeTest;->m_foundLast:Z

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget v0, p0, Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;->m_stackFrame:I

    if-ne v1, v0, :cond_1

    iget-object v0, p0, Lcom/sun/org/apache/xpath/internal/axes/WalkingIterator;->m_firstWalker:Lcom/sun/org/apache/xpath/internal/axes/AxesWalker;

    invoke-virtual {v0}, Lcom/sun/org/apache/xpath/internal/axes/AxesWalker;->nextNode()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;->returnNextNode(I)I

    move-result p0

    return p0

    :cond_1
    iget-object v0, p0, Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;->m_execContext:Lcom/sun/org/apache/xpath/internal/XPathContext;

    invoke-virtual {v0}, Lcom/sun/org/apache/xpath/internal/XPathContext;->getVarStack()Lcom/sun/org/apache/xpath/internal/VariableStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/org/apache/xpath/internal/VariableStack;->getStackFrame()I

    move-result v1

    iget v2, p0, Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;->m_stackFrame:I

    invoke-virtual {v0, v2}, Lcom/sun/org/apache/xpath/internal/VariableStack;->setStackFrame(I)V

    iget-object v2, p0, Lcom/sun/org/apache/xpath/internal/axes/WalkingIterator;->m_firstWalker:Lcom/sun/org/apache/xpath/internal/axes/AxesWalker;

    invoke-virtual {v2}, Lcom/sun/org/apache/xpath/internal/axes/AxesWalker;->nextNode()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;->returnNextNode(I)I

    move-result p0

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xpath/internal/VariableStack;->setStackFrame(I)V

    return p0
.end method

.method public reset()V
    .locals 1

    invoke-super {p0}, Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;->reset()V

    iget-object v0, p0, Lcom/sun/org/apache/xpath/internal/axes/WalkingIterator;->m_firstWalker:Lcom/sun/org/apache/xpath/internal/axes/AxesWalker;

    if-eqz v0, :cond_0

    iput-object v0, p0, Lcom/sun/org/apache/xpath/internal/axes/WalkingIterator;->m_lastUsedWalker:Lcom/sun/org/apache/xpath/internal/axes/AxesWalker;

    iget p0, p0, Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;->m_context:I

    invoke-virtual {v0, p0}, Lcom/sun/org/apache/xpath/internal/axes/AxesWalker;->setRoot(I)V

    :cond_0
    return-void
.end method

.method public setExpression(Lcom/sun/org/apache/xpath/internal/Expression;)V
    .locals 0

    invoke-virtual {p1, p0}, Lcom/sun/org/apache/xpath/internal/Expression;->exprSetParent(Lcom/sun/org/apache/xpath/internal/ExpressionNode;)V

    check-cast p1, Lcom/sun/org/apache/xpath/internal/axes/AxesWalker;

    iput-object p1, p0, Lcom/sun/org/apache/xpath/internal/axes/WalkingIterator;->m_firstWalker:Lcom/sun/org/apache/xpath/internal/axes/AxesWalker;

    return-void
.end method

.method public final setFirstWalker(Lcom/sun/org/apache/xpath/internal/axes/AxesWalker;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xpath/internal/axes/WalkingIterator;->m_firstWalker:Lcom/sun/org/apache/xpath/internal/axes/AxesWalker;

    return-void
.end method

.method public final setLastUsedWalker(Lcom/sun/org/apache/xpath/internal/axes/AxesWalker;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xpath/internal/axes/WalkingIterator;->m_lastUsedWalker:Lcom/sun/org/apache/xpath/internal/axes/AxesWalker;

    return-void
.end method

.method public setRoot(ILjava/lang/Object;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;->setRoot(ILjava/lang/Object;)V

    iget-object p2, p0, Lcom/sun/org/apache/xpath/internal/axes/WalkingIterator;->m_firstWalker:Lcom/sun/org/apache/xpath/internal/axes/AxesWalker;

    if-eqz p2, :cond_0

    invoke-virtual {p2, p1}, Lcom/sun/org/apache/xpath/internal/axes/AxesWalker;->setRoot(I)V

    iget-object p1, p0, Lcom/sun/org/apache/xpath/internal/axes/WalkingIterator;->m_firstWalker:Lcom/sun/org/apache/xpath/internal/axes/AxesWalker;

    iput-object p1, p0, Lcom/sun/org/apache/xpath/internal/axes/WalkingIterator;->m_lastUsedWalker:Lcom/sun/org/apache/xpath/internal/axes/AxesWalker;

    :cond_0
    return-void
.end method
