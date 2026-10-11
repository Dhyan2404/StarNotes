.class public Lorg/xmlresolver/loaders/ValidatingXmlLoader;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/xmlresolver/loaders/CatalogLoader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/xmlresolver/loaders/ValidatingXmlLoader$a;
    }
.end annotation


# instance fields
.field public final a:Lorg/xmlresolver/Resolver;

.field public final b:Lorg/xmlresolver/loaders/XmlLoader;

.field protected final catalogMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/net/URI;",
            "Lorg/xmlresolver/catalog/entry/EntryCatalog;",
            ">;"
        }
    .end annotation
.end field

.field protected final config:Lorg/xmlresolver/ResolverConfiguration;

.field protected final logger:Lorg/xmlresolver/logging/ResolverLogger;


# direct methods
.method public constructor <init>(Lorg/xmlresolver/ResolverConfiguration;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/xmlresolver/loaders/ValidatingXmlLoader;->config:Lorg/xmlresolver/ResolverConfiguration;

    sget-object v0, Lorg/xmlresolver/ResolverFeature;->RESOLVER_LOGGER:Lorg/xmlresolver/ResolverFeature;

    invoke-interface {p1, v0}, Lorg/xmlresolver/ResolverConfiguration;->getFeature(Lorg/xmlresolver/ResolverFeature;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xmlresolver/logging/ResolverLogger;

    iput-object v0, p0, Lorg/xmlresolver/loaders/ValidatingXmlLoader;->logger:Lorg/xmlresolver/logging/ResolverLogger;

    new-instance v0, Lorg/xmlresolver/loaders/XmlLoader;

    invoke-direct {v0, p1}, Lorg/xmlresolver/loaders/XmlLoader;-><init>(Lorg/xmlresolver/ResolverConfiguration;)V

    iput-object v0, p0, Lorg/xmlresolver/loaders/ValidatingXmlLoader;->b:Lorg/xmlresolver/loaders/XmlLoader;

    invoke-static {}, Lorg/xmlresolver/loaders/XmlLoader;->getLoaderResolver()Lorg/xmlresolver/Resolver;

    move-result-object p1

    iput-object p1, p0, Lorg/xmlresolver/loaders/ValidatingXmlLoader;->a:Lorg/xmlresolver/Resolver;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lorg/xmlresolver/loaders/ValidatingXmlLoader;->catalogMap:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public getArchivedCatalogs()Z
    .locals 0

    iget-object p0, p0, Lorg/xmlresolver/loaders/ValidatingXmlLoader;->b:Lorg/xmlresolver/loaders/XmlLoader;

    invoke-virtual {p0}, Lorg/xmlresolver/loaders/XmlLoader;->getArchivedCatalogs()Z

    move-result p0

    return p0
.end method

.method public getPreferPublic()Z
    .locals 0

    iget-object p0, p0, Lorg/xmlresolver/loaders/ValidatingXmlLoader;->b:Lorg/xmlresolver/loaders/XmlLoader;

    invoke-virtual {p0}, Lorg/xmlresolver/loaders/XmlLoader;->getPreferPublic()Z

    move-result p0

    return p0
.end method

.method public loadCatalog(Ljava/net/URI;)Lorg/xmlresolver/catalog/entry/EntryCatalog;
    .locals 7

    const-string v0, "Failed to load catalog: %s: %s"

    .line 1
    iget-object v1, p0, Lorg/xmlresolver/loaders/ValidatingXmlLoader;->catalogMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2
    iget-object p0, p0, Lorg/xmlresolver/loaders/ValidatingXmlLoader;->catalogMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/xmlresolver/catalog/entry/EntryCatalog;

    return-object p0

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 3
    :try_start_0
    new-instance v3, Lorg/xmlresolver/Resource;

    invoke-virtual {p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/xmlresolver/Resource;-><init>(Ljava/lang/String;)V

    .line 4
    new-instance v4, Lorg/xml/sax/InputSource;

    invoke-virtual {v3}, Lorg/xmlresolver/Resource;->body()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v4, v3}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    .line 5
    invoke-virtual {p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lorg/xml/sax/InputSource;->setSystemId(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p0, p1, v4}, Lorg/xmlresolver/loaders/ValidatingXmlLoader;->loadCatalog(Ljava/net/URI;Lorg/xml/sax/InputSource;)Lorg/xmlresolver/catalog/entry/EntryCatalog;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v3

    .line 7
    iget-object v4, p0, Lorg/xmlresolver/loaders/ValidatingXmlLoader;->logger:Lorg/xmlresolver/logging/ResolverLogger;

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    filled-new-array {p1, v5}, [Ljava/lang/Object;

    move-result-object v5

    const-string v6, "error"

    invoke-interface {v4, v6, v0, v5}, Lorg/xmlresolver/logging/ResolverLogger;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 8
    iget-object v0, p0, Lorg/xmlresolver/loaders/ValidatingXmlLoader;->catalogMap:Ljava/util/HashMap;

    new-instance v4, Lorg/xmlresolver/catalog/entry/EntryCatalog;

    iget-object p0, p0, Lorg/xmlresolver/loaders/ValidatingXmlLoader;->config:Lorg/xmlresolver/ResolverConfiguration;

    invoke-direct {v4, p0, p1, v2, v1}, Lorg/xmlresolver/catalog/entry/EntryCatalog;-><init>(Lorg/xmlresolver/ResolverConfiguration;Ljava/net/URI;Ljava/lang/String;Z)V

    invoke-virtual {v0, p1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    new-instance p0, Lorg/xmlresolver/exceptions/CatalogUnavailableException;

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/xmlresolver/exceptions/CatalogUnavailableException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_1
    move-exception v3

    .line 10
    iget-object v4, p0, Lorg/xmlresolver/loaders/ValidatingXmlLoader;->logger:Lorg/xmlresolver/logging/ResolverLogger;

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    filled-new-array {p1, v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v5, "warning"

    invoke-interface {v4, v5, v0, v3}, Lorg/xmlresolver/logging/ResolverLogger;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    iget-object v0, p0, Lorg/xmlresolver/loaders/ValidatingXmlLoader;->catalogMap:Ljava/util/HashMap;

    new-instance v3, Lorg/xmlresolver/catalog/entry/EntryCatalog;

    iget-object v4, p0, Lorg/xmlresolver/loaders/ValidatingXmlLoader;->config:Lorg/xmlresolver/ResolverConfiguration;

    invoke-direct {v3, v4, p1, v2, v1}, Lorg/xmlresolver/catalog/entry/EntryCatalog;-><init>(Lorg/xmlresolver/ResolverConfiguration;Ljava/net/URI;Ljava/lang/String;Z)V

    invoke-virtual {v0, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    iget-object p0, p0, Lorg/xmlresolver/loaders/ValidatingXmlLoader;->catalogMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/xmlresolver/catalog/entry/EntryCatalog;

    return-object p0
.end method

.method public loadCatalog(Ljava/net/URI;Lorg/xml/sax/InputSource;)Lorg/xmlresolver/catalog/entry/EntryCatalog;
    .locals 8

    .line 13
    :try_start_0
    invoke-virtual {p2}, Lorg/xml/sax/InputSource;->getByteStream()Ljava/io/InputStream;

    move-result-object v0

    const/16 v1, 0x1000

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    .line 14
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 15
    invoke-virtual {p2}, Lorg/xml/sax/InputSource;->getByteStream()Ljava/io/InputStream;

    move-result-object v4

    new-array v5, v1, [B

    .line 16
    invoke-virtual {v4, v5, v3, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v6

    :goto_0
    if-ltz v6, :cond_0

    .line 17
    invoke-virtual {v0, v5, v3, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 18
    invoke-virtual {v4, v5, v3, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v6

    goto :goto_0

    .line 19
    :cond_0
    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {p2, v4}, Lorg/xml/sax/InputSource;->setByteStream(Ljava/io/InputStream;)V

    goto :goto_1

    :cond_1
    move-object v0, v2

    .line 20
    :goto_1
    invoke-virtual {p2}, Lorg/xml/sax/InputSource;->getCharacterStream()Ljava/io/Reader;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 21
    new-instance v4, Ljava/io/CharArrayWriter;

    invoke-direct {v4}, Ljava/io/CharArrayWriter;-><init>()V

    .line 22
    invoke-virtual {p2}, Lorg/xml/sax/InputSource;->getCharacterStream()Ljava/io/Reader;

    move-result-object v5

    new-array v6, v1, [C

    .line 23
    invoke-virtual {v5, v6, v3, v1}, Ljava/io/Reader;->read([CII)I

    move-result v7

    :goto_2
    if-ltz v7, :cond_2

    .line 24
    invoke-virtual {v4, v6, v3, v7}, Ljava/io/CharArrayWriter;->write([CII)V

    .line 25
    invoke-virtual {v5, v6, v3, v1}, Ljava/io/Reader;->read([CII)I

    move-result v7

    goto :goto_2

    .line 26
    :cond_2
    new-instance v1, Ljava/io/CharArrayReader;

    invoke-virtual {v4}, Ljava/io/CharArrayWriter;->toCharArray()[C

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/CharArrayReader;-><init>([C)V

    invoke-virtual {p2, v1}, Lorg/xml/sax/InputSource;->setCharacterStream(Ljava/io/Reader;)V

    goto :goto_3

    :cond_3
    move-object v4, v2

    .line 27
    :goto_3
    new-instance v1, Lorg/xmlresolver/loaders/ValidatingXmlLoader$a;

    iget-object v3, p0, Lorg/xmlresolver/loaders/ValidatingXmlLoader;->config:Lorg/xmlresolver/ResolverConfiguration;

    invoke-direct {v1, v3}, Lorg/xmlresolver/loaders/ValidatingXmlLoader$a;-><init>(Lorg/xmlresolver/ResolverConfiguration;)V

    .line 28
    new-instance v3, Lcom/thaiopensource/util/PropertyMapBuilder;

    invoke-direct {v3}, Lcom/thaiopensource/util/PropertyMapBuilder;-><init>()V

    .line 29
    sget-object v5, Lcom/thaiopensource/validate/ValidateProperty;->ERROR_HANDLER:Lcom/thaiopensource/util/PropertyId;

    invoke-virtual {v3, v5, v1}, Lcom/thaiopensource/util/PropertyMapBuilder;->put(Lcom/thaiopensource/util/PropertyId;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    sget-object v5, Lcom/thaiopensource/validate/ValidateProperty;->ENTITY_RESOLVER:Lcom/thaiopensource/util/PropertyId;

    iget-object v6, p0, Lorg/xmlresolver/loaders/ValidatingXmlLoader;->a:Lorg/xmlresolver/Resolver;

    invoke-virtual {v3, v5, v6}, Lcom/thaiopensource/util/PropertyMapBuilder;->put(Lcom/thaiopensource/util/PropertyId;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    sget-object v5, Lcom/thaiopensource/validate/ValidateProperty;->URI_RESOLVER:Lcom/thaiopensource/util/PropertyId;

    iget-object v6, p0, Lorg/xmlresolver/loaders/ValidatingXmlLoader;->a:Lorg/xmlresolver/Resolver;

    invoke-virtual {v3, v5, v6}, Lcom/thaiopensource/util/PropertyMapBuilder;->put(Lcom/thaiopensource/util/PropertyId;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    new-instance v5, Lcom/thaiopensource/validate/ValidationDriver;

    invoke-virtual {v3}, Lcom/thaiopensource/util/PropertyMapBuilder;->toPropertyMap()Lcom/thaiopensource/util/PropertyMap;

    move-result-object v6

    invoke-virtual {v3}, Lcom/thaiopensource/util/PropertyMapBuilder;->toPropertyMap()Lcom/thaiopensource/util/PropertyMap;

    move-result-object v3

    invoke-direct {v5, v6, v3, v2}, Lcom/thaiopensource/validate/ValidationDriver;-><init>(Lcom/thaiopensource/util/PropertyMap;Lcom/thaiopensource/util/PropertyMap;Lcom/thaiopensource/validate/SchemaReader;)V

    .line 33
    const-class v2, Lorg/xmlresolver/loaders/ValidatingXmlLoader;

    const-string v3, "/org/xmlresolver/schemas/oasis-xml-catalog-1.1.rng"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 34
    invoke-virtual {v2}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v2

    .line 35
    new-instance v3, Lorg/xml/sax/InputSource;

    invoke-direct {v3, v2}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    .line 36
    invoke-virtual {v5, v3}, Lcom/thaiopensource/validate/ValidationDriver;->loadSchema(Lorg/xml/sax/InputSource;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 37
    invoke-virtual {v1}, Lorg/xmlresolver/loaders/ValidatingXmlLoader$a;->a()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_4

    .line 38
    new-instance p0, Lorg/xmlresolver/exceptions/CatalogInvalidException;

    const-string p1, "Failed to load catalog schema"

    invoke-direct {p0, p1}, Lorg/xmlresolver/exceptions/CatalogInvalidException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 39
    :cond_4
    new-instance p0, Lorg/xmlresolver/exceptions/CatalogInvalidException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Failed to load catalog schema: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lorg/xmlresolver/loaders/ValidatingXmlLoader$a;->a()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/xmlresolver/exceptions/CatalogInvalidException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 40
    :cond_5
    invoke-virtual {v5, p2}, Lcom/thaiopensource/validate/ValidationDriver;->validate(Lorg/xml/sax/InputSource;)Z

    move-result v2

    if-eqz v2, :cond_8

    if-eqz v0, :cond_6

    .line 41
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {p2, v1}, Lorg/xml/sax/InputSource;->setByteStream(Ljava/io/InputStream;)V

    :cond_6
    if-eqz v4, :cond_7

    .line 42
    new-instance v0, Ljava/io/CharArrayReader;

    invoke-virtual {v4}, Ljava/io/CharArrayWriter;->toCharArray()[C

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/CharArrayReader;-><init>([C)V

    invoke-virtual {p2, v0}, Lorg/xml/sax/InputSource;->setCharacterStream(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    :cond_7
    iget-object p0, p0, Lorg/xmlresolver/loaders/ValidatingXmlLoader;->b:Lorg/xmlresolver/loaders/XmlLoader;

    invoke-virtual {p0, p1, p2}, Lorg/xmlresolver/loaders/XmlLoader;->loadCatalog(Ljava/net/URI;Lorg/xml/sax/InputSource;)Lorg/xmlresolver/catalog/entry/EntryCatalog;

    move-result-object p0

    return-object p0

    .line 44
    :cond_8
    :try_start_1
    invoke-virtual {v1}, Lorg/xmlresolver/loaders/ValidatingXmlLoader$a;->a()Ljava/lang/String;

    move-result-object p0

    .line 45
    new-instance p2, Lorg/xmlresolver/exceptions/CatalogInvalidException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Catalog \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' is invalid: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Lorg/xmlresolver/exceptions/CatalogInvalidException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 46
    :cond_9
    new-instance p0, Lorg/xmlresolver/exceptions/CatalogInvalidException;

    const-string p1, "Failed to read catalog schema resource"

    invoke-direct {p0, p1}, Lorg/xmlresolver/exceptions/CatalogInvalidException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception p0

    .line 47
    new-instance p1, Lorg/xmlresolver/exceptions/CatalogUnavailableException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/xmlresolver/exceptions/CatalogUnavailableException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setArchivedCatalogs(Z)V
    .locals 0

    iget-object p0, p0, Lorg/xmlresolver/loaders/ValidatingXmlLoader;->b:Lorg/xmlresolver/loaders/XmlLoader;

    invoke-virtual {p0, p1}, Lorg/xmlresolver/loaders/XmlLoader;->setArchivedCatalogs(Z)V

    return-void
.end method

.method public setPreferPublic(Z)V
    .locals 0

    iget-object p0, p0, Lorg/xmlresolver/loaders/ValidatingXmlLoader;->b:Lorg/xmlresolver/loaders/XmlLoader;

    invoke-virtual {p0, p1}, Lorg/xmlresolver/loaders/XmlLoader;->setPreferPublic(Z)V

    return-void
.end method
