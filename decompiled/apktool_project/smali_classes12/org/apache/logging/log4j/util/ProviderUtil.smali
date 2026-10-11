.class public final Lorg/apache/logging/log4j/util/ProviderUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field protected static final PROVIDERS:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lorg/apache/logging/log4j/spi/Provider;",
            ">;"
        }
    .end annotation
.end field

.field protected static final PROVIDER_RESOURCE:Ljava/lang/String; = "META-INF/log4j-provider.properties"

.field protected static final STARTUP_LOCK:Ljava/util/concurrent/locks/Lock;

.field public static final a:Ljava/lang/String; = "Log4jAPIVersion"

.field public static final b:[Ljava/lang/String;

.field public static final c:Lorg/apache/logging/log4j/Logger;

.field public static volatile d:Lorg/apache/logging/log4j/util/ProviderUtil;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lorg/apache/logging/log4j/util/ProviderUtil;->PROVIDERS:Ljava/util/Collection;

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    sput-object v0, Lorg/apache/logging/log4j/util/ProviderUtil;->STARTUP_LOCK:Ljava/util/concurrent/locks/Lock;

    const-string v0, "2.6.0"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/logging/log4j/util/ProviderUtil;->b:[Ljava/lang/String;

    invoke-static {}, Lorg/apache/logging/log4j/status/StatusLogger;->getLogger()Lorg/apache/logging/log4j/status/StatusLogger;

    move-result-object v0

    sput-object v0, Lorg/apache/logging/log4j/util/ProviderUtil;->c:Lorg/apache/logging/log4j/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lorg/apache/logging/log4j/util/LoaderUtil;->getClassLoaders()[Ljava/lang/ClassLoader;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p0, v1

    :try_start_0
    invoke-static {v2}, Lorg/apache/logging/log4j/util/ProviderUtil;->loadProviders(Ljava/lang/ClassLoader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v3

    sget-object v4, Lorg/apache/logging/log4j/util/ProviderUtil;->c:Lorg/apache/logging/log4j/Logger;

    const-string v5, "Unable to retrieve provider from ClassLoader {}"

    invoke-interface {v4, v5, v2, v3}, Lorg/apache/logging/log4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const-string p0, "META-INF/log4j-provider.properties"

    invoke-static {p0}, Lorg/apache/logging/log4j/util/LoaderUtil;->c(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/util/LoaderUtil$c;

    invoke-virtual {v0}, Lorg/apache/logging/log4j/util/LoaderUtil$c;->b()Ljava/net/URL;

    move-result-object v1

    invoke-virtual {v0}, Lorg/apache/logging/log4j/util/LoaderUtil$c;->a()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {v1, v0}, Lorg/apache/logging/log4j/util/ProviderUtil;->loadProvider(Ljava/net/URL;Ljava/lang/ClassLoader;)V

    goto :goto_2

    :cond_1
    return-void
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "version"
        }
    .end annotation

    sget-object v0, Lorg/apache/logging/log4j/util/ProviderUtil;->b:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    invoke-virtual {p0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public static addProvider(Lorg/apache/logging/log4j/spi/Provider;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "provider"
        }
    .end annotation

    sget-object v0, Lorg/apache/logging/log4j/util/ProviderUtil;->PROVIDERS:Ljava/util/Collection;

    invoke-interface {v0, p0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/apache/logging/log4j/util/ProviderUtil;->c:Lorg/apache/logging/log4j/Logger;

    const-string v1, "Loaded Provider {}"

    invoke-interface {v0, v1, p0}, Lorg/apache/logging/log4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static findClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    invoke-static {}, Lorg/apache/logging/log4j/util/LoaderUtil;->getThreadContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method

.method public static getProviders()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Lorg/apache/logging/log4j/spi/Provider;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lorg/apache/logging/log4j/util/ProviderUtil;->lazyInit()V

    sget-object v0, Lorg/apache/logging/log4j/util/ProviderUtil;->PROVIDERS:Ljava/util/Collection;

    return-object v0
.end method

.method public static hasProviders()Z
    .locals 1

    invoke-static {}, Lorg/apache/logging/log4j/util/ProviderUtil;->lazyInit()V

    sget-object v0, Lorg/apache/logging/log4j/util/ProviderUtil;->PROVIDERS:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static lazyInit()V
    .locals 3

    sget-object v0, Lorg/apache/logging/log4j/util/ProviderUtil;->d:Lorg/apache/logging/log4j/util/ProviderUtil;

    if-nez v0, :cond_1

    :try_start_0
    sget-object v0, Lorg/apache/logging/log4j/util/ProviderUtil;->STARTUP_LOCK:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lockInterruptibly()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    sget-object v1, Lorg/apache/logging/log4j/util/ProviderUtil;->d:Lorg/apache/logging/log4j/util/ProviderUtil;

    if-nez v1, :cond_0

    new-instance v1, Lorg/apache/logging/log4j/util/ProviderUtil;

    invoke-direct {v1}, Lorg/apache/logging/log4j/util/ProviderUtil;-><init>()V

    sput-object v1, Lorg/apache/logging/log4j/util/ProviderUtil;->d:Lorg/apache/logging/log4j/util/ProviderUtil;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :try_start_2
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    sget-object v1, Lorg/apache/logging/log4j/util/ProviderUtil;->STARTUP_LOCK:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    sget-object v1, Lorg/apache/logging/log4j/util/ProviderUtil;->c:Lorg/apache/logging/log4j/Logger;

    const-string v2, "Interrupted before Log4j Providers could be loaded."

    invoke-interface {v1, v2, v0}, Lorg/apache/logging/log4j/Logger;->fatal(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_1
    :goto_0
    return-void
.end method

.method public static loadProvider(Ljava/net/URL;Ljava/lang/ClassLoader;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "url",
            "cl"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0, p0}, Lorg/apache/logging/log4j/util/PropertiesUtil;->b(Ljava/io/InputStream;Ljava/lang/Object;)Ljava/util/Properties;

    move-result-object v0

    const-string v1, "Log4jAPIVersion"

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/logging/log4j/util/ProviderUtil;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lorg/apache/logging/log4j/spi/Provider;

    invoke-direct {v1, v0, p0, p1}, Lorg/apache/logging/log4j/spi/Provider;-><init>(Ljava/util/Properties;Ljava/net/URL;Ljava/lang/ClassLoader;)V

    sget-object p1, Lorg/apache/logging/log4j/util/ProviderUtil;->PROVIDERS:Ljava/util/Collection;

    invoke-interface {p1, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    sget-object p1, Lorg/apache/logging/log4j/util/ProviderUtil;->c:Lorg/apache/logging/log4j/Logger;

    const-string v0, "Loaded Provider {}"

    invoke-interface {p1, v0, v1}, Lorg/apache/logging/log4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    sget-object v0, Lorg/apache/logging/log4j/util/ProviderUtil;->c:Lorg/apache/logging/log4j/Logger;

    const-string v1, "Unable to open {}"

    invoke-interface {v0, v1, p0, p1}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public static loadProviders(Ljava/lang/ClassLoader;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "classLoader"
        }
    .end annotation

    .line 1
    const-class v0, Lorg/apache/logging/log4j/spi/Provider;

    invoke-static {v0, p0}, Ljava/util/ServiceLoader;->load(Ljava/lang/Class;Ljava/lang/ClassLoader;)Ljava/util/ServiceLoader;

    move-result-object p0

    .line 2
    invoke-virtual {p0}, Ljava/util/ServiceLoader;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/spi/Provider;

    .line 3
    invoke-virtual {v0}, Lorg/apache/logging/log4j/spi/Provider;->getVersions()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/logging/log4j/util/ProviderUtil;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lorg/apache/logging/log4j/util/ProviderUtil;->PROVIDERS:Ljava/util/Collection;

    invoke-interface {v1, v0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 4
    invoke-interface {v1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static loadProviders(Ljava/util/Enumeration;Ljava/lang/ClassLoader;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "urls",
            "cl"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Enumeration<",
            "Ljava/net/URL;",
            ">;",
            "Ljava/lang/ClassLoader;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p0, :cond_0

    .line 5
    :goto_0
    invoke-interface {p0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    invoke-interface {p0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/URL;

    invoke-static {v0, p1}, Lorg/apache/logging/log4j/util/ProviderUtil;->loadProvider(Ljava/net/URL;Ljava/lang/ClassLoader;)V

    goto :goto_0

    :cond_0
    return-void
.end method
