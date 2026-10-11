.class public Lorg/mortbay/jetty/security/ClientCertAuthenticator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/mortbay/jetty/security/Authenticator;


# instance fields
.field private _maxHandShakeSeconds:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x3c

    iput v0, p0, Lorg/mortbay/jetty/security/ClientCertAuthenticator;->_maxHandShakeSeconds:I

    return-void
.end method


# virtual methods
.method public authenticate(Lorg/mortbay/jetty/security/UserRealm;Ljava/lang/String;Lorg/mortbay/jetty/Request;Lorg/mortbay/jetty/Response;)Ljava/security/Principal;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string p0, "javax.servlet.request.X509Certificate"

    invoke-virtual {p3, p0}, Lorg/mortbay/jetty/Request;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/security/cert/X509Certificate;

    const/16 p2, 0x193

    const/4 v0, 0x0

    if-eqz p0, :cond_5

    array-length v1, p0

    if-eqz v1, :cond_5

    const/4 v1, 0x0

    aget-object v2, p0, v1

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v2

    if-nez v2, :cond_1

    aget-object v1, p0, v1

    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v2

    :cond_1
    if-nez v2, :cond_2

    const-string v1, "clientcert"

    goto :goto_0

    :cond_2
    invoke-interface {v2}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-interface {p1, v1, p0, p3}, Lorg/mortbay/jetty/security/UserRealm;->authenticate(Ljava/lang/String;Ljava/lang/Object;Lorg/mortbay/jetty/Request;)Ljava/security/Principal;

    move-result-object p0

    if-nez p0, :cond_4

    if-eqz p4, :cond_3

    const-string p0, "The provided client certificate does not correspond to a trusted user."

    invoke-virtual {p4, p2, p0}, Lorg/mortbay/jetty/Response;->sendError(ILjava/lang/String;)V

    :cond_3
    return-object v0

    :cond_4
    const-string p1, "CLIENT_CERT"

    invoke-virtual {p3, p1}, Lorg/mortbay/jetty/Request;->setAuthType(Ljava/lang/String;)V

    invoke-virtual {p3, p0}, Lorg/mortbay/jetty/Request;->setUserPrincipal(Ljava/security/Principal;)V

    return-object p0

    :cond_5
    :goto_1
    if-eqz p4, :cond_6

    const-string p0, "A client certificate is required for accessing this web application but the server\'s listener is not configured for mutual authentication (or the client did not provide a certificate)."

    invoke-virtual {p4, p2, p0}, Lorg/mortbay/jetty/Response;->sendError(ILjava/lang/String;)V

    :cond_6
    return-object v0
.end method

.method public getAuthMethod()Ljava/lang/String;
    .locals 0

    const-string p0, "CLIENT_CERT"

    return-object p0
.end method

.method public getMaxHandShakeSeconds()I
    .locals 0

    iget p0, p0, Lorg/mortbay/jetty/security/ClientCertAuthenticator;->_maxHandShakeSeconds:I

    return p0
.end method

.method public setMaxHandShakeSeconds(I)V
    .locals 0

    iput p1, p0, Lorg/mortbay/jetty/security/ClientCertAuthenticator;->_maxHandShakeSeconds:I

    return-void
.end method
