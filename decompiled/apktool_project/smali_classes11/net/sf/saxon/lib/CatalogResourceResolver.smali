.class public Lnet/sf/saxon/lib/CatalogResourceResolver;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/lib/ResourceResolver;
.implements Lnet/sf/saxon/lib/ConfigurableResourceResolver;
.implements Lorg/xml/sax/EntityResolver;
.implements Lorg/xml/sax/ext/EntityResolver2;


# instance fields
.field public e:Lorg/xmlresolver/Resolver;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lorg/xmlresolver/Resolver;

    new-instance v1, Lorg/xmlresolver/XMLResolverConfiguration;

    const/4 v2, 0x0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/xmlresolver/XMLResolverConfiguration;-><init>(Ljava/util/List;Ljava/util/List;)V

    invoke-direct {v0, v1}, Lorg/xmlresolver/Resolver;-><init>(Lorg/xmlresolver/XMLResolverConfiguration;)V

    iput-object v0, p0, Lnet/sf/saxon/lib/CatalogResourceResolver;->e:Lorg/xmlresolver/Resolver;

    .line 3
    invoke-virtual {v0}, Lorg/xmlresolver/Resolver;->getConfiguration()Lorg/xmlresolver/XMLResolverConfiguration;

    move-result-object p0

    sget-object v0, Lorg/xmlresolver/ResolverFeature;->THROW_URI_EXCEPTIONS:Lorg/xmlresolver/ResolverFeature;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0, v1}, Lorg/xmlresolver/XMLResolverConfiguration;->setFeature(Lorg/xmlresolver/ResolverFeature;Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lorg/xmlresolver/Resolver;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lnet/sf/saxon/lib/CatalogResourceResolver;->e:Lorg/xmlresolver/Resolver;

    return-void
.end method


# virtual methods
.method public getExternalSubset(Ljava/lang/String;Ljava/lang/String;)Lorg/xml/sax/InputSource;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Lnet/sf/saxon/lib/CatalogResourceResolver;->e:Lorg/xmlresolver/Resolver;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2}, Lorg/xmlresolver/Resolver;->getExternalSubset(Ljava/lang/String;Ljava/lang/String;)Lorg/xml/sax/InputSource;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getFeature(Lorg/xmlresolver/ResolverFeature;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/xmlresolver/ResolverFeature<",
            "TT;>;)TT;"
        }
    .end annotation

    iget-object p0, p0, Lnet/sf/saxon/lib/CatalogResourceResolver;->e:Lorg/xmlresolver/Resolver;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/xmlresolver/Resolver;->getConfiguration()Lorg/xmlresolver/XMLResolverConfiguration;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/xmlresolver/XMLResolverConfiguration;->getFeature(Lorg/xmlresolver/ResolverFeature;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public resolve(Lnet/sf/saxon/lib/ResourceRequest;)Ljavax/xml/transform/Source;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object p0, p0, Lnet/sf/saxon/lib/CatalogResourceResolver;->e:Lorg/xmlresolver/Resolver;

    const/4 v0, 0x0

    if-eqz p0, :cond_6

    invoke-virtual {p0}, Lorg/xmlresolver/Resolver;->getCatalogResolver()Lorg/xmlresolver/CatalogResolver;

    move-result-object p0

    iget-boolean v1, p1, Lnet/sf/saxon/lib/ResourceRequest;->uriIsNamespace:Z

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p1, Lnet/sf/saxon/lib/ResourceRequest;->uri:Ljava/lang/String;

    iget-object v2, p1, Lnet/sf/saxon/lib/ResourceRequest;->baseUri:Ljava/lang/String;

    iget-object v3, p1, Lnet/sf/saxon/lib/ResourceRequest;->nature:Ljava/lang/String;

    iget-object p1, p1, Lnet/sf/saxon/lib/ResourceRequest;->purpose:Ljava/lang/String;

    invoke-virtual {p0, v1, v2, v3, p1}, Lorg/xmlresolver/CatalogResolver;->resolveNamespace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlresolver/ResolvedResource;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p0, :cond_5

    return-object v0

    :catch_0
    move-exception p0

    new-instance p1, Lnet/sf/saxon/trans/XPathException;

    const-string v0, "Exception from catalog resolver resolveNamespace(): "

    invoke-direct {p1, v0, p0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_0
    const-string v1, "https://www.iana.org/assignments/media-types/application/xml-dtd"

    iget-object v2, p1, Lnet/sf/saxon/lib/ResourceRequest;->nature:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v0

    :cond_1
    const-string v1, "https://www.iana.org/assignments/media-types/application/xml-external-parsed-entity"

    iget-object v2, p1, Lnet/sf/saxon/lib/ResourceRequest;->nature:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :try_start_1
    iget-object v1, p1, Lnet/sf/saxon/lib/ResourceRequest;->entityName:Ljava/lang/String;

    iget-object v2, p1, Lnet/sf/saxon/lib/ResourceRequest;->publicId:Ljava/lang/String;

    iget-object v3, p1, Lnet/sf/saxon/lib/ResourceRequest;->baseUri:Ljava/lang/String;

    iget-object p1, p1, Lnet/sf/saxon/lib/ResourceRequest;->uri:Ljava/lang/String;

    invoke-virtual {p0, v1, v2, v3, p1}, Lorg/xmlresolver/CatalogResolver;->resolveEntity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlresolver/ResolvedResource;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p0

    new-instance p1, Lnet/sf/saxon/trans/XPathException;

    const-string v0, "Exception from catalog resolver resolveEntity():"

    invoke-direct {p1, v0, p0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_2
    iget-object v1, p1, Lnet/sf/saxon/lib/ResourceRequest;->relativeUri:Ljava/lang/String;

    if-nez v1, :cond_3

    iget-object v1, p1, Lnet/sf/saxon/lib/ResourceRequest;->uri:Ljava/lang/String;

    :cond_3
    iget-object v2, p1, Lnet/sf/saxon/lib/ResourceRequest;->baseUri:Ljava/lang/String;

    if-nez v2, :cond_4

    iget-object v2, p1, Lnet/sf/saxon/lib/ResourceRequest;->uri:Ljava/lang/String;

    :cond_4
    :try_start_2
    invoke-virtual {p0, v1, v2}, Lorg/xmlresolver/CatalogResolver;->resolveURI(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlresolver/ResolvedResource;

    move-result-object p0
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_5
    :goto_0
    if-eqz p0, :cond_6

    new-instance p1, Lnet/sf/saxon/resource/TypedStreamSource;

    invoke-direct {p1}, Lnet/sf/saxon/resource/TypedStreamSource;-><init>()V

    invoke-virtual {p0}, Lorg/xmlresolver/ResolvedResource;->getResolvedURI()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljavax/xml/transform/stream/StreamSource;->setSystemId(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/xmlresolver/ResolvedResource;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljavax/xml/transform/stream/StreamSource;->setInputStream(Ljava/io/InputStream;)V

    invoke-virtual {p0}, Lorg/xmlresolver/ResolvedResource;->getContentType()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lnet/sf/saxon/resource/TypedStreamSource;->setContentType(Ljava/lang/String;)V

    return-object p1

    :catch_2
    move-exception p0

    new-instance p1, Lnet/sf/saxon/trans/XPathException;

    const-string v0, "Exception from catalog resolver resolverURI()"

    invoke-direct {p1, v0, p0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_6
    return-object v0
.end method

.method public resolveEntity(Ljava/lang/String;Ljava/lang/String;)Lorg/xml/sax/InputSource;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 6
    iget-object p0, p0, Lnet/sf/saxon/lib/CatalogResourceResolver;->e:Lorg/xmlresolver/Resolver;

    if-eqz p0, :cond_0

    .line 7
    invoke-virtual {p0, p1, p2}, Lorg/xmlresolver/Resolver;->resolveEntity(Ljava/lang/String;Ljava/lang/String;)Lorg/xml/sax/InputSource;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public resolveEntity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xml/sax/InputSource;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object p0, p0, Lnet/sf/saxon/lib/CatalogResourceResolver;->e:Lorg/xmlresolver/Resolver;

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/xmlresolver/Resolver;->resolveEntity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xml/sax/InputSource;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0

    :catch_0
    move-exception p0

    .line 3
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    instance-of p1, p1, Ljava/io/IOException;

    if-eqz p1, :cond_1

    .line 4
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Ljava/io/IOException;

    throw p0

    .line 5
    :cond_1
    new-instance p1, Lorg/xml/sax/SAXException;

    invoke-direct {p1, p0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw p1
.end method

.method public resolveNamespace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljavax/xml/transform/Source;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    iget-object p0, p0, Lnet/sf/saxon/lib/CatalogResourceResolver;->e:Lorg/xmlresolver/Resolver;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Lorg/xmlresolver/Resolver;->resolveNamespace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljavax/xml/transform/Source;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public setFeature(Lorg/xmlresolver/ResolverFeature;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/xmlresolver/ResolverFeature<",
            "TT;>;TT;)V"
        }
    .end annotation

    iget-object p0, p0, Lnet/sf/saxon/lib/CatalogResourceResolver;->e:Lorg/xmlresolver/Resolver;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lorg/xmlresolver/Resolver;->getConfiguration()Lorg/xmlresolver/XMLResolverConfiguration;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lorg/xmlresolver/XMLResolverConfiguration;->setFeature(Lorg/xmlresolver/ResolverFeature;Ljava/lang/Object;)V

    return-void
.end method
