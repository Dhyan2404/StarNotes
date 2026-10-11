.class public Lcom/sun/org/apache/xpath/internal/axes/OneStepIteratorForward;
.super Lcom/sun/org/apache/xpath/internal/axes/ChildTestIterator;
.source "SourceFile"


# static fields
.field static final serialVersionUID:J = -0x15e2677d048fa4e6L


# instance fields
.field protected m_axis:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    .line 5
    invoke-direct {p0, v0}, Lcom/sun/org/apache/xpath/internal/axes/ChildTestIterator;-><init>(Lcom/sun/org/apache/xml/internal/dtm/DTMAxisTraverser;)V

    .line 6
    iput p1, p0, Lcom/sun/org/apache/xpath/internal/axes/OneStepIteratorForward;->m_axis:I

    const/4 p1, -0x1

    .line 7
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
    iput p3, p0, Lcom/sun/org/apache/xpath/internal/axes/OneStepIteratorForward;->m_axis:I

    .line 3
    invoke-static {p2}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->getFirstChildPos(I)I

    move-result p2

    .line 4
    invoke-static {p1, p2}, Lcom/sun/org/apache/xpath/internal/axes/WalkerFactory;->getAxisFromStep(Lcom/sun/org/apache/xpath/internal/compiler/Compiler;I)I

    move-result p1

    iput p1, p0, Lcom/sun/org/apache/xpath/internal/axes/OneStepIteratorForward;->m_axis:I

    return-void
.end method


# virtual methods
.method public deepEquals(Lcom/sun/org/apache/xpath/internal/Expression;)Z
    .locals 2

    invoke-super {p0, p1}, Lcom/sun/org/apache/xpath/internal/axes/PredicatedNodeTest;->deepEquals(Lcom/sun/org/apache/xpath/internal/Expression;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget p0, p0, Lcom/sun/org/apache/xpath/internal/axes/OneStepIteratorForward;->m_axis:I

    check-cast p1, Lcom/sun/org/apache/xpath/internal/axes/OneStepIteratorForward;

    iget p1, p1, Lcom/sun/org/apache/xpath/internal/axes/OneStepIteratorForward;->m_axis:I

    if-eq p0, p1, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public getAxis()I
    .locals 0

    iget p0, p0, Lcom/sun/org/apache/xpath/internal/axes/OneStepIteratorForward;->m_axis:I

    return p0
.end method

.method public getNextNode()I
    .locals 3

    iget v0, p0, Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;->m_lastFetched:I

    const/4 v1, -0x1

    if-ne v1, v0, :cond_0

    iget-object v0, p0, Lcom/sun/org/apache/xpath/internal/axes/ChildTestIterator;->m_traverser:Lcom/sun/org/apache/xml/internal/dtm/DTMAxisTraverser;

    iget v1, p0, Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;->m_context:I

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xml/internal/dtm/DTMAxisTraverser;->first(I)I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/sun/org/apache/xpath/internal/axes/ChildTestIterator;->m_traverser:Lcom/sun/org/apache/xml/internal/dtm/DTMAxisTraverser;

    iget v2, p0, Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;->m_context:I

    invoke-virtual {v1, v2, v0}, Lcom/sun/org/apache/xml/internal/dtm/DTMAxisTraverser;->next(II)I

    move-result v0

    :goto_0
    iput v0, p0, Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;->m_lastFetched:I

    return v0
.end method

.method public setRoot(ILjava/lang/Object;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/sun/org/apache/xpath/internal/axes/ChildTestIterator;->setRoot(ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;->m_cdtm:Lcom/sun/org/apache/xml/internal/dtm/DTM;

    iget p2, p0, Lcom/sun/org/apache/xpath/internal/axes/OneStepIteratorForward;->m_axis:I

    invoke-interface {p1, p2}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->getAxisTraverser(I)Lcom/sun/org/apache/xml/internal/dtm/DTMAxisTraverser;

    move-result-object p1

    iput-object p1, p0, Lcom/sun/org/apache/xpath/internal/axes/ChildTestIterator;->m_traverser:Lcom/sun/org/apache/xml/internal/dtm/DTMAxisTraverser;

    return-void
.end method
