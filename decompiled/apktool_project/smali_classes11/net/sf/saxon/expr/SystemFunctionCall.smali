.class public Lnet/sf/saxon/expr/SystemFunctionCall;
.super Lnet/sf/saxon/expr/StaticFunctionCall;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/expr/Negatable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/sf/saxon/expr/SystemFunctionCall$Optimized;
    }
.end annotation


# instance fields
.field public argumentEvaluators:[Lnet/sf/saxon/expr/parser/Evaluator;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/functions/SystemFunction;[Lnet/sf/saxon/expr/Expression;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lnet/sf/saxon/expr/StaticFunctionCall;-><init>(Lnet/sf/saxon/om/Function;[Lnet/sf/saxon/expr/Expression;)V

    array-length p1, p2

    new-array p1, p1, [Lnet/sf/saxon/expr/parser/Evaluator;

    iput-object p1, p0, Lnet/sf/saxon/expr/SystemFunctionCall;->argumentEvaluators:[Lnet/sf/saxon/expr/parser/Evaluator;

    sget-object p0, Lnet/sf/saxon/expr/parser/Evaluator$LazySequence;->INSTANCE:Lnet/sf/saxon/expr/parser/Evaluator$LazySequence;

    invoke-static {p1, p0}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public addToPathMap(Lnet/sf/saxon/expr/parser/PathMap;Lnet/sf/saxon/expr/parser/PathMap$PathMapNodeSet;)Lnet/sf/saxon/expr/parser/PathMap$PathMapNodeSet;
    .locals 1

    const-class v0, Lnet/sf/saxon/functions/Doc;

    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/StaticFunctionCall;->isCallOn(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_2

    const-class v0, Lnet/sf/saxon/functions/DocumentFn;

    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/StaticFunctionCall;->isCallOn(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_2

    const-class v0, Lnet/sf/saxon/functions/CollectionFn;

    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/StaticFunctionCall;->isCallOn(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-class v0, Lnet/sf/saxon/functions/KeyFn;

    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/StaticFunctionCall;->isCallOn(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lnet/sf/saxon/expr/SystemFunctionCall;->getTargetFunction()Lnet/sf/saxon/functions/SystemFunction;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/functions/KeyFn;

    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/functions/KeyFn;->addToPathMap(Lnet/sf/saxon/expr/parser/PathMap;Lnet/sf/saxon/expr/parser/PathMap$PathMapNodeSet;)Lnet/sf/saxon/expr/parser/PathMap$PathMapNodeSet;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-super {p0, p1, p2}, Lnet/sf/saxon/expr/Expression;->addToPathMap(Lnet/sf/saxon/expr/parser/PathMap;Lnet/sf/saxon/expr/parser/PathMap$PathMapNodeSet;)Lnet/sf/saxon/expr/parser/PathMap$PathMapNodeSet;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/FunctionCall;->getArg(I)Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lnet/sf/saxon/expr/Expression;->addToPathMap(Lnet/sf/saxon/expr/parser/PathMap;Lnet/sf/saxon/expr/parser/PathMap$PathMapNodeSet;)Lnet/sf/saxon/expr/parser/PathMap$PathMapNodeSet;

    new-instance p2, Lnet/sf/saxon/expr/parser/PathMap$PathMapNodeSet;

    invoke-virtual {p1, p0}, Lnet/sf/saxon/expr/parser/PathMap;->makeNewRoot(Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/parser/PathMap$PathMapRoot;

    move-result-object p0

    invoke-direct {p2, p0}, Lnet/sf/saxon/expr/parser/PathMap$PathMapNodeSet;-><init>(Lnet/sf/saxon/expr/parser/PathMap$PathMapNode;)V

    return-object p2
.end method

.method public allocateArgumentEvaluators([Lnet/sf/saxon/expr/Expression;)V
    .locals 6

    array-length v0, p1

    invoke-virtual {p0}, Lnet/sf/saxon/expr/SystemFunctionCall;->getTargetFunction()Lnet/sf/saxon/functions/SystemFunction;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sf/saxon/functions/SystemFunction;->getDetails()Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v1

    iget-object v1, v1, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->argumentTypes:[Lnet/sf/saxon/value/SequenceType;

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_6

    aget-object v2, p1, v1

    invoke-virtual {p0}, Lnet/sf/saxon/expr/SystemFunctionCall;->getTargetFunction()Lnet/sf/saxon/functions/SystemFunction;

    move-result-object v3

    invoke-virtual {v3}, Lnet/sf/saxon/functions/SystemFunction;->getDetails()Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v3

    iget-object v3, v3, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->argumentTypes:[Lnet/sf/saxon/value/SequenceType;

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v4

    aget-object v3, v3, v4

    invoke-virtual {v3}, Lnet/sf/saxon/value/SequenceType;->getCardinality()I

    move-result v3

    instance-of v4, v2, Lnet/sf/saxon/expr/Literal;

    if-eqz v4, :cond_0

    iget-object v2, p0, Lnet/sf/saxon/expr/SystemFunctionCall;->argumentEvaluators:[Lnet/sf/saxon/expr/parser/Evaluator;

    sget-object v3, Lnet/sf/saxon/expr/parser/Evaluator$Literal;->INSTANCE:Lnet/sf/saxon/expr/parser/Evaluator$Literal;

    aput-object v3, v2, v1

    goto :goto_3

    :cond_0
    instance-of v4, v2, Lnet/sf/saxon/expr/VariableReference;

    if-eqz v4, :cond_1

    iget-object v2, p0, Lnet/sf/saxon/expr/SystemFunctionCall;->argumentEvaluators:[Lnet/sf/saxon/expr/parser/Evaluator;

    sget-object v3, Lnet/sf/saxon/expr/parser/Evaluator$Variable;->INSTANCE:Lnet/sf/saxon/expr/parser/Evaluator$Variable;

    aput-object v3, v2, v1

    goto :goto_3

    :cond_1
    const/16 v4, 0x4000

    if-eq v3, v4, :cond_5

    invoke-virtual {v2}, Lnet/sf/saxon/expr/Expression;->getCardinality()I

    move-result v5

    if-ne v5, v4, :cond_2

    goto :goto_2

    :cond_2
    const/16 v4, 0x6000

    if-eq v3, v4, :cond_4

    invoke-virtual {v2}, Lnet/sf/saxon/expr/Expression;->getCardinality()I

    move-result v2

    if-ne v2, v4, :cond_3

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lnet/sf/saxon/expr/SystemFunctionCall;->argumentEvaluators:[Lnet/sf/saxon/expr/parser/Evaluator;

    sget-object v3, Lnet/sf/saxon/expr/parser/Evaluator$LazySequence;->INSTANCE:Lnet/sf/saxon/expr/parser/Evaluator$LazySequence;

    aput-object v3, v2, v1

    goto :goto_3

    :cond_4
    :goto_1
    iget-object v2, p0, Lnet/sf/saxon/expr/SystemFunctionCall;->argumentEvaluators:[Lnet/sf/saxon/expr/parser/Evaluator;

    sget-object v3, Lnet/sf/saxon/expr/parser/Evaluator$OptionalItem;->INSTANCE:Lnet/sf/saxon/expr/parser/Evaluator$OptionalItem;

    aput-object v3, v2, v1

    goto :goto_3

    :cond_5
    :goto_2
    iget-object v2, p0, Lnet/sf/saxon/expr/SystemFunctionCall;->argumentEvaluators:[Lnet/sf/saxon/expr/parser/Evaluator;

    sget-object v3, Lnet/sf/saxon/expr/parser/Evaluator$SingleItem;->INSTANCE:Lnet/sf/saxon/expr/parser/Evaluator$SingleItem;

    aput-object v3, v2, v1

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_6
    return-void
.end method

.method public call(Lnet/sf/saxon/expr/XPathContext;[Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/om/Sequence;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lnet/sf/saxon/expr/StaticFunctionCall;->call(Lnet/sf/saxon/expr/XPathContext;[Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/om/Sequence;

    move-result-object p0

    return-object p0
.end method

.method public computeCardinality()I
    .locals 1

    invoke-virtual {p0}, Lnet/sf/saxon/expr/SystemFunctionCall;->getTargetFunction()Lnet/sf/saxon/functions/SystemFunction;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/FunctionCall;->getArguments()[Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {v0, p0}, Lnet/sf/saxon/functions/SystemFunction;->getCardinality([Lnet/sf/saxon/expr/Expression;)I

    move-result p0

    return p0
.end method

.method public computeSpecialProperties()I
    .locals 1

    invoke-virtual {p0}, Lnet/sf/saxon/expr/SystemFunctionCall;->getTargetFunction()Lnet/sf/saxon/functions/SystemFunction;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/FunctionCall;->getArguments()[Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {v0, p0}, Lnet/sf/saxon/functions/SystemFunction;->getSpecialProperties([Lnet/sf/saxon/expr/Expression;)I

    move-result p0

    return p0
.end method

.method public copy(Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/expr/Expression;
    .locals 4

    invoke-virtual {p0}, Lnet/sf/saxon/expr/FunctionCall;->getArity()I

    move-result v0

    new-array v1, v0, [Lnet/sf/saxon/expr/Expression;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    invoke-virtual {p0, v2}, Lnet/sf/saxon/expr/FunctionCall;->getArg(I)Lnet/sf/saxon/expr/Expression;

    move-result-object v3

    invoke-virtual {v3, p1}, Lnet/sf/saxon/expr/Expression;->copy(Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/expr/Expression;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/expr/SystemFunctionCall;->getTargetFunction()Lnet/sf/saxon/functions/SystemFunction;

    move-result-object p0

    instance-of p1, p0, Lnet/sf/saxon/functions/StatefulSystemFunction;

    if-eqz p1, :cond_1

    check-cast p0, Lnet/sf/saxon/functions/StatefulSystemFunction;

    invoke-interface {p0}, Lnet/sf/saxon/functions/StatefulSystemFunction;->copy()Lnet/sf/saxon/functions/SystemFunction;

    move-result-object p0

    :cond_1
    invoke-virtual {p0, v1}, Lnet/sf/saxon/functions/SystemFunction;->makeFunctionCall([Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0
.end method

.method public evaluateArguments(Lnet/sf/saxon/expr/XPathContext;)[Lnet/sf/saxon/om/Sequence;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/expr/FunctionCall;->getOperanda()Lnet/sf/saxon/expr/oper/OperandArray;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/expr/oper/OperandArray;->getNumberOfOperands()I

    move-result v1

    new-array v2, v1, [Lnet/sf/saxon/om/Sequence;

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    invoke-virtual {v0, v3}, Lnet/sf/saxon/expr/oper/OperandArray;->getOperandExpression(I)Lnet/sf/saxon/expr/Expression;

    move-result-object v4

    iget-object v5, p0, Lnet/sf/saxon/expr/SystemFunctionCall;->argumentEvaluators:[Lnet/sf/saxon/expr/parser/Evaluator;

    aget-object v5, v5, v3

    invoke-virtual {v5, v4, p1}, Lnet/sf/saxon/expr/parser/Evaluator;->evaluate(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/Sequence;

    move-result-object v4

    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method public export(Lnet/sf/saxon/trace/ExpressionPresenter;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/expr/StaticFunctionCall;->getFunctionName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v0

    const-string v1, "http://www.w3.org/2005/xpath-functions"

    invoke-virtual {v0, v1}, Lnet/sf/saxon/om/StructuredQName;->hasURI(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "name"

    if-eqz v0, :cond_4

    const-string v0, "fn"

    invoke-virtual {p1, v0, p0}, Lnet/sf/saxon/trace/ExpressionPresenter;->startElement(Ljava/lang/String;Lnet/sf/saxon/expr/Expression;)I

    invoke-virtual {p0}, Lnet/sf/saxon/expr/StaticFunctionCall;->getFunctionName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/om/StructuredQName;->getLocalPart()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lnet/sf/saxon/trace/ExpressionPresenter;->emitAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/SystemFunctionCall;->getTargetFunction()Lnet/sf/saxon/functions/SystemFunction;

    move-result-object v1

    invoke-virtual {v1, p1}, Lnet/sf/saxon/functions/SystemFunction;->exportAttributes(Lnet/sf/saxon/trace/ExpressionPresenter;)V

    const-string v1, "concat"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lnet/sf/saxon/trace/ExpressionPresenter;->getOptions()Lnet/sf/saxon/trace/ExpressionPresenter$Options;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/trace/ExpressionPresenter$ExportOptions;

    iget-object v0, v0, Lnet/sf/saxon/trace/ExpressionPresenter$ExportOptions;->target:Ljava/lang/String;

    const-string v1, "JS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lnet/sf/saxon/expr/FunctionCall;->getArity()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/FunctionCall;->getArg(I)Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    instance-of v1, v1, Lnet/sf/saxon/expr/instruct/Block;

    if-eqz v1, :cond_2

    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/FunctionCall;->getArg(I)Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/expr/Expression;->operands()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/expr/Operand;

    invoke-virtual {v1}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v2

    instance-of v2, v2, Lnet/sf/saxon/expr/Literal;

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/expr/Literal;

    invoke-virtual {v1}, Lnet/sf/saxon/expr/Literal;->getGroundedValue()Lnet/sf/saxon/om/GroundedValue;

    move-result-object v1

    invoke-interface {v1}, Lnet/sf/saxon/om/GroundedValue;->asIterable()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/sf/saxon/om/Item;

    invoke-static {v2, p1}, Lnet/sf/saxon/expr/Literal;->exportValue(Lnet/sf/saxon/om/Sequence;Lnet/sf/saxon/trace/ExpressionPresenter;)V

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-virtual {v1, p1}, Lnet/sf/saxon/expr/Expression;->export(Lnet/sf/saxon/trace/ExpressionPresenter;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lnet/sf/saxon/expr/FunctionCall;->operands()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/expr/Operand;

    invoke-virtual {v1}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-virtual {v1, p1}, Lnet/sf/saxon/expr/Expression;->export(Lnet/sf/saxon/trace/ExpressionPresenter;)V

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Lnet/sf/saxon/expr/SystemFunctionCall;->getTargetFunction()Lnet/sf/saxon/functions/SystemFunction;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lnet/sf/saxon/functions/SystemFunction;->exportAdditionalArguments(Lnet/sf/saxon/expr/SystemFunctionCall;Lnet/sf/saxon/trace/ExpressionPresenter;)V

    invoke-virtual {p1}, Lnet/sf/saxon/trace/ExpressionPresenter;->endElement()I

    goto :goto_4

    :cond_4
    const-string v0, "ifCall"

    invoke-virtual {p1, v0, p0}, Lnet/sf/saxon/trace/ExpressionPresenter;->startElement(Ljava/lang/String;Lnet/sf/saxon/expr/Expression;)I

    invoke-virtual {p0}, Lnet/sf/saxon/expr/StaticFunctionCall;->getFunctionName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lnet/sf/saxon/trace/ExpressionPresenter;->emitAttribute(Ljava/lang/String;Lnet/sf/saxon/om/StructuredQName;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/SystemFunctionCall;->getTargetFunction()Lnet/sf/saxon/functions/SystemFunction;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/functions/SystemFunction;->getFunctionItemType()Lnet/sf/saxon/type/FunctionItemType;

    move-result-object v0

    invoke-interface {v0}, Lnet/sf/saxon/type/FunctionItemType;->getResultType()Lnet/sf/saxon/value/SequenceType;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/value/SequenceType;->toAlphaCode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "type"

    invoke-virtual {p1, v1, v0}, Lnet/sf/saxon/trace/ExpressionPresenter;->emitAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/SystemFunctionCall;->getTargetFunction()Lnet/sf/saxon/functions/SystemFunction;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/sf/saxon/functions/SystemFunction;->exportAttributes(Lnet/sf/saxon/trace/ExpressionPresenter;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/FunctionCall;->operands()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/expr/Operand;

    invoke-virtual {v1}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-virtual {v1, p1}, Lnet/sf/saxon/expr/Expression;->export(Lnet/sf/saxon/trace/ExpressionPresenter;)V

    goto :goto_3

    :cond_5
    invoke-virtual {p0}, Lnet/sf/saxon/expr/SystemFunctionCall;->getTargetFunction()Lnet/sf/saxon/functions/SystemFunction;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lnet/sf/saxon/functions/SystemFunction;->exportAdditionalArguments(Lnet/sf/saxon/expr/SystemFunctionCall;Lnet/sf/saxon/trace/ExpressionPresenter;)V

    invoke-virtual {p1}, Lnet/sf/saxon/trace/ExpressionPresenter;->endElement()I

    :goto_4
    return-void
.end method

.method public getExpressionName()Ljava/lang/String;
    .locals 0

    const-string p0, "sysFuncCall"

    return-object p0
.end method

.method public getIntegerBounds()[Lnet/sf/saxon/value/IntegerValue;
    .locals 2

    invoke-virtual {p0}, Lnet/sf/saxon/expr/SystemFunctionCall;->getTargetFunction()Lnet/sf/saxon/functions/SystemFunction;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/functions/SystemFunction;->getDetails()Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v1

    iget v1, v1, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->properties:I

    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/FunctionCall;->getArg(I)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getIntegerBounds()[Lnet/sf/saxon/value/IntegerValue;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {v0}, Lnet/sf/saxon/functions/SystemFunction;->getIntegerBounds()[Lnet/sf/saxon/value/IntegerValue;

    move-result-object p0

    return-object p0
.end method

.method public getIntrinsicDependencies()I
    .locals 3

    invoke-virtual {p0}, Lnet/sf/saxon/expr/SystemFunctionCall;->getTargetFunction()Lnet/sf/saxon/functions/SystemFunction;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/functions/SystemFunction;->getDetails()Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v0

    iget v0, v0, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->properties:I

    and-int/lit16 v1, v0, 0x200

    if-eqz v1, :cond_0

    const/16 v1, 0x400

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    and-int/lit16 v2, v0, 0x5804

    if-eqz v2, :cond_4

    and-int/lit16 v2, v0, 0x4000

    if-eqz v2, :cond_1

    or-int/lit8 v1, v1, 0x10

    :cond_1
    and-int/lit8 v2, v0, 0x4

    if-eqz v2, :cond_2

    or-int/lit8 v1, v1, 0x2

    :cond_2
    and-int/lit16 v2, v0, 0x800

    if-eqz v2, :cond_3

    or-int/lit8 v1, v1, 0x4

    :cond_3
    and-int/lit16 v2, v0, 0x1000

    if-eqz v2, :cond_4

    or-int/lit8 v1, v1, 0x8

    :cond_4
    and-int/lit8 v2, v0, 0x8

    if-eqz v2, :cond_5

    or-int/lit16 v1, v1, 0x800

    :cond_5
    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_6

    or-int/lit16 v1, v1, 0x800

    :cond_6
    const-class v0, Lnet/sf/saxon/functions/RegexGroup;

    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/StaticFunctionCall;->isCallOn(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_7

    const-class v0, Lnet/sf/saxon/functions/CurrentMergeGroup;

    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/StaticFunctionCall;->isCallOn(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_7

    const-class v0, Lnet/sf/saxon/functions/CurrentMergeKey;

    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/StaticFunctionCall;->isCallOn(Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_8

    :cond_7
    or-int/lit8 v1, v1, 0x20

    :cond_8
    return v1
.end method

.method public getItemType()Lnet/sf/saxon/type/ItemType;
    .locals 1

    invoke-virtual {p0}, Lnet/sf/saxon/expr/SystemFunctionCall;->getTargetFunction()Lnet/sf/saxon/functions/SystemFunction;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/FunctionCall;->getArguments()[Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {v0, p0}, Lnet/sf/saxon/functions/SystemFunction;->getResultItemType([Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/type/ItemType;

    move-result-object p0

    return-object p0
.end method

.method public getNetCost()I
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/SystemFunctionCall;->getTargetFunction()Lnet/sf/saxon/functions/SystemFunction;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/functions/SystemFunction;->getNetCost()I

    move-result p0

    return p0
.end method

.method public getScopingExpression()Lnet/sf/saxon/expr/Expression;
    .locals 1

    const-class v0, Lnet/sf/saxon/functions/RegexGroup;

    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/StaticFunctionCall;->isCallOn(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getParentExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_1

    instance-of v0, p0, Lnet/sf/saxon/expr/instruct/AnalyzeString;

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getParentExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0

    :cond_2
    invoke-super {p0}, Lnet/sf/saxon/expr/Expression;->getScopingExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0
.end method

.method public getTargetFunction()Lnet/sf/saxon/functions/SystemFunction;
    .locals 0

    .line 2
    invoke-super {p0}, Lnet/sf/saxon/expr/StaticFunctionCall;->getTargetFunction()Lnet/sf/saxon/om/Function;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/functions/SystemFunction;

    return-object p0
.end method

.method public bridge synthetic getTargetFunction()Lnet/sf/saxon/om/Function;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lnet/sf/saxon/expr/SystemFunctionCall;->getTargetFunction()Lnet/sf/saxon/functions/SystemFunction;

    move-result-object p0

    return-object p0
.end method

.method public isLiftable(Z)Z
    .locals 1

    invoke-super {p0, p1}, Lnet/sf/saxon/expr/Expression;->isLiftable(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    const-class v0, Lnet/sf/saxon/functions/CurrentMergeGroup;

    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/StaticFunctionCall;->isCallOn(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1

    const-class v0, Lnet/sf/saxon/functions/CurrentMergeKey;

    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/StaticFunctionCall;->isCallOn(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    const-class p1, Lnet/sf/saxon/ma/map/MapFunctionSet$MapEntry;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/StaticFunctionCall;->isCallOn(Ljava/lang/Class;)Z

    move-result p0

    if-nez p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isNegatable(Lnet/sf/saxon/type/TypeHierarchy;)Z
    .locals 0

    const-class p1, Lnet/sf/saxon/functions/NotFn;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/StaticFunctionCall;->isCallOn(Ljava/lang/Class;)Z

    move-result p1

    if-nez p1, :cond_1

    const-class p1, Lnet/sf/saxon/functions/BooleanFn;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/StaticFunctionCall;->isCallOn(Ljava/lang/Class;)Z

    move-result p1

    if-nez p1, :cond_1

    const-class p1, Lnet/sf/saxon/functions/Empty;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/StaticFunctionCall;->isCallOn(Ljava/lang/Class;)Z

    move-result p1

    if-nez p1, :cond_1

    const-class p1, Lnet/sf/saxon/functions/Exists;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/StaticFunctionCall;->isCallOn(Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public isVacuousExpression()Z
    .locals 1

    const-class v0, Lnet/sf/saxon/functions/Error;

    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/StaticFunctionCall;->isCallOn(Ljava/lang/Class;)Z

    move-result p0

    return p0
.end method

.method public negate()Lnet/sf/saxon/expr/Expression;
    .locals 5

    invoke-virtual {p0}, Lnet/sf/saxon/expr/SystemFunctionCall;->getTargetFunction()Lnet/sf/saxon/functions/SystemFunction;

    move-result-object v0

    instance-of v1, v0, Lnet/sf/saxon/functions/NotFn;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {p0, v3}, Lnet/sf/saxon/expr/FunctionCall;->getArg(I)Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/expr/Expression;->getItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object v1

    sget-object v4, Lnet/sf/saxon/type/BuiltInAtomicType;->BOOLEAN:Lnet/sf/saxon/type/BuiltInAtomicType;

    if-ne v1, v4, :cond_0

    invoke-virtual {v0}, Lnet/sf/saxon/expr/Expression;->getCardinality()I

    move-result v1

    const/16 v4, 0x4000

    if-ne v1, v4, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getRetainedStaticContext()Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    move-result-object p0

    new-array v1, v2, [Lnet/sf/saxon/expr/Expression;

    aput-object v0, v1, v3

    const-string v0, "boolean"

    invoke-static {v0, p0, v1}, Lnet/sf/saxon/functions/SystemFunction;->makeCall(Ljava/lang/String;Lnet/sf/saxon/expr/parser/RetainedStaticContext;[Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0

    :cond_1
    instance-of v1, v0, Lnet/sf/saxon/functions/BooleanFn;

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getRetainedStaticContext()Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    move-result-object v0

    new-array v1, v2, [Lnet/sf/saxon/expr/Expression;

    invoke-virtual {p0, v3}, Lnet/sf/saxon/expr/FunctionCall;->getArg(I)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    aput-object p0, v1, v3

    const-string p0, "not"

    invoke-static {p0, v0, v1}, Lnet/sf/saxon/functions/SystemFunction;->makeCall(Ljava/lang/String;Lnet/sf/saxon/expr/parser/RetainedStaticContext;[Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0

    :cond_2
    instance-of v1, v0, Lnet/sf/saxon/functions/Exists;

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getRetainedStaticContext()Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    move-result-object v0

    new-array v1, v2, [Lnet/sf/saxon/expr/Expression;

    invoke-virtual {p0, v3}, Lnet/sf/saxon/expr/FunctionCall;->getArg(I)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    aput-object p0, v1, v3

    const-string p0, "empty"

    invoke-static {p0, v0, v1}, Lnet/sf/saxon/functions/SystemFunction;->makeCall(Ljava/lang/String;Lnet/sf/saxon/expr/parser/RetainedStaticContext;[Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0

    :cond_3
    instance-of v0, v0, Lnet/sf/saxon/functions/Empty;

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getRetainedStaticContext()Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    move-result-object v0

    new-array v1, v2, [Lnet/sf/saxon/expr/Expression;

    invoke-virtual {p0, v3}, Lnet/sf/saxon/expr/FunctionCall;->getArg(I)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    aput-object p0, v1, v3

    const-string p0, "exists"

    invoke-static {p0, v0, v1}, Lnet/sf/saxon/functions/SystemFunction;->makeCall(Ljava/lang/String;Lnet/sf/saxon/expr/parser/RetainedStaticContext;[Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0

    :cond_4
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public optimize(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/expr/SystemFunctionCall;->getTargetFunction()Lnet/sf/saxon/functions/SystemFunction;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/functions/SystemFunction;->getDetails()Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v0

    iget v0, v0, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->properties:I

    const/high16 v1, 0x20000

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lnet/sf/saxon/expr/SystemFunctionCall;->getTargetFunction()Lnet/sf/saxon/functions/SystemFunction;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/FunctionCall;->getArguments()[Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Lnet/sf/saxon/functions/SystemFunction;->makeOptimizedFunctionCall(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;[Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getParentExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    invoke-virtual {v0, p1}, Lnet/sf/saxon/expr/Expression;->setParentExpression(Lnet/sf/saxon/expr/Expression;)V

    invoke-static {p0, v0}, Lnet/sf/saxon/expr/parser/ExpressionTool;->copyLocationInfo(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)V

    instance-of p0, v0, Lnet/sf/saxon/expr/SystemFunctionCall;

    if-eqz p0, :cond_0

    move-object p0, v0

    check-cast p0, Lnet/sf/saxon/expr/SystemFunctionCall;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/FunctionCall;->getArguments()[Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/SystemFunctionCall;->allocateArgumentEvaluators([Lnet/sf/saxon/expr/Expression;)V

    :cond_0
    return-object v0

    :cond_1
    invoke-super {p0, p1, p2}, Lnet/sf/saxon/expr/FunctionCall;->optimize(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    if-ne v0, p0, :cond_3

    invoke-virtual {p0}, Lnet/sf/saxon/expr/SystemFunctionCall;->getTargetFunction()Lnet/sf/saxon/functions/SystemFunction;

    move-result-object v1

    invoke-virtual {p0}, Lnet/sf/saxon/expr/FunctionCall;->getArguments()[Lnet/sf/saxon/expr/Expression;

    move-result-object v2

    invoke-virtual {v1, p1, p2, v2}, Lnet/sf/saxon/functions/SystemFunction;->makeOptimizedFunctionCall(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;[Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;

    move-result-object p2

    if-eqz p2, :cond_3

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getParentExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    invoke-virtual {p2, p1}, Lnet/sf/saxon/expr/Expression;->setParentExpression(Lnet/sf/saxon/expr/Expression;)V

    invoke-static {p0, p2}, Lnet/sf/saxon/expr/parser/ExpressionTool;->copyLocationInfo(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)V

    instance-of p0, p2, Lnet/sf/saxon/expr/SystemFunctionCall;

    if-eqz p0, :cond_2

    move-object p0, p2

    check-cast p0, Lnet/sf/saxon/expr/SystemFunctionCall;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/FunctionCall;->getArguments()[Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/SystemFunctionCall;->allocateArgumentEvaluators([Lnet/sf/saxon/expr/Expression;)V

    :cond_2
    return-object p2

    :cond_3
    invoke-virtual {p1}, Lnet/sf/saxon/expr/parser/ExpressionVisitor;->obtainOptimizer()Lnet/sf/saxon/expr/parser/Optimizer;

    move-result-object p2

    instance-of v1, v0, Lnet/sf/saxon/expr/SystemFunctionCall;

    if-eqz v1, :cond_7

    const v1, 0x8000

    invoke-virtual {p2, v1}, Lnet/sf/saxon/expr/parser/Optimizer;->isOptionSet(I)Z

    move-result p2

    if-eqz p2, :cond_7

    move-object p2, v0

    check-cast p2, Lnet/sf/saxon/expr/SystemFunctionCall;

    invoke-virtual {p2}, Lnet/sf/saxon/expr/SystemFunctionCall;->getTargetFunction()Lnet/sf/saxon/functions/SystemFunction;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sf/saxon/functions/SystemFunction;->getDetails()Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v1

    iget v2, v1, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->properties:I

    and-int/lit16 v2, v2, 0x400

    const/4 v3, 0x0

    if-eqz v2, :cond_4

    invoke-virtual {p0, v3}, Lnet/sf/saxon/expr/FunctionCall;->getArg(I)Lnet/sf/saxon/expr/Expression;

    move-result-object v2

    invoke-virtual {p1}, Lnet/sf/saxon/expr/parser/ExpressionVisitor;->isOptimizeForStreaming()Z

    move-result p1

    const/4 v4, 0x1

    invoke-virtual {v2, v4, p1}, Lnet/sf/saxon/expr/Expression;->unordered(ZZ)Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    invoke-virtual {p0, v3, p1}, Lnet/sf/saxon/expr/FunctionCall;->setArg(ILnet/sf/saxon/expr/Expression;)V

    :cond_4
    invoke-virtual {p0}, Lnet/sf/saxon/expr/FunctionCall;->getArity()I

    move-result p1

    iget-object v2, v1, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->resultIfEmpty:[Lnet/sf/saxon/om/Sequence;

    array-length v2, v2

    if-gt p1, v2, :cond_6

    :goto_0
    invoke-virtual {p0}, Lnet/sf/saxon/expr/FunctionCall;->getArity()I

    move-result p1

    if-ge v3, p1, :cond_6

    invoke-virtual {p0, v3}, Lnet/sf/saxon/expr/FunctionCall;->getArg(I)Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    invoke-static {p1}, Lnet/sf/saxon/expr/Literal;->isEmptySequence(Lnet/sf/saxon/expr/Expression;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, v1, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->resultIfEmpty:[Lnet/sf/saxon/om/Sequence;

    aget-object p1, p1, v3

    if-eqz p1, :cond_5

    invoke-interface {p1}, Lnet/sf/saxon/om/Sequence;->materialize()Lnet/sf/saxon/om/GroundedValue;

    move-result-object p1

    invoke-static {p1, p0}, Lnet/sf/saxon/expr/Literal;->makeLiteral(Lnet/sf/saxon/om/GroundedValue;Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Literal;

    move-result-object p0

    return-object p0

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_6
    invoke-virtual {p2}, Lnet/sf/saxon/expr/FunctionCall;->getArguments()[Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {p2, p0}, Lnet/sf/saxon/expr/SystemFunctionCall;->allocateArgumentEvaluators([Lnet/sf/saxon/expr/Expression;)V

    :cond_7
    return-object v0
.end method

.method public preEvaluate(Lnet/sf/saxon/expr/parser/ExpressionVisitor;)Lnet/sf/saxon/expr/Expression;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/expr/SystemFunctionCall;->getTargetFunction()Lnet/sf/saxon/functions/SystemFunction;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/functions/SystemFunction;->getDetails()Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v0

    iget v0, v0, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->properties:I

    and-int/lit16 v0, v0, 0x200

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Lnet/sf/saxon/expr/FunctionCall;->preEvaluate(Lnet/sf/saxon/expr/parser/ExpressionVisitor;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public process(Lnet/sf/saxon/event/Outputter;Lnet/sf/saxon/expr/XPathContext;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/expr/SystemFunctionCall;->getTargetFunction()Lnet/sf/saxon/functions/SystemFunction;

    move-result-object v0

    instance-of v1, v0, Lnet/sf/saxon/functions/PushableFunction;

    if-eqz v1, :cond_0

    invoke-virtual {p0, p2}, Lnet/sf/saxon/expr/SystemFunctionCall;->evaluateArguments(Lnet/sf/saxon/expr/XPathContext;)[Lnet/sf/saxon/om/Sequence;

    move-result-object v1

    :try_start_0
    check-cast v0, Lnet/sf/saxon/functions/PushableFunction;

    invoke-interface {v0, p1, p2, v1}, Lnet/sf/saxon/functions/PushableFunction;->process(Lnet/sf/saxon/event/Outputter;Lnet/sf/saxon/expr/XPathContext;[Lnet/sf/saxon/om/Sequence;)V
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object v0

    invoke-virtual {p1, v0}, Lnet/sf/saxon/trans/XPathException;->maybeSetLocation(Lnet/sf/saxon/s9api/Location;)V

    invoke-virtual {p1, p2}, Lnet/sf/saxon/trans/XPathException;->maybeSetContext(Lnet/sf/saxon/expr/XPathContext;)V

    invoke-virtual {p1, p0}, Lnet/sf/saxon/trans/XPathException;->maybeSetFailingExpression(Lnet/sf/saxon/expr/Expression;)V

    throw p1

    :cond_0
    invoke-super {p0, p1, p2}, Lnet/sf/saxon/expr/Expression;->process(Lnet/sf/saxon/event/Outputter;Lnet/sf/saxon/expr/XPathContext;)V

    :goto_0
    return-void
.end method

.method public resetLocalStaticProperties()V
    .locals 1

    invoke-super {p0}, Lnet/sf/saxon/expr/Expression;->resetLocalStaticProperties()V

    iget-object v0, p0, Lnet/sf/saxon/expr/SystemFunctionCall;->argumentEvaluators:[Lnet/sf/saxon/expr/parser/Evaluator;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/FunctionCall;->getArguments()[Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/SystemFunctionCall;->allocateArgumentEvaluators([Lnet/sf/saxon/expr/Expression;)V

    :cond_0
    return-void
.end method

.method public setRetainedStaticContext(Lnet/sf/saxon/expr/parser/RetainedStaticContext;)V
    .locals 0

    invoke-super {p0, p1}, Lnet/sf/saxon/expr/Expression;->setRetainedStaticContext(Lnet/sf/saxon/expr/parser/RetainedStaticContext;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/SystemFunctionCall;->getTargetFunction()Lnet/sf/saxon/functions/SystemFunction;

    move-result-object p0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/functions/SystemFunction;->setRetainedStaticContext(Lnet/sf/saxon/expr/parser/RetainedStaticContext;)V

    return-void
.end method

.method public toPattern(Lnet/sf/saxon/Configuration;)Lnet/sf/saxon/pattern/Pattern;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/expr/SystemFunctionCall;->getTargetFunction()Lnet/sf/saxon/functions/SystemFunction;

    move-result-object v0

    instance-of v0, v0, Lnet/sf/saxon/functions/Root_1;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/FunctionCall;->getArg(I)Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    instance-of v1, v1, Lnet/sf/saxon/expr/ContextItemExpression;

    if-nez v1, :cond_0

    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/FunctionCall;->getArg(I)Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    instance-of v1, v1, Lnet/sf/saxon/expr/ItemChecker;

    if-eqz v1, :cond_1

    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/FunctionCall;->getArg(I)Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/expr/ItemChecker;

    invoke-virtual {v0}, Lnet/sf/saxon/expr/UnaryExpression;->getBaseExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    instance-of v0, v0, Lnet/sf/saxon/expr/ContextItemExpression;

    if-eqz v0, :cond_1

    :cond_0
    new-instance p1, Lnet/sf/saxon/pattern/NodeSetPattern;

    invoke-direct {p1, p0}, Lnet/sf/saxon/pattern/NodeSetPattern;-><init>(Lnet/sf/saxon/expr/Expression;)V

    return-object p1

    :cond_1
    invoke-super {p0, p1}, Lnet/sf/saxon/expr/Expression;->toPattern(Lnet/sf/saxon/Configuration;)Lnet/sf/saxon/pattern/Pattern;

    move-result-object p0

    return-object p0
.end method

.method public typeCheck(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/expr/Expression;->typeCheckChildren(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/SystemFunctionCall;->getTargetFunction()Lnet/sf/saxon/functions/SystemFunction;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lnet/sf/saxon/expr/FunctionCall;->checkFunctionCall(Lnet/sf/saxon/om/Function;Lnet/sf/saxon/expr/parser/ExpressionVisitor;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/SystemFunctionCall;->getTargetFunction()Lnet/sf/saxon/functions/SystemFunction;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/FunctionCall;->getArguments()[Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Lnet/sf/saxon/functions/SystemFunction;->supplyTypeInformation(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;[Lnet/sf/saxon/expr/Expression;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/SystemFunctionCall;->getTargetFunction()Lnet/sf/saxon/functions/SystemFunction;

    move-result-object p2

    invoke-virtual {p2}, Lnet/sf/saxon/functions/SystemFunction;->getDetails()Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object p2

    iget p2, p2, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->properties:I

    and-int/lit16 p2, p2, 0x200

    if-nez p2, :cond_0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/FunctionCall;->preEvaluateIfConstant(Lnet/sf/saxon/expr/parser/ExpressionVisitor;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/expr/FunctionCall;->getArguments()[Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/SystemFunctionCall;->allocateArgumentEvaluators([Lnet/sf/saxon/expr/Expression;)V

    return-object p0
.end method

.method public unordered(ZZ)Lnet/sf/saxon/expr/Expression;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/expr/SystemFunctionCall;->getTargetFunction()Lnet/sf/saxon/functions/SystemFunction;

    move-result-object v0

    instance-of v1, v0, Lnet/sf/saxon/functions/Reverse;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {p0, v2}, Lnet/sf/saxon/expr/FunctionCall;->getArg(I)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0

    :cond_0
    instance-of v0, v0, Lnet/sf/saxon/functions/TreatFn;

    if-eqz v0, :cond_1

    invoke-virtual {p0, v2}, Lnet/sf/saxon/expr/FunctionCall;->getArg(I)Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lnet/sf/saxon/expr/Expression;->unordered(ZZ)Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    invoke-virtual {p0, v2, p1}, Lnet/sf/saxon/expr/FunctionCall;->setArg(ILnet/sf/saxon/expr/Expression;)V

    :cond_1
    return-object p0
.end method
