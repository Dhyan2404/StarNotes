.class public final Lonyx/org/apache/commons/io/monitor/FileAlterationMonitor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final j:[Lonyx/org/apache/commons/io/monitor/FileAlterationObserver;


# instance fields
.field public final e:J

.field public final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lonyx/org/apache/commons/io/monitor/FileAlterationObserver;",
            ">;"
        }
    .end annotation
.end field

.field public g:Ljava/lang/Thread;

.field public h:Ljava/util/concurrent/ThreadFactory;

.field public volatile i:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lonyx/org/apache/commons/io/monitor/FileAlterationObserver;

    sput-object v0, Lonyx/org/apache/commons/io/monitor/FileAlterationMonitor;->j:[Lonyx/org/apache/commons/io/monitor/FileAlterationObserver;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const-wide/16 v0, 0x2710

    .line 1
    invoke-direct {p0, v0, v1}, Lonyx/org/apache/commons/io/monitor/FileAlterationMonitor;-><init>(J)V

    return-void
.end method

.method public constructor <init>(J)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lonyx/org/apache/commons/io/monitor/FileAlterationMonitor;->f:Ljava/util/List;

    .line 4
    iput-wide p1, p0, Lonyx/org/apache/commons/io/monitor/FileAlterationMonitor;->e:J

    return-void
.end method

.method public constructor <init>(JLjava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/Collection<",
            "Lonyx/org/apache/commons/io/monitor/FileAlterationObserver;",
            ">;)V"
        }
    .end annotation

    .line 5
    invoke-static {p3}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p3

    .line 6
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Collection;

    sget-object v0, Lonyx/org/apache/commons/io/monitor/FileAlterationMonitor;->j:[Lonyx/org/apache/commons/io/monitor/FileAlterationObserver;

    .line 7
    invoke-interface {p3, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [Lonyx/org/apache/commons/io/monitor/FileAlterationObserver;

    .line 8
    invoke-direct {p0, p1, p2, p3}, Lonyx/org/apache/commons/io/monitor/FileAlterationMonitor;-><init>(J[Lonyx/org/apache/commons/io/monitor/FileAlterationObserver;)V

    return-void
.end method

.method public varargs constructor <init>(J[Lonyx/org/apache/commons/io/monitor/FileAlterationObserver;)V
    .locals 0

    .line 9
    invoke-direct {p0, p1, p2}, Lonyx/org/apache/commons/io/monitor/FileAlterationMonitor;-><init>(J)V

    if-eqz p3, :cond_0

    .line 10
    invoke-static {p3}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance p2, Lcom/sunia/HTREnginev2/egg;

    invoke-direct {p2, p0}, Lcom/sunia/HTREnginev2/egg;-><init>(Lonyx/org/apache/commons/io/monitor/FileAlterationMonitor;)V

    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public addObserver(Lonyx/org/apache/commons/io/monitor/FileAlterationObserver;)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p0, p0, Lonyx/org/apache/commons/io/monitor/FileAlterationMonitor;->f:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public getInterval()J
    .locals 2

    iget-wide v0, p0, Lonyx/org/apache/commons/io/monitor/FileAlterationMonitor;->e:J

    return-wide v0
.end method

.method public getObservers()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Lonyx/org/apache/commons/io/monitor/FileAlterationObserver;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lonyx/org/apache/commons/io/monitor/FileAlterationMonitor;->f:Ljava/util/List;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public removeObserver(Lonyx/org/apache/commons/io/monitor/FileAlterationObserver;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lonyx/org/apache/commons/io/monitor/FileAlterationMonitor;->f:Ljava/util/List;

    new-instance v0, Lcom/sunia/HTREnginev2/ggg;

    invoke-direct {v0, p1}, Lcom/sunia/HTREnginev2/ggg;-><init>(Lonyx/org/apache/commons/io/monitor/FileAlterationObserver;)V

    invoke-interface {p0, v0}, Ljava/util/Collection;->removeIf(Ljava/util/function/Predicate;)Z

    :cond_0
    return-void
.end method

.method public run()V
    .locals 2

    :catch_0
    :goto_0
    iget-boolean v0, p0, Lonyx/org/apache/commons/io/monitor/FileAlterationMonitor;->i:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lonyx/org/apache/commons/io/monitor/FileAlterationMonitor;->f:Ljava/util/List;

    new-instance v1, Lcom/sunia/HTREnginev2/fgg;

    invoke-direct {v1}, Lcom/sunia/HTREnginev2/fgg;-><init>()V

    invoke-interface {v0, v1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    iget-boolean v0, p0, Lonyx/org/apache/commons/io/monitor/FileAlterationMonitor;->i:Z

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    :try_start_0
    iget-wide v0, p0, Lonyx/org/apache/commons/io/monitor/FileAlterationMonitor;->e:J

    invoke-static {v0, v1}, Ljava/time/Duration;->ofMillis(J)Ljava/time/Duration;

    move-result-object v0

    invoke-static {v0}, Lonyx/org/apache/commons/io/ThreadUtils;->sleep(Ljava/time/Duration;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public declared-synchronized setThreadFactory(Ljava/util/concurrent/ThreadFactory;)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lonyx/org/apache/commons/io/monitor/FileAlterationMonitor;->h:Ljava/util/concurrent/ThreadFactory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized start()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lonyx/org/apache/commons/io/monitor/FileAlterationMonitor;->i:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lonyx/org/apache/commons/io/monitor/FileAlterationMonitor;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lonyx/org/apache/commons/io/monitor/FileAlterationObserver;

    invoke-virtual {v1}, Lonyx/org/apache/commons/io/monitor/FileAlterationObserver;->initialize()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lonyx/org/apache/commons/io/monitor/FileAlterationMonitor;->i:Z

    iget-object v0, p0, Lonyx/org/apache/commons/io/monitor/FileAlterationMonitor;->h:Ljava/util/concurrent/ThreadFactory;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0}, Ljava/util/concurrent/ThreadFactory;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lonyx/org/apache/commons/io/monitor/FileAlterationMonitor;->g:Ljava/lang/Thread;

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lonyx/org/apache/commons/io/monitor/FileAlterationMonitor;->g:Ljava/lang/Thread;

    :goto_1
    iget-object v0, p0, Lonyx/org/apache/commons/io/monitor/FileAlterationMonitor;->g:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_2
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Monitor is already running"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stop()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-wide v0, p0, Lonyx/org/apache/commons/io/monitor/FileAlterationMonitor;->e:J

    invoke-virtual {p0, v0, v1}, Lonyx/org/apache/commons/io/monitor/FileAlterationMonitor;->stop(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stop(J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    monitor-enter p0

    .line 3
    :try_start_0
    iget-boolean v0, p0, Lonyx/org/apache/commons/io/monitor/FileAlterationMonitor;->i:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lonyx/org/apache/commons/io/monitor/FileAlterationMonitor;->i:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    :try_start_1
    iget-object v0, p0, Lonyx/org/apache/commons/io/monitor/FileAlterationMonitor;->g:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 6
    iget-object v0, p0, Lonyx/org/apache/commons/io/monitor/FileAlterationMonitor;->g:Ljava/lang/Thread;

    invoke-virtual {v0, p1, p2}, Ljava/lang/Thread;->join(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 7
    :catch_0
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    .line 8
    :goto_0
    iget-object p1, p0, Lonyx/org/apache/commons/io/monitor/FileAlterationMonitor;->f:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lonyx/org/apache/commons/io/monitor/FileAlterationObserver;

    .line 9
    invoke-virtual {p2}, Lonyx/org/apache/commons/io/monitor/FileAlterationObserver;->destroy()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 10
    :cond_0
    monitor-exit p0

    return-void

    .line 11
    :cond_1
    :try_start_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Monitor is not running"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
