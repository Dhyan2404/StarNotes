.class public Lnet/sf/saxon/query/UnboundFunctionLibrary;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/functions/FunctionLibrary;


# instance fields
.field public a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/sf/saxon/expr/UserFunctionResolvable;",
            ">;"
        }
    .end annotation
.end field

.field public b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/sf/saxon/expr/StaticContext;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public d:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lnet/sf/saxon/query/UnboundFunctionLibrary;->a:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lnet/sf/saxon/query/UnboundFunctionLibrary;->b:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/sf/saxon/query/UnboundFunctionLibrary;->c:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/sf/saxon/query/UnboundFunctionLibrary;->d:Z

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

    iget-boolean v0, p0, Lnet/sf/saxon/query/UnboundFunctionLibrary;->d:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    invoke-interface {p4}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    invoke-interface {p4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "Cannot call the private XQuery function"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object v1

    :cond_1
    new-instance v0, Lnet/sf/saxon/expr/UserFunctionCall;

    invoke-direct {v0}, Lnet/sf/saxon/expr/UserFunctionCall;-><init>()V

    invoke-virtual {p1}, Lnet/sf/saxon/trans/SymbolicName;->getComponentName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object p1

    invoke-virtual {v0, p1}, Lnet/sf/saxon/expr/UserFunctionCall;->setFunctionName(Lnet/sf/saxon/om/StructuredQName;)V

    invoke-virtual {v0, p2}, Lnet/sf/saxon/expr/FunctionCall;->setArguments([Lnet/sf/saxon/expr/Expression;)V

    iget-object p1, p0, Lnet/sf/saxon/query/UnboundFunctionLibrary;->a:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lnet/sf/saxon/query/UnboundFunctionLibrary;->b:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lnet/sf/saxon/query/UnboundFunctionLibrary;->c:Ljava/util/List;

    invoke-interface {p0, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public bindUnboundFunctionReferences(Lnet/sf/saxon/query/XQueryFunctionBinder;Lnet/sf/saxon/Configuration;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/sf/saxon/query/UnboundFunctionLibrary;->d:Z

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lnet/sf/saxon/query/UnboundFunctionLibrary;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_8

    iget-object v2, p0, Lnet/sf/saxon/query/UnboundFunctionLibrary;->a:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/sf/saxon/expr/UserFunctionResolvable;

    instance-of v3, v2, Lnet/sf/saxon/expr/UserFunctionCall;

    const-string v4, "XPST0017"

    const-string v5, "()"

    const-string v6, "-argument function named "

    const-string v7, "Cannot find a "

    if-eqz v3, :cond_4

    check-cast v2, Lnet/sf/saxon/expr/UserFunctionCall;

    iget-object v3, p0, Lnet/sf/saxon/query/UnboundFunctionLibrary;->b:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/sf/saxon/query/QueryModule;

    if-nez v3, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object v3, p0, Lnet/sf/saxon/query/UnboundFunctionLibrary;->b:Ljava/util/List;

    const/4 v8, 0x0

    invoke-interface {v3, v1, v8}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2}, Lnet/sf/saxon/expr/UserFunctionCall;->getFunctionName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v3

    invoke-virtual {v2}, Lnet/sf/saxon/expr/FunctionCall;->getArity()I

    move-result v8

    invoke-interface {p1, v3, v8}, Lnet/sf/saxon/query/XQueryFunctionBinder;->getDeclaration(Lnet/sf/saxon/om/StructuredQName;I)Lnet/sf/saxon/query/XQueryFunction;

    move-result-object v9

    if-eqz v9, :cond_1

    invoke-virtual {v9, v2}, Lnet/sf/saxon/query/XQueryFunction;->registerReference(Lnet/sf/saxon/expr/UserFunctionResolvable;)V

    invoke-virtual {v9}, Lnet/sf/saxon/query/XQueryFunction;->getResultType()Lnet/sf/saxon/value/SequenceType;

    move-result-object v3

    invoke-virtual {v2, v3}, Lnet/sf/saxon/expr/UserFunctionCall;->setStaticType(Lnet/sf/saxon/value/SequenceType;)V

    goto/16 :goto_2

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lnet/sf/saxon/om/StructuredQName;->getEQName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lnet/sf/saxon/query/UnboundFunctionLibrary;->c:Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const-string v6, ". "

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-static {v3, p2}, Lnet/sf/saxon/expr/parser/XPathParser;->getMissingFunctionExplanation(Lnet/sf/saxon/om/StructuredQName;Lnet/sf/saxon/Configuration;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object p2

    invoke-direct {p0, p1, v4, p2}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;Lnet/sf/saxon/s9api/Location;)V

    invoke-virtual {p0, v0}, Lnet/sf/saxon/trans/XPathException;->setIsStaticError(Z)V

    throw p0

    :cond_4
    instance-of v3, v2, Lnet/sf/saxon/query/XQueryFunctionLibrary$UnresolvedCallable;

    if-eqz v3, :cond_7

    check-cast v2, Lnet/sf/saxon/query/XQueryFunctionLibrary$UnresolvedCallable;

    invoke-virtual {v2}, Lnet/sf/saxon/query/XQueryFunctionLibrary$UnresolvedCallable;->getFunctionName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v3

    invoke-virtual {v2}, Lnet/sf/saxon/query/XQueryFunctionLibrary$UnresolvedCallable;->getArity()I

    move-result v8

    invoke-interface {p1, v3, v8}, Lnet/sf/saxon/query/XQueryFunctionBinder;->getDeclaration(Lnet/sf/saxon/om/StructuredQName;I)Lnet/sf/saxon/query/XQueryFunction;

    move-result-object v9

    if-eqz v9, :cond_5

    invoke-virtual {v9, v2}, Lnet/sf/saxon/query/XQueryFunction;->registerReference(Lnet/sf/saxon/expr/UserFunctionResolvable;)V

    goto :goto_2

    :cond_5
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lnet/sf/saxon/om/StructuredQName;->getEQName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lnet/sf/saxon/lib/Feature;->ALLOW_EXTERNAL_FUNCTIONS:Lnet/sf/saxon/lib/Feature;

    invoke-virtual {p2, p1}, Lnet/sf/saxon/Configuration;->getBooleanProperty(Lnet/sf/saxon/lib/Feature;)Z

    move-result p1

    if-nez p1, :cond_6

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ". Note: external function calls have been disabled"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_6
    new-instance p1, Lnet/sf/saxon/trans/XPathException;

    invoke-direct {p1, p0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v4}, Lnet/sf/saxon/trans/XPathException;->setErrorCode(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lnet/sf/saxon/trans/XPathException;->setIsStaticError(Z)V

    throw p1

    :cond_7
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_8
    return-void
.end method

.method public copy()Lnet/sf/saxon/functions/FunctionLibrary;
    .locals 3

    new-instance v0, Lnet/sf/saxon/query/UnboundFunctionLibrary;

    invoke-direct {v0}, Lnet/sf/saxon/query/UnboundFunctionLibrary;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lnet/sf/saxon/query/UnboundFunctionLibrary;->a:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lnet/sf/saxon/query/UnboundFunctionLibrary;->a:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lnet/sf/saxon/query/UnboundFunctionLibrary;->b:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lnet/sf/saxon/query/UnboundFunctionLibrary;->b:Ljava/util/List;

    iget-boolean p0, p0, Lnet/sf/saxon/query/UnboundFunctionLibrary;->d:Z

    iput-boolean p0, v0, Lnet/sf/saxon/query/UnboundFunctionLibrary;->d:Z

    return-object v0
.end method

.method public getFunctionItem(Lnet/sf/saxon/trans/SymbolicName$F;Lnet/sf/saxon/expr/StaticContext;)Lnet/sf/saxon/om/Function;
    .locals 2

    iget-boolean p2, p0, Lnet/sf/saxon/query/UnboundFunctionLibrary;->d:Z

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    return-object v0

    :cond_0
    new-instance p2, Lnet/sf/saxon/query/XQueryFunctionLibrary$UnresolvedCallable;

    invoke-direct {p2, p1}, Lnet/sf/saxon/query/XQueryFunctionLibrary$UnresolvedCallable;-><init>(Lnet/sf/saxon/trans/SymbolicName$F;)V

    iget-object v1, p0, Lnet/sf/saxon/query/UnboundFunctionLibrary;->a:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lnet/sf/saxon/query/UnboundFunctionLibrary;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lnet/sf/saxon/query/UnboundFunctionLibrary;->c:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p0, Lnet/sf/saxon/functions/CallableFunction;

    invoke-static {}, Lnet/sf/saxon/type/AnyFunctionType;->getInstance()Lnet/sf/saxon/type/AnyFunctionType;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lnet/sf/saxon/functions/CallableFunction;-><init>(Lnet/sf/saxon/trans/SymbolicName$F;Lnet/sf/saxon/expr/Callable;Lnet/sf/saxon/type/FunctionItemType;)V

    return-object p0
.end method

.method public isAvailable(Lnet/sf/saxon/trans/SymbolicName$F;I)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
