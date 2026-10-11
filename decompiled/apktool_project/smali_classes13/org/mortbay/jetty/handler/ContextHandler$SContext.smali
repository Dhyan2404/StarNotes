.class public Lorg/mortbay/jetty/handler/ContextHandler$SContext;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljavax/servlet/ServletContext;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mortbay/jetty/handler/ContextHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SContext"
.end annotation


# instance fields
.field public final synthetic a:Lorg/mortbay/jetty/handler/ContextHandler;


# direct methods
.method public constructor <init>(Lorg/mortbay/jetty/handler/ContextHandler;)V
    .locals 0

    iput-object p1, p0, Lorg/mortbay/jetty/handler/ContextHandler$SContext;->a:Lorg/mortbay/jetty/handler/ContextHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized getAttribute(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/mortbay/jetty/handler/ContextHandler$SContext;->a:Lorg/mortbay/jetty/handler/ContextHandler;

    invoke-virtual {v0, p1}, Lorg/mortbay/jetty/handler/ContextHandler;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lorg/mortbay/jetty/handler/ContextHandler$SContext;->a:Lorg/mortbay/jetty/handler/ContextHandler;

    invoke-static {v1}, Lorg/mortbay/jetty/handler/ContextHandler;->h(Lorg/mortbay/jetty/handler/ContextHandler;)Lorg/mortbay/util/AttributesMap;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lorg/mortbay/jetty/handler/ContextHandler$SContext;->a:Lorg/mortbay/jetty/handler/ContextHandler;

    invoke-static {v0}, Lorg/mortbay/jetty/handler/ContextHandler;->h(Lorg/mortbay/jetty/handler/ContextHandler;)Lorg/mortbay/util/AttributesMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/mortbay/util/AttributesMap;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getAttributeNames()Ljava/util/Enumeration;
    .locals 3

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object v1, p0, Lorg/mortbay/jetty/handler/ContextHandler$SContext;->a:Lorg/mortbay/jetty/handler/ContextHandler;

    invoke-static {v1}, Lorg/mortbay/jetty/handler/ContextHandler;->h(Lorg/mortbay/jetty/handler/ContextHandler;)Lorg/mortbay/util/AttributesMap;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/mortbay/jetty/handler/ContextHandler$SContext;->a:Lorg/mortbay/jetty/handler/ContextHandler;

    invoke-static {v1}, Lorg/mortbay/jetty/handler/ContextHandler;->h(Lorg/mortbay/jetty/handler/ContextHandler;)Lorg/mortbay/util/AttributesMap;

    move-result-object v1

    invoke-virtual {v1}, Lorg/mortbay/util/AttributesMap;->getAttributeNames()Ljava/util/Enumeration;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/mortbay/jetty/handler/ContextHandler$SContext;->a:Lorg/mortbay/jetty/handler/ContextHandler;

    invoke-static {v1}, Lorg/mortbay/jetty/handler/ContextHandler;->i(Lorg/mortbay/jetty/handler/ContextHandler;)Lorg/mortbay/util/AttributesMap;

    move-result-object v1

    invoke-virtual {v1}, Lorg/mortbay/util/AttributesMap;->getAttributeNames()Ljava/util/Enumeration;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-static {v0}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getContext(Ljava/lang/String;)Ljavax/servlet/ServletContext;
    .locals 7

    iget-object p0, p0, Lorg/mortbay/jetty/handler/ContextHandler$SContext;->a:Lorg/mortbay/jetty/handler/ContextHandler;

    invoke-virtual {p0}, Lorg/mortbay/jetty/handler/AbstractHandler;->getServer()Lorg/mortbay/jetty/Server;

    move-result-object p0

    sget-object v0, Lorg/mortbay/jetty/handler/ContextHandler;->u0:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "org.mortbay.jetty.handler.ContextHandler"

    invoke-static {v0}, Lorg/mortbay/jetty/handler/ContextHandler;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/mortbay/jetty/handler/ContextHandler;->u0:Ljava/lang/Class;

    :cond_0
    invoke-virtual {p0, v0}, Lorg/mortbay/jetty/handler/AbstractHandlerContainer;->getChildHandlersByClass(Ljava/lang/Class;)[Lorg/mortbay/jetty/Handler;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object v2, v0

    :goto_0
    array-length v3, p0

    if-ge v1, v3, :cond_5

    aget-object v3, p0, v1

    if-eqz v3, :cond_4

    invoke-interface {v3}, Lorg/mortbay/component/LifeCycle;->isStarted()Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    aget-object v3, p0, v1

    check-cast v3, Lorg/mortbay/jetty/handler/ContextHandler;

    invoke-virtual {v3}, Lorg/mortbay/jetty/handler/ContextHandler;->getContextPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x2f

    if-ne v5, v6, :cond_4

    :cond_2
    if-eqz v2, :cond_3

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2}, Lorg/mortbay/jetty/handler/ContextHandler;->getContextPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-le v4, v5, :cond_4

    :cond_3
    move-object v2, v3

    :cond_4
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    if-eqz v2, :cond_6

    iget-object p0, v2, Lorg/mortbay/jetty/handler/ContextHandler;->_scontext:Lorg/mortbay/jetty/handler/ContextHandler$SContext;

    return-object p0

    :cond_6
    return-object v0
.end method

.method public getContextHandler()Lorg/mortbay/jetty/handler/ContextHandler;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/jetty/handler/ContextHandler$SContext;->a:Lorg/mortbay/jetty/handler/ContextHandler;

    return-object p0
.end method

.method public getContextPath()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/mortbay/jetty/handler/ContextHandler$SContext;->a:Lorg/mortbay/jetty/handler/ContextHandler;

    invoke-static {v0}, Lorg/mortbay/jetty/handler/ContextHandler;->l(Lorg/mortbay/jetty/handler/ContextHandler;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/mortbay/jetty/handler/ContextHandler$SContext;->a:Lorg/mortbay/jetty/handler/ContextHandler;

    invoke-static {v0}, Lorg/mortbay/jetty/handler/ContextHandler;->l(Lorg/mortbay/jetty/handler/ContextHandler;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    iget-object p0, p0, Lorg/mortbay/jetty/handler/ContextHandler$SContext;->a:Lorg/mortbay/jetty/handler/ContextHandler;

    invoke-static {p0}, Lorg/mortbay/jetty/handler/ContextHandler;->l(Lorg/mortbay/jetty/handler/ContextHandler;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getInitParameter(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/jetty/handler/ContextHandler$SContext;->a:Lorg/mortbay/jetty/handler/ContextHandler;

    invoke-virtual {p0, p1}, Lorg/mortbay/jetty/handler/ContextHandler;->getInitParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getInitParameterNames()Ljava/util/Enumeration;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/jetty/handler/ContextHandler$SContext;->a:Lorg/mortbay/jetty/handler/ContextHandler;

    invoke-virtual {p0}, Lorg/mortbay/jetty/handler/ContextHandler;->getInitParameterNames()Ljava/util/Enumeration;

    move-result-object p0

    return-object p0
.end method

.method public getMajorVersion()I
    .locals 0

    const/4 p0, 0x2

    return p0
.end method

.method public getMimeType(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/mortbay/jetty/handler/ContextHandler$SContext;->a:Lorg/mortbay/jetty/handler/ContextHandler;

    invoke-static {v0}, Lorg/mortbay/jetty/handler/ContextHandler;->f(Lorg/mortbay/jetty/handler/ContextHandler;)Lorg/mortbay/jetty/MimeTypes;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object p0, p0, Lorg/mortbay/jetty/handler/ContextHandler$SContext;->a:Lorg/mortbay/jetty/handler/ContextHandler;

    invoke-static {p0}, Lorg/mortbay/jetty/handler/ContextHandler;->f(Lorg/mortbay/jetty/handler/ContextHandler;)Lorg/mortbay/jetty/MimeTypes;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/mortbay/jetty/MimeTypes;->getMimeByExtension(Ljava/lang/String;)Lorg/mortbay/io/Buffer;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v1
.end method

.method public getMinorVersion()I
    .locals 0

    const/4 p0, 0x5

    return p0
.end method

.method public getNamedDispatcher(Ljava/lang/String;)Ljavax/servlet/RequestDispatcher;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getRealPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, "/"

    if-nez v1, :cond_1

    move-object p1, v2

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v3, 0x2f

    if-eq v1, v3, :cond_2

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_2
    :goto_0
    :try_start_0
    iget-object p0, p0, Lorg/mortbay/jetty/handler/ContextHandler$SContext;->a:Lorg/mortbay/jetty/handler/ContextHandler;

    invoke-virtual {p0, p1}, Lorg/mortbay/jetty/handler/ContextHandler;->getResource(Ljava/lang/String;)Lorg/mortbay/resource/Resource;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Lorg/mortbay/resource/Resource;->getFile()Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lorg/mortbay/log/Log;->ignore(Ljava/lang/Throwable;)V

    :cond_3
    return-object v0
.end method

.method public getRequestDispatcher(Ljava/lang/String;)Ljavax/servlet/RequestDispatcher;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getResource(Ljava/lang/String;)Ljava/net/URL;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    iget-object p0, p0, Lorg/mortbay/jetty/handler/ContextHandler$SContext;->a:Lorg/mortbay/jetty/handler/ContextHandler;

    invoke-virtual {p0, p1}, Lorg/mortbay/jetty/handler/ContextHandler;->getResource(Ljava/lang/String;)Lorg/mortbay/resource/Resource;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lorg/mortbay/resource/Resource;->exists()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lorg/mortbay/resource/Resource;->getURL()Ljava/net/URL;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 1

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1}, Lorg/mortbay/jetty/handler/ContextHandler$SContext;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object p0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lorg/mortbay/log/Log;->ignore(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public getResourcePaths(Ljava/lang/String;)Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/jetty/handler/ContextHandler$SContext;->a:Lorg/mortbay/jetty/handler/ContextHandler;

    invoke-virtual {p0, p1}, Lorg/mortbay/jetty/handler/ContextHandler;->getResourcePaths(Ljava/lang/String;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public getServerInfo()Ljava/lang/String;
    .locals 1

    new-instance p0, Ljava/lang/StringBuffer;

    invoke-direct {p0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v0, "jetty/"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {}, Lorg/mortbay/jetty/Server;->getVersion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getServlet(Ljava/lang/String;)Ljavax/servlet/Servlet;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/servlet/ServletException;
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public getServletContextName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/mortbay/jetty/handler/ContextHandler$SContext;->a:Lorg/mortbay/jetty/handler/ContextHandler;

    invoke-virtual {v0}, Lorg/mortbay/jetty/handler/ContextHandler;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lorg/mortbay/jetty/handler/ContextHandler$SContext;->a:Lorg/mortbay/jetty/handler/ContextHandler;

    invoke-virtual {p0}, Lorg/mortbay/jetty/handler/ContextHandler;->getContextPath()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getServletNames()Ljava/util/Enumeration;
    .locals 0

    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-static {p0}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object p0

    return-object p0
.end method

.method public getServlets()Ljava/util/Enumeration;
    .locals 0

    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-static {p0}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object p0

    return-object p0
.end method

.method public log(Ljava/lang/Exception;Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/mortbay/jetty/handler/ContextHandler$SContext;->a:Lorg/mortbay/jetty/handler/ContextHandler;

    invoke-static {p0}, Lorg/mortbay/jetty/handler/ContextHandler;->g(Lorg/mortbay/jetty/handler/ContextHandler;)Lorg/mortbay/log/Logger;

    move-result-object p0

    invoke-interface {p0, p2, p1}, Lorg/mortbay/log/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public log(Ljava/lang/String;)V
    .locals 1

    .line 2
    iget-object p0, p0, Lorg/mortbay/jetty/handler/ContextHandler$SContext;->a:Lorg/mortbay/jetty/handler/ContextHandler;

    invoke-static {p0}, Lorg/mortbay/jetty/handler/ContextHandler;->g(Lorg/mortbay/jetty/handler/ContextHandler;)Lorg/mortbay/log/Logger;

    move-result-object p0

    const/4 v0, 0x0

    invoke-interface {p0, p1, v0, v0}, Lorg/mortbay/log/Logger;->info(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public log(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 3
    iget-object p0, p0, Lorg/mortbay/jetty/handler/ContextHandler$SContext;->a:Lorg/mortbay/jetty/handler/ContextHandler;

    invoke-static {p0}, Lorg/mortbay/jetty/handler/ContextHandler;->g(Lorg/mortbay/jetty/handler/ContextHandler;)Lorg/mortbay/log/Logger;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lorg/mortbay/log/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public declared-synchronized removeAttribute(Ljava/lang/String;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/mortbay/jetty/handler/ContextHandler$SContext;->a:Lorg/mortbay/jetty/handler/ContextHandler;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lorg/mortbay/jetty/handler/ContextHandler;->j(Lorg/mortbay/jetty/handler/ContextHandler;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/mortbay/jetty/handler/ContextHandler$SContext;->a:Lorg/mortbay/jetty/handler/ContextHandler;

    invoke-static {v0}, Lorg/mortbay/jetty/handler/ContextHandler;->h(Lorg/mortbay/jetty/handler/ContextHandler;)Lorg/mortbay/util/AttributesMap;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/mortbay/jetty/handler/ContextHandler$SContext;->a:Lorg/mortbay/jetty/handler/ContextHandler;

    invoke-static {v0}, Lorg/mortbay/jetty/handler/ContextHandler;->i(Lorg/mortbay/jetty/handler/ContextHandler;)Lorg/mortbay/util/AttributesMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/mortbay/util/AttributesMap;->removeAttribute(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/mortbay/jetty/handler/ContextHandler$SContext;->a:Lorg/mortbay/jetty/handler/ContextHandler;

    invoke-static {v0}, Lorg/mortbay/jetty/handler/ContextHandler;->h(Lorg/mortbay/jetty/handler/ContextHandler;)Lorg/mortbay/util/AttributesMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/mortbay/util/AttributesMap;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lorg/mortbay/jetty/handler/ContextHandler$SContext;->a:Lorg/mortbay/jetty/handler/ContextHandler;

    invoke-static {v1}, Lorg/mortbay/jetty/handler/ContextHandler;->h(Lorg/mortbay/jetty/handler/ContextHandler;)Lorg/mortbay/util/AttributesMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/mortbay/util/AttributesMap;->removeAttribute(Ljava/lang/String;)V

    if-eqz v0, :cond_1

    iget-object v1, p0, Lorg/mortbay/jetty/handler/ContextHandler$SContext;->a:Lorg/mortbay/jetty/handler/ContextHandler;

    invoke-static {v1}, Lorg/mortbay/jetty/handler/ContextHandler;->k(Lorg/mortbay/jetty/handler/ContextHandler;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Ljavax/servlet/ServletContextAttributeEvent;

    iget-object v2, p0, Lorg/mortbay/jetty/handler/ContextHandler$SContext;->a:Lorg/mortbay/jetty/handler/ContextHandler;

    iget-object v2, v2, Lorg/mortbay/jetty/handler/ContextHandler;->_scontext:Lorg/mortbay/jetty/handler/ContextHandler$SContext;

    invoke-direct {v1, v2, p1, v0}, Ljavax/servlet/ServletContextAttributeEvent;-><init>(Ljavax/servlet/ServletContext;Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lorg/mortbay/jetty/handler/ContextHandler$SContext;->a:Lorg/mortbay/jetty/handler/ContextHandler;

    invoke-static {v0}, Lorg/mortbay/jetty/handler/ContextHandler;->k(Lorg/mortbay/jetty/handler/ContextHandler;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/mortbay/util/LazyList;->size(Ljava/lang/Object;)I

    move-result v0

    if-ge p1, v0, :cond_1

    iget-object v0, p0, Lorg/mortbay/jetty/handler/ContextHandler$SContext;->a:Lorg/mortbay/jetty/handler/ContextHandler;

    invoke-static {v0}, Lorg/mortbay/jetty/handler/ContextHandler;->k(Lorg/mortbay/jetty/handler/ContextHandler;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/mortbay/util/LazyList;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/servlet/ServletContextAttributeListener;

    invoke-interface {v0, v1}, Ljavax/servlet/ServletContextAttributeListener;->attributeRemoved(Ljavax/servlet/ServletContextAttributeEvent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setAttribute(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/mortbay/jetty/handler/ContextHandler$SContext;->a:Lorg/mortbay/jetty/handler/ContextHandler;

    invoke-static {v0}, Lorg/mortbay/jetty/handler/ContextHandler;->h(Lorg/mortbay/jetty/handler/ContextHandler;)Lorg/mortbay/util/AttributesMap;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/mortbay/jetty/handler/ContextHandler$SContext;->a:Lorg/mortbay/jetty/handler/ContextHandler;

    invoke-virtual {v0, p1, p2}, Lorg/mortbay/jetty/handler/ContextHandler;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/mortbay/jetty/handler/ContextHandler$SContext;->a:Lorg/mortbay/jetty/handler/ContextHandler;

    invoke-static {v0, p1, p2}, Lorg/mortbay/jetty/handler/ContextHandler;->j(Lorg/mortbay/jetty/handler/ContextHandler;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/mortbay/jetty/handler/ContextHandler$SContext;->a:Lorg/mortbay/jetty/handler/ContextHandler;

    invoke-static {v0}, Lorg/mortbay/jetty/handler/ContextHandler;->h(Lorg/mortbay/jetty/handler/ContextHandler;)Lorg/mortbay/util/AttributesMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/mortbay/util/AttributesMap;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez p2, :cond_1

    iget-object v1, p0, Lorg/mortbay/jetty/handler/ContextHandler$SContext;->a:Lorg/mortbay/jetty/handler/ContextHandler;

    invoke-static {v1}, Lorg/mortbay/jetty/handler/ContextHandler;->h(Lorg/mortbay/jetty/handler/ContextHandler;)Lorg/mortbay/util/AttributesMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/mortbay/util/AttributesMap;->removeAttribute(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lorg/mortbay/jetty/handler/ContextHandler$SContext;->a:Lorg/mortbay/jetty/handler/ContextHandler;

    invoke-static {v1}, Lorg/mortbay/jetty/handler/ContextHandler;->h(Lorg/mortbay/jetty/handler/ContextHandler;)Lorg/mortbay/util/AttributesMap;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lorg/mortbay/util/AttributesMap;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    iget-object v1, p0, Lorg/mortbay/jetty/handler/ContextHandler$SContext;->a:Lorg/mortbay/jetty/handler/ContextHandler;

    invoke-static {v1}, Lorg/mortbay/jetty/handler/ContextHandler;->k(Lorg/mortbay/jetty/handler/ContextHandler;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_5

    new-instance v1, Ljavax/servlet/ServletContextAttributeEvent;

    iget-object v2, p0, Lorg/mortbay/jetty/handler/ContextHandler$SContext;->a:Lorg/mortbay/jetty/handler/ContextHandler;

    iget-object v2, v2, Lorg/mortbay/jetty/handler/ContextHandler;->_scontext:Lorg/mortbay/jetty/handler/ContextHandler$SContext;

    if-nez v0, :cond_2

    move-object v3, p2

    goto :goto_1

    :cond_2
    move-object v3, v0

    :goto_1
    invoke-direct {v1, v2, p1, v3}, Ljavax/servlet/ServletContextAttributeEvent;-><init>(Ljavax/servlet/ServletContext;Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p1, 0x0

    :goto_2
    iget-object v2, p0, Lorg/mortbay/jetty/handler/ContextHandler$SContext;->a:Lorg/mortbay/jetty/handler/ContextHandler;

    invoke-static {v2}, Lorg/mortbay/jetty/handler/ContextHandler;->k(Lorg/mortbay/jetty/handler/ContextHandler;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lorg/mortbay/util/LazyList;->size(Ljava/lang/Object;)I

    move-result v2

    if-ge p1, v2, :cond_5

    iget-object v2, p0, Lorg/mortbay/jetty/handler/ContextHandler$SContext;->a:Lorg/mortbay/jetty/handler/ContextHandler;

    invoke-static {v2}, Lorg/mortbay/jetty/handler/ContextHandler;->k(Lorg/mortbay/jetty/handler/ContextHandler;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, p1}, Lorg/mortbay/util/LazyList;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/servlet/ServletContextAttributeListener;

    if-nez v0, :cond_3

    invoke-interface {v2, v1}, Ljavax/servlet/ServletContextAttributeListener;->attributeAdded(Ljavax/servlet/ServletContextAttributeEvent;)V

    goto :goto_3

    :cond_3
    if-nez p2, :cond_4

    invoke-interface {v2, v1}, Ljavax/servlet/ServletContextAttributeListener;->attributeRemoved(Ljavax/servlet/ServletContextAttributeEvent;)V

    goto :goto_3

    :cond_4
    invoke-interface {v2, v1}, Ljavax/servlet/ServletContextAttributeListener;->attributeReplaced(Ljavax/servlet/ServletContextAttributeEvent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_3
    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_5
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "ServletContext@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/mortbay/jetty/handler/ContextHandler$SContext;->getContextPath()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "/"

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/mortbay/jetty/handler/ContextHandler$SContext;->getContextPath()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p0, p0, Lorg/mortbay/jetty/handler/ContextHandler$SContext;->a:Lorg/mortbay/jetty/handler/ContextHandler;

    invoke-virtual {p0}, Lorg/mortbay/jetty/handler/ContextHandler;->getBaseResource()Lorg/mortbay/resource/Resource;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
