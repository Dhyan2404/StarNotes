.class public Lorg/mortbay/xml/XmlParser;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mortbay/xml/XmlParser$Node;,
        Lorg/mortbay/xml/XmlParser$Attribute;,
        Lorg/mortbay/xml/XmlParser$a;,
        Lorg/mortbay/xml/XmlParser$b;
    }
.end annotation


# instance fields
.field public a:Ljava/util/Map;

.field public b:Ljavax/xml/parsers/SAXParser;

.field public c:Ljava/util/Map;

.field public d:Ljava/util/Stack;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/Object;

.field public g:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/mortbay/xml/XmlParser;->a:Ljava/util/Map;

    .line 3
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lorg/mortbay/xml/XmlParser;->d:Ljava/util/Stack;

    .line 4
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "org.apache.xerces."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "true"

    goto :goto_0

    :cond_0
    const-string v0, "false"

    :goto_0
    const-string v1, "org.mortbay.xml.XmlParser.Validating"

    .line 6
    invoke-static {v1, v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "org.mortbay.xml.XmlParser.NotValidating"

    .line 7
    invoke-static {v1}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 8
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 9
    :goto_1
    invoke-virtual {p0, v0}, Lorg/mortbay/xml/XmlParser;->setValidating(Z)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/mortbay/xml/XmlParser;->a:Ljava/util/Map;

    .line 12
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lorg/mortbay/xml/XmlParser;->d:Ljava/util/Stack;

    .line 13
    invoke-virtual {p0, p1}, Lorg/mortbay/xml/XmlParser;->setValidating(Z)V

    return-void
.end method

.method public static synthetic a(Lorg/mortbay/xml/XmlParser;)Ljavax/xml/parsers/SAXParser;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/xml/XmlParser;->b:Ljavax/xml/parsers/SAXParser;

    return-object p0
.end method

.method public static synthetic b(Lorg/mortbay/xml/XmlParser;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/xml/XmlParser;->f:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic c(Lorg/mortbay/xml/XmlParser;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/xml/XmlParser;->c:Ljava/util/Map;

    return-object p0
.end method

.method public static synthetic d(Lorg/mortbay/xml/XmlParser;)Ljava/util/Stack;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/xml/XmlParser;->d:Ljava/util/Stack;

    return-object p0
.end method

.method public static synthetic e(Lorg/mortbay/xml/XmlParser;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lorg/mortbay/xml/XmlParser;->g:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic f(Lorg/mortbay/xml/XmlParser;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/xml/XmlParser;->a:Ljava/util/Map;

    return-object p0
.end method


# virtual methods
.method public declared-synchronized addContentHandler(Ljava/lang/String;Lorg/xml/sax/ContentHandler;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/mortbay/xml/XmlParser;->c:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/mortbay/xml/XmlParser;->c:Ljava/util/Map;

    :cond_0
    iget-object v0, p0, Lorg/mortbay/xml/XmlParser;->c:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getDTD()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/xml/XmlParser;->g:Ljava/lang/String;

    return-object p0
.end method

.method public getXpath()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/xml/XmlParser;->e:Ljava/lang/String;

    return-object p0
.end method

.method public declared-synchronized parse(Ljava/io/File;)Lorg/mortbay/xml/XmlParser$Node;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    monitor-enter p0

    .line 18
    :try_start_0
    invoke-static {}, Lorg/mortbay/log/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 19
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "parse: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;)V

    .line 20
    :cond_0
    new-instance v0, Lorg/xml/sax/InputSource;

    invoke-virtual {p1}, Ljava/io/File;->toURL()Ljava/net/URL;

    move-result-object p1

    invoke-virtual {p1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/xml/sax/InputSource;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/mortbay/xml/XmlParser;->parse(Lorg/xml/sax/InputSource;)Lorg/mortbay/xml/XmlParser$Node;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized parse(Ljava/io/InputStream;)Lorg/mortbay/xml/XmlParser$Node;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    .line 21
    :try_start_0
    iput-object v0, p0, Lorg/mortbay/xml/XmlParser;->g:Ljava/lang/String;

    .line 22
    new-instance v0, Lorg/mortbay/xml/XmlParser$a;

    invoke-direct {v0, p0}, Lorg/mortbay/xml/XmlParser$a;-><init>(Lorg/mortbay/xml/XmlParser;)V

    .line 23
    iget-object v1, p0, Lorg/mortbay/xml/XmlParser;->b:Ljavax/xml/parsers/SAXParser;

    invoke-virtual {v1}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v1

    .line 24
    invoke-interface {v1, v0}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 25
    invoke-interface {v1, v0}, Lorg/xml/sax/XMLReader;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V

    .line 26
    invoke-interface {v1, v0}, Lorg/xml/sax/XMLReader;->setEntityResolver(Lorg/xml/sax/EntityResolver;)V

    .line 27
    iget-object v1, p0, Lorg/mortbay/xml/XmlParser;->b:Ljavax/xml/parsers/SAXParser;

    new-instance v2, Lorg/xml/sax/InputSource;

    invoke-direct {v2, p1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v1, v2, v0}, Ljavax/xml/parsers/SAXParser;->parse(Lorg/xml/sax/InputSource;Lorg/xml/sax/helpers/DefaultHandler;)V

    .line 28
    iget-object p1, v0, Lorg/mortbay/xml/XmlParser$a;->f:Lorg/xml/sax/SAXParseException;

    if-nez p1, :cond_0

    .line 29
    iget-object p1, v0, Lorg/mortbay/xml/XmlParser$a;->e:Lorg/mortbay/xml/XmlParser$Node;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lorg/mortbay/xml/XmlParser$Node;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/mortbay/xml/XmlParser$Node;

    .line 30
    invoke-virtual {v0}, Lorg/mortbay/xml/XmlParser$a;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    monitor-exit p0

    return-object p1

    .line 32
    :cond_0
    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized parse(Ljava/lang/String;)Lorg/mortbay/xml/XmlParser$Node;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    monitor-enter p0

    .line 15
    :try_start_0
    invoke-static {}, Lorg/mortbay/log/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 16
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "parse: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;)V

    .line 17
    :cond_0
    new-instance v0, Lorg/xml/sax/InputSource;

    invoke-direct {v0, p1}, Lorg/xml/sax/InputSource;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/mortbay/xml/XmlParser;->parse(Lorg/xml/sax/InputSource;)Lorg/mortbay/xml/XmlParser$Node;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized parse(Lorg/xml/sax/InputSource;)Lorg/mortbay/xml/XmlParser$Node;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iput-object v0, p0, Lorg/mortbay/xml/XmlParser;->g:Ljava/lang/String;

    .line 2
    new-instance v0, Lorg/mortbay/xml/XmlParser$a;

    invoke-direct {v0, p0}, Lorg/mortbay/xml/XmlParser$a;-><init>(Lorg/mortbay/xml/XmlParser;)V

    .line 3
    iget-object v1, p0, Lorg/mortbay/xml/XmlParser;->b:Ljavax/xml/parsers/SAXParser;

    invoke-virtual {v1}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v1

    .line 4
    invoke-interface {v1, v0}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 5
    invoke-interface {v1, v0}, Lorg/xml/sax/XMLReader;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V

    .line 6
    invoke-interface {v1, v0}, Lorg/xml/sax/XMLReader;->setEntityResolver(Lorg/xml/sax/EntityResolver;)V

    .line 7
    invoke-static {}, Lorg/mortbay/log/Log;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 8
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "parsing: sid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Lorg/xml/sax/InputSource;->getSystemId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, ",pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Lorg/xml/sax/InputSource;->getPublicId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;)V

    .line 9
    :cond_0
    iget-object v1, p0, Lorg/mortbay/xml/XmlParser;->b:Ljavax/xml/parsers/SAXParser;

    invoke-virtual {v1, p1, v0}, Ljavax/xml/parsers/SAXParser;->parse(Lorg/xml/sax/InputSource;Lorg/xml/sax/helpers/DefaultHandler;)V

    .line 10
    iget-object p1, v0, Lorg/mortbay/xml/XmlParser$a;->f:Lorg/xml/sax/SAXParseException;

    if-nez p1, :cond_1

    .line 11
    iget-object p1, v0, Lorg/mortbay/xml/XmlParser$a;->e:Lorg/mortbay/xml/XmlParser$Node;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lorg/mortbay/xml/XmlParser$Node;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/mortbay/xml/XmlParser$Node;

    .line 12
    invoke-virtual {v0}, Lorg/mortbay/xml/XmlParser$a;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    monitor-exit p0

    return-object p1

    .line 14
    :cond_1
    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized redirectEntity(Ljava/lang/String;Ljava/net/URL;)V
    .locals 1

    monitor-enter p0

    if-eqz p2, :cond_0

    :try_start_0
    iget-object v0, p0, Lorg/mortbay/xml/XmlParser;->a:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void
.end method

.method public setValidating(Z)V
    .locals 2

    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljavax/xml/parsers/SAXParserFactory;->setValidating(Z)V

    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/xml/XmlParser;->b:Ljavax/xml/parsers/SAXParser;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz p1, :cond_1

    :try_start_1
    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v0

    const-string v1, "http://apache.org/xml/features/validation/schema"

    invoke-interface {v0, v1, p1}, Lorg/xml/sax/XMLReader;->setFeature(Ljava/lang/String;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    if-eqz p1, :cond_0

    :try_start_2
    const-string v1, "Schema validation may not be supported: "

    invoke-static {v1, v0}, Lorg/mortbay/log/Log;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lorg/mortbay/log/Log;->ignore(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/mortbay/xml/XmlParser;->b:Ljavax/xml/parsers/SAXParser;

    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v0

    const-string v1, "http://xml.org/sax/features/validation"

    invoke-interface {v0, v1, p1}, Lorg/xml/sax/XMLReader;->setFeature(Ljava/lang/String;Z)V

    iget-object p1, p0, Lorg/mortbay/xml/XmlParser;->b:Ljavax/xml/parsers/SAXParser;

    invoke-virtual {p1}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object p1

    const-string v0, "http://xml.org/sax/features/namespaces"

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Lorg/xml/sax/XMLReader;->setFeature(Ljava/lang/String;Z)V

    iget-object p0, p0, Lorg/mortbay/xml/XmlParser;->b:Ljavax/xml/parsers/SAXParser;

    invoke-virtual {p0}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object p0

    const-string p1, "http://xml.org/sax/features/namespace-prefixes"

    const/4 v0, 0x0

    invoke-interface {p0, p1, v0}, Lorg/xml/sax/XMLReader;->setFeature(Ljava/lang/String;Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    return-void

    :catch_1
    move-exception p0

    const-string p1, "EXCEPTION "

    invoke-static {p1, p0}, Lorg/mortbay/log/Log;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance p1, Ljava/lang/Error;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setXpath(Ljava/lang/String;)V
    .locals 2

    iput-object p1, p0, Lorg/mortbay/xml/XmlParser;->e:Ljava/lang/String;

    new-instance v0, Ljava/util/StringTokenizer;

    const-string v1, "| "

    invoke-direct {v0, p1, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/mortbay/xml/XmlParser;->f:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lorg/mortbay/util/LazyList;->add(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lorg/mortbay/xml/XmlParser;->f:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method
