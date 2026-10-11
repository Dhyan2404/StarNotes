.class public Lcom/sun/org/apache/xpath/internal/axes/UnionChildIterator;
.super Lcom/sun/org/apache/xpath/internal/axes/ChildTestIterator;
.source "SourceFile"


# static fields
.field static final serialVersionUID:J = 0x30938eec96f3f3e7L


# instance fields
.field private m_nodeTests:[Lcom/sun/org/apache/xpath/internal/axes/PredicatedNodeTest;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sun/org/apache/xpath/internal/axes/ChildTestIterator;-><init>(Lcom/sun/org/apache/xml/internal/dtm/DTMAxisTraverser;)V

    iput-object v0, p0, Lcom/sun/org/apache/xpath/internal/axes/UnionChildIterator;->m_nodeTests:[Lcom/sun/org/apache/xpath/internal/axes/PredicatedNodeTest;

    return-void
.end method


# virtual methods
.method public acceptNode(I)S
    .locals 5

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;->getXPathContext()Lcom/sun/org/apache/xpath/internal/XPathContext;

    move-result-object v0

    :try_start_0
    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xpath/internal/XPathContext;->pushCurrentNode(I)V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/sun/org/apache/xpath/internal/axes/UnionChildIterator;->m_nodeTests:[Lcom/sun/org/apache/xpath/internal/axes/PredicatedNodeTest;

    array-length v3, v2

    if-ge v1, v3, :cond_2

    aget-object v2, v2, v1

    invoke-virtual {v2, v0, p1}, Lcom/sun/org/apache/xpath/internal/patterns/NodeTest;->execute(Lcom/sun/org/apache/xpath/internal/XPathContext;I)Lcom/sun/org/apache/xpath/internal/objects/XObject;

    move-result-object v3

    sget-object v4, Lcom/sun/org/apache/xpath/internal/patterns/NodeTest;->SCORE_NONE:Lcom/sun/org/apache/xpath/internal/objects/XNumber;

    if-eq v3, v4, :cond_1

    invoke-virtual {v2}, Lcom/sun/org/apache/xpath/internal/axes/PredicatedNodeTest;->getPredicateCount()I

    move-result v3

    const/4 v4, 0x1

    if-lez v3, :cond_0

    invoke-virtual {v2, p1, v0}, Lcom/sun/org/apache/xpath/internal/axes/PredicatedNodeTest;->executePredicates(ILcom/sun/org/apache/xpath/internal/XPathContext;)Z

    move-result v2
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/sun/org/apache/xpath/internal/XPathContext;->popCurrentNode()V

    return v4

    :cond_0
    invoke-virtual {v0}, Lcom/sun/org/apache/xpath/internal/XPathContext;->popCurrentNode()V

    return v4

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/sun/org/apache/xpath/internal/XPathContext;->popCurrentNode()V

    const/4 p0, 0x3

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
    invoke-virtual {v0}, Lcom/sun/org/apache/xpath/internal/XPathContext;->popCurrentNode()V

    throw p0
.end method

.method public addNodeTest(Lcom/sun/org/apache/xpath/internal/axes/PredicatedNodeTest;)V
    .locals 4

    iget-object v0, p0, Lcom/sun/org/apache/xpath/internal/axes/UnionChildIterator;->m_nodeTests:[Lcom/sun/org/apache/xpath/internal/axes/PredicatedNodeTest;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/sun/org/apache/xpath/internal/axes/PredicatedNodeTest;

    iput-object v0, p0, Lcom/sun/org/apache/xpath/internal/axes/UnionChildIterator;->m_nodeTests:[Lcom/sun/org/apache/xpath/internal/axes/PredicatedNodeTest;

    aput-object p1, v0, v1

    goto :goto_0

    :cond_0
    array-length v2, v0

    add-int/lit8 v3, v2, 0x1

    new-array v3, v3, [Lcom/sun/org/apache/xpath/internal/axes/PredicatedNodeTest;

    iput-object v3, p0, Lcom/sun/org/apache/xpath/internal/axes/UnionChildIterator;->m_nodeTests:[Lcom/sun/org/apache/xpath/internal/axes/PredicatedNodeTest;

    invoke-static {v0, v1, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lcom/sun/org/apache/xpath/internal/axes/UnionChildIterator;->m_nodeTests:[Lcom/sun/org/apache/xpath/internal/axes/PredicatedNodeTest;

    aput-object p1, v0, v2

    :goto_0
    invoke-virtual {p1, p0}, Lcom/sun/org/apache/xpath/internal/Expression;->exprSetParent(Lcom/sun/org/apache/xpath/internal/ExpressionNode;)V

    return-void
.end method

.method public fixupVariables(Ljava/util/Vector;I)V
    .locals 3

    invoke-super {p0, p1, p2}, Lcom/sun/org/apache/xpath/internal/axes/PredicatedNodeTest;->fixupVariables(Ljava/util/Vector;I)V

    iget-object v0, p0, Lcom/sun/org/apache/xpath/internal/axes/UnionChildIterator;->m_nodeTests:[Lcom/sun/org/apache/xpath/internal/axes/PredicatedNodeTest;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/sun/org/apache/xpath/internal/axes/UnionChildIterator;->m_nodeTests:[Lcom/sun/org/apache/xpath/internal/axes/PredicatedNodeTest;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    aget-object v1, v1, v0

    invoke-virtual {v1, p1, p2}, Lcom/sun/org/apache/xpath/internal/axes/PredicatedNodeTest;->fixupVariables(Ljava/util/Vector;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
