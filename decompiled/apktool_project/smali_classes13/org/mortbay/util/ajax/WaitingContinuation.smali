.class public Lorg/mortbay/util/ajax/WaitingContinuation;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/mortbay/util/ajax/Continuation;


# instance fields
.field public e:Ljava/lang/Object;

.field public f:Ljava/lang/Object;

.field public g:Z

.field public h:Z

.field public i:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lorg/mortbay/util/ajax/WaitingContinuation;->g:Z

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lorg/mortbay/util/ajax/WaitingContinuation;->h:Z

    .line 4
    iput-boolean v0, p0, Lorg/mortbay/util/ajax/WaitingContinuation;->i:Z

    .line 5
    iput-object p0, p0, Lorg/mortbay/util/ajax/WaitingContinuation;->e:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lorg/mortbay/util/ajax/WaitingContinuation;->g:Z

    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lorg/mortbay/util/ajax/WaitingContinuation;->h:Z

    .line 9
    iput-boolean v0, p0, Lorg/mortbay/util/ajax/WaitingContinuation;->i:Z

    if-nez p1, :cond_0

    move-object p1, p0

    .line 10
    :cond_0
    iput-object p1, p0, Lorg/mortbay/util/ajax/WaitingContinuation;->e:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getMutex()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/util/ajax/WaitingContinuation;->e:Ljava/lang/Object;

    return-object p0
.end method

.method public getObject()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/util/ajax/WaitingContinuation;->f:Ljava/lang/Object;

    return-object p0
.end method

.method public isNew()Z
    .locals 0

    iget-boolean p0, p0, Lorg/mortbay/util/ajax/WaitingContinuation;->g:Z

    return p0
.end method

.method public isPending()Z
    .locals 1

    iget-object v0, p0, Lorg/mortbay/util/ajax/WaitingContinuation;->e:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean p0, p0, Lorg/mortbay/util/ajax/WaitingContinuation;->i:Z

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public isResumed()Z
    .locals 1

    iget-object v0, p0, Lorg/mortbay/util/ajax/WaitingContinuation;->e:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean p0, p0, Lorg/mortbay/util/ajax/WaitingContinuation;->h:Z

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public reset()V
    .locals 2

    iget-object v0, p0, Lorg/mortbay/util/ajax/WaitingContinuation;->e:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lorg/mortbay/util/ajax/WaitingContinuation;->h:Z

    iput-boolean v1, p0, Lorg/mortbay/util/ajax/WaitingContinuation;->i:Z

    iget-object p0, p0, Lorg/mortbay/util/ajax/WaitingContinuation;->e:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public resume()V
    .locals 2

    iget-object v0, p0, Lorg/mortbay/util/ajax/WaitingContinuation;->e:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lorg/mortbay/util/ajax/WaitingContinuation;->h:Z

    iget-object p0, p0, Lorg/mortbay/util/ajax/WaitingContinuation;->e:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setMutex(Ljava/lang/Object;)V
    .locals 1

    iget-boolean v0, p0, Lorg/mortbay/util/ajax/WaitingContinuation;->i:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/mortbay/util/ajax/WaitingContinuation;->e:Ljava/lang/Object;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :cond_1
    :goto_0
    if-nez p1, :cond_2

    move-object p1, p0

    :cond_2
    iput-object p1, p0, Lorg/mortbay/util/ajax/WaitingContinuation;->e:Ljava/lang/Object;

    return-void
.end method

.method public setObject(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lorg/mortbay/util/ajax/WaitingContinuation;->f:Ljava/lang/Object;

    return-void
.end method

.method public suspend(J)Z
    .locals 4

    iget-object v0, p0, Lorg/mortbay/util/ajax/WaitingContinuation;->e:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lorg/mortbay/util/ajax/WaitingContinuation;->g:Z

    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/mortbay/util/ajax/WaitingContinuation;->i:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-boolean v2, p0, Lorg/mortbay/util/ajax/WaitingContinuation;->h:Z

    if-nez v2, :cond_1

    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-ltz v2, :cond_1

    if-nez v2, :cond_0

    iget-object p1, p0, Lorg/mortbay/util/ajax/WaitingContinuation;->e:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->wait()V

    goto :goto_0

    :cond_0
    if-lez v2, :cond_1

    iget-object v2, p0, Lorg/mortbay/util/ajax/WaitingContinuation;->e:Ljava/lang/Object;

    invoke-virtual {v2, p1, p2}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :goto_0
    :try_start_2
    iget-boolean p1, p0, Lorg/mortbay/util/ajax/WaitingContinuation;->h:Z

    iput-boolean v1, p0, Lorg/mortbay/util/ajax/WaitingContinuation;->h:Z

    :goto_1
    iput-boolean v1, p0, Lorg/mortbay/util/ajax/WaitingContinuation;->i:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    :try_start_3
    invoke-static {p1}, Lorg/mortbay/log/Log;->ignore(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    iget-boolean p1, p0, Lorg/mortbay/util/ajax/WaitingContinuation;->h:Z

    iput-boolean v1, p0, Lorg/mortbay/util/ajax/WaitingContinuation;->h:Z

    goto :goto_1

    :goto_2
    monitor-exit v0

    return p1

    :goto_3
    iput-boolean v1, p0, Lorg/mortbay/util/ajax/WaitingContinuation;->h:Z

    iput-boolean v1, p0, Lorg/mortbay/util/ajax/WaitingContinuation;->i:Z

    throw p1

    :catchall_1
    move-exception p0

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "WaitingContinuation@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    iget-boolean v1, p0, Lorg/mortbay/util/ajax/WaitingContinuation;->g:Z

    if-eqz v1, :cond_0

    const-string v1, ",new"

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-boolean v1, p0, Lorg/mortbay/util/ajax/WaitingContinuation;->i:Z

    if-eqz v1, :cond_1

    const-string v1, ",pending"

    goto :goto_1

    :cond_1
    const-string v1, ""

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-boolean v1, p0, Lorg/mortbay/util/ajax/WaitingContinuation;->h:Z

    if-eqz v1, :cond_2

    const-string v1, ",resumed"

    goto :goto_2

    :cond_2
    const-string v1, ""

    :goto_2
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
