.class public Lnet/sf/saxon/trans/XsltController;
.super Lnet/sf/saxon/Controller;
.source "SourceFile"


# instance fields
.field public A0:Lnet/sf/saxon/expr/accum/AccumulatorManager;

.field public B0:Lnet/sf/saxon/serialize/PrincipalOutputGatekeeper;

.field public C0:Lnet/sf/saxon/s9api/Destination;

.field public D0:Lnet/sf/saxon/trace/TemplateRuleTraceListener;

.field public E0:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Lnet/sf/saxon/s9api/Message;",
            ">;"
        }
    .end annotation
.end field

.field public final k0:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lnet/sf/saxon/om/StructuredQName;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public q0:Z

.field public t0:Lnet/sf/saxon/lib/ResultDocumentResolver;

.field public u0:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lnet/sf/saxon/om/DocumentKey;",
            ">;"
        }
    .end annotation
.end field

.field public v0:Lnet/sf/saxon/expr/Component$M;

.field public final w0:Lnet/sf/saxon/om/Function;

.field public x0:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lnet/sf/saxon/om/StructuredQName;",
            "Lnet/sf/saxon/om/Sequence;",
            ">;"
        }
    .end annotation
.end field

.field public y0:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lnet/sf/saxon/om/StructuredQName;",
            "Lnet/sf/saxon/om/Sequence;",
            ">;"
        }
    .end annotation
.end field

.field public final z0:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/util/Stack<",
            "Lnet/sf/saxon/expr/instruct/AttributeSet;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lnet/sf/saxon/Configuration;Lnet/sf/saxon/PreparedStylesheet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lnet/sf/saxon/Controller;-><init>(Lnet/sf/saxon/Configuration;Lnet/sf/saxon/expr/instruct/Executable;)V

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lnet/sf/saxon/trans/XsltController;->k0:Ljava/util/Map;

    const/4 p2, 0x1

    iput-boolean p2, p0, Lnet/sf/saxon/trans/XsltController;->q0:Z

    const/4 p2, 0x0

    iput-object p2, p0, Lnet/sf/saxon/trans/XsltController;->v0:Lnet/sf/saxon/expr/Component$M;

    iput-object p2, p0, Lnet/sf/saxon/trans/XsltController;->w0:Lnet/sf/saxon/om/Function;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lnet/sf/saxon/trans/XsltController;->z0:Ljava/util/Map;

    new-instance v0, Lnet/sf/saxon/expr/accum/AccumulatorManager;

    invoke-direct {v0}, Lnet/sf/saxon/expr/accum/AccumulatorManager;-><init>()V

    iput-object v0, p0, Lnet/sf/saxon/trans/XsltController;->A0:Lnet/sf/saxon/expr/accum/AccumulatorManager;

    iput-object p2, p0, Lnet/sf/saxon/trans/XsltController;->B0:Lnet/sf/saxon/serialize/PrincipalOutputGatekeeper;

    iput-object p2, p0, Lnet/sf/saxon/trans/XsltController;->D0:Lnet/sf/saxon/trace/TemplateRuleTraceListener;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/XsltController;->k(Lnet/sf/saxon/Configuration;)V

    return-void
.end method

.method public static synthetic e(Ljava/lang/Long;)Ljava/util/Stack;
    .locals 0

    invoke-static {p0}, Lnet/sf/saxon/trans/XsltController;->l(Ljava/lang/Long;)Ljava/util/Stack;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f(Lnet/sf/saxon/trans/XsltController;Lnet/sf/saxon/trans/Mode;Lnet/sf/saxon/om/Item;)Lnet/sf/saxon/om/SequenceIterator;
    .locals 0

    invoke-direct {p0, p1, p2}, Lnet/sf/saxon/trans/XsltController;->m(Lnet/sf/saxon/trans/Mode;Lnet/sf/saxon/om/Item;)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic g(Lnet/sf/saxon/trans/XsltController;)Lnet/sf/saxon/lib/TraceListener;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/Controller;->traceListener:Lnet/sf/saxon/lib/TraceListener;

    return-object p0
.end method

.method public static synthetic h(Lnet/sf/saxon/trans/XsltController;)Lnet/sf/saxon/lib/TraceListener;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/Controller;->traceListener:Lnet/sf/saxon/lib/TraceListener;

    return-object p0
.end method

.method public static synthetic i(Lnet/sf/saxon/trans/XsltController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lnet/sf/saxon/Controller;->inUse:Z

    return p1
.end method

.method public static synthetic l(Ljava/lang/Long;)Ljava/util/Stack;
    .locals 0

    new-instance p0, Ljava/util/Stack;

    invoke-direct {p0}, Ljava/util/Stack;-><init>()V

    return-object p0
.end method

.method private synthetic m(Lnet/sf/saxon/trans/Mode;Lnet/sf/saxon/om/Item;)Lnet/sf/saxon/om/SequenceIterator;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    instance-of v0, p2, Lnet/sf/saxon/om/NodeInfo;

    if-eqz v0, :cond_8

    check-cast p2, Lnet/sf/saxon/om/NodeInfo;

    invoke-interface {p2}, Lnet/sf/saxon/om/NodeInfo;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-interface {p2}, Lnet/sf/saxon/om/NodeInfo;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v0

    iget-object v1, p0, Lnet/sf/saxon/Controller;->executable:Lnet/sf/saxon/expr/instruct/Executable;

    invoke-virtual {v1}, Lnet/sf/saxon/expr/instruct/Executable;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/sf/saxon/Configuration;->isCompatible(Lnet/sf/saxon/Configuration;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p2}, Lnet/sf/saxon/om/NodeInfo;->getTreeInfo()Lnet/sf/saxon/om/TreeInfo;

    move-result-object v0

    invoke-interface {v0}, Lnet/sf/saxon/om/TreeInfo;->isTyped()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnet/sf/saxon/Controller;->executable:Lnet/sf/saxon/expr/instruct/Executable;

    invoke-virtual {v0}, Lnet/sf/saxon/expr/instruct/Executable;->isSchemaAware()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    const-string p1, "Cannot use a schema-validated source document unless the stylesheet is schema-aware"

    invoke-direct {p0, p1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lnet/sf/saxon/Controller;->isStylesheetStrippingTypeAnnotations()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lnet/sf/saxon/Controller;->globalContextItem:Lnet/sf/saxon/om/Item;

    if-eq p2, v0, :cond_2

    invoke-interface {p2}, Lnet/sf/saxon/om/NodeInfo;->getTreeInfo()Lnet/sf/saxon/om/TreeInfo;

    move-result-object v0

    invoke-interface {v0}, Lnet/sf/saxon/om/TreeInfo;->isTyped()Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Lnet/sf/saxon/tree/wrapper/TypeStrippedDocument;

    invoke-direct {v1, v0}, Lnet/sf/saxon/tree/wrapper/TypeStrippedDocument;-><init>(Lnet/sf/saxon/om/TreeInfo;)V

    invoke-virtual {v1, p2}, Lnet/sf/saxon/tree/wrapper/TypeStrippedDocument;->wrap(Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/tree/wrapper/TypeStrippedNode;

    move-result-object p2

    :cond_2
    invoke-virtual {p0}, Lnet/sf/saxon/Controller;->getSpaceStrippingRule()Lnet/sf/saxon/om/SpaceStrippingRule;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sf/saxon/Controller;->isStylesheetContainingStripSpace()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lnet/sf/saxon/Controller;->isStripSourceTree()Z

    move-result v1

    if-eqz v1, :cond_4

    instance-of v1, p2, Lnet/sf/saxon/tree/wrapper/SpaceStrippedNode;

    if-nez v1, :cond_4

    iget-object v1, p0, Lnet/sf/saxon/Controller;->globalContextItem:Lnet/sf/saxon/om/Item;

    if-eq p2, v1, :cond_4

    invoke-interface {p2}, Lnet/sf/saxon/om/NodeInfo;->getTreeInfo()Lnet/sf/saxon/om/TreeInfo;

    move-result-object v1

    invoke-interface {v1}, Lnet/sf/saxon/om/TreeInfo;->getSpaceStrippingRule()Lnet/sf/saxon/om/SpaceStrippingRule;

    move-result-object v1

    if-eq v1, v0, :cond_4

    new-instance v1, Lnet/sf/saxon/tree/wrapper/SpaceStrippedDocument;

    invoke-interface {p2}, Lnet/sf/saxon/om/NodeInfo;->getTreeInfo()Lnet/sf/saxon/om/TreeInfo;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lnet/sf/saxon/tree/wrapper/SpaceStrippedDocument;-><init>(Lnet/sf/saxon/om/TreeInfo;Lnet/sf/saxon/om/SpaceStrippingRule;)V

    invoke-interface {p2}, Lnet/sf/saxon/om/NodeInfo;->getParent()Lnet/sf/saxon/om/NodeInfo;

    move-result-object v0

    invoke-static {p2, v1, v0}, Lnet/sf/saxon/tree/wrapper/SpaceStrippedNode;->isPreservedNode(Lnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/tree/wrapper/SpaceStrippedDocument;Lnet/sf/saxon/om/NodeInfo;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lnet/sf/saxon/tree/iter/EmptyIterator;->emptyIterator()Lnet/sf/saxon/tree/iter/EmptyIterator;

    move-result-object p0

    return-object p0

    :cond_3
    invoke-virtual {v1, p2}, Lnet/sf/saxon/tree/wrapper/SpaceStrippedDocument;->wrap(Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/tree/wrapper/SpaceStrippedNode;

    move-result-object p2

    :cond_4
    invoke-virtual {p0}, Lnet/sf/saxon/trans/XsltController;->getAccumulatorManager()Lnet/sf/saxon/expr/accum/AccumulatorManager;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lnet/sf/saxon/trans/XsltController;->getAccumulatorManager()Lnet/sf/saxon/expr/accum/AccumulatorManager;

    move-result-object p0

    invoke-interface {p2}, Lnet/sf/saxon/om/NodeInfo;->getTreeInfo()Lnet/sf/saxon/om/TreeInfo;

    move-result-object v0

    invoke-virtual {p1}, Lnet/sf/saxon/trans/Mode;->getAccumulators()Ljava/util/Set;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lnet/sf/saxon/expr/accum/AccumulatorManager;->setApplicableAccumulators(Lnet/sf/saxon/om/TreeInfo;Ljava/util/Set;)V

    :cond_5
    invoke-static {p2}, Lnet/sf/saxon/tree/iter/SingletonIterator;->makeIterator(Lnet/sf/saxon/om/Item;)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p0

    return-object p0

    :cond_6
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    const-string p1, "Source document and stylesheet must use the same or compatible Configurations"

    const-string p2, "SXXP0004"

    invoke-direct {p0, p1, p2}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p0

    :cond_7
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    const-string p1, "The supplied source document must be associated with a Configuration"

    invoke-direct {p0, p1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    invoke-static {p2}, Lnet/sf/saxon/tree/iter/SingletonIterator;->makeIterator(Lnet/sf/saxon/om/Item;)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public declared-synchronized addUnavailableOutputDestination(Lnet/sf/saxon/om/DocumentKey;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lnet/sf/saxon/trans/XsltController;->u0:Ljava/util/HashSet;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lnet/sf/saxon/trans/XsltController;->u0:Ljava/util/HashSet;

    :cond_0
    iget-object v0, p0, Lnet/sf/saxon/trans/XsltController;->u0:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public applyStreamingTemplates(Ljavax/xml/transform/Source;Lnet/sf/saxon/event/Receiver;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/Controller;->checkReadiness()V

    invoke-virtual {p0, p2}, Lnet/sf/saxon/trans/XsltController;->n(Lnet/sf/saxon/event/Receiver;)Lnet/sf/saxon/event/ComplexContentOutputter;

    move-result-object p2

    const/4 v6, 0x0

    :try_start_0
    invoke-virtual {p0}, Lnet/sf/saxon/Controller;->getSchemaValidationMode()I

    instance-of v0, p1, Lnet/sf/saxon/lib/AugmentedSource;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lnet/sf/saxon/lib/AugmentedSource;

    invoke-virtual {v0}, Lnet/sf/saxon/lib/AugmentedSource;->isPleaseCloseAfterUse()Z

    move-result v0
    :try_end_0
    .catch Lnet/sf/saxon/expr/instruct/TerminationException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Lnet/sf/saxon/trans/UncheckedXPathException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    move-object v1, p1

    check-cast v1, Lnet/sf/saxon/lib/AugmentedSource;

    invoke-virtual {v1}, Lnet/sf/saxon/lib/AugmentedSource;->getSchemaValidation()I

    move-object v1, p1

    check-cast v1, Lnet/sf/saxon/lib/AugmentedSource;

    invoke-virtual {v1}, Lnet/sf/saxon/lib/AugmentedSource;->getContainedSource()Ljavax/xml/transform/Source;

    move-result-object v1
    :try_end_1
    .catch Lnet/sf/saxon/expr/instruct/TerminationException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lnet/sf/saxon/trans/UncheckedXPathException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move v7, v0

    goto :goto_0

    :catch_0
    move-exception p2

    goto/16 :goto_5

    :catch_1
    move-exception p2

    goto/16 :goto_7

    :catch_2
    move-exception p2

    goto/16 :goto_9

    :cond_0
    move-object v1, p1

    move v7, v6

    :goto_0
    :try_start_2
    invoke-virtual {p0}, Lnet/sf/saxon/Controller;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v8

    invoke-virtual {v8}, Lnet/sf/saxon/Configuration;->getSourceResolver()Lnet/sf/saxon/lib/SourceResolver;

    move-result-object v0

    invoke-interface {v0, v1, v8}, Lnet/sf/saxon/lib/SourceResolver;->resolveSource(Ljavax/xml/transform/Source;Lnet/sf/saxon/Configuration;)Lnet/sf/saxon/lib/ActiveSource;

    move-result-object v0

    if-eqz v0, :cond_1

    move-object v9, v0

    goto :goto_1

    :cond_1
    move-object v9, v1

    :goto_1
    iget-object v0, p0, Lnet/sf/saxon/trans/XsltController;->v0:Lnet/sf/saxon/expr/Component$M;

    invoke-virtual {v0}, Lnet/sf/saxon/expr/Component$M;->getActor()Lnet/sf/saxon/trans/Mode;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/trans/Mode;->isDeclaredStreamable()Z

    move-result v0

    if-eqz v0, :cond_a

    instance-of v0, p1, Ljavax/xml/transform/sax/SAXSource;

    const/4 v10, 0x0

    if-eqz v0, :cond_2

    sget-object v0, Lnet/sf/saxon/lib/Feature;->IGNORE_SAX_SOURCE_PARSER:Lnet/sf/saxon/lib/Feature;

    invoke-virtual {v8, v0}, Lnet/sf/saxon/Configuration;->getBooleanProperty(Lnet/sf/saxon/lib/Feature;)Z

    move-result v0

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Ljavax/xml/transform/sax/SAXSource;

    invoke-virtual {v0, v10}, Ljavax/xml/transform/sax/SAXSource;->setXMLReader(Lorg/xml/sax/XMLReader;)V

    :cond_2
    invoke-virtual {p0}, Lnet/sf/saxon/Controller;->newXPathContext()Lnet/sf/saxon/expr/XPathContextMajor;

    move-result-object v11

    invoke-virtual {v11}, Lnet/sf/saxon/expr/XPathContextMajor;->createThreadManager()V

    invoke-virtual {v11, p0}, Lnet/sf/saxon/expr/XPathContextMajor;->setOrigin(Lnet/sf/saxon/expr/ContextOriginator;)V

    iget-object v0, p0, Lnet/sf/saxon/trans/XsltController;->x0:Ljava/util/Map;

    if-eqz v0, :cond_3

    new-instance v0, Lnet/sf/saxon/expr/instruct/ParameterSet;

    iget-object v1, p0, Lnet/sf/saxon/trans/XsltController;->x0:Ljava/util/Map;

    invoke-direct {v0, v1}, Lnet/sf/saxon/expr/instruct/ParameterSet;-><init>(Ljava/util/Map;)V

    move-object v2, v0

    goto :goto_2

    :cond_3
    move-object v2, v10

    :goto_2
    iget-object v0, p0, Lnet/sf/saxon/trans/XsltController;->y0:Ljava/util/Map;

    if-eqz v0, :cond_4

    new-instance v0, Lnet/sf/saxon/expr/instruct/ParameterSet;

    iget-object v1, p0, Lnet/sf/saxon/trans/XsltController;->y0:Ljava/util/Map;

    invoke-direct {v0, v1}, Lnet/sf/saxon/expr/instruct/ParameterSet;-><init>(Ljava/util/Map;)V

    move-object v3, v0

    goto :goto_3

    :cond_4
    move-object v3, v10

    :goto_3
    iget-object v0, p0, Lnet/sf/saxon/trans/XsltController;->v0:Lnet/sf/saxon/expr/Component$M;

    invoke-virtual {v0}, Lnet/sf/saxon/expr/Component$M;->getActor()Lnet/sf/saxon/trans/Mode;

    move-result-object v1

    move-object v0, v8

    move-object v4, p2

    move-object v5, v11

    invoke-virtual/range {v0 .. v5}, Lnet/sf/saxon/Configuration;->makeStreamingTransformer(Lnet/sf/saxon/trans/Mode;Lnet/sf/saxon/expr/instruct/ParameterSet;Lnet/sf/saxon/expr/instruct/ParameterSet;Lnet/sf/saxon/event/Outputter;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/event/Receiver;

    move-result-object v0

    invoke-virtual {v8}, Lnet/sf/saxon/Configuration;->isStripsAllWhiteSpace()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {p0}, Lnet/sf/saxon/Controller;->isStylesheetContainingStripSpace()Z

    move-result v1

    if-eqz v1, :cond_6

    :cond_5
    invoke-virtual {p0, v0}, Lnet/sf/saxon/Controller;->makeStripper(Lnet/sf/saxon/event/Receiver;)Lnet/sf/saxon/event/Stripper;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Lnet/sf/saxon/event/Receiver;->getPipelineConfiguration()Lnet/sf/saxon/event/PipelineConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sf/saxon/event/PipelineConfiguration;->getParseOptions()Lnet/sf/saxon/lib/ParseOptions;

    move-result-object v1

    iget v2, p0, Lnet/sf/saxon/Controller;->validationMode:I

    invoke-virtual {v1, v2}, Lnet/sf/saxon/lib/ParseOptions;->setSchemaValidationMode(I)V

    invoke-virtual {p0}, Lnet/sf/saxon/Controller;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sf/saxon/Configuration;->isTiming()Z

    move-result v1
    :try_end_2
    .catch Lnet/sf/saxon/expr/instruct/TerminationException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Lnet/sf/saxon/trans/UncheckedXPathException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string v2, "Streaming "

    if-eqz v1, :cond_7

    :try_start_3
    invoke-virtual {p0}, Lnet/sf/saxon/Controller;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v3

    invoke-virtual {v3}, Lnet/sf/saxon/Configuration;->getLogger()Lnet/sf/saxon/lib/Logger;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljavax/xml/transform/Source;->getSystemId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lnet/sf/saxon/lib/Logger;->info(Ljava/lang/String;)V
    :try_end_3
    .catch Lnet/sf/saxon/expr/instruct/TerminationException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Lnet/sf/saxon/trans/UncheckedXPathException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_7
    :try_start_4
    invoke-static {v9, v0, v10}, Lnet/sf/saxon/event/Sender;->send(Ljavax/xml/transform/Source;Lnet/sf/saxon/event/Receiver;Lnet/sf/saxon/lib/ParseOptions;)V
    :try_end_4
    .catch Lnet/sf/saxon/trans/QuitParsingException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Lnet/sf/saxon/expr/instruct/TerminationException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Lnet/sf/saxon/trans/UncheckedXPathException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_4

    :catch_3
    if-eqz v1, :cond_8

    :try_start_5
    invoke-virtual {p0}, Lnet/sf/saxon/Controller;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/Configuration;->getLogger()Lnet/sf/saxon/lib/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljavax/xml/transform/Source;->getSystemId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " : early exit"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/sf/saxon/lib/Logger;->info(Ljava/lang/String;)V

    :cond_8
    :goto_4
    invoke-virtual {v11}, Lnet/sf/saxon/expr/XPathContextMajor;->waitForChildThreads()V

    invoke-virtual {p2}, Lnet/sf/saxon/event/ComplexContentOutputter;->close()V
    :try_end_5
    .catch Lnet/sf/saxon/expr/instruct/TerminationException; {:try_start_5 .. :try_end_5} :catch_6
    .catch Lnet/sf/saxon/trans/UncheckedXPathException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    iput-boolean v6, p0, Lnet/sf/saxon/Controller;->inUse:Z

    if-eqz v7, :cond_9

    instance-of p2, p1, Lnet/sf/saxon/lib/AugmentedSource;

    if-eqz p2, :cond_9

    check-cast p1, Lnet/sf/saxon/lib/AugmentedSource;

    invoke-virtual {p1}, Lnet/sf/saxon/lib/AugmentedSource;->close()V

    :cond_9
    iget-object p0, p0, Lnet/sf/saxon/Controller;->traceListener:Lnet/sf/saxon/lib/TraceListener;

    if-eqz p0, :cond_d

    goto :goto_6

    :cond_a
    :try_start_6
    new-instance p2, Ljava/lang/IllegalArgumentException;

    const-string v0, "Initial mode is not streamable"

    invoke-direct {p2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_6
    .catch Lnet/sf/saxon/expr/instruct/TerminationException; {:try_start_6 .. :try_end_6} :catch_6
    .catch Lnet/sf/saxon/trans/UncheckedXPathException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :catchall_0
    move-exception p2

    move v0, v7

    goto :goto_a

    :catch_4
    move-exception p2

    move v0, v7

    goto :goto_5

    :catch_5
    move-exception p2

    move v0, v7

    goto :goto_7

    :catch_6
    move-exception p2

    move v0, v7

    goto :goto_9

    :catchall_1
    move-exception p2

    move v0, v6

    goto :goto_a

    :catch_7
    move-exception p2

    move v0, v6

    :goto_5
    :try_start_7
    invoke-virtual {p0, p2}, Lnet/sf/saxon/Controller;->handleXPathException(Lnet/sf/saxon/trans/XPathException;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    iput-boolean v6, p0, Lnet/sf/saxon/Controller;->inUse:Z

    if-eqz v0, :cond_b

    instance-of p2, p1, Lnet/sf/saxon/lib/AugmentedSource;

    if-eqz p2, :cond_b

    check-cast p1, Lnet/sf/saxon/lib/AugmentedSource;

    invoke-virtual {p1}, Lnet/sf/saxon/lib/AugmentedSource;->close()V

    :cond_b
    iget-object p0, p0, Lnet/sf/saxon/Controller;->traceListener:Lnet/sf/saxon/lib/TraceListener;

    if-eqz p0, :cond_d

    :goto_6
    invoke-interface {p0}, Lnet/sf/saxon/lib/TraceListener;->close()V

    goto :goto_8

    :catch_8
    move-exception p2

    move v0, v6

    :goto_7
    :try_start_8
    invoke-virtual {p2}, Lnet/sf/saxon/trans/UncheckedXPathException;->getXPathException()Lnet/sf/saxon/trans/XPathException;

    move-result-object p2

    invoke-virtual {p0, p2}, Lnet/sf/saxon/Controller;->handleXPathException(Lnet/sf/saxon/trans/XPathException;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    iput-boolean v6, p0, Lnet/sf/saxon/Controller;->inUse:Z

    if-eqz v0, :cond_c

    instance-of p2, p1, Lnet/sf/saxon/lib/AugmentedSource;

    if-eqz p2, :cond_c

    check-cast p1, Lnet/sf/saxon/lib/AugmentedSource;

    invoke-virtual {p1}, Lnet/sf/saxon/lib/AugmentedSource;->close()V

    :cond_c
    iget-object p0, p0, Lnet/sf/saxon/Controller;->traceListener:Lnet/sf/saxon/lib/TraceListener;

    if-eqz p0, :cond_d

    goto :goto_6

    :cond_d
    :goto_8
    return-void

    :catch_9
    move-exception p2

    move v0, v6

    :goto_9
    :try_start_9
    invoke-virtual {p2}, Lnet/sf/saxon/trans/XPathException;->hasBeenReported()Z

    move-result v1

    if-nez v1, :cond_e

    invoke-virtual {p0, p2}, Lnet/sf/saxon/Controller;->reportFatalError(Lnet/sf/saxon/trans/XPathException;)V

    :cond_e
    throw p2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :catchall_2
    move-exception p2

    :goto_a
    iput-boolean v6, p0, Lnet/sf/saxon/Controller;->inUse:Z

    if-eqz v0, :cond_f

    instance-of v0, p1, Lnet/sf/saxon/lib/AugmentedSource;

    if-eqz v0, :cond_f

    check-cast p1, Lnet/sf/saxon/lib/AugmentedSource;

    invoke-virtual {p1}, Lnet/sf/saxon/lib/AugmentedSource;->close()V

    :cond_f
    iget-object p0, p0, Lnet/sf/saxon/Controller;->traceListener:Lnet/sf/saxon/lib/TraceListener;

    if-eqz p0, :cond_10

    invoke-interface {p0}, Lnet/sf/saxon/lib/TraceListener;->close()V

    :cond_10
    throw p2
.end method

.method public applyTemplates(Lnet/sf/saxon/om/Sequence;Lnet/sf/saxon/event/Receiver;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/Controller;->checkReadiness()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, p2}, Lnet/sf/saxon/trans/XsltController;->n(Lnet/sf/saxon/event/Receiver;)Lnet/sf/saxon/event/ComplexContentOutputter;

    move-result-object p2

    invoke-virtual {p0}, Lnet/sf/saxon/Controller;->newXPathContext()Lnet/sf/saxon/expr/XPathContextMajor;

    move-result-object v9

    invoke-virtual {v9}, Lnet/sf/saxon/expr/XPathContextMajor;->createThreadManager()V

    invoke-virtual {v9, p0}, Lnet/sf/saxon/expr/XPathContextMajor;->setOrigin(Lnet/sf/saxon/expr/ContextOriginator;)V

    invoke-virtual {p0}, Lnet/sf/saxon/trans/XsltController;->getInitialMode()Lnet/sf/saxon/trans/Mode;

    move-result-object v2
    :try_end_0
    .catch Lnet/sf/saxon/expr/instruct/TerminationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lnet/sf/saxon/trans/UncheckedXPathException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v3, "XTDE0045"

    const-string v4, "Requested initial mode "

    if-nez v2, :cond_1

    :try_start_1
    new-instance p1, Lnet/sf/saxon/trans/XPathException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lnet/sf/saxon/trans/XsltController;->v0:Lnet/sf/saxon/expr/Component$M;

    if-nez v2, :cond_0

    const-string v2, "#unnamed"

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Lnet/sf/saxon/expr/Component$M;->getActor()Lnet/sf/saxon/trans/Mode;

    move-result-object v2

    invoke-virtual {v2}, Lnet/sf/saxon/trans/Mode;->getModeName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v2

    invoke-virtual {v2}, Lnet/sf/saxon/om/StructuredQName;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " does not exist"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, v3}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1

    :cond_1
    iget-object v5, p0, Lnet/sf/saxon/Controller;->executable:Lnet/sf/saxon/expr/instruct/Executable;

    check-cast v5, Lnet/sf/saxon/PreparedStylesheet;

    iget-object v6, p0, Lnet/sf/saxon/trans/XsltController;->v0:Lnet/sf/saxon/expr/Component$M;

    invoke-virtual {v5, v6}, Lnet/sf/saxon/PreparedStylesheet;->isEligibleInitialMode(Lnet/sf/saxon/expr/Component$M;)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {p0, v2}, Lnet/sf/saxon/trans/XsltController;->o(Lnet/sf/saxon/trans/Mode;)V

    iget-object v3, p0, Lnet/sf/saxon/trans/XsltController;->x0:Ljava/util/Map;

    if-eqz v3, :cond_2

    new-instance v3, Lnet/sf/saxon/expr/instruct/ParameterSet;

    iget-object v4, p0, Lnet/sf/saxon/trans/XsltController;->x0:Ljava/util/Map;

    invoke-direct {v3, v4}, Lnet/sf/saxon/expr/instruct/ParameterSet;-><init>(Ljava/util/Map;)V

    goto :goto_1

    :cond_2
    move-object v3, v1

    :goto_1
    iget-object v4, p0, Lnet/sf/saxon/trans/XsltController;->y0:Ljava/util/Map;

    if-eqz v4, :cond_3

    new-instance v4, Lnet/sf/saxon/expr/instruct/ParameterSet;

    iget-object v5, p0, Lnet/sf/saxon/trans/XsltController;->y0:Ljava/util/Map;

    invoke-direct {v4, v5}, Lnet/sf/saxon/expr/instruct/ParameterSet;-><init>(Ljava/util/Map;)V

    goto :goto_2

    :cond_3
    move-object v4, v1

    :goto_2
    invoke-interface {p1}, Lnet/sf/saxon/om/Sequence;->iterate()Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p1

    invoke-virtual {p0, v2}, Lnet/sf/saxon/trans/XsltController;->j(Lnet/sf/saxon/trans/Mode;)Lnet/sf/saxon/expr/MappingFunction;

    move-result-object v5

    new-instance v6, Lnet/sf/saxon/expr/MappingIterator;

    invoke-direct {v6, p1, v5}, Lnet/sf/saxon/expr/MappingIterator;-><init>(Lnet/sf/saxon/om/SequenceIterator;Lnet/sf/saxon/expr/MappingFunction;)V

    invoke-virtual {v9, v6}, Lnet/sf/saxon/expr/XPathContextMinor;->trackFocus(Lnet/sf/saxon/om/SequenceIterator;)Lnet/sf/saxon/om/FocusIterator;

    iget-object p1, p0, Lnet/sf/saxon/trans/XsltController;->v0:Lnet/sf/saxon/expr/Component$M;

    invoke-virtual {v9, p1}, Lnet/sf/saxon/expr/XPathContextMajor;->setCurrentMode(Lnet/sf/saxon/expr/Component$M;)V

    iget-object p1, p0, Lnet/sf/saxon/trans/XsltController;->v0:Lnet/sf/saxon/expr/Component$M;

    invoke-virtual {v9, p1}, Lnet/sf/saxon/expr/XPathContextMajor;->setCurrentComponent(Lnet/sf/saxon/expr/Component;)V

    const/4 v5, 0x0

    sget-object v8, Lnet/sf/saxon/expr/parser/Loc;->NONE:Lnet/sf/saxon/expr/parser/Loc;

    move-object v6, p2

    move-object v7, v9

    invoke-virtual/range {v2 .. v8}, Lnet/sf/saxon/trans/Mode;->applyTemplates(Lnet/sf/saxon/expr/instruct/ParameterSet;Lnet/sf/saxon/expr/instruct/ParameterSet;Lnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/event/Outputter;Lnet/sf/saxon/expr/XPathContextMajor;Lnet/sf/saxon/s9api/Location;)Lnet/sf/saxon/expr/instruct/TailCall;

    move-result-object p1

    :goto_3
    if-eqz p1, :cond_4

    invoke-interface {p1}, Lnet/sf/saxon/expr/instruct/TailCall;->processLeavingTail()Lnet/sf/saxon/expr/instruct/TailCall;

    move-result-object p1

    goto :goto_3

    :cond_4
    invoke-virtual {v9}, Lnet/sf/saxon/expr/XPathContextMajor;->waitForChildThreads()V

    invoke-virtual {p2}, Lnet/sf/saxon/event/ComplexContentOutputter;->close()V
    :try_end_1
    .catch Lnet/sf/saxon/expr/instruct/TerminationException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lnet/sf/saxon/trans/UncheckedXPathException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iput-boolean v0, p0, Lnet/sf/saxon/Controller;->inUse:Z

    iget-object p1, p0, Lnet/sf/saxon/Controller;->traceListener:Lnet/sf/saxon/lib/TraceListener;

    if-eqz p1, :cond_6

    goto :goto_4

    :cond_5
    :try_start_2
    new-instance p1, Lnet/sf/saxon/trans/XPathException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lnet/sf/saxon/trans/Mode;->getModeName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v2

    invoke-virtual {v2}, Lnet/sf/saxon/om/StructuredQName;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is not public or final"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, v3}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1
    :try_end_2
    .catch Lnet/sf/saxon/expr/instruct/TerminationException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lnet/sf/saxon/trans/UncheckedXPathException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    goto :goto_6

    :catch_0
    move-exception p1

    :try_start_3
    invoke-virtual {p0, p1}, Lnet/sf/saxon/Controller;->handleXPathException(Lnet/sf/saxon/trans/XPathException;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    iput-boolean v0, p0, Lnet/sf/saxon/Controller;->inUse:Z

    iget-object p1, p0, Lnet/sf/saxon/Controller;->traceListener:Lnet/sf/saxon/lib/TraceListener;

    if-eqz p1, :cond_6

    :goto_4
    invoke-interface {p1}, Lnet/sf/saxon/lib/TraceListener;->close()V

    :cond_6
    iput-object v1, p0, Lnet/sf/saxon/Controller;->principalResultURI:Ljava/lang/String;

    goto :goto_5

    :catch_1
    move-exception p1

    :try_start_4
    invoke-virtual {p1}, Lnet/sf/saxon/trans/UncheckedXPathException;->getXPathException()Lnet/sf/saxon/trans/XPathException;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/Controller;->handleXPathException(Lnet/sf/saxon/trans/XPathException;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    iput-boolean v0, p0, Lnet/sf/saxon/Controller;->inUse:Z

    iget-object p1, p0, Lnet/sf/saxon/Controller;->traceListener:Lnet/sf/saxon/lib/TraceListener;

    if-eqz p1, :cond_6

    goto :goto_4

    :goto_5
    return-void

    :catch_2
    move-exception p1

    :try_start_5
    invoke-virtual {p1}, Lnet/sf/saxon/trans/XPathException;->hasBeenReported()Z

    move-result p2

    if-nez p2, :cond_7

    invoke-virtual {p0, p1}, Lnet/sf/saxon/Controller;->reportFatalError(Lnet/sf/saxon/trans/XPathException;)V

    :cond_7
    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :goto_6
    iput-boolean v0, p0, Lnet/sf/saxon/Controller;->inUse:Z

    iget-object p2, p0, Lnet/sf/saxon/Controller;->traceListener:Lnet/sf/saxon/lib/TraceListener;

    if-eqz p2, :cond_8

    invoke-interface {p2}, Lnet/sf/saxon/lib/TraceListener;->close()V

    :cond_8
    iput-object v1, p0, Lnet/sf/saxon/Controller;->principalResultURI:Ljava/lang/String;

    throw p1
.end method

.method public callTemplate(Lnet/sf/saxon/om/StructuredQName;Lnet/sf/saxon/event/Receiver;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/Controller;->checkReadiness()V

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p2}, Lnet/sf/saxon/trans/XsltController;->n(Lnet/sf/saxon/event/Receiver;)Lnet/sf/saxon/event/ComplexContentOutputter;

    move-result-object p2

    invoke-virtual {p0}, Lnet/sf/saxon/Controller;->newXPathContext()Lnet/sf/saxon/expr/XPathContextMajor;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sf/saxon/expr/XPathContextMajor;->createThreadManager()V

    invoke-virtual {v1, p0}, Lnet/sf/saxon/expr/XPathContextMajor;->setOrigin(Lnet/sf/saxon/expr/ContextOriginator;)V

    iget-object v2, p0, Lnet/sf/saxon/Controller;->globalContextItem:Lnet/sf/saxon/om/Item;

    if-eqz v2, :cond_0

    new-instance v3, Lnet/sf/saxon/tree/iter/ManualIterator;

    invoke-direct {v3, v2}, Lnet/sf/saxon/tree/iter/ManualIterator;-><init>(Lnet/sf/saxon/om/Item;)V

    invoke-virtual {v1, v3}, Lnet/sf/saxon/expr/XPathContextMinor;->setCurrentIterator(Lnet/sf/saxon/om/FocusIterator;)V

    :cond_0
    iget-object v2, p0, Lnet/sf/saxon/trans/XsltController;->x0:Ljava/util/Map;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    new-instance v2, Lnet/sf/saxon/expr/instruct/ParameterSet;

    iget-object v4, p0, Lnet/sf/saxon/trans/XsltController;->x0:Ljava/util/Map;

    invoke-direct {v2, v4}, Lnet/sf/saxon/expr/instruct/ParameterSet;-><init>(Ljava/util/Map;)V

    goto :goto_0

    :cond_1
    move-object v2, v3

    :goto_0
    iget-object v4, p0, Lnet/sf/saxon/trans/XsltController;->y0:Ljava/util/Map;

    if-eqz v4, :cond_2

    new-instance v3, Lnet/sf/saxon/expr/instruct/ParameterSet;

    iget-object v4, p0, Lnet/sf/saxon/trans/XsltController;->y0:Ljava/util/Map;

    invoke-direct {v3, v4}, Lnet/sf/saxon/expr/instruct/ParameterSet;-><init>(Ljava/util/Map;)V

    :cond_2
    iget-object v4, p0, Lnet/sf/saxon/Controller;->executable:Lnet/sf/saxon/expr/instruct/Executable;

    invoke-virtual {v4}, Lnet/sf/saxon/expr/instruct/Executable;->getTopLevelPackage()Lnet/sf/saxon/expr/PackageData;

    move-result-object v4

    check-cast v4, Lnet/sf/saxon/style/StylesheetPackage;

    new-instance v5, Lnet/sf/saxon/trans/SymbolicName;

    const/16 v6, 0xd2

    invoke-direct {v5, v6, p1}, Lnet/sf/saxon/trans/SymbolicName;-><init>(ILnet/sf/saxon/om/StructuredQName;)V

    invoke-virtual {v4, v5}, Lnet/sf/saxon/style/StylesheetPackage;->getComponent(Lnet/sf/saxon/trans/SymbolicName;)Lnet/sf/saxon/expr/Component;

    move-result-object v5
    :try_end_0
    .catch Lnet/sf/saxon/trans/UncheckedXPathException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v6, "XTDE0040"

    const-string v7, "Template "

    if-eqz v5, :cond_6

    :try_start_1
    invoke-virtual {v4}, Lnet/sf/saxon/style/StylesheetPackage;->isImplicitPackage()Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {v5}, Lnet/sf/saxon/expr/Component;->getVisibility()Lnet/sf/saxon/trans/Visibility;

    move-result-object v4

    sget-object v8, Lnet/sf/saxon/trans/Visibility;->PUBLIC:Lnet/sf/saxon/trans/Visibility;

    if-eq v4, v8, :cond_4

    invoke-virtual {v5}, Lnet/sf/saxon/expr/Component;->getVisibility()Lnet/sf/saxon/trans/Visibility;

    move-result-object v4

    sget-object v8, Lnet/sf/saxon/trans/Visibility;->FINAL:Lnet/sf/saxon/trans/Visibility;

    if-ne v4, v8, :cond_3

    goto :goto_1

    :cond_3
    new-instance p2, Lnet/sf/saxon/trans/XPathException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lnet/sf/saxon/om/StructuredQName;->getDisplayName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lnet/sf/saxon/expr/Component;->getVisibility()Lnet/sf/saxon/trans/Visibility;

    move-result-object p1

    invoke-static {p1}, Lnet/sf/saxon/trans/Err;->describeVisibility(Lnet/sf/saxon/trans/Visibility;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1, v6}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p2

    :cond_4
    :goto_1
    invoke-virtual {v5}, Lnet/sf/saxon/expr/Component;->getActor()Lnet/sf/saxon/expr/instruct/Actor;

    move-result-object p1

    check-cast p1, Lnet/sf/saxon/expr/instruct/NamedTemplate;

    invoke-virtual {v1}, Lnet/sf/saxon/expr/XPathContextMajor;->newContext()Lnet/sf/saxon/expr/XPathContextMajor;

    move-result-object v4

    invoke-virtual {v1, p0}, Lnet/sf/saxon/expr/XPathContextMajor;->setOrigin(Lnet/sf/saxon/expr/ContextOriginator;)V

    invoke-virtual {v4, v5}, Lnet/sf/saxon/expr/XPathContextMajor;->setCurrentComponent(Lnet/sf/saxon/expr/Component;)V

    invoke-virtual {p1}, Lnet/sf/saxon/expr/instruct/Actor;->getStackFrameMap()Lnet/sf/saxon/expr/instruct/SlotManager;

    move-result-object v5

    invoke-virtual {v4, v5}, Lnet/sf/saxon/expr/XPathContextMajor;->openStackFrame(Lnet/sf/saxon/expr/instruct/SlotManager;)V

    invoke-virtual {v4, v2}, Lnet/sf/saxon/expr/XPathContextMajor;->setLocalParameters(Lnet/sf/saxon/expr/instruct/ParameterSet;)V

    invoke-virtual {v4, v3}, Lnet/sf/saxon/expr/XPathContextMajor;->setTunnelParameters(Lnet/sf/saxon/expr/instruct/ParameterSet;)V

    invoke-virtual {p1, p2, v4}, Lnet/sf/saxon/expr/instruct/NamedTemplate;->expand(Lnet/sf/saxon/event/Outputter;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/expr/instruct/TailCall;

    move-result-object p1

    :goto_2
    if-eqz p1, :cond_5

    invoke-interface {p1}, Lnet/sf/saxon/expr/instruct/TailCall;->processLeavingTail()Lnet/sf/saxon/expr/instruct/TailCall;

    move-result-object p1

    goto :goto_2

    :cond_5
    invoke-virtual {v1}, Lnet/sf/saxon/expr/XPathContextMajor;->waitForChildThreads()V

    invoke-virtual {p2}, Lnet/sf/saxon/event/ComplexContentOutputter;->close()V
    :try_end_1
    .catch Lnet/sf/saxon/trans/UncheckedXPathException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object p1, p0, Lnet/sf/saxon/Controller;->traceListener:Lnet/sf/saxon/lib/TraceListener;

    if-eqz p1, :cond_7

    goto :goto_3

    :cond_6
    :try_start_2
    new-instance p2, Lnet/sf/saxon/trans/XPathException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lnet/sf/saxon/om/StructuredQName;->getDisplayName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " does not exist"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1, v6}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p2
    :try_end_2
    .catch Lnet/sf/saxon/trans/UncheckedXPathException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    goto :goto_5

    :catch_0
    move-exception p1

    :try_start_3
    invoke-virtual {p0, p1}, Lnet/sf/saxon/Controller;->handleXPathException(Lnet/sf/saxon/trans/XPathException;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    iget-object p1, p0, Lnet/sf/saxon/Controller;->traceListener:Lnet/sf/saxon/lib/TraceListener;

    if-eqz p1, :cond_7

    :goto_3
    invoke-interface {p1}, Lnet/sf/saxon/lib/TraceListener;->close()V

    :cond_7
    iput-boolean v0, p0, Lnet/sf/saxon/Controller;->inUse:Z

    goto :goto_4

    :catch_1
    move-exception p1

    :try_start_4
    invoke-virtual {p1}, Lnet/sf/saxon/trans/UncheckedXPathException;->getXPathException()Lnet/sf/saxon/trans/XPathException;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/Controller;->handleXPathException(Lnet/sf/saxon/trans/XPathException;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    iget-object p1, p0, Lnet/sf/saxon/Controller;->traceListener:Lnet/sf/saxon/lib/TraceListener;

    if-eqz p1, :cond_7

    goto :goto_3

    :goto_4
    return-void

    :goto_5
    iget-object p2, p0, Lnet/sf/saxon/Controller;->traceListener:Lnet/sf/saxon/lib/TraceListener;

    if-eqz p2, :cond_8

    invoke-interface {p2}, Lnet/sf/saxon/lib/TraceListener;->close()V

    :cond_8
    iput-boolean v0, p0, Lnet/sf/saxon/Controller;->inUse:Z

    throw p1
.end method

.method public declared-synchronized checkUniqueOutputDestination(Lnet/sf/saxon/om/DocumentKey;)Z
    .locals 3

    monitor-enter p0

    const/4 v0, 0x1

    if-nez p1, :cond_0

    monitor-exit p0

    return v0

    :cond_0
    :try_start_0
    iget-object v1, p0, Lnet/sf/saxon/trans/XsltController;->u0:Ljava/util/HashSet;

    if-nez v1, :cond_1

    new-instance v1, Ljava/util/HashSet;

    const/16 v2, 0x14

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(I)V

    iput-object v1, p0, Lnet/sf/saxon/trans/XsltController;->u0:Ljava/util/HashSet;

    :cond_1
    iget-object v1, p0, Lnet/sf/saxon/trans/XsltController;->u0:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    xor-int/2addr p1, v0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized clearPerTransformationData()V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Lnet/sf/saxon/Controller;->clearPerTransformationData()V

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/sf/saxon/Controller;->principalResult:Lnet/sf/saxon/event/Receiver;

    iput-object v0, p0, Lnet/sf/saxon/trans/XsltController;->u0:Ljava/util/HashSet;

    iget-object v0, p0, Lnet/sf/saxon/trans/XsltController;->k0:Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getAccumulatorManager()Lnet/sf/saxon/expr/accum/AccumulatorManager;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/trans/XsltController;->A0:Lnet/sf/saxon/expr/accum/AccumulatorManager;

    return-object p0
.end method

.method public declared-synchronized getAttributeSetEvaluationStack()Ljava/util/Stack;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Stack<",
            "Lnet/sf/saxon/expr/instruct/AttributeSet;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    iget-object v2, p0, Lnet/sf/saxon/trans/XsltController;->z0:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    new-instance v1, Lcom/sunia/HTREnginev2/ywo;

    invoke-direct {v1}, Lcom/sunia/HTREnginev2/ywo;-><init>()V

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Stack;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getGatekeeper()Lnet/sf/saxon/serialize/PrincipalOutputGatekeeper;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/trans/XsltController;->B0:Lnet/sf/saxon/serialize/PrincipalOutputGatekeeper;

    return-object p0
.end method

.method public getInitialMode()Lnet/sf/saxon/trans/Mode;
    .locals 4

    iget-object v0, p0, Lnet/sf/saxon/trans/XsltController;->v0:Lnet/sf/saxon/expr/Component$M;

    if-nez v0, :cond_1

    iget-object v0, p0, Lnet/sf/saxon/Controller;->executable:Lnet/sf/saxon/expr/instruct/Executable;

    invoke-virtual {v0}, Lnet/sf/saxon/expr/instruct/Executable;->getTopLevelPackage()Lnet/sf/saxon/expr/PackageData;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/style/StylesheetPackage;

    invoke-virtual {v0}, Lnet/sf/saxon/style/StylesheetPackage;->getDefaultMode()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v1

    if-nez v1, :cond_0

    sget-object v1, Lnet/sf/saxon/trans/Mode;->UNNAMED_MODE_NAME:Lnet/sf/saxon/om/StructuredQName;

    :cond_0
    new-instance v2, Lnet/sf/saxon/trans/SymbolicName;

    const/16 v3, 0xb4

    invoke-direct {v2, v3, v1}, Lnet/sf/saxon/trans/SymbolicName;-><init>(ILnet/sf/saxon/om/StructuredQName;)V

    invoke-virtual {v0, v2}, Lnet/sf/saxon/style/StylesheetPackage;->getComponent(Lnet/sf/saxon/trans/SymbolicName;)Lnet/sf/saxon/expr/Component;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/expr/Component$M;

    iput-object v0, p0, Lnet/sf/saxon/trans/XsltController;->v0:Lnet/sf/saxon/expr/Component$M;

    invoke-virtual {v0}, Lnet/sf/saxon/expr/Component$M;->getActor()Lnet/sf/saxon/trans/Mode;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {v0}, Lnet/sf/saxon/expr/Component$M;->getActor()Lnet/sf/saxon/trans/Mode;

    move-result-object p0

    return-object p0
.end method

.method public getInitialModeName()Lnet/sf/saxon/om/StructuredQName;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/trans/XsltController;->v0:Lnet/sf/saxon/expr/Component$M;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/expr/Component$M;->getActor()Lnet/sf/saxon/trans/Mode;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/trans/Mode;->getModeName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getInitialTemplateParameters(Z)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/Map<",
            "Lnet/sf/saxon/om/StructuredQName;",
            "Lnet/sf/saxon/om/Sequence;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-object p0, p0, Lnet/sf/saxon/trans/XsltController;->y0:Ljava/util/Map;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lnet/sf/saxon/trans/XsltController;->x0:Ljava/util/Map;

    :goto_0
    return-object p0
.end method

.method public getMessageCounters()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lnet/sf/saxon/om/StructuredQName;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/trans/XsltController;->k0:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/util/HashMap;

    iget-object p0, p0, Lnet/sf/saxon/trans/XsltController;->k0:Ljava/util/Map;

    invoke-direct {v1, p0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getMessageEmitter()Lnet/sf/saxon/event/Receiver;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public getMessageHandler()Ljava/util/function/Consumer;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/function/Consumer<",
            "Lnet/sf/saxon/s9api/Message;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lnet/sf/saxon/trans/XsltController;->E0:Ljava/util/function/Consumer;

    return-object p0
.end method

.method public getOutputURIResolver()Lnet/sf/saxon/lib/OutputURIResolver;
    .locals 2

    iget-object v0, p0, Lnet/sf/saxon/trans/XsltController;->t0:Lnet/sf/saxon/lib/ResultDocumentResolver;

    instance-of v1, v0, Lnet/sf/saxon/lib/OutputURIResolverWrapper;

    if-eqz v1, :cond_0

    check-cast v0, Lnet/sf/saxon/lib/OutputURIResolverWrapper;

    invoke-virtual {v0}, Lnet/sf/saxon/lib/OutputURIResolverWrapper;->getOutputURIResolver()Lnet/sf/saxon/lib/OutputURIResolver;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/Controller;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/Configuration;->getOutputURIResolver()Lnet/sf/saxon/lib/OutputURIResolver;

    move-result-object p0

    return-object p0
.end method

.method public getPrincipalDestination()Lnet/sf/saxon/s9api/Destination;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/trans/XsltController;->C0:Lnet/sf/saxon/s9api/Destination;

    return-object p0
.end method

.method public getResultDocumentResolver()Lnet/sf/saxon/lib/ResultDocumentResolver;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/trans/XsltController;->t0:Lnet/sf/saxon/lib/ResultDocumentResolver;

    return-object p0
.end method

.method public getStreamingReceiver(Lnet/sf/saxon/trans/Mode;Lnet/sf/saxon/event/Receiver;)Lnet/sf/saxon/event/Receiver;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/Controller;->checkReadiness()V

    invoke-virtual {p0, p2}, Lnet/sf/saxon/trans/XsltController;->n(Lnet/sf/saxon/event/Receiver;)Lnet/sf/saxon/event/ComplexContentOutputter;

    move-result-object p2

    invoke-virtual {p0}, Lnet/sf/saxon/Controller;->newXPathContext()Lnet/sf/saxon/expr/XPathContextMajor;

    move-result-object v5

    invoke-virtual {v5, p0}, Lnet/sf/saxon/expr/XPathContextMajor;->setOrigin(Lnet/sf/saxon/expr/ContextOriginator;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/sf/saxon/Controller;->globalContextItem:Lnet/sf/saxon/om/Item;

    invoke-virtual {p1}, Lnet/sf/saxon/trans/Mode;->isDeclaredStreamable()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lnet/sf/saxon/Controller;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v6

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, v6

    move-object v1, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lnet/sf/saxon/Configuration;->makeStreamingTransformer(Lnet/sf/saxon/trans/Mode;Lnet/sf/saxon/expr/instruct/ParameterSet;Lnet/sf/saxon/expr/instruct/ParameterSet;Lnet/sf/saxon/event/Outputter;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/event/Receiver;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {v6}, Lnet/sf/saxon/Configuration;->isStripsAllWhiteSpace()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/Controller;->isStylesheetContainingStripSpace()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0, p1}, Lnet/sf/saxon/Controller;->makeStripper(Lnet/sf/saxon/event/Receiver;)Lnet/sf/saxon/event/Stripper;

    move-result-object p1

    :cond_1
    invoke-virtual {p0}, Lnet/sf/saxon/Controller;->makePipelineConfiguration()Lnet/sf/saxon/event/PipelineConfiguration;

    move-result-object v0

    invoke-interface {p1, v0}, Lnet/sf/saxon/event/Receiver;->setPipelineConfiguration(Lnet/sf/saxon/event/PipelineConfiguration;)V

    new-instance v0, Lnet/sf/saxon/trans/XsltController$a;

    invoke-direct {v0, p0, p1, p2}, Lnet/sf/saxon/trans/XsltController$a;-><init>(Lnet/sf/saxon/trans/XsltController;Lnet/sf/saxon/event/Receiver;Lnet/sf/saxon/event/Outputter;)V

    return-object v0

    :cond_2
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    const-string p1, "Streaming requires Saxon-EE"

    invoke-direct {p0, p1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    const-string p1, "mode supplied to getStreamingReceiver() must be streamable"

    invoke-direct {p0, p1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getTemplateRuleTraceListener()Lnet/sf/saxon/trace/TemplateRuleTraceListener;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/trans/XsltController;->D0:Lnet/sf/saxon/trace/TemplateRuleTraceListener;

    return-object p0
.end method

.method public incrementMessageCounter(Lnet/sf/saxon/om/StructuredQName;)V
    .locals 3

    iget-object v0, p0, Lnet/sf/saxon/trans/XsltController;->k0:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lnet/sf/saxon/trans/XsltController;->k0:Ljava/util/Map;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object p0, p0, Lnet/sf/saxon/trans/XsltController;->k0:Ljava/util/Map;

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public isAssertionsEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lnet/sf/saxon/trans/XsltController;->q0:Z

    return p0
.end method

.method public declared-synchronized isUnusedOutputDestination(Lnet/sf/saxon/om/DocumentKey;)Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lnet/sf/saxon/trans/XsltController;->u0:Ljava/util/HashSet;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final j(Lnet/sf/saxon/trans/Mode;)Lnet/sf/saxon/expr/MappingFunction;
    .locals 1

    new-instance v0, Lcom/sunia/HTREnginev2/zwo;

    invoke-direct {v0, p0, p1}, Lcom/sunia/HTREnginev2/zwo;-><init>(Lnet/sf/saxon/trans/XsltController;Lnet/sf/saxon/trans/Mode;)V

    invoke-static {v0}, Lnet/sf/saxon/expr/SequenceMapper;->of(Lnet/sf/saxon/expr/SequenceMapper$Lambda;)Lnet/sf/saxon/expr/SequenceMapper;

    move-result-object p0

    return-object p0
.end method

.method public final k(Lnet/sf/saxon/Configuration;)V
    .locals 1

    new-instance v0, Lnet/sf/saxon/lib/StandardMessageHandler;

    invoke-direct {v0, p1}, Lnet/sf/saxon/lib/StandardMessageHandler;-><init>(Lnet/sf/saxon/Configuration;)V

    iput-object v0, p0, Lnet/sf/saxon/trans/XsltController;->E0:Ljava/util/function/Consumer;

    return-void
.end method

.method public makeMessageReceiver()Lnet/sf/saxon/event/Receiver;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public final n(Lnet/sf/saxon/event/Receiver;)Lnet/sf/saxon/event/ComplexContentOutputter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iput-object p1, p0, Lnet/sf/saxon/Controller;->principalResult:Lnet/sf/saxon/event/Receiver;

    iget-object v0, p0, Lnet/sf/saxon/Controller;->principalResultURI:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-interface {p1}, Ljavax/xml/transform/Result;->getSystemId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/Controller;->principalResultURI:Ljava/lang/String;

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/Controller;->getExecutable()Lnet/sf/saxon/expr/instruct/Executable;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/expr/instruct/Executable;->createsSecondaryResult()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lnet/sf/saxon/serialize/PrincipalOutputGatekeeper;

    invoke-direct {v0, p0, p1}, Lnet/sf/saxon/serialize/PrincipalOutputGatekeeper;-><init>(Lnet/sf/saxon/trans/XsltController;Lnet/sf/saxon/event/Receiver;)V

    iput-object v0, p0, Lnet/sf/saxon/trans/XsltController;->B0:Lnet/sf/saxon/serialize/PrincipalOutputGatekeeper;

    move-object p1, v0

    :cond_1
    new-instance p0, Lnet/sf/saxon/event/ComplexContentOutputter;

    invoke-direct {p0, p1}, Lnet/sf/saxon/event/ComplexContentOutputter;-><init>(Lnet/sf/saxon/event/Receiver;)V

    invoke-interface {p1}, Ljavax/xml/transform/Result;->getSystemId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/event/ComplexContentOutputter;->setSystemId(Ljava/lang/String;)V

    invoke-virtual {p0}, Lnet/sf/saxon/event/ComplexContentOutputter;->open()V

    return-object p0
.end method

.method public final o(Lnet/sf/saxon/trans/Mode;)V
    .locals 2

    invoke-virtual {p1}, Lnet/sf/saxon/trans/Mode;->isDeclaredStreamable()Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lnet/sf/saxon/trans/XsltController;->v0:Lnet/sf/saxon/expr/Component$M;

    if-nez v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/trans/XsltController;->getInitialMode()Lnet/sf/saxon/trans/Mode;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lnet/sf/saxon/trans/Mode;->getModeTitle(Z)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " is streamable, but the input is not supplied as a stream"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SXWN9000"

    sget-object v1, Lnet/sf/saxon/expr/parser/Loc;->NONE:Lnet/sf/saxon/expr/parser/Loc;

    invoke-virtual {p0, p1, v0, v1}, Lnet/sf/saxon/Controller;->warning(Ljava/lang/String;Ljava/lang/String;Lnet/sf/saxon/s9api/Location;)V

    :cond_1
    return-void
.end method

.method public preEvaluateGlobals(Lnet/sf/saxon/expr/XPathContext;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    return-void
.end method

.method public declared-synchronized releaseAttributeSetEvaluationStack()V
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    iget-object v2, p0, Lnet/sf/saxon/trans/XsltController;->z0:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized removeUnavailableOutputDestination(Lnet/sf/saxon/om/DocumentKey;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lnet/sf/saxon/trans/XsltController;->u0:Ljava/util/HashSet;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public reset()V
    .locals 3

    invoke-super {p0}, Lnet/sf/saxon/Controller;->reset()V

    invoke-virtual {p0}, Lnet/sf/saxon/Controller;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/Configuration;->getSchemaValidationMode()I

    move-result v1

    iput v1, p0, Lnet/sf/saxon/Controller;->validationMode:I

    new-instance v1, Lnet/sf/saxon/expr/accum/AccumulatorManager;

    invoke-direct {v1}, Lnet/sf/saxon/expr/accum/AccumulatorManager;-><init>()V

    iput-object v1, p0, Lnet/sf/saxon/trans/XsltController;->A0:Lnet/sf/saxon/expr/accum/AccumulatorManager;

    const/4 v1, 0x0

    iput-object v1, p0, Lnet/sf/saxon/Controller;->traceListener:Lnet/sf/saxon/lib/TraceListener;

    :try_start_0
    invoke-virtual {v0}, Lnet/sf/saxon/Configuration;->makeTraceListener()Lnet/sf/saxon/lib/TraceListener;

    move-result-object v2
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_0

    invoke-virtual {p0, v2}, Lnet/sf/saxon/Controller;->addTraceListener(Lnet/sf/saxon/lib/TraceListener;)V

    :cond_0
    invoke-virtual {v0}, Lnet/sf/saxon/Configuration;->getParseOptions()Lnet/sf/saxon/lib/ParseOptions;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/lib/ParseOptions;->getModel()Lnet/sf/saxon/om/TreeModel;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/sf/saxon/Controller;->setModel(Lnet/sf/saxon/om/TreeModel;)V

    iput-object v1, p0, Lnet/sf/saxon/Controller;->globalContextItem:Lnet/sf/saxon/om/Item;

    iput-object v1, p0, Lnet/sf/saxon/trans/XsltController;->v0:Lnet/sf/saxon/expr/Component$M;

    invoke-virtual {p0}, Lnet/sf/saxon/trans/XsltController;->clearPerTransformationData()V

    return-void

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setAssertionsEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lnet/sf/saxon/trans/XsltController;->q0:Z

    return-void
.end method

.method public setInitialMode(Lnet/sf/saxon/om/StructuredQName;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    if-eqz p1, :cond_5

    sget-object v0, Lnet/sf/saxon/trans/Mode;->UNNAMED_MODE_NAME:Lnet/sf/saxon/om/StructuredQName;

    invoke-virtual {p1, v0}, Lnet/sf/saxon/om/StructuredQName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-object v0, p0, Lnet/sf/saxon/Controller;->executable:Lnet/sf/saxon/expr/instruct/Executable;

    invoke-virtual {v0}, Lnet/sf/saxon/expr/instruct/Executable;->getTopLevelPackage()Lnet/sf/saxon/expr/PackageData;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/style/StylesheetPackage;

    sget-object v1, Lnet/sf/saxon/trans/Mode;->DEFAULT_MODE_NAME:Lnet/sf/saxon/om/StructuredQName;

    invoke-virtual {p1, v1}, Lnet/sf/saxon/om/StructuredQName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lnet/sf/saxon/style/StylesheetPackage;->getDefaultMode()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v0

    invoke-virtual {p1, v0}, Lnet/sf/saxon/om/StructuredQName;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    invoke-virtual {p0, v0}, Lnet/sf/saxon/trans/XsltController;->setInitialMode(Lnet/sf/saxon/om/StructuredQName;)V

    goto/16 :goto_1

    :cond_1
    invoke-virtual {v0}, Lnet/sf/saxon/style/StylesheetPackage;->isDeclaredModes()Z

    move-result v1

    new-instance v2, Lnet/sf/saxon/trans/SymbolicName;

    const/16 v3, 0xb4

    invoke-direct {v2, v3, p1}, Lnet/sf/saxon/trans/SymbolicName;-><init>(ILnet/sf/saxon/om/StructuredQName;)V

    invoke-virtual {v0, v2}, Lnet/sf/saxon/style/StylesheetPackage;->getComponent(Lnet/sf/saxon/trans/SymbolicName;)Lnet/sf/saxon/expr/Component;

    move-result-object v2

    check-cast v2, Lnet/sf/saxon/expr/Component$M;

    const-string v3, "XTDE0045"

    const-string v4, "Requested initial mode "

    if-eqz v2, :cond_4

    iget-object v5, p0, Lnet/sf/saxon/Controller;->executable:Lnet/sf/saxon/expr/instruct/Executable;

    check-cast v5, Lnet/sf/saxon/PreparedStylesheet;

    invoke-virtual {v5, v2}, Lnet/sf/saxon/PreparedStylesheet;->isEligibleInitialMode(Lnet/sf/saxon/expr/Component$M;)Z

    move-result v5

    if-eqz v5, :cond_3

    iput-object v2, p0, Lnet/sf/saxon/trans/XsltController;->v0:Lnet/sf/saxon/expr/Component$M;

    if-nez v1, :cond_6

    invoke-virtual {v2}, Lnet/sf/saxon/expr/Component$M;->getActor()Lnet/sf/saxon/trans/Mode;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/trans/Mode;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_6

    invoke-virtual {v0}, Lnet/sf/saxon/style/StylesheetPackage;->getDefaultMode()Lnet/sf/saxon/om/StructuredQName;

    move-result-object p0

    invoke-virtual {p1, p0}, Lnet/sf/saxon/om/StructuredQName;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " contains no template rules"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v3}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is private in the top-level package"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v3}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p0

    :cond_4
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is not defined in the stylesheet"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v3}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p0

    :cond_5
    :goto_0
    iget-object p1, p0, Lnet/sf/saxon/Controller;->executable:Lnet/sf/saxon/expr/instruct/Executable;

    check-cast p1, Lnet/sf/saxon/PreparedStylesheet;

    invoke-virtual {p1}, Lnet/sf/saxon/PreparedStylesheet;->getRuleManager()Lnet/sf/saxon/trans/rules/RuleManager;

    move-result-object p1

    sget-object v0, Lnet/sf/saxon/trans/Mode;->UNNAMED_MODE_NAME:Lnet/sf/saxon/om/StructuredQName;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lnet/sf/saxon/trans/rules/RuleManager;->obtainMode(Lnet/sf/saxon/om/StructuredQName;Z)Lnet/sf/saxon/trans/Mode;

    move-result-object p1

    invoke-virtual {p1}, Lnet/sf/saxon/trans/Mode;->getDeclaringComponent()Lnet/sf/saxon/expr/Component$M;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/trans/XsltController;->v0:Lnet/sf/saxon/expr/Component$M;

    :cond_6
    :goto_1
    return-void
.end method

.method public setInitialTemplateParameters(Ljava/util/Map;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lnet/sf/saxon/om/StructuredQName;",
            "Lnet/sf/saxon/om/Sequence;",
            ">;Z)V"
        }
    .end annotation

    if-eqz p2, :cond_0

    iput-object p1, p0, Lnet/sf/saxon/trans/XsltController;->y0:Ljava/util/Map;

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lnet/sf/saxon/trans/XsltController;->x0:Ljava/util/Map;

    :goto_0
    return-void
.end method

.method public setMessageEmitter(Lnet/sf/saxon/event/Receiver;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public setMessageFactory(Ljava/util/function/Supplier;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier<",
            "Lnet/sf/saxon/event/Receiver;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public setMessageHandler(Ljava/util/function/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lnet/sf/saxon/s9api/Message;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lnet/sf/saxon/trans/XsltController;->E0:Ljava/util/function/Consumer;

    return-void
.end method

.method public setMessageReceiverClassName(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public setOutputURIResolver(Lnet/sf/saxon/lib/OutputURIResolver;)V
    .locals 1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/Controller;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p1

    invoke-virtual {p1}, Lnet/sf/saxon/Configuration;->getOutputURIResolver()Lnet/sf/saxon/lib/OutputURIResolver;

    move-result-object p1

    :cond_0
    new-instance v0, Lnet/sf/saxon/lib/OutputURIResolverWrapper;

    invoke-direct {v0, p1}, Lnet/sf/saxon/lib/OutputURIResolverWrapper;-><init>(Lnet/sf/saxon/lib/OutputURIResolver;)V

    invoke-virtual {p0, v0}, Lnet/sf/saxon/trans/XsltController;->setResultDocumentResolver(Lnet/sf/saxon/lib/ResultDocumentResolver;)V

    return-void
.end method

.method public setPrincipalDestination(Lnet/sf/saxon/s9api/Destination;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/trans/XsltController;->C0:Lnet/sf/saxon/s9api/Destination;

    return-void
.end method

.method public setResultDocumentResolver(Lnet/sf/saxon/lib/ResultDocumentResolver;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/trans/XsltController;->t0:Lnet/sf/saxon/lib/ResultDocumentResolver;

    return-void
.end method

.method public setTemplateRuleTraceListener(Lnet/sf/saxon/trace/TemplateRuleTraceListener;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/trans/XsltController;->D0:Lnet/sf/saxon/trace/TemplateRuleTraceListener;

    return-void
.end method
