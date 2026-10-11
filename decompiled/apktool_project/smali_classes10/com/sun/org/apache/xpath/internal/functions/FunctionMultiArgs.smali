.class public Lcom/sun/org/apache/xpath/internal/functions/FunctionMultiArgs;
.super Lcom/sun/org/apache/xpath/internal/functions/Function3Args;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/org/apache/xpath/internal/functions/FunctionMultiArgs$ArgMultiOwner;
    }
.end annotation


# static fields
.field static final serialVersionUID:J = 0x62c59436157a481dL


# instance fields
.field m_args:[Lcom/sun/org/apache/xpath/internal/Expression;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sun/org/apache/xpath/internal/functions/Function3Args;-><init>()V

    return-void
.end method


# virtual methods
.method public callArgVisitors(Lcom/sun/org/apache/xpath/internal/XPathVisitor;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/sun/org/apache/xpath/internal/functions/Function3Args;->callArgVisitors(Lcom/sun/org/apache/xpath/internal/XPathVisitor;)V

    iget-object v0, p0, Lcom/sun/org/apache/xpath/internal/functions/FunctionMultiArgs;->m_args:[Lcom/sun/org/apache/xpath/internal/Expression;

    if-eqz v0, :cond_0

    array-length v0, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/sun/org/apache/xpath/internal/functions/FunctionMultiArgs;->m_args:[Lcom/sun/org/apache/xpath/internal/Expression;

    aget-object v2, v2, v1

    new-instance v3, Lcom/sun/org/apache/xpath/internal/functions/FunctionMultiArgs$ArgMultiOwner;

    invoke-direct {v3, p0, v1}, Lcom/sun/org/apache/xpath/internal/functions/FunctionMultiArgs$ArgMultiOwner;-><init>(Lcom/sun/org/apache/xpath/internal/functions/FunctionMultiArgs;I)V

    invoke-interface {v2, v3, p1}, Lcom/sun/org/apache/xpath/internal/XPathVisitable;->callVisitors(Lcom/sun/org/apache/xpath/internal/ExpressionOwner;Lcom/sun/org/apache/xpath/internal/XPathVisitor;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public canTraverseOutsideSubtree()Z
    .locals 5

    invoke-super {p0}, Lcom/sun/org/apache/xpath/internal/functions/Function3Args;->canTraverseOutsideSubtree()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xpath/internal/functions/FunctionMultiArgs;->m_args:[Lcom/sun/org/apache/xpath/internal/Expression;

    array-length v0, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_2

    iget-object v4, p0, Lcom/sun/org/apache/xpath/internal/functions/FunctionMultiArgs;->m_args:[Lcom/sun/org/apache/xpath/internal/Expression;

    aget-object v4, v4, v3

    invoke-virtual {v4}, Lcom/sun/org/apache/xpath/internal/Expression;->canTraverseOutsideSubtree()Z

    move-result v4

    if-eqz v4, :cond_1

    return v1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v2
.end method

.method public checkNumberArgs(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xpath/internal/functions/WrongNumberArgsException;
        }
    .end annotation

    return-void
.end method

.method public deepEquals(Lcom/sun/org/apache/xpath/internal/Expression;)Z
    .locals 5

    invoke-super {p0, p1}, Lcom/sun/org/apache/xpath/internal/functions/Function3Args;->deepEquals(Lcom/sun/org/apache/xpath/internal/Expression;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lcom/sun/org/apache/xpath/internal/functions/FunctionMultiArgs;

    iget-object v0, p0, Lcom/sun/org/apache/xpath/internal/functions/FunctionMultiArgs;->m_args:[Lcom/sun/org/apache/xpath/internal/Expression;

    if-eqz v0, :cond_4

    array-length v0, v0

    if-eqz p1, :cond_3

    iget-object v2, p1, Lcom/sun/org/apache/xpath/internal/functions/FunctionMultiArgs;->m_args:[Lcom/sun/org/apache/xpath/internal/Expression;

    array-length v2, v2

    if-eq v2, v0, :cond_1

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_5

    iget-object v3, p0, Lcom/sun/org/apache/xpath/internal/functions/FunctionMultiArgs;->m_args:[Lcom/sun/org/apache/xpath/internal/Expression;

    aget-object v3, v3, v2

    iget-object v4, p1, Lcom/sun/org/apache/xpath/internal/functions/FunctionMultiArgs;->m_args:[Lcom/sun/org/apache/xpath/internal/Expression;

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
    iget-object p0, p1, Lcom/sun/org/apache/xpath/internal/functions/FunctionMultiArgs;->m_args:[Lcom/sun/org/apache/xpath/internal/Expression;

    if-eqz p0, :cond_5

    return v1

    :cond_5
    const/4 p0, 0x1

    return p0
.end method

.method public fixupVariables(Ljava/util/Vector;I)V
    .locals 3

    invoke-super {p0, p1, p2}, Lcom/sun/org/apache/xpath/internal/functions/Function3Args;->fixupVariables(Ljava/util/Vector;I)V

    iget-object v0, p0, Lcom/sun/org/apache/xpath/internal/functions/FunctionMultiArgs;->m_args:[Lcom/sun/org/apache/xpath/internal/Expression;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/sun/org/apache/xpath/internal/functions/FunctionMultiArgs;->m_args:[Lcom/sun/org/apache/xpath/internal/Expression;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    aget-object v1, v1, v0

    invoke-virtual {v1, p1, p2}, Lcom/sun/org/apache/xpath/internal/Expression;->fixupVariables(Ljava/util/Vector;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getArgs()[Lcom/sun/org/apache/xpath/internal/Expression;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/functions/FunctionMultiArgs;->m_args:[Lcom/sun/org/apache/xpath/internal/Expression;

    return-object p0
.end method

.method public reportWrongNumberArgs()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xpath/internal/functions/WrongNumberArgsException;
        }
    .end annotation

    const-string p0, "Programmer\'s assertion:  the method FunctionMultiArgs.reportWrongNumberArgs() should never be called."

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "ER_INCORRECT_PROGRAMMER_ASSERTION"

    invoke-static {v0, p0}, Lcom/sun/org/apache/xpath/internal/res/XPATHMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setArg(Lcom/sun/org/apache/xpath/internal/Expression;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xpath/internal/functions/WrongNumberArgsException;
        }
    .end annotation

    const/4 v0, 0x3

    if-ge p2, v0, :cond_0

    invoke-super {p0, p1, p2}, Lcom/sun/org/apache/xpath/internal/functions/Function3Args;->setArg(Lcom/sun/org/apache/xpath/internal/Expression;I)V

    goto :goto_1

    :cond_0
    iget-object p2, p0, Lcom/sun/org/apache/xpath/internal/functions/FunctionMultiArgs;->m_args:[Lcom/sun/org/apache/xpath/internal/Expression;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p2, :cond_1

    new-array p2, v0, [Lcom/sun/org/apache/xpath/internal/Expression;

    iput-object p2, p0, Lcom/sun/org/apache/xpath/internal/functions/FunctionMultiArgs;->m_args:[Lcom/sun/org/apache/xpath/internal/Expression;

    aput-object p1, p2, v1

    goto :goto_0

    :cond_1
    array-length v2, p2

    add-int/2addr v2, v0

    new-array v0, v2, [Lcom/sun/org/apache/xpath/internal/Expression;

    array-length v2, p2

    invoke-static {p2, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p2, p0, Lcom/sun/org/apache/xpath/internal/functions/FunctionMultiArgs;->m_args:[Lcom/sun/org/apache/xpath/internal/Expression;

    array-length p2, p2

    aput-object p1, v0, p2

    iput-object v0, p0, Lcom/sun/org/apache/xpath/internal/functions/FunctionMultiArgs;->m_args:[Lcom/sun/org/apache/xpath/internal/Expression;

    :goto_0
    invoke-virtual {p1, p0}, Lcom/sun/org/apache/xpath/internal/Expression;->exprSetParent(Lcom/sun/org/apache/xpath/internal/ExpressionNode;)V

    :goto_1
    return-void
.end method
