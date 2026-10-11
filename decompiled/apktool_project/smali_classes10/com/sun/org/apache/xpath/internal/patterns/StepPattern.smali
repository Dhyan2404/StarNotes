.class public Lcom/sun/org/apache/xpath/internal/patterns/StepPattern;
.super Lcom/sun/org/apache/xpath/internal/patterns/NodeTest;
.source "SourceFile"

# interfaces
.implements Lcom/sun/org/apache/xpath/internal/axes/SubContextList;
.implements Lcom/sun/org/apache/xpath/internal/ExpressionOwner;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/org/apache/xpath/internal/patterns/StepPattern$PredOwner;
    }
.end annotation


# static fields
.field private static final DEBUG_MATCHES:Z = false

.field static final serialVersionUID:J = 0x7de50adb02c28e44L


# instance fields
.field protected m_axis:I

.field m_predicates:[Lcom/sun/org/apache/xpath/internal/Expression;

.field m_relativePathPattern:Lcom/sun/org/apache/xpath/internal/patterns/StepPattern;

.field m_targetString:Ljava/lang/String;


# direct methods
.method public constructor <init>(III)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/sun/org/apache/xpath/internal/patterns/NodeTest;-><init>(I)V

    .line 4
    iput p2, p0, Lcom/sun/org/apache/xpath/internal/patterns/StepPattern;->m_axis:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/sun/org/apache/xpath/internal/patterns/NodeTest;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 2
    iput p4, p0, Lcom/sun/org/apache/xpath/internal/patterns/StepPattern;->m_axis:I

    return-void
.end method

.method private final checkProximityPosition(Lcom/sun/org/apache/xpath/internal/XPathContext;ILcom/sun/org/apache/xml/internal/dtm/DTM;II)Z
    .locals 7

    const/16 v0, 0xc

    :try_start_0
    invoke-interface {p3, v0}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->getAxisTraverser(I)Lcom/sun/org/apache/xml/internal/dtm/DTMAxisTraverser;

    move-result-object p3

    invoke-virtual {p3, p4}, Lcom/sun/org/apache/xml/internal/dtm/DTMAxisTraverser;->first(I)I

    move-result v0
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v1, v0, :cond_5

    :try_start_1
    invoke-virtual {p1, v0}, Lcom/sun/org/apache/xpath/internal/XPathContext;->pushCurrentNode(I)V

    sget-object v1, Lcom/sun/org/apache/xpath/internal/patterns/NodeTest;->SCORE_NONE:Lcom/sun/org/apache/xpath/internal/objects/XNumber;

    invoke-super {p0, p1, v0}, Lcom/sun/org/apache/xpath/internal/patterns/NodeTest;->execute(Lcom/sun/org/apache/xpath/internal/XPathContext;I)Lcom/sun/org/apache/xpath/internal/objects/XObject;

    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    if-eq v1, v4, :cond_4

    :try_start_2
    invoke-virtual {p1, p0}, Lcom/sun/org/apache/xpath/internal/XPathContext;->pushSubContextList(Lcom/sun/org/apache/xpath/internal/axes/SubContextList;)V

    move v1, v2

    :goto_1
    if-ge v1, p2, :cond_2

    invoke-virtual {p1, v1}, Lcom/sun/org/apache/xpath/internal/XPathContext;->pushPredicatePos(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    iget-object v4, p0, Lcom/sun/org/apache/xpath/internal/patterns/StepPattern;->m_predicates:[Lcom/sun/org/apache/xpath/internal/Expression;

    aget-object v4, v4, v1

    invoke-virtual {v4, p1}, Lcom/sun/org/apache/xpath/internal/Expression;->execute(Lcom/sun/org/apache/xpath/internal/XPathContext;)Lcom/sun/org/apache/xpath/internal/objects/XObject;

    move-result-object v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-virtual {v4}, Lcom/sun/org/apache/xpath/internal/objects/XObject;->getType()I

    move-result v5

    const/4 v6, 0x2

    if-eq v6, v5, :cond_1

    invoke-virtual {v4}, Lcom/sun/org/apache/xpath/internal/objects/XObject;->boolWithSideEffects()Z

    move-result v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-nez v5, :cond_0

    :try_start_5
    invoke-virtual {v4}, Lcom/sun/org/apache/xpath/internal/objects/XObject;->detach()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    invoke-virtual {p1}, Lcom/sun/org/apache/xpath/internal/XPathContext;->popPredicatePos()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    move v1, v2

    goto :goto_2

    :cond_0
    :try_start_7
    invoke-virtual {v4}, Lcom/sun/org/apache/xpath/internal/objects/XObject;->detach()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    invoke-virtual {p1}, Lcom/sun/org/apache/xpath/internal/XPathContext;->popPredicatePos()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    :try_start_9
    new-instance p0, Ljava/lang/Error;

    const-string p2, "Why: Should never have been called"

    invoke-direct {p0, p2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :catchall_0
    move-exception p0

    :try_start_a
    invoke-virtual {v4}, Lcom/sun/org/apache/xpath/internal/objects/XObject;->detach()V

    throw p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :catchall_1
    move-exception p0

    :try_start_b
    invoke-virtual {p1}, Lcom/sun/org/apache/xpath/internal/XPathContext;->popPredicatePos()V

    throw p0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    :cond_2
    move v1, v3

    :goto_2
    :try_start_c
    invoke-virtual {p1}, Lcom/sun/org/apache/xpath/internal/XPathContext;->popSubContextList()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    if-eqz v1, :cond_3

    add-int/lit8 p5, p5, -0x1

    :cond_3
    if-ge p5, v3, :cond_4

    :try_start_d
    invoke-virtual {p1}, Lcom/sun/org/apache/xpath/internal/XPathContext;->popCurrentNode()V
    :try_end_d
    .catch Ljavax/xml/transform/TransformerException; {:try_start_d .. :try_end_d} :catch_0

    return v2

    :catchall_2
    move-exception p0

    :try_start_e
    invoke-virtual {p1}, Lcom/sun/org/apache/xpath/internal/XPathContext;->popSubContextList()V

    throw p0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    :cond_4
    :try_start_f
    invoke-virtual {p1}, Lcom/sun/org/apache/xpath/internal/XPathContext;->popCurrentNode()V

    invoke-virtual {p3, p4, v0}, Lcom/sun/org/apache/xml/internal/dtm/DTMAxisTraverser;->next(II)I

    move-result v0

    goto :goto_0

    :catchall_3
    move-exception p0

    invoke-virtual {p1}, Lcom/sun/org/apache/xpath/internal/XPathContext;->popCurrentNode()V

    throw p0
    :try_end_f
    .catch Ljavax/xml/transform/TransformerException; {:try_start_f .. :try_end_f} :catch_0

    :cond_5
    if-ne p5, v3, :cond_6

    move v2, v3

    :cond_6
    return v2

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final getProximityPosition(Lcom/sun/org/apache/xpath/internal/XPathContext;IZ)I
    .locals 11

    .line 1
    invoke-virtual {p1}, Lcom/sun/org/apache/xpath/internal/XPathContext;->getCurrentNode()I

    move-result v0

    .line 2
    invoke-virtual {p1, v0}, Lcom/sun/org/apache/xpath/internal/XPathContext;->getDTM(I)Lcom/sun/org/apache/xml/internal/dtm/DTM;

    move-result-object v1

    .line 3
    invoke-interface {v1, v0}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->getParent(I)I

    move-result v2

    const/4 v3, 0x3

    .line 4
    :try_start_0
    invoke-interface {v1, v3}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->getAxisTraverser(I)Lcom/sun/org/apache/xml/internal/dtm/DTMAxisTraverser;

    move-result-object v1

    .line 5
    invoke-virtual {v1, v2}, Lcom/sun/org/apache/xml/internal/dtm/DTMAxisTraverser;->first(I)I

    move-result v3
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    const/4 v6, -0x1

    if-eq v6, v3, :cond_5

    .line 6
    :try_start_1
    invoke-virtual {p1, v3}, Lcom/sun/org/apache/xpath/internal/XPathContext;->pushCurrentNode(I)V

    .line 7
    sget-object v6, Lcom/sun/org/apache/xpath/internal/patterns/NodeTest;->SCORE_NONE:Lcom/sun/org/apache/xpath/internal/objects/XNumber;

    invoke-super {p0, p1, v3}, Lcom/sun/org/apache/xpath/internal/patterns/NodeTest;->execute(Lcom/sun/org/apache/xpath/internal/XPathContext;I)Lcom/sun/org/apache/xpath/internal/objects/XObject;

    move-result-object v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    if-eq v6, v7, :cond_4

    .line 8
    :try_start_2
    invoke-virtual {p1, p0}, Lcom/sun/org/apache/xpath/internal/XPathContext;->pushSubContextList(Lcom/sun/org/apache/xpath/internal/axes/SubContextList;)V

    move v6, v4

    :goto_1
    if-ge v6, p2, :cond_2

    .line 9
    invoke-virtual {p1, v6}, Lcom/sun/org/apache/xpath/internal/XPathContext;->pushPredicatePos(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 10
    :try_start_3
    iget-object v7, p0, Lcom/sun/org/apache/xpath/internal/patterns/StepPattern;->m_predicates:[Lcom/sun/org/apache/xpath/internal/Expression;

    aget-object v7, v7, v6

    invoke-virtual {v7, p1}, Lcom/sun/org/apache/xpath/internal/Expression;->execute(Lcom/sun/org/apache/xpath/internal/XPathContext;)Lcom/sun/org/apache/xpath/internal/objects/XObject;

    move-result-object v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 11
    :try_start_4
    invoke-virtual {v7}, Lcom/sun/org/apache/xpath/internal/objects/XObject;->getType()I

    move-result v8

    const/4 v9, 0x2

    if-ne v9, v8, :cond_0

    add-int/lit8 v8, v5, 0x1

    .line 12
    invoke-virtual {v7}, Lcom/sun/org/apache/xpath/internal/objects/XObject;->numWithSideEffects()D

    move-result-wide v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    double-to-int v9, v9

    if-eq v8, v9, :cond_1

    .line 13
    :try_start_5
    invoke-virtual {v7}, Lcom/sun/org/apache/xpath/internal/objects/XObject;->detach()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_2

    .line 14
    :cond_0
    :try_start_6
    invoke-virtual {v7}, Lcom/sun/org/apache/xpath/internal/objects/XObject;->boolWithSideEffects()Z

    move-result v8
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-nez v8, :cond_1

    .line 15
    :try_start_7
    invoke-virtual {v7}, Lcom/sun/org/apache/xpath/internal/objects/XObject;->detach()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 16
    :goto_2
    :try_start_8
    invoke-virtual {p1}, Lcom/sun/org/apache/xpath/internal/XPathContext;->popPredicatePos()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    move v6, v4

    goto :goto_3

    .line 17
    :cond_1
    :try_start_9
    invoke-virtual {v7}, Lcom/sun/org/apache/xpath/internal/objects/XObject;->detach()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 18
    :try_start_a
    invoke-virtual {p1}, Lcom/sun/org/apache/xpath/internal/XPathContext;->popPredicatePos()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 19
    :try_start_b
    invoke-virtual {v7}, Lcom/sun/org/apache/xpath/internal/objects/XObject;->detach()V

    .line 20
    throw p0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    :catchall_1
    move-exception p0

    .line 21
    :try_start_c
    invoke-virtual {p1}, Lcom/sun/org/apache/xpath/internal/XPathContext;->popPredicatePos()V

    .line 22
    throw p0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    :cond_2
    const/4 v6, 0x1

    .line 23
    :goto_3
    :try_start_d
    invoke-virtual {p1}, Lcom/sun/org/apache/xpath/internal/XPathContext;->popSubContextList()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    if-eqz v6, :cond_3

    add-int/lit8 v5, v5, 0x1

    :cond_3
    if-nez p3, :cond_4

    if-ne v3, v0, :cond_4

    .line 24
    :try_start_e
    invoke-virtual {p1}, Lcom/sun/org/apache/xpath/internal/XPathContext;->popCurrentNode()V
    :try_end_e
    .catch Ljavax/xml/transform/TransformerException; {:try_start_e .. :try_end_e} :catch_0

    return v5

    :catchall_2
    move-exception p0

    .line 25
    :try_start_f
    invoke-virtual {p1}, Lcom/sun/org/apache/xpath/internal/XPathContext;->popSubContextList()V

    .line 26
    throw p0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    .line 27
    :cond_4
    :try_start_10
    invoke-virtual {p1}, Lcom/sun/org/apache/xpath/internal/XPathContext;->popCurrentNode()V

    .line 28
    invoke-virtual {v1, v2, v3}, Lcom/sun/org/apache/xml/internal/dtm/DTMAxisTraverser;->next(II)I

    move-result v3

    goto :goto_0

    :catchall_3
    move-exception p0

    .line 29
    invoke-virtual {p1}, Lcom/sun/org/apache/xpath/internal/XPathContext;->popCurrentNode()V

    .line 30
    throw p0
    :try_end_10
    .catch Ljavax/xml/transform/TransformerException; {:try_start_10 .. :try_end_10} :catch_0

    :cond_5
    return v5

    :catch_0
    move-exception p0

    .line 31
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public calcScore()V
    .locals 1

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/patterns/StepPattern;->getPredicateCount()I

    move-result v0

    if-gtz v0, :cond_1

    iget-object v0, p0, Lcom/sun/org/apache/xpath/internal/patterns/StepPattern;->m_relativePathPattern:Lcom/sun/org/apache/xpath/internal/patterns/StepPattern;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-super {p0}, Lcom/sun/org/apache/xpath/internal/patterns/NodeTest;->calcScore()V

    goto :goto_1

    :cond_1
    :goto_0
    sget-object v0, Lcom/sun/org/apache/xpath/internal/patterns/NodeTest;->SCORE_OTHER:Lcom/sun/org/apache/xpath/internal/objects/XNumber;

    iput-object v0, p0, Lcom/sun/org/apache/xpath/internal/patterns/NodeTest;->m_score:Lcom/sun/org/apache/xpath/internal/objects/XNumber;

    :goto_1
    iget-object v0, p0, Lcom/sun/org/apache/xpath/internal/patterns/StepPattern;->m_targetString:Ljava/lang/String;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/patterns/StepPattern;->calcTargetString()V

    :cond_2
    return-void
.end method

.method public calcTargetString()V
    .locals 3

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/patterns/NodeTest;->getWhatToShow()I

    move-result v0

    const/4 v1, -0x1

    const-string v2, "*"

    if-eq v0, v1, :cond_5

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    const/16 v1, 0x8

    if-eq v0, v1, :cond_2

    const/16 v1, 0xc

    if-eq v0, v1, :cond_2

    const/16 v1, 0x80

    if-eq v0, v1, :cond_1

    const/16 v1, 0x100

    if-eq v0, v1, :cond_0

    const/16 v1, 0x500

    if-eq v0, v1, :cond_0

    iput-object v2, p0, Lcom/sun/org/apache/xpath/internal/patterns/StepPattern;->m_targetString:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, "/"

    iput-object v0, p0, Lcom/sun/org/apache/xpath/internal/patterns/StepPattern;->m_targetString:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string v0, "#comment"

    iput-object v0, p0, Lcom/sun/org/apache/xpath/internal/patterns/StepPattern;->m_targetString:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const-string v0, "#text"

    iput-object v0, p0, Lcom/sun/org/apache/xpath/internal/patterns/StepPattern;->m_targetString:Ljava/lang/String;

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/sun/org/apache/xpath/internal/patterns/NodeTest;->m_name:Ljava/lang/String;

    if-ne v2, v0, :cond_4

    iput-object v2, p0, Lcom/sun/org/apache/xpath/internal/patterns/StepPattern;->m_targetString:Ljava/lang/String;

    goto :goto_0

    :cond_4
    iput-object v0, p0, Lcom/sun/org/apache/xpath/internal/patterns/StepPattern;->m_targetString:Ljava/lang/String;

    goto :goto_0

    :cond_5
    iput-object v2, p0, Lcom/sun/org/apache/xpath/internal/patterns/StepPattern;->m_targetString:Ljava/lang/String;

    :goto_0
    return-void
.end method

.method public callSubtreeVisitors(Lcom/sun/org/apache/xpath/internal/XPathVisitor;)V
    .locals 4

    iget-object v0, p0, Lcom/sun/org/apache/xpath/internal/patterns/StepPattern;->m_predicates:[Lcom/sun/org/apache/xpath/internal/Expression;

    if-eqz v0, :cond_1

    array-length v0, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    new-instance v2, Lcom/sun/org/apache/xpath/internal/patterns/StepPattern$PredOwner;

    invoke-direct {v2, p0, v1}, Lcom/sun/org/apache/xpath/internal/patterns/StepPattern$PredOwner;-><init>(Lcom/sun/org/apache/xpath/internal/patterns/StepPattern;I)V

    iget-object v3, p0, Lcom/sun/org/apache/xpath/internal/patterns/StepPattern;->m_predicates:[Lcom/sun/org/apache/xpath/internal/Expression;

    aget-object v3, v3, v1

    invoke-virtual {p1, v2, v3}, Lcom/sun/org/apache/xpath/internal/XPathVisitor;->visitPredicate(Lcom/sun/org/apache/xpath/internal/ExpressionOwner;Lcom/sun/org/apache/xpath/internal/Expression;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sun/org/apache/xpath/internal/patterns/StepPattern;->m_predicates:[Lcom/sun/org/apache/xpath/internal/Expression;

    aget-object v3, v3, v1

    invoke-interface {v3, v2, p1}, Lcom/sun/org/apache/xpath/internal/XPathVisitable;->callVisitors(Lcom/sun/org/apache/xpath/internal/ExpressionOwner;Lcom/sun/org/apache/xpath/internal/XPathVisitor;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sun/org/apache/xpath/internal/patterns/StepPattern;->m_relativePathPattern:Lcom/sun/org/apache/xpath/internal/patterns/StepPattern;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p0, p1}, Lcom/sun/org/apache/xpath/internal/patterns/StepPattern;->callVisitors(Lcom/sun/org/apache/xpath/internal/ExpressionOwner;Lcom/sun/org/apache/xpath/internal/XPathVisitor;)V

    :cond_2
    return-void
.end method

.method public callVisitors(Lcom/sun/org/apache/xpath/internal/ExpressionOwner;Lcom/sun/org/apache/xpath/internal/XPathVisitor;)V
    .locals 0

    invoke-virtual {p2, p1, p0}, Lcom/sun/org/apache/xpath/internal/XPathVisitor;->visitMatchPattern(Lcom/sun/org/apache/xpath/internal/ExpressionOwner;Lcom/sun/org/apache/xpath/internal/patterns/StepPattern;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0, p2}, Lcom/sun/org/apache/xpath/internal/patterns/StepPattern;->callSubtreeVisitors(Lcom/sun/org/apache/xpath/internal/XPathVisitor;)V

    :cond_0
    return-void
.end method

.method public canTraverseOutsideSubtree()Z
    .locals 4

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/patterns/StepPattern;->getPredicateCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    invoke-virtual {p0, v2}, Lcom/sun/org/apache/xpath/internal/patterns/StepPattern;->getPredicate(I)Lcom/sun/org/apache/xpath/internal/Expression;

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

.method public deepEquals(Lcom/sun/org/apache/xpath/internal/Expression;)Z
    .locals 5

    invoke-super {p0, p1}, Lcom/sun/org/apache/xpath/internal/patterns/NodeTest;->deepEquals(Lcom/sun/org/apache/xpath/internal/Expression;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lcom/sun/org/apache/xpath/internal/patterns/StepPattern;

    iget-object v0, p0, Lcom/sun/org/apache/xpath/internal/patterns/StepPattern;->m_predicates:[Lcom/sun/org/apache/xpath/internal/Expression;

    if-eqz v0, :cond_4

    array-length v0, v0

    iget-object v2, p1, Lcom/sun/org/apache/xpath/internal/patterns/StepPattern;->m_predicates:[Lcom/sun/org/apache/xpath/internal/Expression;

    if-eqz v2, :cond_3

    array-length v2, v2

    if-eq v2, v0, :cond_1

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_5

    iget-object v3, p0, Lcom/sun/org/apache/xpath/internal/patterns/StepPattern;->m_predicates:[Lcom/sun/org/apache/xpath/internal/Expression;

    aget-object v3, v3, v2

    iget-object v4, p1, Lcom/sun/org/apache/xpath/internal/patterns/StepPattern;->m_predicates:[Lcom/sun/org/apache/xpath/internal/Expression;

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
    iget-object v0, p1, Lcom/sun/org/apache/xpath/internal/patterns/StepPattern;->m_predicates:[Lcom/sun/org/apache/xpath/internal/Expression;

    if-eqz v0, :cond_5

    return v1

    :cond_5
    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/patterns/StepPattern;->m_relativePathPattern:Lcom/sun/org/apache/xpath/internal/patterns/StepPattern;

    if-eqz p0, :cond_6

    iget-object p1, p1, Lcom/sun/org/apache/xpath/internal/patterns/StepPattern;->m_relativePathPattern:Lcom/sun/org/apache/xpath/internal/patterns/StepPattern;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xpath/internal/patterns/StepPattern;->deepEquals(Lcom/sun/org/apache/xpath/internal/Expression;)Z

    move-result p0

    if-nez p0, :cond_7

    return v1

    :cond_6
    iget-object p0, p1, Lcom/sun/org/apache/xpath/internal/patterns/StepPattern;->m_relativePathPattern:Lcom/sun/org/apache/xpath/internal/patterns/StepPattern;

    if-eqz p0, :cond_7

    return v1

    :cond_7
    const/4 p0, 0x1

    return p0
.end method

.method public execute(Lcom/sun/org/apache/xpath/internal/XPathContext;)Lcom/sun/org/apache/xpath/internal/objects/XObject;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 5
    invoke-virtual {p1}, Lcom/sun/org/apache/xpath/internal/XPathContext;->getCurrentNode()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/sun/org/apache/xpath/internal/patterns/StepPattern;->execute(Lcom/sun/org/apache/xpath/internal/XPathContext;I)Lcom/sun/org/apache/xpath/internal/objects/XObject;

    move-result-object p0

    return-object p0
.end method

.method public execute(Lcom/sun/org/apache/xpath/internal/XPathContext;I)Lcom/sun/org/apache/xpath/internal/objects/XObject;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1, p2}, Lcom/sun/org/apache/xpath/internal/XPathContext;->getDTM(I)Lcom/sun/org/apache/xml/internal/dtm/DTM;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p2}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->getExpandedTypeID(I)I

    move-result v1

    .line 3
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/sun/org/apache/xpath/internal/patterns/StepPattern;->execute(Lcom/sun/org/apache/xpath/internal/XPathContext;ILcom/sun/org/apache/xml/internal/dtm/DTM;I)Lcom/sun/org/apache/xpath/internal/objects/XObject;

    move-result-object p0

    return-object p0

    .line 4
    :cond_0
    sget-object p0, Lcom/sun/org/apache/xpath/internal/patterns/NodeTest;->SCORE_NONE:Lcom/sun/org/apache/xpath/internal/objects/XNumber;

    return-object p0
.end method

.method public execute(Lcom/sun/org/apache/xpath/internal/XPathContext;ILcom/sun/org/apache/xml/internal/dtm/DTM;I)Lcom/sun/org/apache/xpath/internal/objects/XObject;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 6
    iget v0, p0, Lcom/sun/org/apache/xpath/internal/patterns/NodeTest;->m_whatToShow:I

    const/high16 v1, 0x10000

    if-ne v0, v1, :cond_1

    .line 7
    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/patterns/StepPattern;->m_relativePathPattern:Lcom/sun/org/apache/xpath/internal/patterns/StepPattern;

    if-eqz p0, :cond_0

    .line 8
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xpath/internal/patterns/StepPattern;->execute(Lcom/sun/org/apache/xpath/internal/XPathContext;)Lcom/sun/org/apache/xpath/internal/objects/XObject;

    move-result-object p0

    return-object p0

    .line 9
    :cond_0
    sget-object p0, Lcom/sun/org/apache/xpath/internal/patterns/NodeTest;->SCORE_NONE:Lcom/sun/org/apache/xpath/internal/objects/XNumber;

    return-object p0

    .line 10
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/sun/org/apache/xpath/internal/patterns/NodeTest;->execute(Lcom/sun/org/apache/xpath/internal/XPathContext;ILcom/sun/org/apache/xml/internal/dtm/DTM;I)Lcom/sun/org/apache/xpath/internal/objects/XObject;

    move-result-object p4

    .line 11
    sget-object v0, Lcom/sun/org/apache/xpath/internal/patterns/NodeTest;->SCORE_NONE:Lcom/sun/org/apache/xpath/internal/objects/XNumber;

    if-ne p4, v0, :cond_2

    return-object v0

    .line 12
    :cond_2
    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/patterns/StepPattern;->getPredicateCount()I

    move-result v1

    if-eqz v1, :cond_3

    .line 13
    invoke-virtual {p0, p1, p3, p2}, Lcom/sun/org/apache/xpath/internal/patterns/StepPattern;->executePredicates(Lcom/sun/org/apache/xpath/internal/XPathContext;Lcom/sun/org/apache/xml/internal/dtm/DTM;I)Z

    move-result v1

    if-nez v1, :cond_3

    return-object v0

    .line 14
    :cond_3
    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/patterns/StepPattern;->m_relativePathPattern:Lcom/sun/org/apache/xpath/internal/patterns/StepPattern;

    if-eqz p0, :cond_4

    .line 15
    invoke-virtual {p0, p1, p3, p2}, Lcom/sun/org/apache/xpath/internal/patterns/StepPattern;->executeRelativePathPattern(Lcom/sun/org/apache/xpath/internal/XPathContext;Lcom/sun/org/apache/xml/internal/dtm/DTM;I)Lcom/sun/org/apache/xpath/internal/objects/XObject;

    move-result-object p0

    return-object p0

    :cond_4
    return-object p4
.end method

.method public final executePredicates(Lcom/sun/org/apache/xpath/internal/XPathContext;Lcom/sun/org/apache/xml/internal/dtm/DTM;I)Z
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/patterns/StepPattern;->getPredicateCount()I

    move-result v0

    :try_start_0
    invoke-virtual {p1, p0}, Lcom/sun/org/apache/xpath/internal/XPathContext;->pushSubContextList(Lcom/sun/org/apache/xpath/internal/axes/SubContextList;)V

    const/4 v1, 0x0

    move v2, v1

    move v8, v2

    :goto_0
    const/4 v9, 0x1

    if-ge v8, v0, :cond_5

    invoke-virtual {p1, v8}, Lcom/sun/org/apache/xpath/internal/XPathContext;->pushPredicatePos(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    iget-object v3, p0, Lcom/sun/org/apache/xpath/internal/patterns/StepPattern;->m_predicates:[Lcom/sun/org/apache/xpath/internal/Expression;

    aget-object v3, v3, v8

    invoke-virtual {v3, p1}, Lcom/sun/org/apache/xpath/internal/Expression;->execute(Lcom/sun/org/apache/xpath/internal/XPathContext;)Lcom/sun/org/apache/xpath/internal/objects/XObject;

    move-result-object v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v10}, Lcom/sun/org/apache/xpath/internal/objects/XObject;->getType()I

    move-result v3

    const/4 v4, 0x2

    if-ne v4, v3, :cond_3

    invoke-virtual {v10}, Lcom/sun/org/apache/xpath/internal/objects/XObject;->num()D

    move-result-wide v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    double-to-int v7, v3

    if-eqz v2, :cond_1

    if-ne v7, v9, :cond_0

    move v1, v9

    :cond_0
    :try_start_3
    invoke-virtual {v10}, Lcom/sun/org/apache/xpath/internal/objects/XObject;->detach()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_1
    :try_start_4
    invoke-virtual {p1}, Lcom/sun/org/apache/xpath/internal/XPathContext;->popPredicatePos()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_3

    :cond_1
    move-object v2, p0

    move-object v3, p1

    move v4, v8

    move-object v5, p2

    move v6, p3

    :try_start_5
    invoke-direct/range {v2 .. v7}, Lcom/sun/org/apache/xpath/internal/patterns/StepPattern;->checkProximityPosition(Lcom/sun/org/apache/xpath/internal/XPathContext;ILcom/sun/org/apache/xml/internal/dtm/DTM;II)Z

    move-result v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-nez v2, :cond_2

    :try_start_6
    invoke-virtual {v10}, Lcom/sun/org/apache/xpath/internal/objects/XObject;->detach()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_1

    :cond_2
    move v2, v9

    goto :goto_2

    :cond_3
    :try_start_7
    invoke-virtual {v10}, Lcom/sun/org/apache/xpath/internal/objects/XObject;->boolWithSideEffects()Z

    move-result v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-nez v3, :cond_4

    :try_start_8
    invoke-virtual {v10}, Lcom/sun/org/apache/xpath/internal/objects/XObject;->detach()V

    goto :goto_1

    :cond_4
    :goto_2
    invoke-virtual {v10}, Lcom/sun/org/apache/xpath/internal/objects/XObject;->detach()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :try_start_9
    invoke-virtual {p1}, Lcom/sun/org/apache/xpath/internal/XPathContext;->popPredicatePos()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    :try_start_a
    invoke-virtual {v10}, Lcom/sun/org/apache/xpath/internal/objects/XObject;->detach()V

    throw p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :catchall_1
    move-exception p0

    :try_start_b
    invoke-virtual {p1}, Lcom/sun/org/apache/xpath/internal/XPathContext;->popPredicatePos()V

    throw p0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    :cond_5
    move v1, v9

    :goto_3
    invoke-virtual {p1}, Lcom/sun/org/apache/xpath/internal/XPathContext;->popSubContextList()V

    return v1

    :catchall_2
    move-exception p0

    invoke-virtual {p1}, Lcom/sun/org/apache/xpath/internal/XPathContext;->popSubContextList()V

    throw p0
.end method

.method public final executeRelativePathPattern(Lcom/sun/org/apache/xpath/internal/XPathContext;Lcom/sun/org/apache/xml/internal/dtm/DTM;I)Lcom/sun/org/apache/xpath/internal/objects/XObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    sget-object v0, Lcom/sun/org/apache/xpath/internal/patterns/NodeTest;->SCORE_NONE:Lcom/sun/org/apache/xpath/internal/objects/XNumber;

    iget v1, p0, Lcom/sun/org/apache/xpath/internal/patterns/StepPattern;->m_axis:I

    invoke-interface {p2, v1}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->getAxisTraverser(I)Lcom/sun/org/apache/xml/internal/dtm/DTMAxisTraverser;

    move-result-object p2

    invoke-virtual {p2, p3}, Lcom/sun/org/apache/xml/internal/dtm/DTMAxisTraverser;->first(I)I

    move-result v1

    :goto_0
    const/4 v2, -0x1

    if-eq v2, v1, :cond_1

    :try_start_0
    invoke-virtual {p1, v1}, Lcom/sun/org/apache/xpath/internal/XPathContext;->pushCurrentNode(I)V

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xpath/internal/patterns/StepPattern;->execute(Lcom/sun/org/apache/xpath/internal/XPathContext;)Lcom/sun/org/apache/xpath/internal/objects/XObject;

    move-result-object v0

    sget-object v2, Lcom/sun/org/apache/xpath/internal/patterns/NodeTest;->SCORE_NONE:Lcom/sun/org/apache/xpath/internal/objects/XNumber;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v0, v2, :cond_0

    invoke-virtual {p1}, Lcom/sun/org/apache/xpath/internal/XPathContext;->popCurrentNode()V

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Lcom/sun/org/apache/xpath/internal/XPathContext;->popCurrentNode()V

    invoke-virtual {p2, p3, v1}, Lcom/sun/org/apache/xml/internal/dtm/DTMAxisTraverser;->next(II)I

    move-result v1

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-virtual {p1}, Lcom/sun/org/apache/xpath/internal/XPathContext;->popCurrentNode()V

    throw p0

    :cond_1
    :goto_1
    return-object v0
.end method

.method public fixupVariables(Ljava/util/Vector;I)V
    .locals 3

    invoke-super {p0, p1, p2}, Lcom/sun/org/apache/xpath/internal/patterns/NodeTest;->fixupVariables(Ljava/util/Vector;I)V

    iget-object v0, p0, Lcom/sun/org/apache/xpath/internal/patterns/StepPattern;->m_predicates:[Lcom/sun/org/apache/xpath/internal/Expression;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/sun/org/apache/xpath/internal/patterns/StepPattern;->m_predicates:[Lcom/sun/org/apache/xpath/internal/Expression;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    aget-object v1, v1, v0

    invoke-virtual {v1, p1, p2}, Lcom/sun/org/apache/xpath/internal/Expression;->fixupVariables(Ljava/util/Vector;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/patterns/StepPattern;->m_relativePathPattern:Lcom/sun/org/apache/xpath/internal/patterns/StepPattern;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1, p2}, Lcom/sun/org/apache/xpath/internal/patterns/StepPattern;->fixupVariables(Ljava/util/Vector;I)V

    :cond_1
    return-void
.end method

.method public getAxis()I
    .locals 0

    iget p0, p0, Lcom/sun/org/apache/xpath/internal/patterns/StepPattern;->m_axis:I

    return p0
.end method

.method public getExpression()Lcom/sun/org/apache/xpath/internal/Expression;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/patterns/StepPattern;->m_relativePathPattern:Lcom/sun/org/apache/xpath/internal/patterns/StepPattern;

    return-object p0
.end method

.method public getLastPos(Lcom/sun/org/apache/xpath/internal/XPathContext;)I
    .locals 2

    invoke-virtual {p1}, Lcom/sun/org/apache/xpath/internal/XPathContext;->getPredicatePos()I

    move-result v0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/sun/org/apache/xpath/internal/patterns/StepPattern;->getProximityPosition(Lcom/sun/org/apache/xpath/internal/XPathContext;IZ)I

    move-result p0

    return p0
.end method

.method public getMatchScore(Lcom/sun/org/apache/xpath/internal/XPathContext;I)D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    invoke-virtual {p1, p2}, Lcom/sun/org/apache/xpath/internal/XPathContext;->pushCurrentNode(I)V

    invoke-virtual {p1, p2}, Lcom/sun/org/apache/xpath/internal/XPathContext;->pushCurrentExpressionNode(I)V

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xpath/internal/patterns/StepPattern;->execute(Lcom/sun/org/apache/xpath/internal/XPathContext;)Lcom/sun/org/apache/xpath/internal/objects/XObject;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/objects/XObject;->num()D

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1}, Lcom/sun/org/apache/xpath/internal/XPathContext;->popCurrentNode()V

    invoke-virtual {p1}, Lcom/sun/org/apache/xpath/internal/XPathContext;->popCurrentExpressionNode()V

    return-wide v0

    :catchall_0
    move-exception p0

    invoke-virtual {p1}, Lcom/sun/org/apache/xpath/internal/XPathContext;->popCurrentNode()V

    invoke-virtual {p1}, Lcom/sun/org/apache/xpath/internal/XPathContext;->popCurrentExpressionNode()V

    throw p0
.end method

.method public getPredicate(I)Lcom/sun/org/apache/xpath/internal/Expression;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/patterns/StepPattern;->m_predicates:[Lcom/sun/org/apache/xpath/internal/Expression;

    aget-object p0, p0, p1

    return-object p0
.end method

.method public final getPredicateCount()I
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/patterns/StepPattern;->m_predicates:[Lcom/sun/org/apache/xpath/internal/Expression;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    array-length p0, p0

    :goto_0
    return p0
.end method

.method public getPredicates()[Lcom/sun/org/apache/xpath/internal/Expression;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/patterns/StepPattern;->m_predicates:[Lcom/sun/org/apache/xpath/internal/Expression;

    return-object p0
.end method

.method public getProximityPosition(Lcom/sun/org/apache/xpath/internal/XPathContext;)I
    .locals 2

    .line 32
    invoke-virtual {p1}, Lcom/sun/org/apache/xpath/internal/XPathContext;->getPredicatePos()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/sun/org/apache/xpath/internal/patterns/StepPattern;->getProximityPosition(Lcom/sun/org/apache/xpath/internal/XPathContext;IZ)I

    move-result p0

    return p0
.end method

.method public getRelativePathPattern()Lcom/sun/org/apache/xpath/internal/patterns/StepPattern;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/patterns/StepPattern;->m_relativePathPattern:Lcom/sun/org/apache/xpath/internal/patterns/StepPattern;

    return-object p0
.end method

.method public getTargetString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/patterns/StepPattern;->m_targetString:Ljava/lang/String;

    return-object p0
.end method

.method public setAxis(I)V
    .locals 0

    iput p1, p0, Lcom/sun/org/apache/xpath/internal/patterns/StepPattern;->m_axis:I

    return-void
.end method

.method public setExpression(Lcom/sun/org/apache/xpath/internal/Expression;)V
    .locals 0

    invoke-virtual {p1, p0}, Lcom/sun/org/apache/xpath/internal/Expression;->exprSetParent(Lcom/sun/org/apache/xpath/internal/ExpressionNode;)V

    check-cast p1, Lcom/sun/org/apache/xpath/internal/patterns/StepPattern;

    iput-object p1, p0, Lcom/sun/org/apache/xpath/internal/patterns/StepPattern;->m_relativePathPattern:Lcom/sun/org/apache/xpath/internal/patterns/StepPattern;

    return-void
.end method

.method public setPredicates([Lcom/sun/org/apache/xpath/internal/Expression;)V
    .locals 2

    iput-object p1, p0, Lcom/sun/org/apache/xpath/internal/patterns/StepPattern;->m_predicates:[Lcom/sun/org/apache/xpath/internal/Expression;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    aget-object v1, p1, v0

    invoke-virtual {v1, p0}, Lcom/sun/org/apache/xpath/internal/Expression;->exprSetParent(Lcom/sun/org/apache/xpath/internal/ExpressionNode;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/patterns/StepPattern;->calcScore()V

    return-void
.end method

.method public setRelativePathPattern(Lcom/sun/org/apache/xpath/internal/patterns/StepPattern;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xpath/internal/patterns/StepPattern;->m_relativePathPattern:Lcom/sun/org/apache/xpath/internal/patterns/StepPattern;

    invoke-virtual {p1, p0}, Lcom/sun/org/apache/xpath/internal/Expression;->exprSetParent(Lcom/sun/org/apache/xpath/internal/ExpressionNode;)V

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/patterns/StepPattern;->calcScore()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    move-object v1, p0

    :goto_0
    if-eqz v1, :cond_e

    if-eq v1, p0, :cond_0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    iget v2, v1, Lcom/sun/org/apache/xpath/internal/patterns/StepPattern;->m_axis:I

    invoke-static {v2}, Lcom/sun/org/apache/xml/internal/dtm/Axis;->getNames(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "::"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v2, v1, Lcom/sun/org/apache/xpath/internal/patterns/NodeTest;->m_whatToShow:I

    const/16 v3, 0x5000

    if-ne v3, v2, :cond_1

    const-string v2, "doc()"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    :cond_1
    const/high16 v3, 0x10000

    if-ne v3, v2, :cond_2

    const-string v2, "function()"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    :cond_2
    const/4 v3, -0x1

    if-ne v3, v2, :cond_3

    const-string v2, "node()"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    :cond_3
    const/4 v3, 0x4

    if-ne v3, v2, :cond_4

    const-string v2, "text()"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    :cond_4
    const/16 v3, 0x40

    if-ne v3, v2, :cond_6

    const-string v2, "processing-instruction("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, v1, Lcom/sun/org/apache/xpath/internal/patterns/NodeTest;->m_name:Ljava/lang/String;

    if-eqz v2, :cond_5

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_5
    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_6
    const/16 v3, 0x80

    if-ne v3, v2, :cond_7

    const-string v2, "comment()"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_7
    iget-object v3, v1, Lcom/sun/org/apache/xpath/internal/patterns/NodeTest;->m_name:Ljava/lang/String;

    const-string v4, "@"

    const/4 v5, 0x2

    if-eqz v3, :cond_a

    if-ne v5, v2, :cond_8

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_8
    iget-object v2, v1, Lcom/sun/org/apache/xpath/internal/patterns/NodeTest;->m_namespace:Ljava/lang/String;

    if-eqz v2, :cond_9

    const-string v2, "{"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, v1, Lcom/sun/org/apache/xpath/internal/patterns/NodeTest;->m_namespace:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "}"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_9
    iget-object v2, v1, Lcom/sun/org/apache/xpath/internal/patterns/NodeTest;->m_name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_a
    if-ne v5, v2, :cond_b

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_b
    const/16 v3, 0x500

    if-ne v3, v2, :cond_c

    const-string v2, "doc-root()"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/sun/org/apache/xpath/internal/patterns/NodeTest;->m_whatToShow:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_1
    iget-object v2, v1, Lcom/sun/org/apache/xpath/internal/patterns/StepPattern;->m_predicates:[Lcom/sun/org/apache/xpath/internal/Expression;

    if-eqz v2, :cond_d

    const/4 v2, 0x0

    :goto_2
    iget-object v3, v1, Lcom/sun/org/apache/xpath/internal/patterns/StepPattern;->m_predicates:[Lcom/sun/org/apache/xpath/internal/Expression;

    array-length v3, v3

    if-ge v2, v3, :cond_d

    const-string v3, "["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v3, v1, Lcom/sun/org/apache/xpath/internal/patterns/StepPattern;->m_predicates:[Lcom/sun/org/apache/xpath/internal/Expression;

    aget-object v3, v3, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v3, "]"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_d
    iget-object v1, v1, Lcom/sun/org/apache/xpath/internal/patterns/StepPattern;->m_relativePathPattern:Lcom/sun/org/apache/xpath/internal/patterns/StepPattern;

    goto/16 :goto_0

    :cond_e
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
