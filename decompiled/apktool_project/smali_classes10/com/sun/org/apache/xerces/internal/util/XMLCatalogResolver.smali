.class public Lcom/sun/org/apache/xerces/internal/util/XMLCatalogResolver;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sun/org/apache/xerces/internal/xni/parser/XMLEntityResolver;
.implements Lorg/xml/sax/ext/EntityResolver2;
.implements Lorg/w3c/dom/ls/LSResourceResolver;


# instance fields
.field private fCatalog:Lcom/sun/org/apache/xml/internal/resolver/Catalog;

.field private fCatalogsChanged:Z

.field private fCatalogsList:[Ljava/lang/String;

.field private fPreferPublic:Z

.field private fResolverCatalogManager:Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;

.field private fUseLiteralSystemId:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1
    invoke-direct {p0, v0, v1}, Lcom/sun/org/apache/xerces/internal/util/XMLCatalogResolver;-><init>([Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/xerces/internal/util/XMLCatalogResolver;-><init>([Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;Z)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/util/XMLCatalogResolver;->fResolverCatalogManager:Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;

    .line 5
    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/util/XMLCatalogResolver;->fCatalog:Lcom/sun/org/apache/xml/internal/resolver/Catalog;

    .line 6
    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/util/XMLCatalogResolver;->fCatalogsList:[Ljava/lang/String;

    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/util/XMLCatalogResolver;->fCatalogsChanged:Z

    .line 8
    iput-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/util/XMLCatalogResolver;->fPreferPublic:Z

    .line 9
    iput-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/util/XMLCatalogResolver;->fUseLiteralSystemId:Z

    .line 10
    invoke-direct {p0, p1, p2}, Lcom/sun/org/apache/xerces/internal/util/XMLCatalogResolver;->init([Ljava/lang/String;Z)V

    return-void
.end method

.method private attachReaderToCatalog(Lcom/sun/org/apache/xml/internal/resolver/Catalog;)V
    .locals 3

    new-instance p0, Lcom/sun/org/apache/xerces/internal/jaxp/SAXParserFactoryImpl;

    invoke-direct {p0}, Lcom/sun/org/apache/xerces/internal/jaxp/SAXParserFactoryImpl;-><init>()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljavax/xml/parsers/SAXParserFactory;->setNamespaceAware(Z)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljavax/xml/parsers/SAXParserFactory;->setValidating(Z)V

    new-instance v0, Lcom/sun/org/apache/xml/internal/resolver/readers/SAXCatalogReader;

    invoke-direct {v0, p0}, Lcom/sun/org/apache/xml/internal/resolver/readers/SAXCatalogReader;-><init>(Ljavax/xml/parsers/SAXParserFactory;)V

    const-string p0, "catalog"

    const-string v1, "com.sun.org.apache.xml.internal.resolver.readers.OASISXMLCatalogReader"

    const-string v2, "urn:oasis:names:tc:entity:xmlns:xml:catalog"

    invoke-virtual {v0, v2, p0, v1}, Lcom/sun/org/apache/xml/internal/resolver/readers/SAXCatalogReader;->setCatalogParser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "application/xml"

    invoke-virtual {p1, p0, v0}, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->addReader(Ljava/lang/String;Lcom/sun/org/apache/xml/internal/resolver/readers/CatalogReader;)V

    return-void
.end method

.method private init([Ljava/lang/String;Z)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/util/XMLCatalogResolver;->fCatalogsList:[Ljava/lang/String;

    iput-boolean p2, p0, Lcom/sun/org/apache/xerces/internal/util/XMLCatalogResolver;->fPreferPublic:Z

    new-instance p1, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;

    invoke-direct {p1}, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;-><init>()V

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/util/XMLCatalogResolver;->fResolverCatalogManager:Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;->setAllowOasisXMLCatalogPI(Z)V

    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/util/XMLCatalogResolver;->fResolverCatalogManager:Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;

    const-string v0, "com.sun.org.apache.xml.internal.resolver.Catalog"

    invoke-virtual {p1, v0}, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;->setCatalogClassName(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/util/XMLCatalogResolver;->fResolverCatalogManager:Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;

    const-string v0, ""

    invoke-virtual {p1, v0}, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;->setCatalogFiles(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/util/XMLCatalogResolver;->fResolverCatalogManager:Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;->setIgnoreMissingProperties(Z)V

    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/util/XMLCatalogResolver;->fResolverCatalogManager:Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;

    iget-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/util/XMLCatalogResolver;->fPreferPublic:Z

    invoke-virtual {p1, v0}, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;->setPreferPublic(Z)V

    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/util/XMLCatalogResolver;->fResolverCatalogManager:Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;

    invoke-virtual {p1, p2}, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;->setRelativeCatalogs(Z)V

    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/util/XMLCatalogResolver;->fResolverCatalogManager:Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;

    invoke-virtual {p1, p2}, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;->setUseStaticCatalog(Z)V

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/util/XMLCatalogResolver;->fResolverCatalogManager:Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;

    invoke-virtual {p0, p2}, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;->setVerbosity(I)V

    return-void
.end method

.method private parseCatalogs()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/util/XMLCatalogResolver;->fCatalogsList:[Ljava/lang/String;

    if-eqz v0, :cond_1

    new-instance v0, Lcom/sun/org/apache/xml/internal/resolver/Catalog;

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/util/XMLCatalogResolver;->fResolverCatalogManager:Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;

    invoke-direct {v0, v1}, Lcom/sun/org/apache/xml/internal/resolver/Catalog;-><init>(Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;)V

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/util/XMLCatalogResolver;->fCatalog:Lcom/sun/org/apache/xml/internal/resolver/Catalog;

    invoke-direct {p0, v0}, Lcom/sun/org/apache/xerces/internal/util/XMLCatalogResolver;->attachReaderToCatalog(Lcom/sun/org/apache/xml/internal/resolver/Catalog;)V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/util/XMLCatalogResolver;->fCatalogsList:[Ljava/lang/String;

    array-length v2, v1

    if-ge v0, v2, :cond_2

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/util/XMLCatalogResolver;->fCatalog:Lcom/sun/org/apache/xml/internal/resolver/Catalog;

    invoke-virtual {v2, v1}, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->parseCatalog(Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/util/XMLCatalogResolver;->fCatalog:Lcom/sun/org/apache/xml/internal/resolver/Catalog;

    :cond_2
    return-void
.end method


# virtual methods
.method public final declared-synchronized clear()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/util/XMLCatalogResolver;->fCatalog:Lcom/sun/org/apache/xml/internal/resolver/Catalog;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getCatalogList()[Ljava/lang/String;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/util/XMLCatalogResolver;->fCatalogsList:[Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getExternalSubset(Ljava/lang/String;Ljava/lang/String;)Lorg/xml/sax/InputSource;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getPreferPublic()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sun/org/apache/xerces/internal/util/XMLCatalogResolver;->fPreferPublic:Z

    return p0
.end method

.method public final getUseLiteralSystemId()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sun/org/apache/xerces/internal/util/XMLCatalogResolver;->fUseLiteralSystemId:Z

    return p0
.end method

.method public resolveEntity(Lcom/sun/org/apache/xerces/internal/xni/XMLResourceIdentifier;)Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 12
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/util/XMLCatalogResolver;->resolveIdentifier(Lcom/sun/org/apache/xerces/internal/xni/XMLResourceIdentifier;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 13
    new-instance v0, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;

    invoke-interface {p1}, Lcom/sun/org/apache/xerces/internal/xni/XMLResourceIdentifier;->getPublicId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lcom/sun/org/apache/xerces/internal/xni/XMLResourceIdentifier;->getBaseSystemId()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p0, p1}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public resolveEntity(Ljava/lang/String;Ljava/lang/String;)Lorg/xml/sax/InputSource;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/sun/org/apache/xerces/internal/util/XMLCatalogResolver;->resolvePublic(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    .line 2
    invoke-virtual {p0, p2}, Lcom/sun/org/apache/xerces/internal/util/XMLCatalogResolver;->resolveSystem(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    move-object p0, v0

    :goto_0
    if-eqz p0, :cond_2

    .line 3
    new-instance p2, Lorg/xml/sax/InputSource;

    invoke-direct {p2, p0}, Lorg/xml/sax/InputSource;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p2, p1}, Lorg/xml/sax/InputSource;->setPublicId(Ljava/lang/String;)V

    return-object p2

    :cond_2
    return-object v0
.end method

.method public resolveEntity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xml/sax/InputSource;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 5
    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/util/XMLCatalogResolver;->getUseLiteralSystemId()Z

    move-result p1

    if-nez p1, :cond_0

    if-eqz p3, :cond_0

    .line 6
    :try_start_0
    new-instance p1, Lcom/sun/org/apache/xerces/internal/util/URI;

    new-instance v0, Lcom/sun/org/apache/xerces/internal/util/URI;

    invoke-direct {v0, p3}, Lcom/sun/org/apache/xerces/internal/util/URI;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, v0, p4}, Lcom/sun/org/apache/xerces/internal/util/URI;-><init>(Lcom/sun/org/apache/xerces/internal/util/URI;Ljava/lang/String;)V

    .line 7
    invoke-virtual {p1}, Lcom/sun/org/apache/xerces/internal/util/URI;->toString()Ljava/lang/String;

    move-result-object p4
    :try_end_0
    .catch Lcom/sun/org/apache/xerces/internal/util/URI$MalformedURIException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    const/4 p1, 0x0

    if-eqz p2, :cond_1

    if-eqz p4, :cond_1

    .line 8
    invoke-virtual {p0, p2, p4}, Lcom/sun/org/apache/xerces/internal/util/XMLCatalogResolver;->resolvePublic(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    if-eqz p4, :cond_2

    .line 9
    invoke-virtual {p0, p4}, Lcom/sun/org/apache/xerces/internal/util/XMLCatalogResolver;->resolveSystem(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_2
    move-object p0, p1

    :goto_0
    if-eqz p0, :cond_3

    .line 10
    new-instance p1, Lorg/xml/sax/InputSource;

    invoke-direct {p1, p0}, Lorg/xml/sax/InputSource;-><init>(Ljava/lang/String;)V

    .line 11
    invoke-virtual {p1, p2}, Lorg/xml/sax/InputSource;->setPublicId(Ljava/lang/String;)V

    :cond_3
    return-object p1
.end method

.method public resolveIdentifier(Lcom/sun/org/apache/xerces/internal/xni/XMLResourceIdentifier;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    invoke-interface {p1}, Lcom/sun/org/apache/xerces/internal/xni/XMLResourceIdentifier;->getNamespace()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xerces/internal/util/XMLCatalogResolver;->resolveURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_3

    invoke-interface {p1}, Lcom/sun/org/apache/xerces/internal/xni/XMLResourceIdentifier;->getPublicId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/util/XMLCatalogResolver;->getUseLiteralSystemId()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Lcom/sun/org/apache/xerces/internal/xni/XMLResourceIdentifier;->getLiteralSystemId()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_1
    invoke-interface {p1}, Lcom/sun/org/apache/xerces/internal/xni/XMLResourceIdentifier;->getExpandedSystemId()Ljava/lang/String;

    move-result-object p1

    :goto_1
    if-eqz v1, :cond_2

    if-eqz p1, :cond_2

    invoke-virtual {p0, v1, p1}, Lcom/sun/org/apache/xerces/internal/util/XMLCatalogResolver;->resolvePublic(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_2
    if-eqz p1, :cond_3

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/util/XMLCatalogResolver;->resolveSystem(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_3
    :goto_2
    return-object v0
.end method

.method public final declared-synchronized resolvePublic(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/util/XMLCatalogResolver;->fCatalogsChanged:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sun/org/apache/xerces/internal/util/XMLCatalogResolver;->parseCatalogs()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/util/XMLCatalogResolver;->fCatalogsChanged:Z

    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/util/XMLCatalogResolver;->fCatalog:Lcom/sun/org/apache/xml/internal/resolver/Catalog;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1, p2}, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->resolvePublic(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public resolveResource(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/ls/LSInput;
    .locals 2

    const/4 p1, 0x0

    if-eqz p2, :cond_0

    :try_start_0
    invoke-virtual {p0, p2}, Lcom/sun/org/apache/xerces/internal/util/XMLCatalogResolver;->resolveURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object p2, p1

    goto :goto_1

    :cond_0
    move-object p2, p1

    :goto_0
    :try_start_1
    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/util/XMLCatalogResolver;->getUseLiteralSystemId()Z

    move-result v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    if-nez v0, :cond_1

    if-eqz p5, :cond_1

    :try_start_2
    new-instance v0, Lcom/sun/org/apache/xerces/internal/util/URI;

    new-instance v1, Lcom/sun/org/apache/xerces/internal/util/URI;

    invoke-direct {v1, p5}, Lcom/sun/org/apache/xerces/internal/util/URI;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1, p4}, Lcom/sun/org/apache/xerces/internal/util/URI;-><init>(Lcom/sun/org/apache/xerces/internal/util/URI;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/util/URI;->toString()Ljava/lang/String;

    move-result-object p4
    :try_end_2
    .catch Lcom/sun/org/apache/xerces/internal/util/URI$MalformedURIException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :catch_1
    :cond_1
    if-nez p2, :cond_3

    if-eqz p3, :cond_2

    if-eqz p4, :cond_2

    :try_start_3
    invoke-virtual {p0, p3, p4}, Lcom/sun/org/apache/xerces/internal/util/XMLCatalogResolver;->resolvePublic(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    :cond_2
    if-eqz p4, :cond_3

    invoke-virtual {p0, p4}, Lcom/sun/org/apache/xerces/internal/util/XMLCatalogResolver;->resolveSystem(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    :catch_2
    :cond_3
    :goto_1
    if-eqz p2, :cond_4

    new-instance p0, Lcom/sun/org/apache/xerces/internal/dom/DOMInputImpl;

    invoke-direct {p0, p3, p2, p5}, Lcom/sun/org/apache/xerces/internal/dom/DOMInputImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    :cond_4
    return-object p1
.end method

.method public final declared-synchronized resolveSystem(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/util/XMLCatalogResolver;->fCatalogsChanged:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sun/org/apache/xerces/internal/util/XMLCatalogResolver;->parseCatalogs()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/util/XMLCatalogResolver;->fCatalogsChanged:Z

    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/util/XMLCatalogResolver;->fCatalog:Lcom/sun/org/apache/xml/internal/resolver/Catalog;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->resolveSystem(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized resolveURI(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/util/XMLCatalogResolver;->fCatalogsChanged:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sun/org/apache/xerces/internal/util/XMLCatalogResolver;->parseCatalogs()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/util/XMLCatalogResolver;->fCatalogsChanged:Z

    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/util/XMLCatalogResolver;->fCatalog:Lcom/sun/org/apache/xml/internal/resolver/Catalog;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->resolveURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized setCatalogList([Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/util/XMLCatalogResolver;->fCatalogsChanged:Z

    if-eqz p1, :cond_0

    invoke-virtual {p1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/util/XMLCatalogResolver;->fCatalogsList:[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final setPreferPublic(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sun/org/apache/xerces/internal/util/XMLCatalogResolver;->fPreferPublic:Z

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/util/XMLCatalogResolver;->fResolverCatalogManager:Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;->setPreferPublic(Z)V

    return-void
.end method

.method public final setUseLiteralSystemId(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sun/org/apache/xerces/internal/util/XMLCatalogResolver;->fUseLiteralSystemId:Z

    return-void
.end method
