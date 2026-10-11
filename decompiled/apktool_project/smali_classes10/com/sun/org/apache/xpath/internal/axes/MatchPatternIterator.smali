.class public Lcom/sun/org/apache/xpath/internal/axes/MatchPatternIterator;
.super Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;
.source "SourceFile"


# static fields
.field private static final DEBUG:Z = false

.field static final serialVersionUID:J = -0x482e35cb67d7471aL


# instance fields
.field protected m_pattern:Lcom/sun/org/apache/xpath/internal/patterns/StepPattern;

.field protected m_superAxis:I

.field protected m_traverser:Lcom/sun/org/apache/xml/internal/dtm/DTMAxisTraverser;


# direct methods
.method public constructor <init>(Lcom/sun/org/apache/xpath/internal/compiler/Compiler;II)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;-><init>(Lcom/sun/org/apache/xpath/internal/compiler/Compiler;IIZ)V

    const/4 v1, -0x1

    iput v1, p0, Lcom/sun/org/apache/xpath/internal/axes/MatchPatternIterator;->m_superAxis:I

    invoke-static {p2}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->getFirstChildPos(I)I

    move-result p2

    invoke-static {p0, p1, p2, v0}, Lcom/sun/org/apache/xpath/internal/axes/WalkerFactory;->loadSteps(Lcom/sun/org/apache/xpath/internal/axes/MatchPatternIterator;Lcom/sun/org/apache/xpath/internal/compiler/Compiler;II)Lcom/sun/org/apache/xpath/internal/patterns/StepPattern;

    move-result-object p1

    iput-object p1, p0, Lcom/sun/org/apache/xpath/internal/axes/MatchPatternIterator;->m_pattern:Lcom/sun/org/apache/xpath/internal/patterns/StepPattern;

    const/high16 p1, 0x28000000

    and-int/2addr p1, p3

    const/4 p2, 0x1

    if-eqz p1, :cond_0

    move p1, p2

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    const v1, 0x5d86000

    and-int/2addr v1, p3

    if-eqz v1, :cond_1

    move v1, p2

    goto :goto_1

    :cond_1
    move v1, v0

    :goto_1
    const/high16 v2, 0x70000

    and-int/2addr v2, p3

    if-eqz v2, :cond_2

    move v2, p2

    goto :goto_2

    :cond_2
    move v2, v0

    :goto_2
    const v3, 0x208000

    and-int/2addr p3, v3

    if-eqz p3, :cond_3

    move v0, p2

    :cond_3
    const/16 p2, 0x10

    if-nez p1, :cond_7

    if-eqz v1, :cond_4

    goto :goto_3

    :cond_4
    if-eqz v2, :cond_6

    if-eqz v0, :cond_5

    const/16 p1, 0xe

    iput p1, p0, Lcom/sun/org/apache/xpath/internal/axes/MatchPatternIterator;->m_superAxis:I

    goto :goto_4

    :cond_5
    const/4 p1, 0x5

    iput p1, p0, Lcom/sun/org/apache/xpath/internal/axes/MatchPatternIterator;->m_superAxis:I

    goto :goto_4

    :cond_6
    iput p2, p0, Lcom/sun/org/apache/xpath/internal/axes/MatchPatternIterator;->m_superAxis:I

    goto :goto_4

    :cond_7
    :goto_3
    if-eqz v0, :cond_8

    iput p2, p0, Lcom/sun/org/apache/xpath/internal/axes/MatchPatternIterator;->m_superAxis:I

    goto :goto_4

    :cond_8
    const/16 p1, 0x11

    iput p1, p0, Lcom/sun/org/apache/xpath/internal/axes/MatchPatternIterator;->m_superAxis:I

    :goto_4
    return-void
.end method


# virtual methods
.method public acceptNode(ILcom/sun/org/apache/xpath/internal/XPathContext;)S
    .locals 0

    :try_start_0
    invoke-virtual {p2, p1}, Lcom/sun/org/apache/xpath/internal/XPathContext;->pushCurrentNode(I)V

    iget p1, p0, Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;->m_context:I

    invoke-virtual {p2, p1}, Lcom/sun/org/apache/xpath/internal/XPathContext;->pushIteratorRoot(I)V

    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/axes/MatchPatternIterator;->m_pattern:Lcom/sun/org/apache/xpath/internal/patterns/StepPattern;

    invoke-virtual {p0, p2}, Lcom/sun/org/apache/xpath/internal/patterns/StepPattern;->execute(Lcom/sun/org/apache/xpath/internal/XPathContext;)Lcom/sun/org/apache/xpath/internal/objects/XObject;

    move-result-object p0

    sget-object p1, Lcom/sun/org/apache/xpath/internal/patterns/NodeTest;->SCORE_NONE:Lcom/sun/org/apache/xpath/internal/objects/XNumber;
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne p0, p1, :cond_0

    const/4 p0, 0x3

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    invoke-virtual {p2}, Lcom/sun/org/apache/xpath/internal/XPathContext;->popCurrentNode()V

    invoke-virtual {p2}, Lcom/sun/org/apache/xpath/internal/XPathContext;->popIteratorRoot()V

    return p0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    :try_start_1
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    invoke-virtual {p2}, Lcom/sun/org/apache/xpath/internal/XPathContext;->popCurrentNode()V

    invoke-virtual {p2}, Lcom/sun/org/apache/xpath/internal/XPathContext;->popIteratorRoot()V

    throw p0
.end method

.method public detach()V
    .locals 1

    iget-boolean v0, p0, Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;->m_allowDetach:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/org/apache/xpath/internal/axes/MatchPatternIterator;->m_traverser:Lcom/sun/org/apache/xml/internal/dtm/DTMAxisTraverser;

    invoke-super {p0}, Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;->detach()V

    :cond_0
    return-void
.end method

.method public getNextNode()I
    .locals 3

    iget v0, p0, Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;->m_lastFetched:I

    const/4 v1, -0x1

    if-ne v1, v0, :cond_0

    iget-object v0, p0, Lcom/sun/org/apache/xpath/internal/axes/MatchPatternIterator;->m_traverser:Lcom/sun/org/apache/xml/internal/dtm/DTMAxisTraverser;

    iget v1, p0, Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;->m_context:I

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xml/internal/dtm/DTMAxisTraverser;->first(I)I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/sun/org/apache/xpath/internal/axes/MatchPatternIterator;->m_traverser:Lcom/sun/org/apache/xml/internal/dtm/DTMAxisTraverser;

    iget v2, p0, Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;->m_context:I

    invoke-virtual {v1, v2, v0}, Lcom/sun/org/apache/xml/internal/dtm/DTMAxisTraverser;->next(II)I

    move-result v0

    :goto_0
    iput v0, p0, Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;->m_lastFetched:I

    return v0
.end method

.method public nextNode()I
    .locals 6

    iget-boolean v0, p0, Lcom/sun/org/apache/xpath/internal/axes/PredicatedNodeTest;->m_foundLast:Z

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget v0, p0, Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;->m_stackFrame:I

    if-eq v1, v0, :cond_1

    iget-object v0, p0, Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;->m_execContext:Lcom/sun/org/apache/xpath/internal/XPathContext;

    invoke-virtual {v0}, Lcom/sun/org/apache/xpath/internal/XPathContext;->getVarStack()Lcom/sun/org/apache/xpath/internal/VariableStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/org/apache/xpath/internal/VariableStack;->getStackFrame()I

    move-result v2

    iget v3, p0, Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;->m_stackFrame:I

    invoke-virtual {v0, v3}, Lcom/sun/org/apache/xpath/internal/VariableStack;->setStackFrame(I)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    const/4 v2, 0x0

    :cond_2
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/axes/MatchPatternIterator;->getNextNode()I

    move-result v3

    const/4 v4, 0x1

    if-eq v1, v3, :cond_4

    iget-object v5, p0, Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;->m_execContext:Lcom/sun/org/apache/xpath/internal/XPathContext;

    invoke-virtual {p0, v3, v5}, Lcom/sun/org/apache/xpath/internal/axes/MatchPatternIterator;->acceptNode(ILcom/sun/org/apache/xpath/internal/XPathContext;)S

    move-result v5

    if-ne v4, v5, :cond_3

    goto :goto_1

    :cond_3
    if-ne v3, v1, :cond_2

    :cond_4
    :goto_1
    if-eq v1, v3, :cond_6

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;->incrementCurrentPos()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget p0, p0, Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;->m_stackFrame:I

    if-eq v1, p0, :cond_5

    invoke-virtual {v0, v2}, Lcom/sun/org/apache/xpath/internal/VariableStack;->setStackFrame(I)V

    :cond_5
    return v3

    :cond_6
    :try_start_1
    iput-boolean v4, p0, Lcom/sun/org/apache/xpath/internal/axes/PredicatedNodeTest;->m_foundLast:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget p0, p0, Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;->m_stackFrame:I

    if-eq v1, p0, :cond_7

    invoke-virtual {v0, v2}, Lcom/sun/org/apache/xpath/internal/VariableStack;->setStackFrame(I)V

    :cond_7
    return v1

    :catchall_0
    move-exception v3

    iget p0, p0, Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;->m_stackFrame:I

    if-eq v1, p0, :cond_8

    invoke-virtual {v0, v2}, Lcom/sun/org/apache/xpath/internal/VariableStack;->setStackFrame(I)V

    :cond_8
    throw v3
.end method

.method public setRoot(ILjava/lang/Object;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;->setRoot(ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;->m_cdtm:Lcom/sun/org/apache/xml/internal/dtm/DTM;

    iget p2, p0, Lcom/sun/org/apache/xpath/internal/axes/MatchPatternIterator;->m_superAxis:I

    invoke-interface {p1, p2}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->getAxisTraverser(I)Lcom/sun/org/apache/xml/internal/dtm/DTMAxisTraverser;

    move-result-object p1

    iput-object p1, p0, Lcom/sun/org/apache/xpath/internal/axes/MatchPatternIterator;->m_traverser:Lcom/sun/org/apache/xml/internal/dtm/DTMAxisTraverser;

    return-void
.end method
