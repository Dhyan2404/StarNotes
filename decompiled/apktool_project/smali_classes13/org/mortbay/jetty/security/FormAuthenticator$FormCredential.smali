.class Lorg/mortbay/jetty/security/FormAuthenticator$FormCredential;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljavax/servlet/http/HttpSessionBindingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mortbay/jetty/security/FormAuthenticator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FormCredential"
.end annotation


# instance fields
.field _jPassword:Ljava/lang/String;

.field _jUserName:Ljava/lang/String;

.field transient _realm:Lorg/mortbay/jetty/security/UserRealm;

.field transient _userPrincipal:Ljava/security/Principal;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lorg/mortbay/jetty/security/a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lorg/mortbay/jetty/security/FormAuthenticator$FormCredential;-><init>()V

    return-void
.end method


# virtual methods
.method public authenticate(Lorg/mortbay/jetty/security/UserRealm;Ljava/lang/String;Ljava/lang/String;Lorg/mortbay/jetty/Request;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lorg/mortbay/jetty/security/FormAuthenticator$FormCredential;->_jUserName:Ljava/lang/String;

    .line 2
    iput-object p3, p0, Lorg/mortbay/jetty/security/FormAuthenticator$FormCredential;->_jPassword:Ljava/lang/String;

    .line 3
    invoke-interface {p1, p2, p3, p4}, Lorg/mortbay/jetty/security/UserRealm;->authenticate(Ljava/lang/String;Ljava/lang/Object;Lorg/mortbay/jetty/Request;)Ljava/security/Principal;

    move-result-object p3

    iput-object p3, p0, Lorg/mortbay/jetty/security/FormAuthenticator$FormCredential;->_userPrincipal:Ljava/security/Principal;

    if-eqz p3, :cond_0

    .line 4
    iput-object p1, p0, Lorg/mortbay/jetty/security/FormAuthenticator$FormCredential;->_realm:Lorg/mortbay/jetty/security/UserRealm;

    goto :goto_0

    :cond_0
    const-string p0, "AUTH FAILURE: user {}"

    .line 5
    invoke-static {p2}, Lorg/mortbay/util/StringUtil;->printable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/mortbay/log/Log;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p0, 0x0

    .line 6
    invoke-virtual {p4, p0}, Lorg/mortbay/jetty/Request;->setUserPrincipal(Ljava/security/Principal;)V

    :goto_0
    return-void
.end method

.method public authenticate(Lorg/mortbay/jetty/security/UserRealm;Lorg/mortbay/jetty/Request;)V
    .locals 2

    .line 7
    iget-object v0, p0, Lorg/mortbay/jetty/security/FormAuthenticator$FormCredential;->_jUserName:Ljava/lang/String;

    iget-object v1, p0, Lorg/mortbay/jetty/security/FormAuthenticator$FormCredential;->_jPassword:Ljava/lang/String;

    invoke-interface {p1, v0, v1, p2}, Lorg/mortbay/jetty/security/UserRealm;->authenticate(Ljava/lang/String;Ljava/lang/Object;Lorg/mortbay/jetty/Request;)Ljava/security/Principal;

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/jetty/security/FormAuthenticator$FormCredential;->_userPrincipal:Ljava/security/Principal;

    if-eqz v0, :cond_0

    .line 8
    iput-object p1, p0, Lorg/mortbay/jetty/security/FormAuthenticator$FormCredential;->_realm:Lorg/mortbay/jetty/security/UserRealm;

    goto :goto_0

    .line 9
    :cond_0
    iget-object p0, p0, Lorg/mortbay/jetty/security/FormAuthenticator$FormCredential;->_jUserName:Ljava/lang/String;

    invoke-static {p0}, Lorg/mortbay/util/StringUtil;->printable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "AUTH FAILURE: user {}"

    invoke-static {p1, p0}, Lorg/mortbay/log/Log;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p0, 0x0

    .line 10
    invoke-virtual {p2, p0}, Lorg/mortbay/jetty/Request;->setUserPrincipal(Ljava/security/Principal;)V

    :goto_0
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lorg/mortbay/jetty/security/FormAuthenticator$FormCredential;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lorg/mortbay/jetty/security/FormAuthenticator$FormCredential;

    iget-object v0, p0, Lorg/mortbay/jetty/security/FormAuthenticator$FormCredential;->_jUserName:Ljava/lang/String;

    iget-object v2, p1, Lorg/mortbay/jetty/security/FormAuthenticator$FormCredential;->_jUserName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lorg/mortbay/jetty/security/FormAuthenticator$FormCredential;->_jPassword:Ljava/lang/String;

    iget-object p1, p1, Lorg/mortbay/jetty/security/FormAuthenticator$FormCredential;->_jPassword:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lorg/mortbay/jetty/security/FormAuthenticator$FormCredential;->_jUserName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget-object p0, p0, Lorg/mortbay/jetty/security/FormAuthenticator$FormCredential;->_jPassword:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "Cred["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p0, p0, Lorg/mortbay/jetty/security/FormAuthenticator$FormCredential;->_jUserName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public valueBound(Ljavax/servlet/http/HttpSessionBindingEvent;)V
    .locals 0

    return-void
.end method

.method public valueUnbound(Ljavax/servlet/http/HttpSessionBindingEvent;)V
    .locals 1

    invoke-static {}, Lorg/mortbay/log/Log;->isDebugEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v0, "Logout "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lorg/mortbay/jetty/security/FormAuthenticator$FormCredential;->_jUserName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;)V

    :cond_0
    iget-object p1, p0, Lorg/mortbay/jetty/security/FormAuthenticator$FormCredential;->_realm:Lorg/mortbay/jetty/security/UserRealm;

    instance-of v0, p1, Lorg/mortbay/jetty/security/SSORealm;

    if-eqz v0, :cond_1

    check-cast p1, Lorg/mortbay/jetty/security/SSORealm;

    iget-object v0, p0, Lorg/mortbay/jetty/security/FormAuthenticator$FormCredential;->_jUserName:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/mortbay/jetty/security/SSORealm;->clearSingleSignOn(Ljava/lang/String;)V

    :cond_1
    iget-object p1, p0, Lorg/mortbay/jetty/security/FormAuthenticator$FormCredential;->_realm:Lorg/mortbay/jetty/security/UserRealm;

    if-eqz p1, :cond_2

    iget-object p0, p0, Lorg/mortbay/jetty/security/FormAuthenticator$FormCredential;->_userPrincipal:Ljava/security/Principal;

    if-eqz p0, :cond_2

    invoke-interface {p1, p0}, Lorg/mortbay/jetty/security/UserRealm;->logout(Ljava/security/Principal;)V

    :cond_2
    return-void
.end method
