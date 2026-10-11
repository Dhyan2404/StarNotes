.class public final Lorg/apache/xmlbeans/impl/common/SAXHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final IGNORING_ENTITY_RESOLVER:Lorg/xml/sax/EntityResolver;

.field private static final LOG:Lorg/apache/logging/log4j/Logger;

.field private static lastLog:J


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/apache/xmlbeans/impl/common/SAXHelper;

    invoke-static {v0}, Lorg/apache/logging/log4j/LogManager;->getLogger(Ljava/lang/Class;)Lorg/apache/logging/log4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/xmlbeans/impl/common/SAXHelper;->LOG:Lorg/apache/logging/log4j/Logger;

    new-instance v0, Lcom/sunia/HTREnginev2/eyl;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/eyl;-><init>()V

    sput-object v0, Lorg/apache/xmlbeans/impl/common/SAXHelper;->IGNORING_ENTITY_RESOLVER:Lorg/xml/sax/EntityResolver;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Ljava/lang/String;Ljava/lang/String;)Lorg/xml/sax/InputSource;
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/xmlbeans/impl/common/SAXHelper;->lambda$static$0(Ljava/lang/String;Ljava/lang/String;)Lorg/xml/sax/InputSource;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$static$0(Ljava/lang/String;Ljava/lang/String;)Lorg/xml/sax/InputSource;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    new-instance p0, Lorg/xml/sax/InputSource;

    new-instance p1, Ljava/io/StringReader;

    const-string v0, ""

    invoke-direct {p1, v0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    return-object p0
.end method

.method public static newXMLReader(Lorg/apache/xmlbeans/XmlOptions;)Lorg/xml/sax/XMLReader;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljavax/xml/parsers/ParserConfigurationException;
        }
    .end annotation

    invoke-static {p0}, Lorg/apache/xmlbeans/impl/common/SAXHelper;->saxFactory(Lorg/apache/xmlbeans/XmlOptions;)Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v0

    sget-object v1, Lorg/apache/xmlbeans/impl/common/SAXHelper;->IGNORING_ENTITY_RESOLVER:Lorg/xml/sax/EntityResolver;

    invoke-interface {v0, v1}, Lorg/xml/sax/XMLReader;->setEntityResolver(Lorg/xml/sax/EntityResolver;)V

    const-string v1, "http://javax.xml.XMLConstants/feature/secure-processing"

    invoke-static {v0, v1}, Lorg/apache/xmlbeans/impl/common/SAXHelper;->trySetSAXFeature(Lorg/xml/sax/XMLReader;Ljava/lang/String;)V

    invoke-static {v0, p0}, Lorg/apache/xmlbeans/impl/common/SAXHelper;->trySetXercesSecurityManager(Lorg/xml/sax/XMLReader;Lorg/apache/xmlbeans/XmlOptions;)V

    return-object v0
.end method

.method public static saxFactory()Ljavax/xml/parsers/SAXParserFactory;
    .locals 1

    .line 1
    new-instance v0, Lorg/apache/xmlbeans/XmlOptions;

    invoke-direct {v0}, Lorg/apache/xmlbeans/XmlOptions;-><init>()V

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/common/SAXHelper;->saxFactory(Lorg/apache/xmlbeans/XmlOptions;)Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v0

    return-object v0
.end method

.method public static saxFactory(Lorg/apache/xmlbeans/XmlOptions;)Ljavax/xml/parsers/SAXParserFactory;
    .locals 3

    .line 2
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v0

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, v1}, Ljavax/xml/parsers/SAXParserFactory;->setValidating(Z)V

    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Ljavax/xml/parsers/SAXParserFactory;->setNamespaceAware(Z)V

    const-string v2, "http://javax.xml.XMLConstants/feature/secure-processing"

    .line 5
    invoke-static {v0, v2, v1}, Lorg/apache/xmlbeans/impl/common/SAXHelper;->trySetSAXFeature(Ljavax/xml/parsers/SAXParserFactory;Ljava/lang/String;Z)V

    .line 6
    invoke-virtual {p0}, Lorg/apache/xmlbeans/XmlOptions;->isLoadDTDGrammar()Z

    move-result v1

    const-string v2, "http://apache.org/xml/features/nonvalidating/load-dtd-grammar"

    invoke-static {v0, v2, v1}, Lorg/apache/xmlbeans/impl/common/SAXHelper;->trySetSAXFeature(Ljavax/xml/parsers/SAXParserFactory;Ljava/lang/String;Z)V

    const-string v1, "http://apache.org/xml/features/nonvalidating/load-external-dtd"

    .line 7
    invoke-virtual {p0}, Lorg/apache/xmlbeans/XmlOptions;->isLoadExternalDTD()Z

    move-result v2

    invoke-static {v0, v1, v2}, Lorg/apache/xmlbeans/impl/common/SAXHelper;->trySetSAXFeature(Ljavax/xml/parsers/SAXParserFactory;Ljava/lang/String;Z)V

    const-string v1, "http://apache.org/xml/features/disallow-doctype-decl"

    .line 8
    invoke-virtual {p0}, Lorg/apache/xmlbeans/XmlOptions;->disallowDocTypeDeclaration()Z

    move-result p0

    invoke-static {v0, v1, p0}, Lorg/apache/xmlbeans/impl/common/SAXHelper;->trySetSAXFeature(Ljavax/xml/parsers/SAXParserFactory;Ljava/lang/String;Z)V

    return-object v0
.end method

.method private static trySetSAXFeature(Ljavax/xml/parsers/SAXParserFactory;Ljava/lang/String;Z)V
    .locals 0

    .line 1
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljavax/xml/parsers/SAXParserFactory;->setFeature(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 2
    sget-object p2, Lorg/apache/xmlbeans/impl/common/SAXHelper;->LOG:Lorg/apache/logging/log4j/Logger;

    invoke-interface {p2}, Lorg/apache/logging/log4j/Logger;->atWarn()Lorg/apache/logging/log4j/LogBuilder;

    move-result-object p2

    invoke-interface {p2, p0}, Lorg/apache/logging/log4j/LogBuilder;->withThrowable(Ljava/lang/Throwable;)Lorg/apache/logging/log4j/LogBuilder;

    move-result-object p0

    const-string p2, "Cannot set SAX feature {} because outdated XML parser in classpath"

    invoke-interface {p0, p2, p1}, Lorg/apache/logging/log4j/LogBuilder;->log(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :catch_1
    move-exception p0

    .line 3
    sget-object p2, Lorg/apache/xmlbeans/impl/common/SAXHelper;->LOG:Lorg/apache/logging/log4j/Logger;

    invoke-interface {p2}, Lorg/apache/logging/log4j/Logger;->atWarn()Lorg/apache/logging/log4j/LogBuilder;

    move-result-object p2

    invoke-interface {p2, p0}, Lorg/apache/logging/log4j/LogBuilder;->withThrowable(Ljava/lang/Throwable;)Lorg/apache/logging/log4j/LogBuilder;

    move-result-object p0

    const-string p2, "SAX Feature unsupported: {}"

    invoke-interface {p0, p2, p1}, Lorg/apache/logging/log4j/LogBuilder;->log(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private static trySetSAXFeature(Lorg/xml/sax/XMLReader;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    .line 4
    :try_start_0
    invoke-interface {p0, p1, v0}, Lorg/xml/sax/XMLReader;->setFeature(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 5
    sget-object v0, Lorg/apache/xmlbeans/impl/common/SAXHelper;->LOG:Lorg/apache/logging/log4j/Logger;

    invoke-interface {v0}, Lorg/apache/logging/log4j/Logger;->atWarn()Lorg/apache/logging/log4j/LogBuilder;

    move-result-object v0

    invoke-interface {v0, p0}, Lorg/apache/logging/log4j/LogBuilder;->withThrowable(Ljava/lang/Throwable;)Lorg/apache/logging/log4j/LogBuilder;

    move-result-object p0

    const-string v0, "Cannot set SAX feature {} because outdated XML parser in classpath"

    invoke-interface {p0, v0, p1}, Lorg/apache/logging/log4j/LogBuilder;->log(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :catch_1
    move-exception p0

    .line 6
    sget-object v0, Lorg/apache/xmlbeans/impl/common/SAXHelper;->LOG:Lorg/apache/logging/log4j/Logger;

    invoke-interface {v0}, Lorg/apache/logging/log4j/Logger;->atWarn()Lorg/apache/logging/log4j/LogBuilder;

    move-result-object v0

    invoke-interface {v0, p0}, Lorg/apache/logging/log4j/LogBuilder;->withThrowable(Ljava/lang/Throwable;)Lorg/apache/logging/log4j/LogBuilder;

    move-result-object p0

    const-string v0, "SAX Feature unsupported: {}"

    invoke-interface {p0, v0, p1}, Lorg/apache/logging/log4j/LogBuilder;->log(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private static trySetXercesSecurityManager(Lorg/xml/sax/XMLReader;Lorg/apache/xmlbeans/XmlOptions;)V
    .locals 11

    const-string v0, "SAX Security Manager could not be setup [log suppressed for 5 minutes]"

    const-string v1, "org.apache.xerces.util.SecurityManager"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    const-wide/16 v3, 0x5

    :try_start_0
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    new-array v5, v2, [Ljava/lang/Class;

    invoke-virtual {v1, v5}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v5

    new-array v6, v2, [Ljava/lang/Object;

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    const-string v6, "setEntityExpansionLimit"

    const/4 v7, 0x1

    new-array v8, v7, [Ljava/lang/Class;

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v8, v2

    invoke-virtual {v1, v6, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v6, v7, [Ljava/lang/Object;

    invoke-virtual {p1}, Lorg/apache/xmlbeans/XmlOptions;->getEntityExpansionLimit()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-virtual {v1, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "http://apache.org/xml/properties/security-manager"

    invoke-interface {p0, v1, v5}, Lorg/xml/sax/XMLReader;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sget-wide v7, Lorg/apache/xmlbeans/impl/common/SAXHelper;->lastLog:J

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v9

    add-long/2addr v7, v9

    cmp-long v2, v5, v7

    if-lez v2, :cond_0

    sget-object v2, Lorg/apache/xmlbeans/impl/common/SAXHelper;->LOG:Lorg/apache/logging/log4j/Logger;

    invoke-interface {v2}, Lorg/apache/logging/log4j/Logger;->atWarn()Lorg/apache/logging/log4j/LogBuilder;

    move-result-object v2

    invoke-interface {v2, v1}, Lorg/apache/logging/log4j/LogBuilder;->withThrowable(Ljava/lang/Throwable;)Lorg/apache/logging/log4j/LogBuilder;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/apache/logging/log4j/LogBuilder;->log(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sput-wide v1, Lorg/apache/xmlbeans/impl/common/SAXHelper;->lastLog:J

    :catchall_1
    :cond_0
    :try_start_2
    const-string v1, "http://www.oracle.com/xml/jaxp/properties/entityExpansionLimit"

    invoke-virtual {p1}, Lorg/apache/xmlbeans/XmlOptions;->getEntityExpansionLimit()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, v1, p1}, Lorg/xml/sax/XMLReader;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catch Lorg/xml/sax/SAXException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sget-wide v5, Lorg/apache/xmlbeans/impl/common/SAXHelper;->lastLog:J

    sget-object p1, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    add-long/2addr v5, v3

    cmp-long p1, v1, v5

    if-lez p1, :cond_1

    sget-object p1, Lorg/apache/xmlbeans/impl/common/SAXHelper;->LOG:Lorg/apache/logging/log4j/Logger;

    invoke-interface {p1}, Lorg/apache/logging/log4j/Logger;->atWarn()Lorg/apache/logging/log4j/LogBuilder;

    move-result-object p1

    invoke-interface {p1, p0}, Lorg/apache/logging/log4j/LogBuilder;->withThrowable(Ljava/lang/Throwable;)Lorg/apache/logging/log4j/LogBuilder;

    move-result-object p0

    invoke-interface {p0, v0}, Lorg/apache/logging/log4j/LogBuilder;->log(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    sput-wide p0, Lorg/apache/xmlbeans/impl/common/SAXHelper;->lastLog:J

    :cond_1
    :goto_0
    return-void
.end method
