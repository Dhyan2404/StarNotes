.class public Lorg/mortbay/jetty/nio/SelectChannelConnector$RetryContinuation;
.super Lorg/mortbay/thread/Timeout$Task;
.source "SourceFile"

# interfaces
.implements Lorg/mortbay/util/ajax/Continuation;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mortbay/jetty/nio/SelectChannelConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RetryContinuation"
.end annotation


# instance fields
.field public k:Lorg/mortbay/io/nio/SelectChannelEndPoint;

.field public l:Z

.field public m:Ljava/lang/Object;

.field public n:Z

.field public o:Z

.field public p:Z

.field public q:Lorg/mortbay/jetty/RetryRequest;

.field public r:J


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/mortbay/thread/Timeout$Task;-><init>()V

    invoke-static {}, Lorg/mortbay/jetty/HttpConnection;->getCurrentConnection()Lorg/mortbay/jetty/HttpConnection;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mortbay/jetty/HttpConnection;->getEndPoint()Lorg/mortbay/io/EndPoint;

    move-result-object v0

    check-cast v0, Lorg/mortbay/io/nio/SelectChannelEndPoint;

    iput-object v0, p0, Lorg/mortbay/jetty/nio/SelectChannelConnector$RetryContinuation;->k:Lorg/mortbay/io/nio/SelectChannelEndPoint;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/mortbay/jetty/nio/SelectChannelConnector$RetryContinuation;->l:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/mortbay/jetty/nio/SelectChannelConnector$RetryContinuation;->n:Z

    iput-boolean v0, p0, Lorg/mortbay/jetty/nio/SelectChannelConnector$RetryContinuation;->o:Z

    iput-boolean v0, p0, Lorg/mortbay/jetty/nio/SelectChannelConnector$RetryContinuation;->p:Z

    return-void
.end method


# virtual methods
.method public expire()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lorg/mortbay/jetty/nio/SelectChannelConnector$RetryContinuation;->p:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/mortbay/jetty/nio/SelectChannelConnector$RetryContinuation;->n:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/mortbay/jetty/nio/SelectChannelConnector$RetryContinuation;->o:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v1, p0, Lorg/mortbay/jetty/nio/SelectChannelConnector$RetryContinuation;->p:Z

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/mortbay/jetty/nio/SelectChannelConnector$RetryContinuation;->k:Lorg/mortbay/io/nio/SelectChannelEndPoint;

    invoke-virtual {v0}, Lorg/mortbay/io/nio/SelectChannelEndPoint;->scheduleIdle()V

    iget-object v0, p0, Lorg/mortbay/jetty/nio/SelectChannelConnector$RetryContinuation;->k:Lorg/mortbay/io/nio/SelectChannelEndPoint;

    invoke-virtual {v0}, Lorg/mortbay/io/nio/SelectChannelEndPoint;->getSelectSet()Lorg/mortbay/io/nio/SelectorManager$SelectSet;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->addChange(Ljava/lang/Object;)V

    iget-object p0, p0, Lorg/mortbay/jetty/nio/SelectChannelConnector$RetryContinuation;->k:Lorg/mortbay/io/nio/SelectChannelEndPoint;

    invoke-virtual {p0}, Lorg/mortbay/io/nio/SelectChannelEndPoint;->getSelectSet()Lorg/mortbay/io/nio/SelectorManager$SelectSet;

    move-result-object p0

    invoke-virtual {p0}, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->wakeup()V

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getObject()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/jetty/nio/SelectChannelConnector$RetryContinuation;->m:Ljava/lang/Object;

    return-object p0
.end method

.method public getTimeout()J
    .locals 2

    iget-wide v0, p0, Lorg/mortbay/jetty/nio/SelectChannelConnector$RetryContinuation;->r:J

    return-wide v0
.end method

.method public isNew()Z
    .locals 0

    iget-boolean p0, p0, Lorg/mortbay/jetty/nio/SelectChannelConnector$RetryContinuation;->l:Z

    return p0
.end method

.method public isPending()Z
    .locals 0

    iget-boolean p0, p0, Lorg/mortbay/jetty/nio/SelectChannelConnector$RetryContinuation;->n:Z

    return p0
.end method

.method public isResumed()Z
    .locals 0

    iget-boolean p0, p0, Lorg/mortbay/jetty/nio/SelectChannelConnector$RetryContinuation;->o:Z

    return p0
.end method

.method public reset()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lorg/mortbay/jetty/nio/SelectChannelConnector$RetryContinuation;->o:Z

    iput-boolean v0, p0, Lorg/mortbay/jetty/nio/SelectChannelConnector$RetryContinuation;->n:Z

    iput-boolean v0, p0, Lorg/mortbay/jetty/nio/SelectChannelConnector$RetryContinuation;->p:Z

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v0, p0, Lorg/mortbay/jetty/nio/SelectChannelConnector$RetryContinuation;->k:Lorg/mortbay/io/nio/SelectChannelEndPoint;

    invoke-virtual {v0}, Lorg/mortbay/io/nio/SelectChannelEndPoint;->getSelectSet()Lorg/mortbay/io/nio/SelectorManager$SelectSet;

    move-result-object v0

    monitor-enter v0

    :try_start_1
    invoke-virtual {p0}, Lorg/mortbay/thread/Timeout$Task;->cancel()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method public resume()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lorg/mortbay/jetty/nio/SelectChannelConnector$RetryContinuation;->n:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/mortbay/thread/Timeout$Task;->isExpired()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/mortbay/jetty/nio/SelectChannelConnector$RetryContinuation;->o:Z

    iget-boolean v0, p0, Lorg/mortbay/jetty/nio/SelectChannelConnector$RetryContinuation;->p:Z

    iput-boolean v1, p0, Lorg/mortbay/jetty/nio/SelectChannelConnector$RetryContinuation;->p:Z

    move v1, v0

    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lorg/mortbay/jetty/nio/SelectChannelConnector$RetryContinuation;->k:Lorg/mortbay/io/nio/SelectChannelEndPoint;

    invoke-virtual {v0}, Lorg/mortbay/io/nio/SelectChannelEndPoint;->getSelectSet()Lorg/mortbay/io/nio/SelectorManager$SelectSet;

    move-result-object v0

    monitor-enter v0

    :try_start_1
    invoke-virtual {p0}, Lorg/mortbay/thread/Timeout$Task;->cancel()V

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v1, p0, Lorg/mortbay/jetty/nio/SelectChannelConnector$RetryContinuation;->k:Lorg/mortbay/io/nio/SelectChannelEndPoint;

    invoke-virtual {v1}, Lorg/mortbay/io/nio/SelectChannelEndPoint;->scheduleIdle()V

    invoke-virtual {v0, p0}, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->addChange(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->wakeup()V

    goto :goto_0

    :catchall_0
    move-exception p0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :cond_1
    :goto_0
    return-void

    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method public run()V
    .locals 0

    iget-object p0, p0, Lorg/mortbay/jetty/nio/SelectChannelConnector$RetryContinuation;->k:Lorg/mortbay/io/nio/SelectChannelEndPoint;

    invoke-virtual {p0}, Lorg/mortbay/io/nio/SelectChannelEndPoint;->run()V

    return-void
.end method

.method public setObject(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lorg/mortbay/jetty/nio/SelectChannelConnector$RetryContinuation;->m:Ljava/lang/Object;

    return-void
.end method

.method public suspend(J)Z
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lorg/mortbay/jetty/nio/SelectChannelConnector$RetryContinuation;->o:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/mortbay/jetty/nio/SelectChannelConnector$RetryContinuation;->o:Z

    iput-boolean v1, p0, Lorg/mortbay/jetty/nio/SelectChannelConnector$RetryContinuation;->l:Z

    iget-boolean v2, p0, Lorg/mortbay/jetty/nio/SelectChannelConnector$RetryContinuation;->n:Z

    if-nez v2, :cond_1

    if-nez v0, :cond_1

    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-ltz v2, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/mortbay/jetty/nio/SelectChannelConnector$RetryContinuation;->n:Z

    iput-boolean v1, p0, Lorg/mortbay/jetty/nio/SelectChannelConnector$RetryContinuation;->p:Z

    iput-wide p1, p0, Lorg/mortbay/jetty/nio/SelectChannelConnector$RetryContinuation;->r:J

    iget-object p1, p0, Lorg/mortbay/jetty/nio/SelectChannelConnector$RetryContinuation;->q:Lorg/mortbay/jetty/RetryRequest;

    if-nez p1, :cond_0

    new-instance p1, Lorg/mortbay/jetty/RetryRequest;

    invoke-direct {p1}, Lorg/mortbay/jetty/RetryRequest;-><init>()V

    iput-object p1, p0, Lorg/mortbay/jetty/nio/SelectChannelConnector$RetryContinuation;->q:Lorg/mortbay/jetty/RetryRequest;

    :cond_0
    iget-object p1, p0, Lorg/mortbay/jetty/nio/SelectChannelConnector$RetryContinuation;->q:Lorg/mortbay/jetty/RetryRequest;

    throw p1

    :cond_1
    iput-boolean v1, p0, Lorg/mortbay/jetty/nio/SelectChannelConnector$RetryContinuation;->o:Z

    iput-boolean v1, p0, Lorg/mortbay/jetty/nio/SelectChannelConnector$RetryContinuation;->n:Z

    iput-boolean v1, p0, Lorg/mortbay/jetty/nio/SelectChannelConnector$RetryContinuation;->p:Z

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object p1, p0, Lorg/mortbay/jetty/nio/SelectChannelConnector$RetryContinuation;->k:Lorg/mortbay/io/nio/SelectChannelEndPoint;

    invoke-virtual {p1}, Lorg/mortbay/io/nio/SelectChannelEndPoint;->getSelectSet()Lorg/mortbay/io/nio/SelectorManager$SelectSet;

    move-result-object p1

    monitor-enter p1

    :try_start_1
    invoke-virtual {p0}, Lorg/mortbay/thread/Timeout$Task;->cancel()V

    monitor-exit p1

    return v0

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :catchall_1
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "RetryContinuation@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    iget-boolean v1, p0, Lorg/mortbay/jetty/nio/SelectChannelConnector$RetryContinuation;->l:Z

    if-eqz v1, :cond_0

    const-string v1, ",new"

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-boolean v1, p0, Lorg/mortbay/jetty/nio/SelectChannelConnector$RetryContinuation;->n:Z

    if-eqz v1, :cond_1

    const-string v1, ",pending"

    goto :goto_1

    :cond_1
    const-string v1, ""

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-boolean v1, p0, Lorg/mortbay/jetty/nio/SelectChannelConnector$RetryContinuation;->o:Z

    if-eqz v1, :cond_2

    const-string v1, ",resumed"

    goto :goto_2

    :cond_2
    const-string v1, ""

    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/mortbay/thread/Timeout$Task;->isExpired()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, ",expired"

    goto :goto_3

    :cond_3
    const-string v1, ""

    :goto_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-boolean v1, p0, Lorg/mortbay/jetty/nio/SelectChannelConnector$RetryContinuation;->p:Z

    if-eqz v1, :cond_4

    const-string v1, ",parked"

    goto :goto_4

    :cond_4
    const-string v1, ""

    :goto_4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public undispatch()Z
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lorg/mortbay/jetty/nio/SelectChannelConnector$RetryContinuation;->n:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    monitor-exit p0

    return v1

    :cond_0
    invoke-virtual {p0}, Lorg/mortbay/thread/Timeout$Task;->isExpired()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lorg/mortbay/jetty/nio/SelectChannelConnector$RetryContinuation;->o:Z

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    :goto_0
    move v0, v1

    :goto_1
    if-nez v0, :cond_3

    goto :goto_2

    :cond_3
    move v1, v2

    :goto_2
    iput-boolean v1, p0, Lorg/mortbay/jetty/nio/SelectChannelConnector$RetryContinuation;->p:Z

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/mortbay/jetty/nio/SelectChannelConnector$RetryContinuation;->k:Lorg/mortbay/io/nio/SelectChannelEndPoint;

    invoke-virtual {v0}, Lorg/mortbay/io/nio/SelectChannelEndPoint;->scheduleIdle()V

    iget-object v0, p0, Lorg/mortbay/jetty/nio/SelectChannelConnector$RetryContinuation;->k:Lorg/mortbay/io/nio/SelectChannelEndPoint;

    invoke-virtual {v0}, Lorg/mortbay/io/nio/SelectChannelEndPoint;->getSelectSet()Lorg/mortbay/io/nio/SelectorManager$SelectSet;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->addChange(Ljava/lang/Object;)V

    goto :goto_3

    :cond_4
    iget-wide v0, p0, Lorg/mortbay/jetty/nio/SelectChannelConnector$RetryContinuation;->r:J

    const-wide/16 v3, 0x0

    cmp-long v0, v0, v3

    if-lez v0, :cond_5

    iget-object v0, p0, Lorg/mortbay/jetty/nio/SelectChannelConnector$RetryContinuation;->k:Lorg/mortbay/io/nio/SelectChannelEndPoint;

    invoke-virtual {v0}, Lorg/mortbay/io/nio/SelectChannelEndPoint;->getSelectSet()Lorg/mortbay/io/nio/SelectorManager$SelectSet;

    move-result-object v0

    iget-wide v3, p0, Lorg/mortbay/jetty/nio/SelectChannelConnector$RetryContinuation;->r:J

    invoke-virtual {v0, p0, v3, v4}, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->scheduleTimeout(Lorg/mortbay/thread/Timeout$Task;J)V

    :cond_5
    :goto_3
    iget-object p0, p0, Lorg/mortbay/jetty/nio/SelectChannelConnector$RetryContinuation;->k:Lorg/mortbay/io/nio/SelectChannelEndPoint;

    invoke-virtual {p0}, Lorg/mortbay/io/nio/SelectChannelEndPoint;->getSelectSet()Lorg/mortbay/io/nio/SelectorManager$SelectSet;

    move-result-object p0

    invoke-virtual {p0}, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->wakeup()V

    return v2

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
