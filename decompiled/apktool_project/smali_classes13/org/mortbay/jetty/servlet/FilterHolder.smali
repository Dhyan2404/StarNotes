.class public Lorg/mortbay/jetty/servlet/FilterHolder;
.super Lorg/mortbay/jetty/servlet/Holder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mortbay/jetty/servlet/FilterHolder$a;
    }
.end annotation


# static fields
.field static synthetic class$javax$servlet$Filter:Ljava/lang/Class;


# instance fields
.field private transient _config:Lorg/mortbay/jetty/servlet/FilterHolder$a;

.field private transient _filter:Ljavax/servlet/Filter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/mortbay/jetty/servlet/Holder;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/mortbay/jetty/servlet/Holder;-><init>(Ljava/lang/Class;)V

    return-void
.end method

.method public constructor <init>(Ljavax/servlet/Filter;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lorg/mortbay/jetty/servlet/Holder;-><init>()V

    .line 4
    invoke-virtual {p0, p1}, Lorg/mortbay/jetty/servlet/FilterHolder;->setFilter(Ljavax/servlet/Filter;)V

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

.method public static dispatch(Ljava/lang/String;)I
    .locals 1

    const-string v0, "request"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const-string v0, "forward"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x2

    return p0

    :cond_1
    const-string v0, "include"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p0, 0x4

    return p0

    :cond_2
    const-string v0, "error"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 p0, 0x8

    return p0

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
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
    check-cast p1, Ljavax/servlet/Filter;

    invoke-interface {p1}, Ljavax/servlet/Filter;->destroy()V

    invoke-virtual {p0}, Lorg/mortbay/jetty/servlet/Holder;->getServletHandler()Lorg/mortbay/jetty/servlet/ServletHandler;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/mortbay/jetty/servlet/ServletHandler;->customizeFilterDestroy(Ljavax/servlet/Filter;)Ljavax/servlet/Filter;

    return-void
.end method

.method public doStart()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-super {p0}, Lorg/mortbay/jetty/servlet/Holder;->doStart()V

    sget-object v0, Lorg/mortbay/jetty/servlet/FilterHolder;->class$javax$servlet$Filter:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "javax.servlet.Filter"

    invoke-static {v0}, Lorg/mortbay/jetty/servlet/FilterHolder;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/mortbay/jetty/servlet/FilterHolder;->class$javax$servlet$Filter:Ljava/lang/Class;

    :cond_0
    iget-object v1, p0, Lorg/mortbay/jetty/servlet/Holder;->_class:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/mortbay/jetty/servlet/FilterHolder;->_filter:Ljavax/servlet/Filter;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/mortbay/jetty/servlet/Holder;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/servlet/Filter;

    iput-object v0, p0, Lorg/mortbay/jetty/servlet/FilterHolder;->_filter:Ljavax/servlet/Filter;

    :cond_1
    invoke-virtual {p0}, Lorg/mortbay/jetty/servlet/Holder;->getServletHandler()Lorg/mortbay/jetty/servlet/ServletHandler;

    move-result-object v0

    iget-object v1, p0, Lorg/mortbay/jetty/servlet/FilterHolder;->_filter:Ljavax/servlet/Filter;

    invoke-virtual {v0, v1}, Lorg/mortbay/jetty/servlet/ServletHandler;->customizeFilter(Ljavax/servlet/Filter;)Ljavax/servlet/Filter;

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/jetty/servlet/FilterHolder;->_filter:Ljavax/servlet/Filter;

    new-instance v0, Lorg/mortbay/jetty/servlet/FilterHolder$a;

    invoke-direct {v0, p0}, Lorg/mortbay/jetty/servlet/FilterHolder$a;-><init>(Lorg/mortbay/jetty/servlet/FilterHolder;)V

    iput-object v0, p0, Lorg/mortbay/jetty/servlet/FilterHolder;->_config:Lorg/mortbay/jetty/servlet/FilterHolder$a;

    iget-object p0, p0, Lorg/mortbay/jetty/servlet/FilterHolder;->_filter:Ljavax/servlet/Filter;

    invoke-interface {p0, v0}, Ljavax/servlet/Filter;->init(Ljavax/servlet/FilterConfig;)V

    return-void

    :cond_2
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Lorg/mortbay/jetty/servlet/Holder;->_class:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v1, " is not a javax.servlet.Filter"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-super {p0}, Lorg/mortbay/component/AbstractLifeCycle;->stop()V

    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public doStop()V
    .locals 2

    iget-object v0, p0, Lorg/mortbay/jetty/servlet/FilterHolder;->_filter:Ljavax/servlet/Filter;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {p0, v0}, Lorg/mortbay/jetty/servlet/FilterHolder;->destroyInstance(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/mortbay/log/Log;->warn(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    iget-boolean v0, p0, Lorg/mortbay/jetty/servlet/Holder;->_extInstance:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iput-object v1, p0, Lorg/mortbay/jetty/servlet/FilterHolder;->_filter:Ljavax/servlet/Filter;

    :cond_1
    iput-object v1, p0, Lorg/mortbay/jetty/servlet/FilterHolder;->_config:Lorg/mortbay/jetty/servlet/FilterHolder$a;

    invoke-super {p0}, Lorg/mortbay/jetty/servlet/Holder;->doStop()V

    return-void
.end method

.method public getFilter()Ljavax/servlet/Filter;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/jetty/servlet/FilterHolder;->_filter:Ljavax/servlet/Filter;

    return-object p0
.end method

.method public declared-synchronized setFilter(Ljavax/servlet/Filter;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lorg/mortbay/jetty/servlet/FilterHolder;->_filter:Ljavax/servlet/Filter;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/mortbay/jetty/servlet/Holder;->_extInstance:Z

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/mortbay/jetty/servlet/Holder;->setHeldClass(Ljava/lang/Class;)V

    invoke-virtual {p0}, Lorg/mortbay/jetty/servlet/Holder;->getName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/mortbay/jetty/servlet/Holder;->setName(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lorg/mortbay/jetty/servlet/Holder;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
