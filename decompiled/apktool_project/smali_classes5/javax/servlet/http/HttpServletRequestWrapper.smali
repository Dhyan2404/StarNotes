.class public Ljavax/servlet/http/HttpServletRequestWrapper;
.super Ljavax/servlet/ServletRequestWrapper;
.source "SourceFile"

# interfaces
.implements Ljavax/servlet/http/HttpServletRequest;


# direct methods
.method public constructor <init>(Ljavax/servlet/http/HttpServletRequest;)V
    .locals 0

    invoke-direct {p0, p1}, Ljavax/servlet/ServletRequestWrapper;-><init>(Ljavax/servlet/ServletRequest;)V

    return-void
.end method


# virtual methods
.method public final a()Ljavax/servlet/http/HttpServletRequest;
    .locals 0

    invoke-super {p0}, Ljavax/servlet/ServletRequestWrapper;->getRequest()Ljavax/servlet/ServletRequest;

    move-result-object p0

    check-cast p0, Ljavax/servlet/http/HttpServletRequest;

    return-object p0
.end method

.method public getAuthType()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Ljavax/servlet/http/HttpServletRequestWrapper;->a()Ljavax/servlet/http/HttpServletRequest;

    move-result-object p0

    invoke-interface {p0}, Ljavax/servlet/http/HttpServletRequest;->getAuthType()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getContextPath()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Ljavax/servlet/http/HttpServletRequestWrapper;->a()Ljavax/servlet/http/HttpServletRequest;

    move-result-object p0

    invoke-interface {p0}, Ljavax/servlet/http/HttpServletRequest;->getContextPath()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getCookies()[Ljavax/servlet/http/Cookie;
    .locals 0

    invoke-virtual {p0}, Ljavax/servlet/http/HttpServletRequestWrapper;->a()Ljavax/servlet/http/HttpServletRequest;

    move-result-object p0

    invoke-interface {p0}, Ljavax/servlet/http/HttpServletRequest;->getCookies()[Ljavax/servlet/http/Cookie;

    move-result-object p0

    return-object p0
.end method

.method public getDateHeader(Ljava/lang/String;)J
    .locals 0

    invoke-virtual {p0}, Ljavax/servlet/http/HttpServletRequestWrapper;->a()Ljavax/servlet/http/HttpServletRequest;

    move-result-object p0

    invoke-interface {p0, p1}, Ljavax/servlet/http/HttpServletRequest;->getDateHeader(Ljava/lang/String;)J

    move-result-wide p0

    return-wide p0
.end method

.method public getHeader(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Ljavax/servlet/http/HttpServletRequestWrapper;->a()Ljavax/servlet/http/HttpServletRequest;

    move-result-object p0

    invoke-interface {p0, p1}, Ljavax/servlet/http/HttpServletRequest;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getHeaderNames()Ljava/util/Enumeration;
    .locals 0

    invoke-virtual {p0}, Ljavax/servlet/http/HttpServletRequestWrapper;->a()Ljavax/servlet/http/HttpServletRequest;

    move-result-object p0

    invoke-interface {p0}, Ljavax/servlet/http/HttpServletRequest;->getHeaderNames()Ljava/util/Enumeration;

    move-result-object p0

    return-object p0
.end method

.method public getHeaders(Ljava/lang/String;)Ljava/util/Enumeration;
    .locals 0

    invoke-virtual {p0}, Ljavax/servlet/http/HttpServletRequestWrapper;->a()Ljavax/servlet/http/HttpServletRequest;

    move-result-object p0

    invoke-interface {p0, p1}, Ljavax/servlet/http/HttpServletRequest;->getHeaders(Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object p0

    return-object p0
.end method

.method public getIntHeader(Ljava/lang/String;)I
    .locals 0

    invoke-virtual {p0}, Ljavax/servlet/http/HttpServletRequestWrapper;->a()Ljavax/servlet/http/HttpServletRequest;

    move-result-object p0

    invoke-interface {p0, p1}, Ljavax/servlet/http/HttpServletRequest;->getIntHeader(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public getMethod()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Ljavax/servlet/http/HttpServletRequestWrapper;->a()Ljavax/servlet/http/HttpServletRequest;

    move-result-object p0

    invoke-interface {p0}, Ljavax/servlet/http/HttpServletRequest;->getMethod()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getPathInfo()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Ljavax/servlet/http/HttpServletRequestWrapper;->a()Ljavax/servlet/http/HttpServletRequest;

    move-result-object p0

    invoke-interface {p0}, Ljavax/servlet/http/HttpServletRequest;->getPathInfo()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getPathTranslated()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Ljavax/servlet/http/HttpServletRequestWrapper;->a()Ljavax/servlet/http/HttpServletRequest;

    move-result-object p0

    invoke-interface {p0}, Ljavax/servlet/http/HttpServletRequest;->getPathTranslated()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getQueryString()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Ljavax/servlet/http/HttpServletRequestWrapper;->a()Ljavax/servlet/http/HttpServletRequest;

    move-result-object p0

    invoke-interface {p0}, Ljavax/servlet/http/HttpServletRequest;->getQueryString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getRemoteUser()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Ljavax/servlet/http/HttpServletRequestWrapper;->a()Ljavax/servlet/http/HttpServletRequest;

    move-result-object p0

    invoke-interface {p0}, Ljavax/servlet/http/HttpServletRequest;->getRemoteUser()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getRequestURI()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Ljavax/servlet/http/HttpServletRequestWrapper;->a()Ljavax/servlet/http/HttpServletRequest;

    move-result-object p0

    invoke-interface {p0}, Ljavax/servlet/http/HttpServletRequest;->getRequestURI()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getRequestURL()Ljava/lang/StringBuffer;
    .locals 0

    invoke-virtual {p0}, Ljavax/servlet/http/HttpServletRequestWrapper;->a()Ljavax/servlet/http/HttpServletRequest;

    move-result-object p0

    invoke-interface {p0}, Ljavax/servlet/http/HttpServletRequest;->getRequestURL()Ljava/lang/StringBuffer;

    move-result-object p0

    return-object p0
.end method

.method public getRequestedSessionId()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Ljavax/servlet/http/HttpServletRequestWrapper;->a()Ljavax/servlet/http/HttpServletRequest;

    move-result-object p0

    invoke-interface {p0}, Ljavax/servlet/http/HttpServletRequest;->getRequestedSessionId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getServletPath()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Ljavax/servlet/http/HttpServletRequestWrapper;->a()Ljavax/servlet/http/HttpServletRequest;

    move-result-object p0

    invoke-interface {p0}, Ljavax/servlet/http/HttpServletRequest;->getServletPath()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSession()Ljavax/servlet/http/HttpSession;
    .locals 0

    .line 2
    invoke-virtual {p0}, Ljavax/servlet/http/HttpServletRequestWrapper;->a()Ljavax/servlet/http/HttpServletRequest;

    move-result-object p0

    invoke-interface {p0}, Ljavax/servlet/http/HttpServletRequest;->getSession()Ljavax/servlet/http/HttpSession;

    move-result-object p0

    return-object p0
.end method

.method public getSession(Z)Ljavax/servlet/http/HttpSession;
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljavax/servlet/http/HttpServletRequestWrapper;->a()Ljavax/servlet/http/HttpServletRequest;

    move-result-object p0

    invoke-interface {p0, p1}, Ljavax/servlet/http/HttpServletRequest;->getSession(Z)Ljavax/servlet/http/HttpSession;

    move-result-object p0

    return-object p0
.end method

.method public getUserPrincipal()Ljava/security/Principal;
    .locals 0

    invoke-virtual {p0}, Ljavax/servlet/http/HttpServletRequestWrapper;->a()Ljavax/servlet/http/HttpServletRequest;

    move-result-object p0

    invoke-interface {p0}, Ljavax/servlet/http/HttpServletRequest;->getUserPrincipal()Ljava/security/Principal;

    move-result-object p0

    return-object p0
.end method

.method public isRequestedSessionIdFromCookie()Z
    .locals 0

    invoke-virtual {p0}, Ljavax/servlet/http/HttpServletRequestWrapper;->a()Ljavax/servlet/http/HttpServletRequest;

    move-result-object p0

    invoke-interface {p0}, Ljavax/servlet/http/HttpServletRequest;->isRequestedSessionIdFromCookie()Z

    move-result p0

    return p0
.end method

.method public isRequestedSessionIdFromURL()Z
    .locals 0

    invoke-virtual {p0}, Ljavax/servlet/http/HttpServletRequestWrapper;->a()Ljavax/servlet/http/HttpServletRequest;

    move-result-object p0

    invoke-interface {p0}, Ljavax/servlet/http/HttpServletRequest;->isRequestedSessionIdFromURL()Z

    move-result p0

    return p0
.end method

.method public isRequestedSessionIdFromUrl()Z
    .locals 0

    invoke-virtual {p0}, Ljavax/servlet/http/HttpServletRequestWrapper;->a()Ljavax/servlet/http/HttpServletRequest;

    move-result-object p0

    invoke-interface {p0}, Ljavax/servlet/http/HttpServletRequest;->isRequestedSessionIdFromUrl()Z

    move-result p0

    return p0
.end method

.method public isRequestedSessionIdValid()Z
    .locals 0

    invoke-virtual {p0}, Ljavax/servlet/http/HttpServletRequestWrapper;->a()Ljavax/servlet/http/HttpServletRequest;

    move-result-object p0

    invoke-interface {p0}, Ljavax/servlet/http/HttpServletRequest;->isRequestedSessionIdValid()Z

    move-result p0

    return p0
.end method

.method public isUserInRole(Ljava/lang/String;)Z
    .locals 0

    invoke-virtual {p0}, Ljavax/servlet/http/HttpServletRequestWrapper;->a()Ljavax/servlet/http/HttpServletRequest;

    move-result-object p0

    invoke-interface {p0, p1}, Ljavax/servlet/http/HttpServletRequest;->isUserInRole(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
