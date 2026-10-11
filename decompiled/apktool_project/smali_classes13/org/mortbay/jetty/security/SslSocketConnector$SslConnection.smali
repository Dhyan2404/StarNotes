.class public Lorg/mortbay/jetty/security/SslSocketConnector$SslConnection;
.super Lorg/mortbay/jetty/bio/SocketConnector$Connection;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mortbay/jetty/security/SslSocketConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SslConnection"
.end annotation


# instance fields
.field public final synthetic n:Lorg/mortbay/jetty/security/SslSocketConnector;


# direct methods
.method public constructor <init>(Lorg/mortbay/jetty/security/SslSocketConnector;Ljava/net/Socket;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iput-object p1, p0, Lorg/mortbay/jetty/security/SslSocketConnector$SslConnection;->n:Lorg/mortbay/jetty/security/SslSocketConnector;

    invoke-direct {p0, p1, p2}, Lorg/mortbay/jetty/bio/SocketConnector$Connection;-><init>(Lorg/mortbay/jetty/bio/SocketConnector;Ljava/net/Socket;)V

    return-void
.end method

.method public static synthetic a(Lorg/mortbay/jetty/security/SslSocketConnector$SslConnection;)Lorg/mortbay/jetty/security/SslSocketConnector;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/jetty/security/SslSocketConnector$SslConnection;->n:Lorg/mortbay/jetty/security/SslSocketConnector;

    return-object p0
.end method


# virtual methods
.method public run()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lorg/mortbay/jetty/security/SslSocketConnector$SslConnection;->n:Lorg/mortbay/jetty/security/SslSocketConnector;

    invoke-virtual {v0}, Lorg/mortbay/jetty/security/SslSocketConnector;->getHandshakeTimeout()I

    move-result v0

    iget-object v1, p0, Lorg/mortbay/jetty/bio/SocketConnector$Connection;->_socket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getSoTimeout()I

    move-result v1

    if-lez v0, :cond_0

    iget-object v2, p0, Lorg/mortbay/jetty/bio/SocketConnector$Connection;->_socket:Ljava/net/Socket;

    invoke-virtual {v2, v0}, Ljava/net/Socket;->setSoTimeout(I)V

    :cond_0
    iget-object v2, p0, Lorg/mortbay/jetty/bio/SocketConnector$Connection;->_socket:Ljava/net/Socket;

    check-cast v2, Ljavax/net/ssl/SSLSocket;

    new-instance v3, Lorg/mortbay/jetty/security/f;

    invoke-direct {v3, p0, v2}, Lorg/mortbay/jetty/security/f;-><init>(Lorg/mortbay/jetty/security/SslSocketConnector$SslConnection;Ljavax/net/ssl/SSLSocket;)V

    invoke-virtual {v2, v3}, Ljavax/net/ssl/SSLSocket;->addHandshakeCompletedListener(Ljavax/net/ssl/HandshakeCompletedListener;)V

    invoke-virtual {v2}, Ljavax/net/ssl/SSLSocket;->startHandshake()V

    if-lez v0, :cond_1

    iget-object v0, p0, Lorg/mortbay/jetty/bio/SocketConnector$Connection;->_socket:Ljava/net/Socket;

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    :cond_1
    invoke-super {p0}, Lorg/mortbay/jetty/bio/SocketConnector$Connection;->run()V
    :try_end_0
    .catch Ljavax/net/ssl/SSLException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/mortbay/log/Log;->debug(Ljava/lang/Throwable;)V

    :try_start_1
    invoke-virtual {p0}, Lorg/mortbay/io/bio/SocketEndPoint;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p0

    invoke-static {p0}, Lorg/mortbay/log/Log;->ignore(Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_2
    move-exception v0

    invoke-static {v0}, Lorg/mortbay/log/Log;->warn(Ljava/lang/Throwable;)V

    :try_start_2
    invoke-virtual {p0}, Lorg/mortbay/io/bio/SocketEndPoint;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_0

    :catch_3
    move-exception p0

    invoke-static {p0}, Lorg/mortbay/log/Log;->ignore(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public shutdownOutput()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/mortbay/io/bio/SocketEndPoint;->close()V

    return-void
.end method
