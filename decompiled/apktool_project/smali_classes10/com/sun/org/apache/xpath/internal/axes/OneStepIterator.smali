.class public Lcom/sun/org/apache/xpath/internal/axes/OneStepIterator;
.super Lcom/sun/org/apache/xpath/internal/axes/ChildTestIterator;
.source "SourceFile"


# static fields
.field static final serialVersionUID:J = 0x402ab874e6139f8bL


# instance fields
.field protected m_axis:I

.field protected m_iterator:Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;


# direct methods
.method public constructor <init>(Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 5
    invoke-direct {p0, v0}, Lcom/sun/org/apache/xpath/internal/axes/ChildTestIterator;-><init>(Lcom/sun/org/apache/xml/internal/dtm/DTMAxisTraverser;)V

    .line 6
    iput-object p1, p0, Lcom/sun/org/apache/xpath/internal/axes/OneStepIterator;->m_iterator:Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;

    .line 7
    iput p2, p0, Lcom/sun/org/apache/xpath/internal/axes/OneStepIterator;->m_axis:I

    const/4 p1, -0x1

    .line 8
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xpath/internal/patterns/NodeTest;->initNodeTest(I)V

    return-void
.end method

.method public constructor <init>(Lcom/sun/org/apache/xpath/internal/compiler/Compiler;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/sun/org/apache/xpath/internal/axes/ChildTestIterator;-><init>(Lcom/sun/org/apache/xpath/internal/compiler/Compiler;II)V

    const/4 p3, -0x1

    .line 2
    iput p3, p0, Lcom/sun/org/apache/xpath/internal/axes/OneStepIterator;->m_axis:I

    .line 3
    invoke-static {p2}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->getFirstChildPos(I)I

    move-result p2

    .line 4
    invoke-static {p1, p2}, Lcom/sun/org/apache/xpath/internal/axes/WalkerFactory;->getAxisFromStep(Lcom/sun/org/apache/xpath/internal/compiler/Compiler;I)I

    move-result p1

    iput p1, p0, Lcom/sun/org/apache/xpath/internal/axes/OneStepIterator;->m_axis:I

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-super {p0}, Lcom/sun/org/apache/xpath/internal/axes/PredicatedNodeTest;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/xpath/internal/axes/OneStepIterator;

    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/axes/OneStepIterator;->m_iterator:Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;->cloneIterator()Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;

    move-result-object p0

    iput-object p0, v0, Lcom/sun/org/apache/xpath/internal/axes/OneStepIterator;->m_iterator:Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;

    :cond_0
    return-object v0
.end method

.method public cloneWithReset()Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-super {p0}, Lcom/sun/org/apache/xpath/internal/axes/ChildTestIterator;->cloneWithReset()Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/xpath/internal/axes/OneStepIterator;

    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/axes/OneStepIterator;->m_iterator:Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;

    iput-object p0, v0, Lcom/sun/org/apache/xpath/internal/axes/OneStepIterator;->m_iterator:Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;

    return-object v0
.end method

.method public countProximityPosition(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/axes/OneStepIterator;->isReverseAxes()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Lcom/sun/org/apache/xpath/internal/axes/PredicatedNodeTest;->countProximityPosition(I)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/axes/PredicatedNodeTest;->m_proximityPositions:[I

    array-length v0, p0

    if-ge p1, v0, :cond_1

    aget v0, p0, p1

    add-int/lit8 v0, v0, -0x1

    aput v0, p0, p1

    :cond_1
    :goto_0
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
    iget p0, p0, Lcom/sun/org/apache/xpath/internal/axes/OneStepIterator;->m_axis:I

    check-cast p1, Lcom/sun/org/apache/xpath/internal/axes/OneStepIterator;

    iget p1, p1, Lcom/sun/org/apache/xpath/internal/axes/OneStepIterator;->m_axis:I

    if-eq p0, p1, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public detach()V
    .locals 2

    iget-boolean v0, p0, Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;->m_allowDetach:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/sun/org/apache/xpath/internal/axes/OneStepIterator;->m_axis:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/org/apache/xpath/internal/axes/OneStepIterator;->m_iterator:Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;

    :cond_0
    invoke-super {p0}, Lcom/sun/org/apache/xpath/internal/axes/ChildTestIterator;->detach()V

    :cond_1
    return-void
.end method

.method public getAxis()I
    .locals 0

    iget p0, p0, Lcom/sun/org/apache/xpath/internal/axes/OneStepIterator;->m_axis:I

    return p0
.end method

.method public getLength()I
    .locals 7

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/axes/OneStepIterator;->isReverseAxes()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;->getLength()I

    move-result p0

    return p0

    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;->m_execContext:Lcom/sun/org/apache/xpath/internal/XPathContext;

    invoke-virtual {v0}, Lcom/sun/org/apache/xpath/internal/XPathContext;->getSubContextList()Lcom/sun/org/apache/xpath/internal/axes/SubContextList;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p0, v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/axes/PredicatedNodeTest;->getPredicateCount()I

    iget v3, p0, Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;->m_length:I

    const/4 v4, -0x1

    if-eq v4, v3, :cond_2

    if-eqz v0, :cond_2

    iget v5, p0, Lcom/sun/org/apache/xpath/internal/axes/PredicatedNodeTest;->m_predicateIndex:I

    if-ge v5, v2, :cond_2

    return v3

    :cond_2
    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;->getXPathContext()Lcom/sun/org/apache/xpath/internal/XPathContext;

    move-result-object v3

    :try_start_0
    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/axes/OneStepIterator;->cloneWithReset()Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;

    move-result-object v5

    check-cast v5, Lcom/sun/org/apache/xpath/internal/axes/OneStepIterator;

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;->getRoot()I

    move-result v6

    invoke-virtual {v3, v6}, Lcom/sun/org/apache/xpath/internal/XPathContext;->pushCurrentNode(I)V

    invoke-virtual {v5, v6, v3}, Lcom/sun/org/apache/xpath/internal/axes/OneStepIterator;->setRoot(ILjava/lang/Object;)V

    iget v6, p0, Lcom/sun/org/apache/xpath/internal/axes/PredicatedNodeTest;->m_predicateIndex:I

    iput v6, v5, Lcom/sun/org/apache/xpath/internal/axes/PredicatedNodeTest;->m_predCount:I

    :goto_1
    invoke-virtual {v5}, Lcom/sun/org/apache/xpath/internal/axes/BasicTestIterator;->nextNode()I

    move-result v6
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v4, v6, :cond_3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :catchall_0
    move-exception p0

    invoke-virtual {v3}, Lcom/sun/org/apache/xpath/internal/XPathContext;->popCurrentNode()V

    throw p0

    :catch_0
    :cond_3
    invoke-virtual {v3}, Lcom/sun/org/apache/xpath/internal/XPathContext;->popCurrentNode()V

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/sun/org/apache/xpath/internal/axes/PredicatedNodeTest;->m_predicateIndex:I

    if-ge v0, v2, :cond_4

    iput v1, p0, Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;->m_length:I

    :cond_4
    return v1
.end method

.method public getNextNode()I
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xpath/internal/axes/OneStepIterator;->m_iterator:Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;

    invoke-interface {v0}, Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;->next()I

    move-result v0

    iput v0, p0, Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;->m_lastFetched:I

    return v0
.end method

.method public getProximityPosition(I)I
    .locals 5

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/axes/OneStepIterator;->isReverseAxes()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Lcom/sun/org/apache/xpath/internal/axes/PredicatedNodeTest;->getProximityPosition(I)I

    move-result p0

    return p0

    :cond_0
    const/4 v0, -0x1

    if-gez p1, :cond_1

    return v0

    :cond_1
    iget-object v1, p0, Lcom/sun/org/apache/xpath/internal/axes/PredicatedNodeTest;->m_proximityPositions:[I

    aget v1, v1, p1

    if-gtz v1, :cond_3

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;->getXPathContext()Lcom/sun/org/apache/xpath/internal/XPathContext;

    move-result-object v1

    :try_start_0
    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/axes/OneStepIterator;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/org/apache/xpath/internal/axes/OneStepIterator;

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;->getRoot()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/sun/org/apache/xpath/internal/XPathContext;->pushCurrentNode(I)V

    invoke-virtual {v2, v3, v1}, Lcom/sun/org/apache/xpath/internal/axes/OneStepIterator;->setRoot(ILjava/lang/Object;)V

    iput p1, v2, Lcom/sun/org/apache/xpath/internal/axes/PredicatedNodeTest;->m_predCount:I

    const/4 v3, 0x1

    :goto_0
    invoke-virtual {v2}, Lcom/sun/org/apache/xpath/internal/axes/BasicTestIterator;->nextNode()I

    move-result v4

    if-eq v0, v4, :cond_2

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/sun/org/apache/xpath/internal/axes/PredicatedNodeTest;->m_proximityPositions:[I

    aget v2, v0, p1

    add-int/2addr v2, v3

    aput v2, v0, p1
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    invoke-virtual {v1}, Lcom/sun/org/apache/xpath/internal/XPathContext;->popCurrentNode()V

    throw p0

    :catch_0
    :goto_1
    invoke-virtual {v1}, Lcom/sun/org/apache/xpath/internal/XPathContext;->popCurrentNode()V

    :cond_3
    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/axes/PredicatedNodeTest;->m_proximityPositions:[I

    aget p0, p0, p1

    return p0
.end method

.method public isReverseAxes()Z
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/axes/OneStepIterator;->m_iterator:Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;

    invoke-interface {p0}, Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;->isReverse()Z

    move-result p0

    return p0
.end method

.method public reset()V
    .locals 0

    invoke-super {p0}, Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;->reset()V

    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/axes/OneStepIterator;->m_iterator:Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;->reset()Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;

    :cond_0
    return-void
.end method

.method public setRoot(ILjava/lang/Object;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/sun/org/apache/xpath/internal/axes/ChildTestIterator;->setRoot(ILjava/lang/Object;)V

    iget p1, p0, Lcom/sun/org/apache/xpath/internal/axes/OneStepIterator;->m_axis:I

    const/4 p2, -0x1

    if-le p1, p2, :cond_0

    iget-object p2, p0, Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;->m_cdtm:Lcom/sun/org/apache/xml/internal/dtm/DTM;

    invoke-interface {p2, p1}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->getAxisIterator(I)Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;

    move-result-object p1

    iput-object p1, p0, Lcom/sun/org/apache/xpath/internal/axes/OneStepIterator;->m_iterator:Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;

    :cond_0
    iget-object p1, p0, Lcom/sun/org/apache/xpath/internal/axes/OneStepIterator;->m_iterator:Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;

    iget p0, p0, Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;->m_context:I

    invoke-interface {p1, p0}, Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;->setStartNode(I)Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;

    return-void
.end method
