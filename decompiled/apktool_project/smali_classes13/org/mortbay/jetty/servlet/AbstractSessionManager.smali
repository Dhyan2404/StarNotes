.class public abstract Lorg/mortbay/jetty/servlet/AbstractSessionManager;
.super Lorg/mortbay/component/AbstractLifeCycle;
.source "SourceFile"

# interfaces
.implements Lorg/mortbay/jetty/SessionManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;,
        Lorg/mortbay/jetty/servlet/AbstractSessionManager$SessionIf;,
        Lorg/mortbay/jetty/servlet/AbstractSessionManager$NullSessionContext;
    }
.end annotation


# static fields
.field public static final __distantFuture:I = 0x257da800

.field public static final f:Ljavax/servlet/http/HttpSessionContext;


# instance fields
.field protected _context:Lorg/mortbay/jetty/handler/ContextHandler$SContext;

.field protected _dftMaxIdleSecs:I

.field protected _httpOnly:Z

.field protected _loader:Ljava/lang/ClassLoader;

.field protected _maxCookieAge:I

.field protected _maxSessions:I

.field protected _minSessions:I

.field protected _nodeIdInSessionId:Z

.field protected _refreshCookieAge:I

.field protected _secureCookies:Z

.field protected _sessionAttributeListeners:Ljava/lang/Object;

.field protected _sessionCookie:Ljava/lang/String;

.field protected _sessionDomain:Ljava/lang/String;

.field protected _sessionHandler:Lorg/mortbay/jetty/servlet/SessionHandler;

.field protected _sessionIdManager:Lorg/mortbay/jetty/SessionIdManager;

.field protected _sessionListeners:Ljava/lang/Object;

.field protected _sessionPath:Ljava/lang/String;

.field protected _sessionURL:Ljava/lang/String;

.field protected _sessionURLPrefix:Ljava/lang/String;

.field public e:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/mortbay/jetty/servlet/AbstractSessionManager$NullSessionContext;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/mortbay/jetty/servlet/AbstractSessionManager$NullSessionContext;-><init>(Lorg/mortbay/jetty/servlet/a;)V

    sput-object v0, Lorg/mortbay/jetty/servlet/AbstractSessionManager;->f:Ljavax/servlet/http/HttpSessionContext;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lorg/mortbay/component/AbstractLifeCycle;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager;->e:Z

    const/4 v0, -0x1

    iput v0, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager;->_dftMaxIdleSecs:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager;->_httpOnly:Z

    iput v1, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager;->_maxSessions:I

    iput v1, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager;->_minSessions:I

    iput-boolean v1, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager;->_secureCookies:Z

    const-string v1, "JSESSIONID"

    iput-object v1, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager;->_sessionCookie:Ljava/lang/String;

    const-string v1, "jsessionid"

    iput-object v1, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager;->_sessionURL:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager;->_sessionURL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager;->_sessionURLPrefix:Ljava/lang/String;

    iput v0, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager;->_maxCookieAge:I

    return-void
.end method

.method public static synthetic f()Ljavax/servlet/http/HttpSessionContext;
    .locals 1

    sget-object v0, Lorg/mortbay/jetty/servlet/AbstractSessionManager;->f:Ljavax/servlet/http/HttpSessionContext;

    return-object v0
.end method


# virtual methods
.method public access(Ljavax/servlet/http/HttpSession;Z)Ljavax/servlet/http/Cookie;
    .locals 5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    move-object v2, p1

    check-cast v2, Lorg/mortbay/jetty/servlet/AbstractSessionManager$SessionIf;

    invoke-interface {v2}, Lorg/mortbay/jetty/servlet/AbstractSessionManager$SessionIf;->getSession()Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;->access(J)V

    invoke-virtual {p0}, Lorg/mortbay/jetty/servlet/AbstractSessionManager;->isUsingCookies()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;->isIdChanged()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p0}, Lorg/mortbay/jetty/servlet/AbstractSessionManager;->getMaxCookieAge()I

    move-result v3

    if-lez v3, :cond_1

    invoke-virtual {p0}, Lorg/mortbay/jetty/servlet/AbstractSessionManager;->getRefreshCookieAge()I

    move-result v3

    if-lez v3, :cond_1

    invoke-virtual {v2}, Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;->getCookieSetTime()J

    move-result-wide v3

    sub-long/2addr v0, v3

    const-wide/16 v3, 0x3e8

    div-long/2addr v0, v3

    invoke-virtual {p0}, Lorg/mortbay/jetty/servlet/AbstractSessionManager;->getRefreshCookieAge()I

    move-result v3

    int-to-long v3, v3

    cmp-long v0, v0, v3

    if-lez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager;->_context:Lorg/mortbay/jetty/handler/ContextHandler$SContext;

    invoke-virtual {v0}, Lorg/mortbay/jetty/handler/ContextHandler$SContext;->getContextPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2}, Lorg/mortbay/jetty/servlet/AbstractSessionManager;->getSessionCookie(Ljavax/servlet/http/HttpSession;Ljava/lang/String;Z)Ljavax/servlet/http/Cookie;

    move-result-object p0

    invoke-virtual {v2}, Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;->cookieSet()V

    const/4 p1, 0x0

    invoke-virtual {v2, p1}, Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;->setIdChanged(Z)V

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public addEventListener(Ljava/util/EventListener;)V
    .locals 1

    instance-of v0, p1, Ljavax/servlet/http/HttpSessionAttributeListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager;->_sessionAttributeListeners:Ljava/lang/Object;

    invoke-static {v0, p1}, Lorg/mortbay/util/LazyList;->add(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager;->_sessionAttributeListeners:Ljava/lang/Object;

    :cond_0
    instance-of v0, p1, Ljavax/servlet/http/HttpSessionListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager;->_sessionListeners:Ljava/lang/Object;

    invoke-static {v0, p1}, Lorg/mortbay/util/LazyList;->add(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager;->_sessionListeners:Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public abstract addSession(Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;)V
.end method

.method public addSession(Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager;->_sessionIdManager:Lorg/mortbay/jetty/SessionIdManager;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager;->_sessionIdManager:Lorg/mortbay/jetty/SessionIdManager;

    invoke-interface {v1, p1}, Lorg/mortbay/jetty/SessionIdManager;->addSession(Ljavax/servlet/http/HttpSession;)V

    .line 3
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4
    :try_start_1
    invoke-virtual {p0, p1}, Lorg/mortbay/jetty/servlet/AbstractSessionManager;->addSession(Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;)V

    .line 5
    invoke-virtual {p0}, Lorg/mortbay/jetty/servlet/AbstractSessionManager;->getSessions()I

    move-result v1

    iget v2, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager;->_maxSessions:I

    if-le v1, v2, :cond_0

    .line 6
    invoke-virtual {p0}, Lorg/mortbay/jetty/servlet/AbstractSessionManager;->getSessions()I

    move-result v1

    iput v1, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager;->_maxSessions:I

    .line 7
    :cond_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-nez p2, :cond_1

    .line 9
    invoke-virtual {p1}, Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;->didActivate()V

    goto :goto_1

    .line 10
    :cond_1
    iget-object p2, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager;->_sessionListeners:Ljava/lang/Object;

    if-eqz p2, :cond_2

    .line 11
    new-instance p2, Ljavax/servlet/http/HttpSessionEvent;

    invoke-direct {p2, p1}, Ljavax/servlet/http/HttpSessionEvent;-><init>(Ljavax/servlet/http/HttpSession;)V

    const/4 p1, 0x0

    .line 12
    :goto_0
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager;->_sessionListeners:Ljava/lang/Object;

    invoke-static {v0}, Lorg/mortbay/util/LazyList;->size(Ljava/lang/Object;)I

    move-result v0

    if-ge p1, v0, :cond_2

    .line 13
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager;->_sessionListeners:Ljava/lang/Object;

    invoke-static {v0, p1}, Lorg/mortbay/util/LazyList;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/servlet/http/HttpSessionListener;

    invoke-interface {v0, p2}, Ljavax/servlet/http/HttpSessionListener;->sessionCreated(Ljavax/servlet/http/HttpSessionEvent;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void

    :catchall_0
    move-exception p1

    .line 14
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1

    :catchall_1
    move-exception p0

    .line 15
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p0
.end method

.method public clearEventListeners()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager;->_sessionAttributeListeners:Ljava/lang/Object;

    iput-object v0, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager;->_sessionListeners:Ljava/lang/Object;

    return-void
.end method

.method public complete(Ljavax/servlet/http/HttpSession;)V
    .locals 0

    check-cast p1, Lorg/mortbay/jetty/servlet/AbstractSessionManager$SessionIf;

    invoke-interface {p1}, Lorg/mortbay/jetty/servlet/AbstractSessionManager$SessionIf;->getSession()Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;

    move-result-object p0

    invoke-virtual {p0}, Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;->complete()V

    return-void
.end method

.method public doStart()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {}, Lorg/mortbay/jetty/handler/ContextHandler;->getCurrentContext()Lorg/mortbay/jetty/handler/ContextHandler$SContext;

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager;->_context:Lorg/mortbay/jetty/handler/ContextHandler$SContext;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager;->_loader:Ljava/lang/ClassLoader;

    iget-object v0, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager;->_sessionIdManager:Lorg/mortbay/jetty/SessionIdManager;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/mortbay/jetty/servlet/AbstractSessionManager;->getSessionHandler()Lorg/mortbay/jetty/servlet/SessionHandler;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mortbay/jetty/handler/AbstractHandler;->getServer()Lorg/mortbay/jetty/Server;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {v0}, Lorg/mortbay/jetty/Server;->getSessionIdManager()Lorg/mortbay/jetty/SessionIdManager;

    move-result-object v1

    iput-object v1, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager;->_sessionIdManager:Lorg/mortbay/jetty/SessionIdManager;

    if-nez v1, :cond_0

    new-instance v1, Lorg/mortbay/jetty/servlet/HashSessionIdManager;

    invoke-direct {v1}, Lorg/mortbay/jetty/servlet/HashSessionIdManager;-><init>()V

    iput-object v1, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager;->_sessionIdManager:Lorg/mortbay/jetty/SessionIdManager;

    invoke-virtual {v0, v1}, Lorg/mortbay/jetty/Server;->setSessionIdManager(Lorg/mortbay/jetty/SessionIdManager;)V

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager;->_sessionIdManager:Lorg/mortbay/jetty/SessionIdManager;

    invoke-interface {v0}, Lorg/mortbay/component/LifeCycle;->isStarted()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager;->_sessionIdManager:Lorg/mortbay/jetty/SessionIdManager;

    invoke-interface {v0}, Lorg/mortbay/component/LifeCycle;->start()V

    :cond_2
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager;->_context:Lorg/mortbay/jetty/handler/ContextHandler$SContext;

    if-eqz v0, :cond_9

    const-string v1, "org.mortbay.jetty.servlet.SessionCookie"

    invoke-virtual {v0, v1}, Lorg/mortbay/jetty/handler/ContextHandler$SContext;->getInitParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    iput-object v0, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager;->_sessionCookie:Ljava/lang/String;

    :cond_3
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager;->_context:Lorg/mortbay/jetty/handler/ContextHandler$SContext;

    const-string v1, "org.mortbay.jetty.servlet.SessionURL"

    invoke-virtual {v0, v1}, Lorg/mortbay/jetty/handler/ContextHandler$SContext;->getInitParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    const-string v1, "none"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    move-object v1, v2

    goto :goto_1

    :cond_4
    move-object v1, v0

    :goto_1
    iput-object v1, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager;->_sessionURL:Ljava/lang/String;

    const-string v1, "none"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_2

    :cond_5
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager;->_sessionURL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_2
    iput-object v2, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager;->_sessionURLPrefix:Ljava/lang/String;

    :cond_6
    iget v0, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager;->_maxCookieAge:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_7

    iget-object v0, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager;->_context:Lorg/mortbay/jetty/handler/ContextHandler$SContext;

    const-string v1, "org.mortbay.jetty.servlet.MaxAge"

    invoke-virtual {v0, v1}, Lorg/mortbay/jetty/handler/ContextHandler$SContext;->getInitParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager;->_maxCookieAge:I

    :cond_7
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager;->_sessionDomain:Ljava/lang/String;

    if-nez v0, :cond_8

    iget-object v0, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager;->_context:Lorg/mortbay/jetty/handler/ContextHandler$SContext;

    const-string v1, "org.mortbay.jetty.servlet.SessionDomain"

    invoke-virtual {v0, v1}, Lorg/mortbay/jetty/handler/ContextHandler$SContext;->getInitParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager;->_sessionDomain:Ljava/lang/String;

    :cond_8
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager;->_sessionPath:Ljava/lang/String;

    if-nez v0, :cond_9

    iget-object v0, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager;->_context:Lorg/mortbay/jetty/handler/ContextHandler$SContext;

    const-string v1, "org.mortbay.jetty.servlet.SessionPath"

    invoke-virtual {v0, v1}, Lorg/mortbay/jetty/handler/ContextHandler$SContext;->getInitParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager;->_sessionPath:Ljava/lang/String;

    :cond_9
    invoke-super {p0}, Lorg/mortbay/component/AbstractLifeCycle;->doStart()V

    return-void
.end method

.method public doStop()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-super {p0}, Lorg/mortbay/component/AbstractLifeCycle;->doStop()V

    invoke-virtual {p0}, Lorg/mortbay/jetty/servlet/AbstractSessionManager;->invalidateSessions()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager;->_loader:Ljava/lang/ClassLoader;

    return-void
.end method

.method public getClusterId(Ljavax/servlet/http/HttpSession;)Ljava/lang/String;
    .locals 0

    check-cast p1, Lorg/mortbay/jetty/servlet/AbstractSessionManager$SessionIf;

    invoke-interface {p1}, Lorg/mortbay/jetty/servlet/AbstractSessionManager$SessionIf;->getSession()Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;

    move-result-object p0

    invoke-virtual {p0}, Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;->getClusterId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getHttpOnly()Z
    .locals 0

    iget-boolean p0, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager;->_httpOnly:Z

    return p0
.end method

.method public getHttpSession(Ljava/lang/String;)Ljavax/servlet/http/HttpSession;
    .locals 2

    invoke-virtual {p0}, Lorg/mortbay/jetty/servlet/AbstractSessionManager;->getIdManager()Lorg/mortbay/jetty/SessionIdManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/mortbay/jetty/SessionIdManager;->getClusterId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, v0}, Lorg/mortbay/jetty/servlet/AbstractSessionManager;->getSession(Ljava/lang/String;)Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;->getNodeId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;->setIdChanged(Z)V

    :cond_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getIdManager()Lorg/mortbay/jetty/SessionIdManager;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager;->_sessionIdManager:Lorg/mortbay/jetty/SessionIdManager;

    return-object p0
.end method

.method public getMaxCookieAge()I
    .locals 0

    iget p0, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager;->_maxCookieAge:I

    return p0
.end method

.method public getMaxInactiveInterval()I
    .locals 0

    iget p0, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager;->_dftMaxIdleSecs:I

    return p0
.end method

.method public getMaxSessions()I
    .locals 0

    iget p0, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager;->_maxSessions:I

    return p0
.end method

.method public getMetaManager()Lorg/mortbay/jetty/SessionIdManager;
    .locals 0

    invoke-virtual {p0}, Lorg/mortbay/jetty/servlet/AbstractSessionManager;->getIdManager()Lorg/mortbay/jetty/SessionIdManager;

    move-result-object p0

    return-object p0
.end method

.method public getMinSessions()I
    .locals 0

    iget p0, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager;->_minSessions:I

    return p0
.end method

.method public getNodeId(Ljavax/servlet/http/HttpSession;)Ljava/lang/String;
    .locals 0

    check-cast p1, Lorg/mortbay/jetty/servlet/AbstractSessionManager$SessionIf;

    invoke-interface {p1}, Lorg/mortbay/jetty/servlet/AbstractSessionManager$SessionIf;->getSession()Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;

    move-result-object p0

    invoke-virtual {p0}, Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;->getNodeId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getRefreshCookieAge()I
    .locals 0

    iget p0, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager;->_refreshCookieAge:I

    return p0
.end method

.method public getSecureCookies()Z
    .locals 0

    iget-boolean p0, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager;->_secureCookies:Z

    return p0
.end method

.method public abstract getSession(Ljava/lang/String;)Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;
.end method

.method public getSessionCookie()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager;->_sessionCookie:Ljava/lang/String;

    return-object p0
.end method

.method public getSessionCookie(Ljavax/servlet/http/HttpSession;Ljava/lang/String;Z)Ljavax/servlet/http/Cookie;
    .locals 2

    .line 2
    invoke-virtual {p0}, Lorg/mortbay/jetty/servlet/AbstractSessionManager;->isUsingCookies()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 3
    invoke-virtual {p0, p1}, Lorg/mortbay/jetty/servlet/AbstractSessionManager;->getNodeId(Ljavax/servlet/http/HttpSession;)Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-virtual {p0}, Lorg/mortbay/jetty/servlet/AbstractSessionManager;->getHttpOnly()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/mortbay/jetty/HttpOnlyCookie;

    iget-object v1, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager;->_sessionCookie:Ljava/lang/String;

    invoke-direct {v0, v1, p1}, Lorg/mortbay/jetty/HttpOnlyCookie;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance v0, Ljavax/servlet/http/Cookie;

    iget-object v1, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager;->_sessionCookie:Ljava/lang/String;

    invoke-direct {v0, v1, p1}, Ljavax/servlet/http/Cookie;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    if-eqz p2, :cond_1

    .line 5
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_2

    :cond_1
    const-string p2, "/"

    :cond_2
    invoke-virtual {v0, p2}, Ljavax/servlet/http/Cookie;->setPath(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p0}, Lorg/mortbay/jetty/servlet/AbstractSessionManager;->getMaxCookieAge()I

    move-result p1

    invoke-virtual {v0, p1}, Ljavax/servlet/http/Cookie;->setMaxAge(I)V

    if-eqz p3, :cond_3

    .line 7
    invoke-virtual {p0}, Lorg/mortbay/jetty/servlet/AbstractSessionManager;->getSecureCookies()Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x1

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    :goto_1
    invoke-virtual {v0, p1}, Ljavax/servlet/http/Cookie;->setSecure(Z)V

    .line 8
    iget-object p1, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager;->_sessionDomain:Ljava/lang/String;

    if-eqz p1, :cond_4

    .line 9
    invoke-virtual {v0, p1}, Ljavax/servlet/http/Cookie;->setDomain(Ljava/lang/String;)V

    .line 10
    :cond_4
    iget-object p0, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager;->_sessionPath:Ljava/lang/String;

    if-eqz p0, :cond_5

    .line 11
    invoke-virtual {v0, p0}, Ljavax/servlet/http/Cookie;->setPath(Ljava/lang/String;)V

    :cond_5
    return-object v0

    :cond_6
    const/4 p0, 0x0

    return-object p0
.end method

.method public getSessionDomain()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager;->_sessionDomain:Ljava/lang/String;

    return-object p0
.end method

.method public getSessionHandler()Lorg/mortbay/jetty/servlet/SessionHandler;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager;->_sessionHandler:Lorg/mortbay/jetty/servlet/SessionHandler;

    return-object p0
.end method

.method public abstract getSessionMap()Ljava/util/Map;
.end method

.method public getSessionPath()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager;->_sessionPath:Ljava/lang/String;

    return-object p0
.end method

.method public getSessionURL()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager;->_sessionURL:Ljava/lang/String;

    return-object p0
.end method

.method public getSessionURLPrefix()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager;->_sessionURLPrefix:Ljava/lang/String;

    return-object p0
.end method

.method public abstract getSessions()I
.end method

.method public abstract invalidateSessions()V
.end method

.method public isNodeIdInSessionId()Z
    .locals 0

    iget-boolean p0, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager;->_nodeIdInSessionId:Z

    return p0
.end method

.method public isUsingCookies()Z
    .locals 0

    iget-boolean p0, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager;->e:Z

    return p0
.end method

.method public isValid(Ljavax/servlet/http/HttpSession;)Z
    .locals 0

    check-cast p1, Lorg/mortbay/jetty/servlet/AbstractSessionManager$SessionIf;

    invoke-interface {p1}, Lorg/mortbay/jetty/servlet/AbstractSessionManager$SessionIf;->getSession()Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;

    move-result-object p0

    invoke-virtual {p0}, Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;->isValid()Z

    move-result p0

    return p0
.end method

.method public newHttpSession(Ljavax/servlet/http/HttpServletRequest;)Ljavax/servlet/http/HttpSession;
    .locals 1

    invoke-virtual {p0, p1}, Lorg/mortbay/jetty/servlet/AbstractSessionManager;->newSession(Ljavax/servlet/http/HttpServletRequest;)Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;

    move-result-object p1

    iget v0, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager;->_dftMaxIdleSecs:I

    invoke-virtual {p1, v0}, Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;->setMaxInactiveInterval(I)V

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/mortbay/jetty/servlet/AbstractSessionManager;->addSession(Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;Z)V

    return-object p1
.end method

.method public abstract newSession(Ljavax/servlet/http/HttpServletRequest;)Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;
.end method

.method public removeEventListener(Ljava/util/EventListener;)V
    .locals 1

    instance-of v0, p1, Ljavax/servlet/http/HttpSessionAttributeListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager;->_sessionAttributeListeners:Ljava/lang/Object;

    invoke-static {v0, p1}, Lorg/mortbay/util/LazyList;->remove(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager;->_sessionAttributeListeners:Ljava/lang/Object;

    :cond_0
    instance-of v0, p1, Ljavax/servlet/http/HttpSessionListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager;->_sessionListeners:Ljava/lang/Object;

    invoke-static {v0, p1}, Lorg/mortbay/util/LazyList;->remove(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager;->_sessionListeners:Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public abstract removeSession(Ljava/lang/String;)V
.end method

.method public removeSession(Ljavax/servlet/http/HttpSession;Z)V
    .locals 0

    .line 1
    check-cast p1, Lorg/mortbay/jetty/servlet/AbstractSessionManager$SessionIf;

    invoke-interface {p1}, Lorg/mortbay/jetty/servlet/AbstractSessionManager$SessionIf;->getSession()Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;

    move-result-object p1

    .line 2
    invoke-virtual {p0, p1, p2}, Lorg/mortbay/jetty/servlet/AbstractSessionManager;->removeSession(Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;Z)V

    return-void
.end method

.method public removeSession(Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;Z)V
    .locals 3

    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    invoke-virtual {p1}, Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;->getClusterId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/mortbay/jetty/servlet/AbstractSessionManager;->getSession(Ljava/lang/String;)Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p1}, Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;->getClusterId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/mortbay/jetty/servlet/AbstractSessionManager;->removeSession(Ljava/lang/String;)V

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 6
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    .line 7
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager;->_sessionIdManager:Lorg/mortbay/jetty/SessionIdManager;

    invoke-interface {v0, p1}, Lorg/mortbay/jetty/SessionIdManager;->removeSession(Ljavax/servlet/http/HttpSession;)V

    .line 8
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager;->_sessionIdManager:Lorg/mortbay/jetty/SessionIdManager;

    invoke-virtual {p1}, Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;->getClusterId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/mortbay/jetty/SessionIdManager;->invalidateAll(Ljava/lang/String;)V

    :cond_1
    if-eqz p2, :cond_2

    .line 9
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager;->_sessionListeners:Ljava/lang/Object;

    if-eqz v0, :cond_2

    .line 10
    new-instance v0, Ljavax/servlet/http/HttpSessionEvent;

    invoke-direct {v0, p1}, Ljavax/servlet/http/HttpSessionEvent;-><init>(Ljavax/servlet/http/HttpSession;)V

    .line 11
    iget-object v1, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager;->_sessionListeners:Ljava/lang/Object;

    invoke-static {v1}, Lorg/mortbay/util/LazyList;->size(Ljava/lang/Object;)I

    move-result v1

    :goto_1
    add-int/lit8 v2, v1, -0x1

    if-lez v1, :cond_2

    .line 12
    iget-object v1, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager;->_sessionListeners:Ljava/lang/Object;

    invoke-static {v1, v2}, Lorg/mortbay/util/LazyList;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/servlet/http/HttpSessionListener;

    invoke-interface {v1, v0}, Ljavax/servlet/http/HttpSessionListener;->sessionDestroyed(Ljavax/servlet/http/HttpSessionEvent;)V

    move v1, v2

    goto :goto_1

    :cond_2
    if-nez p2, :cond_3

    .line 13
    invoke-virtual {p1}, Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;->willPassivate()V

    :cond_3
    return-void

    :catchall_0
    move-exception p1

    .line 14
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public resetStats()V
    .locals 1

    invoke-virtual {p0}, Lorg/mortbay/jetty/servlet/AbstractSessionManager;->getSessions()I

    move-result v0

    iput v0, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager;->_minSessions:I

    invoke-virtual {p0}, Lorg/mortbay/jetty/servlet/AbstractSessionManager;->getSessions()I

    move-result v0

    iput v0, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager;->_maxSessions:I

    return-void
.end method

.method public setHttpOnly(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager;->_httpOnly:Z

    return-void
.end method

.method public setIdManager(Lorg/mortbay/jetty/SessionIdManager;)V
    .locals 0

    iput-object p1, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager;->_sessionIdManager:Lorg/mortbay/jetty/SessionIdManager;

    return-void
.end method

.method public setMaxCookieAge(I)V
    .locals 1

    iput p1, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager;->_maxCookieAge:I

    if-lez p1, :cond_0

    iget v0, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager;->_refreshCookieAge:I

    if-nez v0, :cond_0

    div-int/lit8 p1, p1, 0x3

    iput p1, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager;->_refreshCookieAge:I

    :cond_0
    return-void
.end method

.method public setMaxInactiveInterval(I)V
    .locals 0

    iput p1, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager;->_dftMaxIdleSecs:I

    return-void
.end method

.method public setMetaManager(Lorg/mortbay/jetty/SessionIdManager;)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/mortbay/jetty/servlet/AbstractSessionManager;->setIdManager(Lorg/mortbay/jetty/SessionIdManager;)V

    return-void
.end method

.method public setNodeIdInSessionId(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager;->_nodeIdInSessionId:Z

    return-void
.end method

.method public setRefreshCookieAge(I)V
    .locals 0

    iput p1, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager;->_refreshCookieAge:I

    return-void
.end method

.method public setSecureCookies(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager;->_secureCookies:Z

    return-void
.end method

.method public setSessionCookie(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager;->_sessionCookie:Ljava/lang/String;

    return-void
.end method

.method public setSessionDomain(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager;->_sessionDomain:Ljava/lang/String;

    return-void
.end method

.method public setSessionHandler(Lorg/mortbay/jetty/servlet/SessionHandler;)V
    .locals 0

    iput-object p1, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager;->_sessionHandler:Lorg/mortbay/jetty/servlet/SessionHandler;

    return-void
.end method

.method public setSessionPath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager;->_sessionPath:Ljava/lang/String;

    return-void
.end method

.method public setSessionURL(Ljava/lang/String;)V
    .locals 3

    const-string v0, "none"

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move-object v2, p1

    goto :goto_1

    :cond_1
    :goto_0
    move-object v2, v1

    :goto_1
    iput-object v2, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager;->_sessionURL:Ljava/lang/String;

    if-eqz p1, :cond_3

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v0, ";"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager;->_sessionURL:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_3
    :goto_2
    iput-object v1, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager;->_sessionURLPrefix:Ljava/lang/String;

    return-void
.end method

.method public setUsingCookies(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager;->e:Z

    return-void
.end method
