.class public Lnet/sf/saxon/style/UseWhenFilter;
.super Lnet/sf/saxon/event/ProxyReceiver;
.source "SourceFile"


# static fields
.field public static final synthetic q:Z


# instance fields
.field public e:I

.field public f:Z

.field public final g:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final h:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final i:Lnet/sf/saxon/value/DateTimeValue;

.field public final j:Lnet/sf/saxon/style/Compilation;

.field public final k:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final l:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Ljava/net/URI;",
            ">;"
        }
    .end annotation
.end field

.field public final m:Lnet/sf/saxon/value/NestedIntegerValue;

.field public n:I

.field public o:Z

.field public final p:Lnet/sf/saxon/tree/linked/LinkedTreeBuilder;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lnet/sf/saxon/style/Compilation;Lnet/sf/saxon/event/Receiver;Lnet/sf/saxon/value/NestedIntegerValue;)V
    .locals 2

    invoke-direct {p0, p2}, Lnet/sf/saxon/event/ProxyReceiver;-><init>(Lnet/sf/saxon/event/Receiver;)V

    const/4 v0, 0x0

    iput v0, p0, Lnet/sf/saxon/style/UseWhenFilter;->e:I

    iput-boolean v0, p0, Lnet/sf/saxon/style/UseWhenFilter;->f:Z

    new-instance v1, Ljava/util/Stack;

    invoke-direct {v1}, Ljava/util/Stack;-><init>()V

    iput-object v1, p0, Lnet/sf/saxon/style/UseWhenFilter;->g:Ljava/util/Stack;

    new-instance v1, Ljava/util/Stack;

    invoke-direct {v1}, Ljava/util/Stack;-><init>()V

    iput-object v1, p0, Lnet/sf/saxon/style/UseWhenFilter;->h:Ljava/util/Stack;

    const/4 v1, 0x0

    invoke-static {v1}, Lnet/sf/saxon/value/DateTimeValue;->getCurrentDateTime(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/value/DateTimeValue;

    move-result-object v1

    iput-object v1, p0, Lnet/sf/saxon/style/UseWhenFilter;->i:Lnet/sf/saxon/value/DateTimeValue;

    new-instance v1, Ljava/util/Stack;

    invoke-direct {v1}, Ljava/util/Stack;-><init>()V

    iput-object v1, p0, Lnet/sf/saxon/style/UseWhenFilter;->k:Ljava/util/Stack;

    new-instance v1, Ljava/util/Stack;

    invoke-direct {v1}, Ljava/util/Stack;-><init>()V

    iput-object v1, p0, Lnet/sf/saxon/style/UseWhenFilter;->l:Ljava/util/Stack;

    iput v0, p0, Lnet/sf/saxon/style/UseWhenFilter;->n:I

    iput-object p1, p0, Lnet/sf/saxon/style/UseWhenFilter;->j:Lnet/sf/saxon/style/Compilation;

    iput-object p3, p0, Lnet/sf/saxon/style/UseWhenFilter;->m:Lnet/sf/saxon/value/NestedIntegerValue;

    check-cast p2, Lnet/sf/saxon/tree/linked/LinkedTreeBuilder;

    iput-object p2, p0, Lnet/sf/saxon/style/UseWhenFilter;->p:Lnet/sf/saxon/tree/linked/LinkedTreeBuilder;

    return-void
.end method

.method public static synthetic c(Lnet/sf/saxon/lib/ResourceRequest;)Ljavax/xml/transform/Source;
    .locals 0

    invoke-static {p0}, Lnet/sf/saxon/style/UseWhenFilter;->g(Lnet/sf/saxon/lib/ResourceRequest;)Ljavax/xml/transform/Source;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic g(Lnet/sf/saxon/lib/ResourceRequest;)Ljavax/xml/transform/Source;
    .locals 1

    new-instance p0, Lnet/sf/saxon/trans/UncheckedXPathException;

    const-string v0, "No external documents are available within an [xsl]use-when expression"

    invoke-direct {p0, v0}, Lnet/sf/saxon/trans/UncheckedXPathException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public characters(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/s9api/Location;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget v0, p0, Lnet/sf/saxon/style/UseWhenFilter;->e:I

    if-nez v0, :cond_0

    iget-object p0, p0, Lnet/sf/saxon/event/ProxyReceiver;->nextReceiver:Lnet/sf/saxon/event/Receiver;

    invoke-interface {p0, p1, p2, p3}, Lnet/sf/saxon/event/Receiver;->characters(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/s9api/Location;I)V

    :cond_0
    return-void
.end method

.method public comment(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/s9api/Location;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    return-void
.end method

.method public final d(Ljava/lang/String;Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/instruct/SlotManager;
    .locals 1

    invoke-virtual {p0}, Lnet/sf/saxon/event/SequenceReceiver;->getPipelineConfiguration()Lnet/sf/saxon/event/PipelineConfiguration;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/event/PipelineConfiguration;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/Configuration;->makeSlotManager()Lnet/sf/saxon/expr/instruct/SlotManager;

    move-result-object p0

    const/16 v0, 0x24

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result p1

    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/SlotManager;->getNumberOfVariables()I

    move-result p1

    invoke-static {p2, p1, p0}, Lnet/sf/saxon/expr/parser/ExpressionTool;->allocateSlots(Lnet/sf/saxon/expr/Expression;ILnet/sf/saxon/expr/instruct/SlotManager;)I

    :cond_0
    return-object p0
.end method

.method public final e(Ljava/lang/String;Ljava/lang/String;Lnet/sf/saxon/s9api/Location;)Lnet/sf/saxon/trans/XPathException;
    .locals 1

    new-instance v0, Lnet/sf/saxon/trans/XPathException;

    invoke-direct {v0, p1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lnet/sf/saxon/trans/XPathException;->setErrorCode(Ljava/lang/String;)V

    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Lnet/sf/saxon/trans/XPathException;->setIsStaticError(Z)V

    invoke-interface {p3}, Lnet/sf/saxon/s9api/Location;->saveLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljavax/xml/transform/TransformerException;->setLocator(Ljavax/xml/transform/SourceLocator;)V

    invoke-virtual {p0}, Lnet/sf/saxon/event/SequenceReceiver;->getPipelineConfiguration()Lnet/sf/saxon/event/PipelineConfiguration;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/event/PipelineConfiguration;->getErrorReporter()Lnet/sf/saxon/lib/ErrorReporter;

    move-result-object p0

    new-instance p2, Lnet/sf/saxon/trans/XmlProcessingException;

    invoke-direct {p2, v0}, Lnet/sf/saxon/trans/XmlProcessingException;-><init>(Lnet/sf/saxon/trans/XPathException;)V

    invoke-interface {p0, p2}, Lnet/sf/saxon/lib/ErrorReporter;->report(Lnet/sf/saxon/s9api/XmlProcessingError;)V

    invoke-virtual {v0, p1}, Lnet/sf/saxon/trans/XPathException;->setHasBeenReported(Z)V

    return-object v0
.end method

.method public endElement()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/style/UseWhenFilter;->g:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    iget v0, p0, Lnet/sf/saxon/style/UseWhenFilter;->e:I

    if-lez v0, :cond_0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lnet/sf/saxon/style/UseWhenFilter;->e:I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lnet/sf/saxon/style/UseWhenFilter;->k:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    iget-object v0, p0, Lnet/sf/saxon/style/UseWhenFilter;->l:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    iget-object v0, p0, Lnet/sf/saxon/style/UseWhenFilter;->h:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    iget-object p0, p0, Lnet/sf/saxon/event/ProxyReceiver;->nextReceiver:Lnet/sf/saxon/event/Receiver;

    invoke-interface {p0}, Lnet/sf/saxon/event/Receiver;->endElement()V

    :goto_0
    return-void
.end method

.method public evaluateStatic(Ljava/lang/String;Lnet/sf/saxon/s9api/Location;Lnet/sf/saxon/style/UseWhenStaticContext;)Lnet/sf/saxon/om/Sequence;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0, p3}, Lnet/sf/saxon/style/UseWhenFilter;->o(Lnet/sf/saxon/style/UseWhenStaticContext;)V

    const/4 p2, 0x0

    const/4 v0, 0x0

    invoke-static {p1, p3, p2, p2, v0}, Lnet/sf/saxon/expr/parser/ExpressionTool;->make(Ljava/lang/String;Lnet/sf/saxon/expr/StaticContext;IILnet/sf/saxon/expr/parser/CodeInjector;)Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    invoke-virtual {p0, p1, p3}, Lnet/sf/saxon/style/UseWhenFilter;->p(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/style/UseWhenStaticContext;)Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    invoke-virtual {p0}, Lnet/sf/saxon/event/SequenceReceiver;->getPipelineConfiguration()Lnet/sf/saxon/event/PipelineConfiguration;

    move-result-object p2

    invoke-virtual {p2}, Lnet/sf/saxon/event/PipelineConfiguration;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p2

    invoke-virtual {p2}, Lnet/sf/saxon/Configuration;->makeSlotManager()Lnet/sf/saxon/expr/instruct/SlotManager;

    move-result-object p2

    invoke-virtual {p2}, Lnet/sf/saxon/expr/instruct/SlotManager;->getNumberOfVariables()I

    move-result v0

    invoke-static {p1, v0, p2}, Lnet/sf/saxon/expr/parser/ExpressionTool;->allocateSlots(Lnet/sf/saxon/expr/Expression;ILnet/sf/saxon/expr/instruct/SlotManager;)I

    invoke-virtual {p0, p3}, Lnet/sf/saxon/style/UseWhenFilter;->h(Lnet/sf/saxon/style/UseWhenStaticContext;)Lnet/sf/saxon/expr/XPathContext;

    move-result-object p0

    move-object p3, p0

    check-cast p3, Lnet/sf/saxon/expr/XPathContextMajor;

    invoke-virtual {p3, p2}, Lnet/sf/saxon/expr/XPathContextMajor;->openStackFrame(Lnet/sf/saxon/expr/instruct/SlotManager;)V

    invoke-virtual {p1, p0}, Lnet/sf/saxon/expr/Expression;->iterate(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p0

    invoke-static {p0}, Lnet/sf/saxon/om/SequenceTool;->toGroundedValue(Lnet/sf/saxon/om/SequenceIterator;)Lnet/sf/saxon/om/GroundedValue;

    move-result-object p0

    return-object p0
.end method

.method public final f(Ljava/lang/String;Lnet/sf/saxon/tree/AttributeLocation;Ljava/lang/String;Lnet/sf/saxon/om/NamespaceResolver;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    new-instance v0, Lnet/sf/saxon/style/UseWhenStaticContext;

    iget-object v1, p0, Lnet/sf/saxon/style/UseWhenFilter;->j:Lnet/sf/saxon/style/Compilation;

    invoke-direct {v0, v1, p4}, Lnet/sf/saxon/style/UseWhenStaticContext;-><init>(Lnet/sf/saxon/style/Compilation;Lnet/sf/saxon/om/NamespaceResolver;)V

    invoke-virtual {v0, p3}, Lnet/sf/saxon/sxpath/AbstractStaticContext;->setBaseURI(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lnet/sf/saxon/sxpath/AbstractStaticContext;->setContainingLocation(Lnet/sf/saxon/s9api/Location;)V

    invoke-virtual {p0, v0}, Lnet/sf/saxon/style/UseWhenFilter;->o(Lnet/sf/saxon/style/UseWhenStaticContext;)V

    const/4 p2, 0x0

    const/4 p3, 0x0

    invoke-static {p1, v0, p2, p2, p3}, Lnet/sf/saxon/expr/parser/ExpressionTool;->make(Ljava/lang/String;Lnet/sf/saxon/expr/StaticContext;IILnet/sf/saxon/expr/parser/CodeInjector;)Lnet/sf/saxon/expr/Expression;

    move-result-object p2

    invoke-virtual {v0}, Lnet/sf/saxon/style/UseWhenStaticContext;->makeRetainedStaticContext()Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    move-result-object p3

    invoke-virtual {p2, p3}, Lnet/sf/saxon/expr/Expression;->setRetainedStaticContext(Lnet/sf/saxon/expr/parser/RetainedStaticContext;)V

    invoke-virtual {p0, p2, v0}, Lnet/sf/saxon/style/UseWhenFilter;->p(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/style/UseWhenStaticContext;)Lnet/sf/saxon/expr/Expression;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/style/UseWhenFilter;->d(Ljava/lang/String;Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/instruct/SlotManager;

    move-result-object p1

    invoke-virtual {p0, v0}, Lnet/sf/saxon/style/UseWhenFilter;->h(Lnet/sf/saxon/style/UseWhenStaticContext;)Lnet/sf/saxon/expr/XPathContext;

    move-result-object p0

    move-object p3, p0

    check-cast p3, Lnet/sf/saxon/expr/XPathContextMajor;

    invoke-virtual {p3, p1}, Lnet/sf/saxon/expr/XPathContextMajor;->openStackFrame(Lnet/sf/saxon/expr/instruct/SlotManager;)V

    invoke-virtual {p2, p0}, Lnet/sf/saxon/expr/Expression;->effectiveBooleanValue(Lnet/sf/saxon/expr/XPathContext;)Z

    move-result p0

    return p0
.end method

.method public final h(Lnet/sf/saxon/style/UseWhenStaticContext;)Lnet/sf/saxon/expr/XPathContext;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    new-instance v0, Lnet/sf/saxon/Controller;

    invoke-virtual {p0}, Lnet/sf/saxon/event/SequenceReceiver;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/sf/saxon/Controller;-><init>(Lnet/sf/saxon/Configuration;)V

    invoke-virtual {v0}, Lnet/sf/saxon/Controller;->getExecutable()Lnet/sf/saxon/expr/instruct/Executable;

    move-result-object v1

    invoke-virtual {p1}, Lnet/sf/saxon/style/UseWhenStaticContext;->getFunctionLibrary()Lnet/sf/saxon/functions/FunctionLibrary;

    move-result-object v2

    check-cast v2, Lnet/sf/saxon/functions/FunctionLibraryList;

    invoke-virtual {v1, v2}, Lnet/sf/saxon/expr/instruct/Executable;->setFunctionLibrary(Lnet/sf/saxon/functions/FunctionLibraryList;)V

    invoke-virtual {p1}, Lnet/sf/saxon/sxpath/AbstractStaticContext;->getXPathVersion()I

    move-result p1

    const/16 v1, 0x1e

    if-ge p1, v1, :cond_0

    new-instance p1, Lnet/sf/saxon/lib/ResourceResolverDelegate;

    new-instance v1, Lcom/sunia/HTREnginev2/eyn;

    invoke-direct {v1}, Lcom/sunia/HTREnginev2/eyn;-><init>()V

    invoke-direct {p1, v1}, Lnet/sf/saxon/lib/ResourceResolverDelegate;-><init>(Ljava/util/function/Function;)V

    invoke-virtual {v0, p1}, Lnet/sf/saxon/Controller;->setResourceResolver(Lnet/sf/saxon/lib/ResourceResolver;)V

    :cond_0
    iget-object p0, p0, Lnet/sf/saxon/style/UseWhenFilter;->i:Lnet/sf/saxon/value/DateTimeValue;

    invoke-virtual {v0, p0}, Lnet/sf/saxon/Controller;->setCurrentDateTime(Lnet/sf/saxon/value/DateTimeValue;)V

    invoke-virtual {v0}, Lnet/sf/saxon/Controller;->newXPathContext()Lnet/sf/saxon/expr/XPathContextMajor;

    move-result-object p0

    invoke-interface {p0}, Lnet/sf/saxon/expr/XPathContext;->newCleanContext()Lnet/sf/saxon/expr/XPathContextMajor;

    move-result-object p0

    return-object p0
.end method

.method public final i(Lnet/sf/saxon/s9api/Location;Ljava/lang/String;)Ljava/net/URI;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-interface {p1}, Lnet/sf/saxon/s9api/Location;->getSystemId()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/event/SequenceReceiver;->getSystemId()Ljava/lang/String;

    move-result-object p1

    :cond_0
    if-eqz p1, :cond_2

    iget-object v0, p0, Lnet/sf/saxon/style/UseWhenFilter;->k:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    :try_start_0
    new-instance v0, Ljava/net/URI;

    invoke-direct {v0, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid URI for stylesheet entity: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_0
    iget-object v0, p0, Lnet/sf/saxon/style/UseWhenFilter;->l:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/URI;

    :goto_1
    if-eqz p2, :cond_3

    :try_start_1
    invoke-virtual {v0, p2}, Ljava/net/URI;->resolve(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception p0

    new-instance p1, Lnet/sf/saxon/trans/XPathException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid URI in xml:base attribute: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ". "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_2
    iget-object p2, p0, Lnet/sf/saxon/style/UseWhenFilter;->l:Ljava/util/Stack;

    invoke-virtual {p2, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lnet/sf/saxon/style/UseWhenFilter;->k:Ljava/util/Stack;

    invoke-virtual {p0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public final j(Lnet/sf/saxon/om/NodeName;Lnet/sf/saxon/s9api/Location;Ljava/net/URI;Ljava/lang/String;Z)Lnet/sf/saxon/tree/linked/DocumentImpl;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    if-eqz p4, :cond_6

    invoke-virtual {p0}, Lnet/sf/saxon/event/SequenceReceiver;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v0

    iget-object v1, p0, Lnet/sf/saxon/style/UseWhenFilter;->j:Lnet/sf/saxon/style/Compilation;

    invoke-virtual {v1}, Lnet/sf/saxon/style/Compilation;->getCompilerInfo()Lnet/sf/saxon/trans/CompilerInfo;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sf/saxon/trans/CompilerInfo;->getResourceResolver()Lnet/sf/saxon/lib/ResourceResolver;

    move-result-object v1

    invoke-virtual {p3}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object p3

    iget-object v2, p0, Lnet/sf/saxon/style/UseWhenFilter;->j:Lnet/sf/saxon/style/Compilation;

    invoke-virtual {v2}, Lnet/sf/saxon/style/Compilation;->getPackageData()Lnet/sf/saxon/expr/PackageData;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {p4, p3, v2, v3}, Lnet/sf/saxon/functions/DocumentFn;->computeDocumentKey(Ljava/lang/String;Ljava/lang/String;Lnet/sf/saxon/expr/PackageData;Z)Lnet/sf/saxon/om/DocumentKey;

    move-result-object v2

    iget-object v4, p0, Lnet/sf/saxon/style/UseWhenFilter;->j:Lnet/sf/saxon/style/Compilation;

    invoke-virtual {v4}, Lnet/sf/saxon/style/Compilation;->getStylesheetModules()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/tree/linked/DocumentImpl;

    return-object p0

    :cond_0
    new-instance v5, Lnet/sf/saxon/lib/ResourceRequest;

    invoke-direct {v5}, Lnet/sf/saxon/lib/ResourceRequest;-><init>()V

    iput-object p4, v5, Lnet/sf/saxon/lib/ResourceRequest;->relativeUri:Ljava/lang/String;

    iput-object p3, v5, Lnet/sf/saxon/lib/ResourceRequest;->baseUri:Ljava/lang/String;

    invoke-virtual {v2}, Lnet/sf/saxon/om/DocumentKey;->getAbsoluteURI()Ljava/lang/String;

    move-result-object p3

    iput-object p3, v5, Lnet/sf/saxon/lib/ResourceRequest;->uri:Ljava/lang/String;

    const-string p3, "http://www.w3.org/1999/XSL/Transform"

    iput-object p3, v5, Lnet/sf/saxon/lib/ResourceRequest;->nature:Ljava/lang/String;

    const-string p3, "stylesheet module"

    iput-object p3, v5, Lnet/sf/saxon/lib/ResourceRequest;->purpose:Ljava/lang/String;

    const/4 p3, 0x3

    new-array p3, p3, [Lnet/sf/saxon/lib/ResourceResolver;

    aput-object v1, p3, v3

    invoke-virtual {v0}, Lnet/sf/saxon/Configuration;->getResourceResolver()Lnet/sf/saxon/lib/ResourceResolver;

    move-result-object v1

    const/4 v6, 0x1

    aput-object v1, p3, v6

    new-instance v1, Lnet/sf/saxon/lib/DirectResourceResolver;

    invoke-direct {v1, v0}, Lnet/sf/saxon/lib/DirectResourceResolver;-><init>(Lnet/sf/saxon/Configuration;)V

    const/4 v0, 0x2

    aput-object v1, p3, v0

    invoke-virtual {v5, p3}, Lnet/sf/saxon/lib/ResourceRequest;->resolve([Lnet/sf/saxon/lib/ResourceResolver;)Ljavax/xml/transform/Source;

    move-result-object p3

    const-string v1, "XTSE0165"

    if-eqz p3, :cond_5

    instance-of p1, p3, Lnet/sf/saxon/lib/EmptySource;

    if-eqz p1, :cond_1

    new-instance p3, Ljavax/xml/transform/stream/StreamSource;

    new-instance p1, Ljava/io/StringReader;

    const-string p4, "<xsl:transform version=\'3.0\' xmlns:xsl=\'http://www.w3.org/1999/XSL/Transform\'/>"

    invoke-direct {p1, p4}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {p3, p1}, Ljavax/xml/transform/stream/StreamSource;-><init>(Ljava/io/Reader;)V

    :cond_1
    iget-object p1, p0, Lnet/sf/saxon/style/UseWhenFilter;->m:Lnet/sf/saxon/value/NestedIntegerValue;

    if-eqz p5, :cond_2

    invoke-virtual {p1}, Lnet/sf/saxon/value/NestedIntegerValue;->getStem()Lnet/sf/saxon/value/NestedIntegerValue;

    move-result-object p1

    iget-object p4, p0, Lnet/sf/saxon/style/UseWhenFilter;->m:Lnet/sf/saxon/value/NestedIntegerValue;

    invoke-virtual {p4}, Lnet/sf/saxon/value/NestedIntegerValue;->getLeaf()I

    move-result p4

    sub-int/2addr p4, v6

    invoke-virtual {p1, p4}, Lnet/sf/saxon/value/NestedIntegerValue;->append(I)Lnet/sf/saxon/value/NestedIntegerValue;

    move-result-object p1

    iget p4, p0, Lnet/sf/saxon/style/UseWhenFilter;->n:I

    add-int/2addr p4, v6

    iput p4, p0, Lnet/sf/saxon/style/UseWhenFilter;->n:I

    mul-int/2addr p4, v0

    invoke-virtual {p1, p4}, Lnet/sf/saxon/value/NestedIntegerValue;->append(I)Lnet/sf/saxon/value/NestedIntegerValue;

    move-result-object p1

    :cond_2
    :try_start_0
    iget-object p4, p0, Lnet/sf/saxon/style/UseWhenFilter;->j:Lnet/sf/saxon/style/Compilation;

    invoke-static {p3, v3, p4, p1}, Lnet/sf/saxon/style/StylesheetModule;->loadStylesheetModule(Ljavax/xml/transform/Source;ZLnet/sf/saxon/style/Compilation;Lnet/sf/saxon/value/NestedIntegerValue;)Lnet/sf/saxon/tree/linked/DocumentImpl;

    move-result-object p1

    invoke-interface {v4, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-virtual {p1, p2}, Lnet/sf/saxon/trans/XPathException;->maybeSetLocation(Lnet/sf/saxon/s9api/Location;)V

    invoke-virtual {p1, v1}, Lnet/sf/saxon/trans/XPathException;->maybeSetErrorCode(Ljava/lang/String;)V

    const-string p2, "XTSE0180"

    invoke-virtual {p1}, Lnet/sf/saxon/trans/XPathException;->getErrorCodeLocalPart()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    if-eqz p5, :cond_3

    const-string p2, "XTSE0210"

    invoke-virtual {p1, p2}, Lnet/sf/saxon/trans/XPathException;->setErrorCode(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {p1}, Lnet/sf/saxon/trans/XPathException;->hasBeenReported()Z

    move-result p2

    if-nez p2, :cond_4

    iget-object p0, p0, Lnet/sf/saxon/style/UseWhenFilter;->j:Lnet/sf/saxon/style/Compilation;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/style/Compilation;->reportError(Lnet/sf/saxon/trans/XPathException;)V

    :cond_4
    throw p1

    :cond_5
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "Unable to resolve "

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lnet/sf/saxon/om/NodeName;->getDisplayName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " stylesheet URI "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lnet/sf/saxon/trans/XPathException;->setLocation(Lnet/sf/saxon/s9api/Location;)V

    throw p0

    :cond_6
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Missing href attribute on "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lnet/sf/saxon/om/NodeName;->getDisplayName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "XTSE0010"

    invoke-direct {p0, p1, p2}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p0
.end method

.method public final k(Ljava/lang/String;Ljava/lang/String;Lnet/sf/saxon/om/NamespaceResolver;Lnet/sf/saxon/tree/AttributeLocation;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    new-instance v0, Lnet/sf/saxon/style/UseWhenStaticContext;

    iget-object v1, p0, Lnet/sf/saxon/style/UseWhenFilter;->j:Lnet/sf/saxon/style/Compilation;

    invoke-direct {v0, v1, p3}, Lnet/sf/saxon/style/UseWhenStaticContext;-><init>(Lnet/sf/saxon/style/Compilation;Lnet/sf/saxon/om/NamespaceResolver;)V

    invoke-virtual {v0, p2}, Lnet/sf/saxon/sxpath/AbstractStaticContext;->setBaseURI(Ljava/lang/String;)V

    invoke-virtual {v0, p4}, Lnet/sf/saxon/sxpath/AbstractStaticContext;->setContainingLocation(Lnet/sf/saxon/s9api/Location;)V

    invoke-virtual {p0, v0}, Lnet/sf/saxon/style/UseWhenFilter;->o(Lnet/sf/saxon/style/UseWhenStaticContext;)V

    invoke-static {p1, v0}, Lnet/sf/saxon/style/AttributeValueTemplate;->make(Ljava/lang/String;Lnet/sf/saxon/expr/StaticContext;)Lnet/sf/saxon/expr/Expression;

    move-result-object p2

    invoke-virtual {p0, p2, v0}, Lnet/sf/saxon/style/UseWhenFilter;->p(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/style/UseWhenStaticContext;)Lnet/sf/saxon/expr/Expression;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/style/UseWhenFilter;->d(Ljava/lang/String;Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/instruct/SlotManager;

    move-result-object p1

    invoke-virtual {p0, v0}, Lnet/sf/saxon/style/UseWhenFilter;->h(Lnet/sf/saxon/style/UseWhenStaticContext;)Lnet/sf/saxon/expr/XPathContext;

    move-result-object p0

    move-object p3, p0

    check-cast p3, Lnet/sf/saxon/expr/XPathContextMajor;

    invoke-virtual {p3, p1}, Lnet/sf/saxon/expr/XPathContextMajor;->openStackFrame(Lnet/sf/saxon/expr/instruct/SlotManager;)V

    invoke-virtual {p2, p0}, Lnet/sf/saxon/expr/Expression;->evaluateAsString(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final l(Lnet/sf/saxon/om/NodeName;Lnet/sf/saxon/om/AttributeMap;Lnet/sf/saxon/om/NamespaceResolver;Lnet/sf/saxon/s9api/Location;Ljava/net/URI;)Lnet/sf/saxon/om/AttributeMap;
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-interface/range {p2 .. p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/sf/saxon/om/AttributeInfo;

    invoke-virtual {v2}, Lnet/sf/saxon/om/AttributeInfo;->getNodeName()Lnet/sf/saxon/om/NodeName;

    move-result-object v3

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-interface/range {p2 .. p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/sf/saxon/om/AttributeInfo;

    invoke-virtual {v2}, Lnet/sf/saxon/om/AttributeInfo;->getNodeName()Lnet/sf/saxon/om/NodeName;

    move-result-object v3

    invoke-interface {v3}, Lnet/sf/saxon/om/NodeName;->getLocalPart()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3}, Lnet/sf/saxon/om/NodeName;->getURI()Ljava/lang/String;

    move-result-object v5

    const-string v6, "_"

    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    const-string v7, "http://saxon.sf.net/"

    if-nez v6, :cond_1

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    :cond_1
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v8, 0x2

    if-lt v6, v8, :cond_3

    invoke-virtual {v2}, Lnet/sf/saxon/om/AttributeInfo;->getValue()Ljava/lang/String;

    move-result-object v6

    new-instance v8, Lnet/sf/saxon/tree/AttributeLocation;

    invoke-interface/range {p1 .. p1}, Lnet/sf/saxon/om/NodeName;->getStructuredQName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v9

    invoke-interface {v3}, Lnet/sf/saxon/om/NodeName;->getStructuredQName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v10

    move-object/from16 v11, p4

    invoke-direct {v8, v9, v10, v11}, Lnet/sf/saxon/tree/AttributeLocation;-><init>(Lnet/sf/saxon/om/StructuredQName;Lnet/sf/saxon/om/StructuredQName;Lnet/sf/saxon/s9api/Location;)V

    invoke-virtual/range {p5 .. p5}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v10, p0

    move-object/from16 v12, p3

    invoke-virtual {v10, v6, v9, v12, v8}, Lnet/sf/saxon/style/UseWhenFilter;->k(Ljava/lang/String;Ljava/lang/String;Lnet/sf/saxon/om/NamespaceResolver;Lnet/sf/saxon/tree/AttributeLocation;)Ljava/lang/String;

    move-result-object v16

    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    new-instance v5, Lnet/sf/saxon/om/NoNamespaceName;

    invoke-direct {v5, v4}, Lnet/sf/saxon/om/NoNamespaceName;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    new-instance v5, Lnet/sf/saxon/om/FingerprintedQName;

    invoke-interface {v3}, Lnet/sf/saxon/om/NodeName;->getPrefix()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v7, v4}, Lnet/sf/saxon/om/FingerprintedQName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    new-instance v4, Lnet/sf/saxon/om/AttributeInfo;

    invoke-virtual {v2}, Lnet/sf/saxon/om/AttributeInfo;->getType()Lnet/sf/saxon/type/SimpleType;

    move-result-object v15

    invoke-virtual {v2}, Lnet/sf/saxon/om/AttributeInfo;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object v17

    const/16 v18, 0x0

    move-object v13, v4

    move-object v14, v5

    invoke-direct/range {v13 .. v18}, Lnet/sf/saxon/om/AttributeInfo;-><init>(Lnet/sf/saxon/om/NodeName;Lnet/sf/saxon/type/SimpleType;Ljava/lang/String;Lnet/sf/saxon/s9api/Location;I)V

    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_3
    move-object/from16 v10, p0

    move-object/from16 v12, p3

    move-object/from16 v11, p4

    goto/16 :goto_1

    :cond_4
    invoke-static {}, Lnet/sf/saxon/om/EmptyAttributeMap;->getInstance()Lnet/sf/saxon/om/EmptyAttributeMap;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/sf/saxon/om/AttributeInfo;

    new-instance v3, Lnet/sf/saxon/om/AttributeInfo;

    invoke-virtual {v2}, Lnet/sf/saxon/om/AttributeInfo;->getNodeName()Lnet/sf/saxon/om/NodeName;

    move-result-object v4

    invoke-virtual {v2}, Lnet/sf/saxon/om/AttributeInfo;->getType()Lnet/sf/saxon/type/SimpleType;

    move-result-object v5

    invoke-virtual {v2}, Lnet/sf/saxon/om/AttributeInfo;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, Lnet/sf/saxon/om/AttributeInfo;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object v7

    invoke-virtual {v2}, Lnet/sf/saxon/om/AttributeInfo;->getProperties()I

    move-result v2

    move-object/from16 p0, v3

    move-object/from16 p1, v4

    move-object/from16 p2, v5

    move-object/from16 p3, v6

    move-object/from16 p4, v7

    move/from16 p5, v2

    invoke-direct/range {p0 .. p5}, Lnet/sf/saxon/om/AttributeInfo;-><init>(Lnet/sf/saxon/om/NodeName;Lnet/sf/saxon/type/SimpleType;Ljava/lang/String;Lnet/sf/saxon/s9api/Location;I)V

    invoke-interface {v1, v3}, Lnet/sf/saxon/om/AttributeMap;->put(Lnet/sf/saxon/om/AttributeInfo;)Lnet/sf/saxon/om/AttributeMap;

    move-result-object v1

    goto :goto_3

    :cond_5
    return-object v1
.end method

.method public final m(Lnet/sf/saxon/om/NodeName;Lnet/sf/saxon/om/AttributeMap;Lnet/sf/saxon/om/NamespaceResolver;Lnet/sf/saxon/s9api/Location;Ljava/net/URI;Lnet/sf/saxon/value/NestedIntegerValue;)V
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p6

    const-string v5, "name"

    const-string v6, ""

    invoke-interface {v0, v6, v5}, Lnet/sf/saxon/om/AttributeMap;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v7, "as"

    invoke-interface {v0, v6, v7}, Lnet/sf/saxon/om/AttributeMap;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "required"

    invoke-interface {v0, v6, v9}, Lnet/sf/saxon/om/AttributeMap;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lnet/sf/saxon/value/Whitespace;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lnet/sf/saxon/style/StyleElement;->isYes(Ljava/lang/String;)Z

    move-result v9

    new-instance v10, Lnet/sf/saxon/style/UseWhenStaticContext;

    iget-object v11, v1, Lnet/sf/saxon/style/UseWhenFilter;->j:Lnet/sf/saxon/style/Compilation;

    invoke-direct {v10, v11, v2}, Lnet/sf/saxon/style/UseWhenStaticContext;-><init>(Lnet/sf/saxon/style/Compilation;Lnet/sf/saxon/om/NamespaceResolver;)V

    invoke-virtual/range {p5 .. p5}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lnet/sf/saxon/sxpath/AbstractStaticContext;->setBaseURI(Ljava/lang/String;)V

    new-instance v11, Lnet/sf/saxon/tree/AttributeLocation;

    invoke-interface/range {p1 .. p1}, Lnet/sf/saxon/om/NodeName;->getStructuredQName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v12

    new-instance v13, Lnet/sf/saxon/om/StructuredQName;

    invoke-direct {v13, v6, v6, v7}, Lnet/sf/saxon/om/StructuredQName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v11, v12, v13, v3}, Lnet/sf/saxon/tree/AttributeLocation;-><init>(Lnet/sf/saxon/om/StructuredQName;Lnet/sf/saxon/om/StructuredQName;Lnet/sf/saxon/s9api/Location;)V

    invoke-virtual {v10, v11}, Lnet/sf/saxon/sxpath/AbstractStaticContext;->setContainingLocation(Lnet/sf/saxon/s9api/Location;)V

    sget-object v7, Lnet/sf/saxon/value/SequenceType;->ANY_SEQUENCE:Lnet/sf/saxon/value/SequenceType;

    iget-object v11, v1, Lnet/sf/saxon/style/UseWhenFilter;->j:Lnet/sf/saxon/style/Compilation;

    invoke-virtual {v11}, Lnet/sf/saxon/style/Compilation;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v11

    sget-object v12, Lnet/sf/saxon/lib/Feature;->XPATH_VERSION_FOR_XSLT:Lnet/sf/saxon/lib/Feature;

    invoke-virtual {v11, v12}, Lnet/sf/saxon/Configuration;->getConfigurationProperty(Lnet/sf/saxon/lib/Feature;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    const/16 v12, 0x1e

    if-ne v11, v12, :cond_0

    const/16 v11, 0x131

    :cond_0
    const/4 v12, 0x0

    if-eqz v8, :cond_1

    iget-object v7, v1, Lnet/sf/saxon/style/UseWhenFilter;->j:Lnet/sf/saxon/style/Compilation;

    invoke-virtual {v7}, Lnet/sf/saxon/style/Compilation;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v7

    const-string v13, "XP"

    invoke-virtual {v7, v13, v12, v11}, Lnet/sf/saxon/Configuration;->newExpressionParser(Ljava/lang/String;ZI)Lnet/sf/saxon/expr/parser/XPathParser;

    move-result-object v7

    invoke-virtual {v7, v8, v10}, Lnet/sf/saxon/expr/parser/XPathParser;->parseSequenceType(Ljava/lang/String;Lnet/sf/saxon/expr/StaticContext;)Lnet/sf/saxon/value/SequenceType;

    move-result-object v7

    :cond_1
    const/4 v11, 0x1

    :try_start_0
    invoke-static {v5, v12, v11, v2}, Lnet/sf/saxon/om/StructuredQName;->fromLexicalQName(Ljava/lang/String;ZZLnet/sf/saxon/om/NamespaceResolver;)Lnet/sf/saxon/om/StructuredQName;

    move-result-object v2
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_2

    invoke-interface/range {p1 .. p1}, Lnet/sf/saxon/om/NodeName;->getLocalPart()Ljava/lang/String;

    move-result-object v5

    const-string v13, "variable"

    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    invoke-interface/range {p1 .. p1}, Lnet/sf/saxon/om/NodeName;->getLocalPart()Ljava/lang/String;

    move-result-object v13

    const-string v14, "param"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    iget-object v14, v1, Lnet/sf/saxon/style/UseWhenFilter;->j:Lnet/sf/saxon/style/Compilation;

    invoke-virtual {v14}, Lnet/sf/saxon/style/Compilation;->getParameters()Lnet/sf/saxon/expr/instruct/GlobalParameterSet;

    move-result-object v14

    invoke-virtual {v14, v2}, Lnet/sf/saxon/expr/instruct/GlobalParameterSet;->containsKey(Lnet/sf/saxon/om/StructuredQName;)Z

    move-result v14

    if-eqz v14, :cond_2

    move v14, v11

    goto :goto_0

    :cond_2
    move v14, v12

    :goto_0
    new-instance v15, Lnet/sf/saxon/tree/AttributeLocation;

    invoke-interface/range {p1 .. p1}, Lnet/sf/saxon/om/NodeName;->getStructuredQName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v12

    new-instance v11, Lnet/sf/saxon/om/StructuredQName;

    move-object/from16 v16, v8

    const-string v8, "select"

    invoke-direct {v11, v6, v6, v8}, Lnet/sf/saxon/om/StructuredQName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v15, v12, v11, v3}, Lnet/sf/saxon/tree/AttributeLocation;-><init>(Lnet/sf/saxon/om/StructuredQName;Lnet/sf/saxon/om/StructuredQName;Lnet/sf/saxon/s9api/Location;)V

    const-string v11, "XTDE0050"

    const-string v12, "XTSE0010"

    if-eqz v13, :cond_5

    if-eqz v9, :cond_4

    if-nez v14, :cond_4

    invoke-interface {v0, v6, v8}, Lnet/sf/saxon/om/AttributeMap;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v0, "Cannot supply a default value when required=\'yes\'"

    invoke-virtual {v1, v0, v12, v15}, Lnet/sf/saxon/style/UseWhenFilter;->e(Ljava/lang/String;Ljava/lang/String;Lnet/sf/saxon/s9api/Location;)Lnet/sf/saxon/trans/XPathException;

    move-result-object v0

    throw v0

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No value was supplied for the required static parameter $"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lnet/sf/saxon/om/StructuredQName;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, v11, v3}, Lnet/sf/saxon/style/UseWhenFilter;->e(Ljava/lang/String;Ljava/lang/String;Lnet/sf/saxon/s9api/Location;)Lnet/sf/saxon/trans/XPathException;

    move-result-object v0

    throw v0

    :cond_4
    if-eqz v14, :cond_5

    iget-object v9, v1, Lnet/sf/saxon/style/UseWhenFilter;->j:Lnet/sf/saxon/style/Compilation;

    invoke-virtual {v9}, Lnet/sf/saxon/style/Compilation;->getParameters()Lnet/sf/saxon/expr/instruct/GlobalParameterSet;

    move-result-object v9

    move-object/from16 p3, v11

    invoke-virtual {v10}, Lnet/sf/saxon/sxpath/AbstractStaticContext;->makeEarlyEvaluationContext()Lnet/sf/saxon/expr/XPathContext;

    move-result-object v11

    move-object/from16 v17, v10

    const/4 v10, 0x1

    invoke-virtual {v9, v2, v7, v10, v11}, Lnet/sf/saxon/expr/instruct/GlobalParameterSet;->convertParameterValue(Lnet/sf/saxon/om/StructuredQName;Lnet/sf/saxon/value/SequenceType;ZLnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/GroundedValue;

    move-result-object v9

    iget-object v10, v1, Lnet/sf/saxon/style/UseWhenFilter;->j:Lnet/sf/saxon/style/Compilation;

    invoke-interface {v9}, Lnet/sf/saxon/om/Sequence;->materialize()Lnet/sf/saxon/om/GroundedValue;

    move-result-object v9

    invoke-virtual {v10, v2, v9, v4, v13}, Lnet/sf/saxon/style/Compilation;->declareStaticVariable(Lnet/sf/saxon/om/StructuredQName;Lnet/sf/saxon/om/GroundedValue;Lnet/sf/saxon/value/NestedIntegerValue;Z)V

    goto :goto_1

    :cond_5
    move-object/from16 v17, v10

    move-object/from16 p3, v11

    :goto_1
    if-nez v5, :cond_6

    if-nez v14, :cond_b

    :cond_6
    invoke-interface {v0, v6, v8}, Lnet/sf/saxon/om/AttributeMap;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_a

    if-nez v5, :cond_9

    invoke-virtual {v7}, Lnet/sf/saxon/value/SequenceType;->getCardinality()I

    move-result v0

    invoke-static {v0}, Lnet/sf/saxon/value/Cardinality;->allowsZero(I)Z

    move-result v0

    if-eqz v0, :cond_8

    if-nez v16, :cond_7

    sget-object v0, Lnet/sf/saxon/value/StringValue;->EMPTY_STRING:Lnet/sf/saxon/value/StringValue;

    goto :goto_2

    :cond_7
    invoke-static {}, Lnet/sf/saxon/value/EmptySequence;->getInstance()Lnet/sf/saxon/value/EmptySequence;

    move-result-object v0

    :goto_2
    iget-object v3, v1, Lnet/sf/saxon/style/UseWhenFilter;->j:Lnet/sf/saxon/style/Compilation;

    invoke-virtual {v3, v2, v0, v4, v13}, Lnet/sf/saxon/style/Compilation;->declareStaticVariable(Lnet/sf/saxon/om/StructuredQName;Lnet/sf/saxon/om/GroundedValue;Lnet/sf/saxon/value/NestedIntegerValue;Z)V

    goto :goto_3

    :cond_8
    const-string v0, "The parameter is implicitly required because it does not accept an empty sequence, but no value has been supplied"

    const-string v2, "XTDE0700"

    invoke-virtual {v1, v0, v2, v3}, Lnet/sf/saxon/style/UseWhenFilter;->e(Ljava/lang/String;Ljava/lang/String;Lnet/sf/saxon/s9api/Location;)Lnet/sf/saxon/trans/XPathException;

    move-result-object v0

    throw v0

    :cond_9
    const-string v0, "The select attribute is required for a static global variable"

    invoke-virtual {v1, v0, v12, v3}, Lnet/sf/saxon/style/UseWhenFilter;->e(Ljava/lang/String;Ljava/lang/String;Lnet/sf/saxon/s9api/Location;)Lnet/sf/saxon/trans/XPathException;

    move-result-object v0

    throw v0

    :cond_a
    move-object/from16 v5, v17

    :try_start_1
    invoke-virtual {v5, v15}, Lnet/sf/saxon/sxpath/AbstractStaticContext;->setContainingLocation(Lnet/sf/saxon/s9api/Location;)V

    invoke-virtual {v1, v0, v3, v5}, Lnet/sf/saxon/style/UseWhenFilter;->evaluateStatic(Ljava/lang/String;Lnet/sf/saxon/s9api/Location;Lnet/sf/saxon/style/UseWhenStaticContext;)Lnet/sf/saxon/om/Sequence;

    move-result-object v0

    invoke-interface {v0}, Lnet/sf/saxon/om/Sequence;->materialize()Lnet/sf/saxon/om/GroundedValue;

    move-result-object v0
    :try_end_1
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_3
    new-instance v3, Lnet/sf/saxon/expr/parser/RoleDiagnostic;

    invoke-virtual {v2}, Lnet/sf/saxon/om/StructuredQName;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x3

    const/4 v8, 0x0

    invoke-direct {v3, v6, v5, v8}, Lnet/sf/saxon/expr/parser/RoleDiagnostic;-><init>(ILjava/lang/String;I)V

    move-object/from16 v5, p3

    invoke-virtual {v3, v5}, Lnet/sf/saxon/expr/parser/RoleDiagnostic;->setErrorCode(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/event/SequenceReceiver;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v5

    invoke-virtual {v5}, Lnet/sf/saxon/Configuration;->getTypeHierarchy()Lnet/sf/saxon/type/TypeHierarchy;

    move-result-object v5

    invoke-virtual {v5, v0, v7, v3, v15}, Lnet/sf/saxon/type/TypeHierarchy;->applyFunctionConversionRules(Lnet/sf/saxon/om/Sequence;Lnet/sf/saxon/value/SequenceType;Lnet/sf/saxon/expr/parser/RoleDiagnostic;Lnet/sf/saxon/s9api/Location;)Lnet/sf/saxon/om/GroundedValue;

    move-result-object v0

    invoke-interface {v0}, Lnet/sf/saxon/om/Sequence;->materialize()Lnet/sf/saxon/om/GroundedValue;

    move-result-object v0

    :try_start_2
    iget-object v3, v1, Lnet/sf/saxon/style/UseWhenFilter;->j:Lnet/sf/saxon/style/Compilation;

    invoke-virtual {v3, v2, v0, v4, v13}, Lnet/sf/saxon/style/Compilation;->declareStaticVariable(Lnet/sf/saxon/om/StructuredQName;Lnet/sf/saxon/om/GroundedValue;Lnet/sf/saxon/value/NestedIntegerValue;Z)V
    :try_end_2
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_b
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lnet/sf/saxon/trans/XPathException;->getErrorCodeLocalPart()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0, v15}, Lnet/sf/saxon/style/UseWhenFilter;->e(Ljava/lang/String;Ljava/lang/String;Lnet/sf/saxon/s9api/Location;)Lnet/sf/saxon/trans/XPathException;

    move-result-object v0

    throw v0

    :catch_1
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p1 .. p1}, Lnet/sf/saxon/om/NodeName;->getLocalPart()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " expression. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lnet/sf/saxon/trans/XPathException;->getErrorCodeLocalPart()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0, v15}, Lnet/sf/saxon/style/UseWhenFilter;->e(Ljava/lang/String;Ljava/lang/String;Lnet/sf/saxon/s9api/Location;)Lnet/sf/saxon/trans/XPathException;

    move-result-object v0

    throw v0

    :catch_2
    move-exception v0

    move-object v2, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid variable name:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ". "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2}, Lnet/sf/saxon/trans/XPathException;->getErrorCodeLocalPart()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2, v3}, Lnet/sf/saxon/style/UseWhenFilter;->e(Ljava/lang/String;Ljava/lang/String;Lnet/sf/saxon/s9api/Location;)Lnet/sf/saxon/trans/XPathException;

    move-result-object v0

    throw v0
.end method

.method public final n(Ljava/lang/String;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    if-eqz p1, :cond_1

    const/4 p0, 0x1

    invoke-static {p1, p0}, Lnet/sf/saxon/value/BigDecimalValue;->makeDecimalValue(Ljava/lang/String;Z)Lnet/sf/saxon/type/ConversionResult;

    move-result-object p0

    instance-of v0, p0, Lnet/sf/saxon/type/ValidationFailure;

    if-nez v0, :cond_0

    invoke-interface {p0}, Lnet/sf/saxon/type/ConversionResult;->asAtomic()Lnet/sf/saxon/value/AtomicValue;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/value/BigDecimalValue;

    invoke-virtual {p0}, Lnet/sf/saxon/value/BigDecimalValue;->getDecimalValue()Ljava/math/BigDecimal;

    move-result-object p0

    sget-object p1, Ljava/math/BigDecimal;->TEN:Ljava/math/BigDecimal;

    invoke-virtual {p0, p1}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigDecimal;->intValue()I

    move-result p0

    return p0

    :cond_0
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid version number: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "XTSE0110"

    invoke-direct {p0, p1, v0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p0

    :cond_1
    const/high16 p0, -0x80000000

    return p0
.end method

.method public final o(Lnet/sf/saxon/style/UseWhenStaticContext;)V
    .locals 1

    const-string v0, ""

    invoke-virtual {p1, v0}, Lnet/sf/saxon/sxpath/AbstractStaticContext;->setDefaultElementNamespace(Ljava/lang/String;)V

    new-instance v0, Lnet/sf/saxon/tree/jiter/TopDownStackIterable;

    iget-object p0, p0, Lnet/sf/saxon/style/UseWhenFilter;->g:Ljava/util/Stack;

    invoke-direct {v0, p0}, Lnet/sf/saxon/tree/jiter/TopDownStackIterable;-><init>(Ljava/util/Stack;)V

    invoke-virtual {v0}, Lnet/sf/saxon/tree/jiter/TopDownStackIterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Lnet/sf/saxon/sxpath/AbstractStaticContext;->setDefaultElementNamespace(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public open()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/event/ProxyReceiver;->nextReceiver:Lnet/sf/saxon/event/Receiver;

    invoke-interface {v0}, Lnet/sf/saxon/event/Receiver;->open()V

    invoke-virtual {p0}, Lnet/sf/saxon/event/SequenceReceiver;->getSystemId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    iget-object v1, p0, Lnet/sf/saxon/style/UseWhenFilter;->k:Ljava/util/Stack;

    invoke-virtual {v1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    iget-object v1, p0, Lnet/sf/saxon/style/UseWhenFilter;->l:Ljava/util/Stack;

    new-instance v2, Ljava/net/URI;

    invoke-direct {v2, v0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :try_start_1
    iget-object p0, p0, Lnet/sf/saxon/style/UseWhenFilter;->l:Ljava/util/Stack;

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :goto_0
    return-void
.end method

.method public final p(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/style/UseWhenStaticContext;)Lnet/sf/saxon/expr/Expression;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    sget-object v0, Lnet/sf/saxon/type/Type;->ITEM_TYPE:Lnet/sf/saxon/type/ItemType;

    invoke-virtual {p0}, Lnet/sf/saxon/event/SequenceReceiver;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lnet/sf/saxon/Configuration;->makeContextItemStaticInfo(Lnet/sf/saxon/type/ItemType;Z)Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;

    move-result-object p0

    invoke-static {p2}, Lnet/sf/saxon/expr/parser/ExpressionVisitor;->make(Lnet/sf/saxon/expr/StaticContext;)Lnet/sf/saxon/expr/parser/ExpressionVisitor;

    move-result-object p2

    invoke-virtual {p1, p2, p0}, Lnet/sf/saxon/expr/Expression;->typeCheck(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0
.end method

.method public processingInstruction(Ljava/lang/String;Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/s9api/Location;I)V
    .locals 0

    return-void
.end method

.method public startElement(Lnet/sf/saxon/om/NodeName;Lnet/sf/saxon/type/SchemaType;Lnet/sf/saxon/om/AttributeMap;Lnet/sf/saxon/om/NamespaceMap;Lnet/sf/saxon/s9api/Location;I)V
    .locals 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p5

    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/event/ProxyReceiver;->getNamePool()Lnet/sf/saxon/om/NamePool;

    move-result-object v0

    invoke-interface {v8, v0}, Lnet/sf/saxon/om/NodeName;->obtainFingerprint(Lnet/sf/saxon/om/NamePool;)I

    move-result v6

    const-string v0, "http://www.w3.org/1999/XSL/Transform"

    invoke-interface {v8, v0}, Lnet/sf/saxon/om/NodeName;->hasURI(Ljava/lang/String;)Z

    move-result v10

    const-string v1, "http://saxon.sf.net/"

    invoke-interface {v8, v1}, Lnet/sf/saxon/om/NodeName;->hasURI(Ljava/lang/String;)Z

    move-result v2

    const-string v11, ""

    if-eqz v10, :cond_0

    move-object v12, v11

    goto :goto_0

    :cond_0
    move-object v12, v0

    :goto_0
    invoke-interface/range {p3 .. p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    const-string v13, "static"

    const-string v14, "use-when"

    if-eqz v18, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lnet/sf/saxon/om/AttributeInfo;

    invoke-virtual/range {v18 .. v18}, Lnet/sf/saxon/om/AttributeInfo;->getNodeName()Lnet/sf/saxon/om/NodeName;

    move-result-object v8

    move-object/from16 v20, v0

    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/event/ProxyReceiver;->getNamePool()Lnet/sf/saxon/om/NamePool;

    move-result-object v0

    invoke-interface {v8, v0}, Lnet/sf/saxon/om/NodeName;->obtainFingerprint(Lnet/sf/saxon/om/NamePool;)I

    invoke-interface {v8}, Lnet/sf/saxon/om/NodeName;->getURI()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    move-object/from16 v22, v12

    const-string v12, "_"

    if-eqz v21, :cond_5

    invoke-interface {v8}, Lnet/sf/saxon/om/NodeName;->getLocalPart()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v21

    const/16 v23, -0x1

    sparse-switch v21, :sswitch_data_0

    :goto_2
    move/from16 v14, v23

    goto :goto_3

    :sswitch_0
    const-string v13, "xpath-default-namespace"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_1

    goto :goto_2

    :cond_1
    const/4 v14, 0x3

    goto :goto_3

    :sswitch_1
    const-string v13, "version"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_2

    goto :goto_2

    :cond_2
    const/4 v14, 0x2

    goto :goto_3

    :sswitch_2
    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_3

    goto :goto_2

    :cond_3
    const/4 v14, 0x1

    goto :goto_3

    :sswitch_3
    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_4

    goto :goto_2

    :cond_4
    const/4 v14, 0x0

    :goto_3
    packed-switch v14, :pswitch_data_0

    goto :goto_4

    :pswitch_0
    invoke-virtual/range {v18 .. v18}, Lnet/sf/saxon/om/AttributeInfo;->getValue()Ljava/lang/String;

    move-result-object v3

    goto :goto_4

    :pswitch_1
    invoke-virtual/range {v18 .. v18}, Lnet/sf/saxon/om/AttributeInfo;->getValue()Ljava/lang/String;

    move-result-object v5

    goto :goto_4

    :pswitch_2
    invoke-virtual/range {v18 .. v18}, Lnet/sf/saxon/om/AttributeInfo;->getValue()Ljava/lang/String;

    move-result-object v16

    goto :goto_4

    :pswitch_3
    invoke-virtual/range {v18 .. v18}, Lnet/sf/saxon/om/AttributeInfo;->getValue()Ljava/lang/String;

    move-result-object v17

    :goto_4
    invoke-virtual {v8, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    if-nez v10, :cond_8

    if-eqz v2, :cond_9

    goto :goto_6

    :cond_5
    if-nez v2, :cond_7

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6

    goto :goto_5

    :cond_6
    const-string v12, "http://www.w3.org/XML/1998/namespace"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v8}, Lnet/sf/saxon/om/NodeName;->getLocalPart()Ljava/lang/String;

    move-result-object v0

    const-string v8, "base"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual/range {v18 .. v18}, Lnet/sf/saxon/om/AttributeInfo;->getValue()Ljava/lang/String;

    move-result-object v4

    goto :goto_7

    :cond_7
    :goto_5
    invoke-interface {v8}, Lnet/sf/saxon/om/NodeName;->getLocalPart()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_8
    :goto_6
    const/4 v15, 0x1

    :cond_9
    :goto_7
    move-object/from16 v8, p1

    move-object/from16 v0, v20

    move-object/from16 v12, v22

    goto/16 :goto_1

    :cond_a
    move-object/from16 v22, v12

    iget-object v0, v7, Lnet/sf/saxon/style/UseWhenFilter;->g:Ljava/util/Stack;

    invoke-virtual {v0, v3}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v0, v7, Lnet/sf/saxon/style/UseWhenFilter;->f:Z

    if-eqz v0, :cond_b

    iget v0, v7, Lnet/sf/saxon/style/UseWhenFilter;->e:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, v7, Lnet/sf/saxon/style/UseWhenFilter;->e:I

    return-void

    :cond_b
    iget v0, v7, Lnet/sf/saxon/style/UseWhenFilter;->e:I

    if-nez v0, :cond_1e

    invoke-virtual {v7, v9, v4}, Lnet/sf/saxon/style/UseWhenFilter;->i(Lnet/sf/saxon/s9api/Location;Ljava/lang/String;)Ljava/net/URI;

    move-result-object v8

    const/high16 v0, -0x80000000

    if-eqz v5, :cond_c

    const/16 v1, 0xbf

    if-eq v6, v1, :cond_c

    invoke-virtual {v7, v5}, Lnet/sf/saxon/style/UseWhenFilter;->n(Ljava/lang/String;)I

    move-result v1

    goto :goto_8

    :cond_c
    move v1, v0

    :goto_8
    const/16 v2, 0x1e

    if-ne v1, v0, :cond_e

    iget-object v0, v7, Lnet/sf/saxon/style/UseWhenFilter;->h:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    move v1, v2

    goto :goto_9

    :cond_d
    iget-object v0, v7, Lnet/sf/saxon/style/UseWhenFilter;->h:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    move v1, v0

    :cond_e
    :goto_9
    iget-object v0, v7, Lnet/sf/saxon/style/UseWhenFilter;->h:Ljava/util/Stack;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v10, :cond_f

    iget-object v0, v7, Lnet/sf/saxon/style/UseWhenFilter;->g:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_f

    if-le v1, v2, :cond_f

    invoke-static {v6}, Lnet/sf/saxon/functions/ElementAvailable;->isXslt30Element(I)Z

    move-result v0

    if-nez v0, :cond_f

    const/4 v12, 0x1

    goto :goto_a

    :cond_f
    const/4 v12, 0x0

    :goto_a
    if-eqz v15, :cond_10

    if-nez v12, :cond_10

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object v5, v8

    invoke-virtual/range {v0 .. v5}, Lnet/sf/saxon/style/UseWhenFilter;->l(Lnet/sf/saxon/om/NodeName;Lnet/sf/saxon/om/AttributeMap;Lnet/sf/saxon/om/NamespaceResolver;Lnet/sf/saxon/s9api/Location;Ljava/net/URI;)Lnet/sf/saxon/om/AttributeMap;

    move-result-object v0

    move-object/from16 v1, v22

    invoke-interface {v0, v1, v14}, Lnet/sf/saxon/om/AttributeMap;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v5, v0

    if-eqz v2, :cond_11

    goto :goto_b

    :cond_10
    move-object/from16 v1, v22

    move-object/from16 v5, p3

    :cond_11
    move-object/from16 v2, v16

    :goto_b
    if-nez v12, :cond_15

    if-eqz v2, :cond_12

    new-instance v0, Lnet/sf/saxon/tree/AttributeLocation;

    invoke-interface/range {p1 .. p1}, Lnet/sf/saxon/om/NodeName;->getStructuredQName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v3

    new-instance v4, Lnet/sf/saxon/om/StructuredQName;

    invoke-direct {v4, v11, v1, v14}, Lnet/sf/saxon/om/StructuredQName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v3, v4, v9}, Lnet/sf/saxon/tree/AttributeLocation;-><init>(Lnet/sf/saxon/om/StructuredQName;Lnet/sf/saxon/om/StructuredQName;Lnet/sf/saxon/s9api/Location;)V

    invoke-virtual {v8}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v14, p4

    invoke-virtual {v7, v2, v0, v1, v14}, Lnet/sf/saxon/style/UseWhenFilter;->f(Ljava/lang/String;Lnet/sf/saxon/tree/AttributeLocation;Ljava/lang/String;Lnet/sf/saxon/om/NamespaceResolver;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/lit8 v12, v0, 0x1

    goto :goto_c

    :cond_12
    move-object/from16 v14, p4

    const/4 v1, 0x1

    :goto_c
    if-eqz v12, :cond_16

    const/16 v0, 0xd0

    if-eq v6, v0, :cond_14

    const/16 v0, 0xd4

    if-eq v6, v0, :cond_14

    const/16 v0, 0xc2

    if-ne v6, v0, :cond_13

    goto :goto_d

    :cond_13
    iput v1, v7, Lnet/sf/saxon/style/UseWhenFilter;->e:I

    return-void

    :cond_14
    :goto_d
    iput-boolean v1, v7, Lnet/sf/saxon/style/UseWhenFilter;->f:Z

    goto :goto_e

    :cond_15
    move-object/from16 v14, p4

    :cond_16
    :goto_e
    if-eqz v10, :cond_1c

    iget-object v0, v7, Lnet/sf/saxon/style/UseWhenFilter;->g:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1c

    const/16 v0, 0xc3

    if-eq v6, v0, :cond_18

    const/16 v0, 0xd6

    if-eq v6, v0, :cond_19

    const/16 v0, 0xda

    if-eq v6, v0, :cond_18

    packed-switch v6, :pswitch_data_1

    goto/16 :goto_11

    :pswitch_4
    iget-object v0, v7, Lnet/sf/saxon/style/UseWhenFilter;->j:Lnet/sf/saxon/style/Compilation;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lnet/sf/saxon/style/Compilation;->setSchemaAware(Z)V

    goto/16 :goto_11

    :pswitch_5
    const-string v0, "href"

    invoke-interface {v5, v11, v0}, Lnet/sf/saxon/om/AttributeMap;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/16 v0, 0xa3

    if-ne v6, v0, :cond_17

    const/16 v19, 0x1

    goto :goto_f

    :cond_17
    const/16 v19, 0x0

    :goto_f
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p5

    move-object v3, v8

    move-object v12, v5

    move/from16 v5, v19

    invoke-virtual/range {v0 .. v5}, Lnet/sf/saxon/style/UseWhenFilter;->j(Lnet/sf/saxon/om/NodeName;Lnet/sf/saxon/s9api/Location;Ljava/net/URI;Ljava/lang/String;Z)Lnet/sf/saxon/tree/linked/DocumentImpl;

    move-result-object v0

    move-object v8, v0

    goto :goto_13

    :cond_18
    move-object v12, v5

    goto :goto_10

    :cond_19
    move-object v12, v5

    iget-object v0, v7, Lnet/sf/saxon/style/UseWhenFilter;->m:Lnet/sf/saxon/value/NestedIntegerValue;

    invoke-virtual {v0}, Lnet/sf/saxon/value/NestedIntegerValue;->getDepth()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_1a

    const-string v0, "name"

    invoke-interface {v12, v11, v0}, Lnet/sf/saxon/om/AttributeMap;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "package-version"

    invoke-interface {v12, v11, v1}, Lnet/sf/saxon/om/AttributeMap;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_1d

    :try_start_0
    new-instance v2, Lnet/sf/saxon/trans/packages/UsePack;

    invoke-interface/range {p5 .. p5}, Lnet/sf/saxon/s9api/Location;->saveLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object v3

    invoke-direct {v2, v0, v1, v3}, Lnet/sf/saxon/trans/packages/UsePack;-><init>(Ljava/lang/String;Ljava/lang/String;Lnet/sf/saxon/s9api/Location;)V

    iget-object v0, v7, Lnet/sf/saxon/style/UseWhenFilter;->j:Lnet/sf/saxon/style/Compilation;

    invoke-virtual {v0, v2}, Lnet/sf/saxon/style/Compilation;->registerPackageDependency(Lnet/sf/saxon/trans/packages/UsePack;)V
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_12

    :cond_1a
    new-instance v0, Lnet/sf/saxon/trans/XPathException;

    const-string v1, "xsl:use-package cannot appear in an imported stylesheet"

    const-string v2, "XTSE3008"

    invoke-direct {v0, v1, v2}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :goto_10
    if-eqz v15, :cond_1b

    invoke-interface {v12, v11, v13}, Lnet/sf/saxon/om/AttributeMap;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    :cond_1b
    if-eqz v17, :cond_1d

    invoke-static/range {v17 .. v17}, Lnet/sf/saxon/value/Whitespace;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/sf/saxon/style/StyleElement;->isYes(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v6, v7, Lnet/sf/saxon/style/UseWhenFilter;->m:Lnet/sf/saxon/value/NestedIntegerValue;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v12

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object v5, v8

    invoke-virtual/range {v0 .. v6}, Lnet/sf/saxon/style/UseWhenFilter;->m(Lnet/sf/saxon/om/NodeName;Lnet/sf/saxon/om/AttributeMap;Lnet/sf/saxon/om/NamespaceResolver;Lnet/sf/saxon/s9api/Location;Ljava/net/URI;Lnet/sf/saxon/value/NestedIntegerValue;)V

    goto :goto_12

    :cond_1c
    :goto_11
    move-object v12, v5

    :catch_0
    :cond_1d
    :goto_12
    const/4 v8, 0x0

    :goto_13
    iput-boolean v10, v7, Lnet/sf/saxon/style/UseWhenFilter;->o:Z

    iget-object v0, v7, Lnet/sf/saxon/event/ProxyReceiver;->nextReceiver:Lnet/sf/saxon/event/Receiver;

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v3, v12

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    invoke-interface/range {v0 .. v6}, Lnet/sf/saxon/event/Receiver;->startElement(Lnet/sf/saxon/om/NodeName;Lnet/sf/saxon/type/SchemaType;Lnet/sf/saxon/om/AttributeMap;Lnet/sf/saxon/om/NamespaceMap;Lnet/sf/saxon/s9api/Location;I)V

    if-eqz v8, :cond_1f

    iget-object v0, v7, Lnet/sf/saxon/style/UseWhenFilter;->p:Lnet/sf/saxon/tree/linked/LinkedTreeBuilder;

    invoke-virtual {v0}, Lnet/sf/saxon/tree/linked/LinkedTreeBuilder;->getCurrentParentNode()Lnet/sf/saxon/tree/linked/ParentNodeImpl;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/style/XSLGeneralIncorporate;

    invoke-virtual {v0, v8}, Lnet/sf/saxon/style/XSLGeneralIncorporate;->setTargetDocument(Lnet/sf/saxon/tree/linked/DocumentImpl;)V

    goto :goto_14

    :cond_1e
    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, v7, Lnet/sf/saxon/style/UseWhenFilter;->e:I

    :cond_1f
    :goto_14
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x35323192 -> :sswitch_3
        -0x139e9c40 -> :sswitch_2
        0x14f51cd8 -> :sswitch_1
        0x4f460b9f -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xa3
        :pswitch_5
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
