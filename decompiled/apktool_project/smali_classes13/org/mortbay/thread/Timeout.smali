.class public Lorg/mortbay/thread/Timeout;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mortbay/thread/Timeout$Task;
    }
.end annotation


# instance fields
.field public a:Ljava/lang/Object;

.field public b:J

.field public volatile c:J

.field public d:Lorg/mortbay/thread/Timeout$Task;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/mortbay/thread/Timeout;->c:J

    .line 3
    new-instance v0, Lorg/mortbay/thread/Timeout$Task;

    invoke-direct {v0}, Lorg/mortbay/thread/Timeout$Task;-><init>()V

    iput-object v0, p0, Lorg/mortbay/thread/Timeout;->d:Lorg/mortbay/thread/Timeout$Task;

    .line 4
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lorg/mortbay/thread/Timeout;->a:Ljava/lang/Object;

    .line 5
    iput-object p0, v0, Lorg/mortbay/thread/Timeout$Task;->g:Lorg/mortbay/thread/Timeout;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 2

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/mortbay/thread/Timeout;->c:J

    .line 8
    new-instance v0, Lorg/mortbay/thread/Timeout$Task;

    invoke-direct {v0}, Lorg/mortbay/thread/Timeout$Task;-><init>()V

    iput-object v0, p0, Lorg/mortbay/thread/Timeout;->d:Lorg/mortbay/thread/Timeout$Task;

    .line 9
    iput-object p1, p0, Lorg/mortbay/thread/Timeout;->a:Ljava/lang/Object;

    .line 10
    iput-object p0, v0, Lorg/mortbay/thread/Timeout$Task;->g:Lorg/mortbay/thread/Timeout;

    return-void
.end method

.method public static synthetic a(Lorg/mortbay/thread/Timeout;)J
    .locals 2

    iget-wide v0, p0, Lorg/mortbay/thread/Timeout;->c:J

    return-wide v0
.end method

.method public static synthetic b(Lorg/mortbay/thread/Timeout;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/thread/Timeout;->a:Ljava/lang/Object;

    return-object p0
.end method


# virtual methods
.method public cancelAll()V
    .locals 1

    iget-object v0, p0, Lorg/mortbay/thread/Timeout;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lorg/mortbay/thread/Timeout;->d:Lorg/mortbay/thread/Timeout$Task;

    iput-object p0, p0, Lorg/mortbay/thread/Timeout$Task;->f:Lorg/mortbay/thread/Timeout$Task;

    iput-object p0, p0, Lorg/mortbay/thread/Timeout$Task;->e:Lorg/mortbay/thread/Timeout$Task;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public expired()Lorg/mortbay/thread/Timeout$Task;
    .locals 7

    iget-wide v0, p0, Lorg/mortbay/thread/Timeout;->c:J

    iget-object v2, p0, Lorg/mortbay/thread/Timeout;->a:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-wide v3, p0, Lorg/mortbay/thread/Timeout;->b:J

    sub-long/2addr v0, v3

    iget-object p0, p0, Lorg/mortbay/thread/Timeout;->d:Lorg/mortbay/thread/Timeout$Task;

    iget-object v3, p0, Lorg/mortbay/thread/Timeout$Task;->e:Lorg/mortbay/thread/Timeout$Task;

    const/4 v4, 0x0

    if-eq v3, p0, :cond_1

    iget-wide v5, v3, Lorg/mortbay/thread/Timeout$Task;->i:J

    cmp-long p0, v5, v0

    if-lez p0, :cond_0

    monitor-exit v2

    return-object v4

    :cond_0
    invoke-static {v3}, Lorg/mortbay/thread/Timeout$Task;->a(Lorg/mortbay/thread/Timeout$Task;)V

    const/4 p0, 0x1

    iput-boolean p0, v3, Lorg/mortbay/thread/Timeout$Task;->j:Z

    monitor-exit v2

    return-object v3

    :cond_1
    monitor-exit v2

    return-object v4

    :catchall_0
    move-exception p0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getDuration()J
    .locals 2

    iget-wide v0, p0, Lorg/mortbay/thread/Timeout;->b:J

    return-wide v0
.end method

.method public getNow()J
    .locals 2

    iget-wide v0, p0, Lorg/mortbay/thread/Timeout;->c:J

    return-wide v0
.end method

.method public getTimeToNext()J
    .locals 5

    iget-object v0, p0, Lorg/mortbay/thread/Timeout;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/mortbay/thread/Timeout;->d:Lorg/mortbay/thread/Timeout$Task;

    iget-object v2, v1, Lorg/mortbay/thread/Timeout$Task;->e:Lorg/mortbay/thread/Timeout$Task;

    if-ne v2, v1, :cond_0

    monitor-exit v0

    const-wide/16 v0, -0x1

    return-wide v0

    :cond_0
    iget-wide v3, p0, Lorg/mortbay/thread/Timeout;->b:J

    iget-wide v1, v2, Lorg/mortbay/thread/Timeout$Task;->i:J

    add-long/2addr v3, v1

    iget-wide v1, p0, Lorg/mortbay/thread/Timeout;->c:J

    sub-long/2addr v3, v1

    const-wide/16 v1, 0x0

    cmp-long p0, v3, v1

    if-gez p0, :cond_1

    move-wide v3, v1

    :cond_1
    monitor-exit v0

    return-wide v3

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public isEmpty()Z
    .locals 2

    iget-object v0, p0, Lorg/mortbay/thread/Timeout;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lorg/mortbay/thread/Timeout;->d:Lorg/mortbay/thread/Timeout$Task;

    iget-object v1, p0, Lorg/mortbay/thread/Timeout$Task;->e:Lorg/mortbay/thread/Timeout$Task;

    if-ne v1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public schedule(Lorg/mortbay/thread/Timeout$Task;)V
    .locals 2

    const-wide/16 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0, v1}, Lorg/mortbay/thread/Timeout;->schedule(Lorg/mortbay/thread/Timeout$Task;J)V

    return-void
.end method

.method public schedule(Lorg/mortbay/thread/Timeout$Task;J)V
    .locals 5

    .line 2
    iget-object v0, p0, Lorg/mortbay/thread/Timeout;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-wide v1, p1, Lorg/mortbay/thread/Timeout$Task;->i:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    .line 4
    invoke-static {p1}, Lorg/mortbay/thread/Timeout$Task;->a(Lorg/mortbay/thread/Timeout$Task;)V

    .line 5
    iput-wide v3, p1, Lorg/mortbay/thread/Timeout$Task;->i:J

    .line 6
    :cond_0
    iput-object p0, p1, Lorg/mortbay/thread/Timeout$Task;->g:Lorg/mortbay/thread/Timeout;

    const/4 v1, 0x0

    .line 7
    iput-boolean v1, p1, Lorg/mortbay/thread/Timeout$Task;->j:Z

    .line 8
    iput-wide p2, p1, Lorg/mortbay/thread/Timeout$Task;->h:J

    .line 9
    iget-wide v1, p0, Lorg/mortbay/thread/Timeout;->c:J

    add-long/2addr v1, p2

    iput-wide v1, p1, Lorg/mortbay/thread/Timeout$Task;->i:J

    .line 10
    iget-object p2, p0, Lorg/mortbay/thread/Timeout;->d:Lorg/mortbay/thread/Timeout$Task;

    iget-object p2, p2, Lorg/mortbay/thread/Timeout$Task;->f:Lorg/mortbay/thread/Timeout$Task;

    .line 11
    :goto_0
    iget-object p3, p0, Lorg/mortbay/thread/Timeout;->d:Lorg/mortbay/thread/Timeout$Task;

    if-eq p2, p3, :cond_2

    .line 12
    iget-wide v1, p2, Lorg/mortbay/thread/Timeout$Task;->i:J

    iget-wide v3, p1, Lorg/mortbay/thread/Timeout$Task;->i:J

    cmp-long p3, v1, v3

    if-gtz p3, :cond_1

    goto :goto_1

    .line 13
    :cond_1
    iget-object p2, p2, Lorg/mortbay/thread/Timeout$Task;->f:Lorg/mortbay/thread/Timeout$Task;

    goto :goto_0

    .line 14
    :cond_2
    :goto_1
    invoke-static {p2, p1}, Lorg/mortbay/thread/Timeout$Task;->b(Lorg/mortbay/thread/Timeout$Task;Lorg/mortbay/thread/Timeout$Task;)V

    .line 15
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setDuration(J)V
    .locals 0

    iput-wide p1, p0, Lorg/mortbay/thread/Timeout;->b:J

    return-void
.end method

.method public setNow()J
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/mortbay/thread/Timeout;->c:J

    .line 2
    iget-wide v0, p0, Lorg/mortbay/thread/Timeout;->c:J

    return-wide v0
.end method

.method public setNow(J)V
    .locals 0

    .line 3
    iput-wide p1, p0, Lorg/mortbay/thread/Timeout;->c:J

    return-void
.end method

.method public tick()V
    .locals 7

    .line 1
    iget-wide v0, p0, Lorg/mortbay/thread/Timeout;->c:J

    iget-wide v2, p0, Lorg/mortbay/thread/Timeout;->b:J

    sub-long/2addr v0, v2

    .line 2
    :goto_0
    :try_start_0
    iget-object v2, p0, Lorg/mortbay/thread/Timeout;->a:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3
    :try_start_1
    iget-object v3, p0, Lorg/mortbay/thread/Timeout;->d:Lorg/mortbay/thread/Timeout$Task;

    iget-object v4, v3, Lorg/mortbay/thread/Timeout$Task;->e:Lorg/mortbay/thread/Timeout$Task;

    if-eq v4, v3, :cond_1

    .line 4
    iget-wide v5, v4, Lorg/mortbay/thread/Timeout$Task;->i:J

    cmp-long v3, v5, v0

    if-lez v3, :cond_0

    goto :goto_1

    .line 5
    :cond_0
    invoke-static {v4}, Lorg/mortbay/thread/Timeout$Task;->a(Lorg/mortbay/thread/Timeout$Task;)V

    const/4 v3, 0x1

    .line 6
    iput-boolean v3, v4, Lorg/mortbay/thread/Timeout$Task;->j:Z

    .line 7
    invoke-virtual {v4}, Lorg/mortbay/thread/Timeout$Task;->expire()V

    .line 8
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9
    :try_start_2
    invoke-virtual {v4}, Lorg/mortbay/thread/Timeout$Task;->expired()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    .line 10
    :cond_1
    :goto_1
    :try_start_3
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v3

    .line 11
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v2

    const-string v3, "EXCEPTION "

    .line 12
    invoke-static {v3, v2}, Lorg/mortbay/log/Log;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public tick(J)V
    .locals 0

    .line 13
    iput-wide p1, p0, Lorg/mortbay/thread/Timeout;->c:J

    .line 14
    invoke-virtual {p0}, Lorg/mortbay/thread/Timeout;->tick()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/mortbay/thread/Timeout;->d:Lorg/mortbay/thread/Timeout$Task;

    iget-object v1, v1, Lorg/mortbay/thread/Timeout$Task;->e:Lorg/mortbay/thread/Timeout$Task;

    :goto_0
    iget-object v2, p0, Lorg/mortbay/thread/Timeout;->d:Lorg/mortbay/thread/Timeout$Task;

    if-eq v1, v2, :cond_0

    const-string v2, "-->"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    iget-object v1, v1, Lorg/mortbay/thread/Timeout$Task;->e:Lorg/mortbay/thread/Timeout$Task;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
