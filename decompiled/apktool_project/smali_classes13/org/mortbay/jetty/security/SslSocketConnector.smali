.class public Lorg/mortbay/jetty/security/SslSocketConnector;
.super Lorg/mortbay/jetty/bio/SocketConnector;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mortbay/jetty/security/SslSocketConnector$SslConnection;,
        Lorg/mortbay/jetty/security/SslSocketConnector$a;
    }
.end annotation


# static fields
.field public static final DEFAULT_KEYSTORE:Ljava/lang/String;

.field public static final KEYPASSWORD_PROPERTY:Ljava/lang/String; = "jetty.ssl.keypassword"

.field public static final PASSWORD_PROPERTY:Ljava/lang/String; = "jetty.ssl.password"

.field public static final X0:Ljava/lang/String;

.field public static synthetic Y0:Ljava/lang/Class;


# instance fields
.field public G0:[Ljava/lang/String;

.field public H0:Ljava/lang/String;

.field public I0:Ljava/lang/String;

.field public J0:Z

.field public transient K0:Lorg/mortbay/jetty/security/Password;

.field public transient L0:Lorg/mortbay/jetty/security/Password;

.field public transient M0:Lorg/mortbay/jetty/security/Password;

.field public N0:Ljava/lang/String;

.field public O0:Ljava/lang/String;

.field public P0:Ljava/lang/String;

.field public Q0:Ljava/lang/String;

.field public R0:Ljava/lang/String;

.field public S0:Ljava/lang/String;

.field public T0:Ljava/lang/String;

.field public U0:Z

.field public V0:I

.field public W0:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    sget-object v0, Lorg/mortbay/jetty/security/SslSocketConnector;->Y0:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "org.mortbay.jetty.security.SslSocketConnector$CachedInfo"

    invoke-static {v0}, Lorg/mortbay/jetty/security/SslSocketConnector;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/mortbay/jetty/security/SslSocketConnector;->Y0:Ljava/lang/Class;

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/mortbay/jetty/security/SslSocketConnector;->X0:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "user.home"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ".keystore"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/mortbay/jetty/security/SslSocketConnector;->DEFAULT_KEYSTORE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    invoke-direct {p0}, Lorg/mortbay/jetty/bio/SocketConnector;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/mortbay/jetty/security/SslSocketConnector;->G0:[Ljava/lang/String;

    sget-object v0, Lorg/mortbay/jetty/security/SslSocketConnector;->DEFAULT_KEYSTORE:Ljava/lang/String;

    iput-object v0, p0, Lorg/mortbay/jetty/security/SslSocketConnector;->H0:Ljava/lang/String;

    const-string v0, "JKS"

    iput-object v0, p0, Lorg/mortbay/jetty/security/SslSocketConnector;->I0:Ljava/lang/String;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/mortbay/jetty/security/SslSocketConnector;->J0:Z

    const-string v2, "TLS"

    iput-object v2, p0, Lorg/mortbay/jetty/security/SslSocketConnector;->N0:Ljava/lang/String;

    const-string v2, "ssl.KeyManagerFactory.algorithm"

    invoke-static {v2}, Ljava/security/Security;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "SunX509"

    if-nez v3, :cond_0

    move-object v2, v4

    goto :goto_0

    :cond_0
    invoke-static {v2}, Ljava/security/Security;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_0
    iput-object v2, p0, Lorg/mortbay/jetty/security/SslSocketConnector;->Q0:Ljava/lang/String;

    const-string v2, "ssl.TrustManagerFactory.algorithm"

    invoke-static {v2}, Ljava/security/Security;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {v2}, Ljava/security/Security;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :goto_1
    iput-object v4, p0, Lorg/mortbay/jetty/security/SslSocketConnector;->R0:Ljava/lang/String;

    iput-object v0, p0, Lorg/mortbay/jetty/security/SslSocketConnector;->T0:Ljava/lang/String;

    iput-boolean v1, p0, Lorg/mortbay/jetty/security/SslSocketConnector;->U0:Z

    iput v1, p0, Lorg/mortbay/jetty/security/SslSocketConnector;->V0:I

    iput-boolean v1, p0, Lorg/mortbay/jetty/security/SslSocketConnector;->W0:Z

    return-void
.end method

.method public static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/NoClassDefFoundError;

    invoke-direct {v0}, Ljava/lang/NoClassDefFoundError;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    throw p0
.end method

.method public static synthetic k(Lorg/mortbay/jetty/security/SslSocketConnector;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/mortbay/jetty/security/SslSocketConnector;->W0:Z

    return p0
.end method

.method public static l(Ljavax/net/ssl/SSLSession;)[Ljava/security/cert/X509Certificate;
    .locals 7

    const/4 v0, 0x0

    :try_start_0
    invoke-interface {p0}, Ljavax/net/ssl/SSLSession;->getPeerCertificateChain()[Ljavax/security/cert/X509Certificate;

    move-result-object p0

    if-eqz p0, :cond_2

    array-length v1, p0

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    array-length v1, p0

    new-array v2, v1, [Ljava/security/cert/X509Certificate;

    const-string v3, "X.509"

    invoke-static {v3}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_1

    aget-object v5, p0, v4

    invoke-virtual {v5}, Ljavax/security/cert/Certificate;->getEncoded()[B

    move-result-object v5

    new-instance v6, Ljava/io/ByteArrayInputStream;

    invoke-direct {v6, v5}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v3, v6}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v5

    check-cast v5, Ljava/security/cert/X509Certificate;

    aput-object v5, v2, v4
    :try_end_0
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return-object v2

    :cond_2
    :goto_1
    return-object v0

    :catch_0
    move-exception p0

    const-string v1, "EXCEPTION "

    invoke-static {v1, p0}, Lorg/mortbay/log/Log;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    :catch_1
    return-object v0
.end method


# virtual methods
.method public accept(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    :try_start_0
    iget-object p1, p0, Lorg/mortbay/jetty/bio/SocketConnector;->_serverSocket:Ljava/net/ServerSocket;

    invoke-virtual {p1}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/mortbay/jetty/security/SslSocketConnector;->configure(Ljava/net/Socket;)V

    new-instance v0, Lorg/mortbay/jetty/security/SslSocketConnector$SslConnection;

    invoke-direct {v0, p0, p1}, Lorg/mortbay/jetty/security/SslSocketConnector$SslConnection;-><init>(Lorg/mortbay/jetty/security/SslSocketConnector;Ljava/net/Socket;)V

    invoke-virtual {v0}, Lorg/mortbay/jetty/bio/SocketConnector$Connection;->dispatch()V
    :try_end_0
    .catch Ljavax/net/ssl/SSLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {p1}, Lorg/mortbay/log/Log;->warn(Ljava/lang/Throwable;)V

    :try_start_1
    invoke-virtual {p0}, Lorg/mortbay/component/AbstractLifeCycle;->stop()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    return-void

    :catch_1
    move-exception p0

    invoke-static {p0}, Lorg/mortbay/log/Log;->warn(Ljava/lang/Throwable;)V

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public configure(Ljava/net/Socket;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1}, Lorg/mortbay/jetty/AbstractConnector;->configure(Ljava/net/Socket;)V

    return-void
.end method

.method public createFactory()Ljavax/net/ssl/SSLServerSocketFactory;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lorg/mortbay/jetty/security/SslSocketConnector;->S0:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/mortbay/jetty/security/SslSocketConnector;->H0:Ljava/lang/String;

    iput-object v0, p0, Lorg/mortbay/jetty/security/SslSocketConnector;->S0:Ljava/lang/String;

    iget-object v0, p0, Lorg/mortbay/jetty/security/SslSocketConnector;->I0:Ljava/lang/String;

    iput-object v0, p0, Lorg/mortbay/jetty/security/SslSocketConnector;->T0:Ljava/lang/String;

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lorg/mortbay/jetty/security/SslSocketConnector;->H0:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-static {v1}, Lorg/mortbay/resource/Resource;->newResource(Ljava/lang/String;)Lorg/mortbay/resource/Resource;

    move-result-object v1

    invoke-virtual {v1}, Lorg/mortbay/resource/Resource;->getInputStream()Ljava/io/InputStream;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    goto :goto_0

    :cond_1
    move-object v1, v0

    :goto_0
    :try_start_1
    iget-object v2, p0, Lorg/mortbay/jetty/security/SslSocketConnector;->I0:Ljava/lang/String;

    invoke-static {v2}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v2

    iget-object v3, p0, Lorg/mortbay/jetty/security/SslSocketConnector;->K0:Lorg/mortbay/jetty/security/Password;

    if-nez v3, :cond_2

    move-object v3, v0

    goto :goto_1

    :cond_2
    invoke-virtual {v3}, Lorg/mortbay/jetty/security/Password;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    :goto_1
    invoke-virtual {v2, v1, v3}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    :cond_3
    iget-object v1, p0, Lorg/mortbay/jetty/security/SslSocketConnector;->Q0:Ljava/lang/String;

    invoke-static {v1}, Ljavax/net/ssl/KeyManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/KeyManagerFactory;

    move-result-object v1

    iget-object v3, p0, Lorg/mortbay/jetty/security/SslSocketConnector;->L0:Lorg/mortbay/jetty/security/Password;

    if-nez v3, :cond_4

    move-object v3, v0

    goto :goto_2

    :cond_4
    invoke-virtual {v3}, Lorg/mortbay/jetty/security/Password;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    :goto_2
    invoke-virtual {v1, v2, v3}, Ljavax/net/ssl/KeyManagerFactory;->init(Ljava/security/KeyStore;[C)V

    invoke-virtual {v1}, Ljavax/net/ssl/KeyManagerFactory;->getKeyManagers()[Ljavax/net/ssl/KeyManager;

    move-result-object v1

    :try_start_2
    iget-object v2, p0, Lorg/mortbay/jetty/security/SslSocketConnector;->S0:Ljava/lang/String;

    if-eqz v2, :cond_5

    invoke-static {v2}, Lorg/mortbay/resource/Resource;->newResource(Ljava/lang/String;)Lorg/mortbay/resource/Resource;

    move-result-object v2

    invoke-virtual {v2}, Lorg/mortbay/resource/Resource;->getInputStream()Ljava/io/InputStream;

    move-result-object v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_3

    :cond_5
    move-object v2, v0

    :goto_3
    :try_start_3
    iget-object v3, p0, Lorg/mortbay/jetty/security/SslSocketConnector;->T0:Ljava/lang/String;

    invoke-static {v3}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v3

    iget-object v4, p0, Lorg/mortbay/jetty/security/SslSocketConnector;->M0:Lorg/mortbay/jetty/security/Password;

    if-nez v4, :cond_6

    move-object v4, v0

    goto :goto_4

    :cond_6
    invoke-virtual {v4}, Lorg/mortbay/jetty/security/Password;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    :goto_4
    invoke-virtual {v3, v2, v4}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    :cond_7
    iget-object v2, p0, Lorg/mortbay/jetty/security/SslSocketConnector;->R0:Ljava/lang/String;

    invoke-static {v2}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    invoke-virtual {v2}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v2

    iget-object v3, p0, Lorg/mortbay/jetty/security/SslSocketConnector;->P0:Ljava/lang/String;

    if-nez v3, :cond_8

    goto :goto_5

    :cond_8
    invoke-static {v3}, Ljava/security/SecureRandom;->getInstance(Ljava/lang/String;)Ljava/security/SecureRandom;

    move-result-object v0

    :goto_5
    iget-object v3, p0, Lorg/mortbay/jetty/security/SslSocketConnector;->O0:Ljava/lang/String;

    iget-object p0, p0, Lorg/mortbay/jetty/security/SslSocketConnector;->N0:Ljava/lang/String;

    if-nez v3, :cond_9

    invoke-static {p0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object p0

    goto :goto_6

    :cond_9
    invoke-static {p0, v3}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object p0

    :goto_6
    invoke-virtual {p0, v1, v2, v0}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    invoke-virtual {p0}, Ljavax/net/ssl/SSLContext;->getServerSocketFactory()Ljavax/net/ssl/SSLServerSocketFactory;

    move-result-object p0

    return-object p0

    :catchall_0
    move-exception p0

    move-object v0, v2

    goto :goto_7

    :catchall_1
    move-exception p0

    :goto_7
    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_a
    throw p0

    :catchall_2
    move-exception p0

    move-object v0, v1

    goto :goto_8

    :catchall_3
    move-exception p0

    :goto_8
    if-eqz v0, :cond_b

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_b
    throw p0
.end method

.method public customize(Lorg/mortbay/io/EndPoint;Lorg/mortbay/jetty/Request;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lorg/mortbay/jetty/bio/SocketConnector;->customize(Lorg/mortbay/io/EndPoint;Lorg/mortbay/jetty/Request;)V

    const-string v0, "https"

    invoke-virtual {p2, v0}, Lorg/mortbay/jetty/Request;->setScheme(Ljava/lang/String;)V

    check-cast p1, Lorg/mortbay/io/bio/SocketEndPoint;

    invoke-virtual {p1}, Lorg/mortbay/io/bio/SocketEndPoint;->getTransport()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljavax/net/ssl/SSLSocket;

    :try_start_0
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object p1

    invoke-interface {p1}, Ljavax/net/ssl/SSLSession;->getCipherSuite()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lorg/mortbay/jetty/security/SslSocketConnector;->X0:Ljava/lang/String;

    invoke-interface {p1, v1}, Ljavax/net/ssl/SSLSession;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/mortbay/jetty/security/SslSocketConnector$a;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lorg/mortbay/jetty/security/SslSocketConnector$a;->b()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v2}, Lorg/mortbay/jetty/security/SslSocketConnector$a;->a()[Ljava/security/cert/X509Certificate;

    move-result-object v1

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/Integer;

    invoke-static {v0}, Lorg/mortbay/jetty/security/ServletSSL;->deduceKeyLength(Ljava/lang/String;)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {p1}, Lorg/mortbay/jetty/security/SslSocketConnector;->l(Ljavax/net/ssl/SSLSession;)[Ljava/security/cert/X509Certificate;

    move-result-object v3

    new-instance v4, Lorg/mortbay/jetty/security/SslSocketConnector$a;

    invoke-direct {v4, p0, v2, v3}, Lorg/mortbay/jetty/security/SslSocketConnector$a;-><init>(Lorg/mortbay/jetty/security/SslSocketConnector;Ljava/lang/Integer;[Ljava/security/cert/X509Certificate;)V

    invoke-interface {p1, v1, v4}, Ljavax/net/ssl/SSLSession;->putValue(Ljava/lang/String;Ljava/lang/Object;)V

    move-object p1, v2

    move-object v1, v3

    :goto_0
    if-eqz v1, :cond_1

    const-string p0, "javax.servlet.request.X509Certificate"

    invoke-virtual {p2, p0, v1}, Lorg/mortbay/jetty/Request;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    iget-boolean p0, p0, Lorg/mortbay/jetty/security/SslSocketConnector;->J0:Z

    if-nez p0, :cond_2

    :goto_1
    const-string p0, "javax.servlet.request.cipher_suite"

    invoke-virtual {p2, p0, v0}, Lorg/mortbay/jetty/Request;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p0, "javax.servlet.request.key_size"

    invoke-virtual {p2, p0, p1}, Lorg/mortbay/jetty/Request;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "no client auth"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    const-string p1, "EXCEPTION "

    invoke-static {p1, p0}, Lorg/mortbay/log/Log;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    return-void
.end method

.method public getExcludeCipherSuites()[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/jetty/security/SslSocketConnector;->G0:[Ljava/lang/String;

    return-object p0
.end method

.method public getHandshakeTimeout()I
    .locals 0

    iget p0, p0, Lorg/mortbay/jetty/security/SslSocketConnector;->V0:I

    return p0
.end method

.method public getKeystore()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/jetty/security/SslSocketConnector;->H0:Ljava/lang/String;

    return-object p0
.end method

.method public getKeystoreType()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/jetty/security/SslSocketConnector;->I0:Ljava/lang/String;

    return-object p0
.end method

.method public getNeedClientAuth()Z
    .locals 0

    iget-boolean p0, p0, Lorg/mortbay/jetty/security/SslSocketConnector;->J0:Z

    return p0
.end method

.method public getProtocol()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/jetty/security/SslSocketConnector;->N0:Ljava/lang/String;

    return-object p0
.end method

.method public getProvider()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/jetty/security/SslSocketConnector;->O0:Ljava/lang/String;

    return-object p0
.end method

.method public getSecureRandomAlgorithm()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/jetty/security/SslSocketConnector;->P0:Ljava/lang/String;

    return-object p0
.end method

.method public getSslKeyManagerFactoryAlgorithm()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/jetty/security/SslSocketConnector;->Q0:Ljava/lang/String;

    return-object p0
.end method

.method public getSslTrustManagerFactoryAlgorithm()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/jetty/security/SslSocketConnector;->R0:Ljava/lang/String;

    return-object p0
.end method

.method public getTruststore()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/jetty/security/SslSocketConnector;->S0:Ljava/lang/String;

    return-object p0
.end method

.method public getTruststoreType()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/jetty/security/SslSocketConnector;->T0:Ljava/lang/String;

    return-object p0
.end method

.method public getWantClientAuth()Z
    .locals 0

    iget-boolean p0, p0, Lorg/mortbay/jetty/security/SslSocketConnector;->U0:Z

    return p0
.end method

.method public isAllowRenegotiate()Z
    .locals 0

    iget-boolean p0, p0, Lorg/mortbay/jetty/security/SslSocketConnector;->W0:Z

    return p0
.end method

.method public isConfidential(Lorg/mortbay/jetty/Request;)Z
    .locals 0

    invoke-virtual {p0}, Lorg/mortbay/jetty/AbstractConnector;->getConfidentialPort()I

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {p1}, Lorg/mortbay/jetty/Request;->getServerPort()I

    move-result p1

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public isIntegral(Lorg/mortbay/jetty/Request;)Z
    .locals 0

    invoke-virtual {p0}, Lorg/mortbay/jetty/AbstractConnector;->getIntegralPort()I

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {p1}, Lorg/mortbay/jetty/Request;->getServerPort()I

    move-result p1

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public newServerSocket(Ljava/lang/String;II)Ljava/net/ServerSocket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lorg/mortbay/jetty/security/SslSocketConnector;->createFactory()Ljavax/net/ssl/SSLServerSocketFactory;

    move-result-object v0

    if-nez p1, :cond_0

    invoke-virtual {v0, p2, p3}, Ljavax/net/ServerSocketFactory;->createServerSocket(II)Ljava/net/ServerSocket;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object p1

    invoke-virtual {v0, p2, p3, p1}, Ljavax/net/ServerSocketFactory;->createServerSocket(IILjava/net/InetAddress;)Ljava/net/ServerSocket;

    move-result-object p1

    :goto_0
    check-cast p1, Ljavax/net/ssl/SSLServerSocket;

    iget-boolean p2, p0, Lorg/mortbay/jetty/security/SslSocketConnector;->U0:Z

    if-eqz p2, :cond_1

    invoke-virtual {p1, p2}, Ljavax/net/ssl/SSLServerSocket;->setWantClientAuth(Z)V

    :cond_1
    iget-boolean p2, p0, Lorg/mortbay/jetty/security/SslSocketConnector;->J0:Z

    if-eqz p2, :cond_2

    invoke-virtual {p1, p2}, Ljavax/net/ssl/SSLServerSocket;->setNeedClientAuth(Z)V

    :cond_2
    iget-object p0, p0, Lorg/mortbay/jetty/security/SslSocketConnector;->G0:[Ljava/lang/String;

    if-eqz p0, :cond_5

    array-length p2, p0

    if-lez p2, :cond_5

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {p1}, Ljavax/net/ssl/SSLServerSocket;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-direct {p3, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_3
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-interface {p3, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p3, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p0

    new-array p0, p0, [Ljava/lang/String;

    invoke-interface {p3, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljavax/net/ssl/SSLServerSocket;->setEnabledCipherSuites([Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    return-object p1

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/mortbay/log/Log;->warn(Ljava/lang/String;)V

    invoke-static {p0}, Lorg/mortbay/log/Log;->debug(Ljava/lang/Throwable;)V

    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuffer;

    invoke-direct {p2}, Ljava/lang/StringBuffer;-><init>()V

    const-string p3, "!JsseListener: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_1
    move-exception p0

    throw p0
.end method

.method public setAllowRenegotiate(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/mortbay/jetty/security/SslSocketConnector;->W0:Z

    return-void
.end method

.method public setExcludeCipherSuites([Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/mortbay/jetty/security/SslSocketConnector;->G0:[Ljava/lang/String;

    return-void
.end method

.method public setHandshakeTimeout(I)V
    .locals 0

    iput p1, p0, Lorg/mortbay/jetty/security/SslSocketConnector;->V0:I

    return-void
.end method

.method public setKeyPassword(Ljava/lang/String;)V
    .locals 2

    const-string v0, "jetty.ssl.keypassword"

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lorg/mortbay/jetty/security/Password;->getPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/mortbay/jetty/security/Password;

    move-result-object p1

    iput-object p1, p0, Lorg/mortbay/jetty/security/SslSocketConnector;->L0:Lorg/mortbay/jetty/security/Password;

    return-void
.end method

.method public setKeystore(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/mortbay/jetty/security/SslSocketConnector;->H0:Ljava/lang/String;

    return-void
.end method

.method public setKeystoreType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/mortbay/jetty/security/SslSocketConnector;->I0:Ljava/lang/String;

    return-void
.end method

.method public setNeedClientAuth(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/mortbay/jetty/security/SslSocketConnector;->J0:Z

    return-void
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 2

    const-string v0, "jetty.ssl.password"

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lorg/mortbay/jetty/security/Password;->getPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/mortbay/jetty/security/Password;

    move-result-object p1

    iput-object p1, p0, Lorg/mortbay/jetty/security/SslSocketConnector;->K0:Lorg/mortbay/jetty/security/Password;

    return-void
.end method

.method public setProtocol(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/mortbay/jetty/security/SslSocketConnector;->N0:Ljava/lang/String;

    return-void
.end method

.method public setProvider(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/mortbay/jetty/security/SslSocketConnector;->O0:Ljava/lang/String;

    return-void
.end method

.method public setSecureRandomAlgorithm(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/mortbay/jetty/security/SslSocketConnector;->P0:Ljava/lang/String;

    return-void
.end method

.method public setSslKeyManagerFactoryAlgorithm(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/mortbay/jetty/security/SslSocketConnector;->Q0:Ljava/lang/String;

    return-void
.end method

.method public setSslTrustManagerFactoryAlgorithm(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/mortbay/jetty/security/SslSocketConnector;->R0:Ljava/lang/String;

    return-void
.end method

.method public setTrustPassword(Ljava/lang/String;)V
    .locals 2

    const-string v0, "jetty.ssl.password"

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lorg/mortbay/jetty/security/Password;->getPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/mortbay/jetty/security/Password;

    move-result-object p1

    iput-object p1, p0, Lorg/mortbay/jetty/security/SslSocketConnector;->M0:Lorg/mortbay/jetty/security/Password;

    return-void
.end method

.method public setTruststore(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/mortbay/jetty/security/SslSocketConnector;->S0:Ljava/lang/String;

    return-void
.end method

.method public setTruststoreType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/mortbay/jetty/security/SslSocketConnector;->T0:Ljava/lang/String;

    return-void
.end method

.method public setWantClientAuth(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/mortbay/jetty/security/SslSocketConnector;->U0:Z

    return-void
.end method
