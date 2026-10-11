.class public Lorg/mortbay/jetty/handler/ContextHandlerCollection;
.super Lorg/mortbay/jetty/handler/HandlerCollection;
.source "SourceFile"


# static fields
.field public static synthetic j:Ljava/lang/Class;


# instance fields
.field public h:Lorg/mortbay/jetty/servlet/PathMap;

.field public i:Ljava/lang/Class;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/mortbay/jetty/handler/HandlerCollection;-><init>()V

    sget-object v0, Lorg/mortbay/jetty/handler/ContextHandlerCollection;->j:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "org.mortbay.jetty.handler.ContextHandler"

    invoke-static {v0}, Lorg/mortbay/jetty/handler/ContextHandlerCollection;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/mortbay/jetty/handler/ContextHandlerCollection;->j:Ljava/lang/Class;

    :cond_0
    iput-object v0, p0, Lorg/mortbay/jetty/handler/ContextHandlerCollection;->i:Ljava/lang/Class;

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


# virtual methods
.method public addContext(Ljava/lang/String;Ljava/lang/String;)Lorg/mortbay/jetty/handler/ContextHandler;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lorg/mortbay/jetty/handler/ContextHandlerCollection;->i:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mortbay/jetty/handler/ContextHandler;

    invoke-virtual {v0, p1}, Lorg/mortbay/jetty/handler/ContextHandler;->setContextPath(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lorg/mortbay/jetty/handler/ContextHandler;->setResourceBase(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/mortbay/jetty/handler/HandlerCollection;->addHandler(Lorg/mortbay/jetty/Handler;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lorg/mortbay/log/Log;->debug(Ljava/lang/Throwable;)V

    new-instance p1, Ljava/lang/Error;

    invoke-direct {p1, p0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public doStart()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/mortbay/jetty/handler/ContextHandlerCollection;->mapContexts()V

    invoke-super {p0}, Lorg/mortbay/jetty/handler/HandlerCollection;->doStart()V

    return-void
.end method

.method public final f(Ljava/lang/String;)Ljava/lang/String;
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

.method public getContextClass()Ljava/lang/Class;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/jetty/handler/ContextHandlerCollection;->i:Ljava/lang/Class;

    return-object p0
.end method

.method public handle(Ljava/lang/String;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;I)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/servlet/ServletException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/mortbay/jetty/handler/HandlerCollection;->getHandlers()[Lorg/mortbay/jetty/Handler;

    move-result-object v0

    if-eqz v0, :cond_b

    array-length v1, v0

    if-nez v1, :cond_0

    goto/16 :goto_6

    :cond_0
    invoke-static {}, Lorg/mortbay/jetty/HttpConnection;->getCurrentConnection()Lorg/mortbay/jetty/HttpConnection;

    move-result-object v1

    invoke-virtual {v1}, Lorg/mortbay/jetty/HttpConnection;->getRequest()Lorg/mortbay/jetty/Request;

    move-result-object v1

    iget-object v2, p0, Lorg/mortbay/jetty/handler/ContextHandlerCollection;->h:Lorg/mortbay/jetty/servlet/PathMap;

    const/4 v3, 0x0

    if-eqz v2, :cond_9

    if-eqz p1, :cond_9

    const-string v4, "/"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-virtual {v2, p1}, Lorg/mortbay/jetty/servlet/PathMap;->getLazyMatches(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move v2, v3

    :goto_0
    invoke-static {v0}, Lorg/mortbay/util/LazyList;->size(Ljava/lang/Object;)I

    move-result v4

    if-ge v2, v4, :cond_b

    invoke-static {v0, v2}, Lorg/mortbay/util/LazyList;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    instance-of v5, v4, Ljava/util/Map;

    if-eqz v5, :cond_6

    check-cast v4, Ljava/util/Map;

    invoke-interface {p2}, Ljavax/servlet/ServletRequest;->getServerName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lorg/mortbay/jetty/handler/ContextHandlerCollection;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move v7, v3

    :goto_1
    invoke-static {v6}, Lorg/mortbay/util/LazyList;->size(Ljava/lang/Object;)I

    move-result v8

    if-ge v7, v8, :cond_2

    invoke-static {v6, v7}, Lorg/mortbay/util/LazyList;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/mortbay/jetty/Handler;

    invoke-interface {v8, p1, p2, p3, p4}, Lorg/mortbay/jetty/Handler;->handle(Ljava/lang/String;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;I)V

    invoke-virtual {v1}, Lorg/mortbay/jetty/Request;->isHandled()Z

    move-result v8

    if-eqz v8, :cond_1

    return-void

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_2
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "*."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v7, "."

    invoke-virtual {v5, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v5, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move v6, v3

    :goto_2
    invoke-static {v5}, Lorg/mortbay/util/LazyList;->size(Ljava/lang/Object;)I

    move-result v7

    if-ge v6, v7, :cond_4

    invoke-static {v5, v6}, Lorg/mortbay/util/LazyList;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/mortbay/jetty/Handler;

    invoke-interface {v7, p1, p2, p3, p4}, Lorg/mortbay/jetty/Handler;->handle(Ljava/lang/String;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;I)V

    invoke-virtual {v1}, Lorg/mortbay/jetty/Request;->isHandled()Z

    move-result v7

    if-eqz v7, :cond_3

    return-void

    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_4
    const-string v5, "*"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move v5, v3

    :goto_3
    invoke-static {v4}, Lorg/mortbay/util/LazyList;->size(Ljava/lang/Object;)I

    move-result v6

    if-ge v5, v6, :cond_8

    invoke-static {v4, v5}, Lorg/mortbay/util/LazyList;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/mortbay/jetty/Handler;

    invoke-interface {v6, p1, p2, p3, p4}, Lorg/mortbay/jetty/Handler;->handle(Ljava/lang/String;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;I)V

    invoke-virtual {v1}, Lorg/mortbay/jetty/Request;->isHandled()Z

    move-result v6

    if-eqz v6, :cond_5

    return-void

    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_6
    move v5, v3

    :goto_4
    invoke-static {v4}, Lorg/mortbay/util/LazyList;->size(Ljava/lang/Object;)I

    move-result v6

    if-ge v5, v6, :cond_8

    invoke-static {v4, v5}, Lorg/mortbay/util/LazyList;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/mortbay/jetty/Handler;

    invoke-interface {v6, p1, p2, p3, p4}, Lorg/mortbay/jetty/Handler;->handle(Ljava/lang/String;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;I)V

    invoke-virtual {v1}, Lorg/mortbay/jetty/Request;->isHandled()Z

    move-result v6

    if-eqz v6, :cond_7

    return-void

    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_9
    :goto_5
    array-length p0, v0

    if-ge v3, p0, :cond_b

    aget-object p0, v0, v3

    invoke-interface {p0, p1, p2, p3, p4}, Lorg/mortbay/jetty/Handler;->handle(Ljava/lang/String;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;I)V

    invoke-virtual {v1}, Lorg/mortbay/jetty/Request;->isHandled()Z

    move-result p0

    if-eqz p0, :cond_a

    return-void

    :cond_a
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_b
    :goto_6
    return-void
.end method

.method public mapContexts()V
    .locals 13

    new-instance v0, Lorg/mortbay/jetty/servlet/PathMap;

    invoke-direct {v0}, Lorg/mortbay/jetty/servlet/PathMap;-><init>()V

    invoke-virtual {p0}, Lorg/mortbay/jetty/handler/HandlerCollection;->getHandlers()[Lorg/mortbay/jetty/Handler;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-eqz v1, :cond_b

    array-length v4, v1

    if-ge v3, v4, :cond_b

    aget-object v4, v1, v3

    instance-of v5, v4, Lorg/mortbay/jetty/handler/ContextHandler;

    const/4 v6, 0x1

    if-eqz v5, :cond_0

    new-array v5, v6, [Lorg/mortbay/jetty/Handler;

    aput-object v4, v5, v2

    goto :goto_1

    :cond_0
    instance-of v5, v4, Lorg/mortbay/jetty/HandlerContainer;

    if-eqz v5, :cond_a

    check-cast v4, Lorg/mortbay/jetty/HandlerContainer;

    sget-object v5, Lorg/mortbay/jetty/handler/ContextHandlerCollection;->j:Ljava/lang/Class;

    if-nez v5, :cond_1

    const-string v5, "org.mortbay.jetty.handler.ContextHandler"

    invoke-static {v5}, Lorg/mortbay/jetty/handler/ContextHandlerCollection;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    sput-object v5, Lorg/mortbay/jetty/handler/ContextHandlerCollection;->j:Ljava/lang/Class;

    :cond_1
    invoke-interface {v4, v5}, Lorg/mortbay/jetty/HandlerContainer;->getChildHandlersByClass(Ljava/lang/Class;)[Lorg/mortbay/jetty/Handler;

    move-result-object v5

    :goto_1
    move v4, v2

    :goto_2
    array-length v7, v5

    if-ge v4, v7, :cond_a

    aget-object v7, v5, v4

    check-cast v7, Lorg/mortbay/jetty/handler/ContextHandler;

    invoke-virtual {v7}, Lorg/mortbay/jetty/handler/ContextHandler;->getContextPath()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_9

    const/16 v9, 0x2c

    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    if-gez v9, :cond_9

    const-string v9, "*"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_9

    const-string v10, "/"

    invoke-virtual {v8, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_2

    new-instance v11, Ljava/lang/StringBuffer;

    invoke-direct {v11}, Ljava/lang/StringBuffer;-><init>()V

    const/16 v12, 0x2f

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    :cond_2
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v11

    if-le v11, v6, :cond_4

    invoke-virtual {v8, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_3

    :cond_3
    const-string v10, "/*"

    invoke-virtual {v8, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_4

    new-instance v11, Ljava/lang/StringBuffer;

    invoke-direct {v11}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    :cond_4
    :goto_3
    invoke-virtual {v0, v8}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v7}, Lorg/mortbay/jetty/handler/ContextHandler;->getVirtualHosts()[Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_6

    array-length v11, v7

    if-lez v11, :cond_6

    instance-of v11, v10, Ljava/util/Map;

    if-eqz v11, :cond_5

    check-cast v10, Ljava/util/Map;

    goto :goto_4

    :cond_5
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v11, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, v8, v11}, Lorg/mortbay/jetty/servlet/PathMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v10, v11

    :goto_4
    move v8, v2

    :goto_5
    array-length v9, v7

    if-ge v8, v9, :cond_8

    aget-object v9, v7, v8

    invoke-interface {v10, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    aget-object v12, v1, v3

    invoke-static {v11, v12}, Lorg/mortbay/util/LazyList;->add(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    invoke-interface {v10, v9, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    :cond_6
    instance-of v7, v10, Ljava/util/Map;

    if-eqz v7, :cond_7

    check-cast v10, Ljava/util/Map;

    invoke-interface {v10, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    aget-object v8, v1, v3

    invoke-static {v7, v8}, Lorg/mortbay/util/LazyList;->add(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v10, v9, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    :cond_7
    aget-object v7, v1, v3

    invoke-static {v10, v7}, Lorg/mortbay/util/LazyList;->add(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v0, v8, v7}, Lorg/mortbay/jetty/servlet/PathMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    :goto_6
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_2

    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "Illegal context spec:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_b
    iput-object v0, p0, Lorg/mortbay/jetty/handler/ContextHandlerCollection;->h:Lorg/mortbay/jetty/servlet/PathMap;

    return-void
.end method

.method public setContextClass(Ljava/lang/Class;)V
    .locals 1

    if-eqz p1, :cond_1

    sget-object v0, Lorg/mortbay/jetty/handler/ContextHandlerCollection;->j:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "org.mortbay.jetty.handler.ContextHandler"

    invoke-static {v0}, Lorg/mortbay/jetty/handler/ContextHandlerCollection;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/mortbay/jetty/handler/ContextHandlerCollection;->j:Ljava/lang/Class;

    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    iput-object p1, p0, Lorg/mortbay/jetty/handler/ContextHandlerCollection;->i:Ljava/lang/Class;

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public setHandlers([Lorg/mortbay/jetty/Handler;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/mortbay/jetty/handler/ContextHandlerCollection;->h:Lorg/mortbay/jetty/servlet/PathMap;

    invoke-super {p0, p1}, Lorg/mortbay/jetty/handler/HandlerCollection;->setHandlers([Lorg/mortbay/jetty/Handler;)V

    invoke-virtual {p0}, Lorg/mortbay/component/AbstractLifeCycle;->isStarted()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lorg/mortbay/jetty/handler/ContextHandlerCollection;->mapContexts()V

    :cond_0
    return-void
.end method
