.class public Lorg/apache/logging/log4j/spi/Provider;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final FACTORY_PRIORITY:Ljava/lang/String; = "FactoryPriority"

.field public static final LOGGER_CONTEXT_FACTORY:Ljava/lang/String; = "LoggerContextFactory"

.field public static final THREAD_CONTEXT_MAP:Ljava/lang/String; = "ThreadContextMap"

.field public static final i:Ljava/lang/Integer;

.field public static final j:Lorg/apache/logging/log4j/Logger;


# instance fields
.field public final a:Ljava/lang/Integer;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Lorg/apache/logging/log4j/spi/LoggerContextFactory;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Lorg/apache/logging/log4j/spi/ThreadContextMap;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Ljava/lang/String;

.field public final g:Ljava/net/URL;

.field public final h:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Ljava/lang/ClassLoader;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lorg/apache/logging/log4j/spi/Provider;->i:Ljava/lang/Integer;

    invoke-static {}, Lorg/apache/logging/log4j/status/StatusLogger;->getLogger()Lorg/apache/logging/log4j/status/StatusLogger;

    move-result-object v0

    sput-object v0, Lorg/apache/logging/log4j/spi/Provider;->j:Lorg/apache/logging/log4j/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "priority",
            "versions",
            "loggerContextFactoryClass"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "+",
            "Lorg/apache/logging/log4j/spi/LoggerContextFactory;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 11
    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/logging/log4j/spi/Provider;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "priority",
            "versions",
            "loggerContextFactoryClass",
            "threadContextMapClass"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "+",
            "Lorg/apache/logging/log4j/spi/LoggerContextFactory;",
            ">;",
            "Ljava/lang/Class<",
            "+",
            "Lorg/apache/logging/log4j/spi/ThreadContextMap;",
            ">;)V"
        }
    .end annotation

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 13
    iput-object v0, p0, Lorg/apache/logging/log4j/spi/Provider;->g:Ljava/net/URL;

    .line 14
    iput-object v0, p0, Lorg/apache/logging/log4j/spi/Provider;->h:Ljava/lang/ref/WeakReference;

    .line 15
    iput-object p1, p0, Lorg/apache/logging/log4j/spi/Provider;->a:Ljava/lang/Integer;

    .line 16
    iput-object p3, p0, Lorg/apache/logging/log4j/spi/Provider;->c:Ljava/lang/Class;

    .line 17
    iput-object p4, p0, Lorg/apache/logging/log4j/spi/Provider;->e:Ljava/lang/Class;

    .line 18
    iput-object v0, p0, Lorg/apache/logging/log4j/spi/Provider;->b:Ljava/lang/String;

    .line 19
    iput-object v0, p0, Lorg/apache/logging/log4j/spi/Provider;->d:Ljava/lang/String;

    .line 20
    iput-object p2, p0, Lorg/apache/logging/log4j/spi/Provider;->f:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/util/Properties;Ljava/net/URL;Ljava/lang/ClassLoader;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "props",
            "url",
            "classLoader"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lorg/apache/logging/log4j/spi/Provider;->g:Ljava/net/URL;

    .line 3
    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lorg/apache/logging/log4j/spi/Provider;->h:Ljava/lang/ref/WeakReference;

    const-string p2, "FactoryPriority"

    .line 4
    invoke-virtual {p1, p2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_0

    .line 5
    sget-object p2, Lorg/apache/logging/log4j/spi/Provider;->i:Ljava/lang/Integer;

    goto :goto_0

    :cond_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    :goto_0
    iput-object p2, p0, Lorg/apache/logging/log4j/spi/Provider;->a:Ljava/lang/Integer;

    const-string p2, "LoggerContextFactory"

    .line 6
    invoke-virtual {p1, p2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lorg/apache/logging/log4j/spi/Provider;->b:Ljava/lang/String;

    const-string p2, "ThreadContextMap"

    .line 7
    invoke-virtual {p1, p2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/logging/log4j/spi/Provider;->d:Ljava/lang/String;

    const/4 p1, 0x0

    .line 8
    iput-object p1, p0, Lorg/apache/logging/log4j/spi/Provider;->c:Ljava/lang/Class;

    .line 9
    iput-object p1, p0, Lorg/apache/logging/log4j/spi/Provider;->e:Ljava/lang/Class;

    .line 10
    iput-object p1, p0, Lorg/apache/logging/log4j/spi/Provider;->f:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "o"
        }
    .end annotation

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_a

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_4

    :cond_1
    check-cast p1, Lorg/apache/logging/log4j/spi/Provider;

    iget-object v2, p0, Lorg/apache/logging/log4j/spi/Provider;->a:Ljava/lang/Integer;

    if-eqz v2, :cond_2

    iget-object v3, p1, Lorg/apache/logging/log4j/spi/Provider;->a:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_2
    iget-object v2, p1, Lorg/apache/logging/log4j/spi/Provider;->a:Ljava/lang/Integer;

    if-eqz v2, :cond_3

    :goto_0
    return v1

    :cond_3
    iget-object v2, p0, Lorg/apache/logging/log4j/spi/Provider;->b:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v3, p1, Lorg/apache/logging/log4j/spi/Provider;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_1

    :cond_4
    iget-object v2, p1, Lorg/apache/logging/log4j/spi/Provider;->b:Ljava/lang/String;

    if-eqz v2, :cond_5

    :goto_1
    return v1

    :cond_5
    iget-object v2, p0, Lorg/apache/logging/log4j/spi/Provider;->c:Ljava/lang/Class;

    if-eqz v2, :cond_6

    iget-object v3, p1, Lorg/apache/logging/log4j/spi/Provider;->c:Ljava/lang/Class;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    goto :goto_2

    :cond_6
    iget-object v2, p1, Lorg/apache/logging/log4j/spi/Provider;->c:Ljava/lang/Class;

    if-eqz v2, :cond_7

    :goto_2
    return v1

    :cond_7
    iget-object p0, p0, Lorg/apache/logging/log4j/spi/Provider;->f:Ljava/lang/String;

    if-eqz p0, :cond_8

    iget-object p1, p1, Lorg/apache/logging/log4j/spi/Provider;->f:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_3

    :cond_8
    iget-object p0, p1, Lorg/apache/logging/log4j/spi/Provider;->f:Ljava/lang/String;

    if-nez p0, :cond_9

    goto :goto_3

    :cond_9
    move v0, v1

    :goto_3
    return v0

    :cond_a
    :goto_4
    return v1
.end method

.method public getClassName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/logging/log4j/spi/Provider;->c:Ljava/lang/Class;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Lorg/apache/logging/log4j/spi/Provider;->b:Ljava/lang/String;

    return-object p0
.end method

.method public getPriority()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lorg/apache/logging/log4j/spi/Provider;->a:Ljava/lang/Integer;

    return-object p0
.end method

.method public getThreadContextMap()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/logging/log4j/spi/Provider;->e:Ljava/lang/Class;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Lorg/apache/logging/log4j/spi/Provider;->d:Ljava/lang/String;

    return-object p0
.end method

.method public getUrl()Ljava/net/URL;
    .locals 0

    iget-object p0, p0, Lorg/apache/logging/log4j/spi/Provider;->g:Ljava/net/URL;

    return-object p0
.end method

.method public getVersions()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/logging/log4j/spi/Provider;->f:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lorg/apache/logging/log4j/spi/Provider;->a:Ljava/lang/Integer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lorg/apache/logging/log4j/spi/Provider;->b:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lorg/apache/logging/log4j/spi/Provider;->c:Ljava/lang/Class;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    move v2, v1

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lorg/apache/logging/log4j/spi/Provider;->f:Ljava/lang/String;

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_3
    add-int/2addr v0, v1

    return v0
.end method

.method public loadLoggerContextFactory()Ljava/lang/Class;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lorg/apache/logging/log4j/spi/LoggerContextFactory;",
            ">;"
        }
    .end annotation

    const-class v0, Lorg/apache/logging/log4j/spi/LoggerContextFactory;

    iget-object v1, p0, Lorg/apache/logging/log4j/spi/Provider;->c:Ljava/lang/Class;

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    iget-object v1, p0, Lorg/apache/logging/log4j/spi/Provider;->b:Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return-object v2

    :cond_1
    iget-object v1, p0, Lorg/apache/logging/log4j/spi/Provider;->h:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ClassLoader;

    if-nez v1, :cond_2

    return-object v2

    :cond_2
    :try_start_0
    iget-object v3, p0, Lorg/apache/logging/log4j/spi/Provider;->b:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v1, v0}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    sget-object v1, Lorg/apache/logging/log4j/spi/Provider;->j:Lorg/apache/logging/log4j/Logger;

    iget-object v3, p0, Lorg/apache/logging/log4j/spi/Provider;->b:Ljava/lang/String;

    iget-object p0, p0, Lorg/apache/logging/log4j/spi/Provider;->g:Ljava/net/URL;

    invoke-virtual {p0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v4, "Unable to create class {} specified in {}"

    invoke-interface {v1, v4, v3, p0, v0}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    return-object v2
.end method

.method public loadThreadContextMap()Ljava/lang/Class;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lorg/apache/logging/log4j/spi/ThreadContextMap;",
            ">;"
        }
    .end annotation

    const-class v0, Lorg/apache/logging/log4j/spi/ThreadContextMap;

    iget-object v1, p0, Lorg/apache/logging/log4j/spi/Provider;->e:Ljava/lang/Class;

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    iget-object v1, p0, Lorg/apache/logging/log4j/spi/Provider;->d:Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return-object v2

    :cond_1
    iget-object v1, p0, Lorg/apache/logging/log4j/spi/Provider;->h:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ClassLoader;

    if-nez v1, :cond_2

    return-object v2

    :cond_2
    :try_start_0
    iget-object v3, p0, Lorg/apache/logging/log4j/spi/Provider;->d:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v1, v0}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    sget-object v1, Lorg/apache/logging/log4j/spi/Provider;->j:Lorg/apache/logging/log4j/Logger;

    iget-object v3, p0, Lorg/apache/logging/log4j/spi/Provider;->d:Ljava/lang/String;

    iget-object p0, p0, Lorg/apache/logging/log4j/spi/Provider;->g:Ljava/net/URL;

    invoke-virtual {p0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v4, "Unable to create class {} specified in {}"

    invoke-interface {v1, v4, v3, p0, v0}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    return-object v2
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Provider["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lorg/apache/logging/log4j/spi/Provider;->i:Ljava/lang/Integer;

    iget-object v2, p0, Lorg/apache/logging/log4j/spi/Provider;->a:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, ", "

    if-nez v1, :cond_0

    const-string v1, "priority="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/logging/log4j/spi/Provider;->a:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v1, p0, Lorg/apache/logging/log4j/spi/Provider;->d:Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v1, "threadContextMap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/logging/log4j/spi/Provider;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lorg/apache/logging/log4j/spi/Provider;->e:Ljava/lang/Class;

    if-eqz v1, :cond_2

    const-string v1, "threadContextMapClass="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/logging/log4j/spi/Provider;->e:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    :goto_0
    iget-object v1, p0, Lorg/apache/logging/log4j/spi/Provider;->b:Ljava/lang/String;

    if-eqz v1, :cond_3

    const-string v1, "className="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/logging/log4j/spi/Provider;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lorg/apache/logging/log4j/spi/Provider;->c:Ljava/lang/Class;

    if-eqz v1, :cond_4

    const-string v1, "class="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/logging/log4j/spi/Provider;->c:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    :goto_1
    iget-object v1, p0, Lorg/apache/logging/log4j/spi/Provider;->g:Ljava/net/URL;

    if-eqz v1, :cond_5

    const-string v1, "url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/logging/log4j/spi/Provider;->g:Ljava/net/URL;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_5
    iget-object p0, p0, Lorg/apache/logging/log4j/spi/Provider;->h:Ljava/lang/ref/WeakReference;

    if-eqz p0, :cond_7

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/ClassLoader;

    if-nez p0, :cond_6

    goto :goto_2

    :cond_6
    const-string v1, ", classLoader="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_7
    :goto_2
    const-string p0, ", classLoader=null(not reachable)"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_3
    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
