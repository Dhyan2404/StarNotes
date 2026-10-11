.class public Lorg/mortbay/jetty/Server$a;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mortbay/jetty/Server;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public e:Z

.field public f:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lorg/mortbay/jetty/Server$a;->e:Z

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/mortbay/jetty/Server$a;->f:Ljava/util/ArrayList;

    return-void
.end method

.method public synthetic constructor <init>(Lorg/mortbay/jetty/j;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Lorg/mortbay/jetty/Server$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lorg/mortbay/jetty/Server;)Z
    .locals 0

    invoke-virtual {p0}, Lorg/mortbay/jetty/Server$a;->e()V

    iget-object p0, p0, Lorg/mortbay/jetty/Server$a;->f:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public b(Ljava/util/Collection;)Z
    .locals 0

    invoke-virtual {p0}, Lorg/mortbay/jetty/Server$a;->e()V

    iget-object p0, p0, Lorg/mortbay/jetty/Server$a;->f:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move-result p0

    return p0
.end method

.method public c()V
    .locals 0

    invoke-virtual {p0}, Lorg/mortbay/jetty/Server$a;->e()V

    iget-object p0, p0, Lorg/mortbay/jetty/Server$a;->f:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public d(Lorg/mortbay/jetty/Server;)Z
    .locals 0

    iget-object p0, p0, Lorg/mortbay/jetty/Server$a;->f:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final e()V
    .locals 6

    const-string v0, "JETTY_NO_SHUTDOWN_HOOK"

    invoke-static {v0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lorg/mortbay/jetty/Server$a;->e:Z

    if-nez v0, :cond_2

    :try_start_0
    sget-object v0, Lorg/mortbay/jetty/Server;->x:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "java.lang.Runtime"

    invoke-static {v0}, Lorg/mortbay/jetty/Server;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/mortbay/jetty/Server;->x:Ljava/lang/Class;

    :cond_0
    const-string v1, "addShutdownHook"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Lorg/mortbay/jetty/Server;->w:Ljava/lang/Class;

    if-nez v4, :cond_1

    const-string v4, "java.lang.Thread"

    invoke-static {v4}, Lorg/mortbay/jetty/Server;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    sput-object v4, Lorg/mortbay/jetty/Server;->w:Ljava/lang/Class;

    :cond_1
    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    iput-boolean v2, p0, Lorg/mortbay/jetty/Server$a;->e:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {}, Lorg/mortbay/log/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "No shutdown hook in JVM "

    invoke-static {v0, p0}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public f(Lorg/mortbay/jetty/Server;)Z
    .locals 0

    invoke-virtual {p0}, Lorg/mortbay/jetty/Server$a;->e()V

    iget-object p0, p0, Lorg/mortbay/jetty/Server$a;->f:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public g(Ljava/util/Collection;)Z
    .locals 0

    invoke-virtual {p0}, Lorg/mortbay/jetty/Server$a;->e()V

    iget-object p0, p0, Lorg/mortbay/jetty/Server$a;->f:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    move-result p0

    return p0
.end method

.method public run()V
    .locals 2

    const-string v0, "Shutdown"

    invoke-virtual {p0, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    const-string v0, "Shutdown hook executing"

    invoke-static {v0}, Lorg/mortbay/log/Log;->info(Ljava/lang/String;)V

    iget-object p0, p0, Lorg/mortbay/jetty/Server$a;->f:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mortbay/jetty/Server;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-virtual {v0}, Lorg/mortbay/component/AbstractLifeCycle;->stop()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/mortbay/log/Log;->warn(Ljava/lang/Throwable;)V

    :goto_1
    const-string v0, "Shutdown hook complete"

    invoke-static {v0}, Lorg/mortbay/log/Log;->info(Ljava/lang/String;)V

    const-wide/16 v0, 0x3e8

    :try_start_1
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-static {v0}, Lorg/mortbay/log/Log;->warn(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    return-void
.end method
