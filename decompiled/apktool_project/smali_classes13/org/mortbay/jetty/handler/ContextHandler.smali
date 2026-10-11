.class public Lorg/mortbay/jetty/handler/ContextHandler;
.super Lorg/mortbay/jetty/handler/HandlerWrapper;
.source "SourceFile"

# interfaces
.implements Lorg/mortbay/util/Attributes;
.implements Lorg/mortbay/jetty/Server$Graceful;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mortbay/jetty/handler/ContextHandler$SContext;
    }
.end annotation


# static fields
.field public static final MANAGED_ATTRIBUTES:Ljava/lang/String; = "org.mortbay.jetty.servlet.ManagedAttributes"

.field public static k0:Ljava/lang/ThreadLocal;

.field public static synthetic q0:Ljava/lang/Class;

.field public static synthetic t0:Ljava/lang/Class;

.field public static synthetic u0:Ljava/lang/Class;


# instance fields
.field public J:Ljava/lang/Object;

.field public O:Ljava/lang/Object;

.field public Q:Ljava/lang/Object;

.field public Z:Ljava/util/Set;

.field protected _scontext:Lorg/mortbay/jetty/handler/ContextHandler$SContext;

.field public g:Lorg/mortbay/util/AttributesMap;

.field public h:Lorg/mortbay/util/AttributesMap;

.field public i:Ljava/lang/ClassLoader;

.field public j:Ljava/lang/String;

.field public k:Ljava/util/Map;

.field public l:Ljava/lang/String;

.field public m:Lorg/mortbay/resource/Resource;

.field public n:Lorg/mortbay/jetty/MimeTypes;

.field public o:Ljava/util/Map;

.field public p:[Ljava/lang/String;

.field public q:Lorg/mortbay/jetty/handler/ErrorHandler;

.field public r:[Ljava/lang/String;

.field public s:Ljava/util/Set;

.field public t:[Ljava/util/EventListener;

.field public u:Lorg/mortbay/log/Logger;

.field public v:Z

.field public w:Z

.field public x:I

.field public y:Z

.field public z:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lorg/mortbay/jetty/handler/ContextHandler;->k0:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lorg/mortbay/jetty/handler/HandlerWrapper;-><init>()V

    const-string v0, "/"

    .line 2
    iput-object v0, p0, Lorg/mortbay/jetty/handler/ContextHandler;->j:Ljava/lang/String;

    const-string v0, "org.mortbay.jetty.Request.maxFormContentSize"

    const v1, 0x30d40

    .line 3
    invoke-static {v0, v1}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lorg/mortbay/jetty/handler/ContextHandler;->x:I

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lorg/mortbay/jetty/handler/ContextHandler;->y:Z

    .line 5
    new-instance v0, Lorg/mortbay/jetty/handler/ContextHandler$SContext;

    invoke-direct {v0, p0}, Lorg/mortbay/jetty/handler/ContextHandler$SContext;-><init>(Lorg/mortbay/jetty/handler/ContextHandler;)V

    iput-object v0, p0, Lorg/mortbay/jetty/handler/ContextHandler;->_scontext:Lorg/mortbay/jetty/handler/ContextHandler$SContext;

    .line 6
    new-instance v0, Lorg/mortbay/util/AttributesMap;

    invoke-direct {v0}, Lorg/mortbay/util/AttributesMap;-><init>()V

    iput-object v0, p0, Lorg/mortbay/jetty/handler/ContextHandler;->g:Lorg/mortbay/util/AttributesMap;

    .line 7
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/mortbay/jetty/handler/ContextHandler;->k:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Lorg/mortbay/jetty/handler/ContextHandler;-><init>()V

    .line 16
    invoke-virtual {p0, p1}, Lorg/mortbay/jetty/handler/ContextHandler;->setContextPath(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lorg/mortbay/jetty/HandlerContainer;Ljava/lang/String;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Lorg/mortbay/jetty/handler/ContextHandler;-><init>()V

    .line 18
    invoke-virtual {p0, p2}, Lorg/mortbay/jetty/handler/ContextHandler;->setContextPath(Ljava/lang/String;)V

    .line 19
    invoke-interface {p1, p0}, Lorg/mortbay/jetty/HandlerContainer;->addHandler(Lorg/mortbay/jetty/Handler;)V

    return-void
.end method

.method public constructor <init>(Lorg/mortbay/jetty/handler/ContextHandler$SContext;)V
    .locals 2

    .line 8
    invoke-direct {p0}, Lorg/mortbay/jetty/handler/HandlerWrapper;-><init>()V

    const-string v0, "/"

    .line 9
    iput-object v0, p0, Lorg/mortbay/jetty/handler/ContextHandler;->j:Ljava/lang/String;

    const-string v0, "org.mortbay.jetty.Request.maxFormContentSize"

    const v1, 0x30d40

    .line 10
    invoke-static {v0, v1}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lorg/mortbay/jetty/handler/ContextHandler;->x:I

    const/4 v0, 0x0

    .line 11
    iput-boolean v0, p0, Lorg/mortbay/jetty/handler/ContextHandler;->y:Z

    .line 12
    iput-object p1, p0, Lorg/mortbay/jetty/handler/ContextHandler;->_scontext:Lorg/mortbay/jetty/handler/ContextHandler$SContext;

    .line 13
    new-instance p1, Lorg/mortbay/util/AttributesMap;

    invoke-direct {p1}, Lorg/mortbay/util/AttributesMap;-><init>()V

    iput-object p1, p0, Lorg/mortbay/jetty/handler/ContextHandler;->g:Lorg/mortbay/util/AttributesMap;

    .line 14
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lorg/mortbay/jetty/handler/ContextHandler;->k:Ljava/util/Map;

    return-void
.end method

.method static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
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

.method public static synthetic f(Lorg/mortbay/jetty/handler/ContextHandler;)Lorg/mortbay/jetty/MimeTypes;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/jetty/handler/ContextHandler;->n:Lorg/mortbay/jetty/MimeTypes;

    return-object p0
.end method

.method public static synthetic g(Lorg/mortbay/jetty/handler/ContextHandler;)Lorg/mortbay/log/Logger;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/jetty/handler/ContextHandler;->u:Lorg/mortbay/log/Logger;

    return-object p0
.end method

.method public static getCurrentContext()Lorg/mortbay/jetty/handler/ContextHandler$SContext;
    .locals 1

    sget-object v0, Lorg/mortbay/jetty/handler/ContextHandler;->k0:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mortbay/jetty/handler/ContextHandler$SContext;

    return-object v0
.end method

.method public static synthetic h(Lorg/mortbay/jetty/handler/ContextHandler;)Lorg/mortbay/util/AttributesMap;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/jetty/handler/ContextHandler;->h:Lorg/mortbay/util/AttributesMap;

    return-object p0
.end method

.method public static synthetic i(Lorg/mortbay/jetty/handler/ContextHandler;)Lorg/mortbay/util/AttributesMap;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/jetty/handler/ContextHandler;->g:Lorg/mortbay/util/AttributesMap;

    return-object p0
.end method

.method public static synthetic j(Lorg/mortbay/jetty/handler/ContextHandler;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lorg/mortbay/jetty/handler/ContextHandler;->n(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic k(Lorg/mortbay/jetty/handler/ContextHandler;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/jetty/handler/ContextHandler;->J:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic l(Lorg/mortbay/jetty/handler/ContextHandler;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/jetty/handler/ContextHandler;->j:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public addEventListener(Ljava/util/EventListener;)V
    .locals 2

    invoke-virtual {p0}, Lorg/mortbay/jetty/handler/ContextHandler;->getEventListeners()[Ljava/util/EventListener;

    move-result-object v0

    sget-object v1, Lorg/mortbay/jetty/handler/ContextHandler;->q0:Ljava/lang/Class;

    if-nez v1, :cond_0

    const-string v1, "java.util.EventListener"

    invoke-static {v1}, Lorg/mortbay/jetty/handler/ContextHandler;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/mortbay/jetty/handler/ContextHandler;->q0:Ljava/lang/Class;

    :cond_0
    invoke-static {v0, p1, v1}, Lorg/mortbay/util/LazyList;->addToArray([Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/util/EventListener;

    check-cast p1, [Ljava/util/EventListener;

    invoke-virtual {p0, p1}, Lorg/mortbay/jetty/handler/ContextHandler;->setEventListeners([Ljava/util/EventListener;)V

    return-void
.end method

.method public addLocaleEncoding(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/mortbay/jetty/handler/ContextHandler;->o:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/mortbay/jetty/handler/ContextHandler;->o:Ljava/util/Map;

    :cond_0
    iget-object p0, p0, Lorg/mortbay/jetty/handler/ContextHandler;->o:Ljava/util/Map;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public clearAttributes()V
    .locals 3

    iget-object v0, p0, Lorg/mortbay/jetty/handler/ContextHandler;->g:Lorg/mortbay/util/AttributesMap;

    invoke-virtual {v0}, Lorg/mortbay/util/AttributesMap;->getAttributeNames()Ljava/util/Enumeration;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lorg/mortbay/jetty/handler/ContextHandler;->n(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/mortbay/jetty/handler/ContextHandler;->g:Lorg/mortbay/util/AttributesMap;

    invoke-virtual {p0}, Lorg/mortbay/util/AttributesMap;->clearAttributes()V

    return-void
.end method

.method public doStart()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lorg/mortbay/jetty/handler/ContextHandler;->j:Ljava/lang/String;

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lorg/mortbay/jetty/handler/ContextHandler;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/mortbay/jetty/handler/ContextHandler;->getContextPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/mortbay/jetty/handler/ContextHandler;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lorg/mortbay/log/Log;->getLogger(Ljava/lang/String;)Lorg/mortbay/log/Logger;

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/jetty/handler/ContextHandler;->u:Lorg/mortbay/log/Logger;

    new-instance v0, Lorg/mortbay/util/AttributesMap;

    invoke-direct {v0}, Lorg/mortbay/util/AttributesMap;-><init>()V

    iput-object v0, p0, Lorg/mortbay/jetty/handler/ContextHandler;->h:Lorg/mortbay/util/AttributesMap;

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lorg/mortbay/jetty/handler/ContextHandler;->i:Ljava/lang/ClassLoader;

    if-eqz v1, :cond_1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v3, p0, Lorg/mortbay/jetty/handler/ContextHandler;->i:Ljava/lang/ClassLoader;

    invoke-virtual {v1, v3}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    goto :goto_1

    :catchall_0
    move-exception v3

    move-object v2, v0

    goto :goto_2

    :cond_1
    move-object v1, v0

    move-object v2, v1

    :goto_1
    iget-object v3, p0, Lorg/mortbay/jetty/handler/ContextHandler;->n:Lorg/mortbay/jetty/MimeTypes;

    if-nez v3, :cond_2

    new-instance v3, Lorg/mortbay/jetty/MimeTypes;

    invoke-direct {v3}, Lorg/mortbay/jetty/MimeTypes;-><init>()V

    iput-object v3, p0, Lorg/mortbay/jetty/handler/ContextHandler;->n:Lorg/mortbay/jetty/MimeTypes;

    :cond_2
    sget-object v3, Lorg/mortbay/jetty/handler/ContextHandler;->k0:Ljava/lang/ThreadLocal;

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/mortbay/jetty/handler/ContextHandler$SContext;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    sget-object v0, Lorg/mortbay/jetty/handler/ContextHandler;->k0:Ljava/lang/ThreadLocal;

    iget-object v4, p0, Lorg/mortbay/jetty/handler/ContextHandler;->_scontext:Lorg/mortbay/jetty/handler/ContextHandler$SContext;

    invoke-virtual {v0, v4}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/mortbay/jetty/handler/ContextHandler;->q:Lorg/mortbay/jetty/handler/ErrorHandler;

    if-nez v0, :cond_3

    new-instance v0, Lorg/mortbay/jetty/handler/ErrorHandler;

    invoke-direct {v0}, Lorg/mortbay/jetty/handler/ErrorHandler;-><init>()V

    invoke-virtual {p0, v0}, Lorg/mortbay/jetty/handler/ContextHandler;->setErrorHandler(Lorg/mortbay/jetty/handler/ErrorHandler;)V

    :cond_3
    invoke-virtual {p0}, Lorg/mortbay/jetty/handler/ContextHandler;->startContext()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    sget-object v0, Lorg/mortbay/jetty/handler/ContextHandler;->k0:Ljava/lang/ThreadLocal;

    invoke-virtual {v0, v3}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    iget-object p0, p0, Lorg/mortbay/jetty/handler/ContextHandler;->i:Ljava/lang/ClassLoader;

    if-eqz p0, :cond_4

    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    :cond_4
    return-void

    :catchall_1
    move-exception v0

    move-object v5, v3

    move-object v3, v0

    move-object v0, v5

    goto :goto_2

    :catchall_2
    move-exception v3

    goto :goto_2

    :catchall_3
    move-exception v3

    move-object v1, v0

    move-object v2, v1

    :goto_2
    sget-object v4, Lorg/mortbay/jetty/handler/ContextHandler;->k0:Ljava/lang/ThreadLocal;

    invoke-virtual {v4, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    iget-object p0, p0, Lorg/mortbay/jetty/handler/ContextHandler;->i:Ljava/lang/ClassLoader;

    if-eqz p0, :cond_5

    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    :cond_5
    throw v3

    :cond_6
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Null contextPath"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public doStop()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    sget-object v0, Lorg/mortbay/jetty/handler/ContextHandler;->k0:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mortbay/jetty/handler/ContextHandler$SContext;

    sget-object v1, Lorg/mortbay/jetty/handler/ContextHandler;->k0:Ljava/lang/ThreadLocal;

    iget-object v2, p0, Lorg/mortbay/jetty/handler/ContextHandler;->_scontext:Lorg/mortbay/jetty/handler/ContextHandler$SContext;

    invoke-virtual {v1, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lorg/mortbay/jetty/handler/ContextHandler;->i:Ljava/lang/ClassLoader;

    if-eqz v2, :cond_0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v4, p0, Lorg/mortbay/jetty/handler/ContextHandler;->i:Ljava/lang/ClassLoader;

    invoke-virtual {v2, v4}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    goto :goto_0

    :catchall_0
    move-exception v3

    move-object v7, v3

    move-object v3, v1

    move-object v1, v7

    goto :goto_3

    :cond_0
    move-object v2, v1

    move-object v3, v2

    :goto_0
    invoke-super {p0}, Lorg/mortbay/jetty/handler/HandlerWrapper;->doStop()V

    iget-object v4, p0, Lorg/mortbay/jetty/handler/ContextHandler;->z:Ljava/lang/Object;

    if-eqz v4, :cond_1

    new-instance v4, Ljavax/servlet/ServletContextEvent;

    iget-object v5, p0, Lorg/mortbay/jetty/handler/ContextHandler;->_scontext:Lorg/mortbay/jetty/handler/ContextHandler$SContext;

    invoke-direct {v4, v5}, Ljavax/servlet/ServletContextEvent;-><init>(Ljavax/servlet/ServletContext;)V

    iget-object v5, p0, Lorg/mortbay/jetty/handler/ContextHandler;->z:Ljava/lang/Object;

    invoke-static {v5}, Lorg/mortbay/util/LazyList;->size(Ljava/lang/Object;)I

    move-result v5

    :goto_1
    add-int/lit8 v6, v5, -0x1

    if-lez v5, :cond_1

    iget-object v5, p0, Lorg/mortbay/jetty/handler/ContextHandler;->z:Ljava/lang/Object;

    invoke-static {v5, v6}, Lorg/mortbay/util/LazyList;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljavax/servlet/ServletContextListener;

    invoke-interface {v5, v4}, Ljavax/servlet/ServletContextListener;->contextDestroyed(Ljavax/servlet/ServletContextEvent;)V

    move v5, v6

    goto :goto_1

    :cond_1
    iget-object v4, p0, Lorg/mortbay/jetty/handler/ContextHandler;->q:Lorg/mortbay/jetty/handler/ErrorHandler;

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lorg/mortbay/component/AbstractLifeCycle;->stop()V

    :cond_2
    iget-object v4, p0, Lorg/mortbay/jetty/handler/ContextHandler;->_scontext:Lorg/mortbay/jetty/handler/ContextHandler$SContext;

    invoke-virtual {v4}, Lorg/mortbay/jetty/handler/ContextHandler$SContext;->getAttributeNames()Ljava/util/Enumeration;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {p0, v5, v1}, Lorg/mortbay/jetty/handler/ContextHandler;->n(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :cond_3
    sget-object v4, Lorg/mortbay/jetty/handler/ContextHandler;->k0:Ljava/lang/ThreadLocal;

    invoke-virtual {v4, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/mortbay/jetty/handler/ContextHandler;->i:Ljava/lang/ClassLoader;

    if-eqz v0, :cond_4

    invoke-virtual {v2, v3}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    :cond_4
    iget-object v0, p0, Lorg/mortbay/jetty/handler/ContextHandler;->h:Lorg/mortbay/util/AttributesMap;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lorg/mortbay/util/AttributesMap;->clearAttributes()V

    :cond_5
    iput-object v1, p0, Lorg/mortbay/jetty/handler/ContextHandler;->h:Lorg/mortbay/util/AttributesMap;

    return-void

    :catchall_1
    move-exception v1

    goto :goto_3

    :catchall_2
    move-exception v2

    move-object v3, v1

    move-object v1, v2

    move-object v2, v3

    :goto_3
    sget-object v4, Lorg/mortbay/jetty/handler/ContextHandler;->k0:Ljava/lang/ThreadLocal;

    invoke-virtual {v4, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    iget-object p0, p0, Lorg/mortbay/jetty/handler/ContextHandler;->i:Ljava/lang/ClassLoader;

    if-eqz p0, :cond_6

    invoke-virtual {v2, v3}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    :cond_6
    throw v1
.end method

.method public getAllowNullPathInfo()Z
    .locals 0

    iget-boolean p0, p0, Lorg/mortbay/jetty/handler/ContextHandler;->w:Z

    return p0
.end method

.method public getAttribute(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/jetty/handler/ContextHandler;->g:Lorg/mortbay/util/AttributesMap;

    invoke-virtual {p0, p1}, Lorg/mortbay/util/AttributesMap;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getAttributeNames()Ljava/util/Enumeration;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/jetty/handler/ContextHandler;->g:Lorg/mortbay/util/AttributesMap;

    invoke-static {p0}, Lorg/mortbay/util/AttributesMap;->getAttributeNamesCopy(Lorg/mortbay/util/Attributes;)Ljava/util/Enumeration;

    move-result-object p0

    return-object p0
.end method

.method public getAttributes()Lorg/mortbay/util/Attributes;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/jetty/handler/ContextHandler;->g:Lorg/mortbay/util/AttributesMap;

    return-object p0
.end method

.method public getBaseResource()Lorg/mortbay/resource/Resource;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/jetty/handler/ContextHandler;->m:Lorg/mortbay/resource/Resource;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    :cond_0
    return-object p0
.end method

.method public getClassLoader()Ljava/lang/ClassLoader;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/jetty/handler/ContextHandler;->i:Ljava/lang/ClassLoader;

    return-object p0
.end method

.method public getClassPath()Ljava/lang/String;
    .locals 5

    iget-object p0, p0, Lorg/mortbay/jetty/handler/ContextHandler;->i:Ljava/lang/ClassLoader;

    const/4 v0, 0x0

    if-eqz p0, :cond_5

    instance-of v1, p0, Ljava/net/URLClassLoader;

    if-nez v1, :cond_0

    goto :goto_2

    :cond_0
    check-cast p0, Ljava/net/URLClassLoader;

    invoke-virtual {p0}, Ljava/net/URLClassLoader;->getURLs()[Ljava/net/URL;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v2, 0x0

    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_3

    :try_start_0
    aget-object v3, p0, v2

    invoke-static {v3}, Lorg/mortbay/resource/Resource;->newResource(Ljava/net/URL;)Lorg/mortbay/resource/Resource;

    move-result-object v3

    invoke-virtual {v3}, Lorg/mortbay/resource/Resource;->getFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    if-lez v4, :cond_1

    sget-char v4, Ljava/io/File;->pathSeparatorChar:C

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_1
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    invoke-static {v3}, Lorg/mortbay/log/Log;->debug(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result p0

    if-nez p0, :cond_4

    return-object v0

    :cond_4
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_5
    :goto_2
    return-object v0
.end method

.method public getConnectorNames()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/mortbay/jetty/handler/ContextHandler;->s:Ljava/util/Set;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/mortbay/jetty/handler/ContextHandler;->s:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getContextPath()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/jetty/handler/ContextHandler;->j:Ljava/lang/String;

    return-object p0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/jetty/handler/ContextHandler;->l:Ljava/lang/String;

    return-object p0
.end method

.method public getErrorHandler()Lorg/mortbay/jetty/handler/ErrorHandler;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/jetty/handler/ContextHandler;->q:Lorg/mortbay/jetty/handler/ErrorHandler;

    return-object p0
.end method

.method public getEventListeners()[Ljava/util/EventListener;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/jetty/handler/ContextHandler;->t:[Ljava/util/EventListener;

    return-object p0
.end method

.method public getHosts()[Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lorg/mortbay/jetty/handler/ContextHandler;->getConnectorNames()[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getInitParameter(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/jetty/handler/ContextHandler;->k:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getInitParameterNames()Ljava/util/Enumeration;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/jetty/handler/ContextHandler;->k:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object p0

    return-object p0
.end method

.method public getInitParams()Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/jetty/handler/ContextHandler;->k:Ljava/util/Map;

    return-object p0
.end method

.method public getLocaleEncoding(Ljava/util/Locale;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/mortbay/jetty/handler/ContextHandler;->o:Ljava/util/Map;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object p0, p0, Lorg/mortbay/jetty/handler/ContextHandler;->o:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Ljava/lang/String;

    :cond_1
    return-object v0
.end method

.method public getMaxFormContentSize()I
    .locals 0

    iget p0, p0, Lorg/mortbay/jetty/handler/ContextHandler;->x:I

    return p0
.end method

.method public getMimeTypes()Lorg/mortbay/jetty/MimeTypes;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/jetty/handler/ContextHandler;->n:Lorg/mortbay/jetty/MimeTypes;

    return-object p0
.end method

.method public getResource(Ljava/lang/String;)Lorg/mortbay/resource/Resource;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    if-eqz p1, :cond_1

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/mortbay/jetty/handler/ContextHandler;->m:Lorg/mortbay/resource/Resource;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    invoke-static {p1}, Lorg/mortbay/util/URIUtil;->canonicalPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lorg/mortbay/jetty/handler/ContextHandler;->m:Lorg/mortbay/resource/Resource;

    invoke-virtual {p0, p1}, Lorg/mortbay/resource/Resource;->addPath(Ljava/lang/String;)Lorg/mortbay/resource/Resource;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lorg/mortbay/log/Log;->ignore(Ljava/lang/Throwable;)V

    return-object v1

    :cond_1
    new-instance p0, Ljava/net/MalformedURLException;

    invoke-direct {p0, p1}, Ljava/net/MalformedURLException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getResourceBase()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/jetty/handler/ContextHandler;->m:Lorg/mortbay/resource/Resource;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getResourcePaths(Ljava/lang/String;)Ljava/util/Set;
    .locals 4

    const-string v0, "/"

    :try_start_0
    invoke-static {p1}, Lorg/mortbay/util/URIUtil;->canonicalPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/mortbay/jetty/handler/ContextHandler;->getResource(Ljava/lang/String;)Lorg/mortbay/resource/Resource;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lorg/mortbay/resource/Resource;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_0
    invoke-virtual {p0}, Lorg/mortbay/resource/Resource;->list()[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    aget-object v3, p0, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lorg/mortbay/log/Log;->ignore(Ljava/lang/Throwable;)V

    :cond_2
    sget-object p0, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    return-object p0
.end method

.method public getServletContext()Lorg/mortbay/jetty/handler/ContextHandler$SContext;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/jetty/handler/ContextHandler;->_scontext:Lorg/mortbay/jetty/handler/ContextHandler$SContext;

    return-object p0
.end method

.method public getVirtualHosts()[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/jetty/handler/ContextHandler;->r:[Ljava/lang/String;

    return-object p0
.end method

.method public getWelcomeFiles()[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/jetty/handler/ContextHandler;->p:[Ljava/lang/String;

    return-object p0
.end method

.method public handle(Ljava/lang/String;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;I)V
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/servlet/ServletException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    move-object/from16 v2, p3

    move/from16 v3, p4

    instance-of v4, v0, Lorg/mortbay/jetty/Request;

    if-eqz v4, :cond_0

    move-object v4, v0

    check-cast v4, Lorg/mortbay/jetty/Request;

    goto :goto_0

    :cond_0
    invoke-static {}, Lorg/mortbay/jetty/HttpConnection;->getCurrentConnection()Lorg/mortbay/jetty/HttpConnection;

    move-result-object v4

    invoke-virtual {v4}, Lorg/mortbay/jetty/HttpConnection;->getRequest()Lorg/mortbay/jetty/Request;

    move-result-object v4

    :goto_0
    invoke-virtual/range {p0 .. p0}, Lorg/mortbay/component/AbstractLifeCycle;->isStarted()Z

    move-result v5

    if-eqz v5, :cond_1f

    iget-boolean v5, v1, Lorg/mortbay/jetty/handler/ContextHandler;->v:Z

    if-nez v5, :cond_1f

    const/4 v5, 0x1

    if-ne v3, v5, :cond_1

    invoke-virtual {v4}, Lorg/mortbay/jetty/Request;->isHandled()Z

    move-result v6

    if-eqz v6, :cond_1

    goto/16 :goto_12

    :cond_1
    invoke-virtual {v4}, Lorg/mortbay/jetty/Request;->getContext()Lorg/mortbay/jetty/handler/ContextHandler$SContext;

    move-result-object v6

    iget-object v7, v1, Lorg/mortbay/jetty/handler/ContextHandler;->_scontext:Lorg/mortbay/jetty/handler/ContextHandler$SContext;

    const-string v8, "/"

    const/4 v9, 0x0

    if-eq v6, v7, :cond_10

    iget-object v7, v1, Lorg/mortbay/jetty/handler/ContextHandler;->r:[Ljava/lang/String;

    if-eqz v7, :cond_5

    array-length v7, v7

    if-lez v7, :cond_5

    invoke-interface/range {p2 .. p2}, Ljavax/servlet/ServletRequest;->getServerName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lorg/mortbay/jetty/handler/ContextHandler;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move v10, v9

    move v15, v10

    :goto_1
    if-nez v10, :cond_4

    iget-object v11, v1, Lorg/mortbay/jetty/handler/ContextHandler;->r:[Ljava/lang/String;

    array-length v12, v11

    if-ge v15, v12, :cond_4

    aget-object v11, v11, v15

    if-nez v11, :cond_2

    move/from16 v17, v15

    goto :goto_2

    :cond_2
    const-string v10, "*."

    invoke-virtual {v11, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    const/4 v12, 0x1

    const/4 v13, 0x2

    const-string v10, "."

    invoke-virtual {v7, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    add-int/lit8 v14, v10, 0x1

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v16, v10, -0x2

    move-object v10, v11

    move v11, v12

    move v12, v13

    move-object v13, v7

    move/from16 v17, v15

    move/from16 v15, v16

    invoke-virtual/range {v10 .. v15}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v10

    goto :goto_2

    :cond_3
    move/from16 v17, v15

    invoke-virtual {v11, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    :goto_2
    add-int/lit8 v15, v17, 0x1

    goto :goto_1

    :cond_4
    if-nez v10, :cond_5

    return-void

    :cond_5
    iget-object v7, v1, Lorg/mortbay/jetty/handler/ContextHandler;->s:Ljava/util/Set;

    if-eqz v7, :cond_7

    invoke-interface {v7}, Ljava/util/Set;->size()I

    move-result v7

    if-lez v7, :cond_7

    invoke-static {}, Lorg/mortbay/jetty/HttpConnection;->getCurrentConnection()Lorg/mortbay/jetty/HttpConnection;

    move-result-object v7

    invoke-virtual {v7}, Lorg/mortbay/jetty/HttpConnection;->getConnector()Lorg/mortbay/jetty/Connector;

    move-result-object v7

    invoke-interface {v7}, Lorg/mortbay/jetty/Connector;->getName()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_6

    iget-object v10, v1, Lorg/mortbay/jetty/handler/ContextHandler;->s:Ljava/util/Set;

    invoke-interface {v10, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_7

    :cond_6
    return-void

    :cond_7
    if-ne v3, v5, :cond_e

    iget-boolean v7, v1, Lorg/mortbay/jetty/handler/ContextHandler;->y:Z

    if-eqz v7, :cond_8

    invoke-static/range {p1 .. p1}, Lorg/mortbay/util/URIUtil;->compactPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_3

    :cond_8
    move-object/from16 v7, p1

    :goto_3
    iget-object v10, v1, Lorg/mortbay/jetty/handler/ContextHandler;->j:Ljava/lang/String;

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_b

    iget-boolean v10, v1, Lorg/mortbay/jetty/handler/ContextHandler;->w:Z

    if-nez v10, :cond_a

    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_a

    invoke-virtual {v4, v5}, Lorg/mortbay/jetty/Request;->setHandled(Z)V

    invoke-interface/range {p2 .. p2}, Ljavax/servlet/http/HttpServletRequest;->getQueryString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_9

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-interface/range {p2 .. p2}, Ljavax/servlet/http/HttpServletRequest;->getRequestURI()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v8}, Lorg/mortbay/util/URIUtil;->addPaths(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "?"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-interface/range {p2 .. p2}, Ljavax/servlet/http/HttpServletRequest;->getQueryString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljavax/servlet/http/HttpServletResponse;->encodeRedirectURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljavax/servlet/http/HttpServletResponse;->sendRedirect(Ljava/lang/String;)V

    goto :goto_4

    :cond_9
    invoke-interface/range {p2 .. p2}, Ljavax/servlet/http/HttpServletRequest;->getRequestURI()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v8}, Lorg/mortbay/util/URIUtil;->addPaths(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljavax/servlet/http/HttpServletResponse;->encodeRedirectURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljavax/servlet/http/HttpServletResponse;->sendRedirect(Ljava/lang/String;)V

    :goto_4
    return-void

    :cond_a
    iget-object v10, v1, Lorg/mortbay/jetty/handler/ContextHandler;->j:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-le v10, v5, :cond_f

    const-string v7, "org.mortbay.jetty.nullPathInfo"

    invoke-interface {v0, v7, v8}, Ljavax/servlet/ServletRequest;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    move v10, v5

    move-object v7, v8

    goto :goto_6

    :cond_b
    iget-object v10, v1, Lorg/mortbay/jetty/handler/ContextHandler;->j:Ljava/lang/String;

    invoke-virtual {v7, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_d

    iget-object v10, v1, Lorg/mortbay/jetty/handler/ContextHandler;->j:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-eq v10, v5, :cond_c

    iget-object v10, v1, Lorg/mortbay/jetty/handler/ContextHandler;->j:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v7, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v11, 0x2f

    if-ne v10, v11, :cond_d

    :cond_c
    iget-object v10, v1, Lorg/mortbay/jetty/handler/ContextHandler;->j:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-le v10, v5, :cond_f

    iget-object v10, v1, Lorg/mortbay/jetty/handler/ContextHandler;->j:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v7, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_5

    :cond_d
    return-void

    :cond_e
    move-object/from16 v7, p1

    :cond_f
    :goto_5
    move v10, v5

    goto :goto_6

    :cond_10
    move-object/from16 v7, p1

    move v10, v9

    :goto_6
    const/4 v11, 0x0

    :try_start_0
    invoke-virtual {v4}, Lorg/mortbay/jetty/Request;->getContextPath()Ljava/lang/String;

    move-result-object v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    :try_start_1
    invoke-virtual {v4}, Lorg/mortbay/jetty/Request;->getServletPath()Ljava/lang/String;

    move-result-object v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    :try_start_2
    invoke-virtual {v4}, Lorg/mortbay/jetty/Request;->getPathInfo()Ljava/lang/String;

    move-result-object v14
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    :try_start_3
    iget-object v15, v1, Lorg/mortbay/jetty/handler/ContextHandler;->_scontext:Lorg/mortbay/jetty/handler/ContextHandler$SContext;

    invoke-virtual {v4, v15}, Lorg/mortbay/jetty/Request;->setContext(Lorg/mortbay/jetty/handler/ContextHandler$SContext;)V

    const/4 v15, 0x4

    if-eq v3, v15, :cond_12

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_12

    iget-object v8, v1, Lorg/mortbay/jetty/handler/ContextHandler;->j:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-ne v8, v5, :cond_11

    const-string v8, ""

    invoke-virtual {v4, v8}, Lorg/mortbay/jetty/Request;->setContextPath(Ljava/lang/String;)V

    goto :goto_7

    :cond_11
    iget-object v8, v1, Lorg/mortbay/jetty/handler/ContextHandler;->j:Ljava/lang/String;

    invoke-virtual {v4, v8}, Lorg/mortbay/jetty/Request;->setContextPath(Ljava/lang/String;)V

    :goto_7
    invoke-virtual {v4, v11}, Lorg/mortbay/jetty/Request;->setServletPath(Ljava/lang/String;)V

    invoke-virtual {v4, v7}, Lorg/mortbay/jetty/Request;->setPathInfo(Ljava/lang/String;)V

    :cond_12
    if-eqz v10, :cond_15

    iget-object v8, v1, Lorg/mortbay/jetty/handler/ContextHandler;->i:Ljava/lang/ClassLoader;

    if-eqz v8, :cond_13

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    invoke-virtual {v8}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v11

    iget-object v15, v1, Lorg/mortbay/jetty/handler/ContextHandler;->i:Ljava/lang/ClassLoader;

    invoke-virtual {v8, v15}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    goto :goto_8

    :cond_13
    move-object v8, v11

    :goto_8
    iget-object v15, v1, Lorg/mortbay/jetty/handler/ContextHandler;->O:Ljava/lang/Object;

    invoke-virtual {v4, v15}, Lorg/mortbay/jetty/Request;->setRequestListeners(Ljava/lang/Object;)V

    iget-object v15, v1, Lorg/mortbay/jetty/handler/ContextHandler;->Q:Ljava/lang/Object;

    if-eqz v15, :cond_14

    invoke-static {v15}, Lorg/mortbay/util/LazyList;->size(Ljava/lang/Object;)I

    move-result v15

    :goto_9
    if-ge v9, v15, :cond_14

    iget-object v5, v1, Lorg/mortbay/jetty/handler/ContextHandler;->Q:Ljava/lang/Object;

    invoke-static {v5, v9}, Lorg/mortbay/util/LazyList;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/EventListener;

    invoke-virtual {v4, v5}, Lorg/mortbay/jetty/Request;->addEventListener(Ljava/util/EventListener;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    add-int/lit8 v9, v9, 0x1

    const/4 v5, 0x1

    goto :goto_9

    :cond_14
    const/4 v5, 0x1

    goto :goto_a

    :catchall_0
    move-exception v0

    move-object v2, v0

    move-object v0, v11

    move-object v11, v8

    goto/16 :goto_11

    :cond_15
    move-object v8, v11

    :goto_a
    if-ne v3, v5, :cond_17

    :try_start_5
    invoke-virtual {v1, v7}, Lorg/mortbay/jetty/handler/ContextHandler;->isProtectedTarget(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_16

    goto :goto_b

    :cond_16
    new-instance v0, Lorg/mortbay/jetty/HttpException;

    const/16 v3, 0x194

    invoke-direct {v0, v3}, Lorg/mortbay/jetty/HttpException;-><init>(I)V

    throw v0

    :cond_17
    :goto_b
    invoke-virtual/range {p0 .. p0}, Lorg/mortbay/jetty/handler/HandlerWrapper;->getHandler()Lorg/mortbay/jetty/Handler;

    move-result-object v5

    if-eqz v5, :cond_18

    invoke-interface {v5, v7, v0, v2, v3}, Lorg/mortbay/jetty/Handler;->handle(Ljava/lang/String;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;I)V
    :try_end_5
    .catch Lorg/mortbay/jetty/HttpException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :cond_18
    if-eqz v10, :cond_19

    :try_start_6
    invoke-virtual {v4}, Lorg/mortbay/jetty/Request;->takeRequestListeners()Ljava/lang/Object;

    iget-object v0, v1, Lorg/mortbay/jetty/handler/ContextHandler;->Q:Ljava/lang/Object;

    if-eqz v0, :cond_19

    invoke-static {v0}, Lorg/mortbay/util/LazyList;->size(Ljava/lang/Object;)I

    move-result v0

    :goto_c
    add-int/lit8 v2, v0, -0x1

    if-lez v0, :cond_19

    iget-object v0, v1, Lorg/mortbay/jetty/handler/ContextHandler;->Q:Ljava/lang/Object;

    invoke-static {v0, v2}, Lorg/mortbay/util/LazyList;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/EventListener;

    invoke-virtual {v4, v0}, Lorg/mortbay/jetty/Request;->removeEventListener(Ljava/util/EventListener;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move v0, v2

    goto :goto_c

    :catchall_1
    move-exception v0

    goto :goto_e

    :catch_0
    move-exception v0

    :try_start_7
    invoke-static {v0}, Lorg/mortbay/log/Log;->debug(Ljava/lang/Throwable;)V

    invoke-virtual {v0}, Lorg/mortbay/jetty/HttpException;->getStatus()I

    move-result v3

    invoke-virtual {v0}, Lorg/mortbay/jetty/HttpException;->getReason()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Ljavax/servlet/http/HttpServletResponse;->sendError(ILjava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    if-eqz v10, :cond_19

    :try_start_8
    invoke-virtual {v4}, Lorg/mortbay/jetty/Request;->takeRequestListeners()Ljava/lang/Object;

    iget-object v0, v1, Lorg/mortbay/jetty/handler/ContextHandler;->Q:Ljava/lang/Object;

    if-eqz v0, :cond_19

    invoke-static {v0}, Lorg/mortbay/util/LazyList;->size(Ljava/lang/Object;)I

    move-result v0

    :goto_d
    add-int/lit8 v2, v0, -0x1

    if-lez v0, :cond_19

    iget-object v0, v1, Lorg/mortbay/jetty/handler/ContextHandler;->Q:Ljava/lang/Object;

    invoke-static {v0, v2}, Lorg/mortbay/util/LazyList;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/EventListener;

    invoke-virtual {v4, v0}, Lorg/mortbay/jetty/Request;->removeEventListener(Ljava/util/EventListener;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move v0, v2

    goto :goto_d

    :cond_19
    iget-object v0, v1, Lorg/mortbay/jetty/handler/ContextHandler;->_scontext:Lorg/mortbay/jetty/handler/ContextHandler$SContext;

    if-eq v6, v0, :cond_1b

    iget-object v0, v1, Lorg/mortbay/jetty/handler/ContextHandler;->i:Ljava/lang/ClassLoader;

    if-eqz v0, :cond_1a

    invoke-virtual {v8, v11}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    :cond_1a
    invoke-virtual {v4, v6}, Lorg/mortbay/jetty/Request;->setContext(Lorg/mortbay/jetty/handler/ContextHandler$SContext;)V

    invoke-virtual {v4, v12}, Lorg/mortbay/jetty/Request;->setContextPath(Ljava/lang/String;)V

    invoke-virtual {v4, v13}, Lorg/mortbay/jetty/Request;->setServletPath(Ljava/lang/String;)V

    invoke-virtual {v4, v14}, Lorg/mortbay/jetty/Request;->setPathInfo(Ljava/lang/String;)V

    :cond_1b
    return-void

    :goto_e
    if-eqz v10, :cond_1c

    :try_start_9
    invoke-virtual {v4}, Lorg/mortbay/jetty/Request;->takeRequestListeners()Ljava/lang/Object;

    iget-object v2, v1, Lorg/mortbay/jetty/handler/ContextHandler;->Q:Ljava/lang/Object;

    if-eqz v2, :cond_1c

    invoke-static {v2}, Lorg/mortbay/util/LazyList;->size(Ljava/lang/Object;)I

    move-result v2

    :goto_f
    add-int/lit8 v3, v2, -0x1

    if-lez v2, :cond_1c

    iget-object v2, v1, Lorg/mortbay/jetty/handler/ContextHandler;->Q:Ljava/lang/Object;

    invoke-static {v2, v3}, Lorg/mortbay/util/LazyList;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/EventListener;

    invoke-virtual {v4, v2}, Lorg/mortbay/jetty/Request;->removeEventListener(Ljava/util/EventListener;)V

    move v2, v3

    goto :goto_f

    :cond_1c
    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :catchall_2
    move-exception v0

    move-object v2, v0

    move-object v0, v11

    goto :goto_11

    :catchall_3
    move-exception v0

    move-object v2, v0

    move-object v0, v11

    move-object v14, v0

    goto :goto_11

    :catchall_4
    move-exception v0

    move-object v2, v0

    move-object v0, v11

    move-object v13, v0

    goto :goto_10

    :catchall_5
    move-exception v0

    move-object v2, v0

    move-object v0, v11

    move-object v12, v0

    move-object v13, v12

    :goto_10
    move-object v14, v13

    :goto_11
    iget-object v3, v1, Lorg/mortbay/jetty/handler/ContextHandler;->_scontext:Lorg/mortbay/jetty/handler/ContextHandler$SContext;

    if-eq v6, v3, :cond_1e

    iget-object v1, v1, Lorg/mortbay/jetty/handler/ContextHandler;->i:Ljava/lang/ClassLoader;

    if-eqz v1, :cond_1d

    invoke-virtual {v11, v0}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    :cond_1d
    invoke-virtual {v4, v6}, Lorg/mortbay/jetty/Request;->setContext(Lorg/mortbay/jetty/handler/ContextHandler$SContext;)V

    invoke-virtual {v4, v12}, Lorg/mortbay/jetty/Request;->setContextPath(Ljava/lang/String;)V

    invoke-virtual {v4, v13}, Lorg/mortbay/jetty/Request;->setServletPath(Ljava/lang/String;)V

    invoke-virtual {v4, v14}, Lorg/mortbay/jetty/Request;->setPathInfo(Ljava/lang/String;)V

    :cond_1e
    throw v2

    :cond_1f
    :goto_12
    return-void
.end method

.method public isCompactPath()Z
    .locals 0

    iget-boolean p0, p0, Lorg/mortbay/jetty/handler/ContextHandler;->y:Z

    return p0
.end method

.method public isProtectedTarget(Ljava/lang/String;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isShutdown()Z
    .locals 0

    iget-boolean p0, p0, Lorg/mortbay/jetty/handler/ContextHandler;->v:Z

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public declared-synchronized loadClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    monitor-enter p0

    if-nez p1, :cond_0

    monitor-exit p0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/mortbay/jetty/handler/ContextHandler;->i:Ljava/lang/ClassLoader;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/mortbay/util/Loader;->loadClass(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_1
    :try_start_1
    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final m(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string p0, "."

    invoke-virtual {p1, p0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    return-object p1
.end method

.method public final n(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lorg/mortbay/jetty/handler/ContextHandler;->Z:Ljava/util/Set;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/mortbay/jetty/handler/ContextHandler;->_scontext:Lorg/mortbay/jetty/handler/ContextHandler$SContext;

    invoke-virtual {v0, p1}, Lorg/mortbay/jetty/handler/ContextHandler$SContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lorg/mortbay/jetty/handler/AbstractHandler;->getServer()Lorg/mortbay/jetty/Server;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mortbay/jetty/Server;->getContainer()Lorg/mortbay/component/Container;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/mortbay/component/Container;->removeBean(Ljava/lang/Object;)V

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lorg/mortbay/jetty/handler/AbstractHandler;->getServer()Lorg/mortbay/jetty/Server;

    move-result-object p0

    invoke-virtual {p0}, Lorg/mortbay/jetty/Server;->getContainer()Lorg/mortbay/component/Container;

    move-result-object p0

    invoke-virtual {p0, p2}, Lorg/mortbay/component/Container;->addBean(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public removeAttribute(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/mortbay/jetty/handler/ContextHandler;->n(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p0, Lorg/mortbay/jetty/handler/ContextHandler;->g:Lorg/mortbay/util/AttributesMap;

    invoke-virtual {p0, p1}, Lorg/mortbay/util/AttributesMap;->removeAttribute(Ljava/lang/String;)V

    return-void
.end method

.method public setAllowNullPathInfo(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/mortbay/jetty/handler/ContextHandler;->w:Z

    return-void
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lorg/mortbay/jetty/handler/ContextHandler;->n(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p0, Lorg/mortbay/jetty/handler/ContextHandler;->g:Lorg/mortbay/util/AttributesMap;

    invoke-virtual {p0, p1, p2}, Lorg/mortbay/util/AttributesMap;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setAttributes(Lorg/mortbay/util/Attributes;)V
    .locals 4

    instance-of v0, p1, Lorg/mortbay/util/AttributesMap;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lorg/mortbay/util/AttributesMap;

    iput-object v0, p0, Lorg/mortbay/jetty/handler/ContextHandler;->g:Lorg/mortbay/util/AttributesMap;

    invoke-virtual {v0}, Lorg/mortbay/util/AttributesMap;->getAttributeNames()Ljava/util/Enumeration;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {p1, v1}, Lorg/mortbay/util/Attributes;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/mortbay/jetty/handler/ContextHandler;->n(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/mortbay/util/AttributesMap;

    invoke-direct {v0}, Lorg/mortbay/util/AttributesMap;-><init>()V

    iput-object v0, p0, Lorg/mortbay/jetty/handler/ContextHandler;->g:Lorg/mortbay/util/AttributesMap;

    invoke-interface {p1}, Lorg/mortbay/util/Attributes;->getAttributeNames()Ljava/util/Enumeration;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {p1, v1}, Lorg/mortbay/util/Attributes;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/mortbay/jetty/handler/ContextHandler;->n(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v3, p0, Lorg/mortbay/jetty/handler/ContextHandler;->g:Lorg/mortbay/util/AttributesMap;

    invoke-virtual {v3, v1, v2}, Lorg/mortbay/util/AttributesMap;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public setBaseResource(Lorg/mortbay/resource/Resource;)V
    .locals 0

    iput-object p1, p0, Lorg/mortbay/jetty/handler/ContextHandler;->m:Lorg/mortbay/resource/Resource;

    return-void
.end method

.method public setClassLoader(Ljava/lang/ClassLoader;)V
    .locals 0

    iput-object p1, p0, Lorg/mortbay/jetty/handler/ContextHandler;->i:Ljava/lang/ClassLoader;

    return-void
.end method

.method public setCompactPath(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/mortbay/jetty/handler/ContextHandler;->y:Z

    return-void
.end method

.method public setConnectorNames([Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_1

    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lorg/mortbay/jetty/handler/ContextHandler;->s:Ljava/util/Set;

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    iput-object p1, p0, Lorg/mortbay/jetty/handler/ContextHandler;->s:Ljava/util/Set;

    :goto_1
    return-void
.end method

.method public setContextPath(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "ends with /"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    iput-object p1, p0, Lorg/mortbay/jetty/handler/ContextHandler;->j:Ljava/lang/String;

    invoke-virtual {p0}, Lorg/mortbay/jetty/handler/AbstractHandler;->getServer()Lorg/mortbay/jetty/Server;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lorg/mortbay/jetty/handler/AbstractHandler;->getServer()Lorg/mortbay/jetty/Server;

    move-result-object p1

    invoke-virtual {p1}, Lorg/mortbay/component/AbstractLifeCycle;->isStarting()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {p0}, Lorg/mortbay/jetty/handler/AbstractHandler;->getServer()Lorg/mortbay/jetty/Server;

    move-result-object p1

    invoke-virtual {p1}, Lorg/mortbay/component/AbstractLifeCycle;->isStarted()Z

    move-result p1

    if-eqz p1, :cond_4

    :cond_2
    invoke-virtual {p0}, Lorg/mortbay/jetty/handler/AbstractHandler;->getServer()Lorg/mortbay/jetty/Server;

    move-result-object p0

    sget-object p1, Lorg/mortbay/jetty/handler/ContextHandler;->t0:Ljava/lang/Class;

    if-nez p1, :cond_3

    const-string p1, "org.mortbay.jetty.handler.ContextHandlerCollection"

    invoke-static {p1}, Lorg/mortbay/jetty/handler/ContextHandler;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    sput-object p1, Lorg/mortbay/jetty/handler/ContextHandler;->t0:Ljava/lang/Class;

    :cond_3
    invoke-virtual {p0, p1}, Lorg/mortbay/jetty/handler/AbstractHandlerContainer;->getChildHandlersByClass(Ljava/lang/Class;)[Lorg/mortbay/jetty/Handler;

    move-result-object p0

    const/4 p1, 0x0

    :goto_1
    if-eqz p0, :cond_4

    array-length v0, p0

    if-ge p1, v0, :cond_4

    aget-object v0, p0, p1

    check-cast v0, Lorg/mortbay/jetty/handler/ContextHandlerCollection;

    invoke-virtual {v0}, Lorg/mortbay/jetty/handler/ContextHandlerCollection;->mapContexts()V

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method

.method public setDisplayName(Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lorg/mortbay/jetty/handler/ContextHandler;->l:Ljava/lang/String;

    iget-object p0, p0, Lorg/mortbay/jetty/handler/ContextHandler;->i:Ljava/lang/ClassLoader;

    if-eqz p0, :cond_0

    instance-of v0, p0, Lorg/mortbay/jetty/webapp/WebAppClassLoader;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/mortbay/jetty/webapp/WebAppClassLoader;

    invoke-virtual {p0, p1}, Lorg/mortbay/jetty/webapp/WebAppClassLoader;->setName(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setErrorHandler(Lorg/mortbay/jetty/handler/ErrorHandler;)V
    .locals 7

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lorg/mortbay/jetty/handler/AbstractHandler;->getServer()Lorg/mortbay/jetty/Server;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/mortbay/jetty/handler/AbstractHandler;->setServer(Lorg/mortbay/jetty/Server;)V

    :cond_0
    invoke-virtual {p0}, Lorg/mortbay/jetty/handler/AbstractHandler;->getServer()Lorg/mortbay/jetty/Server;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/mortbay/jetty/handler/AbstractHandler;->getServer()Lorg/mortbay/jetty/Server;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mortbay/jetty/Server;->getContainer()Lorg/mortbay/component/Container;

    move-result-object v1

    iget-object v3, p0, Lorg/mortbay/jetty/handler/ContextHandler;->q:Lorg/mortbay/jetty/handler/ErrorHandler;

    const-string v5, "errorHandler"

    const/4 v6, 0x1

    move-object v2, p0

    move-object v4, p1

    invoke-virtual/range {v1 .. v6}, Lorg/mortbay/component/Container;->update(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Z)V

    :cond_1
    iput-object p1, p0, Lorg/mortbay/jetty/handler/ContextHandler;->q:Lorg/mortbay/jetty/handler/ErrorHandler;

    return-void
.end method

.method public setEventListeners([Ljava/util/EventListener;)V
    .locals 3

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/mortbay/jetty/handler/ContextHandler;->z:Ljava/lang/Object;

    iput-object v0, p0, Lorg/mortbay/jetty/handler/ContextHandler;->J:Ljava/lang/Object;

    iput-object v0, p0, Lorg/mortbay/jetty/handler/ContextHandler;->O:Ljava/lang/Object;

    iput-object v0, p0, Lorg/mortbay/jetty/handler/ContextHandler;->Q:Ljava/lang/Object;

    iput-object p1, p0, Lorg/mortbay/jetty/handler/ContextHandler;->t:[Ljava/util/EventListener;

    const/4 v0, 0x0

    :goto_0
    if-eqz p1, :cond_4

    array-length v1, p1

    if-ge v0, v1, :cond_4

    iget-object v1, p0, Lorg/mortbay/jetty/handler/ContextHandler;->t:[Ljava/util/EventListener;

    aget-object v1, v1, v0

    instance-of v2, v1, Ljavax/servlet/ServletContextListener;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/mortbay/jetty/handler/ContextHandler;->z:Ljava/lang/Object;

    invoke-static {v2, v1}, Lorg/mortbay/util/LazyList;->add(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Lorg/mortbay/jetty/handler/ContextHandler;->z:Ljava/lang/Object;

    :cond_0
    instance-of v2, v1, Ljavax/servlet/ServletContextAttributeListener;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/mortbay/jetty/handler/ContextHandler;->J:Ljava/lang/Object;

    invoke-static {v2, v1}, Lorg/mortbay/util/LazyList;->add(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Lorg/mortbay/jetty/handler/ContextHandler;->J:Ljava/lang/Object;

    :cond_1
    instance-of v2, v1, Ljavax/servlet/ServletRequestListener;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/mortbay/jetty/handler/ContextHandler;->O:Ljava/lang/Object;

    invoke-static {v2, v1}, Lorg/mortbay/util/LazyList;->add(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Lorg/mortbay/jetty/handler/ContextHandler;->O:Ljava/lang/Object;

    :cond_2
    instance-of v2, v1, Ljavax/servlet/ServletRequestAttributeListener;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lorg/mortbay/jetty/handler/ContextHandler;->Q:Ljava/lang/Object;

    invoke-static {v2, v1}, Lorg/mortbay/util/LazyList;->add(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lorg/mortbay/jetty/handler/ContextHandler;->Q:Ljava/lang/Object;

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method public setHosts([Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/mortbay/jetty/handler/ContextHandler;->setConnectorNames([Ljava/lang/String;)V

    return-void
.end method

.method public setInitParams(Ljava/util/Map;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lorg/mortbay/jetty/handler/ContextHandler;->k:Ljava/util/Map;

    return-void
.end method

.method public setMaxFormContentSize(I)V
    .locals 0

    iput p1, p0, Lorg/mortbay/jetty/handler/ContextHandler;->x:I

    return-void
.end method

.method public setMimeTypes(Lorg/mortbay/jetty/MimeTypes;)V
    .locals 0

    iput-object p1, p0, Lorg/mortbay/jetty/handler/ContextHandler;->n:Lorg/mortbay/jetty/MimeTypes;

    return-void
.end method

.method public setResourceBase(Ljava/lang/String;)V
    .locals 1

    :try_start_0
    invoke-static {p1}, Lorg/mortbay/resource/Resource;->newResource(Ljava/lang/String;)Lorg/mortbay/resource/Resource;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/mortbay/jetty/handler/ContextHandler;->setBaseResource(Lorg/mortbay/resource/Resource;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/mortbay/log/Log;->warn(Ljava/lang/String;)V

    invoke-static {p0}, Lorg/mortbay/log/Log;->debug(Ljava/lang/Throwable;)V

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setServer(Lorg/mortbay/jetty/Server;)V
    .locals 13

    iget-object v0, p0, Lorg/mortbay/jetty/handler/ContextHandler;->q:Lorg/mortbay/jetty/handler/ErrorHandler;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lorg/mortbay/jetty/handler/AbstractHandler;->getServer()Lorg/mortbay/jetty/Server;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eq v0, p1, :cond_0

    invoke-virtual {v0}, Lorg/mortbay/jetty/Server;->getContainer()Lorg/mortbay/component/Container;

    move-result-object v1

    iget-object v3, p0, Lorg/mortbay/jetty/handler/ContextHandler;->q:Lorg/mortbay/jetty/handler/ErrorHandler;

    const/4 v4, 0x0

    const-string v5, "error"

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

    iget-object v10, p0, Lorg/mortbay/jetty/handler/ContextHandler;->q:Lorg/mortbay/jetty/handler/ErrorHandler;

    const-string v11, "error"

    const/4 v12, 0x1

    move-object v8, p0

    invoke-virtual/range {v7 .. v12}, Lorg/mortbay/component/Container;->update(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Z)V

    :cond_1
    iget-object p0, p0, Lorg/mortbay/jetty/handler/ContextHandler;->q:Lorg/mortbay/jetty/handler/ErrorHandler;

    invoke-virtual {p0, p1}, Lorg/mortbay/jetty/handler/AbstractHandler;->setServer(Lorg/mortbay/jetty/Server;)V

    goto :goto_0

    :cond_2
    invoke-super {p0, p1}, Lorg/mortbay/jetty/handler/HandlerWrapper;->setServer(Lorg/mortbay/jetty/Server;)V

    :goto_0
    return-void
.end method

.method public setShutdown(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/mortbay/jetty/handler/ContextHandler;->v:Z

    return-void
.end method

.method public setVirtualHosts([Ljava/lang/String;)V
    .locals 3

    if-nez p1, :cond_0

    iput-object p1, p0, Lorg/mortbay/jetty/handler/ContextHandler;->r:[Ljava/lang/String;

    goto :goto_1

    :cond_0
    array-length v0, p1

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lorg/mortbay/jetty/handler/ContextHandler;->r:[Ljava/lang/String;

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lorg/mortbay/jetty/handler/ContextHandler;->r:[Ljava/lang/String;

    aget-object v2, p1, v0

    invoke-virtual {p0, v2}, Lorg/mortbay/jetty/handler/ContextHandler;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public setWelcomeFiles([Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/mortbay/jetty/handler/ContextHandler;->p:[Ljava/lang/String;

    return-void
.end method

.method public startContext()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-super {p0}, Lorg/mortbay/jetty/handler/HandlerWrapper;->doStart()V

    iget-object v0, p0, Lorg/mortbay/jetty/handler/ContextHandler;->q:Lorg/mortbay/jetty/handler/ErrorHandler;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/mortbay/component/AbstractLifeCycle;->start()V

    :cond_0
    iget-object v0, p0, Lorg/mortbay/jetty/handler/ContextHandler;->z:Ljava/lang/Object;

    if-eqz v0, :cond_1

    new-instance v0, Ljavax/servlet/ServletContextEvent;

    iget-object v1, p0, Lorg/mortbay/jetty/handler/ContextHandler;->_scontext:Lorg/mortbay/jetty/handler/ContextHandler$SContext;

    invoke-direct {v0, v1}, Ljavax/servlet/ServletContextEvent;-><init>(Ljavax/servlet/ServletContext;)V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lorg/mortbay/jetty/handler/ContextHandler;->z:Ljava/lang/Object;

    invoke-static {v2}, Lorg/mortbay/util/LazyList;->size(Ljava/lang/Object;)I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lorg/mortbay/jetty/handler/ContextHandler;->z:Ljava/lang/Object;

    invoke-static {v2, v1}, Lorg/mortbay/util/LazyList;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/servlet/ServletContextListener;

    invoke-interface {v2, v0}, Ljavax/servlet/ServletContextListener;->contextInitialized(Ljavax/servlet/ServletContextEvent;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/mortbay/jetty/handler/ContextHandler;->k:Ljava/util/Map;

    const-string v1, "org.mortbay.jetty.servlet.ManagedAttributes"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_3

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lorg/mortbay/jetty/handler/ContextHandler;->Z:Ljava/util/Set;

    new-instance v1, Lorg/mortbay/util/QuotedStringTokenizer;

    const-string v2, ","

    invoke-direct {v1, v0, v2}, Lorg/mortbay/util/QuotedStringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    invoke-virtual {v1}, Lorg/mortbay/util/QuotedStringTokenizer;->hasMoreTokens()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/mortbay/jetty/handler/ContextHandler;->Z:Ljava/util/Set;

    invoke-virtual {v1}, Lorg/mortbay/util/QuotedStringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lorg/mortbay/jetty/handler/ContextHandler;->_scontext:Lorg/mortbay/jetty/handler/ContextHandler$SContext;

    invoke-virtual {v0}, Lorg/mortbay/jetty/handler/ContextHandler$SContext;->getAttributeNames()Ljava/util/Enumeration;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lorg/mortbay/jetty/handler/ContextHandler;->_scontext:Lorg/mortbay/jetty/handler/ContextHandler$SContext;

    invoke-virtual {v2, v1}, Lorg/mortbay/jetty/handler/ContextHandler$SContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/mortbay/jetty/handler/ContextHandler;->n(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
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

    invoke-virtual {p0}, Lorg/mortbay/jetty/handler/ContextHandler;->getBaseResource()Lorg/mortbay/resource/Resource;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
