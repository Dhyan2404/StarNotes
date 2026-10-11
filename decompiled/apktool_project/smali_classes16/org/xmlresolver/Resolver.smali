.class public Lorg/xmlresolver/Resolver;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljavax/xml/transform/URIResolver;
.implements Lorg/xml/sax/EntityResolver;
.implements Lorg/xml/sax/ext/EntityResolver2;
.implements Lorg/xmlresolver/NamespaceResolver;
.implements Lorg/w3c/dom/ls/LSResourceResolver;


# static fields
.field public static final NATURE_RELAX_NG:Ljava/lang/String; = "http://relaxng.org/ns/structure/1.0"

.field public static final NATURE_XML_SCHEMA:Ljava/lang/String; = "http://www.w3.org/2001/XMLSchema"

.field public static final NATURE_XML_SCHEMA_1_1:Ljava/lang/String; = "http://www.w3.org/2001/XMLSchema/v1.1"

.field public static final PURPOSE_SCHEMA_VALIDATION:Ljava/lang/String; = "http://www.rddl.org/purposes#schema-validation"


# instance fields
.field protected final config:Lorg/xmlresolver/XMLResolverConfiguration;

.field public final e:Lorg/xmlresolver/logging/ResolverLogger;

.field protected final resolver:Lorg/xmlresolver/CatalogResolver;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lorg/xmlresolver/XMLResolverConfiguration;

    invoke-direct {v0}, Lorg/xmlresolver/XMLResolverConfiguration;-><init>()V

    iput-object v0, p0, Lorg/xmlresolver/Resolver;->config:Lorg/xmlresolver/XMLResolverConfiguration;

    .line 3
    new-instance v1, Lorg/xmlresolver/CatalogResolver;

    invoke-direct {v1, v0}, Lorg/xmlresolver/CatalogResolver;-><init>(Lorg/xmlresolver/XMLResolverConfiguration;)V

    iput-object v1, p0, Lorg/xmlresolver/Resolver;->resolver:Lorg/xmlresolver/CatalogResolver;

    .line 4
    sget-object v1, Lorg/xmlresolver/ResolverFeature;->RESOLVER_LOGGER:Lorg/xmlresolver/ResolverFeature;

    invoke-virtual {v0, v1}, Lorg/xmlresolver/XMLResolverConfiguration;->getFeature(Lorg/xmlresolver/ResolverFeature;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xmlresolver/logging/ResolverLogger;

    iput-object v0, p0, Lorg/xmlresolver/Resolver;->e:Lorg/xmlresolver/logging/ResolverLogger;

    return-void
.end method

.method public constructor <init>(Lorg/xmlresolver/CatalogResolver;)V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    invoke-virtual {p1}, Lorg/xmlresolver/CatalogResolver;->getConfiguration()Lorg/xmlresolver/XMLResolverConfiguration;

    move-result-object v0

    iput-object v0, p0, Lorg/xmlresolver/Resolver;->config:Lorg/xmlresolver/XMLResolverConfiguration;

    .line 11
    iput-object p1, p0, Lorg/xmlresolver/Resolver;->resolver:Lorg/xmlresolver/CatalogResolver;

    .line 12
    sget-object p1, Lorg/xmlresolver/ResolverFeature;->RESOLVER_LOGGER:Lorg/xmlresolver/ResolverFeature;

    invoke-virtual {v0, p1}, Lorg/xmlresolver/XMLResolverConfiguration;->getFeature(Lorg/xmlresolver/ResolverFeature;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/xmlresolver/logging/ResolverLogger;

    iput-object p1, p0, Lorg/xmlresolver/Resolver;->e:Lorg/xmlresolver/logging/ResolverLogger;

    return-void
.end method

.method public constructor <init>(Lorg/xmlresolver/XMLResolverConfiguration;)V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lorg/xmlresolver/Resolver;->config:Lorg/xmlresolver/XMLResolverConfiguration;

    .line 7
    new-instance v0, Lorg/xmlresolver/CatalogResolver;

    invoke-direct {v0, p1}, Lorg/xmlresolver/CatalogResolver;-><init>(Lorg/xmlresolver/XMLResolverConfiguration;)V

    iput-object v0, p0, Lorg/xmlresolver/Resolver;->resolver:Lorg/xmlresolver/CatalogResolver;

    .line 8
    sget-object v0, Lorg/xmlresolver/ResolverFeature;->RESOLVER_LOGGER:Lorg/xmlresolver/ResolverFeature;

    invoke-virtual {p1, v0}, Lorg/xmlresolver/XMLResolverConfiguration;->getFeature(Lorg/xmlresolver/ResolverFeature;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/xmlresolver/logging/ResolverLogger;

    iput-object p1, p0, Lorg/xmlresolver/Resolver;->e:Lorg/xmlresolver/logging/ResolverLogger;

    return-void
.end method

.method public static version()Ljava/lang/String;
    .locals 1

    const-string v0, "4.4.3"

    return-object v0
.end method


# virtual methods
.method public getCatalogResolver()Lorg/xmlresolver/CatalogResolver;
    .locals 0

    iget-object p0, p0, Lorg/xmlresolver/Resolver;->resolver:Lorg/xmlresolver/CatalogResolver;

    return-object p0
.end method

.method public getConfiguration()Lorg/xmlresolver/XMLResolverConfiguration;
    .locals 0

    iget-object p0, p0, Lorg/xmlresolver/Resolver;->resolver:Lorg/xmlresolver/CatalogResolver;

    invoke-virtual {p0}, Lorg/xmlresolver/CatalogResolver;->getConfiguration()Lorg/xmlresolver/XMLResolverConfiguration;

    move-result-object p0

    return-object p0
.end method

.method public getExternalSubset(Ljava/lang/String;Ljava/lang/String;)Lorg/xml/sax/InputSource;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Lorg/xmlresolver/Resolver;->resolver:Lorg/xmlresolver/CatalogResolver;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0, p2}, Lorg/xmlresolver/CatalogResolver;->resolveEntity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlresolver/ResolvedResource;

    move-result-object p0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    new-instance p1, Lorg/xmlresolver/sources/ResolverInputSource;

    invoke-virtual {p0}, Lorg/xmlresolver/ResolvedResource;->getLocalURI()Ljava/net/URI;

    move-result-object p2

    invoke-virtual {p0}, Lorg/xmlresolver/ResolvedResource;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Lorg/xmlresolver/sources/ResolverInputSource;-><init>(Ljava/net/URI;Ljava/io/InputStream;)V

    invoke-virtual {p0}, Lorg/xmlresolver/ResolvedResource;->getResolvedURI()Ljava/net/URI;

    move-result-object p0

    invoke-virtual {p0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lorg/xml/sax/InputSource;->setSystemId(Ljava/lang/String;)V

    return-object p1
.end method

.method public resolve(Ljava/lang/String;Ljava/lang/String;)Ljavax/xml/transform/Source;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    iget-object p0, p0, Lorg/xmlresolver/Resolver;->resolver:Lorg/xmlresolver/CatalogResolver;

    invoke-virtual {p0, p1, p2}, Lorg/xmlresolver/CatalogResolver;->resolveURI(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlresolver/ResolvedResource;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance p1, Lorg/xmlresolver/sources/ResolverSAXSource;

    invoke-virtual {p0}, Lorg/xmlresolver/ResolvedResource;->getLocalURI()Ljava/net/URI;

    move-result-object p2

    new-instance v0, Lorg/xml/sax/InputSource;

    invoke-virtual {p0}, Lorg/xmlresolver/ResolvedResource;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p1, p2, v0}, Lorg/xmlresolver/sources/ResolverSAXSource;-><init>(Ljava/net/URI;Lorg/xml/sax/InputSource;)V

    invoke-virtual {p0}, Lorg/xmlresolver/ResolvedResource;->getResolvedURI()Ljava/net/URI;

    move-result-object p0

    invoke-virtual {p0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljavax/xml/transform/sax/SAXSource;->setSystemId(Ljava/lang/String;)V

    return-object p1
.end method

.method public resolveEntity(Ljava/lang/String;Ljava/lang/String;)Lorg/xml/sax/InputSource;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 4
    iget-object p0, p0, Lorg/xmlresolver/Resolver;->resolver:Lorg/xmlresolver/CatalogResolver;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2, v0}, Lorg/xmlresolver/CatalogResolver;->resolveEntity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlresolver/ResolvedResource;

    move-result-object p0

    if-nez p0, :cond_0

    return-object v0

    .line 5
    :cond_0
    new-instance p1, Lorg/xmlresolver/sources/ResolverInputSource;

    invoke-virtual {p0}, Lorg/xmlresolver/ResolvedResource;->getLocalURI()Ljava/net/URI;

    move-result-object p2

    invoke-virtual {p0}, Lorg/xmlresolver/ResolvedResource;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Lorg/xmlresolver/sources/ResolverInputSource;-><init>(Ljava/net/URI;Ljava/io/InputStream;)V

    .line 6
    invoke-virtual {p0}, Lorg/xmlresolver/ResolvedResource;->getResolvedURI()Ljava/net/URI;

    move-result-object p0

    invoke-virtual {p0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lorg/xml/sax/InputSource;->setSystemId(Ljava/lang/String;)V

    return-object p1
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
    iget-object p0, p0, Lorg/xmlresolver/Resolver;->resolver:Lorg/xmlresolver/CatalogResolver;

    invoke-virtual {p0, p1, p2, p4, p3}, Lorg/xmlresolver/CatalogResolver;->resolveEntity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlresolver/ResolvedResource;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2
    :cond_0
    new-instance p1, Lorg/xmlresolver/sources/ResolverInputSource;

    invoke-virtual {p0}, Lorg/xmlresolver/ResolvedResource;->getLocalURI()Ljava/net/URI;

    move-result-object p2

    invoke-virtual {p0}, Lorg/xmlresolver/ResolvedResource;->getInputStream()Ljava/io/InputStream;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Lorg/xmlresolver/sources/ResolverInputSource;-><init>(Ljava/net/URI;Ljava/io/InputStream;)V

    .line 3
    invoke-virtual {p0}, Lorg/xmlresolver/ResolvedResource;->getResolvedURI()Ljava/net/URI;

    move-result-object p0

    invoke-virtual {p0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lorg/xml/sax/InputSource;->setSystemId(Ljava/lang/String;)V

    return-object p1
.end method

.method public resolveNamespace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljavax/xml/transform/Source;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    iget-object p0, p0, Lorg/xmlresolver/Resolver;->resolver:Lorg/xmlresolver/CatalogResolver;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2, p3}, Lorg/xmlresolver/CatalogResolver;->resolveNamespace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlresolver/ResolvedResource;

    move-result-object p0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    new-instance p1, Lorg/xmlresolver/sources/ResolverSAXSource;

    invoke-virtual {p0}, Lorg/xmlresolver/ResolvedResource;->getLocalURI()Ljava/net/URI;

    move-result-object p2

    new-instance p3, Lorg/xml/sax/InputSource;

    invoke-virtual {p0}, Lorg/xmlresolver/ResolvedResource;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {p3, v0}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p1, p2, p3}, Lorg/xmlresolver/sources/ResolverSAXSource;-><init>(Ljava/net/URI;Lorg/xml/sax/InputSource;)V

    invoke-virtual {p0}, Lorg/xmlresolver/ResolvedResource;->getResolvedURI()Ljava/net/URI;

    move-result-object p0

    invoke-virtual {p0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljavax/xml/transform/sax/SAXSource;->setSystemId(Ljava/lang/String;)V

    return-object p1
.end method

.method public resolveResource(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/ls/LSInput;
    .locals 4

    const-string v0, "request"

    const/4 v1, 0x0

    if-eqz p1, :cond_4

    const-string v2, "http://www.w3.org/TR/REC-xml"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_2

    :cond_0
    iget-object v2, p0, Lorg/xmlresolver/Resolver;->e:Lorg/xmlresolver/logging/ResolverLogger;

    const-string v3, "resolveResource: %s, %s (namespace: %s, baseURI: %s, publicId: %s)"

    filled-new-array {p1, p4, p2, p5, p3}, [Ljava/lang/Object;

    move-result-object p2

    invoke-interface {v2, v0, v3, p2}, Lorg/xmlresolver/logging/ResolverLogger;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string p2, "http://www.w3.org/2001/XMLSchema"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    const-string p2, "http://www.w3.org/2001/XMLSchema/v1.1"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    const-string p2, "http://relaxng.org/ns/structure/1.0"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    move-object p2, v1

    goto :goto_1

    :cond_2
    :goto_0
    const-string p2, "http://www.rddl.org/purposes#schema-validation"

    :goto_1
    if-eqz p4, :cond_3

    iget-object p0, p0, Lorg/xmlresolver/Resolver;->resolver:Lorg/xmlresolver/CatalogResolver;

    invoke-virtual {p0, p4, p5, p1, p2}, Lorg/xmlresolver/CatalogResolver;->resolveNamespace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlresolver/ResolvedResource;

    move-result-object p0

    goto :goto_3

    :cond_3
    move-object p0, v1

    goto :goto_3

    :cond_4
    :goto_2
    iget-object p1, p0, Lorg/xmlresolver/Resolver;->e:Lorg/xmlresolver/logging/ResolverLogger;

    const-string p2, "resolveResource: XML: %s (baseURI: %s, publicId: %s)"

    filled-new-array {p4, p5, p3}, [Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v0, p2, v2}, Lorg/xmlresolver/logging/ResolverLogger;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p0, p0, Lorg/xmlresolver/Resolver;->resolver:Lorg/xmlresolver/CatalogResolver;

    invoke-virtual {p0, v1, p3, p4, p5}, Lorg/xmlresolver/CatalogResolver;->resolveEntity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlresolver/ResolvedResource;

    move-result-object p0

    :goto_3
    if-nez p0, :cond_5

    return-object v1

    :cond_5
    new-instance p1, Lorg/xmlresolver/sources/ResolverLSInput;

    invoke-direct {p1, p0, p3}, Lorg/xmlresolver/sources/ResolverLSInput;-><init>(Lorg/xmlresolver/ResolvedResource;Ljava/lang/String;)V

    return-object p1
.end method
