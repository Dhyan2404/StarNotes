.class public Lorg/mortbay/jetty/LocalConnector;
.super Lorg/mortbay/jetty/AbstractConnector;
.source "SourceFile"


# instance fields
.field public G0:Lorg/mortbay/io/ByteArrayEndPoint;

.field public H0:Lorg/mortbay/io/ByteArrayBuffer;

.field public I0:Lorg/mortbay/io/ByteArrayBuffer;

.field public J0:Lorg/mortbay/jetty/Server;

.field public K0:Z

.field public L0:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/mortbay/jetty/AbstractConnector;-><init>()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/mortbay/jetty/AbstractConnector;->setPort(I)V

    return-void
.end method


# virtual methods
.method public accept(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const/4 p1, 0x0

    move-object v0, p1

    :goto_0
    invoke-virtual {p0}, Lorg/mortbay/component/AbstractLifeCycle;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_5

    monitor-enter p0

    :goto_1
    :try_start_0
    iget-boolean v1, p0, Lorg/mortbay/jetty/LocalConnector;->K0:Z

    if-nez v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    goto :goto_1

    :cond_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    const/4 v1, 0x0

    if-nez v0, :cond_1

    :try_start_2
    new-instance v2, Lorg/mortbay/jetty/HttpConnection;

    iget-object v3, p0, Lorg/mortbay/jetty/LocalConnector;->G0:Lorg/mortbay/io/ByteArrayEndPoint;

    invoke-virtual {p0}, Lorg/mortbay/jetty/AbstractConnector;->getServer()Lorg/mortbay/jetty/Server;

    move-result-object v4

    invoke-direct {v2, p0, v3, v4}, Lorg/mortbay/jetty/HttpConnection;-><init>(Lorg/mortbay/jetty/Connector;Lorg/mortbay/io/EndPoint;Lorg/mortbay/jetty/Server;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    invoke-virtual {p0, v2}, Lorg/mortbay/jetty/AbstractConnector;->connectionOpened(Lorg/mortbay/jetty/HttpConnection;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v0, v2

    goto :goto_2

    :catchall_0
    move-exception p1

    move-object v0, v2

    goto :goto_3

    :cond_1
    :goto_2
    :try_start_4
    iget-object v2, p0, Lorg/mortbay/jetty/LocalConnector;->H0:Lorg/mortbay/io/ByteArrayBuffer;

    invoke-virtual {v2}, Lorg/mortbay/io/AbstractBuffer;->length()I

    move-result v2

    if-lez v2, :cond_2

    invoke-virtual {v0}, Lorg/mortbay/jetty/HttpConnection;->handle()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_2

    :cond_2
    iget-boolean v2, p0, Lorg/mortbay/jetty/LocalConnector;->L0:Z

    if-nez v2, :cond_3

    invoke-virtual {p0, v0}, Lorg/mortbay/jetty/AbstractConnector;->connectionClosed(Lorg/mortbay/jetty/HttpConnection;)V

    invoke-virtual {v0}, Lorg/mortbay/jetty/HttpConnection;->destroy()V

    move-object v0, p1

    :cond_3
    monitor-enter p0

    :try_start_5
    iput-boolean v1, p0, Lorg/mortbay/jetty/LocalConnector;->K0:Z

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    monitor-exit p0

    goto :goto_0

    :catchall_1
    move-exception p1

    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw p1

    :catchall_2
    move-exception p1

    :goto_3
    iget-boolean v2, p0, Lorg/mortbay/jetty/LocalConnector;->L0:Z

    if-nez v2, :cond_4

    invoke-virtual {p0, v0}, Lorg/mortbay/jetty/AbstractConnector;->connectionClosed(Lorg/mortbay/jetty/HttpConnection;)V

    invoke-virtual {v0}, Lorg/mortbay/jetty/HttpConnection;->destroy()V

    :cond_4
    monitor-enter p0

    :try_start_6
    iput-boolean v1, p0, Lorg/mortbay/jetty/LocalConnector;->K0:Z

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw p1

    :catchall_3
    move-exception p1

    :try_start_7
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw p1

    :catchall_4
    move-exception p1

    goto :goto_4

    :catch_0
    :try_start_8
    monitor-exit p0

    return-void

    :goto_4
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    throw p1

    :cond_5
    return-void
.end method

.method public clear()V
    .locals 1

    iget-object v0, p0, Lorg/mortbay/jetty/LocalConnector;->H0:Lorg/mortbay/io/ByteArrayBuffer;

    invoke-virtual {v0}, Lorg/mortbay/io/AbstractBuffer;->clear()V

    iget-object p0, p0, Lorg/mortbay/jetty/LocalConnector;->I0:Lorg/mortbay/io/ByteArrayBuffer;

    invoke-virtual {p0}, Lorg/mortbay/io/AbstractBuffer;->clear()V

    return-void
.end method

.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public doStart()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Lorg/mortbay/io/ByteArrayBuffer;

    const/16 v1, 0x2000

    invoke-direct {v0, v1}, Lorg/mortbay/io/ByteArrayBuffer;-><init>(I)V

    iput-object v0, p0, Lorg/mortbay/jetty/LocalConnector;->H0:Lorg/mortbay/io/ByteArrayBuffer;

    new-instance v0, Lorg/mortbay/io/ByteArrayBuffer;

    invoke-direct {v0, v1}, Lorg/mortbay/io/ByteArrayBuffer;-><init>(I)V

    iput-object v0, p0, Lorg/mortbay/jetty/LocalConnector;->I0:Lorg/mortbay/io/ByteArrayBuffer;

    new-instance v0, Lorg/mortbay/io/ByteArrayEndPoint;

    invoke-direct {v0}, Lorg/mortbay/io/ByteArrayEndPoint;-><init>()V

    iput-object v0, p0, Lorg/mortbay/jetty/LocalConnector;->G0:Lorg/mortbay/io/ByteArrayEndPoint;

    iget-object v1, p0, Lorg/mortbay/jetty/LocalConnector;->H0:Lorg/mortbay/io/ByteArrayBuffer;

    invoke-virtual {v0, v1}, Lorg/mortbay/io/ByteArrayEndPoint;->setIn(Lorg/mortbay/io/ByteArrayBuffer;)V

    iget-object v0, p0, Lorg/mortbay/jetty/LocalConnector;->G0:Lorg/mortbay/io/ByteArrayEndPoint;

    iget-object v1, p0, Lorg/mortbay/jetty/LocalConnector;->I0:Lorg/mortbay/io/ByteArrayBuffer;

    invoke-virtual {v0, v1}, Lorg/mortbay/io/ByteArrayEndPoint;->setOut(Lorg/mortbay/io/ByteArrayBuffer;)V

    iget-object v0, p0, Lorg/mortbay/jetty/LocalConnector;->G0:Lorg/mortbay/io/ByteArrayEndPoint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/mortbay/io/ByteArrayEndPoint;->setGrowOutput(Z)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/mortbay/jetty/LocalConnector;->K0:Z

    invoke-super {p0}, Lorg/mortbay/jetty/AbstractConnector;->doStart()V

    return-void
.end method

.method public getConnection()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/jetty/LocalConnector;->G0:Lorg/mortbay/io/ByteArrayEndPoint;

    return-object p0
.end method

.method public getLocalPort()I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public getResponses(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lorg/mortbay/jetty/LocalConnector;->getResponses(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getResponses(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2
    new-instance v0, Lorg/mortbay/io/ByteArrayBuffer;

    invoke-direct {v0, p1}, Lorg/mortbay/io/ByteArrayBuffer;-><init>(Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lorg/mortbay/jetty/LocalConnector;->H0:Lorg/mortbay/io/ByteArrayBuffer;

    invoke-virtual {p1}, Lorg/mortbay/io/ByteArrayBuffer;->space()I

    move-result p1

    invoke-virtual {v0}, Lorg/mortbay/io/AbstractBuffer;->length()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 4
    new-instance p1, Lorg/mortbay/io/ByteArrayBuffer;

    iget-object v1, p0, Lorg/mortbay/jetty/LocalConnector;->H0:Lorg/mortbay/io/ByteArrayBuffer;

    invoke-virtual {v1}, Lorg/mortbay/io/AbstractBuffer;->length()I

    move-result v1

    invoke-virtual {v0}, Lorg/mortbay/io/AbstractBuffer;->length()I

    move-result v2

    add-int/2addr v1, v2

    invoke-direct {p1, v1}, Lorg/mortbay/io/ByteArrayBuffer;-><init>(I)V

    .line 5
    iget-object v1, p0, Lorg/mortbay/jetty/LocalConnector;->H0:Lorg/mortbay/io/ByteArrayBuffer;

    invoke-virtual {p1, v1}, Lorg/mortbay/io/AbstractBuffer;->put(Lorg/mortbay/io/Buffer;)I

    .line 6
    iput-object p1, p0, Lorg/mortbay/jetty/LocalConnector;->H0:Lorg/mortbay/io/ByteArrayBuffer;

    .line 7
    iget-object v1, p0, Lorg/mortbay/jetty/LocalConnector;->G0:Lorg/mortbay/io/ByteArrayEndPoint;

    invoke-virtual {v1, p1}, Lorg/mortbay/io/ByteArrayEndPoint;->setIn(Lorg/mortbay/io/ByteArrayBuffer;)V

    .line 8
    :cond_0
    iget-object p1, p0, Lorg/mortbay/jetty/LocalConnector;->H0:Lorg/mortbay/io/ByteArrayBuffer;

    invoke-virtual {p1, v0}, Lorg/mortbay/io/AbstractBuffer;->put(Lorg/mortbay/io/Buffer;)I

    .line 9
    monitor-enter p0

    .line 10
    :try_start_0
    iput-boolean p2, p0, Lorg/mortbay/jetty/LocalConnector;->L0:Z

    const/4 p1, 0x1

    .line 11
    iput-boolean p1, p0, Lorg/mortbay/jetty/LocalConnector;->K0:Z

    .line 12
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 13
    :goto_0
    iget-boolean p1, p0, Lorg/mortbay/jetty/LocalConnector;->K0:Z

    if-eqz p1, :cond_1

    .line 14
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    goto :goto_0

    .line 15
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    iget-object p1, p0, Lorg/mortbay/jetty/LocalConnector;->G0:Lorg/mortbay/io/ByteArrayEndPoint;

    invoke-virtual {p1}, Lorg/mortbay/io/ByteArrayEndPoint;->getOut()Lorg/mortbay/io/ByteArrayBuffer;

    move-result-object p1

    iput-object p1, p0, Lorg/mortbay/jetty/LocalConnector;->I0:Lorg/mortbay/io/ByteArrayBuffer;

    .line 17
    invoke-virtual {p1}, Lorg/mortbay/io/AbstractBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catchall_0
    move-exception p1

    .line 18
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public getResponses(Lorg/mortbay/io/ByteArrayBuffer;Z)Lorg/mortbay/io/ByteArrayBuffer;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 19
    iget-object v0, p0, Lorg/mortbay/jetty/LocalConnector;->H0:Lorg/mortbay/io/ByteArrayBuffer;

    invoke-virtual {v0}, Lorg/mortbay/io/ByteArrayBuffer;->space()I

    move-result v0

    invoke-virtual {p1}, Lorg/mortbay/io/AbstractBuffer;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 20
    new-instance v0, Lorg/mortbay/io/ByteArrayBuffer;

    iget-object v1, p0, Lorg/mortbay/jetty/LocalConnector;->H0:Lorg/mortbay/io/ByteArrayBuffer;

    invoke-virtual {v1}, Lorg/mortbay/io/AbstractBuffer;->length()I

    move-result v1

    invoke-virtual {p1}, Lorg/mortbay/io/AbstractBuffer;->length()I

    move-result v2

    add-int/2addr v1, v2

    invoke-direct {v0, v1}, Lorg/mortbay/io/ByteArrayBuffer;-><init>(I)V

    .line 21
    iget-object v1, p0, Lorg/mortbay/jetty/LocalConnector;->H0:Lorg/mortbay/io/ByteArrayBuffer;

    invoke-virtual {v0, v1}, Lorg/mortbay/io/AbstractBuffer;->put(Lorg/mortbay/io/Buffer;)I

    .line 22
    iput-object v0, p0, Lorg/mortbay/jetty/LocalConnector;->H0:Lorg/mortbay/io/ByteArrayBuffer;

    .line 23
    iget-object v1, p0, Lorg/mortbay/jetty/LocalConnector;->G0:Lorg/mortbay/io/ByteArrayEndPoint;

    invoke-virtual {v1, v0}, Lorg/mortbay/io/ByteArrayEndPoint;->setIn(Lorg/mortbay/io/ByteArrayBuffer;)V

    .line 24
    :cond_0
    iget-object v0, p0, Lorg/mortbay/jetty/LocalConnector;->H0:Lorg/mortbay/io/ByteArrayBuffer;

    invoke-virtual {v0, p1}, Lorg/mortbay/io/AbstractBuffer;->put(Lorg/mortbay/io/Buffer;)I

    .line 25
    monitor-enter p0

    .line 26
    :try_start_0
    iput-boolean p2, p0, Lorg/mortbay/jetty/LocalConnector;->L0:Z

    const/4 p1, 0x1

    .line 27
    iput-boolean p1, p0, Lorg/mortbay/jetty/LocalConnector;->K0:Z

    .line 28
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 29
    :goto_0
    iget-boolean p1, p0, Lorg/mortbay/jetty/LocalConnector;->K0:Z

    if-eqz p1, :cond_1

    .line 30
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    goto :goto_0

    .line 31
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    iget-object p1, p0, Lorg/mortbay/jetty/LocalConnector;->G0:Lorg/mortbay/io/ByteArrayEndPoint;

    invoke-virtual {p1}, Lorg/mortbay/io/ByteArrayEndPoint;->getOut()Lorg/mortbay/io/ByteArrayBuffer;

    move-result-object p1

    iput-object p1, p0, Lorg/mortbay/jetty/LocalConnector;->I0:Lorg/mortbay/io/ByteArrayBuffer;

    return-object p1

    :catchall_0
    move-exception p1

    .line 33
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public newBuffer(I)Lorg/mortbay/io/Buffer;
    .locals 0

    new-instance p0, Lorg/mortbay/io/ByteArrayBuffer;

    invoke-direct {p0, p1}, Lorg/mortbay/io/ByteArrayBuffer;-><init>(I)V

    return-object p0
.end method

.method public open()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public reopen()V
    .locals 2

    iget-object v0, p0, Lorg/mortbay/jetty/LocalConnector;->H0:Lorg/mortbay/io/ByteArrayBuffer;

    invoke-virtual {v0}, Lorg/mortbay/io/AbstractBuffer;->clear()V

    iget-object v0, p0, Lorg/mortbay/jetty/LocalConnector;->I0:Lorg/mortbay/io/ByteArrayBuffer;

    invoke-virtual {v0}, Lorg/mortbay/io/AbstractBuffer;->clear()V

    new-instance v0, Lorg/mortbay/io/ByteArrayEndPoint;

    invoke-direct {v0}, Lorg/mortbay/io/ByteArrayEndPoint;-><init>()V

    iput-object v0, p0, Lorg/mortbay/jetty/LocalConnector;->G0:Lorg/mortbay/io/ByteArrayEndPoint;

    iget-object v1, p0, Lorg/mortbay/jetty/LocalConnector;->H0:Lorg/mortbay/io/ByteArrayBuffer;

    invoke-virtual {v0, v1}, Lorg/mortbay/io/ByteArrayEndPoint;->setIn(Lorg/mortbay/io/ByteArrayBuffer;)V

    iget-object v0, p0, Lorg/mortbay/jetty/LocalConnector;->G0:Lorg/mortbay/io/ByteArrayEndPoint;

    iget-object v1, p0, Lorg/mortbay/jetty/LocalConnector;->I0:Lorg/mortbay/io/ByteArrayBuffer;

    invoke-virtual {v0, v1}, Lorg/mortbay/io/ByteArrayEndPoint;->setOut(Lorg/mortbay/io/ByteArrayBuffer;)V

    iget-object v0, p0, Lorg/mortbay/jetty/LocalConnector;->G0:Lorg/mortbay/io/ByteArrayEndPoint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/mortbay/io/ByteArrayEndPoint;->setGrowOutput(Z)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/mortbay/jetty/LocalConnector;->K0:Z

    return-void
.end method

.method public setServer(Lorg/mortbay/jetty/Server;)V
    .locals 0

    invoke-super {p0, p1}, Lorg/mortbay/jetty/AbstractConnector;->setServer(Lorg/mortbay/jetty/Server;)V

    iput-object p1, p0, Lorg/mortbay/jetty/LocalConnector;->J0:Lorg/mortbay/jetty/Server;

    return-void
.end method
