.class public Lnet/sf/saxon/functions/hof/CoercedFunction;
.super Lnet/sf/saxon/functions/AbstractFunction;
.source "SourceFile"


# instance fields
.field public e:Lnet/sf/saxon/om/Function;

.field public final f:Lnet/sf/saxon/type/SpecificFunctionType;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/om/Function;Lnet/sf/saxon/type/SpecificFunctionType;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lnet/sf/saxon/functions/AbstractFunction;-><init>()V

    .line 2
    invoke-interface {p1}, Lnet/sf/saxon/om/Function;->getArity()I

    move-result v0

    invoke-virtual {p2}, Lnet/sf/saxon/type/SpecificFunctionType;->getArity()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 3
    iput-object p1, p0, Lnet/sf/saxon/functions/hof/CoercedFunction;->e:Lnet/sf/saxon/om/Function;

    .line 4
    iput-object p2, p0, Lnet/sf/saxon/functions/hof/CoercedFunction;->f:Lnet/sf/saxon/type/SpecificFunctionType;

    return-void

    .line 5
    :cond_0
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    .line 6
    invoke-virtual {p2}, Lnet/sf/saxon/type/SpecificFunctionType;->getArity()I

    move-result p2

    invoke-static {p1, p2}, Lnet/sf/saxon/functions/hof/CoercedFunction;->a(Lnet/sf/saxon/om/Function;I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "XPTY0004"

    invoke-direct {p0, p1, p2}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>(Lnet/sf/saxon/type/SpecificFunctionType;)V
    .locals 0

    .line 7
    invoke-direct {p0}, Lnet/sf/saxon/functions/AbstractFunction;-><init>()V

    .line 8
    iput-object p1, p0, Lnet/sf/saxon/functions/hof/CoercedFunction;->f:Lnet/sf/saxon/type/SpecificFunctionType;

    return-void
.end method

.method public static a(Lnet/sf/saxon/om/Function;I)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The supplied function ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Lnet/sf/saxon/om/Function;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ") has "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Lnet/sf/saxon/om/Function;->getArity()I

    move-result p0

    invoke-static {p0}, Lnet/sf/saxon/expr/FunctionCall;->pluralArguments(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " - expected "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static coerce(Lnet/sf/saxon/om/Function;Lnet/sf/saxon/type/SpecificFunctionType;Lnet/sf/saxon/expr/parser/RoleDiagnostic;)Lnet/sf/saxon/functions/hof/CoercedFunction;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p1}, Lnet/sf/saxon/type/SpecificFunctionType;->getArity()I

    move-result v0

    invoke-interface {p0}, Lnet/sf/saxon/om/Function;->getArity()I

    move-result v1

    if-ne v1, v0, :cond_0

    new-instance p2, Lnet/sf/saxon/functions/hof/CoercedFunction;

    invoke-direct {p2, p0, p1}, Lnet/sf/saxon/functions/hof/CoercedFunction;-><init>(Lnet/sf/saxon/om/Function;Lnet/sf/saxon/type/SpecificFunctionType;)V

    return-object p2

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p2, p1, p0, v1}, Lnet/sf/saxon/expr/parser/RoleDiagnostic;->composeErrorMessage(Lnet/sf/saxon/type/ItemType;Lnet/sf/saxon/om/Item;Lnet/sf/saxon/type/TypeHierarchy;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ". "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0, v0}, Lnet/sf/saxon/functions/hof/CoercedFunction;->a(Lnet/sf/saxon/om/Function;I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lnet/sf/saxon/trans/XPathException;

    const-string p2, "XPTY0004"

    invoke-direct {p1, p0, p2}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public call(Lnet/sf/saxon/expr/XPathContext;[Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/om/Sequence;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/functions/hof/CoercedFunction;->f:Lnet/sf/saxon/type/SpecificFunctionType;

    iget-object v1, p0, Lnet/sf/saxon/functions/hof/CoercedFunction;->e:Lnet/sf/saxon/om/Function;

    invoke-interface {v1}, Lnet/sf/saxon/om/Function;->getFunctionItemType()Lnet/sf/saxon/type/FunctionItemType;

    move-result-object v1

    invoke-interface {v1}, Lnet/sf/saxon/type/FunctionItemType;->getArgumentTypes()[Lnet/sf/saxon/value/SequenceType;

    move-result-object v1

    invoke-interface {p1}, Lnet/sf/saxon/expr/XPathContext;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v2

    invoke-virtual {v2}, Lnet/sf/saxon/Configuration;->getTypeHierarchy()Lnet/sf/saxon/type/TypeHierarchy;

    move-result-object v2

    array-length v3, p2

    new-array v3, v3, [Lnet/sf/saxon/om/Sequence;

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    array-length v6, p2

    if-ge v5, v6, :cond_1

    aget-object v6, p2, v5

    invoke-interface {v6}, Lnet/sf/saxon/om/Sequence;->materialize()Lnet/sf/saxon/om/GroundedValue;

    move-result-object v6

    aget-object v7, v1, v5

    invoke-virtual {v7, v6, v2}, Lnet/sf/saxon/value/SequenceType;->matches(Lnet/sf/saxon/om/GroundedValue;Lnet/sf/saxon/type/TypeHierarchy;)Z

    move-result v7

    if-eqz v7, :cond_0

    aput-object v6, v3, v5

    goto :goto_1

    :cond_0
    new-instance v7, Lnet/sf/saxon/expr/parser/RoleDiagnostic;

    iget-object v8, p0, Lnet/sf/saxon/functions/hof/CoercedFunction;->e:Lnet/sf/saxon/om/Function;

    invoke-interface {v8}, Lnet/sf/saxon/om/Function;->getDescription()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v4, v8, v5}, Lnet/sf/saxon/expr/parser/RoleDiagnostic;-><init>(ILjava/lang/String;I)V

    aget-object v8, v1, v5

    sget-object v9, Lnet/sf/saxon/expr/parser/Loc;->NONE:Lnet/sf/saxon/expr/parser/Loc;

    invoke-virtual {v2, v6, v8, v7, v9}, Lnet/sf/saxon/type/TypeHierarchy;->applyFunctionConversionRules(Lnet/sf/saxon/om/Sequence;Lnet/sf/saxon/value/SequenceType;Lnet/sf/saxon/expr/parser/RoleDiagnostic;Lnet/sf/saxon/s9api/Location;)Lnet/sf/saxon/om/GroundedValue;

    move-result-object v6

    aput-object v6, v3, v5

    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lnet/sf/saxon/functions/hof/CoercedFunction;->e:Lnet/sf/saxon/om/Function;

    invoke-interface {p2, p1, v3}, Lnet/sf/saxon/expr/Callable;->call(Lnet/sf/saxon/expr/XPathContext;[Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/om/Sequence;

    move-result-object p1

    invoke-interface {p1}, Lnet/sf/saxon/om/Sequence;->materialize()Lnet/sf/saxon/om/GroundedValue;

    move-result-object p1

    invoke-virtual {v0}, Lnet/sf/saxon/type/SpecificFunctionType;->getResultType()Lnet/sf/saxon/value/SequenceType;

    move-result-object p2

    invoke-virtual {p2, p1, v2}, Lnet/sf/saxon/value/SequenceType;->matches(Lnet/sf/saxon/om/GroundedValue;Lnet/sf/saxon/type/TypeHierarchy;)Z

    move-result p2

    if-eqz p2, :cond_2

    return-object p1

    :cond_2
    new-instance p2, Lnet/sf/saxon/expr/parser/RoleDiagnostic;

    iget-object p0, p0, Lnet/sf/saxon/functions/hof/CoercedFunction;->e:Lnet/sf/saxon/om/Function;

    invoke-interface {p0}, Lnet/sf/saxon/om/Function;->getDescription()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x5

    invoke-direct {p2, v1, p0, v4}, Lnet/sf/saxon/expr/parser/RoleDiagnostic;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0}, Lnet/sf/saxon/type/SpecificFunctionType;->getResultType()Lnet/sf/saxon/value/SequenceType;

    move-result-object p0

    sget-object v0, Lnet/sf/saxon/expr/parser/Loc;->NONE:Lnet/sf/saxon/expr/parser/Loc;

    invoke-virtual {v2, p1, p0, p2, v0}, Lnet/sf/saxon/type/TypeHierarchy;->applyFunctionConversionRules(Lnet/sf/saxon/om/Sequence;Lnet/sf/saxon/value/SequenceType;Lnet/sf/saxon/expr/parser/RoleDiagnostic;Lnet/sf/saxon/s9api/Location;)Lnet/sf/saxon/om/GroundedValue;

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

    const-string v0, "coercedFn"

    invoke-virtual {p1, v0}, Lnet/sf/saxon/trace/ExpressionPresenter;->startElement(Ljava/lang/String;)I

    iget-object v0, p0, Lnet/sf/saxon/functions/hof/CoercedFunction;->f:Lnet/sf/saxon/type/SpecificFunctionType;

    invoke-virtual {v0}, Lnet/sf/saxon/type/SpecificFunctionType;->toExportString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "type"

    invoke-virtual {p1, v1, v0}, Lnet/sf/saxon/trace/ExpressionPresenter;->emitAttribute(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lnet/sf/saxon/functions/hof/FunctionLiteral;

    iget-object p0, p0, Lnet/sf/saxon/functions/hof/CoercedFunction;->e:Lnet/sf/saxon/om/Function;

    invoke-direct {v0, p0}, Lnet/sf/saxon/functions/hof/FunctionLiteral;-><init>(Lnet/sf/saxon/om/Function;)V

    invoke-virtual {v0, p1}, Lnet/sf/saxon/functions/hof/FunctionLiteral;->export(Lnet/sf/saxon/trace/ExpressionPresenter;)V

    invoke-virtual {p1}, Lnet/sf/saxon/trace/ExpressionPresenter;->endElement()I

    return-void
.end method

.method public getAnnotations()Lnet/sf/saxon/query/AnnotationList;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/functions/hof/CoercedFunction;->e:Lnet/sf/saxon/om/Function;

    invoke-interface {p0}, Lnet/sf/saxon/om/Function;->getAnnotations()Lnet/sf/saxon/query/AnnotationList;

    move-result-object p0

    return-object p0
.end method

.method public getArity()I
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/functions/hof/CoercedFunction;->e:Lnet/sf/saxon/om/Function;

    invoke-interface {p0}, Lnet/sf/saxon/om/Function;->getArity()I

    move-result p0

    return p0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "coerced "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lnet/sf/saxon/functions/hof/CoercedFunction;->e:Lnet/sf/saxon/om/Function;

    invoke-interface {p0}, Lnet/sf/saxon/om/Function;->getDescription()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getFunctionItemType()Lnet/sf/saxon/type/FunctionItemType;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/functions/hof/CoercedFunction;->f:Lnet/sf/saxon/type/SpecificFunctionType;

    return-object p0
.end method

.method public getFunctionName()Lnet/sf/saxon/om/StructuredQName;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/functions/hof/CoercedFunction;->e:Lnet/sf/saxon/om/Function;

    invoke-interface {p0}, Lnet/sf/saxon/om/Function;->getFunctionName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object p0

    return-object p0
.end method

.method public setTargetFunction(Lnet/sf/saxon/om/Function;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-interface {p1}, Lnet/sf/saxon/om/Function;->getArity()I

    move-result v0

    iget-object v1, p0, Lnet/sf/saxon/functions/hof/CoercedFunction;->f:Lnet/sf/saxon/type/SpecificFunctionType;

    invoke-virtual {v1}, Lnet/sf/saxon/type/SpecificFunctionType;->getArity()I

    move-result v1

    if-ne v0, v1, :cond_0

    iput-object p1, p0, Lnet/sf/saxon/functions/hof/CoercedFunction;->e:Lnet/sf/saxon/om/Function;

    return-void

    :cond_0
    new-instance v0, Lnet/sf/saxon/trans/XPathException;

    iget-object p0, p0, Lnet/sf/saxon/functions/hof/CoercedFunction;->f:Lnet/sf/saxon/type/SpecificFunctionType;

    invoke-virtual {p0}, Lnet/sf/saxon/type/SpecificFunctionType;->getArity()I

    move-result p0

    invoke-static {p1, p0}, Lnet/sf/saxon/functions/hof/CoercedFunction;->a(Lnet/sf/saxon/om/Function;I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "XPTY0004"

    invoke-direct {v0, p0, p1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0
.end method

.method public typeCheck(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object p0, p0, Lnet/sf/saxon/functions/hof/CoercedFunction;->e:Lnet/sf/saxon/om/Function;

    instance-of v0, p0, Lnet/sf/saxon/functions/AbstractFunction;

    if-eqz v0, :cond_0

    check-cast p0, Lnet/sf/saxon/functions/AbstractFunction;

    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/functions/AbstractFunction;->typeCheck(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)V

    :cond_0
    return-void
.end method
