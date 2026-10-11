.class public final Lcom/sun/org/apache/xml/internal/serializer/SerializerFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static m_formats:Ljava/util/Hashtable;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/sun/org/apache/xml/internal/serializer/SerializerFactory;->m_formats:Ljava/util/Hashtable;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSerializer(Ljava/util/Properties;)Lcom/sun/org/apache/xml/internal/serializer/Serializer;
    .locals 6

    const-string v0, "method"

    const-string v1, "{http://xml.apache.org/xalan}content-handler"

    :try_start_0
    invoke-virtual {p0, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x0

    const-string v4, "ER_FACTORY_PROPERTY_MISSING"

    const/4 v5, 0x1

    if-eqz v2, :cond_4

    :try_start_1
    invoke-virtual {p0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {v2}, Lcom/sun/org/apache/xml/internal/serializer/OutputPropertiesFactory;->getDefaultMethodProperties(Ljava/lang/String;)Ljava/util/Properties;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/sun/org/apache/xml/internal/serializer/utils/Utils;->messages:Lcom/sun/org/apache/xml/internal/serializer/utils/Messages;

    new-array v0, v5, [Ljava/lang/Object;

    aput-object v1, v0, v3

    invoke-virtual {p0, v4, v0}, Lcom/sun/org/apache/xml/internal/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    invoke-static {}, Lcom/sun/org/apache/xml/internal/serializer/ObjectFactory;->findClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-static {v0, v1, v5}, Lcom/sun/org/apache/xml/internal/serializer/ObjectFactory;->findProviderClass(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;

    if-eqz v4, :cond_2

    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/xml/internal/serializer/Serializer;

    invoke-interface {v0, p0}, Lcom/sun/org/apache/xml/internal/serializer/Serializer;->setOutputFormat(Ljava/util/Properties;)V

    goto :goto_1

    :cond_2
    instance-of v2, v3, Lorg/xml/sax/ContentHandler;

    if-eqz v2, :cond_3

    const-string v0, "com.sun.org.apache.xml.internal.serializer.ToXMLSAXHandler"

    invoke-static {v0, v1, v5}, Lcom/sun/org/apache/xml/internal/serializer/ObjectFactory;->findProviderClass(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;

    check-cast v3, Lorg/xml/sax/ContentHandler;

    invoke-interface {v0, v3}, Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    invoke-interface {v0, p0}, Lcom/sun/org/apache/xml/internal/serializer/Serializer;->setOutputFormat(Ljava/util/Properties;)V

    :goto_1
    return-object v0

    :cond_3
    new-instance p0, Ljava/lang/Exception;

    sget-object v1, Lcom/sun/org/apache/xml/internal/serializer/utils/Utils;->messages:Lcom/sun/org/apache/xml/internal/serializer/utils/Messages;

    const-string v2, "ER_SERIALIZER_NOT_CONTENTHANDLER"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/sun/org/apache/xml/internal/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    sget-object p0, Lcom/sun/org/apache/xml/internal/serializer/utils/Utils;->messages:Lcom/sun/org/apache/xml/internal/serializer/utils/Messages;

    new-array v1, v5, [Ljava/lang/Object;

    aput-object v0, v1, v3

    invoke-virtual {p0, v4, v1}, Lcom/sun/org/apache/xml/internal/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception p0

    new-instance v0, Lcom/sun/org/apache/xml/internal/serializer/utils/WrappedRuntimeException;

    invoke-direct {v0, p0}, Lcom/sun/org/apache/xml/internal/serializer/utils/WrappedRuntimeException;-><init>(Ljava/lang/Exception;)V

    throw v0
.end method
