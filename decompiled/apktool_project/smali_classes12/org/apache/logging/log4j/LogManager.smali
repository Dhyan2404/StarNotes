.class public Lorg/apache/logging/log4j/LogManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final FACTORY_PROPERTY_NAME:Ljava/lang/String; = "log4j2.loggerContextFactory"

.field public static final ROOT_LOGGER_NAME:Ljava/lang/String; = ""

.field public static final a:Lorg/apache/logging/log4j/Logger;

.field public static final b:Ljava/lang/String;

.field public static volatile c:Lorg/apache/logging/log4j/spi/LoggerContextFactory;


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    invoke-static {}, Lorg/apache/logging/log4j/status/StatusLogger;->getLogger()Lorg/apache/logging/log4j/status/StatusLogger;

    move-result-object v0

    sput-object v0, Lorg/apache/logging/log4j/LogManager;->a:Lorg/apache/logging/log4j/Logger;

    const-class v0, Lorg/apache/logging/log4j/LogManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/logging/log4j/LogManager;->b:Ljava/lang/String;

    invoke-static {}, Lorg/apache/logging/log4j/util/PropertiesUtil;->getProperties()Lorg/apache/logging/log4j/util/PropertiesUtil;

    move-result-object v0

    const-string v1, "log4j2.loggerContextFactory"

    invoke-virtual {v0, v1}, Lorg/apache/logging/log4j/util/PropertiesUtil;->getStringProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    const-class v1, Lorg/apache/logging/log4j/spi/LoggerContextFactory;

    invoke-static {v0, v1}, Lorg/apache/logging/log4j/util/LoaderUtil;->newCheckedInstanceOf(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/logging/log4j/spi/LoggerContextFactory;

    sput-object v1, Lorg/apache/logging/log4j/LogManager;->c:Lorg/apache/logging/log4j/spi/LoggerContextFactory;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-object v2, Lorg/apache/logging/log4j/LogManager;->a:Lorg/apache/logging/log4j/Logger;

    const-string v3, "Unable to create configured LoggerContextFactory {}"

    invoke-interface {v2, v3, v0, v1}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :catch_1
    sget-object v1, Lorg/apache/logging/log4j/LogManager;->a:Lorg/apache/logging/log4j/Logger;

    const-string v2, "Unable to locate configured LoggerContextFactory {}"

    invoke-interface {v1, v2, v0}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    :goto_0
    sget-object v0, Lorg/apache/logging/log4j/LogManager;->c:Lorg/apache/logging/log4j/spi/LoggerContextFactory;

    if-nez v0, :cond_7

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    invoke-static {}, Lorg/apache/logging/log4j/util/ProviderUtil;->hasProviders()Z

    move-result v1

    const/4 v2, 0x1

    const-string v3, "Log4j2 could not find a logging implementation. Please add log4j-core to the classpath. Using SimpleLogger to log to the console..."

    if-eqz v1, :cond_6

    invoke-static {}, Lorg/apache/logging/log4j/util/ProviderUtil;->getProviders()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/logging/log4j/spi/Provider;

    invoke-virtual {v4}, Lorg/apache/logging/log4j/spi/Provider;->loadLoggerContextFactory()Ljava/lang/Class;

    move-result-object v5

    if-eqz v5, :cond_1

    :try_start_1
    invoke-virtual {v4}, Lorg/apache/logging/log4j/spi/Provider;->getPriority()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    :catch_2
    move-exception v6

    sget-object v7, Lorg/apache/logging/log4j/LogManager;->a:Lorg/apache/logging/log4j/Logger;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Lorg/apache/logging/log4j/spi/Provider;->getUrl()Ljava/net/URL;

    move-result-object v4

    const-string v8, "Unable to create class {} specified in provider URL {}"

    invoke-interface {v7, v8, v5, v4, v6}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v0, Lorg/apache/logging/log4j/LogManager;->a:Lorg/apache/logging/log4j/Logger;

    invoke-interface {v0, v3}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;)V

    new-instance v0, Lorg/apache/logging/log4j/simple/SimpleLoggerContextFactory;

    invoke-direct {v0}, Lorg/apache/logging/log4j/simple/SimpleLoggerContextFactory;-><init>()V

    sput-object v0, Lorg/apache/logging/log4j/LogManager;->c:Lorg/apache/logging/log4j/spi/LoggerContextFactory;

    goto/16 :goto_3

    :cond_3
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    if-ne v1, v2, :cond_4

    invoke-interface {v0}, Ljava/util/SortedMap;->lastKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/spi/LoggerContextFactory;

    sput-object v0, Lorg/apache/logging/log4j/LogManager;->c:Lorg/apache/logging/log4j/spi/LoggerContextFactory;

    goto :goto_3

    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Multiple logging implementations found: \n"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/SortedMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    const-string v5, "Factory: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/logging/log4j/spi/LoggerContextFactory;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", Weighting: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v4, 0xa

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_5
    invoke-interface {v0}, Ljava/util/SortedMap;->lastKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/spi/LoggerContextFactory;

    sput-object v0, Lorg/apache/logging/log4j/LogManager;->c:Lorg/apache/logging/log4j/spi/LoggerContextFactory;

    const-string v0, "Using factory: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lorg/apache/logging/log4j/LogManager;->c:Lorg/apache/logging/log4j/spi/LoggerContextFactory;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lorg/apache/logging/log4j/LogManager;->a:Lorg/apache/logging/log4j/Logger;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/logging/log4j/Logger;->warn(Ljava/lang/String;)V

    goto :goto_3

    :cond_6
    sget-object v0, Lorg/apache/logging/log4j/LogManager;->a:Lorg/apache/logging/log4j/Logger;

    invoke-interface {v0, v3}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;)V

    new-instance v0, Lorg/apache/logging/log4j/simple/SimpleLoggerContextFactory;

    invoke-direct {v0}, Lorg/apache/logging/log4j/simple/SimpleLoggerContextFactory;-><init>()V

    sput-object v0, Lorg/apache/logging/log4j/LogManager;->c:Lorg/apache/logging/log4j/spi/LoggerContextFactory;

    :goto_3
    invoke-static {v2}, Lorg/apache/logging/log4j/internal/LogManagerStatus;->setInitialized(Z)V

    :cond_7
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "clazz"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const/4 p0, 0x3

    invoke-static {p0}, Lorg/apache/logging/log4j/util/StackLocatorUtil;->getCallerClass(I)Ljava/lang/Class;

    move-result-object p0

    if-eqz p0, :cond_1

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "No class provided, and an appropriate one cannot be found."

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static exists(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "name"
        }
    .end annotation

    invoke-static {}, Lorg/apache/logging/log4j/LogManager;->getContext()Lorg/apache/logging/log4j/spi/LoggerContext;

    move-result-object v0

    invoke-interface {v0, p0}, Lorg/apache/logging/log4j/spi/LoggerContext;->hasLogger(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static getContext()Lorg/apache/logging/log4j/spi/LoggerContext;
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1
    :try_start_0
    sget-object v2, Lorg/apache/logging/log4j/LogManager;->c:Lorg/apache/logging/log4j/spi/LoggerContextFactory;

    sget-object v3, Lorg/apache/logging/log4j/LogManager;->b:Ljava/lang/String;

    invoke-interface {v2, v3, v1, v1, v0}, Lorg/apache/logging/log4j/spi/LoggerContextFactory;->getContext(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/Object;Z)Lorg/apache/logging/log4j/spi/LoggerContext;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v2

    .line 2
    sget-object v3, Lorg/apache/logging/log4j/LogManager;->a:Lorg/apache/logging/log4j/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " Using SimpleLogger"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Lorg/apache/logging/log4j/Logger;->warn(Ljava/lang/String;)V

    .line 3
    new-instance v2, Lorg/apache/logging/log4j/simple/SimpleLoggerContextFactory;

    invoke-direct {v2}, Lorg/apache/logging/log4j/simple/SimpleLoggerContextFactory;-><init>()V

    sget-object v3, Lorg/apache/logging/log4j/LogManager;->b:Ljava/lang/String;

    invoke-virtual {v2, v3, v1, v1, v0}, Lorg/apache/logging/log4j/simple/SimpleLoggerContextFactory;->getContext(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/Object;Z)Lorg/apache/logging/log4j/spi/LoggerContext;

    move-result-object v0

    return-object v0
.end method

.method public static getContext(Ljava/lang/ClassLoader;Z)Lorg/apache/logging/log4j/spi/LoggerContext;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "loader",
            "currentContext"
        }
    .end annotation

    const/4 v0, 0x0

    .line 7
    :try_start_0
    sget-object v1, Lorg/apache/logging/log4j/LogManager;->c:Lorg/apache/logging/log4j/spi/LoggerContextFactory;

    sget-object v2, Lorg/apache/logging/log4j/LogManager;->b:Ljava/lang/String;

    invoke-interface {v1, v2, p0, v0, p1}, Lorg/apache/logging/log4j/spi/LoggerContextFactory;->getContext(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/Object;Z)Lorg/apache/logging/log4j/spi/LoggerContext;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v1

    .line 8
    sget-object v2, Lorg/apache/logging/log4j/LogManager;->a:Lorg/apache/logging/log4j/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " Using SimpleLogger"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Lorg/apache/logging/log4j/Logger;->warn(Ljava/lang/String;)V

    .line 9
    new-instance v1, Lorg/apache/logging/log4j/simple/SimpleLoggerContextFactory;

    invoke-direct {v1}, Lorg/apache/logging/log4j/simple/SimpleLoggerContextFactory;-><init>()V

    sget-object v2, Lorg/apache/logging/log4j/LogManager;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, p0, v0, p1}, Lorg/apache/logging/log4j/simple/SimpleLoggerContextFactory;->getContext(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/Object;Z)Lorg/apache/logging/log4j/spi/LoggerContext;

    move-result-object p0

    return-object p0
.end method

.method public static getContext(Ljava/lang/ClassLoader;ZLjava/lang/Object;)Lorg/apache/logging/log4j/spi/LoggerContext;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "loader",
            "currentContext",
            "externalContext"
        }
    .end annotation

    .line 10
    :try_start_0
    sget-object v0, Lorg/apache/logging/log4j/LogManager;->c:Lorg/apache/logging/log4j/spi/LoggerContextFactory;

    sget-object v1, Lorg/apache/logging/log4j/LogManager;->b:Ljava/lang/String;

    invoke-interface {v0, v1, p0, p2, p1}, Lorg/apache/logging/log4j/spi/LoggerContextFactory;->getContext(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/Object;Z)Lorg/apache/logging/log4j/spi/LoggerContext;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    .line 11
    sget-object v1, Lorg/apache/logging/log4j/LogManager;->a:Lorg/apache/logging/log4j/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " Using SimpleLogger"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lorg/apache/logging/log4j/Logger;->warn(Ljava/lang/String;)V

    .line 12
    new-instance v0, Lorg/apache/logging/log4j/simple/SimpleLoggerContextFactory;

    invoke-direct {v0}, Lorg/apache/logging/log4j/simple/SimpleLoggerContextFactory;-><init>()V

    sget-object v1, Lorg/apache/logging/log4j/LogManager;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, p0, p2, p1}, Lorg/apache/logging/log4j/simple/SimpleLoggerContextFactory;->getContext(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/Object;Z)Lorg/apache/logging/log4j/spi/LoggerContext;

    move-result-object p0

    return-object p0
.end method

.method public static getContext(Ljava/lang/ClassLoader;ZLjava/lang/Object;Ljava/net/URI;)Lorg/apache/logging/log4j/spi/LoggerContext;
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "loader",
            "currentContext",
            "externalContext",
            "configLocation"
        }
    .end annotation

    .line 16
    :try_start_0
    sget-object v0, Lorg/apache/logging/log4j/LogManager;->c:Lorg/apache/logging/log4j/spi/LoggerContextFactory;

    sget-object v1, Lorg/apache/logging/log4j/LogManager;->b:Ljava/lang/String;

    const/4 v6, 0x0

    move-object v2, p0

    move-object v3, p2

    move v4, p1

    move-object v5, p3

    invoke-interface/range {v0 .. v6}, Lorg/apache/logging/log4j/spi/LoggerContextFactory;->getContext(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/Object;ZLjava/net/URI;Ljava/lang/String;)Lorg/apache/logging/log4j/spi/LoggerContext;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    .line 17
    sget-object v1, Lorg/apache/logging/log4j/LogManager;->a:Lorg/apache/logging/log4j/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " Using SimpleLogger"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lorg/apache/logging/log4j/Logger;->warn(Ljava/lang/String;)V

    .line 18
    new-instance v2, Lorg/apache/logging/log4j/simple/SimpleLoggerContextFactory;

    invoke-direct {v2}, Lorg/apache/logging/log4j/simple/SimpleLoggerContextFactory;-><init>()V

    sget-object v3, Lorg/apache/logging/log4j/LogManager;->b:Ljava/lang/String;

    const/4 v8, 0x0

    move-object v4, p0

    move-object v5, p2

    move v6, p1

    move-object v7, p3

    invoke-virtual/range {v2 .. v8}, Lorg/apache/logging/log4j/simple/SimpleLoggerContextFactory;->getContext(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/Object;ZLjava/net/URI;Ljava/lang/String;)Lorg/apache/logging/log4j/spi/LoggerContext;

    move-result-object p0

    return-object p0
.end method

.method public static getContext(Ljava/lang/ClassLoader;ZLjava/lang/Object;Ljava/net/URI;Ljava/lang/String;)Lorg/apache/logging/log4j/spi/LoggerContext;
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "loader",
            "currentContext",
            "externalContext",
            "configLocation",
            "name"
        }
    .end annotation

    .line 19
    :try_start_0
    sget-object v0, Lorg/apache/logging/log4j/LogManager;->c:Lorg/apache/logging/log4j/spi/LoggerContextFactory;

    sget-object v1, Lorg/apache/logging/log4j/LogManager;->b:Ljava/lang/String;

    move-object v2, p0

    move-object v3, p2

    move v4, p1

    move-object v5, p3

    move-object v6, p4

    invoke-interface/range {v0 .. v6}, Lorg/apache/logging/log4j/spi/LoggerContextFactory;->getContext(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/Object;ZLjava/net/URI;Ljava/lang/String;)Lorg/apache/logging/log4j/spi/LoggerContext;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    .line 20
    sget-object v1, Lorg/apache/logging/log4j/LogManager;->a:Lorg/apache/logging/log4j/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " Using SimpleLogger"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lorg/apache/logging/log4j/Logger;->warn(Ljava/lang/String;)V

    .line 21
    new-instance v2, Lorg/apache/logging/log4j/simple/SimpleLoggerContextFactory;

    invoke-direct {v2}, Lorg/apache/logging/log4j/simple/SimpleLoggerContextFactory;-><init>()V

    sget-object v3, Lorg/apache/logging/log4j/LogManager;->b:Ljava/lang/String;

    move-object v4, p0

    move-object v5, p2

    move v6, p1

    move-object v7, p3

    move-object v8, p4

    invoke-virtual/range {v2 .. v8}, Lorg/apache/logging/log4j/simple/SimpleLoggerContextFactory;->getContext(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/Object;ZLjava/net/URI;Ljava/lang/String;)Lorg/apache/logging/log4j/spi/LoggerContext;

    move-result-object p0

    return-object p0
.end method

.method public static getContext(Ljava/lang/ClassLoader;ZLjava/net/URI;)Lorg/apache/logging/log4j/spi/LoggerContext;
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "loader",
            "currentContext",
            "configLocation"
        }
    .end annotation

    .line 13
    :try_start_0
    sget-object v0, Lorg/apache/logging/log4j/LogManager;->c:Lorg/apache/logging/log4j/spi/LoggerContextFactory;

    sget-object v1, Lorg/apache/logging/log4j/LogManager;->b:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object v2, p0

    move v4, p1

    move-object v5, p2

    invoke-interface/range {v0 .. v6}, Lorg/apache/logging/log4j/spi/LoggerContextFactory;->getContext(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/Object;ZLjava/net/URI;Ljava/lang/String;)Lorg/apache/logging/log4j/spi/LoggerContext;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    .line 14
    sget-object v1, Lorg/apache/logging/log4j/LogManager;->a:Lorg/apache/logging/log4j/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " Using SimpleLogger"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lorg/apache/logging/log4j/Logger;->warn(Ljava/lang/String;)V

    .line 15
    new-instance v2, Lorg/apache/logging/log4j/simple/SimpleLoggerContextFactory;

    invoke-direct {v2}, Lorg/apache/logging/log4j/simple/SimpleLoggerContextFactory;-><init>()V

    sget-object v3, Lorg/apache/logging/log4j/LogManager;->b:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v8, 0x0

    move-object v4, p0

    move v6, p1

    move-object v7, p2

    invoke-virtual/range {v2 .. v8}, Lorg/apache/logging/log4j/simple/SimpleLoggerContextFactory;->getContext(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/Object;ZLjava/net/URI;Ljava/lang/String;)Lorg/apache/logging/log4j/spi/LoggerContext;

    move-result-object p0

    return-object p0
.end method

.method public static getContext(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Lorg/apache/logging/log4j/spi/LoggerContext;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "fqcn",
            "loader",
            "currentContext"
        }
    .end annotation

    const/4 v0, 0x0

    .line 25
    :try_start_0
    sget-object v1, Lorg/apache/logging/log4j/LogManager;->c:Lorg/apache/logging/log4j/spi/LoggerContextFactory;

    invoke-interface {v1, p0, p1, v0, p2}, Lorg/apache/logging/log4j/spi/LoggerContextFactory;->getContext(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/Object;Z)Lorg/apache/logging/log4j/spi/LoggerContext;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v1

    .line 26
    sget-object v2, Lorg/apache/logging/log4j/LogManager;->a:Lorg/apache/logging/log4j/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " Using SimpleLogger"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Lorg/apache/logging/log4j/Logger;->warn(Ljava/lang/String;)V

    .line 27
    new-instance v1, Lorg/apache/logging/log4j/simple/SimpleLoggerContextFactory;

    invoke-direct {v1}, Lorg/apache/logging/log4j/simple/SimpleLoggerContextFactory;-><init>()V

    invoke-virtual {v1, p0, p1, v0, p2}, Lorg/apache/logging/log4j/simple/SimpleLoggerContextFactory;->getContext(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/Object;Z)Lorg/apache/logging/log4j/spi/LoggerContext;

    move-result-object p0

    return-object p0
.end method

.method public static getContext(Ljava/lang/String;Ljava/lang/ClassLoader;ZLjava/net/URI;Ljava/lang/String;)Lorg/apache/logging/log4j/spi/LoggerContext;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "fqcn",
            "loader",
            "currentContext",
            "configLocation",
            "name"
        }
    .end annotation

    .line 28
    :try_start_0
    sget-object v0, Lorg/apache/logging/log4j/LogManager;->c:Lorg/apache/logging/log4j/spi/LoggerContextFactory;

    const/4 v3, 0x0

    move-object v1, p0

    move-object v2, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-interface/range {v0 .. v6}, Lorg/apache/logging/log4j/spi/LoggerContextFactory;->getContext(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/Object;ZLjava/net/URI;Ljava/lang/String;)Lorg/apache/logging/log4j/spi/LoggerContext;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p3

    .line 29
    sget-object p4, Lorg/apache/logging/log4j/LogManager;->a:Lorg/apache/logging/log4j/Logger;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " Using SimpleLogger"

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p4, p3}, Lorg/apache/logging/log4j/Logger;->warn(Ljava/lang/String;)V

    .line 30
    new-instance p3, Lorg/apache/logging/log4j/simple/SimpleLoggerContextFactory;

    invoke-direct {p3}, Lorg/apache/logging/log4j/simple/SimpleLoggerContextFactory;-><init>()V

    const/4 p4, 0x0

    invoke-virtual {p3, p0, p1, p4, p2}, Lorg/apache/logging/log4j/simple/SimpleLoggerContextFactory;->getContext(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/Object;Z)Lorg/apache/logging/log4j/spi/LoggerContext;

    move-result-object p0

    return-object p0
.end method

.method public static getContext(Ljava/lang/String;Z)Lorg/apache/logging/log4j/spi/LoggerContext;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "fqcn",
            "currentContext"
        }
    .end annotation

    const/4 v0, 0x0

    .line 22
    :try_start_0
    sget-object v1, Lorg/apache/logging/log4j/LogManager;->c:Lorg/apache/logging/log4j/spi/LoggerContextFactory;

    invoke-interface {v1, p0, v0, v0, p1}, Lorg/apache/logging/log4j/spi/LoggerContextFactory;->getContext(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/Object;Z)Lorg/apache/logging/log4j/spi/LoggerContext;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v1

    .line 23
    sget-object v2, Lorg/apache/logging/log4j/LogManager;->a:Lorg/apache/logging/log4j/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " Using SimpleLogger"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Lorg/apache/logging/log4j/Logger;->warn(Ljava/lang/String;)V

    .line 24
    new-instance v1, Lorg/apache/logging/log4j/simple/SimpleLoggerContextFactory;

    invoke-direct {v1}, Lorg/apache/logging/log4j/simple/SimpleLoggerContextFactory;-><init>()V

    invoke-virtual {v1, p0, v0, v0, p1}, Lorg/apache/logging/log4j/simple/SimpleLoggerContextFactory;->getContext(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/Object;Z)Lorg/apache/logging/log4j/spi/LoggerContext;

    move-result-object p0

    return-object p0
.end method

.method public static getContext(Z)Lorg/apache/logging/log4j/spi/LoggerContext;
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "currentContext"
        }
    .end annotation

    .line 4
    :try_start_0
    sget-object v0, Lorg/apache/logging/log4j/LogManager;->c:Lorg/apache/logging/log4j/spi/LoggerContextFactory;

    sget-object v1, Lorg/apache/logging/log4j/LogManager;->b:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v4, p0

    invoke-interface/range {v0 .. v6}, Lorg/apache/logging/log4j/spi/LoggerContextFactory;->getContext(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/Object;ZLjava/net/URI;Ljava/lang/String;)Lorg/apache/logging/log4j/spi/LoggerContext;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    .line 5
    sget-object v1, Lorg/apache/logging/log4j/LogManager;->a:Lorg/apache/logging/log4j/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " Using SimpleLogger"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lorg/apache/logging/log4j/Logger;->warn(Ljava/lang/String;)V

    .line 6
    new-instance v2, Lorg/apache/logging/log4j/simple/SimpleLoggerContextFactory;

    invoke-direct {v2}, Lorg/apache/logging/log4j/simple/SimpleLoggerContextFactory;-><init>()V

    sget-object v3, Lorg/apache/logging/log4j/LogManager;->b:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move v6, p0

    invoke-virtual/range {v2 .. v8}, Lorg/apache/logging/log4j/simple/SimpleLoggerContextFactory;->getContext(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/Object;ZLjava/net/URI;Ljava/lang/String;)Lorg/apache/logging/log4j/spi/LoggerContext;

    move-result-object p0

    return-object p0
.end method

.method public static getFactory()Lorg/apache/logging/log4j/spi/LoggerContextFactory;
    .locals 1

    sget-object v0, Lorg/apache/logging/log4j/LogManager;->c:Lorg/apache/logging/log4j/spi/LoggerContextFactory;

    return-object v0
.end method

.method public static getFormatterLogger()Lorg/apache/logging/log4j/Logger;
    .locals 1

    const/4 v0, 0x2

    .line 1
    invoke-static {v0}, Lorg/apache/logging/log4j/util/StackLocatorUtil;->getCallerClass(I)Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/logging/log4j/LogManager;->getFormatterLogger(Ljava/lang/Class;)Lorg/apache/logging/log4j/Logger;

    move-result-object v0

    return-object v0
.end method

.method public static getFormatterLogger(Ljava/lang/Class;)Lorg/apache/logging/log4j/Logger;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "clazz"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lorg/apache/logging/log4j/Logger;"
        }
    .end annotation

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x2

    .line 2
    invoke-static {p0}, Lorg/apache/logging/log4j/util/StackLocatorUtil;->getCallerClass(I)Ljava/lang/Class;

    move-result-object p0

    :goto_0
    sget-object v0, Lorg/apache/logging/log4j/message/StringFormatterMessageFactory;->INSTANCE:Lorg/apache/logging/log4j/message/StringFormatterMessageFactory;

    invoke-static {p0, v0}, Lorg/apache/logging/log4j/LogManager;->getLogger(Ljava/lang/Class;Lorg/apache/logging/log4j/message/MessageFactory;)Lorg/apache/logging/log4j/Logger;

    move-result-object p0

    return-object p0
.end method

.method public static getFormatterLogger(Ljava/lang/Object;)Lorg/apache/logging/log4j/Logger;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "value"
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x2

    invoke-static {p0}, Lorg/apache/logging/log4j/util/StackLocatorUtil;->getCallerClass(I)Ljava/lang/Class;

    move-result-object p0

    :goto_0
    sget-object v0, Lorg/apache/logging/log4j/message/StringFormatterMessageFactory;->INSTANCE:Lorg/apache/logging/log4j/message/StringFormatterMessageFactory;

    invoke-static {p0, v0}, Lorg/apache/logging/log4j/LogManager;->getLogger(Ljava/lang/Class;Lorg/apache/logging/log4j/message/MessageFactory;)Lorg/apache/logging/log4j/Logger;

    move-result-object p0

    return-object p0
.end method

.method public static getFormatterLogger(Ljava/lang/String;)Lorg/apache/logging/log4j/Logger;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "name"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x2

    .line 4
    invoke-static {p0}, Lorg/apache/logging/log4j/util/StackLocatorUtil;->getCallerClass(I)Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/logging/log4j/LogManager;->getFormatterLogger(Ljava/lang/Class;)Lorg/apache/logging/log4j/Logger;

    move-result-object p0

    goto :goto_0

    :cond_0
    sget-object v0, Lorg/apache/logging/log4j/message/StringFormatterMessageFactory;->INSTANCE:Lorg/apache/logging/log4j/message/StringFormatterMessageFactory;

    invoke-static {p0, v0}, Lorg/apache/logging/log4j/LogManager;->getLogger(Ljava/lang/String;Lorg/apache/logging/log4j/message/MessageFactory;)Lorg/apache/logging/log4j/Logger;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static getLogger()Lorg/apache/logging/log4j/Logger;
    .locals 1

    const/4 v0, 0x2

    .line 1
    invoke-static {v0}, Lorg/apache/logging/log4j/util/StackLocatorUtil;->getCallerClass(I)Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/logging/log4j/LogManager;->getLogger(Ljava/lang/Class;)Lorg/apache/logging/log4j/Logger;

    move-result-object v0

    return-object v0
.end method

.method public static getLogger(Ljava/lang/Class;)Lorg/apache/logging/log4j/Logger;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "clazz"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lorg/apache/logging/log4j/Logger;"
        }
    .end annotation

    .line 2
    invoke-static {p0}, Lorg/apache/logging/log4j/LogManager;->a(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p0

    .line 3
    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/apache/logging/log4j/LogManager;->getContext(Ljava/lang/ClassLoader;Z)Lorg/apache/logging/log4j/spi/LoggerContext;

    move-result-object v0

    invoke-interface {v0, p0}, Lorg/apache/logging/log4j/spi/LoggerContext;->getLogger(Ljava/lang/Class;)Lorg/apache/logging/log4j/spi/ExtendedLogger;

    move-result-object p0

    return-object p0
.end method

.method public static getLogger(Ljava/lang/Class;Lorg/apache/logging/log4j/message/MessageFactory;)Lorg/apache/logging/log4j/Logger;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "clazz",
            "messageFactory"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lorg/apache/logging/log4j/message/MessageFactory;",
            ")",
            "Lorg/apache/logging/log4j/Logger;"
        }
    .end annotation

    .line 4
    invoke-static {p0}, Lorg/apache/logging/log4j/LogManager;->a(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p0

    .line 5
    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/apache/logging/log4j/LogManager;->getContext(Ljava/lang/ClassLoader;Z)Lorg/apache/logging/log4j/spi/LoggerContext;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lorg/apache/logging/log4j/spi/LoggerContext;->getLogger(Ljava/lang/Class;Lorg/apache/logging/log4j/message/MessageFactory;)Lorg/apache/logging/log4j/spi/ExtendedLogger;

    move-result-object p0

    return-object p0
.end method

.method public static getLogger(Ljava/lang/Object;)Lorg/apache/logging/log4j/Logger;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "value"
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x2

    invoke-static {p0}, Lorg/apache/logging/log4j/util/StackLocatorUtil;->getCallerClass(I)Ljava/lang/Class;

    move-result-object p0

    :goto_0
    invoke-static {p0}, Lorg/apache/logging/log4j/LogManager;->getLogger(Ljava/lang/Class;)Lorg/apache/logging/log4j/Logger;

    move-result-object p0

    return-object p0
.end method

.method public static getLogger(Ljava/lang/Object;Lorg/apache/logging/log4j/message/MessageFactory;)Lorg/apache/logging/log4j/Logger;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "value",
            "messageFactory"
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x2

    invoke-static {p0}, Lorg/apache/logging/log4j/util/StackLocatorUtil;->getCallerClass(I)Ljava/lang/Class;

    move-result-object p0

    :goto_0
    invoke-static {p0, p1}, Lorg/apache/logging/log4j/LogManager;->getLogger(Ljava/lang/Class;Lorg/apache/logging/log4j/message/MessageFactory;)Lorg/apache/logging/log4j/Logger;

    move-result-object p0

    return-object p0
.end method

.method public static getLogger(Ljava/lang/String;)Lorg/apache/logging/log4j/Logger;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "name"
        }
    .end annotation

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 9
    invoke-static {v0}, Lorg/apache/logging/log4j/LogManager;->getContext(Z)Lorg/apache/logging/log4j/spi/LoggerContext;

    move-result-object v0

    invoke-interface {v0, p0}, Lorg/apache/logging/log4j/spi/LoggerContext;->getLogger(Ljava/lang/String;)Lorg/apache/logging/log4j/spi/ExtendedLogger;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x2

    invoke-static {p0}, Lorg/apache/logging/log4j/util/StackLocatorUtil;->getCallerClass(I)Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/logging/log4j/LogManager;->getLogger(Ljava/lang/Class;)Lorg/apache/logging/log4j/Logger;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static getLogger(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/logging/log4j/Logger;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "fqcn",
            "name"
        }
    .end annotation

    .line 13
    sget-object v0, Lorg/apache/logging/log4j/LogManager;->c:Lorg/apache/logging/log4j/spi/LoggerContextFactory;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v0, p0, v1, v1, v2}, Lorg/apache/logging/log4j/spi/LoggerContextFactory;->getContext(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/Object;Z)Lorg/apache/logging/log4j/spi/LoggerContext;

    move-result-object p0

    invoke-interface {p0, p1}, Lorg/apache/logging/log4j/spi/LoggerContext;->getLogger(Ljava/lang/String;)Lorg/apache/logging/log4j/spi/ExtendedLogger;

    move-result-object p0

    return-object p0
.end method

.method public static getLogger(Ljava/lang/String;Lorg/apache/logging/log4j/message/MessageFactory;)Lorg/apache/logging/log4j/Logger;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "name",
            "messageFactory"
        }
    .end annotation

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 10
    invoke-static {v0}, Lorg/apache/logging/log4j/LogManager;->getContext(Z)Lorg/apache/logging/log4j/spi/LoggerContext;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lorg/apache/logging/log4j/spi/LoggerContext;->getLogger(Ljava/lang/String;Lorg/apache/logging/log4j/message/MessageFactory;)Lorg/apache/logging/log4j/spi/ExtendedLogger;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x2

    .line 11
    invoke-static {p0}, Lorg/apache/logging/log4j/util/StackLocatorUtil;->getCallerClass(I)Ljava/lang/Class;

    move-result-object p0

    .line 12
    invoke-static {p0, p1}, Lorg/apache/logging/log4j/LogManager;->getLogger(Ljava/lang/Class;Lorg/apache/logging/log4j/message/MessageFactory;)Lorg/apache/logging/log4j/Logger;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static getLogger(Lorg/apache/logging/log4j/message/MessageFactory;)Lorg/apache/logging/log4j/Logger;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "messageFactory"
        }
    .end annotation

    const/4 v0, 0x2

    .line 6
    invoke-static {v0}, Lorg/apache/logging/log4j/util/StackLocatorUtil;->getCallerClass(I)Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, p0}, Lorg/apache/logging/log4j/LogManager;->getLogger(Ljava/lang/Class;Lorg/apache/logging/log4j/message/MessageFactory;)Lorg/apache/logging/log4j/Logger;

    move-result-object p0

    return-object p0
.end method

.method public static getRootLogger()Lorg/apache/logging/log4j/Logger;
    .locals 1

    const-string v0, ""

    invoke-static {v0}, Lorg/apache/logging/log4j/LogManager;->getLogger(Ljava/lang/String;)Lorg/apache/logging/log4j/Logger;

    move-result-object v0

    return-object v0
.end method

.method public static setFactory(Lorg/apache/logging/log4j/spi/LoggerContextFactory;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "factory"
        }
    .end annotation

    sput-object p0, Lorg/apache/logging/log4j/LogManager;->c:Lorg/apache/logging/log4j/spi/LoggerContextFactory;

    return-void
.end method

.method public static shutdown()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {v0}, Lorg/apache/logging/log4j/LogManager;->shutdown(Z)V

    return-void
.end method

.method public static shutdown(Lorg/apache/logging/log4j/spi/LoggerContext;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "context"
        }
    .end annotation

    .line 4
    instance-of v0, p0, Lorg/apache/logging/log4j/spi/Terminable;

    if-eqz v0, :cond_0

    .line 5
    check-cast p0, Lorg/apache/logging/log4j/spi/Terminable;

    invoke-interface {p0}, Lorg/apache/logging/log4j/spi/Terminable;->terminate()V

    :cond_0
    return-void
.end method

.method public static shutdown(Z)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "currentContext"
        }
    .end annotation

    .line 2
    sget-object v0, Lorg/apache/logging/log4j/LogManager;->c:Lorg/apache/logging/log4j/spi/LoggerContextFactory;

    sget-object v1, Lorg/apache/logging/log4j/LogManager;->b:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, p0, v3}, Lorg/apache/logging/log4j/spi/LoggerContextFactory;->shutdown(Ljava/lang/String;Ljava/lang/ClassLoader;ZZ)V

    return-void
.end method

.method public static shutdown(ZZ)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "currentContext",
            "allContexts"
        }
    .end annotation

    .line 3
    sget-object v0, Lorg/apache/logging/log4j/LogManager;->c:Lorg/apache/logging/log4j/spi/LoggerContextFactory;

    sget-object v1, Lorg/apache/logging/log4j/LogManager;->b:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2, p0, p1}, Lorg/apache/logging/log4j/spi/LoggerContextFactory;->shutdown(Ljava/lang/String;Ljava/lang/ClassLoader;ZZ)V

    return-void
.end method
