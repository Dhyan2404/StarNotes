.class public Lorg/mortbay/servlet/ProxyServlet;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljavax/servlet/Servlet;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mortbay/servlet/ProxyServlet$Transparent;
    }
.end annotation


# instance fields
.field protected _DontProxyHeaders:Ljava/util/HashSet;

.field protected _config:Ljavax/servlet/ServletConfig;

.field protected _context:Ljavax/servlet/ServletContext;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/mortbay/servlet/ProxyServlet;->_DontProxyHeaders:Ljava/util/HashSet;

    const-string v1, "proxy-connection"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lorg/mortbay/servlet/ProxyServlet;->_DontProxyHeaders:Ljava/util/HashSet;

    const-string v1, "connection"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lorg/mortbay/servlet/ProxyServlet;->_DontProxyHeaders:Ljava/util/HashSet;

    const-string v1, "keep-alive"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lorg/mortbay/servlet/ProxyServlet;->_DontProxyHeaders:Ljava/util/HashSet;

    const-string v1, "transfer-encoding"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lorg/mortbay/servlet/ProxyServlet;->_DontProxyHeaders:Ljava/util/HashSet;

    const-string v1, "te"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lorg/mortbay/servlet/ProxyServlet;->_DontProxyHeaders:Ljava/util/HashSet;

    const-string v1, "trailer"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lorg/mortbay/servlet/ProxyServlet;->_DontProxyHeaders:Ljava/util/HashSet;

    const-string v1, "proxy-authorization"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lorg/mortbay/servlet/ProxyServlet;->_DontProxyHeaders:Ljava/util/HashSet;

    const-string v1, "proxy-authenticate"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lorg/mortbay/servlet/ProxyServlet;->_DontProxyHeaders:Ljava/util/HashSet;

    const-string v0, "upgrade"

    invoke-virtual {p0, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 0

    return-void
.end method

.method public getServletConfig()Ljavax/servlet/ServletConfig;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/servlet/ProxyServlet;->_config:Ljavax/servlet/ServletConfig;

    return-object p0
.end method

.method public getServletInfo()Ljava/lang/String;
    .locals 0

    const-string p0, "Proxy Servlet"

    return-object p0
.end method

.method public handleConnect(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1}, Ljavax/servlet/http/HttpServletRequest;->getRequestURI()Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x3a

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_0

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x2f

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-lez v2, :cond_1

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string v1, ""

    move-object p0, v1

    :cond_1
    :goto_0
    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-direct {v0, p0, v1}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-interface {p1}, Ljavax/servlet/ServletRequest;->getInputStream()Ljavax/servlet/ServletInputStream;

    move-result-object p0

    invoke-interface {p2}, Ljavax/servlet/ServletResponse;->getOutputStream()Ljavax/servlet/ServletOutputStream;

    move-result-object p1

    new-instance v1, Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v0

    invoke-direct {v1, v2, v0}, Ljava/net/Socket;-><init>(Ljava/net/InetAddress;I)V

    const/16 v0, 0xc8

    invoke-interface {p2, v0}, Ljavax/servlet/http/HttpServletResponse;->setStatus(I)V

    const-string v0, "Connection"

    const-string v2, "close"

    invoke-interface {p2, v0, v2}, Ljavax/servlet/http/HttpServletResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2}, Ljavax/servlet/ServletResponse;->flushBuffer()V

    invoke-virtual {v1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object p2

    invoke-static {p2, p1}, Lorg/mortbay/util/IO;->copyThread(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    invoke-virtual {v1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/mortbay/util/IO;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    return-void
.end method

.method public init(Ljavax/servlet/ServletConfig;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/servlet/ServletException;
        }
    .end annotation

    iput-object p1, p0, Lorg/mortbay/servlet/ProxyServlet;->_config:Ljavax/servlet/ServletConfig;

    invoke-interface {p1}, Ljavax/servlet/ServletConfig;->getServletContext()Ljavax/servlet/ServletContext;

    move-result-object p1

    iput-object p1, p0, Lorg/mortbay/servlet/ProxyServlet;->_context:Ljavax/servlet/ServletContext;

    return-void
.end method

.method public proxyHttpURL(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/net/URL;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    new-instance p0, Ljava/net/URL;

    invoke-direct {p0, p1, p2, p3, p4}, Ljava/net/URL;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    return-object p0
.end method

.method public service(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/servlet/ServletException;,
            Ljava/io/IOException;
        }
    .end annotation

    check-cast p1, Ljavax/servlet/http/HttpServletRequest;

    check-cast p2, Ljavax/servlet/http/HttpServletResponse;

    invoke-interface {p1}, Ljavax/servlet/http/HttpServletRequest;->getMethod()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CONNECT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lorg/mortbay/servlet/ProxyServlet;->handleConnect(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V

    goto/16 :goto_7

    :cond_0
    invoke-interface {p1}, Ljavax/servlet/http/HttpServletRequest;->getRequestURI()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Ljavax/servlet/http/HttpServletRequest;->getQueryString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "?"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-interface {p1}, Ljavax/servlet/http/HttpServletRequest;->getQueryString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    invoke-interface {p1}, Ljavax/servlet/ServletRequest;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Ljavax/servlet/ServletRequest;->getServerName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Ljavax/servlet/ServletRequest;->getServerPort()I

    move-result v3

    invoke-virtual {p0, v1, v2, v3, v0}, Lorg/mortbay/servlet/ProxyServlet;->proxyHttpURL(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/net/URLConnection;->setAllowUserInteraction(Z)V

    instance-of v2, v0, Ljava/net/HttpURLConnection;

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    move-object v2, v0

    check-cast v2, Ljava/net/HttpURLConnection;

    invoke-interface {p1}, Ljavax/servlet/http/HttpServletRequest;->getMethod()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    goto :goto_0

    :cond_2
    move-object v2, v3

    :goto_0
    const-string v4, "Connection"

    invoke-interface {p1, v4}, Ljavax/servlet/http/HttpServletRequest;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, "keep-alive"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "close"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    :cond_3
    move-object v4, v3

    :cond_4
    invoke-interface {p1}, Ljavax/servlet/http/HttpServletRequest;->getHeaderNames()Ljava/util/Enumeration;

    move-result-object v5

    move v6, v1

    move v7, v6

    :cond_5
    :goto_1
    invoke-interface {v5}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v8

    const-string v9, "X-Forwarded-For"

    const/4 v10, 0x1

    if-eqz v8, :cond_a

    invoke-interface {v5}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v11

    iget-object v12, p0, Lorg/mortbay/servlet/ProxyServlet;->_DontProxyHeaders:Ljava/util/HashSet;

    invoke-virtual {v12, v11}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    goto :goto_1

    :cond_6
    if-eqz v4, :cond_7

    invoke-virtual {v4, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v12

    if-ltz v12, :cond_7

    goto :goto_1

    :cond_7
    const-string v12, "content-type"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    move v7, v10

    :cond_8
    invoke-interface {p1, v8}, Ljavax/servlet/http/HttpServletRequest;->getHeaders(Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v10

    :cond_9
    :goto_2
    invoke-interface {v10}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-interface {v10}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    if-eqz v11, :cond_9

    invoke-virtual {v0, v8, v11}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    or-int/2addr v6, v11

    goto :goto_2

    :cond_a
    const-string v4, "Via"

    const-string v5, "1.1 (jetty)"

    invoke-virtual {v0, v4, v5}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v6, :cond_b

    invoke-interface {p1}, Ljavax/servlet/ServletRequest;->getRemoteAddr()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v9, v6}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "X-Forwarded-Proto"

    invoke-interface {p1}, Ljavax/servlet/ServletRequest;->getScheme()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v6, v8}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "X-Forwarded-Host"

    invoke-interface {p1}, Ljavax/servlet/ServletRequest;->getServerName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v6, v8}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "X-Forwarded-Server"

    invoke-interface {p1}, Ljavax/servlet/ServletRequest;->getLocalName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v6, v8}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    const-string v6, "Cache-Control"

    invoke-interface {p1, v6}, Ljavax/servlet/http/HttpServletRequest;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_d

    const-string v8, "no-cache"

    invoke-virtual {v6, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    if-gez v8, :cond_c

    const-string v8, "no-store"

    invoke-virtual {v6, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-ltz v6, :cond_d

    :cond_c
    invoke-virtual {v0, v1}, Ljava/net/URLConnection;->setUseCaches(Z)V

    :cond_d
    :try_start_0
    invoke-virtual {v0, v10}, Ljava/net/URLConnection;->setDoInput(Z)V

    invoke-interface {p1}, Ljavax/servlet/ServletRequest;->getInputStream()Ljavax/servlet/ServletInputStream;

    move-result-object p1

    if-eqz v7, :cond_e

    invoke-virtual {v0, v10}, Ljava/net/URLConnection;->setDoOutput(Z)V

    invoke-virtual {v0}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v6

    invoke-static {p1, v6}, Lorg/mortbay/util/IO;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    :cond_e
    invoke-virtual {v0}, Ljava/net/URLConnection;->connect()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    iget-object v6, p0, Lorg/mortbay/servlet/ProxyServlet;->_context:Ljavax/servlet/ServletContext;

    const-string v7, "proxy"

    invoke-interface {v6, v7, p1}, Ljavax/servlet/ServletContext;->log(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_3
    if-eqz v2, :cond_f

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object p1

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v6

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v7

    invoke-interface {p2, v6, v7}, Ljavax/servlet/http/HttpServletResponse;->setStatus(ILjava/lang/String;)V

    goto :goto_4

    :cond_f
    move-object p1, v3

    :goto_4
    if-nez p1, :cond_10

    :try_start_1
    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_5

    :catch_1
    move-exception p1

    iget-object v6, p0, Lorg/mortbay/servlet/ProxyServlet;->_context:Ljavax/servlet/ServletContext;

    const-string v7, "stream"

    invoke-interface {v6, v7, p1}, Ljavax/servlet/ServletContext;->log(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object p1

    :cond_10
    :goto_5
    const-string v2, "Date"

    invoke-interface {p2, v2, v3}, Ljavax/servlet/http/HttpServletResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Server"

    invoke-interface {p2, v2, v3}, Ljavax/servlet/http/HttpServletResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/net/URLConnection;->getHeaderFieldKey(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1}, Ljava/net/URLConnection;->getHeaderField(I)Ljava/lang/String;

    move-result-object v6

    :goto_6
    if-nez v2, :cond_13

    if-eqz v6, :cond_11

    goto :goto_8

    :cond_11
    invoke-interface {p2, v4, v5}, Ljavax/servlet/http/HttpServletResponse;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_12

    invoke-interface {p2}, Ljavax/servlet/ServletResponse;->getOutputStream()Ljavax/servlet/ServletOutputStream;

    move-result-object p0

    invoke-static {p1, p0}, Lorg/mortbay/util/IO;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    :cond_12
    :goto_7
    return-void

    :cond_13
    :goto_8
    if-eqz v2, :cond_14

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    goto :goto_9

    :cond_14
    move-object v7, v3

    :goto_9
    if-eqz v2, :cond_15

    if-eqz v6, :cond_15

    iget-object v8, p0, Lorg/mortbay/servlet/ProxyServlet;->_DontProxyHeaders:Ljava/util/HashSet;

    invoke-virtual {v8, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_15

    invoke-interface {p2, v2, v6}, Ljavax/servlet/http/HttpServletResponse;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_15
    add-int/2addr v1, v10

    invoke-virtual {v0, v1}, Ljava/net/URLConnection;->getHeaderFieldKey(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1}, Ljava/net/URLConnection;->getHeaderField(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_6
.end method
