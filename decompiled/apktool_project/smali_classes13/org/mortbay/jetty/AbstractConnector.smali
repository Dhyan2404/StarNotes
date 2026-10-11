.class public abstract Lorg/mortbay/jetty/AbstractConnector;
.super Lorg/mortbay/jetty/AbstractBuffers;
.source "SourceFile"

# interfaces
.implements Lorg/mortbay/jetty/Connector;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mortbay/jetty/AbstractConnector$a;
    }
.end annotation


# instance fields
.field public transient A0:I

.field public transient B0:J

.field public transient C0:J

.field public transient D0:J

.field public transient E0:I

.field public transient F0:I

.field public J:Z

.field public O:Ljava/lang/String;

.field public Q:Ljava/lang/String;

.field public Z:Ljava/lang/String;

.field protected _lowResourceMaxIdleTime:I

.field protected _maxIdleTime:I

.field protected _soLingerTime:I

.field public k0:Ljava/lang/String;

.field public n:Ljava/lang/String;

.field public o:Lorg/mortbay/jetty/Server;

.field public p:Lorg/mortbay/thread/ThreadPool;

.field public q:Ljava/lang/String;

.field public q0:Z

.field public r:I

.field public s:Ljava/lang/String;

.field public t:I

.field public transient t0:[Ljava/lang/Thread;

.field public u:Ljava/lang/String;

.field public u0:Ljava/lang/Object;

.field public v:I

.field public transient v0:J

.field public w:I

.field public transient w0:I

.field public x:I

.field public transient x0:I

.field public y:I

.field public transient y0:I

.field public z:Z

.field public transient z0:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lorg/mortbay/jetty/AbstractBuffers;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/mortbay/jetty/AbstractConnector;->r:I

    const-string v1, "https"

    iput-object v1, p0, Lorg/mortbay/jetty/AbstractConnector;->s:Ljava/lang/String;

    iput v0, p0, Lorg/mortbay/jetty/AbstractConnector;->t:I

    iput-object v1, p0, Lorg/mortbay/jetty/AbstractConnector;->u:Ljava/lang/String;

    iput v0, p0, Lorg/mortbay/jetty/AbstractConnector;->v:I

    iput v0, p0, Lorg/mortbay/jetty/AbstractConnector;->w:I

    const/4 v1, 0x1

    iput v1, p0, Lorg/mortbay/jetty/AbstractConnector;->x:I

    iput v0, p0, Lorg/mortbay/jetty/AbstractConnector;->y:I

    const-string v0, "X-Forwarded-Host"

    iput-object v0, p0, Lorg/mortbay/jetty/AbstractConnector;->Q:Ljava/lang/String;

    const-string v0, "X-Forwarded-Server"

    iput-object v0, p0, Lorg/mortbay/jetty/AbstractConnector;->Z:Ljava/lang/String;

    const-string v0, "X-Forwarded-For"

    iput-object v0, p0, Lorg/mortbay/jetty/AbstractConnector;->k0:Ljava/lang/String;

    iput-boolean v1, p0, Lorg/mortbay/jetty/AbstractConnector;->q0:Z

    const v0, 0x30d40

    iput v0, p0, Lorg/mortbay/jetty/AbstractConnector;->_maxIdleTime:I

    const/4 v0, -0x1

    iput v0, p0, Lorg/mortbay/jetty/AbstractConnector;->_lowResourceMaxIdleTime:I

    iput v0, p0, Lorg/mortbay/jetty/AbstractConnector;->_soLingerTime:I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/mortbay/jetty/AbstractConnector;->u0:Ljava/lang/Object;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/mortbay/jetty/AbstractConnector;->v0:J

    return-void
.end method

.method public static synthetic g(Lorg/mortbay/jetty/AbstractConnector;)[Ljava/lang/Thread;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/jetty/AbstractConnector;->t0:[Ljava/lang/Thread;

    return-object p0
.end method

.method public static synthetic h(Lorg/mortbay/jetty/AbstractConnector;)I
    .locals 0

    iget p0, p0, Lorg/mortbay/jetty/AbstractConnector;->y:I

    return p0
.end method


# virtual methods
.method public abstract accept(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation
.end method

.method public checkForwardedHeaders(Lorg/mortbay/io/EndPoint;Lorg/mortbay/jetty/Request;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p2}, Lorg/mortbay/jetty/Request;->getConnection()Lorg/mortbay/jetty/HttpConnection;

    move-result-object p1

    invoke-virtual {p1}, Lorg/mortbay/jetty/HttpConnection;->getRequestFields()Lorg/mortbay/jetty/HttpFields;

    move-result-object p1

    invoke-virtual {p0}, Lorg/mortbay/jetty/AbstractConnector;->getForwardedHostHeader()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/mortbay/jetty/HttpFields;->getStringField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/mortbay/jetty/AbstractConnector;->getLeftMostValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lorg/mortbay/jetty/AbstractConnector;->getForwardedServerHeader()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/mortbay/jetty/HttpFields;->getStringField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/mortbay/jetty/AbstractConnector;->getLeftMostValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lorg/mortbay/jetty/AbstractConnector;->getForwardedForHeader()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/mortbay/jetty/HttpFields;->getStringField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/mortbay/jetty/AbstractConnector;->getLeftMostValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/mortbay/jetty/AbstractConnector;->O:Ljava/lang/String;

    const/4 v4, -0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_0

    sget-object v0, Lorg/mortbay/jetty/HttpHeaders;->HOST_BUFFER:Lorg/mortbay/io/Buffer;

    invoke-virtual {p1, v0, v3}, Lorg/mortbay/jetty/HttpFields;->put(Lorg/mortbay/io/Buffer;Ljava/lang/String;)V

    invoke-virtual {p2, v5}, Lorg/mortbay/jetty/Request;->setServerName(Ljava/lang/String;)V

    invoke-virtual {p2, v4}, Lorg/mortbay/jetty/Request;->setServerPort(I)V

    invoke-virtual {p2}, Lorg/mortbay/jetty/Request;->getServerName()Ljava/lang/String;

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    sget-object v1, Lorg/mortbay/jetty/HttpHeaders;->HOST_BUFFER:Lorg/mortbay/io/Buffer;

    invoke-virtual {p1, v1, v0}, Lorg/mortbay/jetty/HttpFields;->put(Lorg/mortbay/io/Buffer;Ljava/lang/String;)V

    invoke-virtual {p2, v5}, Lorg/mortbay/jetty/Request;->setServerName(Ljava/lang/String;)V

    invoke-virtual {p2, v4}, Lorg/mortbay/jetty/Request;->setServerPort(I)V

    invoke-virtual {p2}, Lorg/mortbay/jetty/Request;->getServerName()Ljava/lang/String;

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {p2, v1}, Lorg/mortbay/jetty/Request;->setServerName(Ljava/lang/String;)V

    :cond_2
    :goto_0
    if-eqz v2, :cond_5

    invoke-virtual {p2, v2}, Lorg/mortbay/jetty/Request;->setRemoteAddr(Ljava/lang/String;)V

    iget-boolean p0, p0, Lorg/mortbay/jetty/AbstractConnector;->z:Z

    if-eqz p0, :cond_3

    :try_start_0
    invoke-static {v2}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v5
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    invoke-static {p0}, Lorg/mortbay/log/Log;->ignore(Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    if-nez v5, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {v5}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v2

    :goto_2
    invoke-virtual {p2, v2}, Lorg/mortbay/jetty/Request;->setRemoteHost(Ljava/lang/String;)V

    :cond_5
    return-void
.end method

.method public configure(Ljava/net/Socket;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p1, v0}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    iget v1, p0, Lorg/mortbay/jetty/AbstractConnector;->_maxIdleTime:I

    if-ltz v1, :cond_0

    invoke-virtual {p1, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    :cond_0
    iget p0, p0, Lorg/mortbay/jetty/AbstractConnector;->_soLingerTime:I

    if-ltz p0, :cond_1

    div-int/lit16 p0, p0, 0x3e8

    invoke-virtual {p1, v0, p0}, Ljava/net/Socket;->setSoLinger(ZI)V

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    invoke-virtual {p1, p0, p0}, Ljava/net/Socket;->setSoLinger(ZI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lorg/mortbay/log/Log;->ignore(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public connectionClosed(Lorg/mortbay/jetty/HttpConnection;)V
    .locals 9

    iget-wide v0, p0, Lorg/mortbay/jetty/AbstractConnector;->v0:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1}, Lorg/mortbay/jetty/HttpConnection;->getTimeStamp()J

    move-result-wide v4

    sub-long/2addr v0, v4

    invoke-virtual {p1}, Lorg/mortbay/jetty/HttpConnection;->getRequests()I

    move-result v4

    iget-object v5, p0, Lorg/mortbay/jetty/AbstractConnector;->u0:Ljava/lang/Object;

    monitor-enter v5

    :try_start_0
    iget v6, p0, Lorg/mortbay/jetty/AbstractConnector;->w0:I

    add-int/2addr v6, v4

    iput v6, p0, Lorg/mortbay/jetty/AbstractConnector;->w0:I

    iget v6, p0, Lorg/mortbay/jetty/AbstractConnector;->x0:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lorg/mortbay/jetty/AbstractConnector;->x0:I

    iget v6, p0, Lorg/mortbay/jetty/AbstractConnector;->y0:I

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Lorg/mortbay/jetty/AbstractConnector;->y0:I

    iget-wide v7, p0, Lorg/mortbay/jetty/AbstractConnector;->D0:J

    add-long/2addr v7, v0

    iput-wide v7, p0, Lorg/mortbay/jetty/AbstractConnector;->D0:J

    if-gez v6, :cond_0

    const/4 v6, 0x0

    iput v6, p0, Lorg/mortbay/jetty/AbstractConnector;->y0:I

    :cond_0
    iget v6, p0, Lorg/mortbay/jetty/AbstractConnector;->y0:I

    iget v7, p0, Lorg/mortbay/jetty/AbstractConnector;->z0:I

    if-ge v6, v7, :cond_1

    iput v6, p0, Lorg/mortbay/jetty/AbstractConnector;->z0:I

    :cond_1
    iget-wide v6, p0, Lorg/mortbay/jetty/AbstractConnector;->B0:J

    cmp-long v2, v6, v2

    if-eqz v2, :cond_2

    cmp-long v2, v0, v6

    if-gez v2, :cond_3

    :cond_2
    iput-wide v0, p0, Lorg/mortbay/jetty/AbstractConnector;->B0:J

    :cond_3
    iget-wide v2, p0, Lorg/mortbay/jetty/AbstractConnector;->C0:J

    cmp-long v2, v0, v2

    if-lez v2, :cond_4

    iput-wide v0, p0, Lorg/mortbay/jetty/AbstractConnector;->C0:J

    :cond_4
    iget v0, p0, Lorg/mortbay/jetty/AbstractConnector;->E0:I

    if-eqz v0, :cond_5

    if-ge v4, v0, :cond_6

    :cond_5
    iput v4, p0, Lorg/mortbay/jetty/AbstractConnector;->E0:I

    :cond_6
    iget v0, p0, Lorg/mortbay/jetty/AbstractConnector;->F0:I

    if-le v4, v0, :cond_7

    iput v4, p0, Lorg/mortbay/jetty/AbstractConnector;->F0:I

    :cond_7
    monitor-exit v5

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_8
    :goto_0
    invoke-virtual {p1}, Lorg/mortbay/jetty/HttpConnection;->destroy()V

    return-void
.end method

.method public connectionOpened(Lorg/mortbay/jetty/HttpConnection;)V
    .locals 4

    iget-wide v0, p0, Lorg/mortbay/jetty/AbstractConnector;->v0:J

    const-wide/16 v2, -0x1

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lorg/mortbay/jetty/AbstractConnector;->u0:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget v0, p0, Lorg/mortbay/jetty/AbstractConnector;->y0:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/mortbay/jetty/AbstractConnector;->y0:I

    iget v1, p0, Lorg/mortbay/jetty/AbstractConnector;->A0:I

    if-le v0, v1, :cond_1

    iput v0, p0, Lorg/mortbay/jetty/AbstractConnector;->A0:I

    :cond_1
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public customize(Lorg/mortbay/io/EndPoint;Lorg/mortbay/jetty/Request;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/mortbay/jetty/AbstractConnector;->isForwarded()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lorg/mortbay/jetty/AbstractConnector;->checkForwardedHeaders(Lorg/mortbay/io/EndPoint;Lorg/mortbay/jetty/Request;)V

    :cond_0
    return-void
.end method

.method public doStart()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lorg/mortbay/jetty/AbstractConnector;->o:Lorg/mortbay/jetty/Server;

    if-eqz v0, :cond_4

    invoke-interface {p0}, Lorg/mortbay/jetty/Connector;->open()V

    invoke-super {p0}, Lorg/mortbay/jetty/AbstractBuffers;->doStart()V

    iget-object v0, p0, Lorg/mortbay/jetty/AbstractConnector;->p:Lorg/mortbay/thread/ThreadPool;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/mortbay/jetty/AbstractConnector;->o:Lorg/mortbay/jetty/Server;

    invoke-virtual {v0}, Lorg/mortbay/jetty/Server;->getThreadPool()Lorg/mortbay/thread/ThreadPool;

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/jetty/AbstractConnector;->p:Lorg/mortbay/thread/ThreadPool;

    :cond_0
    iget-object v0, p0, Lorg/mortbay/jetty/AbstractConnector;->p:Lorg/mortbay/thread/ThreadPool;

    iget-object v1, p0, Lorg/mortbay/jetty/AbstractConnector;->o:Lorg/mortbay/jetty/Server;

    invoke-virtual {v1}, Lorg/mortbay/jetty/Server;->getThreadPool()Lorg/mortbay/thread/ThreadPool;

    move-result-object v1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lorg/mortbay/jetty/AbstractConnector;->p:Lorg/mortbay/thread/ThreadPool;

    instance-of v1, v0, Lorg/mortbay/component/LifeCycle;

    if-eqz v1, :cond_1

    check-cast v0, Lorg/mortbay/component/LifeCycle;

    invoke-interface {v0}, Lorg/mortbay/component/LifeCycle;->start()V

    :cond_1
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/mortbay/jetty/AbstractConnector;->getAcceptors()I

    move-result v0

    new-array v0, v0, [Ljava/lang/Thread;

    iput-object v0, p0, Lorg/mortbay/jetty/AbstractConnector;->t0:[Ljava/lang/Thread;

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/mortbay/jetty/AbstractConnector;->t0:[Ljava/lang/Thread;

    array-length v1, v1

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Lorg/mortbay/jetty/AbstractConnector;->p:Lorg/mortbay/thread/ThreadPool;

    new-instance v2, Lorg/mortbay/jetty/AbstractConnector$a;

    invoke-direct {v2, p0, v0}, Lorg/mortbay/jetty/AbstractConnector$a;-><init>(Lorg/mortbay/jetty/AbstractConnector;I)V

    invoke-interface {v1, v2}, Lorg/mortbay/thread/ThreadPool;->dispatch(Ljava/lang/Runnable;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v0, "insufficient maxThreads configured for {}"

    invoke-static {v0, p0}, Lorg/mortbay/log/Log;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v0, "Started {}"

    invoke-static {v0, p0}, Lorg/mortbay/log/Log;->info(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "No server"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public doStop()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "Stopped {}"

    invoke-static {v0, p0}, Lorg/mortbay/log/Log;->info(Ljava/lang/String;Ljava/lang/Object;)V

    :try_start_0
    invoke-interface {p0}, Lorg/mortbay/jetty/Connector;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/mortbay/log/Log;->warn(Ljava/lang/Throwable;)V

    :goto_0
    iget-object v0, p0, Lorg/mortbay/jetty/AbstractConnector;->p:Lorg/mortbay/thread/ThreadPool;

    iget-object v1, p0, Lorg/mortbay/jetty/AbstractConnector;->o:Lorg/mortbay/jetty/Server;

    invoke-virtual {v1}, Lorg/mortbay/jetty/Server;->getThreadPool()Lorg/mortbay/thread/ThreadPool;

    move-result-object v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    iput-object v2, p0, Lorg/mortbay/jetty/AbstractConnector;->p:Lorg/mortbay/thread/ThreadPool;

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lorg/mortbay/jetty/AbstractConnector;->p:Lorg/mortbay/thread/ThreadPool;

    instance-of v1, v0, Lorg/mortbay/component/LifeCycle;

    if-eqz v1, :cond_1

    check-cast v0, Lorg/mortbay/component/LifeCycle;

    invoke-interface {v0}, Lorg/mortbay/component/LifeCycle;->stop()V

    :cond_1
    :goto_1
    invoke-super {p0}, Lorg/mortbay/component/AbstractLifeCycle;->doStop()V

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lorg/mortbay/jetty/AbstractConnector;->t0:[Ljava/lang/Thread;

    iput-object v2, p0, Lorg/mortbay/jetty/AbstractConnector;->t0:[Ljava/lang/Thread;

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_3

    const/4 p0, 0x0

    :goto_2
    array-length v1, v0

    if-ge p0, v1, :cond_3

    aget-object v1, v0, p0

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    :cond_2
    add-int/lit8 p0, p0, 0x1

    goto :goto_2

    :cond_3
    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public getAcceptQueueSize()I
    .locals 0

    iget p0, p0, Lorg/mortbay/jetty/AbstractConnector;->w:I

    return p0
.end method

.method public getAcceptorPriorityOffset()I
    .locals 0

    iget p0, p0, Lorg/mortbay/jetty/AbstractConnector;->y:I

    return p0
.end method

.method public getAcceptors()I
    .locals 0

    iget p0, p0, Lorg/mortbay/jetty/AbstractConnector;->x:I

    return p0
.end method

.method public getConfidentialPort()I
    .locals 0

    iget p0, p0, Lorg/mortbay/jetty/AbstractConnector;->v:I

    return p0
.end method

.method public getConfidentialScheme()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/jetty/AbstractConnector;->u:Ljava/lang/String;

    return-object p0
.end method

.method public getConnections()I
    .locals 0

    iget p0, p0, Lorg/mortbay/jetty/AbstractConnector;->x0:I

    return p0
.end method

.method public getConnectionsDurationAve()J
    .locals 5

    iget v0, p0, Lorg/mortbay/jetty/AbstractConnector;->x0:I

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    iget-wide v1, p0, Lorg/mortbay/jetty/AbstractConnector;->D0:J

    int-to-long v3, v0

    div-long v0, v1, v3

    :goto_0
    return-wide v0
.end method

.method public getConnectionsDurationMax()J
    .locals 2

    iget-wide v0, p0, Lorg/mortbay/jetty/AbstractConnector;->C0:J

    return-wide v0
.end method

.method public getConnectionsDurationMin()J
    .locals 2

    iget-wide v0, p0, Lorg/mortbay/jetty/AbstractConnector;->B0:J

    return-wide v0
.end method

.method public getConnectionsDurationTotal()J
    .locals 2

    iget-wide v0, p0, Lorg/mortbay/jetty/AbstractConnector;->D0:J

    return-wide v0
.end method

.method public getConnectionsOpen()I
    .locals 0

    iget p0, p0, Lorg/mortbay/jetty/AbstractConnector;->y0:I

    return p0
.end method

.method public getConnectionsOpenMax()I
    .locals 0

    iget p0, p0, Lorg/mortbay/jetty/AbstractConnector;->A0:I

    return p0
.end method

.method public getConnectionsOpenMin()I
    .locals 0

    iget p0, p0, Lorg/mortbay/jetty/AbstractConnector;->z0:I

    return p0
.end method

.method public getConnectionsRequestsAve()I
    .locals 1

    iget v0, p0, Lorg/mortbay/jetty/AbstractConnector;->x0:I

    if-nez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget p0, p0, Lorg/mortbay/jetty/AbstractConnector;->w0:I

    div-int/2addr p0, v0

    :goto_0
    return p0
.end method

.method public getConnectionsRequestsMax()I
    .locals 0

    iget p0, p0, Lorg/mortbay/jetty/AbstractConnector;->F0:I

    return p0
.end method

.method public getConnectionsRequestsMin()I
    .locals 0

    iget p0, p0, Lorg/mortbay/jetty/AbstractConnector;->E0:I

    return p0
.end method

.method public getForwardedForHeader()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/jetty/AbstractConnector;->k0:Ljava/lang/String;

    return-object p0
.end method

.method public getForwardedHostHeader()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/jetty/AbstractConnector;->Q:Ljava/lang/String;

    return-object p0
.end method

.method public getForwardedServerHeader()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/jetty/AbstractConnector;->Z:Ljava/lang/String;

    return-object p0
.end method

.method public getHost()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/jetty/AbstractConnector;->q:Ljava/lang/String;

    return-object p0
.end method

.method public getHostHeader()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/jetty/AbstractConnector;->O:Ljava/lang/String;

    return-object p0
.end method

.method public getIntegralPort()I
    .locals 0

    iget p0, p0, Lorg/mortbay/jetty/AbstractConnector;->t:I

    return p0
.end method

.method public getIntegralScheme()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/jetty/AbstractConnector;->s:Ljava/lang/String;

    return-object p0
.end method

.method public getLeftMostValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/16 p0, 0x2c

    invoke-virtual {p1, p0}, Ljava/lang/String;->indexOf(I)I

    move-result p0

    const/4 v0, -0x1

    if-ne p0, v0, :cond_1

    return-object p1

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getLowResourceMaxIdleTime()I
    .locals 0

    iget p0, p0, Lorg/mortbay/jetty/AbstractConnector;->_lowResourceMaxIdleTime:I

    return p0
.end method

.method public getMaxIdleTime()I
    .locals 0

    iget p0, p0, Lorg/mortbay/jetty/AbstractConnector;->_maxIdleTime:I

    return p0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/mortbay/jetty/AbstractConnector;->n:Ljava/lang/String;

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Lorg/mortbay/jetty/AbstractConnector;->getHost()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, "0.0.0.0"

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/mortbay/jetty/AbstractConnector;->getHost()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-interface {p0}, Lorg/mortbay/jetty/Connector;->getLocalPort()I

    move-result v1

    if-gtz v1, :cond_1

    invoke-virtual {p0}, Lorg/mortbay/jetty/AbstractConnector;->getPort()I

    move-result v1

    goto :goto_1

    :cond_1
    invoke-interface {p0}, Lorg/mortbay/jetty/Connector;->getLocalPort()I

    move-result v1

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/jetty/AbstractConnector;->n:Ljava/lang/String;

    :cond_2
    iget-object p0, p0, Lorg/mortbay/jetty/AbstractConnector;->n:Ljava/lang/String;

    return-object p0
.end method

.method public getPort()I
    .locals 0

    iget p0, p0, Lorg/mortbay/jetty/AbstractConnector;->r:I

    return p0
.end method

.method public getRequests()I
    .locals 0

    iget p0, p0, Lorg/mortbay/jetty/AbstractConnector;->w0:I

    return p0
.end method

.method public getResolveNames()Z
    .locals 0

    iget-boolean p0, p0, Lorg/mortbay/jetty/AbstractConnector;->z:Z

    return p0
.end method

.method public getReuseAddress()Z
    .locals 0

    iget-boolean p0, p0, Lorg/mortbay/jetty/AbstractConnector;->q0:Z

    return p0
.end method

.method public getServer()Lorg/mortbay/jetty/Server;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/jetty/AbstractConnector;->o:Lorg/mortbay/jetty/Server;

    return-object p0
.end method

.method public getSoLingerTime()I
    .locals 0

    iget p0, p0, Lorg/mortbay/jetty/AbstractConnector;->_soLingerTime:I

    return p0
.end method

.method public getStatsOn()Z
    .locals 4

    iget-wide v0, p0, Lorg/mortbay/jetty/AbstractConnector;->v0:J

    const-wide/16 v2, -0x1

    cmp-long p0, v0, v2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getStatsOnMs()J
    .locals 4

    iget-wide v0, p0, Lorg/mortbay/jetty/AbstractConnector;->v0:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/mortbay/jetty/AbstractConnector;->v0:J

    sub-long/2addr v0, v2

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method public getThreadPool()Lorg/mortbay/thread/ThreadPool;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/jetty/AbstractConnector;->p:Lorg/mortbay/thread/ThreadPool;

    return-object p0
.end method

.method public isConfidential(Lorg/mortbay/jetty/Request;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isForwarded()Z
    .locals 0

    iget-boolean p0, p0, Lorg/mortbay/jetty/AbstractConnector;->J:Z

    return p0
.end method

.method public isIntegral(Lorg/mortbay/jetty/Request;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public join()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    iget-object p0, p0, Lorg/mortbay/jetty/AbstractConnector;->t0:[Ljava/lang/Thread;

    if-eqz p0, :cond_1

    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    aget-object v1, p0, v0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public newContinuation()Lorg/mortbay/util/ajax/Continuation;
    .locals 0

    new-instance p0, Lorg/mortbay/util/ajax/WaitingContinuation;

    invoke-direct {p0}, Lorg/mortbay/util/ajax/WaitingContinuation;-><init>()V

    return-object p0
.end method

.method public persist(Lorg/mortbay/io/EndPoint;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public setAcceptQueueSize(I)V
    .locals 0

    iput p1, p0, Lorg/mortbay/jetty/AbstractConnector;->w:I

    return-void
.end method

.method public setAcceptorPriorityOffset(I)V
    .locals 0

    iput p1, p0, Lorg/mortbay/jetty/AbstractConnector;->y:I

    return-void
.end method

.method public setAcceptors(I)V
    .locals 0

    iput p1, p0, Lorg/mortbay/jetty/AbstractConnector;->x:I

    return-void
.end method

.method public setConfidentialPort(I)V
    .locals 0

    iput p1, p0, Lorg/mortbay/jetty/AbstractConnector;->v:I

    return-void
.end method

.method public setConfidentialScheme(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/mortbay/jetty/AbstractConnector;->u:Ljava/lang/String;

    return-void
.end method

.method public setForwarded(Z)V
    .locals 2

    if-eqz p1, :cond_0

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v1, " is forwarded"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;)V

    :cond_0
    iput-boolean p1, p0, Lorg/mortbay/jetty/AbstractConnector;->J:Z

    return-void
.end method

.method public setForwardedForHeader(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/mortbay/jetty/AbstractConnector;->k0:Ljava/lang/String;

    return-void
.end method

.method public setForwardedHostHeader(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/mortbay/jetty/AbstractConnector;->Q:Ljava/lang/String;

    return-void
.end method

.method public setForwardedServerHeader(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/mortbay/jetty/AbstractConnector;->Z:Ljava/lang/String;

    return-void
.end method

.method public setHost(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/mortbay/jetty/AbstractConnector;->q:Ljava/lang/String;

    return-void
.end method

.method public setHostHeader(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/mortbay/jetty/AbstractConnector;->O:Ljava/lang/String;

    return-void
.end method

.method public setIntegralPort(I)V
    .locals 0

    iput p1, p0, Lorg/mortbay/jetty/AbstractConnector;->t:I

    return-void
.end method

.method public setIntegralScheme(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/mortbay/jetty/AbstractConnector;->s:Ljava/lang/String;

    return-void
.end method

.method public setLowResourceMaxIdleTime(I)V
    .locals 0

    iput p1, p0, Lorg/mortbay/jetty/AbstractConnector;->_lowResourceMaxIdleTime:I

    return-void
.end method

.method public setMaxIdleTime(I)V
    .locals 0

    iput p1, p0, Lorg/mortbay/jetty/AbstractConnector;->_maxIdleTime:I

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/mortbay/jetty/AbstractConnector;->n:Ljava/lang/String;

    return-void
.end method

.method public setPort(I)V
    .locals 0

    iput p1, p0, Lorg/mortbay/jetty/AbstractConnector;->r:I

    return-void
.end method

.method public setResolveNames(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/mortbay/jetty/AbstractConnector;->z:Z

    return-void
.end method

.method public setReuseAddress(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/mortbay/jetty/AbstractConnector;->q0:Z

    return-void
.end method

.method public setServer(Lorg/mortbay/jetty/Server;)V
    .locals 0

    iput-object p1, p0, Lorg/mortbay/jetty/AbstractConnector;->o:Lorg/mortbay/jetty/Server;

    return-void
.end method

.method public setSoLingerTime(I)V
    .locals 0

    iput p1, p0, Lorg/mortbay/jetty/AbstractConnector;->_soLingerTime:I

    return-void
.end method

.method public setStatsOn(Z)V
    .locals 4

    const-wide/16 v0, -0x1

    if-eqz p1, :cond_0

    iget-wide v2, p0, Lorg/mortbay/jetty/AbstractConnector;->v0:J

    cmp-long v2, v2, v0

    if-eqz v2, :cond_0

    return-void

    :cond_0
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Statistics on = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    const-string v3, " for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/mortbay/jetty/AbstractConnector;->statsReset()V

    if-eqz p1, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    :cond_1
    iput-wide v0, p0, Lorg/mortbay/jetty/AbstractConnector;->v0:J

    return-void
.end method

.method public setThreadPool(Lorg/mortbay/thread/ThreadPool;)V
    .locals 0

    iput-object p1, p0, Lorg/mortbay/jetty/AbstractConnector;->p:Lorg/mortbay/thread/ThreadPool;

    return-void
.end method

.method public statsReset()V
    .locals 4

    iget-wide v0, p0, Lorg/mortbay/jetty/AbstractConnector;->v0:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    :goto_0
    iput-wide v2, p0, Lorg/mortbay/jetty/AbstractConnector;->v0:J

    const/4 v0, 0x0

    iput v0, p0, Lorg/mortbay/jetty/AbstractConnector;->x0:I

    iget v1, p0, Lorg/mortbay/jetty/AbstractConnector;->y0:I

    iput v1, p0, Lorg/mortbay/jetty/AbstractConnector;->z0:I

    iput v1, p0, Lorg/mortbay/jetty/AbstractConnector;->A0:I

    iput v0, p0, Lorg/mortbay/jetty/AbstractConnector;->y0:I

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lorg/mortbay/jetty/AbstractConnector;->B0:J

    iput-wide v1, p0, Lorg/mortbay/jetty/AbstractConnector;->C0:J

    iput-wide v1, p0, Lorg/mortbay/jetty/AbstractConnector;->D0:J

    iput v0, p0, Lorg/mortbay/jetty/AbstractConnector;->w0:I

    iput v0, p0, Lorg/mortbay/jetty/AbstractConnector;->E0:I

    iput v0, p0, Lorg/mortbay/jetty/AbstractConnector;->F0:I

    return-void
.end method

.method public stopAccept(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    if-lez v1, :cond_0

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "@"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/mortbay/jetty/AbstractConnector;->getHost()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "0.0.0.0"

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lorg/mortbay/jetty/AbstractConnector;->getHost()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, ":"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-interface {p0}, Lorg/mortbay/jetty/Connector;->getLocalPort()I

    move-result v0

    if-gtz v0, :cond_2

    invoke-virtual {p0}, Lorg/mortbay/jetty/AbstractConnector;->getPort()I

    move-result p0

    goto :goto_1

    :cond_2
    invoke-interface {p0}, Lorg/mortbay/jetty/Connector;->getLocalPort()I

    move-result p0

    :goto_1
    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
