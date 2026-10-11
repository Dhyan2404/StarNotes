.class public final Lcom/sun/org/apache/xalan/internal/xsltc/dom/DocumentCache;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sun/org/apache/xalan/internal/xsltc/DOMCache;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/org/apache/xalan/internal/xsltc/dom/DocumentCache$CachedDocument;
    }
.end annotation


# static fields
.field private static final REFRESH_INTERVAL:I = 0x3e8


# instance fields
.field private _URIs:[Ljava/lang/String;

.field private _count:I

.field private _current:I

.field private _dtmManager:Lcom/sun/org/apache/xalan/internal/xsltc/dom/XSLTCDTMManager;

.field private _parser:Ljavax/xml/parsers/SAXParser;

.field private _reader:Lorg/xml/sax/XMLReader;

.field private _references:Ljava/util/Hashtable;

.field private _size:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/DocumentCache;-><init>(ILcom/sun/org/apache/xalan/internal/xsltc/dom/XSLTCDTMManager;)V

    .line 2
    :try_start_0
    invoke-static {}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/XSLTCDTMManager;->getDTMManagerClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sun/org/apache/xalan/internal/xsltc/dom/XSLTCDTMManager;

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/DocumentCache;->_dtmManager:Lcom/sun/org/apache/xalan/internal/xsltc/dom/XSLTCDTMManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 3
    new-instance p1, Lorg/xml/sax/SAXException;

    invoke-direct {p1, p0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw p1
.end method

.method public constructor <init>(ILcom/sun/org/apache/xalan/internal/xsltc/dom/XSLTCDTMManager;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/DocumentCache;->_dtmManager:Lcom/sun/org/apache/xalan/internal/xsltc/dom/XSLTCDTMManager;

    const/4 p2, 0x0

    .line 6
    iput p2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/DocumentCache;->_count:I

    .line 7
    iput p2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/DocumentCache;->_current:I

    .line 8
    iput p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/DocumentCache;->_size:I

    .line 9
    new-instance p1, Ljava/util/Hashtable;

    iget p2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/DocumentCache;->_size:I

    add-int/lit8 p2, p2, 0x2

    invoke-direct {p1, p2}, Ljava/util/Hashtable;-><init>(I)V

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/DocumentCache;->_references:Ljava/util/Hashtable;

    .line 10
    iget p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/DocumentCache;->_size:I

    new-array p1, p1, [Ljava/lang/String;

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/DocumentCache;->_URIs:[Ljava/lang/String;

    .line 11
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object p1
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 p2, 0x1

    :try_start_1
    const-string v0, "http://xml.org/sax/features/namespaces"

    .line 12
    invoke-virtual {p1, v0, p2}, Ljavax/xml/parsers/SAXParserFactory;->setFeature(Ljava/lang/String;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 13
    :catch_0
    :try_start_2
    invoke-virtual {p1, p2}, Ljavax/xml/parsers/SAXParserFactory;->setNamespaceAware(Z)V

    .line 14
    :goto_0
    invoke-virtual {p1}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object p1

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/DocumentCache;->_parser:Ljavax/xml/parsers/SAXParser;

    .line 15
    invoke-virtual {p1}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object p1

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/DocumentCache;->_reader:Lorg/xml/sax/XMLReader;
    :try_end_2
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    const-string p0, "NAMESPACES_SUPPORT_ERR"

    .line 16
    invoke-static {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/BasisLibrary;->runTimeError(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public static synthetic access$000(Lcom/sun/org/apache/xalan/internal/xsltc/dom/DocumentCache;)Lorg/xml/sax/XMLReader;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/DocumentCache;->_reader:Lorg/xml/sax/XMLReader;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/sun/org/apache/xalan/internal/xsltc/dom/DocumentCache;)Lcom/sun/org/apache/xalan/internal/xsltc/dom/XSLTCDTMManager;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/DocumentCache;->_dtmManager:Lcom/sun/org/apache/xalan/internal/xsltc/dom/XSLTCDTMManager;

    return-object p0
.end method

.method private final getLastModified(Ljava/lang/String;)J
    .locals 4

    :try_start_0
    new-instance p0, Ljava/net/URL;

    invoke-direct {p0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    invoke-virtual {p1}, Ljava/net/URLConnection;->getLastModified()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    const-string p1, "file"

    invoke-virtual {p0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Ljava/io/File;

    invoke-virtual {p0}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-wide v0

    :catch_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    return-wide p0
.end method

.method private declared-synchronized insertDocument(Ljava/lang/String;Lcom/sun/org/apache/xalan/internal/xsltc/dom/DocumentCache$CachedDocument;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/DocumentCache;->_count:I

    iget v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/DocumentCache;->_size:I

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/DocumentCache;->_URIs:[Ljava/lang/String;

    add-int/lit8 v3, v0, 0x1

    iput v3, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/DocumentCache;->_count:I

    aput-object p1, v1, v0

    iput v2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/DocumentCache;->_current:I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/DocumentCache;->_references:Ljava/util/Hashtable;

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/DocumentCache;->_URIs:[Ljava/lang/String;

    iget v3, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/DocumentCache;->_current:I

    aget-object v1, v1, v3

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/DocumentCache;->_URIs:[Ljava/lang/String;

    iget v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/DocumentCache;->_current:I

    aput-object p1, v0, v1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/DocumentCache;->_current:I

    iget v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/DocumentCache;->_size:I

    if-lt v1, v0, :cond_1

    iput v2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/DocumentCache;->_current:I

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/DocumentCache;->_references:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private lookupDocument(Ljava/lang/String;)Lcom/sun/org/apache/xalan/internal/xsltc/dom/DocumentCache$CachedDocument;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/DocumentCache;->_references:Ljava/util/Hashtable;

    invoke-virtual {p0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/DocumentCache$CachedDocument;

    return-object p0
.end method

.method private declared-synchronized replaceDocument(Ljava/lang/String;Lcom/sun/org/apache/xalan/internal/xsltc/dom/DocumentCache$CachedDocument;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/DocumentCache;->_references:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/DocumentCache$CachedDocument;

    if-nez p2, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/DocumentCache;->insertDocument(Ljava/lang/String;Lcom/sun/org/apache/xalan/internal/xsltc/dom/DocumentCache$CachedDocument;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/DocumentCache;->_references:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public getStatistics(Ljava/io/PrintWriter;)V
    .locals 8

    const-string v0, "<h2>DOM cache statistics</h2><center><table border=\"2\"><tr><td><b>Document URI</b></td><td><center><b>Build time</b></center></td><td><center><b>Access count</b></center></td><td><center><b>Last accessed</b></center></td><td><center><b>Last modified</b></center></td></tr>"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/DocumentCache;->_count:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/DocumentCache;->_references:Ljava/util/Hashtable;

    iget-object v2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/DocumentCache;->_URIs:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/org/apache/xalan/internal/xsltc/dom/DocumentCache$CachedDocument;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<tr><td><a href=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/DocumentCache;->_URIs:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\">"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "<font size=-1>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/DocumentCache;->_URIs:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "</font></a></td>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<td><center>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/DocumentCache$CachedDocument;->getLatency()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, "ms</center></td>"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/DocumentCache$CachedDocument;->getAccessCount()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, "</center></td>"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v5, Ljava/util/Date;

    invoke-virtual {v1}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/DocumentCache$CachedDocument;->getLastReferenced()J

    move-result-wide v6

    invoke-direct {v5, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/util/Date;

    invoke-virtual {v1}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/DocumentCache$CachedDocument;->getLastModified()J

    move-result-wide v5

    invoke-direct {v3, v5, v6}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "</tr>"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_0
    const-string p0, "</table></center>"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public retrieveDocument(Ljava/lang/String;Ljava/lang/String;Lcom/sun/org/apache/xalan/internal/xsltc/Translet;)Lcom/sun/org/apache/xalan/internal/xsltc/DOM;
    .locals 6

    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    invoke-static {p2, p1}, Lcom/sun/org/apache/xml/internal/utils/SystemIDResolver;->getAbsoluteURI(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    invoke-direct {p0, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/DocumentCache;->lookupDocument(Ljava/lang/String;)Lcom/sun/org/apache/xalan/internal/xsltc/dom/DocumentCache$CachedDocument;

    move-result-object p1

    if-nez p1, :cond_1

    new-instance p1, Lcom/sun/org/apache/xalan/internal/xsltc/dom/DocumentCache$CachedDocument;

    invoke-direct {p1, p0, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/DocumentCache$CachedDocument;-><init>(Lcom/sun/org/apache/xalan/internal/xsltc/dom/DocumentCache;Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/DocumentCache;->getLastModified(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/DocumentCache$CachedDocument;->setLastModified(J)V

    invoke-direct {p0, p2, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/DocumentCache;->insertDocument(Ljava/lang/String;Lcom/sun/org/apache/xalan/internal/xsltc/dom/DocumentCache$CachedDocument;)V

    goto :goto_0

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/DocumentCache$CachedDocument;->getLastChecked()J

    move-result-wide v2

    invoke-virtual {p1, v0, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/DocumentCache$CachedDocument;->setLastChecked(J)V

    const-wide/16 v4, 0x3e8

    add-long/2addr v2, v4

    cmp-long v2, v0, v2

    if-lez v2, :cond_2

    invoke-virtual {p1, v0, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/DocumentCache$CachedDocument;->setLastChecked(J)V

    invoke-direct {p0, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/DocumentCache;->getLastModified(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/DocumentCache$CachedDocument;->getLastModified()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    new-instance p1, Lcom/sun/org/apache/xalan/internal/xsltc/dom/DocumentCache$CachedDocument;

    invoke-direct {p1, p0, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/DocumentCache$CachedDocument;-><init>(Lcom/sun/org/apache/xalan/internal/xsltc/dom/DocumentCache;Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/DocumentCache;->getLastModified(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/DocumentCache$CachedDocument;->setLastModified(J)V

    invoke-direct {p0, p2, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/DocumentCache;->replaceDocument(Ljava/lang/String;Lcom/sun/org/apache/xalan/internal/xsltc/dom/DocumentCache$CachedDocument;)V

    :cond_2
    :goto_0
    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/DocumentCache$CachedDocument;->getDocument()Lcom/sun/org/apache/xalan/internal/xsltc/DOM;

    move-result-object p0

    if-nez p0, :cond_3

    const/4 p0, 0x0

    return-object p0

    :cond_3
    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/DocumentCache$CachedDocument;->incAccessCount()V

    check-cast p3, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AbstractTranslet;

    invoke-virtual {p3, p0}, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AbstractTranslet;->prepassDocument(Lcom/sun/org/apache/xalan/internal/xsltc/DOM;)V

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/DocumentCache$CachedDocument;->getDocument()Lcom/sun/org/apache/xalan/internal/xsltc/DOM;

    move-result-object p0

    return-object p0
.end method
