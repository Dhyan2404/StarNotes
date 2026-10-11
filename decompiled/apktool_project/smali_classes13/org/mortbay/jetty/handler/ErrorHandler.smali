.class public Lorg/mortbay/jetty/handler/ErrorHandler;
.super Lorg/mortbay/jetty/handler/AbstractHandler;
.source "SourceFile"


# instance fields
.field public e:Z

.field public f:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/mortbay/jetty/handler/AbstractHandler;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/mortbay/jetty/handler/ErrorHandler;->e:Z

    const-string v0, "must-revalidate,no-cache,no-store"

    iput-object v0, p0, Lorg/mortbay/jetty/handler/ErrorHandler;->f:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCacheControl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/jetty/handler/ErrorHandler;->f:Ljava/lang/String;

    return-object p0
.end method

.method public handle(Ljava/lang/String;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lorg/mortbay/jetty/HttpConnection;->getCurrentConnection()Lorg/mortbay/jetty/HttpConnection;

    move-result-object p1

    invoke-virtual {p1}, Lorg/mortbay/jetty/HttpConnection;->getRequest()Lorg/mortbay/jetty/Request;

    move-result-object p4

    const/4 v0, 0x1

    invoke-virtual {p4, v0}, Lorg/mortbay/jetty/Request;->setHandled(Z)V

    invoke-interface {p2}, Ljavax/servlet/http/HttpServletRequest;->getMethod()Ljava/lang/String;

    move-result-object p4

    const-string v0, "GET"

    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "POST"

    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "HEAD"

    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_0

    return-void

    :cond_0
    const-string p4, "text/html; charset=iso-8859-1"

    invoke-interface {p3, p4}, Ljavax/servlet/ServletResponse;->setContentType(Ljava/lang/String;)V

    iget-object p4, p0, Lorg/mortbay/jetty/handler/ErrorHandler;->f:Ljava/lang/String;

    if-eqz p4, :cond_1

    const-string v0, "Cache-Control"

    invoke-interface {p3, v0, p4}, Ljavax/servlet/http/HttpServletResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    new-instance p4, Lorg/mortbay/util/ByteArrayISO8859Writer;

    const/16 v0, 0x1000

    invoke-direct {p4, v0}, Lorg/mortbay/util/ByteArrayISO8859Writer;-><init>(I)V

    invoke-virtual {p1}, Lorg/mortbay/jetty/HttpConnection;->getResponse()Lorg/mortbay/jetty/Response;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mortbay/jetty/Response;->getStatus()I

    move-result v0

    invoke-virtual {p1}, Lorg/mortbay/jetty/HttpConnection;->getResponse()Lorg/mortbay/jetty/Response;

    move-result-object p1

    invoke-virtual {p1}, Lorg/mortbay/jetty/Response;->getReason()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p2, p4, v0, p1}, Lorg/mortbay/jetty/handler/ErrorHandler;->handleErrorPage(Ljavax/servlet/http/HttpServletRequest;Ljava/io/Writer;ILjava/lang/String;)V

    invoke-virtual {p4}, Lorg/mortbay/util/ByteArrayISO8859Writer;->flush()V

    invoke-virtual {p4}, Lorg/mortbay/util/ByteArrayISO8859Writer;->size()I

    move-result p0

    invoke-interface {p3, p0}, Ljavax/servlet/ServletResponse;->setContentLength(I)V

    invoke-interface {p3}, Ljavax/servlet/ServletResponse;->getOutputStream()Ljavax/servlet/ServletOutputStream;

    move-result-object p0

    invoke-virtual {p4, p0}, Lorg/mortbay/util/ByteArrayISO8859Writer;->writeTo(Ljava/io/OutputStream;)V

    invoke-virtual {p4}, Lorg/mortbay/util/ByteArrayISO8859Writer;->destroy()V

    return-void
.end method

.method public handleErrorPage(Ljavax/servlet/http/HttpServletRequest;Ljava/io/Writer;ILjava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v5, p0, Lorg/mortbay/jetty/handler/ErrorHandler;->e:Z

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lorg/mortbay/jetty/handler/ErrorHandler;->writeErrorPage(Ljavax/servlet/http/HttpServletRequest;Ljava/io/Writer;ILjava/lang/String;Z)V

    return-void
.end method

.method public isShowStacks()Z
    .locals 0

    iget-boolean p0, p0, Lorg/mortbay/jetty/handler/ErrorHandler;->e:Z

    return p0
.end method

.method public setCacheControl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/mortbay/jetty/handler/ErrorHandler;->f:Ljava/lang/String;

    return-void
.end method

.method public setShowStacks(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/mortbay/jetty/handler/ErrorHandler;->e:Z

    return-void
.end method

.method public write(Ljava/io/Writer;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p2, :cond_0

    return-void

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p0, v0, :cond_5

    invoke-virtual {p2, p0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x26

    if-eq v0, v1, :cond_4

    const/16 v1, 0x3c

    if-eq v0, v1, :cond_3

    const/16 v1, 0x3e

    if-eq v0, v1, :cond_2

    invoke-static {v0}, Ljava/lang/Character;->isISOControl(C)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v1

    if-nez v1, :cond_1

    const/16 v0, 0x3f

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(I)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(I)V

    goto :goto_1

    :cond_2
    const-string v0, "&gt;"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const-string v0, "&lt;"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    const-string v0, "&amp;"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :goto_1
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method

.method public writeErrorPage(Ljavax/servlet/http/HttpServletRequest;Ljava/io/Writer;ILjava/lang/String;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p4, :cond_0

    invoke-static {p3}, Lorg/mortbay/jetty/AbstractGenerator;->getReason(I)Ljava/lang/String;

    move-result-object p4

    :cond_0
    move-object v4, p4

    const-string p4, "<html>\n<head>\n"

    invoke-virtual {p2, p4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2, p3, v4}, Lorg/mortbay/jetty/handler/ErrorHandler;->writeErrorPageHead(Ljavax/servlet/http/HttpServletRequest;Ljava/io/Writer;ILjava/lang/String;)V

    const-string p4, "</head>\n<body>"

    invoke-virtual {p2, p4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lorg/mortbay/jetty/handler/ErrorHandler;->writeErrorPageBody(Ljavax/servlet/http/HttpServletRequest;Ljava/io/Writer;ILjava/lang/String;Z)V

    const-string p0, "\n</body>\n</html>\n"

    invoke-virtual {p2, p0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-void
.end method

.method public writeErrorPageBody(Ljavax/servlet/http/HttpServletRequest;Ljava/io/Writer;ILjava/lang/String;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1}, Ljavax/servlet/http/HttpServletRequest;->getRequestURI()Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lorg/mortbay/jetty/handler/ErrorHandler;->writeErrorPageMessage(Ljavax/servlet/http/HttpServletRequest;Ljava/io/Writer;ILjava/lang/String;Ljava/lang/String;)V

    if-eqz p5, :cond_0

    invoke-virtual {p0, p1, p2}, Lorg/mortbay/jetty/handler/ErrorHandler;->writeErrorPageStacks(Ljavax/servlet/http/HttpServletRequest;Ljava/io/Writer;)V

    :cond_0
    const-string p0, "<hr /><i><small>Powered by Jetty://</small></i>"

    invoke-virtual {p2, p0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const/4 p0, 0x0

    :goto_0
    const/16 p1, 0x14

    if-ge p0, p1, :cond_1

    const-string p1, "<br/>                                                \n"

    invoke-virtual {p2, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public writeErrorPageHead(Ljavax/servlet/http/HttpServletRequest;Ljava/io/Writer;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string p1, "<meta http-equiv=\"Content-Type\" content=\"text/html; charset=ISO-8859-1\"/>\n"

    invoke-virtual {p2, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string p1, "<title>Error "

    invoke-virtual {p2, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const/16 p1, 0x20

    invoke-virtual {p2, p1}, Ljava/io/Writer;->write(I)V

    invoke-virtual {p0, p2, p4}, Lorg/mortbay/jetty/handler/ErrorHandler;->write(Ljava/io/Writer;Ljava/lang/String;)V

    const-string p0, "</title>\n"

    invoke-virtual {p2, p0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-void
.end method

.method public writeErrorPageMessage(Ljavax/servlet/http/HttpServletRequest;Ljava/io/Writer;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string p1, "<h2>HTTP ERROR "

    invoke-virtual {p2, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string p1, "</h2>\n<p>Problem accessing "

    invoke-virtual {p2, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {p0, p2, p5}, Lorg/mortbay/jetty/handler/ErrorHandler;->write(Ljava/io/Writer;Ljava/lang/String;)V

    const-string p1, ". Reason:\n<pre>    "

    invoke-virtual {p2, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {p0, p2, p4}, Lorg/mortbay/jetty/handler/ErrorHandler;->write(Ljava/io/Writer;Ljava/lang/String;)V

    const-string p0, "</pre></p>"

    invoke-virtual {p2, p0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-void
.end method

.method public writeErrorPageStacks(Ljavax/servlet/http/HttpServletRequest;Ljava/io/Writer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "javax.servlet.error.exception"

    invoke-interface {p1, v0}, Ljavax/servlet/ServletRequest;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Throwable;

    :goto_0
    if-eqz p1, :cond_0

    const-string v0, "<h3>Caused by:</h3><pre>"

    invoke-virtual {p2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p1, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    invoke-virtual {v0}, Ljava/io/StringWriter;->getBuffer()Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Lorg/mortbay/jetty/handler/ErrorHandler;->write(Ljava/io/Writer;Ljava/lang/String;)V

    const-string v0, "</pre>\n"

    invoke-virtual {p2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    goto :goto_0

    :cond_0
    return-void
.end method
