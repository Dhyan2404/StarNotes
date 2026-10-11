.class public Lnet/sf/saxon/query/XQueryFunctionLibrary;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/functions/FunctionLibrary;
.implements Lnet/sf/saxon/query/XQueryFunctionBinder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/sf/saxon/query/XQueryFunctionLibrary$UnresolvedCallable;
    }
.end annotation


# instance fields
.field public a:Lnet/sf/saxon/Configuration;

.field public b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lnet/sf/saxon/trans/SymbolicName;",
            "Lnet/sf/saxon/query/XQueryFunction;",
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

    iput-object v0, p0, Lnet/sf/saxon/query/XQueryFunctionLibrary;->b:Ljava/util/HashMap;

    iput-object p1, p0, Lnet/sf/saxon/query/XQueryFunctionLibrary;->a:Lnet/sf/saxon/Configuration;

    return-void
.end method


# virtual methods
.method public bind(Lnet/sf/saxon/trans/SymbolicName$F;[Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/StaticContext;Ljava/util/List;)Lnet/sf/saxon/expr/Expression;
    .locals 2
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

    iget-object p0, p0, Lnet/sf/saxon/query/XQueryFunctionLibrary;->b:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/query/XQueryFunction;

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lnet/sf/saxon/query/XQueryFunction;->isPrivate()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/query/XQueryFunction;->getStaticContext()Lnet/sf/saxon/expr/StaticContext;

    move-result-object v1

    if-eq v1, p3, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Cannot call the private XQuery function "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lnet/sf/saxon/trans/SymbolicName;->getComponentName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object p1

    invoke-virtual {p1}, Lnet/sf/saxon/om/StructuredQName;->getDisplayName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " from outside its module"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p4, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0

    :cond_0
    new-instance p1, Lnet/sf/saxon/expr/UserFunctionCall;

    invoke-direct {p1}, Lnet/sf/saxon/expr/UserFunctionCall;-><init>()V

    invoke-virtual {p0}, Lnet/sf/saxon/query/XQueryFunction;->getFunctionName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object p3

    invoke-virtual {p1, p3}, Lnet/sf/saxon/expr/UserFunctionCall;->setFunctionName(Lnet/sf/saxon/om/StructuredQName;)V

    invoke-virtual {p1, p2}, Lnet/sf/saxon/expr/FunctionCall;->setArguments([Lnet/sf/saxon/expr/Expression;)V

    invoke-virtual {p0}, Lnet/sf/saxon/query/XQueryFunction;->getResultType()Lnet/sf/saxon/value/SequenceType;

    move-result-object p2

    invoke-virtual {p1, p2}, Lnet/sf/saxon/expr/UserFunctionCall;->setStaticType(Lnet/sf/saxon/value/SequenceType;)V

    invoke-virtual {p0}, Lnet/sf/saxon/query/XQueryFunction;->getUserFunction()Lnet/sf/saxon/expr/instruct/UserFunction;

    move-result-object p2

    if-nez p2, :cond_1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/query/XQueryFunction;->registerReference(Lnet/sf/saxon/expr/UserFunctionResolvable;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1, p2}, Lnet/sf/saxon/expr/UserFunctionCall;->setFunction(Lnet/sf/saxon/expr/instruct/UserFunction;)V

    :goto_0
    return-object p1

    :cond_2
    return-object v0
.end method

.method public copy()Lnet/sf/saxon/functions/FunctionLibrary;
    .locals 2

    new-instance v0, Lnet/sf/saxon/query/XQueryFunctionLibrary;

    iget-object v1, p0, Lnet/sf/saxon/query/XQueryFunctionLibrary;->a:Lnet/sf/saxon/Configuration;

    invoke-direct {v0, v1}, Lnet/sf/saxon/query/XQueryFunctionLibrary;-><init>(Lnet/sf/saxon/Configuration;)V

    new-instance v1, Ljava/util/HashMap;

    iget-object p0, p0, Lnet/sf/saxon/query/XQueryFunctionLibrary;->b:Ljava/util/HashMap;

    invoke-direct {v1, p0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v1, v0, Lnet/sf/saxon/query/XQueryFunctionLibrary;->b:Ljava/util/HashMap;

    return-object v0
.end method

.method public declareFunction(Lnet/sf/saxon/query/XQueryFunction;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p1}, Lnet/sf/saxon/query/XQueryFunction;->getIdentificationKey()Lnet/sf/saxon/trans/SymbolicName;

    move-result-object v0

    iget-object v1, p0, Lnet/sf/saxon/query/XQueryFunctionLibrary;->b:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/query/XQueryFunction;

    if-ne v1, p1, :cond_0

    return-void

    :cond_0
    if-nez v1, :cond_1

    iget-object p0, p0, Lnet/sf/saxon/query/XQueryFunctionLibrary;->b:Ljava/util/HashMap;

    invoke-virtual {p0, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_1
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Duplicate definition of function "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lnet/sf/saxon/query/XQueryFunction;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " (see line "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lnet/sf/saxon/query/XQueryFunction;->getLineNumber()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " in "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lnet/sf/saxon/query/XQueryFunction;->getSystemId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    const-string v0, "XQST0034"

    invoke-virtual {p0, v0}, Lnet/sf/saxon/trans/XPathException;->setErrorCode(Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lnet/sf/saxon/trans/XPathException;->setIsStaticError(Z)V

    invoke-virtual {p0, p1}, Ljavax/xml/transform/TransformerException;->setLocator(Ljavax/xml/transform/SourceLocator;)V

    throw p0
.end method

.method public explainGlobalFunctions(Lnet/sf/saxon/trace/ExpressionPresenter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object p0, p0, Lnet/sf/saxon/query/XQueryFunctionLibrary;->b:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/query/XQueryFunction;

    invoke-virtual {v0, p1}, Lnet/sf/saxon/query/XQueryFunction;->explain(Lnet/sf/saxon/trace/ExpressionPresenter;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public fixupGlobalFunctions(Lnet/sf/saxon/query/QueryModule;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-static {p1}, Lnet/sf/saxon/expr/parser/ExpressionVisitor;->make(Lnet/sf/saxon/expr/StaticContext;)Lnet/sf/saxon/expr/parser/ExpressionVisitor;

    move-result-object p1

    iget-object v0, p0, Lnet/sf/saxon/query/XQueryFunctionLibrary;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/query/XQueryFunction;

    invoke-virtual {v1}, Lnet/sf/saxon/query/XQueryFunction;->compile()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lnet/sf/saxon/query/XQueryFunctionLibrary;->b:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/query/XQueryFunction;

    invoke-virtual {v0, p1}, Lnet/sf/saxon/query/XQueryFunction;->checkReferences(Lnet/sf/saxon/expr/parser/ExpressionVisitor;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public getConfiguration()Lnet/sf/saxon/Configuration;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/query/XQueryFunctionLibrary;->a:Lnet/sf/saxon/Configuration;

    return-object p0
.end method

.method public getDeclaration(Lnet/sf/saxon/om/StructuredQName;I)Lnet/sf/saxon/query/XQueryFunction;
    .locals 0

    invoke-static {p1, p2}, Lnet/sf/saxon/query/XQueryFunction;->getIdentificationKey(Lnet/sf/saxon/om/StructuredQName;I)Lnet/sf/saxon/trans/SymbolicName;

    move-result-object p1

    iget-object p0, p0, Lnet/sf/saxon/query/XQueryFunctionLibrary;->b:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/query/XQueryFunction;

    return-object p0
.end method

.method public getDeclarationByKey(Lnet/sf/saxon/trans/SymbolicName;)Lnet/sf/saxon/query/XQueryFunction;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/query/XQueryFunctionLibrary;->b:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/query/XQueryFunction;

    return-object p0
.end method

.method public getFunctionDefinitions()Ljava/lang/Iterable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Lnet/sf/saxon/query/XQueryFunction;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lnet/sf/saxon/query/XQueryFunctionLibrary;->b:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public getFunctionItem(Lnet/sf/saxon/trans/SymbolicName$F;Lnet/sf/saxon/expr/StaticContext;)Lnet/sf/saxon/om/Function;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object p0, p0, Lnet/sf/saxon/query/XQueryFunctionLibrary;->b:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/query/XQueryFunction;

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Lnet/sf/saxon/query/XQueryFunction;->isPrivate()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lnet/sf/saxon/query/XQueryFunction;->getSystemId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2}, Lnet/sf/saxon/expr/StaticContext;->getStaticBaseURI()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Cannot call the private function "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lnet/sf/saxon/trans/SymbolicName;->getComponentName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object p1

    invoke-virtual {p1}, Lnet/sf/saxon/om/StructuredQName;->getDisplayName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " from outside its module"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "XPST0017"

    invoke-direct {p0, p1, p2}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lnet/sf/saxon/query/XQueryFunction;->getUserFunction()Lnet/sf/saxon/expr/instruct/UserFunction;

    move-result-object p2

    new-instance v0, Lnet/sf/saxon/type/SpecificFunctionType;

    invoke-virtual {p0}, Lnet/sf/saxon/query/XQueryFunction;->getArgumentTypes()[Lnet/sf/saxon/value/SequenceType;

    move-result-object v1

    invoke-virtual {p0}, Lnet/sf/saxon/query/XQueryFunction;->getResultType()Lnet/sf/saxon/value/SequenceType;

    move-result-object v2

    invoke-virtual {p0}, Lnet/sf/saxon/query/XQueryFunction;->getAnnotations()Lnet/sf/saxon/query/AnnotationList;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lnet/sf/saxon/type/SpecificFunctionType;-><init>([Lnet/sf/saxon/value/SequenceType;Lnet/sf/saxon/value/SequenceType;Lnet/sf/saxon/query/AnnotationList;)V

    if-nez p2, :cond_2

    new-instance p2, Lnet/sf/saxon/expr/instruct/UserFunction;

    invoke-direct {p2}, Lnet/sf/saxon/expr/instruct/UserFunction;-><init>()V

    invoke-virtual {p1}, Lnet/sf/saxon/trans/SymbolicName;->getComponentName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v0

    invoke-virtual {p2, v0}, Lnet/sf/saxon/expr/instruct/UserFunction;->setFunctionName(Lnet/sf/saxon/om/StructuredQName;)V

    invoke-virtual {p0}, Lnet/sf/saxon/query/XQueryFunction;->getResultType()Lnet/sf/saxon/value/SequenceType;

    move-result-object v0

    invoke-virtual {p2, v0}, Lnet/sf/saxon/expr/instruct/UserFunction;->setResultType(Lnet/sf/saxon/value/SequenceType;)V

    invoke-virtual {p0}, Lnet/sf/saxon/query/XQueryFunction;->getParameterDefinitions()[Lnet/sf/saxon/expr/instruct/UserFunctionParameter;

    move-result-object v0

    invoke-virtual {p2, v0}, Lnet/sf/saxon/expr/instruct/UserFunction;->setParameterDefinitions([Lnet/sf/saxon/expr/instruct/UserFunctionParameter;)V

    new-instance v0, Lnet/sf/saxon/functions/hof/UserFunctionReference;

    invoke-direct {v0, p2}, Lnet/sf/saxon/functions/hof/UserFunctionReference;-><init>(Lnet/sf/saxon/expr/instruct/UserFunction;)V

    invoke-virtual {p0, v0}, Lnet/sf/saxon/query/XQueryFunction;->registerReference(Lnet/sf/saxon/expr/UserFunctionResolvable;)V

    new-instance p2, Lnet/sf/saxon/functions/hof/UnresolvedXQueryFunctionItem;

    invoke-direct {p2, p0, p1, v0}, Lnet/sf/saxon/functions/hof/UnresolvedXQueryFunctionItem;-><init>(Lnet/sf/saxon/query/XQueryFunction;Lnet/sf/saxon/trans/SymbolicName$F;Lnet/sf/saxon/functions/hof/UserFunctionReference;)V

    :cond_2
    return-object p2

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method public getUserDefinedFunction(Ljava/lang/String;Ljava/lang/String;I)Lnet/sf/saxon/expr/instruct/UserFunction;
    .locals 3

    new-instance v0, Lnet/sf/saxon/trans/SymbolicName$F;

    new-instance v1, Lnet/sf/saxon/om/StructuredQName;

    const-string v2, ""

    invoke-direct {v1, v2, p1, p2}, Lnet/sf/saxon/om/StructuredQName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1, p3}, Lnet/sf/saxon/trans/SymbolicName$F;-><init>(Lnet/sf/saxon/om/StructuredQName;I)V

    iget-object p0, p0, Lnet/sf/saxon/query/XQueryFunctionLibrary;->b:Ljava/util/HashMap;

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/query/XQueryFunction;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/query/XQueryFunction;->getUserFunction()Lnet/sf/saxon/expr/instruct/UserFunction;

    move-result-object p0

    return-object p0
.end method

.method public isAvailable(Lnet/sf/saxon/trans/SymbolicName$F;I)Z
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/query/XQueryFunctionLibrary;->b:Ljava/util/HashMap;

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

.method public optimizeGlobalFunctions(Lnet/sf/saxon/query/QueryModule;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object p0, p0, Lnet/sf/saxon/query/XQueryFunctionLibrary;->b:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/query/XQueryFunction;

    invoke-virtual {v0}, Lnet/sf/saxon/query/XQueryFunction;->getStaticContext()Lnet/sf/saxon/expr/StaticContext;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/query/QueryModule;

    invoke-virtual {v1}, Lnet/sf/saxon/query/QueryModule;->getTopLevelModule()Lnet/sf/saxon/query/QueryModule;

    move-result-object v1

    if-ne v1, p1, :cond_0

    invoke-virtual {v0}, Lnet/sf/saxon/query/XQueryFunction;->optimize()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setConfiguration(Lnet/sf/saxon/Configuration;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/query/XQueryFunctionLibrary;->a:Lnet/sf/saxon/Configuration;

    return-void
.end method
