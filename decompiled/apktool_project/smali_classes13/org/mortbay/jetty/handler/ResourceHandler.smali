.class public Lorg/mortbay/jetty/handler/ResourceHandler;
.super Lorg/mortbay/jetty/handler/AbstractHandler;
.source "SourceFile"


# instance fields
.field public e:Lorg/mortbay/jetty/handler/ContextHandler;

.field public f:Lorg/mortbay/resource/Resource;

.field public g:[Ljava/lang/String;

.field public h:Lorg/mortbay/jetty/MimeTypes;

.field public i:Lorg/mortbay/io/ByteArrayBuffer;

.field public j:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/mortbay/jetty/handler/AbstractHandler;-><init>()V

    const-string v0, "index.html"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/jetty/handler/ResourceHandler;->g:[Ljava/lang/String;

    new-instance v0, Lorg/mortbay/jetty/MimeTypes;

    invoke-direct {v0}, Lorg/mortbay/jetty/MimeTypes;-><init>()V

    iput-object v0, p0, Lorg/mortbay/jetty/handler/ResourceHandler;->h:Lorg/mortbay/jetty/MimeTypes;

    return-void
.end method


# virtual methods
.method public doResponseHeaders(Ljavax/servlet/http/HttpServletResponse;Lorg/mortbay/resource/Resource;Ljava/lang/String;)V
    .locals 3

    if-eqz p3, :cond_0

    invoke-interface {p1, p3}, Ljavax/servlet/ServletResponse;->setContentType(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p2}, Lorg/mortbay/resource/Resource;->length()J

    move-result-wide p2

    instance-of v0, p1, Lorg/mortbay/jetty/Response;

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_2

    check-cast p1, Lorg/mortbay/jetty/Response;

    invoke-virtual {p1}, Lorg/mortbay/jetty/Response;->getHttpFields()Lorg/mortbay/jetty/HttpFields;

    move-result-object p1

    cmp-long v0, p2, v1

    if-lez v0, :cond_1

    sget-object v0, Lorg/mortbay/jetty/HttpHeaders;->CONTENT_LENGTH_BUFFER:Lorg/mortbay/io/Buffer;

    invoke-virtual {p1, v0, p2, p3}, Lorg/mortbay/jetty/HttpFields;->putLongField(Lorg/mortbay/io/Buffer;J)V

    :cond_1
    iget-object p0, p0, Lorg/mortbay/jetty/handler/ResourceHandler;->i:Lorg/mortbay/io/ByteArrayBuffer;

    if-eqz p0, :cond_4

    sget-object p2, Lorg/mortbay/jetty/HttpHeaders;->CACHE_CONTROL_BUFFER:Lorg/mortbay/io/Buffer;

    invoke-virtual {p1, p2, p0}, Lorg/mortbay/jetty/HttpFields;->put(Lorg/mortbay/io/Buffer;Lorg/mortbay/io/Buffer;)V

    goto :goto_0

    :cond_2
    cmp-long v0, p2, v1

    if-lez v0, :cond_3

    const-string v0, "Content-Length"

    invoke-static {p2, p3}, Lorg/mortbay/util/TypeUtil;->toString(J)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v0, p2}, Ljavax/servlet/http/HttpServletResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    iget-object p0, p0, Lorg/mortbay/jetty/handler/ResourceHandler;->i:Lorg/mortbay/io/ByteArrayBuffer;

    if-eqz p0, :cond_4

    const-string p2, "Cache-Control"

    invoke-virtual {p0}, Lorg/mortbay/io/AbstractBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p2, p0}, Ljavax/servlet/http/HttpServletResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public doStart()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {}, Lorg/mortbay/jetty/handler/ContextHandler;->getCurrentContext()Lorg/mortbay/jetty/handler/ContextHandler$SContext;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/mortbay/jetty/handler/ContextHandler$SContext;->getContextHandler()Lorg/mortbay/jetty/handler/ContextHandler;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lorg/mortbay/jetty/handler/ResourceHandler;->e:Lorg/mortbay/jetty/handler/ContextHandler;

    iget-boolean v0, p0, Lorg/mortbay/jetty/handler/ResourceHandler;->j:Z

    if-nez v0, :cond_2

    invoke-static {}, Lorg/mortbay/resource/FileResource;->getCheckAliases()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Alias checking disabled"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_1
    invoke-super {p0}, Lorg/mortbay/jetty/handler/AbstractHandler;->doStart()V

    return-void
.end method

.method public getBaseResource()Lorg/mortbay/resource/Resource;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/jetty/handler/ResourceHandler;->f:Lorg/mortbay/resource/Resource;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    :cond_0
    return-object p0
.end method

.method public getCacheControl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/jetty/handler/ResourceHandler;->i:Lorg/mortbay/io/ByteArrayBuffer;

    invoke-virtual {p0}, Lorg/mortbay/io/AbstractBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getMimeTypes()Lorg/mortbay/jetty/MimeTypes;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/jetty/handler/ResourceHandler;->h:Lorg/mortbay/jetty/MimeTypes;

    return-object p0
.end method

.method public getResource(Ljava/lang/String;)Lorg/mortbay/resource/Resource;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    if-eqz p1, :cond_2

    const-string v0, "/"

    .line 1
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Lorg/mortbay/jetty/handler/ResourceHandler;->f:Lorg/mortbay/resource/Resource;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 3
    iget-object p0, p0, Lorg/mortbay/jetty/handler/ResourceHandler;->e:Lorg/mortbay/jetty/handler/ContextHandler;

    if-nez p0, :cond_0

    return-object v1

    .line 4
    :cond_0
    invoke-virtual {p0}, Lorg/mortbay/jetty/handler/ContextHandler;->getBaseResource()Lorg/mortbay/resource/Resource;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    .line 5
    :cond_1
    :try_start_0
    invoke-static {p1}, Lorg/mortbay/util/URIUtil;->canonicalPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 6
    invoke-virtual {v0, p0}, Lorg/mortbay/resource/Resource;->addPath(Ljava/lang/String;)Lorg/mortbay/resource/Resource;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 7
    invoke-static {p0}, Lorg/mortbay/log/Log;->ignore(Ljava/lang/Throwable;)V

    return-object v1

    .line 8
    :cond_2
    new-instance p0, Ljava/net/MalformedURLException;

    invoke-direct {p0, p1}, Ljava/net/MalformedURLException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getResource(Ljavax/servlet/http/HttpServletRequest;)Lorg/mortbay/resource/Resource;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .line 9
    invoke-interface {p1}, Ljavax/servlet/http/HttpServletRequest;->getPathInfo()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 10
    :cond_0
    invoke-virtual {p0, p1}, Lorg/mortbay/jetty/handler/ResourceHandler;->getResource(Ljava/lang/String;)Lorg/mortbay/resource/Resource;

    move-result-object p0

    return-object p0
.end method

.method public getResourceBase()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/jetty/handler/ResourceHandler;->f:Lorg/mortbay/resource/Resource;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getWelcome(Lorg/mortbay/resource/Resource;)Lorg/mortbay/resource/Resource;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/mortbay/jetty/handler/ResourceHandler;->g:[Ljava/lang/String;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Lorg/mortbay/resource/Resource;->addPath(Ljava/lang/String;)Lorg/mortbay/resource/Resource;

    move-result-object v1

    invoke-virtual {v1}, Lorg/mortbay/resource/Resource;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lorg/mortbay/resource/Resource;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getWelcomeFiles()[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/jetty/handler/ResourceHandler;->g:[Ljava/lang/String;

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

    instance-of p1, p2, Lorg/mortbay/jetty/Request;

    if-eqz p1, :cond_0

    move-object p1, p2

    check-cast p1, Lorg/mortbay/jetty/Request;

    goto :goto_0

    :cond_0
    invoke-static {}, Lorg/mortbay/jetty/HttpConnection;->getCurrentConnection()Lorg/mortbay/jetty/HttpConnection;

    move-result-object p1

    invoke-virtual {p1}, Lorg/mortbay/jetty/HttpConnection;->getRequest()Lorg/mortbay/jetty/Request;

    move-result-object p1

    :goto_0
    invoke-virtual {p1}, Lorg/mortbay/jetty/Request;->isHandled()Z

    move-result p4

    if-eqz p4, :cond_1

    return-void

    :cond_1
    invoke-interface {p2}, Ljavax/servlet/http/HttpServletRequest;->getMethod()Ljava/lang/String;

    move-result-object p4

    const-string v0, "GET"

    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    const/4 v0, 0x1

    if-nez p4, :cond_3

    const-string p4, "HEAD"

    invoke-interface {p2}, Ljavax/servlet/http/HttpServletRequest;->getMethod()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_2

    return-void

    :cond_2
    move p4, v0

    goto :goto_1

    :cond_3
    const/4 p4, 0x0

    :goto_1
    invoke-virtual {p0, p2}, Lorg/mortbay/jetty/handler/ResourceHandler;->getResource(Ljavax/servlet/http/HttpServletRequest;)Lorg/mortbay/resource/Resource;

    move-result-object v1

    if-eqz v1, :cond_e

    invoke-virtual {v1}, Lorg/mortbay/resource/Resource;->exists()Z

    move-result v2

    if-nez v2, :cond_4

    goto/16 :goto_5

    :cond_4
    iget-boolean v2, p0, Lorg/mortbay/jetty/handler/ResourceHandler;->j:Z

    if-nez v2, :cond_5

    invoke-virtual {v1}, Lorg/mortbay/resource/Resource;->getAlias()Ljava/net/URL;

    move-result-object v2

    if-eqz v2, :cond_5

    new-instance p0, Ljava/lang/StringBuffer;

    invoke-direct {p0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string p1, " aliased to "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Lorg/mortbay/resource/Resource;->getAlias()Ljava/net/URL;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/mortbay/log/Log;->info(Ljava/lang/String;)V

    return-void

    :cond_5
    invoke-virtual {p1, v0}, Lorg/mortbay/jetty/Request;->setHandled(Z)V

    invoke-virtual {v1}, Lorg/mortbay/resource/Resource;->isDirectory()Z

    move-result p1

    if-eqz p1, :cond_8

    invoke-interface {p2}, Ljavax/servlet/http/HttpServletRequest;->getPathInfo()Ljava/lang/String;

    move-result-object p1

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_6

    invoke-interface {p2}, Ljavax/servlet/http/HttpServletRequest;->getRequestURI()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v0}, Lorg/mortbay/util/URIUtil;->addPaths(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p3, p0}, Ljavax/servlet/http/HttpServletResponse;->encodeRedirectURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p3, p0}, Ljavax/servlet/http/HttpServletResponse;->sendRedirect(Ljava/lang/String;)V

    return-void

    :cond_6
    invoke-virtual {p0, v1}, Lorg/mortbay/jetty/handler/ResourceHandler;->getWelcome(Lorg/mortbay/resource/Resource;)Lorg/mortbay/resource/Resource;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Lorg/mortbay/resource/Resource;->exists()Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-virtual {v1}, Lorg/mortbay/resource/Resource;->isDirectory()Z

    move-result p1

    if-eqz p1, :cond_8

    :cond_7
    const/16 p0, 0x193

    invoke-interface {p3, p0}, Ljavax/servlet/http/HttpServletResponse;->sendError(I)V

    return-void

    :cond_8
    move-object v0, v1

    invoke-virtual {v0}, Lorg/mortbay/resource/Resource;->lastModified()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long p1, v1, v3

    if-lez p1, :cond_9

    const-string p1, "If-Modified-Since"

    invoke-interface {p2, p1}, Ljavax/servlet/http/HttpServletRequest;->getDateHeader(Ljava/lang/String;)J

    move-result-wide v5

    cmp-long p1, v5, v3

    if-lez p1, :cond_9

    const-wide/16 v3, 0x3e8

    div-long v7, v1, v3

    div-long/2addr v5, v3

    cmp-long p1, v7, v5

    if-gtz p1, :cond_9

    const/16 p0, 0x130

    invoke-interface {p3, p0}, Ljavax/servlet/http/HttpServletResponse;->setStatus(I)V

    return-void

    :cond_9
    iget-object p1, p0, Lorg/mortbay/jetty/handler/ResourceHandler;->h:Lorg/mortbay/jetty/MimeTypes;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lorg/mortbay/jetty/MimeTypes;->getMimeByExtension(Ljava/lang/String;)Lorg/mortbay/io/Buffer;

    move-result-object p1

    if-nez p1, :cond_a

    iget-object p1, p0, Lorg/mortbay/jetty/handler/ResourceHandler;->h:Lorg/mortbay/jetty/MimeTypes;

    invoke-interface {p2}, Ljavax/servlet/http/HttpServletRequest;->getPathInfo()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/mortbay/jetty/MimeTypes;->getMimeByExtension(Ljava/lang/String;)Lorg/mortbay/io/Buffer;

    move-result-object p1

    :cond_a
    if-eqz p1, :cond_b

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_b
    const/4 p1, 0x0

    :goto_2
    invoke-virtual {p0, p3, v0, p1}, Lorg/mortbay/jetty/handler/ResourceHandler;->doResponseHeaders(Ljavax/servlet/http/HttpServletResponse;Lorg/mortbay/resource/Resource;Ljava/lang/String;)V

    const-string p0, "Last-Modified"

    invoke-interface {p3, p0, v1, v2}, Ljavax/servlet/http/HttpServletResponse;->setDateHeader(Ljava/lang/String;J)V

    if-eqz p4, :cond_c

    return-void

    :cond_c
    :try_start_0
    invoke-interface {p3}, Ljavax/servlet/ServletResponse;->getOutputStream()Ljavax/servlet/ServletOutputStream;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    move-object v1, p0

    goto :goto_4

    :catch_0
    new-instance p0, Lorg/mortbay/io/WriterOutputStream;

    invoke-interface {p3}, Ljavax/servlet/ServletResponse;->getWriter()Ljava/io/PrintWriter;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/mortbay/io/WriterOutputStream;-><init>(Ljava/io/Writer;)V

    goto :goto_3

    :goto_4
    instance-of p0, v1, Lorg/mortbay/jetty/HttpConnection$Output;

    if-eqz p0, :cond_d

    check-cast v1, Lorg/mortbay/jetty/HttpConnection$Output;

    invoke-virtual {v0}, Lorg/mortbay/resource/Resource;->getInputStream()Ljava/io/InputStream;

    move-result-object p0

    invoke-virtual {v1, p0}, Lorg/mortbay/jetty/HttpConnection$Output;->sendContent(Ljava/lang/Object;)V

    goto :goto_5

    :cond_d
    const-wide/16 v2, 0x0

    invoke-virtual {v0}, Lorg/mortbay/resource/Resource;->length()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Lorg/mortbay/resource/Resource;->writeTo(Ljava/io/OutputStream;JJ)V

    :cond_e
    :goto_5
    return-void
.end method

.method public isAliases()Z
    .locals 0

    iget-boolean p0, p0, Lorg/mortbay/jetty/handler/ResourceHandler;->j:Z

    return p0
.end method

.method public setAliases(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/mortbay/jetty/handler/ResourceHandler;->j:Z

    return-void
.end method

.method public setBaseResource(Lorg/mortbay/resource/Resource;)V
    .locals 0

    iput-object p1, p0, Lorg/mortbay/jetty/handler/ResourceHandler;->f:Lorg/mortbay/resource/Resource;

    return-void
.end method

.method public setCacheControl(Ljava/lang/String;)V
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/mortbay/io/ByteArrayBuffer;

    invoke-direct {v0, p1}, Lorg/mortbay/io/ByteArrayBuffer;-><init>(Ljava/lang/String;)V

    move-object p1, v0

    :goto_0
    iput-object p1, p0, Lorg/mortbay/jetty/handler/ResourceHandler;->i:Lorg/mortbay/io/ByteArrayBuffer;

    return-void
.end method

.method public setMimeTypes(Lorg/mortbay/jetty/MimeTypes;)V
    .locals 0

    iput-object p1, p0, Lorg/mortbay/jetty/handler/ResourceHandler;->h:Lorg/mortbay/jetty/MimeTypes;

    return-void
.end method

.method public setResourceBase(Ljava/lang/String;)V
    .locals 1

    :try_start_0
    invoke-static {p1}, Lorg/mortbay/resource/Resource;->newResource(Ljava/lang/String;)Lorg/mortbay/resource/Resource;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/mortbay/jetty/handler/ResourceHandler;->setBaseResource(Lorg/mortbay/resource/Resource;)V
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

.method public setWelcomeFiles([Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/mortbay/jetty/handler/ResourceHandler;->g:[Ljava/lang/String;

    return-void
.end method
