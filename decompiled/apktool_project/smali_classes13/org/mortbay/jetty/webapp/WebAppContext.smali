.class public Lorg/mortbay/jetty/webapp/WebAppContext;
.super Lorg/mortbay/jetty/servlet/Context;
.source "SourceFile"


# static fields
.field public static final ERROR_PAGE:Ljava/lang/String; = "org.mortbay.jetty.error_page"

.field public static Q0:[Ljava/lang/String; = null

.field public static synthetic R0:Ljava/lang/Class; = null

.field public static synthetic S0:Ljava/lang/Class; = null

.field public static synthetic T0:Ljava/lang/Class; = null

.field public static final WEB_DEFAULTS_XML:Ljava/lang/String; = "org/mortbay/jetty/webapp/webdefault.xml"


# instance fields
.field public A0:Z

.field public B0:Z

.field public C0:Z

.field public D0:Z

.field public E0:Z

.field public F0:Ljava/security/PermissionCollection;

.field public G0:[Ljava/lang/String;

.field public H0:[Ljava/lang/String;

.field public I0:Ljava/io/File;

.field public J0:Z

.field public K0:Ljava/lang/String;

.field public L0:Ljava/lang/String;

.field public M0:Ljava/lang/Throwable;

.field public transient N0:Ljava/util/Map;

.field public transient O0:Z

.field public transient P0:Z

.field public v0:[Ljava/lang/String;

.field public w0:[Lorg/mortbay/jetty/webapp/Configuration;

.field public x0:Ljava/lang/String;

.field public y0:Ljava/lang/String;

.field public z0:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const-string v0, "org.mortbay.jetty.webapp.JettyWebXmlConfiguration"

    const-string v1, "org.mortbay.jetty.webapp.TagLibConfiguration"

    const-string v2, "org.mortbay.jetty.webapp.WebInfConfiguration"

    const-string v3, "org.mortbay.jetty.webapp.WebXmlConfiguration"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/mortbay/jetty/webapp/WebAppContext;->Q0:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0, v0, v0, v0}, Lorg/mortbay/jetty/webapp/WebAppContext;-><init>(Lorg/mortbay/jetty/security/SecurityHandler;Lorg/mortbay/jetty/servlet/SessionHandler;Lorg/mortbay/jetty/servlet/ServletHandler;Lorg/mortbay/jetty/handler/ErrorHandler;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    const/4 v0, 0x3

    const/4 v1, 0x0

    .line 2
    invoke-direct {p0, v1, p2, v0}, Lorg/mortbay/jetty/servlet/Context;-><init>(Lorg/mortbay/jetty/HandlerContainer;Ljava/lang/String;I)V

    .line 3
    sget-object v0, Lorg/mortbay/jetty/webapp/WebAppContext;->Q0:[Ljava/lang/String;

    iput-object v0, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->v0:[Ljava/lang/String;

    const-string v0, "org/mortbay/jetty/webapp/webdefault.xml"

    .line 4
    iput-object v0, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->x0:Ljava/lang/String;

    .line 5
    iput-object v1, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->y0:Ljava/lang/String;

    .line 6
    iput-object v1, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->z0:Ljava/lang/String;

    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->A0:Z

    const/4 v1, 0x1

    .line 8
    iput-boolean v1, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->B0:Z

    .line 9
    iput-boolean v0, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->C0:Z

    .line 10
    iput-boolean v0, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->D0:Z

    const-string v1, "org.mortbay.jetty.webapp.parentLoaderPriority"

    .line 11
    invoke-static {v1}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->E0:Z

    const-string v2, "java."

    const-string v3, "javax."

    const-string v4, "org.mortbay."

    const-string v5, "org.xml."

    const-string v6, "org.w3c."

    const-string v7, "org.apache.commons.logging."

    const-string v8, "org.apache.log4j."

    .line 12
    filled-new-array/range {v2 .. v8}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->G0:[Ljava/lang/String;

    const-string v2, "-org.mortbay.jetty.plus.annotation."

    const-string v3, "-org.mortbay.jetty.plus.jaas."

    const-string v4, "-org.mortbay.jetty.plus.naming."

    const-string v5, "-org.mortbay.jetty.plus.jaas."

    const-string v6, "-org.mortbay.jetty.servlet.DefaultServlet"

    const-string v7, "org.mortbay.jetty."

    const-string v8, "org.slf4j."

    .line 13
    filled-new-array/range {v2 .. v8}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->H0:[Ljava/lang/String;

    .line 14
    iput-boolean v0, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->O0:Z

    .line 15
    invoke-virtual {p0, p2}, Lorg/mortbay/jetty/handler/ContextHandler;->setContextPath(Ljava/lang/String;)V

    .line 16
    invoke-virtual {p0, p1}, Lorg/mortbay/jetty/webapp/WebAppContext;->setWar(Ljava/lang/String;)V

    .line 17
    new-instance p1, Lorg/mortbay/jetty/servlet/ErrorPageErrorHandler;

    invoke-direct {p1}, Lorg/mortbay/jetty/servlet/ErrorPageErrorHandler;-><init>()V

    invoke-virtual {p0, p1}, Lorg/mortbay/jetty/handler/ContextHandler;->setErrorHandler(Lorg/mortbay/jetty/handler/ErrorHandler;)V

    return-void
.end method

.method public constructor <init>(Lorg/mortbay/jetty/HandlerContainer;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    const/4 v0, 0x3

    .line 18
    invoke-direct {p0, p1, p3, v0}, Lorg/mortbay/jetty/servlet/Context;-><init>(Lorg/mortbay/jetty/HandlerContainer;Ljava/lang/String;I)V

    .line 19
    sget-object p1, Lorg/mortbay/jetty/webapp/WebAppContext;->Q0:[Ljava/lang/String;

    iput-object p1, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->v0:[Ljava/lang/String;

    const-string p1, "org/mortbay/jetty/webapp/webdefault.xml"

    .line 20
    iput-object p1, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->x0:Ljava/lang/String;

    const/4 p1, 0x0

    .line 21
    iput-object p1, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->y0:Ljava/lang/String;

    .line 22
    iput-object p1, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->z0:Ljava/lang/String;

    const/4 p1, 0x0

    .line 23
    iput-boolean p1, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->A0:Z

    const/4 p3, 0x1

    .line 24
    iput-boolean p3, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->B0:Z

    .line 25
    iput-boolean p1, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->C0:Z

    .line 26
    iput-boolean p1, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->D0:Z

    const-string p3, "org.mortbay.jetty.webapp.parentLoaderPriority"

    .line 27
    invoke-static {p3}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result p3

    iput-boolean p3, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->E0:Z

    const-string v0, "java."

    const-string v1, "javax."

    const-string v2, "org.mortbay."

    const-string v3, "org.xml."

    const-string v4, "org.w3c."

    const-string v5, "org.apache.commons.logging."

    const-string v6, "org.apache.log4j."

    .line 28
    filled-new-array/range {v0 .. v6}, [Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->G0:[Ljava/lang/String;

    const-string v0, "-org.mortbay.jetty.plus.annotation."

    const-string v1, "-org.mortbay.jetty.plus.jaas."

    const-string v2, "-org.mortbay.jetty.plus.naming."

    const-string v3, "-org.mortbay.jetty.plus.jaas."

    const-string v4, "-org.mortbay.jetty.servlet.DefaultServlet"

    const-string v5, "org.mortbay.jetty."

    const-string v6, "org.slf4j."

    .line 29
    filled-new-array/range {v0 .. v6}, [Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->H0:[Ljava/lang/String;

    .line 30
    iput-boolean p1, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->O0:Z

    .line 31
    invoke-virtual {p0, p2}, Lorg/mortbay/jetty/webapp/WebAppContext;->setWar(Ljava/lang/String;)V

    .line 32
    new-instance p1, Lorg/mortbay/jetty/servlet/ErrorPageErrorHandler;

    invoke-direct {p1}, Lorg/mortbay/jetty/servlet/ErrorPageErrorHandler;-><init>()V

    invoke-virtual {p0, p1}, Lorg/mortbay/jetty/handler/ContextHandler;->setErrorHandler(Lorg/mortbay/jetty/handler/ErrorHandler;)V

    return-void
.end method

.method public constructor <init>(Lorg/mortbay/jetty/security/SecurityHandler;Lorg/mortbay/jetty/servlet/SessionHandler;Lorg/mortbay/jetty/servlet/ServletHandler;Lorg/mortbay/jetty/handler/ErrorHandler;)V
    .locals 7

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    goto :goto_0

    .line 33
    :cond_0
    new-instance p2, Lorg/mortbay/jetty/servlet/SessionHandler;

    invoke-direct {p2}, Lorg/mortbay/jetty/servlet/SessionHandler;-><init>()V

    :goto_0
    move-object v2, p2

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    new-instance p1, Lorg/mortbay/jetty/security/SecurityHandler;

    invoke-direct {p1}, Lorg/mortbay/jetty/security/SecurityHandler;-><init>()V

    :goto_1
    move-object v3, p1

    if-eqz p3, :cond_2

    goto :goto_2

    :cond_2
    new-instance p3, Lorg/mortbay/jetty/servlet/ServletHandler;

    invoke-direct {p3}, Lorg/mortbay/jetty/servlet/ServletHandler;-><init>()V

    :goto_2
    move-object v4, p3

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/mortbay/jetty/servlet/Context;-><init>(Lorg/mortbay/jetty/HandlerContainer;Lorg/mortbay/jetty/servlet/SessionHandler;Lorg/mortbay/jetty/security/SecurityHandler;Lorg/mortbay/jetty/servlet/ServletHandler;Lorg/mortbay/jetty/handler/ErrorHandler;)V

    .line 34
    sget-object p1, Lorg/mortbay/jetty/webapp/WebAppContext;->Q0:[Ljava/lang/String;

    iput-object p1, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->v0:[Ljava/lang/String;

    const-string p1, "org/mortbay/jetty/webapp/webdefault.xml"

    .line 35
    iput-object p1, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->x0:Ljava/lang/String;

    const/4 p1, 0x0

    .line 36
    iput-object p1, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->y0:Ljava/lang/String;

    .line 37
    iput-object p1, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->z0:Ljava/lang/String;

    const/4 p1, 0x0

    .line 38
    iput-boolean p1, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->A0:Z

    const/4 p2, 0x1

    .line 39
    iput-boolean p2, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->B0:Z

    .line 40
    iput-boolean p1, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->C0:Z

    .line 41
    iput-boolean p1, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->D0:Z

    const-string p2, "org.mortbay.jetty.webapp.parentLoaderPriority"

    .line 42
    invoke-static {p2}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    iput-boolean p2, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->E0:Z

    const-string v0, "java."

    const-string v1, "javax."

    const-string v2, "org.mortbay."

    const-string v3, "org.xml."

    const-string v4, "org.w3c."

    const-string v5, "org.apache.commons.logging."

    const-string v6, "org.apache.log4j."

    .line 43
    filled-new-array/range {v0 .. v6}, [Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->G0:[Ljava/lang/String;

    const-string v0, "-org.mortbay.jetty.plus.annotation."

    const-string v1, "-org.mortbay.jetty.plus.jaas."

    const-string v2, "-org.mortbay.jetty.plus.naming."

    const-string v3, "-org.mortbay.jetty.plus.jaas."

    const-string v4, "-org.mortbay.jetty.servlet.DefaultServlet"

    const-string v5, "org.mortbay.jetty."

    const-string v6, "org.slf4j."

    .line 44
    filled-new-array/range {v0 .. v6}, [Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->H0:[Ljava/lang/String;

    .line 45
    iput-boolean p1, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->O0:Z

    if-eqz p4, :cond_3

    goto :goto_3

    .line 46
    :cond_3
    new-instance p4, Lorg/mortbay/jetty/servlet/ErrorPageErrorHandler;

    invoke-direct {p4}, Lorg/mortbay/jetty/servlet/ErrorPageErrorHandler;-><init>()V

    :goto_3
    invoke-virtual {p0, p4}, Lorg/mortbay/jetty/handler/ContextHandler;->setErrorHandler(Lorg/mortbay/jetty/handler/ErrorHandler;)V

    return-void
.end method

.method public static addWebApplications(Lorg/mortbay/jetty/HandlerContainer;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5
    sget-object v3, Lorg/mortbay/jetty/webapp/WebAppContext;->Q0:[Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lorg/mortbay/jetty/webapp/WebAppContext;->addWebApplications(Lorg/mortbay/jetty/HandlerContainer;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;ZZ)V

    return-void
.end method

.method public static addWebApplications(Lorg/mortbay/jetty/HandlerContainer;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;ZZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6
    new-instance p2, Ljava/lang/StringBuffer;

    invoke-direct {p2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v0, "Deprecated configuration used for "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/mortbay/log/Log;->warn(Ljava/lang/String;)V

    .line 7
    new-instance p2, Lorg/mortbay/jetty/deployer/WebAppDeployer;

    invoke-direct {p2}, Lorg/mortbay/jetty/deployer/WebAppDeployer;-><init>()V

    .line 8
    invoke-virtual {p2, p0}, Lorg/mortbay/jetty/deployer/WebAppDeployer;->setContexts(Lorg/mortbay/jetty/HandlerContainer;)V

    .line 9
    invoke-virtual {p2, p1}, Lorg/mortbay/jetty/deployer/WebAppDeployer;->setWebAppDir(Ljava/lang/String;)V

    .line 10
    invoke-virtual {p2, p3}, Lorg/mortbay/jetty/deployer/WebAppDeployer;->setConfigurationClasses([Ljava/lang/String;)V

    .line 11
    invoke-virtual {p2, p4}, Lorg/mortbay/jetty/deployer/WebAppDeployer;->setExtract(Z)V

    .line 12
    invoke-virtual {p2, p5}, Lorg/mortbay/jetty/deployer/WebAppDeployer;->setParentLoaderPriority(Z)V

    .line 13
    :try_start_0
    invoke-virtual {p2}, Lorg/mortbay/component/AbstractLifeCycle;->start()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 14
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    move-exception p0

    .line 15
    throw p0
.end method

.method public static addWebApplications(Lorg/mortbay/jetty/Server;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v3, Lorg/mortbay/jetty/webapp/WebAppContext;->Q0:[Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lorg/mortbay/jetty/webapp/WebAppContext;->addWebApplications(Lorg/mortbay/jetty/Server;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;ZZ)V

    return-void
.end method

.method public static addWebApplications(Lorg/mortbay/jetty/Server;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;ZZ)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    sget-object v0, Lorg/mortbay/jetty/webapp/WebAppContext;->R0:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "org.mortbay.jetty.handler.ContextHandlerCollection"

    invoke-static {v0}, Lorg/mortbay/jetty/webapp/WebAppContext;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/mortbay/jetty/webapp/WebAppContext;->R0:Ljava/lang/Class;

    :cond_0
    invoke-virtual {p0, v0}, Lorg/mortbay/jetty/handler/AbstractHandlerContainer;->getChildHandlerByClass(Ljava/lang/Class;)Lorg/mortbay/jetty/Handler;

    move-result-object v0

    check-cast v0, Lorg/mortbay/jetty/handler/HandlerCollection;

    if-nez v0, :cond_2

    .line 3
    sget-object v0, Lorg/mortbay/jetty/webapp/WebAppContext;->S0:Ljava/lang/Class;

    if-nez v0, :cond_1

    const-string v0, "org.mortbay.jetty.handler.HandlerCollection"

    invoke-static {v0}, Lorg/mortbay/jetty/webapp/WebAppContext;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/mortbay/jetty/webapp/WebAppContext;->S0:Ljava/lang/Class;

    :cond_1
    invoke-virtual {p0, v0}, Lorg/mortbay/jetty/handler/AbstractHandlerContainer;->getChildHandlerByClass(Ljava/lang/Class;)Lorg/mortbay/jetty/Handler;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Lorg/mortbay/jetty/handler/HandlerCollection;

    :cond_2
    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    .line 4
    invoke-static/range {v1 .. v6}, Lorg/mortbay/jetty/webapp/WebAppContext;->addWebApplications(Lorg/mortbay/jetty/HandlerContainer;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;ZZ)V

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

.method public static getCurrentWebAppContext()Lorg/mortbay/jetty/handler/ContextHandler;
    .locals 2

    invoke-static {}, Lorg/mortbay/jetty/handler/ContextHandler;->getCurrentContext()Lorg/mortbay/jetty/handler/ContextHandler$SContext;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/mortbay/jetty/handler/ContextHandler$SContext;->getContextHandler()Lorg/mortbay/jetty/handler/ContextHandler;

    move-result-object v0

    instance-of v1, v0, Lorg/mortbay/jetty/webapp/WebAppContext;

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public addEventListener(Ljava/util/EventListener;)V
    .locals 2

    invoke-virtual {p0}, Lorg/mortbay/jetty/handler/ContextHandler;->getEventListeners()[Ljava/util/EventListener;

    move-result-object v0

    sget-object v1, Lorg/mortbay/jetty/webapp/WebAppContext;->T0:Ljava/lang/Class;

    if-nez v1, :cond_0

    const-string v1, "java.util.EventListener"

    invoke-static {v1}, Lorg/mortbay/jetty/webapp/WebAppContext;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/mortbay/jetty/webapp/WebAppContext;->T0:Ljava/lang/Class;

    :cond_0
    invoke-static {v0, p1, v1}, Lorg/mortbay/util/LazyList;->addToArray([Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/util/EventListener;

    check-cast p1, [Ljava/util/EventListener;

    invoke-virtual {p0, p1}, Lorg/mortbay/jetty/webapp/WebAppContext;->setEventListeners([Ljava/util/EventListener;)V

    return-void
.end method

.method public doStart()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0}, Lorg/mortbay/jetty/webapp/WebAppContext;->loadConfigurations()V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget-object v3, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->w0:[Lorg/mortbay/jetty/webapp/Configuration;

    array-length v4, v3

    if-ge v2, v4, :cond_0

    aget-object v3, v3, v2

    invoke-interface {v3, p0}, Lorg/mortbay/jetty/webapp/Configuration;->setWebAppContext(Lorg/mortbay/jetty/webapp/WebAppContext;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iput-boolean v1, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->O0:Z

    invoke-virtual {p0}, Lorg/mortbay/jetty/handler/ContextHandler;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    if-nez v2, :cond_1

    new-instance v2, Lorg/mortbay/jetty/webapp/WebAppClassLoader;

    invoke-direct {v2, p0}, Lorg/mortbay/jetty/webapp/WebAppClassLoader;-><init>(Lorg/mortbay/jetty/webapp/WebAppContext;)V

    invoke-virtual {p0, v2}, Lorg/mortbay/jetty/webapp/WebAppContext;->setClassLoader(Ljava/lang/ClassLoader;)V

    iput-boolean v0, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->O0:Z

    :cond_1
    invoke-static {}, Lorg/mortbay/log/Log;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lorg/mortbay/jetty/handler/ContextHandler;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Thread Context class loader is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v2

    :goto_1
    if-eqz v2, :cond_2

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Parent class loader is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v2

    goto :goto_1

    :cond_2
    :goto_2
    iget-object v2, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->w0:[Lorg/mortbay/jetty/webapp/Configuration;

    array-length v3, v2

    if-ge v1, v3, :cond_3

    aget-object v2, v2, v1

    invoke-interface {v2}, Lorg/mortbay/jetty/webapp/Configuration;->configureClassLoader()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Lorg/mortbay/jetty/webapp/WebAppContext;->getTempDirectory()Ljava/io/File;

    iget-object v1, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->I0:Ljava/io/File;

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->J0:Z

    if-nez v1, :cond_4

    invoke-virtual {p0}, Lorg/mortbay/jetty/webapp/WebAppContext;->isTempWorkDirectory()Z

    move-result v1

    if-nez v1, :cond_4

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->I0:Ljava/io/File;

    const-string v3, ".active"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    :cond_4
    invoke-super {p0}, Lorg/mortbay/jetty/handler/ContextHandler;->doStart()V

    invoke-virtual {p0}, Lorg/mortbay/jetty/webapp/WebAppContext;->isLogUrlOnStart()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lorg/mortbay/jetty/webapp/WebAppContext;->dumpUrl()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Failed startup of context "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lorg/mortbay/log/Log;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    iput-object v1, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->M0:Ljava/lang/Throwable;

    iput-boolean v0, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->P0:Z

    :cond_5
    :goto_3
    return-void
.end method

.method public doStop()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-super {p0}, Lorg/mortbay/jetty/handler/ContextHandler;->doStop()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->w0:[Lorg/mortbay/jetty/webapp/Configuration;

    array-length v2, v2

    :goto_0
    add-int/lit8 v3, v2, -0x1

    if-lez v2, :cond_0

    iget-object v2, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->w0:[Lorg/mortbay/jetty/webapp/Configuration;

    aget-object v2, v2, v3

    invoke-interface {v2}, Lorg/mortbay/jetty/webapp/Configuration;->deconfigureWebApp()V

    move v2, v3

    goto :goto_0

    :cond_0
    iput-object v1, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->w0:[Lorg/mortbay/jetty/webapp/Configuration;

    iget-object v2, p0, Lorg/mortbay/jetty/servlet/Context;->_securityHandler:Lorg/mortbay/jetty/security/SecurityHandler;

    invoke-virtual {v2}, Lorg/mortbay/jetty/handler/HandlerWrapper;->getHandler()Lorg/mortbay/jetty/Handler;

    move-result-object v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lorg/mortbay/jetty/servlet/Context;->_sessionHandler:Lorg/mortbay/jetty/servlet/SessionHandler;

    iget-object v3, p0, Lorg/mortbay/jetty/servlet/Context;->_securityHandler:Lorg/mortbay/jetty/security/SecurityHandler;

    invoke-virtual {v2, v3}, Lorg/mortbay/jetty/handler/HandlerWrapper;->setHandler(Lorg/mortbay/jetty/Handler;)V

    iget-object v2, p0, Lorg/mortbay/jetty/servlet/Context;->_securityHandler:Lorg/mortbay/jetty/security/SecurityHandler;

    iget-object v3, p0, Lorg/mortbay/jetty/servlet/Context;->_servletHandler:Lorg/mortbay/jetty/servlet/ServletHandler;

    invoke-virtual {v2, v3}, Lorg/mortbay/jetty/handler/HandlerWrapper;->setHandler(Lorg/mortbay/jetty/Handler;)V

    :cond_1
    iget-object v2, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->I0:Ljava/io/File;

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->J0:Z

    if-nez v2, :cond_2

    invoke-virtual {p0}, Lorg/mortbay/jetty/webapp/WebAppContext;->isTempWorkDirectory()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->I0:Ljava/io/File;

    invoke-static {v2}, Lorg/mortbay/util/IO;->delete(Ljava/io/File;)Z

    iput-object v1, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->I0:Ljava/io/File;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    iget-boolean v2, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->O0:Z

    if-eqz v2, :cond_3

    invoke-virtual {p0, v1}, Lorg/mortbay/jetty/webapp/WebAppContext;->setClassLoader(Ljava/lang/ClassLoader;)V

    :cond_3
    iput-boolean v0, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->P0:Z

    iput-object v1, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->M0:Ljava/lang/Throwable;

    return-void

    :catchall_0
    move-exception v2

    iget-boolean v3, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->O0:Z

    if-eqz v3, :cond_4

    invoke-virtual {p0, v1}, Lorg/mortbay/jetty/webapp/WebAppContext;->setClassLoader(Ljava/lang/ClassLoader;)V

    :cond_4
    iput-boolean v0, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->P0:Z

    iput-object v1, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->M0:Ljava/lang/Throwable;

    throw v2
.end method

.method public dumpUrl()V
    .locals 5

    invoke-virtual {p0}, Lorg/mortbay/jetty/handler/AbstractHandler;->getServer()Lorg/mortbay/jetty/Server;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mortbay/jetty/Server;->getConnectors()[Lorg/mortbay/jetty/Connector;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    aget-object v2, v0, v1

    invoke-interface {v2}, Lorg/mortbay/jetty/Connector;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lorg/mortbay/jetty/handler/ContextHandler;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "WebApp@"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_0
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, " at http://"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/mortbay/jetty/handler/ContextHandler;->getContextPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/mortbay/log/Log;->info(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public getConfigurationClasses()[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->v0:[Ljava/lang/String;

    return-object p0
.end method

.method public getConfigurations()[Lorg/mortbay/jetty/webapp/Configuration;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->w0:[Lorg/mortbay/jetty/webapp/Configuration;

    return-object p0
.end method

.method public getDefaultsDescriptor()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->x0:Ljava/lang/String;

    return-object p0
.end method

.method public getDescriptor()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->y0:Ljava/lang/String;

    return-object p0
.end method

.method public getExtraClasspath()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->L0:Ljava/lang/String;

    return-object p0
.end method

.method public getOverrideDescriptor()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->z0:Ljava/lang/String;

    return-object p0
.end method

.method public getPermissions()Ljava/security/PermissionCollection;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->F0:Ljava/security/PermissionCollection;

    return-object p0
.end method

.method public getResource(Ljava/lang/String;)Lorg/mortbay/resource/Resource;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    move v2, v1

    move-object v1, v0

    :goto_0
    if-eqz p1, :cond_2

    add-int/lit8 v3, v2, 0x1

    const/16 v4, 0x64

    if-ge v2, v4, :cond_2

    :try_start_0
    invoke-super {p0, p1}, Lorg/mortbay/jetty/handler/ContextHandler;->getResource(Ljava/lang/String;)Lorg/mortbay/resource/Resource;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/mortbay/resource/Resource;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p0, p1}, Lorg/mortbay/jetty/webapp/WebAppContext;->getResourceAlias(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    invoke-static {v2}, Lorg/mortbay/log/Log;->ignore(Ljava/lang/Throwable;)V

    if-nez v0, :cond_1

    move-object v0, v2

    :cond_1
    :goto_1
    move v2, v3

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_4

    instance-of p0, v0, Ljava/net/MalformedURLException;

    if-nez p0, :cond_3

    goto :goto_2

    :cond_3
    check-cast v0, Ljava/net/MalformedURLException;

    throw v0

    :cond_4
    :goto_2
    return-object v1
.end method

.method public getResourceAlias(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->N0:Ljava/util/Map;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getResourceAliases()Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->N0:Ljava/util/Map;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    :cond_0
    return-object p0
.end method

.method public getServerClasses()[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->H0:[Ljava/lang/String;

    return-object p0
.end method

.method public getSystemClasses()[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->G0:[Ljava/lang/String;

    return-object p0
.end method

.method public getTempDirectory()Ljava/io/File;
    .locals 8

    const-string v0, "Created temp dir "

    const-string v1, ""

    const-string v2, "work"

    iget-object v3, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->I0:Ljava/io/File;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->I0:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->canWrite()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object p0, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->I0:Ljava/io/File;

    return-object p0

    :cond_0
    const-string v3, "javax.servlet.context.tempdir"

    invoke-virtual {p0, v3}, Lorg/mortbay/jetty/handler/ContextHandler;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1

    instance-of v5, v4, Ljava/io/File;

    if-eqz v5, :cond_1

    move-object v5, v4

    check-cast v5, Ljava/io/File;

    iput-object v5, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->I0:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->I0:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->canWrite()Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object p0, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->I0:Ljava/io/File;

    return-object p0

    :cond_1
    const-string v5, " for "

    if-eqz v4, :cond_3

    instance-of v6, v4, Ljava/lang/String;

    if-eqz v6, :cond_3

    :try_start_0
    new-instance v6, Ljava/io/File;

    check-cast v4, Ljava/lang/String;

    invoke-direct {v6, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v6, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->I0:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->I0:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->canWrite()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {}, Lorg/mortbay/log/Log;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_2

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "Converted to File "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v6, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->I0:Ljava/io/File;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;)V

    :cond_2
    iget-object v4, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->I0:Ljava/io/File;

    invoke-virtual {p0, v3, v4}, Lorg/mortbay/jetty/handler/ContextHandler;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->I0:Ljava/io/File;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v4

    const-string v6, "EXCEPTION "

    invoke-static {v6, v4}, Lorg/mortbay/log/Log;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    const/4 v4, 0x0

    :try_start_1
    new-instance v6, Ljava/io/File;

    const-string v7, "jetty.home"

    invoke-static {v7}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-virtual {v6}, Ljava/io/File;->canWrite()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-virtual {v6}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-eqz v7, :cond_4

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lorg/mortbay/jetty/handler/ContextHandler;->getBaseResource()Lorg/mortbay/resource/Resource;

    move-result-object v6

    if-eqz v6, :cond_5

    invoke-virtual {p0}, Lorg/mortbay/jetty/webapp/WebAppContext;->getWebInf()Lorg/mortbay/resource/Resource;

    move-result-object v6

    if-eqz v6, :cond_5

    invoke-virtual {v6}, Lorg/mortbay/resource/Resource;->exists()Z

    move-result v7

    if-eqz v7, :cond_5

    new-instance v7, Ljava/io/File;

    invoke-virtual {v6}, Lorg/mortbay/resource/Resource;->getFile()Ljava/io/File;

    move-result-object v6

    invoke-direct {v7, v6, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v7}, Ljava/io/File;->canWrite()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v7}, Ljava/io/File;->isDirectory()Z

    move-result v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v2, :cond_5

    move-object v6, v7

    goto :goto_0

    :catch_1
    move-exception v2

    invoke-static {v2}, Lorg/mortbay/log/Log;->ignore(Ljava/lang/Throwable;)V

    :cond_5
    move-object v6, v4

    :goto_0
    :try_start_2
    invoke-virtual {p0}, Lorg/mortbay/jetty/webapp/WebAppContext;->o()Ljava/lang/String;

    move-result-object v2

    if-eqz v6, :cond_6

    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v6, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v7, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->I0:Ljava/io/File;

    goto/16 :goto_1

    :cond_6
    new-instance v6, Ljava/io/File;

    const-string v7, "java.io.tmpdir"

    invoke-static {v7}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v6, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->I0:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-static {}, Lorg/mortbay/log/Log;->isDebugEnabled()Z

    move-result v6

    if-eqz v6, :cond_7

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "Delete existing temp dir "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v7, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->I0:Ljava/io/File;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;)V

    :cond_7
    iget-object v6, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->I0:Ljava/io/File;

    invoke-static {v6}, Lorg/mortbay/util/IO;->delete(Ljava/io/File;)Z

    move-result v6

    if-nez v6, :cond_8

    invoke-static {}, Lorg/mortbay/log/Log;->isDebugEnabled()Z

    move-result v6

    if-eqz v6, :cond_8

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "Failed to delete temp dir "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v7, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->I0:Ljava/io/File;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;)V

    :cond_8
    iget-object v6, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->I0:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_a

    iget-object v6, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->I0:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "_"

    invoke-virtual {v7, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    iput-object v2, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->I0:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v2, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->I0:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    :cond_9
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "Can\'t reuse "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v6, ", using "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v6, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->I0:Ljava/io/File;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/mortbay/log/Log;->warn(Ljava/lang/String;)V

    :cond_a
    :goto_1
    iget-object v2, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->I0:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_b

    iget-object v2, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->I0:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    :cond_b
    invoke-virtual {p0}, Lorg/mortbay/jetty/webapp/WebAppContext;->isTempWorkDirectory()Z

    move-result v2

    if-nez v2, :cond_c

    iget-object v2, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->I0:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->deleteOnExit()V

    :cond_c
    invoke-static {}, Lorg/mortbay/log/Log;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_d

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v6, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->I0:Ljava/io/File;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v2

    iput-object v4, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->I0:Ljava/io/File;

    invoke-static {v2}, Lorg/mortbay/log/Log;->ignore(Ljava/lang/Throwable;)V

    :cond_d
    :goto_2
    iget-object v2, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->I0:Ljava/io/File;

    if-nez v2, :cond_f

    :try_start_3
    const-string v2, "JettyContext"

    invoke-static {v2, v1}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    iput-object v1, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->I0:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_e

    iget-object v1, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->I0:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_e
    iget-object v1, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->I0:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    iget-object v1, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->I0:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->deleteOnExit()V

    invoke-static {}, Lorg/mortbay/log/Log;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_f

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->I0:Ljava/io/File;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    move-exception v0

    const-string v1, "tmpdir"

    invoke-static {v1, v0}, Lorg/mortbay/log/Log;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    :cond_f
    :goto_3
    iget-object v0, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->I0:Ljava/io/File;

    invoke-virtual {p0, v3, v0}, Lorg/mortbay/jetty/handler/ContextHandler;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->I0:Ljava/io/File;

    return-object p0
.end method

.method public getUnavailableException()Ljava/lang/Throwable;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->M0:Ljava/lang/Throwable;

    return-object p0
.end method

.method public getWar()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->K0:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/mortbay/jetty/handler/ContextHandler;->getResourceBase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->K0:Ljava/lang/String;

    :cond_0
    iget-object p0, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->K0:Ljava/lang/String;

    return-object p0
.end method

.method public getWebInf()Lorg/mortbay/resource/Resource;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/mortbay/jetty/webapp/WebAppContext;->resolveWebApp()V

    invoke-super {p0}, Lorg/mortbay/jetty/handler/ContextHandler;->getBaseResource()Lorg/mortbay/resource/Resource;

    move-result-object p0

    const-string v0, "WEB-INF/"

    invoke-virtual {p0, v0}, Lorg/mortbay/resource/Resource;->addPath(Ljava/lang/String;)Lorg/mortbay/resource/Resource;

    move-result-object p0

    invoke-virtual {p0}, Lorg/mortbay/resource/Resource;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/mortbay/resource/Resource;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

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

    iget-boolean v0, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->P0:Z

    if-eqz v0, :cond_1

    instance-of p0, p2, Lorg/mortbay/jetty/Request;

    if-eqz p0, :cond_0

    check-cast p2, Lorg/mortbay/jetty/Request;

    goto :goto_0

    :cond_0
    invoke-static {}, Lorg/mortbay/jetty/HttpConnection;->getCurrentConnection()Lorg/mortbay/jetty/HttpConnection;

    move-result-object p0

    invoke-virtual {p0}, Lorg/mortbay/jetty/HttpConnection;->getRequest()Lorg/mortbay/jetty/Request;

    move-result-object p2

    :goto_0
    const/4 p0, 0x1

    invoke-virtual {p2, p0}, Lorg/mortbay/jetty/Request;->setHandled(Z)V

    const/16 p0, 0x1f7

    invoke-interface {p3, p0}, Ljavax/servlet/http/HttpServletResponse;->sendError(I)V

    goto :goto_1

    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Lorg/mortbay/jetty/handler/ContextHandler;->handle(Ljava/lang/String;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;I)V

    :goto_1
    return-void
.end method

.method public isCopyWebDir()Z
    .locals 0

    iget-boolean p0, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->C0:Z

    return p0
.end method

.method public isDistributable()Z
    .locals 0

    iget-boolean p0, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->A0:Z

    return p0
.end method

.method public isExtractWAR()Z
    .locals 0

    iget-boolean p0, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->B0:Z

    return p0
.end method

.method public isLogUrlOnStart()Z
    .locals 0

    iget-boolean p0, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->D0:Z

    return p0
.end method

.method public isParentLoaderPriority()Z
    .locals 0

    iget-boolean p0, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->E0:Z

    return p0
.end method

.method public isProtectedTarget(Ljava/lang/String;)Z
    .locals 0

    :goto_0
    const-string p0, "//"

    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {p1}, Lorg/mortbay/util/URIUtil;->compactPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p0, "/web-inf"

    invoke-static {p1, p0}, Lorg/mortbay/util/StringUtil;->startsWithIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_2

    const-string p0, "/meta-inf"

    invoke-static {p1, p0}, Lorg/mortbay/util/StringUtil;->startsWithIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 p0, 0x1

    :goto_2
    return p0
.end method

.method public isTempWorkDirectory()Z
    .locals 3

    iget-object v0, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->I0:Ljava/io/File;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "work"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    iget-object p0, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->I0:Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p0

    if-nez p0, :cond_2

    return v1

    :cond_2
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public loadConfigurations()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->w0:[Lorg/mortbay/jetty/webapp/Configuration;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->v0:[Ljava/lang/String;

    if-nez v0, :cond_1

    sget-object v0, Lorg/mortbay/jetty/webapp/WebAppContext;->Q0:[Ljava/lang/String;

    iput-object v0, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->v0:[Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->v0:[Ljava/lang/String;

    array-length v0, v0

    new-array v0, v0, [Lorg/mortbay/jetty/webapp/Configuration;

    iput-object v0, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->w0:[Lorg/mortbay/jetty/webapp/Configuration;

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->w0:[Lorg/mortbay/jetty/webapp/Configuration;

    array-length v2, v1

    if-ge v0, v2, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    iget-object v3, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->v0:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-static {v2, v3}, Lorg/mortbay/util/Loader;->loadClass(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/mortbay/jetty/webapp/Configuration;

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final o()Ljava/lang/String;
    .locals 9

    const-string v0, "/"

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Jetty"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/mortbay/jetty/handler/AbstractHandler;->getServer()Lorg/mortbay/jetty/Server;

    move-result-object v2

    invoke-virtual {v2}, Lorg/mortbay/jetty/Server;->getConnectors()[Lorg/mortbay/jetty/Connector;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, ""

    const/4 v5, 0x0

    if-eqz v2, :cond_1

    aget-object v6, v2, v5

    if-nez v6, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v6}, Lorg/mortbay/jetty/Connector;->getHost()Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    :cond_1
    :goto_0
    move-object v6, v4

    :goto_1
    if-nez v6, :cond_2

    const-string v6, "0.0.0.0"

    :cond_2
    const/16 v7, 0x2e

    const/16 v8, 0x5f

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-eqz v2, :cond_4

    aget-object v6, v2, v5

    if-nez v6, :cond_3

    goto :goto_2

    :cond_3
    invoke-interface {v6}, Lorg/mortbay/jetty/Connector;->getLocalPort()I

    move-result v6

    goto :goto_3

    :cond_4
    :goto_2
    move v6, v5

    :goto_3
    if-gez v6, :cond_5

    aget-object v2, v2, v5

    invoke-interface {v2}, Lorg/mortbay/jetty/Connector;->getPort()I

    move-result v6

    :cond_5
    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :try_start_0
    invoke-super {p0}, Lorg/mortbay/jetty/handler/ContextHandler;->getBaseResource()Lorg/mortbay/resource/Resource;

    move-result-object v2

    if-nez v2, :cond_8

    iget-object v2, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->K0:Ljava/lang/String;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_7

    :cond_6
    invoke-virtual {p0}, Lorg/mortbay/jetty/handler/ContextHandler;->getResourceBase()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/mortbay/resource/Resource;->newResource(Ljava/lang/String;)Lorg/mortbay/resource/Resource;

    :cond_7
    iget-object v2, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->K0:Ljava/lang/String;

    invoke-static {v2}, Lorg/mortbay/resource/Resource;->newResource(Ljava/lang/String;)Lorg/mortbay/resource/Resource;

    move-result-object v2

    :cond_8
    invoke-virtual {v2}, Lorg/mortbay/resource/Resource;->getURL()Ljava/net/URL;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/mortbay/util/URIUtil;->decodePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v2, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    :cond_9
    const-string v6, "!"

    invoke-virtual {v2, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v2, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    :cond_a
    invoke-virtual {v2, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v2, v0, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    const-string v2, "Can\'t generate resourceBase as part of webapp tmp dir name"

    invoke-static {v2, v0}, Lorg/mortbay/log/Log;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_4
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/mortbay/jetty/handler/ContextHandler;->getContextPath()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x2f

    invoke-virtual {v0, v2, v8}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x5c

    invoke-virtual {v0, v2, v8}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/mortbay/jetty/handler/ContextHandler;->getVirtualHosts()[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_c

    aget-object p0, p0, v5

    if-nez p0, :cond_b

    goto :goto_5

    :cond_b
    move-object v4, p0

    :cond_c
    :goto_5
    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    const/16 v0, 0x24

    invoke-static {p0, v0}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_6
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result p0

    if-ge v5, p0, :cond_e

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result p0

    invoke-static {p0}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result p0

    if-nez p0, :cond_d

    invoke-virtual {v1, v5, v7}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    :cond_d
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    :cond_e
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public removeResourceAlias(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->N0:Ljava/util/Map;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public resolveWebApp()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0}, Lorg/mortbay/jetty/handler/ContextHandler;->getBaseResource()Lorg/mortbay/resource/Resource;

    move-result-object v0

    if-nez v0, :cond_f

    iget-object v0, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->K0:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lorg/mortbay/jetty/handler/ContextHandler;->getResourceBase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->K0:Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->K0:Ljava/lang/String;

    invoke-static {v0}, Lorg/mortbay/resource/Resource;->newResource(Ljava/lang/String;)Lorg/mortbay/resource/Resource;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mortbay/resource/Resource;->getAlias()Ljava/net/URL;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v2, " anti-aliased to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Lorg/mortbay/resource/Resource;->getAlias()Ljava/net/URL;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/mortbay/resource/Resource;->getAlias()Ljava/net/URL;

    move-result-object v0

    invoke-static {v0}, Lorg/mortbay/resource/Resource;->newResource(Ljava/net/URL;)Lorg/mortbay/resource/Resource;

    move-result-object v0

    :cond_2
    invoke-static {}, Lorg/mortbay/log/Log;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Try webapp="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v2, ", exists="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Lorg/mortbay/resource/Resource;->exists()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    const-string v2, ", directory="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Lorg/mortbay/resource/Resource;->isDirectory()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {v0}, Lorg/mortbay/resource/Resource;->exists()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lorg/mortbay/resource/Resource;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "jar:"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v2, "!/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/mortbay/resource/Resource;->newResource(Ljava/lang/String;)Lorg/mortbay/resource/Resource;

    move-result-object v1

    invoke-virtual {v1}, Lorg/mortbay/resource/Resource;->exists()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v1}, Lorg/mortbay/resource/Resource;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_4

    move-object v0, v1

    :cond_4
    invoke-virtual {v0}, Lorg/mortbay/resource/Resource;->exists()Z

    move-result v1

    if-eqz v1, :cond_c

    iget-boolean v1, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->C0:Z

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Lorg/mortbay/resource/Resource;->getFile()Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Lorg/mortbay/resource/Resource;->getFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_8

    :cond_5
    iget-boolean v1, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->B0:Z

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Lorg/mortbay/resource/Resource;->getFile()Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Lorg/mortbay/resource/Resource;->getFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_8

    :cond_6
    iget-boolean v1, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->B0:Z

    if-eqz v1, :cond_7

    invoke-virtual {v0}, Lorg/mortbay/resource/Resource;->getFile()Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_8

    :cond_7
    invoke-virtual {v0}, Lorg/mortbay/resource/Resource;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_c

    :cond_8
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Lorg/mortbay/jetty/webapp/WebAppContext;->getTempDirectory()Ljava/io/File;

    move-result-object v2

    const-string v3, "webapp"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/mortbay/resource/Resource;->getFile()Ljava/io/File;

    move-result-object v2

    const-string v3, " to "

    if-eqz v2, :cond_9

    invoke-virtual {v0}, Lorg/mortbay/resource/Resource;->getFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_9

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Copy "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Lorg/mortbay/resource/Resource;->getFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/mortbay/log/Log;->info(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/mortbay/resource/Resource;->getFile()Ljava/io/File;

    move-result-object v0

    invoke-static {v0, v1}, Lorg/mortbay/util/IO;->copyDir(Ljava/io/File;Ljava/io/File;)V

    goto :goto_0

    :cond_9
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    const/4 v4, 0x0

    const-string v5, "Extract "

    if-nez v2, :cond_a

    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v5, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->K0:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/mortbay/log/Log;->info(Ljava/lang/String;)V

    invoke-static {v0, v1, v4}, Lorg/mortbay/resource/JarResource;->extract(Lorg/mortbay/resource/Resource;Ljava/io/File;Z)V

    goto :goto_0

    :cond_a
    invoke-virtual {v0}, Lorg/mortbay/resource/Resource;->lastModified()J

    move-result-wide v6

    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v8

    cmp-long v2, v6, v8

    if-lez v2, :cond_b

    invoke-static {v1}, Lorg/mortbay/util/IO;->delete(Ljava/io/File;)Z

    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v5, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->K0:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/mortbay/log/Log;->info(Ljava/lang/String;)V

    invoke-static {v0, v1, v4}, Lorg/mortbay/resource/JarResource;->extract(Lorg/mortbay/resource/Resource;Ljava/io/File;Z)V

    :cond_b
    :goto_0
    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/mortbay/resource/Resource;->newResource(Ljava/lang/String;)Lorg/mortbay/resource/Resource;

    move-result-object v0

    :cond_c
    invoke-virtual {v0}, Lorg/mortbay/resource/Resource;->exists()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-virtual {v0}, Lorg/mortbay/resource/Resource;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-static {}, Lorg/mortbay/log/Log;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_d

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "webapp="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;)V

    :cond_d
    invoke-super {p0, v0}, Lorg/mortbay/jetty/handler/ContextHandler;->setBaseResource(Lorg/mortbay/resource/Resource;)V

    goto :goto_1

    :cond_e
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "Web application not found "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->K0:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/mortbay/log/Log;->warn(Ljava/lang/String;)V

    new-instance v0, Ljava/io/FileNotFoundException;

    iget-object p0, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->K0:Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    :goto_1
    return-void
.end method

.method public setClassLoader(Ljava/lang/ClassLoader;)V
    .locals 1

    invoke-super {p0, p1}, Lorg/mortbay/jetty/handler/ContextHandler;->setClassLoader(Ljava/lang/ClassLoader;)V

    if-eqz p1, :cond_0

    instance-of v0, p1, Lorg/mortbay/jetty/webapp/WebAppClassLoader;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/mortbay/jetty/webapp/WebAppClassLoader;

    invoke-virtual {p0}, Lorg/mortbay/jetty/handler/ContextHandler;->getDisplayName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lorg/mortbay/jetty/webapp/WebAppClassLoader;->setName(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setConfigurationClasses([Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lorg/mortbay/component/AbstractLifeCycle;->isRunning()Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    :goto_0
    iput-object p1, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->v0:[Ljava/lang/String;

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Running"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setConfigurations([Lorg/mortbay/jetty/webapp/Configuration;)V
    .locals 1

    invoke-virtual {p0}, Lorg/mortbay/component/AbstractLifeCycle;->isRunning()Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lorg/mortbay/jetty/webapp/Configuration;

    check-cast p1, [Lorg/mortbay/jetty/webapp/Configuration;

    :goto_0
    iput-object p1, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->w0:[Lorg/mortbay/jetty/webapp/Configuration;

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Running"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setCopyWebDir(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->C0:Z

    return-void
.end method

.method public setDefaultsDescriptor(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lorg/mortbay/component/AbstractLifeCycle;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->x0:Ljava/lang/String;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Running"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setDescriptor(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lorg/mortbay/component/AbstractLifeCycle;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->y0:Ljava/lang/String;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Running"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setDistributable(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->A0:Z

    return-void
.end method

.method public setEventListeners([Ljava/util/EventListener;)V
    .locals 3

    iget-object v0, p0, Lorg/mortbay/jetty/servlet/Context;->_sessionHandler:Lorg/mortbay/jetty/servlet/SessionHandler;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/mortbay/jetty/servlet/SessionHandler;->clearEventListeners()V

    :cond_0
    invoke-super {p0, p1}, Lorg/mortbay/jetty/handler/ContextHandler;->setEventListeners([Ljava/util/EventListener;)V

    const/4 v0, 0x0

    :goto_0
    if-eqz p1, :cond_3

    array-length v1, p1

    if-ge v0, v1, :cond_3

    aget-object v1, p1, v0

    instance-of v2, v1, Ljavax/servlet/http/HttpSessionActivationListener;

    if-nez v2, :cond_1

    instance-of v2, v1, Ljavax/servlet/http/HttpSessionAttributeListener;

    if-nez v2, :cond_1

    instance-of v2, v1, Ljavax/servlet/http/HttpSessionBindingListener;

    if-nez v2, :cond_1

    instance-of v2, v1, Ljavax/servlet/http/HttpSessionListener;

    if-eqz v2, :cond_2

    :cond_1
    iget-object v2, p0, Lorg/mortbay/jetty/servlet/Context;->_sessionHandler:Lorg/mortbay/jetty/servlet/SessionHandler;

    if-eqz v2, :cond_2

    invoke-virtual {v2, v1}, Lorg/mortbay/jetty/servlet/SessionHandler;->addEventListener(Ljava/util/EventListener;)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public setExtraClasspath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->L0:Ljava/lang/String;

    return-void
.end method

.method public setExtractWAR(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->B0:Z

    return-void
.end method

.method public setLogUrlOnStart(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->D0:Z

    return-void
.end method

.method public setOverrideDescriptor(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lorg/mortbay/component/AbstractLifeCycle;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->z0:Ljava/lang/String;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Running"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setParentLoaderPriority(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->E0:Z

    return-void
.end method

.method public setPermissions(Ljava/security/PermissionCollection;)V
    .locals 0

    iput-object p1, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->F0:Ljava/security/PermissionCollection;

    return-void
.end method

.method public setResourceAlias(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->N0:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->N0:Ljava/util/Map;

    :cond_0
    iget-object p0, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->N0:Ljava/util/Map;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setResourceAliases(Ljava/util/Map;)V
    .locals 0

    iput-object p1, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->N0:Ljava/util/Map;

    return-void
.end method

.method public setServerClasses([Ljava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    :goto_0
    iput-object p1, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->H0:[Ljava/lang/String;

    return-void
.end method

.method public setSystemClasses([Ljava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    :goto_0
    iput-object p1, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->G0:[Ljava/lang/String;

    return-void
.end method

.method public setTempDirectory(Ljava/io/File;)V
    .locals 2

    invoke-virtual {p0}, Lorg/mortbay/component/AbstractLifeCycle;->isStarted()Z

    move-result v0

    if-nez v0, :cond_5

    if-eqz p1, :cond_0

    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "EXCEPTION "

    invoke-static {v1, v0}, Lorg/mortbay/log/Log;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->mkdir()Z

    invoke-virtual {p1}, Ljava/io/File;->deleteOnExit()V

    goto :goto_1

    :cond_1
    if-eqz p1, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->J0:Z

    :cond_2
    :goto_1
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Ljava/io/File;->canWrite()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "Bad temp directory: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    :goto_2
    iput-object p1, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->I0:Ljava/io/File;

    const-string v0, "javax.servlet.context.tempdir"

    invoke-virtual {p0, v0, p1}, Lorg/mortbay/jetty/handler/ContextHandler;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Started"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setWar(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->K0:Ljava/lang/String;

    return-void
.end method

.method public startContext()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->w0:[Lorg/mortbay/jetty/webapp/Configuration;

    array-length v3, v2

    if-ge v1, v3, :cond_0

    aget-object v2, v2, v1

    invoke-interface {v2}, Lorg/mortbay/jetty/webapp/Configuration;->configureDefaults()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/mortbay/jetty/webapp/WebAppContext;->getWebInf()Lorg/mortbay/resource/Resource;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v2, "work"

    invoke-virtual {v1, v2}, Lorg/mortbay/resource/Resource;->addPath(Ljava/lang/String;)Lorg/mortbay/resource/Resource;

    move-result-object v1

    invoke-virtual {v1}, Lorg/mortbay/resource/Resource;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lorg/mortbay/resource/Resource;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lorg/mortbay/resource/Resource;->getFile()Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lorg/mortbay/resource/Resource;->getFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->canWrite()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "javax.servlet.context.tempdir"

    invoke-virtual {p0, v2}, Lorg/mortbay/jetty/handler/ContextHandler;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_1

    invoke-virtual {v1}, Lorg/mortbay/resource/Resource;->getFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {p0, v2, v1}, Lorg/mortbay/jetty/handler/ContextHandler;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    :goto_1
    iget-object v1, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->w0:[Lorg/mortbay/jetty/webapp/Configuration;

    array-length v2, v1

    if-ge v0, v2, :cond_2

    aget-object v1, v1, v0

    invoke-interface {v1}, Lorg/mortbay/jetty/webapp/Configuration;->configureWebApp()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    invoke-super {p0}, Lorg/mortbay/jetty/servlet/Context;->startContext()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/mortbay/jetty/handler/ContextHandler;->getContextPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->K0:Ljava/lang/String;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lorg/mortbay/jetty/handler/ContextHandler;->getResourceBase()Ljava/lang/String;

    move-result-object v1

    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
