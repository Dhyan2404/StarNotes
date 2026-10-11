.class public Lnet/sf/saxon/functions/registry/OnDemandFunctionSet;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/functions/FunctionLibrary;


# instance fields
.field public final a:Lnet/sf/saxon/Configuration;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public d:Lnet/sf/saxon/functions/FunctionLibrary;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/Configuration;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/sf/saxon/functions/registry/OnDemandFunctionSet;->a:Lnet/sf/saxon/Configuration;

    iput-object p2, p0, Lnet/sf/saxon/functions/registry/OnDemandFunctionSet;->b:Ljava/lang/String;

    iput-object p3, p0, Lnet/sf/saxon/functions/registry/OnDemandFunctionSet;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Lnet/sf/saxon/trans/SymbolicName$F;Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/sf/saxon/trans/SymbolicName$F;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    invoke-virtual {p1}, Lnet/sf/saxon/trans/SymbolicName;->getComponentName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object p1

    iget-object v0, p0, Lnet/sf/saxon/functions/registry/OnDemandFunctionSet;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lnet/sf/saxon/om/StructuredQName;->hasURI(Ljava/lang/String;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    iget-object p1, p0, Lnet/sf/saxon/functions/registry/OnDemandFunctionSet;->d:Lnet/sf/saxon/functions/FunctionLibrary;

    if-nez p1, :cond_3

    :try_start_0
    iget-object p1, p0, Lnet/sf/saxon/functions/registry/OnDemandFunctionSet;->a:Lnet/sf/saxon/Configuration;

    invoke-virtual {p1}, Lnet/sf/saxon/Configuration;->getDynamicLoader()Lnet/sf/saxon/lib/IDynamicLoader;

    move-result-object p1

    iget-object v1, p0, Lnet/sf/saxon/functions/registry/OnDemandFunctionSet;->c:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {p1, v1, v2}, Lnet/sf/saxon/lib/IDynamicLoader;->getInstance(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object p1

    instance-of v1, p1, Lnet/sf/saxon/functions/FunctionLibrary;

    if-eqz v1, :cond_0

    check-cast p1, Lnet/sf/saxon/functions/FunctionLibrary;

    iput-object p1, p0, Lnet/sf/saxon/functions/registry/OnDemandFunctionSet;->d:Lnet/sf/saxon/functions/FunctionLibrary;

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Class "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/sf/saxon/functions/registry/OnDemandFunctionSet;->c:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " was loaded but it is not a FunctionLibrary"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return v0

    :catch_0
    move-exception p1

    if-eqz p2, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to load class "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lnet/sf/saxon/functions/registry/OnDemandFunctionSet;->c:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ": "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    return v0

    :cond_3
    :goto_0
    iget-object p1, p0, Lnet/sf/saxon/functions/registry/OnDemandFunctionSet;->d:Lnet/sf/saxon/functions/FunctionLibrary;

    iget-object p0, p0, Lnet/sf/saxon/functions/registry/OnDemandFunctionSet;->a:Lnet/sf/saxon/Configuration;

    invoke-interface {p1, p0}, Lnet/sf/saxon/functions/FunctionLibrary;->setConfiguration(Lnet/sf/saxon/Configuration;)V

    const/4 p0, 0x1

    return p0

    :cond_4
    return v0
.end method

.method public bind(Lnet/sf/saxon/trans/SymbolicName$F;[Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/StaticContext;Ljava/util/List;)Lnet/sf/saxon/expr/Expression;
    .locals 1
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

    invoke-virtual {p0, p1, p4}, Lnet/sf/saxon/functions/registry/OnDemandFunctionSet;->a(Lnet/sf/saxon/trans/SymbolicName$F;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lnet/sf/saxon/functions/registry/OnDemandFunctionSet;->d:Lnet/sf/saxon/functions/FunctionLibrary;

    invoke-interface {p0, p1, p2, p3, p4}, Lnet/sf/saxon/functions/FunctionLibrary;->bind(Lnet/sf/saxon/trans/SymbolicName$F;[Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/StaticContext;Ljava/util/List;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public copy()Lnet/sf/saxon/functions/FunctionLibrary;
    .locals 0

    return-object p0
.end method

.method public getFunctionItem(Lnet/sf/saxon/trans/SymbolicName$F;Lnet/sf/saxon/expr/StaticContext;)Lnet/sf/saxon/om/Function;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lnet/sf/saxon/functions/registry/OnDemandFunctionSet;->a(Lnet/sf/saxon/trans/SymbolicName$F;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p0, p0, Lnet/sf/saxon/functions/registry/OnDemandFunctionSet;->d:Lnet/sf/saxon/functions/FunctionLibrary;

    invoke-interface {p0, p1, p2}, Lnet/sf/saxon/functions/FunctionLibrary;->getFunctionItem(Lnet/sf/saxon/trans/SymbolicName$F;Lnet/sf/saxon/expr/StaticContext;)Lnet/sf/saxon/om/Function;

    move-result-object p0

    return-object p0

    :cond_0
    return-object v0
.end method

.method public isAvailable(Lnet/sf/saxon/trans/SymbolicName$F;I)Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lnet/sf/saxon/functions/registry/OnDemandFunctionSet;->a(Lnet/sf/saxon/trans/SymbolicName$F;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lnet/sf/saxon/functions/registry/OnDemandFunctionSet;->d:Lnet/sf/saxon/functions/FunctionLibrary;

    invoke-interface {p0, p1, p2}, Lnet/sf/saxon/functions/FunctionLibrary;->isAvailable(Lnet/sf/saxon/trans/SymbolicName$F;I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
