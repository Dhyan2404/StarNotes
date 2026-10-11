.class public Lnet/sf/saxon/functions/UriCollection;
.super Lnet/sf/saxon/functions/SystemFunction;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnet/sf/saxon/functions/SystemFunction;-><init>()V

    return-void
.end method

.method public static synthetic a(Ljava/lang/String;)Lnet/sf/saxon/value/AnyURIValue;
    .locals 0

    invoke-static {p0}, Lnet/sf/saxon/functions/UriCollection;->d(Ljava/lang/String;)Lnet/sf/saxon/value/AnyURIValue;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Ljava/lang/String;)Lnet/sf/saxon/value/AnyURIValue;
    .locals 1

    new-instance v0, Lnet/sf/saxon/value/AnyURIValue;

    invoke-direct {v0, p0}, Lnet/sf/saxon/value/AnyURIValue;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public final b(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/Sequence;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-interface {p1}, Lnet/sf/saxon/expr/XPathContext;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/Configuration;->getDefaultCollection()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lnet/sf/saxon/om/LazySequence;

    invoke-virtual {p0, v0, p1}, Lnet/sf/saxon/functions/UriCollection;->c(Ljava/lang/String;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p0

    invoke-direct {v1, p0}, Lnet/sf/saxon/om/LazySequence;-><init>(Lnet/sf/saxon/om/SequenceIterator;)V

    return-object v1

    :cond_0
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    const-string p1, "No default collection has been defined"

    const-string v0, "FODC0002"

    invoke-direct {p0, p1, v0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p0
.end method

.method public final c(Ljava/lang/String;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/SequenceIterator;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-interface {p2}, Lnet/sf/saxon/expr/XPathContext;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/Configuration;->getRegisteredCollection(Ljava/lang/String;)Lnet/sf/saxon/lib/ResourceCollection;

    move-result-object p0

    if-nez p0, :cond_0

    invoke-interface {p2}, Lnet/sf/saxon/expr/XPathContext;->getController()Lnet/sf/saxon/Controller;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/Controller;->getCollectionFinder()Lnet/sf/saxon/lib/CollectionFinder;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p2, p1}, Lnet/sf/saxon/lib/CollectionFinder;->findCollection(Lnet/sf/saxon/expr/XPathContext;Ljava/lang/String;)Lnet/sf/saxon/lib/ResourceCollection;

    move-result-object p0

    :cond_0
    if-nez p0, :cond_2

    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No collection has been defined for href: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_1

    const-string p1, ""

    :cond_1
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    const-string p1, "FODC0002"

    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/XPathException;->setErrorCode(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lnet/sf/saxon/trans/XPathException;->setXPathContext(Lnet/sf/saxon/expr/XPathContext;)V

    throw p0

    :cond_2
    invoke-interface {p0, p2}, Lnet/sf/saxon/lib/ResourceCollection;->getResourceURIs(Lnet/sf/saxon/expr/XPathContext;)Ljava/util/Iterator;

    move-result-object p0

    new-instance p1, Lnet/sf/saxon/tree/jiter/MappingJavaIterator;

    new-instance p2, Lcom/sunia/HTREnginev2/ayn;

    invoke-direct {p2}, Lcom/sunia/HTREnginev2/ayn;-><init>()V

    invoke-direct {p1, p0, p2}, Lnet/sf/saxon/tree/jiter/MappingJavaIterator;-><init>(Ljava/util/Iterator;Ljava/util/function/Function;)V

    new-instance p0, Lnet/sf/saxon/om/IteratorWrapper;

    invoke-direct {p0, p1}, Lnet/sf/saxon/om/IteratorWrapper;-><init>(Ljava/util/Iterator;)V

    return-object p0
.end method

.method public call(Lnet/sf/saxon/expr/XPathContext;[Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/om/Sequence;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    array-length v0, p2

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/functions/UriCollection;->b(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/Sequence;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    aget-object p2, p2, v0

    invoke-interface {p2}, Lnet/sf/saxon/om/Sequence;->head()Lnet/sf/saxon/om/Item;

    move-result-object p2

    if-nez p2, :cond_1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/functions/UriCollection;->b(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/Sequence;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-interface {p2}, Lnet/sf/saxon/om/Item;->getStringValue()Ljava/lang/String;

    move-result-object p2

    :try_start_0
    new-instance v0, Ljava/net/URI;

    invoke-direct {v0, p2}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v0}, Ljava/net/URI;->isAbsolute()Z

    move-result p2

    if-nez p2, :cond_3

    invoke-virtual {p0}, Lnet/sf/saxon/functions/SystemFunction;->getRetainedStaticContext()Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    move-result-object p2

    invoke-virtual {p2}, Lnet/sf/saxon/expr/parser/RetainedStaticContext;->getStaticBaseUri()Ljava/net/URI;

    move-result-object p2

    if-eqz p2, :cond_2

    invoke-virtual {p2, v0}, Ljava/net/URI;->resolve(Ljava/net/URI;)Ljava/net/URI;

    move-result-object v0

    goto :goto_0

    :cond_2
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    const-string p1, "No base URI available for uri-collection"

    const-string p2, "FODC0002"

    invoke-direct {p0, p1, p2}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_0
    new-instance p2, Lnet/sf/saxon/om/LazySequence;

    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lnet/sf/saxon/functions/UriCollection;->c(Ljava/lang/String;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p0

    invoke-direct {p2, p0}, Lnet/sf/saxon/om/LazySequence;-><init>(Lnet/sf/saxon/om/SequenceIterator;)V

    return-object p2

    :catch_0
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid URI passed to uri-collection: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "FODC0004"

    invoke-direct {p0, p1, p2}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p0
.end method
