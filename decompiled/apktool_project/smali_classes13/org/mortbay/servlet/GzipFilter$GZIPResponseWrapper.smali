.class public Lorg/mortbay/servlet/GzipFilter$GZIPResponseWrapper;
.super Ljavax/servlet/http/HttpServletResponseWrapper;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mortbay/servlet/GzipFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GZIPResponseWrapper"
.end annotation


# instance fields
.field public b:Ljavax/servlet/http/HttpServletRequest;

.field public c:Z

.field public d:Ljava/io/PrintWriter;

.field public e:Lorg/mortbay/servlet/GzipFilter$GzipStream;

.field public f:J

.field public final synthetic g:Lorg/mortbay/servlet/GzipFilter;


# direct methods
.method public constructor <init>(Lorg/mortbay/servlet/GzipFilter;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V
    .locals 2

    iput-object p1, p0, Lorg/mortbay/servlet/GzipFilter$GZIPResponseWrapper;->g:Lorg/mortbay/servlet/GzipFilter;

    invoke-direct {p0, p3}, Ljavax/servlet/http/HttpServletResponseWrapper;-><init>(Ljavax/servlet/http/HttpServletResponse;)V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/mortbay/servlet/GzipFilter$GZIPResponseWrapper;->f:J

    iput-object p2, p0, Lorg/mortbay/servlet/GzipFilter$GZIPResponseWrapper;->b:Ljavax/servlet/http/HttpServletRequest;

    return-void
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "content-length"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1

    iput-wide p1, p0, Lorg/mortbay/servlet/GzipFilter$GZIPResponseWrapper;->f:J

    iget-object p0, p0, Lorg/mortbay/servlet/GzipFilter$GZIPResponseWrapper;->e:Lorg/mortbay/servlet/GzipFilter$GzipStream;

    if-eqz p0, :cond_3

    invoke-virtual {p0, p1, p2}, Lorg/mortbay/servlet/GzipFilter$GzipStream;->setContentLength(J)V

    goto :goto_0

    :cond_0
    const-string v0, "content-type"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p2}, Lorg/mortbay/servlet/GzipFilter$GZIPResponseWrapper;->setContentType(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "content-encoding"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-super {p0, p1, p2}, Ljavax/servlet/http/HttpServletResponseWrapper;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljavax/servlet/ServletResponseWrapper;->isCommitted()Z

    move-result p1

    if-nez p1, :cond_3

    invoke-virtual {p0}, Lorg/mortbay/servlet/GzipFilter$GZIPResponseWrapper;->c()V

    goto :goto_0

    :cond_2
    invoke-super {p0, p1, p2}, Ljavax/servlet/http/HttpServletResponseWrapper;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public b()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/mortbay/servlet/GzipFilter$GZIPResponseWrapper;->d:Ljava/io/PrintWriter;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/mortbay/servlet/GzipFilter$GZIPResponseWrapper;->e:Lorg/mortbay/servlet/GzipFilter$GzipStream;

    iget-boolean v1, v1, Lorg/mortbay/servlet/GzipFilter$GzipStream;->_closed:Z

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    :cond_0
    iget-object p0, p0, Lorg/mortbay/servlet/GzipFilter$GZIPResponseWrapper;->e:Lorg/mortbay/servlet/GzipFilter$GzipStream;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lorg/mortbay/servlet/GzipFilter$GzipStream;->finish()V

    :cond_1
    return-void
.end method

.method public c()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/mortbay/servlet/GzipFilter$GZIPResponseWrapper;->c:Z

    iget-object p0, p0, Lorg/mortbay/servlet/GzipFilter$GZIPResponseWrapper;->e:Lorg/mortbay/servlet/GzipFilter$GzipStream;

    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lorg/mortbay/servlet/GzipFilter$GzipStream;->doNotGzip()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :cond_0
    :goto_0
    return-void
.end method

.method public flushBuffer()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/mortbay/servlet/GzipFilter$GZIPResponseWrapper;->d:Ljava/io/PrintWriter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    :cond_0
    iget-object v0, p0, Lorg/mortbay/servlet/GzipFilter$GZIPResponseWrapper;->e:Lorg/mortbay/servlet/GzipFilter$GzipStream;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/mortbay/servlet/GzipFilter$GzipStream;->finish()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ljavax/servlet/ServletResponseWrapper;->getResponse()Ljavax/servlet/ServletResponse;

    move-result-object p0

    invoke-interface {p0}, Ljavax/servlet/ServletResponse;->flushBuffer()V

    :goto_0
    return-void
.end method

.method public getOutputStream()Ljavax/servlet/ServletOutputStream;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/mortbay/servlet/GzipFilter$GZIPResponseWrapper;->e:Lorg/mortbay/servlet/GzipFilter$GzipStream;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Ljavax/servlet/ServletResponseWrapper;->getResponse()Ljavax/servlet/ServletResponse;

    move-result-object v0

    invoke-interface {v0}, Ljavax/servlet/ServletResponse;->isCommitted()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/mortbay/servlet/GzipFilter$GZIPResponseWrapper;->c:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lorg/mortbay/servlet/GzipFilter$GZIPResponseWrapper;->b:Ljavax/servlet/http/HttpServletRequest;

    invoke-virtual {p0}, Ljavax/servlet/ServletResponseWrapper;->getResponse()Ljavax/servlet/ServletResponse;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljavax/servlet/http/HttpServletResponse;

    iget-wide v4, p0, Lorg/mortbay/servlet/GzipFilter$GZIPResponseWrapper;->f:J

    iget-object v0, p0, Lorg/mortbay/servlet/GzipFilter$GZIPResponseWrapper;->g:Lorg/mortbay/servlet/GzipFilter;

    iget v6, v0, Lorg/mortbay/servlet/GzipFilter;->_bufferSize:I

    iget v7, v0, Lorg/mortbay/servlet/GzipFilter;->_minGzipSize:I

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lorg/mortbay/servlet/GzipFilter$GZIPResponseWrapper;->newGzipStream(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;JII)Lorg/mortbay/servlet/GzipFilter$GzipStream;

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/servlet/GzipFilter$GZIPResponseWrapper;->e:Lorg/mortbay/servlet/GzipFilter$GzipStream;

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {p0}, Ljavax/servlet/ServletResponseWrapper;->getResponse()Ljavax/servlet/ServletResponse;

    move-result-object p0

    invoke-interface {p0}, Ljavax/servlet/ServletResponse;->getOutputStream()Ljavax/servlet/ServletOutputStream;

    move-result-object p0

    return-object p0

    :cond_2
    iget-object v0, p0, Lorg/mortbay/servlet/GzipFilter$GZIPResponseWrapper;->d:Ljava/io/PrintWriter;

    if-nez v0, :cond_3

    :goto_1
    iget-object p0, p0, Lorg/mortbay/servlet/GzipFilter$GZIPResponseWrapper;->e:Lorg/mortbay/servlet/GzipFilter$GzipStream;

    return-object p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "getWriter() called"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getWriter()Ljava/io/PrintWriter;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/mortbay/servlet/GzipFilter$GZIPResponseWrapper;->d:Ljava/io/PrintWriter;

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/mortbay/servlet/GzipFilter$GZIPResponseWrapper;->e:Lorg/mortbay/servlet/GzipFilter$GzipStream;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Ljavax/servlet/ServletResponseWrapper;->getResponse()Ljavax/servlet/ServletResponse;

    move-result-object v0

    invoke-interface {v0}, Ljavax/servlet/ServletResponse;->isCommitted()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/mortbay/servlet/GzipFilter$GZIPResponseWrapper;->c:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lorg/mortbay/servlet/GzipFilter$GZIPResponseWrapper;->b:Ljavax/servlet/http/HttpServletRequest;

    invoke-virtual {p0}, Ljavax/servlet/ServletResponseWrapper;->getResponse()Ljavax/servlet/ServletResponse;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljavax/servlet/http/HttpServletResponse;

    iget-wide v4, p0, Lorg/mortbay/servlet/GzipFilter$GZIPResponseWrapper;->f:J

    iget-object v0, p0, Lorg/mortbay/servlet/GzipFilter$GZIPResponseWrapper;->g:Lorg/mortbay/servlet/GzipFilter;

    iget v6, v0, Lorg/mortbay/servlet/GzipFilter;->_bufferSize:I

    iget v7, v0, Lorg/mortbay/servlet/GzipFilter;->_minGzipSize:I

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lorg/mortbay/servlet/GzipFilter$GZIPResponseWrapper;->newGzipStream(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;JII)Lorg/mortbay/servlet/GzipFilter$GzipStream;

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/servlet/GzipFilter$GZIPResponseWrapper;->e:Lorg/mortbay/servlet/GzipFilter$GzipStream;

    iget-object v1, p0, Lorg/mortbay/servlet/GzipFilter$GZIPResponseWrapper;->g:Lorg/mortbay/servlet/GzipFilter;

    invoke-virtual {p0}, Ljavax/servlet/ServletResponseWrapper;->getCharacterEncoding()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/mortbay/servlet/GzipFilter;->newWriter(Ljava/io/OutputStream;Ljava/lang/String;)Ljava/io/PrintWriter;

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/servlet/GzipFilter$GZIPResponseWrapper;->d:Ljava/io/PrintWriter;

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {p0}, Ljavax/servlet/ServletResponseWrapper;->getResponse()Ljavax/servlet/ServletResponse;

    move-result-object p0

    invoke-interface {p0}, Ljavax/servlet/ServletResponse;->getWriter()Ljava/io/PrintWriter;

    move-result-object p0

    return-object p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "getOutputStream() called"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_1
    iget-object p0, p0, Lorg/mortbay/servlet/GzipFilter$GZIPResponseWrapper;->d:Ljava/io/PrintWriter;

    return-object p0
.end method

.method public newGzipStream(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;JII)Lorg/mortbay/servlet/GzipFilter$GzipStream;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance p0, Lorg/mortbay/servlet/GzipFilter$GzipStream;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lorg/mortbay/servlet/GzipFilter$GzipStream;-><init>(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;JII)V

    return-object p0
.end method

.method public reset()V
    .locals 2

    invoke-super {p0}, Ljavax/servlet/ServletResponseWrapper;->reset()V

    iget-object v0, p0, Lorg/mortbay/servlet/GzipFilter$GZIPResponseWrapper;->e:Lorg/mortbay/servlet/GzipFilter$GzipStream;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/mortbay/servlet/GzipFilter$GzipStream;->resetBuffer()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/mortbay/servlet/GzipFilter$GZIPResponseWrapper;->d:Ljava/io/PrintWriter;

    iput-object v0, p0, Lorg/mortbay/servlet/GzipFilter$GZIPResponseWrapper;->e:Lorg/mortbay/servlet/GzipFilter$GzipStream;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/mortbay/servlet/GzipFilter$GZIPResponseWrapper;->c:Z

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/mortbay/servlet/GzipFilter$GZIPResponseWrapper;->f:J

    return-void
.end method

.method public resetBuffer()V
    .locals 1

    invoke-super {p0}, Ljavax/servlet/ServletResponseWrapper;->resetBuffer()V

    iget-object v0, p0, Lorg/mortbay/servlet/GzipFilter$GZIPResponseWrapper;->e:Lorg/mortbay/servlet/GzipFilter$GzipStream;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/mortbay/servlet/GzipFilter$GzipStream;->resetBuffer()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/mortbay/servlet/GzipFilter$GZIPResponseWrapper;->d:Ljava/io/PrintWriter;

    iput-object v0, p0, Lorg/mortbay/servlet/GzipFilter$GZIPResponseWrapper;->e:Lorg/mortbay/servlet/GzipFilter$GzipStream;

    return-void
.end method

.method public sendError(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    invoke-virtual {p0}, Lorg/mortbay/servlet/GzipFilter$GZIPResponseWrapper;->resetBuffer()V

    .line 4
    invoke-super {p0, p1}, Ljavax/servlet/http/HttpServletResponseWrapper;->sendError(I)V

    return-void
.end method

.method public sendError(ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/mortbay/servlet/GzipFilter$GZIPResponseWrapper;->resetBuffer()V

    .line 2
    invoke-super {p0, p1, p2}, Ljavax/servlet/http/HttpServletResponseWrapper;->sendError(ILjava/lang/String;)V

    return-void
.end method

.method public sendRedirect(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/mortbay/servlet/GzipFilter$GZIPResponseWrapper;->resetBuffer()V

    invoke-super {p0, p1}, Ljavax/servlet/http/HttpServletResponseWrapper;->sendRedirect(Ljava/lang/String;)V

    return-void
.end method

.method public setContentLength(I)V
    .locals 2

    int-to-long v0, p1

    iput-wide v0, p0, Lorg/mortbay/servlet/GzipFilter$GZIPResponseWrapper;->f:J

    iget-object p0, p0, Lorg/mortbay/servlet/GzipFilter$GZIPResponseWrapper;->e:Lorg/mortbay/servlet/GzipFilter$GzipStream;

    if-eqz p0, :cond_0

    invoke-virtual {p0, v0, v1}, Lorg/mortbay/servlet/GzipFilter$GzipStream;->setContentLength(J)V

    :cond_0
    return-void
.end method

.method public setContentType(Ljava/lang/String;)V
    .locals 2

    invoke-super {p0, p1}, Ljavax/servlet/ServletResponseWrapper;->setContentType(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const-string v0, ";"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_0
    iget-object v0, p0, Lorg/mortbay/servlet/GzipFilter$GZIPResponseWrapper;->e:Lorg/mortbay/servlet/GzipFilter$GzipStream;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lorg/mortbay/servlet/GzipFilter$GzipStream;->_out:Ljava/io/OutputStream;

    if-nez v0, :cond_4

    :cond_1
    iget-object v0, p0, Lorg/mortbay/servlet/GzipFilter$GZIPResponseWrapper;->g:Lorg/mortbay/servlet/GzipFilter;

    iget-object v0, v0, Lorg/mortbay/servlet/GzipFilter;->_mimeTypes:Ljava/util/Set;

    if-nez v0, :cond_2

    const-string v0, "application/gzip"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    iget-object v0, p0, Lorg/mortbay/servlet/GzipFilter$GZIPResponseWrapper;->g:Lorg/mortbay/servlet/GzipFilter;

    iget-object v0, v0, Lorg/mortbay/servlet/GzipFilter;->_mimeTypes:Ljava/util/Set;

    if-eqz v0, :cond_4

    if-eqz p1, :cond_3

    invoke-static {p1}, Lorg/mortbay/util/StringUtil;->asciiToLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    :cond_3
    invoke-virtual {p0}, Lorg/mortbay/servlet/GzipFilter$GZIPResponseWrapper;->c()V

    :cond_4
    return-void
.end method

.method public setHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "content-length"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1

    iput-wide p1, p0, Lorg/mortbay/servlet/GzipFilter$GZIPResponseWrapper;->f:J

    iget-object p0, p0, Lorg/mortbay/servlet/GzipFilter$GZIPResponseWrapper;->e:Lorg/mortbay/servlet/GzipFilter$GzipStream;

    if-eqz p0, :cond_3

    invoke-virtual {p0, p1, p2}, Lorg/mortbay/servlet/GzipFilter$GzipStream;->setContentLength(J)V

    goto :goto_0

    :cond_0
    const-string v0, "content-type"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p2}, Lorg/mortbay/servlet/GzipFilter$GZIPResponseWrapper;->setContentType(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "content-encoding"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-super {p0, p1, p2}, Ljavax/servlet/http/HttpServletResponseWrapper;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljavax/servlet/ServletResponseWrapper;->isCommitted()Z

    move-result p1

    if-nez p1, :cond_3

    invoke-virtual {p0}, Lorg/mortbay/servlet/GzipFilter$GZIPResponseWrapper;->c()V

    goto :goto_0

    :cond_2
    invoke-super {p0, p1, p2}, Ljavax/servlet/http/HttpServletResponseWrapper;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public setIntHeader(Ljava/lang/String;I)V
    .locals 1

    const-string v0, "content-length"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    int-to-long p1, p2

    iput-wide p1, p0, Lorg/mortbay/servlet/GzipFilter$GZIPResponseWrapper;->f:J

    iget-object p0, p0, Lorg/mortbay/servlet/GzipFilter$GZIPResponseWrapper;->e:Lorg/mortbay/servlet/GzipFilter$GzipStream;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1, p2}, Lorg/mortbay/servlet/GzipFilter$GzipStream;->setContentLength(J)V

    goto :goto_0

    :cond_0
    invoke-super {p0, p1, p2}, Ljavax/servlet/http/HttpServletResponseWrapper;->setIntHeader(Ljava/lang/String;I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setStatus(I)V
    .locals 1

    .line 3
    invoke-super {p0, p1}, Ljavax/servlet/http/HttpServletResponseWrapper;->setStatus(I)V

    const/16 v0, 0xc8

    if-lt p1, v0, :cond_0

    const/16 v0, 0x12c

    if-lt p1, v0, :cond_1

    .line 4
    :cond_0
    invoke-virtual {p0}, Lorg/mortbay/servlet/GzipFilter$GZIPResponseWrapper;->c()V

    :cond_1
    return-void
.end method

.method public setStatus(ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Ljavax/servlet/http/HttpServletResponseWrapper;->setStatus(ILjava/lang/String;)V

    const/16 p2, 0xc8

    if-lt p1, p2, :cond_0

    const/16 p2, 0x12c

    if-lt p1, p2, :cond_1

    .line 2
    :cond_0
    invoke-virtual {p0}, Lorg/mortbay/servlet/GzipFilter$GZIPResponseWrapper;->c()V

    :cond_1
    return-void
.end method
