.class public Lorg/mortbay/jetty/nio/BlockingChannelConnector$a;
.super Lorg/mortbay/io/nio/ChannelEndPoint;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mortbay/jetty/nio/BlockingChannelConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public e:Z

.field public f:Lorg/mortbay/jetty/HttpConnection;

.field public g:I

.field public final synthetic h:Lorg/mortbay/jetty/nio/BlockingChannelConnector;


# direct methods
.method public constructor <init>(Lorg/mortbay/jetty/nio/BlockingChannelConnector;Ljava/nio/channels/ByteChannel;)V
    .locals 1

    iput-object p1, p0, Lorg/mortbay/jetty/nio/BlockingChannelConnector$a;->h:Lorg/mortbay/jetty/nio/BlockingChannelConnector;

    invoke-direct {p0, p2}, Lorg/mortbay/io/nio/ChannelEndPoint;-><init>(Ljava/nio/channels/ByteChannel;)V

    const/4 p2, 0x0

    iput-boolean p2, p0, Lorg/mortbay/jetty/nio/BlockingChannelConnector$a;->e:Z

    new-instance p2, Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {p1}, Lorg/mortbay/jetty/AbstractConnector;->getServer()Lorg/mortbay/jetty/Server;

    move-result-object v0

    invoke-direct {p2, p1, p0, v0}, Lorg/mortbay/jetty/HttpConnection;-><init>(Lorg/mortbay/jetty/Connector;Lorg/mortbay/io/EndPoint;Lorg/mortbay/jetty/Server;)V

    iput-object p2, p0, Lorg/mortbay/jetty/nio/BlockingChannelConnector$a;->f:Lorg/mortbay/jetty/HttpConnection;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/mortbay/jetty/nio/BlockingChannelConnector$a;->h:Lorg/mortbay/jetty/nio/BlockingChannelConnector;

    invoke-virtual {v0}, Lorg/mortbay/jetty/AbstractConnector;->getThreadPool()Lorg/mortbay/thread/ThreadPool;

    move-result-object v0

    invoke-interface {v0, p0}, Lorg/mortbay/thread/ThreadPool;->dispatch(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "dispatch failed for  {}"

    iget-object v1, p0, Lorg/mortbay/jetty/nio/BlockingChannelConnector$a;->f:Lorg/mortbay/jetty/HttpConnection;

    invoke-static {v0, v1}, Lorg/mortbay/log/Log;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lorg/mortbay/io/nio/ChannelEndPoint;->close()V

    :cond_0
    return-void
.end method

.method public run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lorg/mortbay/jetty/nio/BlockingChannelConnector$a;->h:Lorg/mortbay/jetty/nio/BlockingChannelConnector;

    iget-object v1, p0, Lorg/mortbay/jetty/nio/BlockingChannelConnector$a;->f:Lorg/mortbay/jetty/HttpConnection;

    invoke-static {v0, v1}, Lorg/mortbay/jetty/nio/BlockingChannelConnector;->i(Lorg/mortbay/jetty/nio/BlockingChannelConnector;Lorg/mortbay/jetty/HttpConnection;)V

    :goto_0
    invoke-virtual {p0}, Lorg/mortbay/io/nio/ChannelEndPoint;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/mortbay/jetty/nio/BlockingChannelConnector$a;->f:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {v0}, Lorg/mortbay/jetty/HttpConnection;->isIdle()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/mortbay/jetty/nio/BlockingChannelConnector$a;->h:Lorg/mortbay/jetty/nio/BlockingChannelConnector;

    invoke-virtual {v0}, Lorg/mortbay/jetty/AbstractConnector;->getServer()Lorg/mortbay/jetty/Server;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mortbay/jetty/Server;->getThreadPool()Lorg/mortbay/thread/ThreadPool;

    move-result-object v0

    invoke-interface {v0}, Lorg/mortbay/thread/ThreadPool;->isLowOnThreads()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/mortbay/jetty/nio/BlockingChannelConnector$a;->h:Lorg/mortbay/jetty/nio/BlockingChannelConnector;

    invoke-virtual {v0}, Lorg/mortbay/jetty/AbstractConnector;->getLowResourceMaxIdleTime()I

    move-result v0

    if-ltz v0, :cond_0

    iget v1, p0, Lorg/mortbay/jetty/nio/BlockingChannelConnector$a;->g:I

    if-eq v1, v0, :cond_0

    iput v0, p0, Lorg/mortbay/jetty/nio/BlockingChannelConnector$a;->g:I

    invoke-virtual {p0}, Lorg/mortbay/io/nio/ChannelEndPoint;->getTransport()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/channels/SocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v0

    iget v1, p0, Lorg/mortbay/jetty/nio/BlockingChannelConnector$a;->g:I

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    :cond_0
    iget-object v0, p0, Lorg/mortbay/jetty/nio/BlockingChannelConnector$a;->f:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {v0}, Lorg/mortbay/jetty/HttpConnection;->handle()V
    :try_end_0
    .catch Lorg/mortbay/jetty/EofException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lorg/mortbay/jetty/HttpException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v0, p0, Lorg/mortbay/jetty/nio/BlockingChannelConnector$a;->h:Lorg/mortbay/jetty/nio/BlockingChannelConnector;

    iget-object p0, p0, Lorg/mortbay/jetty/nio/BlockingChannelConnector$a;->f:Lorg/mortbay/jetty/HttpConnection;

    invoke-static {v0, p0}, Lorg/mortbay/jetty/nio/BlockingChannelConnector;->j(Lorg/mortbay/jetty/nio/BlockingChannelConnector;Lorg/mortbay/jetty/HttpConnection;)V

    goto :goto_2

    :catchall_0
    move-exception v0

    :try_start_1
    const-string v1, "handle failed"

    invoke-static {v1, v0}, Lorg/mortbay/log/Log;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {p0}, Lorg/mortbay/io/nio/ChannelEndPoint;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_3
    invoke-static {v0}, Lorg/mortbay/log/Log;->ignore(Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_1
    move-exception v0

    const-string v1, "BAD"

    invoke-static {v1, v0}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-virtual {p0}, Lorg/mortbay/io/nio/ChannelEndPoint;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    :catch_2
    move-exception v0

    :try_start_5
    invoke-static {v0}, Lorg/mortbay/log/Log;->ignore(Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_3
    move-exception v0

    const-string v1, "EOF"

    invoke-static {v1, v0}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    invoke-virtual {p0}, Lorg/mortbay/io/nio/ChannelEndPoint;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_1

    :catch_4
    move-exception v0

    :try_start_7
    invoke-static {v0}, Lorg/mortbay/log/Log;->ignore(Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_1

    :goto_2
    return-void

    :catchall_1
    move-exception v0

    iget-object v1, p0, Lorg/mortbay/jetty/nio/BlockingChannelConnector$a;->h:Lorg/mortbay/jetty/nio/BlockingChannelConnector;

    iget-object p0, p0, Lorg/mortbay/jetty/nio/BlockingChannelConnector$a;->f:Lorg/mortbay/jetty/HttpConnection;

    invoke-static {v1, p0}, Lorg/mortbay/jetty/nio/BlockingChannelConnector;->j(Lorg/mortbay/jetty/nio/BlockingChannelConnector;Lorg/mortbay/jetty/HttpConnection;)V

    throw v0
.end method
