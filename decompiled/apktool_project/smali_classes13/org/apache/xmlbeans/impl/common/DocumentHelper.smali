.class public final Lorg/apache/xmlbeans/impl/common/DocumentHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xmlbeans/impl/common/DocumentHelper$DocHelperErrorHandler;
    }
.end annotation


# static fields
.field private static final LOG:Lorg/apache/logging/log4j/Logger;

.field private static final documentBuilderSingleton:Ljavax/xml/parsers/DocumentBuilder;

.field private static lastLog:J


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/apache/xmlbeans/impl/common/DocumentHelper;

    invoke-static {v0}, Lorg/apache/logging/log4j/LogManager;->getLogger(Ljava/lang/Class;)Lorg/apache/logging/log4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/xmlbeans/impl/common/DocumentHelper;->LOG:Lorg/apache/logging/log4j/Logger;

    new-instance v0, Lorg/apache/xmlbeans/XmlOptions;

    invoke-direct {v0}, Lorg/apache/xmlbeans/XmlOptions;-><init>()V

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/common/DocumentHelper;->newDocumentBuilder(Lorg/apache/xmlbeans/XmlOptions;)Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    sput-object v0, Lorg/apache/xmlbeans/impl/common/DocumentHelper;->documentBuilderSingleton:Ljavax/xml/parsers/DocumentBuilder;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$000()Lorg/apache/logging/log4j/Logger;
    .locals 1

    sget-object v0, Lorg/apache/xmlbeans/impl/common/DocumentHelper;->LOG:Lorg/apache/logging/log4j/Logger;

    return-object v0
.end method

.method public static createDocument()Lorg/w3c/dom/Document;
    .locals 1

    sget-object v0, Lorg/apache/xmlbeans/impl/common/DocumentHelper;->documentBuilderSingleton:Ljavax/xml/parsers/DocumentBuilder;

    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilder;->newDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    return-object v0
.end method

.method private static documentBuilderFactory(Lorg/apache/xmlbeans/XmlOptions;)Ljavax/xml/parsers/DocumentBuilderFactory;
    .locals 3

    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->setNamespaceAware(Z)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljavax/xml/parsers/DocumentBuilderFactory;->setValidating(Z)V

    const-string v2, "http://javax.xml.XMLConstants/feature/secure-processing"

    invoke-static {v0, v2, v1}, Lorg/apache/xmlbeans/impl/common/DocumentHelper;->trySetFeature(Ljavax/xml/parsers/DocumentBuilderFactory;Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/XmlOptions;->isLoadDTDGrammar()Z

    move-result v1

    const-string v2, "http://apache.org/xml/features/nonvalidating/load-dtd-grammar"

    invoke-static {v0, v2, v1}, Lorg/apache/xmlbeans/impl/common/DocumentHelper;->trySetFeature(Ljavax/xml/parsers/DocumentBuilderFactory;Ljava/lang/String;Z)V

    const-string v1, "http://apache.org/xml/features/nonvalidating/load-external-dtd"

    invoke-virtual {p0}, Lorg/apache/xmlbeans/XmlOptions;->isLoadExternalDTD()Z

    move-result v2

    invoke-static {v0, v1, v2}, Lorg/apache/xmlbeans/impl/common/DocumentHelper;->trySetFeature(Ljavax/xml/parsers/DocumentBuilderFactory;Ljava/lang/String;Z)V

    const-string v1, "http://apache.org/xml/features/disallow-doctype-decl"

    invoke-virtual {p0}, Lorg/apache/xmlbeans/XmlOptions;->disallowDocTypeDeclaration()Z

    move-result v2

    invoke-static {v0, v1, v2}, Lorg/apache/xmlbeans/impl/common/DocumentHelper;->trySetFeature(Ljavax/xml/parsers/DocumentBuilderFactory;Ljava/lang/String;Z)V

    invoke-static {v0, p0}, Lorg/apache/xmlbeans/impl/common/DocumentHelper;->trySetXercesSecurityManager(Ljavax/xml/parsers/DocumentBuilderFactory;Lorg/apache/xmlbeans/XmlOptions;)V

    return-object v0
.end method

.method public static newDocumentBuilder(Lorg/apache/xmlbeans/XmlOptions;)Ljavax/xml/parsers/DocumentBuilder;
    .locals 2

    :try_start_0
    invoke-static {p0}, Lorg/apache/xmlbeans/impl/common/DocumentHelper;->documentBuilderFactory(Lorg/apache/xmlbeans/XmlOptions;)Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object p0

    invoke-virtual {p0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object p0

    sget-object v0, Lorg/apache/xmlbeans/impl/common/SAXHelper;->IGNORING_ENTITY_RESOLVER:Lorg/xml/sax/EntityResolver;

    invoke-virtual {p0, v0}, Ljavax/xml/parsers/DocumentBuilder;->setEntityResolver(Lorg/xml/sax/EntityResolver;)V

    new-instance v0, Lorg/apache/xmlbeans/impl/common/DocumentHelper$DocHelperErrorHandler;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/xmlbeans/impl/common/DocumentHelper$DocHelperErrorHandler;-><init>(Lorg/apache/xmlbeans/impl/common/DocumentHelper$1;)V

    invoke-virtual {p0, v0}, Ljavax/xml/parsers/DocumentBuilder;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "cannot create a DocumentBuilder"

    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static readDocument(Lorg/apache/xmlbeans/XmlOptions;Ljava/io/InputStream;)Lorg/w3c/dom/Document;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lorg/apache/xmlbeans/impl/common/DocumentHelper;->newDocumentBuilder(Lorg/apache/xmlbeans/XmlOptions;)Ljavax/xml/parsers/DocumentBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object p0

    return-object p0
.end method

.method public static readDocument(Lorg/apache/xmlbeans/XmlOptions;Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 2
    invoke-static {p0}, Lorg/apache/xmlbeans/impl/common/DocumentHelper;->newDocumentBuilder(Lorg/apache/xmlbeans/XmlOptions;)Ljavax/xml/parsers/DocumentBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljavax/xml/parsers/DocumentBuilder;->parse(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;

    move-result-object p0

    return-object p0
.end method

.method private static trySetFeature(Ljavax/xml/parsers/DocumentBuilderFactory;Ljava/lang/String;Z)V
    .locals 0

    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljavax/xml/parsers/DocumentBuilderFactory;->setFeature(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p2, Lorg/apache/xmlbeans/impl/common/DocumentHelper;->LOG:Lorg/apache/logging/log4j/Logger;

    invoke-interface {p2}, Lorg/apache/logging/log4j/Logger;->atWarn()Lorg/apache/logging/log4j/LogBuilder;

    move-result-object p2

    invoke-interface {p2, p0}, Lorg/apache/logging/log4j/LogBuilder;->withThrowable(Ljava/lang/Throwable;)Lorg/apache/logging/log4j/LogBuilder;

    move-result-object p0

    const-string p2, "Cannot set SAX feature {} because of outdated XML parser in classpath"

    invoke-interface {p0, p2, p1}, Lorg/apache/logging/log4j/LogBuilder;->log(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :catch_1
    move-exception p0

    sget-object p2, Lorg/apache/xmlbeans/impl/common/DocumentHelper;->LOG:Lorg/apache/logging/log4j/Logger;

    invoke-interface {p2}, Lorg/apache/logging/log4j/Logger;->atWarn()Lorg/apache/logging/log4j/LogBuilder;

    move-result-object p2

    invoke-interface {p2, p0}, Lorg/apache/logging/log4j/LogBuilder;->withThrowable(Ljava/lang/Throwable;)Lorg/apache/logging/log4j/LogBuilder;

    move-result-object p0

    const-string p2, "SAX Feature unsupported: {}"

    invoke-interface {p0, p2, p1}, Lorg/apache/logging/log4j/LogBuilder;->log(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private static trySetXercesSecurityManager(Ljavax/xml/parsers/DocumentBuilderFactory;Lorg/apache/xmlbeans/XmlOptions;)V
    .locals 10

    const-string v0, "org.apache.xerces.util.SecurityManager"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const-wide/16 v2, 0x5

    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    new-array v4, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v4, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "setEntityExpansionLimit"

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/Class;

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v1

    invoke-virtual {v4, v5, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    new-array v5, v6, [Ljava/lang/Object;

    invoke-virtual {p1}, Lorg/apache/xmlbeans/XmlOptions;->getEntityExpansionLimit()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-virtual {v4, v0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "http://apache.org/xml/properties/security-manager"

    invoke-virtual {p0, v1, v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sget-wide v6, Lorg/apache/xmlbeans/impl/common/DocumentHelper;->lastLog:J

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v8

    add-long/2addr v6, v8

    cmp-long v1, v4, v6

    if-lez v1, :cond_0

    sget-object v1, Lorg/apache/xmlbeans/impl/common/DocumentHelper;->LOG:Lorg/apache/logging/log4j/Logger;

    invoke-interface {v1}, Lorg/apache/logging/log4j/Logger;->atWarn()Lorg/apache/logging/log4j/LogBuilder;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/apache/logging/log4j/LogBuilder;->withThrowable(Ljava/lang/Throwable;)Lorg/apache/logging/log4j/LogBuilder;

    move-result-object v0

    const-string v1, "DocumentBuilderFactory Security Manager could not be setup [log suppressed for 5 minutes]"

    invoke-interface {v0, v1}, Lorg/apache/logging/log4j/LogBuilder;->log(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lorg/apache/xmlbeans/impl/common/DocumentHelper;->lastLog:J

    :catch_0
    :cond_0
    :try_start_1
    const-string v0, "http://www.oracle.com/xml/jaxp/properties/entityExpansionLimit"

    invoke-virtual {p1}, Lorg/apache/xmlbeans/XmlOptions;->getEntityExpansionLimit()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Ljavax/xml/parsers/DocumentBuilderFactory;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v4, Lorg/apache/xmlbeans/impl/common/DocumentHelper;->lastLog:J

    sget-object p1, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    add-long/2addr v4, v2

    cmp-long p1, v0, v4

    if-lez p1, :cond_1

    sget-object p1, Lorg/apache/xmlbeans/impl/common/DocumentHelper;->LOG:Lorg/apache/logging/log4j/Logger;

    invoke-interface {p1}, Lorg/apache/logging/log4j/Logger;->atWarn()Lorg/apache/logging/log4j/LogBuilder;

    move-result-object p1

    invoke-interface {p1, p0}, Lorg/apache/logging/log4j/LogBuilder;->withThrowable(Ljava/lang/Throwable;)Lorg/apache/logging/log4j/LogBuilder;

    move-result-object p0

    const-string p1, "DocumentBuilderFactory Entity Expansion Limit could not be setup [log suppressed for 5 minutes]"

    invoke-interface {p0, p1}, Lorg/apache/logging/log4j/LogBuilder;->log(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    sput-wide p0, Lorg/apache/xmlbeans/impl/common/DocumentHelper;->lastLog:J

    :cond_1
    :goto_0
    return-void
.end method
