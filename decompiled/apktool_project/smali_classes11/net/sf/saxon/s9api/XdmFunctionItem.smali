.class public Lnet/sf/saxon/s9api/XdmFunctionItem;
.super Lnet/sf/saxon/s9api/XdmItem;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lnet/sf/saxon/om/Function;)V
    .locals 0

    invoke-direct {p0, p1}, Lnet/sf/saxon/s9api/XdmItem;-><init>(Lnet/sf/saxon/om/Item;)V

    return-void
.end method

.method public static synthetic a(Lnet/sf/saxon/s9api/XdmFunctionItem;Lnet/sf/saxon/s9api/Processor;Lnet/sf/saxon/s9api/XdmValue;)Lnet/sf/saxon/s9api/XdmValue;
    .locals 0

    invoke-direct {p0, p1, p2}, Lnet/sf/saxon/s9api/XdmFunctionItem;->b(Lnet/sf/saxon/s9api/Processor;Lnet/sf/saxon/s9api/XdmValue;)Lnet/sf/saxon/s9api/XdmValue;

    move-result-object p0

    return-object p0
.end method

.method private synthetic b(Lnet/sf/saxon/s9api/Processor;Lnet/sf/saxon/s9api/XdmValue;)Lnet/sf/saxon/s9api/XdmValue;
    .locals 2

    const/4 v0, 0x1

    :try_start_0
    new-array v0, v0, [Lnet/sf/saxon/s9api/XdmValue;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-virtual {p0, p1, v0}, Lnet/sf/saxon/s9api/XdmFunctionItem;->call(Lnet/sf/saxon/s9api/Processor;[Lnet/sf/saxon/s9api/XdmValue;)Lnet/sf/saxon/s9api/XdmValue;

    move-result-object p0
    :try_end_0
    .catch Lnet/sf/saxon/s9api/SaxonApiException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Lnet/sf/saxon/s9api/SaxonApiUncheckedException;

    invoke-direct {p1, p0}, Lnet/sf/saxon/s9api/SaxonApiUncheckedException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static getSystemFunction(Lnet/sf/saxon/s9api/Processor;Lnet/sf/saxon/s9api/QName;I)Lnet/sf/saxon/s9api/XdmFunctionItem;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/s9api/SaxonApiException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/s9api/Processor;->getUnderlyingConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p0

    invoke-virtual {p1}, Lnet/sf/saxon/s9api/QName;->getStructuredQName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/Configuration;->getSystemFunction(Lnet/sf/saxon/om/StructuredQName;I)Lnet/sf/saxon/om/Function;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    new-instance p1, Lnet/sf/saxon/s9api/XdmFunctionItem;

    invoke-direct {p1, p0}, Lnet/sf/saxon/s9api/XdmFunctionItem;-><init>(Lnet/sf/saxon/om/Function;)V

    move-object p0, p1

    :goto_0
    return-object p0
.end method


# virtual methods
.method public asFunction(Lnet/sf/saxon/s9api/Processor;)Ljava/util/function/Function;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/sf/saxon/s9api/Processor;",
            ")",
            "Ljava/util/function/Function<",
            "-",
            "Lnet/sf/saxon/s9api/XdmValue;",
            "+",
            "Lnet/sf/saxon/s9api/XdmValue;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/s9api/XdmFunctionItem;->getArity()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    new-instance v0, Lcom/sunia/HTREnginev2/avo;

    invoke-direct {v0, p0, p1}, Lcom/sunia/HTREnginev2/avo;-><init>(Lnet/sf/saxon/s9api/XdmFunctionItem;Lnet/sf/saxon/s9api/Processor;)V

    return-object v0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Function arity must be one"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public asStep(Lnet/sf/saxon/s9api/Processor;)Lnet/sf/saxon/s9api/streams/Step;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/sf/saxon/s9api/Processor;",
            ")",
            "Lnet/sf/saxon/s9api/streams/Step<",
            "Lnet/sf/saxon/s9api/XdmItem;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/s9api/XdmFunctionItem;->getArity()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    new-instance v0, Lnet/sf/saxon/s9api/XdmFunctionItem$a;

    invoke-direct {v0, p0, p1}, Lnet/sf/saxon/s9api/XdmFunctionItem$a;-><init>(Lnet/sf/saxon/s9api/XdmFunctionItem;Lnet/sf/saxon/s9api/Processor;)V

    return-object v0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Function arity must be one"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public varargs call(Lnet/sf/saxon/s9api/Processor;[Lnet/sf/saxon/s9api/XdmValue;)Lnet/sf/saxon/s9api/XdmValue;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/s9api/SaxonApiException;
        }
    .end annotation

    array-length v0, p2

    invoke-virtual {p0}, Lnet/sf/saxon/s9api/XdmFunctionItem;->getArity()I

    move-result v1

    if-ne v0, v1, :cond_3

    :try_start_0
    invoke-virtual {p0}, Lnet/sf/saxon/s9api/XdmItem;->getUnderlyingValue()Lnet/sf/saxon/om/Item;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/om/Function;

    invoke-interface {p0}, Lnet/sf/saxon/om/Function;->getFunctionItemType()Lnet/sf/saxon/type/FunctionItemType;

    move-result-object v0

    array-length v1, p2

    new-array v1, v1, [Lnet/sf/saxon/om/Sequence;

    invoke-virtual {p1}, Lnet/sf/saxon/s9api/Processor;->getUnderlyingConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v2

    invoke-virtual {v2}, Lnet/sf/saxon/Configuration;->getTypeHierarchy()Lnet/sf/saxon/type/TypeHierarchy;

    move-result-object v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    array-length v5, p2
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v6, ""

    if-ge v4, v5, :cond_1

    :try_start_1
    invoke-interface {v0}, Lnet/sf/saxon/type/FunctionItemType;->getArgumentTypes()[Lnet/sf/saxon/value/SequenceType;

    move-result-object v5

    aget-object v5, v5, v4

    aget-object v7, p2, v4

    invoke-virtual {v7}, Lnet/sf/saxon/s9api/XdmValue;->getUnderlyingValue()Lnet/sf/saxon/om/GroundedValue;

    move-result-object v7

    invoke-virtual {v5, v7, v2}, Lnet/sf/saxon/value/SequenceType;->matches(Lnet/sf/saxon/om/GroundedValue;Lnet/sf/saxon/type/TypeHierarchy;)Z

    move-result v8

    if-nez v8, :cond_0

    new-instance v8, Lnet/sf/saxon/expr/parser/RoleDiagnostic;

    invoke-direct {v8, v3, v6, v4}, Lnet/sf/saxon/expr/parser/RoleDiagnostic;-><init>(ILjava/lang/String;I)V

    sget-object v6, Lnet/sf/saxon/expr/parser/Loc;->NONE:Lnet/sf/saxon/expr/parser/Loc;

    invoke-virtual {v2, v7, v5, v8, v6}, Lnet/sf/saxon/type/TypeHierarchy;->applyFunctionConversionRules(Lnet/sf/saxon/om/Sequence;Lnet/sf/saxon/value/SequenceType;Lnet/sf/saxon/expr/parser/RoleDiagnostic;Lnet/sf/saxon/s9api/Location;)Lnet/sf/saxon/om/GroundedValue;

    move-result-object v7

    :cond_0
    aput-object v7, v1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lnet/sf/saxon/s9api/Processor;->getUnderlyingConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p1

    new-instance p2, Lnet/sf/saxon/Controller;

    invoke-direct {p2, p1}, Lnet/sf/saxon/Controller;-><init>(Lnet/sf/saxon/Configuration;)V

    invoke-virtual {p2}, Lnet/sf/saxon/Controller;->newXPathContext()Lnet/sf/saxon/expr/XPathContextMajor;

    move-result-object p1

    invoke-interface {p0, p1, p2}, Lnet/sf/saxon/om/Function;->makeNewContext(Lnet/sf/saxon/expr/XPathContext;Lnet/sf/saxon/expr/ContextOriginator;)Lnet/sf/saxon/expr/XPathContext;

    move-result-object p1

    invoke-interface {p0, p1, v1}, Lnet/sf/saxon/expr/Callable;->call(Lnet/sf/saxon/expr/XPathContext;[Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/om/Sequence;

    move-result-object p1

    invoke-interface {p1}, Lnet/sf/saxon/om/Sequence;->materialize()Lnet/sf/saxon/om/GroundedValue;

    move-result-object p1

    invoke-interface {p0}, Lnet/sf/saxon/om/Function;->isTrustedResultType()Z

    move-result p0

    if-nez p0, :cond_2

    invoke-interface {v0}, Lnet/sf/saxon/type/FunctionItemType;->getResultType()Lnet/sf/saxon/value/SequenceType;

    move-result-object p0

    invoke-virtual {p0, p1, v2}, Lnet/sf/saxon/value/SequenceType;->matches(Lnet/sf/saxon/om/GroundedValue;Lnet/sf/saxon/type/TypeHierarchy;)Z

    move-result p2

    if-nez p2, :cond_2

    new-instance p2, Lnet/sf/saxon/expr/parser/RoleDiagnostic;

    const/4 v0, 0x5

    invoke-direct {p2, v0, v6, v3}, Lnet/sf/saxon/expr/parser/RoleDiagnostic;-><init>(ILjava/lang/String;I)V

    sget-object v0, Lnet/sf/saxon/expr/parser/Loc;->NONE:Lnet/sf/saxon/expr/parser/Loc;

    invoke-virtual {v2, p1, p0, p2, v0}, Lnet/sf/saxon/type/TypeHierarchy;->applyFunctionConversionRules(Lnet/sf/saxon/om/Sequence;Lnet/sf/saxon/value/SequenceType;Lnet/sf/saxon/expr/parser/RoleDiagnostic;Lnet/sf/saxon/s9api/Location;)Lnet/sf/saxon/om/GroundedValue;

    move-result-object p1

    :cond_2
    invoke-static {p1}, Lnet/sf/saxon/s9api/XdmValue;->wrap(Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/s9api/XdmValue;

    move-result-object p0
    :try_end_1
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_1 .. :try_end_1} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Lnet/sf/saxon/s9api/SaxonApiException;

    invoke-direct {p1, p0}, Lnet/sf/saxon/s9api/SaxonApiException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_3
    new-instance p1, Lnet/sf/saxon/s9api/SaxonApiException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Supplied "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p2, p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " arguments, required "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/sf/saxon/s9api/XdmFunctionItem;->getArity()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lnet/sf/saxon/s9api/SaxonApiException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getArity()I
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/s9api/XdmItem;->getUnderlyingValue()Lnet/sf/saxon/om/Item;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/om/Function;

    invoke-interface {p0}, Lnet/sf/saxon/om/Function;->getArity()I

    move-result p0

    return p0
.end method

.method public getName()Lnet/sf/saxon/s9api/QName;
    .locals 1

    invoke-virtual {p0}, Lnet/sf/saxon/s9api/XdmItem;->getUnderlyingValue()Lnet/sf/saxon/om/Item;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/om/Function;

    invoke-interface {p0}, Lnet/sf/saxon/om/Function;->getFunctionName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Lnet/sf/saxon/s9api/QName;

    invoke-direct {v0, p0}, Lnet/sf/saxon/s9api/QName;-><init>(Lnet/sf/saxon/om/StructuredQName;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public isAtomicValue()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
