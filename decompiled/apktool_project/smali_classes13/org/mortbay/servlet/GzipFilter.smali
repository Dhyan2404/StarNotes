.class public Lorg/mortbay/servlet/GzipFilter;
.super Lorg/mortbay/servlet/UserAgentFilter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mortbay/servlet/GzipFilter$GzipStream;,
        Lorg/mortbay/servlet/GzipFilter$GZIPResponseWrapper;
    }
.end annotation


# instance fields
.field protected _bufferSize:I

.field protected _excluded:Ljava/util/Set;

.field protected _mimeTypes:Ljava/util/Set;

.field protected _minGzipSize:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/mortbay/servlet/UserAgentFilter;-><init>()V

    const/16 v0, 0x2000

    iput v0, p0, Lorg/mortbay/servlet/GzipFilter;->_bufferSize:I

    const/4 v0, 0x0

    iput v0, p0, Lorg/mortbay/servlet/GzipFilter;->_minGzipSize:I

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 0

    return-void
.end method

.method public doFilter(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;Ljavax/servlet/FilterChain;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/servlet/ServletException;
        }
    .end annotation

    check-cast p1, Ljavax/servlet/http/HttpServletRequest;

    check-cast p2, Ljavax/servlet/http/HttpServletResponse;

    const-string v0, "accept-encoding"

    invoke-interface {p1, v0}, Ljavax/servlet/http/HttpServletRequest;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "GzipFilter"

    invoke-interface {p1, v1}, Ljavax/servlet/ServletRequest;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    if-eqz v0, :cond_4

    const-string v3, "gzip"

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_4

    const-string v0, "Content-Encoding"

    invoke-interface {p2, v0}, Ljavax/servlet/http/HttpServletResponse;->containsHeader(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_0
    const-string v0, "HEAD"

    invoke-interface {p1}, Ljavax/servlet/http/HttpServletRequest;->getMethod()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lorg/mortbay/servlet/GzipFilter;->_excluded:Ljava/util/Set;

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lorg/mortbay/servlet/UserAgentFilter;->getUserAgent(Ljavax/servlet/ServletRequest;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lorg/mortbay/servlet/GzipFilter;->_excluded:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-super {p0, p1, p2, p3}, Lorg/mortbay/servlet/UserAgentFilter;->doFilter(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;Ljavax/servlet/FilterChain;)V

    return-void

    :cond_1
    invoke-virtual {p0, p1, p2}, Lorg/mortbay/servlet/GzipFilter;->newGZIPResponseWrapper(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)Lorg/mortbay/servlet/GzipFilter$GZIPResponseWrapper;

    move-result-object v0

    :try_start_0
    invoke-super {p0, p1, v0, p3}, Lorg/mortbay/servlet/UserAgentFilter;->doFilter(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;Ljavax/servlet/FilterChain;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lorg/mortbay/servlet/GzipFilter$GZIPResponseWrapper;->b()V

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p0

    :try_start_1
    sget-object p3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p1, v1, p3}, Ljavax/servlet/ServletRequest;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {p2}, Ljavax/servlet/ServletResponse;->isCommitted()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-interface {p2}, Ljavax/servlet/ServletResponse;->reset()V

    :cond_2
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    invoke-interface {p2}, Ljavax/servlet/ServletResponse;->isCommitted()Z

    move-result p1

    if-nez p1, :cond_3

    invoke-virtual {v0}, Lorg/mortbay/servlet/GzipFilter$GZIPResponseWrapper;->resetBuffer()V

    invoke-virtual {v0}, Lorg/mortbay/servlet/GzipFilter$GZIPResponseWrapper;->c()V

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Lorg/mortbay/servlet/GzipFilter$GZIPResponseWrapper;->b()V

    :goto_1
    throw p0

    :cond_4
    invoke-super {p0, p1, p2, p3}, Lorg/mortbay/servlet/UserAgentFilter;->doFilter(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;Ljavax/servlet/FilterChain;)V

    :goto_2
    return-void
.end method

.method public init(Ljavax/servlet/FilterConfig;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/servlet/ServletException;
        }
    .end annotation

    invoke-super {p0, p1}, Lorg/mortbay/servlet/UserAgentFilter;->init(Ljavax/servlet/FilterConfig;)V

    const-string v0, "bufferSize"

    invoke-interface {p1, v0}, Ljavax/servlet/FilterConfig;->getInitParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/mortbay/servlet/GzipFilter;->_bufferSize:I

    :cond_0
    const-string v0, "minGzipSize"

    invoke-interface {p1, v0}, Ljavax/servlet/FilterConfig;->getInitParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/mortbay/servlet/GzipFilter;->_minGzipSize:I

    :cond_1
    const-string v0, "mimeTypes"

    invoke-interface {p1, v0}, Ljavax/servlet/FilterConfig;->getInitParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, ","

    if-eqz v0, :cond_2

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    iput-object v3, p0, Lorg/mortbay/servlet/GzipFilter;->_mimeTypes:Ljava/util/Set;

    new-instance v3, Ljava/util/StringTokenizer;

    invoke-direct {v3, v0, v2, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/mortbay/servlet/GzipFilter;->_mimeTypes:Ljava/util/Set;

    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    const-string v0, "excludedAgents"

    invoke-interface {p1, v0}, Ljavax/servlet/FilterConfig;->getInitParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/mortbay/servlet/GzipFilter;->_excluded:Ljava/util/Set;

    new-instance v0, Ljava/util/StringTokenizer;

    invoke-direct {v0, p1, v2, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_1
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lorg/mortbay/servlet/GzipFilter;->_excluded:Ljava/util/Set;

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    return-void
.end method

.method public newGZIPResponseWrapper(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)Lorg/mortbay/servlet/GzipFilter$GZIPResponseWrapper;
    .locals 1

    new-instance v0, Lorg/mortbay/servlet/GzipFilter$GZIPResponseWrapper;

    invoke-direct {v0, p0, p1, p2}, Lorg/mortbay/servlet/GzipFilter$GZIPResponseWrapper;-><init>(Lorg/mortbay/servlet/GzipFilter;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V

    return-object v0
.end method

.method public newWriter(Ljava/io/OutputStream;Ljava/lang/String;)Ljava/io/PrintWriter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    new-instance p0, Ljava/io/PrintWriter;

    if-nez p2, :cond_0

    invoke-direct {p0, p1}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/io/OutputStreamWriter;

    invoke-direct {v0, p1, p2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    :goto_0
    return-object p0
.end method
