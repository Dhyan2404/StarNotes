.class public Lcom/sun/org/apache/xpath/internal/axes/UnionPathIterator;
.super Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;
.implements Ljava/io/Serializable;
.implements Lcom/sun/org/apache/xpath/internal/axes/PathComponent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/org/apache/xpath/internal/axes/UnionPathIterator$iterOwner;
    }
.end annotation


# static fields
.field static final serialVersionUID:J = -0x36445c0390868a5dL


# instance fields
.field protected m_exprs:[Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;

.field protected m_iterators:[Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/sun/org/apache/xpath/internal/axes/UnionPathIterator;->m_iterators:[Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;

    .line 3
    iput-object v0, p0, Lcom/sun/org/apache/xpath/internal/axes/UnionPathIterator;->m_exprs:[Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;

    return-void
.end method

.method public constructor <init>(Lcom/sun/org/apache/xpath/internal/compiler/Compiler;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 4
    invoke-direct {p0}, Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;-><init>()V

    .line 5
    invoke-static {p2}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->getFirstChildPos(I)I

    move-result p2

    const/4 v0, 0x0

    .line 6
    invoke-virtual {p0, p1, p2, v0}, Lcom/sun/org/apache/xpath/internal/axes/UnionPathIterator;->loadLocationPaths(Lcom/sun/org/apache/xpath/internal/compiler/Compiler;II)V

    return-void
.end method

.method public static createUnionIterator(Lcom/sun/org/apache/xpath/internal/compiler/Compiler;I)Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    new-instance v0, Lcom/sun/org/apache/xpath/internal/axes/UnionPathIterator;

    invoke-direct {v0, p0, p1}, Lcom/sun/org/apache/xpath/internal/axes/UnionPathIterator;-><init>(Lcom/sun/org/apache/xpath/internal/compiler/Compiler;I)V

    iget-object p0, v0, Lcom/sun/org/apache/xpath/internal/axes/UnionPathIterator;->m_exprs:[Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;

    array-length p0, p0

    const/4 p1, 0x0

    move v1, p1

    :goto_0
    if-ge v1, p0, :cond_2

    iget-object v2, v0, Lcom/sun/org/apache/xpath/internal/axes/UnionPathIterator;->m_exprs:[Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;->getAxis()I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_0

    :goto_1
    move v1, p1

    goto :goto_2

    :cond_0
    invoke-static {v2}, Lcom/sun/org/apache/xpath/internal/axes/HasPositionalPredChecker;->check(Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    :goto_2
    if-eqz v1, :cond_4

    new-instance v1, Lcom/sun/org/apache/xpath/internal/axes/UnionChildIterator;

    invoke-direct {v1}, Lcom/sun/org/apache/xpath/internal/axes/UnionChildIterator;-><init>()V

    :goto_3
    if-ge p1, p0, :cond_3

    iget-object v2, v0, Lcom/sun/org/apache/xpath/internal/axes/UnionPathIterator;->m_exprs:[Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Lcom/sun/org/apache/xpath/internal/axes/UnionChildIterator;->addNodeTest(Lcom/sun/org/apache/xpath/internal/axes/PredicatedNodeTest;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    :cond_3
    return-object v1

    :cond_4
    return-object v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    new-instance p1, Lcom/sun/org/apache/xpath/internal/axes/IteratorPool;

    invoke-direct {p1, p0}, Lcom/sun/org/apache/xpath/internal/axes/IteratorPool;-><init>(Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;)V

    iput-object p1, p0, Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;->m_clones:Lcom/sun/org/apache/xpath/internal/axes/IteratorPool;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljavax/xml/transform/TransformerException;

    invoke-direct {p1, p0}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method


# virtual methods
.method public addIterator(Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;)V
    .locals 4

    iget-object v0, p0, Lcom/sun/org/apache/xpath/internal/axes/UnionPathIterator;->m_iterators:[Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;

    iput-object v0, p0, Lcom/sun/org/apache/xpath/internal/axes/UnionPathIterator;->m_iterators:[Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;

    aput-object p1, v0, v1

    goto :goto_0

    :cond_0
    array-length v2, v0

    add-int/lit8 v3, v2, 0x1

    new-array v3, v3, [Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;

    iput-object v3, p0, Lcom/sun/org/apache/xpath/internal/axes/UnionPathIterator;->m_iterators:[Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;

    invoke-static {v0, v1, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lcom/sun/org/apache/xpath/internal/axes/UnionPathIterator;->m_iterators:[Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;

    aput-object p1, v0, v2

    :goto_0
    invoke-interface {p1}, Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;->nextNode()I

    instance-of v0, p1, Lcom/sun/org/apache/xpath/internal/Expression;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/sun/org/apache/xpath/internal/Expression;

    invoke-virtual {p1, p0}, Lcom/sun/org/apache/xpath/internal/Expression;->exprSetParent(Lcom/sun/org/apache/xpath/internal/ExpressionNode;)V

    :cond_1
    return-void
.end method

.method public callVisitors(Lcom/sun/org/apache/xpath/internal/ExpressionOwner;Lcom/sun/org/apache/xpath/internal/XPathVisitor;)V
    .locals 3

    invoke-virtual {p2, p1, p0}, Lcom/sun/org/apache/xpath/internal/XPathVisitor;->visitUnionPath(Lcom/sun/org/apache/xpath/internal/ExpressionOwner;Lcom/sun/org/apache/xpath/internal/axes/UnionPathIterator;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sun/org/apache/xpath/internal/axes/UnionPathIterator;->m_exprs:[Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;

    if-eqz p1, :cond_0

    array-length p1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    iget-object v1, p0, Lcom/sun/org/apache/xpath/internal/axes/UnionPathIterator;->m_exprs:[Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;

    aget-object v1, v1, v0

    new-instance v2, Lcom/sun/org/apache/xpath/internal/axes/UnionPathIterator$iterOwner;

    invoke-direct {v2, p0, v0}, Lcom/sun/org/apache/xpath/internal/axes/UnionPathIterator$iterOwner;-><init>(Lcom/sun/org/apache/xpath/internal/axes/UnionPathIterator;I)V

    invoke-virtual {v1, v2, p2}, Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;->callVisitors(Lcom/sun/org/apache/xpath/internal/ExpressionOwner;Lcom/sun/org/apache/xpath/internal/XPathVisitor;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-super {p0}, Lcom/sun/org/apache/xpath/internal/axes/PredicatedNodeTest;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/xpath/internal/axes/UnionPathIterator;

    iget-object v1, p0, Lcom/sun/org/apache/xpath/internal/axes/UnionPathIterator;->m_iterators:[Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;

    if-eqz v1, :cond_0

    array-length v1, v1

    new-array v2, v1, [Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;

    iput-object v2, v0, Lcom/sun/org/apache/xpath/internal/axes/UnionPathIterator;->m_iterators:[Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    iget-object v3, v0, Lcom/sun/org/apache/xpath/internal/axes/UnionPathIterator;->m_iterators:[Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;

    iget-object v4, p0, Lcom/sun/org/apache/xpath/internal/axes/UnionPathIterator;->m_iterators:[Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;

    aget-object v4, v4, v2

    invoke-interface {v4}, Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;

    aput-object v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public createDTMIterator(Lcom/sun/org/apache/xpath/internal/compiler/Compiler;I)Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/sun/org/apache/xpath/internal/compiler/Compiler;->getLocationPathDepth()I

    move-result p0

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p1, p2, p0}, Lcom/sun/org/apache/xpath/internal/axes/WalkerFactory;->newDTMIterator(Lcom/sun/org/apache/xpath/internal/compiler/Compiler;IZ)Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;

    move-result-object p0

    check-cast p0, Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;

    return-object p0
.end method

.method public deepEquals(Lcom/sun/org/apache/xpath/internal/Expression;)Z
    .locals 5

    invoke-super {p0, p1}, Lcom/sun/org/apache/xpath/internal/axes/PredicatedNodeTest;->deepEquals(Lcom/sun/org/apache/xpath/internal/Expression;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lcom/sun/org/apache/xpath/internal/axes/UnionPathIterator;

    iget-object v0, p0, Lcom/sun/org/apache/xpath/internal/axes/UnionPathIterator;->m_exprs:[Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;

    if-eqz v0, :cond_4

    array-length v0, v0

    iget-object v2, p1, Lcom/sun/org/apache/xpath/internal/axes/UnionPathIterator;->m_exprs:[Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;

    if-eqz v2, :cond_3

    array-length v2, v2

    if-eq v2, v0, :cond_1

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_5

    iget-object v3, p0, Lcom/sun/org/apache/xpath/internal/axes/UnionPathIterator;->m_exprs:[Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;

    aget-object v3, v3, v2

    iget-object v4, p1, Lcom/sun/org/apache/xpath/internal/axes/UnionPathIterator;->m_exprs:[Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;

    aget-object v4, v4, v2

    invoke-virtual {v3, v4}, Lcom/sun/org/apache/xpath/internal/axes/PredicatedNodeTest;->deepEquals(Lcom/sun/org/apache/xpath/internal/Expression;)Z

    move-result v3

    if-nez v3, :cond_2

    return v1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return v1

    :cond_4
    iget-object p0, p1, Lcom/sun/org/apache/xpath/internal/axes/UnionPathIterator;->m_exprs:[Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;

    if-eqz p0, :cond_5

    return v1

    :cond_5
    const/4 p0, 0x1

    return p0
.end method

.method public detach()V
    .locals 3

    iget-boolean v0, p0, Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;->m_allowDetach:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sun/org/apache/xpath/internal/axes/UnionPathIterator;->m_iterators:[Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;

    if-eqz v0, :cond_1

    array-length v0, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/sun/org/apache/xpath/internal/axes/UnionPathIterator;->m_iterators:[Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;

    aget-object v2, v2, v1

    invoke-interface {v2}, Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;->detach()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/org/apache/xpath/internal/axes/UnionPathIterator;->m_iterators:[Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;

    :cond_1
    return-void
.end method

.method public fixupVariables(Ljava/util/Vector;I)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/sun/org/apache/xpath/internal/axes/UnionPathIterator;->m_exprs:[Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    aget-object v1, v1, v0

    invoke-virtual {v1, p1, p2}, Lcom/sun/org/apache/xpath/internal/axes/PredicatedNodeTest;->fixupVariables(Ljava/util/Vector;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getAnalysisBits()I
    .locals 4

    iget-object v0, p0, Lcom/sun/org/apache/xpath/internal/axes/UnionPathIterator;->m_exprs:[Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    array-length v0, v0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v3, p0, Lcom/sun/org/apache/xpath/internal/axes/UnionPathIterator;->m_exprs:[Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;->getAnalysisBits()I

    move-result v3

    or-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v2

    :cond_1
    return v1
.end method

.method public getAxis()I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public loadLocationPaths(Lcom/sun/org/apache/xpath/internal/compiler/Compiler;II)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    invoke-virtual {p1, p2}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->getOp(I)I

    move-result v0

    const/16 v1, 0x1c

    if-ne v0, v1, :cond_0

    invoke-virtual {p1, p2}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->getNextOpPos(I)I

    move-result v0

    add-int/lit8 v1, p3, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/sun/org/apache/xpath/internal/axes/UnionPathIterator;->loadLocationPaths(Lcom/sun/org/apache/xpath/internal/compiler/Compiler;II)V

    iget-object v0, p0, Lcom/sun/org/apache/xpath/internal/axes/UnionPathIterator;->m_exprs:[Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;

    invoke-virtual {p0, p1, p2}, Lcom/sun/org/apache/xpath/internal/axes/UnionPathIterator;->createDTMIterator(Lcom/sun/org/apache/xpath/internal/compiler/Compiler;I)Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;

    move-result-object p1

    aput-object p1, v0, p3

    iget-object p1, p0, Lcom/sun/org/apache/xpath/internal/axes/UnionPathIterator;->m_exprs:[Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;

    aget-object p1, p1, p3

    invoke-virtual {p1, p0}, Lcom/sun/org/apache/xpath/internal/Expression;->exprSetParent(Lcom/sun/org/apache/xpath/internal/ExpressionNode;)V

    goto :goto_0

    :cond_0
    packed-switch v0, :pswitch_data_0

    new-array p1, p3, [Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;

    iput-object p1, p0, Lcom/sun/org/apache/xpath/internal/axes/UnionPathIterator;->m_exprs:[Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;

    goto :goto_0

    :pswitch_0
    invoke-virtual {p1, p2}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->getNextOpPos(I)I

    move-result v1

    add-int/lit8 v2, p3, 0x1

    invoke-virtual {p0, p1, v1, v2}, Lcom/sun/org/apache/xpath/internal/axes/UnionPathIterator;->loadLocationPaths(Lcom/sun/org/apache/xpath/internal/compiler/Compiler;II)V

    new-instance v1, Lcom/sun/org/apache/xpath/internal/axes/WalkingIterator;

    invoke-virtual {p1}, Lcom/sun/org/apache/xpath/internal/compiler/Compiler;->getNamespaceContext()Lcom/sun/org/apache/xml/internal/utils/PrefixResolver;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sun/org/apache/xpath/internal/axes/WalkingIterator;-><init>(Lcom/sun/org/apache/xml/internal/utils/PrefixResolver;)V

    invoke-virtual {v1, p0}, Lcom/sun/org/apache/xpath/internal/Expression;->exprSetParent(Lcom/sun/org/apache/xpath/internal/ExpressionNode;)V

    invoke-virtual {p1}, Lcom/sun/org/apache/xpath/internal/compiler/Compiler;->getLocationPathDepth()I

    move-result v2

    if-gtz v2, :cond_1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;->setIsTopLevel(Z)V

    :cond_1
    new-instance v2, Lcom/sun/org/apache/xpath/internal/axes/FilterExprWalker;

    invoke-direct {v2, v1}, Lcom/sun/org/apache/xpath/internal/axes/FilterExprWalker;-><init>(Lcom/sun/org/apache/xpath/internal/axes/WalkingIterator;)V

    iput-object v2, v1, Lcom/sun/org/apache/xpath/internal/axes/WalkingIterator;->m_firstWalker:Lcom/sun/org/apache/xpath/internal/axes/AxesWalker;

    invoke-virtual {v2, p1, p2, v0}, Lcom/sun/org/apache/xpath/internal/axes/AxesWalker;->init(Lcom/sun/org/apache/xpath/internal/compiler/Compiler;II)V

    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/axes/UnionPathIterator;->m_exprs:[Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;

    aput-object v1, p0, p3

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x16
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public nextNode()I
    .locals 7

    iget-boolean v0, p0, Lcom/sun/org/apache/xpath/internal/axes/PredicatedNodeTest;->m_foundLast:Z

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xpath/internal/axes/UnionPathIterator;->m_iterators:[Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;

    if-eqz v0, :cond_7

    array-length v0, v0

    const/4 v2, 0x0

    move v3, v1

    move v4, v3

    :goto_0
    if-ge v2, v0, :cond_5

    iget-object v5, p0, Lcom/sun/org/apache/xpath/internal/axes/UnionPathIterator;->m_iterators:[Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;

    aget-object v5, v5, v2

    invoke-interface {v5}, Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;->getCurrentNode()I

    move-result v5

    if-ne v1, v5, :cond_1

    goto :goto_2

    :cond_1
    if-ne v1, v3, :cond_2

    goto :goto_1

    :cond_2
    if-ne v5, v3, :cond_3

    iget-object v5, p0, Lcom/sun/org/apache/xpath/internal/axes/UnionPathIterator;->m_iterators:[Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;

    aget-object v5, v5, v2

    invoke-interface {v5}, Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;->nextNode()I

    goto :goto_2

    :cond_3
    invoke-virtual {p0, v5}, Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;->getDTM(I)Lcom/sun/org/apache/xml/internal/dtm/DTM;

    move-result-object v6

    invoke-interface {v6, v5, v3}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->isNodeAfter(II)Z

    move-result v6

    if-eqz v6, :cond_4

    :goto_1
    move v4, v2

    move v3, v5

    :cond_4
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    if-eq v1, v3, :cond_6

    iget-object v0, p0, Lcom/sun/org/apache/xpath/internal/axes/UnionPathIterator;->m_iterators:[Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;

    aget-object v0, v0, v4

    invoke-interface {v0}, Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;->nextNode()I

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;->incrementCurrentPos()V

    goto :goto_3

    :cond_6
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sun/org/apache/xpath/internal/axes/PredicatedNodeTest;->m_foundLast:Z

    :goto_3
    move v1, v3

    :cond_7
    iput v1, p0, Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;->m_lastFetched:I

    return v1
.end method

.method public setRoot(ILjava/lang/Object;)V
    .locals 4

    invoke-super {p0, p1, p2}, Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;->setRoot(ILjava/lang/Object;)V

    :try_start_0
    iget-object p2, p0, Lcom/sun/org/apache/xpath/internal/axes/UnionPathIterator;->m_exprs:[Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;

    if-eqz p2, :cond_1

    array-length p2, p2

    new-array v0, p2, [Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_0

    iget-object v2, p0, Lcom/sun/org/apache/xpath/internal/axes/UnionPathIterator;->m_exprs:[Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;

    aget-object v2, v2, v1

    iget-object v3, p0, Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;->m_execContext:Lcom/sun/org/apache/xpath/internal/XPathContext;

    invoke-virtual {v2, v3, p1}, Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;->asIterator(Lcom/sun/org/apache/xpath/internal/XPathContext;I)Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-interface {v2}, Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;->nextNode()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iput-object v0, p0, Lcom/sun/org/apache/xpath/internal/axes/UnionPathIterator;->m_iterators:[Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception p0

    new-instance p1, Lcom/sun/org/apache/xml/internal/utils/WrappedRuntimeException;

    invoke-direct {p1, p0}, Lcom/sun/org/apache/xml/internal/utils/WrappedRuntimeException;-><init>(Ljava/lang/Exception;)V

    throw p1
.end method
