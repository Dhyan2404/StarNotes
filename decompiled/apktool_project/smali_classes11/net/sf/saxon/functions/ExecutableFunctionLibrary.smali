.class public Lnet/sf/saxon/functions/ExecutableFunctionLibrary;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/functions/FunctionLibrary;


# instance fields
.field public final transient a:Lnet/sf/saxon/Configuration;

.field public b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lnet/sf/saxon/trans/SymbolicName;",
            "Lnet/sf/saxon/expr/instruct/UserFunction;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lnet/sf/saxon/Configuration;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lnet/sf/saxon/functions/ExecutableFunctionLibrary;->b:Ljava/util/HashMap;

    iput-object p1, p0, Lnet/sf/saxon/functions/ExecutableFunctionLibrary;->a:Lnet/sf/saxon/Configuration;

    return-void
.end method


# virtual methods
.method public addFunction(Lnet/sf/saxon/expr/instruct/UserFunction;)V
    .locals 1

    iget-object p0, p0, Lnet/sf/saxon/functions/ExecutableFunctionLibrary;->b:Ljava/util/HashMap;

    invoke-virtual {p1}, Lnet/sf/saxon/expr/instruct/UserFunction;->getSymbolicName()Lnet/sf/saxon/trans/SymbolicName$F;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
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

    iget-object p0, p0, Lnet/sf/saxon/functions/ExecutableFunctionLibrary;->b:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/expr/instruct/UserFunction;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance p3, Lnet/sf/saxon/expr/UserFunctionCall;

    invoke-direct {p3}, Lnet/sf/saxon/expr/UserFunctionCall;-><init>()V

    invoke-virtual {p1}, Lnet/sf/saxon/trans/SymbolicName;->getComponentName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object p1

    invoke-virtual {p3, p1}, Lnet/sf/saxon/expr/UserFunctionCall;->setFunctionName(Lnet/sf/saxon/om/StructuredQName;)V

    invoke-virtual {p3, p2}, Lnet/sf/saxon/expr/FunctionCall;->setArguments([Lnet/sf/saxon/expr/Expression;)V

    invoke-virtual {p3, p0}, Lnet/sf/saxon/expr/UserFunctionCall;->setFunction(Lnet/sf/saxon/expr/instruct/UserFunction;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/UserFunction;->getResultType()Lnet/sf/saxon/value/SequenceType;

    move-result-object p0

    invoke-virtual {p3, p0}, Lnet/sf/saxon/expr/UserFunctionCall;->setStaticType(Lnet/sf/saxon/value/SequenceType;)V

    return-object p3
.end method

.method public copy()Lnet/sf/saxon/functions/FunctionLibrary;
    .locals 2

    new-instance v0, Lnet/sf/saxon/functions/ExecutableFunctionLibrary;

    iget-object v1, p0, Lnet/sf/saxon/functions/ExecutableFunctionLibrary;->a:Lnet/sf/saxon/Configuration;

    invoke-direct {v0, v1}, Lnet/sf/saxon/functions/ExecutableFunctionLibrary;-><init>(Lnet/sf/saxon/Configuration;)V

    new-instance v1, Ljava/util/HashMap;

    iget-object p0, p0, Lnet/sf/saxon/functions/ExecutableFunctionLibrary;->b:Ljava/util/HashMap;

    invoke-direct {v1, p0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v1, v0, Lnet/sf/saxon/functions/ExecutableFunctionLibrary;->b:Ljava/util/HashMap;

    return-object v0
.end method

.method public getAllFunctions()Ljava/lang/Iterable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Lnet/sf/saxon/expr/instruct/UserFunction;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lnet/sf/saxon/functions/ExecutableFunctionLibrary;->b:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public getFunctionItem(Lnet/sf/saxon/trans/SymbolicName$F;Lnet/sf/saxon/expr/StaticContext;)Lnet/sf/saxon/om/Function;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object p0, p0, Lnet/sf/saxon/functions/ExecutableFunctionLibrary;->b:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/expr/instruct/UserFunction;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/UserFunction;->isUpdating()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    const-string p1, "Cannot bind a function item to an updating function"

    invoke-direct {p0, p1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    return-object p0
.end method

.method public isAvailable(Lnet/sf/saxon/trans/SymbolicName$F;I)Z
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/functions/ExecutableFunctionLibrary;->b:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
