.class public Lorg/mortbay/jetty/servlet/Context;
.super Lorg/mortbay/jetty/handler/ContextHandler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mortbay/jetty/servlet/Context$SContext;
    }
.end annotation


# static fields
.field public static final NO_SECURITY:I = 0x0

.field public static final NO_SESSIONS:I = 0x0

.field public static final SECURITY:I = 0x2

.field public static final SESSIONS:I = 0x1


# instance fields
.field protected _securityHandler:Lorg/mortbay/jetty/security/SecurityHandler;

.field protected _servletHandler:Lorg/mortbay/jetty/servlet/ServletHandler;

.field protected _sessionHandler:Lorg/mortbay/jetty/servlet/SessionHandler;


# direct methods
.method public constructor <init>()V
    .locals 6

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    .line 1
    invoke-direct/range {v0 .. v5}, Lorg/mortbay/jetty/servlet/Context;-><init>(Lorg/mortbay/jetty/HandlerContainer;Lorg/mortbay/jetty/servlet/SessionHandler;Lorg/mortbay/jetty/security/SecurityHandler;Lorg/mortbay/jetty/servlet/ServletHandler;Lorg/mortbay/jetty/handler/ErrorHandler;)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0, v0, p1}, Lorg/mortbay/jetty/servlet/Context;-><init>(Lorg/mortbay/jetty/HandlerContainer;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Lorg/mortbay/jetty/HandlerContainer;Ljava/lang/String;)V
    .locals 7

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 3
    invoke-direct/range {v0 .. v6}, Lorg/mortbay/jetty/servlet/Context;-><init>(Lorg/mortbay/jetty/HandlerContainer;Ljava/lang/String;Lorg/mortbay/jetty/servlet/SessionHandler;Lorg/mortbay/jetty/security/SecurityHandler;Lorg/mortbay/jetty/servlet/ServletHandler;Lorg/mortbay/jetty/handler/ErrorHandler;)V

    return-void
.end method

.method public constructor <init>(Lorg/mortbay/jetty/HandlerContainer;Ljava/lang/String;I)V
    .locals 9

    and-int/lit8 v0, p3, 0x1

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 4
    new-instance v0, Lorg/mortbay/jetty/servlet/SessionHandler;

    invoke-direct {v0}, Lorg/mortbay/jetty/servlet/SessionHandler;-><init>()V

    move-object v5, v0

    goto :goto_0

    :cond_0
    move-object v5, v1

    :goto_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    new-instance v1, Lorg/mortbay/jetty/security/SecurityHandler;

    invoke-direct {v1}, Lorg/mortbay/jetty/security/SecurityHandler;-><init>()V

    :cond_1
    move-object v6, v1

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v2 .. v8}, Lorg/mortbay/jetty/servlet/Context;-><init>(Lorg/mortbay/jetty/HandlerContainer;Ljava/lang/String;Lorg/mortbay/jetty/servlet/SessionHandler;Lorg/mortbay/jetty/security/SecurityHandler;Lorg/mortbay/jetty/servlet/ServletHandler;Lorg/mortbay/jetty/handler/ErrorHandler;)V

    return-void
.end method

.method public constructor <init>(Lorg/mortbay/jetty/HandlerContainer;Ljava/lang/String;Lorg/mortbay/jetty/servlet/SessionHandler;Lorg/mortbay/jetty/security/SecurityHandler;Lorg/mortbay/jetty/servlet/ServletHandler;Lorg/mortbay/jetty/handler/ErrorHandler;)V
    .locals 1

    const/4 v0, 0x0

    .line 7
    invoke-direct {p0, v0}, Lorg/mortbay/jetty/handler/ContextHandler;-><init>(Lorg/mortbay/jetty/handler/ContextHandler$SContext;)V

    .line 8
    new-instance v0, Lorg/mortbay/jetty/servlet/Context$SContext;

    invoke-direct {v0, p0}, Lorg/mortbay/jetty/servlet/Context$SContext;-><init>(Lorg/mortbay/jetty/servlet/Context;)V

    iput-object v0, p0, Lorg/mortbay/jetty/handler/ContextHandler;->_scontext:Lorg/mortbay/jetty/handler/ContextHandler$SContext;

    .line 9
    iput-object p3, p0, Lorg/mortbay/jetty/servlet/Context;->_sessionHandler:Lorg/mortbay/jetty/servlet/SessionHandler;

    .line 10
    iput-object p4, p0, Lorg/mortbay/jetty/servlet/Context;->_securityHandler:Lorg/mortbay/jetty/security/SecurityHandler;

    if-eqz p5, :cond_0

    goto :goto_0

    .line 11
    :cond_0
    new-instance p5, Lorg/mortbay/jetty/servlet/ServletHandler;

    invoke-direct {p5}, Lorg/mortbay/jetty/servlet/ServletHandler;-><init>()V

    :goto_0
    iput-object p5, p0, Lorg/mortbay/jetty/servlet/Context;->_servletHandler:Lorg/mortbay/jetty/servlet/ServletHandler;

    .line 12
    iget-object p3, p0, Lorg/mortbay/jetty/servlet/Context;->_sessionHandler:Lorg/mortbay/jetty/servlet/SessionHandler;

    if-eqz p3, :cond_2

    .line 13
    invoke-virtual {p0, p3}, Lorg/mortbay/jetty/handler/HandlerWrapper;->setHandler(Lorg/mortbay/jetty/Handler;)V

    if-eqz p4, :cond_1

    .line 14
    iget-object p3, p0, Lorg/mortbay/jetty/servlet/Context;->_sessionHandler:Lorg/mortbay/jetty/servlet/SessionHandler;

    iget-object p4, p0, Lorg/mortbay/jetty/servlet/Context;->_securityHandler:Lorg/mortbay/jetty/security/SecurityHandler;

    invoke-virtual {p3, p4}, Lorg/mortbay/jetty/handler/HandlerWrapper;->setHandler(Lorg/mortbay/jetty/Handler;)V

    .line 15
    iget-object p3, p0, Lorg/mortbay/jetty/servlet/Context;->_securityHandler:Lorg/mortbay/jetty/security/SecurityHandler;

    iget-object p4, p0, Lorg/mortbay/jetty/servlet/Context;->_servletHandler:Lorg/mortbay/jetty/servlet/ServletHandler;

    invoke-virtual {p3, p4}, Lorg/mortbay/jetty/handler/HandlerWrapper;->setHandler(Lorg/mortbay/jetty/Handler;)V

    goto :goto_1

    .line 16
    :cond_1
    iget-object p3, p0, Lorg/mortbay/jetty/servlet/Context;->_sessionHandler:Lorg/mortbay/jetty/servlet/SessionHandler;

    iget-object p4, p0, Lorg/mortbay/jetty/servlet/Context;->_servletHandler:Lorg/mortbay/jetty/servlet/ServletHandler;

    invoke-virtual {p3, p4}, Lorg/mortbay/jetty/handler/HandlerWrapper;->setHandler(Lorg/mortbay/jetty/Handler;)V

    goto :goto_1

    .line 17
    :cond_2
    iget-object p3, p0, Lorg/mortbay/jetty/servlet/Context;->_securityHandler:Lorg/mortbay/jetty/security/SecurityHandler;

    if-eqz p3, :cond_3

    .line 18
    invoke-virtual {p0, p3}, Lorg/mortbay/jetty/handler/HandlerWrapper;->setHandler(Lorg/mortbay/jetty/Handler;)V

    .line 19
    iget-object p3, p0, Lorg/mortbay/jetty/servlet/Context;->_securityHandler:Lorg/mortbay/jetty/security/SecurityHandler;

    iget-object p4, p0, Lorg/mortbay/jetty/servlet/Context;->_servletHandler:Lorg/mortbay/jetty/servlet/ServletHandler;

    invoke-virtual {p3, p4}, Lorg/mortbay/jetty/handler/HandlerWrapper;->setHandler(Lorg/mortbay/jetty/Handler;)V

    goto :goto_1

    .line 20
    :cond_3
    invoke-virtual {p0, p5}, Lorg/mortbay/jetty/handler/HandlerWrapper;->setHandler(Lorg/mortbay/jetty/Handler;)V

    :goto_1
    if-eqz p6, :cond_4

    .line 21
    invoke-virtual {p0, p6}, Lorg/mortbay/jetty/handler/ContextHandler;->setErrorHandler(Lorg/mortbay/jetty/handler/ErrorHandler;)V

    :cond_4
    if-eqz p2, :cond_5

    .line 22
    invoke-virtual {p0, p2}, Lorg/mortbay/jetty/handler/ContextHandler;->setContextPath(Ljava/lang/String;)V

    :cond_5
    if-eqz p1, :cond_6

    .line 23
    invoke-interface {p1, p0}, Lorg/mortbay/jetty/HandlerContainer;->addHandler(Lorg/mortbay/jetty/Handler;)V

    :cond_6
    return-void
.end method

.method public constructor <init>(Lorg/mortbay/jetty/HandlerContainer;Ljava/lang/String;ZZ)V
    .locals 0

    if-eqz p4, :cond_0

    const/4 p4, 0x2

    goto :goto_0

    :cond_0
    const/4 p4, 0x0

    :goto_0
    or-int/2addr p3, p4

    .line 5
    invoke-direct {p0, p1, p2, p3}, Lorg/mortbay/jetty/servlet/Context;-><init>(Lorg/mortbay/jetty/HandlerContainer;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Lorg/mortbay/jetty/HandlerContainer;Lorg/mortbay/jetty/servlet/SessionHandler;Lorg/mortbay/jetty/security/SecurityHandler;Lorg/mortbay/jetty/servlet/ServletHandler;Lorg/mortbay/jetty/handler/ErrorHandler;)V
    .locals 7

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    .line 6
    invoke-direct/range {v0 .. v6}, Lorg/mortbay/jetty/servlet/Context;-><init>(Lorg/mortbay/jetty/HandlerContainer;Ljava/lang/String;Lorg/mortbay/jetty/servlet/SessionHandler;Lorg/mortbay/jetty/security/SecurityHandler;Lorg/mortbay/jetty/servlet/ServletHandler;Lorg/mortbay/jetty/handler/ErrorHandler;)V

    return-void
.end method


# virtual methods
.method public addFilter(Ljava/lang/Class;Ljava/lang/String;I)Lorg/mortbay/jetty/servlet/FilterHolder;
    .locals 0

    .line 2
    iget-object p0, p0, Lorg/mortbay/jetty/servlet/Context;->_servletHandler:Lorg/mortbay/jetty/servlet/ServletHandler;

    invoke-virtual {p0, p1, p2, p3}, Lorg/mortbay/jetty/servlet/ServletHandler;->addFilterWithMapping(Ljava/lang/Class;Ljava/lang/String;I)Lorg/mortbay/jetty/servlet/FilterHolder;

    move-result-object p0

    return-object p0
.end method

.method public addFilter(Ljava/lang/String;Ljava/lang/String;I)Lorg/mortbay/jetty/servlet/FilterHolder;
    .locals 0

    .line 3
    iget-object p0, p0, Lorg/mortbay/jetty/servlet/Context;->_servletHandler:Lorg/mortbay/jetty/servlet/ServletHandler;

    invoke-virtual {p0, p1, p2, p3}, Lorg/mortbay/jetty/servlet/ServletHandler;->addFilterWithMapping(Ljava/lang/String;Ljava/lang/String;I)Lorg/mortbay/jetty/servlet/FilterHolder;

    move-result-object p0

    return-object p0
.end method

.method public addFilter(Lorg/mortbay/jetty/servlet/FilterHolder;Ljava/lang/String;I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/mortbay/jetty/servlet/Context;->_servletHandler:Lorg/mortbay/jetty/servlet/ServletHandler;

    invoke-virtual {p0, p1, p2, p3}, Lorg/mortbay/jetty/servlet/ServletHandler;->addFilterWithMapping(Lorg/mortbay/jetty/servlet/FilterHolder;Ljava/lang/String;I)V

    return-void
.end method

.method public addServlet(Ljava/lang/Class;Ljava/lang/String;)Lorg/mortbay/jetty/servlet/ServletHolder;
    .locals 0

    .line 2
    iget-object p0, p0, Lorg/mortbay/jetty/servlet/Context;->_servletHandler:Lorg/mortbay/jetty/servlet/ServletHandler;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lorg/mortbay/jetty/servlet/ServletHandler;->addServletWithMapping(Ljava/lang/String;Ljava/lang/String;)Lorg/mortbay/jetty/servlet/ServletHolder;

    move-result-object p0

    return-object p0
.end method

.method public addServlet(Ljava/lang/String;Ljava/lang/String;)Lorg/mortbay/jetty/servlet/ServletHolder;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/mortbay/jetty/servlet/Context;->_servletHandler:Lorg/mortbay/jetty/servlet/ServletHandler;

    invoke-virtual {p0, p1, p2}, Lorg/mortbay/jetty/servlet/ServletHandler;->addServletWithMapping(Ljava/lang/String;Ljava/lang/String;)Lorg/mortbay/jetty/servlet/ServletHolder;

    move-result-object p0

    return-object p0
.end method

.method public addServlet(Lorg/mortbay/jetty/servlet/ServletHolder;Ljava/lang/String;)V
    .locals 0

    .line 3
    iget-object p0, p0, Lorg/mortbay/jetty/servlet/Context;->_servletHandler:Lorg/mortbay/jetty/servlet/ServletHandler;

    invoke-virtual {p0, p1, p2}, Lorg/mortbay/jetty/servlet/ServletHandler;->addServletWithMapping(Lorg/mortbay/jetty/servlet/ServletHolder;Ljava/lang/String;)V

    return-void
.end method

.method public getSecurityHandler()Lorg/mortbay/jetty/security/SecurityHandler;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/jetty/servlet/Context;->_securityHandler:Lorg/mortbay/jetty/security/SecurityHandler;

    return-object p0
.end method

.method public getServletHandler()Lorg/mortbay/jetty/servlet/ServletHandler;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/jetty/servlet/Context;->_servletHandler:Lorg/mortbay/jetty/servlet/ServletHandler;

    return-object p0
.end method

.method public getSessionHandler()Lorg/mortbay/jetty/servlet/SessionHandler;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/jetty/servlet/Context;->_sessionHandler:Lorg/mortbay/jetty/servlet/SessionHandler;

    return-object p0
.end method

.method public setSecurityHandler(Lorg/mortbay/jetty/security/SecurityHandler;)V
    .locals 2

    iget-object v0, p0, Lorg/mortbay/jetty/servlet/Context;->_securityHandler:Lorg/mortbay/jetty/security/SecurityHandler;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/mortbay/jetty/handler/HandlerWrapper;->setHandler(Lorg/mortbay/jetty/Handler;)V

    :cond_1
    iput-object p1, p0, Lorg/mortbay/jetty/servlet/Context;->_securityHandler:Lorg/mortbay/jetty/security/SecurityHandler;

    if-nez p1, :cond_3

    iget-object p1, p0, Lorg/mortbay/jetty/servlet/Context;->_sessionHandler:Lorg/mortbay/jetty/servlet/SessionHandler;

    if-eqz p1, :cond_2

    iget-object p0, p0, Lorg/mortbay/jetty/servlet/Context;->_servletHandler:Lorg/mortbay/jetty/servlet/ServletHandler;

    invoke-virtual {p1, p0}, Lorg/mortbay/jetty/handler/HandlerWrapper;->setHandler(Lorg/mortbay/jetty/Handler;)V

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lorg/mortbay/jetty/servlet/Context;->_servletHandler:Lorg/mortbay/jetty/servlet/ServletHandler;

    invoke-virtual {p0, p1}, Lorg/mortbay/jetty/handler/HandlerWrapper;->setHandler(Lorg/mortbay/jetty/Handler;)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/Context;->_sessionHandler:Lorg/mortbay/jetty/servlet/SessionHandler;

    if-eqz v0, :cond_4

    invoke-virtual {v0, p1}, Lorg/mortbay/jetty/handler/HandlerWrapper;->setHandler(Lorg/mortbay/jetty/Handler;)V

    goto :goto_0

    :cond_4
    invoke-virtual {p0, p1}, Lorg/mortbay/jetty/handler/HandlerWrapper;->setHandler(Lorg/mortbay/jetty/Handler;)V

    :goto_0
    iget-object p1, p0, Lorg/mortbay/jetty/servlet/Context;->_servletHandler:Lorg/mortbay/jetty/servlet/ServletHandler;

    if-eqz p1, :cond_5

    iget-object p0, p0, Lorg/mortbay/jetty/servlet/Context;->_securityHandler:Lorg/mortbay/jetty/security/SecurityHandler;

    invoke-virtual {p0, p1}, Lorg/mortbay/jetty/handler/HandlerWrapper;->setHandler(Lorg/mortbay/jetty/Handler;)V

    :cond_5
    :goto_1
    return-void
.end method

.method public setServletHandler(Lorg/mortbay/jetty/servlet/ServletHandler;)V
    .locals 1

    iget-object v0, p0, Lorg/mortbay/jetty/servlet/Context;->_servletHandler:Lorg/mortbay/jetty/servlet/ServletHandler;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lorg/mortbay/jetty/servlet/Context;->_servletHandler:Lorg/mortbay/jetty/servlet/ServletHandler;

    iget-object v0, p0, Lorg/mortbay/jetty/servlet/Context;->_securityHandler:Lorg/mortbay/jetty/security/SecurityHandler;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lorg/mortbay/jetty/handler/HandlerWrapper;->setHandler(Lorg/mortbay/jetty/Handler;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/Context;->_sessionHandler:Lorg/mortbay/jetty/servlet/SessionHandler;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Lorg/mortbay/jetty/handler/HandlerWrapper;->setHandler(Lorg/mortbay/jetty/Handler;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1}, Lorg/mortbay/jetty/handler/HandlerWrapper;->setHandler(Lorg/mortbay/jetty/Handler;)V

    :goto_0
    return-void
.end method

.method public setSessionHandler(Lorg/mortbay/jetty/servlet/SessionHandler;)V
    .locals 2

    iget-object v0, p0, Lorg/mortbay/jetty/servlet/Context;->_sessionHandler:Lorg/mortbay/jetty/servlet/SessionHandler;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/mortbay/jetty/handler/HandlerWrapper;->setHandler(Lorg/mortbay/jetty/Handler;)V

    :cond_1
    iput-object p1, p0, Lorg/mortbay/jetty/servlet/Context;->_sessionHandler:Lorg/mortbay/jetty/servlet/SessionHandler;

    invoke-virtual {p0, p1}, Lorg/mortbay/jetty/handler/HandlerWrapper;->setHandler(Lorg/mortbay/jetty/Handler;)V

    iget-object p1, p0, Lorg/mortbay/jetty/servlet/Context;->_securityHandler:Lorg/mortbay/jetty/security/SecurityHandler;

    if-eqz p1, :cond_2

    iget-object p0, p0, Lorg/mortbay/jetty/servlet/Context;->_sessionHandler:Lorg/mortbay/jetty/servlet/SessionHandler;

    invoke-virtual {p0, p1}, Lorg/mortbay/jetty/handler/HandlerWrapper;->setHandler(Lorg/mortbay/jetty/Handler;)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lorg/mortbay/jetty/servlet/Context;->_servletHandler:Lorg/mortbay/jetty/servlet/ServletHandler;

    if-eqz p1, :cond_3

    iget-object p0, p0, Lorg/mortbay/jetty/servlet/Context;->_sessionHandler:Lorg/mortbay/jetty/servlet/SessionHandler;

    invoke-virtual {p0, p1}, Lorg/mortbay/jetty/handler/HandlerWrapper;->setHandler(Lorg/mortbay/jetty/Handler;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public startContext()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-super {p0}, Lorg/mortbay/jetty/handler/ContextHandler;->startContext()V

    iget-object v0, p0, Lorg/mortbay/jetty/servlet/Context;->_servletHandler:Lorg/mortbay/jetty/servlet/ServletHandler;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/mortbay/component/AbstractLifeCycle;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/mortbay/jetty/servlet/Context;->_servletHandler:Lorg/mortbay/jetty/servlet/ServletHandler;

    invoke-virtual {p0}, Lorg/mortbay/jetty/servlet/ServletHandler;->initialize()V

    :cond_0
    return-void
.end method
