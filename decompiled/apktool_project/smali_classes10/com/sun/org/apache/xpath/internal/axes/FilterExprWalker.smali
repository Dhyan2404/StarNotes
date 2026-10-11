.class public Lcom/sun/org/apache/xpath/internal/axes/FilterExprWalker;
.super Lcom/sun/org/apache/xpath/internal/axes/AxesWalker;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/org/apache/xpath/internal/axes/FilterExprWalker$filterExprOwner;
    }
.end annotation


# static fields
.field static final serialVersionUID:J = 0x4bbbce8b5bbeb3b7L


# instance fields
.field private m_canDetachNodeset:Z

.field private m_expr:Lcom/sun/org/apache/xpath/internal/Expression;

.field private transient m_exprObj:Lcom/sun/org/apache/xpath/internal/objects/XNodeSet;

.field private m_mustHardReset:Z


# direct methods
.method public constructor <init>(Lcom/sun/org/apache/xpath/internal/axes/WalkingIterator;)V
    .locals 1

    const/16 v0, 0x14

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/xpath/internal/axes/AxesWalker;-><init>(Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;I)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/sun/org/apache/xpath/internal/axes/FilterExprWalker;->m_mustHardReset:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/sun/org/apache/xpath/internal/axes/FilterExprWalker;->m_canDetachNodeset:Z

    return-void
.end method

.method public static synthetic access$000(Lcom/sun/org/apache/xpath/internal/axes/FilterExprWalker;)Lcom/sun/org/apache/xpath/internal/Expression;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/axes/FilterExprWalker;->m_expr:Lcom/sun/org/apache/xpath/internal/Expression;

    return-object p0
.end method

.method public static synthetic access$002(Lcom/sun/org/apache/xpath/internal/axes/FilterExprWalker;Lcom/sun/org/apache/xpath/internal/Expression;)Lcom/sun/org/apache/xpath/internal/Expression;
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xpath/internal/axes/FilterExprWalker;->m_expr:Lcom/sun/org/apache/xpath/internal/Expression;

    return-object p1
.end method


# virtual methods
.method public acceptNode(I)S
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/axes/PredicatedNodeTest;->getPredicateCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xpath/internal/axes/PredicatedNodeTest;->countProximityPosition(I)V

    iget-object v0, p0, Lcom/sun/org/apache/xpath/internal/axes/PredicatedNodeTest;->m_lpi:Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;

    invoke-virtual {v0}, Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;->getXPathContext()Lcom/sun/org/apache/xpath/internal/XPathContext;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/sun/org/apache/xpath/internal/axes/PredicatedNodeTest;->executePredicates(ILcom/sun/org/apache/xpath/internal/XPathContext;)Z

    move-result p0
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p0, :cond_0

    const/4 p0, 0x3

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public callPredicateVisitors(Lcom/sun/org/apache/xpath/internal/XPathVisitor;)V
    .locals 2

    iget-object v0, p0, Lcom/sun/org/apache/xpath/internal/axes/FilterExprWalker;->m_expr:Lcom/sun/org/apache/xpath/internal/Expression;

    new-instance v1, Lcom/sun/org/apache/xpath/internal/axes/FilterExprWalker$filterExprOwner;

    invoke-direct {v1, p0}, Lcom/sun/org/apache/xpath/internal/axes/FilterExprWalker$filterExprOwner;-><init>(Lcom/sun/org/apache/xpath/internal/axes/FilterExprWalker;)V

    invoke-interface {v0, v1, p1}, Lcom/sun/org/apache/xpath/internal/XPathVisitable;->callVisitors(Lcom/sun/org/apache/xpath/internal/ExpressionOwner;Lcom/sun/org/apache/xpath/internal/XPathVisitor;)V

    invoke-super {p0, p1}, Lcom/sun/org/apache/xpath/internal/axes/PredicatedNodeTest;->callPredicateVisitors(Lcom/sun/org/apache/xpath/internal/XPathVisitor;)V

    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-super {p0}, Lcom/sun/org/apache/xpath/internal/axes/AxesWalker;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/xpath/internal/axes/FilterExprWalker;

    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/axes/FilterExprWalker;->m_exprObj:Lcom/sun/org/apache/xpath/internal/objects/XNodeSet;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/axes/NodeSequence;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sun/org/apache/xpath/internal/objects/XNodeSet;

    iput-object p0, v0, Lcom/sun/org/apache/xpath/internal/axes/FilterExprWalker;->m_exprObj:Lcom/sun/org/apache/xpath/internal/objects/XNodeSet;

    :cond_0
    return-object v0
.end method

.method public deepEquals(Lcom/sun/org/apache/xpath/internal/Expression;)Z
    .locals 2

    invoke-super {p0, p1}, Lcom/sun/org/apache/xpath/internal/axes/AxesWalker;->deepEquals(Lcom/sun/org/apache/xpath/internal/Expression;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lcom/sun/org/apache/xpath/internal/axes/FilterExprWalker;

    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/axes/FilterExprWalker;->m_expr:Lcom/sun/org/apache/xpath/internal/Expression;

    iget-object p1, p1, Lcom/sun/org/apache/xpath/internal/axes/FilterExprWalker;->m_expr:Lcom/sun/org/apache/xpath/internal/Expression;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xpath/internal/Expression;->deepEquals(Lcom/sun/org/apache/xpath/internal/Expression;)Z

    move-result p0

    if-nez p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public detach()V
    .locals 1

    invoke-super {p0}, Lcom/sun/org/apache/xpath/internal/axes/AxesWalker;->detach()V

    iget-boolean v0, p0, Lcom/sun/org/apache/xpath/internal/axes/FilterExprWalker;->m_canDetachNodeset:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sun/org/apache/xpath/internal/axes/FilterExprWalker;->m_exprObj:Lcom/sun/org/apache/xpath/internal/objects/XNodeSet;

    invoke-virtual {v0}, Lcom/sun/org/apache/xpath/internal/axes/NodeSequence;->detach()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/org/apache/xpath/internal/axes/FilterExprWalker;->m_exprObj:Lcom/sun/org/apache/xpath/internal/objects/XNodeSet;

    return-void
.end method

.method public fixupVariables(Ljava/util/Vector;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/sun/org/apache/xpath/internal/axes/PredicatedNodeTest;->fixupVariables(Ljava/util/Vector;I)V

    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/axes/FilterExprWalker;->m_expr:Lcom/sun/org/apache/xpath/internal/Expression;

    invoke-virtual {p0, p1, p2}, Lcom/sun/org/apache/xpath/internal/Expression;->fixupVariables(Ljava/util/Vector;I)V

    return-void
.end method

.method public getAnalysisBits()I
    .locals 1

    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/axes/FilterExprWalker;->m_expr:Lcom/sun/org/apache/xpath/internal/Expression;

    if-eqz p0, :cond_0

    instance-of v0, p0, Lcom/sun/org/apache/xpath/internal/axes/PathComponent;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/sun/org/apache/xpath/internal/axes/PathComponent;

    invoke-interface {p0}, Lcom/sun/org/apache/xpath/internal/axes/PathComponent;->getAnalysisBits()I

    move-result p0

    return p0

    :cond_0
    const/high16 p0, 0x4000000

    return p0
.end method

.method public getAxis()I
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/axes/FilterExprWalker;->m_exprObj:Lcom/sun/org/apache/xpath/internal/objects/XNodeSet;

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/axes/NodeSequence;->getAxis()I

    move-result p0

    return p0
.end method

.method public getInnerExpression()Lcom/sun/org/apache/xpath/internal/Expression;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/axes/FilterExprWalker;->m_expr:Lcom/sun/org/apache/xpath/internal/Expression;

    return-object p0
.end method

.method public getLastPos(Lcom/sun/org/apache/xpath/internal/XPathContext;)I
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/axes/FilterExprWalker;->m_exprObj:Lcom/sun/org/apache/xpath/internal/objects/XNodeSet;

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/axes/NodeSequence;->getLength()I

    move-result p0

    return p0
.end method

.method public getNextNode()I
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/axes/FilterExprWalker;->m_exprObj:Lcom/sun/org/apache/xpath/internal/objects/XNodeSet;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/axes/NodeSequence;->nextNode()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public init(Lcom/sun/org/apache/xpath/internal/compiler/Compiler;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    invoke-super {p0, p1, p2, p3}, Lcom/sun/org/apache/xpath/internal/axes/AxesWalker;->init(Lcom/sun/org/apache/xpath/internal/compiler/Compiler;II)V

    packed-switch p3, :pswitch_data_0

    add-int/lit8 p2, p2, 0x2

    invoke-virtual {p1, p2}, Lcom/sun/org/apache/xpath/internal/compiler/Compiler;->compile(I)Lcom/sun/org/apache/xpath/internal/Expression;

    move-result-object p1

    iput-object p1, p0, Lcom/sun/org/apache/xpath/internal/axes/FilterExprWalker;->m_expr:Lcom/sun/org/apache/xpath/internal/Expression;

    invoke-virtual {p1, p0}, Lcom/sun/org/apache/xpath/internal/Expression;->exprSetParent(Lcom/sun/org/apache/xpath/internal/ExpressionNode;)V

    goto :goto_0

    :pswitch_0
    const/4 p3, 0x1

    iput-boolean p3, p0, Lcom/sun/org/apache/xpath/internal/axes/FilterExprWalker;->m_mustHardReset:Z

    :pswitch_1
    invoke-virtual {p1, p2}, Lcom/sun/org/apache/xpath/internal/compiler/Compiler;->compile(I)Lcom/sun/org/apache/xpath/internal/Expression;

    move-result-object p1

    iput-object p1, p0, Lcom/sun/org/apache/xpath/internal/axes/FilterExprWalker;->m_expr:Lcom/sun/org/apache/xpath/internal/Expression;

    invoke-virtual {p1, p0}, Lcom/sun/org/apache/xpath/internal/Expression;->exprSetParent(Lcom/sun/org/apache/xpath/internal/ExpressionNode;)V

    iget-object p1, p0, Lcom/sun/org/apache/xpath/internal/axes/FilterExprWalker;->m_expr:Lcom/sun/org/apache/xpath/internal/Expression;

    instance-of p1, p1, Lcom/sun/org/apache/xpath/internal/operations/Variable;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/sun/org/apache/xpath/internal/axes/FilterExprWalker;->m_canDetachNodeset:Z

    :cond_0
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x16
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public isDocOrdered()Z
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/axes/FilterExprWalker;->m_exprObj:Lcom/sun/org/apache/xpath/internal/objects/XNodeSet;

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/axes/NodeSequence;->isDocOrdered()Z

    move-result p0

    return p0
.end method

.method public setInnerExpression(Lcom/sun/org/apache/xpath/internal/Expression;)V
    .locals 0

    invoke-virtual {p1, p0}, Lcom/sun/org/apache/xpath/internal/Expression;->exprSetParent(Lcom/sun/org/apache/xpath/internal/ExpressionNode;)V

    iput-object p1, p0, Lcom/sun/org/apache/xpath/internal/axes/FilterExprWalker;->m_expr:Lcom/sun/org/apache/xpath/internal/Expression;

    return-void
.end method

.method public setRoot(I)V
    .locals 7

    invoke-super {p0, p1}, Lcom/sun/org/apache/xpath/internal/axes/AxesWalker;->setRoot(I)V

    iget-object v0, p0, Lcom/sun/org/apache/xpath/internal/axes/PredicatedNodeTest;->m_lpi:Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;

    invoke-virtual {v0}, Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;->getXPathContext()Lcom/sun/org/apache/xpath/internal/XPathContext;

    move-result-object v2

    iget-object v0, p0, Lcom/sun/org/apache/xpath/internal/axes/PredicatedNodeTest;->m_lpi:Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;

    invoke-virtual {v0}, Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;->getPrefixResolver()Lcom/sun/org/apache/xml/internal/utils/PrefixResolver;

    move-result-object v3

    iget-object v0, p0, Lcom/sun/org/apache/xpath/internal/axes/PredicatedNodeTest;->m_lpi:Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;

    invoke-virtual {v0}, Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;->getIsTopLevel()Z

    move-result v4

    iget-object v0, p0, Lcom/sun/org/apache/xpath/internal/axes/PredicatedNodeTest;->m_lpi:Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;

    iget v5, v0, Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;->m_stackFrame:I

    iget-object v6, p0, Lcom/sun/org/apache/xpath/internal/axes/FilterExprWalker;->m_expr:Lcom/sun/org/apache/xpath/internal/Expression;

    move v1, p1

    invoke-static/range {v1 .. v6}, Lcom/sun/org/apache/xpath/internal/axes/FilterExprIteratorSimple;->executeFilterExpr(ILcom/sun/org/apache/xpath/internal/XPathContext;Lcom/sun/org/apache/xml/internal/utils/PrefixResolver;ZILcom/sun/org/apache/xpath/internal/Expression;)Lcom/sun/org/apache/xpath/internal/objects/XNodeSet;

    move-result-object p1

    iput-object p1, p0, Lcom/sun/org/apache/xpath/internal/axes/FilterExprWalker;->m_exprObj:Lcom/sun/org/apache/xpath/internal/objects/XNodeSet;

    return-void
.end method
