.class public Lcom/sunia/HTREnginev2/d8j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/http/conn/ManagedClientConnection;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public final e:Lorg/apache/http/conn/ClientConnectionManager;

.field public final f:Lorg/apache/http/conn/ClientConnectionOperator;

.field public volatile g:Lcom/sunia/HTREnginev2/j0i;

.field public volatile h:Z

.field public volatile i:J


# direct methods
.method public constructor <init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/conn/ClientConnectionOperator;Lcom/sunia/HTREnginev2/j0i;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Connection manager"

    invoke-static {p1, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Connection operator"

    invoke-static {p2, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "HTTP pool entry"

    invoke-static {p3, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/sunia/HTREnginev2/d8j;->e:Lorg/apache/http/conn/ClientConnectionManager;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/d8j;->f:Lorg/apache/http/conn/ClientConnectionOperator;

    iput-object p3, p0, Lcom/sunia/HTREnginev2/d8j;->g:Lcom/sunia/HTREnginev2/j0i;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/sunia/HTREnginev2/d8j;->h:Z

    const-wide p1, 0x7fffffffffffffffL

    iput-wide p1, p0, Lcom/sunia/HTREnginev2/d8j;->i:J

    return-void
.end method


# virtual methods
.method public H(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/d8j;->j()Lorg/apache/http/conn/OperatedClientConnection;

    move-result-object p0

    instance-of v0, p0, Lorg/apache/http/protocol/HttpContext;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/apache/http/protocol/HttpContext;

    invoke-interface {p0, p1}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final I()Lorg/apache/http/conn/OperatedClientConnection;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/d8j;->g:Lcom/sunia/HTREnginev2/j0i;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/http/pool/PoolEntry;->getConnection()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/http/conn/OperatedClientConnection;

    return-object p0
.end method

.method public M()Lorg/apache/http/conn/ClientConnectionManager;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/d8j;->e:Lorg/apache/http/conn/ClientConnectionManager;

    return-object p0
.end method

.method public abortConnection()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sunia/HTREnginev2/d8j;->g:Lcom/sunia/HTREnginev2/j0i;

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sunia/HTREnginev2/d8j;->h:Z

    iget-object v0, p0, Lcom/sunia/HTREnginev2/d8j;->g:Lcom/sunia/HTREnginev2/j0i;

    invoke-virtual {v0}, Lorg/apache/http/pool/PoolEntry;->getConnection()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/conn/OperatedClientConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-interface {v0}, Lorg/apache/http/HttpConnection;->shutdown()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    :try_start_2
    iget-object v0, p0, Lcom/sunia/HTREnginev2/d8j;->e:Lorg/apache/http/conn/ClientConnectionManager;

    iget-wide v1, p0, Lcom/sunia/HTREnginev2/d8j;->i:J

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, p0, v1, v2, v3}, Lorg/apache/http/conn/ClientConnectionManager;->releaseConnection(Lorg/apache/http/conn/ManagedClientConnection;JLjava/util/concurrent/TimeUnit;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sunia/HTREnginev2/d8j;->g:Lcom/sunia/HTREnginev2/j0i;

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public bind(Ljava/net/Socket;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Lcom/sunia/HTREnginev2/d8j;->g:Lcom/sunia/HTREnginev2/j0i;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lorg/apache/http/pool/PoolEntry;->getConnection()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/conn/OperatedClientConnection;

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/j0i;->c()Lorg/apache/http/conn/routing/RouteTracker;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/http/conn/routing/RouteTracker;->reset()V

    invoke-interface {v0}, Lorg/apache/http/HttpConnection;->close()V

    :cond_0
    return-void
.end method

.method public e0()Lcom/sunia/HTREnginev2/j0i;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/d8j;->g:Lcom/sunia/HTREnginev2/j0i;

    return-object p0
.end method

.method public f()Lcom/sunia/HTREnginev2/j0i;
    .locals 2

    iget-object v0, p0, Lcom/sunia/HTREnginev2/d8j;->g:Lcom/sunia/HTREnginev2/j0i;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sunia/HTREnginev2/d8j;->g:Lcom/sunia/HTREnginev2/j0i;

    return-object v0
.end method

.method public f0(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/d8j;->j()Lorg/apache/http/conn/OperatedClientConnection;

    move-result-object p0

    instance-of v0, p0, Lorg/apache/http/protocol/HttpContext;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/apache/http/protocol/HttpContext;

    invoke-interface {p0, p1}, Lorg/apache/http/protocol/HttpContext;->removeAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public flush()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/d8j;->j()Lorg/apache/http/conn/OperatedClientConnection;

    move-result-object p0

    invoke-interface {p0}, Lorg/apache/http/HttpClientConnection;->flush()V

    return-void
.end method

.method public g0(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/d8j;->j()Lorg/apache/http/conn/OperatedClientConnection;

    move-result-object p0

    instance-of v0, p0, Lorg/apache/http/protocol/HttpContext;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/apache/http/protocol/HttpContext;

    invoke-interface {p0, p1, p2}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public getId()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getLocalAddress()Ljava/net/InetAddress;
    .locals 0

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/d8j;->j()Lorg/apache/http/conn/OperatedClientConnection;

    move-result-object p0

    invoke-interface {p0}, Lorg/apache/http/HttpInetConnection;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object p0

    return-object p0
.end method

.method public getLocalPort()I
    .locals 0

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/d8j;->j()Lorg/apache/http/conn/OperatedClientConnection;

    move-result-object p0

    invoke-interface {p0}, Lorg/apache/http/HttpInetConnection;->getLocalPort()I

    move-result p0

    return p0
.end method

.method public getMetrics()Lorg/apache/http/HttpConnectionMetrics;
    .locals 0

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/d8j;->j()Lorg/apache/http/conn/OperatedClientConnection;

    move-result-object p0

    invoke-interface {p0}, Lorg/apache/http/HttpConnection;->getMetrics()Lorg/apache/http/HttpConnectionMetrics;

    move-result-object p0

    return-object p0
.end method

.method public getRemoteAddress()Ljava/net/InetAddress;
    .locals 0

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/d8j;->j()Lorg/apache/http/conn/OperatedClientConnection;

    move-result-object p0

    invoke-interface {p0}, Lorg/apache/http/HttpInetConnection;->getRemoteAddress()Ljava/net/InetAddress;

    move-result-object p0

    return-object p0
.end method

.method public getRemotePort()I
    .locals 0

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/d8j;->j()Lorg/apache/http/conn/OperatedClientConnection;

    move-result-object p0

    invoke-interface {p0}, Lorg/apache/http/HttpInetConnection;->getRemotePort()I

    move-result p0

    return p0
.end method

.method public getRoute()Lorg/apache/http/conn/routing/HttpRoute;
    .locals 0

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/d8j;->w()Lcom/sunia/HTREnginev2/j0i;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/j0i;->a()Lorg/apache/http/conn/routing/HttpRoute;

    move-result-object p0

    return-object p0
.end method

.method public getSSLSession()Ljavax/net/ssl/SSLSession;
    .locals 1

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/d8j;->j()Lorg/apache/http/conn/OperatedClientConnection;

    move-result-object p0

    invoke-interface {p0}, Lorg/apache/http/conn/OperatedClientConnection;->getSocket()Ljava/net/Socket;

    move-result-object p0

    instance-of v0, p0, Ljavax/net/ssl/SSLSocket;

    if-eqz v0, :cond_0

    check-cast p0, Ljavax/net/ssl/SSLSocket;

    invoke-virtual {p0}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getSocket()Ljava/net/Socket;
    .locals 0

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/d8j;->j()Lorg/apache/http/conn/OperatedClientConnection;

    move-result-object p0

    invoke-interface {p0}, Lorg/apache/http/conn/OperatedClientConnection;->getSocket()Ljava/net/Socket;

    move-result-object p0

    return-object p0
.end method

.method public getSocketTimeout()I
    .locals 0

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/d8j;->j()Lorg/apache/http/conn/OperatedClientConnection;

    move-result-object p0

    invoke-interface {p0}, Lorg/apache/http/HttpConnection;->getSocketTimeout()I

    move-result p0

    return p0
.end method

.method public getState()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/d8j;->w()Lcom/sunia/HTREnginev2/j0i;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/http/pool/PoolEntry;->getState()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public isMarkedReusable()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sunia/HTREnginev2/d8j;->h:Z

    return p0
.end method

.method public isOpen()Z
    .locals 0

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/d8j;->I()Lorg/apache/http/conn/OperatedClientConnection;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lorg/apache/http/HttpConnection;->isOpen()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isResponseAvailable(I)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/d8j;->j()Lorg/apache/http/conn/OperatedClientConnection;

    move-result-object p0

    invoke-interface {p0, p1}, Lorg/apache/http/HttpClientConnection;->isResponseAvailable(I)Z

    move-result p0

    return p0
.end method

.method public isSecure()Z
    .locals 0

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/d8j;->j()Lorg/apache/http/conn/OperatedClientConnection;

    move-result-object p0

    invoke-interface {p0}, Lorg/apache/http/conn/OperatedClientConnection;->isSecure()Z

    move-result p0

    return p0
.end method

.method public isStale()Z
    .locals 0

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/d8j;->I()Lorg/apache/http/conn/OperatedClientConnection;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lorg/apache/http/HttpConnection;->isStale()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public final j()Lorg/apache/http/conn/OperatedClientConnection;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/d8j;->g:Lcom/sunia/HTREnginev2/j0i;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lorg/apache/http/pool/PoolEntry;->getConnection()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/http/conn/OperatedClientConnection;

    return-object p0

    :cond_0
    new-instance p0, Lorg/apache/http/impl/conn/ConnectionShutdownException;

    invoke-direct {p0}, Lorg/apache/http/impl/conn/ConnectionShutdownException;-><init>()V

    throw p0
.end method

.method public layerProtocol(Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/params/HttpParams;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "HTTP parameters"

    invoke-static {p2, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sunia/HTREnginev2/d8j;->g:Lcom/sunia/HTREnginev2/j0i;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sunia/HTREnginev2/d8j;->g:Lcom/sunia/HTREnginev2/j0i;

    invoke-virtual {v0}, Lcom/sunia/HTREnginev2/j0i;->c()Lorg/apache/http/conn/routing/RouteTracker;

    move-result-object v0

    const-string v1, "Route tracker"

    invoke-static {v0, v1}, Lorg/apache/http/util/Asserts;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/apache/http/conn/routing/RouteTracker;->isConnected()Z

    move-result v1

    const-string v2, "Connection not open"

    invoke-static {v1, v2}, Lorg/apache/http/util/Asserts;->check(ZLjava/lang/String;)V

    invoke-virtual {v0}, Lorg/apache/http/conn/routing/RouteTracker;->isTunnelled()Z

    move-result v1

    const-string v2, "Protocol layering without a tunnel not supported"

    invoke-static {v1, v2}, Lorg/apache/http/util/Asserts;->check(ZLjava/lang/String;)V

    invoke-virtual {v0}, Lorg/apache/http/conn/routing/RouteTracker;->isLayered()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "Multiple protocol layering not supported"

    invoke-static {v1, v2}, Lorg/apache/http/util/Asserts;->check(ZLjava/lang/String;)V

    invoke-virtual {v0}, Lorg/apache/http/conn/routing/RouteTracker;->getTargetHost()Lorg/apache/http/HttpHost;

    move-result-object v0

    iget-object v1, p0, Lcom/sunia/HTREnginev2/d8j;->g:Lcom/sunia/HTREnginev2/j0i;

    invoke-virtual {v1}, Lorg/apache/http/pool/PoolEntry;->getConnection()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/http/conn/OperatedClientConnection;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v2, p0, Lcom/sunia/HTREnginev2/d8j;->f:Lorg/apache/http/conn/ClientConnectionOperator;

    invoke-interface {v2, v1, v0, p1, p2}, Lorg/apache/http/conn/ClientConnectionOperator;->updateSecureConnection(Lorg/apache/http/conn/OperatedClientConnection;Lorg/apache/http/HttpHost;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/params/HttpParams;)V

    monitor-enter p0

    :try_start_1
    iget-object p1, p0, Lcom/sunia/HTREnginev2/d8j;->g:Lcom/sunia/HTREnginev2/j0i;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/sunia/HTREnginev2/d8j;->g:Lcom/sunia/HTREnginev2/j0i;

    invoke-virtual {p1}, Lcom/sunia/HTREnginev2/j0i;->c()Lorg/apache/http/conn/routing/RouteTracker;

    move-result-object p1

    invoke-interface {v1}, Lorg/apache/http/conn/OperatedClientConnection;->isSecure()Z

    move-result p2

    invoke-virtual {p1, p2}, Lorg/apache/http/conn/routing/RouteTracker;->layerProtocol(Z)V

    monitor-exit p0

    return-void

    :cond_1
    new-instance p1, Ljava/io/InterruptedIOException;

    invoke-direct {p1}, Ljava/io/InterruptedIOException;-><init>()V

    throw p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_2
    :try_start_2
    new-instance p1, Lorg/apache/http/impl/conn/ConnectionShutdownException;

    invoke-direct {p1}, Lorg/apache/http/impl/conn/ConnectionShutdownException;-><init>()V

    throw p1

    :catchall_1
    move-exception p1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method public markReusable()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sunia/HTREnginev2/d8j;->h:Z

    return-void
.end method

.method public open(Lorg/apache/http/conn/routing/HttpRoute;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/params/HttpParams;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "Route"

    invoke-static {p1, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "HTTP parameters"

    invoke-static {p3, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sunia/HTREnginev2/d8j;->g:Lcom/sunia/HTREnginev2/j0i;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sunia/HTREnginev2/d8j;->g:Lcom/sunia/HTREnginev2/j0i;

    invoke-virtual {v0}, Lcom/sunia/HTREnginev2/j0i;->c()Lorg/apache/http/conn/routing/RouteTracker;

    move-result-object v0

    const-string v1, "Route tracker"

    invoke-static {v0, v1}, Lorg/apache/http/util/Asserts;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/apache/http/conn/routing/RouteTracker;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Connection already open"

    invoke-static {v0, v1}, Lorg/apache/http/util/Asserts;->check(ZLjava/lang/String;)V

    iget-object v0, p0, Lcom/sunia/HTREnginev2/d8j;->g:Lcom/sunia/HTREnginev2/j0i;

    invoke-virtual {v0}, Lorg/apache/http/pool/PoolEntry;->getConnection()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/conn/OperatedClientConnection;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    invoke-virtual {p1}, Lorg/apache/http/conn/routing/HttpRoute;->getProxyHost()Lorg/apache/http/HttpHost;

    move-result-object v7

    iget-object v1, p0, Lcom/sunia/HTREnginev2/d8j;->f:Lorg/apache/http/conn/ClientConnectionOperator;

    if-eqz v7, :cond_1

    move-object v3, v7

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lorg/apache/http/conn/routing/HttpRoute;->getTargetHost()Lorg/apache/http/HttpHost;

    move-result-object v2

    move-object v3, v2

    :goto_1
    invoke-virtual {p1}, Lorg/apache/http/conn/routing/HttpRoute;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v4

    move-object v2, v0

    move-object v5, p2

    move-object v6, p3

    invoke-interface/range {v1 .. v6}, Lorg/apache/http/conn/ClientConnectionOperator;->openConnection(Lorg/apache/http/conn/OperatedClientConnection;Lorg/apache/http/HttpHost;Ljava/net/InetAddress;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/params/HttpParams;)V

    monitor-enter p0

    :try_start_1
    iget-object p1, p0, Lcom/sunia/HTREnginev2/d8j;->g:Lcom/sunia/HTREnginev2/j0i;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/sunia/HTREnginev2/d8j;->g:Lcom/sunia/HTREnginev2/j0i;

    invoke-virtual {p1}, Lcom/sunia/HTREnginev2/j0i;->c()Lorg/apache/http/conn/routing/RouteTracker;

    move-result-object p1

    if-nez v7, :cond_2

    invoke-interface {v0}, Lorg/apache/http/conn/OperatedClientConnection;->isSecure()Z

    move-result p2

    invoke-virtual {p1, p2}, Lorg/apache/http/conn/routing/RouteTracker;->connectTarget(Z)V

    goto :goto_2

    :cond_2
    invoke-interface {v0}, Lorg/apache/http/conn/OperatedClientConnection;->isSecure()Z

    move-result p2

    invoke-virtual {p1, v7, p2}, Lorg/apache/http/conn/routing/RouteTracker;->connectProxy(Lorg/apache/http/HttpHost;Z)V

    :goto_2
    monitor-exit p0

    return-void

    :cond_3
    new-instance p1, Ljava/io/InterruptedIOException;

    invoke-direct {p1}, Ljava/io/InterruptedIOException;-><init>()V

    throw p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_4
    :try_start_2
    new-instance p1, Lorg/apache/http/impl/conn/ConnectionShutdownException;

    invoke-direct {p1}, Lorg/apache/http/impl/conn/ConnectionShutdownException;-><init>()V

    throw p1

    :catchall_1
    move-exception p1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method public receiveResponseEntity(Lorg/apache/http/HttpResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/d8j;->j()Lorg/apache/http/conn/OperatedClientConnection;

    move-result-object p0

    invoke-interface {p0, p1}, Lorg/apache/http/HttpClientConnection;->receiveResponseEntity(Lorg/apache/http/HttpResponse;)V

    return-void
.end method

.method public receiveResponseHeader()Lorg/apache/http/HttpResponse;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/d8j;->j()Lorg/apache/http/conn/OperatedClientConnection;

    move-result-object p0

    invoke-interface {p0}, Lorg/apache/http/HttpClientConnection;->receiveResponseHeader()Lorg/apache/http/HttpResponse;

    move-result-object p0

    return-object p0
.end method

.method public releaseConnection()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sunia/HTREnginev2/d8j;->g:Lcom/sunia/HTREnginev2/j0i;

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sunia/HTREnginev2/d8j;->e:Lorg/apache/http/conn/ClientConnectionManager;

    iget-wide v1, p0, Lcom/sunia/HTREnginev2/d8j;->i:J

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, p0, v1, v2, v3}, Lorg/apache/http/conn/ClientConnectionManager;->releaseConnection(Lorg/apache/http/conn/ManagedClientConnection;JLjava/util/concurrent/TimeUnit;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sunia/HTREnginev2/d8j;->g:Lcom/sunia/HTREnginev2/j0i;

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public sendRequestEntity(Lorg/apache/http/HttpEntityEnclosingRequest;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/d8j;->j()Lorg/apache/http/conn/OperatedClientConnection;

    move-result-object p0

    invoke-interface {p0, p1}, Lorg/apache/http/HttpClientConnection;->sendRequestEntity(Lorg/apache/http/HttpEntityEnclosingRequest;)V

    return-void
.end method

.method public sendRequestHeader(Lorg/apache/http/HttpRequest;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/d8j;->j()Lorg/apache/http/conn/OperatedClientConnection;

    move-result-object p0

    invoke-interface {p0, p1}, Lorg/apache/http/HttpClientConnection;->sendRequestHeader(Lorg/apache/http/HttpRequest;)V

    return-void
.end method

.method public setIdleDuration(JLjava/util/concurrent/TimeUnit;)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/sunia/HTREnginev2/d8j;->i:J

    goto :goto_0

    :cond_0
    const-wide/16 p1, -0x1

    iput-wide p1, p0, Lcom/sunia/HTREnginev2/d8j;->i:J

    :goto_0
    return-void
.end method

.method public setSocketTimeout(I)V
    .locals 0

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/d8j;->j()Lorg/apache/http/conn/OperatedClientConnection;

    move-result-object p0

    invoke-interface {p0, p1}, Lorg/apache/http/HttpConnection;->setSocketTimeout(I)V

    return-void
.end method

.method public setState(Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/d8j;->w()Lcom/sunia/HTREnginev2/j0i;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/apache/http/pool/PoolEntry;->setState(Ljava/lang/Object;)V

    return-void
.end method

.method public shutdown()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Lcom/sunia/HTREnginev2/d8j;->g:Lcom/sunia/HTREnginev2/j0i;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lorg/apache/http/pool/PoolEntry;->getConnection()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/conn/OperatedClientConnection;

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/j0i;->c()Lorg/apache/http/conn/routing/RouteTracker;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/http/conn/routing/RouteTracker;->reset()V

    invoke-interface {v0}, Lorg/apache/http/HttpConnection;->shutdown()V

    :cond_0
    return-void
.end method

.method public tunnelProxy(Lorg/apache/http/HttpHost;ZLorg/apache/http/params/HttpParams;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "Next proxy"

    invoke-static {p1, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "HTTP parameters"

    invoke-static {p3, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sunia/HTREnginev2/d8j;->g:Lcom/sunia/HTREnginev2/j0i;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/d8j;->g:Lcom/sunia/HTREnginev2/j0i;

    invoke-virtual {v0}, Lcom/sunia/HTREnginev2/j0i;->c()Lorg/apache/http/conn/routing/RouteTracker;

    move-result-object v0

    const-string v1, "Route tracker"

    invoke-static {v0, v1}, Lorg/apache/http/util/Asserts;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/apache/http/conn/routing/RouteTracker;->isConnected()Z

    move-result v0

    const-string v1, "Connection not open"

    invoke-static {v0, v1}, Lorg/apache/http/util/Asserts;->check(ZLjava/lang/String;)V

    iget-object v0, p0, Lcom/sunia/HTREnginev2/d8j;->g:Lcom/sunia/HTREnginev2/j0i;

    invoke-virtual {v0}, Lorg/apache/http/pool/PoolEntry;->getConnection()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/conn/OperatedClientConnection;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1, p2, p3}, Lorg/apache/http/conn/OperatedClientConnection;->update(Ljava/net/Socket;Lorg/apache/http/HttpHost;ZLorg/apache/http/params/HttpParams;)V

    monitor-enter p0

    :try_start_1
    iget-object p3, p0, Lcom/sunia/HTREnginev2/d8j;->g:Lcom/sunia/HTREnginev2/j0i;

    if-eqz p3, :cond_0

    iget-object p3, p0, Lcom/sunia/HTREnginev2/d8j;->g:Lcom/sunia/HTREnginev2/j0i;

    invoke-virtual {p3}, Lcom/sunia/HTREnginev2/j0i;->c()Lorg/apache/http/conn/routing/RouteTracker;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Lorg/apache/http/conn/routing/RouteTracker;->tunnelProxy(Lorg/apache/http/HttpHost;Z)V

    monitor-exit p0

    return-void

    :cond_0
    new-instance p1, Ljava/io/InterruptedIOException;

    invoke-direct {p1}, Ljava/io/InterruptedIOException;-><init>()V

    throw p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_1
    :try_start_2
    new-instance p1, Lorg/apache/http/impl/conn/ConnectionShutdownException;

    invoke-direct {p1}, Lorg/apache/http/impl/conn/ConnectionShutdownException;-><init>()V

    throw p1

    :catchall_1
    move-exception p1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method public tunnelTarget(ZLorg/apache/http/params/HttpParams;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "HTTP parameters"

    invoke-static {p2, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sunia/HTREnginev2/d8j;->g:Lcom/sunia/HTREnginev2/j0i;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sunia/HTREnginev2/d8j;->g:Lcom/sunia/HTREnginev2/j0i;

    invoke-virtual {v0}, Lcom/sunia/HTREnginev2/j0i;->c()Lorg/apache/http/conn/routing/RouteTracker;

    move-result-object v0

    const-string v1, "Route tracker"

    invoke-static {v0, v1}, Lorg/apache/http/util/Asserts;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/apache/http/conn/routing/RouteTracker;->isConnected()Z

    move-result v1

    const-string v2, "Connection not open"

    invoke-static {v1, v2}, Lorg/apache/http/util/Asserts;->check(ZLjava/lang/String;)V

    invoke-virtual {v0}, Lorg/apache/http/conn/routing/RouteTracker;->isTunnelled()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "Connection is already tunnelled"

    invoke-static {v1, v2}, Lorg/apache/http/util/Asserts;->check(ZLjava/lang/String;)V

    invoke-virtual {v0}, Lorg/apache/http/conn/routing/RouteTracker;->getTargetHost()Lorg/apache/http/HttpHost;

    move-result-object v0

    iget-object v1, p0, Lcom/sunia/HTREnginev2/d8j;->g:Lcom/sunia/HTREnginev2/j0i;

    invoke-virtual {v1}, Lorg/apache/http/pool/PoolEntry;->getConnection()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/http/conn/OperatedClientConnection;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v2, 0x0

    invoke-interface {v1, v2, v0, p1, p2}, Lorg/apache/http/conn/OperatedClientConnection;->update(Ljava/net/Socket;Lorg/apache/http/HttpHost;ZLorg/apache/http/params/HttpParams;)V

    monitor-enter p0

    :try_start_1
    iget-object p2, p0, Lcom/sunia/HTREnginev2/d8j;->g:Lcom/sunia/HTREnginev2/j0i;

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/sunia/HTREnginev2/d8j;->g:Lcom/sunia/HTREnginev2/j0i;

    invoke-virtual {p2}, Lcom/sunia/HTREnginev2/j0i;->c()Lorg/apache/http/conn/routing/RouteTracker;

    move-result-object p2

    invoke-virtual {p2, p1}, Lorg/apache/http/conn/routing/RouteTracker;->tunnelTarget(Z)V

    monitor-exit p0

    return-void

    :cond_1
    new-instance p1, Ljava/io/InterruptedIOException;

    invoke-direct {p1}, Ljava/io/InterruptedIOException;-><init>()V

    throw p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_2
    :try_start_2
    new-instance p1, Lorg/apache/http/impl/conn/ConnectionShutdownException;

    invoke-direct {p1}, Lorg/apache/http/impl/conn/ConnectionShutdownException;-><init>()V

    throw p1

    :catchall_1
    move-exception p1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method public unmarkReusable()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sunia/HTREnginev2/d8j;->h:Z

    return-void
.end method

.method public final w()Lcom/sunia/HTREnginev2/j0i;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/d8j;->g:Lcom/sunia/HTREnginev2/j0i;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Lorg/apache/http/impl/conn/ConnectionShutdownException;

    invoke-direct {p0}, Lorg/apache/http/impl/conn/ConnectionShutdownException;-><init>()V

    throw p0
.end method
