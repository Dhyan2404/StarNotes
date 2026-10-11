.class public Lorg/mortbay/jetty/bio/SocketConnector;
.super Lorg/mortbay/jetty/AbstractConnector;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mortbay/jetty/bio/SocketConnector$Connection;
    }
.end annotation


# instance fields
.field protected _connections:Ljava/util/Set;

.field protected _serverSocket:Ljava/net/ServerSocket;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/mortbay/jetty/AbstractConnector;-><init>()V

    return-void
.end method

.method public static synthetic i(Lorg/mortbay/jetty/bio/SocketConnector;Lorg/mortbay/jetty/HttpConnection;)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/mortbay/jetty/AbstractConnector;->connectionOpened(Lorg/mortbay/jetty/HttpConnection;)V

    return-void
.end method

.method public static synthetic j(Lorg/mortbay/jetty/bio/SocketConnector;Lorg/mortbay/jetty/HttpConnection;)V
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

    iget-object p1, p0, Lorg/mortbay/jetty/bio/SocketConnector;->_serverSocket:Ljava/net/ServerSocket;

    invoke-virtual {p1}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/mortbay/jetty/AbstractConnector;->configure(Ljava/net/Socket;)V

    new-instance v0, Lorg/mortbay/jetty/bio/SocketConnector$Connection;

    invoke-direct {v0, p0, p1}, Lorg/mortbay/jetty/bio/SocketConnector$Connection;-><init>(Lorg/mortbay/jetty/bio/SocketConnector;Ljava/net/Socket;)V

    invoke-virtual {v0}, Lorg/mortbay/jetty/bio/SocketConnector$Connection;->dispatch()V

    return-void
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/mortbay/jetty/bio/SocketConnector;->_serverSocket:Ljava/net/ServerSocket;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/net/ServerSocket;->close()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/mortbay/jetty/bio/SocketConnector;->_serverSocket:Ljava/net/ServerSocket;

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

    check-cast v0, Lorg/mortbay/jetty/bio/SocketConnector$Connection;

    iget v1, v0, Lorg/mortbay/jetty/bio/SocketConnector$Connection;->l:I

    iget v2, p0, Lorg/mortbay/jetty/AbstractConnector;->_maxIdleTime:I

    if-eq v1, v2, :cond_0

    iput v2, v0, Lorg/mortbay/jetty/bio/SocketConnector$Connection;->l:I

    invoke-interface {p1}, Lorg/mortbay/io/EndPoint;->getTransport()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/Socket;

    iget v1, p0, Lorg/mortbay/jetty/AbstractConnector;->_maxIdleTime:I

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    :cond_0
    invoke-super {p0, p1, p2}, Lorg/mortbay/jetty/AbstractConnector;->customize(Lorg/mortbay/io/EndPoint;Lorg/mortbay/jetty/Request;)V

    return-void
.end method

.method public doStart()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/mortbay/jetty/bio/SocketConnector;->_connections:Ljava/util/Set;

    invoke-super {p0}, Lorg/mortbay/jetty/AbstractConnector;->doStart()V

    return-void
.end method

.method public doStop()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-super {p0}, Lorg/mortbay/jetty/AbstractConnector;->doStop()V

    iget-object v0, p0, Lorg/mortbay/jetty/bio/SocketConnector;->_connections:Ljava/util/Set;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/util/HashSet;

    iget-object p0, p0, Lorg/mortbay/jetty/bio/SocketConnector;->_connections:Ljava/util/Set;

    invoke-direct {v1, p0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mortbay/jetty/bio/SocketConnector$Connection;

    invoke-virtual {v0}, Lorg/mortbay/io/bio/SocketEndPoint;->close()V

    goto :goto_0

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public getConnection()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/jetty/bio/SocketConnector;->_serverSocket:Ljava/net/ServerSocket;

    return-object p0
.end method

.method public getLocalPort()I
    .locals 1

    iget-object v0, p0, Lorg/mortbay/jetty/bio/SocketConnector;->_serverSocket:Ljava/net/ServerSocket;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/net/ServerSocket;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/mortbay/jetty/bio/SocketConnector;->_serverSocket:Ljava/net/ServerSocket;

    invoke-virtual {p0}, Ljava/net/ServerSocket;->getLocalPort()I

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, -0x1

    return p0
.end method

.method public newBuffer(I)Lorg/mortbay/io/Buffer;
    .locals 0

    new-instance p0, Lorg/mortbay/io/ByteArrayBuffer;

    invoke-direct {p0, p1}, Lorg/mortbay/io/ByteArrayBuffer;-><init>(I)V

    return-object p0
.end method

.method public newHttpConnection(Lorg/mortbay/io/EndPoint;)Lorg/mortbay/jetty/HttpConnection;
    .locals 2

    new-instance v0, Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {p0}, Lorg/mortbay/jetty/AbstractConnector;->getServer()Lorg/mortbay/jetty/Server;

    move-result-object v1

    invoke-direct {v0, p0, p1, v1}, Lorg/mortbay/jetty/HttpConnection;-><init>(Lorg/mortbay/jetty/Connector;Lorg/mortbay/io/EndPoint;Lorg/mortbay/jetty/Server;)V

    return-object v0
.end method

.method public newServerSocket(Ljava/lang/String;II)Ljava/net/ServerSocket;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance p0, Ljava/net/ServerSocket;

    if-nez p1, :cond_0

    invoke-direct {p0, p2, p3}, Ljava/net/ServerSocket;-><init>(II)V

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object p1

    invoke-direct {p0, p2, p3, p1}, Ljava/net/ServerSocket;-><init>(IILjava/net/InetAddress;)V

    :goto_0
    return-object p0
.end method

.method public open()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/mortbay/jetty/bio/SocketConnector;->_serverSocket:Ljava/net/ServerSocket;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/net/ServerSocket;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lorg/mortbay/jetty/AbstractConnector;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lorg/mortbay/jetty/AbstractConnector;->getPort()I

    move-result v1

    invoke-virtual {p0}, Lorg/mortbay/jetty/AbstractConnector;->getAcceptQueueSize()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lorg/mortbay/jetty/bio/SocketConnector;->newServerSocket(Ljava/lang/String;II)Ljava/net/ServerSocket;

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/jetty/bio/SocketConnector;->_serverSocket:Ljava/net/ServerSocket;

    :cond_1
    iget-object v0, p0, Lorg/mortbay/jetty/bio/SocketConnector;->_serverSocket:Ljava/net/ServerSocket;

    invoke-virtual {p0}, Lorg/mortbay/jetty/AbstractConnector;->getReuseAddress()Z

    move-result p0

    invoke-virtual {v0, p0}, Ljava/net/ServerSocket;->setReuseAddress(Z)V

    return-void
.end method
