.class public Lnet/sf/saxon/expr/StaticFunctionCall;
.super Lnet/sf/saxon/expr/FunctionCall;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/expr/Callable;


# instance fields
.field public final o:Lnet/sf/saxon/om/Function;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/om/Function;[Lnet/sf/saxon/expr/Expression;)V
    .locals 2

    invoke-direct {p0}, Lnet/sf/saxon/expr/FunctionCall;-><init>()V

    invoke-interface {p1}, Lnet/sf/saxon/om/Function;->getArity()I

    move-result v0

    array-length v1, p2

    if-ne v0, v1, :cond_0

    iput-object p1, p0, Lnet/sf/saxon/expr/StaticFunctionCall;->o:Lnet/sf/saxon/om/Function;

    invoke-interface {p1}, Lnet/sf/saxon/om/Function;->getOperandRoles()[Lnet/sf/saxon/expr/OperandRole;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lnet/sf/saxon/expr/FunctionCall;->setOperanda([Lnet/sf/saxon/expr/Expression;[Lnet/sf/saxon/expr/OperandRole;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Function call to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lnet/sf/saxon/om/Function;->getFunctionName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " with wrong number of arguments ("

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p2

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public call(Lnet/sf/saxon/expr/XPathContext;[Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/om/Sequence;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object p0, p0, Lnet/sf/saxon/expr/StaticFunctionCall;->o:Lnet/sf/saxon/om/Function;

    invoke-interface {p0, p1, p2}, Lnet/sf/saxon/expr/Callable;->call(Lnet/sf/saxon/expr/XPathContext;[Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/om/Sequence;

    move-result-object p0

    return-object p0
.end method

.method public computeCardinality()I
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/StaticFunctionCall;->o:Lnet/sf/saxon/om/Function;

    invoke-interface {p0}, Lnet/sf/saxon/om/Function;->getFunctionItemType()Lnet/sf/saxon/type/FunctionItemType;

    move-result-object p0

    invoke-interface {p0}, Lnet/sf/saxon/type/FunctionItemType;->getResultType()Lnet/sf/saxon/value/SequenceType;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/value/SequenceType;->getCardinality()I

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
    new-instance p1, Lnet/sf/saxon/expr/StaticFunctionCall;

    iget-object p0, p0, Lnet/sf/saxon/expr/StaticFunctionCall;->o:Lnet/sf/saxon/om/Function;

    invoke-direct {p1, p0, v1}, Lnet/sf/saxon/expr/StaticFunctionCall;-><init>(Lnet/sf/saxon/om/Function;[Lnet/sf/saxon/expr/Expression;)V

    return-object p1
.end method

.method public export(Lnet/sf/saxon/trace/ExpressionPresenter;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/expr/StaticFunctionCall;->o:Lnet/sf/saxon/om/Function;

    instance-of v1, v0, Lnet/sf/saxon/expr/instruct/OriginalFunction;

    const-string v2, ""

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lnet/sf/saxon/trace/ExpressionPresenter;->getOptions()Lnet/sf/saxon/trace/ExpressionPresenter$Options;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/trace/ExpressionPresenter$ExportOptions;

    iget-object v1, p0, Lnet/sf/saxon/expr/StaticFunctionCall;->o:Lnet/sf/saxon/om/Function;

    check-cast v1, Lnet/sf/saxon/expr/instruct/OriginalFunction;

    const-string v3, "origFC"

    invoke-virtual {p1, v3, p0}, Lnet/sf/saxon/trace/ExpressionPresenter;->startElement(Ljava/lang/String;Lnet/sf/saxon/expr/Expression;)I

    invoke-virtual {v1}, Lnet/sf/saxon/expr/instruct/OriginalFunction;->getFunctionName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v3

    const-string v4, "name"

    invoke-virtual {p1, v4, v3}, Lnet/sf/saxon/trace/ExpressionPresenter;->emitAttribute(Ljava/lang/String;Lnet/sf/saxon/om/StructuredQName;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v0, Lnet/sf/saxon/trace/ExpressionPresenter$ExportOptions;->packageMap:Ljava/util/Map;

    invoke-virtual {v1}, Lnet/sf/saxon/expr/instruct/OriginalFunction;->getComponent()Lnet/sf/saxon/expr/Component;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sf/saxon/expr/Component;->getContainingPackage()Lnet/sf/saxon/style/StylesheetPackage;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "pack"

    invoke-virtual {p1, v1, v0}, Lnet/sf/saxon/trace/ExpressionPresenter;->emitAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/FunctionCall;->operands()Ljava/lang/Iterable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/expr/Operand;

    invoke-virtual {v0}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/sf/saxon/expr/Expression;->export(Lnet/sf/saxon/trace/ExpressionPresenter;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lnet/sf/saxon/trace/ExpressionPresenter;->endElement()I

    goto/16 :goto_7

    :cond_1
    instance-of v1, v0, Lnet/sf/saxon/expr/UnionCastableFunction;

    const-string v3, "u"

    const-string v4, "to"

    const-string v5, "castable"

    const-string v6, "e"

    const-string v7, "flags"

    const-string v8, "as"

    if-eqz v1, :cond_5

    check-cast v0, Lnet/sf/saxon/expr/UnionConstructorFunction;

    invoke-virtual {v0}, Lnet/sf/saxon/expr/UnionConstructorFunction;->getTargetType()Lnet/sf/saxon/type/UnionType;

    move-result-object v0

    invoke-virtual {p1, v5, p0}, Lnet/sf/saxon/trace/ExpressionPresenter;->startElement(Ljava/lang/String;Lnet/sf/saxon/expr/Expression;)I

    instance-of v1, v0, Lnet/sf/saxon/type/LocalUnionType;

    if-eqz v1, :cond_2

    invoke-static {v0}, Lnet/sf/saxon/type/AlphaCode;->fromItemType(Lnet/sf/saxon/type/ItemType;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v4, v0}, Lnet/sf/saxon/trace/ExpressionPresenter;->emitAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    invoke-interface {v0}, Lnet/sf/saxon/type/ItemType;->toExportString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v8, v0}, Lnet/sf/saxon/trace/ExpressionPresenter;->emitAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/sf/saxon/expr/StaticFunctionCall;->o:Lnet/sf/saxon/om/Function;

    check-cast v1, Lnet/sf/saxon/expr/UnionConstructorFunction;

    invoke-virtual {v1}, Lnet/sf/saxon/expr/UnionConstructorFunction;->isAllowEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    move-object v2, v6

    :cond_3
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v7, v0}, Lnet/sf/saxon/trace/ExpressionPresenter;->emitAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/FunctionCall;->operands()Ljava/lang/Iterable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/expr/Operand;

    invoke-virtual {v0}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/sf/saxon/expr/Expression;->export(Lnet/sf/saxon/trace/ExpressionPresenter;)V

    goto :goto_2

    :cond_4
    invoke-virtual {p1}, Lnet/sf/saxon/trace/ExpressionPresenter;->endElement()I

    goto/16 :goto_7

    :cond_5
    instance-of v1, v0, Lnet/sf/saxon/expr/ListCastableFunction;

    const-string v9, "l"

    if-eqz v1, :cond_8

    invoke-virtual {p1, v5, p0}, Lnet/sf/saxon/trace/ExpressionPresenter;->startElement(Ljava/lang/String;Lnet/sf/saxon/expr/Expression;)I

    iget-object v0, p0, Lnet/sf/saxon/expr/StaticFunctionCall;->o:Lnet/sf/saxon/om/Function;

    check-cast v0, Lnet/sf/saxon/expr/ListConstructorFunction;

    invoke-virtual {v0}, Lnet/sf/saxon/expr/ListConstructorFunction;->getTargetType()Lnet/sf/saxon/type/ListType;

    move-result-object v0

    invoke-interface {v0}, Lnet/sf/saxon/type/SchemaType;->getStructuredQName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v0

    invoke-virtual {p1, v8, v0}, Lnet/sf/saxon/trace/ExpressionPresenter;->emitAttribute(Ljava/lang/String;Lnet/sf/saxon/om/StructuredQName;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/sf/saxon/expr/StaticFunctionCall;->o:Lnet/sf/saxon/om/Function;

    check-cast v1, Lnet/sf/saxon/expr/ListConstructorFunction;

    invoke-virtual {v1}, Lnet/sf/saxon/expr/ListConstructorFunction;->isAllowEmpty()Z

    move-result v1

    if-eqz v1, :cond_6

    move-object v2, v6

    :cond_6
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v7, v0}, Lnet/sf/saxon/trace/ExpressionPresenter;->emitAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/FunctionCall;->operands()Ljava/lang/Iterable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/expr/Operand;

    invoke-virtual {v0}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/sf/saxon/expr/Expression;->export(Lnet/sf/saxon/trace/ExpressionPresenter;)V

    goto :goto_3

    :cond_7
    invoke-virtual {p1}, Lnet/sf/saxon/trace/ExpressionPresenter;->endElement()I

    goto/16 :goto_7

    :cond_8
    instance-of v1, v0, Lnet/sf/saxon/expr/UnionConstructorFunction;

    const-string v5, "cast"

    if-eqz v1, :cond_c

    check-cast v0, Lnet/sf/saxon/expr/UnionConstructorFunction;

    invoke-virtual {v0}, Lnet/sf/saxon/expr/UnionConstructorFunction;->getTargetType()Lnet/sf/saxon/type/UnionType;

    move-result-object v0

    invoke-virtual {p1, v5, p0}, Lnet/sf/saxon/trace/ExpressionPresenter;->startElement(Ljava/lang/String;Lnet/sf/saxon/expr/Expression;)I

    instance-of v1, v0, Lnet/sf/saxon/type/LocalUnionType;

    if-eqz v1, :cond_9

    invoke-static {v0}, Lnet/sf/saxon/type/AlphaCode;->fromItemType(Lnet/sf/saxon/type/ItemType;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v4, v0}, Lnet/sf/saxon/trace/ExpressionPresenter;->emitAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_9
    invoke-interface {v0}, Lnet/sf/saxon/type/ItemType;->toExportString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v8, v0}, Lnet/sf/saxon/trace/ExpressionPresenter;->emitAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :goto_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/sf/saxon/expr/StaticFunctionCall;->o:Lnet/sf/saxon/om/Function;

    check-cast v1, Lnet/sf/saxon/expr/UnionConstructorFunction;

    invoke-virtual {v1}, Lnet/sf/saxon/expr/UnionConstructorFunction;->isAllowEmpty()Z

    move-result v1

    if-eqz v1, :cond_a

    move-object v2, v6

    :cond_a
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v7, v0}, Lnet/sf/saxon/trace/ExpressionPresenter;->emitAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/FunctionCall;->operands()Ljava/lang/Iterable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_5
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/expr/Operand;

    invoke-virtual {v0}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/sf/saxon/expr/Expression;->export(Lnet/sf/saxon/trace/ExpressionPresenter;)V

    goto :goto_5

    :cond_b
    invoke-virtual {p1}, Lnet/sf/saxon/trace/ExpressionPresenter;->endElement()I

    goto :goto_7

    :cond_c
    instance-of v0, v0, Lnet/sf/saxon/expr/ListConstructorFunction;

    if-eqz v0, :cond_f

    invoke-virtual {p1, v5, p0}, Lnet/sf/saxon/trace/ExpressionPresenter;->startElement(Ljava/lang/String;Lnet/sf/saxon/expr/Expression;)I

    iget-object v0, p0, Lnet/sf/saxon/expr/StaticFunctionCall;->o:Lnet/sf/saxon/om/Function;

    check-cast v0, Lnet/sf/saxon/expr/ListConstructorFunction;

    invoke-virtual {v0}, Lnet/sf/saxon/expr/ListConstructorFunction;->getTargetType()Lnet/sf/saxon/type/ListType;

    move-result-object v0

    invoke-interface {v0}, Lnet/sf/saxon/type/SchemaType;->getStructuredQName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v0

    invoke-virtual {p1, v8, v0}, Lnet/sf/saxon/trace/ExpressionPresenter;->emitAttribute(Ljava/lang/String;Lnet/sf/saxon/om/StructuredQName;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/sf/saxon/expr/StaticFunctionCall;->o:Lnet/sf/saxon/om/Function;

    check-cast v1, Lnet/sf/saxon/expr/ListConstructorFunction;

    invoke-virtual {v1}, Lnet/sf/saxon/expr/ListConstructorFunction;->isAllowEmpty()Z

    move-result v1

    if-eqz v1, :cond_d

    move-object v2, v6

    :cond_d
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v7, v0}, Lnet/sf/saxon/trace/ExpressionPresenter;->emitAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/FunctionCall;->operands()Ljava/lang/Iterable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/expr/Operand;

    invoke-virtual {v0}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/sf/saxon/expr/Expression;->export(Lnet/sf/saxon/trace/ExpressionPresenter;)V

    goto :goto_6

    :cond_e
    invoke-virtual {p1}, Lnet/sf/saxon/trace/ExpressionPresenter;->endElement()I

    goto :goto_7

    :cond_f
    invoke-super {p0, p1}, Lnet/sf/saxon/expr/FunctionCall;->export(Lnet/sf/saxon/trace/ExpressionPresenter;)V

    :goto_7
    return-void
.end method

.method public getExpressionName()Ljava/lang/String;
    .locals 0

    const-string p0, "staticFunctionCall"

    return-object p0
.end method

.method public getFunctionName()Lnet/sf/saxon/om/StructuredQName;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/StaticFunctionCall;->o:Lnet/sf/saxon/om/Function;

    invoke-interface {p0}, Lnet/sf/saxon/om/Function;->getFunctionName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object p0

    return-object p0
.end method

.method public getItemType()Lnet/sf/saxon/type/ItemType;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/StaticFunctionCall;->o:Lnet/sf/saxon/om/Function;

    invoke-interface {p0}, Lnet/sf/saxon/om/Function;->getFunctionItemType()Lnet/sf/saxon/type/FunctionItemType;

    move-result-object p0

    invoke-interface {p0}, Lnet/sf/saxon/type/FunctionItemType;->getResultType()Lnet/sf/saxon/value/SequenceType;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/value/SequenceType;->getPrimaryType()Lnet/sf/saxon/type/ItemType;

    move-result-object p0

    return-object p0
.end method

.method public getStaticUType(Lnet/sf/saxon/type/UType;)Lnet/sf/saxon/type/UType;
    .locals 4

    invoke-virtual {p0}, Lnet/sf/saxon/expr/StaticFunctionCall;->getItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object v0

    invoke-interface {v0}, Lnet/sf/saxon/type/ItemType;->getUType()Lnet/sf/saxon/type/UType;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/FunctionCall;->operands()Ljava/lang/Iterable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/expr/Operand;

    invoke-virtual {v1}, Lnet/sf/saxon/expr/Operand;->getUsage()Lnet/sf/saxon/expr/OperandUsage;

    move-result-object v2

    sget-object v3, Lnet/sf/saxon/expr/OperandUsage;->TRANSMISSION:Lnet/sf/saxon/expr/OperandUsage;

    if-ne v2, v3, :cond_0

    invoke-virtual {v1}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-virtual {v1, p1}, Lnet/sf/saxon/expr/Expression;->getStaticUType(Lnet/sf/saxon/type/UType;)Lnet/sf/saxon/type/UType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/sf/saxon/type/UType;->intersection(Lnet/sf/saxon/type/UType;)Lnet/sf/saxon/type/UType;

    move-result-object v0

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getTargetFunction()Lnet/sf/saxon/om/Function;
    .locals 0

    .line 1
    iget-object p0, p0, Lnet/sf/saxon/expr/StaticFunctionCall;->o:Lnet/sf/saxon/om/Function;

    return-object p0
.end method

.method public getTargetFunction(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/Function;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lnet/sf/saxon/expr/StaticFunctionCall;->getTargetFunction()Lnet/sf/saxon/om/Function;

    move-result-object p0

    return-object p0
.end method

.method public isCallOn(Ljava/lang/Class;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lnet/sf/saxon/functions/SystemFunction;",
            ">;)Z"
        }
    .end annotation

    iget-object p0, p0, Lnet/sf/saxon/expr/StaticFunctionCall;->o:Lnet/sf/saxon/om/Function;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0

    return p0
.end method

.method public typeCheck(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/expr/StaticFunctionCall;->o:Lnet/sf/saxon/om/Function;

    invoke-virtual {p0, v0, p1}, Lnet/sf/saxon/expr/FunctionCall;->checkFunctionCall(Lnet/sf/saxon/om/Function;Lnet/sf/saxon/expr/parser/ExpressionVisitor;)V

    invoke-super {p0, p1, p2}, Lnet/sf/saxon/expr/FunctionCall;->typeCheck(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0
.end method
