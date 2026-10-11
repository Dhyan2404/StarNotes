.class public Lorg/mortbay/jetty/handler/HandlerWrapper;
.super Lorg/mortbay/jetty/handler/AbstractHandlerContainer;
.source "SourceFile"


# instance fields
.field public f:Lorg/mortbay/jetty/Handler;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/mortbay/jetty/handler/AbstractHandlerContainer;-><init>()V

    return-void
.end method


# virtual methods
.method public addHandler(Lorg/mortbay/jetty/Handler;)V
    .locals 2

    invoke-virtual {p0}, Lorg/mortbay/jetty/handler/HandlerWrapper;->getHandler()Lorg/mortbay/jetty/Handler;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, p1, Lorg/mortbay/jetty/HandlerContainer;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Cannot add"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Lorg/mortbay/jetty/handler/HandlerWrapper;->setHandler(Lorg/mortbay/jetty/Handler;)V

    if-eqz v0, :cond_2

    check-cast p1, Lorg/mortbay/jetty/HandlerContainer;

    invoke-interface {p1, v0}, Lorg/mortbay/jetty/HandlerContainer;->addHandler(Lorg/mortbay/jetty/Handler;)V

    :cond_2
    return-void
.end method

.method public doStart()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lorg/mortbay/jetty/handler/HandlerWrapper;->f:Lorg/mortbay/jetty/Handler;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/mortbay/component/LifeCycle;->start()V

    :cond_0
    invoke-super {p0}, Lorg/mortbay/jetty/handler/AbstractHandler;->doStart()V

    return-void
.end method

.method public doStop()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-super {p0}, Lorg/mortbay/jetty/handler/AbstractHandler;->doStop()V

    iget-object p0, p0, Lorg/mortbay/jetty/handler/HandlerWrapper;->f:Lorg/mortbay/jetty/Handler;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lorg/mortbay/component/LifeCycle;->stop()V

    :cond_0
    return-void
.end method

.method public expandChildren(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/mortbay/jetty/handler/HandlerWrapper;->f:Lorg/mortbay/jetty/Handler;

    invoke-virtual {p0, v0, p1, p2}, Lorg/mortbay/jetty/handler/AbstractHandlerContainer;->expandHandler(Lorg/mortbay/jetty/Handler;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getHandler()Lorg/mortbay/jetty/Handler;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/jetty/handler/HandlerWrapper;->f:Lorg/mortbay/jetty/Handler;

    return-object p0
.end method

.method public handle(Ljava/lang/String;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/servlet/ServletException;
        }
    .end annotation

    iget-object v0, p0, Lorg/mortbay/jetty/handler/HandlerWrapper;->f:Lorg/mortbay/jetty/Handler;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/mortbay/component/AbstractLifeCycle;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/mortbay/jetty/handler/HandlerWrapper;->f:Lorg/mortbay/jetty/Handler;

    invoke-interface {p0, p1, p2, p3, p4}, Lorg/mortbay/jetty/Handler;->handle(Ljava/lang/String;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;I)V

    :cond_0
    return-void
.end method

.method public removeHandler(Lorg/mortbay/jetty/Handler;)V
    .locals 2

    invoke-virtual {p0}, Lorg/mortbay/jetty/handler/HandlerWrapper;->getHandler()Lorg/mortbay/jetty/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v1, v0, Lorg/mortbay/jetty/HandlerContainer;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/mortbay/jetty/HandlerContainer;

    invoke-interface {v0, p1}, Lorg/mortbay/jetty/HandlerContainer;->removeHandler(Lorg/mortbay/jetty/Handler;)V

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lorg/mortbay/jetty/handler/HandlerWrapper;->setHandler(Lorg/mortbay/jetty/Handler;)V

    :goto_0
    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Cannot remove"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setHandler(Lorg/mortbay/jetty/Handler;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lorg/mortbay/jetty/handler/HandlerWrapper;->f:Lorg/mortbay/jetty/Handler;

    invoke-virtual {p0}, Lorg/mortbay/jetty/handler/AbstractHandler;->getServer()Lorg/mortbay/jetty/Server;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lorg/mortbay/jetty/handler/AbstractHandler;->getServer()Lorg/mortbay/jetty/Server;

    move-result-object v1

    invoke-virtual {v1}, Lorg/mortbay/jetty/Server;->getContainer()Lorg/mortbay/component/Container;

    move-result-object v1

    const-string v2, "handler"

    invoke-virtual {v1, p0, v0, p1, v2}, Lorg/mortbay/component/Container;->update(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lorg/mortbay/jetty/handler/AbstractHandler;->getServer()Lorg/mortbay/jetty/Server;

    move-result-object v1

    invoke-interface {p1, v1}, Lorg/mortbay/jetty/Handler;->setServer(Lorg/mortbay/jetty/Server;)V

    :cond_1
    iput-object p1, p0, Lorg/mortbay/jetty/handler/HandlerWrapper;->f:Lorg/mortbay/jetty/Handler;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lorg/mortbay/component/LifeCycle;->isStarted()Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-interface {v0}, Lorg/mortbay/component/LifeCycle;->stop()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw p1
.end method

.method public setServer(Lorg/mortbay/jetty/Server;)V
    .locals 3

    invoke-virtual {p0}, Lorg/mortbay/jetty/handler/AbstractHandler;->getServer()Lorg/mortbay/jetty/Server;

    move-result-object v0

    invoke-super {p0, p1}, Lorg/mortbay/jetty/handler/AbstractHandler;->setServer(Lorg/mortbay/jetty/Server;)V

    invoke-virtual {p0}, Lorg/mortbay/jetty/handler/HandlerWrapper;->getHandler()Lorg/mortbay/jetty/Handler;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1, p1}, Lorg/mortbay/jetty/Handler;->setServer(Lorg/mortbay/jetty/Server;)V

    :cond_0
    if-eqz p1, :cond_1

    if-eq p1, v0, :cond_1

    invoke-virtual {p1}, Lorg/mortbay/jetty/Server;->getContainer()Lorg/mortbay/component/Container;

    move-result-object p1

    iget-object v0, p0, Lorg/mortbay/jetty/handler/HandlerWrapper;->f:Lorg/mortbay/jetty/Handler;

    const-string v1, "handler"

    const/4 v2, 0x0

    invoke-virtual {p1, p0, v2, v0, v1}, Lorg/mortbay/component/Container;->update(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    return-void
.end method
