.class public Lorg/mortbay/xml/XmlConfiguration;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static d:[Ljava/lang/Class;

.field public static e:[Ljava/lang/Class;

.field public static final f:Ljava/lang/Integer;

.field public static g:Lorg/mortbay/xml/XmlParser;

.field public static synthetic h:Ljava/lang/Class;

.field public static synthetic i:Ljava/lang/Class;

.field public static synthetic j:Ljava/lang/Class;

.field public static synthetic k:Ljava/lang/Class;

.field public static synthetic l:Ljava/lang/Class;

.field public static synthetic m:Ljava/lang/Class;

.field public static synthetic n:Ljava/lang/Class;

.field public static synthetic o:Ljava/lang/Class;

.field public static synthetic p:Ljava/lang/Class;

.field public static synthetic q:Ljava/lang/Class;

.field public static synthetic r:Ljava/lang/Class;

.field public static synthetic s:Ljava/lang/Class;

.field public static synthetic t:Ljava/lang/Class;

.field public static synthetic u:Ljava/lang/Class;


# instance fields
.field public a:Lorg/mortbay/xml/XmlParser$Node;

.field public b:Ljava/util/Map;

.field public c:Ljava/util/Map;


# direct methods
.method public static constructor <clinit>()V
    .locals 12

    const/16 v0, 0x9

    new-array v1, v0, [Ljava/lang/Class;

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x2

    aput-object v2, v1, v5

    sget-object v2, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x3

    aput-object v2, v1, v6

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x4

    aput-object v2, v1, v7

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/4 v8, 0x5

    aput-object v2, v1, v8

    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const/4 v9, 0x6

    aput-object v2, v1, v9

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    const/4 v10, 0x7

    aput-object v2, v1, v10

    sget-object v2, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    const/16 v11, 0x8

    aput-object v2, v1, v11

    sput-object v1, Lorg/mortbay/xml/XmlConfiguration;->d:[Ljava/lang/Class;

    new-array v0, v0, [Ljava/lang/Class;

    sget-object v1, Lorg/mortbay/xml/XmlConfiguration;->h:Ljava/lang/Class;

    if-nez v1, :cond_0

    const-string v1, "java.lang.Boolean"

    invoke-static {v1}, Lorg/mortbay/xml/XmlConfiguration;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/mortbay/xml/XmlConfiguration;->h:Ljava/lang/Class;

    :cond_0
    aput-object v1, v0, v3

    sget-object v1, Lorg/mortbay/xml/XmlConfiguration;->i:Ljava/lang/Class;

    if-nez v1, :cond_1

    const-string v1, "java.lang.Character"

    invoke-static {v1}, Lorg/mortbay/xml/XmlConfiguration;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/mortbay/xml/XmlConfiguration;->i:Ljava/lang/Class;

    :cond_1
    aput-object v1, v0, v4

    sget-object v1, Lorg/mortbay/xml/XmlConfiguration;->j:Ljava/lang/Class;

    if-nez v1, :cond_2

    const-string v1, "java.lang.Byte"

    invoke-static {v1}, Lorg/mortbay/xml/XmlConfiguration;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/mortbay/xml/XmlConfiguration;->j:Ljava/lang/Class;

    :cond_2
    aput-object v1, v0, v5

    sget-object v1, Lorg/mortbay/xml/XmlConfiguration;->k:Ljava/lang/Class;

    if-nez v1, :cond_3

    const-string v1, "java.lang.Short"

    invoke-static {v1}, Lorg/mortbay/xml/XmlConfiguration;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/mortbay/xml/XmlConfiguration;->k:Ljava/lang/Class;

    :cond_3
    aput-object v1, v0, v6

    sget-object v1, Lorg/mortbay/xml/XmlConfiguration;->l:Ljava/lang/Class;

    if-nez v1, :cond_4

    const-string v1, "java.lang.Integer"

    invoke-static {v1}, Lorg/mortbay/xml/XmlConfiguration;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/mortbay/xml/XmlConfiguration;->l:Ljava/lang/Class;

    :cond_4
    aput-object v1, v0, v7

    sget-object v1, Lorg/mortbay/xml/XmlConfiguration;->m:Ljava/lang/Class;

    if-nez v1, :cond_5

    const-string v1, "java.lang.Long"

    invoke-static {v1}, Lorg/mortbay/xml/XmlConfiguration;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/mortbay/xml/XmlConfiguration;->m:Ljava/lang/Class;

    :cond_5
    aput-object v1, v0, v8

    sget-object v1, Lorg/mortbay/xml/XmlConfiguration;->n:Ljava/lang/Class;

    if-nez v1, :cond_6

    const-string v1, "java.lang.Float"

    invoke-static {v1}, Lorg/mortbay/xml/XmlConfiguration;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/mortbay/xml/XmlConfiguration;->n:Ljava/lang/Class;

    :cond_6
    aput-object v1, v0, v9

    sget-object v1, Lorg/mortbay/xml/XmlConfiguration;->o:Ljava/lang/Class;

    if-nez v1, :cond_7

    const-string v1, "java.lang.Double"

    invoke-static {v1}, Lorg/mortbay/xml/XmlConfiguration;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/mortbay/xml/XmlConfiguration;->o:Ljava/lang/Class;

    :cond_7
    aput-object v1, v0, v10

    sget-object v1, Lorg/mortbay/xml/XmlConfiguration;->p:Ljava/lang/Class;

    if-nez v1, :cond_8

    const-string v1, "java.lang.Void"

    invoke-static {v1}, Lorg/mortbay/xml/XmlConfiguration;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/mortbay/xml/XmlConfiguration;->p:Ljava/lang/Class;

    :cond_8
    aput-object v1, v0, v11

    sput-object v0, Lorg/mortbay/xml/XmlConfiguration;->e:[Ljava/lang/Class;

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, v3}, Ljava/lang/Integer;-><init>(I)V

    sput-object v0, Lorg/mortbay/xml/XmlConfiguration;->f:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/mortbay/xml/XmlConfiguration;->b:Ljava/util/Map;

    .line 19
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/mortbay/xml/XmlConfiguration;->c:Ljava/util/Map;

    .line 20
    invoke-static {}, Lorg/mortbay/xml/XmlConfiguration;->d()V

    .line 21
    new-instance v0, Lorg/xml/sax/InputSource;

    invoke-direct {v0, p1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    .line 22
    sget-object p1, Lorg/mortbay/xml/XmlConfiguration;->g:Lorg/mortbay/xml/XmlParser;

    monitor-enter p1

    .line 23
    :try_start_0
    sget-object v1, Lorg/mortbay/xml/XmlConfiguration;->g:Lorg/mortbay/xml/XmlParser;

    invoke-virtual {v1, v0}, Lorg/mortbay/xml/XmlParser;->parse(Lorg/xml/sax/InputSource;)Lorg/mortbay/xml/XmlParser$Node;

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/xml/XmlConfiguration;->a:Lorg/mortbay/xml/XmlParser$Node;

    .line 24
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/mortbay/xml/XmlConfiguration;->b:Ljava/util/Map;

    .line 10
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/mortbay/xml/XmlConfiguration;->c:Ljava/util/Map;

    .line 11
    invoke-static {}, Lorg/mortbay/xml/XmlConfiguration;->d()V

    .line 12
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "<?xml version=\"1.0\"  encoding=\"ISO-8859-1\"?>\n<!DOCTYPE Configure PUBLIC \"-//Mort Bay Consulting//DTD Configure 1.2//EN\" \"http://jetty.mortbay.org/configure_1_2.dtd\">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    .line 13
    new-instance v0, Lorg/xml/sax/InputSource;

    new-instance v1, Ljava/io/StringReader;

    invoke-direct {v1, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    .line 14
    sget-object p1, Lorg/mortbay/xml/XmlConfiguration;->g:Lorg/mortbay/xml/XmlParser;

    monitor-enter p1

    .line 15
    :try_start_0
    sget-object v1, Lorg/mortbay/xml/XmlConfiguration;->g:Lorg/mortbay/xml/XmlParser;

    invoke-virtual {v1, v0}, Lorg/mortbay/xml/XmlParser;->parse(Lorg/xml/sax/InputSource;)Lorg/mortbay/xml/XmlParser$Node;

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/xml/XmlConfiguration;->a:Lorg/mortbay/xml/XmlParser$Node;

    .line 16
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public constructor <init>(Ljava/net/URL;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/mortbay/xml/XmlConfiguration;->b:Ljava/util/Map;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/mortbay/xml/XmlConfiguration;->c:Ljava/util/Map;

    .line 4
    invoke-static {}, Lorg/mortbay/xml/XmlConfiguration;->d()V

    .line 5
    sget-object v0, Lorg/mortbay/xml/XmlConfiguration;->g:Lorg/mortbay/xml/XmlParser;

    monitor-enter v0

    .line 6
    :try_start_0
    sget-object v1, Lorg/mortbay/xml/XmlConfiguration;->g:Lorg/mortbay/xml/XmlParser;

    invoke-virtual {p1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lorg/mortbay/xml/XmlParser;->parse(Ljava/lang/String;)Lorg/mortbay/xml/XmlParser$Node;

    move-result-object p1

    iput-object p1, p0, Lorg/mortbay/xml/XmlConfiguration;->a:Lorg/mortbay/xml/XmlParser$Node;

    .line 7
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
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

    invoke-direct {v0}, Ljava/lang/NoClassDefFoundError;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    throw p0
.end method

.method public static declared-synchronized d()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-class v0, Lorg/mortbay/xml/XmlConfiguration;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lorg/mortbay/xml/XmlConfiguration;->g:Lorg/mortbay/xml/XmlParser;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    :try_start_1
    new-instance v1, Lorg/mortbay/xml/XmlParser;

    invoke-direct {v1}, Lorg/mortbay/xml/XmlParser;-><init>()V

    sput-object v1, Lorg/mortbay/xml/XmlConfiguration;->g:Lorg/mortbay/xml/XmlParser;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    sget-object v1, Lorg/mortbay/xml/XmlConfiguration;->q:Ljava/lang/Class;

    if-nez v1, :cond_1

    const-string v1, "org.mortbay.xml.XmlConfiguration"

    invoke-static {v1}, Lorg/mortbay/xml/XmlConfiguration;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/mortbay/xml/XmlConfiguration;->q:Ljava/lang/Class;

    :cond_1
    const-string v2, "org/mortbay/xml/configure_6_0.dtd"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lorg/mortbay/util/Loader;->getResource(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/net/URL;

    move-result-object v1

    sget-object v2, Lorg/mortbay/xml/XmlConfiguration;->g:Lorg/mortbay/xml/XmlParser;

    const-string v3, "configure.dtd"

    invoke-virtual {v2, v3, v1}, Lorg/mortbay/xml/XmlParser;->redirectEntity(Ljava/lang/String;Ljava/net/URL;)V

    sget-object v2, Lorg/mortbay/xml/XmlConfiguration;->g:Lorg/mortbay/xml/XmlParser;

    const-string v3, "configure_1_3.dtd"

    invoke-virtual {v2, v3, v1}, Lorg/mortbay/xml/XmlParser;->redirectEntity(Ljava/lang/String;Ljava/net/URL;)V

    sget-object v2, Lorg/mortbay/xml/XmlConfiguration;->g:Lorg/mortbay/xml/XmlParser;

    const-string v3, "http://jetty.mortbay.org/configure.dtd"

    invoke-virtual {v2, v3, v1}, Lorg/mortbay/xml/XmlParser;->redirectEntity(Ljava/lang/String;Ljava/net/URL;)V

    sget-object v2, Lorg/mortbay/xml/XmlConfiguration;->g:Lorg/mortbay/xml/XmlParser;

    const-string v3, "-//Mort Bay Consulting//DTD Configure//EN"

    invoke-virtual {v2, v3, v1}, Lorg/mortbay/xml/XmlParser;->redirectEntity(Ljava/lang/String;Ljava/net/URL;)V

    sget-object v2, Lorg/mortbay/xml/XmlConfiguration;->g:Lorg/mortbay/xml/XmlParser;

    const-string v3, "http://jetty.mortbay.org/configure_1_3.dtd"

    invoke-virtual {v2, v3, v1}, Lorg/mortbay/xml/XmlParser;->redirectEntity(Ljava/lang/String;Ljava/net/URL;)V

    sget-object v2, Lorg/mortbay/xml/XmlConfiguration;->g:Lorg/mortbay/xml/XmlParser;

    const-string v3, "-//Mort Bay Consulting//DTD Configure 1.3//EN"

    invoke-virtual {v2, v3, v1}, Lorg/mortbay/xml/XmlParser;->redirectEntity(Ljava/lang/String;Ljava/net/URL;)V

    sget-object v2, Lorg/mortbay/xml/XmlConfiguration;->g:Lorg/mortbay/xml/XmlParser;

    const-string v3, "configure_1_2.dtd"

    invoke-virtual {v2, v3, v1}, Lorg/mortbay/xml/XmlParser;->redirectEntity(Ljava/lang/String;Ljava/net/URL;)V

    sget-object v2, Lorg/mortbay/xml/XmlConfiguration;->g:Lorg/mortbay/xml/XmlParser;

    const-string v3, "http://jetty.mortbay.org/configure_1_2.dtd"

    invoke-virtual {v2, v3, v1}, Lorg/mortbay/xml/XmlParser;->redirectEntity(Ljava/lang/String;Ljava/net/URL;)V

    sget-object v2, Lorg/mortbay/xml/XmlConfiguration;->g:Lorg/mortbay/xml/XmlParser;

    const-string v3, "-//Mort Bay Consulting//DTD Configure 1.2//EN"

    invoke-virtual {v2, v3, v1}, Lorg/mortbay/xml/XmlParser;->redirectEntity(Ljava/lang/String;Ljava/net/URL;)V

    sget-object v2, Lorg/mortbay/xml/XmlConfiguration;->g:Lorg/mortbay/xml/XmlParser;

    const-string v3, "configure_1_1.dtd"

    invoke-virtual {v2, v3, v1}, Lorg/mortbay/xml/XmlParser;->redirectEntity(Ljava/lang/String;Ljava/net/URL;)V

    sget-object v2, Lorg/mortbay/xml/XmlConfiguration;->g:Lorg/mortbay/xml/XmlParser;

    const-string v3, "http://jetty.mortbay.org/configure_1_1.dtd"

    invoke-virtual {v2, v3, v1}, Lorg/mortbay/xml/XmlParser;->redirectEntity(Ljava/lang/String;Ljava/net/URL;)V

    sget-object v2, Lorg/mortbay/xml/XmlConfiguration;->g:Lorg/mortbay/xml/XmlParser;

    const-string v3, "-//Mort Bay Consulting//DTD Configure 1.1//EN"

    invoke-virtual {v2, v3, v1}, Lorg/mortbay/xml/XmlParser;->redirectEntity(Ljava/lang/String;Ljava/net/URL;)V

    sget-object v2, Lorg/mortbay/xml/XmlConfiguration;->g:Lorg/mortbay/xml/XmlParser;

    const-string v3, "configure_1_0.dtd"

    invoke-virtual {v2, v3, v1}, Lorg/mortbay/xml/XmlParser;->redirectEntity(Ljava/lang/String;Ljava/net/URL;)V

    sget-object v2, Lorg/mortbay/xml/XmlConfiguration;->g:Lorg/mortbay/xml/XmlParser;

    const-string v3, "http://jetty.mortbay.org/configure_1_0.dtd"

    invoke-virtual {v2, v3, v1}, Lorg/mortbay/xml/XmlParser;->redirectEntity(Ljava/lang/String;Ljava/net/URL;)V

    sget-object v2, Lorg/mortbay/xml/XmlConfiguration;->g:Lorg/mortbay/xml/XmlParser;

    const-string v3, "-//Mort Bay Consulting//DTD Configure 1.0//EN"

    invoke-virtual {v2, v3, v1}, Lorg/mortbay/xml/XmlParser;->redirectEntity(Ljava/lang/String;Ljava/net/URL;)V
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/mortbay/log/Log;->warn(Ljava/lang/String;)V

    invoke-static {v1}, Lorg/mortbay/log/Log;->debug(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static main([Ljava/lang/String;)V
    .locals 7

    :try_start_0
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    array-length v1, p0

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move v4, v2

    :goto_0
    array-length v5, p0

    if-ge v4, v5, :cond_3

    aget-object v5, p0, v4

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    const-string v6, ".properties"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    aget-object v5, p0, v4

    invoke-static {v5}, Lorg/mortbay/resource/Resource;->newResource(Ljava/lang/String;)Lorg/mortbay/resource/Resource;

    move-result-object v5

    invoke-virtual {v5}, Lorg/mortbay/resource/Resource;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    goto :goto_1

    :cond_0
    new-instance v5, Lorg/mortbay/xml/XmlConfiguration;

    aget-object v6, p0, v4

    invoke-static {v6}, Lorg/mortbay/resource/Resource;->newResource(Ljava/lang/String;)Lorg/mortbay/resource/Resource;

    move-result-object v6

    invoke-virtual {v6}, Lorg/mortbay/resource/Resource;->getURL()Ljava/net/URL;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/mortbay/xml/XmlConfiguration;-><init>(Ljava/net/URL;)V

    if-eqz v3, :cond_1

    invoke-virtual {v5}, Lorg/mortbay/xml/XmlConfiguration;->getIdMap()Ljava/util/Map;

    move-result-object v6

    invoke-virtual {v3}, Lorg/mortbay/xml/XmlConfiguration;->getIdMap()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v6, v3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_1
    invoke-virtual {v0}, Ljava/util/Properties;->size()I

    move-result v3

    if-lez v3, :cond_2

    invoke-virtual {v5, v0}, Lorg/mortbay/xml/XmlConfiguration;->setProperties(Ljava/util/Map;)V

    :cond_2
    invoke-virtual {v5}, Lorg/mortbay/xml/XmlConfiguration;->configure()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v4

    move-object v3, v5

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    array-length v0, p0

    if-ge v2, v0, :cond_5

    aget-object v0, v1, v2

    instance-of v3, v0, Lorg/mortbay/component/LifeCycle;

    if-eqz v3, :cond_4

    check-cast v0, Lorg/mortbay/component/LifeCycle;

    invoke-interface {v0}, Lorg/mortbay/component/LifeCycle;->isRunning()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-interface {v0}, Lorg/mortbay/component/LifeCycle;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :catch_0
    move-exception p0

    const-string v0, "EXCEPTION "

    invoke-static {v0, p0}, Lorg/mortbay/log/Log;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_5
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Lorg/mortbay/xml/XmlParser$Node;)Ljava/lang/Object;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "id"

    invoke-virtual {p2, v0}, Lorg/mortbay/xml/XmlParser$Node;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p2}, Lorg/mortbay/xml/XmlConfiguration;->i(Lorg/mortbay/xml/XmlParser$Node;)Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object p1, v2

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    :cond_1
    :goto_0
    if-eqz v1, :cond_10

    invoke-virtual {p2}, Lorg/mortbay/xml/XmlParser$Node;->size()I

    move-result v3

    const/4 v4, 0x0

    move v5, v4

    move v6, v5

    :goto_1
    invoke-virtual {p2}, Lorg/mortbay/xml/XmlParser$Node;->size()I

    move-result v7

    if-ge v5, v7, :cond_4

    invoke-virtual {p2, v5}, Lorg/mortbay/xml/XmlParser$Node;->get(I)Ljava/lang/Object;

    move-result-object v7

    instance-of v8, v7, Ljava/lang/String;

    if-eqz v8, :cond_2

    goto :goto_2

    :cond_2
    check-cast v7, Lorg/mortbay/xml/XmlParser$Node;

    invoke-virtual {v7}, Lorg/mortbay/xml/XmlParser$Node;->getTag()Ljava/lang/String;

    move-result-object v7

    const-string v8, "Arg"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    move v3, v5

    goto :goto_3

    :cond_3
    add-int/lit8 v6, v6, 0x1

    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_4
    :goto_3
    new-array v5, v6, [Ljava/lang/Object;

    move v7, v4

    move v8, v7

    :goto_4
    if-ge v7, v6, :cond_6

    invoke-virtual {p2, v8}, Lorg/mortbay/xml/XmlParser$Node;->get(I)Ljava/lang/Object;

    move-result-object v9

    instance-of v10, v9, Ljava/lang/String;

    if-eqz v10, :cond_5

    goto :goto_5

    :cond_5
    add-int/lit8 v10, v7, 0x1

    check-cast v9, Lorg/mortbay/xml/XmlParser$Node;

    invoke-virtual {p0, p1, v9}, Lorg/mortbay/xml/XmlConfiguration;->n(Ljava/lang/Object;Lorg/mortbay/xml/XmlParser$Node;)Ljava/lang/Object;

    move-result-object v9

    aput-object v9, v5, v7

    move v7, v10

    :goto_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    :cond_6
    const-string v7, "name"

    invoke-virtual {p2, v7}, Lorg/mortbay/xml/XmlParser$Node;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Lorg/mortbay/log/Log;->isDebugEnabled()Z

    move-result v8

    if-eqz v8, :cond_7

    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    const-string v9, "XML call "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;)V

    :cond_7
    invoke-virtual {v1}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v8

    move v9, v4

    :goto_6
    if-eqz v8, :cond_f

    array-length v10, v8

    if-ge v9, v10, :cond_f

    aget-object v10, v8, v9

    invoke-virtual {v10}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_8

    goto :goto_a

    :cond_8
    aget-object v10, v8, v9

    invoke-virtual {v10}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v10

    array-length v10, v10

    if-eq v10, v6, :cond_9

    goto :goto_a

    :cond_9
    aget-object v10, v8, v9

    invoke-virtual {v10}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v10

    invoke-static {v10}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v10

    const/4 v11, 0x1

    if-nez p1, :cond_a

    move v12, v11

    goto :goto_7

    :cond_a
    move v12, v4

    :goto_7
    if-eq v10, v12, :cond_b

    goto :goto_a

    :cond_b
    if-nez p1, :cond_c

    aget-object v10, v8, v9

    invoke-virtual {v10}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v10

    if-eq v10, v1, :cond_c

    goto :goto_a

    :cond_c
    :try_start_0
    aget-object v10, v8, v9

    invoke-virtual {v10, p1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_9

    :catch_0
    move-exception v10

    invoke-static {v10}, Lorg/mortbay/log/Log;->ignore(Ljava/lang/Throwable;)V

    goto :goto_8

    :catch_1
    move-exception v10

    invoke-static {v10}, Lorg/mortbay/log/Log;->ignore(Ljava/lang/Throwable;)V

    :goto_8
    move-object v10, v2

    move v11, v4

    :goto_9
    if-eqz v11, :cond_e

    if-eqz v0, :cond_d

    iget-object p1, p0, Lorg/mortbay/xml/XmlConfiguration;->b:Ljava/util/Map;

    invoke-interface {p1, v0, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_d
    invoke-virtual {p0, v10, p2, v3}, Lorg/mortbay/xml/XmlConfiguration;->b(Ljava/lang/Object;Lorg/mortbay/xml/XmlParser$Node;I)V

    return-object v10

    :cond_e
    :goto_a
    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    :cond_f
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v0, "No Method: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string p2, " on "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_10
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p2}, Lorg/mortbay/xml/XmlParser$Node;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final b(Ljava/lang/Object;Lorg/mortbay/xml/XmlParser$Node;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "id"

    invoke-virtual {p2, v0}, Lorg/mortbay/xml/XmlParser$Node;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/mortbay/xml/XmlConfiguration;->b:Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    :goto_0
    invoke-virtual {p2}, Lorg/mortbay/xml/XmlParser$Node;->size()I

    move-result v0

    if-ge p3, v0, :cond_a

    invoke-virtual {p2, p3}, Lorg/mortbay/xml/XmlParser$Node;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    check-cast v0, Lorg/mortbay/xml/XmlParser$Node;

    :try_start_0
    invoke-virtual {v0}, Lorg/mortbay/xml/XmlParser$Node;->getTag()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Set"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0, p1, v0}, Lorg/mortbay/xml/XmlConfiguration;->m(Ljava/lang/Object;Lorg/mortbay/xml/XmlParser$Node;)V

    goto :goto_1

    :cond_2
    const-string v2, "Put"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0, p1, v0}, Lorg/mortbay/xml/XmlConfiguration;->k(Ljava/lang/Object;Lorg/mortbay/xml/XmlParser$Node;)V

    goto :goto_1

    :cond_3
    const-string v2, "Call"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p0, p1, v0}, Lorg/mortbay/xml/XmlConfiguration;->a(Ljava/lang/Object;Lorg/mortbay/xml/XmlParser$Node;)Ljava/lang/Object;

    goto :goto_1

    :cond_4
    const-string v2, "Get"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p0, p1, v0}, Lorg/mortbay/xml/XmlConfiguration;->c(Ljava/lang/Object;Lorg/mortbay/xml/XmlParser$Node;)Ljava/lang/Object;

    goto :goto_1

    :cond_5
    const-string v2, "New"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {p0, p1, v0}, Lorg/mortbay/xml/XmlConfiguration;->h(Ljava/lang/Object;Lorg/mortbay/xml/XmlParser$Node;)Ljava/lang/Object;

    goto :goto_1

    :cond_6
    const-string v2, "Array"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {p0, p1, v0}, Lorg/mortbay/xml/XmlConfiguration;->f(Ljava/lang/Object;Lorg/mortbay/xml/XmlParser$Node;)Ljava/lang/Object;

    goto :goto_1

    :cond_7
    const-string v2, "Ref"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual {p0, p1, v0}, Lorg/mortbay/xml/XmlConfiguration;->l(Ljava/lang/Object;Lorg/mortbay/xml/XmlParser$Node;)Ljava/lang/Object;

    goto :goto_1

    :cond_8
    const-string v2, "Property"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-virtual {p0, p1, v0}, Lorg/mortbay/xml/XmlConfiguration;->j(Ljava/lang/Object;Lorg/mortbay/xml/XmlParser$Node;)Ljava/lang/Object;

    :goto_1
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_9
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    const-string p2, "Unknown tag: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    const-string p2, "Config error at "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lorg/mortbay/log/Log;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    throw p0

    :cond_a
    return-void
.end method

.method public final c(Ljava/lang/Object;Lorg/mortbay/xml/XmlParser$Node;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0, p2}, Lorg/mortbay/xml/XmlConfiguration;->i(Lorg/mortbay/xml/XmlParser$Node;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object p1, v1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    :goto_0
    const-string v2, "name"

    invoke-virtual {p2, v2}, Lorg/mortbay/xml/XmlParser$Node;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "id"

    invoke-virtual {p2, v3}, Lorg/mortbay/xml/XmlParser$Node;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lorg/mortbay/log/Log;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "XML get "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;)V

    :cond_1
    const/4 v4, 0x0

    :try_start_0
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "get"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v6, 0x1

    invoke-virtual {v2, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    invoke-virtual {v5, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v4}, Lorg/mortbay/xml/XmlConfiguration;->b(Ljava/lang/Object;Lorg/mortbay/xml/XmlParser$Node;I)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_1
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v4}, Lorg/mortbay/xml/XmlConfiguration;->b(Ljava/lang/Object;Lorg/mortbay/xml/XmlParser$Node;I)V
    :try_end_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    if-eqz v3, :cond_2

    iget-object p0, p0, Lorg/mortbay/xml/XmlConfiguration;->b:Ljava/util/Map;

    invoke-interface {p0, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object p1

    :catch_1
    throw v1
.end method

.method public configure()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 5
    iget-object v0, p0, Lorg/mortbay/xml/XmlConfiguration;->a:Lorg/mortbay/xml/XmlParser$Node;

    invoke-virtual {p0, v0}, Lorg/mortbay/xml/XmlConfiguration;->i(Lorg/mortbay/xml/XmlParser$Node;)Ljava/lang/Class;

    move-result-object v0

    .line 6
    iget-object v1, p0, Lorg/mortbay/xml/XmlConfiguration;->a:Lorg/mortbay/xml/XmlParser$Node;

    const-string v2, "id"

    invoke-virtual {v1, v2}, Lorg/mortbay/xml/XmlParser$Node;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 7
    :cond_0
    iget-object v2, p0, Lorg/mortbay/xml/XmlConfiguration;->b:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    :goto_0
    if-nez v1, :cond_1

    if-eqz v0, :cond_1

    .line 8
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    :cond_1
    if-eqz v0, :cond_3

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    .line 10
    :cond_2
    new-instance p0, Ljava/lang/ClassCastException;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 11
    :cond_3
    :goto_1
    iget-object v0, p0, Lorg/mortbay/xml/XmlConfiguration;->a:Lorg/mortbay/xml/XmlParser$Node;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2}, Lorg/mortbay/xml/XmlConfiguration;->b(Ljava/lang/Object;Lorg/mortbay/xml/XmlParser$Node;I)V

    return-object v1
.end method

.method public configure(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/mortbay/xml/XmlConfiguration;->a:Lorg/mortbay/xml/XmlParser$Node;

    invoke-virtual {p0, v0}, Lorg/mortbay/xml/XmlConfiguration;->i(Lorg/mortbay/xml/XmlParser$Node;)Ljava/lang/Class;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    iget-object v0, p0, Lorg/mortbay/xml/XmlConfiguration;->a:Lorg/mortbay/xml/XmlParser$Node;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lorg/mortbay/xml/XmlConfiguration;->b(Ljava/lang/Object;Lorg/mortbay/xml/XmlParser$Node;I)V

    return-void

    .line 4
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "Object is not of type "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final e(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object p2

    :cond_0
    check-cast p2, Lorg/mortbay/xml/XmlParser$Node;

    invoke-virtual {p2}, Lorg/mortbay/xml/XmlParser$Node;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Call"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, p1, p2}, Lorg/mortbay/xml/XmlConfiguration;->a(Ljava/lang/Object;Lorg/mortbay/xml/XmlParser$Node;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_1
    const-string v1, "Get"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0, p1, p2}, Lorg/mortbay/xml/XmlConfiguration;->c(Ljava/lang/Object;Lorg/mortbay/xml/XmlParser$Node;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_2
    const-string v1, "New"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0, p1, p2}, Lorg/mortbay/xml/XmlConfiguration;->h(Ljava/lang/Object;Lorg/mortbay/xml/XmlParser$Node;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_3
    const-string v1, "Ref"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0, p1, p2}, Lorg/mortbay/xml/XmlConfiguration;->l(Ljava/lang/Object;Lorg/mortbay/xml/XmlParser$Node;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_4
    const-string v1, "Array"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p0, p1, p2}, Lorg/mortbay/xml/XmlConfiguration;->f(Ljava/lang/Object;Lorg/mortbay/xml/XmlParser$Node;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_5
    const-string v1, "Map"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p0, p1, p2}, Lorg/mortbay/xml/XmlConfiguration;->g(Ljava/lang/Object;Lorg/mortbay/xml/XmlParser$Node;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_6
    const-string v1, "Property"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {p0, p1, p2}, Lorg/mortbay/xml/XmlConfiguration;->j(Ljava/lang/Object;Lorg/mortbay/xml/XmlParser$Node;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_7
    const-string p0, "SystemProperty"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_8

    const-string p0, "name"

    invoke-virtual {p2, p0}, Lorg/mortbay/xml/XmlParser$Node;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "default"

    invoke-virtual {p2, p1}, Lorg/mortbay/xml/XmlParser$Node;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_8
    new-instance p0, Ljava/lang/StringBuffer;

    invoke-direct {p0}, Ljava/lang/StringBuffer;-><init>()V

    const-string p1, "Unknown value tag: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/Throwable;

    invoke-direct {p1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {p0, p1}, Lorg/mortbay/log/Log;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final f(Ljava/lang/Object;Lorg/mortbay/xml/XmlParser$Node;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    sget-object v0, Lorg/mortbay/xml/XmlConfiguration;->r:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "java.lang.Object"

    invoke-static {v0}, Lorg/mortbay/xml/XmlConfiguration;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/mortbay/xml/XmlConfiguration;->r:Ljava/lang/Class;

    :cond_0
    const-string v1, "type"

    invoke-virtual {p2, v1}, Lorg/mortbay/xml/XmlParser$Node;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "id"

    invoke-virtual {p2, v2}, Lorg/mortbay/xml/XmlParser$Node;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v1, :cond_5

    invoke-static {v1}, Lorg/mortbay/util/TypeUtil;->fromName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-nez v0, :cond_5

    const-string v0, "String"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lorg/mortbay/xml/XmlConfiguration;->s:Ljava/lang/Class;

    if-nez v0, :cond_5

    const-string v0, "java.lang.String"

    invoke-static {v0}, Lorg/mortbay/xml/XmlConfiguration;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/mortbay/xml/XmlConfiguration;->s:Ljava/lang/Class;

    goto :goto_0

    :cond_1
    const-string v0, "URL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lorg/mortbay/xml/XmlConfiguration;->t:Ljava/lang/Class;

    if-nez v0, :cond_5

    const-string v0, "java.net.URL"

    invoke-static {v0}, Lorg/mortbay/xml/XmlConfiguration;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/mortbay/xml/XmlConfiguration;->t:Ljava/lang/Class;

    goto :goto_0

    :cond_2
    const-string v0, "InetAddress"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lorg/mortbay/xml/XmlConfiguration;->u:Ljava/lang/Class;

    if-nez v0, :cond_5

    const-string v0, "java.net.InetAddress"

    invoke-static {v0}, Lorg/mortbay/xml/XmlConfiguration;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/mortbay/xml/XmlConfiguration;->u:Ljava/lang/Class;

    goto :goto_0

    :cond_3
    sget-object v0, Lorg/mortbay/xml/XmlConfiguration;->q:Ljava/lang/Class;

    if-nez v0, :cond_4

    const-string v0, "org.mortbay.xml.XmlConfiguration"

    invoke-static {v0}, Lorg/mortbay/xml/XmlConfiguration;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/mortbay/xml/XmlConfiguration;->q:Ljava/lang/Class;

    :cond_4
    const/4 v4, 0x1

    invoke-static {v0, v1, v4}, Lorg/mortbay/util/Loader;->loadClass(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/lang/Class;

    move-result-object v0

    :cond_5
    :goto_0
    const-string v1, "Item"

    invoke-virtual {p2, v1}, Lorg/mortbay/xml/XmlParser$Node;->iterator(Ljava/lang/String;)Ljava/util/Iterator;

    move-result-object p2

    const/4 v1, 0x0

    :cond_6
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/mortbay/xml/XmlParser$Node;

    invoke-virtual {v4, v2}, Lorg/mortbay/xml/XmlParser$Node;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, p1, v4}, Lorg/mortbay/xml/XmlConfiguration;->n(Ljava/lang/Object;Lorg/mortbay/xml/XmlParser$Node;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_7

    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v6

    if-eqz v6, :cond_7

    sget-object v6, Lorg/mortbay/xml/XmlConfiguration;->f:Ljava/lang/Integer;

    goto :goto_2

    :cond_7
    move-object v6, v4

    :goto_2
    invoke-static {v1, v6}, Lorg/mortbay/util/LazyList;->add(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v5, :cond_6

    iget-object v6, p0, Lorg/mortbay/xml/XmlConfiguration;->b:Ljava/util/Map;

    invoke-interface {v6, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_8
    invoke-static {v1, v0}, Lorg/mortbay/util/LazyList;->toArray(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    if-eqz v3, :cond_9

    iget-object p0, p0, Lorg/mortbay/xml/XmlConfiguration;->b:Ljava/util/Map;

    invoke-interface {p0, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    return-object p1
.end method

.method public final g(Ljava/lang/Object;Lorg/mortbay/xml/XmlParser$Node;)Ljava/lang/Object;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "id"

    invoke-virtual {p2, v0}, Lorg/mortbay/xml/XmlParser$Node;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    if-eqz v1, :cond_0

    iget-object v3, p0, Lorg/mortbay/xml/XmlConfiguration;->b:Ljava/util/Map;

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const/4 v1, 0x0

    move v3, v1

    :goto_0
    invoke-virtual {p2}, Lorg/mortbay/xml/XmlParser$Node;->size()I

    move-result v4

    if-ge v3, v4, :cond_a

    invoke-virtual {p2, v3}, Lorg/mortbay/xml/XmlParser$Node;->get(I)Ljava/lang/Object;

    move-result-object v4

    instance-of v5, v4, Ljava/lang/String;

    if-eqz v5, :cond_1

    goto :goto_3

    :cond_1
    check-cast v4, Lorg/mortbay/xml/XmlParser$Node;

    invoke-virtual {v4}, Lorg/mortbay/xml/XmlParser$Node;->getTag()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Entry"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    const/4 v5, 0x0

    move v7, v1

    move-object v6, v5

    :goto_1
    invoke-virtual {v4}, Lorg/mortbay/xml/XmlParser$Node;->size()I

    move-result v8

    if-ge v7, v8, :cond_5

    invoke-virtual {v4, v7}, Lorg/mortbay/xml/XmlParser$Node;->get(I)Ljava/lang/Object;

    move-result-object v8

    instance-of v9, v8, Ljava/lang/String;

    if-eqz v9, :cond_2

    goto :goto_2

    :cond_2
    check-cast v8, Lorg/mortbay/xml/XmlParser$Node;

    invoke-virtual {v8}, Lorg/mortbay/xml/XmlParser$Node;->getTag()Ljava/lang/String;

    move-result-object v9

    const-string v10, "Item"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    if-nez v5, :cond_3

    move-object v5, v8

    goto :goto_2

    :cond_3
    move-object v6, v8

    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Not an Item"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    if-eqz v5, :cond_8

    if-eqz v6, :cond_8

    invoke-virtual {v5, v0}, Lorg/mortbay/xml/XmlParser$Node;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v0}, Lorg/mortbay/xml/XmlParser$Node;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, p1, v5}, Lorg/mortbay/xml/XmlConfiguration;->n(Ljava/lang/Object;Lorg/mortbay/xml/XmlParser$Node;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p0, p1, v6}, Lorg/mortbay/xml/XmlConfiguration;->n(Ljava/lang/Object;Lorg/mortbay/xml/XmlParser$Node;)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v4, :cond_6

    iget-object v8, p0, Lorg/mortbay/xml/XmlConfiguration;->b:Ljava/util/Map;

    invoke-interface {v8, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    if-eqz v7, :cond_7

    iget-object v4, p0, Lorg/mortbay/xml/XmlConfiguration;->b:Ljava/util/Map;

    invoke-interface {v4, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_8
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Missing Item in Entry"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_9
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Not an Entry"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a
    return-object v2
.end method

.method public getIdMap()Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/xml/XmlConfiguration;->b:Ljava/util/Map;

    return-object p0
.end method

.method public getProperties()Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/xml/XmlConfiguration;->c:Ljava/util/Map;

    return-object p0
.end method

.method public final h(Ljava/lang/Object;Lorg/mortbay/xml/XmlParser$Node;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0, p2}, Lorg/mortbay/xml/XmlConfiguration;->i(Lorg/mortbay/xml/XmlParser$Node;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "id"

    invoke-virtual {p2, v1}, Lorg/mortbay/xml/XmlParser$Node;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lorg/mortbay/xml/XmlParser$Node;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :goto_0
    invoke-virtual {p2}, Lorg/mortbay/xml/XmlParser$Node;->size()I

    move-result v6

    if-ge v4, v6, :cond_2

    invoke-virtual {p2, v4}, Lorg/mortbay/xml/XmlParser$Node;->get(I)Ljava/lang/Object;

    move-result-object v6

    instance-of v7, v6, Ljava/lang/String;

    if-eqz v7, :cond_0

    goto :goto_1

    :cond_0
    check-cast v6, Lorg/mortbay/xml/XmlParser$Node;

    invoke-virtual {v6}, Lorg/mortbay/xml/XmlParser$Node;->getTag()Ljava/lang/String;

    move-result-object v6

    const-string v7, "Arg"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    move v2, v4

    goto :goto_2

    :cond_1
    add-int/lit8 v5, v5, 0x1

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    new-array v4, v5, [Ljava/lang/Object;

    move v6, v3

    move v7, v6

    :goto_3
    if-ge v6, v5, :cond_4

    invoke-virtual {p2, v7}, Lorg/mortbay/xml/XmlParser$Node;->get(I)Ljava/lang/Object;

    move-result-object v8

    instance-of v9, v8, Ljava/lang/String;

    if-eqz v9, :cond_3

    goto :goto_4

    :cond_3
    add-int/lit8 v9, v6, 0x1

    check-cast v8, Lorg/mortbay/xml/XmlParser$Node;

    invoke-virtual {p0, p1, v8}, Lorg/mortbay/xml/XmlConfiguration;->n(Ljava/lang/Object;Lorg/mortbay/xml/XmlParser$Node;)Ljava/lang/Object;

    move-result-object v8

    aput-object v8, v4, v6

    move v6, v9

    :goto_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_4
    invoke-static {}, Lorg/mortbay/log/Log;->isDebugEnabled()Z

    move-result v6

    if-eqz v6, :cond_5

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "XML new "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;)V

    :cond_5
    invoke-virtual {v0}, Ljava/lang/Class;->getConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v0

    move v6, v3

    :goto_5
    if-eqz v0, :cond_9

    array-length v7, v0

    if-ge v6, v7, :cond_9

    aget-object v7, v0, v6

    invoke-virtual {v7}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v7

    array-length v7, v7

    if-eq v7, v5, :cond_6

    goto :goto_8

    :cond_6
    :try_start_0
    aget-object v7, v0, v6

    invoke-virtual {v7, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v8, 0x1

    goto :goto_7

    :catch_0
    move-exception v7

    invoke-static {v7}, Lorg/mortbay/log/Log;->ignore(Ljava/lang/Throwable;)V

    goto :goto_6

    :catch_1
    move-exception v7

    invoke-static {v7}, Lorg/mortbay/log/Log;->ignore(Ljava/lang/Throwable;)V

    goto :goto_6

    :catch_2
    move-exception v7

    invoke-static {v7}, Lorg/mortbay/log/Log;->ignore(Ljava/lang/Throwable;)V

    :goto_6
    const/4 v7, 0x0

    move v8, v3

    :goto_7
    if-eqz v8, :cond_8

    if-eqz v1, :cond_7

    iget-object p1, p0, Lorg/mortbay/xml/XmlConfiguration;->b:Ljava/util/Map;

    invoke-interface {p1, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    invoke-virtual {p0, v7, p2, v2}, Lorg/mortbay/xml/XmlConfiguration;->b(Ljava/lang/Object;Lorg/mortbay/xml/XmlParser$Node;I)V

    return-object v7

    :cond_8
    :goto_8
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    :cond_9
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "No Constructor: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string p2, " on "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final i(Lorg/mortbay/xml/XmlParser$Node;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    const-string p0, "class"

    invoke-virtual {p1, p0}, Lorg/mortbay/xml/XmlParser$Node;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object p1, Lorg/mortbay/xml/XmlConfiguration;->q:Ljava/lang/Class;

    if-nez p1, :cond_1

    const-string p1, "org.mortbay.xml.XmlConfiguration"

    invoke-static {p1}, Lorg/mortbay/xml/XmlConfiguration;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    sput-object p1, Lorg/mortbay/xml/XmlConfiguration;->q:Ljava/lang/Class;

    :cond_1
    const/4 v0, 0x1

    invoke-static {p1, p0, v0}, Lorg/mortbay/util/Loader;->loadClass(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public final j(Ljava/lang/Object;Lorg/mortbay/xml/XmlParser$Node;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string p1, "id"

    invoke-virtual {p2, p1}, Lorg/mortbay/xml/XmlParser$Node;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "name"

    invoke-virtual {p2, v0}, Lorg/mortbay/xml/XmlParser$Node;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "default"

    invoke-virtual {p2, v1}, Lorg/mortbay/xml/XmlParser$Node;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/mortbay/xml/XmlConfiguration;->c:Ljava/util/Map;

    if-eqz v2, :cond_0

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v1, p0, Lorg/mortbay/xml/XmlConfiguration;->c:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz p1, :cond_2

    iget-object v0, p0, Lorg/mortbay/xml/XmlConfiguration;->b:Ljava/util/Map;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    if-eqz v1, :cond_3

    const/4 p1, 0x0

    invoke-virtual {p0, v1, p2, p1}, Lorg/mortbay/xml/XmlConfiguration;->b(Ljava/lang/Object;Lorg/mortbay/xml/XmlParser$Node;I)V

    :cond_3
    return-object v1
.end method

.method public final k(Ljava/lang/Object;Lorg/mortbay/xml/XmlParser$Node;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    instance-of v0, p1, Ljava/util/Map;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Ljava/util/Map;

    const-string v1, "name"

    invoke-virtual {p2, v1}, Lorg/mortbay/xml/XmlParser$Node;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, p2}, Lorg/mortbay/xml/XmlConfiguration;->n(Ljava/lang/Object;Lorg/mortbay/xml/XmlParser$Node;)Ljava/lang/Object;

    move-result-object p0

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lorg/mortbay/log/Log;->isDebugEnabled()Z

    move-result p2

    if-eqz p2, :cond_0

    new-instance p2, Ljava/lang/StringBuffer;

    invoke-direct {p2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v0, "XML "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string p1, ".put("

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, ","

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string p0, ")"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuffer;

    invoke-direct {p2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v0, "Object for put is not a Map: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final l(Ljava/lang/Object;Lorg/mortbay/xml/XmlParser$Node;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string p1, "id"

    invoke-virtual {p2, p1}, Lorg/mortbay/xml/XmlParser$Node;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lorg/mortbay/xml/XmlConfiguration;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, v0, p2, p1}, Lorg/mortbay/xml/XmlConfiguration;->b(Ljava/lang/Object;Lorg/mortbay/xml/XmlParser$Node;I)V

    return-object v0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuffer;

    invoke-direct {p2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v0, "No object for id="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final m(Ljava/lang/Object;Lorg/mortbay/xml/XmlParser$Node;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "name"

    invoke-virtual {p2, v0}, Lorg/mortbay/xml/XmlParser$Node;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "set"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, p2}, Lorg/mortbay/xml/XmlConfiguration;->n(Ljava/lang/Object;Lorg/mortbay/xml/XmlParser$Node;)Ljava/lang/Object;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p0, p2}, Lorg/mortbay/xml/XmlConfiguration;->i(Lorg/mortbay/xml/XmlParser$Node;)Ljava/lang/Class;

    move-result-object p0

    const/4 p2, 0x0

    if-eqz p0, :cond_0

    move-object p1, p2

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    :goto_0
    new-array v6, v3, [Ljava/lang/Class;

    sget-object v7, Lorg/mortbay/xml/XmlConfiguration;->r:Ljava/lang/Class;

    if-nez v7, :cond_1

    const-string v7, "java.lang.Object"

    invoke-static {v7}, Lorg/mortbay/xml/XmlConfiguration;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    sput-object v7, Lorg/mortbay/xml/XmlConfiguration;->r:Ljava/lang/Class;

    :cond_1
    aput-object v7, v6, v2

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    aput-object v7, v6, v2

    :cond_2
    invoke-static {}, Lorg/mortbay/log/Log;->isDebugEnabled()Z

    move-result v7

    const-string v8, ")"

    const-string v9, "("

    const-string v10, "."

    if-eqz v7, :cond_4

    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    const-string v11, "XML "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    :goto_1
    invoke-virtual {v7, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;)V

    :cond_4
    :try_start_0
    invoke-virtual {p0, v1, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    invoke-virtual {v7, p1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v7

    invoke-static {v7}, Lorg/mortbay/log/Log;->ignore(Ljava/lang/Throwable;)V

    goto :goto_2

    :catch_1
    move-exception v7

    invoke-static {v7}, Lorg/mortbay/log/Log;->ignore(Ljava/lang/Throwable;)V

    goto :goto_2

    :catch_2
    move-exception v7

    invoke-static {v7}, Lorg/mortbay/log/Log;->ignore(Ljava/lang/Throwable;)V

    :goto_2
    :try_start_1
    aget-object v7, v6, v2

    const-string v11, "TYPE"

    invoke-virtual {v7, v11}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Class;

    aput-object v7, v6, v2

    invoke-virtual {p0, v1, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    invoke-virtual {v7, p1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_3

    return-void

    :catch_3
    move-exception v7

    invoke-static {v7}, Lorg/mortbay/log/Log;->ignore(Ljava/lang/Throwable;)V

    goto :goto_3

    :catch_4
    move-exception v7

    invoke-static {v7}, Lorg/mortbay/log/Log;->ignore(Ljava/lang/Throwable;)V

    goto :goto_3

    :catch_5
    move-exception v7

    invoke-static {v7}, Lorg/mortbay/log/Log;->ignore(Ljava/lang/Throwable;)V

    goto :goto_3

    :catch_6
    move-exception v7

    invoke-static {v7}, Lorg/mortbay/log/Log;->ignore(Ljava/lang/Throwable;)V

    :goto_3
    :try_start_2
    invoke-virtual {p0, v0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v7

    invoke-static {v7}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-virtual {v0, p1, v4}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/NoSuchFieldException; {:try_start_2 .. :try_end_2} :catch_7

    return-void

    :catch_7
    move-exception v0

    invoke-static {v0}, Lorg/mortbay/log/Log;->ignore(Ljava/lang/Throwable;)V

    :cond_5
    invoke-virtual {p0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    move v4, v2

    :goto_4
    if-eqz v0, :cond_7

    array-length v7, v0

    if-ge v4, v7, :cond_7

    aget-object v7, v0, v4

    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    aget-object v7, v0, v4

    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v7

    array-length v7, v7

    if-ne v7, v3, :cond_6

    :try_start_3
    aget-object p2, v0, v4

    invoke-virtual {p2, p1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_9
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_8

    return-void

    :catch_8
    move-exception v7

    invoke-static {v7}, Lorg/mortbay/log/Log;->ignore(Ljava/lang/Throwable;)V

    goto :goto_5

    :catch_9
    move-exception v7

    invoke-static {v7}, Lorg/mortbay/log/Log;->ignore(Ljava/lang/Throwable;)V

    :cond_6
    :goto_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_7
    if-eqz p2, :cond_a

    :try_start_4
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    aget-object v0, v0, v2

    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v3

    if-eqz v3, :cond_9

    move v3, v2

    :goto_6
    sget-object v4, Lorg/mortbay/xml/XmlConfiguration;->d:[Ljava/lang/Class;

    array-length v7, v4

    if-ge v3, v7, :cond_9

    aget-object v4, v4, v3

    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    sget-object v0, Lorg/mortbay/xml/XmlConfiguration;->e:[Ljava/lang/Class;

    aget-object v0, v0, v3

    goto :goto_7

    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_9
    :goto_7
    invoke-virtual {v0, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v5, v2

    invoke-virtual {p2, p1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4 .. :try_end_4} :catch_c
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_4} :catch_b
    .catch Ljava/lang/InstantiationException; {:try_start_4 .. :try_end_4} :catch_a

    return-void

    :catch_a
    move-exception p1

    invoke-static {p1}, Lorg/mortbay/log/Log;->ignore(Ljava/lang/Throwable;)V

    goto :goto_8

    :catch_b
    move-exception p1

    invoke-static {p1}, Lorg/mortbay/log/Log;->ignore(Ljava/lang/Throwable;)V

    goto :goto_8

    :catch_c
    move-exception p1

    invoke-static {p1}, Lorg/mortbay/log/Log;->ignore(Ljava/lang/Throwable;)V

    :cond_a
    :goto_8
    new-instance p1, Ljava/lang/NoSuchMethodException;

    new-instance p2, Ljava/lang/StringBuffer;

    invoke-direct {p2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {p2, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    aget-object p0, v6, v2

    invoke-virtual {p2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {p2, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final n(Ljava/lang/Object;Lorg/mortbay/xml/XmlParser$Node;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "type"

    invoke-virtual {p2, v0}, Lorg/mortbay/xml/XmlParser$Node;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ref"

    invoke-virtual {p2, v1}, Lorg/mortbay/xml/XmlParser$Node;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object p0, p0, Lorg/mortbay/xml/XmlConfiguration;->b:Ljava/util/Map;

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    goto/16 :goto_4

    :cond_0
    invoke-virtual {p2}, Lorg/mortbay/xml/XmlParser$Node;->size()I

    move-result v1

    if-nez v1, :cond_2

    const-string p0, "String"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, ""

    return-object p0

    :cond_1
    return-object v2

    :cond_2
    invoke-virtual {p2}, Lorg/mortbay/xml/XmlParser$Node;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_3

    const-string v4, "String"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a

    :cond_3
    :goto_0
    if-gt v3, v1, :cond_6

    invoke-virtual {p2, v3}, Lorg/mortbay/xml/XmlParser$Node;->get(I)Ljava/lang/Object;

    move-result-object v4

    instance-of v5, v4, Ljava/lang/String;

    if-nez v5, :cond_4

    goto :goto_1

    :cond_4
    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_5

    goto :goto_1

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_6
    :goto_1
    if-ge v3, v1, :cond_9

    invoke-virtual {p2, v1}, Lorg/mortbay/xml/XmlParser$Node;->get(I)Ljava/lang/Object;

    move-result-object v4

    instance-of v5, v4, Ljava/lang/String;

    if-nez v5, :cond_7

    goto :goto_2

    :cond_7
    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_8

    goto :goto_2

    :cond_8
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_9
    :goto_2
    if-le v3, v1, :cond_a

    return-object v2

    :cond_a
    if-ne v3, v1, :cond_b

    invoke-virtual {p2, v3}, Lorg/mortbay/xml/XmlParser$Node;->get(I)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/mortbay/xml/XmlConfiguration;->e(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_4

    :cond_b
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    monitor-enter v4

    :goto_3
    if-gt v3, v1, :cond_c

    :try_start_0
    invoke-virtual {p2, v3}, Lorg/mortbay/xml/XmlParser$Node;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p0, p1, v5}, Lorg/mortbay/xml/XmlConfiguration;->e(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_c
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_4
    if-nez p0, :cond_e

    const-string p0, "String"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_d

    const-string p0, ""

    return-object p0

    :cond_d
    return-object v2

    :cond_e
    if-nez v0, :cond_10

    instance-of p1, p0, Ljava/lang/String;

    if-eqz p1, :cond_f

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    :cond_f
    return-object p0

    :cond_10
    const-string p1, "String"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_19

    const-string p1, "java.lang.String"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_11

    goto/16 :goto_7

    :cond_11
    invoke-static {v0}, Lorg/mortbay/util/TypeUtil;->fromName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    if-eqz p1, :cond_12

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lorg/mortbay/util/TypeUtil;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_12
    const-string p1, "URL"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_17

    const-string p1, "java.net.URL"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_13

    goto :goto_6

    :cond_13
    const-string p1, "InetAddress"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_15

    const-string p1, "java.net.InetAddress"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_14

    goto :goto_5

    :cond_14
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    const-string p2, "Unknown type "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_15
    :goto_5
    instance-of p1, p0, Ljava/net/InetAddress;

    if-eqz p1, :cond_16

    return-object p0

    :cond_16
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object p0
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/reflect/InvocationTargetException;

    invoke-direct {p1, p0}, Ljava/lang/reflect/InvocationTargetException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_17
    :goto_6
    instance-of p1, p0, Ljava/net/URL;

    if-eqz p1, :cond_18

    return-object p0

    :cond_18
    :try_start_2
    new-instance p1, Ljava/net/URL;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_1

    return-object p1

    :catch_1
    move-exception p0

    new-instance p1, Ljava/lang/reflect/InvocationTargetException;

    invoke-direct {p1, p0}, Ljava/lang/reflect/InvocationTargetException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_19
    :goto_7
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method

.method public setIdMap(Ljava/util/Map;)V
    .locals 0

    iput-object p1, p0, Lorg/mortbay/xml/XmlConfiguration;->b:Ljava/util/Map;

    return-void
.end method

.method public setProperties(Ljava/util/Map;)V
    .locals 0

    iput-object p1, p0, Lorg/mortbay/xml/XmlConfiguration;->c:Ljava/util/Map;

    return-void
.end method
