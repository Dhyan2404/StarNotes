.class public abstract Lcom/sun/org/apache/xpath/internal/operations/UnaryOperation;
.super Lcom/sun/org/apache/xpath/internal/Expression;
.source "SourceFile"

# interfaces
.implements Lcom/sun/org/apache/xpath/internal/ExpressionOwner;


# static fields
.field static final serialVersionUID:J = 0x5ab4d598174fd7d6L


# instance fields
.field protected m_right:Lcom/sun/org/apache/xpath/internal/Expression;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sun/org/apache/xpath/internal/Expression;-><init>()V

    return-void
.end method


# virtual methods
.method public callVisitors(Lcom/sun/org/apache/xpath/internal/ExpressionOwner;Lcom/sun/org/apache/xpath/internal/XPathVisitor;)V
    .locals 0

    invoke-virtual {p2, p1, p0}, Lcom/sun/org/apache/xpath/internal/XPathVisitor;->visitUnaryOperation(Lcom/sun/org/apache/xpath/internal/ExpressionOwner;Lcom/sun/org/apache/xpath/internal/operations/UnaryOperation;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sun/org/apache/xpath/internal/operations/UnaryOperation;->m_right:Lcom/sun/org/apache/xpath/internal/Expression;

    invoke-interface {p1, p0, p2}, Lcom/sun/org/apache/xpath/internal/XPathVisitable;->callVisitors(Lcom/sun/org/apache/xpath/internal/ExpressionOwner;Lcom/sun/org/apache/xpath/internal/XPathVisitor;)V

    :cond_0
    return-void
.end method

.method public canTraverseOutsideSubtree()Z
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/operations/UnaryOperation;->m_right:Lcom/sun/org/apache/xpath/internal/Expression;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/Expression;->canTraverseOutsideSubtree()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public deepEquals(Lcom/sun/org/apache/xpath/internal/Expression;)Z
    .locals 2

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xpath/internal/Expression;->isSameClass(Lcom/sun/org/apache/xpath/internal/Expression;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/operations/UnaryOperation;->m_right:Lcom/sun/org/apache/xpath/internal/Expression;

    check-cast p1, Lcom/sun/org/apache/xpath/internal/operations/UnaryOperation;

    iget-object p1, p1, Lcom/sun/org/apache/xpath/internal/operations/UnaryOperation;->m_right:Lcom/sun/org/apache/xpath/internal/Expression;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xpath/internal/Expression;->deepEquals(Lcom/sun/org/apache/xpath/internal/Expression;)Z

    move-result p0

    if-nez p0, :cond_1

    return v1

    :cond_1
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

    iget-object v0, p0, Lcom/sun/org/apache/xpath/internal/operations/UnaryOperation;->m_right:Lcom/sun/org/apache/xpath/internal/Expression;

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xpath/internal/Expression;->execute(Lcom/sun/org/apache/xpath/internal/XPathContext;)Lcom/sun/org/apache/xpath/internal/objects/XObject;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xpath/internal/operations/UnaryOperation;->operate(Lcom/sun/org/apache/xpath/internal/objects/XObject;)Lcom/sun/org/apache/xpath/internal/objects/XObject;

    move-result-object p0

    return-object p0
.end method

.method public fixupVariables(Ljava/util/Vector;I)V
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/operations/UnaryOperation;->m_right:Lcom/sun/org/apache/xpath/internal/Expression;

    invoke-virtual {p0, p1, p2}, Lcom/sun/org/apache/xpath/internal/Expression;->fixupVariables(Ljava/util/Vector;I)V

    return-void
.end method

.method public getExpression()Lcom/sun/org/apache/xpath/internal/Expression;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/operations/UnaryOperation;->m_right:Lcom/sun/org/apache/xpath/internal/Expression;

    return-object p0
.end method

.method public getOperand()Lcom/sun/org/apache/xpath/internal/Expression;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/operations/UnaryOperation;->m_right:Lcom/sun/org/apache/xpath/internal/Expression;

    return-object p0
.end method

.method public abstract operate(Lcom/sun/org/apache/xpath/internal/objects/XObject;)Lcom/sun/org/apache/xpath/internal/objects/XObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation
.end method

.method public setExpression(Lcom/sun/org/apache/xpath/internal/Expression;)V
    .locals 0

    invoke-virtual {p1, p0}, Lcom/sun/org/apache/xpath/internal/Expression;->exprSetParent(Lcom/sun/org/apache/xpath/internal/ExpressionNode;)V

    iput-object p1, p0, Lcom/sun/org/apache/xpath/internal/operations/UnaryOperation;->m_right:Lcom/sun/org/apache/xpath/internal/Expression;

    return-void
.end method

.method public setRight(Lcom/sun/org/apache/xpath/internal/Expression;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xpath/internal/operations/UnaryOperation;->m_right:Lcom/sun/org/apache/xpath/internal/Expression;

    invoke-virtual {p1, p0}, Lcom/sun/org/apache/xpath/internal/Expression;->exprSetParent(Lcom/sun/org/apache/xpath/internal/ExpressionNode;)V

    return-void
.end method
