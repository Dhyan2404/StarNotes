.class public Lnet/sf/saxon/s9api/XPathCompiler;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lnet/sf/saxon/s9api/Processor;

.field public final b:Lnet/sf/saxon/sxpath/XPathEvaluator;

.field public final c:Lnet/sf/saxon/sxpath/IndependentContext;

.field public d:Lnet/sf/saxon/s9api/ItemType;

.field public e:Lnet/sf/saxon/expr/sort/LFUCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/sf/saxon/expr/sort/LFUCache<",
            "Ljava/lang/String;",
            "Lnet/sf/saxon/s9api/XPathExecutable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lnet/sf/saxon/s9api/Processor;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/sf/saxon/s9api/XPathCompiler;->e:Lnet/sf/saxon/expr/sort/LFUCache;

    iput-object p1, p0, Lnet/sf/saxon/s9api/XPathCompiler;->a:Lnet/sf/saxon/s9api/Processor;

    new-instance v0, Lnet/sf/saxon/sxpath/XPathEvaluator;

    invoke-virtual {p1}, Lnet/sf/saxon/s9api/Processor;->getUnderlyingConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p1

    invoke-direct {v0, p1}, Lnet/sf/saxon/sxpath/XPathEvaluator;-><init>(Lnet/sf/saxon/Configuration;)V

    iput-object v0, p0, Lnet/sf/saxon/s9api/XPathCompiler;->b:Lnet/sf/saxon/sxpath/XPathEvaluator;

    invoke-virtual {v0}, Lnet/sf/saxon/sxpath/XPathEvaluator;->getStaticContext()Lnet/sf/saxon/sxpath/XPathStaticContext;

    move-result-object p1

    check-cast p1, Lnet/sf/saxon/sxpath/IndependentContext;

    iput-object p1, p0, Lnet/sf/saxon/s9api/XPathCompiler;->c:Lnet/sf/saxon/sxpath/IndependentContext;

    return-void
.end method

.method public static synthetic a(Lnet/sf/saxon/lib/ErrorReporter;Ljava/lang/String;Lnet/sf/saxon/s9api/Location;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lnet/sf/saxon/s9api/XPathCompiler;->c(Lnet/sf/saxon/lib/ErrorReporter;Ljava/lang/String;Lnet/sf/saxon/s9api/Location;)V

    return-void
.end method

.method public static synthetic c(Lnet/sf/saxon/lib/ErrorReporter;Ljava/lang/String;Lnet/sf/saxon/s9api/Location;)V
    .locals 2

    new-instance v0, Lnet/sf/saxon/trans/XmlProcessingIncident;

    const-string v1, "SXWN9000"

    invoke-direct {v0, p1, v1, p2}, Lnet/sf/saxon/trans/XmlProcessingIncident;-><init>(Ljava/lang/String;Ljava/lang/String;Lnet/sf/saxon/s9api/Location;)V

    invoke-virtual {v0}, Lnet/sf/saxon/trans/XmlProcessingIncident;->asWarning()Lnet/sf/saxon/trans/XmlProcessingIncident;

    move-result-object p1

    invoke-interface {p0, p1}, Lnet/sf/saxon/lib/ErrorReporter;->report(Lnet/sf/saxon/s9api/XmlProcessingError;)V

    return-void
.end method


# virtual methods
.method public addXsltFunctionLibrary(Lnet/sf/saxon/s9api/XsltPackage;)V
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/s9api/XPathCompiler;->c:Lnet/sf/saxon/sxpath/IndependentContext;

    invoke-virtual {p0}, Lnet/sf/saxon/sxpath/AbstractStaticContext;->getFunctionLibrary()Lnet/sf/saxon/functions/FunctionLibrary;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/functions/FunctionLibraryList;

    invoke-virtual {p1}, Lnet/sf/saxon/s9api/XsltPackage;->getUnderlyingPreparedPackage()Lnet/sf/saxon/style/StylesheetPackage;

    move-result-object p1

    invoke-virtual {p1}, Lnet/sf/saxon/style/StylesheetPackage;->getPublicFunctions()Lnet/sf/saxon/functions/FunctionLibrary;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/functions/FunctionLibraryList;->addFunctionLibrary(Lnet/sf/saxon/functions/FunctionLibrary;)I

    return-void
.end method

.method public final b(Ljava/lang/String;)Lnet/sf/saxon/s9api/XPathExecutable;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/s9api/SaxonApiException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lnet/sf/saxon/s9api/XPathCompiler;->c:Lnet/sf/saxon/sxpath/IndependentContext;

    invoke-virtual {v0}, Lnet/sf/saxon/sxpath/AbstractStaticContext;->getDecimalFormatManager()Lnet/sf/saxon/trans/DecimalFormatManager;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/trans/DecimalFormatManager;->checkConsistency()V
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_1

    iget-object v0, p0, Lnet/sf/saxon/s9api/XPathCompiler;->b:Lnet/sf/saxon/sxpath/XPathEvaluator;

    iget-object v1, p0, Lnet/sf/saxon/s9api/XPathCompiler;->c:Lnet/sf/saxon/sxpath/IndependentContext;

    invoke-virtual {v1}, Lnet/sf/saxon/sxpath/IndependentContext;->isAllowUndeclaredVariables()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v0, Lnet/sf/saxon/sxpath/XPathEvaluator;

    iget-object v1, p0, Lnet/sf/saxon/s9api/XPathCompiler;->a:Lnet/sf/saxon/s9api/Processor;

    invoke-virtual {v1}, Lnet/sf/saxon/s9api/Processor;->getUnderlyingConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/sf/saxon/sxpath/XPathEvaluator;-><init>(Lnet/sf/saxon/Configuration;)V

    new-instance v1, Lnet/sf/saxon/sxpath/IndependentContext;

    iget-object v2, p0, Lnet/sf/saxon/s9api/XPathCompiler;->c:Lnet/sf/saxon/sxpath/IndependentContext;

    invoke-direct {v1, v2}, Lnet/sf/saxon/sxpath/IndependentContext;-><init>(Lnet/sf/saxon/sxpath/IndependentContext;)V

    invoke-virtual {v0, v1}, Lnet/sf/saxon/sxpath/XPathEvaluator;->setStaticContext(Lnet/sf/saxon/sxpath/XPathStaticContext;)V

    iget-object v2, p0, Lnet/sf/saxon/s9api/XPathCompiler;->c:Lnet/sf/saxon/sxpath/IndependentContext;

    invoke-virtual {v2}, Lnet/sf/saxon/sxpath/IndependentContext;->getExternalVariables()Ljava/lang/Iterable;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/sf/saxon/sxpath/XPathVariable;

    invoke-virtual {v3}, Lnet/sf/saxon/sxpath/XPathVariable;->getVariableQName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v4

    invoke-virtual {v1, v4}, Lnet/sf/saxon/sxpath/IndependentContext;->declareVariable(Lnet/sf/saxon/om/StructuredQName;)Lnet/sf/saxon/sxpath/XPathVariable;

    move-result-object v4

    invoke-virtual {v3}, Lnet/sf/saxon/sxpath/XPathVariable;->getRequiredType()Lnet/sf/saxon/value/SequenceType;

    move-result-object v3

    invoke-virtual {v4, v3}, Lnet/sf/saxon/sxpath/XPathVariable;->setRequiredType(Lnet/sf/saxon/value/SequenceType;)V

    goto :goto_0

    :cond_0
    :try_start_1
    invoke-virtual {v0, p1}, Lnet/sf/saxon/sxpath/XPathEvaluator;->createExpression(Ljava/lang/String;)Lnet/sf/saxon/sxpath/XPathExpression;

    move-result-object p1

    new-instance v0, Lnet/sf/saxon/s9api/XPathExecutable;

    iget-object p0, p0, Lnet/sf/saxon/s9api/XPathCompiler;->a:Lnet/sf/saxon/s9api/Processor;

    invoke-direct {v0, p1, p0, v1}, Lnet/sf/saxon/s9api/XPathExecutable;-><init>(Lnet/sf/saxon/sxpath/XPathExpression;Lnet/sf/saxon/s9api/Processor;Lnet/sf/saxon/sxpath/IndependentContext;)V
    :try_end_1
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    new-instance p1, Lnet/sf/saxon/s9api/SaxonApiException;

    invoke-direct {p1, p0}, Lnet/sf/saxon/s9api/SaxonApiException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    move-exception p0

    new-instance p1, Lnet/sf/saxon/s9api/SaxonApiException;

    invoke-direct {p1, p0}, Lnet/sf/saxon/s9api/SaxonApiException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public compile(Ljava/lang/String;)Lnet/sf/saxon/s9api/XPathExecutable;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/s9api/SaxonApiException;
        }
    .end annotation

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lnet/sf/saxon/s9api/XPathCompiler;->e:Lnet/sf/saxon/expr/sort/LFUCache;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lnet/sf/saxon/expr/sort/LFUCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/s9api/XPathExecutable;

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/s9api/XPathCompiler;->b(Ljava/lang/String;)Lnet/sf/saxon/s9api/XPathExecutable;

    move-result-object v0

    iget-object p0, p0, Lnet/sf/saxon/s9api/XPathCompiler;->e:Lnet/sf/saxon/expr/sort/LFUCache;

    invoke-virtual {p0, p1, v0}, Lnet/sf/saxon/expr/sort/LFUCache;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-object v0

    :cond_1
    invoke-virtual {p0, p1}, Lnet/sf/saxon/s9api/XPathCompiler;->b(Ljava/lang/String;)Lnet/sf/saxon/s9api/XPathExecutable;

    move-result-object p0

    return-object p0
.end method

.method public compilePattern(Ljava/lang/String;)Lnet/sf/saxon/s9api/XPathExecutable;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/s9api/SaxonApiException;
        }
    .end annotation

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    iget-object v0, p0, Lnet/sf/saxon/s9api/XPathCompiler;->c:Lnet/sf/saxon/sxpath/IndependentContext;

    invoke-virtual {v0}, Lnet/sf/saxon/sxpath/AbstractStaticContext;->getDecimalFormatManager()Lnet/sf/saxon/trans/DecimalFormatManager;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/trans/DecimalFormatManager;->checkConsistency()V
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget-object v0, p0, Lnet/sf/saxon/s9api/XPathCompiler;->b:Lnet/sf/saxon/sxpath/XPathEvaluator;

    invoke-virtual {v0, p1}, Lnet/sf/saxon/sxpath/XPathEvaluator;->createPattern(Ljava/lang/String;)Lnet/sf/saxon/sxpath/XPathExpression;

    move-result-object p1

    new-instance v0, Lnet/sf/saxon/s9api/XPathExecutable;

    iget-object v1, p0, Lnet/sf/saxon/s9api/XPathCompiler;->a:Lnet/sf/saxon/s9api/Processor;

    iget-object p0, p0, Lnet/sf/saxon/s9api/XPathCompiler;->c:Lnet/sf/saxon/sxpath/IndependentContext;

    invoke-direct {v0, p1, v1, p0}, Lnet/sf/saxon/s9api/XPathExecutable;-><init>(Lnet/sf/saxon/sxpath/XPathExpression;Lnet/sf/saxon/s9api/Processor;Lnet/sf/saxon/sxpath/IndependentContext;)V
    :try_end_1
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    new-instance p1, Lnet/sf/saxon/s9api/SaxonApiException;

    invoke-direct {p1, p0}, Lnet/sf/saxon/s9api/SaxonApiException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    move-exception p0

    new-instance p1, Lnet/sf/saxon/s9api/SaxonApiException;

    invoke-direct {p1, p0}, Lnet/sf/saxon/s9api/SaxonApiException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public declareDefaultCollation(Ljava/lang/String;)V
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Lnet/sf/saxon/s9api/XPathCompiler;->getProcessor()Lnet/sf/saxon/s9api/Processor;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/s9api/Processor;->getUnderlyingConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/sf/saxon/Configuration;->getCollation(Ljava/lang/String;)Lnet/sf/saxon/lib/StringCollator;

    move-result-object v0
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_0

    iget-object p0, p0, Lnet/sf/saxon/s9api/XPathCompiler;->c:Lnet/sf/saxon/sxpath/IndependentContext;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/sxpath/AbstractStaticContext;->setDefaultCollationName(Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown collation "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public declareNamespace(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lnet/sf/saxon/s9api/XPathCompiler;->e:Lnet/sf/saxon/expr/sort/LFUCache;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lnet/sf/saxon/expr/sort/LFUCache;->clear()V

    :cond_0
    iget-object p0, p0, Lnet/sf/saxon/s9api/XPathCompiler;->c:Lnet/sf/saxon/sxpath/IndependentContext;

    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/sxpath/IndependentContext;->declareNamespace(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public declareVariable(Lnet/sf/saxon/s9api/QName;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/sf/saxon/s9api/XPathCompiler;->e:Lnet/sf/saxon/expr/sort/LFUCache;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lnet/sf/saxon/expr/sort/LFUCache;->clear()V

    .line 3
    :cond_0
    iget-object p0, p0, Lnet/sf/saxon/s9api/XPathCompiler;->c:Lnet/sf/saxon/sxpath/IndependentContext;

    invoke-virtual {p1}, Lnet/sf/saxon/s9api/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lnet/sf/saxon/s9api/QName;->getLocalName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lnet/sf/saxon/sxpath/IndependentContext;->declareVariable(Ljava/lang/String;Ljava/lang/String;)Lnet/sf/saxon/sxpath/XPathVariable;

    return-void
.end method

.method public declareVariable(Lnet/sf/saxon/s9api/QName;Lnet/sf/saxon/s9api/ItemType;Lnet/sf/saxon/s9api/OccurrenceIndicator;)V
    .locals 1

    .line 4
    iget-object v0, p0, Lnet/sf/saxon/s9api/XPathCompiler;->e:Lnet/sf/saxon/expr/sort/LFUCache;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Lnet/sf/saxon/expr/sort/LFUCache;->clear()V

    .line 6
    :cond_0
    iget-object p0, p0, Lnet/sf/saxon/s9api/XPathCompiler;->c:Lnet/sf/saxon/sxpath/IndependentContext;

    invoke-virtual {p1}, Lnet/sf/saxon/s9api/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lnet/sf/saxon/s9api/QName;->getLocalName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lnet/sf/saxon/sxpath/IndependentContext;->declareVariable(Ljava/lang/String;Ljava/lang/String;)Lnet/sf/saxon/sxpath/XPathVariable;

    move-result-object p0

    .line 7
    invoke-virtual {p2}, Lnet/sf/saxon/s9api/ItemType;->getUnderlyingItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object p1

    invoke-virtual {p3}, Lnet/sf/saxon/s9api/OccurrenceIndicator;->getCardinality()I

    move-result p2

    .line 8
    invoke-static {p1, p2}, Lnet/sf/saxon/value/SequenceType;->makeSequenceType(Lnet/sf/saxon/type/ItemType;I)Lnet/sf/saxon/value/SequenceType;

    move-result-object p1

    .line 9
    invoke-virtual {p0, p1}, Lnet/sf/saxon/sxpath/XPathVariable;->setRequiredType(Lnet/sf/saxon/value/SequenceType;)V

    return-void
.end method

.method public evaluate(Ljava/lang/String;Lnet/sf/saxon/s9api/XdmItem;)Lnet/sf/saxon/s9api/XdmValue;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/s9api/SaxonApiException;
        }
    .end annotation

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lnet/sf/saxon/s9api/XPathCompiler;->isFastCompilation()Z

    move-result v0

    invoke-virtual {p0}, Lnet/sf/saxon/s9api/XPathCompiler;->isCaching()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lnet/sf/saxon/s9api/XPathCompiler;->setFastCompilation(Z)V

    :cond_0
    invoke-virtual {p0, p1}, Lnet/sf/saxon/s9api/XPathCompiler;->compile(Ljava/lang/String;)Lnet/sf/saxon/s9api/XPathExecutable;

    move-result-object p1

    invoke-virtual {p1}, Lnet/sf/saxon/s9api/XPathExecutable;->load()Lnet/sf/saxon/s9api/XPathSelector;

    move-result-object p1

    invoke-virtual {p0}, Lnet/sf/saxon/s9api/XPathCompiler;->isCaching()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0, v0}, Lnet/sf/saxon/s9api/XPathCompiler;->setFastCompilation(Z)V

    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p1, p2}, Lnet/sf/saxon/s9api/XPathSelector;->setContextItem(Lnet/sf/saxon/s9api/XdmItem;)V

    :cond_2
    invoke-virtual {p1}, Lnet/sf/saxon/s9api/XPathSelector;->evaluate()Lnet/sf/saxon/s9api/XdmValue;

    move-result-object p0

    return-object p0
.end method

.method public evaluateSingle(Ljava/lang/String;Lnet/sf/saxon/s9api/XdmItem;)Lnet/sf/saxon/s9api/XdmItem;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/s9api/SaxonApiException;
        }
    .end annotation

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lnet/sf/saxon/s9api/XPathCompiler;->isFastCompilation()Z

    move-result v0

    invoke-virtual {p0}, Lnet/sf/saxon/s9api/XPathCompiler;->isCaching()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lnet/sf/saxon/s9api/XPathCompiler;->setFastCompilation(Z)V

    :cond_0
    invoke-virtual {p0, p1}, Lnet/sf/saxon/s9api/XPathCompiler;->compile(Ljava/lang/String;)Lnet/sf/saxon/s9api/XPathExecutable;

    move-result-object p1

    invoke-virtual {p1}, Lnet/sf/saxon/s9api/XPathExecutable;->load()Lnet/sf/saxon/s9api/XPathSelector;

    move-result-object p1

    invoke-virtual {p0}, Lnet/sf/saxon/s9api/XPathCompiler;->isCaching()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0, v0}, Lnet/sf/saxon/s9api/XPathCompiler;->setFastCompilation(Z)V

    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p1, p2}, Lnet/sf/saxon/s9api/XPathSelector;->setContextItem(Lnet/sf/saxon/s9api/XdmItem;)V

    :cond_2
    invoke-virtual {p1}, Lnet/sf/saxon/s9api/XPathSelector;->evaluateSingle()Lnet/sf/saxon/s9api/XdmItem;

    move-result-object p0

    return-object p0
.end method

.method public getBaseURI()Ljava/net/URI;
    .locals 3

    :try_start_0
    new-instance v0, Ljava/net/URI;

    iget-object v1, p0, Lnet/sf/saxon/s9api/XPathCompiler;->c:Lnet/sf/saxon/sxpath/IndependentContext;

    invoke-virtual {v1}, Lnet/sf/saxon/sxpath/AbstractStaticContext;->getStaticBaseURI()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid base URI for XPath: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lnet/sf/saxon/s9api/XPathCompiler;->c:Lnet/sf/saxon/sxpath/IndependentContext;

    invoke-virtual {p0}, Lnet/sf/saxon/sxpath/AbstractStaticContext;->getStaticBaseURI()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getLanguageVersion()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lnet/sf/saxon/s9api/XPathCompiler;->c:Lnet/sf/saxon/sxpath/IndependentContext;

    invoke-virtual {v0}, Lnet/sf/saxon/sxpath/AbstractStaticContext;->getXPathVersion()I

    move-result v0

    const/16 v1, 0x14

    if-ne v0, v1, :cond_0

    const-string p0, "2.0"

    return-object p0

    :cond_0
    iget-object v0, p0, Lnet/sf/saxon/s9api/XPathCompiler;->c:Lnet/sf/saxon/sxpath/IndependentContext;

    invoke-virtual {v0}, Lnet/sf/saxon/sxpath/AbstractStaticContext;->getXPathVersion()I

    move-result v0

    const/16 v1, 0x1e

    if-ne v0, v1, :cond_1

    const-string p0, "3.0"

    return-object p0

    :cond_1
    iget-object v0, p0, Lnet/sf/saxon/s9api/XPathCompiler;->c:Lnet/sf/saxon/sxpath/IndependentContext;

    invoke-virtual {v0}, Lnet/sf/saxon/sxpath/AbstractStaticContext;->getXPathVersion()I

    move-result v0

    const/16 v1, 0x1f

    if-ne v0, v1, :cond_2

    const-string p0, "3.1"

    return-object p0

    :cond_2
    iget-object v0, p0, Lnet/sf/saxon/s9api/XPathCompiler;->c:Lnet/sf/saxon/sxpath/IndependentContext;

    invoke-virtual {v0}, Lnet/sf/saxon/sxpath/AbstractStaticContext;->getXPathVersion()I

    move-result v0

    const/16 v1, 0x28

    if-ne v0, v1, :cond_3

    const-string p0, "4.0"

    return-object p0

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown XPath version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lnet/sf/saxon/s9api/XPathCompiler;->c:Lnet/sf/saxon/sxpath/IndependentContext;

    invoke-virtual {p0}, Lnet/sf/saxon/sxpath/AbstractStaticContext;->getXPathVersion()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getProcessor()Lnet/sf/saxon/s9api/Processor;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/s9api/XPathCompiler;->a:Lnet/sf/saxon/s9api/Processor;

    return-object p0
.end method

.method public getRequiredContextItemType()Lnet/sf/saxon/s9api/ItemType;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/s9api/XPathCompiler;->d:Lnet/sf/saxon/s9api/ItemType;

    return-object p0
.end method

.method public getUnderlyingStaticContext()Lnet/sf/saxon/expr/StaticContext;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/s9api/XPathCompiler;->c:Lnet/sf/saxon/sxpath/IndependentContext;

    return-object p0
.end method

.method public getUnprefixedElementMatchingPolicy()Lnet/sf/saxon/s9api/UnprefixedElementMatchingPolicy;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/s9api/XPathCompiler;->c:Lnet/sf/saxon/sxpath/IndependentContext;

    invoke-virtual {p0}, Lnet/sf/saxon/sxpath/AbstractStaticContext;->getUnprefixedElementMatchingPolicy()Lnet/sf/saxon/s9api/UnprefixedElementMatchingPolicy;

    move-result-object p0

    return-object p0
.end method

.method public importSchemaNamespace(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lnet/sf/saxon/s9api/XPathCompiler;->e:Lnet/sf/saxon/expr/sort/LFUCache;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lnet/sf/saxon/expr/sort/LFUCache;->clear()V

    :cond_0
    iget-object v0, p0, Lnet/sf/saxon/s9api/XPathCompiler;->c:Lnet/sf/saxon/sxpath/IndependentContext;

    invoke-virtual {v0}, Lnet/sf/saxon/sxpath/IndependentContext;->getImportedSchemaNamespaces()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lnet/sf/saxon/s9api/XPathCompiler;->c:Lnet/sf/saxon/sxpath/IndependentContext;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/sxpath/AbstractStaticContext;->setSchemaAware(Z)V

    return-void
.end method

.method public isAllowUndeclaredVariables()Z
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/s9api/XPathCompiler;->c:Lnet/sf/saxon/sxpath/IndependentContext;

    invoke-virtual {p0}, Lnet/sf/saxon/sxpath/IndependentContext;->isAllowUndeclaredVariables()Z

    move-result p0

    return p0
.end method

.method public isBackwardsCompatible()Z
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/s9api/XPathCompiler;->c:Lnet/sf/saxon/sxpath/IndependentContext;

    invoke-virtual {p0}, Lnet/sf/saxon/sxpath/AbstractStaticContext;->isInBackwardsCompatibleMode()Z

    move-result p0

    return p0
.end method

.method public isCaching()Z
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/s9api/XPathCompiler;->e:Lnet/sf/saxon/expr/sort/LFUCache;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isFastCompilation()Z
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/s9api/XPathCompiler;->c:Lnet/sf/saxon/sxpath/IndependentContext;

    invoke-virtual {p0}, Lnet/sf/saxon/sxpath/IndependentContext;->getOptimizerOptions()Lnet/sf/saxon/expr/parser/OptimizerOptions;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/OptimizerOptions;->getOptions()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSchemaAware()Z
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/s9api/XPathCompiler;->c:Lnet/sf/saxon/sxpath/IndependentContext;

    invoke-virtual {p0}, Lnet/sf/saxon/sxpath/AbstractStaticContext;->getPackageData()Lnet/sf/saxon/expr/PackageData;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/PackageData;->isSchemaAware()Z

    move-result p0

    return p0
.end method

.method public setAllowUndeclaredVariables(Z)V
    .locals 1

    iget-object v0, p0, Lnet/sf/saxon/s9api/XPathCompiler;->e:Lnet/sf/saxon/expr/sort/LFUCache;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lnet/sf/saxon/expr/sort/LFUCache;->clear()V

    :cond_0
    iget-object p0, p0, Lnet/sf/saxon/s9api/XPathCompiler;->c:Lnet/sf/saxon/sxpath/IndependentContext;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/sxpath/IndependentContext;->setAllowUndeclaredVariables(Z)V

    return-void
.end method

.method public setBackwardsCompatible(Z)V
    .locals 1

    iget-object v0, p0, Lnet/sf/saxon/s9api/XPathCompiler;->e:Lnet/sf/saxon/expr/sort/LFUCache;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lnet/sf/saxon/expr/sort/LFUCache;->clear()V

    :cond_0
    iget-object p0, p0, Lnet/sf/saxon/s9api/XPathCompiler;->c:Lnet/sf/saxon/sxpath/IndependentContext;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/sxpath/AbstractStaticContext;->setBackwardsCompatibilityMode(Z)V

    return-void
.end method

.method public setBaseURI(Ljava/net/URI;)V
    .locals 1

    iget-object v0, p0, Lnet/sf/saxon/s9api/XPathCompiler;->e:Lnet/sf/saxon/expr/sort/LFUCache;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lnet/sf/saxon/expr/sort/LFUCache;->clear()V

    :cond_0
    if-nez p1, :cond_1

    iget-object p0, p0, Lnet/sf/saxon/s9api/XPathCompiler;->c:Lnet/sf/saxon/sxpath/IndependentContext;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/sxpath/AbstractStaticContext;->setBaseURI(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/net/URI;->isAbsolute()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lnet/sf/saxon/s9api/XPathCompiler;->c:Lnet/sf/saxon/sxpath/IndependentContext;

    invoke-virtual {p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/sxpath/AbstractStaticContext;->setBaseURI(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Supplied base URI must be absolute"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setCaching(Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object p1, p0, Lnet/sf/saxon/s9api/XPathCompiler;->e:Lnet/sf/saxon/expr/sort/LFUCache;

    if-nez p1, :cond_1

    new-instance p1, Lnet/sf/saxon/expr/sort/LFUCache;

    const/16 v0, 0x64

    const/4 v1, 0x1

    invoke-direct {p1, v0, v1}, Lnet/sf/saxon/expr/sort/LFUCache;-><init>(IZ)V

    iput-object p1, p0, Lnet/sf/saxon/s9api/XPathCompiler;->e:Lnet/sf/saxon/expr/sort/LFUCache;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lnet/sf/saxon/s9api/XPathCompiler;->e:Lnet/sf/saxon/expr/sort/LFUCache;

    :cond_1
    :goto_0
    return-void
.end method

.method public setDecimalFormatProperty(Lnet/sf/saxon/s9api/QName;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/s9api/SaxonApiException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/s9api/XPathCompiler;->c:Lnet/sf/saxon/sxpath/IndependentContext;

    invoke-virtual {v0}, Lnet/sf/saxon/sxpath/AbstractStaticContext;->getDecimalFormatManager()Lnet/sf/saxon/trans/DecimalFormatManager;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lnet/sf/saxon/trans/DecimalFormatManager;

    sget-object v1, Lnet/sf/saxon/s9api/HostLanguage;->XPATH:Lnet/sf/saxon/s9api/HostLanguage;

    iget-object v2, p0, Lnet/sf/saxon/s9api/XPathCompiler;->c:Lnet/sf/saxon/sxpath/IndependentContext;

    invoke-virtual {v2}, Lnet/sf/saxon/sxpath/AbstractStaticContext;->getXPathVersion()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lnet/sf/saxon/trans/DecimalFormatManager;-><init>(Lnet/sf/saxon/s9api/HostLanguage;I)V

    iget-object p0, p0, Lnet/sf/saxon/s9api/XPathCompiler;->c:Lnet/sf/saxon/sxpath/IndependentContext;

    invoke-virtual {p0, v0}, Lnet/sf/saxon/sxpath/AbstractStaticContext;->setDecimalFormatManager(Lnet/sf/saxon/trans/DecimalFormatManager;)V

    :cond_0
    invoke-virtual {p1}, Lnet/sf/saxon/s9api/QName;->getStructuredQName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object p0

    invoke-virtual {v0, p0}, Lnet/sf/saxon/trans/DecimalFormatManager;->obtainNamedDecimalFormat(Lnet/sf/saxon/om/StructuredQName;)Lnet/sf/saxon/trans/DecimalSymbols;

    move-result-object p0

    :try_start_0
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p1

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string p1, "zero-digit"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 p1, 0x8

    goto/16 :goto_1

    :sswitch_1
    const-string p1, "minus-sign"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x5

    goto :goto_1

    :sswitch_2
    const-string p1, "exponent-separator"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x2

    goto :goto_1

    :sswitch_3
    const-string p1, "grouping-separator"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :sswitch_4
    const-string p1, "infinity"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x3

    goto :goto_1

    :sswitch_5
    const-string p1, "digit"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 p1, 0x9

    goto :goto_1

    :sswitch_6
    const-string p1, "NaN"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x4

    goto :goto_1

    :sswitch_7
    const-string p1, "percent"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x6

    goto :goto_1

    :sswitch_8
    const-string p1, "per-mille"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x7

    goto :goto_1

    :sswitch_9
    const-string p1, "pattern-separator"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 p1, 0xa

    goto :goto_1

    :sswitch_a
    const-string p1, "decimal-separator"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, -0x1

    :goto_1
    packed-switch p1, :pswitch_data_0

    new-instance p0, Ljava/lang/IllegalArgumentException;

    goto :goto_3

    :pswitch_0
    invoke-virtual {p0, p3}, Lnet/sf/saxon/trans/DecimalSymbols;->setPatternSeparator(Ljava/lang/String;)V

    goto :goto_2

    :pswitch_1
    invoke-virtual {p0, p3}, Lnet/sf/saxon/trans/DecimalSymbols;->setDigit(Ljava/lang/String;)V

    goto :goto_2

    :pswitch_2
    invoke-virtual {p0, p3}, Lnet/sf/saxon/trans/DecimalSymbols;->setZeroDigit(Ljava/lang/String;)V

    goto :goto_2

    :pswitch_3
    invoke-virtual {p0, p3}, Lnet/sf/saxon/trans/DecimalSymbols;->setPerMille(Ljava/lang/String;)V

    goto :goto_2

    :pswitch_4
    invoke-virtual {p0, p3}, Lnet/sf/saxon/trans/DecimalSymbols;->setPercent(Ljava/lang/String;)V

    goto :goto_2

    :pswitch_5
    invoke-virtual {p0, p3}, Lnet/sf/saxon/trans/DecimalSymbols;->setMinusSign(Ljava/lang/String;)V

    goto :goto_2

    :pswitch_6
    invoke-virtual {p0, p3}, Lnet/sf/saxon/trans/DecimalSymbols;->setNaN(Ljava/lang/String;)V

    goto :goto_2

    :pswitch_7
    invoke-virtual {p0, p3}, Lnet/sf/saxon/trans/DecimalSymbols;->setInfinity(Ljava/lang/String;)V

    goto :goto_2

    :pswitch_8
    invoke-virtual {p0, p3}, Lnet/sf/saxon/trans/DecimalSymbols;->setExponentSeparator(Ljava/lang/String;)V

    goto :goto_2

    :pswitch_9
    invoke-virtual {p0, p3}, Lnet/sf/saxon/trans/DecimalSymbols;->setGroupingSeparator(Ljava/lang/String;)V

    goto :goto_2

    :pswitch_a
    invoke-virtual {p0, p3}, Lnet/sf/saxon/trans/DecimalSymbols;->setDecimalSeparator(Ljava/lang/String;)V

    :goto_2
    return-void

    :goto_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unknown decimal format attribute "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    new-instance p1, Lnet/sf/saxon/s9api/SaxonApiException;

    invoke-direct {p1, p0}, Lnet/sf/saxon/s9api/SaxonApiException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :sswitch_data_0
    .sparse-switch
        -0x7a805897 -> :sswitch_a
        -0x543a8318 -> :sswitch_9
        -0x44b6e4e7 -> :sswitch_8
        -0x28779bbb -> :sswitch_7
        0x130db -> :sswitch_6
        0x5b2792d -> :sswitch_5
        0xa526a28 -> :sswitch_4
        0x152e3a9b -> :sswitch_3
        0x48487147 -> :sswitch_2
        0x6a3e5cfa -> :sswitch_1
        0x6e95edc8 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setFastCompilation(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lnet/sf/saxon/s9api/XPathCompiler;->c:Lnet/sf/saxon/sxpath/IndependentContext;

    new-instance p1, Lnet/sf/saxon/expr/parser/OptimizerOptions;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lnet/sf/saxon/expr/parser/OptimizerOptions;-><init>(I)V

    invoke-virtual {p0, p1}, Lnet/sf/saxon/sxpath/IndependentContext;->setOptimizerOptions(Lnet/sf/saxon/expr/parser/OptimizerOptions;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lnet/sf/saxon/s9api/XPathCompiler;->c:Lnet/sf/saxon/sxpath/IndependentContext;

    invoke-virtual {p0}, Lnet/sf/saxon/s9api/XPathCompiler;->getProcessor()Lnet/sf/saxon/s9api/Processor;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/s9api/Processor;->getUnderlyingConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/Configuration;->getOptimizerOptions()Lnet/sf/saxon/expr/parser/OptimizerOptions;

    move-result-object p0

    invoke-virtual {p1, p0}, Lnet/sf/saxon/sxpath/IndependentContext;->setOptimizerOptions(Lnet/sf/saxon/expr/parser/OptimizerOptions;)V

    :goto_0
    return-void
.end method

.method public setLanguageVersion(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lnet/sf/saxon/s9api/XPathCompiler;->e:Lnet/sf/saxon/expr/sort/LFUCache;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lnet/sf/saxon/expr/sort/LFUCache;->clear()V

    :cond_0
    const-string v0, "1.0"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v1, 0x14

    if-eqz v0, :cond_1

    iget-object p1, p0, Lnet/sf/saxon/s9api/XPathCompiler;->c:Lnet/sf/saxon/sxpath/IndependentContext;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lnet/sf/saxon/sxpath/AbstractStaticContext;->setBackwardsCompatibilityMode(Z)V

    goto :goto_1

    :cond_1
    const-string v0, "2.0"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    const-string v0, "3.0"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "3.05"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    const-string v0, "3.1"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v1, 0x1f

    goto :goto_1

    :cond_4
    const-string v0, "4.0"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    const/16 v1, 0x28

    goto :goto_1

    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "XPath version"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    :goto_0
    const/16 v1, 0x1e

    :goto_1
    iget-object p1, p0, Lnet/sf/saxon/s9api/XPathCompiler;->c:Lnet/sf/saxon/sxpath/IndependentContext;

    invoke-virtual {p1, v1}, Lnet/sf/saxon/sxpath/AbstractStaticContext;->setXPathLanguageLevel(I)V

    iget-object p0, p0, Lnet/sf/saxon/s9api/XPathCompiler;->c:Lnet/sf/saxon/sxpath/IndependentContext;

    invoke-virtual {p0, v1}, Lnet/sf/saxon/sxpath/AbstractStaticContext;->setDefaultFunctionLibrary(I)V

    return-void
.end method

.method public setRequiredContextItemType(Lnet/sf/saxon/s9api/ItemType;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/s9api/XPathCompiler;->d:Lnet/sf/saxon/s9api/ItemType;

    iget-object p0, p0, Lnet/sf/saxon/s9api/XPathCompiler;->c:Lnet/sf/saxon/sxpath/IndependentContext;

    invoke-virtual {p1}, Lnet/sf/saxon/s9api/ItemType;->getUnderlyingItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/sxpath/IndependentContext;->setRequiredContextItemType(Lnet/sf/saxon/type/ItemType;)V

    return-void
.end method

.method public setSchemaAware(Z)V
    .locals 2

    if-eqz p1, :cond_1

    iget-object v0, p0, Lnet/sf/saxon/s9api/XPathCompiler;->a:Lnet/sf/saxon/s9api/Processor;

    invoke-virtual {v0}, Lnet/sf/saxon/s9api/Processor;->getUnderlyingConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lnet/sf/saxon/Configuration;->isLicensedFeature(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Schema processing requires a licensed Saxon-EE configuration"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    iget-object p0, p0, Lnet/sf/saxon/s9api/XPathCompiler;->c:Lnet/sf/saxon/sxpath/IndependentContext;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/sxpath/AbstractStaticContext;->setSchemaAware(Z)V

    return-void
.end method

.method public setUnprefixedElementMatchingPolicy(Lnet/sf/saxon/s9api/UnprefixedElementMatchingPolicy;)V
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/s9api/XPathCompiler;->c:Lnet/sf/saxon/sxpath/IndependentContext;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/sxpath/AbstractStaticContext;->setUnprefixedElementMatchingPolicy(Lnet/sf/saxon/s9api/UnprefixedElementMatchingPolicy;)V

    return-void
.end method

.method public setWarningHandler(Lnet/sf/saxon/lib/ErrorReporter;)V
    .locals 1

    iget-object p0, p0, Lnet/sf/saxon/s9api/XPathCompiler;->c:Lnet/sf/saxon/sxpath/IndependentContext;

    new-instance v0, Lcom/sunia/HTREnginev2/amo;

    invoke-direct {v0, p1}, Lcom/sunia/HTREnginev2/amo;-><init>(Lnet/sf/saxon/lib/ErrorReporter;)V

    invoke-virtual {p0, v0}, Lnet/sf/saxon/sxpath/AbstractStaticContext;->setWarningHandler(Ljava/util/function/BiConsumer;)V

    return-void
.end method
