.class public Lnet/sf/saxon/xpath/XPathFunctionLibrary;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/functions/FunctionLibrary;


# instance fields
.field public a:Ljavax/xml/xpath/XPathFunctionResolver;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bind(Lnet/sf/saxon/trans/SymbolicName$F;[Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/StaticContext;Ljava/util/List;)Lnet/sf/saxon/expr/Expression;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/sf/saxon/trans/SymbolicName$F;",
            "[",
            "Lnet/sf/saxon/expr/Expression;",
            "Lnet/sf/saxon/expr/StaticContext;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lnet/sf/saxon/expr/Expression;"
        }
    .end annotation

    iget-object p3, p0, Lnet/sf/saxon/xpath/XPathFunctionLibrary;->a:Ljavax/xml/xpath/XPathFunctionResolver;

    const/4 p4, 0x0

    if-nez p3, :cond_0

    return-object p4

    :cond_0
    invoke-virtual {p1}, Lnet/sf/saxon/trans/SymbolicName;->getComponentName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object p3

    new-instance v0, Ljavax/xml/namespace/QName;

    invoke-virtual {p3}, Lnet/sf/saxon/om/StructuredQName;->getURI()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3}, Lnet/sf/saxon/om/StructuredQName;->getLocalPart()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lnet/sf/saxon/xpath/XPathFunctionLibrary;->a:Ljavax/xml/xpath/XPathFunctionResolver;

    invoke-virtual {p1}, Lnet/sf/saxon/trans/SymbolicName$F;->getArity()I

    move-result p1

    invoke-interface {p0, v0, p1}, Ljavax/xml/xpath/XPathFunctionResolver;->resolveFunction(Ljavax/xml/namespace/QName;I)Ljavax/xml/xpath/XPathFunction;

    move-result-object p0

    if-nez p0, :cond_1

    return-object p4

    :cond_1
    new-instance p1, Lnet/sf/saxon/xpath/XPathFunctionCall;

    invoke-direct {p1, p3, p0}, Lnet/sf/saxon/xpath/XPathFunctionCall;-><init>(Lnet/sf/saxon/om/StructuredQName;Ljavax/xml/xpath/XPathFunction;)V

    invoke-virtual {p1, p2}, Lnet/sf/saxon/expr/FunctionCall;->setArguments([Lnet/sf/saxon/expr/Expression;)V

    return-object p1
.end method

.method public copy()Lnet/sf/saxon/functions/FunctionLibrary;
    .locals 1

    new-instance v0, Lnet/sf/saxon/xpath/XPathFunctionLibrary;

    invoke-direct {v0}, Lnet/sf/saxon/xpath/XPathFunctionLibrary;-><init>()V

    iget-object p0, p0, Lnet/sf/saxon/xpath/XPathFunctionLibrary;->a:Ljavax/xml/xpath/XPathFunctionResolver;

    iput-object p0, v0, Lnet/sf/saxon/xpath/XPathFunctionLibrary;->a:Ljavax/xml/xpath/XPathFunctionResolver;

    return-object v0
.end method

.method public getFunctionItem(Lnet/sf/saxon/trans/SymbolicName$F;Lnet/sf/saxon/expr/StaticContext;)Lnet/sf/saxon/om/Function;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object p2, p0, Lnet/sf/saxon/xpath/XPathFunctionLibrary;->a:Ljavax/xml/xpath/XPathFunctionResolver;

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p1}, Lnet/sf/saxon/trans/SymbolicName;->getComponentName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object p2

    invoke-virtual {p1}, Lnet/sf/saxon/trans/SymbolicName$F;->getArity()I

    move-result v1

    new-instance v2, Ljavax/xml/namespace/QName;

    invoke-virtual {p2}, Lnet/sf/saxon/om/StructuredQName;->getURI()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lnet/sf/saxon/om/StructuredQName;->getLocalPart()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lnet/sf/saxon/xpath/XPathFunctionLibrary;->a:Ljavax/xml/xpath/XPathFunctionResolver;

    invoke-interface {p0, v2, v1}, Ljavax/xml/xpath/XPathFunctionResolver;->resolveFunction(Ljavax/xml/namespace/QName;I)Ljavax/xml/xpath/XPathFunction;

    move-result-object p0

    if-nez p0, :cond_1

    return-object v0

    :cond_1
    new-instance v0, Lnet/sf/saxon/xpath/XPathFunctionCall;

    invoke-direct {v0, p2, p0}, Lnet/sf/saxon/xpath/XPathFunctionCall;-><init>(Lnet/sf/saxon/om/StructuredQName;Ljavax/xml/xpath/XPathFunction;)V

    new-array p0, v1, [Lnet/sf/saxon/value/SequenceType;

    sget-object p2, Lnet/sf/saxon/value/SequenceType;->ANY_SEQUENCE:Lnet/sf/saxon/value/SequenceType;

    invoke-static {p0, p2}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v1, Lnet/sf/saxon/type/SpecificFunctionType;

    invoke-direct {v1, p0, p2}, Lnet/sf/saxon/type/SpecificFunctionType;-><init>([Lnet/sf/saxon/value/SequenceType;Lnet/sf/saxon/value/SequenceType;)V

    new-instance p0, Lnet/sf/saxon/functions/CallableFunction;

    invoke-direct {p0, p1, v0, v1}, Lnet/sf/saxon/functions/CallableFunction;-><init>(Lnet/sf/saxon/trans/SymbolicName$F;Lnet/sf/saxon/expr/Callable;Lnet/sf/saxon/type/FunctionItemType;)V

    return-object p0
.end method

.method public getXPathFunctionResolver()Ljavax/xml/xpath/XPathFunctionResolver;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/xpath/XPathFunctionLibrary;->a:Ljavax/xml/xpath/XPathFunctionResolver;

    return-object p0
.end method

.method public isAvailable(Lnet/sf/saxon/trans/SymbolicName$F;I)Z
    .locals 2

    iget-object p0, p0, Lnet/sf/saxon/xpath/XPathFunctionLibrary;->a:Ljavax/xml/xpath/XPathFunctionResolver;

    if-eqz p0, :cond_0

    new-instance p2, Ljavax/xml/namespace/QName;

    invoke-virtual {p1}, Lnet/sf/saxon/trans/SymbolicName;->getComponentName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/om/StructuredQName;->getURI()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lnet/sf/saxon/trans/SymbolicName;->getComponentName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sf/saxon/om/StructuredQName;->getLocalPart()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p2, v0, v1}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lnet/sf/saxon/trans/SymbolicName$F;->getArity()I

    move-result p1

    invoke-interface {p0, p2, p1}, Ljavax/xml/xpath/XPathFunctionResolver;->resolveFunction(Ljavax/xml/namespace/QName;I)Ljavax/xml/xpath/XPathFunction;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public setXPathFunctionResolver(Ljavax/xml/xpath/XPathFunctionResolver;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/xpath/XPathFunctionLibrary;->a:Ljavax/xml/xpath/XPathFunctionResolver;

    return-void
.end method
