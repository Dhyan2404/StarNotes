.class public Lorg/mortbay/jetty/bio/SocketConnector$Connection;
.super Lorg/mortbay/io/bio/SocketEndPoint;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mortbay/jetty/bio/SocketConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Connection"
.end annotation


# instance fields
.field protected _socket:Ljava/net/Socket;

.field public j:Z

.field public k:Lorg/mortbay/jetty/HttpConnection;

.field public l:I

.field public final synthetic m:Lorg/mortbay/jetty/bio/SocketConnector;


# direct methods
.method public constructor <init>(Lorg/mortbay/jetty/bio/SocketConnector;Ljava/net/Socket;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iput-object p1, p0, Lorg/mortbay/jetty/bio/SocketConnector$Connection;->m:Lorg/mortbay/jetty/bio/SocketConnector;

    invoke-direct {p0, p2}, Lorg/mortbay/io/bio/SocketEndPoint;-><init>(Ljava/net/Socket;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/mortbay/jetty/bio/SocketConnector$Connection;->j:Z

    invoke-virtual {p1, p0}, Lorg/mortbay/jetty/bio/SocketConnector;->newHttpConnection(Lorg/mortbay/io/EndPoint;)Lorg/mortbay/jetty/HttpConnection;

    move-result-object p1

    iput-object p1, p0, Lorg/mortbay/jetty/bio/SocketConnector$Connection;->k:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {p2}, Ljava/net/Socket;->getSoTimeout()I

    move-result p1

    iput p1, p0, Lorg/mortbay/jetty/bio/SocketConnector$Connection;->l:I

    iput-object p2, p0, Lorg/mortbay/jetty/bio/SocketConnector$Connection;->_socket:Ljava/net/Socket;

    return-void
.end method


# virtual methods
.method public dispatch()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/mortbay/jetty/bio/SocketConnector$Connection;->m:Lorg/mortbay/jetty/bio/SocketConnector;

    invoke-virtual {v0}, Lorg/mortbay/jetty/AbstractConnector;->getThreadPool()Lorg/mortbay/thread/ThreadPool;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/mortbay/jetty/bio/SocketConnector$Connection;->m:Lorg/mortbay/jetty/bio/SocketConnector;

    invoke-virtual {v0}, Lorg/mortbay/jetty/AbstractConnector;->getThreadPool()Lorg/mortbay/thread/ThreadPool;

    move-result-object v0

    invoke-interface {v0, p0}, Lorg/mortbay/thread/ThreadPool;->dispatch(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const-string v0, "dispatch failed for {}"

    iget-object v1, p0, Lorg/mortbay/jetty/bio/SocketConnector$Connection;->k:Lorg/mortbay/jetty/HttpConnection;

    invoke-static {v0, v1}, Lorg/mortbay/log/Log;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lorg/mortbay/io/bio/SocketEndPoint;->close()V

    :cond_1
    return-void
.end method

.method public fill(Lorg/mortbay/io/Buffer;)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1}, Lorg/mortbay/io/bio/StreamEndPoint;->fill(Lorg/mortbay/io/Buffer;)I

    move-result p1

    if-gez p1, :cond_0

    invoke-virtual {p0}, Lorg/mortbay/io/bio/SocketEndPoint;->close()V

    :cond_0
    return p1
.end method

.method public run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lorg/mortbay/jetty/bio/SocketConnector$Connection;->m:Lorg/mortbay/jetty/bio/SocketConnector;

    iget-object v1, p0, Lorg/mortbay/jetty/bio/SocketConnector$Connection;->k:Lorg/mortbay/jetty/HttpConnection;

    invoke-static {v0, v1}, Lorg/mortbay/jetty/bio/SocketConnector;->i(Lorg/mortbay/jetty/bio/SocketConnector;Lorg/mortbay/jetty/HttpConnection;)V

    iget-object v0, p0, Lorg/mortbay/jetty/bio/SocketConnector$Connection;->m:Lorg/mortbay/jetty/bio/SocketConnector;

    iget-object v0, v0, Lorg/mortbay/jetty/bio/SocketConnector;->_connections:Ljava/util/Set;

    monitor-enter v0
    :try_end_0
    .catch Lorg/mortbay/jetty/EofException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lorg/mortbay/jetty/HttpException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    iget-object v1, p0, Lorg/mortbay/jetty/bio/SocketConnector$Connection;->m:Lorg/mortbay/jetty/bio/SocketConnector;

    iget-object v1, v1, Lorg/mortbay/jetty/bio/SocketConnector;->_connections:Ljava/util/Set;

    invoke-interface {v1, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_0
    :try_start_2
    iget-object v0, p0, Lorg/mortbay/jetty/bio/SocketConnector$Connection;->m:Lorg/mortbay/jetty/bio/SocketConnector;

    invoke-virtual {v0}, Lorg/mortbay/component/AbstractLifeCycle;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/mortbay/io/bio/StreamEndPoint;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/mortbay/jetty/bio/SocketConnector$Connection;->k:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {v0}, Lorg/mortbay/jetty/HttpConnection;->isIdle()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/mortbay/jetty/bio/SocketConnector$Connection;->m:Lorg/mortbay/jetty/bio/SocketConnector;

    invoke-virtual {v0}, Lorg/mortbay/jetty/AbstractConnector;->getServer()Lorg/mortbay/jetty/Server;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mortbay/jetty/Server;->getThreadPool()Lorg/mortbay/thread/ThreadPool;

    move-result-object v0

    invoke-interface {v0}, Lorg/mortbay/thread/ThreadPool;->isLowOnThreads()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/mortbay/jetty/bio/SocketConnector$Connection;->m:Lorg/mortbay/jetty/bio/SocketConnector;

    invoke-virtual {v0}, Lorg/mortbay/jetty/AbstractConnector;->getLowResourceMaxIdleTime()I

    move-result v0

    if-ltz v0, :cond_0

    iget v1, p0, Lorg/mortbay/jetty/bio/SocketConnector$Connection;->l:I

    if-eq v1, v0, :cond_0

    iput v0, p0, Lorg/mortbay/jetty/bio/SocketConnector$Connection;->l:I

    iget-object v1, p0, Lorg/mortbay/jetty/bio/SocketConnector$Connection;->_socket:Ljava/net/Socket;

    invoke-virtual {v1, v0}, Ljava/net/Socket;->setSoTimeout(I)V

    :cond_0
    iget-object v0, p0, Lorg/mortbay/jetty/bio/SocketConnector$Connection;->k:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {v0}, Lorg/mortbay/jetty/HttpConnection;->handle()V
    :try_end_2
    .catch Lorg/mortbay/jetty/EofException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Lorg/mortbay/jetty/HttpException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/mortbay/jetty/bio/SocketConnector$Connection;->m:Lorg/mortbay/jetty/bio/SocketConnector;

    iget-object v1, p0, Lorg/mortbay/jetty/bio/SocketConnector$Connection;->k:Lorg/mortbay/jetty/HttpConnection;

    invoke-static {v0, v1}, Lorg/mortbay/jetty/bio/SocketConnector;->j(Lorg/mortbay/jetty/bio/SocketConnector;Lorg/mortbay/jetty/HttpConnection;)V

    iget-object v0, p0, Lorg/mortbay/jetty/bio/SocketConnector$Connection;->m:Lorg/mortbay/jetty/bio/SocketConnector;

    iget-object v0, v0, Lorg/mortbay/jetty/bio/SocketConnector;->_connections:Ljava/util/Set;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lorg/mortbay/jetty/bio/SocketConnector$Connection;->m:Lorg/mortbay/jetty/bio/SocketConnector;

    iget-object v1, v1, Lorg/mortbay/jetty/bio/SocketConnector;->_connections:Ljava/util/Set;

    invoke-interface {v1, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    monitor-exit v0

    goto/16 :goto_4

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0

    :catchall_1
    move-exception v1

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v1
    :try_end_5
    .catch Lorg/mortbay/jetty/EofException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Lorg/mortbay/jetty/HttpException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catchall_2
    move-exception v0

    :try_start_6
    const-string v1, "handle failed"

    invoke-static {v1, v0}, Lorg/mortbay/log/Log;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    :try_start_7
    invoke-virtual {p0}, Lorg/mortbay/io/bio/SocketEndPoint;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_8
    invoke-static {v0}, Lorg/mortbay/log/Log;->ignore(Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    :goto_1
    iget-object v0, p0, Lorg/mortbay/jetty/bio/SocketConnector$Connection;->m:Lorg/mortbay/jetty/bio/SocketConnector;

    iget-object v1, p0, Lorg/mortbay/jetty/bio/SocketConnector$Connection;->k:Lorg/mortbay/jetty/HttpConnection;

    invoke-static {v0, v1}, Lorg/mortbay/jetty/bio/SocketConnector;->j(Lorg/mortbay/jetty/bio/SocketConnector;Lorg/mortbay/jetty/HttpConnection;)V

    iget-object v0, p0, Lorg/mortbay/jetty/bio/SocketConnector$Connection;->m:Lorg/mortbay/jetty/bio/SocketConnector;

    iget-object v0, v0, Lorg/mortbay/jetty/bio/SocketConnector;->_connections:Ljava/util/Set;

    monitor-enter v0

    :try_start_9
    iget-object v1, p0, Lorg/mortbay/jetty/bio/SocketConnector$Connection;->m:Lorg/mortbay/jetty/bio/SocketConnector;

    iget-object v1, v1, Lorg/mortbay/jetty/bio/SocketConnector;->_connections:Ljava/util/Set;

    invoke-interface {v1, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    monitor-exit v0

    goto :goto_4

    :catchall_3
    move-exception p0

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    throw p0

    :catch_1
    move-exception v0

    :try_start_a
    const-string v1, "BAD"

    invoke-static {v1, v0}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    :try_start_b
    invoke-virtual {p0}, Lorg/mortbay/io/bio/SocketEndPoint;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_2
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    goto :goto_2

    :catch_2
    move-exception v0

    :try_start_c
    invoke-static {v0}, Lorg/mortbay/log/Log;->ignore(Ljava/lang/Throwable;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    :goto_2
    iget-object v0, p0, Lorg/mortbay/jetty/bio/SocketConnector$Connection;->m:Lorg/mortbay/jetty/bio/SocketConnector;

    iget-object v1, p0, Lorg/mortbay/jetty/bio/SocketConnector$Connection;->k:Lorg/mortbay/jetty/HttpConnection;

    invoke-static {v0, v1}, Lorg/mortbay/jetty/bio/SocketConnector;->j(Lorg/mortbay/jetty/bio/SocketConnector;Lorg/mortbay/jetty/HttpConnection;)V

    iget-object v0, p0, Lorg/mortbay/jetty/bio/SocketConnector$Connection;->m:Lorg/mortbay/jetty/bio/SocketConnector;

    iget-object v0, v0, Lorg/mortbay/jetty/bio/SocketConnector;->_connections:Ljava/util/Set;

    monitor-enter v0

    :try_start_d
    iget-object v1, p0, Lorg/mortbay/jetty/bio/SocketConnector$Connection;->m:Lorg/mortbay/jetty/bio/SocketConnector;

    iget-object v1, v1, Lorg/mortbay/jetty/bio/SocketConnector;->_connections:Ljava/util/Set;

    invoke-interface {v1, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    monitor-exit v0

    goto :goto_4

    :catchall_4
    move-exception p0

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    throw p0

    :catch_3
    move-exception v0

    :try_start_e
    const-string v1, "EOF"

    invoke-static {v1, v0}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    :try_start_f
    invoke-virtual {p0}, Lorg/mortbay/io/bio/SocketEndPoint;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_4
    .catchall {:try_start_f .. :try_end_f} :catchall_6

    goto :goto_3

    :catch_4
    move-exception v0

    :try_start_10
    invoke-static {v0}, Lorg/mortbay/log/Log;->ignore(Ljava/lang/Throwable;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_6

    :goto_3
    iget-object v0, p0, Lorg/mortbay/jetty/bio/SocketConnector$Connection;->m:Lorg/mortbay/jetty/bio/SocketConnector;

    iget-object v1, p0, Lorg/mortbay/jetty/bio/SocketConnector$Connection;->k:Lorg/mortbay/jetty/HttpConnection;

    invoke-static {v0, v1}, Lorg/mortbay/jetty/bio/SocketConnector;->j(Lorg/mortbay/jetty/bio/SocketConnector;Lorg/mortbay/jetty/HttpConnection;)V

    iget-object v0, p0, Lorg/mortbay/jetty/bio/SocketConnector$Connection;->m:Lorg/mortbay/jetty/bio/SocketConnector;

    iget-object v0, v0, Lorg/mortbay/jetty/bio/SocketConnector;->_connections:Ljava/util/Set;

    monitor-enter v0

    :try_start_11
    iget-object v1, p0, Lorg/mortbay/jetty/bio/SocketConnector$Connection;->m:Lorg/mortbay/jetty/bio/SocketConnector;

    iget-object v1, v1, Lorg/mortbay/jetty/bio/SocketConnector;->_connections:Ljava/util/Set;

    invoke-interface {v1, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    monitor-exit v0

    :goto_4
    return-void

    :catchall_5
    move-exception p0

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_5

    throw p0

    :catchall_6
    move-exception v0

    iget-object v1, p0, Lorg/mortbay/jetty/bio/SocketConnector$Connection;->m:Lorg/mortbay/jetty/bio/SocketConnector;

    iget-object v2, p0, Lorg/mortbay/jetty/bio/SocketConnector$Connection;->k:Lorg/mortbay/jetty/HttpConnection;

    invoke-static {v1, v2}, Lorg/mortbay/jetty/bio/SocketConnector;->j(Lorg/mortbay/jetty/bio/SocketConnector;Lorg/mortbay/jetty/HttpConnection;)V

    iget-object v1, p0, Lorg/mortbay/jetty/bio/SocketConnector$Connection;->m:Lorg/mortbay/jetty/bio/SocketConnector;

    iget-object v1, v1, Lorg/mortbay/jetty/bio/SocketConnector;->_connections:Ljava/util/Set;

    monitor-enter v1

    :try_start_12
    iget-object v2, p0, Lorg/mortbay/jetty/bio/SocketConnector$Connection;->m:Lorg/mortbay/jetty/bio/SocketConnector;

    iget-object v2, v2, Lorg/mortbay/jetty/bio/SocketConnector;->_connections:Ljava/util/Set;

    invoke-interface {v2, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_7

    throw v0

    :catchall_7
    move-exception p0

    :try_start_13
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_7

    throw p0
.end method
