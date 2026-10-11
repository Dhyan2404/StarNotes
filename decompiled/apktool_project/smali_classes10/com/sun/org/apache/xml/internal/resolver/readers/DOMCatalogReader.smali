.class public Lcom/sun/org/apache/xml/internal/resolver/readers/DOMCatalogReader;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sun/org/apache/xml/internal/resolver/readers/CatalogReader;


# instance fields
.field protected namespaceMap:Ljava/util/Hashtable;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/resolver/readers/DOMCatalogReader;->namespaceMap:Ljava/util/Hashtable;

    return-void
.end method


# virtual methods
.method public getCatalogParser(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/resolver/readers/DOMCatalogReader;->namespaceMap:Ljava/util/Hashtable;

    invoke-virtual {p0, p2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/resolver/readers/DOMCatalogReader;->namespaceMap:Ljava/util/Hashtable;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "}"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public readCatalog(Lcom/sun/org/apache/xml/internal/resolver/Catalog;Ljava/io/InputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sun/org/apache/xml/internal/resolver/CatalogException;
        }
    .end annotation

    .line 1
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->setNamespaceAware(Z)V

    .line 3
    invoke-virtual {v0, v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->setValidating(Z)V

    const/4 v1, 0x6

    .line 4
    :try_start_0
    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_5

    .line 5
    :try_start_1
    invoke-virtual {v0, p2}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object p2
    :try_end_1
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_4

    .line 6
    invoke-interface {p2}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object p2

    .line 7
    invoke-static {p2}, Lcom/sun/org/apache/xml/internal/resolver/helpers/Namespaces;->getNamespaceURI(Lorg/w3c/dom/Element;)Ljava/lang/String;

    move-result-object v0

    .line 8
    invoke-static {p2}, Lcom/sun/org/apache/xml/internal/resolver/helpers/Namespaces;->getLocalName(Lorg/w3c/dom/Element;)Ljava/lang/String;

    move-result-object v2

    .line 9
    invoke-virtual {p0, v0, v2}, Lcom/sun/org/apache/xml/internal/resolver/readers/DOMCatalogReader;->getCatalogParser(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v3, 0x1

    if-nez p0, :cond_1

    if-nez v0, :cond_0

    .line 10
    invoke-virtual {p1}, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->getCatalogManager()Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;

    move-result-object p0

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;->debug:Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "No Catalog parser for "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v3, p1}, Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;->message(ILjava/lang/String;)V

    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {p1}, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->getCatalogManager()Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;

    move-result-object p0

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;->debug:Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "No Catalog parser for {"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "}"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v3, p1}, Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;->message(ILjava/lang/String;)V

    :goto_0
    return-void

    .line 12
    :cond_1
    :try_start_2
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/xml/internal/resolver/readers/DOMCatalogParser;
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_0

    .line 13
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object p0

    :goto_1
    if-eqz p0, :cond_2

    .line 14
    invoke-interface {v0, p1, p0}, Lcom/sun/org/apache/xml/internal/resolver/readers/DOMCatalogParser;->parseCatalogEntry(Lcom/sun/org/apache/xml/internal/resolver/Catalog;Lorg/w3c/dom/Node;)V

    .line 15
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object p0

    goto :goto_1

    :cond_2
    return-void

    .line 16
    :catch_0
    invoke-virtual {p1}, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->getCatalogManager()Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;

    move-result-object p1

    iget-object p1, p1, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;->debug:Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;

    const-string p2, "Cannot cast XML Catalog Parser class"

    invoke-virtual {p1, v3, p2, p0}, Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;)V

    .line 17
    new-instance p0, Lcom/sun/org/apache/xml/internal/resolver/CatalogException;

    invoke-direct {p0, v1}, Lcom/sun/org/apache/xml/internal/resolver/CatalogException;-><init>(I)V

    throw p0

    .line 18
    :catch_1
    invoke-virtual {p1}, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->getCatalogManager()Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;

    move-result-object p1

    iget-object p1, p1, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;->debug:Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;

    const-string p2, "Cannot access XML Catalog Parser class"

    invoke-virtual {p1, v3, p2, p0}, Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;)V

    .line 19
    new-instance p0, Lcom/sun/org/apache/xml/internal/resolver/CatalogException;

    invoke-direct {p0, v1}, Lcom/sun/org/apache/xml/internal/resolver/CatalogException;-><init>(I)V

    throw p0

    .line 20
    :catch_2
    invoke-virtual {p1}, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->getCatalogManager()Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;

    move-result-object p1

    iget-object p1, p1, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;->debug:Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;

    const-string p2, "Cannot instantiate XML Catalog Parser class"

    invoke-virtual {p1, v3, p2, p0}, Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;)V

    .line 21
    new-instance p0, Lcom/sun/org/apache/xml/internal/resolver/CatalogException;

    invoke-direct {p0, v1}, Lcom/sun/org/apache/xml/internal/resolver/CatalogException;-><init>(I)V

    throw p0

    .line 22
    :catch_3
    invoke-virtual {p1}, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->getCatalogManager()Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;

    move-result-object p1

    iget-object p1, p1, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;->debug:Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;

    const-string p2, "Cannot load XML Catalog Parser class"

    invoke-virtual {p1, v3, p2, p0}, Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;)V

    .line 23
    new-instance p0, Lcom/sun/org/apache/xml/internal/resolver/CatalogException;

    invoke-direct {p0, v1}, Lcom/sun/org/apache/xml/internal/resolver/CatalogException;-><init>(I)V

    throw p0

    .line 24
    :catch_4
    new-instance p0, Lcom/sun/org/apache/xml/internal/resolver/CatalogException;

    const/4 p1, 0x5

    invoke-direct {p0, p1}, Lcom/sun/org/apache/xml/internal/resolver/CatalogException;-><init>(I)V

    throw p0

    .line 25
    :catch_5
    new-instance p0, Lcom/sun/org/apache/xml/internal/resolver/CatalogException;

    invoke-direct {p0, v1}, Lcom/sun/org/apache/xml/internal/resolver/CatalogException;-><init>(I)V

    throw p0
.end method

.method public readCatalog(Lcom/sun/org/apache/xml/internal/resolver/Catalog;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Ljava/io/IOException;,
            Lcom/sun/org/apache/xml/internal/resolver/CatalogException;
        }
    .end annotation

    .line 26
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 27
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p2

    .line 28
    invoke-virtual {p2}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/sun/org/apache/xml/internal/resolver/readers/DOMCatalogReader;->readCatalog(Lcom/sun/org/apache/xml/internal/resolver/Catalog;Ljava/io/InputStream;)V

    return-void
.end method

.method public setCatalogParser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/resolver/readers/DOMCatalogReader;->namespaceMap:Ljava/util/Hashtable;

    invoke-virtual {p0, p2, p3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/resolver/readers/DOMCatalogReader;->namespaceMap:Ljava/util/Hashtable;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "}"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method
