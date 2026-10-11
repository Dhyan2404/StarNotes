.class public Lorg/mortbay/jetty/security/FormAuthenticator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/mortbay/jetty/security/Authenticator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mortbay/jetty/security/FormAuthenticator$FormCredential;
    }
.end annotation


# static fields
.field public static final __J_AUTHENTICATED:Ljava/lang/String; = "org.mortbay.jetty.Auth"

.field public static final __J_PASSWORD:Ljava/lang/String; = "j_password"

.field public static final __J_SECURITY_CHECK:Ljava/lang/String; = "/j_security_check"

.field public static final __J_URI:Ljava/lang/String; = "org.mortbay.jetty.URI"

.field public static final __J_USERNAME:Ljava/lang/String; = "j_username"


# instance fields
.field private _formErrorPage:Ljava/lang/String;

.field private _formErrorPath:Ljava/lang/String;

.field private _formLoginPage:Ljava/lang/String;

.field private _formLoginPath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public authenticate(Lorg/mortbay/jetty/security/UserRealm;Ljava/lang/String;Lorg/mortbay/jetty/Request;Lorg/mortbay/jetty/Response;)Ljava/security/Principal;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    invoke-virtual {p3, v1}, Lorg/mortbay/jetty/Request;->getSession(Z)Ljavax/servlet/http/HttpSession;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return-object v2

    :cond_1
    invoke-virtual {p0, p2}, Lorg/mortbay/jetty/security/FormAuthenticator;->isJSecurityCheck(Ljava/lang/String;)Z

    move-result v3

    const-string v4, "FORM"

    const-string v5, "org.mortbay.jetty.URI"

    const-string v6, "org.mortbay.jetty.Auth"

    if-eqz v3, :cond_a

    new-instance p2, Lorg/mortbay/jetty/security/FormAuthenticator$FormCredential;

    invoke-direct {p2, v2}, Lorg/mortbay/jetty/security/FormAuthenticator$FormCredential;-><init>(Lorg/mortbay/jetty/security/a;)V

    const-string v3, "j_username"

    invoke-virtual {p3, v3}, Lorg/mortbay/jetty/Request;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v7, "j_password"

    invoke-virtual {p3, v7}, Lorg/mortbay/jetty/Request;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, p1, v3, v7, p3}, Lorg/mortbay/jetty/security/FormAuthenticator$FormCredential;->authenticate(Lorg/mortbay/jetty/security/UserRealm;Ljava/lang/String;Ljava/lang/String;Lorg/mortbay/jetty/Request;)V

    invoke-interface {v1, v5}, Ljavax/servlet/http/HttpSession;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_3

    :cond_2
    invoke-virtual {p3}, Lorg/mortbay/jetty/Request;->getContextPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_3

    const-string v3, "/"

    :cond_3
    iget-object v7, p2, Lorg/mortbay/jetty/security/FormAuthenticator$FormCredential;->_userPrincipal:Ljava/security/Principal;

    if-eqz v7, :cond_6

    invoke-static {}, Lorg/mortbay/log/Log;->isDebugEnabled()Z

    move-result p0

    if-eqz p0, :cond_4

    new-instance p0, Ljava/lang/StringBuffer;

    invoke-direct {p0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "Form authentication OK for "

    invoke-virtual {p0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v7, p2, Lorg/mortbay/jetty/security/FormAuthenticator$FormCredential;->_jUserName:Ljava/lang/String;

    invoke-virtual {p0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;)V

    :cond_4
    invoke-interface {v1, v5}, Ljavax/servlet/http/HttpSession;->removeAttribute(Ljava/lang/String;)V

    invoke-virtual {p3, v4}, Lorg/mortbay/jetty/Request;->setAuthType(Ljava/lang/String;)V

    iget-object p0, p2, Lorg/mortbay/jetty/security/FormAuthenticator$FormCredential;->_userPrincipal:Ljava/security/Principal;

    invoke-virtual {p3, p0}, Lorg/mortbay/jetty/Request;->setUserPrincipal(Ljava/security/Principal;)V

    invoke-interface {v1, v6, p2}, Ljavax/servlet/http/HttpSession;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    instance-of p0, p1, Lorg/mortbay/jetty/security/SSORealm;

    if-eqz p0, :cond_5

    check-cast p1, Lorg/mortbay/jetty/security/SSORealm;

    iget-object p0, p2, Lorg/mortbay/jetty/security/FormAuthenticator$FormCredential;->_userPrincipal:Ljava/security/Principal;

    new-instance v1, Lorg/mortbay/jetty/security/Password;

    iget-object p2, p2, Lorg/mortbay/jetty/security/FormAuthenticator$FormCredential;->_jPassword:Ljava/lang/String;

    invoke-direct {v1, p2}, Lorg/mortbay/jetty/security/Password;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, p3, p4, p0, v1}, Lorg/mortbay/jetty/security/SSORealm;->setSingleSignOn(Lorg/mortbay/jetty/Request;Lorg/mortbay/jetty/Response;Ljava/security/Principal;Lorg/mortbay/jetty/security/Credential;)V

    :cond_5
    if-eqz p4, :cond_9

    invoke-virtual {p4, v0}, Lorg/mortbay/jetty/Response;->setContentLength(I)V

    invoke-virtual {p4, v3}, Lorg/mortbay/jetty/Response;->encodeRedirectURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p4, p0}, Lorg/mortbay/jetty/Response;->sendRedirect(Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    invoke-static {}, Lorg/mortbay/log/Log;->isDebugEnabled()Z

    move-result p1

    if-eqz p1, :cond_7

    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "Form authentication FAILED for "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p2, p2, Lorg/mortbay/jetty/security/FormAuthenticator$FormCredential;->_jUserName:Ljava/lang/String;

    invoke-static {p2}, Lorg/mortbay/util/StringUtil;->printable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;)V

    :cond_7
    if-eqz p4, :cond_9

    iget-object p1, p0, Lorg/mortbay/jetty/security/FormAuthenticator;->_formErrorPage:Ljava/lang/String;

    if-nez p1, :cond_8

    const/16 p0, 0x193

    invoke-virtual {p4, p0}, Lorg/mortbay/jetty/Response;->sendError(I)V

    goto :goto_1

    :cond_8
    invoke-virtual {p4, v0}, Lorg/mortbay/jetty/Response;->setContentLength(I)V

    invoke-virtual {p3}, Lorg/mortbay/jetty/Request;->getContextPath()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lorg/mortbay/jetty/security/FormAuthenticator;->_formErrorPage:Ljava/lang/String;

    invoke-static {p1, p0}, Lorg/mortbay/util/URIUtil;->addPaths(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p4, p0}, Lorg/mortbay/jetty/Response;->encodeRedirectURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p4, p0}, Lorg/mortbay/jetty/Response;->sendRedirect(Ljava/lang/String;)V

    :cond_9
    :goto_1
    return-object v2

    :cond_a
    invoke-interface {v1, v6}, Ljavax/servlet/http/HttpSession;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/mortbay/jetty/security/FormAuthenticator$FormCredential;

    if-eqz v3, :cond_f

    iget-object v7, v3, Lorg/mortbay/jetty/security/FormAuthenticator$FormCredential;->_userPrincipal:Ljava/security/Principal;

    if-nez v7, :cond_b

    invoke-virtual {v3, p1, p3}, Lorg/mortbay/jetty/security/FormAuthenticator$FormCredential;->authenticate(Lorg/mortbay/jetty/security/UserRealm;Lorg/mortbay/jetty/Request;)V

    iget-object v7, v3, Lorg/mortbay/jetty/security/FormAuthenticator$FormCredential;->_userPrincipal:Ljava/security/Principal;

    if-eqz v7, :cond_c

    instance-of v8, p1, Lorg/mortbay/jetty/security/SSORealm;

    if-eqz v8, :cond_c

    check-cast p1, Lorg/mortbay/jetty/security/SSORealm;

    new-instance v8, Lorg/mortbay/jetty/security/Password;

    iget-object v9, v3, Lorg/mortbay/jetty/security/FormAuthenticator$FormCredential;->_jPassword:Ljava/lang/String;

    invoke-direct {v8, v9}, Lorg/mortbay/jetty/security/Password;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, p3, p4, v7, v8}, Lorg/mortbay/jetty/security/SSORealm;->setSingleSignOn(Lorg/mortbay/jetty/Request;Lorg/mortbay/jetty/Response;Ljava/security/Principal;Lorg/mortbay/jetty/security/Credential;)V

    goto :goto_2

    :cond_b
    invoke-interface {p1, v7}, Lorg/mortbay/jetty/security/UserRealm;->reauthenticate(Ljava/security/Principal;)Z

    move-result p1

    if-nez p1, :cond_c

    iput-object v2, v3, Lorg/mortbay/jetty/security/FormAuthenticator$FormCredential;->_userPrincipal:Ljava/security/Principal;

    :cond_c
    :goto_2
    iget-object p1, v3, Lorg/mortbay/jetty/security/FormAuthenticator$FormCredential;->_userPrincipal:Ljava/security/Principal;

    if-eqz p1, :cond_e

    invoke-static {}, Lorg/mortbay/log/Log;->isDebugEnabled()Z

    move-result p0

    if-eqz p0, :cond_d

    new-instance p0, Ljava/lang/StringBuffer;

    invoke-direct {p0}, Ljava/lang/StringBuffer;-><init>()V

    const-string p1, "FORM Authenticated for "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p1, v3, Lorg/mortbay/jetty/security/FormAuthenticator$FormCredential;->_userPrincipal:Ljava/security/Principal;

    invoke-interface {p1}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;)V

    :cond_d
    invoke-virtual {p3, v4}, Lorg/mortbay/jetty/Request;->setAuthType(Ljava/lang/String;)V

    iget-object p0, v3, Lorg/mortbay/jetty/security/FormAuthenticator$FormCredential;->_userPrincipal:Ljava/security/Principal;

    invoke-virtual {p3, p0}, Lorg/mortbay/jetty/Request;->setUserPrincipal(Ljava/security/Principal;)V

    iget-object p0, v3, Lorg/mortbay/jetty/security/FormAuthenticator$FormCredential;->_userPrincipal:Ljava/security/Principal;

    return-object p0

    :cond_e
    invoke-interface {v1, v6, v2}, Ljavax/servlet/http/HttpSession;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_3

    :cond_f
    instance-of v3, p1, Lorg/mortbay/jetty/security/SSORealm;

    if-eqz v3, :cond_12

    check-cast p1, Lorg/mortbay/jetty/security/SSORealm;

    invoke-interface {p1, p3, p4}, Lorg/mortbay/jetty/security/SSORealm;->getSingleSignOn(Lorg/mortbay/jetty/Request;Lorg/mortbay/jetty/Response;)Lorg/mortbay/jetty/security/Credential;

    move-result-object p1

    invoke-virtual {p3}, Lorg/mortbay/jetty/Request;->getUserPrincipal()Ljava/security/Principal;

    move-result-object v3

    if-eqz v3, :cond_12

    new-instance p0, Lorg/mortbay/jetty/security/FormAuthenticator$FormCredential;

    invoke-direct {p0, v2}, Lorg/mortbay/jetty/security/FormAuthenticator$FormCredential;-><init>(Lorg/mortbay/jetty/security/a;)V

    invoke-virtual {p3}, Lorg/mortbay/jetty/Request;->getUserPrincipal()Ljava/security/Principal;

    move-result-object p2

    iput-object p2, p0, Lorg/mortbay/jetty/security/FormAuthenticator$FormCredential;->_userPrincipal:Ljava/security/Principal;

    invoke-interface {p2}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lorg/mortbay/jetty/security/FormAuthenticator$FormCredential;->_jUserName:Ljava/lang/String;

    if-eqz p1, :cond_10

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/mortbay/jetty/security/FormAuthenticator$FormCredential;->_jPassword:Ljava/lang/String;

    :cond_10
    invoke-static {}, Lorg/mortbay/log/Log;->isDebugEnabled()Z

    move-result p1

    if-eqz p1, :cond_11

    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    const-string p2, "SSO for "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p2, p0, Lorg/mortbay/jetty/security/FormAuthenticator$FormCredential;->_userPrincipal:Ljava/security/Principal;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;)V

    :cond_11
    invoke-virtual {p3, v4}, Lorg/mortbay/jetty/Request;->setAuthType(Ljava/lang/String;)V

    invoke-interface {v1, v6, p0}, Ljavax/servlet/http/HttpSession;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p0, Lorg/mortbay/jetty/security/FormAuthenticator$FormCredential;->_userPrincipal:Ljava/security/Principal;

    return-object p0

    :cond_12
    :goto_3
    invoke-virtual {p0, p2}, Lorg/mortbay/jetty/security/FormAuthenticator;->isLoginOrErrorPage(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_13

    sget-object p0, Lorg/mortbay/jetty/security/SecurityHandler;->__NOBODY:Ljava/security/Principal;

    return-object p0

    :cond_13
    if-eqz p4, :cond_15

    invoke-virtual {p3}, Lorg/mortbay/jetty/Request;->getQueryString()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_14

    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p2, "?"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p3}, Lorg/mortbay/jetty/Request;->getQueryString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    :cond_14
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p3}, Lorg/mortbay/jetty/Request;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "://"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p3}, Lorg/mortbay/jetty/Request;->getServerName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, ":"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p3}, Lorg/mortbay/jetty/Request;->getServerPort()I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {p3}, Lorg/mortbay/jetty/Request;->getContextPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p2}, Lorg/mortbay/util/URIUtil;->addPaths(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, v5, p1}, Ljavax/servlet/http/HttpSession;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p4, v0}, Lorg/mortbay/jetty/Response;->setContentLength(I)V

    invoke-virtual {p3}, Lorg/mortbay/jetty/Request;->getContextPath()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lorg/mortbay/jetty/security/FormAuthenticator;->_formLoginPage:Ljava/lang/String;

    invoke-static {p1, p0}, Lorg/mortbay/util/URIUtil;->addPaths(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p4, p0}, Lorg/mortbay/jetty/Response;->encodeRedirectURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p4, p0}, Lorg/mortbay/jetty/Response;->sendRedirect(Ljava/lang/String;)V

    :cond_15
    return-object v2
.end method

.method public getAuthMethod()Ljava/lang/String;
    .locals 0

    const-string p0, "FORM"

    return-object p0
.end method

.method public getErrorPage()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/jetty/security/FormAuthenticator;->_formErrorPage:Ljava/lang/String;

    return-object p0
.end method

.method public getLoginPage()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/jetty/security/FormAuthenticator;->_formLoginPage:Ljava/lang/String;

    return-object p0
.end method

.method public isJSecurityCheck(Ljava/lang/String;)Z
    .locals 3

    const-string p0, "/j_security_check"

    invoke-virtual {p1, p0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p0

    const/4 v0, 0x0

    if-gez p0, :cond_0

    return v0

    :cond_0
    add-int/lit8 p0, p0, 0x11

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-ne p0, v1, :cond_1

    return v2

    :cond_1
    invoke-virtual {p1, p0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    const/16 p1, 0x3b

    if-eq p0, p1, :cond_2

    const/16 p1, 0x23

    if-eq p0, p1, :cond_2

    const/16 p1, 0x2f

    if-eq p0, p1, :cond_2

    const/16 p1, 0x3f

    if-ne p0, p1, :cond_3

    :cond_2
    move v0, v2

    :cond_3
    return v0
.end method

.method public isLoginOrErrorPage(Ljava/lang/String;)Z
    .locals 1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lorg/mortbay/jetty/security/FormAuthenticator;->_formErrorPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lorg/mortbay/jetty/security/FormAuthenticator;->_formLoginPath:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public setErrorPage(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "form-error-page must start with /"

    invoke-static {v1}, Lorg/mortbay/log/Log;->warn(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_1
    iput-object p1, p0, Lorg/mortbay/jetty/security/FormAuthenticator;->_formErrorPage:Ljava/lang/String;

    iput-object p1, p0, Lorg/mortbay/jetty/security/FormAuthenticator;->_formErrorPath:Ljava/lang/String;

    if-eqz p1, :cond_3

    const/16 v0, 0x3f

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result p1

    if-lez p1, :cond_3

    iget-object p1, p0, Lorg/mortbay/jetty/security/FormAuthenticator;->_formErrorPath:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/mortbay/jetty/security/FormAuthenticator;->_formErrorPath:Ljava/lang/String;

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    iput-object p1, p0, Lorg/mortbay/jetty/security/FormAuthenticator;->_formErrorPath:Ljava/lang/String;

    iput-object p1, p0, Lorg/mortbay/jetty/security/FormAuthenticator;->_formErrorPage:Ljava/lang/String;

    :cond_3
    :goto_1
    return-void
.end method

.method public setLoginPage(Ljava/lang/String;)V
    .locals 2

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "form-login-page must start with /"

    invoke-static {v1}, Lorg/mortbay/log/Log;->warn(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_0
    iput-object p1, p0, Lorg/mortbay/jetty/security/FormAuthenticator;->_formLoginPage:Ljava/lang/String;

    iput-object p1, p0, Lorg/mortbay/jetty/security/FormAuthenticator;->_formLoginPath:Ljava/lang/String;

    const/16 v0, 0x3f

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result p1

    if-lez p1, :cond_1

    iget-object p1, p0, Lorg/mortbay/jetty/security/FormAuthenticator;->_formLoginPath:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/mortbay/jetty/security/FormAuthenticator;->_formLoginPath:Ljava/lang/String;

    :cond_1
    return-void
.end method
