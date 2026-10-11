.class public Lnet/sf/saxon/lib/StandardModuleURIResolver;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/lib/ModuleURIResolver;


# instance fields
.field public a:Lnet/sf/saxon/Configuration;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lnet/sf/saxon/lib/StandardModuleURIResolver;->a:Lnet/sf/saxon/Configuration;

    return-void
.end method

.method public constructor <init>(Lnet/sf/saxon/Configuration;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lnet/sf/saxon/lib/StandardModuleURIResolver;->a:Lnet/sf/saxon/Configuration;

    return-void
.end method


# virtual methods
.method public final a(Ljavax/xml/transform/Source;)Ljavax/xml/transform/stream/StreamSource;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    instance-of p0, p1, Ljavax/xml/transform/stream/StreamSource;

    if-eqz p0, :cond_0

    check-cast p1, Ljavax/xml/transform/stream/StreamSource;

    return-object p1

    :cond_0
    instance-of p0, p1, Ljavax/xml/transform/sax/SAXSource;

    if-eqz p0, :cond_1

    check-cast p1, Ljavax/xml/transform/sax/SAXSource;

    invoke-static {p1}, Lnet/sf/saxon/lib/ResourceResolverWrappingURIResolver;->convertToStreamSource(Ljavax/xml/transform/sax/SAXSource;)Ljavax/xml/transform/stream/StreamSource;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    const-string p1, "Resource resolver returned non-StreamSource for XQuery module"

    const-string v0, "XQST0059"

    invoke-direct {p0, p1, v0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/XPathException;->setIsStaticError(Z)V

    throw p0
.end method

.method public resolve(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)[Ljavax/xml/transform/stream/StreamSource;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/lib/StandardModuleURIResolver;->a:Lnet/sf/saxon/Configuration;

    if-eqz v0, :cond_4

    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/lib/StandardModuleURIResolver;->resolveModuleURI(Ljava/lang/String;Ljava/lang/String;)Ljavax/xml/transform/stream/StreamSource;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    new-array p0, v2, [Ljavax/xml/transform/stream/StreamSource;

    aput-object v0, p0, v1

    return-object p0

    :cond_0
    array-length v0, p3

    if-eqz v0, :cond_3

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    array-length v0, p3

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v3, p3, v2

    invoke-virtual {p0, p2, v3}, Lnet/sf/saxon/lib/StandardModuleURIResolver;->resolveLocationHint(Ljava/lang/String;Ljava/lang/String;)Ljavax/xml/transform/stream/StreamSource;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    new-array p0, v1, [Ljavax/xml/transform/stream/StreamSource;

    invoke-interface {p1, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljavax/xml/transform/stream/StreamSource;

    return-object p0

    :cond_3
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Cannot locate module for namespace "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    const-string p1, "XQST0059"

    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/XPathException;->setErrorCode(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lnet/sf/saxon/trans/XPathException;->setIsStaticError(Z)V

    throw p0

    :cond_4
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "No Configuration available in StandardModuleResolver"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public resolveLocationHint(Ljava/lang/String;Ljava/lang/String;)Ljavax/xml/transform/stream/StreamSource;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    new-instance v0, Lnet/sf/saxon/lib/ResourceRequest;

    invoke-direct {v0}, Lnet/sf/saxon/lib/ResourceRequest;-><init>()V

    iput-object p1, v0, Lnet/sf/saxon/lib/ResourceRequest;->baseUri:Ljava/lang/String;

    iput-object p2, v0, Lnet/sf/saxon/lib/ResourceRequest;->relativeUri:Ljava/lang/String;

    const-string v1, "https://www.iana.org/assignments/media-types/application/xquery"

    iput-object v1, v0, Lnet/sf/saxon/lib/ResourceRequest;->nature:Ljava/lang/String;

    const/4 v1, 0x1

    :try_start_0
    invoke-static {p2, p1}, Lnet/sf/saxon/functions/ResolveURI;->makeAbsolute(Ljava/lang/String;Ljava/lang/String;)Ljava/net/URI;

    move-result-object p1

    invoke-virtual {p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lnet/sf/saxon/lib/ResourceRequest;->uri:Ljava/lang/String;

    const/4 p1, 0x2

    new-array p1, p1, [Lnet/sf/saxon/lib/ResourceResolver;

    iget-object p2, p0, Lnet/sf/saxon/lib/StandardModuleURIResolver;->a:Lnet/sf/saxon/Configuration;

    invoke-virtual {p2}, Lnet/sf/saxon/Configuration;->getResourceResolver()Lnet/sf/saxon/lib/ResourceResolver;

    move-result-object p2

    const/4 v2, 0x0

    aput-object p2, p1, v2

    new-instance p2, Lnet/sf/saxon/lib/DirectResourceResolver;

    iget-object v2, p0, Lnet/sf/saxon/lib/StandardModuleURIResolver;->a:Lnet/sf/saxon/Configuration;

    invoke-direct {p2, v2}, Lnet/sf/saxon/lib/DirectResourceResolver;-><init>(Lnet/sf/saxon/Configuration;)V

    aput-object p2, p1, v1

    invoke-virtual {v0, p1}, Lnet/sf/saxon/lib/ResourceRequest;->resolve([Lnet/sf/saxon/lib/ResourceResolver;)Ljavax/xml/transform/Source;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lnet/sf/saxon/lib/StandardModuleURIResolver;->a(Ljavax/xml/transform/Source;)Ljavax/xml/transform/stream/StreamSource;

    move-result-object p0
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Lnet/sf/saxon/trans/XPathException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot resolve relative URI "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lnet/sf/saxon/lib/ResourceRequest;->relativeUri:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string p0, "XQST0059"

    invoke-virtual {p1, p0}, Lnet/sf/saxon/trans/XPathException;->setErrorCode(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lnet/sf/saxon/trans/XPathException;->setIsStaticError(Z)V

    throw p1
.end method

.method public resolveModuleURI(Ljava/lang/String;Ljava/lang/String;)Ljavax/xml/transform/stream/StreamSource;
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lnet/sf/saxon/lib/StandardModuleURIResolver;->a:Lnet/sf/saxon/Configuration;

    if-eqz v1, :cond_0

    new-instance v1, Lnet/sf/saxon/lib/ResourceRequest;

    invoke-direct {v1}, Lnet/sf/saxon/lib/ResourceRequest;-><init>()V

    iput-object p1, v1, Lnet/sf/saxon/lib/ResourceRequest;->uri:Ljava/lang/String;

    const/4 p1, 0x1

    iput-boolean p1, v1, Lnet/sf/saxon/lib/ResourceRequest;->uriIsNamespace:Z

    iput-object p2, v1, Lnet/sf/saxon/lib/ResourceRequest;->baseUri:Ljava/lang/String;

    const-string p1, "https://www.iana.org/assignments/media-types/application/xquery"

    iput-object p1, v1, Lnet/sf/saxon/lib/ResourceRequest;->nature:Ljava/lang/String;

    iget-object p1, p0, Lnet/sf/saxon/lib/StandardModuleURIResolver;->a:Lnet/sf/saxon/Configuration;

    invoke-virtual {p1}, Lnet/sf/saxon/Configuration;->getResourceResolver()Lnet/sf/saxon/lib/ResourceResolver;

    move-result-object p1

    invoke-interface {p1, v1}, Lnet/sf/saxon/lib/ResourceResolver;->resolve(Lnet/sf/saxon/lib/ResourceRequest;)Ljavax/xml/transform/Source;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/lib/StandardModuleURIResolver;->a(Ljavax/xml/transform/Source;)Ljavax/xml/transform/stream/StreamSource;

    move-result-object p0
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_1
    return-object v0
.end method

.method public setConfiguration(Lnet/sf/saxon/Configuration;)V
    .locals 1

    iget-object v0, p0, Lnet/sf/saxon/lib/StandardModuleURIResolver;->a:Lnet/sf/saxon/Configuration;

    if-nez v0, :cond_0

    iput-object p1, p0, Lnet/sf/saxon/lib/StandardModuleURIResolver;->a:Lnet/sf/saxon/Configuration;

    :cond_0
    return-void
.end method
