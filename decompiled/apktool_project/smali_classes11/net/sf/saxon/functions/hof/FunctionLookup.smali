.class public Lnet/sf/saxon/functions/hof/FunctionLookup;
.super Lnet/sf/saxon/functions/ContextAccessorFunction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/sf/saxon/functions/hof/FunctionLookup$FunctionLookupExportAgent;
    }
.end annotation


# instance fields
.field public h:Lnet/sf/saxon/expr/XPathContext;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lnet/sf/saxon/functions/ContextAccessorFunction;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/sf/saxon/functions/hof/FunctionLookup;->h:Lnet/sf/saxon/expr/XPathContext;

    return-void
.end method


# virtual methods
.method public bindContext(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/Function;
    .locals 3

    invoke-virtual {p0}, Lnet/sf/saxon/functions/SystemFunction;->getRetainedStaticContext()Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    move-result-object p0

    const/4 v0, 0x2

    const-string v1, "function-lookup"

    invoke-static {v1, p0, v0}, Lnet/sf/saxon/functions/SystemFunction;->makeFunction(Ljava/lang/String;Lnet/sf/saxon/expr/parser/RetainedStaticContext;I)Lnet/sf/saxon/functions/SystemFunction;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/functions/hof/FunctionLookup;

    invoke-interface {p1}, Lnet/sf/saxon/expr/XPathContext;->getCurrentIterator()Lnet/sf/saxon/om/FocusIterator;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lnet/sf/saxon/expr/XPathContext;->newMinorContext()Lnet/sf/saxon/expr/XPathContextMinor;

    move-result-object v1

    new-instance v2, Lnet/sf/saxon/tree/iter/ManualIterator;

    invoke-interface {p1}, Lnet/sf/saxon/expr/XPathContext;->getContextItem()Lnet/sf/saxon/om/Item;

    move-result-object p1

    invoke-interface {v0}, Lnet/sf/saxon/om/FocusIterator;->position()I

    move-result v0

    invoke-direct {v2, p1, v0}, Lnet/sf/saxon/tree/iter/ManualIterator;-><init>(Lnet/sf/saxon/om/Item;I)V

    invoke-interface {v1, v2}, Lnet/sf/saxon/expr/XPathContext;->setCurrentIterator(Lnet/sf/saxon/om/FocusIterator;)V

    iput-object v1, p0, Lnet/sf/saxon/functions/hof/FunctionLookup;->h:Lnet/sf/saxon/expr/XPathContext;

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lnet/sf/saxon/functions/hof/FunctionLookup;->h:Lnet/sf/saxon/expr/XPathContext;

    :goto_0
    return-object p0
.end method

.method public call(Lnet/sf/saxon/expr/XPathContext;[Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/om/Sequence;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/functions/hof/FunctionLookup;->h:Lnet/sf/saxon/expr/XPathContext;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    const/4 v0, 0x0

    aget-object v0, p2, v0

    invoke-interface {v0}, Lnet/sf/saxon/om/Sequence;->head()Lnet/sf/saxon/om/Item;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/value/QNameValue;

    const/4 v1, 0x1

    aget-object p2, p2, v1

    invoke-interface {p2}, Lnet/sf/saxon/om/Sequence;->head()Lnet/sf/saxon/om/Item;

    move-result-object p2

    check-cast p2, Lnet/sf/saxon/value/IntegerValue;

    invoke-virtual {v0}, Lnet/sf/saxon/value/QualifiedNameValue;->getStructuredQName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v1

    invoke-virtual {p2}, Lnet/sf/saxon/value/NumericValue;->longValue()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-virtual {p0, v1, v2, p1}, Lnet/sf/saxon/functions/hof/FunctionLookup;->lookup(Lnet/sf/saxon/om/StructuredQName;ILnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/Function;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-static {}, Lnet/sf/saxon/value/EmptySequence;->getInstance()Lnet/sf/saxon/value/EmptySequence;

    move-result-object p0

    return-object p0

    :cond_1
    instance-of v2, v1, Lnet/sf/saxon/functions/ContextAccessorFunction;

    if-eqz v2, :cond_2

    check-cast v1, Lnet/sf/saxon/functions/ContextAccessorFunction;

    invoke-virtual {v1, p1}, Lnet/sf/saxon/functions/ContextAccessorFunction;->bindContext(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/Function;

    move-result-object v1

    :cond_2
    instance-of v2, v1, Lnet/sf/saxon/expr/instruct/UserFunction;

    if-eqz v2, :cond_3

    move-object v2, v1

    check-cast v2, Lnet/sf/saxon/expr/instruct/UserFunction;

    invoke-virtual {v2}, Lnet/sf/saxon/expr/instruct/Actor;->getDeclaringComponent()Lnet/sf/saxon/expr/Component;

    move-result-object v2

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :goto_1
    new-instance v3, Lnet/sf/saxon/functions/hof/FunctionLookup$FunctionLookupExportAgent;

    invoke-direct {v3, p0, v0, p2}, Lnet/sf/saxon/functions/hof/FunctionLookup$FunctionLookupExportAgent;-><init>(Lnet/sf/saxon/functions/hof/FunctionLookup;Lnet/sf/saxon/value/QNameValue;Lnet/sf/saxon/value/IntegerValue;)V

    new-instance p0, Lnet/sf/saxon/functions/hof/UserFunctionReference$BoundUserFunction;

    invoke-interface {p1}, Lnet/sf/saxon/expr/XPathContext;->getController()Lnet/sf/saxon/Controller;

    move-result-object p1

    invoke-direct {p0, v3, v1, v2, p1}, Lnet/sf/saxon/functions/hof/UserFunctionReference$BoundUserFunction;-><init>(Lnet/sf/saxon/expr/ExportAgent;Lnet/sf/saxon/om/Function;Lnet/sf/saxon/expr/Component;Lnet/sf/saxon/Controller;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    invoke-super {p0, p1}, Lnet/sf/saxon/functions/SystemFunction;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/functions/SystemFunction;->getRetainedStaticContext()Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    move-result-object p0

    check-cast p1, Lnet/sf/saxon/functions/hof/FunctionLookup;

    invoke-virtual {p1}, Lnet/sf/saxon/functions/SystemFunction;->getRetainedStaticContext()Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    move-result-object p1

    invoke-static {p0, p1}, Lnet/sf/saxon/expr/parser/ExpressionTool;->equalOrNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hashCode()I
    .locals 0

    invoke-super {p0}, Lnet/sf/saxon/functions/SystemFunction;->hashCode()I

    move-result p0

    return p0
.end method

.method public lookup(Lnet/sf/saxon/om/StructuredQName;ILnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/Function;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-interface {p3}, Lnet/sf/saxon/expr/XPathContext;->getController()Lnet/sf/saxon/Controller;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/Controller;->getExecutable()Lnet/sf/saxon/expr/instruct/Executable;

    move-result-object v1

    invoke-virtual {p0}, Lnet/sf/saxon/functions/SystemFunction;->getRetainedStaticContext()Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/RetainedStaticContext;->getPackageData()Lnet/sf/saxon/expr/PackageData;

    move-result-object v2

    instance-of v3, v2, Lnet/sf/saxon/style/StylesheetPackage;

    if-eqz v3, :cond_0

    move-object v1, v2

    check-cast v1, Lnet/sf/saxon/style/StylesheetPackage;

    invoke-virtual {v1}, Lnet/sf/saxon/style/StylesheetPackage;->getFunctionLibrary()Lnet/sf/saxon/functions/FunctionLibraryList;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lnet/sf/saxon/expr/instruct/Executable;->getFunctionLibrary()Lnet/sf/saxon/functions/FunctionLibraryList;

    move-result-object v1

    :goto_0
    new-instance v3, Lnet/sf/saxon/trans/SymbolicName$F;

    invoke-direct {v3, p1, p2}, Lnet/sf/saxon/trans/SymbolicName$F;-><init>(Lnet/sf/saxon/om/StructuredQName;I)V

    new-instance p1, Lnet/sf/saxon/sxpath/IndependentContext;

    invoke-virtual {v0}, Lnet/sf/saxon/Controller;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p2

    invoke-direct {p1, p2}, Lnet/sf/saxon/sxpath/IndependentContext;-><init>(Lnet/sf/saxon/Configuration;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/RetainedStaticContext;->getDefaultCollationName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lnet/sf/saxon/sxpath/AbstractStaticContext;->setDefaultCollationName(Ljava/lang/String;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/RetainedStaticContext;->getStaticBaseUriString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lnet/sf/saxon/sxpath/AbstractStaticContext;->setBaseURI(Ljava/lang/String;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/RetainedStaticContext;->getDecimalFormatManager()Lnet/sf/saxon/trans/DecimalFormatManager;

    move-result-object p2

    invoke-virtual {p1, p2}, Lnet/sf/saxon/sxpath/AbstractStaticContext;->setDecimalFormatManager(Lnet/sf/saxon/trans/DecimalFormatManager;)V

    invoke-virtual {p1, p0}, Lnet/sf/saxon/sxpath/IndependentContext;->setNamespaceResolver(Lnet/sf/saxon/om/NamespaceResolver;)V

    invoke-virtual {p1, v2}, Lnet/sf/saxon/sxpath/AbstractStaticContext;->setPackageData(Lnet/sf/saxon/expr/PackageData;)V

    const/4 p0, 0x0

    :try_start_0
    invoke-interface {v1, v3, p1}, Lnet/sf/saxon/functions/FunctionLibrary;->getFunctionItem(Lnet/sf/saxon/trans/SymbolicName$F;Lnet/sf/saxon/expr/StaticContext;)Lnet/sf/saxon/om/Function;

    move-result-object p1

    instance-of p2, p1, Lnet/sf/saxon/expr/instruct/UserFunction;

    if-eqz p2, :cond_1

    move-object p2, p1

    check-cast p2, Lnet/sf/saxon/expr/instruct/UserFunction;

    invoke-virtual {p2}, Lnet/sf/saxon/expr/instruct/Actor;->getDeclaredVisibility()Lnet/sf/saxon/trans/Visibility;

    move-result-object p2

    sget-object v0, Lnet/sf/saxon/trans/Visibility;->ABSTRACT:Lnet/sf/saxon/trans/Visibility;

    if-ne p2, v0, :cond_1

    return-object p0

    :cond_1
    instance-of p2, p1, Lnet/sf/saxon/functions/CallableFunction;

    if-eqz p2, :cond_2

    move-object p2, p1

    check-cast p2, Lnet/sf/saxon/functions/CallableFunction;

    new-instance v0, Lnet/sf/saxon/functions/hof/CallableWithBoundFocus;

    move-object v1, p1

    check-cast v1, Lnet/sf/saxon/functions/CallableFunction;

    invoke-virtual {v1}, Lnet/sf/saxon/functions/CallableFunction;->getCallable()Lnet/sf/saxon/expr/Callable;

    move-result-object v1

    invoke-direct {v0, v1, p3}, Lnet/sf/saxon/functions/hof/CallableWithBoundFocus;-><init>(Lnet/sf/saxon/expr/Callable;Lnet/sf/saxon/expr/XPathContext;)V

    invoke-virtual {p2, v0}, Lnet/sf/saxon/functions/CallableFunction;->setCallable(Lnet/sf/saxon/expr/Callable;)V

    goto :goto_1

    :cond_2
    instance-of p2, p1, Lnet/sf/saxon/functions/ContextItemAccessorFunction;

    if-eqz p2, :cond_3

    check-cast p1, Lnet/sf/saxon/functions/ContextItemAccessorFunction;

    invoke-virtual {p1, p3}, Lnet/sf/saxon/functions/ContextItemAccessorFunction;->bindContext(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/Function;

    move-result-object p0

    return-object p0

    :cond_3
    instance-of p2, p1, Lnet/sf/saxon/functions/SystemFunction;

    if-eqz p2, :cond_4

    move-object p2, p1

    check-cast p2, Lnet/sf/saxon/functions/SystemFunction;

    invoke-virtual {p2}, Lnet/sf/saxon/functions/SystemFunction;->dependsOnContextItem()Z

    move-result p2

    if-eqz p2, :cond_4

    new-instance p2, Lnet/sf/saxon/functions/hof/SystemFunctionWithBoundContextItem;

    check-cast p1, Lnet/sf/saxon/functions/SystemFunction;

    invoke-direct {p2, p1, p3}, Lnet/sf/saxon/functions/hof/SystemFunctionWithBoundContextItem;-><init>(Lnet/sf/saxon/functions/SystemFunction;Lnet/sf/saxon/expr/XPathContext;)V
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :cond_4
    :goto_1
    return-object p1

    :catch_0
    move-exception p1

    const-string p2, "XPST0017"

    invoke-virtual {p1}, Lnet/sf/saxon/trans/XPathException;->getErrorCodeLocalPart()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    return-object p0

    :cond_5
    throw p1
.end method

.method public varargs makeFunctionCall([Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;
    .locals 2

    invoke-virtual {p0}, Lnet/sf/saxon/functions/SystemFunction;->getRetainedStaticContext()Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/expr/parser/RetainedStaticContext;->getPackageData()Lnet/sf/saxon/expr/PackageData;

    move-result-object v0

    instance-of v1, v0, Lnet/sf/saxon/style/StylesheetPackage;

    if-eqz v1, :cond_0

    check-cast v0, Lnet/sf/saxon/style/StylesheetPackage;

    invoke-virtual {v0}, Lnet/sf/saxon/style/StylesheetPackage;->setRetainUnusedFunctions()V

    :cond_0
    invoke-super {p0, p1}, Lnet/sf/saxon/functions/SystemFunction;->makeFunctionCall([Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0
.end method
