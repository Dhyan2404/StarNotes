.class public Lorg/mortbay/jetty/nio/BlockingChannelConnector;
.super Lorg/mortbay/jetty/nio/AbstractNIOConnector;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mortbay/jetty/nio/BlockingChannelConnector$a;
    }
.end annotation


# instance fields
.field public transient H0:Ljava/nio/channels/ServerSocketChannel;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/mortbay/jetty/nio/AbstractNIOConnector;-><init>()V

    return-void
.end method

.method public static synthetic i(Lorg/mortbay/jetty/nio/BlockingChannelConnector;Lorg/mortbay/jetty/HttpConnection;)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/mortbay/jetty/AbstractConnector;->connectionOpened(Lorg/mortbay/jetty/HttpConnection;)V

    return-void
.end method

.method public static synthetic j(Lorg/mortbay/jetty/nio/BlockingChannelConnector;Lorg/mortbay/jetty/HttpConnection;)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/mortbay/jetty/AbstractConnector;->connectionClosed(Lorg/mortbay/jetty/HttpConnection;)V

    return-void
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

    iget-object p1, p0, Lorg/mortbay/jetty/nio/BlockingChannelConnector;->H0:Ljava/nio/channels/ServerSocketChannel;

    invoke-virtual {p1}, Ljava/nio/channels/ServerSocketChannel;->accept()Ljava/nio/channels/SocketChannel;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/nio/channels/SelectableChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;

    invoke-virtual {p1}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/mortbay/jetty/AbstractConnector;->configure(Ljava/net/Socket;)V

    new-instance v0, Lorg/mortbay/jetty/nio/BlockingChannelConnector$a;

    invoke-direct {v0, p0, p1}, Lorg/mortbay/jetty/nio/BlockingChannelConnector$a;-><init>(Lorg/mortbay/jetty/nio/BlockingChannelConnector;Ljava/nio/channels/ByteChannel;)V

    invoke-virtual {v0}, Lorg/mortbay/jetty/nio/BlockingChannelConnector$a;->a()V

    return-void
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/mortbay/jetty/nio/BlockingChannelConnector;->H0:Ljava/nio/channels/ServerSocketChannel;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/mortbay/jetty/nio/BlockingChannelConnector;->H0:Ljava/nio/channels/ServerSocketChannel;

    return-void
.end method

.method public customize(Lorg/mortbay/io/EndPoint;Lorg/mortbay/jetty/Request;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object v0, p1

    check-cast v0, Lorg/mortbay/jetty/nio/BlockingChannelConnector$a;

    iget v1, v0, Lorg/mortbay/jetty/nio/BlockingChannelConnector$a;->g:I

    iget v2, p0, Lorg/mortbay/jetty/AbstractConnector;->_maxIdleTime:I

    if-eq v1, v2, :cond_0

    iput v2, v0, Lorg/mortbay/jetty/nio/BlockingChannelConnector$a;->g:I

    invoke-interface {p1}, Lorg/mortbay/io/EndPoint;->getTransport()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/channels/SocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v0

    iget v1, p0, Lorg/mortbay/jetty/AbstractConnector;->_maxIdleTime:I

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    :cond_0
    invoke-super {p0, p1, p2}, Lorg/mortbay/jetty/AbstractConnector;->customize(Lorg/mortbay/io/EndPoint;Lorg/mortbay/jetty/Request;)V

    invoke-interface {p1}, Lorg/mortbay/io/EndPoint;->getTransport()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/nio/channels/SocketChannel;

    invoke-virtual {p1}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/mortbay/jetty/AbstractConnector;->configure(Ljava/net/Socket;)V

    return-void
.end method

.method public getConnection()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/jetty/nio/BlockingChannelConnector;->H0:Ljava/nio/channels/ServerSocketChannel;

    return-object p0
.end method

.method public getLocalPort()I
    .locals 1

    iget-object v0, p0, Lorg/mortbay/jetty/nio/BlockingChannelConnector;->H0:Ljava/nio/channels/ServerSocketChannel;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/mortbay/jetty/nio/BlockingChannelConnector;->H0:Ljava/nio/channels/ServerSocketChannel;

    invoke-virtual {p0}, Ljava/nio/channels/ServerSocketChannel;->socket()Ljava/net/ServerSocket;

    move-result-object p0

    invoke-virtual {p0}, Ljava/net/ServerSocket;->getLocalPort()I

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, -0x1

    return p0
.end method

.method public open()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Ljava/nio/channels/ServerSocketChannel;->open()Ljava/nio/channels/ServerSocketChannel;

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/jetty/nio/BlockingChannelConnector;->H0:Ljava/nio/channels/ServerSocketChannel;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/nio/channels/SelectableChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;

    invoke-virtual {p0}, Lorg/mortbay/jetty/AbstractConnector;->getHost()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-virtual {p0}, Lorg/mortbay/jetty/AbstractConnector;->getPort()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/net/InetSocketAddress;-><init>(I)V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-virtual {p0}, Lorg/mortbay/jetty/AbstractConnector;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lorg/mortbay/jetty/AbstractConnector;->getPort()I

    move-result v2

    invoke-direct {v0, v1, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    :goto_0
    iget-object v1, p0, Lorg/mortbay/jetty/nio/BlockingChannelConnector;->H0:Ljava/nio/channels/ServerSocketChannel;

    invoke-virtual {v1}, Ljava/nio/channels/ServerSocketChannel;->socket()Ljava/net/ServerSocket;

    move-result-object v1

    invoke-virtual {p0}, Lorg/mortbay/jetty/AbstractConnector;->getAcceptQueueSize()I

    move-result p0

    invoke-virtual {v1, v0, p0}, Ljava/net/ServerSocket;->bind(Ljava/net/SocketAddress;I)V

    return-void
.end method
