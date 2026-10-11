.class public Lorg/mortbay/jetty/servlet/SessionHandler;
.super Lorg/mortbay/jetty/handler/HandlerWrapper;
.source "SourceFile"


# instance fields
.field public g:Lorg/mortbay/jetty/SessionManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    new-instance v0, Lorg/mortbay/jetty/servlet/HashSessionManager;

    invoke-direct {v0}, Lorg/mortbay/jetty/servlet/HashSessionManager;-><init>()V

    invoke-direct {p0, v0}, Lorg/mortbay/jetty/servlet/SessionHandler;-><init>(Lorg/mortbay/jetty/SessionManager;)V

    return-void
.end method

.method public constructor <init>(Lorg/mortbay/jetty/SessionManager;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lorg/mortbay/jetty/handler/HandlerWrapper;-><init>()V

    .line 3
    invoke-virtual {p0, p1}, Lorg/mortbay/jetty/servlet/SessionHandler;->setSessionManager(Lorg/mortbay/jetty/SessionManager;)V

    return-void
.end method


# virtual methods
.method public addEventListener(Ljava/util/EventListener;)V
    .locals 0

    iget-object p0, p0, Lorg/mortbay/jetty/servlet/SessionHandler;->g:Lorg/mortbay/jetty/SessionManager;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lorg/mortbay/jetty/SessionManager;->addEventListener(Ljava/util/EventListener;)V

    :cond_0
    return-void
.end method

.method public clearEventListeners()V
    .locals 0

    iget-object p0, p0, Lorg/mortbay/jetty/servlet/SessionHandler;->g:Lorg/mortbay/jetty/SessionManager;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lorg/mortbay/jetty/SessionManager;->clearEventListeners()V

    :cond_0
    return-void
.end method

.method public doStart()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lorg/mortbay/jetty/servlet/SessionHandler;->g:Lorg/mortbay/jetty/SessionManager;

    invoke-interface {v0}, Lorg/mortbay/component/LifeCycle;->start()V

    invoke-super {p0}, Lorg/mortbay/jetty/handler/HandlerWrapper;->doStart()V

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

    iget-object p0, p0, Lorg/mortbay/jetty/servlet/SessionHandler;->g:Lorg/mortbay/jetty/SessionManager;

    invoke-interface {p0}, Lorg/mortbay/component/LifeCycle;->stop()V

    return-void
.end method

.method public getSessionManager()Lorg/mortbay/jetty/SessionManager;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/jetty/servlet/SessionHandler;->g:Lorg/mortbay/jetty/SessionManager;

    return-object p0
.end method

.method public handle(Ljava/lang/String;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;I)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/servlet/ServletException;
        }
    .end annotation

    invoke-virtual {p0, p2, p4}, Lorg/mortbay/jetty/servlet/SessionHandler;->setRequestedId(Ljavax/servlet/http/HttpServletRequest;I)V

    instance-of v0, p2, Lorg/mortbay/jetty/Request;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lorg/mortbay/jetty/Request;

    goto :goto_0

    :cond_0
    invoke-static {}, Lorg/mortbay/jetty/HttpConnection;->getCurrentConnection()Lorg/mortbay/jetty/HttpConnection;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mortbay/jetty/HttpConnection;->getRequest()Lorg/mortbay/jetty/Request;

    move-result-object v0

    :goto_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v0}, Lorg/mortbay/jetty/Request;->getSessionManager()Lorg/mortbay/jetty/SessionManager;

    move-result-object v3
    :try_end_0
    .catch Lorg/mortbay/jetty/RetryRequest; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    invoke-virtual {v0, v2}, Lorg/mortbay/jetty/Request;->getSession(Z)Ljavax/servlet/http/HttpSession;

    move-result-object v4
    :try_end_1
    .catch Lorg/mortbay/jetty/RetryRequest; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v5, p0, Lorg/mortbay/jetty/servlet/SessionHandler;->g:Lorg/mortbay/jetty/SessionManager;

    if-eq v3, v5, :cond_1

    invoke-virtual {v0, v5}, Lorg/mortbay/jetty/Request;->setSessionManager(Lorg/mortbay/jetty/SessionManager;)V

    invoke-virtual {v0, v1}, Lorg/mortbay/jetty/Request;->setSession(Ljavax/servlet/http/HttpSession;)V

    :cond_1
    iget-object v5, p0, Lorg/mortbay/jetty/servlet/SessionHandler;->g:Lorg/mortbay/jetty/SessionManager;

    if-eqz v5, :cond_3

    invoke-virtual {v0, v2}, Lorg/mortbay/jetty/Request;->getSession(Z)Ljavax/servlet/http/HttpSession;

    move-result-object v1

    if-eqz v1, :cond_2

    if-eq v1, v4, :cond_3

    iget-object v5, p0, Lorg/mortbay/jetty/servlet/SessionHandler;->g:Lorg/mortbay/jetty/SessionManager;

    invoke-interface {p2}, Ljavax/servlet/ServletRequest;->isSecure()Z

    move-result v6

    invoke-interface {v5, v1, v6}, Lorg/mortbay/jetty/SessionManager;->access(Ljavax/servlet/http/HttpSession;Z)Ljavax/servlet/http/Cookie;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-interface {p3, v5}, Ljavax/servlet/http/HttpServletResponse;->addCookie(Ljavax/servlet/http/Cookie;)V

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lorg/mortbay/jetty/servlet/SessionHandler;->g:Lorg/mortbay/jetty/SessionManager;

    invoke-virtual {v0, v1}, Lorg/mortbay/jetty/Request;->recoverNewSession(Ljava/lang/Object;)Ljavax/servlet/http/HttpSession;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0, v1}, Lorg/mortbay/jetty/Request;->setSession(Ljavax/servlet/http/HttpSession;)V

    :cond_3
    :goto_1
    invoke-static {}, Lorg/mortbay/log/Log;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_4

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "sessionManager="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v6, p0, Lorg/mortbay/jetty/servlet/SessionHandler;->g:Lorg/mortbay/jetty/SessionManager;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "session="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;)V

    :cond_4
    invoke-virtual {p0}, Lorg/mortbay/jetty/handler/HandlerWrapper;->getHandler()Lorg/mortbay/jetty/Handler;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3, p4}, Lorg/mortbay/jetty/Handler;->handle(Ljava/lang/String;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;I)V
    :try_end_2
    .catch Lorg/mortbay/jetty/RetryRequest; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-interface {p2, v2}, Ljavax/servlet/http/HttpServletRequest;->getSession(Z)Ljavax/servlet/http/HttpSession;

    move-result-object p1

    iget-object p0, p0, Lorg/mortbay/jetty/servlet/SessionHandler;->g:Lorg/mortbay/jetty/SessionManager;

    if-eq v3, p0, :cond_6

    if-eqz p1, :cond_5

    invoke-interface {p0, p1}, Lorg/mortbay/jetty/SessionManager;->complete(Ljavax/servlet/http/HttpSession;)V

    :cond_5
    if-eqz v3, :cond_6

    invoke-virtual {v0, v3}, Lorg/mortbay/jetty/Request;->setSessionManager(Lorg/mortbay/jetty/SessionManager;)V

    invoke-virtual {v0, v4}, Lorg/mortbay/jetty/Request;->setSession(Ljavax/servlet/http/HttpSession;)V

    :cond_6
    return-void

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_3

    :catchall_1
    move-exception p1

    move-object v4, v1

    :goto_2
    move-object v1, v3

    goto :goto_5

    :catch_1
    move-exception p1

    move-object v4, v1

    :goto_3
    move-object v1, v3

    goto :goto_4

    :catchall_2
    move-exception p1

    move-object v4, v1

    goto :goto_5

    :catch_2
    move-exception p1

    move-object v4, v1

    :goto_4
    :try_start_3
    invoke-virtual {v0, v2}, Lorg/mortbay/jetty/Request;->getSession(Z)Ljavax/servlet/http/HttpSession;

    move-result-object p3

    if-eqz p3, :cond_7

    invoke-interface {p3}, Ljavax/servlet/http/HttpSession;->isNew()Z

    move-result p4

    if-eqz p4, :cond_7

    iget-object p4, p0, Lorg/mortbay/jetty/servlet/SessionHandler;->g:Lorg/mortbay/jetty/SessionManager;

    invoke-virtual {v0, p4, p3}, Lorg/mortbay/jetty/Request;->saveNewSession(Ljava/lang/Object;Ljavax/servlet/http/HttpSession;)V

    :cond_7
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :catchall_3
    move-exception p1

    :goto_5
    invoke-interface {p2, v2}, Ljavax/servlet/http/HttpServletRequest;->getSession(Z)Ljavax/servlet/http/HttpSession;

    move-result-object p2

    iget-object p0, p0, Lorg/mortbay/jetty/servlet/SessionHandler;->g:Lorg/mortbay/jetty/SessionManager;

    if-eq v1, p0, :cond_9

    if-eqz p2, :cond_8

    invoke-interface {p0, p2}, Lorg/mortbay/jetty/SessionManager;->complete(Ljavax/servlet/http/HttpSession;)V

    :cond_8
    if-eqz v1, :cond_9

    invoke-virtual {v0, v1}, Lorg/mortbay/jetty/Request;->setSessionManager(Lorg/mortbay/jetty/SessionManager;)V

    invoke-virtual {v0, v4}, Lorg/mortbay/jetty/Request;->setSession(Ljavax/servlet/http/HttpSession;)V

    :cond_9
    throw p1
.end method

.method public setRequestedId(Ljavax/servlet/http/HttpServletRequest;I)V
    .locals 10

    instance-of v0, p1, Lorg/mortbay/jetty/Request;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lorg/mortbay/jetty/Request;

    goto :goto_0

    :cond_0
    invoke-static {}, Lorg/mortbay/jetty/HttpConnection;->getCurrentConnection()Lorg/mortbay/jetty/HttpConnection;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mortbay/jetty/HttpConnection;->getRequest()Lorg/mortbay/jetty/Request;

    move-result-object v0

    :goto_0
    invoke-interface {p1}, Ljavax/servlet/http/HttpServletRequest;->getRequestedSessionId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    if-ne p2, v2, :cond_e

    if-eqz v1, :cond_1

    goto/16 :goto_6

    :cond_1
    invoke-virtual {p0}, Lorg/mortbay/jetty/servlet/SessionHandler;->getSessionManager()Lorg/mortbay/jetty/SessionManager;

    move-result-object p2

    iget-object p0, p0, Lorg/mortbay/jetty/servlet/SessionHandler;->g:Lorg/mortbay/jetty/SessionManager;

    invoke-interface {p0}, Lorg/mortbay/jetty/SessionManager;->isUsingCookies()Z

    move-result p0

    const-string v3, "Got Session ID "

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz p0, :cond_6

    invoke-interface {p1}, Ljavax/servlet/http/HttpServletRequest;->getCookies()[Ljavax/servlet/http/Cookie;

    move-result-object p0

    if-eqz p0, :cond_6

    array-length v6, p0

    if-lez v6, :cond_6

    move v6, v4

    move v7, v6

    :goto_1
    array-length v8, p0

    if-ge v6, v8, :cond_7

    invoke-interface {p2}, Lorg/mortbay/jetty/SessionManager;->getSessionCookie()Ljava/lang/String;

    move-result-object v8

    aget-object v9, p0, v6

    invoke-virtual {v9}, Ljavax/servlet/http/Cookie;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    if-eqz v1, :cond_2

    invoke-interface {p2, v1}, Lorg/mortbay/jetty/SessionManager;->getHttpSession(Ljava/lang/String;)Ljavax/servlet/http/HttpSession;

    move-result-object v8

    if-eqz v8, :cond_2

    goto :goto_2

    :cond_2
    aget-object v1, p0, v6

    invoke-virtual {v1}, Ljavax/servlet/http/Cookie;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lorg/mortbay/log/Log;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_3

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v7, " from cookie"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;)V

    :cond_3
    invoke-interface {p2, v1}, Lorg/mortbay/jetty/SessionManager;->getHttpSession(Ljava/lang/String;)Ljavax/servlet/http/HttpSession;

    move-result-object v5

    if-eqz v5, :cond_4

    invoke-virtual {v0, v5}, Lorg/mortbay/jetty/Request;->setSession(Ljavax/servlet/http/HttpSession;)V

    :cond_4
    move v7, v2

    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_6
    move v7, v4

    :cond_7
    :goto_2
    if-eqz v1, :cond_8

    if-nez v5, :cond_c

    :cond_8
    invoke-interface {p1}, Ljavax/servlet/http/HttpServletRequest;->getRequestURI()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2}, Lorg/mortbay/jetty/SessionManager;->getSessionURLPrefix()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_c

    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p2

    if-ltz p2, :cond_c

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr p2, p1

    move p1, p2

    :goto_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge p1, v1, :cond_a

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v5, 0x3b

    if-eq v1, v5, :cond_a

    const/16 v5, 0x23

    if-eq v1, v5, :cond_a

    const/16 v5, 0x3f

    if-eq v1, v5, :cond_a

    const/16 v5, 0x2f

    if-ne v1, v5, :cond_9

    goto :goto_4

    :cond_9
    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    :cond_a
    :goto_4
    invoke-virtual {p0, p2, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lorg/mortbay/log/Log;->isDebugEnabled()Z

    move-result p0

    if-eqz p0, :cond_b

    new-instance p0, Ljava/lang/StringBuffer;

    invoke-direct {p0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, " from URL"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;)V

    :cond_b
    move v7, v4

    :cond_c
    invoke-virtual {v0, v1}, Lorg/mortbay/jetty/Request;->setRequestedSessionId(Ljava/lang/String;)V

    if-eqz v1, :cond_d

    if-eqz v7, :cond_d

    goto :goto_5

    :cond_d
    move v2, v4

    :goto_5
    invoke-virtual {v0, v2}, Lorg/mortbay/jetty/Request;->setRequestedSessionIdFromCookie(Z)V

    :cond_e
    :goto_6
    return-void
.end method

.method public setServer(Lorg/mortbay/jetty/Server;)V
    .locals 13

    invoke-virtual {p0}, Lorg/mortbay/jetty/handler/AbstractHandler;->getServer()Lorg/mortbay/jetty/Server;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eq v0, p1, :cond_0

    invoke-virtual {v0}, Lorg/mortbay/jetty/Server;->getContainer()Lorg/mortbay/component/Container;

    move-result-object v1

    iget-object v3, p0, Lorg/mortbay/jetty/servlet/SessionHandler;->g:Lorg/mortbay/jetty/SessionManager;

    const/4 v4, 0x0

    const-string v5, "sessionManager"

    const/4 v6, 0x1

    move-object v2, p0

    invoke-virtual/range {v1 .. v6}, Lorg/mortbay/component/Container;->update(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Z)V

    :cond_0
    invoke-super {p0, p1}, Lorg/mortbay/jetty/handler/HandlerWrapper;->setServer(Lorg/mortbay/jetty/Server;)V

    if-eqz p1, :cond_1

    if-eq p1, v0, :cond_1

    invoke-virtual {p1}, Lorg/mortbay/jetty/Server;->getContainer()Lorg/mortbay/component/Container;

    move-result-object v7

    const/4 v9, 0x0

    iget-object v10, p0, Lorg/mortbay/jetty/servlet/SessionHandler;->g:Lorg/mortbay/jetty/SessionManager;

    const-string v11, "sessionManager"

    const/4 v12, 0x1

    move-object v8, p0

    invoke-virtual/range {v7 .. v12}, Lorg/mortbay/component/Container;->update(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Z)V

    :cond_1
    return-void
.end method

.method public setSessionManager(Lorg/mortbay/jetty/SessionManager;)V
    .locals 7

    invoke-virtual {p0}, Lorg/mortbay/component/AbstractLifeCycle;->isStarted()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/mortbay/jetty/servlet/SessionHandler;->g:Lorg/mortbay/jetty/SessionManager;

    invoke-virtual {p0}, Lorg/mortbay/jetty/handler/AbstractHandler;->getServer()Lorg/mortbay/jetty/Server;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lorg/mortbay/jetty/handler/AbstractHandler;->getServer()Lorg/mortbay/jetty/Server;

    move-result-object v1

    invoke-virtual {v1}, Lorg/mortbay/jetty/Server;->getContainer()Lorg/mortbay/component/Container;

    move-result-object v1

    const-string v5, "sessionManager"

    const/4 v6, 0x1

    move-object v2, p0

    move-object v3, v0

    move-object v4, p1

    invoke-virtual/range {v1 .. v6}, Lorg/mortbay/component/Container;->update(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Z)V

    :cond_0
    if-eqz p1, :cond_1

    invoke-interface {p1, p0}, Lorg/mortbay/jetty/SessionManager;->setSessionHandler(Lorg/mortbay/jetty/servlet/SessionHandler;)V

    :cond_1
    iput-object p1, p0, Lorg/mortbay/jetty/servlet/SessionHandler;->g:Lorg/mortbay/jetty/SessionManager;

    if-eqz v0, :cond_2

    const/4 p0, 0x0

    invoke-interface {v0, p0}, Lorg/mortbay/jetty/SessionManager;->setSessionHandler(Lorg/mortbay/jetty/servlet/SessionHandler;)V

    :cond_2
    return-void

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method
