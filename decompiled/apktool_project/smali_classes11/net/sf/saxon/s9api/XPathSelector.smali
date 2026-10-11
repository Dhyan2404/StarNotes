.class public Lnet/sf/saxon/s9api/XPathSelector;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Lnet/sf/saxon/s9api/XdmItem;",
        ">;"
    }
.end annotation


# instance fields
.field public final e:Lnet/sf/saxon/sxpath/XPathExpression;

.field public final f:Lnet/sf/saxon/sxpath/XPathDynamicContext;

.field public final g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lnet/sf/saxon/om/StructuredQName;",
            "Lnet/sf/saxon/sxpath/XPathVariable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lnet/sf/saxon/sxpath/XPathExpression;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/sf/saxon/sxpath/XPathExpression;",
            "Ljava/util/Map<",
            "Lnet/sf/saxon/om/StructuredQName;",
            "Lnet/sf/saxon/sxpath/XPathVariable;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/sf/saxon/s9api/XPathSelector;->e:Lnet/sf/saxon/sxpath/XPathExpression;

    iput-object p2, p0, Lnet/sf/saxon/s9api/XPathSelector;->g:Ljava/util/Map;

    invoke-virtual {p1}, Lnet/sf/saxon/sxpath/XPathExpression;->createDynamicContext()Lnet/sf/saxon/sxpath/XPathDynamicContext;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/s9api/XPathSelector;->f:Lnet/sf/saxon/sxpath/XPathDynamicContext;

    return-void
.end method


# virtual methods
.method public effectiveBooleanValue()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/s9api/SaxonApiException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lnet/sf/saxon/s9api/XPathSelector;->e:Lnet/sf/saxon/sxpath/XPathExpression;

    iget-object p0, p0, Lnet/sf/saxon/s9api/XPathSelector;->f:Lnet/sf/saxon/sxpath/XPathDynamicContext;

    invoke-virtual {v0, p0}, Lnet/sf/saxon/sxpath/XPathExpression;->effectiveBooleanValue(Lnet/sf/saxon/sxpath/XPathDynamicContext;)Z

    move-result p0
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    new-instance v0, Lnet/sf/saxon/s9api/SaxonApiException;

    invoke-direct {v0, p0}, Lnet/sf/saxon/s9api/SaxonApiException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public evaluate()Lnet/sf/saxon/s9api/XdmValue;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/s9api/SaxonApiException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lnet/sf/saxon/s9api/XPathSelector;->e:Lnet/sf/saxon/sxpath/XPathExpression;

    iget-object p0, p0, Lnet/sf/saxon/s9api/XPathSelector;->f:Lnet/sf/saxon/sxpath/XPathDynamicContext;

    invoke-virtual {v0, p0}, Lnet/sf/saxon/sxpath/XPathExpression;->iterate(Lnet/sf/saxon/sxpath/XPathDynamicContext;)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p0

    invoke-static {p0}, Lnet/sf/saxon/om/SequenceTool;->toGroundedValue(Lnet/sf/saxon/om/SequenceIterator;)Lnet/sf/saxon/om/GroundedValue;

    move-result-object p0
    :try_end_0
    .catch Lnet/sf/saxon/trans/UncheckedXPathException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {p0}, Lnet/sf/saxon/s9api/XdmValue;->wrap(Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/s9api/XdmValue;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Lnet/sf/saxon/s9api/SaxonApiException;

    invoke-direct {v0, p0}, Lnet/sf/saxon/s9api/SaxonApiException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p0

    new-instance v0, Lnet/sf/saxon/s9api/SaxonApiException;

    invoke-direct {v0, p0}, Lnet/sf/saxon/s9api/SaxonApiException;-><init>(Lnet/sf/saxon/trans/UncheckedXPathException;)V

    throw v0
.end method

.method public evaluateSingle()Lnet/sf/saxon/s9api/XdmItem;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/s9api/SaxonApiException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lnet/sf/saxon/s9api/XPathSelector;->e:Lnet/sf/saxon/sxpath/XPathExpression;

    iget-object p0, p0, Lnet/sf/saxon/s9api/XPathSelector;->f:Lnet/sf/saxon/sxpath/XPathDynamicContext;

    invoke-virtual {v0, p0}, Lnet/sf/saxon/sxpath/XPathExpression;->evaluateSingle(Lnet/sf/saxon/sxpath/XPathDynamicContext;)Lnet/sf/saxon/om/Item;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {p0}, Lnet/sf/saxon/s9api/XdmValue;->wrap(Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/s9api/XdmValue;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/s9api/XdmItem;
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Lnet/sf/saxon/s9api/SaxonApiException;

    invoke-direct {v0, p0}, Lnet/sf/saxon/s9api/SaxonApiException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public getContextItem()Lnet/sf/saxon/s9api/XdmItem;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/s9api/XPathSelector;->f:Lnet/sf/saxon/sxpath/XPathDynamicContext;

    invoke-virtual {p0}, Lnet/sf/saxon/sxpath/XPathDynamicContext;->getContextItem()Lnet/sf/saxon/om/Item;

    move-result-object p0

    invoke-static {p0}, Lnet/sf/saxon/s9api/XdmItem;->wrapItem(Lnet/sf/saxon/om/Item;)Lnet/sf/saxon/s9api/XdmItem;

    move-result-object p0

    return-object p0
.end method

.method public getResourceResolver()Lnet/sf/saxon/lib/ResourceResolver;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/s9api/XPathSelector;->f:Lnet/sf/saxon/sxpath/XPathDynamicContext;

    invoke-virtual {p0}, Lnet/sf/saxon/sxpath/XPathDynamicContext;->getResourceResolver()Lnet/sf/saxon/lib/ResourceResolver;

    move-result-object p0

    return-object p0
.end method

.method public getURIResolver()Ljavax/xml/transform/URIResolver;
    .locals 1

    iget-object v0, p0, Lnet/sf/saxon/s9api/XPathSelector;->f:Lnet/sf/saxon/sxpath/XPathDynamicContext;

    invoke-virtual {v0}, Lnet/sf/saxon/sxpath/XPathDynamicContext;->getResourceResolver()Lnet/sf/saxon/lib/ResourceResolver;

    move-result-object v0

    instance-of v0, v0, Lnet/sf/saxon/lib/ResourceResolverWrappingURIResolver;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lnet/sf/saxon/s9api/XPathSelector;->f:Lnet/sf/saxon/sxpath/XPathDynamicContext;

    invoke-virtual {p0}, Lnet/sf/saxon/sxpath/XPathDynamicContext;->getResourceResolver()Lnet/sf/saxon/lib/ResourceResolver;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/lib/ResourceResolverWrappingURIResolver;

    invoke-virtual {p0}, Lnet/sf/saxon/lib/ResourceResolverWrappingURIResolver;->getWrappedURIResolver()Ljavax/xml/transform/URIResolver;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getUnderlyingXPathContext()Lnet/sf/saxon/sxpath/XPathDynamicContext;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/s9api/XPathSelector;->f:Lnet/sf/saxon/sxpath/XPathDynamicContext;

    return-object p0
.end method

.method public getUnparsedTextURIResolver()Lnet/sf/saxon/lib/UnparsedTextURIResolver;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/s9api/XPathSelector;->f:Lnet/sf/saxon/sxpath/XPathDynamicContext;

    invoke-virtual {p0}, Lnet/sf/saxon/sxpath/XPathDynamicContext;->getUnparsedTextURIResolver()Lnet/sf/saxon/lib/UnparsedTextURIResolver;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lnet/sf/saxon/s9api/XPathSelector;->iterator()Lnet/sf/saxon/s9api/XdmSequenceIterator;

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
    :try_start_0
    new-instance v0, Lnet/sf/saxon/s9api/XdmSequenceIterator;

    iget-object v1, p0, Lnet/sf/saxon/s9api/XPathSelector;->e:Lnet/sf/saxon/sxpath/XPathExpression;

    iget-object p0, p0, Lnet/sf/saxon/s9api/XPathSelector;->f:Lnet/sf/saxon/sxpath/XPathDynamicContext;

    invoke-virtual {v1, p0}, Lnet/sf/saxon/sxpath/XPathExpression;->iterate(Lnet/sf/saxon/sxpath/XPathDynamicContext;)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p0

    invoke-direct {v0, p0}, Lnet/sf/saxon/s9api/XdmSequenceIterator;-><init>(Lnet/sf/saxon/om/SequenceIterator;)V
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    .line 3
    new-instance v0, Lnet/sf/saxon/s9api/SaxonApiUncheckedException;

    invoke-direct {v0, p0}, Lnet/sf/saxon/s9api/SaxonApiUncheckedException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public setContextItem(Lnet/sf/saxon/s9api/XdmItem;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/s9api/SaxonApiException;
        }
    .end annotation

    if-eqz p1, :cond_2

    iget-object v0, p0, Lnet/sf/saxon/s9api/XPathSelector;->e:Lnet/sf/saxon/sxpath/XPathExpression;

    invoke-virtual {v0}, Lnet/sf/saxon/sxpath/XPathExpression;->getInternalExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/expr/Expression;->getPackageData()Lnet/sf/saxon/expr/PackageData;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/expr/PackageData;->isSchemaAware()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lnet/sf/saxon/s9api/XdmItem;->getUnderlyingValue()Lnet/sf/saxon/om/Item;

    move-result-object v0

    invoke-interface {v0}, Lnet/sf/saxon/om/Item;->head()Lnet/sf/saxon/om/Item;

    move-result-object v0

    instance-of v1, v0, Lnet/sf/saxon/om/NodeInfo;

    if-eqz v1, :cond_1

    check-cast v0, Lnet/sf/saxon/om/NodeInfo;

    invoke-interface {v0}, Lnet/sf/saxon/om/NodeInfo;->getTreeInfo()Lnet/sf/saxon/om/TreeInfo;

    move-result-object v0

    invoke-interface {v0}, Lnet/sf/saxon/om/TreeInfo;->isTyped()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lnet/sf/saxon/s9api/SaxonApiException;

    const-string p1, "The supplied node has been schema-validated, but the XPath expression was compiled without schema-awareness"

    invoke-direct {p0, p1}, Lnet/sf/saxon/s9api/SaxonApiException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    :try_start_0
    iget-object p0, p0, Lnet/sf/saxon/s9api/XPathSelector;->f:Lnet/sf/saxon/sxpath/XPathDynamicContext;

    invoke-virtual {p1}, Lnet/sf/saxon/s9api/XdmItem;->getUnderlyingValue()Lnet/sf/saxon/om/Item;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/sxpath/XPathDynamicContext;->setContextItem(Lnet/sf/saxon/om/Item;)V
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Lnet/sf/saxon/s9api/SaxonApiException;

    invoke-direct {p1, p0}, Lnet/sf/saxon/s9api/SaxonApiException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_2
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "contextItem"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setErrorReporter(Lnet/sf/saxon/lib/ErrorReporter;)V
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/s9api/XPathSelector;->f:Lnet/sf/saxon/sxpath/XPathDynamicContext;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/sxpath/XPathDynamicContext;->setErrorReporter(Lnet/sf/saxon/lib/ErrorReporter;)V

    return-void
.end method

.method public setResourceResolver(Lnet/sf/saxon/lib/ResourceResolver;)V
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/s9api/XPathSelector;->f:Lnet/sf/saxon/sxpath/XPathDynamicContext;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/sxpath/XPathDynamicContext;->setResourceResolver(Lnet/sf/saxon/lib/ResourceResolver;)V

    return-void
.end method

.method public setURIResolver(Ljavax/xml/transform/URIResolver;)V
    .locals 1

    iget-object p0, p0, Lnet/sf/saxon/s9api/XPathSelector;->f:Lnet/sf/saxon/sxpath/XPathDynamicContext;

    new-instance v0, Lnet/sf/saxon/lib/ResourceResolverWrappingURIResolver;

    invoke-direct {v0, p1}, Lnet/sf/saxon/lib/ResourceResolverWrappingURIResolver;-><init>(Ljavax/xml/transform/URIResolver;)V

    invoke-virtual {p0, v0}, Lnet/sf/saxon/sxpath/XPathDynamicContext;->setResourceResolver(Lnet/sf/saxon/lib/ResourceResolver;)V

    return-void
.end method

.method public setUnparsedTextResolver(Lnet/sf/saxon/lib/UnparsedTextURIResolver;)V
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/s9api/XPathSelector;->f:Lnet/sf/saxon/sxpath/XPathDynamicContext;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/sxpath/XPathDynamicContext;->setUnparsedTextURIResolver(Lnet/sf/saxon/lib/UnparsedTextURIResolver;)V

    return-void
.end method

.method public setVariable(Lnet/sf/saxon/s9api/QName;Lnet/sf/saxon/s9api/XdmValue;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/s9api/SaxonApiException;
        }
    .end annotation

    const-string v0, "name"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "value"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p1}, Lnet/sf/saxon/s9api/QName;->getStructuredQName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v0

    iget-object v1, p0, Lnet/sf/saxon/s9api/XPathSelector;->g:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/sxpath/XPathVariable;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object p0, p0, Lnet/sf/saxon/s9api/XPathSelector;->f:Lnet/sf/saxon/sxpath/XPathDynamicContext;

    invoke-virtual {p2}, Lnet/sf/saxon/s9api/XdmValue;->getUnderlyingValue()Lnet/sf/saxon/om/GroundedValue;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lnet/sf/saxon/sxpath/XPathDynamicContext;->setVariable(Lnet/sf/saxon/sxpath/XPathVariable;Lnet/sf/saxon/om/Sequence;)V
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lnet/sf/saxon/trans/UncheckedXPathException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Lnet/sf/saxon/s9api/SaxonApiException;

    invoke-direct {p1, p0}, Lnet/sf/saxon/s9api/SaxonApiException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_0
    new-instance p0, Lnet/sf/saxon/s9api/SaxonApiException;

    new-instance p2, Lnet/sf/saxon/trans/XPathException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Variable has not been declared: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lnet/sf/saxon/s9api/SaxonApiException;-><init>(Ljava/lang/Throwable;)V

    throw p0
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

    invoke-virtual {p0}, Lnet/sf/saxon/s9api/XPathSelector;->iterator()Lnet/sf/saxon/s9api/XdmSequenceIterator;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/s9api/XdmSequenceIterator;->stream()Lnet/sf/saxon/s9api/streams/XdmStream;

    move-result-object p0

    return-object p0
.end method
