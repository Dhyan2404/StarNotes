.class public Lorg/mortbay/jetty/servlet/ServletHolder;
.super Lorg/mortbay/jetty/servlet/Holder;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mortbay/jetty/servlet/ServletHolder$b;,
        Lorg/mortbay/jetty/servlet/ServletHolder$a;
    }
.end annotation


# static fields
.field static synthetic class$javax$servlet$Servlet:Ljava/lang/Class;

.field static synthetic class$javax$servlet$SingleThreadModel:Ljava/lang/Class;

.field static synthetic class$org$mortbay$jetty$security$SecurityHandler:Ljava/lang/Class;


# instance fields
.field private transient _config:Lorg/mortbay/jetty/servlet/ServletHolder$a;

.field private _forcedPath:Ljava/lang/String;

.field private _initOnStartup:Z

.field private _initOrder:I

.field private _realm:Lorg/mortbay/jetty/security/UserRealm;

.field private _roleMap:Ljava/util/Map;

.field private _runAs:Ljava/lang/String;

.field private transient _servlet:Ljavax/servlet/Servlet;

.field private transient _unavailable:J

.field private transient _unavailableEx:Ljavax/servlet/UnavailableException;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/mortbay/jetty/servlet/Holder;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lorg/mortbay/jetty/servlet/ServletHolder;->_initOnStartup:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1}, Lorg/mortbay/jetty/servlet/Holder;-><init>(Ljava/lang/Class;)V

    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Lorg/mortbay/jetty/servlet/ServletHolder;->_initOnStartup:Z

    return-void
.end method

.method public constructor <init>(Ljavax/servlet/Servlet;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Lorg/mortbay/jetty/servlet/Holder;-><init>()V

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lorg/mortbay/jetty/servlet/ServletHolder;->_initOnStartup:Z

    .line 5
    invoke-virtual {p0, p1}, Lorg/mortbay/jetty/servlet/ServletHolder;->setServlet(Ljavax/servlet/Servlet;)V

    return-void
.end method

.method public static synthetic access$100(Lorg/mortbay/jetty/servlet/ServletHolder;)Lorg/mortbay/jetty/servlet/ServletHolder$a;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/jetty/servlet/ServletHolder;->_config:Lorg/mortbay/jetty/servlet/ServletHolder$a;

    return-object p0
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

.method private initServlet()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/servlet/ServletException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lorg/mortbay/jetty/servlet/ServletHolder;->_servlet:Ljavax/servlet/Servlet;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lorg/mortbay/jetty/servlet/Holder;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/servlet/Servlet;

    iput-object v1, p0, Lorg/mortbay/jetty/servlet/ServletHolder;->_servlet:Ljavax/servlet/Servlet;

    :cond_0
    iget-object v1, p0, Lorg/mortbay/jetty/servlet/ServletHolder;->_config:Lorg/mortbay/jetty/servlet/ServletHolder$a;

    if-nez v1, :cond_1

    new-instance v1, Lorg/mortbay/jetty/servlet/ServletHolder$a;

    invoke-direct {v1, p0}, Lorg/mortbay/jetty/servlet/ServletHolder$a;-><init>(Lorg/mortbay/jetty/servlet/ServletHolder;)V

    iput-object v1, p0, Lorg/mortbay/jetty/servlet/ServletHolder;->_config:Lorg/mortbay/jetty/servlet/ServletHolder$a;

    :cond_1
    iget-object v1, p0, Lorg/mortbay/jetty/servlet/ServletHolder;->_servlet:Ljavax/servlet/Servlet;

    instance-of v1, v1, Lorg/mortbay/jetty/servlet/ServletHolder$b;

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lorg/mortbay/jetty/servlet/Holder;->getServletHandler()Lorg/mortbay/jetty/servlet/ServletHandler;

    move-result-object v1

    iget-object v2, p0, Lorg/mortbay/jetty/servlet/ServletHolder;->_servlet:Ljavax/servlet/Servlet;

    invoke-virtual {v1, v2}, Lorg/mortbay/jetty/servlet/ServletHandler;->customizeServlet(Ljavax/servlet/Servlet;)Ljavax/servlet/Servlet;

    move-result-object v1

    iput-object v1, p0, Lorg/mortbay/jetty/servlet/ServletHolder;->_servlet:Ljavax/servlet/Servlet;

    :cond_2
    iget-object v1, p0, Lorg/mortbay/jetty/servlet/ServletHolder;->_runAs:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v2, p0, Lorg/mortbay/jetty/servlet/ServletHolder;->_realm:Lorg/mortbay/jetty/security/UserRealm;

    if-eqz v2, :cond_3

    invoke-interface {v2, v0, v1}, Lorg/mortbay/jetty/security/UserRealm;->pushRole(Ljava/security/Principal;Ljava/lang/String;)Ljava/security/Principal;

    move-result-object v1
    :try_end_0
    .catch Ljavax/servlet/UnavailableException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljavax/servlet/ServletException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto :goto_0

    :cond_3
    move-object v1, v0

    :goto_0
    :try_start_1
    iget-object v2, p0, Lorg/mortbay/jetty/servlet/ServletHolder;->_servlet:Ljavax/servlet/Servlet;

    iget-object v3, p0, Lorg/mortbay/jetty/servlet/ServletHolder;->_config:Lorg/mortbay/jetty/servlet/ServletHolder$a;

    invoke-interface {v2, v3}, Ljavax/servlet/Servlet;->init(Ljavax/servlet/ServletConfig;)V
    :try_end_1
    .catch Ljavax/servlet/UnavailableException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljavax/servlet/ServletException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lorg/mortbay/jetty/servlet/ServletHolder;->_runAs:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object p0, p0, Lorg/mortbay/jetty/servlet/ServletHolder;->_realm:Lorg/mortbay/jetty/security/UserRealm;

    if-eqz p0, :cond_4

    if-eqz v1, :cond_4

    invoke-interface {p0, v1}, Lorg/mortbay/jetty/security/UserRealm;->popRole(Ljava/security/Principal;)Ljava/security/Principal;

    :cond_4
    return-void

    :catchall_0
    move-exception v0

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_5

    :catch_0
    move-exception v2

    move-object v4, v2

    move-object v2, v1

    move-object v1, v4

    goto :goto_1

    :catch_1
    move-exception v2

    move-object v4, v2

    move-object v2, v1

    move-object v1, v4

    goto :goto_2

    :catch_2
    move-exception v2

    move-object v4, v2

    move-object v2, v1

    move-object v1, v4

    goto :goto_4

    :catchall_1
    move-exception v1

    goto :goto_5

    :catch_3
    move-exception v1

    move-object v2, v0

    :goto_1
    :try_start_2
    invoke-direct {p0, v1}, Lorg/mortbay/jetty/servlet/ServletHolder;->makeUnavailable(Ljava/lang/Throwable;)V

    iput-object v0, p0, Lorg/mortbay/jetty/servlet/ServletHolder;->_servlet:Ljavax/servlet/Servlet;

    iput-object v0, p0, Lorg/mortbay/jetty/servlet/ServletHolder;->_config:Lorg/mortbay/jetty/servlet/ServletHolder$a;

    new-instance v0, Ljavax/servlet/ServletException;

    invoke-direct {v0, v1}, Ljavax/servlet/ServletException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_4
    move-exception v1

    move-object v2, v0

    :goto_2
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-nez v3, :cond_5

    move-object v3, v1

    goto :goto_3

    :cond_5
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    :goto_3
    invoke-direct {p0, v3}, Lorg/mortbay/jetty/servlet/ServletHolder;->makeUnavailable(Ljava/lang/Throwable;)V

    iput-object v0, p0, Lorg/mortbay/jetty/servlet/ServletHolder;->_servlet:Ljavax/servlet/Servlet;

    iput-object v0, p0, Lorg/mortbay/jetty/servlet/ServletHolder;->_config:Lorg/mortbay/jetty/servlet/ServletHolder$a;

    throw v1

    :catch_5
    move-exception v1

    move-object v2, v0

    :goto_4
    invoke-direct {p0, v1}, Lorg/mortbay/jetty/servlet/ServletHolder;->makeUnavailable(Ljavax/servlet/UnavailableException;)V

    iput-object v0, p0, Lorg/mortbay/jetty/servlet/ServletHolder;->_servlet:Ljavax/servlet/Servlet;

    iput-object v0, p0, Lorg/mortbay/jetty/servlet/ServletHolder;->_config:Lorg/mortbay/jetty/servlet/ServletHolder$a;

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :catchall_2
    move-exception v1

    move-object v0, v2

    :goto_5
    iget-object v2, p0, Lorg/mortbay/jetty/servlet/ServletHolder;->_runAs:Ljava/lang/String;

    if-eqz v2, :cond_6

    iget-object p0, p0, Lorg/mortbay/jetty/servlet/ServletHolder;->_realm:Lorg/mortbay/jetty/security/UserRealm;

    if-eqz p0, :cond_6

    if-eqz v0, :cond_6

    invoke-interface {p0, v0}, Lorg/mortbay/jetty/security/UserRealm;->popRole(Ljava/security/Principal;)Ljava/security/Principal;

    :cond_6
    throw v1
.end method

.method private makeUnavailable(Ljava/lang/Throwable;)V
    .locals 2

    .line 10
    instance-of v0, p1, Ljavax/servlet/UnavailableException;

    if-eqz v0, :cond_0

    .line 11
    check-cast p1, Ljavax/servlet/UnavailableException;

    invoke-direct {p0, p1}, Lorg/mortbay/jetty/servlet/ServletHolder;->makeUnavailable(Ljavax/servlet/UnavailableException;)V

    goto :goto_0

    .line 12
    :cond_0
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/Holder;->_servletHandler:Lorg/mortbay/jetty/servlet/ServletHandler;

    invoke-virtual {v0}, Lorg/mortbay/jetty/servlet/ServletHandler;->getServletContext()Ljavax/servlet/ServletContext;

    move-result-object v0

    const-string v1, "unavailable"

    invoke-interface {v0, v1, p1}, Ljavax/servlet/ServletContext;->log(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 13
    new-instance v0, Ljavax/servlet/UnavailableException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, -0x1

    invoke-direct {v0, p1, v1}, Ljavax/servlet/UnavailableException;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lorg/mortbay/jetty/servlet/ServletHolder;->_unavailableEx:Ljavax/servlet/UnavailableException;

    const-wide/16 v0, -0x1

    .line 14
    iput-wide v0, p0, Lorg/mortbay/jetty/servlet/ServletHolder;->_unavailable:J

    :goto_0
    return-void
.end method

.method private makeUnavailable(Ljavax/servlet/UnavailableException;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/ServletHolder;->_unavailableEx:Ljavax/servlet/UnavailableException;

    if-ne v0, p1, :cond_0

    iget-wide v0, p0, Lorg/mortbay/jetty/servlet/ServletHolder;->_unavailable:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/Holder;->_servletHandler:Lorg/mortbay/jetty/servlet/ServletHandler;

    invoke-virtual {v0}, Lorg/mortbay/jetty/servlet/ServletHandler;->getServletContext()Ljavax/servlet/ServletContext;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Unavailable "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljavax/servlet/ServletContext;->log(Ljava/lang/String;)V

    .line 3
    iput-object p1, p0, Lorg/mortbay/jetty/servlet/ServletHolder;->_unavailableEx:Ljavax/servlet/UnavailableException;

    const-wide/16 v0, -0x1

    .line 4
    iput-wide v0, p0, Lorg/mortbay/jetty/servlet/ServletHolder;->_unavailable:J

    .line 5
    invoke-virtual {p1}, Ljavax/servlet/UnavailableException;->isPermanent()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 6
    iput-wide v0, p0, Lorg/mortbay/jetty/servlet/ServletHolder;->_unavailable:J

    goto :goto_0

    .line 7
    :cond_1
    iget-object p1, p0, Lorg/mortbay/jetty/servlet/ServletHolder;->_unavailableEx:Ljavax/servlet/UnavailableException;

    invoke-virtual {p1}, Ljavax/servlet/UnavailableException;->getUnavailableSeconds()I

    move-result p1

    if-lez p1, :cond_2

    .line 8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object p1, p0, Lorg/mortbay/jetty/servlet/ServletHolder;->_unavailableEx:Ljavax/servlet/UnavailableException;

    invoke-virtual {p1}, Ljavax/servlet/UnavailableException;->getUnavailableSeconds()I

    move-result p1

    mul-int/lit16 p1, p1, 0x3e8

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/mortbay/jetty/servlet/ServletHolder;->_unavailable:J

    goto :goto_0

    .line 9
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x1388

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/mortbay/jetty/servlet/ServletHolder;->_unavailable:J

    :goto_0
    return-void
.end method


# virtual methods
.method public checkServletType()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/servlet/UnavailableException;
        }
    .end annotation

    sget-object v0, Lorg/mortbay/jetty/servlet/ServletHolder;->class$javax$servlet$Servlet:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "javax.servlet.Servlet"

    invoke-static {v0}, Lorg/mortbay/jetty/servlet/ServletHolder;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/mortbay/jetty/servlet/ServletHolder;->class$javax$servlet$Servlet:Ljava/lang/Class;

    :cond_0
    iget-object v1, p0, Lorg/mortbay/jetty/servlet/Holder;->_class:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    new-instance v0, Ljavax/servlet/UnavailableException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Servlet "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p0, p0, Lorg/mortbay/jetty/servlet/Holder;->_class:Ljava/lang/Class;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string p0, " is not a javax.servlet.Servlet"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljavax/servlet/UnavailableException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public compareTo(Ljava/lang/Object;)I
    .locals 6

    instance-of v0, p1, Lorg/mortbay/jetty/servlet/ServletHolder;

    const/4 v1, 0x1

    if-eqz v0, :cond_7

    move-object v0, p1

    check-cast v0, Lorg/mortbay/jetty/servlet/ServletHolder;

    const/4 v2, 0x0

    if-ne v0, p0, :cond_0

    return v2

    :cond_0
    iget v3, v0, Lorg/mortbay/jetty/servlet/ServletHolder;->_initOrder:I

    iget v4, p0, Lorg/mortbay/jetty/servlet/ServletHolder;->_initOrder:I

    if-ge v3, v4, :cond_1

    return v1

    :cond_1
    const/4 v5, -0x1

    if-le v3, v4, :cond_2

    return v5

    :cond_2
    iget-object v3, p0, Lorg/mortbay/jetty/servlet/Holder;->_className:Ljava/lang/String;

    if-eqz v3, :cond_3

    iget-object v4, v0, Lorg/mortbay/jetty/servlet/Holder;->_className:Ljava/lang/String;

    if-eqz v4, :cond_3

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    :cond_3
    if-nez v2, :cond_4

    iget-object v2, p0, Lorg/mortbay/jetty/servlet/Holder;->_name:Ljava/lang/String;

    iget-object v0, v0, Lorg/mortbay/jetty/servlet/Holder;->_name:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    :cond_4
    if-nez v2, :cond_6

    invoke-virtual {p0}, Lorg/mortbay/jetty/servlet/ServletHolder;->hashCode()I

    move-result p0

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    if-le p0, p1, :cond_5

    goto :goto_0

    :cond_5
    move v1, v5

    :goto_0
    move v2, v1

    :cond_6
    return v2

    :cond_7
    return v1
.end method

.method public destroyInstance(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    check-cast p1, Ljavax/servlet/Servlet;

    invoke-interface {p1}, Ljavax/servlet/Servlet;->destroy()V

    invoke-virtual {p0}, Lorg/mortbay/jetty/servlet/Holder;->getServletHandler()Lorg/mortbay/jetty/servlet/ServletHandler;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/mortbay/jetty/servlet/ServletHandler;->customizeServletDestroy(Ljavax/servlet/Servlet;)Ljavax/servlet/Servlet;

    return-void
.end method

.method public doStart()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/mortbay/jetty/servlet/ServletHolder;->_unavailable:J

    :try_start_0
    invoke-super {p0}, Lorg/mortbay/jetty/servlet/Holder;->doStart()V

    invoke-virtual {p0}, Lorg/mortbay/jetty/servlet/ServletHolder;->checkServletType()V
    :try_end_0
    .catch Ljavax/servlet/UnavailableException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lorg/mortbay/jetty/servlet/ServletHolder;->makeUnavailable(Ljavax/servlet/UnavailableException;)V

    :goto_0
    new-instance v0, Lorg/mortbay/jetty/servlet/ServletHolder$a;

    invoke-direct {v0, p0}, Lorg/mortbay/jetty/servlet/ServletHolder$a;-><init>(Lorg/mortbay/jetty/servlet/ServletHolder;)V

    iput-object v0, p0, Lorg/mortbay/jetty/servlet/ServletHolder;->_config:Lorg/mortbay/jetty/servlet/ServletHolder$a;

    iget-object v0, p0, Lorg/mortbay/jetty/servlet/ServletHolder;->_runAs:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-static {}, Lorg/mortbay/jetty/handler/ContextHandler;->getCurrentContext()Lorg/mortbay/jetty/handler/ContextHandler$SContext;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mortbay/jetty/handler/ContextHandler$SContext;->getContextHandler()Lorg/mortbay/jetty/handler/ContextHandler;

    move-result-object v0

    sget-object v1, Lorg/mortbay/jetty/servlet/ServletHolder;->class$org$mortbay$jetty$security$SecurityHandler:Ljava/lang/Class;

    if-nez v1, :cond_0

    const-string v1, "org.mortbay.jetty.security.SecurityHandler"

    invoke-static {v1}, Lorg/mortbay/jetty/servlet/ServletHolder;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/mortbay/jetty/servlet/ServletHolder;->class$org$mortbay$jetty$security$SecurityHandler:Ljava/lang/Class;

    :cond_0
    invoke-virtual {v0, v1}, Lorg/mortbay/jetty/handler/AbstractHandlerContainer;->getChildHandlerByClass(Ljava/lang/Class;)Lorg/mortbay/jetty/Handler;

    move-result-object v0

    check-cast v0, Lorg/mortbay/jetty/security/SecurityHandler;

    invoke-virtual {v0}, Lorg/mortbay/jetty/security/SecurityHandler;->getUserRealm()Lorg/mortbay/jetty/security/UserRealm;

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/jetty/servlet/ServletHolder;->_realm:Lorg/mortbay/jetty/security/UserRealm;

    :cond_1
    sget-object v0, Lorg/mortbay/jetty/servlet/ServletHolder;->class$javax$servlet$SingleThreadModel:Ljava/lang/Class;

    if-nez v0, :cond_2

    const-string v0, "javax.servlet.SingleThreadModel"

    invoke-static {v0}, Lorg/mortbay/jetty/servlet/ServletHolder;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/mortbay/jetty/servlet/ServletHolder;->class$javax$servlet$SingleThreadModel:Ljava/lang/Class;

    :cond_2
    iget-object v1, p0, Lorg/mortbay/jetty/servlet/Holder;->_class:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lorg/mortbay/jetty/servlet/ServletHolder$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/mortbay/jetty/servlet/ServletHolder$b;-><init>(Lorg/mortbay/jetty/servlet/ServletHolder;Lorg/mortbay/jetty/servlet/d;)V

    iput-object v0, p0, Lorg/mortbay/jetty/servlet/ServletHolder;->_servlet:Ljavax/servlet/Servlet;

    :cond_3
    iget-boolean v0, p0, Lorg/mortbay/jetty/servlet/Holder;->_extInstance:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lorg/mortbay/jetty/servlet/ServletHolder;->_initOnStartup:Z

    if-eqz v0, :cond_5

    :cond_4
    :try_start_1
    invoke-direct {p0}, Lorg/mortbay/jetty/servlet/ServletHolder;->initServlet()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    iget-object p0, p0, Lorg/mortbay/jetty/servlet/Holder;->_servletHandler:Lorg/mortbay/jetty/servlet/ServletHandler;

    invoke-virtual {p0}, Lorg/mortbay/jetty/servlet/ServletHandler;->isStartWithUnavailable()Z

    move-result p0

    if-eqz p0, :cond_6

    invoke-static {v0}, Lorg/mortbay/log/Log;->ignore(Ljava/lang/Throwable;)V

    :cond_5
    :goto_1
    return-void

    :cond_6
    throw v0
.end method

.method public doStop()V
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lorg/mortbay/jetty/servlet/ServletHolder;->_runAs:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lorg/mortbay/jetty/servlet/ServletHolder;->_realm:Lorg/mortbay/jetty/security/UserRealm;

    if-eqz v2, :cond_0

    invoke-interface {v2, v0, v1}, Lorg/mortbay/jetty/security/UserRealm;->pushRole(Ljava/security/Principal;Ljava/lang/String;)Ljava/security/Principal;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    :try_start_1
    iget-object v2, p0, Lorg/mortbay/jetty/servlet/ServletHolder;->_servlet:Ljavax/servlet/Servlet;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    :try_start_2
    invoke-virtual {p0, v2}, Lorg/mortbay/jetty/servlet/ServletHolder;->destroyInstance(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v2

    :try_start_3
    invoke-static {v2}, Lorg/mortbay/log/Log;->warn(Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    iget-boolean v2, p0, Lorg/mortbay/jetty/servlet/Holder;->_extInstance:Z

    if-nez v2, :cond_2

    iput-object v0, p0, Lorg/mortbay/jetty/servlet/ServletHolder;->_servlet:Ljavax/servlet/Servlet;

    :cond_2
    iput-object v0, p0, Lorg/mortbay/jetty/servlet/ServletHolder;->_config:Lorg/mortbay/jetty/servlet/ServletHolder$a;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-super {p0}, Lorg/mortbay/jetty/servlet/Holder;->doStop()V

    iget-object v0, p0, Lorg/mortbay/jetty/servlet/ServletHolder;->_runAs:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object p0, p0, Lorg/mortbay/jetty/servlet/ServletHolder;->_realm:Lorg/mortbay/jetty/security/UserRealm;

    if-eqz p0, :cond_3

    if-eqz v1, :cond_3

    invoke-interface {p0, v1}, Lorg/mortbay/jetty/security/UserRealm;->popRole(Ljava/security/Principal;)Ljava/security/Principal;

    :cond_3
    return-void

    :catchall_0
    move-exception v0

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    goto :goto_2

    :catchall_1
    move-exception v1

    :goto_2
    invoke-super {p0}, Lorg/mortbay/jetty/servlet/Holder;->doStop()V

    iget-object v2, p0, Lorg/mortbay/jetty/servlet/ServletHolder;->_runAs:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object p0, p0, Lorg/mortbay/jetty/servlet/ServletHolder;->_realm:Lorg/mortbay/jetty/security/UserRealm;

    if-eqz p0, :cond_4

    if-eqz v0, :cond_4

    invoke-interface {p0, v0}, Lorg/mortbay/jetty/security/UserRealm;->popRole(Ljava/security/Principal;)Ljava/security/Principal;

    :cond_4
    throw v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lorg/mortbay/jetty/servlet/ServletHolder;->compareTo(Ljava/lang/Object;)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getForcedPath()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/jetty/servlet/ServletHolder;->_forcedPath:Ljava/lang/String;

    return-object p0
.end method

.method public getInitOrder()I
    .locals 0

    iget p0, p0, Lorg/mortbay/jetty/servlet/ServletHolder;->_initOrder:I

    return p0
.end method

.method public getRoleMap()Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/jetty/servlet/ServletHolder;->_roleMap:Ljava/util/Map;

    return-object p0
.end method

.method public getRunAs()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/jetty/servlet/ServletHolder;->_runAs:Ljava/lang/String;

    return-object p0
.end method

.method public declared-synchronized getServlet()Ljavax/servlet/Servlet;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/servlet/ServletException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/mortbay/jetty/servlet/ServletHolder;->_unavailable:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_2

    cmp-long v4, v0, v2

    if-ltz v4, :cond_1

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v4, p0, Lorg/mortbay/jetty/servlet/ServletHolder;->_unavailable:J

    cmp-long v0, v0, v4

    if-ltz v0, :cond_1

    :cond_0
    iput-wide v2, p0, Lorg/mortbay/jetty/servlet/ServletHolder;->_unavailable:J

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/mortbay/jetty/servlet/ServletHolder;->_unavailableEx:Ljavax/servlet/UnavailableException;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/ServletHolder;->_unavailableEx:Ljavax/servlet/UnavailableException;

    throw v0

    :cond_2
    :goto_0
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/ServletHolder;->_servlet:Ljavax/servlet/Servlet;

    if-nez v0, :cond_3

    invoke-direct {p0}, Lorg/mortbay/jetty/servlet/ServletHolder;->initServlet()V

    :cond_3
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/ServletHolder;->_servlet:Ljavax/servlet/Servlet;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getServletInstance()Ljavax/servlet/Servlet;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/jetty/servlet/ServletHolder;->_servlet:Ljavax/servlet/Servlet;

    return-object p0
.end method

.method public getUnavailableException()Ljavax/servlet/UnavailableException;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/jetty/servlet/ServletHolder;->_unavailableEx:Ljavax/servlet/UnavailableException;

    return-object p0
.end method

.method public getUserRoleLink(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/jetty/servlet/ServletHolder;->_roleMap:Ljava/util/Map;

    if-nez p0, :cond_0

    return-object p1

    :cond_0
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    move-object p1, p0

    :goto_0
    return-object p1
.end method

.method public handle(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/servlet/ServletException;,
            Ljavax/servlet/UnavailableException;,
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/mortbay/jetty/servlet/Holder;->_class:Ljava/lang/Class;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lorg/mortbay/jetty/servlet/ServletHolder;->_servlet:Ljavax/servlet/Servlet;

    monitor-enter p0

    :try_start_0
    iget-wide v1, p0, Lorg/mortbay/jetty/servlet/ServletHolder;->_unavailable:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lorg/mortbay/jetty/servlet/ServletHolder;->_initOnStartup:Z

    if-nez v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Lorg/mortbay/jetty/servlet/ServletHolder;->getServlet()Ljavax/servlet/Servlet;

    move-result-object v0

    :cond_1
    if-eqz v0, :cond_6

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 v1, 0x0

    :try_start_1
    iget-object v2, p0, Lorg/mortbay/jetty/servlet/ServletHolder;->_forcedPath:Ljava/lang/String;

    if-eqz v2, :cond_2

    const-string v3, "org.apache.catalina.jsp_file"

    invoke-interface {p1, v3, v2}, Ljavax/servlet/ServletRequest;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2
    iget-object v2, p0, Lorg/mortbay/jetty/servlet/ServletHolder;->_runAs:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lorg/mortbay/jetty/servlet/ServletHolder;->_realm:Lorg/mortbay/jetty/security/UserRealm;

    if-eqz v2, :cond_3

    invoke-static {}, Lorg/mortbay/jetty/HttpConnection;->getCurrentConnection()Lorg/mortbay/jetty/HttpConnection;

    move-result-object v2

    invoke-virtual {v2}, Lorg/mortbay/jetty/HttpConnection;->getRequest()Lorg/mortbay/jetty/Request;

    move-result-object v2
    :try_end_1
    .catch Ljavax/servlet/UnavailableException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v3, p0, Lorg/mortbay/jetty/servlet/ServletHolder;->_realm:Lorg/mortbay/jetty/security/UserRealm;

    invoke-virtual {v2}, Lorg/mortbay/jetty/Request;->getUserPrincipal()Ljava/security/Principal;

    move-result-object v4

    iget-object v5, p0, Lorg/mortbay/jetty/servlet/ServletHolder;->_runAs:Ljava/lang/String;

    invoke-interface {v3, v4, v5}, Lorg/mortbay/jetty/security/UserRealm;->pushRole(Ljava/security/Principal;Ljava/lang/String;)Ljava/security/Principal;

    move-result-object v1

    invoke-virtual {v2, v1}, Lorg/mortbay/jetty/Request;->setUserPrincipal(Ljava/security/Principal;)V

    goto :goto_0

    :cond_3
    move-object v2, v1

    :goto_0
    invoke-interface {v0, p1, p2}, Ljavax/servlet/Servlet;->service(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;)V
    :try_end_2
    .catch Ljavax/servlet/UnavailableException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    iget-object p1, p0, Lorg/mortbay/jetty/servlet/ServletHolder;->_runAs:Ljava/lang/String;

    if-eqz p1, :cond_4

    iget-object p0, p0, Lorg/mortbay/jetty/servlet/ServletHolder;->_realm:Lorg/mortbay/jetty/security/UserRealm;

    if-eqz p0, :cond_4

    if-eqz v1, :cond_4

    if-eqz v2, :cond_4

    invoke-interface {p0, v1}, Lorg/mortbay/jetty/security/UserRealm;->popRole(Ljava/security/Principal;)Ljava/security/Principal;

    move-result-object p0

    invoke-virtual {v2, p0}, Lorg/mortbay/jetty/Request;->setUserPrincipal(Ljava/security/Principal;)V

    :cond_4
    return-void

    :catch_0
    move-exception p2

    goto :goto_1

    :catchall_0
    move-exception p2

    move-object v2, v1

    goto :goto_2

    :catch_1
    move-exception p2

    move-object v2, v1

    :goto_1
    :try_start_3
    invoke-direct {p0, p2}, Lorg/mortbay/jetty/servlet/ServletHolder;->makeUnavailable(Ljavax/servlet/UnavailableException;)V

    iget-object p2, p0, Lorg/mortbay/jetty/servlet/ServletHolder;->_unavailableEx:Ljavax/servlet/UnavailableException;

    throw p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p2

    :goto_2
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/ServletHolder;->_runAs:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/mortbay/jetty/servlet/ServletHolder;->_realm:Lorg/mortbay/jetty/security/UserRealm;

    if-eqz v0, :cond_5

    if-eqz v1, :cond_5

    if-eqz v2, :cond_5

    invoke-interface {v0, v1}, Lorg/mortbay/jetty/security/UserRealm;->popRole(Ljava/security/Principal;)Ljava/security/Principal;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/mortbay/jetty/Request;->setUserPrincipal(Ljava/security/Principal;)V

    :cond_5
    const-string v0, "javax.servlet.error.servlet_name"

    invoke-virtual {p0}, Lorg/mortbay/jetty/servlet/Holder;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, v0, p0}, Ljavax/servlet/ServletRequest;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    throw p2

    :cond_6
    :try_start_4
    new-instance p1, Ljavax/servlet/UnavailableException;

    new-instance p2, Ljava/lang/StringBuffer;

    invoke-direct {p2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v0, "Could not instantiate "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lorg/mortbay/jetty/servlet/Holder;->_class:Ljava/lang/Class;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljavax/servlet/UnavailableException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_2
    move-exception p1

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw p1

    :cond_7
    new-instance p0, Ljavax/servlet/UnavailableException;

    const-string p1, "Servlet Not Initialized"

    invoke-direct {p0, p1}, Ljavax/servlet/UnavailableException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lorg/mortbay/jetty/servlet/Holder;->_name:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result p0

    :goto_0
    return p0
.end method

.method public isAvailable()Z
    .locals 6

    invoke-virtual {p0}, Lorg/mortbay/component/AbstractLifeCycle;->isStarted()Z

    move-result v0

    const/4 v1, 0x1

    const-wide/16 v2, 0x0

    if-eqz v0, :cond_0

    iget-wide v4, p0, Lorg/mortbay/jetty/servlet/ServletHolder;->_unavailable:J

    cmp-long v0, v4, v2

    if-nez v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lorg/mortbay/jetty/servlet/ServletHolder;->getServlet()Ljavax/servlet/Servlet;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/mortbay/log/Log;->ignore(Ljava/lang/Throwable;)V

    :goto_0
    invoke-virtual {p0}, Lorg/mortbay/component/AbstractLifeCycle;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-wide v4, p0, Lorg/mortbay/jetty/servlet/ServletHolder;->_unavailable:J

    cmp-long p0, v4, v2

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method public setForcedPath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/mortbay/jetty/servlet/ServletHolder;->_forcedPath:Ljava/lang/String;

    return-void
.end method

.method public setInitOrder(I)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/mortbay/jetty/servlet/ServletHolder;->_initOnStartup:Z

    iput p1, p0, Lorg/mortbay/jetty/servlet/ServletHolder;->_initOrder:I

    return-void
.end method

.method public setRunAs(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/mortbay/jetty/servlet/ServletHolder;->_runAs:Ljava/lang/String;

    return-void
.end method

.method public declared-synchronized setServlet(Ljavax/servlet/Servlet;)V
    .locals 1

    monitor-enter p0

    if-eqz p1, :cond_1

    :try_start_0
    instance-of v0, p1, Ljavax/servlet/SingleThreadModel;

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/mortbay/jetty/servlet/Holder;->_extInstance:Z

    iput-object p1, p0, Lorg/mortbay/jetty/servlet/ServletHolder;->_servlet:Ljavax/servlet/Servlet;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/mortbay/jetty/servlet/Holder;->setHeldClass(Ljava/lang/Class;)V

    invoke-virtual {p0}, Lorg/mortbay/jetty/servlet/Holder;->getName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, "-"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/mortbay/jetty/servlet/Holder;->setName(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setUserRoleLink(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/ServletHolder;->_roleMap:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/mortbay/jetty/servlet/ServletHolder;->_roleMap:Ljava/util/Map;

    :cond_0
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/ServletHolder;->_roleMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
