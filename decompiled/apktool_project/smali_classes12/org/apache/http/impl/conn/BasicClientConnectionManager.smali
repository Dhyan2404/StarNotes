.class public Lorg/apache/http/impl/conn/BasicClientConnectionManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/http/conn/ClientConnectionManager;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation

.annotation build Lorg/apache/http/annotation/Contract;
    threading = .enum Lorg/apache/http/annotation/ThreadingBehavior;->SAFE:Lorg/apache/http/annotation/ThreadingBehavior;
.end annotation


# static fields
.field public static final MISUSE_MESSAGE:Ljava/lang/String; = "Invalid use of BasicClientConnManager: connection still allocated.\nMake sure to release the connection before allocating another one."

.field public static final k:Ljava/util/concurrent/atomic/AtomicLong;


# instance fields
.field public final e:Lorg/apache/commons/logging/Log;

.field public final f:Lorg/apache/http/conn/scheme/SchemeRegistry;

.field public final g:Lorg/apache/http/conn/ClientConnectionOperator;

.field public h:Lcom/sunia/HTREnginev2/j0i;

.field public i:Lcom/sunia/HTREnginev2/d8j;

.field public volatile j:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    sput-object v0, Lorg/apache/http/impl/conn/BasicClientConnectionManager;->k:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 6
    invoke-static {}, Lorg/apache/http/impl/conn/SchemeRegistryFactory;->createDefault()Lorg/apache/http/conn/scheme/SchemeRegistry;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/http/impl/conn/BasicClientConnectionManager;-><init>(Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/http/conn/scheme/SchemeRegistry;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/impl/conn/BasicClientConnectionManager;->e:Lorg/apache/commons/logging/Log;

    const-string v0, "Scheme registry"

    .line 3
    invoke-static {p1, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    iput-object p1, p0, Lorg/apache/http/impl/conn/BasicClientConnectionManager;->f:Lorg/apache/http/conn/scheme/SchemeRegistry;

    .line 5
    invoke-virtual {p0, p1}, Lorg/apache/http/impl/conn/BasicClientConnectionManager;->createConnectionOperator(Lorg/apache/http/conn/scheme/SchemeRegistry;)Lorg/apache/http/conn/ClientConnectionOperator;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/http/impl/conn/BasicClientConnectionManager;->g:Lorg/apache/http/conn/ClientConnectionOperator;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-boolean p0, p0, Lorg/apache/http/impl/conn/BasicClientConnectionManager;->j:Z

    xor-int/lit8 p0, p0, 0x1

    const-string v0, "Connection manager has been shut down"

    invoke-static {p0, v0}, Lorg/apache/http/util/Asserts;->check(ZLjava/lang/String;)V

    return-void
.end method

.method public b(Lorg/apache/http/conn/routing/HttpRoute;Ljava/lang/Object;)Lorg/apache/http/conn/ManagedClientConnection;
    .locals 10

    const-string p2, "Route"

    invoke-static {p1, p2}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/http/impl/conn/BasicClientConnectionManager;->a()V

    iget-object p2, p0, Lorg/apache/http/impl/conn/BasicClientConnectionManager;->e:Lorg/apache/commons/logging/Log;

    invoke-interface {p2}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lorg/apache/http/impl/conn/BasicClientConnectionManager;->e:Lorg/apache/commons/logging/Log;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Get connection for route "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    :cond_0
    iget-object p2, p0, Lorg/apache/http/impl/conn/BasicClientConnectionManager;->i:Lcom/sunia/HTREnginev2/d8j;

    if-nez p2, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    const-string v0, "Invalid use of BasicClientConnManager: connection still allocated.\nMake sure to release the connection before allocating another one."

    invoke-static {p2, v0}, Lorg/apache/http/util/Asserts;->check(ZLjava/lang/String;)V

    iget-object p2, p0, Lorg/apache/http/impl/conn/BasicClientConnectionManager;->h:Lcom/sunia/HTREnginev2/j0i;

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lcom/sunia/HTREnginev2/j0i;->b()Lorg/apache/http/conn/routing/HttpRoute;

    move-result-object p2

    invoke-virtual {p2, p1}, Lorg/apache/http/conn/routing/HttpRoute;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    iget-object p2, p0, Lorg/apache/http/impl/conn/BasicClientConnectionManager;->h:Lcom/sunia/HTREnginev2/j0i;

    invoke-virtual {p2}, Lcom/sunia/HTREnginev2/j0i;->close()V

    const/4 p2, 0x0

    iput-object p2, p0, Lorg/apache/http/impl/conn/BasicClientConnectionManager;->h:Lcom/sunia/HTREnginev2/j0i;

    :cond_2
    iget-object p2, p0, Lorg/apache/http/impl/conn/BasicClientConnectionManager;->h:Lcom/sunia/HTREnginev2/j0i;

    if-nez p2, :cond_3

    sget-object p2, Lorg/apache/http/impl/conn/BasicClientConnectionManager;->k:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    iget-object p2, p0, Lorg/apache/http/impl/conn/BasicClientConnectionManager;->g:Lorg/apache/http/conn/ClientConnectionOperator;

    invoke-interface {p2}, Lorg/apache/http/conn/ClientConnectionOperator;->createConnection()Lorg/apache/http/conn/OperatedClientConnection;

    move-result-object v6

    new-instance p2, Lcom/sunia/HTREnginev2/j0i;

    iget-object v3, p0, Lorg/apache/http/impl/conn/BasicClientConnectionManager;->e:Lorg/apache/commons/logging/Log;

    const-wide/16 v7, 0x0

    sget-object v9, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-object v2, p2

    move-object v5, p1

    invoke-direct/range {v2 .. v9}, Lcom/sunia/HTREnginev2/j0i;-><init>(Lorg/apache/commons/logging/Log;Ljava/lang/String;Lorg/apache/http/conn/routing/HttpRoute;Lorg/apache/http/conn/OperatedClientConnection;JLjava/util/concurrent/TimeUnit;)V

    iput-object p2, p0, Lorg/apache/http/impl/conn/BasicClientConnectionManager;->h:Lcom/sunia/HTREnginev2/j0i;

    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iget-object v0, p0, Lorg/apache/http/impl/conn/BasicClientConnectionManager;->h:Lcom/sunia/HTREnginev2/j0i;

    invoke-virtual {v0, p1, p2}, Lcom/sunia/HTREnginev2/j0i;->isExpired(J)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lorg/apache/http/impl/conn/BasicClientConnectionManager;->h:Lcom/sunia/HTREnginev2/j0i;

    invoke-virtual {p1}, Lcom/sunia/HTREnginev2/j0i;->close()V

    iget-object p1, p0, Lorg/apache/http/impl/conn/BasicClientConnectionManager;->h:Lcom/sunia/HTREnginev2/j0i;

    invoke-virtual {p1}, Lcom/sunia/HTREnginev2/j0i;->c()Lorg/apache/http/conn/routing/RouteTracker;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/http/conn/routing/RouteTracker;->reset()V

    :cond_4
    new-instance p1, Lcom/sunia/HTREnginev2/d8j;

    iget-object p2, p0, Lorg/apache/http/impl/conn/BasicClientConnectionManager;->g:Lorg/apache/http/conn/ClientConnectionOperator;

    iget-object v0, p0, Lorg/apache/http/impl/conn/BasicClientConnectionManager;->h:Lcom/sunia/HTREnginev2/j0i;

    invoke-direct {p1, p0, p2, v0}, Lcom/sunia/HTREnginev2/d8j;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/conn/ClientConnectionOperator;Lcom/sunia/HTREnginev2/j0i;)V

    iput-object p1, p0, Lorg/apache/http/impl/conn/BasicClientConnectionManager;->i:Lcom/sunia/HTREnginev2/d8j;

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final c(Lorg/apache/http/HttpClientConnection;)V
    .locals 1

    :try_start_0
    invoke-interface {p1}, Lorg/apache/http/HttpConnection;->shutdown()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    iget-object v0, p0, Lorg/apache/http/impl/conn/BasicClientConnectionManager;->e:Lorg/apache/commons/logging/Log;

    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/apache/http/impl/conn/BasicClientConnectionManager;->e:Lorg/apache/commons/logging/Log;

    const-string v0, "I/O exception shutting down connection"

    invoke-interface {p0, v0, p1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public closeExpiredConnections()V
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/http/impl/conn/BasicClientConnectionManager;->a()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lorg/apache/http/impl/conn/BasicClientConnectionManager;->h:Lcom/sunia/HTREnginev2/j0i;

    if-eqz v2, :cond_0

    invoke-virtual {v2, v0, v1}, Lcom/sunia/HTREnginev2/j0i;->isExpired(J)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/http/impl/conn/BasicClientConnectionManager;->h:Lcom/sunia/HTREnginev2/j0i;

    invoke-virtual {v0}, Lcom/sunia/HTREnginev2/j0i;->close()V

    iget-object v0, p0, Lorg/apache/http/impl/conn/BasicClientConnectionManager;->h:Lcom/sunia/HTREnginev2/j0i;

    invoke-virtual {v0}, Lcom/sunia/HTREnginev2/j0i;->c()Lorg/apache/http/conn/routing/RouteTracker;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/http/conn/routing/RouteTracker;->reset()V

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public closeIdleConnections(JLjava/util/concurrent/TimeUnit;)V
    .locals 2

    const-string v0, "Time unit"

    invoke-static {p3, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/http/impl/conn/BasicClientConnectionManager;->a()V

    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p1

    const-wide/16 v0, 0x0

    cmp-long p3, p1, v0

    if-gez p3, :cond_0

    move-wide p1, v0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p1

    iget-object p1, p0, Lorg/apache/http/impl/conn/BasicClientConnectionManager;->h:Lcom/sunia/HTREnginev2/j0i;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lorg/apache/http/pool/PoolEntry;->getUpdated()J

    move-result-wide p1

    cmp-long p1, p1, v0

    if-gtz p1, :cond_1

    iget-object p1, p0, Lorg/apache/http/impl/conn/BasicClientConnectionManager;->h:Lcom/sunia/HTREnginev2/j0i;

    invoke-virtual {p1}, Lcom/sunia/HTREnginev2/j0i;->close()V

    iget-object p1, p0, Lorg/apache/http/impl/conn/BasicClientConnectionManager;->h:Lcom/sunia/HTREnginev2/j0i;

    invoke-virtual {p1}, Lcom/sunia/HTREnginev2/j0i;->c()Lorg/apache/http/conn/routing/RouteTracker;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/http/conn/routing/RouteTracker;->reset()V

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public createConnectionOperator(Lorg/apache/http/conn/scheme/SchemeRegistry;)Lorg/apache/http/conn/ClientConnectionOperator;
    .locals 0

    new-instance p0, Lorg/apache/http/impl/conn/DefaultClientConnectionOperator;

    invoke-direct {p0, p1}, Lorg/apache/http/impl/conn/DefaultClientConnectionOperator;-><init>(Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    return-object p0
.end method

.method public finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/http/impl/conn/BasicClientConnectionManager;->shutdown()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getSchemeRegistry()Lorg/apache/http/conn/scheme/SchemeRegistry;
    .locals 0

    iget-object p0, p0, Lorg/apache/http/impl/conn/BasicClientConnectionManager;->f:Lorg/apache/http/conn/scheme/SchemeRegistry;

    return-object p0
.end method

.method public releaseConnection(Lorg/apache/http/conn/ManagedClientConnection;JLjava/util/concurrent/TimeUnit;)V
    .locals 4

    instance-of v0, p1, Lcom/sunia/HTREnginev2/d8j;

    const-string v1, "Connection class mismatch, connection not obtained from this manager"

    invoke-static {v0, v1}, Lorg/apache/http/util/Args;->check(ZLjava/lang/String;)V

    move-object v0, p1

    check-cast v0, Lcom/sunia/HTREnginev2/d8j;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/apache/http/impl/conn/BasicClientConnectionManager;->e:Lorg/apache/commons/logging/Log;

    invoke-interface {v1}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/apache/http/impl/conn/BasicClientConnectionManager;->e:Lorg/apache/commons/logging/Log;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Releasing connection "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {v0}, Lcom/sunia/HTREnginev2/d8j;->e0()Lcom/sunia/HTREnginev2/j0i;

    move-result-object p1

    if-nez p1, :cond_1

    monitor-exit v0

    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/sunia/HTREnginev2/d8j;->M()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object p1

    if-ne p1, p0, :cond_2

    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    const-string v1, "Connection not obtained from this manager"

    invoke-static {p1, v1}, Lorg/apache/http/util/Asserts;->check(ZLjava/lang/String;)V

    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    iget-boolean p1, p0, Lorg/apache/http/impl/conn/BasicClientConnectionManager;->j:Z

    if-eqz p1, :cond_3

    invoke-virtual {p0, v0}, Lorg/apache/http/impl/conn/BasicClientConnectionManager;->c(Lorg/apache/http/HttpClientConnection;)V

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    return-void

    :cond_3
    const/4 p1, 0x0

    :try_start_3
    invoke-virtual {v0}, Lcom/sunia/HTREnginev2/d8j;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/sunia/HTREnginev2/d8j;->isMarkedReusable()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {p0, v0}, Lorg/apache/http/impl/conn/BasicClientConnectionManager;->c(Lorg/apache/http/HttpClientConnection;)V

    :cond_4
    invoke-virtual {v0}, Lcom/sunia/HTREnginev2/d8j;->isMarkedReusable()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lorg/apache/http/impl/conn/BasicClientConnectionManager;->h:Lcom/sunia/HTREnginev2/j0i;

    if-eqz p4, :cond_5

    move-object v2, p4

    goto :goto_1

    :cond_5
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    :goto_1
    invoke-virtual {v1, p2, p3, v2}, Lorg/apache/http/pool/PoolEntry;->updateExpiry(JLjava/util/concurrent/TimeUnit;)V

    iget-object v1, p0, Lorg/apache/http/impl/conn/BasicClientConnectionManager;->e:Lorg/apache/commons/logging/Log;

    invoke-interface {v1}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_7

    const-wide/16 v1, 0x0

    cmp-long v1, p2, v1

    if-lez v1, :cond_6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, " "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_2

    :cond_6
    const-string p2, "indefinitely"

    :goto_2
    iget-object p3, p0, Lorg/apache/http/impl/conn/BasicClientConnectionManager;->e:Lorg/apache/commons/logging/Log;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Connection can be kept alive "

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p3, p2}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_7
    :try_start_4
    invoke-virtual {v0}, Lcom/sunia/HTREnginev2/d8j;->f()Lcom/sunia/HTREnginev2/j0i;

    iput-object p1, p0, Lorg/apache/http/impl/conn/BasicClientConnectionManager;->i:Lcom/sunia/HTREnginev2/d8j;

    iget-object p2, p0, Lorg/apache/http/impl/conn/BasicClientConnectionManager;->h:Lcom/sunia/HTREnginev2/j0i;

    invoke-virtual {p2}, Lcom/sunia/HTREnginev2/j0i;->isClosed()Z

    move-result p2

    if-eqz p2, :cond_8

    iput-object p1, p0, Lorg/apache/http/impl/conn/BasicClientConnectionManager;->h:Lcom/sunia/HTREnginev2/j0i;

    :cond_8
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    return-void

    :catchall_0
    move-exception p2

    :try_start_6
    invoke-virtual {v0}, Lcom/sunia/HTREnginev2/d8j;->f()Lcom/sunia/HTREnginev2/j0i;

    iput-object p1, p0, Lorg/apache/http/impl/conn/BasicClientConnectionManager;->i:Lcom/sunia/HTREnginev2/d8j;

    iget-object p3, p0, Lorg/apache/http/impl/conn/BasicClientConnectionManager;->h:Lcom/sunia/HTREnginev2/j0i;

    invoke-virtual {p3}, Lcom/sunia/HTREnginev2/j0i;->isClosed()Z

    move-result p3

    if-eqz p3, :cond_9

    iput-object p1, p0, Lorg/apache/http/impl/conn/BasicClientConnectionManager;->h:Lcom/sunia/HTREnginev2/j0i;

    :cond_9
    throw p2

    :catchall_1
    move-exception p1

    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw p1

    :catchall_2
    move-exception p0

    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    throw p0
.end method

.method public final requestConnection(Lorg/apache/http/conn/routing/HttpRoute;Ljava/lang/Object;)Lorg/apache/http/conn/ClientConnectionRequest;
    .locals 1

    new-instance v0, Lorg/apache/http/impl/conn/BasicClientConnectionManager$a;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/http/impl/conn/BasicClientConnectionManager$a;-><init>(Lorg/apache/http/impl/conn/BasicClientConnectionManager;Lorg/apache/http/conn/routing/HttpRoute;Ljava/lang/Object;)V

    return-object v0
.end method

.method public shutdown()V
    .locals 2

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lorg/apache/http/impl/conn/BasicClientConnectionManager;->j:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lorg/apache/http/impl/conn/BasicClientConnectionManager;->h:Lcom/sunia/HTREnginev2/j0i;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/sunia/HTREnginev2/j0i;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :try_start_2
    iput-object v0, p0, Lorg/apache/http/impl/conn/BasicClientConnectionManager;->h:Lcom/sunia/HTREnginev2/j0i;

    iput-object v0, p0, Lorg/apache/http/impl/conn/BasicClientConnectionManager;->i:Lcom/sunia/HTREnginev2/d8j;

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    iput-object v0, p0, Lorg/apache/http/impl/conn/BasicClientConnectionManager;->h:Lcom/sunia/HTREnginev2/j0i;

    iput-object v0, p0, Lorg/apache/http/impl/conn/BasicClientConnectionManager;->i:Lcom/sunia/HTREnginev2/d8j;

    throw v1

    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method
