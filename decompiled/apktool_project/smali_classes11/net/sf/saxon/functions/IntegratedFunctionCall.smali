.class public Lnet/sf/saxon/functions/IntegratedFunctionCall;
.super Lnet/sf/saxon/expr/FunctionCall;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/expr/Callable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/sf/saxon/functions/IntegratedFunctionCall$ConfigurationCheckingFunction;
    }
.end annotation


# instance fields
.field public final o:Lnet/sf/saxon/om/StructuredQName;

.field public final p:Lnet/sf/saxon/lib/ExtensionFunctionCall;

.field public q:Lnet/sf/saxon/value/SequenceType;

.field public r:I


# direct methods
.method public constructor <init>(Lnet/sf/saxon/om/StructuredQName;Lnet/sf/saxon/lib/ExtensionFunctionCall;)V
    .locals 1

    invoke-direct {p0}, Lnet/sf/saxon/expr/FunctionCall;-><init>()V

    sget-object v0, Lnet/sf/saxon/value/SequenceType;->ANY_SEQUENCE:Lnet/sf/saxon/value/SequenceType;

    iput-object v0, p0, Lnet/sf/saxon/functions/IntegratedFunctionCall;->q:Lnet/sf/saxon/value/SequenceType;

    const/4 v0, 0x0

    iput v0, p0, Lnet/sf/saxon/functions/IntegratedFunctionCall;->r:I

    iput-object p1, p0, Lnet/sf/saxon/functions/IntegratedFunctionCall;->o:Lnet/sf/saxon/om/StructuredQName;

    iput-object p2, p0, Lnet/sf/saxon/functions/IntegratedFunctionCall;->p:Lnet/sf/saxon/lib/ExtensionFunctionCall;

    return-void
.end method

.method public static synthetic d(Lnet/sf/saxon/functions/IntegratedFunctionCall;Lnet/sf/saxon/type/ItemType;Lnet/sf/saxon/type/TypeHierarchy;Lnet/sf/saxon/expr/parser/RoleDiagnostic;Lnet/sf/saxon/om/Item;)Lnet/sf/saxon/om/Item;
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lnet/sf/saxon/functions/IntegratedFunctionCall;->e(Lnet/sf/saxon/type/ItemType;Lnet/sf/saxon/type/TypeHierarchy;Lnet/sf/saxon/expr/parser/RoleDiagnostic;Lnet/sf/saxon/om/Item;)Lnet/sf/saxon/om/Item;

    move-result-object p0

    return-object p0
.end method

.method private synthetic e(Lnet/sf/saxon/type/ItemType;Lnet/sf/saxon/type/TypeHierarchy;Lnet/sf/saxon/expr/parser/RoleDiagnostic;Lnet/sf/saxon/om/Item;)Lnet/sf/saxon/om/Item;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-interface {p1, p4, p2}, Lnet/sf/saxon/type/ItemType;->matches(Lnet/sf/saxon/om/Item;Lnet/sf/saxon/type/TypeHierarchy;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p4

    :cond_0
    invoke-virtual {p3, p1, p4, p2}, Lnet/sf/saxon/expr/parser/RoleDiagnostic;->composeErrorMessage(Lnet/sf/saxon/type/ItemType;Lnet/sf/saxon/om/Item;Lnet/sf/saxon/type/TypeHierarchy;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Lnet/sf/saxon/trans/XPathException;

    const-string p3, "XPTY0004"

    invoke-direct {p2, p1, p3}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object p0

    invoke-virtual {p2, p0}, Lnet/sf/saxon/trans/XPathException;->setLocation(Lnet/sf/saxon/s9api/Location;)V

    throw p2
.end method


# virtual methods
.method public call(Lnet/sf/saxon/expr/XPathContext;[Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/om/Sequence;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object p0, p0, Lnet/sf/saxon/functions/IntegratedFunctionCall;->p:Lnet/sf/saxon/lib/ExtensionFunctionCall;

    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/lib/ExtensionFunctionCall;->call(Lnet/sf/saxon/expr/XPathContext;[Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/om/Sequence;

    move-result-object p0

    return-object p0
.end method

.method public checkArguments(Lnet/sf/saxon/expr/parser/ExpressionVisitor;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/functions/IntegratedFunctionCall;->p:Lnet/sf/saxon/lib/ExtensionFunctionCall;

    invoke-virtual {v0}, Lnet/sf/saxon/lib/ExtensionFunctionCall;->getDefinition()Lnet/sf/saxon/lib/ExtensionFunctionDefinition;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/lib/ExtensionFunctionDefinition;->getMinimumNumberOfArguments()I

    move-result v1

    invoke-virtual {v0}, Lnet/sf/saxon/lib/ExtensionFunctionDefinition;->getMaximumNumberOfArguments()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lnet/sf/saxon/expr/FunctionCall;->checkArgumentCount(II)I

    invoke-virtual {p0}, Lnet/sf/saxon/expr/FunctionCall;->getArity()I

    move-result v1

    invoke-virtual {v0}, Lnet/sf/saxon/lib/ExtensionFunctionDefinition;->getArgumentTypes()[Lnet/sf/saxon/value/SequenceType;

    move-result-object v2

    if-eqz v2, :cond_4

    if-eqz v1, :cond_0

    array-length v3, v2

    if-eqz v3, :cond_4

    :cond_0
    new-array v3, v1, [Lnet/sf/saxon/value/SequenceType;

    invoke-virtual {p1}, Lnet/sf/saxon/expr/parser/ExpressionVisitor;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lnet/sf/saxon/Configuration;->getTypeChecker(Z)Lnet/sf/saxon/expr/parser/TypeChecker;

    move-result-object v4

    move v6, v5

    :goto_0
    if-ge v6, v1, :cond_2

    invoke-virtual {p0, v6}, Lnet/sf/saxon/expr/FunctionCall;->getArg(I)Lnet/sf/saxon/expr/Expression;

    move-result-object v7

    array-length v8, v2

    if-ge v6, v8, :cond_1

    aget-object v8, v2, v6

    goto :goto_1

    :cond_1
    array-length v8, v2

    add-int/lit8 v8, v8, -0x1

    aget-object v8, v2, v8

    :goto_1
    new-instance v9, Lnet/sf/saxon/expr/parser/RoleDiagnostic;

    invoke-virtual {p0}, Lnet/sf/saxon/functions/IntegratedFunctionCall;->getFunctionName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v10

    invoke-virtual {v10}, Lnet/sf/saxon/om/StructuredQName;->getDisplayName()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v5, v10, v6}, Lnet/sf/saxon/expr/parser/RoleDiagnostic;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v4, v7, v8, v9, p1}, Lnet/sf/saxon/expr/parser/TypeChecker;->staticTypeCheck(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/value/SequenceType;Lnet/sf/saxon/expr/parser/RoleDiagnostic;Lnet/sf/saxon/expr/parser/ExpressionVisitor;)Lnet/sf/saxon/expr/Expression;

    move-result-object v7

    invoke-virtual {p0, v6, v7}, Lnet/sf/saxon/expr/FunctionCall;->setArg(ILnet/sf/saxon/expr/Expression;)V

    invoke-virtual {p0, v6}, Lnet/sf/saxon/expr/FunctionCall;->getArg(I)Lnet/sf/saxon/expr/Expression;

    move-result-object v7

    invoke-virtual {v7}, Lnet/sf/saxon/expr/Expression;->getItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object v7

    invoke-virtual {p0, v6}, Lnet/sf/saxon/expr/FunctionCall;->getArg(I)Lnet/sf/saxon/expr/Expression;

    move-result-object v8

    invoke-virtual {v8}, Lnet/sf/saxon/expr/Expression;->getCardinality()I

    move-result v8

    invoke-static {v7, v8}, Lnet/sf/saxon/value/SequenceType;->makeSequenceType(Lnet/sf/saxon/type/ItemType;I)Lnet/sf/saxon/value/SequenceType;

    move-result-object v7

    aput-object v7, v3, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v0, v3}, Lnet/sf/saxon/lib/ExtensionFunctionDefinition;->getResultType([Lnet/sf/saxon/value/SequenceType;)Lnet/sf/saxon/value/SequenceType;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/functions/IntegratedFunctionCall;->q:Lnet/sf/saxon/value/SequenceType;

    iget v0, p0, Lnet/sf/saxon/functions/IntegratedFunctionCall;->r:I

    if-nez v0, :cond_3

    iget-object v0, p0, Lnet/sf/saxon/functions/IntegratedFunctionCall;->p:Lnet/sf/saxon/lib/ExtensionFunctionCall;

    invoke-virtual {p1}, Lnet/sf/saxon/expr/parser/ExpressionVisitor;->getStaticContext()Lnet/sf/saxon/expr/StaticContext;

    move-result-object p1

    invoke-virtual {p0}, Lnet/sf/saxon/expr/FunctionCall;->getArguments()[Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-virtual {v0, p1, v5, v1}, Lnet/sf/saxon/lib/ExtensionFunctionCall;->supplyStaticContext(Lnet/sf/saxon/expr/StaticContext;I[Lnet/sf/saxon/expr/Expression;)V

    :cond_3
    iget p1, p0, Lnet/sf/saxon/functions/IntegratedFunctionCall;->r:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lnet/sf/saxon/functions/IntegratedFunctionCall;->r:I

    return-void

    :cond_4
    new-instance p1, Lnet/sf/saxon/trans/XPathException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Integrated function "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/FunctionCall;->getDisplayName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " failed to declare its argument types"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public computeCardinality()I
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/functions/IntegratedFunctionCall;->q:Lnet/sf/saxon/value/SequenceType;

    invoke-virtual {p0}, Lnet/sf/saxon/value/SequenceType;->getCardinality()I

    move-result p0

    return p0
.end method

.method public computeSpecialProperties()I
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/functions/IntegratedFunctionCall;->p:Lnet/sf/saxon/lib/ExtensionFunctionCall;

    invoke-virtual {p0}, Lnet/sf/saxon/lib/ExtensionFunctionCall;->getDefinition()Lnet/sf/saxon/lib/ExtensionFunctionDefinition;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/lib/ExtensionFunctionDefinition;->hasSideEffects()Z

    move-result p0

    if-eqz p0, :cond_0

    const/high16 p0, 0x2000000

    goto :goto_0

    :cond_0
    const/high16 p0, 0x800000

    :goto_0
    return p0
.end method

.method public copy(Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/expr/Expression;
    .locals 5

    iget-object v0, p0, Lnet/sf/saxon/functions/IntegratedFunctionCall;->p:Lnet/sf/saxon/lib/ExtensionFunctionCall;

    invoke-virtual {v0}, Lnet/sf/saxon/lib/ExtensionFunctionCall;->getDefinition()Lnet/sf/saxon/lib/ExtensionFunctionDefinition;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/lib/ExtensionFunctionDefinition;->makeCallExpression()Lnet/sf/saxon/lib/ExtensionFunctionCall;

    move-result-object v0

    iget-object v1, p0, Lnet/sf/saxon/functions/IntegratedFunctionCall;->p:Lnet/sf/saxon/lib/ExtensionFunctionCall;

    invoke-virtual {v1}, Lnet/sf/saxon/lib/ExtensionFunctionCall;->getDefinition()Lnet/sf/saxon/lib/ExtensionFunctionDefinition;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/sf/saxon/lib/ExtensionFunctionCall;->setDefinition(Lnet/sf/saxon/lib/ExtensionFunctionDefinition;)V

    iget-object v1, p0, Lnet/sf/saxon/functions/IntegratedFunctionCall;->p:Lnet/sf/saxon/lib/ExtensionFunctionCall;

    invoke-virtual {v1, v0}, Lnet/sf/saxon/lib/ExtensionFunctionCall;->copyLocalData(Lnet/sf/saxon/lib/ExtensionFunctionCall;)V

    new-instance v1, Lnet/sf/saxon/functions/IntegratedFunctionCall;

    invoke-virtual {p0}, Lnet/sf/saxon/functions/IntegratedFunctionCall;->getFunctionName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lnet/sf/saxon/functions/IntegratedFunctionCall;-><init>(Lnet/sf/saxon/om/StructuredQName;Lnet/sf/saxon/lib/ExtensionFunctionCall;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/FunctionCall;->getArity()I

    move-result v0

    new-array v2, v0, [Lnet/sf/saxon/expr/Expression;

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    invoke-virtual {p0, v3}, Lnet/sf/saxon/expr/FunctionCall;->getArg(I)Lnet/sf/saxon/expr/Expression;

    move-result-object v4

    invoke-virtual {v4, p1}, Lnet/sf/saxon/expr/Expression;->copy(Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/expr/Expression;

    move-result-object v4

    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1, v2}, Lnet/sf/saxon/expr/FunctionCall;->setArguments([Lnet/sf/saxon/expr/Expression;)V

    iget-object p1, p0, Lnet/sf/saxon/functions/IntegratedFunctionCall;->q:Lnet/sf/saxon/value/SequenceType;

    iput-object p1, v1, Lnet/sf/saxon/functions/IntegratedFunctionCall;->q:Lnet/sf/saxon/value/SequenceType;

    iget p1, p0, Lnet/sf/saxon/functions/IntegratedFunctionCall;->r:I

    iput p1, v1, Lnet/sf/saxon/functions/IntegratedFunctionCall;->r:I

    invoke-static {p0, v1}, Lnet/sf/saxon/expr/parser/ExpressionTool;->copyLocationInfo(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)V

    return-object v1
.end method

.method public effectiveBooleanValue(Lnet/sf/saxon/expr/XPathContext;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/expr/FunctionCall;->getArity()I

    move-result v0

    new-array v1, v0, [Lnet/sf/saxon/om/Sequence;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    invoke-virtual {p0, v2}, Lnet/sf/saxon/expr/FunctionCall;->getArg(I)Lnet/sf/saxon/expr/Expression;

    move-result-object v3

    invoke-virtual {v3, p1}, Lnet/sf/saxon/expr/Expression;->iterate(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object v3

    invoke-static {v3}, Lnet/sf/saxon/om/SequenceTool;->toLazySequence(Lnet/sf/saxon/om/SequenceIterator;)Lnet/sf/saxon/om/Sequence;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lnet/sf/saxon/functions/IntegratedFunctionCall;->p:Lnet/sf/saxon/lib/ExtensionFunctionCall;

    invoke-virtual {v0, p1, v1}, Lnet/sf/saxon/lib/ExtensionFunctionCall;->effectiveBooleanValue(Lnet/sf/saxon/expr/XPathContext;[Lnet/sf/saxon/om/Sequence;)Z

    move-result p0
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p1

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object p0

    invoke-virtual {p1, p0}, Lnet/sf/saxon/trans/XPathException;->maybeSetLocation(Lnet/sf/saxon/s9api/Location;)V

    throw p1
.end method

.method public export(Lnet/sf/saxon/trace/ExpressionPresenter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const-string v0, "ifCall"

    invoke-virtual {p1, v0, p0}, Lnet/sf/saxon/trace/ExpressionPresenter;->startElement(Ljava/lang/String;Lnet/sf/saxon/expr/Expression;)I

    const-string v0, "name"

    invoke-virtual {p0}, Lnet/sf/saxon/functions/IntegratedFunctionCall;->getFunctionName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lnet/sf/saxon/trace/ExpressionPresenter;->emitAttribute(Ljava/lang/String;Lnet/sf/saxon/om/StructuredQName;)V

    iget-object v0, p0, Lnet/sf/saxon/functions/IntegratedFunctionCall;->q:Lnet/sf/saxon/value/SequenceType;

    invoke-virtual {v0}, Lnet/sf/saxon/value/SequenceType;->toAlphaCode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "type"

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
.end method

.method public getFunction()Lnet/sf/saxon/lib/ExtensionFunctionCall;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/functions/IntegratedFunctionCall;->p:Lnet/sf/saxon/lib/ExtensionFunctionCall;

    return-object p0
.end method

.method public getFunctionName()Lnet/sf/saxon/om/StructuredQName;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/functions/IntegratedFunctionCall;->o:Lnet/sf/saxon/om/StructuredQName;

    return-object p0
.end method

.method public getIntrinsicDependencies()I
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/functions/IntegratedFunctionCall;->p:Lnet/sf/saxon/lib/ExtensionFunctionCall;

    invoke-virtual {p0}, Lnet/sf/saxon/lib/ExtensionFunctionCall;->getDefinition()Lnet/sf/saxon/lib/ExtensionFunctionDefinition;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/lib/ExtensionFunctionDefinition;->dependsOnFocus()Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x1e

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getItemType()Lnet/sf/saxon/type/ItemType;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/functions/IntegratedFunctionCall;->q:Lnet/sf/saxon/value/SequenceType;

    invoke-virtual {p0}, Lnet/sf/saxon/value/SequenceType;->getPrimaryType()Lnet/sf/saxon/type/ItemType;

    move-result-object p0

    return-object p0
.end method

.method public getTargetFunction(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/Function;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public iterate(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/SequenceIterator;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/functions/IntegratedFunctionCall;->p:Lnet/sf/saxon/lib/ExtensionFunctionCall;

    invoke-virtual {v0}, Lnet/sf/saxon/lib/ExtensionFunctionCall;->getDefinition()Lnet/sf/saxon/lib/ExtensionFunctionDefinition;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/FunctionCall;->getArity()I

    move-result v1

    new-array v2, v1, [Lnet/sf/saxon/om/Sequence;

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v1, :cond_0

    invoke-virtual {p0, v4}, Lnet/sf/saxon/expr/FunctionCall;->getArg(I)Lnet/sf/saxon/expr/Expression;

    move-result-object v5

    invoke-virtual {v5, p1}, Lnet/sf/saxon/expr/Expression;->iterate(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object v5

    invoke-static {v5}, Lnet/sf/saxon/om/SequenceTool;->toLazySequence(Lnet/sf/saxon/om/SequenceIterator;)Lnet/sf/saxon/om/Sequence;

    move-result-object v5

    aput-object v5, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    new-instance v1, Lnet/sf/saxon/expr/parser/RoleDiagnostic;

    invoke-virtual {p0}, Lnet/sf/saxon/functions/IntegratedFunctionCall;->getFunctionName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v4

    invoke-virtual {v4}, Lnet/sf/saxon/om/StructuredQName;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x5

    invoke-direct {v1, v5, v4, v3}, Lnet/sf/saxon/expr/parser/RoleDiagnostic;-><init>(ILjava/lang/String;I)V

    invoke-interface {p1}, Lnet/sf/saxon/expr/XPathContext;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v3

    invoke-virtual {v3}, Lnet/sf/saxon/Configuration;->getTypeHierarchy()Lnet/sf/saxon/type/TypeHierarchy;

    move-result-object v3

    :try_start_0
    iget-object v4, p0, Lnet/sf/saxon/functions/IntegratedFunctionCall;->p:Lnet/sf/saxon/lib/ExtensionFunctionCall;

    invoke-virtual {v4, p1, v2}, Lnet/sf/saxon/lib/ExtensionFunctionCall;->call(Lnet/sf/saxon/expr/XPathContext;[Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/om/Sequence;

    move-result-object v2

    invoke-interface {v2}, Lnet/sf/saxon/om/Sequence;->iterate()Lnet/sf/saxon/om/SequenceIterator;

    move-result-object v2
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v0}, Lnet/sf/saxon/lib/ExtensionFunctionDefinition;->trustResultType()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lnet/sf/saxon/functions/IntegratedFunctionCall;->q:Lnet/sf/saxon/value/SequenceType;

    invoke-virtual {v0}, Lnet/sf/saxon/value/SequenceType;->getCardinality()I

    move-result v0

    const v4, 0xe000

    if-eq v0, v4, :cond_1

    new-instance v4, Lnet/sf/saxon/expr/CardinalityCheckingIterator;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object v5

    invoke-direct {v4, v2, v0, v1, v5}, Lnet/sf/saxon/expr/CardinalityCheckingIterator;-><init>(Lnet/sf/saxon/om/SequenceIterator;ILnet/sf/saxon/expr/parser/RoleDiagnostic;Lnet/sf/saxon/s9api/Location;)V

    move-object v2, v4

    :cond_1
    iget-object v0, p0, Lnet/sf/saxon/functions/IntegratedFunctionCall;->q:Lnet/sf/saxon/value/SequenceType;

    invoke-virtual {v0}, Lnet/sf/saxon/value/SequenceType;->getPrimaryType()Lnet/sf/saxon/type/ItemType;

    move-result-object v0

    invoke-static {}, Lnet/sf/saxon/type/AnyItemType;->getInstance()Lnet/sf/saxon/type/AnyItemType;

    move-result-object v4

    const/4 v5, 0x1

    if-eq v0, v4, :cond_2

    new-instance v4, Lnet/sf/saxon/expr/ItemMappingIterator;

    new-instance v6, Lcom/sunia/HTREnginev2/lni;

    invoke-direct {v6, p0, v0, v3, v1}, Lcom/sunia/HTREnginev2/lni;-><init>(Lnet/sf/saxon/functions/IntegratedFunctionCall;Lnet/sf/saxon/type/ItemType;Lnet/sf/saxon/type/TypeHierarchy;Lnet/sf/saxon/expr/parser/RoleDiagnostic;)V

    invoke-static {v6}, Lnet/sf/saxon/expr/ItemMapper;->of(Lnet/sf/saxon/expr/ItemMapper$Lambda;)Lnet/sf/saxon/expr/ItemMapper;

    move-result-object p0

    invoke-direct {v4, v2, p0, v5}, Lnet/sf/saxon/expr/ItemMappingIterator;-><init>(Lnet/sf/saxon/om/SequenceIterator;Lnet/sf/saxon/expr/ItemMappingFunction;Z)V

    move-object v2, v4

    :cond_2
    invoke-static {}, Lnet/sf/saxon/pattern/AnyNodeTest;->getInstance()Lnet/sf/saxon/pattern/AnyNodeTest;

    move-result-object p0

    invoke-virtual {v3, v0, p0}, Lnet/sf/saxon/type/TypeHierarchy;->relationship(Lnet/sf/saxon/type/ItemType;Lnet/sf/saxon/type/ItemType;)Lnet/sf/saxon/type/Affinity;

    move-result-object p0

    sget-object v0, Lnet/sf/saxon/type/Affinity;->DISJOINT:Lnet/sf/saxon/type/Affinity;

    if-eq p0, v0, :cond_3

    new-instance p0, Lnet/sf/saxon/expr/ItemMappingIterator;

    new-instance v0, Lnet/sf/saxon/functions/IntegratedFunctionCall$ConfigurationCheckingFunction;

    invoke-interface {p1}, Lnet/sf/saxon/expr/XPathContext;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p1

    invoke-direct {v0, p1}, Lnet/sf/saxon/functions/IntegratedFunctionCall$ConfigurationCheckingFunction;-><init>(Lnet/sf/saxon/Configuration;)V

    invoke-direct {p0, v2, v0, v5}, Lnet/sf/saxon/expr/ItemMappingIterator;-><init>(Lnet/sf/saxon/om/SequenceIterator;Lnet/sf/saxon/expr/ItemMappingFunction;Z)V

    move-object v2, p0

    :cond_3
    return-object v2

    :catch_0
    move-exception p1

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object p0

    invoke-virtual {p1, p0}, Lnet/sf/saxon/trans/XPathException;->maybeSetLocation(Lnet/sf/saxon/s9api/Location;)V

    throw p1
.end method

.method public preEvaluate(Lnet/sf/saxon/expr/parser/ExpressionVisitor;)Lnet/sf/saxon/expr/Expression;
    .locals 0

    return-object p0
.end method

.method public setResultType(Lnet/sf/saxon/value/SequenceType;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/functions/IntegratedFunctionCall;->q:Lnet/sf/saxon/value/SequenceType;

    return-void
.end method

.method public typeCheck(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lnet/sf/saxon/expr/FunctionCall;->typeCheck(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    instance-of v1, v0, Lnet/sf/saxon/functions/IntegratedFunctionCall;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Lnet/sf/saxon/functions/IntegratedFunctionCall;

    iget-object v1, v1, Lnet/sf/saxon/functions/IntegratedFunctionCall;->p:Lnet/sf/saxon/lib/ExtensionFunctionCall;

    invoke-virtual {p1}, Lnet/sf/saxon/expr/parser/ExpressionVisitor;->getStaticContext()Lnet/sf/saxon/expr/StaticContext;

    move-result-object v2

    invoke-virtual {p0}, Lnet/sf/saxon/expr/FunctionCall;->getArguments()[Lnet/sf/saxon/expr/Expression;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lnet/sf/saxon/lib/ExtensionFunctionCall;->rewrite(Lnet/sf/saxon/expr/StaticContext;[Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    invoke-static {p0, v1}, Lnet/sf/saxon/expr/parser/ExpressionTool;->copyLocationInfo(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)V

    invoke-virtual {v1}, Lnet/sf/saxon/expr/Expression;->simplify()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/expr/Expression;->typeCheck(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/expr/Expression;->optimize(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v0
.end method
