.class public Lorg/mortbay/jetty/security/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljavax/net/ssl/HandshakeCompletedListener;


# instance fields
.field public e:Z

.field public final synthetic f:Ljavax/net/ssl/SSLSocket;

.field public final synthetic g:Lorg/mortbay/jetty/security/SslSocketConnector$SslConnection;


# direct methods
.method public constructor <init>(Lorg/mortbay/jetty/security/SslSocketConnector$SslConnection;Ljavax/net/ssl/SSLSocket;)V
    .locals 0

    iput-object p1, p0, Lorg/mortbay/jetty/security/f;->g:Lorg/mortbay/jetty/security/SslSocketConnector$SslConnection;

    iput-object p2, p0, Lorg/mortbay/jetty/security/f;->f:Ljavax/net/ssl/SSLSocket;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/mortbay/jetty/security/f;->e:Z

    return-void
.end method


# virtual methods
.method public handshakeCompleted(Ljavax/net/ssl/HandshakeCompletedEvent;)V
    .locals 1

    iget-boolean p1, p0, Lorg/mortbay/jetty/security/f;->e:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/mortbay/jetty/security/f;->g:Lorg/mortbay/jetty/security/SslSocketConnector$SslConnection;

    invoke-static {p1}, Lorg/mortbay/jetty/security/SslSocketConnector$SslConnection;->a(Lorg/mortbay/jetty/security/SslSocketConnector$SslConnection;)Lorg/mortbay/jetty/security/SslSocketConnector;

    move-result-object p1

    invoke-static {p1}, Lorg/mortbay/jetty/security/SslSocketConnector;->k(Lorg/mortbay/jetty/security/SslSocketConnector;)Z

    move-result p1

    if-nez p1, :cond_1

    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v0, "SSL renegotiate denied: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lorg/mortbay/jetty/security/f;->f:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/mortbay/log/Log;->warn(Ljava/lang/String;)V

    :try_start_0
    iget-object p0, p0, Lorg/mortbay/jetty/security/f;->f:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {p0}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lorg/mortbay/log/Log;->warn(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/mortbay/jetty/security/f;->e:Z

    :cond_1
    :goto_0
    return-void
.end method
