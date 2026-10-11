.class public Lcom/sun/org/apache/xpath/internal/axes/DescendantIterator;
.super Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;
.source "SourceFile"


# static fields
.field static final serialVersionUID:J = -0x1084eea8350345eaL


# instance fields
.field protected m_axis:I

.field protected m_extendedTypeID:I

.field protected transient m_traverser:Lcom/sun/org/apache/xml/internal/dtm/DTMAxisTraverser;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 16
    invoke-direct {p0, v0}, Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;-><init>(Lcom/sun/org/apache/xml/internal/utils/PrefixResolver;)V

    const/16 v0, 0x12

    .line 17
    iput v0, p0, Lcom/sun/org/apache/xpath/internal/axes/DescendantIterator;->m_axis:I

    const/4 v0, -0x1

    .line 18
    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xpath/internal/patterns/NodeTest;->initNodeTest(I)V

    return-void
.end method

.method public constructor <init>(Lcom/sun/org/apache/xpath/internal/compiler/Compiler;II)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;-><init>(Lcom/sun/org/apache/xpath/internal/compiler/Compiler;IIZ)V

    .line 2
    invoke-static {p2}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->getFirstChildPos(I)I

    move-result p2

    .line 3
    invoke-virtual {p1, p2}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->getOp(I)I

    move-result v1

    const/4 v2, 0x1

    const/16 v3, 0x2a

    if-ne v3, v1, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v0

    :goto_0
    const/16 v5, 0x30

    if-ne v5, v1, :cond_1

    move v4, v2

    goto :goto_1

    :cond_1
    const/16 v5, 0x32

    if-ne v5, v1, :cond_2

    .line 4
    invoke-virtual {p1, p2}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->getNextStepPos(I)I

    move-result v1

    .line 5
    invoke-virtual {p1, v1}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->getOp(I)I

    move-result v1

    if-ne v1, v3, :cond_3

    move v4, v2

    goto :goto_2

    :cond_2
    :goto_1
    move v2, v0

    .line 6
    :cond_3
    :goto_2
    invoke-virtual {p1, p2}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->getNextStepPos(I)I

    move-result v1

    const/4 v3, -0x1

    if-lez v1, :cond_4

    .line 7
    invoke-virtual {p1, v1}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->getOp(I)I

    move-result v5

    if-eq v3, v5, :cond_4

    move p2, v1

    goto :goto_2

    :cond_4
    const/high16 v1, 0x10000

    and-int/2addr p3, v1

    if-eqz p3, :cond_5

    goto :goto_3

    :cond_5
    move v0, v4

    :goto_3
    if-eqz v2, :cond_7

    if-eqz v0, :cond_6

    const/16 p3, 0x12

    .line 8
    iput p3, p0, Lcom/sun/org/apache/xpath/internal/axes/DescendantIterator;->m_axis:I

    goto :goto_4

    :cond_6
    const/16 p3, 0x11

    .line 9
    iput p3, p0, Lcom/sun/org/apache/xpath/internal/axes/DescendantIterator;->m_axis:I

    goto :goto_4

    :cond_7
    if-eqz v0, :cond_8

    const/4 p3, 0x5

    .line 10
    iput p3, p0, Lcom/sun/org/apache/xpath/internal/axes/DescendantIterator;->m_axis:I

    goto :goto_4

    :cond_8
    const/4 p3, 0x4

    .line 11
    iput p3, p0, Lcom/sun/org/apache/xpath/internal/axes/DescendantIterator;->m_axis:I

    .line 12
    :goto_4
    invoke-virtual {p1, p2}, Lcom/sun/org/apache/xpath/internal/compiler/Compiler;->getWhatToShow(I)I

    move-result p3

    and-int/lit8 v0, p3, 0x43

    if-eqz v0, :cond_a

    if-ne p3, v3, :cond_9

    goto :goto_5

    .line 13
    :cond_9
    invoke-virtual {p1, p2}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->getStepNS(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->getStepLocalName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p3, v0, v1}, Lcom/sun/org/apache/xpath/internal/patterns/NodeTest;->initNodeTest(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 14
    :cond_a
    :goto_5
    invoke-virtual {p0, p3}, Lcom/sun/org/apache/xpath/internal/patterns/NodeTest;->initNodeTest(I)V

    .line 15
    :goto_6
    invoke-virtual {p0, p1, p2}, Lcom/sun/org/apache/xpath/internal/axes/PredicatedNodeTest;->initPredicateInfo(Lcom/sun/org/apache/xpath/internal/compiler/Compiler;I)V

    return-void
.end method


# virtual methods
.method public asNode(Lcom/sun/org/apache/xpath/internal/XPathContext;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/axes/PredicatedNodeTest;->getPredicateCount()I

    move-result v0

    if-lez v0, :cond_0

    invoke-super {p0, p1}, Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;->asNode(Lcom/sun/org/apache/xpath/internal/XPathContext;)I

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p1}, Lcom/sun/org/apache/xpath/internal/XPathContext;->getCurrentNode()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/sun/org/apache/xpath/internal/XPathContext;->getDTM(I)Lcom/sun/org/apache/xml/internal/dtm/DTM;

    move-result-object p1

    iget v1, p0, Lcom/sun/org/apache/xpath/internal/axes/DescendantIterator;->m_axis:I

    invoke-interface {p1, v1}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->getAxisTraverser(I)Lcom/sun/org/apache/xml/internal/dtm/DTMAxisTraverser;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/patterns/NodeTest;->getLocalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/patterns/NodeTest;->getNamespace()Ljava/lang/String;

    move-result-object v3

    iget p0, p0, Lcom/sun/org/apache/xpath/internal/patterns/NodeTest;->m_whatToShow:I

    const/4 v4, -0x1

    if-eq v4, p0, :cond_2

    const-string v4, "*"

    if-eq v2, v4, :cond_2

    if-ne v3, v4, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {p0}, Lcom/sun/org/apache/xpath/internal/patterns/NodeTest;->getNodeTypeTest(I)I

    move-result p0

    invoke-interface {p1, v3, v2, p0}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->getExpandedTypeID(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0

    invoke-virtual {v1, v0, p0}, Lcom/sun/org/apache/xml/internal/dtm/DTMAxisTraverser;->first(II)I

    move-result p0

    return p0

    :cond_2
    :goto_0
    invoke-virtual {v1, v0}, Lcom/sun/org/apache/xml/internal/dtm/DTMAxisTraverser;->first(I)I

    move-result p0

    return p0
.end method

.method public cloneWithReset()Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-super {p0}, Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;->cloneWithReset()Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/xpath/internal/axes/DescendantIterator;

    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/axes/DescendantIterator;->m_traverser:Lcom/sun/org/apache/xml/internal/dtm/DTMAxisTraverser;

    iput-object p0, v0, Lcom/sun/org/apache/xpath/internal/axes/DescendantIterator;->m_traverser:Lcom/sun/org/apache/xml/internal/dtm/DTMAxisTraverser;

    invoke-virtual {v0}, Lcom/sun/org/apache/xpath/internal/axes/PredicatedNodeTest;->resetProximityPositions()V

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
    iget p0, p0, Lcom/sun/org/apache/xpath/internal/axes/DescendantIterator;->m_axis:I

    check-cast p1, Lcom/sun/org/apache/xpath/internal/axes/DescendantIterator;

    iget p1, p1, Lcom/sun/org/apache/xpath/internal/axes/DescendantIterator;->m_axis:I

    if-eq p0, p1, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public detach()V
    .locals 1

    iget-boolean v0, p0, Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;->m_allowDetach:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/org/apache/xpath/internal/axes/DescendantIterator;->m_traverser:Lcom/sun/org/apache/xml/internal/dtm/DTMAxisTraverser;

    const/4 v0, 0x0

    iput v0, p0, Lcom/sun/org/apache/xpath/internal/axes/DescendantIterator;->m_extendedTypeID:I

    invoke-super {p0}, Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;->detach()V

    :cond_0
    return-void
.end method

.method public getAxis()I
    .locals 0

    iget p0, p0, Lcom/sun/org/apache/xpath/internal/axes/DescendantIterator;->m_axis:I

    return p0
.end method

.method public nextNode()I
    .locals 7

    iget-boolean v0, p0, Lcom/sun/org/apache/xpath/internal/axes/PredicatedNodeTest;->m_foundLast:Z

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget v0, p0, Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;->m_lastFetched:I

    if-ne v1, v0, :cond_1

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/axes/PredicatedNodeTest;->resetProximityPositions()V

    :cond_1
    iget v0, p0, Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;->m_stackFrame:I

    if-eq v1, v0, :cond_2

    iget-object v0, p0, Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;->m_execContext:Lcom/sun/org/apache/xpath/internal/XPathContext;

    invoke-virtual {v0}, Lcom/sun/org/apache/xpath/internal/XPathContext;->getVarStack()Lcom/sun/org/apache/xpath/internal/VariableStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/org/apache/xpath/internal/VariableStack;->getStackFrame()I

    move-result v2

    iget v3, p0, Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;->m_stackFrame:I

    invoke-virtual {v0, v3}, Lcom/sun/org/apache/xpath/internal/VariableStack;->setStackFrame(I)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    const/4 v2, 0x0

    :cond_3
    :goto_0
    :try_start_0
    iget v3, p0, Lcom/sun/org/apache/xpath/internal/axes/DescendantIterator;->m_extendedTypeID:I

    if-nez v3, :cond_5

    iget v3, p0, Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;->m_lastFetched:I

    if-ne v1, v3, :cond_4

    iget-object v3, p0, Lcom/sun/org/apache/xpath/internal/axes/DescendantIterator;->m_traverser:Lcom/sun/org/apache/xml/internal/dtm/DTMAxisTraverser;

    iget v4, p0, Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;->m_context:I

    invoke-virtual {v3, v4}, Lcom/sun/org/apache/xml/internal/dtm/DTMAxisTraverser;->first(I)I

    move-result v3

    goto :goto_1

    :cond_4
    iget-object v4, p0, Lcom/sun/org/apache/xpath/internal/axes/DescendantIterator;->m_traverser:Lcom/sun/org/apache/xml/internal/dtm/DTMAxisTraverser;

    iget v5, p0, Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;->m_context:I

    invoke-virtual {v4, v5, v3}, Lcom/sun/org/apache/xml/internal/dtm/DTMAxisTraverser;->next(II)I

    move-result v3

    :goto_1
    iput v3, p0, Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;->m_lastFetched:I

    goto :goto_3

    :cond_5
    iget v4, p0, Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;->m_lastFetched:I

    if-ne v1, v4, :cond_6

    iget-object v4, p0, Lcom/sun/org/apache/xpath/internal/axes/DescendantIterator;->m_traverser:Lcom/sun/org/apache/xml/internal/dtm/DTMAxisTraverser;

    iget v5, p0, Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;->m_context:I

    invoke-virtual {v4, v5, v3}, Lcom/sun/org/apache/xml/internal/dtm/DTMAxisTraverser;->first(II)I

    move-result v3

    goto :goto_2

    :cond_6
    iget-object v5, p0, Lcom/sun/org/apache/xpath/internal/axes/DescendantIterator;->m_traverser:Lcom/sun/org/apache/xml/internal/dtm/DTMAxisTraverser;

    iget v6, p0, Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;->m_context:I

    invoke-virtual {v5, v6, v4, v3}, Lcom/sun/org/apache/xml/internal/dtm/DTMAxisTraverser;->next(III)I

    move-result v3

    :goto_2
    iput v3, p0, Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;->m_lastFetched:I

    :goto_3
    const/4 v4, 0x1

    if-eq v1, v3, :cond_8

    invoke-virtual {p0, v3}, Lcom/sun/org/apache/xpath/internal/axes/PredicatedNodeTest;->acceptNode(I)S

    move-result v5

    if-ne v4, v5, :cond_7

    goto :goto_4

    :cond_7
    if-ne v3, v1, :cond_3

    :cond_8
    :goto_4
    if-eq v1, v3, :cond_a

    iget v5, p0, Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;->m_pos:I

    add-int/2addr v5, v4

    iput v5, p0, Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;->m_pos:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget p0, p0, Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;->m_stackFrame:I

    if-eq v1, p0, :cond_9

    invoke-virtual {v0, v2}, Lcom/sun/org/apache/xpath/internal/VariableStack;->setStackFrame(I)V

    :cond_9
    return v3

    :cond_a
    :try_start_1
    iput-boolean v4, p0, Lcom/sun/org/apache/xpath/internal/axes/PredicatedNodeTest;->m_foundLast:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget p0, p0, Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;->m_stackFrame:I

    if-eq v1, p0, :cond_b

    invoke-virtual {v0, v2}, Lcom/sun/org/apache/xpath/internal/VariableStack;->setStackFrame(I)V

    :cond_b
    return v1

    :catchall_0
    move-exception v3

    iget p0, p0, Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;->m_stackFrame:I

    if-eq v1, p0, :cond_c

    invoke-virtual {v0, v2}, Lcom/sun/org/apache/xpath/internal/VariableStack;->setStackFrame(I)V

    :cond_c
    throw v3
.end method

.method public setRoot(ILjava/lang/Object;)V
    .locals 3

    invoke-super {p0, p1, p2}, Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;->setRoot(ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;->m_cdtm:Lcom/sun/org/apache/xml/internal/dtm/DTM;

    iget p2, p0, Lcom/sun/org/apache/xpath/internal/axes/DescendantIterator;->m_axis:I

    invoke-interface {p1, p2}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->getAxisTraverser(I)Lcom/sun/org/apache/xml/internal/dtm/DTMAxisTraverser;

    move-result-object p1

    iput-object p1, p0, Lcom/sun/org/apache/xpath/internal/axes/DescendantIterator;->m_traverser:Lcom/sun/org/apache/xml/internal/dtm/DTMAxisTraverser;

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/patterns/NodeTest;->getLocalName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/patterns/NodeTest;->getNamespace()Ljava/lang/String;

    move-result-object p2

    iget v0, p0, Lcom/sun/org/apache/xpath/internal/patterns/NodeTest;->m_whatToShow:I

    const/4 v1, -0x1

    if-eq v1, v0, :cond_1

    const-string v1, "*"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lcom/sun/org/apache/xpath/internal/patterns/NodeTest;->getNodeTypeTest(I)I

    move-result v0

    iget-object v1, p0, Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;->m_cdtm:Lcom/sun/org/apache/xml/internal/dtm/DTM;

    invoke-interface {v1, p2, p1, v0}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->getExpandedTypeID(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/sun/org/apache/xpath/internal/axes/DescendantIterator;->m_extendedTypeID:I

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    iput p1, p0, Lcom/sun/org/apache/xpath/internal/axes/DescendantIterator;->m_extendedTypeID:I

    :goto_1
    return-void
.end method
