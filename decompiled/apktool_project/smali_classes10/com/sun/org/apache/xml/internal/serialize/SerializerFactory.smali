.class public abstract Lcom/sun/org/apache/xml/internal/serialize/SerializerFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final FactoriesProperty:Ljava/lang/String; = "com.sun.org.apache.xml.internal.serialize.factories"

.field private static _factories:Ljava/util/Hashtable;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/sun/org/apache/xml/internal/serialize/SerializerFactory;->_factories:Ljava/util/Hashtable;

    new-instance v0, Lcom/sun/org/apache/xml/internal/serialize/SerializerFactoryImpl;

    const-string v1, "xml"

    invoke-direct {v0, v1}, Lcom/sun/org/apache/xml/internal/serialize/SerializerFactoryImpl;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/sun/org/apache/xml/internal/serialize/SerializerFactory;->registerSerializerFactory(Lcom/sun/org/apache/xml/internal/serialize/SerializerFactory;)V

    new-instance v0, Lcom/sun/org/apache/xml/internal/serialize/SerializerFactoryImpl;

    const-string v1, "html"

    invoke-direct {v0, v1}, Lcom/sun/org/apache/xml/internal/serialize/SerializerFactoryImpl;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/sun/org/apache/xml/internal/serialize/SerializerFactory;->registerSerializerFactory(Lcom/sun/org/apache/xml/internal/serialize/SerializerFactory;)V

    new-instance v0, Lcom/sun/org/apache/xml/internal/serialize/SerializerFactoryImpl;

    const-string v1, "xhtml"

    invoke-direct {v0, v1}, Lcom/sun/org/apache/xml/internal/serialize/SerializerFactoryImpl;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/sun/org/apache/xml/internal/serialize/SerializerFactory;->registerSerializerFactory(Lcom/sun/org/apache/xml/internal/serialize/SerializerFactory;)V

    new-instance v0, Lcom/sun/org/apache/xml/internal/serialize/SerializerFactoryImpl;

    const-string v1, "text"

    invoke-direct {v0, v1}, Lcom/sun/org/apache/xml/internal/serialize/SerializerFactoryImpl;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/sun/org/apache/xml/internal/serialize/SerializerFactory;->registerSerializerFactory(Lcom/sun/org/apache/xml/internal/serialize/SerializerFactory;)V

    const-string v0, "com.sun.org.apache.xml.internal.serialize.factories"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v1, Ljava/util/StringTokenizer;

    const-string v2, " ;,:"

    invoke-direct {v1, v0, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :catch_0
    :cond_0
    :goto_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    const-class v2, Lcom/sun/org/apache/xml/internal/serialize/SerializerFactory;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Lcom/sun/org/apache/xml/internal/serialize/ObjectFactory;->newInstance(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/xml/internal/serialize/SerializerFactory;

    sget-object v2, Lcom/sun/org/apache/xml/internal/serialize/SerializerFactory;->_factories:Ljava/util/Hashtable;

    invoke-virtual {v0}, Lcom/sun/org/apache/xml/internal/serialize/SerializerFactory;->getSupportedMethod()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/sun/org/apache/xml/internal/serialize/SerializerFactory;->_factories:Ljava/util/Hashtable;

    invoke-virtual {v0}, Lcom/sun/org/apache/xml/internal/serialize/SerializerFactory;->getSupportedMethod()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_1
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSerializerFactory(Ljava/lang/String;)Lcom/sun/org/apache/xml/internal/serialize/SerializerFactory;
    .locals 1

    sget-object v0, Lcom/sun/org/apache/xml/internal/serialize/SerializerFactory;->_factories:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sun/org/apache/xml/internal/serialize/SerializerFactory;

    return-object p0
.end method

.method public static registerSerializerFactory(Lcom/sun/org/apache/xml/internal/serialize/SerializerFactory;)V
    .locals 3

    sget-object v0, Lcom/sun/org/apache/xml/internal/serialize/SerializerFactory;->_factories:Ljava/util/Hashtable;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/serialize/SerializerFactory;->getSupportedMethod()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/sun/org/apache/xml/internal/serialize/SerializerFactory;->_factories:Ljava/util/Hashtable;

    invoke-virtual {v2, v1, p0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public abstract getSupportedMethod()Ljava/lang/String;
.end method

.method public abstract makeSerializer(Lcom/sun/org/apache/xml/internal/serialize/OutputFormat;)Lcom/sun/org/apache/xml/internal/serialize/Serializer;
.end method

.method public abstract makeSerializer(Ljava/io/OutputStream;Lcom/sun/org/apache/xml/internal/serialize/OutputFormat;)Lcom/sun/org/apache/xml/internal/serialize/Serializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation
.end method

.method public abstract makeSerializer(Ljava/io/Writer;Lcom/sun/org/apache/xml/internal/serialize/OutputFormat;)Lcom/sun/org/apache/xml/internal/serialize/Serializer;
.end method
