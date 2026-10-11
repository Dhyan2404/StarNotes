.class public final Lorg/apache/logging/log4j/spi/ThreadContextMapFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lorg/apache/logging/log4j/Logger;

.field public static final b:Ljava/lang/String; = "log4j2.threadContextMap"

.field public static final c:Ljava/lang/String; = "log4j2.garbagefree.threadContextMap"

.field public static d:Z

.field public static e:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lorg/apache/logging/log4j/status/StatusLogger;->getLogger()Lorg/apache/logging/log4j/status/StatusLogger;

    move-result-object v0

    sput-object v0, Lorg/apache/logging/log4j/spi/ThreadContextMapFactory;->a:Lorg/apache/logging/log4j/Logger;

    invoke-static {}, Lorg/apache/logging/log4j/spi/ThreadContextMapFactory;->b()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lorg/apache/logging/log4j/spi/ThreadContextMap;
    .locals 2

    sget-boolean v0, Lorg/apache/logging/log4j/util/Constants;->ENABLE_THREADLOCALS:Z

    if-eqz v0, :cond_1

    sget-boolean v0, Lorg/apache/logging/log4j/spi/ThreadContextMapFactory;->d:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/sunia/HTREnginev2/tyg;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/tyg;-><init>()V

    return-object v0

    :cond_0
    new-instance v0, Lcom/sunia/HTREnginev2/oce;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/oce;-><init>()V

    return-object v0

    :cond_1
    new-instance v0, Lorg/apache/logging/log4j/spi/DefaultThreadContextMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/apache/logging/log4j/spi/DefaultThreadContextMap;-><init>(Z)V

    return-object v0
.end method

.method public static b()V
    .locals 2

    invoke-static {}, Lorg/apache/logging/log4j/util/PropertiesUtil;->getProperties()Lorg/apache/logging/log4j/util/PropertiesUtil;

    move-result-object v0

    const-string v1, "log4j2.threadContextMap"

    invoke-virtual {v0, v1}, Lorg/apache/logging/log4j/util/PropertiesUtil;->getStringProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lorg/apache/logging/log4j/spi/ThreadContextMapFactory;->e:Ljava/lang/String;

    const-string v1, "log4j2.garbagefree.threadContextMap"

    invoke-virtual {v0, v1}, Lorg/apache/logging/log4j/util/PropertiesUtil;->getBooleanProperty(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lorg/apache/logging/log4j/spi/ThreadContextMapFactory;->d:Z

    return-void
.end method

.method public static createThreadContextMap()Lorg/apache/logging/log4j/spi/ThreadContextMap;
    .locals 6

    invoke-static {}, Lorg/apache/logging/log4j/util/ProviderUtil;->findClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    sget-object v1, Lorg/apache/logging/log4j/spi/ThreadContextMapFactory;->e:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lorg/apache/logging/log4j/spi/ThreadContextMap;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/spi/ThreadContextMap;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lorg/apache/logging/log4j/spi/ThreadContextMapFactory;->a:Lorg/apache/logging/log4j/Logger;

    const-string v3, "Unable to create configured ThreadContextMap {}"

    sget-object v4, Lorg/apache/logging/log4j/spi/ThreadContextMapFactory;->e:Ljava/lang/String;

    invoke-interface {v1, v3, v4, v0}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :catch_1
    sget-object v0, Lorg/apache/logging/log4j/spi/ThreadContextMapFactory;->a:Lorg/apache/logging/log4j/Logger;

    const-string v1, "Unable to locate configured ThreadContextMap {}"

    sget-object v3, Lorg/apache/logging/log4j/spi/ThreadContextMapFactory;->e:Ljava/lang/String;

    invoke-interface {v0, v1, v3}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    :goto_0
    if-nez v2, :cond_2

    invoke-static {}, Lorg/apache/logging/log4j/util/ProviderUtil;->hasProviders()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lorg/apache/logging/log4j/LogManager;->getFactory()Lorg/apache/logging/log4j/spi/LoggerContextFactory;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {}, Lorg/apache/logging/log4j/LogManager;->getFactory()Lorg/apache/logging/log4j/spi/LoggerContextFactory;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lorg/apache/logging/log4j/util/ProviderUtil;->getProviders()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/logging/log4j/spi/Provider;

    invoke-virtual {v3}, Lorg/apache/logging/log4j/spi/Provider;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Lorg/apache/logging/log4j/spi/Provider;->loadThreadContextMap()Ljava/lang/Class;

    move-result-object v4

    if-eqz v4, :cond_1

    :try_start_1
    invoke-virtual {v4}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/logging/log4j/spi/ThreadContextMap;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_2

    :catch_2
    move-exception v2

    sget-object v4, Lorg/apache/logging/log4j/spi/ThreadContextMapFactory;->a:Lorg/apache/logging/log4j/Logger;

    const-string v5, "Unable to locate or load configured ThreadContextMap {}"

    invoke-virtual {v3}, Lorg/apache/logging/log4j/spi/Provider;->getThreadContextMap()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v5, v3, v2}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {}, Lorg/apache/logging/log4j/spi/ThreadContextMapFactory;->a()Lorg/apache/logging/log4j/spi/ThreadContextMap;

    move-result-object v2

    goto :goto_1

    :cond_2
    :goto_2
    if-nez v2, :cond_3

    invoke-static {}, Lorg/apache/logging/log4j/spi/ThreadContextMapFactory;->a()Lorg/apache/logging/log4j/spi/ThreadContextMap;

    move-result-object v2

    :cond_3
    return-object v2
.end method

.method public static init()V
    .locals 0

    invoke-static {}, Lcom/sunia/HTREnginev2/oce;->d()V

    invoke-static {}, Lcom/sunia/HTREnginev2/tyg;->e()V

    invoke-static {}, Lorg/apache/logging/log4j/spi/DefaultThreadContextMap;->init()V

    invoke-static {}, Lorg/apache/logging/log4j/spi/ThreadContextMapFactory;->b()V

    return-void
.end method
