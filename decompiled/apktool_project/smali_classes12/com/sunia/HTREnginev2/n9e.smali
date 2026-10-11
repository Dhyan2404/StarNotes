.class public Lcom/sunia/HTREnginev2/n9e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/http/conn/ConnectionReleaseTrigger;
.implements Lorg/apache/http/concurrent/Cancellable;
.implements Ljava/io/Closeable;


# annotations
.annotation build Lorg/apache/http/annotation/Contract;
    threading = .enum Lorg/apache/http/annotation/ThreadingBehavior;->SAFE:Lorg/apache/http/annotation/ThreadingBehavior;
.end annotation


# instance fields
.field public final e:Lorg/apache/commons/logging/Log;

.field public final f:Lorg/apache/http/conn/HttpClientConnectionManager;

.field public final g:Lorg/apache/http/HttpClientConnection;

.field public final h:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public volatile i:Z

.field public volatile j:Ljava/lang/Object;

.field public volatile k:J

.field public volatile l:Ljava/util/concurrent/TimeUnit;


# direct methods
.method public constructor <init>(Lorg/apache/commons/logging/Log;Lorg/apache/http/conn/HttpClientConnectionManager;Lorg/apache/http/HttpClientConnection;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/n9e;->e:Lorg/apache/commons/logging/Log;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/n9e;->f:Lorg/apache/http/conn/HttpClientConnectionManager;

    iput-object p3, p0, Lcom/sunia/HTREnginev2/n9e;->g:Lorg/apache/http/HttpClientConnection;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/n9e;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method


# virtual methods
.method public final H(Z)V
    .locals 8

    iget-object v0, p0, Lcom/sunia/HTREnginev2/n9e;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sunia/HTREnginev2/n9e;->g:Lorg/apache/http/HttpClientConnection;

    monitor-enter v0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/sunia/HTREnginev2/n9e;->f:Lorg/apache/http/conn/HttpClientConnectionManager;

    iget-object v2, p0, Lcom/sunia/HTREnginev2/n9e;->g:Lorg/apache/http/HttpClientConnection;

    iget-object v3, p0, Lcom/sunia/HTREnginev2/n9e;->j:Ljava/lang/Object;

    iget-wide v4, p0, Lcom/sunia/HTREnginev2/n9e;->k:J

    iget-object v6, p0, Lcom/sunia/HTREnginev2/n9e;->l:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v1 .. v6}, Lorg/apache/http/conn/HttpClientConnectionManager;->releaseConnection(Lorg/apache/http/HttpClientConnection;Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    :try_start_1
    iget-object p1, p0, Lcom/sunia/HTREnginev2/n9e;->g:Lorg/apache/http/HttpClientConnection;

    invoke-interface {p1}, Lorg/apache/http/HttpConnection;->close()V

    iget-object p1, p0, Lcom/sunia/HTREnginev2/n9e;->e:Lorg/apache/commons/logging/Log;

    const-string v1, "Connection discarded"

    invoke-interface {p1, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v2, p0, Lcom/sunia/HTREnginev2/n9e;->f:Lorg/apache/http/conn/HttpClientConnectionManager;

    iget-object v3, p0, Lcom/sunia/HTREnginev2/n9e;->g:Lorg/apache/http/HttpClientConnection;

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v2 .. v7}, Lorg/apache/http/conn/HttpClientConnectionManager;->releaseConnection(Lorg/apache/http/HttpClientConnection;Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_1
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_3
    iget-object v1, p0, Lcom/sunia/HTREnginev2/n9e;->e:Lorg/apache/commons/logging/Log;

    invoke-interface {v1}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sunia/HTREnginev2/n9e;->e:Lorg/apache/commons/logging/Log;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_1
    :try_start_4
    iget-object v1, p0, Lcom/sunia/HTREnginev2/n9e;->f:Lorg/apache/http/conn/HttpClientConnectionManager;

    iget-object v2, p0, Lcom/sunia/HTREnginev2/n9e;->g:Lorg/apache/http/HttpClientConnection;

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v1 .. v6}, Lorg/apache/http/conn/HttpClientConnectionManager;->releaseConnection(Lorg/apache/http/HttpClientConnection;Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)V

    :goto_0
    monitor-exit v0

    goto :goto_3

    :goto_1
    iget-object v1, p0, Lcom/sunia/HTREnginev2/n9e;->f:Lorg/apache/http/conn/HttpClientConnectionManager;

    iget-object v2, p0, Lcom/sunia/HTREnginev2/n9e;->g:Lorg/apache/http/HttpClientConnection;

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v1 .. v6}, Lorg/apache/http/conn/HttpClientConnectionManager;->releaseConnection(Lorg/apache/http/HttpClientConnection;Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)V

    throw p1

    :goto_2
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p0

    :cond_2
    :goto_3
    return-void
.end method

.method public I(JLjava/util/concurrent/TimeUnit;)V
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/n9e;->g:Lorg/apache/http/HttpClientConnection;

    monitor-enter v0

    :try_start_0
    iput-wide p1, p0, Lcom/sunia/HTREnginev2/n9e;->k:J

    iput-object p3, p0, Lcom/sunia/HTREnginev2/n9e;->l:Ljava/util/concurrent/TimeUnit;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public abortConnection()V
    .locals 9

    iget-object v0, p0, Lcom/sunia/HTREnginev2/n9e;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/n9e;->g:Lorg/apache/http/HttpClientConnection;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/sunia/HTREnginev2/n9e;->g:Lorg/apache/http/HttpClientConnection;

    invoke-interface {v1}, Lorg/apache/http/HttpConnection;->shutdown()V

    iget-object v1, p0, Lcom/sunia/HTREnginev2/n9e;->e:Lorg/apache/commons/logging/Log;

    const-string v2, "Connection discarded"

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v3, p0, Lcom/sunia/HTREnginev2/n9e;->f:Lorg/apache/http/conn/HttpClientConnectionManager;

    iget-object v4, p0, Lcom/sunia/HTREnginev2/n9e;->g:Lorg/apache/http/HttpClientConnection;

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v3 .. v8}, Lorg/apache/http/conn/HttpClientConnectionManager;->releaseConnection(Lorg/apache/http/HttpClientConnection;Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_2
    iget-object v2, p0, Lcom/sunia/HTREnginev2/n9e;->e:Lorg/apache/commons/logging/Log;

    invoke-interface {v2}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sunia/HTREnginev2/n9e;->e:Lorg/apache/commons/logging/Log;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_0
    :try_start_3
    iget-object v2, p0, Lcom/sunia/HTREnginev2/n9e;->f:Lorg/apache/http/conn/HttpClientConnectionManager;

    iget-object v3, p0, Lcom/sunia/HTREnginev2/n9e;->g:Lorg/apache/http/HttpClientConnection;

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v2 .. v7}, Lorg/apache/http/conn/HttpClientConnectionManager;->releaseConnection(Lorg/apache/http/HttpClientConnection;Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)V

    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    iget-object v2, p0, Lcom/sunia/HTREnginev2/n9e;->f:Lorg/apache/http/conn/HttpClientConnectionManager;

    iget-object v3, p0, Lcom/sunia/HTREnginev2/n9e;->g:Lorg/apache/http/HttpClientConnection;

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v2 .. v7}, Lorg/apache/http/conn/HttpClientConnectionManager;->releaseConnection(Lorg/apache/http/HttpClientConnection;Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)V

    throw v1

    :catchall_1
    move-exception p0

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0

    :cond_1
    :goto_2
    return-void
.end method

.method public cancel()Z
    .locals 3

    iget-object v0, p0, Lcom/sunia/HTREnginev2/n9e;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    iget-object v1, p0, Lcom/sunia/HTREnginev2/n9e;->e:Lorg/apache/commons/logging/Log;

    const-string v2, "Cancelling request execution"

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/n9e;->abortConnection()V

    xor-int/lit8 p0, v0, 0x1

    return p0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sunia/HTREnginev2/n9e;->H(Z)V

    return-void
.end method

.method public f()Z
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/n9e;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    return p0
.end method

.method public j()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sunia/HTREnginev2/n9e;->i:Z

    return p0
.end method

.method public markReusable()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sunia/HTREnginev2/n9e;->i:Z

    return-void
.end method

.method public releaseConnection()V
    .locals 1

    iget-boolean v0, p0, Lcom/sunia/HTREnginev2/n9e;->i:Z

    invoke-virtual {p0, v0}, Lcom/sunia/HTREnginev2/n9e;->H(Z)V

    return-void
.end method

.method public setState(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/sunia/HTREnginev2/n9e;->j:Ljava/lang/Object;

    return-void
.end method

.method public w()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sunia/HTREnginev2/n9e;->i:Z

    return-void
.end method
