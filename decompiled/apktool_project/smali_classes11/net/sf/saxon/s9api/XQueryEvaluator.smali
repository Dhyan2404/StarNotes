.class public Lnet/sf/saxon/s9api/XQueryEvaluator;
.super Lnet/sf/saxon/s9api/AbstractDestination;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnet/sf/saxon/s9api/AbstractDestination;",
        "Ljava/lang/Iterable<",
        "Lnet/sf/saxon/s9api/XdmItem;",
        ">;"
    }
.end annotation


# instance fields
.field public final f:Lnet/sf/saxon/s9api/Processor;

.field public final g:Lnet/sf/saxon/query/XQueryExpression;

.field public final h:Lnet/sf/saxon/query/DynamicQueryContext;

.field public i:Lnet/sf/saxon/Controller;

.field public j:Lnet/sf/saxon/s9api/Destination;

.field public k:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lnet/sf/saxon/s9api/XdmNode;",
            ">;"
        }
    .end annotation
.end field

.field public l:Lnet/sf/saxon/event/Builder;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/s9api/Processor;Lnet/sf/saxon/query/XQueryExpression;)V
    .locals 0

    invoke-direct {p0}, Lnet/sf/saxon/s9api/AbstractDestination;-><init>()V

    iput-object p1, p0, Lnet/sf/saxon/s9api/XQueryEvaluator;->f:Lnet/sf/saxon/s9api/Processor;

    iput-object p2, p0, Lnet/sf/saxon/s9api/XQueryEvaluator;->g:Lnet/sf/saxon/query/XQueryExpression;

    new-instance p1, Lnet/sf/saxon/query/DynamicQueryContext;

    invoke-virtual {p2}, Lnet/sf/saxon/query/XQueryExpression;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p2

    invoke-direct {p1, p2}, Lnet/sf/saxon/query/DynamicQueryContext;-><init>(Lnet/sf/saxon/Configuration;)V

    iput-object p1, p0, Lnet/sf/saxon/s9api/XQueryEvaluator;->h:Lnet/sf/saxon/query/DynamicQueryContext;

    return-void
.end method

.method public static synthetic a(Lnet/sf/saxon/s9api/XQueryEvaluator;)V
    .locals 0

    invoke-direct {p0}, Lnet/sf/saxon/s9api/XQueryEvaluator;->c()V

    return-void
.end method

.method private synthetic c()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/s9api/SaxonApiException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/s9api/XQueryEvaluator;->l:Lnet/sf/saxon/event/Builder;

    invoke-virtual {v0}, Lnet/sf/saxon/event/Builder;->getCurrentRoot()Lnet/sf/saxon/om/NodeInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lnet/sf/saxon/om/NodeInfo;->getTreeInfo()Lnet/sf/saxon/om/TreeInfo;

    move-result-object v1

    iget-object v2, p0, Lnet/sf/saxon/s9api/XQueryEvaluator;->i:Lnet/sf/saxon/Controller;

    invoke-virtual {v2}, Lnet/sf/saxon/Controller;->getSpaceStrippingRule()Lnet/sf/saxon/om/SpaceStrippingRule;

    move-result-object v2

    invoke-interface {v1, v2}, Lnet/sf/saxon/om/TreeInfo;->setSpaceStrippingRule(Lnet/sf/saxon/om/SpaceStrippingRule;)V

    invoke-interface {v0}, Lnet/sf/saxon/om/NodeInfo;->asActiveSource()Lnet/sf/saxon/lib/ActiveSource;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/sf/saxon/s9api/XQueryEvaluator;->setSource(Ljavax/xml/transform/Source;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/sf/saxon/s9api/XQueryEvaluator;->l:Lnet/sf/saxon/event/Builder;

    iget-object v0, p0, Lnet/sf/saxon/s9api/XQueryEvaluator;->j:Lnet/sf/saxon/s9api/Destination;

    invoke-virtual {p0, v0}, Lnet/sf/saxon/s9api/XQueryEvaluator;->run(Lnet/sf/saxon/s9api/Destination;)V

    iget-object p0, p0, Lnet/sf/saxon/s9api/XQueryEvaluator;->j:Lnet/sf/saxon/s9api/Destination;

    invoke-interface {p0}, Lnet/sf/saxon/s9api/Destination;->closeAndNotify()V

    return-void

    :cond_0
    new-instance p0, Lnet/sf/saxon/s9api/SaxonApiException;

    const-string v0, "No source document has been built by the previous pipeline stage"

    invoke-direct {p0, v0}, Lnet/sf/saxon/s9api/SaxonApiException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final b(Lnet/sf/saxon/s9api/Destination;)Lnet/sf/saxon/event/Receiver;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/s9api/SaxonApiException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/s9api/XQueryEvaluator;->g:Lnet/sf/saxon/query/XQueryExpression;

    invoke-virtual {v0}, Lnet/sf/saxon/query/XQueryExpression;->getExecutable()Lnet/sf/saxon/expr/instruct/Executable;

    move-result-object v0

    iget-object p0, p0, Lnet/sf/saxon/s9api/XQueryEvaluator;->g:Lnet/sf/saxon/query/XQueryExpression;

    invoke-virtual {p0}, Lnet/sf/saxon/query/XQueryExpression;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/Configuration;->makePipelineConfiguration()Lnet/sf/saxon/event/PipelineConfiguration;

    move-result-object p0

    invoke-virtual {v0}, Lnet/sf/saxon/expr/instruct/Executable;->getPrimarySerializationProperties()Lnet/sf/saxon/serialize/SerializationProperties;

    move-result-object v0

    invoke-interface {p1, p0, v0}, Lnet/sf/saxon/s9api/Destination;->getReceiver(Lnet/sf/saxon/event/PipelineConfiguration;Lnet/sf/saxon/serialize/SerializationProperties;)Lnet/sf/saxon/event/Receiver;

    move-result-object p0

    invoke-static {}, Lnet/sf/saxon/Configuration;->isAssertionsEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lnet/sf/saxon/event/RegularSequenceChecker;

    const/4 v0, 0x1

    invoke-direct {p1, p0, v0}, Lnet/sf/saxon/event/RegularSequenceChecker;-><init>(Lnet/sf/saxon/event/Receiver;Z)V

    return-object p1

    :cond_0
    return-object p0
.end method

.method public varargs callFunction(Lnet/sf/saxon/s9api/QName;[Lnet/sf/saxon/s9api/XdmValue;)Lnet/sf/saxon/s9api/XdmValue;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/s9api/SaxonApiException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/s9api/XQueryEvaluator;->g:Lnet/sf/saxon/query/XQueryExpression;

    invoke-virtual {v0}, Lnet/sf/saxon/query/XQueryExpression;->getMainModule()Lnet/sf/saxon/query/QueryModule;

    move-result-object v0

    invoke-virtual {p1}, Lnet/sf/saxon/s9api/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lnet/sf/saxon/s9api/QName;->getLocalName()Ljava/lang/String;

    move-result-object v2

    array-length v3, p2

    invoke-virtual {v0, v1, v2, v3}, Lnet/sf/saxon/query/QueryModule;->getUserDefinedFunction(Ljava/lang/String;Ljava/lang/String;I)Lnet/sf/saxon/expr/instruct/UserFunction;

    move-result-object v0

    if-eqz v0, :cond_3

    :try_start_0
    iget-object v1, p0, Lnet/sf/saxon/s9api/XQueryEvaluator;->i:Lnet/sf/saxon/Controller;

    if-nez v1, :cond_0

    iget-object v1, p0, Lnet/sf/saxon/s9api/XQueryEvaluator;->g:Lnet/sf/saxon/query/XQueryExpression;

    iget-object v2, p0, Lnet/sf/saxon/s9api/XQueryEvaluator;->h:Lnet/sf/saxon/query/DynamicQueryContext;

    invoke-virtual {v1, v2}, Lnet/sf/saxon/query/XQueryExpression;->newController(Lnet/sf/saxon/query/DynamicQueryContext;)Lnet/sf/saxon/Controller;

    move-result-object v1

    iput-object v1, p0, Lnet/sf/saxon/s9api/XQueryEvaluator;->i:Lnet/sf/saxon/Controller;

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lnet/sf/saxon/s9api/XQueryEvaluator;->h:Lnet/sf/saxon/query/DynamicQueryContext;

    invoke-virtual {v2, v1}, Lnet/sf/saxon/query/DynamicQueryContext;->initializeController(Lnet/sf/saxon/Controller;)V

    :goto_0
    iget-object v1, p0, Lnet/sf/saxon/s9api/XQueryEvaluator;->f:Lnet/sf/saxon/s9api/Processor;

    invoke-virtual {v1}, Lnet/sf/saxon/s9api/Processor;->getUnderlyingConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sf/saxon/Configuration;->getTypeHierarchy()Lnet/sf/saxon/type/TypeHierarchy;

    move-result-object v1

    array-length v2, p2

    invoke-static {v2}, Lnet/sf/saxon/om/SequenceTool;->makeSequenceArray(I)[Lnet/sf/saxon/om/Sequence;

    move-result-object v2

    const/4 v3, 0x0

    move v4, v3

    :goto_1
    array-length v5, p2

    if-ge v4, v5, :cond_2

    invoke-virtual {v0}, Lnet/sf/saxon/expr/instruct/UserFunction;->getParameterDefinitions()[Lnet/sf/saxon/expr/instruct/UserFunctionParameter;

    move-result-object v5

    aget-object v5, v5, v4

    invoke-virtual {v5}, Lnet/sf/saxon/expr/instruct/UserFunctionParameter;->getRequiredType()Lnet/sf/saxon/value/SequenceType;

    move-result-object v5

    aget-object v6, p2, v4

    invoke-virtual {v6}, Lnet/sf/saxon/s9api/XdmValue;->getUnderlyingValue()Lnet/sf/saxon/om/GroundedValue;

    move-result-object v6

    invoke-virtual {v5, v6, v1}, Lnet/sf/saxon/value/SequenceType;->matches(Lnet/sf/saxon/om/GroundedValue;Lnet/sf/saxon/type/TypeHierarchy;)Z

    move-result v7

    if-nez v7, :cond_1

    new-instance v7, Lnet/sf/saxon/expr/parser/RoleDiagnostic;

    invoke-virtual {p1}, Lnet/sf/saxon/s9api/QName;->getStructuredQName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v8

    invoke-virtual {v8}, Lnet/sf/saxon/om/StructuredQName;->getDisplayName()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v3, v8, v4}, Lnet/sf/saxon/expr/parser/RoleDiagnostic;-><init>(ILjava/lang/String;I)V

    sget-object v8, Lnet/sf/saxon/expr/parser/Loc;->NONE:Lnet/sf/saxon/expr/parser/Loc;

    invoke-virtual {v1, v6, v5, v7, v8}, Lnet/sf/saxon/type/TypeHierarchy;->applyFunctionConversionRules(Lnet/sf/saxon/om/Sequence;Lnet/sf/saxon/value/SequenceType;Lnet/sf/saxon/expr/parser/RoleDiagnostic;Lnet/sf/saxon/s9api/Location;)Lnet/sf/saxon/om/GroundedValue;

    move-result-object v6

    :cond_1
    aput-object v6, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    iget-object p0, p0, Lnet/sf/saxon/s9api/XQueryEvaluator;->i:Lnet/sf/saxon/Controller;

    invoke-virtual {v0, v2, p0}, Lnet/sf/saxon/expr/instruct/UserFunction;->call([Lnet/sf/saxon/om/Sequence;Lnet/sf/saxon/Controller;)Lnet/sf/saxon/om/Sequence;

    move-result-object p0

    invoke-static {p0}, Lnet/sf/saxon/s9api/XdmValue;->wrap(Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/s9api/XdmValue;

    move-result-object p0
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Lnet/sf/saxon/s9api/SaxonApiException;

    invoke-direct {p1, p0}, Lnet/sf/saxon/s9api/SaxonApiException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_3
    new-instance p0, Lnet/sf/saxon/s9api/SaxonApiException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No function with name "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lnet/sf/saxon/s9api/QName;->getEQName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " and arity "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p2

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " has been declared in the query"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lnet/sf/saxon/s9api/SaxonApiException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/s9api/SaxonApiException;
        }
    .end annotation

    return-void
.end method

.method public evaluate()Lnet/sf/saxon/s9api/XdmValue;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/s9api/SaxonApiException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/s9api/XQueryEvaluator;->g:Lnet/sf/saxon/query/XQueryExpression;

    invoke-virtual {v0}, Lnet/sf/saxon/query/XQueryExpression;->isUpdateQuery()Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lnet/sf/saxon/s9api/XQueryEvaluator;->g:Lnet/sf/saxon/query/XQueryExpression;

    iget-object p0, p0, Lnet/sf/saxon/s9api/XQueryEvaluator;->h:Lnet/sf/saxon/query/DynamicQueryContext;

    invoke-virtual {v0, p0}, Lnet/sf/saxon/query/XQueryExpression;->iterator(Lnet/sf/saxon/query/DynamicQueryContext;)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p0

    invoke-static {p0}, Lnet/sf/saxon/om/SequenceTool;->toGroundedValue(Lnet/sf/saxon/om/SequenceIterator;)Lnet/sf/saxon/om/GroundedValue;

    move-result-object p0

    invoke-static {p0}, Lnet/sf/saxon/s9api/XdmValue;->wrap(Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/s9api/XdmValue;

    move-result-object p0
    :try_end_0
    .catch Lnet/sf/saxon/trans/UncheckedXPathException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Lnet/sf/saxon/s9api/SaxonApiException;

    invoke-direct {v0, p0}, Lnet/sf/saxon/s9api/SaxonApiException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p0

    new-instance v0, Lnet/sf/saxon/s9api/SaxonApiException;

    invoke-virtual {p0}, Lnet/sf/saxon/trans/UncheckedXPathException;->getXPathException()Lnet/sf/saxon/trans/XPathException;

    move-result-object p0

    invoke-direct {v0, p0}, Lnet/sf/saxon/s9api/SaxonApiException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Query is updating"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public evaluateSingle()Lnet/sf/saxon/s9api/XdmItem;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/s9api/SaxonApiException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lnet/sf/saxon/s9api/XQueryEvaluator;->g:Lnet/sf/saxon/query/XQueryExpression;

    iget-object p0, p0, Lnet/sf/saxon/s9api/XQueryEvaluator;->h:Lnet/sf/saxon/query/DynamicQueryContext;

    invoke-virtual {v0, p0}, Lnet/sf/saxon/query/XQueryExpression;->iterator(Lnet/sf/saxon/query/DynamicQueryContext;)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p0

    invoke-interface {p0}, Lnet/sf/saxon/om/SequenceIterator;->next()Lnet/sf/saxon/om/Item;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lnet/sf/saxon/s9api/XdmValue;->wrap(Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/s9api/XdmValue;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/s9api/XdmItem;
    :try_end_0
    .catch Lnet/sf/saxon/trans/UncheckedXPathException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Lnet/sf/saxon/s9api/SaxonApiException;

    invoke-direct {v0, p0}, Lnet/sf/saxon/s9api/SaxonApiException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p0

    new-instance v0, Lnet/sf/saxon/s9api/SaxonApiException;

    invoke-virtual {p0}, Lnet/sf/saxon/trans/UncheckedXPathException;->getXPathException()Lnet/sf/saxon/trans/XPathException;

    move-result-object p0

    invoke-direct {v0, p0}, Lnet/sf/saxon/s9api/SaxonApiException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public getContextItem()Lnet/sf/saxon/s9api/XdmItem;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/s9api/XQueryEvaluator;->h:Lnet/sf/saxon/query/DynamicQueryContext;

    invoke-virtual {p0}, Lnet/sf/saxon/query/DynamicQueryContext;->getContextItem()Lnet/sf/saxon/om/Item;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {p0}, Lnet/sf/saxon/s9api/XdmValue;->wrap(Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/s9api/XdmValue;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/s9api/XdmItem;

    return-object p0
.end method

.method public getErrorListener()Ljavax/xml/transform/ErrorListener;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/s9api/XQueryEvaluator;->h:Lnet/sf/saxon/query/DynamicQueryContext;

    invoke-virtual {p0}, Lnet/sf/saxon/query/DynamicQueryContext;->getErrorListener()Ljavax/xml/transform/ErrorListener;

    move-result-object p0

    return-object p0
.end method

.method public getErrorReporter()Lnet/sf/saxon/lib/ErrorReporter;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/s9api/XQueryEvaluator;->h:Lnet/sf/saxon/query/DynamicQueryContext;

    invoke-virtual {p0}, Lnet/sf/saxon/query/DynamicQueryContext;->getErrorReporter()Lnet/sf/saxon/lib/ErrorReporter;

    move-result-object p0

    return-object p0
.end method

.method public getExternalVariable(Lnet/sf/saxon/s9api/QName;)Lnet/sf/saxon/s9api/XdmValue;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/s9api/XQueryEvaluator;->h:Lnet/sf/saxon/query/DynamicQueryContext;

    invoke-virtual {p1}, Lnet/sf/saxon/s9api/QName;->getStructuredQName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/query/DynamicQueryContext;->getParameter(Lnet/sf/saxon/om/StructuredQName;)Lnet/sf/saxon/om/GroundedValue;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {p0}, Lnet/sf/saxon/s9api/XdmValue;->wrap(Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/s9api/XdmValue;

    move-result-object p0

    return-object p0
.end method

.method public getReceiver(Lnet/sf/saxon/event/PipelineConfiguration;Lnet/sf/saxon/serialize/SerializationProperties;)Lnet/sf/saxon/event/Receiver;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/s9api/SaxonApiException;
        }
    .end annotation

    iget-object p1, p0, Lnet/sf/saxon/s9api/XQueryEvaluator;->j:Lnet/sf/saxon/s9api/Destination;

    if-eqz p1, :cond_2

    :try_start_0
    iget-object p1, p0, Lnet/sf/saxon/s9api/XQueryEvaluator;->i:Lnet/sf/saxon/Controller;

    if-nez p1, :cond_0

    iget-object p1, p0, Lnet/sf/saxon/s9api/XQueryEvaluator;->g:Lnet/sf/saxon/query/XQueryExpression;

    iget-object v0, p0, Lnet/sf/saxon/s9api/XQueryEvaluator;->h:Lnet/sf/saxon/query/DynamicQueryContext;

    invoke-virtual {p1, v0}, Lnet/sf/saxon/query/XQueryExpression;->newController(Lnet/sf/saxon/query/DynamicQueryContext;)Lnet/sf/saxon/Controller;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/s9api/XQueryEvaluator;->i:Lnet/sf/saxon/Controller;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lnet/sf/saxon/s9api/XQueryEvaluator;->h:Lnet/sf/saxon/query/DynamicQueryContext;

    invoke-virtual {v0, p1}, Lnet/sf/saxon/query/DynamicQueryContext;->initializeController(Lnet/sf/saxon/Controller;)V
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object p1, p0, Lnet/sf/saxon/s9api/XQueryEvaluator;->i:Lnet/sf/saxon/Controller;

    invoke-virtual {p1}, Lnet/sf/saxon/Controller;->makeBuilder()Lnet/sf/saxon/event/Builder;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/s9api/XQueryEvaluator;->l:Lnet/sf/saxon/event/Builder;

    instance-of v0, p1, Lnet/sf/saxon/tree/tiny/TinyBuilder;

    if-eqz v0, :cond_1

    check-cast p1, Lnet/sf/saxon/tree/tiny/TinyBuilder;

    iget-object v0, p0, Lnet/sf/saxon/s9api/XQueryEvaluator;->h:Lnet/sf/saxon/query/DynamicQueryContext;

    invoke-virtual {v0}, Lnet/sf/saxon/query/DynamicQueryContext;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/Configuration;->getTreeStatistics()Lnet/sf/saxon/tree/tiny/TreeStatistics;

    move-result-object v0

    iget-object v0, v0, Lnet/sf/saxon/tree/tiny/TreeStatistics;->SOURCE_DOCUMENT_STATISTICS:Lnet/sf/saxon/tree/tiny/Statistics;

    invoke-virtual {p1, v0}, Lnet/sf/saxon/tree/tiny/TinyBuilder;->setStatistics(Lnet/sf/saxon/tree/tiny/Statistics;)V

    :cond_1
    iget-object p1, p0, Lnet/sf/saxon/s9api/XQueryEvaluator;->i:Lnet/sf/saxon/Controller;

    iget-object v0, p0, Lnet/sf/saxon/s9api/XQueryEvaluator;->l:Lnet/sf/saxon/event/Builder;

    invoke-virtual {p1, v0}, Lnet/sf/saxon/Controller;->makeStripper(Lnet/sf/saxon/event/Receiver;)Lnet/sf/saxon/event/Stripper;

    move-result-object p1

    invoke-virtual {p2, p1}, Lnet/sf/saxon/serialize/SerializationProperties;->makeSequenceNormalizer(Lnet/sf/saxon/event/Receiver;)Lnet/sf/saxon/event/SequenceNormalizer;

    move-result-object p1

    new-instance p2, Lcom/sunia/HTREnginev2/kmo;

    invoke-direct {p2, p0}, Lcom/sunia/HTREnginev2/kmo;-><init>(Lnet/sf/saxon/s9api/XQueryEvaluator;)V

    invoke-virtual {p1, p2}, Lnet/sf/saxon/event/SequenceNormalizer;->onClose(Lnet/sf/saxon/s9api/Action;)V

    return-object p1

    :catch_0
    move-exception p0

    new-instance p1, Lnet/sf/saxon/s9api/SaxonApiException;

    invoke-direct {p1, p0}, Lnet/sf/saxon/s9api/SaxonApiException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "No destination has been supplied"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getResourceResolver()Lnet/sf/saxon/lib/ResourceResolver;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/s9api/XQueryEvaluator;->h:Lnet/sf/saxon/query/DynamicQueryContext;

    invoke-virtual {p0}, Lnet/sf/saxon/query/DynamicQueryContext;->getResourceResolver()Lnet/sf/saxon/lib/ResourceResolver;

    move-result-object p0

    return-object p0
.end method

.method public getSchemaValidationMode()Lnet/sf/saxon/s9api/ValidationMode;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/s9api/XQueryEvaluator;->h:Lnet/sf/saxon/query/DynamicQueryContext;

    invoke-virtual {p0}, Lnet/sf/saxon/query/DynamicQueryContext;->getSchemaValidationMode()I

    move-result p0

    invoke-static {p0}, Lnet/sf/saxon/s9api/ValidationMode;->get(I)Lnet/sf/saxon/s9api/ValidationMode;

    move-result-object p0

    return-object p0
.end method

.method public getTraceFunctionDestination()Lnet/sf/saxon/lib/Logger;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/s9api/XQueryEvaluator;->h:Lnet/sf/saxon/query/DynamicQueryContext;

    invoke-virtual {p0}, Lnet/sf/saxon/query/DynamicQueryContext;->getTraceFunctionDestination()Lnet/sf/saxon/lib/Logger;

    move-result-object p0

    return-object p0
.end method

.method public getTraceListener()Lnet/sf/saxon/lib/TraceListener;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/s9api/XQueryEvaluator;->h:Lnet/sf/saxon/query/DynamicQueryContext;

    invoke-virtual {p0}, Lnet/sf/saxon/query/DynamicQueryContext;->getTraceListener()Lnet/sf/saxon/lib/TraceListener;

    move-result-object p0

    return-object p0
.end method

.method public getURIResolver()Ljavax/xml/transform/URIResolver;
    .locals 1

    iget-object p0, p0, Lnet/sf/saxon/s9api/XQueryEvaluator;->h:Lnet/sf/saxon/query/DynamicQueryContext;

    invoke-virtual {p0}, Lnet/sf/saxon/query/DynamicQueryContext;->getResourceResolver()Lnet/sf/saxon/lib/ResourceResolver;

    move-result-object p0

    instance-of v0, p0, Lnet/sf/saxon/lib/ResourceResolverWrappingURIResolver;

    if-eqz v0, :cond_0

    check-cast p0, Lnet/sf/saxon/lib/ResourceResolverWrappingURIResolver;

    invoke-virtual {p0}, Lnet/sf/saxon/lib/ResourceResolverWrappingURIResolver;->getWrappedURIResolver()Ljavax/xml/transform/URIResolver;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getUnderlyingQueryContext()Lnet/sf/saxon/query/DynamicQueryContext;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/s9api/XQueryEvaluator;->h:Lnet/sf/saxon/query/DynamicQueryContext;

    return-object p0
.end method

.method public getUnparsedTextURIResolver()Lnet/sf/saxon/lib/UnparsedTextURIResolver;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/s9api/XQueryEvaluator;->h:Lnet/sf/saxon/query/DynamicQueryContext;

    invoke-virtual {p0}, Lnet/sf/saxon/query/DynamicQueryContext;->getUnparsedTextURIResolver()Lnet/sf/saxon/lib/UnparsedTextURIResolver;

    move-result-object p0

    return-object p0
.end method

.method public getUpdatedDocuments()Ljava/util/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lnet/sf/saxon/s9api/XdmNode;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lnet/sf/saxon/s9api/XQueryEvaluator;->k:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lnet/sf/saxon/s9api/XQueryEvaluator;->iterator()Lnet/sf/saxon/s9api/XdmSequenceIterator;

    move-result-object p0

    return-object p0
.end method

.method public iterator()Lnet/sf/saxon/s9api/XdmSequenceIterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/sf/saxon/s9api/XdmSequenceIterator<",
            "Lnet/sf/saxon/s9api/XdmItem;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/s9api/SaxonApiUncheckedException;
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lnet/sf/saxon/s9api/XQueryEvaluator;->g:Lnet/sf/saxon/query/XQueryExpression;

    invoke-virtual {v0}, Lnet/sf/saxon/query/XQueryExpression;->isUpdateQuery()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    :try_start_0
    new-instance v0, Lnet/sf/saxon/s9api/XdmSequenceIterator;

    iget-object v1, p0, Lnet/sf/saxon/s9api/XQueryEvaluator;->g:Lnet/sf/saxon/query/XQueryExpression;

    iget-object p0, p0, Lnet/sf/saxon/s9api/XQueryEvaluator;->h:Lnet/sf/saxon/query/DynamicQueryContext;

    invoke-virtual {v1, p0}, Lnet/sf/saxon/query/XQueryExpression;->iterator(Lnet/sf/saxon/query/DynamicQueryContext;)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p0

    invoke-direct {v0, p0}, Lnet/sf/saxon/s9api/XdmSequenceIterator;-><init>(Lnet/sf/saxon/om/SequenceIterator;)V
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    .line 4
    new-instance v0, Lnet/sf/saxon/s9api/SaxonApiUncheckedException;

    invoke-direct {v0, p0}, Lnet/sf/saxon/s9api/SaxonApiUncheckedException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 5
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Query is updating"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public run()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/s9api/SaxonApiException;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lnet/sf/saxon/s9api/XQueryEvaluator;->g:Lnet/sf/saxon/query/XQueryExpression;

    invoke-virtual {v0}, Lnet/sf/saxon/query/XQueryExpression;->isUpdateQuery()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lnet/sf/saxon/s9api/XQueryEvaluator;->g:Lnet/sf/saxon/query/XQueryExpression;

    iget-object v1, p0, Lnet/sf/saxon/s9api/XQueryEvaluator;->h:Lnet/sf/saxon/query/DynamicQueryContext;

    invoke-virtual {v0, v1}, Lnet/sf/saxon/query/XQueryExpression;->runUpdate(Lnet/sf/saxon/query/DynamicQueryContext;)Ljava/util/Set;

    move-result-object v0

    .line 3
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lnet/sf/saxon/s9api/XQueryEvaluator;->k:Ljava/util/Set;

    .line 4
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/om/MutableNodeInfo;

    .line 5
    iget-object v2, p0, Lnet/sf/saxon/s9api/XQueryEvaluator;->k:Ljava/util/Set;

    invoke-static {v1}, Lnet/sf/saxon/s9api/XdmItem;->wrapItem(Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/s9api/XdmNode;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lnet/sf/saxon/s9api/XQueryEvaluator;->j:Lnet/sf/saxon/s9api/Destination;

    if-eqz v0, :cond_2

    .line 7
    invoke-virtual {p0, v0}, Lnet/sf/saxon/s9api/XQueryEvaluator;->run(Lnet/sf/saxon/s9api/Destination;)V

    :cond_1
    return-void

    .line 8
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "No destination supplied"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lnet/sf/saxon/trans/UncheckedXPathException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    .line 9
    new-instance v0, Lnet/sf/saxon/s9api/SaxonApiException;

    invoke-virtual {p0}, Lnet/sf/saxon/trans/UncheckedXPathException;->getXPathException()Lnet/sf/saxon/trans/XPathException;

    move-result-object p0

    invoke-direct {v0, p0}, Lnet/sf/saxon/s9api/SaxonApiException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p0

    .line 10
    new-instance v0, Lnet/sf/saxon/s9api/SaxonApiException;

    invoke-direct {v0, p0}, Lnet/sf/saxon/s9api/SaxonApiException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public run(Lnet/sf/saxon/s9api/Destination;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/s9api/SaxonApiException;
        }
    .end annotation

    .line 11
    iget-object v0, p0, Lnet/sf/saxon/s9api/XQueryEvaluator;->g:Lnet/sf/saxon/query/XQueryExpression;

    invoke-virtual {v0}, Lnet/sf/saxon/query/XQueryExpression;->isUpdateQuery()Z

    move-result v0

    if-nez v0, :cond_0

    .line 12
    :try_start_0
    invoke-virtual {p0, p1}, Lnet/sf/saxon/s9api/XQueryEvaluator;->b(Lnet/sf/saxon/s9api/Destination;)Lnet/sf/saxon/event/Receiver;

    move-result-object v0

    .line 13
    iget-object v1, p0, Lnet/sf/saxon/s9api/XQueryEvaluator;->g:Lnet/sf/saxon/query/XQueryExpression;

    iget-object p0, p0, Lnet/sf/saxon/s9api/XQueryEvaluator;->h:Lnet/sf/saxon/query/DynamicQueryContext;

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v0, v2}, Lnet/sf/saxon/query/XQueryExpression;->run(Lnet/sf/saxon/query/DynamicQueryContext;Ljavax/xml/transform/Result;Ljava/util/Properties;)V

    .line 14
    invoke-interface {p1}, Lnet/sf/saxon/s9api/Destination;->closeAndNotify()V
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 15
    new-instance p1, Lnet/sf/saxon/s9api/SaxonApiException;

    invoke-direct {p1, p0}, Lnet/sf/saxon/s9api/SaxonApiException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 16
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Query is updating"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public runStreamed(Ljavax/xml/transform/Source;Lnet/sf/saxon/s9api/Destination;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/s9api/SaxonApiException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/s9api/XQueryEvaluator;->g:Lnet/sf/saxon/query/XQueryExpression;

    invoke-virtual {v0}, Lnet/sf/saxon/query/XQueryExpression;->isUpdateQuery()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lnet/sf/saxon/s9api/XQueryEvaluator;->h:Lnet/sf/saxon/query/DynamicQueryContext;

    invoke-virtual {v0}, Lnet/sf/saxon/query/DynamicQueryContext;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/Configuration;->isTiming()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljavax/xml/transform/Source;->getSystemId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, ""

    :cond_0
    invoke-virtual {v0}, Lnet/sf/saxon/Configuration;->getLogger()Lnet/sf/saxon/lib/Logger;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Processing streamed input "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/sf/saxon/lib/Logger;->info(Ljava/lang/String;)V

    :cond_1
    :try_start_0
    invoke-virtual {p0, p2}, Lnet/sf/saxon/s9api/XQueryEvaluator;->b(Lnet/sf/saxon/s9api/Destination;)Lnet/sf/saxon/event/Receiver;

    move-result-object v0

    iget-object v1, p0, Lnet/sf/saxon/s9api/XQueryEvaluator;->g:Lnet/sf/saxon/query/XQueryExpression;

    iget-object p0, p0, Lnet/sf/saxon/s9api/XQueryEvaluator;->h:Lnet/sf/saxon/query/DynamicQueryContext;

    const/4 v2, 0x0

    invoke-virtual {v1, p0, p1, v0, v2}, Lnet/sf/saxon/query/XQueryExpression;->runStreamed(Lnet/sf/saxon/query/DynamicQueryContext;Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;Ljava/util/Properties;)V

    invoke-interface {p2}, Lnet/sf/saxon/s9api/Destination;->closeAndNotify()V
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Lnet/sf/saxon/s9api/SaxonApiException;

    invoke-direct {p1, p0}, Lnet/sf/saxon/s9api/SaxonApiException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Query is updating; cannot run with streaming"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setContextItem(Lnet/sf/saxon/s9api/XdmItem;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/s9api/SaxonApiException;
        }
    .end annotation

    if-eqz p1, :cond_2

    iget-object v0, p0, Lnet/sf/saxon/s9api/XQueryEvaluator;->g:Lnet/sf/saxon/query/XQueryExpression;

    invoke-virtual {v0}, Lnet/sf/saxon/query/XQueryExpression;->getExecutable()Lnet/sf/saxon/expr/instruct/Executable;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/expr/instruct/Executable;->getGlobalContextRequirement()Lnet/sf/saxon/expr/instruct/GlobalContextRequirement;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lnet/sf/saxon/expr/instruct/GlobalContextRequirement;->isExternal()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lnet/sf/saxon/s9api/SaxonApiException;

    const-string p1, "The context item for the query is not defined as external"

    invoke-direct {p0, p1}, Lnet/sf/saxon/s9api/SaxonApiException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    iget-object p0, p0, Lnet/sf/saxon/s9api/XQueryEvaluator;->h:Lnet/sf/saxon/query/DynamicQueryContext;

    invoke-virtual {p1}, Lnet/sf/saxon/s9api/XdmItem;->getUnderlyingValue()Lnet/sf/saxon/om/Item;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/query/DynamicQueryContext;->setContextItem(Lnet/sf/saxon/om/Item;)V

    :cond_2
    return-void
.end method

.method public setDestination(Lnet/sf/saxon/s9api/Destination;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/s9api/XQueryEvaluator;->j:Lnet/sf/saxon/s9api/Destination;

    return-void
.end method

.method public setErrorListener(Ljavax/xml/transform/ErrorListener;)V
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/s9api/XQueryEvaluator;->h:Lnet/sf/saxon/query/DynamicQueryContext;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/query/DynamicQueryContext;->setErrorListener(Ljavax/xml/transform/ErrorListener;)V

    return-void
.end method

.method public setErrorReporter(Lnet/sf/saxon/lib/ErrorReporter;)V
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/s9api/XQueryEvaluator;->h:Lnet/sf/saxon/query/DynamicQueryContext;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/query/DynamicQueryContext;->setErrorReporter(Lnet/sf/saxon/lib/ErrorReporter;)V

    return-void
.end method

.method public setExternalVariable(Lnet/sf/saxon/s9api/QName;Lnet/sf/saxon/s9api/XdmValue;)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Lnet/sf/saxon/s9api/XQueryEvaluator;->h:Lnet/sf/saxon/query/DynamicQueryContext;

    invoke-virtual {p1}, Lnet/sf/saxon/s9api/QName;->getStructuredQName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object p1

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lnet/sf/saxon/s9api/XdmValue;->getUnderlyingValue()Lnet/sf/saxon/om/GroundedValue;

    move-result-object p2

    invoke-interface {p2}, Lnet/sf/saxon/om/Sequence;->materialize()Lnet/sf/saxon/om/GroundedValue;

    move-result-object p2

    :goto_0
    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/query/DynamicQueryContext;->setParameter(Lnet/sf/saxon/om/StructuredQName;Lnet/sf/saxon/om/GroundedValue;)V
    :try_end_0
    .catch Lnet/sf/saxon/trans/UncheckedXPathException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Lnet/sf/saxon/s9api/SaxonApiUncheckedException;

    invoke-direct {p1, p0}, Lnet/sf/saxon/s9api/SaxonApiUncheckedException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public setResourceResolver(Lnet/sf/saxon/lib/ResourceResolver;)V
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/s9api/XQueryEvaluator;->h:Lnet/sf/saxon/query/DynamicQueryContext;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/query/DynamicQueryContext;->setResourceResolver(Lnet/sf/saxon/lib/ResourceResolver;)V

    return-void
.end method

.method public setSchemaValidationMode(Lnet/sf/saxon/s9api/ValidationMode;)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p0, p0, Lnet/sf/saxon/s9api/XQueryEvaluator;->h:Lnet/sf/saxon/query/DynamicQueryContext;

    invoke-virtual {p1}, Lnet/sf/saxon/s9api/ValidationMode;->getNumber()I

    move-result p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/query/DynamicQueryContext;->setSchemaValidationMode(I)V

    :cond_0
    return-void
.end method

.method public setSource(Ljavax/xml/transform/Source;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/s9api/SaxonApiException;
        }
    .end annotation

    instance-of v0, p1, Lnet/sf/saxon/om/NodeInfo;

    if-eqz v0, :cond_0

    new-instance v0, Lnet/sf/saxon/s9api/XdmNode;

    check-cast p1, Lnet/sf/saxon/om/NodeInfo;

    invoke-direct {v0, p1}, Lnet/sf/saxon/s9api/XdmNode;-><init>(Lnet/sf/saxon/om/NodeInfo;)V

    invoke-virtual {p0, v0}, Lnet/sf/saxon/s9api/XQueryEvaluator;->setContextItem(Lnet/sf/saxon/s9api/XdmItem;)V

    goto :goto_0

    :cond_0
    instance-of v0, p1, Ljavax/xml/transform/dom/DOMSource;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnet/sf/saxon/s9api/XQueryEvaluator;->f:Lnet/sf/saxon/s9api/Processor;

    invoke-virtual {v0}, Lnet/sf/saxon/s9api/Processor;->newDocumentBuilder()Lnet/sf/saxon/s9api/DocumentBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/sf/saxon/s9api/DocumentBuilder;->wrap(Ljava/lang/Object;)Lnet/sf/saxon/s9api/XdmNode;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/s9api/XQueryEvaluator;->setContextItem(Lnet/sf/saxon/s9api/XdmItem;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lnet/sf/saxon/s9api/XQueryEvaluator;->f:Lnet/sf/saxon/s9api/Processor;

    invoke-virtual {v0}, Lnet/sf/saxon/s9api/Processor;->newDocumentBuilder()Lnet/sf/saxon/s9api/DocumentBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/sf/saxon/s9api/DocumentBuilder;->build(Ljavax/xml/transform/Source;)Lnet/sf/saxon/s9api/XdmNode;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/s9api/XQueryEvaluator;->setContextItem(Lnet/sf/saxon/s9api/XdmItem;)V

    :goto_0
    return-void
.end method

.method public setTraceFunctionDestination(Lnet/sf/saxon/lib/Logger;)V
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/s9api/XQueryEvaluator;->h:Lnet/sf/saxon/query/DynamicQueryContext;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/query/DynamicQueryContext;->setTraceFunctionDestination(Lnet/sf/saxon/lib/Logger;)V

    return-void
.end method

.method public setTraceListener(Lnet/sf/saxon/lib/TraceListener;)V
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/s9api/XQueryEvaluator;->h:Lnet/sf/saxon/query/DynamicQueryContext;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/query/DynamicQueryContext;->setTraceListener(Lnet/sf/saxon/lib/TraceListener;)V

    return-void
.end method

.method public setURIResolver(Ljavax/xml/transform/URIResolver;)V
    .locals 1

    iget-object p0, p0, Lnet/sf/saxon/s9api/XQueryEvaluator;->h:Lnet/sf/saxon/query/DynamicQueryContext;

    new-instance v0, Lnet/sf/saxon/lib/ResourceResolverWrappingURIResolver;

    invoke-direct {v0, p1}, Lnet/sf/saxon/lib/ResourceResolverWrappingURIResolver;-><init>(Ljavax/xml/transform/URIResolver;)V

    invoke-virtual {p0, v0}, Lnet/sf/saxon/query/DynamicQueryContext;->setResourceResolver(Lnet/sf/saxon/lib/ResourceResolver;)V

    return-void
.end method

.method public setUnparsedTextResolver(Lnet/sf/saxon/lib/UnparsedTextURIResolver;)V
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/s9api/XQueryEvaluator;->h:Lnet/sf/saxon/query/DynamicQueryContext;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/query/DynamicQueryContext;->setUnparsedTextURIResolver(Lnet/sf/saxon/lib/UnparsedTextURIResolver;)V

    return-void
.end method

.method public stream()Lnet/sf/saxon/s9api/streams/XdmStream;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/sf/saxon/s9api/streams/XdmStream<",
            "Lnet/sf/saxon/s9api/XdmItem;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/s9api/SaxonApiUncheckedException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/s9api/XQueryEvaluator;->iterator()Lnet/sf/saxon/s9api/XdmSequenceIterator;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/s9api/XdmSequenceIterator;->stream()Lnet/sf/saxon/s9api/streams/XdmStream;

    move-result-object p0

    return-object p0
.end method
