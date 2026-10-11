.class public Ljavax/servlet/ServletResponseWrapper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljavax/servlet/ServletResponse;


# instance fields
.field public a:Ljavax/servlet/ServletResponse;


# direct methods
.method public constructor <init>(Ljavax/servlet/ServletResponse;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    iput-object p1, p0, Ljavax/servlet/ServletResponseWrapper;->a:Ljavax/servlet/ServletResponse;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Response cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public flushBuffer()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Ljavax/servlet/ServletResponseWrapper;->a:Ljavax/servlet/ServletResponse;

    invoke-interface {p0}, Ljavax/servlet/ServletResponse;->flushBuffer()V

    return-void
.end method

.method public getBufferSize()I
    .locals 0

    iget-object p0, p0, Ljavax/servlet/ServletResponseWrapper;->a:Ljavax/servlet/ServletResponse;

    invoke-interface {p0}, Ljavax/servlet/ServletResponse;->getBufferSize()I

    move-result p0

    return p0
.end method

.method public getCharacterEncoding()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Ljavax/servlet/ServletResponseWrapper;->a:Ljavax/servlet/ServletResponse;

    invoke-interface {p0}, Ljavax/servlet/ServletResponse;->getCharacterEncoding()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Ljavax/servlet/ServletResponseWrapper;->a:Ljavax/servlet/ServletResponse;

    invoke-interface {p0}, Ljavax/servlet/ServletResponse;->getContentType()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getLocale()Ljava/util/Locale;
    .locals 0

    iget-object p0, p0, Ljavax/servlet/ServletResponseWrapper;->a:Ljavax/servlet/ServletResponse;

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

    iget-object p0, p0, Ljavax/servlet/ServletResponseWrapper;->a:Ljavax/servlet/ServletResponse;

    invoke-interface {p0}, Ljavax/servlet/ServletResponse;->getOutputStream()Ljavax/servlet/ServletOutputStream;

    move-result-object p0

    return-object p0
.end method

.method public getResponse()Ljavax/servlet/ServletResponse;
    .locals 0

    iget-object p0, p0, Ljavax/servlet/ServletResponseWrapper;->a:Ljavax/servlet/ServletResponse;

    return-object p0
.end method

.method public getWriter()Ljava/io/PrintWriter;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Ljavax/servlet/ServletResponseWrapper;->a:Ljavax/servlet/ServletResponse;

    invoke-interface {p0}, Ljavax/servlet/ServletResponse;->getWriter()Ljava/io/PrintWriter;

    move-result-object p0

    return-object p0
.end method

.method public isCommitted()Z
    .locals 0

    iget-object p0, p0, Ljavax/servlet/ServletResponseWrapper;->a:Ljavax/servlet/ServletResponse;

    invoke-interface {p0}, Ljavax/servlet/ServletResponse;->isCommitted()Z

    move-result p0

    return p0
.end method

.method public reset()V
    .locals 0

    iget-object p0, p0, Ljavax/servlet/ServletResponseWrapper;->a:Ljavax/servlet/ServletResponse;

    invoke-interface {p0}, Ljavax/servlet/ServletResponse;->reset()V

    return-void
.end method

.method public resetBuffer()V
    .locals 0

    iget-object p0, p0, Ljavax/servlet/ServletResponseWrapper;->a:Ljavax/servlet/ServletResponse;

    invoke-interface {p0}, Ljavax/servlet/ServletResponse;->resetBuffer()V

    return-void
.end method

.method public setBufferSize(I)V
    .locals 0

    iget-object p0, p0, Ljavax/servlet/ServletResponseWrapper;->a:Ljavax/servlet/ServletResponse;

    invoke-interface {p0, p1}, Ljavax/servlet/ServletResponse;->setBufferSize(I)V

    return-void
.end method

.method public setCharacterEncoding(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Ljavax/servlet/ServletResponseWrapper;->a:Ljavax/servlet/ServletResponse;

    invoke-interface {p0, p1}, Ljavax/servlet/ServletResponse;->setCharacterEncoding(Ljava/lang/String;)V

    return-void
.end method

.method public setContentLength(I)V
    .locals 0

    iget-object p0, p0, Ljavax/servlet/ServletResponseWrapper;->a:Ljavax/servlet/ServletResponse;

    invoke-interface {p0, p1}, Ljavax/servlet/ServletResponse;->setContentLength(I)V

    return-void
.end method

.method public setContentType(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Ljavax/servlet/ServletResponseWrapper;->a:Ljavax/servlet/ServletResponse;

    invoke-interface {p0, p1}, Ljavax/servlet/ServletResponse;->setContentType(Ljava/lang/String;)V

    return-void
.end method

.method public setLocale(Ljava/util/Locale;)V
    .locals 0

    iget-object p0, p0, Ljavax/servlet/ServletResponseWrapper;->a:Ljavax/servlet/ServletResponse;

    invoke-interface {p0, p1}, Ljavax/servlet/ServletResponse;->setLocale(Ljava/util/Locale;)V

    return-void
.end method

.method public setResponse(Ljavax/servlet/ServletResponse;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Ljavax/servlet/ServletResponseWrapper;->a:Ljavax/servlet/ServletResponse;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Response cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
