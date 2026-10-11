.class public abstract Lorg/apache/xml/serialize/SerializerFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final FactoriesProperty:Ljava/lang/String; = "org.apache.xml.serialize.factories"

.field public static a:Ljava/util/Hashtable;

.field public static synthetic b:Ljava/lang/Class;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lorg/apache/xml/serialize/SerializerFactory;->a:Ljava/util/Hashtable;

    new-instance v0, Lcom/sunia/HTREnginev2/fhm;

    const-string v1, "xml"

    invoke-direct {v0, v1}, Lcom/sunia/HTREnginev2/fhm;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lorg/apache/xml/serialize/SerializerFactory;->registerSerializerFactory(Lorg/apache/xml/serialize/SerializerFactory;)V

    new-instance v0, Lcom/sunia/HTREnginev2/fhm;

    const-string v1, "html"

    invoke-direct {v0, v1}, Lcom/sunia/HTREnginev2/fhm;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lorg/apache/xml/serialize/SerializerFactory;->registerSerializerFactory(Lorg/apache/xml/serialize/SerializerFactory;)V

    new-instance v0, Lcom/sunia/HTREnginev2/fhm;

    const-string v1, "xhtml"

    invoke-direct {v0, v1}, Lcom/sunia/HTREnginev2/fhm;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lorg/apache/xml/serialize/SerializerFactory;->registerSerializerFactory(Lorg/apache/xml/serialize/SerializerFactory;)V

    new-instance v0, Lcom/sunia/HTREnginev2/fhm;

    const-string v1, "text"

    invoke-direct {v0, v1}, Lcom/sunia/HTREnginev2/fhm;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lorg/apache/xml/serialize/SerializerFactory;->registerSerializerFactory(Lorg/apache/xml/serialize/SerializerFactory;)V

    const-string v0, "org.apache.xml.serialize.factories"

    invoke-static {v0}, Lcom/sunia/HTREnginev2/bdm;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    new-instance v1, Ljava/util/StringTokenizer;

    const-string v2, " ;,:"

    invoke-direct {v1, v0, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :catch_0
    :cond_0
    :goto_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    sget-object v2, Lorg/apache/xml/serialize/SerializerFactory;->b:Ljava/lang/Class;

    if-nez v2, :cond_2

    const-string v2, "org.apache.xml.serialize.SerializerFactory"

    invoke-static {v2}, Lorg/apache/xml/serialize/SerializerFactory;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lorg/apache/xml/serialize/SerializerFactory;->b:Ljava/lang/Class;

    :cond_2
    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Lorg/apache/xml/serialize/ObjectFactory;->h(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xml/serialize/SerializerFactory;

    sget-object v2, Lorg/apache/xml/serialize/SerializerFactory;->a:Ljava/util/Hashtable;

    invoke-virtual {v0}, Lorg/apache/xml/serialize/SerializerFactory;->getSupportedMethod()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lorg/apache/xml/serialize/SerializerFactory;->a:Ljava/util/Hashtable;

    invoke-virtual {v0}, Lorg/apache/xml/serialize/SerializerFactory;->getSupportedMethod()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getSerializerFactory(Ljava/lang/String;)Lorg/apache/xml/serialize/SerializerFactory;
    .locals 1

    sget-object v0, Lorg/apache/xml/serialize/SerializerFactory;->a:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/xml/serialize/SerializerFactory;

    return-object p0
.end method

.method public static registerSerializerFactory(Lorg/apache/xml/serialize/SerializerFactory;)V
    .locals 3

    sget-object v0, Lorg/apache/xml/serialize/SerializerFactory;->a:Ljava/util/Hashtable;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xml/serialize/SerializerFactory;->getSupportedMethod()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/apache/xml/serialize/SerializerFactory;->a:Ljava/util/Hashtable;

    invoke-virtual {v2, v1, p0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public abstract getSupportedMethod()Ljava/lang/String;
.end method

.method public abstract makeSerializer(Ljava/io/OutputStream;Lorg/apache/xml/serialize/OutputFormat;)Lorg/apache/xml/serialize/Serializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation
.end method

.method public abstract makeSerializer(Ljava/io/Writer;Lorg/apache/xml/serialize/OutputFormat;)Lorg/apache/xml/serialize/Serializer;
.end method

.method public abstract makeSerializer(Lorg/apache/xml/serialize/OutputFormat;)Lorg/apache/xml/serialize/Serializer;
.end method
