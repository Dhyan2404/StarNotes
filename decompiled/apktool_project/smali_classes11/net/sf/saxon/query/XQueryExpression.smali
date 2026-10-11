.class public Lnet/sf/saxon/query/XQueryExpression;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/s9api/Location;
.implements Lnet/sf/saxon/expr/ExpressionOwner;
.implements Lnet/sf/saxon/trace/TraceableComponent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/sf/saxon/query/XQueryExpression$a;
    }
.end annotation


# instance fields
.field protected executable:Lnet/sf/saxon/expr/instruct/Executable;

.field protected expression:Lnet/sf/saxon/expr/Expression;

.field protected mainModule:Lnet/sf/saxon/query/QueryModule;

.field protected stackFrameMap:Lnet/sf/saxon/expr/instruct/SlotManager;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/query/QueryModule;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p2}, Lnet/sf/saxon/query/QueryModule;->getExecutable()Lnet/sf/saxon/expr/instruct/Executable;

    move-result-object v0

    invoke-virtual {p2}, Lnet/sf/saxon/query/QueryModule;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sf/saxon/Configuration;->makeSlotManager()Lnet/sf/saxon/expr/instruct/SlotManager;

    move-result-object v2

    iput-object v2, p0, Lnet/sf/saxon/query/XQueryExpression;->stackFrameMap:Lnet/sf/saxon/expr/instruct/SlotManager;

    iput-object v0, p0, Lnet/sf/saxon/query/XQueryExpression;->executable:Lnet/sf/saxon/expr/instruct/Executable;

    iput-object p2, p0, Lnet/sf/saxon/query/XQueryExpression;->mainModule:Lnet/sf/saxon/query/QueryModule;

    invoke-virtual {p2}, Lnet/sf/saxon/query/QueryModule;->makeRetainedStaticContext()Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    move-result-object v2

    invoke-virtual {p1, v2}, Lnet/sf/saxon/expr/Expression;->setRetainedStaticContext(Lnet/sf/saxon/expr/parser/RetainedStaticContext;)V

    :try_start_0
    invoke-static {p2}, Lnet/sf/saxon/expr/parser/ExpressionVisitor;->make(Lnet/sf/saxon/expr/StaticContext;)Lnet/sf/saxon/expr/parser/ExpressionVisitor;

    move-result-object v2

    invoke-virtual {v2}, Lnet/sf/saxon/expr/parser/ExpressionVisitor;->obtainOptimizer()Lnet/sf/saxon/expr/parser/Optimizer;

    move-result-object v3

    invoke-virtual {v2, p3}, Lnet/sf/saxon/expr/parser/ExpressionVisitor;->setOptimizeForStreaming(Z)V

    invoke-virtual {p1}, Lnet/sf/saxon/expr/Expression;->simplify()Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    invoke-virtual {p1}, Lnet/sf/saxon/expr/Expression;->checkForUpdatingSubexpressions()V

    invoke-virtual {v0}, Lnet/sf/saxon/expr/instruct/Executable;->getGlobalContextRequirement()Lnet/sf/saxon/expr/instruct/GlobalContextRequirement;

    move-result-object p3

    if-nez p3, :cond_0

    invoke-static {}, Lnet/sf/saxon/type/AnyItemType;->getInstance()Lnet/sf/saxon/type/AnyItemType;

    move-result-object p3

    goto :goto_0

    :cond_0
    invoke-virtual {p3}, Lnet/sf/saxon/expr/instruct/GlobalContextRequirement;->getRequiredItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object p3

    :goto_0
    const/4 v0, 0x1

    invoke-virtual {v1, p3, v0}, Lnet/sf/saxon/Configuration;->makeContextItemStaticInfo(Lnet/sf/saxon/type/ItemType;Z)Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;

    move-result-object p3

    invoke-virtual {p1, v2, p3}, Lnet/sf/saxon/expr/Expression;->typeCheck(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object v4

    const/4 v5, 0x0

    if-eq v4, p1, :cond_1

    invoke-virtual {p1}, Lnet/sf/saxon/expr/Expression;->getRetainedStaticContext()Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    move-result-object p1

    invoke-virtual {v4, p1}, Lnet/sf/saxon/expr/Expression;->setRetainedStaticContext(Lnet/sf/saxon/expr/parser/RetainedStaticContext;)V

    invoke-virtual {v4, v5}, Lnet/sf/saxon/expr/Expression;->setParentExpression(Lnet/sf/saxon/expr/Expression;)V

    move-object p1, v4

    :cond_1
    const/16 v4, 0x100

    invoke-virtual {v3, v4}, Lnet/sf/saxon/expr/parser/Optimizer;->isOptionSet(I)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p1, v2, p3}, Lnet/sf/saxon/expr/Expression;->optimize(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object v4

    if-eq v4, p1, :cond_2

    invoke-virtual {p1}, Lnet/sf/saxon/expr/Expression;->getRetainedStaticContext()Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    move-result-object p1

    invoke-virtual {v4, p1}, Lnet/sf/saxon/expr/Expression;->setRetainedStaticContext(Lnet/sf/saxon/expr/parser/RetainedStaticContext;)V

    invoke-virtual {v4, v5}, Lnet/sf/saxon/expr/Expression;->setParentExpression(Lnet/sf/saxon/expr/Expression;)V

    move-object p1, v4

    :cond_2
    invoke-virtual {v3, v0}, Lnet/sf/saxon/expr/parser/Optimizer;->isOptionSet(I)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p1, v2, p3}, Lnet/sf/saxon/expr/parser/LoopLifter;->process(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object p3

    if-eq p3, p1, :cond_3

    invoke-virtual {p1}, Lnet/sf/saxon/expr/Expression;->getRetainedStaticContext()Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    move-result-object p1

    invoke-virtual {p3, p1}, Lnet/sf/saxon/expr/Expression;->setRetainedStaticContext(Lnet/sf/saxon/expr/parser/RetainedStaticContext;)V

    invoke-virtual {p3, v5}, Lnet/sf/saxon/expr/Expression;->setParentExpression(Lnet/sf/saxon/expr/Expression;)V
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p1, p3

    :cond_3
    const/4 p2, 0x0

    iget-object p3, p0, Lnet/sf/saxon/query/XQueryExpression;->stackFrameMap:Lnet/sf/saxon/expr/instruct/SlotManager;

    invoke-static {p1, p2, p3}, Lnet/sf/saxon/expr/parser/ExpressionTool;->allocateSlots(Lnet/sf/saxon/expr/Expression;ILnet/sf/saxon/expr/instruct/SlotManager;)I

    invoke-static {p1}, Lnet/sf/saxon/expr/parser/ExpressionTool;->computeEvaluationModesForUserFunctionCalls(Lnet/sf/saxon/expr/Expression;)V

    invoke-virtual {p0}, Lnet/sf/saxon/query/XQueryExpression;->getPackageData()Lnet/sf/saxon/expr/PackageData;

    move-result-object p2

    invoke-virtual {p2}, Lnet/sf/saxon/expr/PackageData;->getGlobalVariableList()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_4
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lnet/sf/saxon/expr/instruct/GlobalVariable;

    invoke-virtual {p3}, Lnet/sf/saxon/expr/instruct/Actor;->getBody()Lnet/sf/saxon/expr/Expression;

    move-result-object p3

    if-eqz p3, :cond_4

    invoke-static {p3}, Lnet/sf/saxon/expr/parser/ExpressionTool;->computeEvaluationModesForUserFunctionCalls(Lnet/sf/saxon/expr/Expression;)V

    goto :goto_1

    :cond_5
    iput-object p1, p0, Lnet/sf/saxon/query/XQueryExpression;->expression:Lnet/sf/saxon/expr/Expression;

    iget-object p0, p0, Lnet/sf/saxon/query/XQueryExpression;->executable:Lnet/sf/saxon/expr/instruct/Executable;

    invoke-virtual {p0, v1}, Lnet/sf/saxon/expr/instruct/Executable;->setConfiguration(Lnet/sf/saxon/Configuration;)V

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p2, p0}, Lnet/sf/saxon/query/QueryModule;->reportStaticError(Lnet/sf/saxon/trans/XPathException;)V

    throw p0
.end method

.method public static synthetic a(Ljava/util/ArrayList;Lnet/sf/saxon/om/Item;)V
    .locals 0

    invoke-static {p0, p1}, Lnet/sf/saxon/query/XQueryExpression;->b(Ljava/util/ArrayList;Lnet/sf/saxon/om/Item;)V

    return-void
.end method

.method public static synthetic b(Ljava/util/ArrayList;Lnet/sf/saxon/om/Item;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-static {p1}, Lnet/sf/saxon/om/SequenceTool;->convertToJava(Lnet/sf/saxon/om/Item;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public closeStreamIfNecessary(Ljavax/xml/transform/stream/StreamResult;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Ljavax/xml/transform/stream/StreamResult;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p0

    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Lnet/sf/saxon/trans/XPathException;

    invoke-direct {p1, p0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_0
    :goto_0
    return-void
.end method

.method public evaluate(Lnet/sf/saxon/query/DynamicQueryContext;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/sf/saxon/query/DynamicQueryContext;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/query/XQueryExpression;->isUpdateQuery()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0, p1}, Lnet/sf/saxon/query/XQueryExpression;->iterator(Lnet/sf/saxon/query/DynamicQueryContext;)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p0

    new-instance p1, Lcom/sunia/HTREnginev2/lmo;

    invoke-direct {p1, v0}, Lcom/sunia/HTREnginev2/lmo;-><init>(Ljava/util/ArrayList;)V

    invoke-static {p0, p1}, Lnet/sf/saxon/om/SequenceTool;->supply(Lnet/sf/saxon/om/SequenceIterator;Lnet/sf/saxon/om/ItemConsumer;)V

    return-object v0

    :cond_0
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    const-string p1, "Cannot call evaluate() on an updating query"

    invoke-direct {p0, p1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public evaluateSingle(Lnet/sf/saxon/query/DynamicQueryContext;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/query/XQueryExpression;->isUpdateQuery()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/query/XQueryExpression;->iterator(Lnet/sf/saxon/query/DynamicQueryContext;)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p0

    invoke-interface {p0}, Lnet/sf/saxon/om/SequenceIterator;->next()Lnet/sf/saxon/om/Item;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {p0}, Lnet/sf/saxon/om/SequenceTool;->convertToJava(Lnet/sf/saxon/om/Item;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    const-string p1, "Cannot call evaluateSingle() on an updating query"

    invoke-direct {p0, p1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public explain(Lnet/sf/saxon/trace/ExpressionPresenter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const-string v0, "query"

    invoke-virtual {p1, v0}, Lnet/sf/saxon/trace/ExpressionPresenter;->startElement(Ljava/lang/String;)I

    iget-object v0, p0, Lnet/sf/saxon/query/XQueryExpression;->mainModule:Lnet/sf/saxon/query/QueryModule;

    invoke-virtual {v0}, Lnet/sf/saxon/query/QueryModule;->getKeyManager()Lnet/sf/saxon/trans/KeyManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lnet/sf/saxon/trans/KeyManager;->exportKeys(Lnet/sf/saxon/trace/ExpressionPresenter;Ljava/util/Map;)V

    invoke-virtual {p0}, Lnet/sf/saxon/query/XQueryExpression;->getExecutable()Lnet/sf/saxon/expr/instruct/Executable;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/sf/saxon/expr/instruct/Executable;->explainGlobalVariables(Lnet/sf/saxon/trace/ExpressionPresenter;)V

    iget-object v0, p0, Lnet/sf/saxon/query/XQueryExpression;->mainModule:Lnet/sf/saxon/query/QueryModule;

    invoke-virtual {v0, p1}, Lnet/sf/saxon/query/QueryModule;->explainGlobalFunctions(Lnet/sf/saxon/trace/ExpressionPresenter;)V

    const-string v0, "body"

    invoke-virtual {p1, v0}, Lnet/sf/saxon/trace/ExpressionPresenter;->startElement(Ljava/lang/String;)I

    iget-object p0, p0, Lnet/sf/saxon/query/XQueryExpression;->expression:Lnet/sf/saxon/expr/Expression;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/Expression;->export(Lnet/sf/saxon/trace/ExpressionPresenter;)V

    invoke-virtual {p1}, Lnet/sf/saxon/trace/ExpressionPresenter;->endElement()I

    invoke-virtual {p1}, Lnet/sf/saxon/trace/ExpressionPresenter;->endElement()I

    invoke-virtual {p1}, Lnet/sf/saxon/trace/ExpressionPresenter;->close()V

    return-void
.end method

.method public explainPathMap()V
    .locals 0

    return-void
.end method

.method public getBody()Lnet/sf/saxon/expr/Expression;
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/query/XQueryExpression;->getExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0
.end method

.method public getChildExpression()Lnet/sf/saxon/expr/Expression;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/query/XQueryExpression;->expression:Lnet/sf/saxon/expr/Expression;

    return-object p0
.end method

.method public getColumnNumber()I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public getConfiguration()Lnet/sf/saxon/Configuration;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/query/XQueryExpression;->mainModule:Lnet/sf/saxon/query/QueryModule;

    invoke-virtual {p0}, Lnet/sf/saxon/query/QueryModule;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p0

    return-object p0
.end method

.method public getExecutable()Lnet/sf/saxon/expr/instruct/Executable;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/query/XQueryExpression;->executable:Lnet/sf/saxon/expr/instruct/Executable;

    return-object p0
.end method

.method public getExpression()Lnet/sf/saxon/expr/Expression;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/query/XQueryExpression;->expression:Lnet/sf/saxon/expr/Expression;

    return-object p0
.end method

.method public getExternalVariableNames()[Lnet/sf/saxon/om/StructuredQName;
    .locals 4

    iget-object v0, p0, Lnet/sf/saxon/query/XQueryExpression;->stackFrameMap:Lnet/sf/saxon/expr/instruct/SlotManager;

    invoke-virtual {v0}, Lnet/sf/saxon/expr/instruct/SlotManager;->getVariableMap()Ljava/util/List;

    move-result-object v0

    iget-object p0, p0, Lnet/sf/saxon/query/XQueryExpression;->stackFrameMap:Lnet/sf/saxon/expr/instruct/SlotManager;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/SlotManager;->getNumberOfVariables()I

    move-result p0

    new-array v1, p0, [Lnet/sf/saxon/om/StructuredQName;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p0, :cond_0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/sf/saxon/om/StructuredQName;

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public getHostLanguage()Lnet/sf/saxon/s9api/HostLanguage;
    .locals 0

    sget-object p0, Lnet/sf/saxon/s9api/HostLanguage;->XQUERY:Lnet/sf/saxon/s9api/HostLanguage;

    return-object p0
.end method

.method public getLineNumber()I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public getLocation()Lnet/sf/saxon/s9api/Location;
    .locals 0

    return-object p0
.end method

.method public getMainModule()Lnet/sf/saxon/query/QueryModule;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/query/XQueryExpression;->mainModule:Lnet/sf/saxon/query/QueryModule;

    return-object p0
.end method

.method public getObjectName()Lnet/sf/saxon/om/StructuredQName;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getPackageData()Lnet/sf/saxon/expr/PackageData;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/query/XQueryExpression;->mainModule:Lnet/sf/saxon/query/QueryModule;

    invoke-virtual {p0}, Lnet/sf/saxon/query/QueryModule;->getPackageData()Lnet/sf/saxon/expr/PackageData;

    move-result-object p0

    return-object p0
.end method

.method public getPublicId()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getStackFrameMap()Lnet/sf/saxon/expr/instruct/SlotManager;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/query/XQueryExpression;->stackFrameMap:Lnet/sf/saxon/expr/instruct/SlotManager;

    return-object p0
.end method

.method public getSystemId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/query/XQueryExpression;->mainModule:Lnet/sf/saxon/query/QueryModule;

    invoke-virtual {p0}, Lnet/sf/saxon/query/QueryModule;->getSystemId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTracingTag()Ljava/lang/String;
    .locals 0

    const-string p0, "query"

    return-object p0
.end method

.method public initialContext(Lnet/sf/saxon/query/DynamicQueryContext;Lnet/sf/saxon/Controller;)Lnet/sf/saxon/expr/XPathContextMajor;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p2}, Lnet/sf/saxon/Controller;->getGlobalContextItem()Lnet/sf/saxon/om/Item;

    move-result-object p0

    invoke-virtual {p2}, Lnet/sf/saxon/Controller;->newXPathContext()Lnet/sf/saxon/expr/XPathContextMajor;

    move-result-object p1

    if-eqz p0, :cond_0

    new-instance v0, Lnet/sf/saxon/tree/iter/ManualIterator;

    invoke-direct {v0, p0}, Lnet/sf/saxon/tree/iter/ManualIterator;-><init>(Lnet/sf/saxon/om/Item;)V

    invoke-virtual {p1, v0}, Lnet/sf/saxon/expr/XPathContextMinor;->setCurrentIterator(Lnet/sf/saxon/om/FocusIterator;)V

    invoke-virtual {p2, p0}, Lnet/sf/saxon/Controller;->setGlobalContextItem(Lnet/sf/saxon/om/Item;)V

    :cond_0
    return-object p1
.end method

.method public isDocumentProjectionAllowed()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isUpdateQuery()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public iterator(Lnet/sf/saxon/query/DynamicQueryContext;)Lnet/sf/saxon/om/SequenceIterator;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/query/XQueryExpression;->isUpdateQuery()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p1}, Lnet/sf/saxon/query/DynamicQueryContext;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sf/saxon/query/XQueryExpression;->getExecutable()Lnet/sf/saxon/expr/instruct/Executable;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sf/saxon/expr/instruct/Executable;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/sf/saxon/Configuration;->isCompatible(Lnet/sf/saxon/Configuration;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0, p1}, Lnet/sf/saxon/query/XQueryExpression;->newController(Lnet/sf/saxon/query/DynamicQueryContext;)Lnet/sf/saxon/Controller;

    move-result-object v0

    :try_start_0
    invoke-virtual {v0}, Lnet/sf/saxon/Controller;->getGlobalContextItem()Lnet/sf/saxon/om/Item;

    move-result-object v1

    instance-of v2, v1, Lnet/sf/saxon/om/NodeInfo;

    if-eqz v2, :cond_1

    check-cast v1, Lnet/sf/saxon/om/NodeInfo;

    invoke-interface {v1}, Lnet/sf/saxon/om/NodeInfo;->getTreeInfo()Lnet/sf/saxon/om/TreeInfo;

    move-result-object v1

    invoke-interface {v1}, Lnet/sf/saxon/om/TreeInfo;->isTyped()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lnet/sf/saxon/query/XQueryExpression;->getExecutable()Lnet/sf/saxon/expr/instruct/Executable;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sf/saxon/expr/instruct/Executable;->isSchemaAware()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    const-string p1, "A typed input document can only be used with a schema-aware query"

    invoke-direct {p0, p1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    invoke-virtual {p0, p1, v0}, Lnet/sf/saxon/query/XQueryExpression;->initialContext(Lnet/sf/saxon/query/DynamicQueryContext;Lnet/sf/saxon/Controller;)Lnet/sf/saxon/expr/XPathContextMajor;

    move-result-object p1

    invoke-virtual {v0}, Lnet/sf/saxon/Controller;->getTraceListener()Lnet/sf/saxon/lib/TraceListener;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0, p1}, Lnet/sf/saxon/Controller;->preEvaluateGlobals(Lnet/sf/saxon/expr/XPathContext;)V

    :cond_2
    iget-object v1, p0, Lnet/sf/saxon/query/XQueryExpression;->stackFrameMap:Lnet/sf/saxon/expr/instruct/SlotManager;

    invoke-virtual {p1, v1}, Lnet/sf/saxon/expr/XPathContextMajor;->openStackFrame(Lnet/sf/saxon/expr/instruct/SlotManager;)V

    iget-object v1, p0, Lnet/sf/saxon/query/XQueryExpression;->expression:Lnet/sf/saxon/expr/Expression;

    invoke-virtual {v1, p1}, Lnet/sf/saxon/expr/Expression;->iterate(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p1

    instance-of v1, p1, Lnet/sf/saxon/tree/iter/GroundedIterator;

    if-eqz v1, :cond_3

    move-object v1, p1

    check-cast v1, Lnet/sf/saxon/tree/iter/GroundedIterator;

    invoke-interface {v1}, Lnet/sf/saxon/tree/iter/GroundedIterator;->isActuallyGrounded()Z

    move-result v1

    if-eqz v1, :cond_3

    return-object p1

    :cond_3
    new-instance v1, Lnet/sf/saxon/query/XQueryExpression$a;

    invoke-virtual {v0}, Lnet/sf/saxon/Controller;->getErrorReporter()Lnet/sf/saxon/lib/ErrorReporter;

    move-result-object v2

    invoke-virtual {p0}, Lnet/sf/saxon/query/XQueryExpression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object p0

    invoke-direct {v1, p1, v2, p0}, Lnet/sf/saxon/query/XQueryExpression$a;-><init>(Lnet/sf/saxon/om/SequenceIterator;Lnet/sf/saxon/lib/ErrorReporter;Lnet/sf/saxon/s9api/Location;)V
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p0

    :goto_1
    invoke-virtual {p0}, Ljavax/xml/transform/TransformerException;->getException()Ljava/lang/Throwable;

    move-result-object p1

    instance-of p1, p1, Ljavax/xml/transform/TransformerException;

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Ljavax/xml/transform/TransformerException;->getException()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Ljavax/xml/transform/TransformerException;

    goto :goto_1

    :cond_4
    invoke-static {p0}, Lnet/sf/saxon/trans/XPathException;->makeXPathException(Ljava/lang/Exception;)Lnet/sf/saxon/trans/XPathException;

    move-result-object p0

    invoke-virtual {v0, p0}, Lnet/sf/saxon/Controller;->reportFatalError(Lnet/sf/saxon/trans/XPathException;)V

    throw p0

    :cond_5
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    const-string p1, "The query must be compiled and executed under the same Configuration"

    const-string v0, "SXXP0004"

    invoke-direct {p0, p1, v0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p0

    :cond_6
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    const-string p1, "Cannot call iterator() on an updating query"

    invoke-direct {p0, p1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public newController(Lnet/sf/saxon/query/DynamicQueryContext;)Lnet/sf/saxon/Controller;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    new-instance v0, Lnet/sf/saxon/Controller;

    iget-object v1, p0, Lnet/sf/saxon/query/XQueryExpression;->executable:Lnet/sf/saxon/expr/instruct/Executable;

    invoke-virtual {v1}, Lnet/sf/saxon/expr/instruct/Executable;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v1

    iget-object p0, p0, Lnet/sf/saxon/query/XQueryExpression;->executable:Lnet/sf/saxon/expr/instruct/Executable;

    invoke-direct {v0, v1, p0}, Lnet/sf/saxon/Controller;-><init>(Lnet/sf/saxon/Configuration;Lnet/sf/saxon/expr/instruct/Executable;)V

    invoke-virtual {p1, v0}, Lnet/sf/saxon/query/DynamicQueryContext;->initializeController(Lnet/sf/saxon/Controller;)V

    return-object v0
.end method

.method public run(Lnet/sf/saxon/query/DynamicQueryContext;Ljavax/xml/transform/Result;Ljava/util/Properties;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/query/XQueryExpression;->isUpdateQuery()Z

    move-result v0

    if-nez v0, :cond_a

    invoke-virtual {p1}, Lnet/sf/saxon/query/DynamicQueryContext;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sf/saxon/query/XQueryExpression;->getExecutable()Lnet/sf/saxon/expr/instruct/Executable;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sf/saxon/expr/instruct/Executable;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/sf/saxon/Configuration;->isCompatible(Lnet/sf/saxon/Configuration;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p1}, Lnet/sf/saxon/query/DynamicQueryContext;->getContextItem()Lnet/sf/saxon/om/Item;

    move-result-object v0

    instance-of v1, v0, Lnet/sf/saxon/om/NodeInfo;

    if-eqz v1, :cond_1

    check-cast v0, Lnet/sf/saxon/om/NodeInfo;

    invoke-interface {v0}, Lnet/sf/saxon/om/NodeInfo;->getTreeInfo()Lnet/sf/saxon/om/TreeInfo;

    move-result-object v0

    invoke-interface {v0}, Lnet/sf/saxon/om/TreeInfo;->isTyped()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lnet/sf/saxon/query/XQueryExpression;->getExecutable()Lnet/sf/saxon/expr/instruct/Executable;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/expr/instruct/Executable;->isSchemaAware()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    const-string p1, "A typed input document can only be used with a schema-aware query"

    invoke-direct {p0, p1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Lnet/sf/saxon/query/XQueryExpression;->newController(Lnet/sf/saxon/query/DynamicQueryContext;)Lnet/sf/saxon/Controller;

    move-result-object v0

    instance-of v1, p2, Lnet/sf/saxon/event/Receiver;

    if-eqz v1, :cond_2

    move-object v2, p2

    check-cast v2, Lnet/sf/saxon/event/Receiver;

    invoke-interface {v2}, Lnet/sf/saxon/event/Receiver;->getPipelineConfiguration()Lnet/sf/saxon/event/PipelineConfiguration;

    move-result-object v2

    invoke-virtual {v2, v0}, Lnet/sf/saxon/event/PipelineConfiguration;->setController(Lnet/sf/saxon/Controller;)V

    :cond_2
    invoke-virtual {p0, v0, p3}, Lnet/sf/saxon/query/XQueryExpression;->validateOutputProperties(Lnet/sf/saxon/Controller;Ljava/util/Properties;)Ljava/util/Properties;

    move-result-object p3

    invoke-virtual {p0, p1, v0}, Lnet/sf/saxon/query/XQueryExpression;->initialContext(Lnet/sf/saxon/query/DynamicQueryContext;Lnet/sf/saxon/Controller;)Lnet/sf/saxon/expr/XPathContextMajor;

    move-result-object p1

    invoke-virtual {v0}, Lnet/sf/saxon/Controller;->getTraceListener()Lnet/sf/saxon/lib/TraceListener;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v0, p1}, Lnet/sf/saxon/Controller;->preEvaluateGlobals(Lnet/sf/saxon/expr/XPathContext;)V

    :cond_3
    iget-object v3, p0, Lnet/sf/saxon/query/XQueryExpression;->stackFrameMap:Lnet/sf/saxon/expr/instruct/SlotManager;

    invoke-virtual {p1, v3}, Lnet/sf/saxon/expr/XPathContextMajor;->openStackFrame(Lnet/sf/saxon/expr/instruct/SlotManager;)V

    instance-of v3, p2, Ljavax/xml/transform/stream/StreamResult;

    if-eqz v3, :cond_4

    move-object v4, p2

    check-cast v4, Ljavax/xml/transform/stream/StreamResult;

    invoke-virtual {v4}, Ljavax/xml/transform/stream/StreamResult;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    if-nez v4, :cond_4

    const/4 v4, 0x1

    goto :goto_1

    :cond_4
    const/4 v4, 0x0

    :goto_1
    if-eqz v1, :cond_5

    move-object p3, p2

    check-cast p3, Lnet/sf/saxon/event/Receiver;

    goto :goto_2

    :cond_5
    invoke-virtual {p1}, Lnet/sf/saxon/expr/XPathContextMinor;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sf/saxon/Configuration;->getSerializerFactory()Lnet/sf/saxon/lib/SerializerFactory;

    move-result-object v1

    invoke-virtual {v0}, Lnet/sf/saxon/Controller;->makePipelineConfiguration()Lnet/sf/saxon/event/PipelineConfiguration;

    move-result-object v5

    sget-object v6, Lnet/sf/saxon/s9api/HostLanguage;->XQUERY:Lnet/sf/saxon/s9api/HostLanguage;

    invoke-virtual {v5, v6}, Lnet/sf/saxon/event/PipelineConfiguration;->setHostLanguage(Lnet/sf/saxon/s9api/HostLanguage;)V

    new-instance v6, Lnet/sf/saxon/serialize/SerializationProperties;

    invoke-direct {v6, p3}, Lnet/sf/saxon/serialize/SerializationProperties;-><init>(Ljava/util/Properties;)V

    invoke-virtual {v1, p2, v6, v5}, Lnet/sf/saxon/lib/SerializerFactory;->getReceiver(Ljavax/xml/transform/Result;Lnet/sf/saxon/serialize/SerializationProperties;Lnet/sf/saxon/event/PipelineConfiguration;)Lnet/sf/saxon/event/Receiver;

    move-result-object p3

    :goto_2
    new-instance v1, Lnet/sf/saxon/event/ComplexContentOutputter;

    invoke-direct {v1, p3}, Lnet/sf/saxon/event/ComplexContentOutputter;-><init>(Lnet/sf/saxon/event/Receiver;)V

    invoke-virtual {v1}, Lnet/sf/saxon/event/ComplexContentOutputter;->open()V

    :try_start_0
    iget-object p3, p0, Lnet/sf/saxon/query/XQueryExpression;->expression:Lnet/sf/saxon/expr/Expression;

    invoke-virtual {p3, v1, p1}, Lnet/sf/saxon/expr/Expression;->process(Lnet/sf/saxon/event/Outputter;Lnet/sf/saxon/expr/XPathContext;)V
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_6

    :try_start_1
    invoke-interface {v2}, Lnet/sf/saxon/lib/TraceListener;->close()V

    :cond_6
    invoke-virtual {v1}, Lnet/sf/saxon/event/ComplexContentOutputter;->close()V
    :try_end_1
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljavax/xml/transform/TransformerException;->printStackTrace()V

    :goto_3
    if-eqz v3, :cond_7

    check-cast p2, Ljavax/xml/transform/stream/StreamResult;

    invoke-virtual {p0, p2, v4}, Lnet/sf/saxon/query/XQueryExpression;->closeStreamIfNecessary(Ljavax/xml/transform/stream/StreamResult;Z)V

    :cond_7
    return-void

    :catchall_0
    move-exception p0

    goto :goto_4

    :catch_1
    move-exception p0

    :try_start_2
    invoke-virtual {v0, p0}, Lnet/sf/saxon/Controller;->reportFatalError(Lnet/sf/saxon/trans/XPathException;)V

    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_4
    if-eqz v2, :cond_8

    :try_start_3
    invoke-interface {v2}, Lnet/sf/saxon/lib/TraceListener;->close()V

    :cond_8
    invoke-virtual {v1}, Lnet/sf/saxon/event/ComplexContentOutputter;->close()V
    :try_end_3
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_5

    :catch_2
    move-exception p1

    invoke-virtual {p1}, Ljavax/xml/transform/TransformerException;->printStackTrace()V

    :goto_5
    throw p0

    :cond_9
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    const-string p1, "The query must be compiled and executed under the same Configuration"

    const-string p2, "SXXP0004"

    invoke-direct {p0, p1, p2}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p0

    :cond_a
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    const-string p1, "Cannot call run() on an updating query"

    invoke-direct {p0, p1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public runStreamed(Lnet/sf/saxon/query/DynamicQueryContext;Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;Ljava/util/Properties;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    const-string p1, "Streaming requires Saxon-EE"

    invoke-direct {p0, p1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public runUpdate(Lnet/sf/saxon/query/DynamicQueryContext;)Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/sf/saxon/query/DynamicQueryContext;",
            ")",
            "Ljava/util/Set<",
            "Lnet/sf/saxon/om/MutableNodeInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    .line 1
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    const-string p1, "Calling runUpdate() on a non-updating query"

    invoke-direct {p0, p1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public runUpdate(Lnet/sf/saxon/query/DynamicQueryContext;Lnet/sf/saxon/query/UpdateAgent;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    .line 2
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    const-string p1, "Calling runUpdate() on a non-updating query"

    invoke-direct {p0, p1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public saveLocation()Lnet/sf/saxon/s9api/Location;
    .locals 0

    return-object p0
.end method

.method public setAllowDocumentProjection(Z)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Document projection requires Saxon-EE"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setBody(Lnet/sf/saxon/expr/Expression;)V
    .locals 0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/query/XQueryExpression;->setChildExpression(Lnet/sf/saxon/expr/Expression;)V

    return-void
.end method

.method public setChildExpression(Lnet/sf/saxon/expr/Expression;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/query/XQueryExpression;->expression:Lnet/sf/saxon/expr/Expression;

    return-void
.end method

.method public usesContextItem()Z
    .locals 2

    iget-object v0, p0, Lnet/sf/saxon/query/XQueryExpression;->expression:Lnet/sf/saxon/expr/Expression;

    invoke-static {v0}, Lnet/sf/saxon/expr/parser/ExpressionTool;->dependsOnFocus(Lnet/sf/saxon/expr/Expression;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/query/XQueryExpression;->getPackageData()Lnet/sf/saxon/expr/PackageData;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/PackageData;->getGlobalVariableList()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/expr/instruct/GlobalVariable;

    invoke-virtual {v0}, Lnet/sf/saxon/expr/instruct/Actor;->getBody()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {v0}, Lnet/sf/saxon/expr/parser/ExpressionTool;->dependsOnFocus(Lnet/sf/saxon/expr/Expression;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public validateOutputProperties(Lnet/sf/saxon/Controller;Ljava/util/Properties;)Ljava/util/Properties;
    .locals 4

    invoke-virtual {p1}, Lnet/sf/saxon/Controller;->getExecutable()Lnet/sf/saxon/expr/instruct/Executable;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/Executable;->getPrimarySerializationProperties()Lnet/sf/saxon/serialize/SerializationProperties;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/serialize/SerializationProperties;->getProperties()Ljava/util/Properties;

    move-result-object p0

    invoke-virtual {p1}, Lnet/sf/saxon/Controller;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/Configuration;->getSerializerFactory()Lnet/sf/saxon/lib/SerializerFactory;

    move-result-object v0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/util/Properties;->stringPropertyNames()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :try_start_0
    invoke-virtual {v0, v2, v3}, Lnet/sf/saxon/lib/SerializerFactory;->checkOutputProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    invoke-virtual {p2, v2}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lnet/sf/saxon/trans/XmlProcessingException;

    invoke-direct {v2, v3}, Lnet/sf/saxon/trans/XmlProcessingException;-><init>(Lnet/sf/saxon/trans/XPathException;)V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lnet/sf/saxon/trans/XmlProcessingException;->setWarning(Z)V

    invoke-virtual {p1}, Lnet/sf/saxon/Controller;->getErrorReporter()Lnet/sf/saxon/lib/ErrorReporter;

    move-result-object v3

    invoke-interface {v3, v2}, Lnet/sf/saxon/lib/ErrorReporter;->report(Lnet/sf/saxon/s9api/XmlProcessingError;)V

    goto :goto_0

    :cond_0
    const-string p1, "method"

    invoke-virtual {p0, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_1

    const-string p2, "xml"

    invoke-virtual {p0, p1, p2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    :cond_1
    return-object p0
.end method
