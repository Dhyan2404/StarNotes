.class public Lnet/sf/saxon/functions/FunctionLibraryList;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/functions/FunctionLibrary;
.implements Lnet/sf/saxon/query/XQueryFunctionBinder;


# instance fields
.field public libraryList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/sf/saxon/functions/FunctionLibrary;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lnet/sf/saxon/functions/FunctionLibraryList;->libraryList:Ljava/util/List;

    return-void
.end method

.method public static a(I)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Lnet/sf/saxon/functions/FunctionLibrary;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(I)V

    return-object v0
.end method


# virtual methods
.method public addFunctionLibrary(Lnet/sf/saxon/functions/FunctionLibrary;)I
    .locals 1

    iget-object v0, p0, Lnet/sf/saxon/functions/FunctionLibraryList;->libraryList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lnet/sf/saxon/functions/FunctionLibraryList;->libraryList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    return p0
.end method

.method public bind(Lnet/sf/saxon/trans/SymbolicName$F;[Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/StaticContext;Ljava/util/List;)Lnet/sf/saxon/expr/Expression;
    .locals 5
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

    invoke-interface {p3}, Lnet/sf/saxon/expr/StaticContext;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v0

    sget-object v1, Lnet/sf/saxon/lib/Feature;->TRACE_EXTERNAL_FUNCTIONS:Lnet/sf/saxon/lib/Feature;

    invoke-virtual {v0, v1}, Lnet/sf/saxon/Configuration;->getBooleanProperty(Lnet/sf/saxon/lib/Feature;)Z

    move-result v0

    invoke-interface {p3}, Lnet/sf/saxon/expr/StaticContext;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sf/saxon/Configuration;->getLogger()Lnet/sf/saxon/lib/Logger;

    move-result-object v1

    if-eqz v0, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Looking for function "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lnet/sf/saxon/trans/SymbolicName;->getComponentName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v3

    invoke-virtual {v3}, Lnet/sf/saxon/om/StructuredQName;->getEQName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lnet/sf/saxon/trans/SymbolicName$F;->getArity()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnet/sf/saxon/lib/Logger;->info(Ljava/lang/String;)V

    :cond_0
    iget-object p0, p0, Lnet/sf/saxon/functions/FunctionLibraryList;->libraryList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/sf/saxon/functions/FunctionLibrary;

    if-eqz v0, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Trying "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lnet/sf/saxon/lib/Logger;->info(Ljava/lang/String;)V

    :cond_2
    invoke-interface {v2, p1, p2, p3, p4}, Lnet/sf/saxon/functions/FunctionLibrary;->bind(Lnet/sf/saxon/trans/SymbolicName$F;[Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/StaticContext;Ljava/util/List;)Lnet/sf/saxon/expr/Expression;

    move-result-object v2

    if-eqz v2, :cond_1

    return-object v2

    :cond_3
    if-eqz v0, :cond_4

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Function "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lnet/sf/saxon/trans/SymbolicName;->getComponentName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object p1

    invoke-virtual {p1}, Lnet/sf/saxon/om/StructuredQName;->getEQName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " not found!"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lnet/sf/saxon/lib/Logger;->info(Ljava/lang/String;)V

    :cond_4
    const/4 p0, 0x0

    return-object p0
.end method

.method public copy()Lnet/sf/saxon/functions/FunctionLibrary;
    .locals 4

    new-instance v0, Lnet/sf/saxon/functions/FunctionLibraryList;

    invoke-direct {v0}, Lnet/sf/saxon/functions/FunctionLibraryList;-><init>()V

    iget-object v1, p0, Lnet/sf/saxon/functions/FunctionLibraryList;->libraryList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Lnet/sf/saxon/functions/FunctionLibraryList;->a(I)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lnet/sf/saxon/functions/FunctionLibraryList;->libraryList:Ljava/util/List;

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lnet/sf/saxon/functions/FunctionLibraryList;->libraryList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, v0, Lnet/sf/saxon/functions/FunctionLibraryList;->libraryList:Ljava/util/List;

    iget-object v3, p0, Lnet/sf/saxon/functions/FunctionLibraryList;->libraryList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/sf/saxon/functions/FunctionLibrary;

    invoke-interface {v3}, Lnet/sf/saxon/functions/FunctionLibrary;->copy()Lnet/sf/saxon/functions/FunctionLibrary;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public get(I)Lnet/sf/saxon/functions/FunctionLibrary;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/functions/FunctionLibraryList;->libraryList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/functions/FunctionLibrary;

    return-object p0
.end method

.method public getDeclaration(Lnet/sf/saxon/om/StructuredQName;I)Lnet/sf/saxon/query/XQueryFunction;
    .locals 2

    iget-object p0, p0, Lnet/sf/saxon/functions/FunctionLibraryList;->libraryList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/functions/FunctionLibrary;

    instance-of v1, v0, Lnet/sf/saxon/query/XQueryFunctionBinder;

    if-eqz v1, :cond_0

    check-cast v0, Lnet/sf/saxon/query/XQueryFunctionBinder;

    invoke-interface {v0, p1, p2}, Lnet/sf/saxon/query/XQueryFunctionBinder;->getDeclaration(Lnet/sf/saxon/om/StructuredQName;I)Lnet/sf/saxon/query/XQueryFunction;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getFunctionItem(Lnet/sf/saxon/trans/SymbolicName$F;Lnet/sf/saxon/expr/StaticContext;)Lnet/sf/saxon/om/Function;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object p0, p0, Lnet/sf/saxon/functions/FunctionLibraryList;->libraryList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/functions/FunctionLibrary;

    invoke-interface {v0, p1, p2}, Lnet/sf/saxon/functions/FunctionLibrary;->getFunctionItem(Lnet/sf/saxon/trans/SymbolicName$F;Lnet/sf/saxon/expr/StaticContext;)Lnet/sf/saxon/om/Function;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getLibraryList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lnet/sf/saxon/functions/FunctionLibrary;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lnet/sf/saxon/functions/FunctionLibraryList;->libraryList:Ljava/util/List;

    return-object p0
.end method

.method public isAvailable(Lnet/sf/saxon/trans/SymbolicName$F;I)Z
    .locals 1

    iget-object p0, p0, Lnet/sf/saxon/functions/FunctionLibraryList;->libraryList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/functions/FunctionLibrary;

    invoke-interface {v0, p1, p2}, Lnet/sf/saxon/functions/FunctionLibrary;->isAvailable(Lnet/sf/saxon/trans/SymbolicName$F;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method
