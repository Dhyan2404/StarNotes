.class public Lcom/sun/org/apache/xml/internal/resolver/tools/CatalogResolver;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/xml/sax/EntityResolver;
.implements Ljavax/xml/transform/URIResolver;


# instance fields
.field private catalog:Lcom/sun/org/apache/xml/internal/resolver/Catalog;

.field private catalogManager:Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;

.field public namespaceAware:Z

.field public validating:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/sun/org/apache/xml/internal/resolver/tools/CatalogResolver;->namespaceAware:Z

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/sun/org/apache/xml/internal/resolver/tools/CatalogResolver;->validating:Z

    const/4 v1, 0x0

    .line 4
    iput-object v1, p0, Lcom/sun/org/apache/xml/internal/resolver/tools/CatalogResolver;->catalog:Lcom/sun/org/apache/xml/internal/resolver/Catalog;

    .line 5
    invoke-static {}, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;->getStaticManager()Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;

    move-result-object v1

    iput-object v1, p0, Lcom/sun/org/apache/xml/internal/resolver/tools/CatalogResolver;->catalogManager:Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;

    .line 6
    invoke-direct {p0, v0}, Lcom/sun/org/apache/xml/internal/resolver/tools/CatalogResolver;->initializeCatalogs(Z)V

    return-void
.end method

.method public constructor <init>(Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;)V
    .locals 2

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 14
    iput-boolean v0, p0, Lcom/sun/org/apache/xml/internal/resolver/tools/CatalogResolver;->namespaceAware:Z

    const/4 v1, 0x0

    .line 15
    iput-boolean v1, p0, Lcom/sun/org/apache/xml/internal/resolver/tools/CatalogResolver;->validating:Z

    const/4 v1, 0x0

    .line 16
    iput-object v1, p0, Lcom/sun/org/apache/xml/internal/resolver/tools/CatalogResolver;->catalog:Lcom/sun/org/apache/xml/internal/resolver/Catalog;

    .line 17
    invoke-static {}, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;->getStaticManager()Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;

    .line 18
    iput-object p1, p0, Lcom/sun/org/apache/xml/internal/resolver/tools/CatalogResolver;->catalogManager:Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;

    .line 19
    invoke-virtual {p1}, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;->getUseStaticCatalog()Z

    move-result p1

    xor-int/2addr p1, v0

    invoke-direct {p0, p1}, Lcom/sun/org/apache/xml/internal/resolver/tools/CatalogResolver;->initializeCatalogs(Z)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, Lcom/sun/org/apache/xml/internal/resolver/tools/CatalogResolver;->namespaceAware:Z

    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lcom/sun/org/apache/xml/internal/resolver/tools/CatalogResolver;->validating:Z

    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/resolver/tools/CatalogResolver;->catalog:Lcom/sun/org/apache/xml/internal/resolver/Catalog;

    .line 11
    invoke-static {}, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;->getStaticManager()Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/resolver/tools/CatalogResolver;->catalogManager:Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;

    .line 12
    invoke-direct {p0, p1}, Lcom/sun/org/apache/xml/internal/resolver/tools/CatalogResolver;->initializeCatalogs(Z)V

    return-void
.end method

.method private initializeCatalogs(Z)V
    .locals 0

    iget-object p1, p0, Lcom/sun/org/apache/xml/internal/resolver/tools/CatalogResolver;->catalogManager:Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;

    invoke-virtual {p1}, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;->getCatalog()Lcom/sun/org/apache/xml/internal/resolver/Catalog;

    move-result-object p1

    iput-object p1, p0, Lcom/sun/org/apache/xml/internal/resolver/tools/CatalogResolver;->catalog:Lcom/sun/org/apache/xml/internal/resolver/Catalog;

    return-void
.end method

.method private makeAbsolute(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    :try_start_0
    new-instance p0, Ljava/net/URL;

    invoke-direct {p0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :try_start_1
    invoke-static {p1}, Lcom/sun/org/apache/xml/internal/resolver/helpers/FileURL;->makeURL(Ljava/lang/String;)Ljava/net/URL;

    move-result-object p0

    invoke-virtual {p0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_1

    return-object p0

    :catch_1
    return-object p1
.end method

.method private setEntityResolver(Ljavax/xml/transform/sax/SAXSource;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    invoke-virtual {p1}, Ljavax/xml/transform/sax/SAXSource;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljavax/xml/parsers/SAXParserFactory;->setNamespaceAware(Z)V

    :try_start_0
    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v0
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljavax/xml/transform/TransformerException;

    invoke-direct {p1, p0}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    move-exception p0

    new-instance p1, Ljavax/xml/transform/TransformerException;

    invoke-direct {p1, p0}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_0
    :goto_0
    invoke-interface {v0, p0}, Lorg/xml/sax/XMLReader;->setEntityResolver(Lorg/xml/sax/EntityResolver;)V

    invoke-virtual {p1, v0}, Ljavax/xml/transform/sax/SAXSource;->setXMLReader(Lorg/xml/sax/XMLReader;)V

    return-void
.end method


# virtual methods
.method public getCatalog()Lcom/sun/org/apache/xml/internal/resolver/Catalog;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/resolver/tools/CatalogResolver;->catalog:Lcom/sun/org/apache/xml/internal/resolver/Catalog;

    return-object p0
.end method

.method public getResolvedEntity(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/resolver/tools/CatalogResolver;->catalog:Lcom/sun/org/apache/xml/internal/resolver/Catalog;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/resolver/tools/CatalogResolver;->catalogManager:Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;->debug:Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;

    const-string p1, "Catalog resolution attempted with null catalog; ignored"

    invoke-virtual {p0, v1, p1}, Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;->message(ILjava/lang/String;)V

    return-object v2

    :cond_0
    const-string v3, "I/O exception trying to resolve"

    const-string v4, "Malformed URL exception trying to resolve"

    if-eqz p2, :cond_1

    :try_start_0
    invoke-virtual {v0, p2}, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->resolveSystem(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/resolver/tools/CatalogResolver;->catalogManager:Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;

    iget-object v0, v0, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;->debug:Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;

    invoke-virtual {v0, v1, v3, p1}, Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/resolver/tools/CatalogResolver;->catalogManager:Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;

    iget-object v0, v0, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;->debug:Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;

    invoke-virtual {v0, v1, v4, p1}, Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    const/4 v0, 0x2

    if-nez v2, :cond_3

    if-eqz p1, :cond_2

    :try_start_1
    iget-object v5, p0, Lcom/sun/org/apache/xml/internal/resolver/tools/CatalogResolver;->catalog:Lcom/sun/org/apache/xml/internal/resolver/Catalog;

    invoke-virtual {v5, p1, p2}, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->resolvePublic(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    :catch_2
    iget-object p2, p0, Lcom/sun/org/apache/xml/internal/resolver/tools/CatalogResolver;->catalogManager:Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;

    iget-object p2, p2, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;->debug:Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;

    invoke-virtual {p2, v1, v3, p1}, Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catch_3
    iget-object p2, p0, Lcom/sun/org/apache/xml/internal/resolver/tools/CatalogResolver;->catalogManager:Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;

    iget-object p2, p2, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;->debug:Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;

    invoke-virtual {p2, v1, v4, p1}, Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    if-eqz v2, :cond_4

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/resolver/tools/CatalogResolver;->catalogManager:Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;->debug:Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;

    const-string p2, "Resolved public"

    invoke-virtual {p0, v0, p2, p1, v2}, Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/resolver/tools/CatalogResolver;->catalogManager:Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;->debug:Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;

    const-string p1, "Resolved system"

    invoke-virtual {p0, v0, p1, p2, v2}, Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_2
    return-object v2
.end method

.method public resolve(Ljava/lang/String;Ljava/lang/String;)Ljavax/xml/transform/Source;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    const-string v0, "#"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v1, p1

    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/resolver/tools/CatalogResolver;->catalog:Lcom/sun/org/apache/xml/internal/resolver/Catalog;

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->resolveURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_4

    if-nez p2, :cond_1

    :try_start_1
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object p2

    :goto_2
    move-object v0, p2

    goto :goto_4

    :cond_1
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    goto :goto_3

    :cond_2
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, v0, v1}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    move-object v0, v2

    :goto_3
    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object p2
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    invoke-direct {p0, p2}, Lcom/sun/org/apache/xml/internal/resolver/tools/CatalogResolver;->makeAbsolute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p0, p1, v1}, Lcom/sun/org/apache/xml/internal/resolver/tools/CatalogResolver;->resolve(Ljava/lang/String;Ljava/lang/String;)Ljavax/xml/transform/Source;

    move-result-object p0

    return-object p0

    :cond_3
    new-instance p0, Ljavax/xml/transform/TransformerException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Malformed URL "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "(base "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p0

    :cond_4
    :goto_4
    iget-object p2, p0, Lcom/sun/org/apache/xml/internal/resolver/tools/CatalogResolver;->catalogManager:Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;

    iget-object p2, p2, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;->debug:Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;

    const/4 v1, 0x2

    const-string v2, "Resolved URI"

    invoke-virtual {p2, v1, v2, p1, v0}, Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Ljavax/xml/transform/sax/SAXSource;

    invoke-direct {p1}, Ljavax/xml/transform/sax/SAXSource;-><init>()V

    new-instance p2, Lorg/xml/sax/InputSource;

    invoke-direct {p2, v0}, Lorg/xml/sax/InputSource;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljavax/xml/transform/sax/SAXSource;->setInputSource(Lorg/xml/sax/InputSource;)V

    invoke-direct {p0, p1}, Lcom/sun/org/apache/xml/internal/resolver/tools/CatalogResolver;->setEntityResolver(Ljavax/xml/transform/sax/SAXSource;)V

    return-object p1
.end method

.method public resolveEntity(Ljava/lang/String;Ljava/lang/String;)Lorg/xml/sax/InputSource;
    .locals 2

    invoke-virtual {p0, p1, p2}, Lcom/sun/org/apache/xml/internal/resolver/tools/CatalogResolver;->getResolvedEntity(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    :try_start_0
    new-instance v1, Lorg/xml/sax/InputSource;

    invoke-direct {v1, p2}, Lorg/xml/sax/InputSource;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Lorg/xml/sax/InputSource;->setPublicId(Ljava/lang/String;)V

    new-instance p1, Ljava/net/URL;

    invoke-direct {p1, p2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object p1

    invoke-virtual {v1, p1}, Lorg/xml/sax/InputSource;->setByteStream(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/resolver/tools/CatalogResolver;->catalogManager:Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;->debug:Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;

    const/4 p1, 0x1

    const-string v1, "Failed to create InputSource"

    invoke-virtual {p0, p1, v1, p2}, Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method
