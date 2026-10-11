.class public Lnet/sf/saxon/sxpath/XPathEvaluator;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lnet/sf/saxon/sxpath/XPathStaticContext;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/Configuration;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lnet/sf/saxon/sxpath/IndependentContext;

    invoke-direct {v0, p1}, Lnet/sf/saxon/sxpath/IndependentContext;-><init>(Lnet/sf/saxon/Configuration;)V

    iput-object v0, p0, Lnet/sf/saxon/sxpath/XPathEvaluator;->a:Lnet/sf/saxon/sxpath/XPathStaticContext;

    return-void
.end method


# virtual methods
.method public createExpression(Ljava/lang/String;)Lnet/sf/saxon/sxpath/XPathExpression;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/sxpath/XPathEvaluator;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v0

    new-instance v1, Lnet/sf/saxon/expr/instruct/Executable;

    invoke-direct {v1, v0}, Lnet/sf/saxon/expr/instruct/Executable;-><init>(Lnet/sf/saxon/Configuration;)V

    iget-object v2, p0, Lnet/sf/saxon/sxpath/XPathEvaluator;->a:Lnet/sf/saxon/sxpath/XPathStaticContext;

    invoke-interface {v2}, Lnet/sf/saxon/expr/StaticContext;->getPackageData()Lnet/sf/saxon/expr/PackageData;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnet/sf/saxon/expr/instruct/Executable;->setTopLevelPackage(Lnet/sf/saxon/expr/PackageData;)V

    iget-object v2, p0, Lnet/sf/saxon/sxpath/XPathEvaluator;->a:Lnet/sf/saxon/sxpath/XPathStaticContext;

    invoke-interface {v2}, Lnet/sf/saxon/expr/StaticContext;->getPackageData()Lnet/sf/saxon/expr/PackageData;

    move-result-object v2

    invoke-virtual {v2}, Lnet/sf/saxon/expr/PackageData;->isSchemaAware()Z

    move-result v2

    invoke-virtual {v1, v2}, Lnet/sf/saxon/expr/instruct/Executable;->setSchemaAware(Z)V

    sget-object v2, Lnet/sf/saxon/s9api/HostLanguage;->XPATH:Lnet/sf/saxon/s9api/HostLanguage;

    invoke-virtual {v1, v2}, Lnet/sf/saxon/expr/instruct/Executable;->setHostLanguage(Lnet/sf/saxon/s9api/HostLanguage;)V

    invoke-virtual {v1}, Lnet/sf/saxon/expr/instruct/Executable;->getFunctionLibrary()Lnet/sf/saxon/functions/FunctionLibraryList;

    move-result-object v2

    new-instance v3, Lnet/sf/saxon/functions/FunctionLibraryList;

    invoke-direct {v3}, Lnet/sf/saxon/functions/FunctionLibraryList;-><init>()V

    invoke-virtual {v0}, Lnet/sf/saxon/Configuration;->getXPath31FunctionSet()Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;

    move-result-object v4

    invoke-virtual {v3, v4}, Lnet/sf/saxon/functions/FunctionLibraryList;->addFunctionLibrary(Lnet/sf/saxon/functions/FunctionLibrary;)I

    invoke-virtual {v0}, Lnet/sf/saxon/Configuration;->getBuiltInExtensionLibraryList()Lnet/sf/saxon/functions/FunctionLibraryList;

    move-result-object v4

    invoke-virtual {v3, v4}, Lnet/sf/saxon/functions/FunctionLibraryList;->addFunctionLibrary(Lnet/sf/saxon/functions/FunctionLibrary;)I

    new-instance v4, Lnet/sf/saxon/functions/registry/ConstructorFunctionLibrary;

    invoke-direct {v4, v0}, Lnet/sf/saxon/functions/registry/ConstructorFunctionLibrary;-><init>(Lnet/sf/saxon/Configuration;)V

    invoke-virtual {v3, v4}, Lnet/sf/saxon/functions/FunctionLibraryList;->addFunctionLibrary(Lnet/sf/saxon/functions/FunctionLibrary;)I

    invoke-virtual {v0}, Lnet/sf/saxon/Configuration;->getIntegratedFunctionLibrary()Lnet/sf/saxon/functions/IntegratedFunctionLibrary;

    move-result-object v4

    invoke-virtual {v3, v4}, Lnet/sf/saxon/functions/FunctionLibraryList;->addFunctionLibrary(Lnet/sf/saxon/functions/FunctionLibrary;)I

    invoke-virtual {v0, v3}, Lnet/sf/saxon/Configuration;->addExtensionBinders(Lnet/sf/saxon/functions/FunctionLibraryList;)V

    if-eqz v2, :cond_0

    invoke-virtual {v3, v2}, Lnet/sf/saxon/functions/FunctionLibraryList;->addFunctionLibrary(Lnet/sf/saxon/functions/FunctionLibrary;)I

    :cond_0
    invoke-virtual {v1, v3}, Lnet/sf/saxon/expr/instruct/Executable;->setFunctionLibrary(Lnet/sf/saxon/functions/FunctionLibraryList;)V

    invoke-virtual {v0}, Lnet/sf/saxon/Configuration;->obtainOptimizer()Lnet/sf/saxon/expr/parser/Optimizer;

    move-result-object v2

    iget-object v3, p0, Lnet/sf/saxon/sxpath/XPathEvaluator;->a:Lnet/sf/saxon/sxpath/XPathStaticContext;

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x0

    invoke-static {p1, v3, v4, v5, v6}, Lnet/sf/saxon/expr/parser/ExpressionTool;->make(Ljava/lang/String;Lnet/sf/saxon/expr/StaticContext;IILnet/sf/saxon/expr/parser/CodeInjector;)Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    iget-object v3, p0, Lnet/sf/saxon/sxpath/XPathEvaluator;->a:Lnet/sf/saxon/sxpath/XPathStaticContext;

    invoke-interface {v3}, Lnet/sf/saxon/expr/StaticContext;->makeRetainedStaticContext()Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    move-result-object v3

    invoke-virtual {p1, v3}, Lnet/sf/saxon/expr/Expression;->setRetainedStaticContext(Lnet/sf/saxon/expr/parser/RetainedStaticContext;)V

    iget-object v4, p0, Lnet/sf/saxon/sxpath/XPathEvaluator;->a:Lnet/sf/saxon/sxpath/XPathStaticContext;

    invoke-static {v4}, Lnet/sf/saxon/expr/parser/ExpressionVisitor;->make(Lnet/sf/saxon/expr/StaticContext;)Lnet/sf/saxon/expr/parser/ExpressionVisitor;

    move-result-object v4

    iget-object v5, p0, Lnet/sf/saxon/sxpath/XPathEvaluator;->a:Lnet/sf/saxon/sxpath/XPathStaticContext;

    invoke-interface {v5}, Lnet/sf/saxon/expr/StaticContext;->getRequiredContextItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object v5

    const/4 v7, 0x1

    invoke-virtual {v0, v5, v7}, Lnet/sf/saxon/Configuration;->makeContextItemStaticInfo(Lnet/sf/saxon/type/ItemType;Z)Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;

    move-result-object v0

    iget-object v5, p0, Lnet/sf/saxon/sxpath/XPathEvaluator;->a:Lnet/sf/saxon/sxpath/XPathStaticContext;

    invoke-interface {v5}, Lnet/sf/saxon/sxpath/XPathStaticContext;->isContextItemParentless()Z

    move-result v5

    invoke-virtual {v0, v5}, Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;->setParentless(Z)V

    invoke-virtual {p1, v4, v0}, Lnet/sf/saxon/expr/Expression;->typeCheck(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    const/16 v5, 0x100

    invoke-virtual {v2, v5}, Lnet/sf/saxon/expr/parser/Optimizer;->isOptionSet(I)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {p1, v4, v0}, Lnet/sf/saxon/expr/Expression;->optimize(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    :cond_1
    invoke-virtual {v2, v7}, Lnet/sf/saxon/expr/parser/Optimizer;->isOptionSet(I)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p1, v6}, Lnet/sf/saxon/expr/Expression;->setParentExpression(Lnet/sf/saxon/expr/Expression;)V

    invoke-static {p1, v4, v0}, Lnet/sf/saxon/expr/parser/LoopLifter;->process(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    :cond_2
    invoke-virtual {p0, p1, v4, v0}, Lnet/sf/saxon/sxpath/XPathEvaluator;->postProcess(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    invoke-virtual {p1, v3}, Lnet/sf/saxon/expr/Expression;->setRetainedStaticContext(Lnet/sf/saxon/expr/parser/RetainedStaticContext;)V

    iget-object v0, p0, Lnet/sf/saxon/sxpath/XPathEvaluator;->a:Lnet/sf/saxon/sxpath/XPathStaticContext;

    invoke-interface {v0}, Lnet/sf/saxon/sxpath/XPathStaticContext;->getStackFrameMap()Lnet/sf/saxon/expr/instruct/SlotManager;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/expr/instruct/SlotManager;->getNumberOfVariables()I

    move-result v2

    invoke-static {p1, v2, v0}, Lnet/sf/saxon/expr/parser/ExpressionTool;->allocateSlots(Lnet/sf/saxon/expr/Expression;ILnet/sf/saxon/expr/instruct/SlotManager;)I

    new-instance v3, Lnet/sf/saxon/sxpath/XPathExpression;

    iget-object p0, p0, Lnet/sf/saxon/sxpath/XPathEvaluator;->a:Lnet/sf/saxon/sxpath/XPathStaticContext;

    invoke-direct {v3, p0, p1, v1}, Lnet/sf/saxon/sxpath/XPathExpression;-><init>(Lnet/sf/saxon/expr/StaticContext;Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/instruct/Executable;)V

    invoke-virtual {v3, v0, v2}, Lnet/sf/saxon/sxpath/XPathExpression;->setStackFrameMap(Lnet/sf/saxon/expr/instruct/SlotManager;I)V

    return-object v3
.end method

.method public createPattern(Ljava/lang/String;)Lnet/sf/saxon/sxpath/XPathExpression;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/sxpath/XPathEvaluator;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v0

    new-instance v1, Lnet/sf/saxon/expr/instruct/Executable;

    invoke-direct {v1, v0}, Lnet/sf/saxon/expr/instruct/Executable;-><init>(Lnet/sf/saxon/Configuration;)V

    iget-object v2, p0, Lnet/sf/saxon/sxpath/XPathEvaluator;->a:Lnet/sf/saxon/sxpath/XPathStaticContext;

    new-instance v3, Lnet/sf/saxon/expr/PackageData;

    invoke-direct {v3, v0}, Lnet/sf/saxon/expr/PackageData;-><init>(Lnet/sf/saxon/Configuration;)V

    invoke-static {p1, v2, v3}, Lnet/sf/saxon/pattern/Pattern;->make(Ljava/lang/String;Lnet/sf/saxon/expr/StaticContext;Lnet/sf/saxon/expr/PackageData;)Lnet/sf/saxon/pattern/Pattern;

    move-result-object p1

    iget-object v2, p0, Lnet/sf/saxon/sxpath/XPathEvaluator;->a:Lnet/sf/saxon/sxpath/XPathStaticContext;

    invoke-static {v2}, Lnet/sf/saxon/expr/parser/ExpressionVisitor;->make(Lnet/sf/saxon/expr/StaticContext;)Lnet/sf/saxon/expr/parser/ExpressionVisitor;

    move-result-object v2

    sget-object v3, Lnet/sf/saxon/type/Type;->NODE_TYPE:Lnet/sf/saxon/type/ItemType;

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Lnet/sf/saxon/Configuration;->makeContextItemStaticInfo(Lnet/sf/saxon/type/ItemType;Z)Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lnet/sf/saxon/pattern/Pattern;->typeCheck(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/pattern/Pattern;

    iget-object v0, p0, Lnet/sf/saxon/sxpath/XPathEvaluator;->a:Lnet/sf/saxon/sxpath/XPathStaticContext;

    invoke-interface {v0}, Lnet/sf/saxon/sxpath/XPathStaticContext;->getStackFrameMap()Lnet/sf/saxon/expr/instruct/SlotManager;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/expr/instruct/SlotManager;->getNumberOfVariables()I

    move-result v2

    invoke-virtual {p1, v0, v2}, Lnet/sf/saxon/pattern/Pattern;->allocateSlots(Lnet/sf/saxon/expr/instruct/SlotManager;I)I

    move-result v2

    new-instance v3, Lnet/sf/saxon/sxpath/XPathExpression;

    iget-object p0, p0, Lnet/sf/saxon/sxpath/XPathEvaluator;->a:Lnet/sf/saxon/sxpath/XPathStaticContext;

    invoke-direct {v3, p0, p1, v1}, Lnet/sf/saxon/sxpath/XPathExpression;-><init>(Lnet/sf/saxon/expr/StaticContext;Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/instruct/Executable;)V

    invoke-virtual {v3, v0, v2}, Lnet/sf/saxon/sxpath/XPathExpression;->setStackFrameMap(Lnet/sf/saxon/expr/instruct/SlotManager;I)V

    return-object v3
.end method

.method public getConfiguration()Lnet/sf/saxon/Configuration;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/sxpath/XPathEvaluator;->a:Lnet/sf/saxon/sxpath/XPathStaticContext;

    invoke-interface {p0}, Lnet/sf/saxon/expr/StaticContext;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p0

    return-object p0
.end method

.method public getStaticContext()Lnet/sf/saxon/sxpath/XPathStaticContext;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/sxpath/XPathEvaluator;->a:Lnet/sf/saxon/sxpath/XPathStaticContext;

    return-object p0
.end method

.method public postProcess(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    return-object p1
.end method

.method public setStaticContext(Lnet/sf/saxon/sxpath/XPathStaticContext;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/sxpath/XPathEvaluator;->a:Lnet/sf/saxon/sxpath/XPathStaticContext;

    return-void
.end method
