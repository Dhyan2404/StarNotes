.class public abstract Lnet/sf/saxon/functions/SystemFunction;
.super Lnet/sf/saxon/functions/AbstractFunction;
.source "SourceFile"


# instance fields
.field public e:I

.field public f:Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

.field public g:Lnet/sf/saxon/expr/parser/RetainedStaticContext;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnet/sf/saxon/functions/AbstractFunction;-><init>()V

    return-void
.end method

.method public static dynamicCall(Lnet/sf/saxon/om/Function;Lnet/sf/saxon/expr/XPathContext;[Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/om/Sequence;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-interface {p0, p1, v0}, Lnet/sf/saxon/om/Function;->makeNewContext(Lnet/sf/saxon/expr/XPathContext;Lnet/sf/saxon/expr/ContextOriginator;)Lnet/sf/saxon/expr/XPathContext;

    move-result-object p1

    invoke-interface {p1, v0}, Lnet/sf/saxon/expr/XPathContext;->setCurrentOutputUri(Ljava/lang/String;)V

    instance-of v1, p1, Lnet/sf/saxon/expr/XPathContextMajor;

    if-eqz v1, :cond_0

    move-object v1, p1

    check-cast v1, Lnet/sf/saxon/expr/XPathContextMajor;

    invoke-virtual {v1, v0}, Lnet/sf/saxon/expr/XPathContextMajor;->setCurrentRegexIterator(Lnet/sf/saxon/regex/RegexIterator;)V

    :cond_0
    invoke-interface {p0, p1, p2}, Lnet/sf/saxon/expr/Callable;->call(Lnet/sf/saxon/expr/XPathContext;[Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/om/Sequence;

    move-result-object p0

    return-object p0
.end method

.method public static varargs makeCall(Ljava/lang/String;Lnet/sf/saxon/expr/parser/RetainedStaticContext;[Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;
    .locals 1

    array-length v0, p2

    invoke-static {p0, p1, v0}, Lnet/sf/saxon/functions/SystemFunction;->makeFunction(Ljava/lang/String;Lnet/sf/saxon/expr/parser/RetainedStaticContext;I)Lnet/sf/saxon/functions/SystemFunction;

    move-result-object p0

    invoke-virtual {p0, p2}, Lnet/sf/saxon/functions/SystemFunction;->makeFunctionCall([Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/Expression;->setRetainedStaticContext(Lnet/sf/saxon/expr/parser/RetainedStaticContext;)V

    return-object p0
.end method

.method public static makeFunction(Ljava/lang/String;Lnet/sf/saxon/expr/parser/RetainedStaticContext;I)Lnet/sf/saxon/functions/SystemFunction;
    .locals 1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lnet/sf/saxon/expr/parser/RetainedStaticContext;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lnet/sf/saxon/Configuration;->makeSystemFunction(Ljava/lang/String;I)Lnet/sf/saxon/functions/SystemFunction;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lnet/sf/saxon/functions/SystemFunction;->setRetainedStaticContext(Lnet/sf/saxon/expr/parser/RetainedStaticContext;)V

    return-object v0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "#"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public dependsOnContextItem()Z
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/functions/SystemFunction;->f:Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    iget p0, p0, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->properties:I

    and-int/lit16 p0, p0, 0x4004

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lnet/sf/saxon/functions/SystemFunction;

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public export(Lnet/sf/saxon/trace/ExpressionPresenter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const-string v0, "fnRef"

    invoke-virtual {p1, v0}, Lnet/sf/saxon/trace/ExpressionPresenter;->startElement(Ljava/lang/String;)I

    invoke-virtual {p0}, Lnet/sf/saxon/functions/SystemFunction;->getFunctionName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v0

    const-string v1, "http://www.w3.org/2005/xpath-functions"

    invoke-virtual {v0, v1}, Lnet/sf/saxon/om/StructuredQName;->hasURI(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lnet/sf/saxon/om/StructuredQName;->getLocalPart()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lnet/sf/saxon/om/StructuredQName;->getEQName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string v1, "name"

    invoke-virtual {p1, v1, v0}, Lnet/sf/saxon/trace/ExpressionPresenter;->emitAttribute(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lnet/sf/saxon/functions/SystemFunction;->getArity()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "arity"

    invoke-virtual {p1, v1, v0}, Lnet/sf/saxon/trace/ExpressionPresenter;->emitAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lnet/sf/saxon/functions/SystemFunction;->getDetails()Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v0

    iget v0, v0, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->properties:I

    and-int/lit8 v0, v0, 0x38

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lnet/sf/saxon/functions/SystemFunction;->getRetainedStaticContext()Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Lnet/sf/saxon/trace/ExpressionPresenter;->emitRetainedStaticContext(Lnet/sf/saxon/expr/parser/RetainedStaticContext;Lnet/sf/saxon/expr/parser/RetainedStaticContext;)V

    :cond_1
    invoke-virtual {p1}, Lnet/sf/saxon/trace/ExpressionPresenter;->endElement()I

    return-void
.end method

.method public exportAdditionalArguments(Lnet/sf/saxon/expr/SystemFunctionCall;Lnet/sf/saxon/trace/ExpressionPresenter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    return-void
.end method

.method public exportAttributes(Lnet/sf/saxon/trace/ExpressionPresenter;)V
    .locals 0

    return-void
.end method

.method public varargs fixArguments([Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lnet/sf/saxon/functions/SystemFunction;->getArity()I

    move-result v1

    if-ge v0, v1, :cond_1

    aget-object v1, p1, v0

    invoke-static {v1}, Lnet/sf/saxon/expr/Literal;->isEmptySequence(Lnet/sf/saxon/expr/Expression;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lnet/sf/saxon/functions/SystemFunction;->resultIfEmpty(I)Lnet/sf/saxon/om/Sequence;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object p0, p0, Lnet/sf/saxon/functions/SystemFunction;->f:Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    iget-object p0, p0, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->resultIfEmpty:[Lnet/sf/saxon/om/Sequence;

    aget-object p0, p0, v0

    invoke-interface {p0}, Lnet/sf/saxon/om/Sequence;->materialize()Lnet/sf/saxon/om/GroundedValue;

    move-result-object p0

    invoke-static {p0}, Lnet/sf/saxon/expr/Literal;->makeLiteral(Lnet/sf/saxon/om/GroundedValue;)Lnet/sf/saxon/expr/Literal;

    move-result-object p0

    return-object p0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getArity()I
    .locals 0

    iget p0, p0, Lnet/sf/saxon/functions/SystemFunction;->e:I

    return p0
.end method

.method public getCardinality([Lnet/sf/saxon/expr/Expression;)I
    .locals 2

    iget-object p0, p0, Lnet/sf/saxon/functions/SystemFunction;->f:Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    iget v0, p0, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->cardinality:I

    const/16 v1, 0x6000

    if-ne v0, v1, :cond_0

    iget p0, p0, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->properties:I

    const v1, 0x8000

    and-int/2addr p0, v1

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    aget-object p0, p1, p0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getCardinality()I

    move-result p0

    invoke-static {p0}, Lnet/sf/saxon/value/Cardinality;->allowsZero(I)Z

    move-result p0

    if-nez p0, :cond_0

    const/16 p0, 0x4000

    return p0

    :cond_0
    return v0
.end method

.method public getCompilerName()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getContextNode(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/NodeInfo;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-interface {p1}, Lnet/sf/saxon/expr/XPathContext;->getContextItem()Lnet/sf/saxon/om/Item;

    move-result-object v0

    const-string v1, "Context item for "

    if-eqz v0, :cond_1

    instance-of v2, v0, Lnet/sf/saxon/om/NodeInfo;

    if-eqz v2, :cond_0

    check-cast v0, Lnet/sf/saxon/om/NodeInfo;

    return-object v0

    :cond_0
    new-instance v0, Lnet/sf/saxon/trans/XPathException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/sf/saxon/functions/SystemFunction;->getFunctionName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "() is not a node"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "XPTY0004"

    invoke-direct {v0, p0, v1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lnet/sf/saxon/trans/XPathException;->maybeSetContext(Lnet/sf/saxon/expr/XPathContext;)V

    throw v0

    :cond_1
    new-instance v0, Lnet/sf/saxon/trans/XPathException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/sf/saxon/functions/SystemFunction;->getFunctionName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "() is absent"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "XPDY0002"

    invoke-direct {v0, p0, v1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lnet/sf/saxon/trans/XPathException;->maybeSetContext(Lnet/sf/saxon/expr/XPathContext;)V

    throw v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/functions/SystemFunction;->f:Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    iget-object p0, p0, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->name:Lnet/sf/saxon/om/StructuredQName;

    invoke-virtual {p0}, Lnet/sf/saxon/om/StructuredQName;->getDisplayName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDetails()Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/functions/SystemFunction;->f:Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    return-object p0
.end method

.method public getErrorCodeForTypeErrors()Ljava/lang/String;
    .locals 0

    const-string p0, "XPTY0004"

    return-object p0
.end method

.method public getFunctionItemType()Lnet/sf/saxon/type/FunctionItemType;
    .locals 2

    invoke-virtual {p0}, Lnet/sf/saxon/functions/SystemFunction;->getResultItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object v0

    iget-object v1, p0, Lnet/sf/saxon/functions/SystemFunction;->f:Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    iget v1, v1, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->cardinality:I

    invoke-static {v0, v1}, Lnet/sf/saxon/value/SequenceType;->makeSequenceType(Lnet/sf/saxon/type/ItemType;I)Lnet/sf/saxon/value/SequenceType;

    move-result-object v0

    new-instance v1, Lnet/sf/saxon/type/SpecificFunctionType;

    iget-object p0, p0, Lnet/sf/saxon/functions/SystemFunction;->f:Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    iget-object p0, p0, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->argumentTypes:[Lnet/sf/saxon/value/SequenceType;

    invoke-direct {v1, p0, v0}, Lnet/sf/saxon/type/SpecificFunctionType;-><init>([Lnet/sf/saxon/value/SequenceType;Lnet/sf/saxon/value/SequenceType;)V

    return-object v1
.end method

.method public getFunctionName()Lnet/sf/saxon/om/StructuredQName;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/functions/SystemFunction;->f:Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    iget-object p0, p0, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->name:Lnet/sf/saxon/om/StructuredQName;

    return-object p0
.end method

.method public getIntegerBounds()[Lnet/sf/saxon/value/IntegerValue;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getNetCost()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public getOperandRoles()[Lnet/sf/saxon/expr/OperandRole;
    .locals 7

    invoke-virtual {p0}, Lnet/sf/saxon/functions/SystemFunction;->getArity()I

    move-result v0

    new-array v0, v0, [Lnet/sf/saxon/expr/OperandRole;

    invoke-virtual {p0}, Lnet/sf/saxon/functions/SystemFunction;->isSequenceVariadic()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/functions/SystemFunction;->getArity()I

    move-result v1

    new-array v1, v1, [Lnet/sf/saxon/expr/OperandUsage;

    iget-object v3, p0, Lnet/sf/saxon/functions/SystemFunction;->f:Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    iget-object v3, v3, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->usage:[Lnet/sf/saxon/expr/OperandUsage;

    aget-object v3, v3, v2

    invoke-static {v1, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lnet/sf/saxon/functions/SystemFunction;->f:Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    iget-object v1, v1, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->usage:[Lnet/sf/saxon/expr/OperandUsage;

    :goto_0
    move v3, v2

    :goto_1
    :try_start_0
    array-length v4, v1

    if-ge v3, v4, :cond_1

    new-instance v4, Lnet/sf/saxon/expr/OperandRole;

    aget-object v5, v1, v3

    invoke-virtual {p0, v3}, Lnet/sf/saxon/functions/SystemFunction;->getRequiredType(I)Lnet/sf/saxon/value/SequenceType;

    move-result-object v6

    invoke-direct {v4, v2, v5, v6}, Lnet/sf/saxon/expr/OperandRole;-><init>(ILnet/sf/saxon/expr/OperandUsage;Lnet/sf/saxon/value/SequenceType;)V

    aput-object v4, v0, v3
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    return-object v0
.end method

.method public getRequiredType(I)Lnet/sf/saxon/value/SequenceType;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/functions/SystemFunction;->f:Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    if-nez p0, :cond_0

    sget-object p0, Lnet/sf/saxon/value/SequenceType;->ANY_SEQUENCE:Lnet/sf/saxon/value/SequenceType;

    return-object p0

    :cond_0
    iget-object p0, p0, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->argumentTypes:[Lnet/sf/saxon/value/SequenceType;

    aget-object p0, p0, p1

    return-object p0
.end method

.method public getResultItemType()Lnet/sf/saxon/type/ItemType;
    .locals 0

    .line 1
    iget-object p0, p0, Lnet/sf/saxon/functions/SystemFunction;->f:Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    iget-object p0, p0, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->itemType:Lnet/sf/saxon/type/ItemType;

    return-object p0
.end method

.method public getResultItemType([Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/type/ItemType;
    .locals 3

    .line 2
    iget-object p0, p0, Lnet/sf/saxon/functions/SystemFunction;->f:Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    iget v0, p0, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->properties:I

    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 3
    aget-object p0, p1, v2

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object p0

    return-object p0

    :cond_0
    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 4
    aget-object p0, p1, v2

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object p0

    invoke-interface {p0}, Lnet/sf/saxon/type/ItemType;->getPrimitiveItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object p0

    return-object p0

    .line 5
    :cond_1
    iget-object p0, p0, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->itemType:Lnet/sf/saxon/type/ItemType;

    return-object p0
.end method

.method public getRetainedStaticContext()Lnet/sf/saxon/expr/parser/RetainedStaticContext;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/functions/SystemFunction;->g:Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    return-object p0
.end method

.method public getSpecialProperties([Lnet/sf/saxon/expr/Expression;)I
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/functions/SystemFunction;->f:Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    iget p0, p0, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->properties:I

    const/high16 p1, 0x10000

    and-int/2addr p1, p0

    if-eqz p1, :cond_0

    const/high16 p0, 0x400000

    return p0

    :cond_0
    and-int/lit16 p0, p0, 0x2000

    if-eqz p0, :cond_1

    const/high16 p0, 0x2800000

    goto :goto_0

    :cond_1
    const/high16 p0, 0x800000

    :goto_0
    return p0
.end method

.method public getStaticBaseUriString()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/functions/SystemFunction;->getRetainedStaticContext()Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/RetainedStaticContext;->getStaticBaseUriString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getStreamerName()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getUniStringArg(Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/str/UnicodeString;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-interface {p1}, Lnet/sf/saxon/om/Sequence;->head()Lnet/sf/saxon/om/Item;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/value/StringValue;

    if-nez p0, :cond_0

    invoke-static {}, Lnet/sf/saxon/str/EmptyUnicodeString;->getInstance()Lnet/sf/saxon/str/EmptyUnicodeString;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/value/StringValue;->getUnicodeStringValue()Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public hashCode()I
    .locals 0

    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method public importAttributes(Ljava/util/Properties;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    return-void
.end method

.method public isSequenceVariadic()Z
    .locals 1

    iget-object p0, p0, Lnet/sf/saxon/functions/SystemFunction;->f:Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    iget p0, p0, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->properties:I

    const/high16 v0, 0x40000

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isTrustedResultType()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public varargs makeFunctionCall([Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;
    .locals 2

    array-length v0, p1

    invoke-virtual {p0}, Lnet/sf/saxon/functions/SystemFunction;->getArity()I

    move-result v1

    if-le v0, v1, :cond_1

    invoke-virtual {p0}, Lnet/sf/saxon/functions/SystemFunction;->isSequenceVariadic()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lnet/sf/saxon/functions/SystemFunction;->getArity()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    new-array v0, v1, [Lnet/sf/saxon/expr/Expression;

    new-instance v1, Lnet/sf/saxon/expr/instruct/Block;

    invoke-direct {v1, p1}, Lnet/sf/saxon/expr/instruct/Block;-><init>([Lnet/sf/saxon/expr/Expression;)V

    const/4 p1, 0x0

    aput-object v1, v0, p1

    move-object p1, v0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Not implemented: sequence-variadic function with arity>1"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    new-instance v0, Lnet/sf/saxon/expr/SystemFunctionCall;

    invoke-direct {v0, p0, p1}, Lnet/sf/saxon/expr/SystemFunctionCall;-><init>(Lnet/sf/saxon/functions/SystemFunction;[Lnet/sf/saxon/expr/Expression;)V

    invoke-virtual {p0}, Lnet/sf/saxon/functions/SystemFunction;->getRetainedStaticContext()Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    move-result-object p0

    invoke-virtual {v0, p0}, Lnet/sf/saxon/expr/Expression;->setRetainedStaticContext(Lnet/sf/saxon/expr/parser/RetainedStaticContext;)V

    return-object v0
.end method

.method public varargs makeOptimizedFunctionCall(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;[Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p1}, Lnet/sf/saxon/expr/parser/ExpressionVisitor;->obtainOptimizer()Lnet/sf/saxon/expr/parser/Optimizer;

    move-result-object p1

    const p2, 0x8000

    invoke-virtual {p1, p2}, Lnet/sf/saxon/expr/parser/Optimizer;->isOptionSet(I)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0, p3}, Lnet/sf/saxon/functions/SystemFunction;->fixArguments([Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public resultIfEmpty(I)Lnet/sf/saxon/om/Sequence;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/functions/SystemFunction;->f:Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    iget-object p0, p0, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->resultIfEmpty:[Lnet/sf/saxon/om/Sequence;

    aget-object p0, p0, p1

    return-object p0
.end method

.method public setArity(I)V
    .locals 0

    iput p1, p0, Lnet/sf/saxon/functions/SystemFunction;->e:I

    return-void
.end method

.method public setDetails(Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/functions/SystemFunction;->f:Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    return-void
.end method

.method public setRetainedStaticContext(Lnet/sf/saxon/expr/parser/RetainedStaticContext;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/functions/SystemFunction;->g:Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    return-void
.end method

.method public supplyTypeInformation(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;[Lnet/sf/saxon/expr/Expression;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    return-void
.end method

.method public toShortString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lnet/sf/saxon/functions/SystemFunction;->getFunctionName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sf/saxon/om/StructuredQName;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/sf/saxon/functions/SystemFunction;->getArity()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lnet/sf/saxon/functions/SystemFunction;->getFunctionName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sf/saxon/om/StructuredQName;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/sf/saxon/functions/SystemFunction;->getArity()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public typeCheckCaller(Lnet/sf/saxon/expr/FunctionCall;Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    return-object p1
.end method
