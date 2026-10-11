.class public Lnet/sf/saxon/functions/ApplyFn;
.super Lnet/sf/saxon/functions/SystemFunction;
.source "SourceFile"


# instance fields
.field public h:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnet/sf/saxon/functions/SystemFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;[Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const/4 p0, 0x0

    aget-object v0, p4, p0

    const/4 v1, 0x1

    aget-object p4, p4, v1

    check-cast p4, Lnet/sf/saxon/ma/arrays/SquareArrayConstructor;

    invoke-virtual {p4}, Lnet/sf/saxon/ma/arrays/SquareArrayConstructor;->getOperanda()Lnet/sf/saxon/expr/oper/OperandArray;

    move-result-object p4

    invoke-virtual {p4, p0}, Lnet/sf/saxon/expr/oper/OperandArray;->getOperand(I)Lnet/sf/saxon/expr/Operand;

    move-result-object p4

    invoke-virtual {p4}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p4

    const-string v2, "get"

    const/4 v3, 0x2

    invoke-virtual {p2, v2, v3}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->makeFunction(Ljava/lang/String;I)Lnet/sf/saxon/functions/SystemFunction;

    move-result-object v2

    new-array v3, v3, [Lnet/sf/saxon/expr/Expression;

    aput-object v0, v3, p0

    aput-object p4, v3, v1

    invoke-virtual {v2, v3}, Lnet/sf/saxon/functions/SystemFunction;->makeFunctionCall([Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;

    move-result-object v2

    invoke-virtual {v0}, Lnet/sf/saxon/expr/Expression;->getRetainedStaticContext()Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    move-result-object v0

    invoke-virtual {v2, v0}, Lnet/sf/saxon/expr/Expression;->setRetainedStaticContext(Lnet/sf/saxon/expr/parser/RetainedStaticContext;)V

    invoke-virtual {p1}, Lnet/sf/saxon/expr/parser/ExpressionVisitor;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v0

    invoke-virtual {p1}, Lnet/sf/saxon/expr/parser/ExpressionVisitor;->getStaticContext()Lnet/sf/saxon/expr/StaticContext;

    move-result-object v3

    invoke-interface {v3}, Lnet/sf/saxon/expr/StaticContext;->isInBackwardsCompatibleMode()Z

    move-result v3

    invoke-virtual {v0, v3}, Lnet/sf/saxon/Configuration;->getTypeChecker(Z)Lnet/sf/saxon/expr/parser/TypeChecker;

    move-result-object v0

    invoke-static {}, Lnet/sf/saxon/ma/map/MapFunctionSet;->getInstance()Lnet/sf/saxon/ma/map/MapFunctionSet;

    move-result-object v3

    const/16 v4, 0x14

    if-ne p2, v3, :cond_0

    new-instance p2, Lnet/sf/saxon/expr/parser/RoleDiagnostic;

    const-string v3, "key value supplied when calling a map as a function"

    invoke-direct {p2, v4, v3, p0}, Lnet/sf/saxon/expr/parser/RoleDiagnostic;-><init>(ILjava/lang/String;I)V

    move-object p0, v2

    check-cast p0, Lnet/sf/saxon/expr/SystemFunctionCall;

    sget-object v3, Lnet/sf/saxon/value/SequenceType;->SINGLE_ATOMIC:Lnet/sf/saxon/value/SequenceType;

    invoke-virtual {v0, p4, v3, p2, p1}, Lnet/sf/saxon/expr/parser/TypeChecker;->staticTypeCheck(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/value/SequenceType;Lnet/sf/saxon/expr/parser/RoleDiagnostic;Lnet/sf/saxon/expr/parser/ExpressionVisitor;)Lnet/sf/saxon/expr/Expression;

    move-result-object p2

    invoke-virtual {p0, v1, p2}, Lnet/sf/saxon/expr/FunctionCall;->setArg(ILnet/sf/saxon/expr/Expression;)V

    goto :goto_0

    :cond_0
    new-instance p2, Lnet/sf/saxon/expr/parser/RoleDiagnostic;

    const-string v3, "subscript supplied when calling an array as a function"

    invoke-direct {p2, v4, v3, p0}, Lnet/sf/saxon/expr/parser/RoleDiagnostic;-><init>(ILjava/lang/String;I)V

    move-object p0, v2

    check-cast p0, Lnet/sf/saxon/expr/SystemFunctionCall;

    sget-object v3, Lnet/sf/saxon/value/SequenceType;->SINGLE_INTEGER:Lnet/sf/saxon/value/SequenceType;

    invoke-virtual {v0, p4, v3, p2, p1}, Lnet/sf/saxon/expr/parser/TypeChecker;->staticTypeCheck(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/value/SequenceType;Lnet/sf/saxon/expr/parser/RoleDiagnostic;Lnet/sf/saxon/expr/parser/ExpressionVisitor;)Lnet/sf/saxon/expr/Expression;

    move-result-object p2

    invoke-virtual {p0, v1, p2}, Lnet/sf/saxon/expr/FunctionCall;->setArg(ILnet/sf/saxon/expr/Expression;)V

    :goto_0
    invoke-virtual {v2, p1, p3}, Lnet/sf/saxon/expr/Expression;->typeCheck(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0
.end method

.method public call(Lnet/sf/saxon/expr/XPathContext;[Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/om/Sequence;
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    move-object/from16 v0, p1

    const/4 v1, 0x0

    aget-object v2, p2, v1

    invoke-interface {v2}, Lnet/sf/saxon/om/Sequence;->head()Lnet/sf/saxon/om/Item;

    move-result-object v2

    check-cast v2, Lnet/sf/saxon/om/Function;

    invoke-interface/range {p1 .. p1}, Lnet/sf/saxon/expr/XPathContext;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v3

    invoke-virtual {v3}, Lnet/sf/saxon/Configuration;->getTypeHierarchy()Lnet/sf/saxon/type/TypeHierarchy;

    move-result-object v3

    invoke-interface {v2}, Lnet/sf/saxon/om/Function;->getFunctionItemType()Lnet/sf/saxon/type/FunctionItemType;

    move-result-object v4

    const/4 v5, 0x1

    aget-object v6, p2, v5

    invoke-interface {v6}, Lnet/sf/saxon/om/Sequence;->head()Lnet/sf/saxon/om/Item;

    move-result-object v6

    check-cast v6, Lnet/sf/saxon/ma/arrays/ArrayItem;

    invoke-interface {v2}, Lnet/sf/saxon/om/Function;->getArity()I

    move-result v7

    invoke-virtual {v6}, Lnet/sf/saxon/ma/arrays/ArrayItem;->arrayLength()I

    move-result v8

    if-eq v7, v8, :cond_1

    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/functions/ApplyFn;->isDynamicFunctionCall()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "XPTY0004"

    goto :goto_0

    :cond_0
    const-string v1, "FOAP0001"

    :goto_0
    new-instance v3, Lnet/sf/saxon/trans/XPathException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Number of arguments required for dynamic call to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Lnet/sf/saxon/om/Function;->getDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Lnet/sf/saxon/om/Function;->getArity()I

    move-result v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "; number supplied = "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lnet/sf/saxon/ma/arrays/ArrayItem;->arrayLength()I

    move-result v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2, v1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/functions/ApplyFn;->isDynamicFunctionCall()Z

    move-result v1

    invoke-virtual {v3, v1}, Lnet/sf/saxon/trans/XPathException;->setIsTypeError(Z)V

    invoke-virtual {v3, v0}, Lnet/sf/saxon/trans/XPathException;->setXPathContext(Lnet/sf/saxon/expr/XPathContext;)V

    throw v3

    :cond_1
    invoke-virtual {v6}, Lnet/sf/saxon/ma/arrays/ArrayItem;->arrayLength()I

    move-result v7

    new-array v8, v7, [Lnet/sf/saxon/om/Sequence;

    sget-object v9, Lnet/sf/saxon/type/AnyFunctionType;->ANY_FUNCTION:Lnet/sf/saxon/type/AnyFunctionType;

    const-string v10, "fn:apply"

    if-ne v4, v9, :cond_2

    :goto_1
    if-ge v1, v7, :cond_4

    invoke-virtual {v6, v1}, Lnet/sf/saxon/ma/arrays/ArrayItem;->get(I)Lnet/sf/saxon/om/GroundedValue;

    move-result-object v9

    aput-object v9, v8, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    move v9, v1

    :goto_2
    if-ge v9, v7, :cond_4

    invoke-interface {v4}, Lnet/sf/saxon/type/FunctionItemType;->getArgumentTypes()[Lnet/sf/saxon/value/SequenceType;

    move-result-object v11

    aget-object v11, v11, v9

    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/functions/ApplyFn;->isDynamicFunctionCall()Z

    move-result v12

    if-eqz v12, :cond_3

    new-instance v12, Lnet/sf/saxon/expr/parser/RoleDiagnostic;

    move-object/from16 v13, p0

    iget-object v14, v13, Lnet/sf/saxon/functions/ApplyFn;->h:Ljava/lang/String;

    invoke-virtual {v14}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v12, v1, v14, v1}, Lnet/sf/saxon/expr/parser/RoleDiagnostic;-><init>(ILjava/lang/String;I)V

    goto :goto_3

    :cond_3
    move-object/from16 v13, p0

    new-instance v12, Lnet/sf/saxon/expr/parser/RoleDiagnostic;

    add-int/lit8 v14, v9, 0x1

    invoke-direct {v12, v1, v10, v14}, Lnet/sf/saxon/expr/parser/RoleDiagnostic;-><init>(ILjava/lang/String;I)V

    :goto_3
    invoke-virtual {v6, v9}, Lnet/sf/saxon/ma/arrays/ArrayItem;->get(I)Lnet/sf/saxon/om/GroundedValue;

    move-result-object v14

    sget-object v15, Lnet/sf/saxon/expr/parser/Loc;->NONE:Lnet/sf/saxon/expr/parser/Loc;

    invoke-virtual {v3, v14, v11, v12, v15}, Lnet/sf/saxon/type/TypeHierarchy;->applyFunctionConversionRules(Lnet/sf/saxon/om/Sequence;Lnet/sf/saxon/value/SequenceType;Lnet/sf/saxon/expr/parser/RoleDiagnostic;Lnet/sf/saxon/s9api/Location;)Lnet/sf/saxon/om/GroundedValue;

    move-result-object v11

    invoke-interface {v11}, Lnet/sf/saxon/om/Sequence;->materialize()Lnet/sf/saxon/om/GroundedValue;

    move-result-object v11

    aput-object v11, v8, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_4
    invoke-interface {v2}, Lnet/sf/saxon/om/Function;->isSequenceVariadic()Z

    move-result v1

    if-eqz v1, :cond_7

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    aget-object v6, p2, v5

    invoke-interface {v6}, Lnet/sf/saxon/om/Sequence;->head()Lnet/sf/saxon/om/Item;

    move-result-object v6

    check-cast v6, Lnet/sf/saxon/ma/arrays/ArrayItem;

    invoke-virtual {v6}, Lnet/sf/saxon/ma/arrays/ArrayItem;->members()Ljava/lang/Iterable;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lnet/sf/saxon/om/GroundedValue;

    invoke-interface {v7}, Lnet/sf/saxon/om/GroundedValue;->asIterable()Ljava/lang/Iterable;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lnet/sf/saxon/om/Item;

    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_6
    invoke-static {v1}, Lnet/sf/saxon/value/SequenceExtent;->makeSequenceExtent(Ljava/util/List;)Lnet/sf/saxon/om/GroundedValue;

    move-result-object v1

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    invoke-static {v2, v0, v8}, Lnet/sf/saxon/functions/SystemFunction;->dynamicCall(Lnet/sf/saxon/om/Function;Lnet/sf/saxon/expr/XPathContext;[Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/om/Sequence;

    move-result-object v0

    invoke-interface {v2}, Lnet/sf/saxon/om/Function;->isTrustedResultType()Z

    move-result v1

    if-eqz v1, :cond_8

    return-object v0

    :cond_8
    new-instance v1, Lnet/sf/saxon/expr/parser/RoleDiagnostic;

    const/4 v2, 0x5

    const/4 v5, -0x1

    invoke-direct {v1, v2, v10, v5}, Lnet/sf/saxon/expr/parser/RoleDiagnostic;-><init>(ILjava/lang/String;I)V

    invoke-interface {v4}, Lnet/sf/saxon/type/FunctionItemType;->getResultType()Lnet/sf/saxon/value/SequenceType;

    move-result-object v2

    sget-object v4, Lnet/sf/saxon/expr/parser/Loc;->NONE:Lnet/sf/saxon/expr/parser/Loc;

    invoke-virtual {v3, v0, v2, v1, v4}, Lnet/sf/saxon/type/TypeHierarchy;->applyFunctionConversionRules(Lnet/sf/saxon/om/Sequence;Lnet/sf/saxon/value/SequenceType;Lnet/sf/saxon/expr/parser/RoleDiagnostic;Lnet/sf/saxon/s9api/Location;)Lnet/sf/saxon/om/GroundedValue;

    move-result-object v0

    return-object v0
.end method

.method public exportAttributes(Lnet/sf/saxon/trace/ExpressionPresenter;)V
    .locals 1

    const-string v0, "dyn"

    iget-object p0, p0, Lnet/sf/saxon/functions/ApplyFn;->h:Ljava/lang/String;

    invoke-virtual {p1, v0, p0}, Lnet/sf/saxon/trace/ExpressionPresenter;->emitAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public getResultItemType([Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/type/ItemType;
    .locals 0

    const/4 p0, 0x0

    aget-object p0, p1, p0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object p0

    instance-of p1, p0, Lnet/sf/saxon/ma/map/MapType;

    if-eqz p1, :cond_0

    check-cast p0, Lnet/sf/saxon/ma/map/MapType;

    invoke-virtual {p0}, Lnet/sf/saxon/ma/map/MapType;->getValueType()Lnet/sf/saxon/value/SequenceType;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/value/SequenceType;->getPrimaryType()Lnet/sf/saxon/type/ItemType;

    move-result-object p0

    return-object p0

    :cond_0
    instance-of p1, p0, Lnet/sf/saxon/ma/arrays/ArrayItemType;

    if-eqz p1, :cond_1

    check-cast p0, Lnet/sf/saxon/ma/arrays/ArrayItemType;

    invoke-virtual {p0}, Lnet/sf/saxon/ma/arrays/ArrayItemType;->getMemberType()Lnet/sf/saxon/value/SequenceType;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/value/SequenceType;->getPrimaryType()Lnet/sf/saxon/type/ItemType;

    move-result-object p0

    return-object p0

    :cond_1
    instance-of p1, p0, Lnet/sf/saxon/type/FunctionItemType;

    if-eqz p1, :cond_2

    check-cast p0, Lnet/sf/saxon/type/FunctionItemType;

    invoke-interface {p0}, Lnet/sf/saxon/type/FunctionItemType;->getResultType()Lnet/sf/saxon/value/SequenceType;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/value/SequenceType;->getPrimaryType()Lnet/sf/saxon/type/ItemType;

    move-result-object p0

    return-object p0

    :cond_2
    instance-of p0, p0, Lnet/sf/saxon/type/AnyFunctionType;

    if-eqz p0, :cond_3

    invoke-static {}, Lnet/sf/saxon/type/AnyItemType;->getInstance()Lnet/sf/saxon/type/AnyItemType;

    move-result-object p0

    return-object p0

    :cond_3
    invoke-static {}, Lnet/sf/saxon/type/AnyItemType;->getInstance()Lnet/sf/saxon/type/AnyItemType;

    move-result-object p0

    return-object p0
.end method

.method public importAttributes(Ljava/util/Properties;)V
    .locals 1

    const-string v0, "dyn"

    invoke-virtual {p1, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/functions/ApplyFn;->h:Ljava/lang/String;

    return-void
.end method

.method public isDynamicFunctionCall()Z
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/functions/ApplyFn;->h:Ljava/lang/String;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public varargs makeOptimizedFunctionCall(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;[Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    array-length v0, p3

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    aget-object v0, p3, v0

    instance-of v0, v0, Lnet/sf/saxon/ma/arrays/SquareArrayConstructor;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    aget-object v0, p3, v0

    invoke-virtual {v0}, Lnet/sf/saxon/expr/Expression;->getItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object v1

    instance-of v1, v1, Lnet/sf/saxon/ma/map/MapType;

    if-eqz v1, :cond_0

    invoke-static {}, Lnet/sf/saxon/ma/map/MapFunctionSet;->getInstance()Lnet/sf/saxon/ma/map/MapFunctionSet;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2, p3}, Lnet/sf/saxon/functions/ApplyFn;->a(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;[Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {v0}, Lnet/sf/saxon/expr/Expression;->getItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object v0

    instance-of v0, v0, Lnet/sf/saxon/ma/arrays/ArrayItemType;

    if-eqz v0, :cond_1

    invoke-static {}, Lnet/sf/saxon/ma/arrays/ArrayFunctionSet;->getInstance()Lnet/sf/saxon/ma/arrays/ArrayFunctionSet;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2, p3}, Lnet/sf/saxon/functions/ApplyFn;->a(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;[Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public setDynamicFunctionCall(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/functions/ApplyFn;->h:Ljava/lang/String;

    return-void
.end method
