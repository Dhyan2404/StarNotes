.class public final Lnet/sf/saxon/functions/hof/FunctionSequenceCoercer;
.super Lnet/sf/saxon/expr/UnaryExpression;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/sf/saxon/functions/hof/FunctionSequenceCoercer$Coercer;
    }
.end annotation


# instance fields
.field public final o:Lnet/sf/saxon/type/SpecificFunctionType;

.field public final p:Lnet/sf/saxon/expr/parser/RoleDiagnostic;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/type/SpecificFunctionType;Lnet/sf/saxon/expr/parser/RoleDiagnostic;)V
    .locals 0

    invoke-direct {p0, p1}, Lnet/sf/saxon/expr/UnaryExpression;-><init>(Lnet/sf/saxon/expr/Expression;)V

    iput-object p2, p0, Lnet/sf/saxon/functions/hof/FunctionSequenceCoercer;->o:Lnet/sf/saxon/type/SpecificFunctionType;

    iput-object p3, p0, Lnet/sf/saxon/functions/hof/FunctionSequenceCoercer;->p:Lnet/sf/saxon/expr/parser/RoleDiagnostic;

    invoke-static {p1, p0}, Lnet/sf/saxon/expr/parser/ExpressionTool;->copyLocationInfo(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)V

    return-void
.end method

.method public static synthetic d(Lnet/sf/saxon/om/Function;Lnet/sf/saxon/type/FunctionItemType;Lnet/sf/saxon/Configuration;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lnet/sf/saxon/functions/hof/FunctionSequenceCoercer;->e(Lnet/sf/saxon/om/Function;Lnet/sf/saxon/type/FunctionItemType;Lnet/sf/saxon/Configuration;)V

    return-void
.end method

.method public static e(Lnet/sf/saxon/om/Function;Lnet/sf/saxon/type/FunctionItemType;Lnet/sf/saxon/Configuration;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-interface {p1}, Lnet/sf/saxon/type/FunctionItemType;->getAnnotationAssertions()Lnet/sf/saxon/query/AnnotationList;

    move-result-object p1

    invoke-virtual {p1}, Lnet/sf/saxon/query/AnnotationList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/query/Annotation;

    invoke-virtual {v0}, Lnet/sf/saxon/query/Annotation;->getAnnotationQName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sf/saxon/om/StructuredQName;->getURI()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lnet/sf/saxon/Configuration;->getFunctionAnnotationHandler(Ljava/lang/String;)Lnet/sf/saxon/lib/FunctionAnnotationHandler;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Lnet/sf/saxon/om/Function;->getAnnotations()Lnet/sf/saxon/query/AnnotationList;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lnet/sf/saxon/lib/FunctionAnnotationHandler;->satisfiesAssertion(Lnet/sf/saxon/query/Annotation;Lnet/sf/saxon/query/AnnotationList;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    const-string p1, "Supplied function does not satisfy the annotation assertions of the required function type"

    const-string p2, "XPTY0004"

    invoke-direct {p0, p1, p2}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p0

    :cond_2
    return-void
.end method


# virtual methods
.method public computeCardinality()I
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/UnaryExpression;->getBaseExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getCardinality()I

    move-result p0

    return p0
.end method

.method public computeHashCode()I
    .locals 1

    invoke-super {p0}, Lnet/sf/saxon/expr/UnaryExpression;->computeHashCode()I

    move-result v0

    iget-object p0, p0, Lnet/sf/saxon/functions/hof/FunctionSequenceCoercer;->o:Lnet/sf/saxon/type/SpecificFunctionType;

    invoke-virtual {p0}, Lnet/sf/saxon/type/SpecificFunctionType;->hashCode()I

    move-result p0

    xor-int/2addr p0, v0

    return p0
.end method

.method public computeSpecialProperties()I
    .locals 1

    invoke-super {p0}, Lnet/sf/saxon/expr/UnaryExpression;->computeSpecialProperties()I

    move-result p0

    const/high16 v0, 0x800000

    or-int/2addr p0, v0

    return p0
.end method

.method public copy(Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/expr/Expression;
    .locals 3

    new-instance v0, Lnet/sf/saxon/functions/hof/FunctionSequenceCoercer;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/UnaryExpression;->getBaseExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-virtual {v1, p1}, Lnet/sf/saxon/expr/Expression;->copy(Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    iget-object v1, p0, Lnet/sf/saxon/functions/hof/FunctionSequenceCoercer;->o:Lnet/sf/saxon/type/SpecificFunctionType;

    iget-object v2, p0, Lnet/sf/saxon/functions/hof/FunctionSequenceCoercer;->p:Lnet/sf/saxon/expr/parser/RoleDiagnostic;

    invoke-direct {v0, p1, v1, v2}, Lnet/sf/saxon/functions/hof/FunctionSequenceCoercer;-><init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/type/SpecificFunctionType;Lnet/sf/saxon/expr/parser/RoleDiagnostic;)V

    invoke-static {p0, v0}, Lnet/sf/saxon/expr/parser/ExpressionTool;->copyLocationInfo(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    invoke-super {p0, p1}, Lnet/sf/saxon/expr/UnaryExpression;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lnet/sf/saxon/functions/hof/FunctionSequenceCoercer;->o:Lnet/sf/saxon/type/SpecificFunctionType;

    check-cast p1, Lnet/sf/saxon/functions/hof/FunctionSequenceCoercer;

    iget-object p1, p1, Lnet/sf/saxon/functions/hof/FunctionSequenceCoercer;->o:Lnet/sf/saxon/type/SpecificFunctionType;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/type/SpecificFunctionType;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public evaluateItem(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/Function;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, Lnet/sf/saxon/expr/UnaryExpression;->getBaseExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/sf/saxon/expr/Expression;->evaluateItem(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/Item;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 3
    :cond_0
    instance-of v1, v0, Lnet/sf/saxon/om/Function;

    if-eqz v1, :cond_1

    .line 4
    :try_start_0
    move-object v1, v0

    check-cast v1, Lnet/sf/saxon/om/Function;

    iget-object v2, p0, Lnet/sf/saxon/functions/hof/FunctionSequenceCoercer;->o:Lnet/sf/saxon/type/SpecificFunctionType;

    invoke-interface {p1}, Lnet/sf/saxon/expr/XPathContext;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lnet/sf/saxon/functions/hof/FunctionSequenceCoercer;->e(Lnet/sf/saxon/om/Function;Lnet/sf/saxon/type/FunctionItemType;Lnet/sf/saxon/Configuration;)V
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    new-instance p1, Lnet/sf/saxon/functions/hof/CoercedFunction;

    check-cast v0, Lnet/sf/saxon/om/Function;

    iget-object p0, p0, Lnet/sf/saxon/functions/hof/FunctionSequenceCoercer;->o:Lnet/sf/saxon/type/SpecificFunctionType;

    invoke-direct {p1, v0, p0}, Lnet/sf/saxon/functions/hof/CoercedFunction;-><init>(Lnet/sf/saxon/om/Function;Lnet/sf/saxon/type/SpecificFunctionType;)V

    return-object p1

    :catch_0
    move-exception v0

    .line 6
    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object p0

    invoke-virtual {v0, p0}, Lnet/sf/saxon/trans/XPathException;->maybeSetLocation(Lnet/sf/saxon/s9api/Location;)V

    .line 7
    invoke-virtual {v0, p1}, Lnet/sf/saxon/trans/XPathException;->maybeSetContext(Lnet/sf/saxon/expr/XPathContext;)V

    .line 8
    throw v0

    .line 9
    :cond_1
    invoke-static {v0}, Lnet/sf/saxon/type/UType;->getUType(Lnet/sf/saxon/om/Item;)Lnet/sf/saxon/type/UType;

    move-result-object p1

    .line 10
    new-instance v0, Lnet/sf/saxon/trans/XPathException;

    iget-object v1, p0, Lnet/sf/saxon/functions/hof/FunctionSequenceCoercer;->p:Lnet/sf/saxon/expr/parser/RoleDiagnostic;

    iget-object p0, p0, Lnet/sf/saxon/functions/hof/FunctionSequenceCoercer;->o:Lnet/sf/saxon/type/SpecificFunctionType;

    invoke-virtual {v1, p0, p1}, Lnet/sf/saxon/expr/parser/RoleDiagnostic;->composeErrorMessage(Lnet/sf/saxon/type/ItemType;Lnet/sf/saxon/type/UType;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "XPTY0004"

    invoke-direct {v0, p0, p1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic evaluateItem(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/Item;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lnet/sf/saxon/functions/hof/FunctionSequenceCoercer;->evaluateItem(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/Function;

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

    const-string v0, "fnCoercer"

    invoke-virtual {p1, v0, p0}, Lnet/sf/saxon/trace/ExpressionPresenter;->startElement(Ljava/lang/String;Lnet/sf/saxon/expr/Expression;)I

    iget-object v0, p0, Lnet/sf/saxon/functions/hof/FunctionSequenceCoercer;->o:Lnet/sf/saxon/type/SpecificFunctionType;

    const/16 v1, 0x4000

    invoke-static {v0, v1}, Lnet/sf/saxon/value/SequenceType;->makeSequenceType(Lnet/sf/saxon/type/ItemType;I)Lnet/sf/saxon/value/SequenceType;

    move-result-object v0

    const-string v1, "to"

    invoke-virtual {v0}, Lnet/sf/saxon/value/SequenceType;->toAlphaCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lnet/sf/saxon/trace/ExpressionPresenter;->emitAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lnet/sf/saxon/functions/hof/FunctionSequenceCoercer;->p:Lnet/sf/saxon/expr/parser/RoleDiagnostic;

    invoke-virtual {v0}, Lnet/sf/saxon/expr/parser/RoleDiagnostic;->save()Ljava/lang/String;

    move-result-object v0

    const-string v1, "diag"

    invoke-virtual {p1, v1, v0}, Lnet/sf/saxon/trace/ExpressionPresenter;->emitAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/UnaryExpression;->getBaseExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/Expression;->export(Lnet/sf/saxon/trace/ExpressionPresenter;)V

    invoke-virtual {p1}, Lnet/sf/saxon/trace/ExpressionPresenter;->endElement()I

    return-void
.end method

.method public getExpressionName()Ljava/lang/String;
    .locals 0

    const-string p0, "fnCoercer"

    return-object p0
.end method

.method public getImplementationMethod()I
    .locals 0

    const/4 p0, 0x2

    return p0
.end method

.method public bridge synthetic getItemType()Lnet/sf/saxon/type/ItemType;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lnet/sf/saxon/functions/hof/FunctionSequenceCoercer;->getItemType()Lnet/sf/saxon/type/SpecificFunctionType;

    move-result-object p0

    return-object p0
.end method

.method public getItemType()Lnet/sf/saxon/type/SpecificFunctionType;
    .locals 0

    .line 2
    iget-object p0, p0, Lnet/sf/saxon/functions/hof/FunctionSequenceCoercer;->o:Lnet/sf/saxon/type/SpecificFunctionType;

    return-object p0
.end method

.method public getOperandRole()Lnet/sf/saxon/expr/OperandRole;
    .locals 0

    sget-object p0, Lnet/sf/saxon/expr/OperandRole;->INSPECT:Lnet/sf/saxon/expr/OperandRole;

    return-object p0
.end method

.method public getRole()Lnet/sf/saxon/expr/parser/RoleDiagnostic;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/functions/hof/FunctionSequenceCoercer;->p:Lnet/sf/saxon/expr/parser/RoleDiagnostic;

    return-object p0
.end method

.method public iterate(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/SequenceIterator;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/expr/UnaryExpression;->getBaseExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/sf/saxon/expr/Expression;->iterate(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object v0

    new-instance v1, Lnet/sf/saxon/functions/hof/FunctionSequenceCoercer$Coercer;

    iget-object v2, p0, Lnet/sf/saxon/functions/hof/FunctionSequenceCoercer;->o:Lnet/sf/saxon/type/SpecificFunctionType;

    invoke-interface {p1}, Lnet/sf/saxon/expr/XPathContext;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p1

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object p0

    invoke-direct {v1, v2, p1, p0}, Lnet/sf/saxon/functions/hof/FunctionSequenceCoercer$Coercer;-><init>(Lnet/sf/saxon/type/SpecificFunctionType;Lnet/sf/saxon/Configuration;Lnet/sf/saxon/s9api/Location;)V

    new-instance p0, Lnet/sf/saxon/expr/ItemMappingIterator;

    const/4 p1, 0x1

    invoke-direct {p0, v0, v1, p1}, Lnet/sf/saxon/expr/ItemMappingIterator;-><init>(Lnet/sf/saxon/om/SequenceIterator;Lnet/sf/saxon/expr/ItemMappingFunction;Z)V

    return-object p0
.end method

.method public simplify()Lnet/sf/saxon/expr/Expression;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/expr/UnaryExpression;->getBaseExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/expr/Expression;->simplify()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/UnaryExpression;->setBaseExpression(Lnet/sf/saxon/expr/Expression;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/UnaryExpression;->getBaseExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    instance-of v0, v0, Lnet/sf/saxon/expr/Literal;

    if-eqz v0, :cond_0

    new-instance v0, Lnet/sf/saxon/expr/EarlyEvaluationContext;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/sf/saxon/expr/EarlyEvaluationContext;-><init>(Lnet/sf/saxon/Configuration;)V

    invoke-virtual {p0, v0}, Lnet/sf/saxon/functions/hof/FunctionSequenceCoercer;->iterate(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object v0

    invoke-static {v0}, Lnet/sf/saxon/om/SequenceTool;->toGroundedValue(Lnet/sf/saxon/om/SequenceIterator;)Lnet/sf/saxon/om/GroundedValue;

    move-result-object v0

    invoke-static {v0, p0}, Lnet/sf/saxon/expr/Literal;->makeLiteral(Lnet/sf/saxon/om/GroundedValue;Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Literal;

    move-result-object p0

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

    invoke-virtual {p0}, Lnet/sf/saxon/expr/UnaryExpression;->getOperand()Lnet/sf/saxon/expr/Operand;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lnet/sf/saxon/expr/Operand;->typeCheck(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)V

    invoke-virtual {p1}, Lnet/sf/saxon/expr/parser/ExpressionVisitor;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p1

    invoke-virtual {p1}, Lnet/sf/saxon/Configuration;->getTypeHierarchy()Lnet/sf/saxon/type/TypeHierarchy;

    move-result-object p1

    invoke-virtual {p0}, Lnet/sf/saxon/expr/UnaryExpression;->getBaseExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p2

    invoke-virtual {p2}, Lnet/sf/saxon/expr/Expression;->getItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object p2

    iget-object v0, p0, Lnet/sf/saxon/functions/hof/FunctionSequenceCoercer;->o:Lnet/sf/saxon/type/SpecificFunctionType;

    invoke-virtual {p1, p2, v0}, Lnet/sf/saxon/type/TypeHierarchy;->isSubType(Lnet/sf/saxon/type/ItemType;Lnet/sf/saxon/type/ItemType;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/UnaryExpression;->getBaseExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    :cond_0
    return-object p0
.end method
