.class public Lorg/mortbay/jetty/Server;
.super Lorg/mortbay/jetty/handler/HandlerWrapper;
.source "SourceFile"

# interfaces
.implements Lorg/mortbay/util/Attributes;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mortbay/jetty/Server$Graceful;,
        Lorg/mortbay/jetty/Server$a;
    }
.end annotation


# static fields
.field public static final SNAPSHOT_VERSION:Ljava/lang/String; = "6.1-SNAPSHOT"

.field public static final UNKNOWN_VERSION:Ljava/lang/String; = "6.1.x"

.field public static q:Lorg/mortbay/jetty/Server$a;

.field public static r:Ljava/lang/String;

.field public static synthetic s:Ljava/lang/Class;

.field public static synthetic t:Ljava/lang/Class;

.field public static synthetic u:Ljava/lang/Class;

.field public static synthetic v:Ljava/lang/Class;

.field public static synthetic w:Ljava/lang/Class;

.field public static synthetic x:Ljava/lang/Class;


# instance fields
.field public g:Lorg/mortbay/thread/ThreadPool;

.field public h:[Lorg/mortbay/jetty/Connector;

.field public i:[Lorg/mortbay/jetty/security/UserRealm;

.field public j:Lorg/mortbay/component/Container;

.field public k:Lorg/mortbay/jetty/SessionIdManager;

.field public l:Z

.field public m:Z

.field public n:Lorg/mortbay/util/AttributesMap;

.field public o:Ljava/util/List;

.field public p:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/mortbay/jetty/Server$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/mortbay/jetty/Server$a;-><init>(Lorg/mortbay/jetty/j;)V

    sput-object v0, Lorg/mortbay/jetty/Server;->q:Lorg/mortbay/jetty/Server$a;

    sget-object v0, Lorg/mortbay/jetty/Server;->s:Ljava/lang/Class;

    const-string v1, "org.mortbay.jetty.Server"

    if-nez v0, :cond_0

    invoke-static {v1}, Lorg/mortbay/jetty/Server;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/mortbay/jetty/Server;->s:Ljava/lang/Class;

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v0

    if-eqz v0, :cond_3

    sget-object v0, Lorg/mortbay/jetty/Server;->s:Ljava/lang/Class;

    if-nez v0, :cond_1

    invoke-static {v1}, Lorg/mortbay/jetty/Server;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/mortbay/jetty/Server;->s:Ljava/lang/Class;

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Package;->getImplementationVersion()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    sget-object v0, Lorg/mortbay/jetty/Server;->s:Ljava/lang/Class;

    if-nez v0, :cond_2

    invoke-static {v1}, Lorg/mortbay/jetty/Server;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/mortbay/jetty/Server;->s:Ljava/lang/Class;

    :cond_2
    invoke-virtual {v0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Package;->getImplementationVersion()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    const-string v0, "6.1.x"

    :goto_0
    sput-object v0, Lorg/mortbay/jetty/Server;->r:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lorg/mortbay/jetty/handler/HandlerWrapper;-><init>()V

    .line 2
    new-instance v0, Lorg/mortbay/component/Container;

    invoke-direct {v0}, Lorg/mortbay/component/Container;-><init>()V

    iput-object v0, p0, Lorg/mortbay/jetty/Server;->j:Lorg/mortbay/component/Container;

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lorg/mortbay/jetty/Server;->l:Z

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lorg/mortbay/jetty/Server;->m:Z

    .line 5
    new-instance v1, Lorg/mortbay/util/AttributesMap;

    invoke-direct {v1}, Lorg/mortbay/util/AttributesMap;-><init>()V

    iput-object v1, p0, Lorg/mortbay/jetty/Server;->n:Lorg/mortbay/util/AttributesMap;

    .line 6
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/mortbay/jetty/Server;->o:Ljava/util/List;

    .line 7
    iput v0, p0, Lorg/mortbay/jetty/Server;->p:I

    .line 8
    invoke-virtual {p0, p0}, Lorg/mortbay/jetty/handler/HandlerWrapper;->setServer(Lorg/mortbay/jetty/Server;)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 3

    .line 9
    invoke-direct {p0}, Lorg/mortbay/jetty/handler/HandlerWrapper;-><init>()V

    .line 10
    new-instance v0, Lorg/mortbay/component/Container;

    invoke-direct {v0}, Lorg/mortbay/component/Container;-><init>()V

    iput-object v0, p0, Lorg/mortbay/jetty/Server;->j:Lorg/mortbay/component/Container;

    const/4 v0, 0x1

    .line 11
    iput-boolean v0, p0, Lorg/mortbay/jetty/Server;->l:Z

    const/4 v1, 0x0

    .line 12
    iput-boolean v1, p0, Lorg/mortbay/jetty/Server;->m:Z

    .line 13
    new-instance v2, Lorg/mortbay/util/AttributesMap;

    invoke-direct {v2}, Lorg/mortbay/util/AttributesMap;-><init>()V

    iput-object v2, p0, Lorg/mortbay/jetty/Server;->n:Lorg/mortbay/util/AttributesMap;

    .line 14
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lorg/mortbay/jetty/Server;->o:Ljava/util/List;

    .line 15
    iput v1, p0, Lorg/mortbay/jetty/Server;->p:I

    .line 16
    invoke-virtual {p0, p0}, Lorg/mortbay/jetty/handler/HandlerWrapper;->setServer(Lorg/mortbay/jetty/Server;)V

    .line 17
    new-instance v2, Lorg/mortbay/jetty/bio/SocketConnector;

    invoke-direct {v2}, Lorg/mortbay/jetty/bio/SocketConnector;-><init>()V

    .line 18
    invoke-interface {v2, p1}, Lorg/mortbay/jetty/Connector;->setPort(I)V

    new-array p1, v0, [Lorg/mortbay/jetty/Connector;

    aput-object v2, p1, v1

    .line 19
    invoke-virtual {p0, p1}, Lorg/mortbay/jetty/Server;->setConnectors([Lorg/mortbay/jetty/Connector;)V

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

    invoke-direct {v0}, Ljava/lang/NoClassDefFoundError;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    throw p0
.end method

.method public static getVersion()Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/mortbay/jetty/Server;->r:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public addConnector(Lorg/mortbay/jetty/Connector;)V
    .locals 2

    invoke-virtual {p0}, Lorg/mortbay/jetty/Server;->getConnectors()[Lorg/mortbay/jetty/Connector;

    move-result-object v0

    sget-object v1, Lorg/mortbay/jetty/Server;->t:Ljava/lang/Class;

    if-nez v1, :cond_0

    const-string v1, "org.mortbay.jetty.Connector"

    invoke-static {v1}, Lorg/mortbay/jetty/Server;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/mortbay/jetty/Server;->t:Ljava/lang/Class;

    :cond_0
    invoke-static {v0, p1, v1}, Lorg/mortbay/util/LazyList;->addToArray([Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lorg/mortbay/jetty/Connector;

    check-cast p1, [Lorg/mortbay/jetty/Connector;

    invoke-virtual {p0, p1}, Lorg/mortbay/jetty/Server;->setConnectors([Lorg/mortbay/jetty/Connector;)V

    return-void
.end method

.method public addHandler(Lorg/mortbay/jetty/Handler;)V
    .locals 4

    invoke-virtual {p0}, Lorg/mortbay/jetty/handler/HandlerWrapper;->getHandler()Lorg/mortbay/jetty/Handler;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lorg/mortbay/jetty/handler/HandlerWrapper;->setHandler(Lorg/mortbay/jetty/Handler;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/mortbay/jetty/handler/HandlerWrapper;->getHandler()Lorg/mortbay/jetty/Handler;

    move-result-object v0

    instance-of v0, v0, Lorg/mortbay/jetty/handler/HandlerCollection;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/mortbay/jetty/handler/HandlerWrapper;->getHandler()Lorg/mortbay/jetty/Handler;

    move-result-object p0

    check-cast p0, Lorg/mortbay/jetty/handler/HandlerCollection;

    invoke-virtual {p0, p1}, Lorg/mortbay/jetty/handler/HandlerCollection;->addHandler(Lorg/mortbay/jetty/Handler;)V

    goto :goto_0

    :cond_1
    new-instance v0, Lorg/mortbay/jetty/handler/HandlerCollection;

    invoke-direct {v0}, Lorg/mortbay/jetty/handler/HandlerCollection;-><init>()V

    const/4 v1, 0x2

    new-array v1, v1, [Lorg/mortbay/jetty/Handler;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lorg/mortbay/jetty/handler/HandlerWrapper;->getHandler()Lorg/mortbay/jetty/Handler;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lorg/mortbay/jetty/handler/HandlerCollection;->setHandlers([Lorg/mortbay/jetty/Handler;)V

    invoke-virtual {p0, v0}, Lorg/mortbay/jetty/handler/HandlerWrapper;->setHandler(Lorg/mortbay/jetty/Handler;)V

    :goto_0
    return-void
.end method

.method public addLifeCycle(Lorg/mortbay/component/LifeCycle;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/mortbay/jetty/Server;->o:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/mortbay/jetty/Server;->o:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lorg/mortbay/jetty/Server;->j:Lorg/mortbay/component/Container;

    invoke-virtual {v0, p1}, Lorg/mortbay/component/Container;->addBean(Ljava/lang/Object;)V

    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lorg/mortbay/component/AbstractLifeCycle;->isStarted()Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-interface {p1}, Lorg/mortbay/component/LifeCycle;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public addUserRealm(Lorg/mortbay/jetty/security/UserRealm;)V
    .locals 2

    invoke-virtual {p0}, Lorg/mortbay/jetty/Server;->getUserRealms()[Lorg/mortbay/jetty/security/UserRealm;

    move-result-object v0

    sget-object v1, Lorg/mortbay/jetty/Server;->v:Ljava/lang/Class;

    if-nez v1, :cond_0

    const-string v1, "org.mortbay.jetty.security.UserRealm"

    invoke-static {v1}, Lorg/mortbay/jetty/Server;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/mortbay/jetty/Server;->v:Ljava/lang/Class;

    :cond_0
    invoke-static {v0, p1, v1}, Lorg/mortbay/util/LazyList;->addToArray([Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lorg/mortbay/jetty/security/UserRealm;

    check-cast p1, [Lorg/mortbay/jetty/security/UserRealm;

    invoke-virtual {p0, p1}, Lorg/mortbay/jetty/Server;->setUserRealms([Lorg/mortbay/jetty/security/UserRealm;)V

    return-void
.end method

.method public clearAttributes()V
    .locals 0

    iget-object p0, p0, Lorg/mortbay/jetty/Server;->n:Lorg/mortbay/util/AttributesMap;

    invoke-virtual {p0}, Lorg/mortbay/util/AttributesMap;->clearAttributes()V

    return-void
.end method

.method public doStart()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "jetty-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v1, Lorg/mortbay/jetty/Server;->r:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/mortbay/log/Log;->info(Ljava/lang/String;)V

    sget-object v0, Lorg/mortbay/jetty/Server;->r:Ljava/lang/String;

    invoke-static {v0}, Lorg/mortbay/jetty/HttpGenerator;->setServerVersion(Ljava/lang/String;)V

    new-instance v0, Lorg/mortbay/util/MultiException;

    invoke-direct {v0}, Lorg/mortbay/util/MultiException;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget-object v3, p0, Lorg/mortbay/jetty/Server;->i:[Lorg/mortbay/jetty/security/UserRealm;

    if-eqz v3, :cond_1

    array-length v4, v3

    if-ge v2, v4, :cond_1

    aget-object v3, v3, v2

    instance-of v4, v3, Lorg/mortbay/component/LifeCycle;

    if-eqz v4, :cond_0

    check-cast v3, Lorg/mortbay/component/LifeCycle;

    invoke-interface {v3}, Lorg/mortbay/component/LifeCycle;->start()V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lorg/mortbay/jetty/Server;->o:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    :try_start_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/mortbay/component/LifeCycle;

    invoke-interface {v3}, Lorg/mortbay/component/LifeCycle;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v3

    invoke-virtual {v0, v3}, Lorg/mortbay/util/MultiException;->add(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lorg/mortbay/jetty/Server;->g:Lorg/mortbay/thread/ThreadPool;

    if-nez v2, :cond_3

    new-instance v2, Lorg/mortbay/thread/QueuedThreadPool;

    invoke-direct {v2}, Lorg/mortbay/thread/QueuedThreadPool;-><init>()V

    invoke-virtual {p0, v2}, Lorg/mortbay/jetty/Server;->setThreadPool(Lorg/mortbay/thread/ThreadPool;)V

    :cond_3
    iget-object v2, p0, Lorg/mortbay/jetty/Server;->k:Lorg/mortbay/jetty/SessionIdManager;

    if-eqz v2, :cond_4

    invoke-interface {v2}, Lorg/mortbay/component/LifeCycle;->start()V

    :cond_4
    :try_start_1
    iget-object v2, p0, Lorg/mortbay/jetty/Server;->g:Lorg/mortbay/thread/ThreadPool;

    instance-of v3, v2, Lorg/mortbay/component/LifeCycle;

    if-eqz v3, :cond_5

    check-cast v2, Lorg/mortbay/component/LifeCycle;

    invoke-interface {v2}, Lorg/mortbay/component/LifeCycle;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v2

    invoke-virtual {v0, v2}, Lorg/mortbay/util/MultiException;->add(Ljava/lang/Throwable;)V

    :cond_5
    :goto_2
    :try_start_2
    invoke-super {p0}, Lorg/mortbay/jetty/handler/HandlerWrapper;->doStart()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception v2

    const-string v3, "Error starting handlers"

    invoke-static {v3, v2}, Lorg/mortbay/log/Log;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_3
    iget-object v2, p0, Lorg/mortbay/jetty/Server;->h:[Lorg/mortbay/jetty/Connector;

    if-eqz v2, :cond_6

    :goto_4
    iget-object v2, p0, Lorg/mortbay/jetty/Server;->h:[Lorg/mortbay/jetty/Connector;

    array-length v3, v2

    if-ge v1, v3, :cond_6

    :try_start_3
    aget-object v2, v2, v1

    invoke-interface {v2}, Lorg/mortbay/component/LifeCycle;->start()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_5

    :catchall_3
    move-exception v2

    invoke-virtual {v0, v2}, Lorg/mortbay/util/MultiException;->add(Ljava/lang/Throwable;)V

    :goto_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_6
    invoke-virtual {v0}, Lorg/mortbay/util/MultiException;->ifExceptionThrow()V

    return-void
.end method

.method public doStop()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Lorg/mortbay/util/MultiException;

    invoke-direct {v0}, Lorg/mortbay/util/MultiException;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget-object v3, p0, Lorg/mortbay/jetty/Server;->i:[Lorg/mortbay/jetty/security/UserRealm;

    if-eqz v3, :cond_1

    array-length v4, v3

    if-ge v2, v4, :cond_1

    aget-object v3, v3, v2

    instance-of v4, v3, Lorg/mortbay/component/LifeCycle;

    if-eqz v4, :cond_0

    check-cast v3, Lorg/mortbay/component/LifeCycle;

    invoke-interface {v3}, Lorg/mortbay/component/LifeCycle;->stop()V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget v2, p0, Lorg/mortbay/jetty/Server;->p:I

    if-lez v2, :cond_5

    iget-object v2, p0, Lorg/mortbay/jetty/Server;->h:[Lorg/mortbay/jetty/Connector;

    const-string v3, "Graceful shutdown {}"

    if-eqz v2, :cond_2

    array-length v2, v2

    :goto_1
    add-int/lit8 v4, v2, -0x1

    if-lez v2, :cond_2

    iget-object v2, p0, Lorg/mortbay/jetty/Server;->h:[Lorg/mortbay/jetty/Connector;

    aget-object v2, v2, v4

    invoke-static {v3, v2}, Lorg/mortbay/log/Log;->info(Ljava/lang/String;Ljava/lang/Object;)V

    :try_start_0
    iget-object v2, p0, Lorg/mortbay/jetty/Server;->h:[Lorg/mortbay/jetty/Connector;

    aget-object v2, v2, v4

    invoke-interface {v2}, Lorg/mortbay/jetty/Connector;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v2

    invoke-virtual {v0, v2}, Lorg/mortbay/util/MultiException;->add(Ljava/lang/Throwable;)V

    :goto_2
    move v2, v4

    goto :goto_1

    :cond_2
    sget-object v2, Lorg/mortbay/jetty/Server;->u:Ljava/lang/Class;

    if-nez v2, :cond_3

    const-string v2, "org.mortbay.jetty.Server$Graceful"

    invoke-static {v2}, Lorg/mortbay/jetty/Server;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lorg/mortbay/jetty/Server;->u:Ljava/lang/Class;

    :cond_3
    invoke-virtual {p0, v2}, Lorg/mortbay/jetty/handler/AbstractHandlerContainer;->getChildHandlersByClass(Ljava/lang/Class;)[Lorg/mortbay/jetty/Handler;

    move-result-object v2

    :goto_3
    array-length v4, v2

    if-ge v1, v4, :cond_4

    aget-object v4, v2, v1

    check-cast v4, Lorg/mortbay/jetty/Server$Graceful;

    invoke-static {v3, v4}, Lorg/mortbay/log/Log;->info(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v5, 0x1

    invoke-interface {v4, v5}, Lorg/mortbay/jetty/Server$Graceful;->setShutdown(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_4
    iget v1, p0, Lorg/mortbay/jetty/Server;->p:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    :cond_5
    iget-object v1, p0, Lorg/mortbay/jetty/Server;->h:[Lorg/mortbay/jetty/Connector;

    if-eqz v1, :cond_6

    array-length v1, v1

    :goto_4
    add-int/lit8 v2, v1, -0x1

    if-lez v1, :cond_6

    :try_start_1
    iget-object v1, p0, Lorg/mortbay/jetty/Server;->h:[Lorg/mortbay/jetty/Connector;

    aget-object v1, v1, v2

    invoke-interface {v1}, Lorg/mortbay/component/LifeCycle;->stop()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_5

    :catchall_1
    move-exception v1

    invoke-virtual {v0, v1}, Lorg/mortbay/util/MultiException;->add(Ljava/lang/Throwable;)V

    :goto_5
    move v1, v2

    goto :goto_4

    :cond_6
    :try_start_2
    invoke-super {p0}, Lorg/mortbay/jetty/handler/HandlerWrapper;->doStop()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_6

    :catchall_2
    move-exception v1

    invoke-virtual {v0, v1}, Lorg/mortbay/util/MultiException;->add(Ljava/lang/Throwable;)V

    :goto_6
    iget-object v1, p0, Lorg/mortbay/jetty/Server;->k:Lorg/mortbay/jetty/SessionIdManager;

    if-eqz v1, :cond_7

    invoke-interface {v1}, Lorg/mortbay/component/LifeCycle;->stop()V

    :cond_7
    :try_start_3
    iget-object v1, p0, Lorg/mortbay/jetty/Server;->g:Lorg/mortbay/thread/ThreadPool;

    instance-of v2, v1, Lorg/mortbay/component/LifeCycle;

    if-eqz v2, :cond_8

    check-cast v1, Lorg/mortbay/component/LifeCycle;

    invoke-interface {v1}, Lorg/mortbay/component/LifeCycle;->stop()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_7

    :catchall_3
    move-exception v1

    invoke-virtual {v0, v1}, Lorg/mortbay/util/MultiException;->add(Ljava/lang/Throwable;)V

    :cond_8
    :goto_7
    iget-object v1, p0, Lorg/mortbay/jetty/Server;->o:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_9

    iget-object p0, p0, Lorg/mortbay/jetty/Server;->o:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p0, v1}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object p0

    :goto_8
    invoke-interface {p0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v1

    if-eqz v1, :cond_9

    :try_start_4
    invoke-interface {p0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/mortbay/component/LifeCycle;

    invoke-interface {v1}, Lorg/mortbay/component/LifeCycle;->stop()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    goto :goto_8

    :catchall_4
    move-exception v1

    invoke-virtual {v0, v1}, Lorg/mortbay/util/MultiException;->add(Ljava/lang/Throwable;)V

    goto :goto_8

    :cond_9
    invoke-virtual {v0}, Lorg/mortbay/util/MultiException;->ifExceptionThrow()V

    return-void
.end method

.method public getAttribute(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/jetty/Server;->n:Lorg/mortbay/util/AttributesMap;

    invoke-virtual {p0, p1}, Lorg/mortbay/util/AttributesMap;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getAttributeNames()Ljava/util/Enumeration;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/jetty/Server;->n:Lorg/mortbay/util/AttributesMap;

    invoke-static {p0}, Lorg/mortbay/util/AttributesMap;->getAttributeNamesCopy(Lorg/mortbay/util/Attributes;)Ljava/util/Enumeration;

    move-result-object p0

    return-object p0
.end method

.method public getConnectors()[Lorg/mortbay/jetty/Connector;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/jetty/Server;->h:[Lorg/mortbay/jetty/Connector;

    return-object p0
.end method

.method public getContainer()Lorg/mortbay/component/Container;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/jetty/Server;->j:Lorg/mortbay/component/Container;

    return-object p0
.end method

.method public getGracefulShutdown()I
    .locals 0

    iget p0, p0, Lorg/mortbay/jetty/Server;->p:I

    return p0
.end method

.method public getHandlers()[Lorg/mortbay/jetty/Handler;
    .locals 1

    invoke-virtual {p0}, Lorg/mortbay/jetty/handler/HandlerWrapper;->getHandler()Lorg/mortbay/jetty/Handler;

    move-result-object v0

    instance-of v0, v0, Lorg/mortbay/jetty/handler/HandlerCollection;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/mortbay/jetty/handler/HandlerWrapper;->getHandler()Lorg/mortbay/jetty/Handler;

    move-result-object p0

    check-cast p0, Lorg/mortbay/jetty/handler/HandlerCollection;

    invoke-virtual {p0}, Lorg/mortbay/jetty/handler/HandlerCollection;->getHandlers()[Lorg/mortbay/jetty/Handler;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getSendDateHeader()Z
    .locals 0

    iget-boolean p0, p0, Lorg/mortbay/jetty/Server;->m:Z

    return p0
.end method

.method public getSendServerVersion()Z
    .locals 0

    iget-boolean p0, p0, Lorg/mortbay/jetty/Server;->l:Z

    return p0
.end method

.method public getSessionIdManager()Lorg/mortbay/jetty/SessionIdManager;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/jetty/Server;->k:Lorg/mortbay/jetty/SessionIdManager;

    return-object p0
.end method

.method public getStopAtShutdown()Z
    .locals 1

    sget-object v0, Lorg/mortbay/jetty/Server;->q:Lorg/mortbay/jetty/Server$a;

    invoke-virtual {v0, p0}, Lorg/mortbay/jetty/Server$a;->d(Lorg/mortbay/jetty/Server;)Z

    move-result p0

    return p0
.end method

.method public getThreadPool()Lorg/mortbay/thread/ThreadPool;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/jetty/Server;->g:Lorg/mortbay/thread/ThreadPool;

    return-object p0
.end method

.method public getUserRealms()[Lorg/mortbay/jetty/security/UserRealm;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/jetty/Server;->i:[Lorg/mortbay/jetty/security/UserRealm;

    return-object p0
.end method

.method public handle(Lorg/mortbay/jetty/HttpConnection;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/servlet/ServletException;
        }
    .end annotation

    invoke-virtual {p1}, Lorg/mortbay/jetty/HttpConnection;->getRequest()Lorg/mortbay/jetty/Request;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mortbay/jetty/Request;->getPathInfo()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lorg/mortbay/log/Log;->isDebugEnabled()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "REQUEST "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, " on "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/mortbay/jetty/HttpConnection;->getRequest()Lorg/mortbay/jetty/Request;

    move-result-object v1

    invoke-virtual {p1}, Lorg/mortbay/jetty/HttpConnection;->getResponse()Lorg/mortbay/jetty/Response;

    move-result-object v3

    invoke-virtual {p0, v0, v1, v3, v2}, Lorg/mortbay/jetty/handler/HandlerWrapper;->handle(Ljava/lang/String;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;I)V

    new-instance p0, Ljava/lang/StringBuffer;

    invoke-direct {p0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "RESPONSE "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "  "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Lorg/mortbay/jetty/HttpConnection;->getResponse()Lorg/mortbay/jetty/Response;

    move-result-object p1

    invoke-virtual {p1}, Lorg/mortbay/jetty/Response;->getStatus()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lorg/mortbay/jetty/HttpConnection;->getRequest()Lorg/mortbay/jetty/Request;

    move-result-object v1

    invoke-virtual {p1}, Lorg/mortbay/jetty/HttpConnection;->getResponse()Lorg/mortbay/jetty/Response;

    move-result-object p1

    invoke-virtual {p0, v0, v1, p1, v2}, Lorg/mortbay/jetty/handler/HandlerWrapper;->handle(Ljava/lang/String;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;I)V

    :goto_0
    return-void
.end method

.method public join()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/mortbay/jetty/Server;->getThreadPool()Lorg/mortbay/thread/ThreadPool;

    move-result-object p0

    invoke-interface {p0}, Lorg/mortbay/thread/ThreadPool;->join()V

    return-void
.end method

.method public removeAttribute(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lorg/mortbay/jetty/Server;->n:Lorg/mortbay/util/AttributesMap;

    invoke-virtual {p0, p1}, Lorg/mortbay/util/AttributesMap;->removeAttribute(Ljava/lang/String;)V

    return-void
.end method

.method public removeConnector(Lorg/mortbay/jetty/Connector;)V
    .locals 1

    invoke-virtual {p0}, Lorg/mortbay/jetty/Server;->getConnectors()[Lorg/mortbay/jetty/Connector;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/mortbay/util/LazyList;->removeFromArray([Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lorg/mortbay/jetty/Connector;

    check-cast p1, [Lorg/mortbay/jetty/Connector;

    invoke-virtual {p0, p1}, Lorg/mortbay/jetty/Server;->setConnectors([Lorg/mortbay/jetty/Connector;)V

    return-void
.end method

.method public removeHandler(Lorg/mortbay/jetty/Handler;)V
    .locals 1

    invoke-virtual {p0}, Lorg/mortbay/jetty/handler/HandlerWrapper;->getHandler()Lorg/mortbay/jetty/Handler;

    move-result-object v0

    instance-of v0, v0, Lorg/mortbay/jetty/handler/HandlerCollection;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/mortbay/jetty/handler/HandlerWrapper;->getHandler()Lorg/mortbay/jetty/Handler;

    move-result-object p0

    check-cast p0, Lorg/mortbay/jetty/handler/HandlerCollection;

    invoke-virtual {p0, p1}, Lorg/mortbay/jetty/handler/HandlerCollection;->removeHandler(Lorg/mortbay/jetty/Handler;)V

    :cond_0
    return-void
.end method

.method public removeLifeCycle(Lorg/mortbay/component/LifeCycle;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/mortbay/jetty/Server;->o:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object p0, p0, Lorg/mortbay/jetty/Server;->j:Lorg/mortbay/component/Container;

    invoke-virtual {p0, p1}, Lorg/mortbay/component/Container;->removeBean(Ljava/lang/Object;)V

    return-void
.end method

.method public removeUserRealm(Lorg/mortbay/jetty/security/UserRealm;)V
    .locals 1

    invoke-virtual {p0}, Lorg/mortbay/jetty/Server;->getUserRealms()[Lorg/mortbay/jetty/security/UserRealm;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/mortbay/util/LazyList;->removeFromArray([Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lorg/mortbay/jetty/security/UserRealm;

    check-cast p1, [Lorg/mortbay/jetty/security/UserRealm;

    invoke-virtual {p0, p1}, Lorg/mortbay/jetty/Server;->setUserRealms([Lorg/mortbay/jetty/security/UserRealm;)V

    return-void
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lorg/mortbay/jetty/Server;->n:Lorg/mortbay/util/AttributesMap;

    invoke-virtual {p0, p1, p2}, Lorg/mortbay/util/AttributesMap;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setConnectors([Lorg/mortbay/jetty/Connector;)V
    .locals 3

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    aget-object v1, p1, v0

    invoke-interface {v1, p0}, Lorg/mortbay/jetty/Connector;->setServer(Lorg/mortbay/jetty/Server;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/mortbay/jetty/Server;->j:Lorg/mortbay/component/Container;

    iget-object v1, p0, Lorg/mortbay/jetty/Server;->h:[Lorg/mortbay/jetty/Connector;

    const-string v2, "connector"

    invoke-virtual {v0, p0, v1, p1, v2}, Lorg/mortbay/component/Container;->update(Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lorg/mortbay/jetty/Server;->h:[Lorg/mortbay/jetty/Connector;

    return-void
.end method

.method public setGracefulShutdown(I)V
    .locals 0

    iput p1, p0, Lorg/mortbay/jetty/Server;->p:I

    return-void
.end method

.method public setHandlers([Lorg/mortbay/jetty/Handler;)V
    .locals 1

    invoke-virtual {p0}, Lorg/mortbay/jetty/handler/HandlerWrapper;->getHandler()Lorg/mortbay/jetty/Handler;

    move-result-object v0

    instance-of v0, v0, Lorg/mortbay/jetty/handler/HandlerCollection;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/mortbay/jetty/handler/HandlerWrapper;->getHandler()Lorg/mortbay/jetty/Handler;

    move-result-object p0

    check-cast p0, Lorg/mortbay/jetty/handler/HandlerCollection;

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/mortbay/jetty/handler/HandlerCollection;

    invoke-direct {v0}, Lorg/mortbay/jetty/handler/HandlerCollection;-><init>()V

    invoke-virtual {p0, v0}, Lorg/mortbay/jetty/handler/HandlerWrapper;->setHandler(Lorg/mortbay/jetty/Handler;)V

    move-object p0, v0

    :goto_0
    invoke-virtual {p0, p1}, Lorg/mortbay/jetty/handler/HandlerCollection;->setHandlers([Lorg/mortbay/jetty/Handler;)V

    return-void
.end method

.method public setSendDateHeader(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/mortbay/jetty/Server;->m:Z

    return-void
.end method

.method public setSendServerVersion(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/mortbay/jetty/Server;->l:Z

    return-void
.end method

.method public setSessionIdManager(Lorg/mortbay/jetty/SessionIdManager;)V
    .locals 6

    iget-object v0, p0, Lorg/mortbay/jetty/Server;->j:Lorg/mortbay/component/Container;

    iget-object v2, p0, Lorg/mortbay/jetty/Server;->k:Lorg/mortbay/jetty/SessionIdManager;

    const-string v4, "sessionIdManager"

    const/4 v5, 0x1

    move-object v1, p0

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Lorg/mortbay/component/Container;->update(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Z)V

    iput-object p1, p0, Lorg/mortbay/jetty/Server;->k:Lorg/mortbay/jetty/SessionIdManager;

    return-void
.end method

.method public setStopAtShutdown(Z)V
    .locals 0

    if-eqz p1, :cond_0

    sget-object p1, Lorg/mortbay/jetty/Server;->q:Lorg/mortbay/jetty/Server$a;

    invoke-virtual {p1, p0}, Lorg/mortbay/jetty/Server$a;->a(Lorg/mortbay/jetty/Server;)Z

    goto :goto_0

    :cond_0
    sget-object p1, Lorg/mortbay/jetty/Server;->q:Lorg/mortbay/jetty/Server$a;

    invoke-virtual {p1, p0}, Lorg/mortbay/jetty/Server$a;->f(Lorg/mortbay/jetty/Server;)Z

    :goto_0
    return-void
.end method

.method public setThreadPool(Lorg/mortbay/thread/ThreadPool;)V
    .locals 6

    iget-object v0, p0, Lorg/mortbay/jetty/Server;->j:Lorg/mortbay/component/Container;

    iget-object v2, p0, Lorg/mortbay/jetty/Server;->g:Lorg/mortbay/thread/ThreadPool;

    const-string v4, "threadpool"

    const/4 v5, 0x1

    move-object v1, p0

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Lorg/mortbay/component/Container;->update(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Z)V

    iput-object p1, p0, Lorg/mortbay/jetty/Server;->g:Lorg/mortbay/thread/ThreadPool;

    return-void
.end method

.method public setUserRealms([Lorg/mortbay/jetty/security/UserRealm;)V
    .locals 6

    iget-object v0, p0, Lorg/mortbay/jetty/Server;->j:Lorg/mortbay/component/Container;

    iget-object v2, p0, Lorg/mortbay/jetty/Server;->i:[Lorg/mortbay/jetty/security/UserRealm;

    const-string v4, "realm"

    const/4 v5, 0x1

    move-object v1, p0

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Lorg/mortbay/component/Container;->update(Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;Ljava/lang/String;Z)V

    iput-object p1, p0, Lorg/mortbay/jetty/Server;->i:[Lorg/mortbay/jetty/security/UserRealm;

    return-void
.end method
