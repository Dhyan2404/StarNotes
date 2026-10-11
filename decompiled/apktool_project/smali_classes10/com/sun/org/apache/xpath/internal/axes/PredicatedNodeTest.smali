.class public abstract Lcom/sun/org/apache/xpath/internal/axes/PredicatedNodeTest;
.super Lcom/sun/org/apache/xpath/internal/patterns/NodeTest;
.source "SourceFile"

# interfaces
.implements Lcom/sun/org/apache/xpath/internal/axes/SubContextList;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/org/apache/xpath/internal/axes/PredicatedNodeTest$PredOwner;
    }
.end annotation


# static fields
.field static final DEBUG_PREDICATECOUNTING:Z = false

.field static final serialVersionUID:J = -0x55f3d768b61b4e07L


# instance fields
.field protected transient m_foundLast:Z

.field protected m_lpi:Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;

.field protected m_predCount:I

.field transient m_predicateIndex:I

.field private m_predicates:[Lcom/sun/org/apache/xpath/internal/Expression;

.field protected transient m_proximityPositions:[I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 6
    invoke-direct {p0}, Lcom/sun/org/apache/xpath/internal/patterns/NodeTest;-><init>()V

    const/4 v0, -0x1

    .line 7
    iput v0, p0, Lcom/sun/org/apache/xpath/internal/axes/PredicatedNodeTest;->m_predCount:I

    const/4 v1, 0x0

    .line 8
    iput-boolean v1, p0, Lcom/sun/org/apache/xpath/internal/axes/PredicatedNodeTest;->m_foundLast:Z

    .line 9
    iput v0, p0, Lcom/sun/org/apache/xpath/internal/axes/PredicatedNodeTest;->m_predicateIndex:I

    return-void
.end method

.method public constructor <init>(Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/sun/org/apache/xpath/internal/patterns/NodeTest;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/sun/org/apache/xpath/internal/axes/PredicatedNodeTest;->m_predCount:I

    const/4 v1, 0x0

    .line 3
    iput-boolean v1, p0, Lcom/sun/org/apache/xpath/internal/axes/PredicatedNodeTest;->m_foundLast:Z

    .line 4
    iput v0, p0, Lcom/sun/org/apache/xpath/internal/axes/PredicatedNodeTest;->m_predicateIndex:I

    .line 5
    iput-object p1, p0, Lcom/sun/org/apache/xpath/internal/axes/PredicatedNodeTest;->m_lpi:Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;

    return-void
.end method

.method public static synthetic access$000(Lcom/sun/org/apache/xpath/internal/axes/PredicatedNodeTest;)[Lcom/sun/org/apache/xpath/internal/Expression;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/axes/PredicatedNodeTest;->m_predicates:[Lcom/sun/org/apache/xpath/internal/Expression;

    return-object p0
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

    const/4 p1, -0x1

    iput p1, p0, Lcom/sun/org/apache/xpath/internal/axes/PredicatedNodeTest;->m_predicateIndex:I

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/axes/PredicatedNodeTest;->resetProximityPositions()V
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
.method public acceptNode(I)S
    .locals 4

    iget-object v0, p0, Lcom/sun/org/apache/xpath/internal/axes/PredicatedNodeTest;->m_lpi:Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;

    invoke-virtual {v0}, Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;->getXPathContext()Lcom/sun/org/apache/xpath/internal/XPathContext;

    move-result-object v0

    :try_start_0
    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xpath/internal/XPathContext;->pushCurrentNode(I)V

    invoke-virtual {p0, v0, p1}, Lcom/sun/org/apache/xpath/internal/patterns/NodeTest;->execute(Lcom/sun/org/apache/xpath/internal/XPathContext;I)Lcom/sun/org/apache/xpath/internal/objects/XObject;

    move-result-object v1

    sget-object v2, Lcom/sun/org/apache/xpath/internal/patterns/NodeTest;->SCORE_NONE:Lcom/sun/org/apache/xpath/internal/objects/XNumber;

    const/4 v3, 0x3

    if-eq v1, v2, :cond_1

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/axes/PredicatedNodeTest;->getPredicateCount()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/sun/org/apache/xpath/internal/axes/PredicatedNodeTest;->countProximityPosition(I)V

    invoke-virtual {p0, p1, v0}, Lcom/sun/org/apache/xpath/internal/axes/PredicatedNodeTest;->executePredicates(ILcom/sun/org/apache/xpath/internal/XPathContext;)Z

    move-result p0
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p0, :cond_0

    invoke-virtual {v0}, Lcom/sun/org/apache/xpath/internal/XPathContext;->popCurrentNode()V

    return v3

    :cond_0
    invoke-virtual {v0}, Lcom/sun/org/apache/xpath/internal/XPathContext;->popCurrentNode()V

    const/4 p0, 0x1

    return p0

    :cond_1
    invoke-virtual {v0}, Lcom/sun/org/apache/xpath/internal/XPathContext;->popCurrentNode()V

    return v3

    :catchall_0
    move-exception p0

    goto :goto_0

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

    :goto_0
    invoke-virtual {v0}, Lcom/sun/org/apache/xpath/internal/XPathContext;->popCurrentNode()V

    throw p0
.end method

.method public callPredicateVisitors(Lcom/sun/org/apache/xpath/internal/XPathVisitor;)V
    .locals 4

    iget-object v0, p0, Lcom/sun/org/apache/xpath/internal/axes/PredicatedNodeTest;->m_predicates:[Lcom/sun/org/apache/xpath/internal/Expression;

    if-eqz v0, :cond_1

    array-length v0, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    new-instance v2, Lcom/sun/org/apache/xpath/internal/axes/PredicatedNodeTest$PredOwner;

    invoke-direct {v2, p0, v1}, Lcom/sun/org/apache/xpath/internal/axes/PredicatedNodeTest$PredOwner;-><init>(Lcom/sun/org/apache/xpath/internal/axes/PredicatedNodeTest;I)V

    iget-object v3, p0, Lcom/sun/org/apache/xpath/internal/axes/PredicatedNodeTest;->m_predicates:[Lcom/sun/org/apache/xpath/internal/Expression;

    aget-object v3, v3, v1

    invoke-virtual {p1, v2, v3}, Lcom/sun/org/apache/xpath/internal/XPathVisitor;->visitPredicate(Lcom/sun/org/apache/xpath/internal/ExpressionOwner;Lcom/sun/org/apache/xpath/internal/Expression;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sun/org/apache/xpath/internal/axes/PredicatedNodeTest;->m_predicates:[Lcom/sun/org/apache/xpath/internal/Expression;

    aget-object v3, v3, v1

    invoke-interface {v3, v2, p1}, Lcom/sun/org/apache/xpath/internal/XPathVisitable;->callVisitors(Lcom/sun/org/apache/xpath/internal/ExpressionOwner;Lcom/sun/org/apache/xpath/internal/XPathVisitor;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public canTraverseOutsideSubtree()Z
    .locals 4

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/axes/PredicatedNodeTest;->getPredicateCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    invoke-virtual {p0, v2}, Lcom/sun/org/apache/xpath/internal/axes/PredicatedNodeTest;->getPredicate(I)Lcom/sun/org/apache/xpath/internal/Expression;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sun/org/apache/xpath/internal/Expression;->canTraverseOutsideSubtree()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public clone()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/xpath/internal/axes/PredicatedNodeTest;

    iget-object v1, p0, Lcom/sun/org/apache/xpath/internal/axes/PredicatedNodeTest;->m_proximityPositions:[I

    if-eqz v1, :cond_0

    iget-object v2, v0, Lcom/sun/org/apache/xpath/internal/axes/PredicatedNodeTest;->m_proximityPositions:[I

    if-ne v1, v2, :cond_0

    array-length v1, v1

    new-array v1, v1, [I

    iput-object v1, v0, Lcom/sun/org/apache/xpath/internal/axes/PredicatedNodeTest;->m_proximityPositions:[I

    iget-object v2, p0, Lcom/sun/org/apache/xpath/internal/axes/PredicatedNodeTest;->m_proximityPositions:[I

    array-length v3, v2

    const/4 v4, 0x0

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    iget-object v1, v0, Lcom/sun/org/apache/xpath/internal/axes/PredicatedNodeTest;->m_lpi:Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;

    if-ne v1, p0, :cond_1

    move-object p0, v0

    check-cast p0, Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;

    iput-object p0, v0, Lcom/sun/org/apache/xpath/internal/axes/PredicatedNodeTest;->m_lpi:Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;

    :cond_1
    return-object v0
.end method

.method public countProximityPosition(I)V
    .locals 1

    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/axes/PredicatedNodeTest;->m_proximityPositions:[I

    if-eqz p0, :cond_0

    array-length v0, p0

    if-ge p1, v0, :cond_0

    aget v0, p0, p1

    add-int/lit8 v0, v0, 0x1

    aput v0, p0, p1

    :cond_0
    return-void
.end method

.method public deepEquals(Lcom/sun/org/apache/xpath/internal/Expression;)Z
    .locals 5

    invoke-super {p0, p1}, Lcom/sun/org/apache/xpath/internal/patterns/NodeTest;->deepEquals(Lcom/sun/org/apache/xpath/internal/Expression;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lcom/sun/org/apache/xpath/internal/axes/PredicatedNodeTest;

    iget-object v0, p0, Lcom/sun/org/apache/xpath/internal/axes/PredicatedNodeTest;->m_predicates:[Lcom/sun/org/apache/xpath/internal/Expression;

    if-eqz v0, :cond_4

    array-length v0, v0

    iget-object v2, p1, Lcom/sun/org/apache/xpath/internal/axes/PredicatedNodeTest;->m_predicates:[Lcom/sun/org/apache/xpath/internal/Expression;

    if-eqz v2, :cond_3

    array-length v2, v2

    if-eq v2, v0, :cond_1

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_5

    iget-object v3, p0, Lcom/sun/org/apache/xpath/internal/axes/PredicatedNodeTest;->m_predicates:[Lcom/sun/org/apache/xpath/internal/Expression;

    aget-object v3, v3, v2

    iget-object v4, p1, Lcom/sun/org/apache/xpath/internal/axes/PredicatedNodeTest;->m_predicates:[Lcom/sun/org/apache/xpath/internal/Expression;

    aget-object v4, v4, v2

    invoke-virtual {v3, v4}, Lcom/sun/org/apache/xpath/internal/Expression;->deepEquals(Lcom/sun/org/apache/xpath/internal/Expression;)Z

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
    iget-object p0, p1, Lcom/sun/org/apache/xpath/internal/axes/PredicatedNodeTest;->m_predicates:[Lcom/sun/org/apache/xpath/internal/Expression;

    if-eqz p0, :cond_5

    return v1

    :cond_5
    const/4 p0, 0x1

    return p0
.end method

.method public executePredicates(ILcom/sun/org/apache/xpath/internal/XPathContext;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/axes/PredicatedNodeTest;->getPredicateCount()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p2}, Lcom/sun/org/apache/xpath/internal/XPathContext;->getNamespaceContext()Lcom/sun/org/apache/xml/internal/utils/PrefixResolver;

    const/4 v2, -0x1

    const/4 v3, 0x0

    :try_start_0
    iput v3, p0, Lcom/sun/org/apache/xpath/internal/axes/PredicatedNodeTest;->m_predicateIndex:I

    invoke-virtual {p2, p0}, Lcom/sun/org/apache/xpath/internal/XPathContext;->pushSubContextList(Lcom/sun/org/apache/xpath/internal/axes/SubContextList;)V

    iget-object v4, p0, Lcom/sun/org/apache/xpath/internal/axes/PredicatedNodeTest;->m_lpi:Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;

    invoke-virtual {v4}, Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;->getPrefixResolver()Lcom/sun/org/apache/xml/internal/utils/PrefixResolver;

    move-result-object v4

    invoke-virtual {p2, v4}, Lcom/sun/org/apache/xpath/internal/XPathContext;->pushNamespaceContext(Lcom/sun/org/apache/xml/internal/utils/PrefixResolver;)V

    invoke-virtual {p2, p1}, Lcom/sun/org/apache/xpath/internal/XPathContext;->pushCurrentNode(I)V

    move p1, v3

    :goto_0
    if-ge p1, v0, :cond_4

    iget-object v4, p0, Lcom/sun/org/apache/xpath/internal/axes/PredicatedNodeTest;->m_predicates:[Lcom/sun/org/apache/xpath/internal/Expression;

    aget-object v4, v4, p1

    invoke-virtual {v4, p2}, Lcom/sun/org/apache/xpath/internal/Expression;->execute(Lcom/sun/org/apache/xpath/internal/XPathContext;)Lcom/sun/org/apache/xpath/internal/objects/XObject;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sun/org/apache/xpath/internal/objects/XObject;->getType()I

    move-result v5

    const/4 v6, 0x2

    if-ne v6, v5, :cond_2

    iget v5, p0, Lcom/sun/org/apache/xpath/internal/axes/PredicatedNodeTest;->m_predicateIndex:I

    invoke-virtual {p0, v5}, Lcom/sun/org/apache/xpath/internal/axes/PredicatedNodeTest;->getProximityPosition(I)I

    move-result v5

    invoke-virtual {v4}, Lcom/sun/org/apache/xpath/internal/objects/XObject;->num()D

    move-result-wide v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    double-to-int v4, v6

    if-eq v5, v4, :cond_1

    :goto_1
    invoke-virtual {p2}, Lcom/sun/org/apache/xpath/internal/XPathContext;->popCurrentNode()V

    invoke-virtual {p2}, Lcom/sun/org/apache/xpath/internal/XPathContext;->popNamespaceContext()V

    invoke-virtual {p2}, Lcom/sun/org/apache/xpath/internal/XPathContext;->popSubContextList()V

    iput v2, p0, Lcom/sun/org/apache/xpath/internal/axes/PredicatedNodeTest;->m_predicateIndex:I

    return v3

    :cond_1
    :try_start_1
    iget-object v4, p0, Lcom/sun/org/apache/xpath/internal/axes/PredicatedNodeTest;->m_predicates:[Lcom/sun/org/apache/xpath/internal/Expression;

    aget-object v4, v4, p1

    invoke-virtual {v4}, Lcom/sun/org/apache/xpath/internal/Expression;->isStableNumber()Z

    move-result v4

    if-eqz v4, :cond_3

    add-int/lit8 v4, v0, -0x1

    if-ne p1, v4, :cond_3

    iput-boolean v1, p0, Lcom/sun/org/apache/xpath/internal/axes/PredicatedNodeTest;->m_foundLast:Z

    goto :goto_2

    :cond_2
    invoke-virtual {v4}, Lcom/sun/org/apache/xpath/internal/objects/XObject;->bool()Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_1

    :cond_3
    :goto_2
    iget v4, p0, Lcom/sun/org/apache/xpath/internal/axes/PredicatedNodeTest;->m_predicateIndex:I

    add-int/2addr v4, v1

    iput v4, p0, Lcom/sun/org/apache/xpath/internal/axes/PredicatedNodeTest;->m_predicateIndex:I

    invoke-virtual {p0, v4}, Lcom/sun/org/apache/xpath/internal/axes/PredicatedNodeTest;->countProximityPosition(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual {p2}, Lcom/sun/org/apache/xpath/internal/XPathContext;->popCurrentNode()V

    invoke-virtual {p2}, Lcom/sun/org/apache/xpath/internal/XPathContext;->popNamespaceContext()V

    invoke-virtual {p2}, Lcom/sun/org/apache/xpath/internal/XPathContext;->popSubContextList()V

    iput v2, p0, Lcom/sun/org/apache/xpath/internal/axes/PredicatedNodeTest;->m_predicateIndex:I

    return v1

    :catchall_0
    move-exception p1

    invoke-virtual {p2}, Lcom/sun/org/apache/xpath/internal/XPathContext;->popCurrentNode()V

    invoke-virtual {p2}, Lcom/sun/org/apache/xpath/internal/XPathContext;->popNamespaceContext()V

    invoke-virtual {p2}, Lcom/sun/org/apache/xpath/internal/XPathContext;->popSubContextList()V

    iput v2, p0, Lcom/sun/org/apache/xpath/internal/axes/PredicatedNodeTest;->m_predicateIndex:I

    throw p1
.end method

.method public fixupVariables(Ljava/util/Vector;I)V
    .locals 3

    invoke-super {p0, p1, p2}, Lcom/sun/org/apache/xpath/internal/patterns/NodeTest;->fixupVariables(Ljava/util/Vector;I)V

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/axes/PredicatedNodeTest;->getPredicateCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/sun/org/apache/xpath/internal/axes/PredicatedNodeTest;->m_predicates:[Lcom/sun/org/apache/xpath/internal/Expression;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1, p2}, Lcom/sun/org/apache/xpath/internal/Expression;->fixupVariables(Ljava/util/Vector;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public abstract getLastPos(Lcom/sun/org/apache/xpath/internal/XPathContext;)I
.end method

.method public getLocPathIterator()Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/axes/PredicatedNodeTest;->m_lpi:Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;

    return-object p0
.end method

.method public getPredicate(I)Lcom/sun/org/apache/xpath/internal/Expression;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/axes/PredicatedNodeTest;->m_predicates:[Lcom/sun/org/apache/xpath/internal/Expression;

    aget-object p0, p0, p1

    return-object p0
.end method

.method public getPredicateCount()I
    .locals 2

    iget v0, p0, Lcom/sun/org/apache/xpath/internal/axes/PredicatedNodeTest;->m_predCount:I

    const/4 v1, -0x1

    if-ne v1, v0, :cond_1

    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/axes/PredicatedNodeTest;->m_predicates:[Lcom/sun/org/apache/xpath/internal/Expression;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    array-length p0, p0

    :goto_0
    return p0

    :cond_1
    return v0
.end method

.method public getPredicateIndex()I
    .locals 0

    iget p0, p0, Lcom/sun/org/apache/xpath/internal/axes/PredicatedNodeTest;->m_predicateIndex:I

    return p0
.end method

.method public getProximityPosition()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/sun/org/apache/xpath/internal/axes/PredicatedNodeTest;->m_predicateIndex:I

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xpath/internal/axes/PredicatedNodeTest;->getProximityPosition(I)I

    move-result p0

    return p0
.end method

.method public getProximityPosition(I)I
    .locals 0

    if-ltz p1, :cond_0

    .line 3
    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/axes/PredicatedNodeTest;->m_proximityPositions:[I

    aget p0, p0, p1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getProximityPosition(Lcom/sun/org/apache/xpath/internal/XPathContext;)I
    .locals 0

    .line 2
    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/axes/PredicatedNodeTest;->getProximityPosition()I

    move-result p0

    return p0
.end method

.method public initPredicateInfo(Lcom/sun/org/apache/xpath/internal/compiler/Compiler;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    invoke-virtual {p1, p2}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->getFirstPredicateOpPos(I)I

    move-result p2

    if-lez p2, :cond_0

    invoke-virtual {p1, p2}, Lcom/sun/org/apache/xpath/internal/compiler/Compiler;->getCompiledPredicates(I)[Lcom/sun/org/apache/xpath/internal/Expression;

    move-result-object p1

    iput-object p1, p0, Lcom/sun/org/apache/xpath/internal/axes/PredicatedNodeTest;->m_predicates:[Lcom/sun/org/apache/xpath/internal/Expression;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    :goto_0
    iget-object p2, p0, Lcom/sun/org/apache/xpath/internal/axes/PredicatedNodeTest;->m_predicates:[Lcom/sun/org/apache/xpath/internal/Expression;

    array-length v0, p2

    if-ge p1, v0, :cond_0

    aget-object p2, p2, p1

    invoke-virtual {p2, p0}, Lcom/sun/org/apache/xpath/internal/Expression;->exprSetParent(Lcom/sun/org/apache/xpath/internal/ExpressionNode;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public initProximityPosition(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/axes/PredicatedNodeTest;->m_proximityPositions:[I

    const/4 v0, 0x0

    aput v0, p0, p1

    return-void
.end method

.method public isReverseAxes()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public nodeToString(I)Ljava/lang/String;
    .locals 1

    const/4 v0, -0x1

    if-eq v0, p1, :cond_0

    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/axes/PredicatedNodeTest;->m_lpi:Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;->getXPathContext()Lcom/sun/org/apache/xpath/internal/XPathContext;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xpath/internal/XPathContext;->getDTM(I)Lcom/sun/org/apache/xml/internal/dtm/DTM;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->getNodeName(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "{"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "null"

    return-object p0
.end method

.method public resetProximityPositions()V
    .locals 2

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/axes/PredicatedNodeTest;->getPredicateCount()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v1, p0, Lcom/sun/org/apache/xpath/internal/axes/PredicatedNodeTest;->m_proximityPositions:[I

    if-nez v1, :cond_0

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/sun/org/apache/xpath/internal/axes/PredicatedNodeTest;->m_proximityPositions:[I

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/sun/org/apache/xpath/internal/axes/PredicatedNodeTest;->initProximityPosition(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v0, Lcom/sun/org/apache/xml/internal/utils/WrappedRuntimeException;

    invoke-direct {v0, p0}, Lcom/sun/org/apache/xml/internal/utils/WrappedRuntimeException;-><init>(Ljava/lang/Exception;)V

    throw v0

    :cond_1
    return-void
.end method

.method public setLocPathIterator(Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xpath/internal/axes/PredicatedNodeTest;->m_lpi:Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;

    if-eq p0, p1, :cond_0

    invoke-virtual {p1, p0}, Lcom/sun/org/apache/xpath/internal/Expression;->exprSetParent(Lcom/sun/org/apache/xpath/internal/ExpressionNode;)V

    :cond_0
    return-void
.end method

.method public setPredicateCount(I)V
    .locals 3

    if-lez p1, :cond_1

    new-array v0, p1, [Lcom/sun/org/apache/xpath/internal/Expression;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    iget-object v2, p0, Lcom/sun/org/apache/xpath/internal/axes/PredicatedNodeTest;->m_predicates:[Lcom/sun/org/apache/xpath/internal/Expression;

    aget-object v2, v2, v1

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iput-object v0, p0, Lcom/sun/org/apache/xpath/internal/axes/PredicatedNodeTest;->m_predicates:[Lcom/sun/org/apache/xpath/internal/Expression;

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sun/org/apache/xpath/internal/axes/PredicatedNodeTest;->m_predicates:[Lcom/sun/org/apache/xpath/internal/Expression;

    :goto_1
    return-void
.end method
