.class public Lorg/mortbay/jetty/handler/DefaultHandler;
.super Lorg/mortbay/jetty/handler/AbstractHandler;
.source "SourceFile"


# static fields
.field public static synthetic h:Ljava/lang/Class;


# instance fields
.field public e:J

.field public f:[B

.field public g:Z


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Lorg/mortbay/jetty/handler/AbstractHandler;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    mul-long/2addr v0, v2

    iput-wide v0, p0, Lorg/mortbay/jetty/handler/DefaultHandler;->e:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/mortbay/jetty/handler/DefaultHandler;->g:Z

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v1, "org/mortbay/jetty/favicon.ico"

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lorg/mortbay/util/IO;->readBytes(Ljava/io/InputStream;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/jetty/handler/DefaultHandler;->f:[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lorg/mortbay/log/Log;->warn(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
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
.method public getServeIcon()Z
    .locals 0

    iget-boolean p0, p0, Lorg/mortbay/jetty/handler/DefaultHandler;->g:Z

    return p0
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
    invoke-interface {p3}, Ljavax/servlet/ServletResponse;->isCommitted()Z

    move-result p4

    if-nez p4, :cond_11

    invoke-virtual {p1}, Lorg/mortbay/jetty/Request;->isHandled()Z

    move-result p4

    if-eqz p4, :cond_1

    goto/16 :goto_7

    :cond_1
    const/4 p4, 0x1

    invoke-virtual {p1, p4}, Lorg/mortbay/jetty/Request;->setHandled(Z)V

    invoke-interface {p2}, Ljavax/servlet/http/HttpServletRequest;->getMethod()Ljava/lang/String;

    move-result-object p1

    iget-boolean v0, p0, Lorg/mortbay/jetty/handler/DefaultHandler;->g:Z

    const-string v1, "GET"

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/mortbay/jetty/handler/DefaultHandler;->f:[B

    if-eqz v0, :cond_3

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p2}, Ljavax/servlet/http/HttpServletRequest;->getRequestURI()Ljava/lang/String;

    move-result-object v0

    const-string v2, "/favicon.ico"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p1, "If-Modified-Since"

    invoke-interface {p2, p1}, Ljavax/servlet/http/HttpServletRequest;->getDateHeader(Ljava/lang/String;)J

    move-result-wide p1

    iget-wide v0, p0, Lorg/mortbay/jetty/handler/DefaultHandler;->e:J

    cmp-long p1, p1, v0

    if-nez p1, :cond_2

    const/16 p0, 0x130

    invoke-interface {p3, p0}, Ljavax/servlet/http/HttpServletResponse;->setStatus(I)V

    goto :goto_1

    :cond_2
    const/16 p1, 0xc8

    invoke-interface {p3, p1}, Ljavax/servlet/http/HttpServletResponse;->setStatus(I)V

    const-string p1, "image/x-icon"

    invoke-interface {p3, p1}, Ljavax/servlet/ServletResponse;->setContentType(Ljava/lang/String;)V

    iget-object p1, p0, Lorg/mortbay/jetty/handler/DefaultHandler;->f:[B

    array-length p1, p1

    invoke-interface {p3, p1}, Ljavax/servlet/ServletResponse;->setContentLength(I)V

    const-string p1, "Last-Modified"

    iget-wide v0, p0, Lorg/mortbay/jetty/handler/DefaultHandler;->e:J

    invoke-interface {p3, p1, v0, v1}, Ljavax/servlet/http/HttpServletResponse;->setDateHeader(Ljava/lang/String;J)V

    invoke-interface {p3}, Ljavax/servlet/ServletResponse;->getOutputStream()Ljavax/servlet/ServletOutputStream;

    move-result-object p1

    iget-object p0, p0, Lorg/mortbay/jetty/handler/DefaultHandler;->f:[B

    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write([B)V

    :goto_1
    return-void

    :cond_3
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/16 v0, 0x194

    if-eqz p1, :cond_10

    invoke-interface {p2}, Ljavax/servlet/http/HttpServletRequest;->getRequestURI()Ljava/lang/String;

    move-result-object p1

    const-string v1, "/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto/16 :goto_6

    :cond_4
    invoke-interface {p3, v0}, Ljavax/servlet/http/HttpServletResponse;->setStatus(I)V

    const-string p1, "text/html"

    invoke-interface {p3, p1}, Ljavax/servlet/ServletResponse;->setContentType(Ljava/lang/String;)V

    new-instance p1, Lorg/mortbay/util/ByteArrayISO8859Writer;

    const/16 v0, 0x5dc

    invoke-direct {p1, v0}, Lorg/mortbay/util/ByteArrayISO8859Writer;-><init>(I)V

    invoke-interface {p2}, Ljavax/servlet/http/HttpServletRequest;->getRequestURI()Ljava/lang/String;

    move-result-object v0

    const-string v2, "<"

    const-string v3, "&lt;"

    invoke-static {v0, v2, v3}, Lorg/mortbay/util/StringUtil;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, ">"

    const-string v3, "&gt;"

    invoke-static {v0, v2, v3}, Lorg/mortbay/util/StringUtil;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "<HTML>\n<HEAD>\n<TITLE>Error 404 - Not Found"

    invoke-virtual {p1, v0}, Lorg/mortbay/util/ByteArrayISO8859Writer;->write(Ljava/lang/String;)V

    const-string v0, "</TITLE>\n<BODY>\n<H2>Error 404 - Not Found.</H2>\n"

    invoke-virtual {p1, v0}, Lorg/mortbay/util/ByteArrayISO8859Writer;->write(Ljava/lang/String;)V

    const-string v0, "No context on this server matched or handled this request.<BR>"

    invoke-virtual {p1, v0}, Lorg/mortbay/util/ByteArrayISO8859Writer;->write(Ljava/lang/String;)V

    const-string v0, "Contexts known to this server are: <ul>"

    invoke-virtual {p1, v0}, Lorg/mortbay/util/ByteArrayISO8859Writer;->write(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/mortbay/jetty/handler/AbstractHandler;->getServer()Lorg/mortbay/jetty/Server;

    move-result-object p0

    if-nez p0, :cond_5

    const/4 p0, 0x0

    goto :goto_2

    :cond_5
    sget-object v0, Lorg/mortbay/jetty/handler/DefaultHandler;->h:Ljava/lang/Class;

    if-nez v0, :cond_6

    const-string v0, "org.mortbay.jetty.handler.ContextHandler"

    invoke-static {v0}, Lorg/mortbay/jetty/handler/DefaultHandler;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/mortbay/jetty/handler/DefaultHandler;->h:Ljava/lang/Class;

    :cond_6
    invoke-virtual {p0, v0}, Lorg/mortbay/jetty/handler/AbstractHandlerContainer;->getChildHandlersByClass(Ljava/lang/Class;)[Lorg/mortbay/jetty/Handler;

    move-result-object p0

    :goto_2
    const/4 v0, 0x0

    move v2, v0

    :goto_3
    if-eqz p0, :cond_e

    array-length v3, p0

    if-ge v2, v3, :cond_e

    aget-object v3, p0, v2

    check-cast v3, Lorg/mortbay/jetty/handler/ContextHandler;

    invoke-virtual {v3}, Lorg/mortbay/component/AbstractLifeCycle;->isRunning()Z

    move-result v4

    const-string v5, "&nbsp;@&nbsp;"

    const-string v6, "&nbsp;--->&nbsp;"

    const-string v7, ":"

    if-eqz v4, :cond_a

    const-string v4, "<li><a href=\""

    invoke-virtual {p1, v4}, Lorg/mortbay/util/ByteArrayISO8859Writer;->write(Ljava/lang/String;)V

    invoke-virtual {v3}, Lorg/mortbay/jetty/handler/ContextHandler;->getVirtualHosts()[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_7

    invoke-virtual {v3}, Lorg/mortbay/jetty/handler/ContextHandler;->getVirtualHosts()[Ljava/lang/String;

    move-result-object v4

    array-length v4, v4

    if-lez v4, :cond_7

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v8, "http://"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Lorg/mortbay/jetty/handler/ContextHandler;->getVirtualHosts()[Ljava/lang/String;

    move-result-object v8

    aget-object v8, v8, v0

    invoke-virtual {v4, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-interface {p2}, Ljavax/servlet/ServletRequest;->getLocalPort()I

    move-result v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lorg/mortbay/util/ByteArrayISO8859Writer;->write(Ljava/lang/String;)V

    :cond_7
    invoke-virtual {v3}, Lorg/mortbay/jetty/handler/ContextHandler;->getContextPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lorg/mortbay/util/ByteArrayISO8859Writer;->write(Ljava/lang/String;)V

    invoke-virtual {v3}, Lorg/mortbay/jetty/handler/ContextHandler;->getContextPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, p4, :cond_8

    invoke-virtual {v3}, Lorg/mortbay/jetty/handler/ContextHandler;->getContextPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-virtual {p1, v1}, Lorg/mortbay/util/ByteArrayISO8859Writer;->write(Ljava/lang/String;)V

    :cond_8
    const-string v4, "\">"

    invoke-virtual {p1, v4}, Lorg/mortbay/util/ByteArrayISO8859Writer;->write(Ljava/lang/String;)V

    invoke-virtual {v3}, Lorg/mortbay/jetty/handler/ContextHandler;->getContextPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lorg/mortbay/util/ByteArrayISO8859Writer;->write(Ljava/lang/String;)V

    invoke-virtual {v3}, Lorg/mortbay/jetty/handler/ContextHandler;->getVirtualHosts()[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_9

    invoke-virtual {v3}, Lorg/mortbay/jetty/handler/ContextHandler;->getVirtualHosts()[Ljava/lang/String;

    move-result-object v4

    array-length v4, v4

    if-lez v4, :cond_9

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Lorg/mortbay/jetty/handler/ContextHandler;->getVirtualHosts()[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-interface {p2}, Ljavax/servlet/ServletRequest;->getLocalPort()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lorg/mortbay/util/ByteArrayISO8859Writer;->write(Ljava/lang/String;)V

    :cond_9
    invoke-virtual {p1, v6}, Lorg/mortbay/util/ByteArrayISO8859Writer;->write(Ljava/lang/String;)V

    invoke-virtual {v3}, Lorg/mortbay/jetty/handler/ContextHandler;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lorg/mortbay/util/ByteArrayISO8859Writer;->write(Ljava/lang/String;)V

    const-string v3, "</a></li>\n"

    invoke-virtual {p1, v3}, Lorg/mortbay/util/ByteArrayISO8859Writer;->write(Ljava/lang/String;)V

    goto :goto_4

    :cond_a
    const-string v4, "<li>"

    invoke-virtual {p1, v4}, Lorg/mortbay/util/ByteArrayISO8859Writer;->write(Ljava/lang/String;)V

    invoke-virtual {v3}, Lorg/mortbay/jetty/handler/ContextHandler;->getContextPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lorg/mortbay/util/ByteArrayISO8859Writer;->write(Ljava/lang/String;)V

    invoke-virtual {v3}, Lorg/mortbay/jetty/handler/ContextHandler;->getVirtualHosts()[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_b

    invoke-virtual {v3}, Lorg/mortbay/jetty/handler/ContextHandler;->getVirtualHosts()[Ljava/lang/String;

    move-result-object v4

    array-length v4, v4

    if-lez v4, :cond_b

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Lorg/mortbay/jetty/handler/ContextHandler;->getVirtualHosts()[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-interface {p2}, Ljavax/servlet/ServletRequest;->getLocalPort()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lorg/mortbay/util/ByteArrayISO8859Writer;->write(Ljava/lang/String;)V

    :cond_b
    invoke-virtual {p1, v6}, Lorg/mortbay/util/ByteArrayISO8859Writer;->write(Ljava/lang/String;)V

    invoke-virtual {v3}, Lorg/mortbay/jetty/handler/ContextHandler;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lorg/mortbay/util/ByteArrayISO8859Writer;->write(Ljava/lang/String;)V

    invoke-virtual {v3}, Lorg/mortbay/component/AbstractLifeCycle;->isFailed()Z

    move-result v4

    if-eqz v4, :cond_c

    const-string v4, " [failed]"

    invoke-virtual {p1, v4}, Lorg/mortbay/util/ByteArrayISO8859Writer;->write(Ljava/lang/String;)V

    :cond_c
    invoke-virtual {v3}, Lorg/mortbay/component/AbstractLifeCycle;->isStopped()Z

    move-result v3

    if-eqz v3, :cond_d

    const-string v3, " [stopped]"

    invoke-virtual {p1, v3}, Lorg/mortbay/util/ByteArrayISO8859Writer;->write(Ljava/lang/String;)V

    :cond_d
    const-string v3, "</li>\n"

    invoke-virtual {p1, v3}, Lorg/mortbay/util/ByteArrayISO8859Writer;->write(Ljava/lang/String;)V

    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_3

    :cond_e
    :goto_5
    const/16 p0, 0xa

    if-ge v0, p0, :cond_f

    const-string p0, "\n<!-- Padding for IE                  -->"

    invoke-virtual {p1, p0}, Lorg/mortbay/util/ByteArrayISO8859Writer;->write(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_f
    const-string p0, "\n</BODY>\n</HTML>\n"

    invoke-virtual {p1, p0}, Lorg/mortbay/util/ByteArrayISO8859Writer;->write(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/mortbay/util/ByteArrayISO8859Writer;->flush()V

    invoke-virtual {p1}, Lorg/mortbay/util/ByteArrayISO8859Writer;->size()I

    move-result p0

    invoke-interface {p3, p0}, Ljavax/servlet/ServletResponse;->setContentLength(I)V

    invoke-interface {p3}, Ljavax/servlet/ServletResponse;->getOutputStream()Ljavax/servlet/ServletOutputStream;

    move-result-object p0

    invoke-virtual {p1, p0}, Lorg/mortbay/util/ByteArrayISO8859Writer;->writeTo(Ljava/io/OutputStream;)V

    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V

    return-void

    :cond_10
    :goto_6
    invoke-interface {p3, v0}, Ljavax/servlet/http/HttpServletResponse;->sendError(I)V

    :cond_11
    :goto_7
    return-void
.end method

.method public setServeIcon(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/mortbay/jetty/handler/DefaultHandler;->g:Z

    return-void
.end method
