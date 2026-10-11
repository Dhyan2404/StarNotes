.class public abstract Lcom/sun/org/apache/xpath/internal/axes/BasicTestIterator;
.super Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;
.source "SourceFile"


# static fields
.field static final serialVersionUID:J = 0x30a59aca78c5c1efL


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/sun/org/apache/xml/internal/utils/PrefixResolver;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;-><init>(Lcom/sun/org/apache/xml/internal/utils/PrefixResolver;)V

    return-void
.end method

.method public constructor <init>(Lcom/sun/org/apache/xpath/internal/compiler/Compiler;II)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;-><init>(Lcom/sun/org/apache/xpath/internal/compiler/Compiler;IIZ)V

    .line 4
    invoke-static {p2}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->getFirstChildPos(I)I

    move-result p2

    .line 5
    invoke-virtual {p1, p2}, Lcom/sun/org/apache/xpath/internal/compiler/Compiler;->getWhatToShow(I)I

    move-result p3

    and-int/lit16 v0, p3, 0x1043

    if-eqz v0, :cond_1

    const/4 v0, -0x1

    if-ne p3, v0, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p1, p2}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->getStepNS(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->getStepLocalName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p3, v0, v1}, Lcom/sun/org/apache/xpath/internal/patterns/NodeTest;->initNodeTest(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 7
    :cond_1
    :goto_0
    invoke-virtual {p0, p3}, Lcom/sun/org/apache/xpath/internal/patterns/NodeTest;->initNodeTest(I)V

    .line 8
    :goto_1
    invoke-virtual {p0, p1, p2}, Lcom/sun/org/apache/xpath/internal/axes/PredicatedNodeTest;->initPredicateInfo(Lcom/sun/org/apache/xpath/internal/compiler/Compiler;I)V

    return-void
.end method

.method public constructor <init>(Lcom/sun/org/apache/xpath/internal/compiler/Compiler;IIZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 9
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;-><init>(Lcom/sun/org/apache/xpath/internal/compiler/Compiler;IIZ)V

    return-void
.end method


# virtual methods
.method public cloneWithReset()Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-super {p0}, Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;->cloneWithReset()Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;

    move-result-object p0

    check-cast p0, Lcom/sun/org/apache/xpath/internal/axes/ChildTestIterator;

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/axes/PredicatedNodeTest;->resetProximityPositions()V

    return-object p0
.end method

.method public abstract getNextNode()I
.end method

.method public nextNode()I
    .locals 6

    iget-boolean v0, p0, Lcom/sun/org/apache/xpath/internal/axes/PredicatedNodeTest;->m_foundLast:Z

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    iput v1, p0, Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;->m_lastFetched:I

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
    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/axes/BasicTestIterator;->getNextNode()I

    move-result v3

    const/4 v4, 0x1

    if-eq v1, v3, :cond_5

    invoke-virtual {p0, v3}, Lcom/sun/org/apache/xpath/internal/axes/PredicatedNodeTest;->acceptNode(I)S

    move-result v5

    if-ne v4, v5, :cond_4

    goto :goto_1

    :cond_4
    if-ne v3, v1, :cond_3

    :cond_5
    :goto_1
    if-eq v1, v3, :cond_7

    iget v5, p0, Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;->m_pos:I

    add-int/2addr v5, v4

    iput v5, p0, Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;->m_pos:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget p0, p0, Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;->m_stackFrame:I

    if-eq v1, p0, :cond_6

    invoke-virtual {v0, v2}, Lcom/sun/org/apache/xpath/internal/VariableStack;->setStackFrame(I)V

    :cond_6
    return v3

    :cond_7
    :try_start_1
    iput-boolean v4, p0, Lcom/sun/org/apache/xpath/internal/axes/PredicatedNodeTest;->m_foundLast:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget p0, p0, Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;->m_stackFrame:I

    if-eq v1, p0, :cond_8

    invoke-virtual {v0, v2}, Lcom/sun/org/apache/xpath/internal/VariableStack;->setStackFrame(I)V

    :cond_8
    return v1

    :catchall_0
    move-exception v3

    iget p0, p0, Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;->m_stackFrame:I

    if-eq v1, p0, :cond_9

    invoke-virtual {v0, v2}, Lcom/sun/org/apache/xpath/internal/VariableStack;->setStackFrame(I)V

    :cond_9
    throw v3
.end method
