.class public Lorg/xmlresolver/XercesResolver;
.super Lorg/xmlresolver/Resolver;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xerces/xni/parser/XMLEntityResolver;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/xmlresolver/Resolver;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/xmlresolver/CatalogResolver;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lorg/xmlresolver/Resolver;-><init>(Lorg/xmlresolver/CatalogResolver;)V

    return-void
.end method

.method public constructor <init>(Lorg/xmlresolver/XMLResolverConfiguration;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/xmlresolver/Resolver;-><init>(Lorg/xmlresolver/XMLResolverConfiguration;)V

    return-void
.end method


# virtual methods
.method public final a(Lorg/apache/xerces/xni/grammars/XMLDTDDescription;)Lorg/apache/xerces/xni/parser/XMLInputSource;
    .locals 5

    iget-object v0, p0, Lorg/xmlresolver/Resolver;->resolver:Lorg/xmlresolver/CatalogResolver;

    invoke-interface {p1}, Lorg/apache/xerces/xni/grammars/XMLDTDDescription;->getRootName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lorg/apache/xerces/xni/XMLResourceIdentifier;->getPublicId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lorg/apache/xerces/xni/XMLResourceIdentifier;->getLiteralSystemId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1}, Lorg/apache/xerces/xni/XMLResourceIdentifier;->getBaseSystemId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/xmlresolver/CatalogResolver;->resolveEntity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlresolver/ResolvedResource;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lorg/xmlresolver/Resolver;->resolver:Lorg/xmlresolver/CatalogResolver;

    invoke-interface {p1}, Lorg/apache/xerces/xni/grammars/XMLDTDDescription;->getRootName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lorg/apache/xerces/xni/XMLResourceIdentifier;->getPublicId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lorg/apache/xerces/xni/XMLResourceIdentifier;->getExpandedSystemId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lorg/apache/xerces/xni/XMLResourceIdentifier;->getBaseSystemId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, v1, v2, p1}, Lorg/xmlresolver/CatalogResolver;->resolveEntity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlresolver/ResolvedResource;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    new-instance p0, Lorg/apache/xerces/util/SAXInputSource;

    new-instance p1, Lorg/xmlresolver/sources/ResolverInputSource;

    invoke-virtual {v0}, Lorg/xmlresolver/ResolvedResource;->getLocalURI()Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v0}, Lorg/xmlresolver/ResolvedResource;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {p1, v1, v0}, Lorg/xmlresolver/sources/ResolverInputSource;-><init>(Ljava/net/URI;Ljava/io/InputStream;)V

    invoke-direct {p0, p1}, Lorg/apache/xerces/util/SAXInputSource;-><init>(Lorg/xml/sax/InputSource;)V

    :goto_0
    return-object p0
.end method

.method public final b(Lorg/apache/xerces/impl/XMLEntityDescription;)Lorg/apache/xerces/xni/parser/XMLInputSource;
    .locals 5

    invoke-interface {p1}, Lorg/apache/xerces/impl/XMLEntityDescription;->getEntityName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_1
    iget-object v1, p0, Lorg/xmlresolver/Resolver;->resolver:Lorg/xmlresolver/CatalogResolver;

    invoke-interface {p1}, Lorg/apache/xerces/xni/XMLResourceIdentifier;->getPublicId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lorg/apache/xerces/xni/XMLResourceIdentifier;->getLiteralSystemId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1}, Lorg/apache/xerces/xni/XMLResourceIdentifier;->getBaseSystemId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v0, v2, v3, v4}, Lorg/xmlresolver/CatalogResolver;->resolveEntity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlresolver/ResolvedResource;

    move-result-object v1

    if-nez v1, :cond_2

    iget-object p0, p0, Lorg/xmlresolver/Resolver;->resolver:Lorg/xmlresolver/CatalogResolver;

    invoke-interface {p1}, Lorg/apache/xerces/xni/XMLResourceIdentifier;->getPublicId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lorg/apache/xerces/xni/XMLResourceIdentifier;->getExpandedSystemId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lorg/apache/xerces/xni/XMLResourceIdentifier;->getBaseSystemId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, v1, v2, p1}, Lorg/xmlresolver/CatalogResolver;->resolveEntity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlresolver/ResolvedResource;

    move-result-object v1

    :cond_2
    if-nez v1, :cond_3

    const/4 p0, 0x0

    goto :goto_0

    :cond_3
    new-instance p0, Lorg/apache/xerces/util/SAXInputSource;

    new-instance p1, Lorg/xmlresolver/sources/ResolverInputSource;

    invoke-virtual {v1}, Lorg/xmlresolver/ResolvedResource;->getLocalURI()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v1}, Lorg/xmlresolver/ResolvedResource;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lorg/xmlresolver/sources/ResolverInputSource;-><init>(Ljava/net/URI;Ljava/io/InputStream;)V

    invoke-direct {p0, p1}, Lorg/apache/xerces/util/SAXInputSource;-><init>(Lorg/xml/sax/InputSource;)V

    :goto_0
    return-object p0
.end method

.method public final c(Lorg/apache/xerces/impl/xs/XSDDescription;)Lorg/apache/xerces/xni/parser/XMLInputSource;
    .locals 3

    invoke-virtual {p1}, Lorg/apache/xerces/util/XMLResourceIdentifierImpl;->getLiteralSystemId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/xmlresolver/Resolver;->resolver:Lorg/xmlresolver/CatalogResolver;

    invoke-virtual {p1}, Lorg/apache/xerces/util/XMLResourceIdentifierImpl;->getLiteralSystemId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/xerces/util/XMLResourceIdentifierImpl;->getBaseSystemId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lorg/xmlresolver/CatalogResolver;->resolveURI(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlresolver/ResolvedResource;

    move-result-object p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/xmlresolver/Resolver;->resolver:Lorg/xmlresolver/CatalogResolver;

    invoke-virtual {p1}, Lorg/apache/xerces/util/XMLResourceIdentifierImpl;->getNamespace()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/xerces/util/XMLResourceIdentifierImpl;->getBaseSystemId()Ljava/lang/String;

    move-result-object p1

    const-string v1, "http://www.w3.org/2001/XMLSchema"

    const-string v2, "http://www.rddl.org/purposes#schema-validation"

    invoke-virtual {p0, v0, p1, v1, v2}, Lorg/xmlresolver/CatalogResolver;->resolveNamespace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlresolver/ResolvedResource;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_1

    new-instance p1, Lorg/xmlresolver/sources/ResolverInputSource;

    invoke-virtual {p0}, Lorg/xmlresolver/ResolvedResource;->getLocalURI()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {p0}, Lorg/xmlresolver/ResolvedResource;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lorg/xmlresolver/sources/ResolverInputSource;-><init>(Ljava/net/URI;Ljava/io/InputStream;)V

    invoke-virtual {p0}, Lorg/xmlresolver/ResolvedResource;->getLocalURI()Ljava/net/URI;

    move-result-object p0

    invoke-virtual {p0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lorg/xml/sax/InputSource;->setSystemId(Ljava/lang/String;)V

    new-instance p0, Lorg/apache/xerces/util/SAXInputSource;

    invoke-direct {p0, p1}, Lorg/apache/xerces/util/SAXInputSource;-><init>(Lorg/xml/sax/InputSource;)V

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public resolveEntity(Lorg/apache/xerces/xni/XMLResourceIdentifier;)Lorg/apache/xerces/xni/parser/XMLInputSource;
    .locals 6

    instance-of v0, p1, Lorg/apache/xerces/xni/grammars/XMLDTDDescription;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/apache/xerces/xni/grammars/XMLDTDDescription;

    invoke-virtual {p0, p1}, Lorg/xmlresolver/XercesResolver;->a(Lorg/apache/xerces/xni/grammars/XMLDTDDescription;)Lorg/apache/xerces/xni/parser/XMLInputSource;

    move-result-object p0

    return-object p0

    :cond_0
    instance-of v0, p1, Lorg/apache/xerces/impl/XMLEntityDescription;

    if-eqz v0, :cond_1

    check-cast p1, Lorg/apache/xerces/impl/XMLEntityDescription;

    invoke-virtual {p0, p1}, Lorg/xmlresolver/XercesResolver;->b(Lorg/apache/xerces/impl/XMLEntityDescription;)Lorg/apache/xerces/xni/parser/XMLInputSource;

    move-result-object p0

    return-object p0

    :cond_1
    instance-of v0, p1, Lorg/apache/xerces/impl/xs/XSDDescription;

    if-eqz v0, :cond_2

    check-cast p1, Lorg/apache/xerces/impl/xs/XSDDescription;

    invoke-virtual {p0, p1}, Lorg/xmlresolver/XercesResolver;->c(Lorg/apache/xerces/impl/xs/XSDDescription;)Lorg/apache/xerces/xni/parser/XMLInputSource;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-interface {p1}, Lorg/apache/xerces/xni/XMLResourceIdentifier;->getPublicId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lorg/apache/xerces/xni/XMLResourceIdentifier;->getLiteralSystemId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lorg/apache/xerces/xni/XMLResourceIdentifier;->getBaseSystemId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lorg/apache/xerces/xni/XMLResourceIdentifier;->getNamespace()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    if-nez v3, :cond_3

    iget-object v5, p0, Lorg/xmlresolver/Resolver;->resolver:Lorg/xmlresolver/CatalogResolver;

    invoke-virtual {v5, v4, v0, v1, v2}, Lorg/xmlresolver/CatalogResolver;->resolveEntity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlresolver/ResolvedResource;

    move-result-object v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lorg/xmlresolver/Resolver;->resolver:Lorg/xmlresolver/CatalogResolver;

    invoke-interface {p1}, Lorg/apache/xerces/xni/XMLResourceIdentifier;->getExpandedSystemId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v0, v5, v2}, Lorg/xmlresolver/CatalogResolver;->resolveEntity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlresolver/ResolvedResource;

    move-result-object v1

    goto :goto_0

    :cond_3
    move-object v1, v4

    :cond_4
    :goto_0
    if-nez v1, :cond_5

    iget-object p0, p0, Lorg/xmlresolver/Resolver;->resolver:Lorg/xmlresolver/CatalogResolver;

    invoke-interface {p1}, Lorg/apache/xerces/xni/XMLResourceIdentifier;->getBaseSystemId()Ljava/lang/String;

    move-result-object p1

    const-string v0, "http://www.w3.org/2001/XMLSchema"

    const-string v1, "http://www.rddl.org/purposes#schema-validation"

    invoke-virtual {p0, v3, p1, v0, v1}, Lorg/xmlresolver/CatalogResolver;->resolveNamespace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlresolver/ResolvedResource;

    move-result-object v1

    :cond_5
    if-nez v1, :cond_6

    goto :goto_1

    :cond_6
    new-instance v4, Lorg/apache/xerces/util/SAXInputSource;

    new-instance p0, Lorg/xmlresolver/sources/ResolverInputSource;

    invoke-virtual {v1}, Lorg/xmlresolver/ResolvedResource;->getLocalURI()Ljava/net/URI;

    move-result-object p1

    invoke-virtual {v1}, Lorg/xmlresolver/ResolvedResource;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/xmlresolver/sources/ResolverInputSource;-><init>(Ljava/net/URI;Ljava/io/InputStream;)V

    invoke-direct {v4, p0}, Lorg/apache/xerces/util/SAXInputSource;-><init>(Lorg/xml/sax/InputSource;)V

    :goto_1
    return-object v4
.end method
