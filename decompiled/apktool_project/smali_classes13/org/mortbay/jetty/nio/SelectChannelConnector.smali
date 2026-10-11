.class public Lorg/mortbay/jetty/nio/SelectChannelConnector;
.super Lorg/mortbay/jetty/nio/AbstractNIOConnector;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mortbay/jetty/nio/SelectChannelConnector$RetryContinuation;,
        Lorg/mortbay/jetty/nio/SelectChannelConnector$ConnectorEndPoint;
    }
.end annotation


# instance fields
.field public H0:J

.field public I0:J

.field public J0:Lorg/mortbay/io/nio/SelectorManager;

.field protected transient _acceptChannel:Ljava/nio/channels/ServerSocketChannel;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/mortbay/jetty/nio/AbstractNIOConnector;-><init>()V

    new-instance v0, Lorg/mortbay/jetty/nio/a;

    invoke-direct {v0, p0}, Lorg/mortbay/jetty/nio/a;-><init>(Lorg/mortbay/jetty/nio/SelectChannelConnector;)V

    iput-object v0, p0, Lorg/mortbay/jetty/nio/SelectChannelConnector;->J0:Lorg/mortbay/io/nio/SelectorManager;

    return-void
.end method

.method public static synthetic i(Lorg/mortbay/jetty/nio/SelectChannelConnector;Ljava/net/Socket;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/mortbay/jetty/AbstractConnector;->configure(Ljava/net/Socket;)V

    return-void
.end method

.method public static synthetic j(Lorg/mortbay/jetty/nio/SelectChannelConnector;Lorg/mortbay/jetty/HttpConnection;)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/mortbay/jetty/AbstractConnector;->connectionClosed(Lorg/mortbay/jetty/HttpConnection;)V

    return-void
.end method

.method public static synthetic k(Lorg/mortbay/jetty/nio/SelectChannelConnector;Lorg/mortbay/jetty/HttpConnection;)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/mortbay/jetty/AbstractConnector;->connectionOpened(Lorg/mortbay/jetty/HttpConnection;)V

    return-void
.end method


# virtual methods
.method public accept(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Lorg/mortbay/jetty/nio/SelectChannelConnector;->J0:Lorg/mortbay/io/nio/SelectorManager;

    invoke-virtual {p0, p1}, Lorg/mortbay/io/nio/SelectorManager;->doSelect(I)V

    return-void
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/mortbay/jetty/nio/SelectChannelConnector;->J0:Lorg/mortbay/io/nio/SelectorManager;

    invoke-virtual {v0}, Lorg/mortbay/component/AbstractLifeCycle;->isRunning()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    :try_start_1
    iget-object v0, p0, Lorg/mortbay/jetty/nio/SelectChannelConnector;->J0:Lorg/mortbay/io/nio/SelectorManager;

    invoke-virtual {v0}, Lorg/mortbay/component/AbstractLifeCycle;->stop()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-static {v0}, Lorg/mortbay/log/Log;->warn(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/mortbay/jetty/nio/SelectChannelConnector;->_acceptChannel:Ljava/nio/channels/ServerSocketChannel;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/mortbay/jetty/nio/SelectChannelConnector;->_acceptChannel:Ljava/nio/channels/ServerSocketChannel;

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public customize(Lorg/mortbay/io/EndPoint;Lorg/mortbay/jetty/Request;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object v0, p1

    check-cast v0, Lorg/mortbay/jetty/nio/SelectChannelConnector$ConnectorEndPoint;

    invoke-virtual {v0}, Lorg/mortbay/io/nio/SelectChannelEndPoint;->cancelIdle()V

    invoke-virtual {v0}, Lorg/mortbay/io/nio/SelectChannelEndPoint;->getSelectSet()Lorg/mortbay/io/nio/SelectorManager$SelectSet;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->getNow()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lorg/mortbay/jetty/Request;->setTimeStamp(J)V

    invoke-super {p0, p1, p2}, Lorg/mortbay/jetty/AbstractConnector;->customize(Lorg/mortbay/io/EndPoint;Lorg/mortbay/jetty/Request;)V

    return-void
.end method

.method public doStart()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lorg/mortbay/jetty/nio/SelectChannelConnector;->J0:Lorg/mortbay/io/nio/SelectorManager;

    invoke-virtual {p0}, Lorg/mortbay/jetty/AbstractConnector;->getAcceptors()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/mortbay/io/nio/SelectorManager;->setSelectSets(I)V

    iget-object v0, p0, Lorg/mortbay/jetty/nio/SelectChannelConnector;->J0:Lorg/mortbay/io/nio/SelectorManager;

    invoke-virtual {p0}, Lorg/mortbay/jetty/AbstractConnector;->getMaxIdleTime()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lorg/mortbay/io/nio/SelectorManager;->setMaxIdleTime(J)V

    iget-object v0, p0, Lorg/mortbay/jetty/nio/SelectChannelConnector;->J0:Lorg/mortbay/io/nio/SelectorManager;

    invoke-virtual {p0}, Lorg/mortbay/jetty/nio/SelectChannelConnector;->getLowResourcesConnections()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/mortbay/io/nio/SelectorManager;->setLowResourcesConnections(J)V

    iget-object v0, p0, Lorg/mortbay/jetty/nio/SelectChannelConnector;->J0:Lorg/mortbay/io/nio/SelectorManager;

    invoke-virtual {p0}, Lorg/mortbay/jetty/nio/SelectChannelConnector;->getLowResourcesMaxIdleTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/mortbay/io/nio/SelectorManager;->setLowResourcesMaxIdleTime(J)V

    iget-object v0, p0, Lorg/mortbay/jetty/nio/SelectChannelConnector;->J0:Lorg/mortbay/io/nio/SelectorManager;

    invoke-virtual {v0}, Lorg/mortbay/component/AbstractLifeCycle;->start()V

    invoke-virtual {p0}, Lorg/mortbay/jetty/nio/SelectChannelConnector;->open()V

    iget-object v0, p0, Lorg/mortbay/jetty/nio/SelectChannelConnector;->J0:Lorg/mortbay/io/nio/SelectorManager;

    iget-object v1, p0, Lorg/mortbay/jetty/nio/SelectChannelConnector;->_acceptChannel:Ljava/nio/channels/ServerSocketChannel;

    invoke-virtual {v0, v1}, Lorg/mortbay/io/nio/SelectorManager;->register(Ljava/nio/channels/ServerSocketChannel;)V

    invoke-super {p0}, Lorg/mortbay/jetty/AbstractConnector;->doStart()V

    return-void
.end method

.method public doStop()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-super {p0}, Lorg/mortbay/jetty/AbstractConnector;->doStop()V

    return-void
.end method

.method public getConnection()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/jetty/nio/SelectChannelConnector;->_acceptChannel:Ljava/nio/channels/ServerSocketChannel;

    return-object p0
.end method

.method public getDelaySelectKeyUpdate()Z
    .locals 0

    iget-object p0, p0, Lorg/mortbay/jetty/nio/SelectChannelConnector;->J0:Lorg/mortbay/io/nio/SelectorManager;

    invoke-virtual {p0}, Lorg/mortbay/io/nio/SelectorManager;->isDelaySelectKeyUpdate()Z

    move-result p0

    return p0
.end method

.method public getLocalPort()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/mortbay/jetty/nio/SelectChannelConnector;->_acceptChannel:Ljava/nio/channels/ServerSocketChannel;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/mortbay/jetty/nio/SelectChannelConnector;->_acceptChannel:Ljava/nio/channels/ServerSocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/ServerSocketChannel;->socket()Ljava/net/ServerSocket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/ServerSocket;->getLocalPort()I

    move-result v0

    monitor-exit p0

    return v0

    :cond_1
    :goto_0
    monitor-exit p0

    const/4 p0, -0x1

    return p0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getLowResourcesConnections()J
    .locals 2

    iget-wide v0, p0, Lorg/mortbay/jetty/nio/SelectChannelConnector;->H0:J

    return-wide v0
.end method

.method public getLowResourcesMaxIdleTime()J
    .locals 2

    iget-wide v0, p0, Lorg/mortbay/jetty/nio/SelectChannelConnector;->I0:J

    return-wide v0
.end method

.method public newConnection(Ljava/nio/channels/SocketChannel;Lorg/mortbay/io/nio/SelectChannelEndPoint;)Lorg/mortbay/io/Connection;
    .locals 1

    new-instance p1, Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {p0}, Lorg/mortbay/jetty/AbstractConnector;->getServer()Lorg/mortbay/jetty/Server;

    move-result-object v0

    invoke-direct {p1, p0, p2, v0}, Lorg/mortbay/jetty/HttpConnection;-><init>(Lorg/mortbay/jetty/Connector;Lorg/mortbay/io/EndPoint;Lorg/mortbay/jetty/Server;)V

    return-object p1
.end method

.method public newContinuation()Lorg/mortbay/util/ajax/Continuation;
    .locals 0

    new-instance p0, Lorg/mortbay/jetty/nio/SelectChannelConnector$RetryContinuation;

    invoke-direct {p0}, Lorg/mortbay/jetty/nio/SelectChannelConnector$RetryContinuation;-><init>()V

    return-object p0
.end method

.method public newEndPoint(Ljava/nio/channels/SocketChannel;Lorg/mortbay/io/nio/SelectorManager$SelectSet;Ljava/nio/channels/SelectionKey;)Lorg/mortbay/io/nio/SelectChannelEndPoint;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance p0, Lorg/mortbay/jetty/nio/SelectChannelConnector$ConnectorEndPoint;

    invoke-direct {p0, p1, p2, p3}, Lorg/mortbay/jetty/nio/SelectChannelConnector$ConnectorEndPoint;-><init>(Ljava/nio/channels/SocketChannel;Lorg/mortbay/io/nio/SelectorManager$SelectSet;Ljava/nio/channels/SelectionKey;)V

    return-object p0
.end method

.method public open()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/mortbay/jetty/nio/SelectChannelConnector;->_acceptChannel:Ljava/nio/channels/ServerSocketChannel;

    if-nez v0, :cond_1

    invoke-static {}, Ljava/nio/channels/ServerSocketChannel;->open()Ljava/nio/channels/ServerSocketChannel;

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/jetty/nio/SelectChannelConnector;->_acceptChannel:Ljava/nio/channels/ServerSocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/ServerSocketChannel;->socket()Ljava/net/ServerSocket;

    move-result-object v0

    invoke-virtual {p0}, Lorg/mortbay/jetty/AbstractConnector;->getReuseAddress()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/net/ServerSocket;->setReuseAddress(Z)V

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
    iget-object v1, p0, Lorg/mortbay/jetty/nio/SelectChannelConnector;->_acceptChannel:Ljava/nio/channels/ServerSocketChannel;

    invoke-virtual {v1}, Ljava/nio/channels/ServerSocketChannel;->socket()Ljava/net/ServerSocket;

    move-result-object v1

    invoke-virtual {p0}, Lorg/mortbay/jetty/AbstractConnector;->getAcceptQueueSize()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Ljava/net/ServerSocket;->bind(Ljava/net/SocketAddress;I)V

    iget-object v0, p0, Lorg/mortbay/jetty/nio/SelectChannelConnector;->_acceptChannel:Ljava/nio/channels/ServerSocketChannel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/channels/SelectableChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public persist(Lorg/mortbay/io/EndPoint;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object v0, p1

    check-cast v0, Lorg/mortbay/jetty/nio/SelectChannelConnector$ConnectorEndPoint;

    invoke-virtual {v0}, Lorg/mortbay/io/nio/SelectChannelEndPoint;->scheduleIdle()V

    invoke-super {p0, p1}, Lorg/mortbay/jetty/AbstractConnector;->persist(Lorg/mortbay/io/EndPoint;)V

    return-void
.end method

.method public setDelaySelectKeyUpdate(Z)V
    .locals 0

    iget-object p0, p0, Lorg/mortbay/jetty/nio/SelectChannelConnector;->J0:Lorg/mortbay/io/nio/SelectorManager;

    invoke-virtual {p0, p1}, Lorg/mortbay/io/nio/SelectorManager;->setDelaySelectKeyUpdate(Z)V

    return-void
.end method

.method public setLowResourceMaxIdleTime(I)V
    .locals 2

    int-to-long v0, p1

    iput-wide v0, p0, Lorg/mortbay/jetty/nio/SelectChannelConnector;->I0:J

    invoke-super {p0, p1}, Lorg/mortbay/jetty/AbstractConnector;->setLowResourceMaxIdleTime(I)V

    return-void
.end method

.method public setLowResourcesConnections(J)V
    .locals 0

    iput-wide p1, p0, Lorg/mortbay/jetty/nio/SelectChannelConnector;->H0:J

    return-void
.end method

.method public setLowResourcesMaxIdleTime(J)V
    .locals 0

    iput-wide p1, p0, Lorg/mortbay/jetty/nio/SelectChannelConnector;->I0:J

    long-to-int p1, p1

    invoke-super {p0, p1}, Lorg/mortbay/jetty/AbstractConnector;->setLowResourceMaxIdleTime(I)V

    return-void
.end method

.method public setMaxIdleTime(I)V
    .locals 3

    iget-object v0, p0, Lorg/mortbay/jetty/nio/SelectChannelConnector;->J0:Lorg/mortbay/io/nio/SelectorManager;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lorg/mortbay/io/nio/SelectorManager;->setMaxIdleTime(J)V

    invoke-super {p0, p1}, Lorg/mortbay/jetty/AbstractConnector;->setMaxIdleTime(I)V

    return-void
.end method
