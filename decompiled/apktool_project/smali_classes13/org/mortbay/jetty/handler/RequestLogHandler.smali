.class public Lorg/mortbay/jetty/handler/RequestLogHandler;
.super Lorg/mortbay/jetty/handler/HandlerWrapper;
.source "SourceFile"


# instance fields
.field public g:Lorg/mortbay/jetty/RequestLog;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/mortbay/jetty/handler/HandlerWrapper;-><init>()V

    return-void
.end method


# virtual methods
.method public doStart()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-super {p0}, Lorg/mortbay/jetty/handler/HandlerWrapper;->doStart()V

    iget-object p0, p0, Lorg/mortbay/jetty/handler/RequestLogHandler;->g:Lorg/mortbay/jetty/RequestLog;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lorg/mortbay/component/LifeCycle;->start()V

    :cond_0
    return-void
.end method

.method public doStop()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-super {p0}, Lorg/mortbay/jetty/handler/HandlerWrapper;->doStop()V

    iget-object p0, p0, Lorg/mortbay/jetty/handler/RequestLogHandler;->g:Lorg/mortbay/jetty/RequestLog;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lorg/mortbay/component/LifeCycle;->stop()V

    :cond_0
    return-void
.end method

.method public getRequestLog()Lorg/mortbay/jetty/RequestLog;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/jetty/handler/RequestLogHandler;->g:Lorg/mortbay/jetty/RequestLog;

    return-object p0
.end method

.method public handle(Ljava/lang/String;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/servlet/ServletException;
        }
    .end annotation

    invoke-super {p0, p1, p2, p3, p4}, Lorg/mortbay/jetty/handler/HandlerWrapper;->handle(Ljava/lang/String;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;I)V

    const/4 p1, 0x1

    if-ne p4, p1, :cond_0

    iget-object p0, p0, Lorg/mortbay/jetty/handler/RequestLogHandler;->g:Lorg/mortbay/jetty/RequestLog;

    if-eqz p0, :cond_0

    check-cast p2, Lorg/mortbay/jetty/Request;

    check-cast p3, Lorg/mortbay/jetty/Response;

    invoke-interface {p0, p2, p3}, Lorg/mortbay/jetty/RequestLog;->log(Lorg/mortbay/jetty/Request;Lorg/mortbay/jetty/Response;)V

    :cond_0
    return-void
.end method

.method public setRequestLog(Lorg/mortbay/jetty/RequestLog;)V
    .locals 7

    :try_start_0
    iget-object v0, p0, Lorg/mortbay/jetty/handler/RequestLogHandler;->g:Lorg/mortbay/jetty/RequestLog;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/mortbay/component/LifeCycle;->stop()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/mortbay/log/Log;->warn(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lorg/mortbay/jetty/handler/AbstractHandler;->getServer()Lorg/mortbay/jetty/Server;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/mortbay/jetty/handler/AbstractHandler;->getServer()Lorg/mortbay/jetty/Server;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mortbay/jetty/Server;->getContainer()Lorg/mortbay/component/Container;

    move-result-object v1

    iget-object v3, p0, Lorg/mortbay/jetty/handler/RequestLogHandler;->g:Lorg/mortbay/jetty/RequestLog;

    const-string v5, "logimpl"

    const/4 v6, 0x1

    move-object v2, p0

    move-object v4, p1

    invoke-virtual/range {v1 .. v6}, Lorg/mortbay/component/Container;->update(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Z)V

    :cond_1
    iput-object p1, p0, Lorg/mortbay/jetty/handler/RequestLogHandler;->g:Lorg/mortbay/jetty/RequestLog;

    :try_start_1
    invoke-virtual {p0}, Lorg/mortbay/component/AbstractLifeCycle;->isStarted()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Lorg/mortbay/jetty/handler/RequestLogHandler;->g:Lorg/mortbay/jetty/RequestLog;

    if-eqz p0, :cond_2

    invoke-interface {p0}, Lorg/mortbay/component/LifeCycle;->start()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_2
    return-void

    :catch_1
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public setServer(Lorg/mortbay/jetty/Server;)V
    .locals 7

    iget-object v0, p0, Lorg/mortbay/jetty/handler/RequestLogHandler;->g:Lorg/mortbay/jetty/RequestLog;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/mortbay/jetty/handler/AbstractHandler;->getServer()Lorg/mortbay/jetty/Server;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/mortbay/jetty/handler/AbstractHandler;->getServer()Lorg/mortbay/jetty/Server;

    move-result-object v0

    if-eq v0, p1, :cond_0

    invoke-virtual {p0}, Lorg/mortbay/jetty/handler/AbstractHandler;->getServer()Lorg/mortbay/jetty/Server;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mortbay/jetty/Server;->getContainer()Lorg/mortbay/component/Container;

    move-result-object v1

    iget-object v3, p0, Lorg/mortbay/jetty/handler/RequestLogHandler;->g:Lorg/mortbay/jetty/RequestLog;

    const/4 v4, 0x0

    const-string v5, "logimpl"

    const/4 v6, 0x1

    move-object v2, p0

    invoke-virtual/range {v1 .. v6}, Lorg/mortbay/component/Container;->update(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Z)V

    :cond_0
    invoke-super {p0, p1}, Lorg/mortbay/jetty/handler/HandlerWrapper;->setServer(Lorg/mortbay/jetty/Server;)V

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lorg/mortbay/jetty/handler/AbstractHandler;->getServer()Lorg/mortbay/jetty/Server;

    move-result-object v0

    if-eq p1, v0, :cond_2

    invoke-virtual {p1}, Lorg/mortbay/jetty/Server;->getContainer()Lorg/mortbay/component/Container;

    move-result-object v1

    const/4 v3, 0x0

    iget-object v4, p0, Lorg/mortbay/jetty/handler/RequestLogHandler;->g:Lorg/mortbay/jetty/RequestLog;

    const-string v5, "logimpl"

    const/4 v6, 0x1

    move-object v2, p0

    invoke-virtual/range {v1 .. v6}, Lorg/mortbay/component/Container;->update(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_1
    invoke-super {p0, p1}, Lorg/mortbay/jetty/handler/HandlerWrapper;->setServer(Lorg/mortbay/jetty/Server;)V

    :cond_2
    :goto_0
    return-void
.end method
