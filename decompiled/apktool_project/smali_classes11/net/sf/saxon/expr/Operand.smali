.class public final Lnet/sf/saxon/expr/Operand;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;
.implements Lnet/sf/saxon/expr/ExpressionOwner;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Lnet/sf/saxon/expr/Operand;",
        ">;",
        "Lnet/sf/saxon/expr/ExpressionOwner;"
    }
.end annotation


# static fields
.field public static final h:Z


# instance fields
.field public final e:Lnet/sf/saxon/expr/Expression;

.field public f:Lnet/sf/saxon/expr/Expression;

.field public g:Lnet/sf/saxon/expr/OperandRole;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/OperandRole;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/sf/saxon/expr/Operand;->e:Lnet/sf/saxon/expr/Expression;

    iput-object p3, p0, Lnet/sf/saxon/expr/Operand;->g:Lnet/sf/saxon/expr/OperandRole;

    invoke-virtual {p0, p2}, Lnet/sf/saxon/expr/Operand;->setChildExpression(Lnet/sf/saxon/expr/Expression;)V

    return-void
.end method

.method public static typeDeterminedUsage(Lnet/sf/saxon/type/ItemType;)Lnet/sf/saxon/expr/OperandUsage;
    .locals 1

    invoke-interface {p0}, Lnet/sf/saxon/type/ItemType;->isPlainType()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lnet/sf/saxon/expr/OperandUsage;->ABSORPTION:Lnet/sf/saxon/expr/OperandUsage;

    return-object p0

    :cond_0
    instance-of v0, p0, Lnet/sf/saxon/pattern/NodeTest;

    if-nez v0, :cond_2

    invoke-static {}, Lnet/sf/saxon/type/AnyItemType;->getInstance()Lnet/sf/saxon/type/AnyItemType;

    move-result-object v0

    if-ne p0, v0, :cond_1

    goto :goto_0

    :cond_1
    sget-object p0, Lnet/sf/saxon/expr/OperandUsage;->INSPECTION:Lnet/sf/saxon/expr/OperandUsage;

    return-object p0

    :cond_2
    :goto_0
    sget-object p0, Lnet/sf/saxon/expr/OperandUsage;->NAVIGATION:Lnet/sf/saxon/expr/OperandUsage;

    return-object p0
.end method


# virtual methods
.method public detachChild()V
    .locals 0

    return-void
.end method

.method public getChildExpression()Lnet/sf/saxon/expr/Expression;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/Operand;->f:Lnet/sf/saxon/expr/Expression;

    return-object p0
.end method

.method public getOperandRole()Lnet/sf/saxon/expr/OperandRole;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/Operand;->g:Lnet/sf/saxon/expr/OperandRole;

    return-object p0
.end method

.method public getParentExpression()Lnet/sf/saxon/expr/Expression;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/Operand;->e:Lnet/sf/saxon/expr/Expression;

    return-object p0
.end method

.method public getRequiredType()Lnet/sf/saxon/value/SequenceType;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/Operand;->g:Lnet/sf/saxon/expr/OperandRole;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/OperandRole;->getRequiredType()Lnet/sf/saxon/value/SequenceType;

    move-result-object p0

    return-object p0
.end method

.method public getUsage()Lnet/sf/saxon/expr/OperandUsage;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/Operand;->g:Lnet/sf/saxon/expr/OperandRole;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/OperandRole;->getUsage()Lnet/sf/saxon/expr/OperandUsage;

    move-result-object p0

    return-object p0
.end method

.method public hasSameFocus()Z
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/Operand;->g:Lnet/sf/saxon/expr/OperandRole;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/OperandRole;->hasSameFocus()Z

    move-result p0

    return p0
.end method

.method public hasSpecialFocusRules()Z
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/Operand;->g:Lnet/sf/saxon/expr/OperandRole;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/OperandRole;->hasSpecialFocusRules()Z

    move-result p0

    return p0
.end method

.method public isEvaluatedRepeatedly()Z
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/Operand;->g:Lnet/sf/saxon/expr/OperandRole;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/OperandRole;->isEvaluatedRepeatedly()Z

    move-result p0

    return p0
.end method

.method public isHigherOrder()Z
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/Operand;->g:Lnet/sf/saxon/expr/OperandRole;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/OperandRole;->isHigherOrder()Z

    move-result p0

    return p0
.end method

.method public isInChoiceGroup()Z
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/Operand;->g:Lnet/sf/saxon/expr/OperandRole;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/OperandRole;->isInChoiceGroup()Z

    move-result p0

    return p0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lnet/sf/saxon/expr/Operand;",
            ">;"
        }
    .end annotation

    new-instance v0, Lnet/sf/saxon/tree/jiter/MonoIterator;

    invoke-direct {v0, p0}, Lnet/sf/saxon/tree/jiter/MonoIterator;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public optimize(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lnet/sf/saxon/expr/Expression;->optimize(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object p2

    invoke-virtual {p0, p2}, Lnet/sf/saxon/expr/Operand;->setChildExpression(Lnet/sf/saxon/expr/Expression;)V
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object v0

    invoke-virtual {p2, v0}, Lnet/sf/saxon/trans/XPathException;->maybeSetLocation(Lnet/sf/saxon/s9api/Location;)V

    invoke-virtual {p2}, Lnet/sf/saxon/trans/XPathException;->isReportableStatically()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lnet/sf/saxon/expr/parser/ExpressionVisitor;->getStaticContext()Lnet/sf/saxon/expr/StaticContext;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Evaluation will always throw a dynamic error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lnet/sf/saxon/expr/StaticContext;->issueWarning(Ljava/lang/String;Lnet/sf/saxon/s9api/Location;)V

    new-instance p1, Lnet/sf/saxon/expr/ErrorExpression;

    new-instance v0, Lnet/sf/saxon/trans/XmlProcessingException;

    invoke-direct {v0, p2}, Lnet/sf/saxon/trans/XmlProcessingException;-><init>(Lnet/sf/saxon/trans/XPathException;)V

    invoke-direct {p1, v0}, Lnet/sf/saxon/expr/ErrorExpression;-><init>(Lnet/sf/saxon/s9api/XmlProcessingError;)V

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/Operand;->setChildExpression(Lnet/sf/saxon/expr/Expression;)V

    :goto_0
    return-void

    :cond_0
    throw p2
.end method

.method public setChildExpression(Lnet/sf/saxon/expr/Expression;)V
    .locals 2

    iget-object v0, p0, Lnet/sf/saxon/expr/Operand;->f:Lnet/sf/saxon/expr/Expression;

    if-eq p1, v0, :cond_4

    iget-object v0, p0, Lnet/sf/saxon/expr/Operand;->g:Lnet/sf/saxon/expr/OperandRole;

    invoke-virtual {v0}, Lnet/sf/saxon/expr/OperandRole;->isConstrainedClass()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lnet/sf/saxon/expr/Operand;->g:Lnet/sf/saxon/expr/OperandRole;

    invoke-virtual {v0}, Lnet/sf/saxon/expr/OperandRole;->getConstraint()Ljava/util/function/Predicate;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnet/sf/saxon/expr/Operand;->g:Lnet/sf/saxon/expr/OperandRole;

    invoke-virtual {v0}, Lnet/sf/saxon/expr/OperandRole;->getConstraint()Ljava/util/function/Predicate;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_1
    iget-object v0, p0, Lnet/sf/saxon/expr/Operand;->f:Lnet/sf/saxon/expr/Expression;

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, Lnet/sf/saxon/expr/Operand;->f:Lnet/sf/saxon/expr/Expression;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_2

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_3
    :goto_0
    iput-object p1, p0, Lnet/sf/saxon/expr/Operand;->f:Lnet/sf/saxon/expr/Expression;

    iget-object v0, p0, Lnet/sf/saxon/expr/Operand;->e:Lnet/sf/saxon/expr/Expression;

    invoke-virtual {v0, p1}, Lnet/sf/saxon/expr/Expression;->adoptChildExpression(Lnet/sf/saxon/expr/Expression;)V

    iget-object p0, p0, Lnet/sf/saxon/expr/Operand;->e:Lnet/sf/saxon/expr/Expression;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->resetLocalStaticProperties()V

    :cond_4
    return-void
.end method

.method public setOperandRole(Lnet/sf/saxon/expr/OperandRole;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/expr/Operand;->g:Lnet/sf/saxon/expr/OperandRole;

    return-void
.end method

.method public setUsage(Lnet/sf/saxon/expr/OperandUsage;)V
    .locals 3

    new-instance v0, Lnet/sf/saxon/expr/OperandRole;

    iget-object v1, p0, Lnet/sf/saxon/expr/Operand;->g:Lnet/sf/saxon/expr/OperandRole;

    iget v2, v1, Lnet/sf/saxon/expr/OperandRole;->a:I

    invoke-virtual {v1}, Lnet/sf/saxon/expr/OperandRole;->getRequiredType()Lnet/sf/saxon/value/SequenceType;

    move-result-object v1

    invoke-direct {v0, v2, p1, v1}, Lnet/sf/saxon/expr/OperandRole;-><init>(ILnet/sf/saxon/expr/OperandUsage;Lnet/sf/saxon/value/SequenceType;)V

    iput-object v0, p0, Lnet/sf/saxon/expr/Operand;->g:Lnet/sf/saxon/expr/OperandRole;

    return-void
.end method

.method public setsNewFocus()Z
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/Operand;->g:Lnet/sf/saxon/expr/OperandRole;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/OperandRole;->setsNewFocus()Z

    move-result p0

    return p0
.end method

.method public typeCheck(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lnet/sf/saxon/expr/Expression;->typeCheck(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object p2

    invoke-virtual {p0, p2}, Lnet/sf/saxon/expr/Operand;->setChildExpression(Lnet/sf/saxon/expr/Expression;)V
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object v0

    invoke-virtual {p2, v0}, Lnet/sf/saxon/trans/XPathException;->maybeSetLocation(Lnet/sf/saxon/s9api/Location;)V

    invoke-virtual {p2}, Lnet/sf/saxon/trans/XPathException;->isReportableStatically()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lnet/sf/saxon/expr/parser/ExpressionVisitor;->getStaticContext()Lnet/sf/saxon/expr/StaticContext;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Evaluation will always throw a dynamic error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lnet/sf/saxon/expr/StaticContext;->issueWarning(Ljava/lang/String;Lnet/sf/saxon/s9api/Location;)V

    new-instance p1, Lnet/sf/saxon/expr/ErrorExpression;

    new-instance v0, Lnet/sf/saxon/trans/XmlProcessingException;

    invoke-direct {v0, p2}, Lnet/sf/saxon/trans/XmlProcessingException;-><init>(Lnet/sf/saxon/trans/XPathException;)V

    invoke-direct {p1, v0}, Lnet/sf/saxon/expr/ErrorExpression;-><init>(Lnet/sf/saxon/s9api/XmlProcessingError;)V

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/Operand;->setChildExpression(Lnet/sf/saxon/expr/Expression;)V

    :goto_0
    return-void

    :cond_0
    throw p2
.end method
