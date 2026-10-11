.class public Lorg/mortbay/jetty/handler/RewriteHandler;
.super Lorg/mortbay/jetty/handler/HandlerWrapper;
.source "SourceFile"


# instance fields
.field public g:Z

.field public h:Z

.field public i:Ljava/lang/String;

.field public j:Lorg/mortbay/jetty/servlet/PathMap;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lorg/mortbay/jetty/handler/HandlerWrapper;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/mortbay/jetty/handler/RewriteHandler;->g:Z

    iput-boolean v0, p0, Lorg/mortbay/jetty/handler/RewriteHandler;->h:Z

    new-instance v1, Lorg/mortbay/jetty/servlet/PathMap;

    invoke-direct {v1, v0}, Lorg/mortbay/jetty/servlet/PathMap;-><init>(Z)V

    iput-object v1, p0, Lorg/mortbay/jetty/handler/RewriteHandler;->j:Lorg/mortbay/jetty/servlet/PathMap;

    return-void
.end method


# virtual methods
.method public addRewriteRule(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/mortbay/jetty/handler/RewriteHandler;->j:Lorg/mortbay/jetty/servlet/PathMap;

    if-nez v0, :cond_0

    new-instance v0, Lorg/mortbay/jetty/servlet/PathMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/mortbay/jetty/servlet/PathMap;-><init>(Z)V

    iput-object v0, p0, Lorg/mortbay/jetty/handler/RewriteHandler;->j:Lorg/mortbay/jetty/servlet/PathMap;

    :cond_0
    iget-object p0, p0, Lorg/mortbay/jetty/handler/RewriteHandler;->j:Lorg/mortbay/jetty/servlet/PathMap;

    invoke-virtual {p0, p1, p2}, Lorg/mortbay/jetty/servlet/PathMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public getOriginalPathAttribute()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/jetty/handler/RewriteHandler;->i:Ljava/lang/String;

    return-object p0
.end method

.method public getRewrite()Lorg/mortbay/jetty/servlet/PathMap;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/jetty/handler/RewriteHandler;->j:Lorg/mortbay/jetty/servlet/PathMap;

    return-object p0
.end method

.method public handle(Ljava/lang/String;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/servlet/ServletException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/mortbay/component/AbstractLifeCycle;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/mortbay/jetty/handler/RewriteHandler;->j:Lorg/mortbay/jetty/servlet/PathMap;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Lorg/mortbay/jetty/servlet/PathMap;->getMatch(Ljava/lang/String;)Lorg/mortbay/jetty/servlet/PathMap$Entry;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/mortbay/jetty/handler/RewriteHandler;->i:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-interface {p2, v1, p1}, Ljavax/servlet/ServletRequest;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/mortbay/jetty/servlet/PathMap;->pathInfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lorg/mortbay/util/URIUtil;->addPaths(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-boolean v0, p0, Lorg/mortbay/jetty/handler/RewriteHandler;->g:Z

    if-eqz v0, :cond_1

    move-object v0, p2

    check-cast v0, Lorg/mortbay/jetty/Request;

    invoke-virtual {v0, p1}, Lorg/mortbay/jetty/Request;->setRequestURI(Ljava/lang/String;)V

    :cond_1
    iget-boolean v0, p0, Lorg/mortbay/jetty/handler/RewriteHandler;->h:Z

    if-eqz v0, :cond_2

    move-object v0, p2

    check-cast v0, Lorg/mortbay/jetty/Request;

    invoke-virtual {v0, p1}, Lorg/mortbay/jetty/Request;->setPathInfo(Ljava/lang/String;)V

    :cond_2
    invoke-super {p0, p1, p2, p3, p4}, Lorg/mortbay/jetty/handler/HandlerWrapper;->handle(Ljava/lang/String;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;I)V

    return-void
.end method

.method public isRewritePathInfo()Z
    .locals 0

    iget-boolean p0, p0, Lorg/mortbay/jetty/handler/RewriteHandler;->h:Z

    return p0
.end method

.method public isRewriteRequestURI()Z
    .locals 0

    iget-boolean p0, p0, Lorg/mortbay/jetty/handler/RewriteHandler;->g:Z

    return p0
.end method

.method public setOriginalPathAttribute(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/mortbay/jetty/handler/RewriteHandler;->i:Ljava/lang/String;

    return-void
.end method

.method public setRewrite(Lorg/mortbay/jetty/servlet/PathMap;)V
    .locals 0

    iput-object p1, p0, Lorg/mortbay/jetty/handler/RewriteHandler;->j:Lorg/mortbay/jetty/servlet/PathMap;

    return-void
.end method

.method public setRewritePathInfo(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/mortbay/jetty/handler/RewriteHandler;->h:Z

    return-void
.end method

.method public setRewriteRequestURI(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/mortbay/jetty/handler/RewriteHandler;->g:Z

    return-void
.end method
