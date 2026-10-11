.class public Lorg/mortbay/jetty/nio/a;
.super Lorg/mortbay/io/nio/SelectorManager;
.source "SourceFile"


# instance fields
.field public final synthetic q:Lorg/mortbay/jetty/nio/SelectChannelConnector;


# direct methods
.method public constructor <init>(Lorg/mortbay/jetty/nio/SelectChannelConnector;)V
    .locals 0

    iput-object p1, p0, Lorg/mortbay/jetty/nio/a;->q:Lorg/mortbay/jetty/nio/SelectChannelConnector;

    invoke-direct {p0}, Lorg/mortbay/io/nio/SelectorManager;-><init>()V

    return-void
.end method


# virtual methods
.method public acceptChannel(Ljava/nio/channels/SelectionKey;)Ljava/nio/channels/SocketChannel;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object p1

    check-cast p1, Ljava/nio/channels/ServerSocketChannel;

    invoke-virtual {p1}, Ljava/nio/channels/ServerSocketChannel;->accept()Ljava/nio/channels/SocketChannel;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/nio/channels/SelectableChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;

    invoke-virtual {p1}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v0

    iget-object p0, p0, Lorg/mortbay/jetty/nio/a;->q:Lorg/mortbay/jetty/nio/SelectChannelConnector;

    invoke-static {p0, v0}, Lorg/mortbay/jetty/nio/SelectChannelConnector;->i(Lorg/mortbay/jetty/nio/SelectChannelConnector;Ljava/net/Socket;)V

    return-object p1
.end method

.method public dispatch(Ljava/lang/Runnable;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Lorg/mortbay/jetty/nio/a;->q:Lorg/mortbay/jetty/nio/SelectChannelConnector;

    invoke-virtual {p0}, Lorg/mortbay/jetty/AbstractConnector;->getThreadPool()Lorg/mortbay/thread/ThreadPool;

    move-result-object p0

    invoke-interface {p0, p1}, Lorg/mortbay/thread/ThreadPool;->dispatch(Ljava/lang/Runnable;)Z

    move-result p0

    return p0
.end method

.method public endPointClosed(Lorg/mortbay/io/nio/SelectChannelEndPoint;)V
    .locals 0

    iget-object p0, p0, Lorg/mortbay/jetty/nio/a;->q:Lorg/mortbay/jetty/nio/SelectChannelConnector;

    invoke-virtual {p1}, Lorg/mortbay/io/nio/SelectChannelEndPoint;->getConnection()Lorg/mortbay/io/Connection;

    move-result-object p1

    check-cast p1, Lorg/mortbay/jetty/HttpConnection;

    invoke-static {p0, p1}, Lorg/mortbay/jetty/nio/SelectChannelConnector;->j(Lorg/mortbay/jetty/nio/SelectChannelConnector;Lorg/mortbay/jetty/HttpConnection;)V

    return-void
.end method

.method public endPointOpened(Lorg/mortbay/io/nio/SelectChannelEndPoint;)V
    .locals 0

    iget-object p0, p0, Lorg/mortbay/jetty/nio/a;->q:Lorg/mortbay/jetty/nio/SelectChannelConnector;

    invoke-virtual {p1}, Lorg/mortbay/io/nio/SelectChannelEndPoint;->getConnection()Lorg/mortbay/io/Connection;

    move-result-object p1

    check-cast p1, Lorg/mortbay/jetty/HttpConnection;

    invoke-static {p0, p1}, Lorg/mortbay/jetty/nio/SelectChannelConnector;->k(Lorg/mortbay/jetty/nio/SelectChannelConnector;Lorg/mortbay/jetty/HttpConnection;)V

    return-void
.end method

.method public newConnection(Ljava/nio/channels/SocketChannel;Lorg/mortbay/io/nio/SelectChannelEndPoint;)Lorg/mortbay/io/Connection;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/jetty/nio/a;->q:Lorg/mortbay/jetty/nio/SelectChannelConnector;

    invoke-virtual {p0, p1, p2}, Lorg/mortbay/jetty/nio/SelectChannelConnector;->newConnection(Ljava/nio/channels/SocketChannel;Lorg/mortbay/io/nio/SelectChannelEndPoint;)Lorg/mortbay/io/Connection;

    move-result-object p0

    return-object p0
.end method

.method public newEndPoint(Ljava/nio/channels/SocketChannel;Lorg/mortbay/io/nio/SelectorManager$SelectSet;Ljava/nio/channels/SelectionKey;)Lorg/mortbay/io/nio/SelectChannelEndPoint;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Lorg/mortbay/jetty/nio/a;->q:Lorg/mortbay/jetty/nio/SelectChannelConnector;

    invoke-virtual {p0, p1, p2, p3}, Lorg/mortbay/jetty/nio/SelectChannelConnector;->newEndPoint(Ljava/nio/channels/SocketChannel;Lorg/mortbay/io/nio/SelectorManager$SelectSet;Ljava/nio/channels/SelectionKey;)Lorg/mortbay/io/nio/SelectChannelEndPoint;

    move-result-object p0

    return-object p0
.end method
