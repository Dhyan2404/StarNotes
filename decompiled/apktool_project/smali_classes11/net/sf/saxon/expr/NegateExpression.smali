.class public Lnet/sf/saxon/expr/NegateExpression;
.super Lnet/sf/saxon/expr/UnaryExpression;
.source "SourceFile"


# instance fields
.field public o:Z


# direct methods
.method public constructor <init>(Lnet/sf/saxon/expr/Expression;)V
    .locals 0

    invoke-direct {p0, p1}, Lnet/sf/saxon/expr/UnaryExpression;-><init>(Lnet/sf/saxon/expr/Expression;)V

    return-void
.end method


# virtual methods
.method public computeCardinality()I
    .locals 1

    invoke-virtual {p0}, Lnet/sf/saxon/expr/UnaryExpression;->getBaseExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getCardinality()I

    move-result p0

    const v0, -0x8001

    and-int/2addr p0, v0

    return p0
.end method

.method public copy(Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/expr/Expression;
    .locals 2

    new-instance v0, Lnet/sf/saxon/expr/NegateExpression;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/UnaryExpression;->getBaseExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-virtual {v1, p1}, Lnet/sf/saxon/expr/Expression;->copy(Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    invoke-direct {v0, p1}, Lnet/sf/saxon/expr/NegateExpression;-><init>(Lnet/sf/saxon/expr/Expression;)V

    invoke-static {p0, v0}, Lnet/sf/saxon/expr/parser/ExpressionTool;->copyLocationInfo(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)V

    return-object v0
.end method

.method public displayOperator(Lnet/sf/saxon/Configuration;)Ljava/lang/String;
    .locals 0

    const-string p0, "-"

    return-object p0
.end method

.method public bridge synthetic evaluateItem(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/Item;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/NegateExpression;->evaluateItem(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/value/NumericValue;

    move-result-object p0

    return-object p0
.end method

.method public evaluateItem(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/value/NumericValue;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, Lnet/sf/saxon/expr/UnaryExpression;->getBaseExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/sf/saxon/expr/Expression;->evaluateItem(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/Item;

    move-result-object p1

    check-cast p1, Lnet/sf/saxon/value/NumericValue;

    if-nez p1, :cond_1

    .line 3
    iget-boolean p0, p0, Lnet/sf/saxon/expr/NegateExpression;->o:Z

    if-eqz p0, :cond_0

    sget-object p0, Lnet/sf/saxon/value/DoubleValue;->NaN:Lnet/sf/saxon/value/DoubleValue;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0

    .line 4
    :cond_1
    invoke-virtual {p1}, Lnet/sf/saxon/value/NumericValue;->negate()Lnet/sf/saxon/value/NumericValue;

    move-result-object p0

    return-object p0
.end method

.method public export(Lnet/sf/saxon/trace/ExpressionPresenter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const-string v0, "minus"

    invoke-virtual {p1, v0, p0}, Lnet/sf/saxon/trace/ExpressionPresenter;->startElement(Ljava/lang/String;Lnet/sf/saxon/expr/Expression;)I

    iget-boolean v0, p0, Lnet/sf/saxon/expr/NegateExpression;->o:Z

    if-eqz v0, :cond_0

    const-string v0, "vn"

    const-string v1, "1"

    invoke-virtual {p1, v0, v1}, Lnet/sf/saxon/trace/ExpressionPresenter;->emitAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/expr/UnaryExpression;->getBaseExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/Expression;->export(Lnet/sf/saxon/trace/ExpressionPresenter;)V

    invoke-virtual {p1}, Lnet/sf/saxon/trace/ExpressionPresenter;->endElement()I

    return-void
.end method

.method public getExpressionName()Ljava/lang/String;
    .locals 0

    const-string p0, "minus"

    return-object p0
.end method

.method public getImplementationMethod()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public getItemType()Lnet/sf/saxon/type/ItemType;
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/UnaryExpression;->getBaseExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object p0

    invoke-interface {p0}, Lnet/sf/saxon/type/ItemType;->getPrimitiveItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object p0

    return-object p0
.end method

.method public getOperandRole()Lnet/sf/saxon/expr/OperandRole;
    .locals 0

    sget-object p0, Lnet/sf/saxon/expr/OperandRole;->SINGLE_ATOMIC:Lnet/sf/saxon/expr/OperandRole;

    return-object p0
.end method

.method public isBackwardsCompatible()Z
    .locals 0

    iget-boolean p0, p0, Lnet/sf/saxon/expr/NegateExpression;->o:Z

    return p0
.end method

.method public setBackwardsCompatible(Z)V
    .locals 0

    iput-boolean p1, p0, Lnet/sf/saxon/expr/NegateExpression;->o:Z

    return-void
.end method

.method public typeCheck(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/expr/UnaryExpression;->getOperand()Lnet/sf/saxon/expr/Operand;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lnet/sf/saxon/expr/Operand;->typeCheck(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)V

    new-instance p2, Lnet/sf/saxon/expr/parser/RoleDiagnostic;

    const-string v0, "-"

    const/4 v1, 0x0

    const/16 v2, 0x9

    invoke-direct {p2, v2, v0, v1}, Lnet/sf/saxon/expr/parser/RoleDiagnostic;-><init>(ILjava/lang/String;I)V

    invoke-virtual {p1}, Lnet/sf/saxon/expr/parser/ExpressionVisitor;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v0

    iget-boolean v1, p0, Lnet/sf/saxon/expr/NegateExpression;->o:Z

    invoke-virtual {v0, v1}, Lnet/sf/saxon/Configuration;->getTypeChecker(Z)Lnet/sf/saxon/expr/parser/TypeChecker;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/UnaryExpression;->getBaseExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    sget-object v2, Lnet/sf/saxon/value/SequenceType;->OPTIONAL_NUMERIC:Lnet/sf/saxon/value/SequenceType;

    invoke-virtual {v0, v1, v2, p2, p1}, Lnet/sf/saxon/expr/parser/TypeChecker;->staticTypeCheck(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/value/SequenceType;Lnet/sf/saxon/expr/parser/RoleDiagnostic;Lnet/sf/saxon/expr/parser/ExpressionVisitor;)Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/UnaryExpression;->setBaseExpression(Lnet/sf/saxon/expr/Expression;)V

    instance-of p2, p1, Lnet/sf/saxon/expr/Literal;

    if-eqz p2, :cond_0

    check-cast p1, Lnet/sf/saxon/expr/Literal;

    invoke-virtual {p1}, Lnet/sf/saxon/expr/Literal;->getGroundedValue()Lnet/sf/saxon/om/GroundedValue;

    move-result-object p1

    instance-of p2, p1, Lnet/sf/saxon/value/NumericValue;

    if-eqz p2, :cond_0

    check-cast p1, Lnet/sf/saxon/value/NumericValue;

    invoke-virtual {p1}, Lnet/sf/saxon/value/NumericValue;->negate()Lnet/sf/saxon/value/NumericValue;

    move-result-object p1

    invoke-static {p1, p0}, Lnet/sf/saxon/expr/Literal;->makeLiteral(Lnet/sf/saxon/om/GroundedValue;Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Literal;

    move-result-object p0

    :cond_0
    return-object p0
.end method
