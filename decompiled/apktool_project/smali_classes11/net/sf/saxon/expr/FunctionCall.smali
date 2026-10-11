.class public abstract Lnet/sf/saxon/expr/FunctionCall;
.super Lnet/sf/saxon/expr/Expression;
.source "SourceFile"


# instance fields
.field public n:Lnet/sf/saxon/expr/oper/OperandArray;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnet/sf/saxon/expr/Expression;-><init>()V

    return-void
.end method

.method public static pluralArguments(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    const-string p0, "one argument"

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " arguments"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method


# virtual methods
.method public addExternalFunctionCallToPathMap(Lnet/sf/saxon/expr/parser/PathMap;Lnet/sf/saxon/expr/parser/PathMap$PathMapNodeSet;)Lnet/sf/saxon/expr/parser/PathMap$PathMapNodeSet;
    .locals 2

    new-instance v0, Lnet/sf/saxon/expr/parser/PathMap$PathMapNodeSet;

    invoke-direct {v0}, Lnet/sf/saxon/expr/parser/PathMap$PathMapNodeSet;-><init>()V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/FunctionCall;->operands()Ljava/lang/Iterable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/expr/Operand;

    invoke-virtual {v1}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lnet/sf/saxon/expr/Expression;->addToPathMap(Lnet/sf/saxon/expr/parser/PathMap;Lnet/sf/saxon/expr/parser/PathMap$PathMapNodeSet;)Lnet/sf/saxon/expr/parser/PathMap$PathMapNodeSet;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/sf/saxon/expr/parser/PathMap$PathMapNodeSet;->addNodeSet(Lnet/sf/saxon/expr/parser/PathMap$PathMapNodeSet;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lnet/sf/saxon/expr/parser/PathMap$PathMapNodeSet;->setHasUnknownDependencies()V

    return-object v0
.end method

.method public adjustRequiredType(Lnet/sf/saxon/type/JavaExternalObjectType;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const/4 p0, 0x0

    return p0
.end method

.method public checkArgumentCount(II)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/expr/FunctionCall;->getArity()I

    move-result v0

    const-string v1, "Function "

    if-ne p1, p2, :cond_0

    if-eq v0, p1, :cond_0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/FunctionCall;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " must have "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lnet/sf/saxon/expr/FunctionCall;->pluralArguments(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    if-ge v0, p1, :cond_1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/FunctionCall;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " must have at least "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lnet/sf/saxon/expr/FunctionCall;->pluralArguments(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    if-le v0, p2, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/FunctionCall;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " must have no more than "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lnet/sf/saxon/expr/FunctionCall;->pluralArguments(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_3

    return v0

    :cond_3
    new-instance p2, Lnet/sf/saxon/trans/XPathException;

    const-string v0, "XPST0017"

    invoke-direct {p2, p1, v0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    invoke-virtual {p2, p1}, Lnet/sf/saxon/trans/XPathException;->setIsStaticError(Z)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object p0

    invoke-virtual {p2, p0}, Lnet/sf/saxon/trans/XPathException;->setLocation(Lnet/sf/saxon/s9api/Location;)V

    throw p2
.end method

.method public checkArguments(Lnet/sf/saxon/expr/parser/ExpressionVisitor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    return-void
.end method

.method public checkFunctionCall(Lnet/sf/saxon/om/Function;Lnet/sf/saxon/expr/parser/ExpressionVisitor;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p2}, Lnet/sf/saxon/expr/parser/ExpressionVisitor;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v0

    invoke-virtual {p2}, Lnet/sf/saxon/expr/parser/ExpressionVisitor;->getStaticContext()Lnet/sf/saxon/expr/StaticContext;

    move-result-object v1

    invoke-interface {v1}, Lnet/sf/saxon/expr/StaticContext;->isInBackwardsCompatibleMode()Z

    move-result v1

    invoke-virtual {v0, v1}, Lnet/sf/saxon/Configuration;->getTypeChecker(Z)Lnet/sf/saxon/expr/parser/TypeChecker;

    move-result-object v0

    invoke-interface {p1}, Lnet/sf/saxon/om/Function;->getFunctionItemType()Lnet/sf/saxon/type/FunctionItemType;

    move-result-object v1

    invoke-interface {v1}, Lnet/sf/saxon/type/FunctionItemType;->getArgumentTypes()[Lnet/sf/saxon/value/SequenceType;

    move-result-object v1

    invoke-interface {p1}, Lnet/sf/saxon/om/Function;->isSequenceVariadic()Z

    move-result v2

    const-string v3, ""

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lnet/sf/saxon/expr/FunctionCall;->getArity()I

    move-result v2

    const/4 v5, 0x1

    if-ne v2, v5, :cond_1

    invoke-virtual {p0}, Lnet/sf/saxon/expr/FunctionCall;->getFunctionName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/expr/FunctionCall;->getFunctionName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object p1

    invoke-virtual {p1}, Lnet/sf/saxon/om/StructuredQName;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    :goto_0
    new-instance p1, Lnet/sf/saxon/expr/parser/RoleDiagnostic;

    invoke-direct {p1, v4, v3, v4}, Lnet/sf/saxon/expr/parser/RoleDiagnostic;-><init>(ILjava/lang/String;I)V

    invoke-virtual {p0, v4}, Lnet/sf/saxon/expr/FunctionCall;->getArg(I)Lnet/sf/saxon/expr/Expression;

    move-result-object v2

    new-instance v3, Lnet/sf/saxon/value/SequenceType;

    aget-object v1, v1, v4

    invoke-virtual {v1}, Lnet/sf/saxon/value/SequenceType;->getPrimaryType()Lnet/sf/saxon/type/ItemType;

    move-result-object v1

    const v5, 0xe000

    invoke-direct {v3, v1, v5}, Lnet/sf/saxon/value/SequenceType;-><init>(Lnet/sf/saxon/type/ItemType;I)V

    invoke-virtual {v0, v2, v3, p1, p2}, Lnet/sf/saxon/expr/parser/TypeChecker;->staticTypeCheck(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/value/SequenceType;Lnet/sf/saxon/expr/parser/RoleDiagnostic;Lnet/sf/saxon/expr/parser/ExpressionVisitor;)Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    invoke-virtual {p0, v4, p1}, Lnet/sf/saxon/expr/FunctionCall;->setArg(ILnet/sf/saxon/expr/Expression;)V

    goto :goto_3

    :cond_1
    invoke-interface {p1}, Lnet/sf/saxon/om/Function;->getArity()I

    move-result p1

    move v2, v4

    :goto_1
    if-ge v2, p1, :cond_3

    invoke-virtual {p0}, Lnet/sf/saxon/expr/FunctionCall;->getFunctionName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v5

    if-nez v5, :cond_2

    move-object v5, v3

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lnet/sf/saxon/expr/FunctionCall;->getFunctionName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v5

    invoke-virtual {v5}, Lnet/sf/saxon/om/StructuredQName;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    :goto_2
    new-instance v6, Lnet/sf/saxon/expr/parser/RoleDiagnostic;

    invoke-direct {v6, v4, v5, v2}, Lnet/sf/saxon/expr/parser/RoleDiagnostic;-><init>(ILjava/lang/String;I)V

    invoke-virtual {p0, v2}, Lnet/sf/saxon/expr/FunctionCall;->getArg(I)Lnet/sf/saxon/expr/Expression;

    move-result-object v5

    aget-object v7, v1, v2

    invoke-virtual {v0, v5, v7, v6, p2}, Lnet/sf/saxon/expr/parser/TypeChecker;->staticTypeCheck(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/value/SequenceType;Lnet/sf/saxon/expr/parser/RoleDiagnostic;Lnet/sf/saxon/expr/parser/ExpressionVisitor;)Lnet/sf/saxon/expr/Expression;

    move-result-object v5

    invoke-virtual {p0, v2, v5}, Lnet/sf/saxon/expr/FunctionCall;->setArg(ILnet/sf/saxon/expr/Expression;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    :goto_3
    return-void
.end method

.method public computeHashCode()I
    .locals 3

    invoke-virtual {p0}, Lnet/sf/saxon/expr/FunctionCall;->getFunctionName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-super {p0}, Lnet/sf/saxon/expr/Expression;->computeHashCode()I

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/expr/FunctionCall;->getFunctionName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/om/StructuredQName;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lnet/sf/saxon/expr/FunctionCall;->getArity()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p0, v1}, Lnet/sf/saxon/expr/FunctionCall;->getArg(I)Lnet/sf/saxon/expr/Expression;

    move-result-object v2

    invoke-virtual {v2}, Lnet/sf/saxon/expr/Expression;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    instance-of v0, p1, Lnet/sf/saxon/expr/FunctionCall;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/expr/FunctionCall;->getFunctionName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    if-ne p0, p1, :cond_1

    move v1, v2

    :cond_1
    return v1

    :cond_2
    check-cast p1, Lnet/sf/saxon/expr/FunctionCall;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/FunctionCall;->getFunctionName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v0

    invoke-virtual {p1}, Lnet/sf/saxon/expr/FunctionCall;->getFunctionName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v3

    invoke-virtual {v0, v3}, Lnet/sf/saxon/om/StructuredQName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    return v1

    :cond_3
    invoke-virtual {p0}, Lnet/sf/saxon/expr/FunctionCall;->getArity()I

    move-result v0

    invoke-virtual {p1}, Lnet/sf/saxon/expr/FunctionCall;->getArity()I

    move-result v3

    if-eq v0, v3, :cond_4

    return v1

    :cond_4
    move v0, v1

    :goto_0
    invoke-virtual {p0}, Lnet/sf/saxon/expr/FunctionCall;->getArity()I

    move-result v3

    if-ge v0, v3, :cond_6

    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/FunctionCall;->getArg(I)Lnet/sf/saxon/expr/Expression;

    move-result-object v3

    invoke-virtual {p1, v0}, Lnet/sf/saxon/expr/FunctionCall;->getArg(I)Lnet/sf/saxon/expr/Expression;

    move-result-object v4

    invoke-virtual {v3, v4}, Lnet/sf/saxon/expr/Expression;->isEqual(Lnet/sf/saxon/expr/Expression;)Z

    move-result v3

    if-nez v3, :cond_5

    return v1

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_6
    return v2
.end method

.method public evaluateArguments(Lnet/sf/saxon/expr/XPathContext;)[Lnet/sf/saxon/om/Sequence;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/expr/FunctionCall;->getArity()I

    move-result v0

    new-array v1, v0, [Lnet/sf/saxon/om/Sequence;

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_0

    invoke-virtual {p0, v3}, Lnet/sf/saxon/expr/FunctionCall;->getArg(I)Lnet/sf/saxon/expr/Expression;

    move-result-object v4

    invoke-static {v4, p1, v2}, Lnet/sf/saxon/expr/parser/ExpressionTool;->lazyEvaluate(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/XPathContext;Z)Lnet/sf/saxon/om/Sequence;

    move-result-object v4

    aput-object v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public export(Lnet/sf/saxon/trace/ExpressionPresenter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const-string v0, "functionCall"

    invoke-virtual {p1, v0, p0}, Lnet/sf/saxon/trace/ExpressionPresenter;->startElement(Ljava/lang/String;Lnet/sf/saxon/expr/Expression;)I

    invoke-virtual {p0}, Lnet/sf/saxon/expr/FunctionCall;->getFunctionName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lnet/sf/saxon/expr/FunctionCall;->getFunctionName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/om/StructuredQName;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "name"

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

    return-void

    :cond_1
    new-instance p0, Ljava/lang/AssertionError;

    const-string p1, "Exporting call to anonymous function"

    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0
.end method

.method public getArg(I)Lnet/sf/saxon/expr/Expression;
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/FunctionCall;->getOperanda()Lnet/sf/saxon/expr/oper/OperandArray;

    move-result-object p0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/oper/OperandArray;->getOperandExpression(I)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0
.end method

.method public getArguments()[Lnet/sf/saxon/expr/Expression;
    .locals 4

    invoke-virtual {p0}, Lnet/sf/saxon/expr/FunctionCall;->getArity()I

    move-result v0

    new-array v0, v0, [Lnet/sf/saxon/expr/Expression;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/FunctionCall;->operands()Ljava/lang/Iterable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/sf/saxon/expr/Operand;

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v2}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v2

    aput-object v2, v0, v1

    move v1, v3

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final getArity()I
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/FunctionCall;->getOperanda()Lnet/sf/saxon/expr/oper/OperandArray;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/oper/OperandArray;->getNumberOfOperands()I

    move-result p0

    return p0
.end method

.method public final getDisplayName()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/FunctionCall;->getFunctionName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, "(anonymous)"

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/om/StructuredQName;->getDisplayName()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getExpressionName()Ljava/lang/String;
    .locals 0

    const-string p0, "functionCall"

    return-object p0
.end method

.method public abstract getFunctionName()Lnet/sf/saxon/om/StructuredQName;
.end method

.method public getImplementationMethod()I
    .locals 0

    const/4 p0, 0x2

    return p0
.end method

.method public getNetCost()I
    .locals 0

    const/4 p0, 0x5

    return p0
.end method

.method public getOperanda()Lnet/sf/saxon/expr/oper/OperandArray;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/FunctionCall;->n:Lnet/sf/saxon/expr/oper/OperandArray;

    return-object p0
.end method

.method public abstract getTargetFunction(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/Function;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation
.end method

.method public iterate(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/SequenceIterator;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/FunctionCall;->getTargetFunction(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/Function;

    move-result-object v0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/FunctionCall;->evaluateArguments(Lnet/sf/saxon/expr/XPathContext;)[Lnet/sf/saxon/om/Sequence;

    move-result-object v1

    :try_start_0
    invoke-interface {v0, p1, v1}, Lnet/sf/saxon/expr/Callable;->call(Lnet/sf/saxon/expr/XPathContext;[Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/om/Sequence;

    move-result-object v0

    invoke-interface {v0}, Lnet/sf/saxon/om/Sequence;->iterate()Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p0
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/sf/saxon/trans/XPathException;->maybeSetLocation(Lnet/sf/saxon/s9api/Location;)V

    invoke-virtual {v0, p1}, Lnet/sf/saxon/trans/XPathException;->maybeSetContext(Lnet/sf/saxon/expr/XPathContext;)V

    invoke-virtual {v0, p0}, Lnet/sf/saxon/trans/XPathException;->maybeSetFailingExpression(Lnet/sf/saxon/expr/Expression;)V

    throw v0
.end method

.method public operands()Ljava/lang/Iterable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Lnet/sf/saxon/expr/Operand;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lnet/sf/saxon/expr/FunctionCall;->n:Lnet/sf/saxon/expr/oper/OperandArray;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/oper/OperandArray;->operands()Ljava/lang/Iterable;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public optimize(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/expr/Expression;->optimizeChildren(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)V

    invoke-virtual {p1}, Lnet/sf/saxon/expr/parser/ExpressionVisitor;->obtainOptimizer()Lnet/sf/saxon/expr/parser/Optimizer;

    move-result-object p2

    const v0, 0x8000

    invoke-virtual {p2, v0}, Lnet/sf/saxon/expr/parser/Optimizer;->isOptionSet(I)Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-virtual {p0}, Lnet/sf/saxon/expr/FunctionCall;->operands()Ljava/lang/Iterable;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/expr/Operand;

    invoke-virtual {v0}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    instance-of v0, v0, Lnet/sf/saxon/expr/Literal;

    if-nez v0, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_1
    const/4 p2, 0x1

    :goto_0
    if-eqz p2, :cond_2

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/FunctionCall;->preEvaluate(Lnet/sf/saxon/expr/parser/ExpressionVisitor;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    :cond_2
    return-object p0
.end method

.method public preEvaluate(Lnet/sf/saxon/expr/parser/ExpressionVisitor;)Lnet/sf/saxon/expr/Expression;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getIntrinsicDependencies()I

    move-result v0

    and-int/lit16 v0, v0, -0x801

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lnet/sf/saxon/expr/parser/ExpressionVisitor;->getStaticContext()Lnet/sf/saxon/expr/StaticContext;

    move-result-object v0

    invoke-interface {v0}, Lnet/sf/saxon/expr/StaticContext;->makeEarlyEvaluationContext()Lnet/sf/saxon/expr/XPathContext;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/FunctionCall;->iterate(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object v0

    invoke-static {v0}, Lnet/sf/saxon/om/SequenceTool;->toGroundedValue(Lnet/sf/saxon/om/SequenceIterator;)Lnet/sf/saxon/om/GroundedValue;

    move-result-object v0

    invoke-static {v0, p0}, Lnet/sf/saxon/expr/Literal;->makeLiteral(Lnet/sf/saxon/om/GroundedValue;Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Literal;

    move-result-object v0

    invoke-virtual {p1}, Lnet/sf/saxon/expr/parser/ExpressionVisitor;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Pre-evaluated function call "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/FunctionCall;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, v0}, Lnet/sf/saxon/expr/parser/Optimizer;->trace(Lnet/sf/saxon/Configuration;Ljava/lang/String;Lnet/sf/saxon/expr/Expression;)V
    :try_end_0
    .catch Lnet/sf/saxon/trans/UncheckedXPathException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lnet/sf/saxon/trans/NoDynamicContextException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    :try_start_1
    invoke-virtual {p1}, Lnet/sf/saxon/trans/UncheckedXPathException;->getXPathException()Lnet/sf/saxon/trans/XPathException;

    move-result-object p1

    throw p1
    :try_end_1
    .catch Lnet/sf/saxon/trans/NoDynamicContextException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Lnet/sf/saxon/trans/NoDynamicContextException;

    if-eqz v0, :cond_1

    return-object p0

    :cond_1
    throw p1

    :catch_2
    return-object p0
.end method

.method public preEvaluateIfConstant(Lnet/sf/saxon/expr/parser/ExpressionVisitor;)Lnet/sf/saxon/expr/Expression;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p1}, Lnet/sf/saxon/expr/parser/ExpressionVisitor;->obtainOptimizer()Lnet/sf/saxon/expr/parser/Optimizer;

    move-result-object v0

    const v1, 0x8000

    invoke-virtual {v0, v1}, Lnet/sf/saxon/expr/parser/Optimizer;->isOptionSet(I)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lnet/sf/saxon/expr/FunctionCall;->operands()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x1

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/sf/saxon/expr/Operand;

    invoke-virtual {v2}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v2

    instance-of v2, v2, Lnet/sf/saxon/expr/Literal;

    if-nez v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    :try_start_0
    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/FunctionCall;->preEvaluate(Lnet/sf/saxon/expr/parser/ExpressionVisitor;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0
    :try_end_0
    .catch Lnet/sf/saxon/trans/NoDynamicContextException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    return-object p0
.end method

.method public setArg(ILnet/sf/saxon/expr/Expression;)V
    .locals 1

    invoke-virtual {p0}, Lnet/sf/saxon/expr/FunctionCall;->getOperanda()Lnet/sf/saxon/expr/oper/OperandArray;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lnet/sf/saxon/expr/oper/OperandArray;->setOperand(ILnet/sf/saxon/expr/Expression;)V

    invoke-virtual {p0, p2}, Lnet/sf/saxon/expr/Expression;->adoptChildExpression(Lnet/sf/saxon/expr/Expression;)V

    return-void
.end method

.method public setArguments([Lnet/sf/saxon/expr/Expression;)V
    .locals 1

    new-instance v0, Lnet/sf/saxon/expr/oper/OperandArray;

    invoke-direct {v0, p0, p1}, Lnet/sf/saxon/expr/oper/OperandArray;-><init>(Lnet/sf/saxon/expr/Expression;[Lnet/sf/saxon/expr/Expression;)V

    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/FunctionCall;->setOperanda(Lnet/sf/saxon/expr/oper/OperandArray;)V

    return-void
.end method

.method public setOperanda(Lnet/sf/saxon/expr/oper/OperandArray;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lnet/sf/saxon/expr/FunctionCall;->n:Lnet/sf/saxon/expr/oper/OperandArray;

    return-void
.end method

.method public setOperanda([Lnet/sf/saxon/expr/Expression;[Lnet/sf/saxon/expr/OperandRole;)V
    .locals 1

    .line 2
    new-instance v0, Lnet/sf/saxon/expr/oper/OperandArray;

    invoke-direct {v0, p0, p1, p2}, Lnet/sf/saxon/expr/oper/OperandArray;-><init>(Lnet/sf/saxon/expr/Expression;[Lnet/sf/saxon/expr/Expression;[Lnet/sf/saxon/expr/OperandRole;)V

    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/FunctionCall;->setOperanda(Lnet/sf/saxon/expr/oper/OperandArray;)V

    return-void
.end method

.method public final simplifyArguments(Lnet/sf/saxon/expr/StaticContext;)Lnet/sf/saxon/expr/Expression;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0}, Lnet/sf/saxon/expr/FunctionCall;->getArguments()[Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    array-length v0, v0

    if-ge p1, v0, :cond_1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/FunctionCall;->getArg(I)Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/expr/Expression;->simplify()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/FunctionCall;->getArg(I)Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/Expression;->adoptChildExpression(Lnet/sf/saxon/expr/Expression;)V

    invoke-virtual {p0, p1, v0}, Lnet/sf/saxon/expr/FunctionCall;->setArg(ILnet/sf/saxon/expr/Expression;)V

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public toShortString()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lnet/sf/saxon/expr/FunctionCall;->getFunctionName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    if-nez v0, :cond_0

    const-string v0, "$anonFn"

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lnet/sf/saxon/om/StructuredQName;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "("

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/FunctionCall;->getArity()I

    move-result p0

    if-nez p0, :cond_1

    const-string p0, ""

    goto :goto_1

    :cond_1
    const-string p0, "..."

    :goto_1
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/FunctionCall;->getFunctionName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, "$anonymousFunction"

    goto :goto_0

    :cond_0
    const-string v2, "http://www.w3.org/2005/xpath-functions"

    invoke-virtual {v1, v2}, Lnet/sf/saxon/om/StructuredQName;->hasURI(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lnet/sf/saxon/om/StructuredQName;->getLocalPart()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lnet/sf/saxon/om/StructuredQName;->getEQName()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/FunctionCall;->operands()Ljava/lang/Iterable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x1

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/sf/saxon/expr/Operand;

    if-eqz v1, :cond_2

    const-string v1, "("

    goto :goto_2

    :cond_2
    const-string v1, ", "

    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sf/saxon/expr/Expression;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    goto :goto_1

    :cond_3
    if-eqz v1, :cond_4

    const-string p0, "()"

    goto :goto_3

    :cond_4
    const-string p0, ")"

    :goto_3
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public typeCheck(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/expr/Expression;->typeCheckChildren(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)V

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/FunctionCall;->checkArguments(Lnet/sf/saxon/expr/parser/ExpressionVisitor;)V

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/FunctionCall;->preEvaluateIfConstant(Lnet/sf/saxon/expr/parser/ExpressionVisitor;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0
.end method
