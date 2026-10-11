.class public Lnet/sf/saxon/functions/hof/FunctionLiteral;
.super Lnet/sf/saxon/expr/Literal;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lnet/sf/saxon/om/Function;)V
    .locals 0

    invoke-direct {p0, p1}, Lnet/sf/saxon/expr/Literal;-><init>(Lnet/sf/saxon/om/GroundedValue;)V

    return-void
.end method


# virtual methods
.method public computeCardinality()I
    .locals 0

    const/16 p0, 0x4000

    return p0
.end method

.method public computeHashCode()I
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/functions/hof/FunctionLiteral;->getGroundedValue()Lnet/sf/saxon/om/Function;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method public computeSpecialProperties()I
    .locals 0

    const/high16 p0, 0x800000

    return p0
.end method

.method public copy(Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/expr/Expression;
    .locals 1

    new-instance p1, Lnet/sf/saxon/functions/hof/FunctionLiteral;

    invoke-virtual {p0}, Lnet/sf/saxon/functions/hof/FunctionLiteral;->getGroundedValue()Lnet/sf/saxon/om/Function;

    move-result-object v0

    invoke-direct {p1, v0}, Lnet/sf/saxon/functions/hof/FunctionLiteral;-><init>(Lnet/sf/saxon/om/Function;)V

    invoke-static {p0, p1}, Lnet/sf/saxon/expr/parser/ExpressionTool;->copyLocationInfo(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)V

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lnet/sf/saxon/functions/hof/FunctionLiteral;

    if-eqz v0, :cond_0

    check-cast p1, Lnet/sf/saxon/functions/hof/FunctionLiteral;

    invoke-virtual {p1}, Lnet/sf/saxon/functions/hof/FunctionLiteral;->getGroundedValue()Lnet/sf/saxon/om/Function;

    move-result-object p1

    invoke-virtual {p0}, Lnet/sf/saxon/functions/hof/FunctionLiteral;->getGroundedValue()Lnet/sf/saxon/om/Function;

    move-result-object p0

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public export(Lnet/sf/saxon/trace/ExpressionPresenter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/functions/hof/FunctionLiteral;->getGroundedValue()Lnet/sf/saxon/om/Function;

    move-result-object p0

    instance-of v0, p0, Lnet/sf/saxon/expr/instruct/UserFunction;

    if-eqz v0, :cond_0

    new-instance v0, Lnet/sf/saxon/functions/hof/UserFunctionReference;

    check-cast p0, Lnet/sf/saxon/expr/instruct/UserFunction;

    invoke-direct {v0, p0}, Lnet/sf/saxon/functions/hof/UserFunctionReference;-><init>(Lnet/sf/saxon/expr/instruct/UserFunction;)V

    invoke-virtual {v0, p1}, Lnet/sf/saxon/functions/hof/UserFunctionReference;->export(Lnet/sf/saxon/trace/ExpressionPresenter;)V

    goto :goto_0

    :cond_0
    invoke-interface {p0, p1}, Lnet/sf/saxon/om/Function;->export(Lnet/sf/saxon/trace/ExpressionPresenter;)V

    :goto_0
    return-void
.end method

.method public getExpressionName()Ljava/lang/String;
    .locals 0

    const-string p0, "namedFunctionRef"

    return-object p0
.end method

.method public getGroundedValue()Lnet/sf/saxon/om/Function;
    .locals 0

    .line 2
    invoke-super {p0}, Lnet/sf/saxon/expr/Literal;->getGroundedValue()Lnet/sf/saxon/om/GroundedValue;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/om/Function;

    return-object p0
.end method

.method public bridge synthetic getGroundedValue()Lnet/sf/saxon/om/GroundedValue;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lnet/sf/saxon/functions/hof/FunctionLiteral;->getGroundedValue()Lnet/sf/saxon/om/Function;

    move-result-object p0

    return-object p0
.end method

.method public getItemType()Lnet/sf/saxon/type/FunctionItemType;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lnet/sf/saxon/functions/hof/FunctionLiteral;->getGroundedValue()Lnet/sf/saxon/om/Function;

    move-result-object p0

    invoke-interface {p0}, Lnet/sf/saxon/om/Function;->getFunctionItemType()Lnet/sf/saxon/type/FunctionItemType;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getItemType()Lnet/sf/saxon/type/ItemType;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lnet/sf/saxon/functions/hof/FunctionLiteral;->getItemType()Lnet/sf/saxon/type/FunctionItemType;

    move-result-object p0

    return-object p0
.end method

.method public isVacuousExpression()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public setRetainedStaticContext(Lnet/sf/saxon/expr/parser/RetainedStaticContext;)V
    .locals 0

    invoke-super {p0, p1}, Lnet/sf/saxon/expr/Expression;->setRetainedStaticContext(Lnet/sf/saxon/expr/parser/RetainedStaticContext;)V

    return-void
.end method

.method public simplify()Lnet/sf/saxon/expr/Expression;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/functions/hof/FunctionLiteral;->getGroundedValue()Lnet/sf/saxon/om/Function;

    move-result-object v0

    instance-of v0, v0, Lnet/sf/saxon/functions/AbstractFunction;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/functions/hof/FunctionLiteral;->getGroundedValue()Lnet/sf/saxon/om/Function;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/functions/AbstractFunction;

    invoke-virtual {v0}, Lnet/sf/saxon/functions/AbstractFunction;->simplify()V

    :cond_0
    return-object p0
.end method

.method public typeCheck(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/functions/hof/FunctionLiteral;->getGroundedValue()Lnet/sf/saxon/om/Function;

    move-result-object v0

    instance-of v0, v0, Lnet/sf/saxon/functions/AbstractFunction;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/functions/hof/FunctionLiteral;->getGroundedValue()Lnet/sf/saxon/om/Function;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/functions/AbstractFunction;

    invoke-virtual {v0, p1, p2}, Lnet/sf/saxon/functions/AbstractFunction;->typeCheck(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)V

    :cond_0
    return-object p0
.end method
