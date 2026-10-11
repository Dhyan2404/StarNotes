.class public Lcom/sun/org/apache/xpath/internal/operations/Operation;
.super Lcom/sun/org/apache/xpath/internal/Expression;
.source "SourceFile"

# interfaces
.implements Lcom/sun/org/apache/xpath/internal/ExpressionOwner;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/org/apache/xpath/internal/operations/Operation$LeftExprOwner;
    }
.end annotation


# static fields
.field static final serialVersionUID:J = -0x2a2616514e5fefbeL


# instance fields
.field protected m_left:Lcom/sun/org/apache/xpath/internal/Expression;

.field protected m_right:Lcom/sun/org/apache/xpath/internal/Expression;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sun/org/apache/xpath/internal/Expression;-><init>()V

    return-void
.end method


# virtual methods
.method public callVisitors(Lcom/sun/org/apache/xpath/internal/ExpressionOwner;Lcom/sun/org/apache/xpath/internal/XPathVisitor;)V
    .locals 1

    invoke-virtual {p2, p1, p0}, Lcom/sun/org/apache/xpath/internal/XPathVisitor;->visitBinaryOperation(Lcom/sun/org/apache/xpath/internal/ExpressionOwner;Lcom/sun/org/apache/xpath/internal/operations/Operation;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sun/org/apache/xpath/internal/operations/Operation;->m_left:Lcom/sun/org/apache/xpath/internal/Expression;

    new-instance v0, Lcom/sun/org/apache/xpath/internal/operations/Operation$LeftExprOwner;

    invoke-direct {v0, p0}, Lcom/sun/org/apache/xpath/internal/operations/Operation$LeftExprOwner;-><init>(Lcom/sun/org/apache/xpath/internal/operations/Operation;)V

    invoke-interface {p1, v0, p2}, Lcom/sun/org/apache/xpath/internal/XPathVisitable;->callVisitors(Lcom/sun/org/apache/xpath/internal/ExpressionOwner;Lcom/sun/org/apache/xpath/internal/XPathVisitor;)V

    iget-object p1, p0, Lcom/sun/org/apache/xpath/internal/operations/Operation;->m_right:Lcom/sun/org/apache/xpath/internal/Expression;

    invoke-interface {p1, p0, p2}, Lcom/sun/org/apache/xpath/internal/XPathVisitable;->callVisitors(Lcom/sun/org/apache/xpath/internal/ExpressionOwner;Lcom/sun/org/apache/xpath/internal/XPathVisitor;)V

    :cond_0
    return-void
.end method

.method public canTraverseOutsideSubtree()Z
    .locals 2

    iget-object v0, p0, Lcom/sun/org/apache/xpath/internal/operations/Operation;->m_left:Lcom/sun/org/apache/xpath/internal/Expression;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sun/org/apache/xpath/internal/Expression;->canTraverseOutsideSubtree()Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/operations/Operation;->m_right:Lcom/sun/org/apache/xpath/internal/Expression;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/Expression;->canTraverseOutsideSubtree()Z

    move-result p0

    if-eqz p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public deepEquals(Lcom/sun/org/apache/xpath/internal/Expression;)Z
    .locals 3

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xpath/internal/Expression;->isSameClass(Lcom/sun/org/apache/xpath/internal/Expression;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xpath/internal/operations/Operation;->m_left:Lcom/sun/org/apache/xpath/internal/Expression;

    check-cast p1, Lcom/sun/org/apache/xpath/internal/operations/Operation;

    iget-object v2, p1, Lcom/sun/org/apache/xpath/internal/operations/Operation;->m_left:Lcom/sun/org/apache/xpath/internal/Expression;

    invoke-virtual {v0, v2}, Lcom/sun/org/apache/xpath/internal/Expression;->deepEquals(Lcom/sun/org/apache/xpath/internal/Expression;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/operations/Operation;->m_right:Lcom/sun/org/apache/xpath/internal/Expression;

    iget-object p1, p1, Lcom/sun/org/apache/xpath/internal/operations/Operation;->m_right:Lcom/sun/org/apache/xpath/internal/Expression;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xpath/internal/Expression;->deepEquals(Lcom/sun/org/apache/xpath/internal/Expression;)Z

    move-result p0

    if-nez p0, :cond_2

    return v1

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public execute(Lcom/sun/org/apache/xpath/internal/XPathContext;)Lcom/sun/org/apache/xpath/internal/objects/XObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xpath/internal/operations/Operation;->m_left:Lcom/sun/org/apache/xpath/internal/Expression;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/sun/org/apache/xpath/internal/Expression;->execute(Lcom/sun/org/apache/xpath/internal/XPathContext;Z)Lcom/sun/org/apache/xpath/internal/objects/XObject;

    move-result-object v0

    iget-object v2, p0, Lcom/sun/org/apache/xpath/internal/operations/Operation;->m_right:Lcom/sun/org/apache/xpath/internal/Expression;

    invoke-virtual {v2, p1, v1}, Lcom/sun/org/apache/xpath/internal/Expression;->execute(Lcom/sun/org/apache/xpath/internal/XPathContext;Z)Lcom/sun/org/apache/xpath/internal/objects/XObject;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/sun/org/apache/xpath/internal/operations/Operation;->operate(Lcom/sun/org/apache/xpath/internal/objects/XObject;Lcom/sun/org/apache/xpath/internal/objects/XObject;)Lcom/sun/org/apache/xpath/internal/objects/XObject;

    move-result-object p0

    invoke-virtual {v0}, Lcom/sun/org/apache/xpath/internal/objects/XObject;->detach()V

    invoke-virtual {p1}, Lcom/sun/org/apache/xpath/internal/objects/XObject;->detach()V

    return-object p0
.end method

.method public fixupVariables(Ljava/util/Vector;I)V
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xpath/internal/operations/Operation;->m_left:Lcom/sun/org/apache/xpath/internal/Expression;

    invoke-virtual {v0, p1, p2}, Lcom/sun/org/apache/xpath/internal/Expression;->fixupVariables(Ljava/util/Vector;I)V

    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/operations/Operation;->m_right:Lcom/sun/org/apache/xpath/internal/Expression;

    invoke-virtual {p0, p1, p2}, Lcom/sun/org/apache/xpath/internal/Expression;->fixupVariables(Ljava/util/Vector;I)V

    return-void
.end method

.method public getExpression()Lcom/sun/org/apache/xpath/internal/Expression;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/operations/Operation;->m_right:Lcom/sun/org/apache/xpath/internal/Expression;

    return-object p0
.end method

.method public getLeftOperand()Lcom/sun/org/apache/xpath/internal/Expression;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/operations/Operation;->m_left:Lcom/sun/org/apache/xpath/internal/Expression;

    return-object p0
.end method

.method public getRightOperand()Lcom/sun/org/apache/xpath/internal/Expression;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/operations/Operation;->m_right:Lcom/sun/org/apache/xpath/internal/Expression;

    return-object p0
.end method

.method public operate(Lcom/sun/org/apache/xpath/internal/objects/XObject;Lcom/sun/org/apache/xpath/internal/objects/XObject;)Lcom/sun/org/apache/xpath/internal/objects/XObject;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public setExpression(Lcom/sun/org/apache/xpath/internal/Expression;)V
    .locals 0

    invoke-virtual {p1, p0}, Lcom/sun/org/apache/xpath/internal/Expression;->exprSetParent(Lcom/sun/org/apache/xpath/internal/ExpressionNode;)V

    iput-object p1, p0, Lcom/sun/org/apache/xpath/internal/operations/Operation;->m_right:Lcom/sun/org/apache/xpath/internal/Expression;

    return-void
.end method

.method public setLeftRight(Lcom/sun/org/apache/xpath/internal/Expression;Lcom/sun/org/apache/xpath/internal/Expression;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xpath/internal/operations/Operation;->m_left:Lcom/sun/org/apache/xpath/internal/Expression;

    iput-object p2, p0, Lcom/sun/org/apache/xpath/internal/operations/Operation;->m_right:Lcom/sun/org/apache/xpath/internal/Expression;

    invoke-virtual {p1, p0}, Lcom/sun/org/apache/xpath/internal/Expression;->exprSetParent(Lcom/sun/org/apache/xpath/internal/ExpressionNode;)V

    invoke-virtual {p2, p0}, Lcom/sun/org/apache/xpath/internal/Expression;->exprSetParent(Lcom/sun/org/apache/xpath/internal/ExpressionNode;)V

    return-void
.end method
