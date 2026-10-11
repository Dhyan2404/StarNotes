.class public Lorg/mortbay/jetty/servlet/Holder;
.super Lorg/mortbay/component/AbstractLifeCycle;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field static synthetic class$org$mortbay$jetty$servlet$Holder:Ljava/lang/Class;


# instance fields
.field protected transient _class:Ljava/lang/Class;

.field protected _className:Ljava/lang/String;

.field protected _displayName:Ljava/lang/String;

.field protected _extInstance:Z

.field protected _initParams:Ljava/util/Map;

.field protected _name:Ljava/lang/String;

.field protected _servletHandler:Lorg/mortbay/jetty/servlet/ServletHandler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/mortbay/component/AbstractLifeCycle;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Lorg/mortbay/component/AbstractLifeCycle;-><init>()V

    .line 3
    iput-object p1, p0, Lorg/mortbay/jetty/servlet/Holder;->_class:Ljava/lang/Class;

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/jetty/servlet/Holder;->_className:Ljava/lang/String;

    .line 5
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, "-"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/mortbay/jetty/servlet/Holder;->_name:Ljava/lang/String;

    :cond_0
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


# virtual methods
.method public destroyInstance(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    return-void
.end method

.method public doStart()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lorg/mortbay/jetty/servlet/Holder;->_class:Ljava/lang/Class;

    const/4 v1, -0x1

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/mortbay/jetty/servlet/Holder;->_className:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljavax/servlet/UnavailableException;

    const-string v0, "No class for Servlet or Filter"

    invoke-direct {p0, v0, v1}, Ljavax/servlet/UnavailableException;-><init>(Ljava/lang/String;I)V

    throw p0

    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/Holder;->_class:Ljava/lang/Class;

    if-nez v0, :cond_3

    :try_start_0
    sget-object v0, Lorg/mortbay/jetty/servlet/Holder;->class$org$mortbay$jetty$servlet$Holder:Ljava/lang/Class;

    if-nez v0, :cond_2

    const-string v0, "org.mortbay.jetty.servlet.Holder"

    invoke-static {v0}, Lorg/mortbay/jetty/servlet/Holder;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/mortbay/jetty/servlet/Holder;->class$org$mortbay$jetty$servlet$Holder:Ljava/lang/Class;

    :cond_2
    iget-object v2, p0, Lorg/mortbay/jetty/servlet/Holder;->_className:Ljava/lang/String;

    invoke-static {v0, v2}, Lorg/mortbay/util/Loader;->loadClass(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/jetty/servlet/Holder;->_class:Ljava/lang/Class;

    invoke-static {}, Lorg/mortbay/log/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "Holding {}"

    iget-object p0, p0, Lorg/mortbay/jetty/servlet/Holder;->_class:Ljava/lang/Class;

    invoke-static {v0, p0}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    invoke-static {p0}, Lorg/mortbay/log/Log;->warn(Ljava/lang/Throwable;)V

    new-instance v0, Ljavax/servlet/UnavailableException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0, v1}, Ljavax/servlet/UnavailableException;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_3
    :goto_1
    return-void
.end method

.method public doStop()V
    .locals 1

    iget-boolean v0, p0, Lorg/mortbay/jetty/servlet/Holder;->_extInstance:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/mortbay/jetty/servlet/Holder;->_class:Ljava/lang/Class;

    :cond_0
    return-void
.end method

.method public getClassName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/jetty/servlet/Holder;->_className:Ljava/lang/String;

    return-object p0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/jetty/servlet/Holder;->_displayName:Ljava/lang/String;

    return-object p0
.end method

.method public getHeldClass()Ljava/lang/Class;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/jetty/servlet/Holder;->_class:Ljava/lang/Class;

    return-object p0
.end method

.method public getInitParameter(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/jetty/servlet/Holder;->_initParams:Ljava/util/Map;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getInitParameterNames()Ljava/util/Enumeration;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/jetty/servlet/Holder;->_initParams:Ljava/util/Map;

    if-nez p0, :cond_0

    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-static {p0}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object p0

    return-object p0
.end method

.method public getInitParameters()Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/jetty/servlet/Holder;->_initParams:Ljava/util/Map;

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/jetty/servlet/Holder;->_name:Ljava/lang/String;

    return-object p0
.end method

.method public getServletHandler()Lorg/mortbay/jetty/servlet/ServletHandler;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/jetty/servlet/Holder;->_servletHandler:Lorg/mortbay/jetty/servlet/ServletHandler;

    return-object p0
.end method

.method public declared-synchronized newInstance()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/Holder;->_class:Ljava/lang/Class;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/InstantiationException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lorg/mortbay/jetty/servlet/Holder;->_className:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/InstantiationException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setClassName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/mortbay/jetty/servlet/Holder;->_className:Ljava/lang/String;

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/mortbay/jetty/servlet/Holder;->_class:Ljava/lang/Class;

    return-void
.end method

.method public setDisplayName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/mortbay/jetty/servlet/Holder;->_displayName:Ljava/lang/String;

    return-void
.end method

.method public setHeldClass(Ljava/lang/Class;)V
    .locals 0

    iput-object p1, p0, Lorg/mortbay/jetty/servlet/Holder;->_class:Ljava/lang/Class;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lorg/mortbay/jetty/servlet/Holder;->_className:Ljava/lang/String;

    return-void
.end method

.method public setInitParameter(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lorg/mortbay/jetty/servlet/Holder;->_initParams:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lorg/mortbay/jetty/servlet/Holder;->_initParams:Ljava/util/Map;

    :cond_0
    iget-object p0, p0, Lorg/mortbay/jetty/servlet/Holder;->_initParams:Ljava/util/Map;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setInitParameters(Ljava/util/Map;)V
    .locals 0

    iput-object p1, p0, Lorg/mortbay/jetty/servlet/Holder;->_initParams:Ljava/util/Map;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/mortbay/jetty/servlet/Holder;->_name:Ljava/lang/String;

    return-void
.end method

.method public setServletHandler(Lorg/mortbay/jetty/servlet/ServletHandler;)V
    .locals 0

    iput-object p1, p0, Lorg/mortbay/jetty/servlet/Holder;->_servletHandler:Lorg/mortbay/jetty/servlet/ServletHandler;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/jetty/servlet/Holder;->_name:Ljava/lang/String;

    return-object p0
.end method
