.class public Ljavax/servlet/http/HttpServletResponseWrapper;
.super Ljavax/servlet/ServletResponseWrapper;
.source "SourceFile"

# interfaces
.implements Ljavax/servlet/http/HttpServletResponse;


# direct methods
.method public constructor <init>(Ljavax/servlet/http/HttpServletResponse;)V
    .locals 0

    invoke-direct {p0, p1}, Ljavax/servlet/ServletResponseWrapper;-><init>(Ljavax/servlet/ServletResponse;)V

    return-void
.end method


# virtual methods
.method public final a()Ljavax/servlet/http/HttpServletResponse;
    .locals 0

    invoke-super {p0}, Ljavax/servlet/ServletResponseWrapper;->getResponse()Ljavax/servlet/ServletResponse;

    move-result-object p0

    check-cast p0, Ljavax/servlet/http/HttpServletResponse;

    return-object p0
.end method

.method public addCookie(Ljavax/servlet/http/Cookie;)V
    .locals 0

    invoke-virtual {p0}, Ljavax/servlet/http/HttpServletResponseWrapper;->a()Ljavax/servlet/http/HttpServletResponse;

    move-result-object p0

    invoke-interface {p0, p1}, Ljavax/servlet/http/HttpServletResponse;->addCookie(Ljavax/servlet/http/Cookie;)V

    return-void
.end method

.method public addDateHeader(Ljava/lang/String;J)V
    .locals 0

    invoke-virtual {p0}, Ljavax/servlet/http/HttpServletResponseWrapper;->a()Ljavax/servlet/http/HttpServletResponse;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Ljavax/servlet/http/HttpServletResponse;->addDateHeader(Ljava/lang/String;J)V

    return-void
.end method

.method public addHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0}, Ljavax/servlet/http/HttpServletResponseWrapper;->a()Ljavax/servlet/http/HttpServletResponse;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Ljavax/servlet/http/HttpServletResponse;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public addIntHeader(Ljava/lang/String;I)V
    .locals 0

    invoke-virtual {p0}, Ljavax/servlet/http/HttpServletResponseWrapper;->a()Ljavax/servlet/http/HttpServletResponse;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Ljavax/servlet/http/HttpServletResponse;->addIntHeader(Ljava/lang/String;I)V

    return-void
.end method

.method public containsHeader(Ljava/lang/String;)Z
    .locals 0

    invoke-virtual {p0}, Ljavax/servlet/http/HttpServletResponseWrapper;->a()Ljavax/servlet/http/HttpServletResponse;

    move-result-object p0

    invoke-interface {p0, p1}, Ljavax/servlet/http/HttpServletResponse;->containsHeader(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public encodeRedirectURL(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Ljavax/servlet/http/HttpServletResponseWrapper;->a()Ljavax/servlet/http/HttpServletResponse;

    move-result-object p0

    invoke-interface {p0, p1}, Ljavax/servlet/http/HttpServletResponse;->encodeRedirectURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public encodeRedirectUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Ljavax/servlet/http/HttpServletResponseWrapper;->a()Ljavax/servlet/http/HttpServletResponse;

    move-result-object p0

    invoke-interface {p0, p1}, Ljavax/servlet/http/HttpServletResponse;->encodeRedirectUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public encodeURL(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Ljavax/servlet/http/HttpServletResponseWrapper;->a()Ljavax/servlet/http/HttpServletResponse;

    move-result-object p0

    invoke-interface {p0, p1}, Ljavax/servlet/http/HttpServletResponse;->encodeURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public encodeUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Ljavax/servlet/http/HttpServletResponseWrapper;->a()Ljavax/servlet/http/HttpServletResponse;

    move-result-object p0

    invoke-interface {p0, p1}, Ljavax/servlet/http/HttpServletResponse;->encodeUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public sendError(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, Ljavax/servlet/http/HttpServletResponseWrapper;->a()Ljavax/servlet/http/HttpServletResponse;

    move-result-object p0

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
    invoke-virtual {p0}, Ljavax/servlet/http/HttpServletResponseWrapper;->a()Ljavax/servlet/http/HttpServletResponse;

    move-result-object p0

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

    invoke-virtual {p0}, Ljavax/servlet/http/HttpServletResponseWrapper;->a()Ljavax/servlet/http/HttpServletResponse;

    move-result-object p0

    invoke-interface {p0, p1}, Ljavax/servlet/http/HttpServletResponse;->sendRedirect(Ljava/lang/String;)V

    return-void
.end method

.method public setDateHeader(Ljava/lang/String;J)V
    .locals 0

    invoke-virtual {p0}, Ljavax/servlet/http/HttpServletResponseWrapper;->a()Ljavax/servlet/http/HttpServletResponse;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Ljavax/servlet/http/HttpServletResponse;->setDateHeader(Ljava/lang/String;J)V

    return-void
.end method

.method public setHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0}, Ljavax/servlet/http/HttpServletResponseWrapper;->a()Ljavax/servlet/http/HttpServletResponse;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Ljavax/servlet/http/HttpServletResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setIntHeader(Ljava/lang/String;I)V
    .locals 0

    invoke-virtual {p0}, Ljavax/servlet/http/HttpServletResponseWrapper;->a()Ljavax/servlet/http/HttpServletResponse;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Ljavax/servlet/http/HttpServletResponse;->setIntHeader(Ljava/lang/String;I)V

    return-void
.end method

.method public setStatus(I)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljavax/servlet/http/HttpServletResponseWrapper;->a()Ljavax/servlet/http/HttpServletResponse;

    move-result-object p0

    invoke-interface {p0, p1}, Ljavax/servlet/http/HttpServletResponse;->setStatus(I)V

    return-void
.end method

.method public setStatus(ILjava/lang/String;)V
    .locals 0

    .line 2
    invoke-virtual {p0}, Ljavax/servlet/http/HttpServletResponseWrapper;->a()Ljavax/servlet/http/HttpServletResponse;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Ljavax/servlet/http/HttpServletResponse;->setStatus(ILjava/lang/String;)V

    return-void
.end method
