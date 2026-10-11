.class public Lnet/sf/saxon/functions/IntegratedFunctionLibrary;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/functions/FunctionLibrary;


# instance fields
.field public a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lnet/sf/saxon/om/StructuredQName;",
            "Lnet/sf/saxon/lib/ExtensionFunctionDefinition;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lnet/sf/saxon/functions/IntegratedFunctionLibrary;->a:Ljava/util/HashMap;

    return-void
.end method

.method public static makeFunctionCall(Lnet/sf/saxon/lib/ExtensionFunctionDefinition;[Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;
    .locals 2

    invoke-virtual {p0}, Lnet/sf/saxon/lib/ExtensionFunctionDefinition;->makeCallExpression()Lnet/sf/saxon/lib/ExtensionFunctionCall;

    move-result-object v0

    invoke-virtual {v0, p0}, Lnet/sf/saxon/lib/ExtensionFunctionCall;->setDefinition(Lnet/sf/saxon/lib/ExtensionFunctionDefinition;)V

    new-instance v1, Lnet/sf/saxon/functions/IntegratedFunctionCall;

    invoke-virtual {p0}, Lnet/sf/saxon/lib/ExtensionFunctionDefinition;->getFunctionQName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Lnet/sf/saxon/functions/IntegratedFunctionCall;-><init>(Lnet/sf/saxon/om/StructuredQName;Lnet/sf/saxon/lib/ExtensionFunctionCall;)V

    invoke-virtual {v1, p1}, Lnet/sf/saxon/expr/FunctionCall;->setArguments([Lnet/sf/saxon/expr/Expression;)V

    return-object v1
.end method


# virtual methods
.method public final a(Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Lnet/sf/saxon/om/StructuredQName;",
            "Lnet/sf/saxon/lib/ExtensionFunctionDefinition;",
            ">;)",
            "Ljava/util/HashMap<",
            "Lnet/sf/saxon/om/StructuredQName;",
            "Lnet/sf/saxon/lib/ExtensionFunctionDefinition;",
            ">;"
        }
    .end annotation

    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    return-object p0
.end method

.method public bind(Lnet/sf/saxon/trans/SymbolicName$F;[Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/StaticContext;Ljava/util/List;)Lnet/sf/saxon/expr/Expression;
    .locals 0
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

    iget-object p0, p0, Lnet/sf/saxon/functions/IntegratedFunctionLibrary;->a:Ljava/util/HashMap;

    invoke-virtual {p1}, Lnet/sf/saxon/trans/SymbolicName;->getComponentName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/lib/ExtensionFunctionDefinition;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {p0, p2}, Lnet/sf/saxon/functions/IntegratedFunctionLibrary;->makeFunctionCall(Lnet/sf/saxon/lib/ExtensionFunctionDefinition;[Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0
.end method

.method public copy()Lnet/sf/saxon/functions/FunctionLibrary;
    .locals 2

    new-instance v0, Lnet/sf/saxon/functions/IntegratedFunctionLibrary;

    invoke-direct {v0}, Lnet/sf/saxon/functions/IntegratedFunctionLibrary;-><init>()V

    iget-object v1, p0, Lnet/sf/saxon/functions/IntegratedFunctionLibrary;->a:Ljava/util/HashMap;

    invoke-virtual {p0, v1}, Lnet/sf/saxon/functions/IntegratedFunctionLibrary;->a(Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object p0

    iput-object p0, v0, Lnet/sf/saxon/functions/IntegratedFunctionLibrary;->a:Ljava/util/HashMap;

    return-object v0
.end method

.method public getFunctionItem(Lnet/sf/saxon/trans/SymbolicName$F;Lnet/sf/saxon/expr/StaticContext;)Lnet/sf/saxon/om/Function;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object p0, p0, Lnet/sf/saxon/functions/IntegratedFunctionLibrary;->a:Ljava/util/HashMap;

    invoke-virtual {p1}, Lnet/sf/saxon/trans/SymbolicName;->getComponentName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/lib/ExtensionFunctionDefinition;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lnet/sf/saxon/trans/SymbolicName$F;->getArity()I

    move-result p2

    invoke-virtual {p0, p2}, Lnet/sf/saxon/lib/ExtensionFunctionDefinition;->asFunction(I)Lnet/sf/saxon/om/Function;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p2, Lnet/sf/saxon/trans/XPathException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to create call to extension function "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lnet/sf/saxon/trans/SymbolicName;->getComponentName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object p1

    invoke-virtual {p1}, Lnet/sf/saxon/om/StructuredQName;->getDisplayName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1, p0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public isAvailable(Lnet/sf/saxon/trans/SymbolicName$F;I)Z
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/functions/IntegratedFunctionLibrary;->a:Ljava/util/HashMap;

    invoke-virtual {p1}, Lnet/sf/saxon/trans/SymbolicName;->getComponentName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/lib/ExtensionFunctionDefinition;

    invoke-virtual {p1}, Lnet/sf/saxon/trans/SymbolicName$F;->getArity()I

    move-result p1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/lib/ExtensionFunctionDefinition;->getMaximumNumberOfArguments()I

    move-result p2

    if-lt p2, p1, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/lib/ExtensionFunctionDefinition;->getMinimumNumberOfArguments()I

    move-result p0

    if-gt p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public registerFunction(Lnet/sf/saxon/lib/ExtensionFunctionDefinition;)V
    .locals 1

    iget-object p0, p0, Lnet/sf/saxon/functions/IntegratedFunctionLibrary;->a:Ljava/util/HashMap;

    invoke-virtual {p1}, Lnet/sf/saxon/lib/ExtensionFunctionDefinition;->getFunctionQName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
