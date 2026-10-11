.class public Ljavax/servlet/ServletRequestWrapper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljavax/servlet/ServletRequest;


# instance fields
.field public a:Ljavax/servlet/ServletRequest;


# direct methods
.method public constructor <init>(Ljavax/servlet/ServletRequest;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    iput-object p1, p0, Ljavax/servlet/ServletRequestWrapper;->a:Ljavax/servlet/ServletRequest;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Request cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public getAttribute(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Ljavax/servlet/ServletRequestWrapper;->a:Ljavax/servlet/ServletRequest;

    invoke-interface {p0, p1}, Ljavax/servlet/ServletRequest;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getAttributeNames()Ljava/util/Enumeration;
    .locals 0

    iget-object p0, p0, Ljavax/servlet/ServletRequestWrapper;->a:Ljavax/servlet/ServletRequest;

    invoke-interface {p0}, Ljavax/servlet/ServletRequest;->getAttributeNames()Ljava/util/Enumeration;

    move-result-object p0

    return-object p0
.end method

.method public getCharacterEncoding()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Ljavax/servlet/ServletRequestWrapper;->a:Ljavax/servlet/ServletRequest;

    invoke-interface {p0}, Ljavax/servlet/ServletRequest;->getCharacterEncoding()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getContentLength()I
    .locals 0

    iget-object p0, p0, Ljavax/servlet/ServletRequestWrapper;->a:Ljavax/servlet/ServletRequest;

    invoke-interface {p0}, Ljavax/servlet/ServletRequest;->getContentLength()I

    move-result p0

    return p0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Ljavax/servlet/ServletRequestWrapper;->a:Ljavax/servlet/ServletRequest;

    invoke-interface {p0}, Ljavax/servlet/ServletRequest;->getContentType()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getInputStream()Ljavax/servlet/ServletInputStream;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Ljavax/servlet/ServletRequestWrapper;->a:Ljavax/servlet/ServletRequest;

    invoke-interface {p0}, Ljavax/servlet/ServletRequest;->getInputStream()Ljavax/servlet/ServletInputStream;

    move-result-object p0

    return-object p0
.end method

.method public getLocalAddr()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Ljavax/servlet/ServletRequestWrapper;->a:Ljavax/servlet/ServletRequest;

    invoke-interface {p0}, Ljavax/servlet/ServletRequest;->getLocalAddr()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getLocalName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Ljavax/servlet/ServletRequestWrapper;->a:Ljavax/servlet/ServletRequest;

    invoke-interface {p0}, Ljavax/servlet/ServletRequest;->getLocalName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getLocalPort()I
    .locals 0

    iget-object p0, p0, Ljavax/servlet/ServletRequestWrapper;->a:Ljavax/servlet/ServletRequest;

    invoke-interface {p0}, Ljavax/servlet/ServletRequest;->getLocalPort()I

    move-result p0

    return p0
.end method

.method public getLocale()Ljava/util/Locale;
    .locals 0

    iget-object p0, p0, Ljavax/servlet/ServletRequestWrapper;->a:Ljavax/servlet/ServletRequest;

    invoke-interface {p0}, Ljavax/servlet/ServletRequest;->getLocale()Ljava/util/Locale;

    move-result-object p0

    return-object p0
.end method

.method public getLocales()Ljava/util/Enumeration;
    .locals 0

    iget-object p0, p0, Ljavax/servlet/ServletRequestWrapper;->a:Ljavax/servlet/ServletRequest;

    invoke-interface {p0}, Ljavax/servlet/ServletRequest;->getLocales()Ljava/util/Enumeration;

    move-result-object p0

    return-object p0
.end method

.method public getParameter(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Ljavax/servlet/ServletRequestWrapper;->a:Ljavax/servlet/ServletRequest;

    invoke-interface {p0, p1}, Ljavax/servlet/ServletRequest;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getParameterMap()Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Ljavax/servlet/ServletRequestWrapper;->a:Ljavax/servlet/ServletRequest;

    invoke-interface {p0}, Ljavax/servlet/ServletRequest;->getParameterMap()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public getParameterNames()Ljava/util/Enumeration;
    .locals 0

    iget-object p0, p0, Ljavax/servlet/ServletRequestWrapper;->a:Ljavax/servlet/ServletRequest;

    invoke-interface {p0}, Ljavax/servlet/ServletRequest;->getParameterNames()Ljava/util/Enumeration;

    move-result-object p0

    return-object p0
.end method

.method public getParameterValues(Ljava/lang/String;)[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Ljavax/servlet/ServletRequestWrapper;->a:Ljavax/servlet/ServletRequest;

    invoke-interface {p0, p1}, Ljavax/servlet/ServletRequest;->getParameterValues(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getProtocol()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Ljavax/servlet/ServletRequestWrapper;->a:Ljavax/servlet/ServletRequest;

    invoke-interface {p0}, Ljavax/servlet/ServletRequest;->getProtocol()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getReader()Ljava/io/BufferedReader;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Ljavax/servlet/ServletRequestWrapper;->a:Ljavax/servlet/ServletRequest;

    invoke-interface {p0}, Ljavax/servlet/ServletRequest;->getReader()Ljava/io/BufferedReader;

    move-result-object p0

    return-object p0
.end method

.method public getRealPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Ljavax/servlet/ServletRequestWrapper;->a:Ljavax/servlet/ServletRequest;

    invoke-interface {p0, p1}, Ljavax/servlet/ServletRequest;->getRealPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getRemoteAddr()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Ljavax/servlet/ServletRequestWrapper;->a:Ljavax/servlet/ServletRequest;

    invoke-interface {p0}, Ljavax/servlet/ServletRequest;->getRemoteAddr()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getRemoteHost()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Ljavax/servlet/ServletRequestWrapper;->a:Ljavax/servlet/ServletRequest;

    invoke-interface {p0}, Ljavax/servlet/ServletRequest;->getRemoteHost()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getRemotePort()I
    .locals 0

    iget-object p0, p0, Ljavax/servlet/ServletRequestWrapper;->a:Ljavax/servlet/ServletRequest;

    invoke-interface {p0}, Ljavax/servlet/ServletRequest;->getRemotePort()I

    move-result p0

    return p0
.end method

.method public getRequest()Ljavax/servlet/ServletRequest;
    .locals 0

    iget-object p0, p0, Ljavax/servlet/ServletRequestWrapper;->a:Ljavax/servlet/ServletRequest;

    return-object p0
.end method

.method public getRequestDispatcher(Ljava/lang/String;)Ljavax/servlet/RequestDispatcher;
    .locals 0

    iget-object p0, p0, Ljavax/servlet/ServletRequestWrapper;->a:Ljavax/servlet/ServletRequest;

    invoke-interface {p0, p1}, Ljavax/servlet/ServletRequest;->getRequestDispatcher(Ljava/lang/String;)Ljavax/servlet/RequestDispatcher;

    move-result-object p0

    return-object p0
.end method

.method public getScheme()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Ljavax/servlet/ServletRequestWrapper;->a:Ljavax/servlet/ServletRequest;

    invoke-interface {p0}, Ljavax/servlet/ServletRequest;->getScheme()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getServerName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Ljavax/servlet/ServletRequestWrapper;->a:Ljavax/servlet/ServletRequest;

    invoke-interface {p0}, Ljavax/servlet/ServletRequest;->getServerName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getServerPort()I
    .locals 0

    iget-object p0, p0, Ljavax/servlet/ServletRequestWrapper;->a:Ljavax/servlet/ServletRequest;

    invoke-interface {p0}, Ljavax/servlet/ServletRequest;->getServerPort()I

    move-result p0

    return p0
.end method

.method public isSecure()Z
    .locals 0

    iget-object p0, p0, Ljavax/servlet/ServletRequestWrapper;->a:Ljavax/servlet/ServletRequest;

    invoke-interface {p0}, Ljavax/servlet/ServletRequest;->isSecure()Z

    move-result p0

    return p0
.end method

.method public removeAttribute(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Ljavax/servlet/ServletRequestWrapper;->a:Ljavax/servlet/ServletRequest;

    invoke-interface {p0, p1}, Ljavax/servlet/ServletRequest;->removeAttribute(Ljava/lang/String;)V

    return-void
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Ljavax/servlet/ServletRequestWrapper;->a:Ljavax/servlet/ServletRequest;

    invoke-interface {p0, p1, p2}, Ljavax/servlet/ServletRequest;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setCharacterEncoding(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    iget-object p0, p0, Ljavax/servlet/ServletRequestWrapper;->a:Ljavax/servlet/ServletRequest;

    invoke-interface {p0, p1}, Ljavax/servlet/ServletRequest;->setCharacterEncoding(Ljava/lang/String;)V

    return-void
.end method

.method public setRequest(Ljavax/servlet/ServletRequest;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Ljavax/servlet/ServletRequestWrapper;->a:Ljavax/servlet/ServletRequest;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Request cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
