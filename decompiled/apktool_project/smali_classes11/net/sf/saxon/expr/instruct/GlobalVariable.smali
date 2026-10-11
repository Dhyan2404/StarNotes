.class public Lnet/sf/saxon/expr/instruct/GlobalVariable;
.super Lnet/sf/saxon/expr/instruct/Actor;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/expr/Binding;
.implements Lnet/sf/saxon/query/Declaration;
.implements Lnet/sf/saxon/trace/TraceableComponent;
.implements Lnet/sf/saxon/expr/ContextOriginator;


# static fields
.field public static final synthetic v:Z


# instance fields
.field public m:Lnet/sf/saxon/om/StructuredQName;

.field public n:Lnet/sf/saxon/value/SequenceType;

.field public o:Z

.field public p:Z

.field public q:Z

.field public r:Lnet/sf/saxon/expr/instruct/GlobalVariable;

.field protected references:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/sf/saxon/expr/BindingReference;",
            ">;"
        }
    .end annotation
.end field

.field public s:I

.field public t:Z

.field public u:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lnet/sf/saxon/expr/instruct/Actor;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lnet/sf/saxon/expr/instruct/GlobalVariable;->references:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/sf/saxon/expr/instruct/GlobalVariable;->p:Z

    iput-boolean v0, p0, Lnet/sf/saxon/expr/instruct/GlobalVariable;->q:Z

    return-void
.end method

.method public static b(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/expr/XPathContextMajor;
    .locals 1

    invoke-interface {p0}, Lnet/sf/saxon/expr/XPathContext;->getCaller()Lnet/sf/saxon/expr/XPathContext;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_0

    instance-of v0, p0, Lnet/sf/saxon/expr/XPathContextMajor;

    if-nez v0, :cond_0

    invoke-interface {p0}, Lnet/sf/saxon/expr/XPathContext;->getCaller()Lnet/sf/saxon/expr/XPathContext;

    move-result-object p0

    goto :goto_0

    :cond_0
    check-cast p0, Lnet/sf/saxon/expr/XPathContextMajor;

    return-object p0
.end method

.method public static c(Lnet/sf/saxon/query/XQueryFunction;Lnet/sf/saxon/tree/util/IndexedStack;Lnet/sf/saxon/query/XQueryFunctionLibrary;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/sf/saxon/query/XQueryFunction;",
            "Lnet/sf/saxon/tree/util/IndexedStack<",
            "Ljava/lang/Object;",
            ">;",
            "Lnet/sf/saxon/query/XQueryFunctionLibrary;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/query/XQueryFunction;->getBody()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {p1, p0}, Lnet/sf/saxon/tree/util/IndexedStack;->push(Ljava/lang/Object;)V

    new-instance p0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-direct {p0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {v0, p0}, Lnet/sf/saxon/expr/parser/ExpressionTool;->gatherReferencedVariables(Lnet/sf/saxon/expr/Expression;Ljava/util/List;)V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/expr/Binding;

    instance-of v2, v1, Lnet/sf/saxon/expr/instruct/GlobalVariable;

    if-eqz v2, :cond_0

    check-cast v1, Lnet/sf/saxon/expr/instruct/GlobalVariable;

    invoke-virtual {v1, p1, p2}, Lnet/sf/saxon/expr/instruct/GlobalVariable;->lookForCycles(Lnet/sf/saxon/tree/util/IndexedStack;Lnet/sf/saxon/query/XQueryFunctionLibrary;)V

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, p0}, Lnet/sf/saxon/expr/parser/ExpressionTool;->gatherCalledFunctionNames(Lnet/sf/saxon/expr/Expression;Ljava/util/List;)V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/trans/SymbolicName;

    invoke-virtual {p2, v0}, Lnet/sf/saxon/query/XQueryFunctionLibrary;->getDeclarationByKey(Lnet/sf/saxon/trans/SymbolicName;)Lnet/sf/saxon/query/XQueryFunction;

    move-result-object v0

    invoke-virtual {p1, v0}, Lnet/sf/saxon/tree/util/IndexedStack;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {v0, p1, p2}, Lnet/sf/saxon/expr/instruct/GlobalVariable;->c(Lnet/sf/saxon/query/XQueryFunction;Lnet/sf/saxon/tree/util/IndexedStack;Lnet/sf/saxon/query/XQueryFunctionLibrary;)V

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Lnet/sf/saxon/tree/util/IndexedStack;->pop()Ljava/lang/Object;

    return-void
.end method

.method public static setDependencies(Lnet/sf/saxon/expr/instruct/GlobalVariable;Lnet/sf/saxon/expr/XPathContext;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-interface {p1}, Lnet/sf/saxon/expr/XPathContext;->getController()Lnet/sf/saxon/Controller;

    move-result-object v0

    instance-of v1, p1, Lnet/sf/saxon/expr/XPathContextMajor;

    if-nez v1, :cond_0

    invoke-static {p1}, Lnet/sf/saxon/expr/instruct/GlobalVariable;->b(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/expr/XPathContextMajor;

    move-result-object p1

    :cond_0
    :goto_0
    if-eqz p1, :cond_3

    :cond_1
    move-object v1, p1

    check-cast v1, Lnet/sf/saxon/expr/XPathContextMajor;

    invoke-virtual {v1}, Lnet/sf/saxon/expr/XPathContextMajor;->getOrigin()Lnet/sf/saxon/expr/ContextOriginator;

    move-result-object v1

    instance-of v2, v1, Lnet/sf/saxon/expr/instruct/GlobalVariable;

    if-eqz v2, :cond_2

    check-cast v1, Lnet/sf/saxon/expr/instruct/GlobalVariable;

    invoke-virtual {v0, v1, p0}, Lnet/sf/saxon/Controller;->registerGlobalVariableDependency(Lnet/sf/saxon/expr/instruct/GlobalVariable;Lnet/sf/saxon/expr/instruct/GlobalVariable;)V

    return-void

    :cond_2
    invoke-static {p1}, Lnet/sf/saxon/expr/instruct/GlobalVariable;->b(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/expr/XPathContextMajor;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_3
    return-void
.end method


# virtual methods
.method public actuallyEvaluate(Lnet/sf/saxon/expr/XPathContext;Lnet/sf/saxon/expr/Component;)Lnet/sf/saxon/om/GroundedValue;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-interface {p1}, Lnet/sf/saxon/expr/XPathContext;->getController()Lnet/sf/saxon/Controller;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/Actor;->getPackageData()Lnet/sf/saxon/expr/PackageData;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/sf/saxon/Controller;->getBindery(Lnet/sf/saxon/expr/PackageData;)Lnet/sf/saxon/expr/instruct/Bindery;

    move-result-object v1

    :try_start_0
    invoke-static {p0, p1}, Lnet/sf/saxon/expr/instruct/GlobalVariable;->setDependencies(Lnet/sf/saxon/expr/instruct/GlobalVariable;Lnet/sf/saxon/expr/XPathContext;)V

    invoke-virtual {v1, p0}, Lnet/sf/saxon/expr/instruct/Bindery;->setExecuting(Lnet/sf/saxon/expr/instruct/GlobalVariable;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/GlobalVariable;->getBinderySlotNumber()I

    move-result p2

    invoke-virtual {v1, p2}, Lnet/sf/saxon/expr/instruct/Bindery;->getGlobalVariable(I)Lnet/sf/saxon/om/GroundedValue;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/expr/instruct/GlobalVariable;->getSelectValue(Lnet/sf/saxon/expr/XPathContext;Lnet/sf/saxon/expr/Component;)Lnet/sf/saxon/om/GroundedValue;

    move-result-object p2

    iget-boolean v2, p0, Lnet/sf/saxon/expr/instruct/GlobalVariable;->o:Z

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lnet/sf/saxon/Controller;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/Configuration;->obtainOptimizer()Lnet/sf/saxon/expr/parser/Optimizer;

    move-result-object v0

    invoke-interface {p2}, Lnet/sf/saxon/om/GroundedValue;->iterate()Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p2

    invoke-virtual {v0, p2}, Lnet/sf/saxon/expr/parser/Optimizer;->makeIndexedValue(Lnet/sf/saxon/om/SequenceIterator;)Lnet/sf/saxon/om/GroundedValue;

    move-result-object p2

    :cond_1
    invoke-virtual {v1, p0, p2}, Lnet/sf/saxon/expr/instruct/Bindery;->saveGlobalVariableValue(Lnet/sf/saxon/expr/instruct/GlobalVariable;Lnet/sf/saxon/om/GroundedValue;)Lnet/sf/saxon/om/GroundedValue;

    move-result-object p0
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p2

    invoke-virtual {v1, p0}, Lnet/sf/saxon/expr/instruct/Bindery;->setNotExecuting(Lnet/sf/saxon/expr/instruct/GlobalVariable;)V

    instance-of v0, p2, Lnet/sf/saxon/trans/XPathException$Circularity;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/Actor;->getPackageData()Lnet/sf/saxon/expr/PackageData;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/expr/PackageData;->isXSLT()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "XTDE0640"

    goto :goto_0

    :cond_2
    const-string v0, "XQDY0054"

    :goto_0
    invoke-virtual {p2, v0}, Lnet/sf/saxon/trans/XPathException;->setErrorCode(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Lnet/sf/saxon/trans/XPathException;->setXPathContext(Lnet/sf/saxon/expr/XPathContext;)V

    const/4 p1, 0x1

    invoke-virtual {p2, p1}, Lnet/sf/saxon/trans/XPathException;->setIsGlobalError(Z)V

    new-instance p1, Lnet/sf/saxon/expr/instruct/Bindery$FailureValue;

    invoke-direct {p1, p2}, Lnet/sf/saxon/expr/instruct/Bindery$FailureValue;-><init>(Lnet/sf/saxon/trans/XPathException;)V

    invoke-virtual {v1, p0, p1}, Lnet/sf/saxon/expr/instruct/Bindery;->setGlobalVariable(Lnet/sf/saxon/expr/instruct/GlobalVariable;Lnet/sf/saxon/om/GroundedValue;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/Actor;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object p0

    invoke-virtual {p2, p0}, Lnet/sf/saxon/trans/XPathException;->setLocation(Lnet/sf/saxon/s9api/Location;)V

    throw p2

    :cond_3
    throw p2
.end method

.method public addReference(Lnet/sf/saxon/expr/VariableReference;Z)V
    .locals 0

    return-void
.end method

.method public compile(Lnet/sf/saxon/expr/instruct/Executable;I)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/GlobalVariable;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/Configuration;->getTypeHierarchy()Lnet/sf/saxon/type/TypeHierarchy;

    move-result-object v0

    invoke-virtual {p0, p2}, Lnet/sf/saxon/expr/instruct/GlobalVariable;->setBinderySlotNumber(I)V

    instance-of p2, p0, Lnet/sf/saxon/expr/instruct/GlobalParam;

    const/4 v1, 0x0

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/Actor;->getBody()Lnet/sf/saxon/expr/Expression;

    move-result-object v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    invoke-virtual {p0, v2}, Lnet/sf/saxon/expr/instruct/GlobalVariable;->setRequiredParam(Z)V

    :cond_1
    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/GlobalVariable;->getRequiredType()Lnet/sf/saxon/value/SequenceType;

    move-result-object v2

    iget-object v3, p0, Lnet/sf/saxon/expr/instruct/GlobalVariable;->references:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnet/sf/saxon/expr/BindingReference;

    invoke-interface {v4, p0}, Lnet/sf/saxon/expr/BindingReference;->fixup(Lnet/sf/saxon/expr/Binding;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/Actor;->getBody()Lnet/sf/saxon/expr/Expression;

    move-result-object v5

    instance-of v6, v5, Lnet/sf/saxon/expr/Literal;

    if-eqz v6, :cond_3

    if-nez p2, :cond_3

    invoke-virtual {v5}, Lnet/sf/saxon/expr/Expression;->getItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object v6

    invoke-virtual {v2}, Lnet/sf/saxon/value/SequenceType;->getPrimaryType()Lnet/sf/saxon/type/ItemType;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Lnet/sf/saxon/type/TypeHierarchy;->relationship(Lnet/sf/saxon/type/ItemType;Lnet/sf/saxon/type/ItemType;)Lnet/sf/saxon/type/Affinity;

    move-result-object v6

    sget-object v7, Lnet/sf/saxon/type/Affinity;->SAME_TYPE:Lnet/sf/saxon/type/Affinity;

    if-eq v6, v7, :cond_2

    sget-object v7, Lnet/sf/saxon/type/Affinity;->SUBSUMED_BY:Lnet/sf/saxon/type/Affinity;

    if-ne v6, v7, :cond_3

    :cond_2
    move-object v2, v5

    check-cast v2, Lnet/sf/saxon/expr/Literal;

    invoke-virtual {v2}, Lnet/sf/saxon/expr/Literal;->getGroundedValue()Lnet/sf/saxon/om/GroundedValue;

    move-result-object v2

    invoke-static {v2, v0}, Lnet/sf/saxon/om/SequenceTool;->getItemType(Lnet/sf/saxon/om/Sequence;Lnet/sf/saxon/type/TypeHierarchy;)Lnet/sf/saxon/type/ItemType;

    move-result-object v6

    invoke-static {v2}, Lnet/sf/saxon/om/SequenceTool;->getCardinality(Lnet/sf/saxon/om/Sequence;)I

    move-result v7

    invoke-static {v6, v7}, Lnet/sf/saxon/value/SequenceType;->makeSequenceType(Lnet/sf/saxon/type/ItemType;I)Lnet/sf/saxon/value/SequenceType;

    move-result-object v6

    move-object v8, v6

    move-object v6, v2

    move-object v2, v8

    goto :goto_2

    :cond_3
    const/4 v6, 0x0

    :goto_2
    if-eqz v5, :cond_4

    invoke-virtual {v5}, Lnet/sf/saxon/expr/Expression;->getSpecialProperties()I

    move-result v5

    goto :goto_3

    :cond_4
    move v5, v1

    :goto_3
    const/high16 v7, 0x800000

    or-int/2addr v5, v7

    invoke-interface {v4, v2, v6, v5}, Lnet/sf/saxon/expr/BindingReference;->setStaticType(Lnet/sf/saxon/value/SequenceType;Lnet/sf/saxon/om/GroundedValue;I)V

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/GlobalVariable;->isRequiredParam()Z

    move-result p2

    if-eqz p2, :cond_6

    check-cast p0, Lnet/sf/saxon/expr/instruct/GlobalParam;

    invoke-virtual {p1, p0}, Lnet/sf/saxon/expr/instruct/Executable;->registerGlobalParameter(Lnet/sf/saxon/expr/instruct/GlobalParam;)V

    :cond_6
    return-void
.end method

.method public evaluateVariable(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/GroundedValue;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    .line 2
    invoke-interface {p1}, Lnet/sf/saxon/expr/XPathContext;->getController()Lnet/sf/saxon/Controller;

    move-result-object v0

    .line 3
    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/Actor;->getPackageData()Lnet/sf/saxon/expr/PackageData;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/sf/saxon/Controller;->getBindery(Lnet/sf/saxon/expr/PackageData;)Lnet/sf/saxon/expr/instruct/Bindery;

    move-result-object v0

    .line 4
    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/GlobalVariable;->getBinderySlotNumber()I

    move-result v1

    invoke-virtual {v0, v1}, Lnet/sf/saxon/expr/instruct/Bindery;->getGlobalVariable(I)Lnet/sf/saxon/om/GroundedValue;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    .line 5
    invoke-virtual {p0, p1, v0}, Lnet/sf/saxon/expr/instruct/GlobalVariable;->actuallyEvaluate(Lnet/sf/saxon/expr/XPathContext;Lnet/sf/saxon/expr/Component;)Lnet/sf/saxon/om/GroundedValue;

    move-result-object p0

    return-object p0
.end method

.method public evaluateVariable(Lnet/sf/saxon/expr/XPathContext;Lnet/sf/saxon/expr/Component;)Lnet/sf/saxon/om/GroundedValue;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    .line 6
    invoke-interface {p1}, Lnet/sf/saxon/expr/XPathContext;->getController()Lnet/sf/saxon/Controller;

    move-result-object v0

    .line 7
    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/Actor;->getPackageData()Lnet/sf/saxon/expr/PackageData;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/sf/saxon/Controller;->getBindery(Lnet/sf/saxon/expr/PackageData;)Lnet/sf/saxon/expr/instruct/Bindery;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 8
    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/GlobalVariable;->getBinderySlotNumber()I

    move-result v1

    invoke-virtual {v0, v1}, Lnet/sf/saxon/expr/instruct/Bindery;->getGlobalVariable(I)Lnet/sf/saxon/om/GroundedValue;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 9
    instance-of p0, v0, Lnet/sf/saxon/expr/instruct/Bindery$FailureValue;

    if-nez p0, :cond_0

    return-object v0

    .line 10
    :cond_0
    check-cast v0, Lnet/sf/saxon/expr/instruct/Bindery$FailureValue;

    invoke-virtual {v0}, Lnet/sf/saxon/value/ObjectValue;->getObject()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/trans/XPathException;

    throw p0

    .line 11
    :cond_1
    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/expr/instruct/GlobalVariable;->actuallyEvaluate(Lnet/sf/saxon/expr/XPathContext;Lnet/sf/saxon/expr/Component;)Lnet/sf/saxon/om/GroundedValue;

    move-result-object p0

    return-object p0

    .line 12
    :cond_2
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0
.end method

.method public bridge synthetic evaluateVariable(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/Sequence;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/instruct/GlobalVariable;->evaluateVariable(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/GroundedValue;

    move-result-object p0

    return-object p0
.end method

.method public export(Lnet/sf/saxon/trace/ExpressionPresenter;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    instance-of v0, p0, Lnet/sf/saxon/expr/instruct/GlobalParam;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/GlobalVariable;->isStatic()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    const-string v0, "globalParam"

    goto :goto_1

    :cond_1
    const-string v0, "globalVariable"

    :goto_1
    invoke-virtual {p1, v0}, Lnet/sf/saxon/trace/ExpressionPresenter;->startElement(Ljava/lang/String;)I

    const-string v0, "name"

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/GlobalVariable;->getVariableQName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lnet/sf/saxon/trace/ExpressionPresenter;->emitAttribute(Ljava/lang/String;Lnet/sf/saxon/om/StructuredQName;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/GlobalVariable;->getRequiredType()Lnet/sf/saxon/value/SequenceType;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/value/SequenceType;->toAlphaCode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "as"

    invoke-virtual {p1, v1, v0}, Lnet/sf/saxon/trace/ExpressionPresenter;->emitAttribute(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/Actor;->getLineNumber()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "line"

    invoke-virtual {p1, v2, v0}, Lnet/sf/saxon/trace/ExpressionPresenter;->emitAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "module"

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/Actor;->getSystemId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Lnet/sf/saxon/trace/ExpressionPresenter;->emitAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/Actor;->getStackFrameMap()Lnet/sf/saxon/expr/instruct/SlotManager;

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/Actor;->getStackFrameMap()Lnet/sf/saxon/expr/instruct/SlotManager;

    move-result-object v2

    invoke-virtual {v2}, Lnet/sf/saxon/expr/instruct/SlotManager;->getNumberOfVariables()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "slots"

    invoke-virtual {p1, v1, v0}, Lnet/sf/saxon/trace/ExpressionPresenter;->emitAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/Actor;->getDeclaringComponent()Lnet/sf/saxon/expr/Component;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/Actor;->getDeclaringComponent()Lnet/sf/saxon/expr/Component;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/expr/Component;->getVisibility()Lnet/sf/saxon/trans/Visibility;

    move-result-object v0

    sget-object v1, Lnet/sf/saxon/trans/Visibility;->UNDEFINED:Lnet/sf/saxon/trans/Visibility;

    if-eq v0, v1, :cond_3

    const-string v1, "visibility"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lnet/sf/saxon/trace/ExpressionPresenter;->emitAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/GlobalVariable;->getFlags()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "flags"

    invoke-virtual {p1, v1, v0}, Lnet/sf/saxon/trace/ExpressionPresenter;->emitAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/Actor;->getBody()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/Actor;->getBody()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/Expression;->export(Lnet/sf/saxon/trace/ExpressionPresenter;)V

    :cond_5
    invoke-virtual {p1}, Lnet/sf/saxon/trace/ExpressionPresenter;->endElement()I

    return-void
.end method

.method public gatherProperties(Ljava/util/function/BiConsumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiConsumer<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "name"

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/GlobalVariable;->getVariableQName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object p0

    invoke-interface {p1, v0, p0}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public getBinderySlotNumber()I
    .locals 0

    iget p0, p0, Lnet/sf/saxon/expr/instruct/GlobalVariable;->s:I

    return p0
.end method

.method public final getConfiguration()Lnet/sf/saxon/Configuration;
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/Actor;->getPackageData()Lnet/sf/saxon/expr/PackageData;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/PackageData;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p0

    return-object p0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lnet/sf/saxon/expr/instruct/GlobalVariable;->m:Lnet/sf/saxon/om/StructuredQName;

    const-string v1, "http://saxon.sf.net/generated-variable"

    invoke-virtual {v0, v1}, Lnet/sf/saxon/om/StructuredQName;->hasURI(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "optimizer-generated global variable select=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/Actor;->getBody()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->toShortString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x22

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "global variable "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/GlobalVariable;->getVariableQName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/om/StructuredQName;->getDisplayName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getFlags()Ljava/lang/String;
    .locals 2

    iget-boolean v0, p0, Lnet/sf/saxon/expr/instruct/GlobalVariable;->q:Z

    const-string v1, ""

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_0
    iget-boolean v0, p0, Lnet/sf/saxon/expr/instruct/GlobalVariable;->o:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_1
    iget-boolean v0, p0, Lnet/sf/saxon/expr/instruct/GlobalVariable;->t:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "r"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_2
    iget-boolean p0, p0, Lnet/sf/saxon/expr/instruct/GlobalVariable;->u:Z

    if-eqz p0, :cond_3

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "s"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_3
    return-object v1
.end method

.method public getHostLanguage()Lnet/sf/saxon/s9api/HostLanguage;
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/Actor;->getPackageData()Lnet/sf/saxon/expr/PackageData;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/PackageData;->getHostLanguage()Lnet/sf/saxon/s9api/HostLanguage;

    move-result-object p0

    return-object p0
.end method

.method public getIntegerBoundsForVariable()[Lnet/sf/saxon/value/IntegerValue;
    .locals 1

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/Actor;->getBody()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/Actor;->getBody()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getIntegerBounds()[Lnet/sf/saxon/value/IntegerValue;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getLocalSlotNumber()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getObjectName()Lnet/sf/saxon/om/StructuredQName;
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/GlobalVariable;->getVariableQName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object p0

    return-object p0
.end method

.method public getOriginalVariable()Lnet/sf/saxon/expr/instruct/GlobalVariable;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/instruct/GlobalVariable;->r:Lnet/sf/saxon/expr/instruct/GlobalVariable;

    return-object p0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getRequiredType()Lnet/sf/saxon/value/SequenceType;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/instruct/GlobalVariable;->n:Lnet/sf/saxon/value/SequenceType;

    return-object p0
.end method

.method public getSelectValue(Lnet/sf/saxon/expr/XPathContext;Lnet/sf/saxon/expr/Component;)Lnet/sf/saxon/om/GroundedValue;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const-string v0, "http://saxon.sf.net/generated-variable"

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/Actor;->getBody()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    if-eqz v1, :cond_8

    instance-of v2, v1, Lnet/sf/saxon/expr/Literal;

    if-eqz v2, :cond_0

    check-cast v1, Lnet/sf/saxon/expr/Literal;

    invoke-virtual {v1}, Lnet/sf/saxon/expr/Literal;->getGroundedValue()Lnet/sf/saxon/om/GroundedValue;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v2, 0x1

    :try_start_0
    invoke-interface {p1}, Lnet/sf/saxon/expr/XPathContext;->getController()Lnet/sf/saxon/Controller;

    move-result-object v3

    invoke-virtual {v3}, Lnet/sf/saxon/Controller;->getExecutable()Lnet/sf/saxon/expr/instruct/Executable;

    move-result-object v3

    instance-of v4, v3, Lnet/sf/saxon/PreparedStylesheet;

    if-eqz v4, :cond_2

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lnet/sf/saxon/expr/Component;->getDeclaringPackage()Lnet/sf/saxon/style/StylesheetPackage;

    move-result-object v4

    check-cast v3, Lnet/sf/saxon/PreparedStylesheet;

    invoke-virtual {v3}, Lnet/sf/saxon/PreparedStylesheet;->getTopLevelPackage()Lnet/sf/saxon/style/StylesheetPackage;

    move-result-object v3

    if-ne v4, v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    move v3, v2

    :goto_1
    invoke-interface {p1}, Lnet/sf/saxon/expr/XPathContext;->newCleanContext()Lnet/sf/saxon/expr/XPathContextMajor;

    move-result-object v4

    invoke-virtual {v4, p0}, Lnet/sf/saxon/expr/XPathContextMajor;->setOrigin(Lnet/sf/saxon/expr/ContextOriginator;)V

    const/4 v5, 0x0

    if-eqz v3, :cond_3

    new-instance v3, Lnet/sf/saxon/tree/iter/ManualIterator;

    invoke-interface {p1}, Lnet/sf/saxon/expr/XPathContext;->getController()Lnet/sf/saxon/Controller;

    move-result-object p1

    invoke-virtual {p1}, Lnet/sf/saxon/Controller;->getGlobalContextItem()Lnet/sf/saxon/om/Item;

    move-result-object p1

    invoke-direct {v3, p1}, Lnet/sf/saxon/tree/iter/ManualIterator;-><init>(Lnet/sf/saxon/om/Item;)V

    invoke-virtual {v4, v3}, Lnet/sf/saxon/expr/XPathContextMinor;->setCurrentIterator(Lnet/sf/saxon/om/FocusIterator;)V

    goto :goto_2

    :cond_3
    invoke-virtual {v4, v5}, Lnet/sf/saxon/expr/XPathContextMinor;->setCurrentIterator(Lnet/sf/saxon/om/FocusIterator;)V

    :goto_2
    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/Actor;->getStackFrameMap()Lnet/sf/saxon/expr/instruct/SlotManager;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/Actor;->getStackFrameMap()Lnet/sf/saxon/expr/instruct/SlotManager;

    move-result-object p1

    invoke-virtual {v4, p1}, Lnet/sf/saxon/expr/XPathContextMajor;->openStackFrame(Lnet/sf/saxon/expr/instruct/SlotManager;)V

    :cond_4
    invoke-virtual {v4, p2}, Lnet/sf/saxon/expr/XPathContextMajor;->setCurrentComponent(Lnet/sf/saxon/expr/Component;)V

    invoke-virtual {v4}, Lnet/sf/saxon/expr/XPathContextMinor;->getTemporaryOutputState()I

    move-result p1

    const/16 p2, 0xda

    invoke-virtual {v4, p2}, Lnet/sf/saxon/expr/XPathContextMinor;->setTemporaryOutputState(I)V

    invoke-virtual {v4, v5}, Lnet/sf/saxon/expr/XPathContextMinor;->setCurrentOutputUri(Ljava/lang/String;)V

    iget-boolean p2, p0, Lnet/sf/saxon/expr/instruct/GlobalVariable;->o:Z

    if-eqz p2, :cond_5

    invoke-virtual {v4}, Lnet/sf/saxon/expr/XPathContextMinor;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p2

    const/16 v3, 0x2710

    invoke-virtual {p2, v1, v3, v4}, Lnet/sf/saxon/Configuration;->makeSequenceExtent(Lnet/sf/saxon/expr/Expression;ILnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/GroundedValue;

    move-result-object p2

    goto :goto_3

    :cond_5
    invoke-virtual {v1, v4}, Lnet/sf/saxon/expr/Expression;->iterate(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p2

    invoke-static {p2}, Lnet/sf/saxon/om/SequenceTool;->toGroundedValue(Lnet/sf/saxon/om/SequenceIterator;)Lnet/sf/saxon/om/GroundedValue;

    move-result-object p2

    :goto_3
    invoke-virtual {v4, p1}, Lnet/sf/saxon/expr/XPathContextMinor;->setTemporaryOutputState(I)V
    :try_end_0
    .catch Lnet/sf/saxon/trans/UncheckedXPathException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :catch_0
    move-exception p1

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/GlobalVariable;->getVariableQName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object p0

    invoke-virtual {p0, v0}, Lnet/sf/saxon/om/StructuredQName;->hasURI(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_6

    invoke-virtual {p1, v2}, Lnet/sf/saxon/trans/XPathException;->setIsGlobalError(Z)V

    :cond_6
    throw p1

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Lnet/sf/saxon/trans/UncheckedXPathException;->getXPathException()Lnet/sf/saxon/trans/XPathException;

    move-result-object p1

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/GlobalVariable;->getVariableQName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object p0

    invoke-virtual {p0, v0}, Lnet/sf/saxon/om/StructuredQName;->hasURI(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_7

    invoke-virtual {p1, v2}, Lnet/sf/saxon/trans/XPathException;->setIsGlobalError(Z)V

    :cond_7
    throw p1

    :cond_8
    new-instance p1, Ljava/lang/AssertionError;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "*** No select expression for global variable $"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/GlobalVariable;->getVariableQName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/om/StructuredQName;->getDisplayName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "!!"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method

.method public getSymbolicName()Lnet/sf/saxon/trans/SymbolicName;
    .locals 2

    new-instance v0, Lnet/sf/saxon/trans/SymbolicName;

    const/16 v1, 0xda

    iget-object p0, p0, Lnet/sf/saxon/expr/instruct/GlobalVariable;->m:Lnet/sf/saxon/om/StructuredQName;

    invoke-direct {v0, v1, p0}, Lnet/sf/saxon/trans/SymbolicName;-><init>(ILnet/sf/saxon/om/StructuredQName;)V

    return-object v0
.end method

.method public getTracingTag()Ljava/lang/String;
    .locals 0

    const-string p0, "xsl:variable"

    return-object p0
.end method

.method public getUltimateOriginalVariable()Lnet/sf/saxon/expr/instruct/GlobalVariable;
    .locals 1

    iget-object v0, p0, Lnet/sf/saxon/expr/instruct/GlobalVariable;->r:Lnet/sf/saxon/expr/instruct/GlobalVariable;

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {v0}, Lnet/sf/saxon/expr/instruct/GlobalVariable;->getUltimateOriginalVariable()Lnet/sf/saxon/expr/instruct/GlobalVariable;

    move-result-object p0

    return-object p0
.end method

.method public getVariableQName()Lnet/sf/saxon/om/StructuredQName;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/instruct/GlobalVariable;->m:Lnet/sf/saxon/om/StructuredQName;

    return-object p0
.end method

.method public init(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/om/StructuredQName;)V
    .locals 0

    iput-object p2, p0, Lnet/sf/saxon/expr/instruct/GlobalVariable;->m:Lnet/sf/saxon/om/StructuredQName;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/instruct/Actor;->setBody(Lnet/sf/saxon/expr/Expression;)V

    return-void
.end method

.method public final isAssignable()Z
    .locals 0

    iget-boolean p0, p0, Lnet/sf/saxon/expr/instruct/GlobalVariable;->q:Z

    return p0
.end method

.method public isGlobal()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isIndexedVariable()Z
    .locals 0

    iget-boolean p0, p0, Lnet/sf/saxon/expr/instruct/GlobalVariable;->o:Z

    return p0
.end method

.method public isPrivate()Z
    .locals 0

    iget-boolean p0, p0, Lnet/sf/saxon/expr/instruct/GlobalVariable;->p:Z

    return p0
.end method

.method public isRequiredParam()Z
    .locals 0

    iget-boolean p0, p0, Lnet/sf/saxon/expr/instruct/GlobalVariable;->t:Z

    return p0
.end method

.method public isStatic()Z
    .locals 0

    iget-boolean p0, p0, Lnet/sf/saxon/expr/instruct/GlobalVariable;->u:Z

    return p0
.end method

.method public isUnused()Z
    .locals 1

    iget p0, p0, Lnet/sf/saxon/expr/instruct/GlobalVariable;->s:I

    const/16 v0, -0x2412

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public iterateReferences()Ljava/util/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lnet/sf/saxon/expr/BindingReference;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lnet/sf/saxon/expr/instruct/GlobalVariable;->references:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public lookForCycles(Lnet/sf/saxon/tree/util/IndexedStack;Lnet/sf/saxon/query/XQueryFunctionLibrary;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/sf/saxon/tree/util/IndexedStack<",
            "Ljava/lang/Object;",
            ">;",
            "Lnet/sf/saxon/query/XQueryFunctionLibrary;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p1, p0}, Lnet/sf/saxon/tree/util/IndexedStack;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p1, p0}, Lnet/sf/saxon/tree/util/IndexedStack;->indexOf(Ljava/lang/Object;)I

    move-result p2

    invoke-virtual {p1, p0}, Lnet/sf/saxon/tree/util/IndexedStack;->push(Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Circular definition of global variable: $"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/GlobalVariable;->getVariableQName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v2

    invoke-virtual {v2}, Lnet/sf/saxon/om/StructuredQName;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move v1, p2

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lnet/sf/saxon/tree/util/IndexedStack;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    if-ge v1, v2, :cond_3

    if-eq v1, p2, :cond_1

    const-string v2, ", which"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v1}, Lnet/sf/saxon/tree/util/IndexedStack;->get(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lnet/sf/saxon/expr/instruct/GlobalVariable;

    if-eqz v2, :cond_2

    invoke-virtual {p1, v1}, Lnet/sf/saxon/tree/util/IndexedStack;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/sf/saxon/expr/instruct/GlobalVariable;

    const-string v3, " uses $"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lnet/sf/saxon/expr/instruct/GlobalVariable;->getVariableQName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v2

    invoke-virtual {v2}, Lnet/sf/saxon/om/StructuredQName;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    invoke-virtual {p1, v1}, Lnet/sf/saxon/tree/util/IndexedStack;->get(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lnet/sf/saxon/query/XQueryFunction;

    if-eqz v2, :cond_0

    invoke-virtual {p1, v1}, Lnet/sf/saxon/tree/util/IndexedStack;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/sf/saxon/query/XQueryFunction;

    const-string v3, " calls "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lnet/sf/saxon/query/XQueryFunction;->getFunctionName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v3

    invoke-virtual {v3}, Lnet/sf/saxon/om/StructuredQName;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "#"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lnet/sf/saxon/query/XQueryFunction;->getNumberOfArguments()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "()"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x2e

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lnet/sf/saxon/trans/XPathException;

    invoke-direct {v1, v0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/Actor;->getPackageData()Lnet/sf/saxon/expr/PackageData;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/expr/PackageData;->isXSLT()Z

    move-result v0

    if-nez v0, :cond_5

    if-nez p2, :cond_4

    invoke-virtual {p1}, Lnet/sf/saxon/tree/util/IndexedStack;->size()I

    move-result p1

    const/4 p2, 0x2

    if-ne p1, p2, :cond_4

    const-string p1, "XPST0008"

    goto :goto_1

    :cond_4
    const-string p1, "XQDY0054"

    goto :goto_1

    :cond_5
    const-string p1, "XTDE0640"

    :goto_1
    invoke-virtual {v1, p1}, Lnet/sf/saxon/trans/XPathException;->setErrorCode(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lnet/sf/saxon/trans/XPathException;->setIsStaticError(Z)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/Actor;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object p0

    invoke-virtual {v1, p0}, Lnet/sf/saxon/trans/XPathException;->setLocation(Lnet/sf/saxon/s9api/Location;)V

    throw v1

    :cond_6
    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/Actor;->getBody()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {p1, p0}, Lnet/sf/saxon/tree/util/IndexedStack;->push(Ljava/lang/Object;)V

    new-instance p0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-direct {p0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {v0, p0}, Lnet/sf/saxon/expr/parser/ExpressionTool;->gatherReferencedVariables(Lnet/sf/saxon/expr/Expression;Ljava/util/List;)V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_7
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/expr/Binding;

    instance-of v2, v1, Lnet/sf/saxon/expr/instruct/GlobalVariable;

    if-eqz v2, :cond_7

    check-cast v1, Lnet/sf/saxon/expr/instruct/GlobalVariable;

    invoke-virtual {v1, p1, p2}, Lnet/sf/saxon/expr/instruct/GlobalVariable;->lookForCycles(Lnet/sf/saxon/tree/util/IndexedStack;Lnet/sf/saxon/query/XQueryFunctionLibrary;)V

    goto :goto_2

    :cond_8
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, p0}, Lnet/sf/saxon/expr/parser/ExpressionTool;->gatherCalledFunctionNames(Lnet/sf/saxon/expr/Expression;Ljava/util/List;)V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_9
    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/trans/SymbolicName;

    invoke-virtual {p2, v0}, Lnet/sf/saxon/query/XQueryFunctionLibrary;->getDeclarationByKey(Lnet/sf/saxon/trans/SymbolicName;)Lnet/sf/saxon/query/XQueryFunction;

    move-result-object v0

    invoke-virtual {p1, v0}, Lnet/sf/saxon/tree/util/IndexedStack;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    invoke-static {v0, p1, p2}, Lnet/sf/saxon/expr/instruct/GlobalVariable;->c(Lnet/sf/saxon/query/XQueryFunction;Lnet/sf/saxon/tree/util/IndexedStack;Lnet/sf/saxon/query/XQueryFunctionLibrary;)V

    goto :goto_3

    :cond_a
    invoke-virtual {p1}, Lnet/sf/saxon/tree/util/IndexedStack;->pop()Ljava/lang/Object;

    :cond_b
    return-void
.end method

.method public registerReference(Lnet/sf/saxon/expr/BindingReference;)V
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/instruct/GlobalVariable;->references:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setAssignable(Z)V
    .locals 0

    iput-boolean p1, p0, Lnet/sf/saxon/expr/instruct/GlobalVariable;->q:Z

    return-void
.end method

.method public setBinderySlotNumber(I)V
    .locals 1

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/GlobalVariable;->isUnused()Z

    move-result v0

    if-nez v0, :cond_0

    iput p1, p0, Lnet/sf/saxon/expr/instruct/GlobalVariable;->s:I

    :cond_0
    return-void
.end method

.method public setContainsLocals(Lnet/sf/saxon/expr/instruct/SlotManager;)V
    .locals 0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/instruct/Actor;->setStackFrameMap(Lnet/sf/saxon/expr/instruct/SlotManager;)V

    return-void
.end method

.method public setIndexedVariable()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/sf/saxon/expr/instruct/GlobalVariable;->o:Z

    return-void
.end method

.method public setOriginalVariable(Lnet/sf/saxon/expr/instruct/GlobalVariable;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/expr/instruct/GlobalVariable;->r:Lnet/sf/saxon/expr/instruct/GlobalVariable;

    return-void
.end method

.method public setPrivate(Z)V
    .locals 0

    iput-boolean p1, p0, Lnet/sf/saxon/expr/instruct/GlobalVariable;->p:Z

    return-void
.end method

.method public setRequiredParam(Z)V
    .locals 0

    iput-boolean p1, p0, Lnet/sf/saxon/expr/instruct/GlobalVariable;->t:Z

    return-void
.end method

.method public setRequiredType(Lnet/sf/saxon/value/SequenceType;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/expr/instruct/GlobalVariable;->n:Lnet/sf/saxon/value/SequenceType;

    return-void
.end method

.method public setStatic(Z)V
    .locals 0

    iput-boolean p1, p0, Lnet/sf/saxon/expr/instruct/GlobalVariable;->u:Z

    return-void
.end method

.method public setUnused(Z)V
    .locals 0

    const/16 p1, -0x2412

    iput p1, p0, Lnet/sf/saxon/expr/instruct/GlobalVariable;->s:I

    return-void
.end method

.method public setVariableQName(Lnet/sf/saxon/om/StructuredQName;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/expr/instruct/GlobalVariable;->m:Lnet/sf/saxon/om/StructuredQName;

    return-void
.end method

.method public typeCheck(Lnet/sf/saxon/expr/parser/ExpressionVisitor;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/Actor;->getBody()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lnet/sf/saxon/expr/Expression;->checkForUpdatingSubexpressions()V

    invoke-virtual {v0}, Lnet/sf/saxon/expr/Expression;->isUpdatingExpression()Z

    move-result v1

    if-nez v1, :cond_3

    new-instance v1, Lnet/sf/saxon/expr/parser/RoleDiagnostic;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/GlobalVariable;->getVariableQName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v2

    invoke-virtual {v2}, Lnet/sf/saxon/om/StructuredQName;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-direct {v1, v3, v2, v4}, Lnet/sf/saxon/expr/parser/RoleDiagnostic;-><init>(ILjava/lang/String;I)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/GlobalVariable;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v2

    invoke-static {}, Lnet/sf/saxon/type/AnyItemType;->getInstance()Lnet/sf/saxon/type/AnyItemType;

    move-result-object v3

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v5}, Lnet/sf/saxon/Configuration;->makeContextItemStaticInfo(Lnet/sf/saxon/type/ItemType;Z)Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;

    move-result-object v2

    invoke-virtual {v0}, Lnet/sf/saxon/expr/Expression;->simplify()Lnet/sf/saxon/expr/Expression;

    move-result-object v3

    invoke-virtual {v3, p1, v2}, Lnet/sf/saxon/expr/Expression;->typeCheck(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object v3

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/GlobalVariable;->getRequiredType()Lnet/sf/saxon/value/SequenceType;

    move-result-object v5

    invoke-virtual {p1}, Lnet/sf/saxon/expr/parser/ExpressionVisitor;->getStaticContext()Lnet/sf/saxon/expr/StaticContext;

    move-result-object v6

    invoke-static {v3, v5, v1, v6}, Lnet/sf/saxon/expr/parser/TypeChecker;->strictTypeCheck(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/value/SequenceType;Lnet/sf/saxon/expr/parser/RoleDiagnostic;Lnet/sf/saxon/expr/StaticContext;)Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-virtual {v1, p1, v2}, Lnet/sf/saxon/expr/Expression;->optimize(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/instruct/Actor;->setBody(Lnet/sf/saxon/expr/Expression;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/GlobalVariable;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sf/saxon/Configuration;->makeSlotManager()Lnet/sf/saxon/expr/instruct/SlotManager;

    move-result-object v1

    invoke-static {p1, v4, v1}, Lnet/sf/saxon/expr/parser/ExpressionTool;->allocateSlots(Lnet/sf/saxon/expr/Expression;ILnet/sf/saxon/expr/instruct/SlotManager;)I

    move-result v2

    if-lez v2, :cond_0

    invoke-virtual {p0, v1}, Lnet/sf/saxon/expr/instruct/GlobalVariable;->setContainsLocals(Lnet/sf/saxon/expr/instruct/SlotManager;)V

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/GlobalVariable;->getRequiredType()Lnet/sf/saxon/value/SequenceType;

    move-result-object v1

    sget-object v2, Lnet/sf/saxon/value/SequenceType;->ANY_SEQUENCE:Lnet/sf/saxon/value/SequenceType;

    if-ne v1, v2, :cond_4

    instance-of v1, p0, Lnet/sf/saxon/expr/instruct/GlobalParam;

    if-nez v1, :cond_4

    :try_start_0
    invoke-virtual {v0}, Lnet/sf/saxon/expr/Expression;->getItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object v1

    invoke-virtual {v0}, Lnet/sf/saxon/expr/Expression;->getCardinality()I

    move-result v2

    invoke-static {v1, v2}, Lnet/sf/saxon/value/SequenceType;->makeSequenceType(Lnet/sf/saxon/type/ItemType;I)Lnet/sf/saxon/value/SequenceType;

    move-result-object v3

    invoke-virtual {p0, v3}, Lnet/sf/saxon/expr/instruct/GlobalVariable;->setRequiredType(Lnet/sf/saxon/value/SequenceType;)V

    instance-of v3, p1, Lnet/sf/saxon/expr/Literal;

    if-eqz v3, :cond_1

    check-cast p1, Lnet/sf/saxon/expr/Literal;

    invoke-virtual {p1}, Lnet/sf/saxon/expr/Literal;->getGroundedValue()Lnet/sf/saxon/om/GroundedValue;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    iget-object p0, p0, Lnet/sf/saxon/expr/instruct/GlobalVariable;->references:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/sf/saxon/expr/BindingReference;

    instance-of v4, v3, Lnet/sf/saxon/expr/VariableReference;

    if-eqz v4, :cond_2

    check-cast v3, Lnet/sf/saxon/expr/VariableReference;

    invoke-virtual {v0}, Lnet/sf/saxon/expr/Expression;->getSpecialProperties()I

    move-result v4

    invoke-virtual {v3, v1, v2, p1, v4}, Lnet/sf/saxon/expr/VariableReference;->refineVariableType(Lnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/GroundedValue;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_3
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    const-string p1, "Initializing expression for global variable must not be an updating expression"

    const-string v0, "XUST0001"

    invoke-direct {p0, p1, v0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p0

    :catch_0
    :cond_4
    return-void
.end method
