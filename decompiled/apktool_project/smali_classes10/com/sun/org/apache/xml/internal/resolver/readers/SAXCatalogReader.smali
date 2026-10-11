.class public Lcom/sun/org/apache/xml/internal/resolver/readers/SAXCatalogReader;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sun/org/apache/xml/internal/resolver/readers/CatalogReader;
.implements Lorg/xml/sax/ContentHandler;
.implements Lorg/xml/sax/DocumentHandler;


# instance fields
.field private abandonHope:Z

.field private catalog:Lcom/sun/org/apache/xml/internal/resolver/Catalog;

.field protected debug:Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;

.field protected namespaceMap:Ljava/util/Hashtable;

.field protected parserClass:Ljava/lang/String;

.field protected parserFactory:Ljavax/xml/parsers/SAXParserFactory;

.field private saxParser:Lcom/sun/org/apache/xml/internal/resolver/readers/SAXCatalogParser;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/resolver/readers/SAXCatalogReader;->parserFactory:Ljavax/xml/parsers/SAXParserFactory;

    .line 3
    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/resolver/readers/SAXCatalogReader;->parserClass:Ljava/lang/String;

    .line 4
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, p0, Lcom/sun/org/apache/xml/internal/resolver/readers/SAXCatalogReader;->namespaceMap:Ljava/util/Hashtable;

    .line 5
    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/resolver/readers/SAXCatalogReader;->saxParser:Lcom/sun/org/apache/xml/internal/resolver/readers/SAXCatalogParser;

    const/4 v1, 0x0

    .line 6
    iput-boolean v1, p0, Lcom/sun/org/apache/xml/internal/resolver/readers/SAXCatalogReader;->abandonHope:Z

    .line 7
    invoke-static {}, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;->getStaticManager()Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;

    move-result-object v1

    iget-object v1, v1, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;->debug:Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;

    iput-object v1, p0, Lcom/sun/org/apache/xml/internal/resolver/readers/SAXCatalogReader;->debug:Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;

    .line 8
    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/resolver/readers/SAXCatalogReader;->parserFactory:Ljavax/xml/parsers/SAXParserFactory;

    .line 9
    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/resolver/readers/SAXCatalogReader;->parserClass:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 19
    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/resolver/readers/SAXCatalogReader;->parserFactory:Ljavax/xml/parsers/SAXParserFactory;

    .line 20
    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/resolver/readers/SAXCatalogReader;->parserClass:Ljava/lang/String;

    .line 21
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, p0, Lcom/sun/org/apache/xml/internal/resolver/readers/SAXCatalogReader;->namespaceMap:Ljava/util/Hashtable;

    .line 22
    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/resolver/readers/SAXCatalogReader;->saxParser:Lcom/sun/org/apache/xml/internal/resolver/readers/SAXCatalogParser;

    const/4 v0, 0x0

    .line 23
    iput-boolean v0, p0, Lcom/sun/org/apache/xml/internal/resolver/readers/SAXCatalogReader;->abandonHope:Z

    .line 24
    invoke-static {}, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;->getStaticManager()Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;

    move-result-object v0

    iget-object v0, v0, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;->debug:Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/resolver/readers/SAXCatalogReader;->debug:Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;

    .line 25
    iput-object p1, p0, Lcom/sun/org/apache/xml/internal/resolver/readers/SAXCatalogReader;->parserClass:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljavax/xml/parsers/SAXParserFactory;)V
    .locals 2

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/resolver/readers/SAXCatalogReader;->parserFactory:Ljavax/xml/parsers/SAXParserFactory;

    .line 12
    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/resolver/readers/SAXCatalogReader;->parserClass:Ljava/lang/String;

    .line 13
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, p0, Lcom/sun/org/apache/xml/internal/resolver/readers/SAXCatalogReader;->namespaceMap:Ljava/util/Hashtable;

    .line 14
    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/resolver/readers/SAXCatalogReader;->saxParser:Lcom/sun/org/apache/xml/internal/resolver/readers/SAXCatalogParser;

    const/4 v0, 0x0

    .line 15
    iput-boolean v0, p0, Lcom/sun/org/apache/xml/internal/resolver/readers/SAXCatalogReader;->abandonHope:Z

    .line 16
    invoke-static {}, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;->getStaticManager()Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;

    move-result-object v0

    iget-object v0, v0, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;->debug:Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/resolver/readers/SAXCatalogReader;->debug:Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;

    .line 17
    iput-object p1, p0, Lcom/sun/org/apache/xml/internal/resolver/readers/SAXCatalogReader;->parserFactory:Ljavax/xml/parsers/SAXParserFactory;

    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/resolver/readers/SAXCatalogReader;->saxParser:Lcom/sun/org/apache/xml/internal/resolver/readers/SAXCatalogParser;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2, p3}, Lorg/xml/sax/ContentHandler;->characters([CII)V

    :cond_0
    return-void
.end method

.method public endDocument()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/resolver/readers/SAXCatalogReader;->saxParser:Lcom/sun/org/apache/xml/internal/resolver/readers/SAXCatalogParser;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lorg/xml/sax/ContentHandler;->endDocument()V

    :cond_0
    return-void
.end method

.method public endElement(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/resolver/readers/SAXCatalogReader;->saxParser:Lcom/sun/org/apache/xml/internal/resolver/readers/SAXCatalogParser;

    if-eqz p0, :cond_0

    .line 2
    invoke-interface {p0, p1}, Lorg/xml/sax/DocumentHandler;->endElement(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 3
    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/resolver/readers/SAXCatalogReader;->saxParser:Lcom/sun/org/apache/xml/internal/resolver/readers/SAXCatalogParser;

    if-eqz p0, :cond_0

    .line 4
    invoke-interface {p0, p1, p2, p3}, Lorg/xml/sax/ContentHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public endPrefixMapping(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/resolver/readers/SAXCatalogReader;->saxParser:Lcom/sun/org/apache/xml/internal/resolver/readers/SAXCatalogParser;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lorg/xml/sax/ContentHandler;->endPrefixMapping(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public getCatalogParser(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/resolver/readers/SAXCatalogReader;->namespaceMap:Ljava/util/Hashtable;

    invoke-virtual {p0, p2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/resolver/readers/SAXCatalogReader;->namespaceMap:Ljava/util/Hashtable;

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

.method public getParserClass()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/resolver/readers/SAXCatalogReader;->parserClass:Ljava/lang/String;

    return-object p0
.end method

.method public getParserFactory()Ljavax/xml/parsers/SAXParserFactory;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/resolver/readers/SAXCatalogReader;->parserFactory:Ljavax/xml/parsers/SAXParserFactory;

    return-object p0
.end method

.method public ignorableWhitespace([CII)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/resolver/readers/SAXCatalogReader;->saxParser:Lcom/sun/org/apache/xml/internal/resolver/readers/SAXCatalogParser;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2, p3}, Lorg/xml/sax/ContentHandler;->ignorableWhitespace([CII)V

    :cond_0
    return-void
.end method

.method public processingInstruction(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/resolver/readers/SAXCatalogReader;->saxParser:Lcom/sun/org/apache/xml/internal/resolver/readers/SAXCatalogParser;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Lorg/xml/sax/ContentHandler;->processingInstruction(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public readCatalog(Lcom/sun/org/apache/xml/internal/resolver/Catalog;Ljava/io/InputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sun/org/apache/xml/internal/resolver/CatalogException;
        }
    .end annotation

    .line 7
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/resolver/readers/SAXCatalogReader;->parserFactory:Ljavax/xml/parsers/SAXParserFactory;

    const/4 v1, 0x6

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/resolver/readers/SAXCatalogReader;->parserClass:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/resolver/readers/SAXCatalogReader;->debug:Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;

    const/4 p1, 0x1

    const-string p2, "Cannot read SAX catalog without a parser"

    invoke-virtual {p0, p1, p2}, Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;->message(ILjava/lang/String;)V

    .line 9
    new-instance p0, Lcom/sun/org/apache/xml/internal/resolver/CatalogException;

    invoke-direct {p0, v1}, Lcom/sun/org/apache/xml/internal/resolver/CatalogException;-><init>(I)V

    throw p0

    .line 10
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->getCatalogManager()Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;

    move-result-object v0

    iget-object v0, v0, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;->debug:Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/resolver/readers/SAXCatalogReader;->debug:Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;

    .line 11
    invoke-virtual {p1}, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->getCatalogManager()Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;->getBootstrapResolver()Lcom/sun/org/apache/xml/internal/resolver/helpers/BootstrapResolver;

    move-result-object v0

    .line 12
    iput-object p1, p0, Lcom/sun/org/apache/xml/internal/resolver/readers/SAXCatalogReader;->catalog:Lcom/sun/org/apache/xml/internal/resolver/Catalog;

    .line 13
    :try_start_0
    iget-object p1, p0, Lcom/sun/org/apache/xml/internal/resolver/readers/SAXCatalogReader;->parserFactory:Ljavax/xml/parsers/SAXParserFactory;

    if-eqz p1, :cond_3

    .line 14
    invoke-virtual {p1}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object p1

    .line 15
    new-instance v2, Lcom/sun/org/apache/xml/internal/resolver/readers/SAXParserHandler;

    invoke-direct {v2}, Lcom/sun/org/apache/xml/internal/resolver/readers/SAXParserHandler;-><init>()V

    .line 16
    invoke-virtual {v2, p0}, Lcom/sun/org/apache/xml/internal/resolver/readers/SAXParserHandler;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    if-eqz v0, :cond_2

    .line 17
    invoke-virtual {v2, v0}, Lcom/sun/org/apache/xml/internal/resolver/readers/SAXParserHandler;->setEntityResolver(Lorg/xml/sax/EntityResolver;)V

    .line 18
    :cond_2
    new-instance p0, Lorg/xml/sax/InputSource;

    invoke-direct {p0, p2}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {p1, p0, v2}, Ljavax/xml/parsers/SAXParser;->parse(Lorg/xml/sax/InputSource;Lorg/xml/sax/helpers/DefaultHandler;)V

    goto :goto_1

    .line 19
    :cond_3
    iget-object p1, p0, Lcom/sun/org/apache/xml/internal/resolver/readers/SAXCatalogReader;->parserClass:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/xml/sax/Parser;

    .line 20
    invoke-interface {p1, p0}, Lorg/xml/sax/Parser;->setDocumentHandler(Lorg/xml/sax/DocumentHandler;)V

    if-eqz v0, :cond_4

    .line 21
    invoke-interface {p1, v0}, Lorg/xml/sax/Parser;->setEntityResolver(Lorg/xml/sax/EntityResolver;)V

    .line 22
    :cond_4
    new-instance p0, Lorg/xml/sax/InputSource;

    invoke-direct {p0, p2}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-interface {p1, p0}, Lorg/xml/sax/Parser;->parse(Lorg/xml/sax/InputSource;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :catch_0
    move-exception p0

    .line 23
    invoke-virtual {p0}, Lorg/xml/sax/SAXException;->getException()Ljava/lang/Exception;

    move-result-object p1

    .line 24
    new-instance p2, Ljava/net/UnknownHostException;

    invoke-direct {p2}, Ljava/net/UnknownHostException;-><init>()V

    .line 25
    new-instance v0, Ljava/io/FileNotFoundException;

    invoke-direct {v0}, Ljava/io/FileNotFoundException;-><init>()V

    if-eqz p1, :cond_6

    .line 26
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    const/4 v2, 0x7

    if-eq v1, p2, :cond_5

    .line 27
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    if-ne p2, v0, :cond_6

    .line 28
    new-instance p0, Lcom/sun/org/apache/xml/internal/resolver/CatalogException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v2, p1}, Lcom/sun/org/apache/xml/internal/resolver/CatalogException;-><init>(ILjava/lang/String;)V

    throw p0

    .line 29
    :cond_5
    new-instance p0, Lcom/sun/org/apache/xml/internal/resolver/CatalogException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v2, p1}, Lcom/sun/org/apache/xml/internal/resolver/CatalogException;-><init>(ILjava/lang/String;)V

    throw p0

    .line 30
    :cond_6
    new-instance p1, Lcom/sun/org/apache/xml/internal/resolver/CatalogException;

    invoke-direct {p1, p0}, Lcom/sun/org/apache/xml/internal/resolver/CatalogException;-><init>(Ljava/lang/Exception;)V

    throw p1

    .line 31
    :catch_1
    new-instance p0, Lcom/sun/org/apache/xml/internal/resolver/CatalogException;

    const/4 p1, 0x5

    invoke-direct {p0, p1}, Lcom/sun/org/apache/xml/internal/resolver/CatalogException;-><init>(I)V

    throw p0

    .line 32
    :catch_2
    new-instance p0, Lcom/sun/org/apache/xml/internal/resolver/CatalogException;

    invoke-direct {p0, v1}, Lcom/sun/org/apache/xml/internal/resolver/CatalogException;-><init>(I)V

    throw p0

    .line 33
    :catch_3
    new-instance p0, Lcom/sun/org/apache/xml/internal/resolver/CatalogException;

    invoke-direct {p0, v1}, Lcom/sun/org/apache/xml/internal/resolver/CatalogException;-><init>(I)V

    throw p0

    .line 34
    :catch_4
    new-instance p0, Lcom/sun/org/apache/xml/internal/resolver/CatalogException;

    invoke-direct {p0, v1}, Lcom/sun/org/apache/xml/internal/resolver/CatalogException;-><init>(I)V

    throw p0
.end method

.method public readCatalog(Lcom/sun/org/apache/xml/internal/resolver/Catalog;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Ljava/io/IOException;,
            Lcom/sun/org/apache/xml/internal/resolver/CatalogException;
        }
    .end annotation

    .line 1
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2
    :catch_0
    new-instance v0, Ljava/net/URL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file:///"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 3
    :goto_0
    invoke-virtual {p1}, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->getCatalogManager()Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;

    move-result-object p2

    iget-object p2, p2, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;->debug:Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;

    iput-object p2, p0, Lcom/sun/org/apache/xml/internal/resolver/readers/SAXCatalogReader;->debug:Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;

    .line 4
    :try_start_1
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p2

    .line 5
    invoke-virtual {p2}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/sun/org/apache/xml/internal/resolver/readers/SAXCatalogReader;->readCatalog(Lcom/sun/org/apache/xml/internal/resolver/Catalog;Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 6
    :catch_1
    invoke-virtual {p1}, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->getCatalogManager()Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;

    move-result-object p0

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;->debug:Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;

    const-string p1, "Failed to load catalog, file not found"

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1, p2}, Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public setCatalogParser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/resolver/readers/SAXCatalogReader;->namespaceMap:Ljava/util/Hashtable;

    invoke-virtual {p0, p2, p3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/resolver/readers/SAXCatalogReader;->namespaceMap:Ljava/util/Hashtable;

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

.method public setDocumentLocator(Lorg/xml/sax/Locator;)V
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/resolver/readers/SAXCatalogReader;->saxParser:Lcom/sun/org/apache/xml/internal/resolver/readers/SAXCatalogParser;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lorg/xml/sax/ContentHandler;->setDocumentLocator(Lorg/xml/sax/Locator;)V

    :cond_0
    return-void
.end method

.method public setParserClass(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xml/internal/resolver/readers/SAXCatalogReader;->parserClass:Ljava/lang/String;

    return-void
.end method

.method public setParserFactory(Ljavax/xml/parsers/SAXParserFactory;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xml/internal/resolver/readers/SAXCatalogReader;->parserFactory:Ljavax/xml/parsers/SAXParserFactory;

    return-void
.end method

.method public skippedEntity(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/resolver/readers/SAXCatalogReader;->saxParser:Lcom/sun/org/apache/xml/internal/resolver/readers/SAXCatalogParser;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lorg/xml/sax/ContentHandler;->skippedEntity(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public startDocument()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/resolver/readers/SAXCatalogReader;->saxParser:Lcom/sun/org/apache/xml/internal/resolver/readers/SAXCatalogParser;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/org/apache/xml/internal/resolver/readers/SAXCatalogReader;->abandonHope:Z

    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 31
    iget-boolean v0, p0, Lcom/sun/org/apache/xml/internal/resolver/readers/SAXCatalogReader;->abandonHope:Z

    if-eqz v0, :cond_0

    return-void

    .line 32
    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/resolver/readers/SAXCatalogReader;->saxParser:Lcom/sun/org/apache/xml/internal/resolver/readers/SAXCatalogParser;

    if-nez v0, :cond_3

    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/sun/org/apache/xml/internal/resolver/readers/SAXCatalogReader;->getCatalogParser(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-nez v0, :cond_2

    .line 34
    iput-boolean v1, p0, Lcom/sun/org/apache/xml/internal/resolver/readers/SAXCatalogReader;->abandonHope:Z

    if-nez p1, :cond_1

    .line 35
    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/resolver/readers/SAXCatalogReader;->debug:Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "No Catalog parser for "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v2, p1}, Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;->message(ILjava/lang/String;)V

    goto :goto_0

    .line 36
    :cond_1
    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/resolver/readers/SAXCatalogReader;->debug:Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "No Catalog parser for {"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "}"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v2, p1}, Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;->message(ILjava/lang/String;)V

    :goto_0
    return-void

    :cond_2
    const/4 v3, 0x0

    .line 37
    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/xml/internal/resolver/readers/SAXCatalogParser;

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/resolver/readers/SAXCatalogReader;->saxParser:Lcom/sun/org/apache/xml/internal/resolver/readers/SAXCatalogParser;

    .line 38
    iget-object v4, p0, Lcom/sun/org/apache/xml/internal/resolver/readers/SAXCatalogReader;->catalog:Lcom/sun/org/apache/xml/internal/resolver/Catalog;

    invoke-interface {v0, v4}, Lcom/sun/org/apache/xml/internal/resolver/readers/SAXCatalogParser;->setCatalog(Lcom/sun/org/apache/xml/internal/resolver/Catalog;)V

    .line 39
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/resolver/readers/SAXCatalogReader;->saxParser:Lcom/sun/org/apache/xml/internal/resolver/readers/SAXCatalogParser;

    invoke-interface {v0}, Lorg/xml/sax/ContentHandler;->startDocument()V

    .line 40
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/resolver/readers/SAXCatalogReader;->saxParser:Lcom/sun/org/apache/xml/internal/resolver/readers/SAXCatalogParser;

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/xml/sax/ContentHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 41
    iput-object v3, p0, Lcom/sun/org/apache/xml/internal/resolver/readers/SAXCatalogReader;->saxParser:Lcom/sun/org/apache/xml/internal/resolver/readers/SAXCatalogParser;

    .line 42
    iput-boolean v1, p0, Lcom/sun/org/apache/xml/internal/resolver/readers/SAXCatalogReader;->abandonHope:Z

    .line 43
    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/resolver/readers/SAXCatalogReader;->debug:Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v2, p1}, Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;->message(ILjava/lang/String;)V

    goto :goto_1

    :catch_1
    move-exception p1

    .line 44
    iput-object v3, p0, Lcom/sun/org/apache/xml/internal/resolver/readers/SAXCatalogReader;->saxParser:Lcom/sun/org/apache/xml/internal/resolver/readers/SAXCatalogParser;

    .line 45
    iput-boolean v1, p0, Lcom/sun/org/apache/xml/internal/resolver/readers/SAXCatalogReader;->abandonHope:Z

    .line 46
    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/resolver/readers/SAXCatalogReader;->debug:Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v2, p1}, Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;->message(ILjava/lang/String;)V

    goto :goto_1

    :catch_2
    move-exception p1

    .line 47
    iput-object v3, p0, Lcom/sun/org/apache/xml/internal/resolver/readers/SAXCatalogReader;->saxParser:Lcom/sun/org/apache/xml/internal/resolver/readers/SAXCatalogParser;

    .line 48
    iput-boolean v1, p0, Lcom/sun/org/apache/xml/internal/resolver/readers/SAXCatalogReader;->abandonHope:Z

    .line 49
    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/resolver/readers/SAXCatalogReader;->debug:Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v2, p1}, Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;->message(ILjava/lang/String;)V

    goto :goto_1

    :catch_3
    move-exception p1

    .line 50
    iput-object v3, p0, Lcom/sun/org/apache/xml/internal/resolver/readers/SAXCatalogReader;->saxParser:Lcom/sun/org/apache/xml/internal/resolver/readers/SAXCatalogParser;

    .line 51
    iput-boolean v1, p0, Lcom/sun/org/apache/xml/internal/resolver/readers/SAXCatalogReader;->abandonHope:Z

    .line 52
    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/resolver/readers/SAXCatalogReader;->debug:Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v2, p1}, Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;->message(ILjava/lang/String;)V

    goto :goto_1

    .line 53
    :cond_3
    invoke-interface {v0, p1, p2, p3, p4}, Lorg/xml/sax/ContentHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    :goto_1
    return-void
.end method

.method public startElement(Ljava/lang/String;Lorg/xml/sax/AttributeList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/sun/org/apache/xml/internal/resolver/readers/SAXCatalogReader;->abandonHope:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/resolver/readers/SAXCatalogReader;->saxParser:Lcom/sun/org/apache/xml/internal/resolver/readers/SAXCatalogParser;

    if-nez v0, :cond_6

    const/16 v0, 0x3a

    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const-string v2, ""

    if-lez v1, :cond_1

    const/4 v1, 0x0

    .line 4
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v1, v2

    .line 5
    :goto_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/4 v4, 0x1

    if-lez v3, :cond_2

    .line 6
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/2addr v0, v4

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    move-object v0, p1

    .line 7
    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v1, "xmlns"

    .line 8
    invoke-interface {p2, v1}, Lorg/xml/sax/AttributeList;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 9
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "xmlns:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v1}, Lorg/xml/sax/AttributeList;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 10
    :goto_2
    invoke-virtual {p0, v1, v0}, Lcom/sun/org/apache/xml/internal/resolver/readers/SAXCatalogReader;->getCatalogParser(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x2

    if-nez v0, :cond_5

    .line 11
    iput-boolean v4, p0, Lcom/sun/org/apache/xml/internal/resolver/readers/SAXCatalogReader;->abandonHope:Z

    if-nez v1, :cond_4

    .line 12
    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/resolver/readers/SAXCatalogReader;->debug:Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "No Catalog parser for "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v2, p1}, Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;->message(ILjava/lang/String;)V

    goto :goto_3

    .line 13
    :cond_4
    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/resolver/readers/SAXCatalogReader;->debug:Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "No Catalog parser for {"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "}"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v2, p1}, Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;->message(ILjava/lang/String;)V

    :goto_3
    return-void

    :cond_5
    const/4 v1, 0x0

    .line 14
    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/xml/internal/resolver/readers/SAXCatalogParser;

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/resolver/readers/SAXCatalogReader;->saxParser:Lcom/sun/org/apache/xml/internal/resolver/readers/SAXCatalogParser;

    .line 15
    iget-object v3, p0, Lcom/sun/org/apache/xml/internal/resolver/readers/SAXCatalogReader;->catalog:Lcom/sun/org/apache/xml/internal/resolver/Catalog;

    invoke-interface {v0, v3}, Lcom/sun/org/apache/xml/internal/resolver/readers/SAXCatalogParser;->setCatalog(Lcom/sun/org/apache/xml/internal/resolver/Catalog;)V

    .line 16
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/resolver/readers/SAXCatalogReader;->saxParser:Lcom/sun/org/apache/xml/internal/resolver/readers/SAXCatalogParser;

    invoke-interface {v0}, Lorg/xml/sax/ContentHandler;->startDocument()V

    .line 17
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/resolver/readers/SAXCatalogReader;->saxParser:Lcom/sun/org/apache/xml/internal/resolver/readers/SAXCatalogParser;

    invoke-interface {v0, p1, p2}, Lorg/xml/sax/DocumentHandler;->startElement(Ljava/lang/String;Lorg/xml/sax/AttributeList;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception p1

    .line 18
    iput-object v1, p0, Lcom/sun/org/apache/xml/internal/resolver/readers/SAXCatalogReader;->saxParser:Lcom/sun/org/apache/xml/internal/resolver/readers/SAXCatalogParser;

    .line 19
    iput-boolean v4, p0, Lcom/sun/org/apache/xml/internal/resolver/readers/SAXCatalogReader;->abandonHope:Z

    .line 20
    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/resolver/readers/SAXCatalogReader;->debug:Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v2, p1}, Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;->message(ILjava/lang/String;)V

    goto :goto_4

    :catch_1
    move-exception p1

    .line 21
    iput-object v1, p0, Lcom/sun/org/apache/xml/internal/resolver/readers/SAXCatalogReader;->saxParser:Lcom/sun/org/apache/xml/internal/resolver/readers/SAXCatalogParser;

    .line 22
    iput-boolean v4, p0, Lcom/sun/org/apache/xml/internal/resolver/readers/SAXCatalogReader;->abandonHope:Z

    .line 23
    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/resolver/readers/SAXCatalogReader;->debug:Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v2, p1}, Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;->message(ILjava/lang/String;)V

    goto :goto_4

    :catch_2
    move-exception p1

    .line 24
    iput-object v1, p0, Lcom/sun/org/apache/xml/internal/resolver/readers/SAXCatalogReader;->saxParser:Lcom/sun/org/apache/xml/internal/resolver/readers/SAXCatalogParser;

    .line 25
    iput-boolean v4, p0, Lcom/sun/org/apache/xml/internal/resolver/readers/SAXCatalogReader;->abandonHope:Z

    .line 26
    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/resolver/readers/SAXCatalogReader;->debug:Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v2, p1}, Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;->message(ILjava/lang/String;)V

    goto :goto_4

    :catch_3
    move-exception p1

    .line 27
    iput-object v1, p0, Lcom/sun/org/apache/xml/internal/resolver/readers/SAXCatalogReader;->saxParser:Lcom/sun/org/apache/xml/internal/resolver/readers/SAXCatalogParser;

    .line 28
    iput-boolean v4, p0, Lcom/sun/org/apache/xml/internal/resolver/readers/SAXCatalogReader;->abandonHope:Z

    .line 29
    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/resolver/readers/SAXCatalogReader;->debug:Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v2, p1}, Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;->message(ILjava/lang/String;)V

    goto :goto_4

    .line 30
    :cond_6
    invoke-interface {v0, p1, p2}, Lorg/xml/sax/DocumentHandler;->startElement(Ljava/lang/String;Lorg/xml/sax/AttributeList;)V

    :goto_4
    return-void
.end method

.method public startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/resolver/readers/SAXCatalogReader;->saxParser:Lcom/sun/org/apache/xml/internal/resolver/readers/SAXCatalogParser;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Lorg/xml/sax/ContentHandler;->startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
