.class public final Lorg/apache/xmlbeans/impl/common/StaxHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final LOG:Lorg/apache/logging/log4j/Logger;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/apache/xmlbeans/impl/common/StaxHelper;

    invoke-static {v0}, Lorg/apache/logging/log4j/LogManager;->getLogger(Ljava/lang/Class;)Lorg/apache/logging/log4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/xmlbeans/impl/common/StaxHelper;->LOG:Lorg/apache/logging/log4j/Logger;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static newXMLEventFactory(Lorg/apache/xmlbeans/XmlOptions;)Ljavax/xml/stream/XMLEventFactory;
    .locals 0

    invoke-static {}, Ljavax/xml/stream/XMLEventFactory;->newFactory()Ljavax/xml/stream/XMLEventFactory;

    move-result-object p0

    return-object p0
.end method

.method public static newXMLInputFactory(Lorg/apache/xmlbeans/XmlOptions;)Ljavax/xml/stream/XMLInputFactory;
    .locals 3

    invoke-static {}, Ljavax/xml/stream/XMLInputFactory;->newFactory()Ljavax/xml/stream/XMLInputFactory;

    move-result-object v0

    const-string v1, "javax.xml.stream.isNamespaceAware"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lorg/apache/xmlbeans/impl/common/StaxHelper;->trySetProperty(Ljavax/xml/stream/XMLInputFactory;Ljava/lang/String;Z)V

    const-string v1, "javax.xml.stream.isValidating"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lorg/apache/xmlbeans/impl/common/StaxHelper;->trySetProperty(Ljavax/xml/stream/XMLInputFactory;Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/XmlOptions;->isLoadDTDGrammar()Z

    move-result v1

    const-string v2, "javax.xml.stream.supportDTD"

    invoke-static {v0, v2, v1}, Lorg/apache/xmlbeans/impl/common/StaxHelper;->trySetProperty(Ljavax/xml/stream/XMLInputFactory;Ljava/lang/String;Z)V

    const-string v1, "javax.xml.stream.isSupportingExternalEntities"

    invoke-virtual {p0}, Lorg/apache/xmlbeans/XmlOptions;->isLoadExternalDTD()Z

    move-result p0

    invoke-static {v0, v1, p0}, Lorg/apache/xmlbeans/impl/common/StaxHelper;->trySetProperty(Ljavax/xml/stream/XMLInputFactory;Ljava/lang/String;Z)V

    return-object v0
.end method

.method public static newXMLOutputFactory(Lorg/apache/xmlbeans/XmlOptions;)Ljavax/xml/stream/XMLOutputFactory;
    .locals 2

    invoke-static {}, Ljavax/xml/stream/XMLOutputFactory;->newFactory()Ljavax/xml/stream/XMLOutputFactory;

    move-result-object p0

    const-string v0, "javax.xml.stream.isRepairingNamespaces"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lorg/apache/xmlbeans/impl/common/StaxHelper;->trySetProperty(Ljavax/xml/stream/XMLOutputFactory;Ljava/lang/String;Z)V

    return-object p0
.end method

.method private static trySetProperty(Ljavax/xml/stream/XMLInputFactory;Ljava/lang/String;Z)V
    .locals 0

    .line 1
    :try_start_0
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Ljavax/xml/stream/XMLInputFactory;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 2
    sget-object p2, Lorg/apache/xmlbeans/impl/common/StaxHelper;->LOG:Lorg/apache/logging/log4j/Logger;

    invoke-interface {p2}, Lorg/apache/logging/log4j/Logger;->atWarn()Lorg/apache/logging/log4j/LogBuilder;

    move-result-object p2

    invoke-interface {p2, p0}, Lorg/apache/logging/log4j/LogBuilder;->withThrowable(Ljava/lang/Throwable;)Lorg/apache/logging/log4j/LogBuilder;

    move-result-object p0

    const-string p2, "Cannot set StAX property {} because outdated StAX parser in classpath"

    invoke-interface {p0, p2, p1}, Lorg/apache/logging/log4j/LogBuilder;->log(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :catch_1
    move-exception p0

    .line 3
    sget-object p2, Lorg/apache/xmlbeans/impl/common/StaxHelper;->LOG:Lorg/apache/logging/log4j/Logger;

    invoke-interface {p2}, Lorg/apache/logging/log4j/Logger;->atWarn()Lorg/apache/logging/log4j/LogBuilder;

    move-result-object p2

    invoke-interface {p2, p0}, Lorg/apache/logging/log4j/LogBuilder;->withThrowable(Ljava/lang/Throwable;)Lorg/apache/logging/log4j/LogBuilder;

    move-result-object p0

    const-string p2, "StAX Property unsupported: {}"

    invoke-interface {p0, p2, p1}, Lorg/apache/logging/log4j/LogBuilder;->log(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private static trySetProperty(Ljavax/xml/stream/XMLOutputFactory;Ljava/lang/String;Z)V
    .locals 0

    .line 4
    :try_start_0
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Ljavax/xml/stream/XMLOutputFactory;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 5
    sget-object p2, Lorg/apache/xmlbeans/impl/common/StaxHelper;->LOG:Lorg/apache/logging/log4j/Logger;

    invoke-interface {p2}, Lorg/apache/logging/log4j/Logger;->atWarn()Lorg/apache/logging/log4j/LogBuilder;

    move-result-object p2

    invoke-interface {p2, p0}, Lorg/apache/logging/log4j/LogBuilder;->withThrowable(Ljava/lang/Throwable;)Lorg/apache/logging/log4j/LogBuilder;

    move-result-object p0

    const-string p2, "Cannot set StAX property {} because outdated StAX parser in classpath"

    invoke-interface {p0, p2, p1}, Lorg/apache/logging/log4j/LogBuilder;->log(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :catch_1
    move-exception p0

    .line 6
    sget-object p2, Lorg/apache/xmlbeans/impl/common/StaxHelper;->LOG:Lorg/apache/logging/log4j/Logger;

    invoke-interface {p2}, Lorg/apache/logging/log4j/Logger;->atWarn()Lorg/apache/logging/log4j/LogBuilder;

    move-result-object p2

    invoke-interface {p2, p0}, Lorg/apache/logging/log4j/LogBuilder;->withThrowable(Ljava/lang/Throwable;)Lorg/apache/logging/log4j/LogBuilder;

    move-result-object p0

    const-string p2, "StAX Property unsupported: {}"

    invoke-interface {p0, p2, p1}, Lorg/apache/logging/log4j/LogBuilder;->log(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
