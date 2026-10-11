.class public Lcom/sun/org/apache/xpath/internal/axes/ReverseAxesWalker;
.super Lcom/sun/org/apache/xpath/internal/axes/AxesWalker;
.source "SourceFile"


# static fields
.field static final serialVersionUID:J = 0x27829a5f21e481adL


# instance fields
.field protected m_iterator:Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;


# direct methods
.method public constructor <init>(Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sun/org/apache/xpath/internal/axes/AxesWalker;-><init>(Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;I)V

    return-void
.end method


# virtual methods
.method public countProximityPosition(I)V
    .locals 1

    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/axes/PredicatedNodeTest;->m_proximityPositions:[I

    array-length v0, p0

    if-ge p1, v0, :cond_0

    aget v0, p0, p1

    add-int/lit8 v0, v0, -0x1

    aput v0, p0, p1

    :cond_0
    return-void
.end method

.method public detach()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/org/apache/xpath/internal/axes/ReverseAxesWalker;->m_iterator:Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;

    invoke-super {p0}, Lcom/sun/org/apache/xpath/internal/axes/AxesWalker;->detach()V

    return-void
.end method

.method public getLastPos(Lcom/sun/org/apache/xpath/internal/XPathContext;)I
    .locals 4

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/axes/AxesWalker;->wi()Lcom/sun/org/apache/xpath/internal/axes/WalkingIterator;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sun/org/apache/xpath/internal/axes/WalkingIterator;->getLastUsedWalker()Lcom/sun/org/apache/xpath/internal/axes/AxesWalker;

    move-result-object p1

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/axes/AxesWalker;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/org/apache/xpath/internal/axes/ReverseAxesWalker;

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/axes/AxesWalker;->getRoot()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sun/org/apache/xpath/internal/axes/ReverseAxesWalker;->setRoot(I)V

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/axes/PredicatedNodeTest;->getPredicateCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Lcom/sun/org/apache/xpath/internal/axes/PredicatedNodeTest;->setPredicateCount(I)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sun/org/apache/xpath/internal/axes/AxesWalker;->setPrevWalker(Lcom/sun/org/apache/xpath/internal/axes/AxesWalker;)V

    invoke-virtual {v1, v2}, Lcom/sun/org/apache/xpath/internal/axes/AxesWalker;->setNextWalker(Lcom/sun/org/apache/xpath/internal/axes/AxesWalker;)V

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/axes/AxesWalker;->wi()Lcom/sun/org/apache/xpath/internal/axes/WalkingIterator;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/sun/org/apache/xpath/internal/axes/WalkingIterator;->setLastUsedWalker(Lcom/sun/org/apache/xpath/internal/axes/AxesWalker;)V

    :goto_0
    invoke-virtual {v1}, Lcom/sun/org/apache/xpath/internal/axes/AxesWalker;->nextNode()I

    move-result v2
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, -0x1

    if-eq v3, v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/axes/AxesWalker;->wi()Lcom/sun/org/apache/xpath/internal/axes/WalkingIterator;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xpath/internal/axes/WalkingIterator;->setLastUsedWalker(Lcom/sun/org/apache/xpath/internal/axes/AxesWalker;)V

    throw v0

    :catch_0
    :cond_0
    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/axes/AxesWalker;->wi()Lcom/sun/org/apache/xpath/internal/axes/WalkingIterator;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xpath/internal/axes/WalkingIterator;->setLastUsedWalker(Lcom/sun/org/apache/xpath/internal/axes/AxesWalker;)V

    return v0
.end method

.method public getNextNode()I
    .locals 3

    iget-boolean v0, p0, Lcom/sun/org/apache/xpath/internal/axes/PredicatedNodeTest;->m_foundLast:Z

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xpath/internal/axes/ReverseAxesWalker;->m_iterator:Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;

    invoke-interface {v0}, Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;->next()I

    move-result v0

    iget-boolean v2, p0, Lcom/sun/org/apache/xpath/internal/axes/AxesWalker;->m_isFresh:Z

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/sun/org/apache/xpath/internal/axes/AxesWalker;->m_isFresh:Z

    :cond_1
    if-ne v1, v0, :cond_2

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sun/org/apache/xpath/internal/axes/PredicatedNodeTest;->m_foundLast:Z

    :cond_2
    return v0
.end method

.method public getProximityPosition(I)I
    .locals 5

    const/4 v0, -0x1

    if-gez p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lcom/sun/org/apache/xpath/internal/axes/PredicatedNodeTest;->m_proximityPositions:[I

    aget v1, v1, p1

    if-gtz v1, :cond_2

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/axes/AxesWalker;->wi()Lcom/sun/org/apache/xpath/internal/axes/WalkingIterator;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sun/org/apache/xpath/internal/axes/WalkingIterator;->getLastUsedWalker()Lcom/sun/org/apache/xpath/internal/axes/AxesWalker;

    move-result-object v2

    :try_start_0
    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/axes/AxesWalker;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sun/org/apache/xpath/internal/axes/ReverseAxesWalker;

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/axes/AxesWalker;->getRoot()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sun/org/apache/xpath/internal/axes/ReverseAxesWalker;->setRoot(I)V

    invoke-virtual {v3, p1}, Lcom/sun/org/apache/xpath/internal/axes/PredicatedNodeTest;->setPredicateCount(I)V

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/sun/org/apache/xpath/internal/axes/AxesWalker;->setPrevWalker(Lcom/sun/org/apache/xpath/internal/axes/AxesWalker;)V

    invoke-virtual {v3, v4}, Lcom/sun/org/apache/xpath/internal/axes/AxesWalker;->setNextWalker(Lcom/sun/org/apache/xpath/internal/axes/AxesWalker;)V

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/axes/AxesWalker;->wi()Lcom/sun/org/apache/xpath/internal/axes/WalkingIterator;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/sun/org/apache/xpath/internal/axes/WalkingIterator;->setLastUsedWalker(Lcom/sun/org/apache/xpath/internal/axes/AxesWalker;)V

    goto :goto_1

    :goto_0
    invoke-virtual {v3}, Lcom/sun/org/apache/xpath/internal/axes/AxesWalker;->nextNode()I

    move-result v4

    if-eq v0, v4, :cond_1

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sun/org/apache/xpath/internal/axes/PredicatedNodeTest;->m_proximityPositions:[I

    aput v1, v0, p1
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/axes/AxesWalker;->wi()Lcom/sun/org/apache/xpath/internal/axes/WalkingIterator;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/sun/org/apache/xpath/internal/axes/WalkingIterator;->setLastUsedWalker(Lcom/sun/org/apache/xpath/internal/axes/AxesWalker;)V

    throw p1

    :catch_0
    :goto_2
    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/axes/AxesWalker;->wi()Lcom/sun/org/apache/xpath/internal/axes/WalkingIterator;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/sun/org/apache/xpath/internal/axes/WalkingIterator;->setLastUsedWalker(Lcom/sun/org/apache/xpath/internal/axes/AxesWalker;)V

    :cond_2
    return v1
.end method

.method public isDocOrdered()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isReverseAxes()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public setRoot(I)V
    .locals 2

    invoke-super {p0, p1}, Lcom/sun/org/apache/xpath/internal/axes/AxesWalker;->setRoot(I)V

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xpath/internal/axes/AxesWalker;->getDTM(I)Lcom/sun/org/apache/xml/internal/dtm/DTM;

    move-result-object v0

    iget v1, p0, Lcom/sun/org/apache/xpath/internal/axes/AxesWalker;->m_axis:I

    invoke-interface {v0, v1}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->getAxisIterator(I)Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/org/apache/xpath/internal/axes/ReverseAxesWalker;->m_iterator:Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;

    invoke-interface {v0, p1}, Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;->setStartNode(I)Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;

    return-void
.end method
