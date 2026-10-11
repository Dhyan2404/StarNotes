.class public Lnet/sf/saxon/query/ImportedFunctionLibrary;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/functions/FunctionLibrary;
.implements Lnet/sf/saxon/query/XQueryFunctionBinder;


# instance fields
.field public transient a:Lnet/sf/saxon/query/QueryModule;

.field public final b:Lnet/sf/saxon/query/XQueryFunctionLibrary;

.field public final c:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lnet/sf/saxon/query/QueryModule;Lnet/sf/saxon/query/XQueryFunctionLibrary;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lnet/sf/saxon/query/ImportedFunctionLibrary;->c:Ljava/util/HashSet;

    iput-object p1, p0, Lnet/sf/saxon/query/ImportedFunctionLibrary;->a:Lnet/sf/saxon/query/QueryModule;

    iput-object p2, p0, Lnet/sf/saxon/query/ImportedFunctionLibrary;->b:Lnet/sf/saxon/query/XQueryFunctionLibrary;

    return-void
.end method


# virtual methods
.method public addImportedNamespace(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/query/ImportedFunctionLibrary;->c:Ljava/util/HashSet;

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public bind(Lnet/sf/saxon/trans/SymbolicName$F;[Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/StaticContext;Ljava/util/List;)Lnet/sf/saxon/expr/Expression;
    .locals 6
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

    invoke-virtual {p1}, Lnet/sf/saxon/trans/SymbolicName;->getComponentName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/om/StructuredQName;->getURI()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    invoke-direct {v1, p3}, Lnet/sf/saxon/expr/parser/RetainedStaticContext;-><init>(Lnet/sf/saxon/expr/StaticContext;)V

    array-length v2, p2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, p2, v3

    invoke-virtual {v4}, Lnet/sf/saxon/expr/Expression;->getLocalRetainedStaticContext()Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    move-result-object v5

    if-nez v5, :cond_0

    invoke-virtual {v4, v1}, Lnet/sf/saxon/expr/Expression;->setRetainedStaticContext(Lnet/sf/saxon/expr/parser/RetainedStaticContext;)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lnet/sf/saxon/query/ImportedFunctionLibrary;->c:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lnet/sf/saxon/query/ImportedFunctionLibrary;->b:Lnet/sf/saxon/query/XQueryFunctionLibrary;

    invoke-virtual {p0, p1, p2, p3, p4}, Lnet/sf/saxon/query/XQueryFunctionLibrary;->bind(Lnet/sf/saxon/trans/SymbolicName$F;[Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/StaticContext;Ljava/util/List;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public copy()Lnet/sf/saxon/functions/FunctionLibrary;
    .locals 3

    new-instance v0, Lnet/sf/saxon/query/ImportedFunctionLibrary;

    iget-object v1, p0, Lnet/sf/saxon/query/ImportedFunctionLibrary;->a:Lnet/sf/saxon/query/QueryModule;

    iget-object v2, p0, Lnet/sf/saxon/query/ImportedFunctionLibrary;->b:Lnet/sf/saxon/query/XQueryFunctionLibrary;

    invoke-direct {v0, v1, v2}, Lnet/sf/saxon/query/ImportedFunctionLibrary;-><init>(Lnet/sf/saxon/query/QueryModule;Lnet/sf/saxon/query/XQueryFunctionLibrary;)V

    iget-object p0, p0, Lnet/sf/saxon/query/ImportedFunctionLibrary;->c:Ljava/util/HashSet;

    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lnet/sf/saxon/query/ImportedFunctionLibrary;->addImportedNamespace(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getDeclaration(Lnet/sf/saxon/om/StructuredQName;I)Lnet/sf/saxon/query/XQueryFunction;
    .locals 2

    invoke-virtual {p1}, Lnet/sf/saxon/om/StructuredQName;->getURI()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lnet/sf/saxon/query/ImportedFunctionLibrary;->c:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lnet/sf/saxon/query/ImportedFunctionLibrary;->b:Lnet/sf/saxon/query/XQueryFunctionLibrary;

    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/query/XQueryFunctionLibrary;->getDeclaration(Lnet/sf/saxon/om/StructuredQName;I)Lnet/sf/saxon/query/XQueryFunction;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getFunctionItem(Lnet/sf/saxon/trans/SymbolicName$F;Lnet/sf/saxon/expr/StaticContext;)Lnet/sf/saxon/om/Function;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/query/ImportedFunctionLibrary;->c:Ljava/util/HashSet;

    invoke-virtual {p1}, Lnet/sf/saxon/trans/SymbolicName;->getComponentName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sf/saxon/om/StructuredQName;->getURI()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lnet/sf/saxon/query/ImportedFunctionLibrary;->b:Lnet/sf/saxon/query/XQueryFunctionLibrary;

    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/query/XQueryFunctionLibrary;->getFunctionItem(Lnet/sf/saxon/trans/SymbolicName$F;Lnet/sf/saxon/expr/StaticContext;)Lnet/sf/saxon/om/Function;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public isAvailable(Lnet/sf/saxon/trans/SymbolicName$F;I)Z
    .locals 2

    iget-object v0, p0, Lnet/sf/saxon/query/ImportedFunctionLibrary;->c:Ljava/util/HashSet;

    invoke-virtual {p1}, Lnet/sf/saxon/trans/SymbolicName;->getComponentName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sf/saxon/om/StructuredQName;->getURI()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lnet/sf/saxon/query/ImportedFunctionLibrary;->b:Lnet/sf/saxon/query/XQueryFunctionLibrary;

    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/query/XQueryFunctionLibrary;->isAvailable(Lnet/sf/saxon/trans/SymbolicName$F;I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public setImportingModule(Lnet/sf/saxon/query/QueryModule;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/query/ImportedFunctionLibrary;->a:Lnet/sf/saxon/query/QueryModule;

    return-void
.end method
