.class public Lcom/sun/org/apache/xpath/internal/axes/AxesWalker;
.super Lcom/sun/org/apache/xpath/internal/axes/PredicatedNodeTest;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Lcom/sun/org/apache/xpath/internal/axes/PathComponent;
.implements Lcom/sun/org/apache/xpath/internal/ExpressionOwner;


# static fields
.field static final serialVersionUID:J = -0x292976585216b31fL


# instance fields
.field protected m_axis:I

.field private transient m_currentNode:I

.field private m_dtm:Lcom/sun/org/apache/xml/internal/dtm/DTM;

.field transient m_isFresh:Z

.field protected m_nextWalker:Lcom/sun/org/apache/xpath/internal/axes/AxesWalker;

.field m_prevWalker:Lcom/sun/org/apache/xpath/internal/axes/AxesWalker;

.field transient m_root:I

.field protected m_traverser:Lcom/sun/org/apache/xml/internal/dtm/DTMAxisTraverser;


# direct methods
.method public constructor <init>(Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sun/org/apache/xpath/internal/axes/PredicatedNodeTest;-><init>(Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;)V

    const/4 p1, -0x1

    iput p1, p0, Lcom/sun/org/apache/xpath/internal/axes/AxesWalker;->m_root:I

    iput p1, p0, Lcom/sun/org/apache/xpath/internal/axes/AxesWalker;->m_currentNode:I

    iput p2, p0, Lcom/sun/org/apache/xpath/internal/axes/AxesWalker;->m_axis:I

    return-void
.end method

.method public static findClone(Lcom/sun/org/apache/xpath/internal/axes/AxesWalker;Ljava/util/Vector;)Lcom/sun/org/apache/xpath/internal/axes/AxesWalker;
    .locals 3

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p1, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    if-ne p0, v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sun/org/apache/xpath/internal/axes/AxesWalker;

    return-object p0

    :cond_0
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private returnNextNode(I)I
    .locals 0

    return p1
.end method


# virtual methods
.method public callVisitors(Lcom/sun/org/apache/xpath/internal/ExpressionOwner;Lcom/sun/org/apache/xpath/internal/XPathVisitor;)V
    .locals 0

    invoke-virtual {p2, p1, p0}, Lcom/sun/org/apache/xpath/internal/XPathVisitor;->visitStep(Lcom/sun/org/apache/xpath/internal/ExpressionOwner;Lcom/sun/org/apache/xpath/internal/patterns/NodeTest;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0, p2}, Lcom/sun/org/apache/xpath/internal/axes/PredicatedNodeTest;->callPredicateVisitors(Lcom/sun/org/apache/xpath/internal/XPathVisitor;)V

    iget-object p1, p0, Lcom/sun/org/apache/xpath/internal/axes/AxesWalker;->m_nextWalker:Lcom/sun/org/apache/xpath/internal/axes/AxesWalker;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p0, p2}, Lcom/sun/org/apache/xpath/internal/axes/AxesWalker;->callVisitors(Lcom/sun/org/apache/xpath/internal/ExpressionOwner;Lcom/sun/org/apache/xpath/internal/XPathVisitor;)V

    :cond_0
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-super {p0}, Lcom/sun/org/apache/xpath/internal/axes/PredicatedNodeTest;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sun/org/apache/xpath/internal/axes/AxesWalker;

    return-object p0
.end method

.method public cloneDeep(Lcom/sun/org/apache/xpath/internal/axes/WalkingIterator;Ljava/util/Vector;)Lcom/sun/org/apache/xpath/internal/axes/AxesWalker;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-static {p0, p2}, Lcom/sun/org/apache/xpath/internal/axes/AxesWalker;->findClone(Lcom/sun/org/apache/xpath/internal/axes/AxesWalker;Ljava/util/Vector;)Lcom/sun/org/apache/xpath/internal/axes/AxesWalker;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/axes/AxesWalker;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/xpath/internal/axes/AxesWalker;

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xpath/internal/axes/PredicatedNodeTest;->setLocPathIterator(Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;)V

    if-eqz p2, :cond_1

    invoke-virtual {p2, p0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    invoke-virtual {p2, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_1
    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/axes/AxesWalker;->wi()Lcom/sun/org/apache/xpath/internal/axes/WalkingIterator;

    move-result-object v1

    iget-object v1, v1, Lcom/sun/org/apache/xpath/internal/axes/WalkingIterator;->m_lastUsedWalker:Lcom/sun/org/apache/xpath/internal/axes/AxesWalker;

    if-ne v1, p0, :cond_2

    iput-object v0, p1, Lcom/sun/org/apache/xpath/internal/axes/WalkingIterator;->m_lastUsedWalker:Lcom/sun/org/apache/xpath/internal/axes/AxesWalker;

    :cond_2
    iget-object v1, p0, Lcom/sun/org/apache/xpath/internal/axes/AxesWalker;->m_nextWalker:Lcom/sun/org/apache/xpath/internal/axes/AxesWalker;

    if-eqz v1, :cond_3

    invoke-virtual {v1, p1, p2}, Lcom/sun/org/apache/xpath/internal/axes/AxesWalker;->cloneDeep(Lcom/sun/org/apache/xpath/internal/axes/WalkingIterator;Ljava/util/Vector;)Lcom/sun/org/apache/xpath/internal/axes/AxesWalker;

    move-result-object v1

    iput-object v1, v0, Lcom/sun/org/apache/xpath/internal/axes/AxesWalker;->m_nextWalker:Lcom/sun/org/apache/xpath/internal/axes/AxesWalker;

    :cond_3
    if-eqz p2, :cond_4

    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/axes/AxesWalker;->m_prevWalker:Lcom/sun/org/apache/xpath/internal/axes/AxesWalker;

    if-eqz p0, :cond_5

    invoke-virtual {p0, p1, p2}, Lcom/sun/org/apache/xpath/internal/axes/AxesWalker;->cloneDeep(Lcom/sun/org/apache/xpath/internal/axes/WalkingIterator;Ljava/util/Vector;)Lcom/sun/org/apache/xpath/internal/axes/AxesWalker;

    move-result-object p0

    iput-object p0, v0, Lcom/sun/org/apache/xpath/internal/axes/AxesWalker;->m_prevWalker:Lcom/sun/org/apache/xpath/internal/axes/AxesWalker;

    goto :goto_0

    :cond_4
    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/axes/AxesWalker;->m_nextWalker:Lcom/sun/org/apache/xpath/internal/axes/AxesWalker;

    if-eqz p0, :cond_5

    iget-object p0, v0, Lcom/sun/org/apache/xpath/internal/axes/AxesWalker;->m_nextWalker:Lcom/sun/org/apache/xpath/internal/axes/AxesWalker;

    iput-object v0, p0, Lcom/sun/org/apache/xpath/internal/axes/AxesWalker;->m_prevWalker:Lcom/sun/org/apache/xpath/internal/axes/AxesWalker;

    :cond_5
    :goto_0
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
    check-cast p1, Lcom/sun/org/apache/xpath/internal/axes/AxesWalker;

    iget p0, p0, Lcom/sun/org/apache/xpath/internal/axes/AxesWalker;->m_axis:I

    iget p1, p1, Lcom/sun/org/apache/xpath/internal/axes/AxesWalker;->m_axis:I

    if-eq p0, p1, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public detach()V
    .locals 2

    const/4 v0, -0x1

    iput v0, p0, Lcom/sun/org/apache/xpath/internal/axes/AxesWalker;->m_currentNode:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sun/org/apache/xpath/internal/axes/AxesWalker;->m_dtm:Lcom/sun/org/apache/xml/internal/dtm/DTM;

    iput-object v1, p0, Lcom/sun/org/apache/xpath/internal/axes/AxesWalker;->m_traverser:Lcom/sun/org/apache/xml/internal/dtm/DTMAxisTraverser;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sun/org/apache/xpath/internal/axes/AxesWalker;->m_isFresh:Z

    iput v0, p0, Lcom/sun/org/apache/xpath/internal/axes/AxesWalker;->m_root:I

    return-void
.end method

.method public getAnalysisBits()I
    .locals 0

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/axes/AxesWalker;->getAxis()I

    move-result p0

    invoke-static {p0}, Lcom/sun/org/apache/xpath/internal/axes/WalkerFactory;->getAnalysisBitFromAxes(I)I

    move-result p0

    return p0
.end method

.method public getAxis()I
    .locals 0

    iget p0, p0, Lcom/sun/org/apache/xpath/internal/axes/AxesWalker;->m_axis:I

    return p0
.end method

.method public final getCurrentNode()I
    .locals 0

    iget p0, p0, Lcom/sun/org/apache/xpath/internal/axes/AxesWalker;->m_currentNode:I

    return p0
.end method

.method public getDTM(I)Lcom/sun/org/apache/xml/internal/dtm/DTM;
    .locals 0

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/axes/AxesWalker;->wi()Lcom/sun/org/apache/xpath/internal/axes/WalkingIterator;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;->getXPathContext()Lcom/sun/org/apache/xpath/internal/XPathContext;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xpath/internal/XPathContext;->getDTM(I)Lcom/sun/org/apache/xml/internal/dtm/DTM;

    move-result-object p0

    return-object p0
.end method

.method public getExpression()Lcom/sun/org/apache/xpath/internal/Expression;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/axes/AxesWalker;->m_nextWalker:Lcom/sun/org/apache/xpath/internal/axes/AxesWalker;

    return-object p0
.end method

.method public getLastPos(Lcom/sun/org/apache/xpath/internal/XPathContext;)I
    .locals 4

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/axes/PredicatedNodeTest;->getProximityPosition()I

    move-result p1

    const/4 v0, -0x1

    :try_start_0
    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/axes/AxesWalker;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/org/apache/xpath/internal/axes/AxesWalker;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v1}, Lcom/sun/org/apache/xpath/internal/axes/PredicatedNodeTest;->getPredicateCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Lcom/sun/org/apache/xpath/internal/axes/PredicatedNodeTest;->setPredicateCount(I)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sun/org/apache/xpath/internal/axes/AxesWalker;->setNextWalker(Lcom/sun/org/apache/xpath/internal/axes/AxesWalker;)V

    invoke-virtual {v1, v2}, Lcom/sun/org/apache/xpath/internal/axes/AxesWalker;->setPrevWalker(Lcom/sun/org/apache/xpath/internal/axes/AxesWalker;)V

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/axes/AxesWalker;->wi()Lcom/sun/org/apache/xpath/internal/axes/WalkingIterator;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/axes/WalkingIterator;->getLastUsedWalker()Lcom/sun/org/apache/xpath/internal/axes/AxesWalker;

    move-result-object v2

    :try_start_1
    invoke-virtual {p0, v1}, Lcom/sun/org/apache/xpath/internal/axes/WalkingIterator;->setLastUsedWalker(Lcom/sun/org/apache/xpath/internal/axes/AxesWalker;)V

    :goto_0
    invoke-virtual {v1}, Lcom/sun/org/apache/xpath/internal/axes/AxesWalker;->nextNode()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eq v0, v3, :cond_0

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v2}, Lcom/sun/org/apache/xpath/internal/axes/WalkingIterator;->setLastUsedWalker(Lcom/sun/org/apache/xpath/internal/axes/AxesWalker;)V

    return p1

    :catchall_0
    move-exception p1

    invoke-virtual {p0, v2}, Lcom/sun/org/apache/xpath/internal/axes/WalkingIterator;->setLastUsedWalker(Lcom/sun/org/apache/xpath/internal/axes/AxesWalker;)V

    throw p1

    :catch_0
    return v0
.end method

.method public getNextNode()I
    .locals 4

    iget-boolean v0, p0, Lcom/sun/org/apache/xpath/internal/axes/PredicatedNodeTest;->m_foundLast:Z

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-boolean v0, p0, Lcom/sun/org/apache/xpath/internal/axes/AxesWalker;->m_isFresh:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sun/org/apache/xpath/internal/axes/AxesWalker;->m_traverser:Lcom/sun/org/apache/xml/internal/dtm/DTMAxisTraverser;

    iget v2, p0, Lcom/sun/org/apache/xpath/internal/axes/AxesWalker;->m_root:I

    invoke-virtual {v0, v2}, Lcom/sun/org/apache/xml/internal/dtm/DTMAxisTraverser;->first(I)I

    move-result v0

    iput v0, p0, Lcom/sun/org/apache/xpath/internal/axes/AxesWalker;->m_currentNode:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/org/apache/xpath/internal/axes/AxesWalker;->m_isFresh:Z

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/sun/org/apache/xpath/internal/axes/AxesWalker;->m_currentNode:I

    if-eq v1, v0, :cond_2

    iget-object v2, p0, Lcom/sun/org/apache/xpath/internal/axes/AxesWalker;->m_traverser:Lcom/sun/org/apache/xml/internal/dtm/DTMAxisTraverser;

    iget v3, p0, Lcom/sun/org/apache/xpath/internal/axes/AxesWalker;->m_root:I

    invoke-virtual {v2, v3, v0}, Lcom/sun/org/apache/xml/internal/dtm/DTMAxisTraverser;->next(II)I

    move-result v0

    iput v0, p0, Lcom/sun/org/apache/xpath/internal/axes/AxesWalker;->m_currentNode:I

    :cond_2
    :goto_0
    iget v0, p0, Lcom/sun/org/apache/xpath/internal/axes/AxesWalker;->m_currentNode:I

    if-ne v1, v0, :cond_3

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sun/org/apache/xpath/internal/axes/PredicatedNodeTest;->m_foundLast:Z

    :cond_3
    return v0
.end method

.method public getNextWalker()Lcom/sun/org/apache/xpath/internal/axes/AxesWalker;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/axes/AxesWalker;->m_nextWalker:Lcom/sun/org/apache/xpath/internal/axes/AxesWalker;

    return-object p0
.end method

.method public getPrevWalker()Lcom/sun/org/apache/xpath/internal/axes/AxesWalker;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/axes/AxesWalker;->m_prevWalker:Lcom/sun/org/apache/xpath/internal/axes/AxesWalker;

    return-object p0
.end method

.method public getRoot()I
    .locals 0

    iget p0, p0, Lcom/sun/org/apache/xpath/internal/axes/AxesWalker;->m_root:I

    return p0
.end method

.method public init(Lcom/sun/org/apache/xpath/internal/compiler/Compiler;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/sun/org/apache/xpath/internal/axes/PredicatedNodeTest;->initPredicateInfo(Lcom/sun/org/apache/xpath/internal/compiler/Compiler;I)V

    return-void
.end method

.method public isDocOrdered()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public nextNode()I
    .locals 5

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/axes/AxesWalker;->wi()Lcom/sun/org/apache/xpath/internal/axes/WalkingIterator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/org/apache/xpath/internal/axes/WalkingIterator;->getLastUsedWalker()Lcom/sun/org/apache/xpath/internal/axes/AxesWalker;

    move-result-object v0

    const/4 v1, -0x1

    move v2, v1

    :goto_0
    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Lcom/sun/org/apache/xpath/internal/axes/AxesWalker;->getNextNode()I

    move-result v2

    if-ne v1, v2, :cond_1

    iget-object v0, v0, Lcom/sun/org/apache/xpath/internal/axes/AxesWalker;->m_prevWalker:Lcom/sun/org/apache/xpath/internal/axes/AxesWalker;

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v2}, Lcom/sun/org/apache/xpath/internal/axes/PredicatedNodeTest;->acceptNode(I)S

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_2

    goto :goto_0

    :cond_2
    iget-object v3, v0, Lcom/sun/org/apache/xpath/internal/axes/AxesWalker;->m_nextWalker:Lcom/sun/org/apache/xpath/internal/axes/AxesWalker;

    if-nez v3, :cond_3

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/axes/AxesWalker;->wi()Lcom/sun/org/apache/xpath/internal/axes/WalkingIterator;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xpath/internal/axes/WalkingIterator;->setLastUsedWalker(Lcom/sun/org/apache/xpath/internal/axes/AxesWalker;)V

    :goto_1
    return v2

    :cond_3
    invoke-virtual {v3, v2}, Lcom/sun/org/apache/xpath/internal/axes/AxesWalker;->setRoot(I)V

    iput-object v0, v3, Lcom/sun/org/apache/xpath/internal/axes/AxesWalker;->m_prevWalker:Lcom/sun/org/apache/xpath/internal/axes/AxesWalker;

    move-object v0, v3

    goto :goto_0
.end method

.method public setDefaultDTM(Lcom/sun/org/apache/xml/internal/dtm/DTM;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xpath/internal/axes/AxesWalker;->m_dtm:Lcom/sun/org/apache/xml/internal/dtm/DTM;

    return-void
.end method

.method public setExpression(Lcom/sun/org/apache/xpath/internal/Expression;)V
    .locals 0

    invoke-virtual {p1, p0}, Lcom/sun/org/apache/xpath/internal/Expression;->exprSetParent(Lcom/sun/org/apache/xpath/internal/ExpressionNode;)V

    check-cast p1, Lcom/sun/org/apache/xpath/internal/axes/AxesWalker;

    iput-object p1, p0, Lcom/sun/org/apache/xpath/internal/axes/AxesWalker;->m_nextWalker:Lcom/sun/org/apache/xpath/internal/axes/AxesWalker;

    return-void
.end method

.method public setNextWalker(Lcom/sun/org/apache/xpath/internal/axes/AxesWalker;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xpath/internal/axes/AxesWalker;->m_nextWalker:Lcom/sun/org/apache/xpath/internal/axes/AxesWalker;

    return-void
.end method

.method public setPrevWalker(Lcom/sun/org/apache/xpath/internal/axes/AxesWalker;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xpath/internal/axes/AxesWalker;->m_prevWalker:Lcom/sun/org/apache/xpath/internal/axes/AxesWalker;

    return-void
.end method

.method public setRoot(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/axes/AxesWalker;->wi()Lcom/sun/org/apache/xpath/internal/axes/WalkingIterator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;->getXPathContext()Lcom/sun/org/apache/xpath/internal/XPathContext;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xpath/internal/XPathContext;->getDTM(I)Lcom/sun/org/apache/xml/internal/dtm/DTM;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/org/apache/xpath/internal/axes/AxesWalker;->m_dtm:Lcom/sun/org/apache/xml/internal/dtm/DTM;

    iget v1, p0, Lcom/sun/org/apache/xpath/internal/axes/AxesWalker;->m_axis:I

    invoke-interface {v0, v1}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->getAxisTraverser(I)Lcom/sun/org/apache/xml/internal/dtm/DTMAxisTraverser;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/org/apache/xpath/internal/axes/AxesWalker;->m_traverser:Lcom/sun/org/apache/xml/internal/dtm/DTMAxisTraverser;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sun/org/apache/xpath/internal/axes/AxesWalker;->m_isFresh:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/org/apache/xpath/internal/axes/PredicatedNodeTest;->m_foundLast:Z

    iput p1, p0, Lcom/sun/org/apache/xpath/internal/axes/AxesWalker;->m_root:I

    iput p1, p0, Lcom/sun/org/apache/xpath/internal/axes/AxesWalker;->m_currentNode:I

    const/4 v0, -0x1

    if-eq v0, p1, :cond_0

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/axes/PredicatedNodeTest;->resetProximityPositions()V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "ER_SETTING_WALKER_ROOT_TO_NULL"

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/sun/org/apache/xpath/internal/res/XPATHMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final wi()Lcom/sun/org/apache/xpath/internal/axes/WalkingIterator;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/axes/PredicatedNodeTest;->m_lpi:Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;

    check-cast p0, Lcom/sun/org/apache/xpath/internal/axes/WalkingIterator;

    return-object p0
.end method
