.class public Lnet/sf/saxon/functions/FunctionAvailable;
.super Lnet/sf/saxon/functions/SystemFunction;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnet/sf/saxon/functions/SystemFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lnet/sf/saxon/expr/parser/RetainedStaticContext;ILnet/sf/saxon/expr/XPathContext;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const/4 v0, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p3, v0, :cond_2

    move p3, v2

    :goto_0
    const/16 v0, 0x14

    if-ge p3, v0, :cond_1

    invoke-virtual {p0, p1, p2, p3, p4}, Lnet/sf/saxon/functions/FunctionAvailable;->a(Ljava/lang/String;Lnet/sf/saxon/expr/parser/RetainedStaticContext;ILnet/sf/saxon/expr/XPathContext;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_1
    return v2

    :cond_2
    :try_start_0
    invoke-static {p1}, Lnet/sf/saxon/str/StringTool;->codePoints(Ljava/lang/CharSequence;)Lnet/sf/saxon/z/IntIterator;

    move-result-object v0

    invoke-static {v0}, Lnet/sf/saxon/om/NameChecker;->isValidNCName(Lnet/sf/saxon/z/IntIterator;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p0, "http://www.w3.org/2005/xpath-functions"

    new-instance v0, Lnet/sf/saxon/om/StructuredQName;

    const-string v1, ""

    invoke-direct {v0, v1, p0, p1}, Lnet/sf/saxon/om/StructuredQName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lnet/sf/saxon/functions/SystemFunction;->getRetainedStaticContext()Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    move-result-object p0

    invoke-static {p1, v2, v1, p0}, Lnet/sf/saxon/om/StructuredQName;->fromLexicalQName(Ljava/lang/String;ZZLnet/sf/saxon/om/NamespaceResolver;)Lnet/sf/saxon/om/StructuredQName;

    move-result-object v0
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-interface {p4}, Lnet/sf/saxon/expr/XPathContext;->getController()Lnet/sf/saxon/Controller;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/Controller;->getExecutable()Lnet/sf/saxon/expr/instruct/Executable;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/Executable;->getFunctionLibrary()Lnet/sf/saxon/functions/FunctionLibraryList;

    move-result-object p0

    new-instance p1, Lnet/sf/saxon/trans/SymbolicName$F;

    invoke-direct {p1, v0, p3}, Lnet/sf/saxon/trans/SymbolicName$F;-><init>(Lnet/sf/saxon/om/StructuredQName;I)V

    invoke-virtual {p2}, Lnet/sf/saxon/expr/parser/RetainedStaticContext;->getPackageData()Lnet/sf/saxon/expr/PackageData;

    move-result-object p2

    invoke-virtual {p2}, Lnet/sf/saxon/expr/PackageData;->getHostLanguageVersion()I

    move-result p2

    invoke-interface {p0, p1, p2}, Lnet/sf/saxon/functions/FunctionLibrary;->isAvailable(Lnet/sf/saxon/trans/SymbolicName$F;I)Z

    move-result p0

    return p0

    :catch_0
    move-exception p0

    const-string p1, "XTDE1400"

    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/XPathException;->setErrorCode(Ljava/lang/String;)V

    invoke-virtual {p0, p4}, Lnet/sf/saxon/trans/XPathException;->setXPathContext(Lnet/sf/saxon/expr/XPathContext;)V

    throw p0
.end method

.method public bridge synthetic call(Lnet/sf/saxon/expr/XPathContext;[Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/om/Sequence;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/functions/FunctionAvailable;->call(Lnet/sf/saxon/expr/XPathContext;[Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/value/BooleanValue;

    move-result-object p0

    return-object p0
.end method

.method public call(Lnet/sf/saxon/expr/XPathContext;[Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/value/BooleanValue;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 2
    aget-object v0, p2, v0

    invoke-interface {v0}, Lnet/sf/saxon/om/Sequence;->head()Lnet/sf/saxon/om/Item;

    move-result-object v0

    invoke-interface {v0}, Lnet/sf/saxon/om/Item;->getStringValue()Ljava/lang/String;

    move-result-object v0

    .line 3
    array-length v1, p2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    .line 4
    aget-object p2, p2, v1

    invoke-interface {p2}, Lnet/sf/saxon/om/Sequence;->head()Lnet/sf/saxon/om/Item;

    move-result-object p2

    check-cast p2, Lnet/sf/saxon/value/NumericValue;

    invoke-virtual {p2}, Lnet/sf/saxon/value/NumericValue;->longValue()J

    move-result-wide v1

    long-to-int p2, v1

    goto :goto_0

    :cond_0
    const/4 p2, -0x1

    .line 5
    :goto_0
    invoke-virtual {p0}, Lnet/sf/saxon/functions/SystemFunction;->getRetainedStaticContext()Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p2, p1}, Lnet/sf/saxon/functions/FunctionAvailable;->a(Ljava/lang/String;Lnet/sf/saxon/expr/parser/RetainedStaticContext;ILnet/sf/saxon/expr/XPathContext;)Z

    move-result p0

    .line 6
    invoke-static {p0}, Lnet/sf/saxon/value/BooleanValue;->get(Z)Lnet/sf/saxon/value/BooleanValue;

    move-result-object p0

    return-object p0
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

.method public varargs makeOptimizedFunctionCall(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;[Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const/4 p2, 0x0

    aget-object v0, p3, p2

    instance-of v1, v0, Lnet/sf/saxon/expr/Literal;

    if-eqz v1, :cond_4

    array-length v1, p3

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    aget-object v1, p3, v2

    instance-of v1, v1, Lnet/sf/saxon/expr/Literal;

    if-eqz v1, :cond_4

    :cond_0
    check-cast v0, Lnet/sf/saxon/expr/StringLiteral;

    invoke-virtual {v0}, Lnet/sf/saxon/expr/StringLiteral;->stringify()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lnet/sf/saxon/expr/parser/ExpressionVisitor;->getStaticContext()Lnet/sf/saxon/expr/StaticContext;

    move-result-object p1

    new-instance v1, Lnet/sf/saxon/om/QNameParser;

    invoke-virtual {p0}, Lnet/sf/saxon/functions/SystemFunction;->getRetainedStaticContext()Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    move-result-object v3

    invoke-direct {v1, v3}, Lnet/sf/saxon/om/QNameParser;-><init>(Lnet/sf/saxon/om/NamespaceResolver;)V

    invoke-virtual {v1, v2}, Lnet/sf/saxon/om/QNameParser;->withAcceptEQName(Z)Lnet/sf/saxon/om/QNameParser;

    move-result-object v1

    const-string v3, "XTDE1400"

    invoke-virtual {v1, v3}, Lnet/sf/saxon/om/QNameParser;->withErrorOnBadSyntax(Ljava/lang/String;)Lnet/sf/saxon/om/QNameParser;

    move-result-object v1

    invoke-virtual {v1, v3}, Lnet/sf/saxon/om/QNameParser;->withErrorOnUnresolvedPrefix(Ljava/lang/String;)Lnet/sf/saxon/om/QNameParser;

    move-result-object v1

    invoke-interface {p1}, Lnet/sf/saxon/expr/StaticContext;->getDefaultFunctionNamespace()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lnet/sf/saxon/om/QNameParser;->parse(Ljava/lang/String;Ljava/lang/String;)Lnet/sf/saxon/om/StructuredQName;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sf/saxon/functions/SystemFunction;->getArity()I

    move-result p0

    const/4 v1, 0x2

    if-ne p0, v1, :cond_1

    aget-object p0, p3, v2

    invoke-interface {p1}, Lnet/sf/saxon/expr/StaticContext;->makeEarlyEvaluationContext()Lnet/sf/saxon/expr/XPathContext;

    move-result-object p3

    invoke-virtual {p0, p3}, Lnet/sf/saxon/expr/Expression;->evaluateItem(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/Item;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/value/NumericValue;

    invoke-virtual {p0}, Lnet/sf/saxon/value/NumericValue;->longValue()J

    move-result-wide v3

    long-to-int p0, v3

    move p3, p0

    goto :goto_0

    :cond_1
    const/16 p0, 0x14

    move p3, p0

    move p0, p2

    :goto_0
    if-gt p0, p3, :cond_3

    new-instance v1, Lnet/sf/saxon/trans/SymbolicName$F;

    invoke-direct {v1, v0, p0}, Lnet/sf/saxon/trans/SymbolicName$F;-><init>(Lnet/sf/saxon/om/StructuredQName;I)V

    invoke-interface {p1}, Lnet/sf/saxon/expr/StaticContext;->getFunctionLibrary()Lnet/sf/saxon/functions/FunctionLibrary;

    move-result-object v3

    invoke-interface {p1}, Lnet/sf/saxon/expr/StaticContext;->getXPathVersion()I

    move-result v4

    invoke-interface {v3, v1, v4}, Lnet/sf/saxon/functions/FunctionLibrary;->isAvailable(Lnet/sf/saxon/trans/SymbolicName$F;I)Z

    move-result v1

    if-eqz v1, :cond_2

    move p2, v2

    goto :goto_1

    :cond_2
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    invoke-static {p2}, Lnet/sf/saxon/value/BooleanValue;->get(Z)Lnet/sf/saxon/value/BooleanValue;

    move-result-object p0

    invoke-static {p0}, Lnet/sf/saxon/expr/Literal;->makeLiteral(Lnet/sf/saxon/om/GroundedValue;)Lnet/sf/saxon/expr/Literal;

    move-result-object p0

    return-object p0

    :cond_4
    const/4 p0, 0x0

    return-object p0
.end method
