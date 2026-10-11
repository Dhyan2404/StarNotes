.class public Lcom/sun/org/apache/xpath/internal/functions/Function3Args;
.super Lcom/sun/org/apache/xpath/internal/functions/Function2Args;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/org/apache/xpath/internal/functions/Function3Args$Arg2Owner;
    }
.end annotation


# static fields
.field static final serialVersionUID:J = 0x6dd89585d6425356L


# instance fields
.field m_arg2:Lcom/sun/org/apache/xpath/internal/Expression;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sun/org/apache/xpath/internal/functions/Function2Args;-><init>()V

    return-void
.end method


# virtual methods
.method public callArgVisitors(Lcom/sun/org/apache/xpath/internal/XPathVisitor;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/sun/org/apache/xpath/internal/functions/Function2Args;->callArgVisitors(Lcom/sun/org/apache/xpath/internal/XPathVisitor;)V

    iget-object v0, p0, Lcom/sun/org/apache/xpath/internal/functions/Function3Args;->m_arg2:Lcom/sun/org/apache/xpath/internal/Expression;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/sun/org/apache/xpath/internal/functions/Function3Args$Arg2Owner;

    invoke-direct {v1, p0}, Lcom/sun/org/apache/xpath/internal/functions/Function3Args$Arg2Owner;-><init>(Lcom/sun/org/apache/xpath/internal/functions/Function3Args;)V

    invoke-interface {v0, v1, p1}, Lcom/sun/org/apache/xpath/internal/XPathVisitable;->callVisitors(Lcom/sun/org/apache/xpath/internal/ExpressionOwner;Lcom/sun/org/apache/xpath/internal/XPathVisitor;)V

    :cond_0
    return-void
.end method

.method public canTraverseOutsideSubtree()Z
    .locals 1

    invoke-super {p0}, Lcom/sun/org/apache/xpath/internal/functions/Function2Args;->canTraverseOutsideSubtree()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/functions/Function3Args;->m_arg2:Lcom/sun/org/apache/xpath/internal/Expression;

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/Expression;->canTraverseOutsideSubtree()Z

    move-result p0

    :goto_0
    return p0
.end method

.method public checkNumberArgs(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xpath/internal/functions/WrongNumberArgsException;
        }
    .end annotation

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/functions/Function3Args;->reportWrongNumberArgs()V

    :cond_0
    return-void
.end method

.method public deepEquals(Lcom/sun/org/apache/xpath/internal/Expression;)Z
    .locals 2

    invoke-super {p0, p1}, Lcom/sun/org/apache/xpath/internal/functions/Function2Args;->deepEquals(Lcom/sun/org/apache/xpath/internal/Expression;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/functions/Function3Args;->m_arg2:Lcom/sun/org/apache/xpath/internal/Expression;

    if-eqz p0, :cond_2

    check-cast p1, Lcom/sun/org/apache/xpath/internal/functions/Function3Args;

    iget-object p1, p1, Lcom/sun/org/apache/xpath/internal/functions/Function3Args;->m_arg2:Lcom/sun/org/apache/xpath/internal/Expression;

    if-nez p1, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xpath/internal/Expression;->deepEquals(Lcom/sun/org/apache/xpath/internal/Expression;)Z

    move-result p0

    if-nez p0, :cond_3

    return v1

    :cond_2
    check-cast p1, Lcom/sun/org/apache/xpath/internal/functions/Function3Args;

    iget-object p0, p1, Lcom/sun/org/apache/xpath/internal/functions/Function3Args;->m_arg2:Lcom/sun/org/apache/xpath/internal/Expression;

    if-eqz p0, :cond_3

    return v1

    :cond_3
    const/4 p0, 0x1

    return p0
.end method

.method public fixupVariables(Ljava/util/Vector;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/sun/org/apache/xpath/internal/functions/Function2Args;->fixupVariables(Ljava/util/Vector;I)V

    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/functions/Function3Args;->m_arg2:Lcom/sun/org/apache/xpath/internal/Expression;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/sun/org/apache/xpath/internal/Expression;->fixupVariables(Ljava/util/Vector;I)V

    :cond_0
    return-void
.end method

.method public getArg2()Lcom/sun/org/apache/xpath/internal/Expression;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/functions/Function3Args;->m_arg2:Lcom/sun/org/apache/xpath/internal/Expression;

    return-object p0
.end method

.method public reportWrongNumberArgs()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xpath/internal/functions/WrongNumberArgsException;
        }
    .end annotation

    new-instance p0, Lcom/sun/org/apache/xpath/internal/functions/WrongNumberArgsException;

    const-string v0, "three"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sun/org/apache/xpath/internal/res/XPATHMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sun/org/apache/xpath/internal/functions/WrongNumberArgsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setArg(Lcom/sun/org/apache/xpath/internal/Expression;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xpath/internal/functions/WrongNumberArgsException;
        }
    .end annotation

    const/4 v0, 0x2

    if-ge p2, v0, :cond_0

    invoke-super {p0, p1, p2}, Lcom/sun/org/apache/xpath/internal/functions/Function2Args;->setArg(Lcom/sun/org/apache/xpath/internal/Expression;I)V

    goto :goto_0

    :cond_0
    if-ne v0, p2, :cond_1

    iput-object p1, p0, Lcom/sun/org/apache/xpath/internal/functions/Function3Args;->m_arg2:Lcom/sun/org/apache/xpath/internal/Expression;

    invoke-virtual {p1, p0}, Lcom/sun/org/apache/xpath/internal/Expression;->exprSetParent(Lcom/sun/org/apache/xpath/internal/ExpressionNode;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/functions/Function3Args;->reportWrongNumberArgs()V

    :goto_0
    return-void
.end method
