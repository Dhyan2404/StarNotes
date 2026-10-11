.class public Lorg/mortbay/jetty/handler/HandlerCollection;
.super Lorg/mortbay/jetty/handler/AbstractHandlerContainer;
.source "SourceFile"


# static fields
.field public static synthetic g:Ljava/lang/Class;


# instance fields
.field public f:[Lorg/mortbay/jetty/Handler;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/mortbay/jetty/handler/AbstractHandlerContainer;-><init>()V

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


# virtual methods
.method public addHandler(Lorg/mortbay/jetty/Handler;)V
    .locals 2

    invoke-virtual {p0}, Lorg/mortbay/jetty/handler/HandlerCollection;->getHandlers()[Lorg/mortbay/jetty/Handler;

    move-result-object v0

    sget-object v1, Lorg/mortbay/jetty/handler/HandlerCollection;->g:Ljava/lang/Class;

    if-nez v1, :cond_0

    const-string v1, "org.mortbay.jetty.Handler"

    invoke-static {v1}, Lorg/mortbay/jetty/handler/HandlerCollection;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/mortbay/jetty/handler/HandlerCollection;->g:Ljava/lang/Class;

    :cond_0
    invoke-static {v0, p1, v1}, Lorg/mortbay/util/LazyList;->addToArray([Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lorg/mortbay/jetty/Handler;

    check-cast p1, [Lorg/mortbay/jetty/Handler;

    invoke-virtual {p0, p1}, Lorg/mortbay/jetty/handler/HandlerCollection;->setHandlers([Lorg/mortbay/jetty/Handler;)V

    return-void
.end method

.method public doStart()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Lorg/mortbay/util/MultiException;

    invoke-direct {v0}, Lorg/mortbay/util/MultiException;-><init>()V

    iget-object v1, p0, Lorg/mortbay/jetty/handler/HandlerCollection;->f:[Lorg/mortbay/jetty/Handler;

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lorg/mortbay/jetty/handler/HandlerCollection;->f:[Lorg/mortbay/jetty/Handler;

    array-length v3, v2

    if-ge v1, v3, :cond_0

    :try_start_0
    aget-object v2, v2, v1

    invoke-interface {v2}, Lorg/mortbay/component/LifeCycle;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v2

    invoke-virtual {v0, v2}, Lorg/mortbay/util/MultiException;->add(Ljava/lang/Throwable;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-super {p0}, Lorg/mortbay/jetty/handler/AbstractHandler;->doStart()V

    invoke-virtual {v0}, Lorg/mortbay/util/MultiException;->ifExceptionThrow()V

    return-void
.end method

.method public doStop()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Lorg/mortbay/util/MultiException;

    invoke-direct {v0}, Lorg/mortbay/util/MultiException;-><init>()V

    :try_start_0
    invoke-super {p0}, Lorg/mortbay/jetty/handler/AbstractHandler;->doStop()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-virtual {v0, v1}, Lorg/mortbay/util/MultiException;->add(Ljava/lang/Throwable;)V

    :goto_0
    iget-object v1, p0, Lorg/mortbay/jetty/handler/HandlerCollection;->f:[Lorg/mortbay/jetty/Handler;

    if-eqz v1, :cond_0

    array-length v1, v1

    :goto_1
    add-int/lit8 v2, v1, -0x1

    if-lez v1, :cond_0

    :try_start_1
    iget-object v1, p0, Lorg/mortbay/jetty/handler/HandlerCollection;->f:[Lorg/mortbay/jetty/Handler;

    aget-object v1, v1, v2

    invoke-interface {v1}, Lorg/mortbay/component/LifeCycle;->stop()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v1

    invoke-virtual {v0, v1}, Lorg/mortbay/util/MultiException;->add(Ljava/lang/Throwable;)V

    :goto_2
    move v1, v2

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Lorg/mortbay/util/MultiException;->ifExceptionThrow()V

    return-void
.end method

.method public expandChildren(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3

    invoke-virtual {p0}, Lorg/mortbay/jetty/handler/HandlerCollection;->getHandlers()[Lorg/mortbay/jetty/Handler;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    if-eqz v0, :cond_0

    array-length v2, v0

    if-ge v1, v2, :cond_0

    aget-object v2, v0, v1

    invoke-virtual {p0, v2, p1, p2}, Lorg/mortbay/jetty/handler/AbstractHandlerContainer;->expandHandler(Lorg/mortbay/jetty/Handler;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method public getHandlers()[Lorg/mortbay/jetty/Handler;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/jetty/handler/HandlerCollection;->f:[Lorg/mortbay/jetty/Handler;

    return-object p0
.end method

.method public handle(Ljava/lang/String;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/servlet/ServletException;
        }
    .end annotation

    iget-object v0, p0, Lorg/mortbay/jetty/handler/HandlerCollection;->f:[Lorg/mortbay/jetty/Handler;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lorg/mortbay/component/AbstractLifeCycle;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    const/4 v1, 0x0

    move v2, v0

    :goto_0
    iget-object v3, p0, Lorg/mortbay/jetty/handler/HandlerCollection;->f:[Lorg/mortbay/jetty/Handler;

    array-length v4, v3

    if-ge v2, v4, :cond_1

    :try_start_0
    aget-object v3, v3, v2

    invoke-interface {v3, p1, p2, p3, p4}, Lorg/mortbay/jetty/Handler;->handle(Ljava/lang/String;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    if-nez v1, :cond_0

    new-instance v1, Lorg/mortbay/util/MultiException;

    invoke-direct {v1}, Lorg/mortbay/util/MultiException;-><init>()V

    :cond_0
    invoke-virtual {v1, v3}, Lorg/mortbay/util/MultiException;->add(Ljava/lang/Throwable;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_1
    move-exception p0

    throw p0

    :catch_2
    move-exception p0

    throw p0

    :cond_1
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lorg/mortbay/util/MultiException;->size()I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_2

    new-instance p0, Ljavax/servlet/ServletException;

    invoke-virtual {v1, v0}, Lorg/mortbay/util/MultiException;->getThrowable(I)Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {p0, p1}, Ljavax/servlet/ServletException;-><init>(Ljava/lang/Throwable;)V

    throw p0

    :cond_2
    new-instance p0, Ljavax/servlet/ServletException;

    invoke-direct {p0, v1}, Ljavax/servlet/ServletException;-><init>(Ljava/lang/Throwable;)V

    throw p0

    :cond_3
    return-void
.end method

.method public removeHandler(Lorg/mortbay/jetty/Handler;)V
    .locals 2

    invoke-virtual {p0}, Lorg/mortbay/jetty/handler/HandlerCollection;->getHandlers()[Lorg/mortbay/jetty/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    invoke-static {v0, p1}, Lorg/mortbay/util/LazyList;->removeFromArray([Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lorg/mortbay/jetty/Handler;

    check-cast p1, [Lorg/mortbay/jetty/Handler;

    invoke-virtual {p0, p1}, Lorg/mortbay/jetty/handler/HandlerCollection;->setHandlers([Lorg/mortbay/jetty/Handler;)V

    :cond_0
    return-void
.end method

.method public setHandlers([Lorg/mortbay/jetty/Handler;)V
    .locals 6

    iget-object v0, p0, Lorg/mortbay/jetty/handler/HandlerCollection;->f:[Lorg/mortbay/jetty/Handler;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/mortbay/jetty/Handler;

    check-cast v0, [Lorg/mortbay/jetty/Handler;

    :goto_0
    invoke-virtual {p0}, Lorg/mortbay/jetty/handler/AbstractHandler;->getServer()Lorg/mortbay/jetty/Server;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lorg/mortbay/jetty/handler/AbstractHandler;->getServer()Lorg/mortbay/jetty/Server;

    move-result-object v1

    invoke-virtual {v1}, Lorg/mortbay/jetty/Server;->getContainer()Lorg/mortbay/component/Container;

    move-result-object v1

    const-string v2, "handler"

    invoke-virtual {v1, p0, v0, p1, v2}, Lorg/mortbay/component/Container;->update(Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p0}, Lorg/mortbay/jetty/handler/AbstractHandler;->getServer()Lorg/mortbay/jetty/Server;

    move-result-object v1

    new-instance v2, Lorg/mortbay/util/MultiException;

    invoke-direct {v2}, Lorg/mortbay/util/MultiException;-><init>()V

    const/4 v3, 0x0

    move v4, v3

    :goto_1
    if-eqz p1, :cond_3

    array-length v5, p1

    if-ge v4, v5, :cond_3

    aget-object v5, p1, v4

    invoke-interface {v5}, Lorg/mortbay/jetty/Handler;->getServer()Lorg/mortbay/jetty/Server;

    move-result-object v5

    if-eq v5, v1, :cond_2

    aget-object v5, p1, v4

    invoke-interface {v5, v1}, Lorg/mortbay/jetty/Handler;->setServer(Lorg/mortbay/jetty/Server;)V

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    iput-object p1, p0, Lorg/mortbay/jetty/handler/HandlerCollection;->f:[Lorg/mortbay/jetty/Handler;

    :goto_2
    if-eqz v0, :cond_5

    array-length p0, v0

    if-ge v3, p0, :cond_5

    aget-object p0, v0, v3

    if-eqz p0, :cond_4

    :try_start_0
    invoke-interface {p0}, Lorg/mortbay/component/LifeCycle;->isStarted()Z

    move-result p0

    if-eqz p0, :cond_4

    aget-object p0, v0, v3

    invoke-interface {p0}, Lorg/mortbay/component/LifeCycle;->stop()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception p0

    invoke-virtual {v2, p0}, Lorg/mortbay/util/MultiException;->add(Ljava/lang/Throwable;)V

    :cond_4
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_5
    invoke-virtual {v2}, Lorg/mortbay/util/MultiException;->ifExceptionThrowRuntime()V

    return-void
.end method

.method public setServer(Lorg/mortbay/jetty/Server;)V
    .locals 4

    invoke-virtual {p0}, Lorg/mortbay/jetty/handler/AbstractHandler;->getServer()Lorg/mortbay/jetty/Server;

    move-result-object v0

    invoke-super {p0, p1}, Lorg/mortbay/jetty/handler/AbstractHandler;->setServer(Lorg/mortbay/jetty/Server;)V

    invoke-virtual {p0}, Lorg/mortbay/jetty/handler/HandlerCollection;->getHandlers()[Lorg/mortbay/jetty/Handler;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    if-eqz v1, :cond_0

    array-length v3, v1

    if-ge v2, v3, :cond_0

    aget-object v3, v1, v2

    invoke-interface {v3, p1}, Lorg/mortbay/jetty/Handler;->setServer(Lorg/mortbay/jetty/Server;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    if-eq p1, v0, :cond_1

    invoke-virtual {p1}, Lorg/mortbay/jetty/Server;->getContainer()Lorg/mortbay/component/Container;

    move-result-object p1

    iget-object v0, p0, Lorg/mortbay/jetty/handler/HandlerCollection;->f:[Lorg/mortbay/jetty/Handler;

    const-string v1, "handler"

    const/4 v2, 0x0

    invoke-virtual {p1, p0, v2, v0, v1}, Lorg/mortbay/component/Container;->update(Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    return-void
.end method
