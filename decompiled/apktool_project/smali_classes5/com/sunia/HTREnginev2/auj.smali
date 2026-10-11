.class public Lcom/sunia/HTREnginev2/auj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljavax/servlet/http/HttpServletResponse;


# instance fields
.field public a:Ljavax/servlet/http/HttpServletResponse;

.field public b:Lcom/sunia/HTREnginev2/ztj;

.field public c:Ljava/io/PrintWriter;

.field public d:Z


# direct methods
.method public constructor <init>(Ljavax/servlet/http/HttpServletResponse;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/auj;->a:Ljavax/servlet/http/HttpServletResponse;

    new-instance p1, Lcom/sunia/HTREnginev2/ztj;

    invoke-direct {p1}, Lcom/sunia/HTREnginev2/ztj;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/auj;->b:Lcom/sunia/HTREnginev2/ztj;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-boolean v0, p0, Lcom/sunia/HTREnginev2/auj;->d:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sunia/HTREnginev2/auj;->a:Ljavax/servlet/http/HttpServletResponse;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/auj;->b:Lcom/sunia/HTREnginev2/ztj;

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/ztj;->f()I

    move-result p0

    invoke-interface {v0, p0}, Ljavax/servlet/ServletResponse;->setContentLength(I)V

    :cond_0
    return-void
.end method

.method public addCookie(Ljavax/servlet/http/Cookie;)V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/auj;->a:Ljavax/servlet/http/HttpServletResponse;

    invoke-interface {p0, p1}, Ljavax/servlet/http/HttpServletResponse;->addCookie(Ljavax/servlet/http/Cookie;)V

    return-void
.end method

.method public addDateHeader(Ljava/lang/String;J)V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/auj;->a:Ljavax/servlet/http/HttpServletResponse;

    invoke-interface {p0, p1, p2, p3}, Ljavax/servlet/http/HttpServletResponse;->addDateHeader(Ljava/lang/String;J)V

    return-void
.end method

.method public addHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/auj;->a:Ljavax/servlet/http/HttpServletResponse;

    invoke-interface {p0, p1, p2}, Ljavax/servlet/http/HttpServletResponse;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public addIntHeader(Ljava/lang/String;I)V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/auj;->a:Ljavax/servlet/http/HttpServletResponse;

    invoke-interface {p0, p1, p2}, Ljavax/servlet/http/HttpServletResponse;->addIntHeader(Ljava/lang/String;I)V

    return-void
.end method

.method public containsHeader(Ljava/lang/String;)Z
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/auj;->a:Ljavax/servlet/http/HttpServletResponse;

    invoke-interface {p0, p1}, Ljavax/servlet/http/HttpServletResponse;->containsHeader(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public encodeRedirectURL(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/auj;->a:Ljavax/servlet/http/HttpServletResponse;

    invoke-interface {p0, p1}, Ljavax/servlet/http/HttpServletResponse;->encodeRedirectURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public encodeRedirectUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/auj;->encodeRedirectURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public encodeURL(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/auj;->a:Ljavax/servlet/http/HttpServletResponse;

    invoke-interface {p0, p1}, Ljavax/servlet/http/HttpServletResponse;->encodeURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public encodeUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/auj;->encodeURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public flushBuffer()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Lcom/sunia/HTREnginev2/auj;->a:Ljavax/servlet/http/HttpServletResponse;

    invoke-interface {p0}, Ljavax/servlet/ServletResponse;->flushBuffer()V

    return-void
.end method

.method public getBufferSize()I
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/auj;->a:Ljavax/servlet/http/HttpServletResponse;

    invoke-interface {p0}, Ljavax/servlet/ServletResponse;->getBufferSize()I

    move-result p0

    return p0
.end method

.method public getCharacterEncoding()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/auj;->a:Ljavax/servlet/http/HttpServletResponse;

    invoke-interface {p0}, Ljavax/servlet/ServletResponse;->getCharacterEncoding()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/auj;->a:Ljavax/servlet/http/HttpServletResponse;

    invoke-interface {p0}, Ljavax/servlet/ServletResponse;->getContentType()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getLocale()Ljava/util/Locale;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/auj;->a:Ljavax/servlet/http/HttpServletResponse;

    invoke-interface {p0}, Ljavax/servlet/ServletResponse;->getLocale()Ljava/util/Locale;

    move-result-object p0

    return-object p0
.end method

.method public getOutputStream()Ljavax/servlet/ServletOutputStream;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Lcom/sunia/HTREnginev2/auj;->b:Lcom/sunia/HTREnginev2/ztj;

    return-object p0
.end method

.method public getWriter()Ljava/io/PrintWriter;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sunia/HTREnginev2/auj;->c:Ljava/io/PrintWriter;

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/OutputStreamWriter;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/auj;->b:Lcom/sunia/HTREnginev2/ztj;

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/auj;->getCharacterEncoding()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    iput-object v1, p0, Lcom/sunia/HTREnginev2/auj;->c:Ljava/io/PrintWriter;

    :cond_0
    iget-object p0, p0, Lcom/sunia/HTREnginev2/auj;->c:Ljava/io/PrintWriter;

    return-object p0
.end method

.method public isCommitted()Z
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/auj;->a:Ljavax/servlet/http/HttpServletResponse;

    invoke-interface {p0}, Ljavax/servlet/ServletResponse;->isCommitted()Z

    move-result p0

    return p0
.end method

.method public reset()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    iget-object p0, p0, Lcom/sunia/HTREnginev2/auj;->a:Ljavax/servlet/http/HttpServletResponse;

    invoke-interface {p0}, Ljavax/servlet/ServletResponse;->reset()V

    return-void
.end method

.method public resetBuffer()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    iget-object p0, p0, Lcom/sunia/HTREnginev2/auj;->a:Ljavax/servlet/http/HttpServletResponse;

    invoke-interface {p0}, Ljavax/servlet/ServletResponse;->resetBuffer()V

    return-void
.end method

.method public sendError(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    iget-object p0, p0, Lcom/sunia/HTREnginev2/auj;->a:Ljavax/servlet/http/HttpServletResponse;

    invoke-interface {p0, p1}, Ljavax/servlet/http/HttpServletResponse;->sendError(I)V

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
    iget-object p0, p0, Lcom/sunia/HTREnginev2/auj;->a:Ljavax/servlet/http/HttpServletResponse;

    invoke-interface {p0, p1, p2}, Ljavax/servlet/http/HttpServletResponse;->sendError(ILjava/lang/String;)V

    return-void
.end method

.method public sendRedirect(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Lcom/sunia/HTREnginev2/auj;->a:Ljavax/servlet/http/HttpServletResponse;

    invoke-interface {p0, p1}, Ljavax/servlet/http/HttpServletResponse;->sendRedirect(Ljava/lang/String;)V

    return-void
.end method

.method public setBufferSize(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    iget-object p0, p0, Lcom/sunia/HTREnginev2/auj;->a:Ljavax/servlet/http/HttpServletResponse;

    invoke-interface {p0, p1}, Ljavax/servlet/ServletResponse;->setBufferSize(I)V

    return-void
.end method

.method public setCharacterEncoding(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/auj;->a:Ljavax/servlet/http/HttpServletResponse;

    invoke-interface {p0, p1}, Ljavax/servlet/ServletResponse;->setCharacterEncoding(Ljava/lang/String;)V

    return-void
.end method

.method public setContentLength(I)V
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/auj;->a:Ljavax/servlet/http/HttpServletResponse;

    invoke-interface {v0, p1}, Ljavax/servlet/ServletResponse;->setContentLength(I)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/sunia/HTREnginev2/auj;->d:Z

    return-void
.end method

.method public setContentType(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/auj;->a:Ljavax/servlet/http/HttpServletResponse;

    invoke-interface {p0, p1}, Ljavax/servlet/ServletResponse;->setContentType(Ljava/lang/String;)V

    return-void
.end method

.method public setDateHeader(Ljava/lang/String;J)V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/auj;->a:Ljavax/servlet/http/HttpServletResponse;

    invoke-interface {p0, p1, p2, p3}, Ljavax/servlet/http/HttpServletResponse;->setDateHeader(Ljava/lang/String;J)V

    return-void
.end method

.method public setHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/auj;->a:Ljavax/servlet/http/HttpServletResponse;

    invoke-interface {p0, p1, p2}, Ljavax/servlet/http/HttpServletResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setIntHeader(Ljava/lang/String;I)V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/auj;->a:Ljavax/servlet/http/HttpServletResponse;

    invoke-interface {p0, p1, p2}, Ljavax/servlet/http/HttpServletResponse;->setIntHeader(Ljava/lang/String;I)V

    return-void
.end method

.method public setLocale(Ljava/util/Locale;)V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/auj;->a:Ljavax/servlet/http/HttpServletResponse;

    invoke-interface {p0, p1}, Ljavax/servlet/ServletResponse;->setLocale(Ljava/util/Locale;)V

    return-void
.end method

.method public setStatus(I)V
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/sunia/HTREnginev2/auj;->a:Ljavax/servlet/http/HttpServletResponse;

    invoke-interface {p0, p1}, Ljavax/servlet/http/HttpServletResponse;->setStatus(I)V

    return-void
.end method

.method public setStatus(ILjava/lang/String;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/sunia/HTREnginev2/auj;->a:Ljavax/servlet/http/HttpServletResponse;

    invoke-interface {p0, p1, p2}, Ljavax/servlet/http/HttpServletResponse;->setStatus(ILjava/lang/String;)V

    return-void
.end method
