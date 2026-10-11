.class public Lorg/mortbay/thread/QueuedThreadPool;
.super Lorg/mortbay/component/AbstractLifeCycle;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;
.implements Lorg/mortbay/thread/ThreadPool;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mortbay/thread/QueuedThreadPool$a;,
        Lorg/mortbay/thread/QueuedThreadPool$PoolThread;
    }
.end annotation


# instance fields
.field private _daemon:Z

.field private _id:I

.field private _idle:Ljava/util/List;

.field private _jobs:[Ljava/lang/Runnable;

.field private final _joinLock:Ljava/lang/Object;

.field private _lastShrink:J

.field private final _lock:Ljava/lang/Object;

.field private _lowThreads:I

.field private _maxIdleTimeMs:I

.field private _maxQueued:I

.field private _maxStopTimeMs:I

.field private _maxThreads:I

.field private _minThreads:I

.field private _name:Ljava/lang/String;

.field private _nextJob:I

.field private _nextJobSlot:I

.field private _priority:I

.field private _queued:I

.field private _spawnOrShrinkAt:I

.field private _threads:Ljava/util/Set;

.field private final _threadsLock:Ljava/lang/Object;

.field private _warned:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lorg/mortbay/component/AbstractLifeCycle;-><init>()V

    .line 2
    new-instance v0, Lorg/mortbay/thread/QueuedThreadPool$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/mortbay/thread/QueuedThreadPool$a;-><init>(Lorg/mortbay/thread/QueuedThreadPool;Lorg/mortbay/thread/a;)V

    iput-object v0, p0, Lorg/mortbay/thread/QueuedThreadPool;->_lock:Ljava/lang/Object;

    .line 3
    new-instance v0, Lorg/mortbay/thread/QueuedThreadPool$a;

    invoke-direct {v0, p0, v1}, Lorg/mortbay/thread/QueuedThreadPool$a;-><init>(Lorg/mortbay/thread/QueuedThreadPool;Lorg/mortbay/thread/a;)V

    iput-object v0, p0, Lorg/mortbay/thread/QueuedThreadPool;->_threadsLock:Ljava/lang/Object;

    .line 4
    new-instance v0, Lorg/mortbay/thread/QueuedThreadPool$a;

    invoke-direct {v0, p0, v1}, Lorg/mortbay/thread/QueuedThreadPool$a;-><init>(Lorg/mortbay/thread/QueuedThreadPool;Lorg/mortbay/thread/a;)V

    iput-object v0, p0, Lorg/mortbay/thread/QueuedThreadPool;->_joinLock:Ljava/lang/Object;

    const v0, 0xea60

    .line 5
    iput v0, p0, Lorg/mortbay/thread/QueuedThreadPool;->_maxIdleTimeMs:I

    const/16 v0, 0xfa

    .line 6
    iput v0, p0, Lorg/mortbay/thread/QueuedThreadPool;->_maxThreads:I

    const/4 v0, 0x2

    .line 7
    iput v0, p0, Lorg/mortbay/thread/QueuedThreadPool;->_minThreads:I

    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lorg/mortbay/thread/QueuedThreadPool;->_warned:Z

    .line 9
    iput v0, p0, Lorg/mortbay/thread/QueuedThreadPool;->_lowThreads:I

    const/4 v1, 0x5

    .line 10
    iput v1, p0, Lorg/mortbay/thread/QueuedThreadPool;->_priority:I

    .line 11
    iput v0, p0, Lorg/mortbay/thread/QueuedThreadPool;->_spawnOrShrinkAt:I

    .line 12
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "qtp-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/thread/QueuedThreadPool;->_name:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 13
    invoke-direct {p0}, Lorg/mortbay/thread/QueuedThreadPool;-><init>()V

    .line 14
    invoke-virtual {p0, p1}, Lorg/mortbay/thread/QueuedThreadPool;->setMaxThreads(I)V

    return-void
.end method

.method public static synthetic access$100(Lorg/mortbay/thread/QueuedThreadPool;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/mortbay/thread/QueuedThreadPool;->_daemon:Z

    return p0
.end method

.method public static synthetic access$1000(Lorg/mortbay/thread/QueuedThreadPool;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/thread/QueuedThreadPool;->_idle:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic access$1100(Lorg/mortbay/thread/QueuedThreadPool;)I
    .locals 0

    iget p0, p0, Lorg/mortbay/thread/QueuedThreadPool;->_spawnOrShrinkAt:I

    return p0
.end method

.method public static synthetic access$1200(Lorg/mortbay/thread/QueuedThreadPool;)J
    .locals 2

    iget-wide v0, p0, Lorg/mortbay/thread/QueuedThreadPool;->_lastShrink:J

    return-wide v0
.end method

.method public static synthetic access$1202(Lorg/mortbay/thread/QueuedThreadPool;J)J
    .locals 0

    iput-wide p1, p0, Lorg/mortbay/thread/QueuedThreadPool;->_lastShrink:J

    return-wide p1
.end method

.method public static synthetic access$1300(Lorg/mortbay/thread/QueuedThreadPool;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/thread/QueuedThreadPool;->_threadsLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$200(Lorg/mortbay/thread/QueuedThreadPool;)I
    .locals 0

    iget p0, p0, Lorg/mortbay/thread/QueuedThreadPool;->_priority:I

    return p0
.end method

.method public static synthetic access$300(Lorg/mortbay/thread/QueuedThreadPool;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/thread/QueuedThreadPool;->_lock:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$400(Lorg/mortbay/thread/QueuedThreadPool;)I
    .locals 0

    iget p0, p0, Lorg/mortbay/thread/QueuedThreadPool;->_queued:I

    return p0
.end method

.method public static synthetic access$410(Lorg/mortbay/thread/QueuedThreadPool;)I
    .locals 2

    iget v0, p0, Lorg/mortbay/thread/QueuedThreadPool;->_queued:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lorg/mortbay/thread/QueuedThreadPool;->_queued:I

    return v0
.end method

.method public static synthetic access$500(Lorg/mortbay/thread/QueuedThreadPool;)[Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/thread/QueuedThreadPool;->_jobs:[Ljava/lang/Runnable;

    return-object p0
.end method

.method public static synthetic access$600(Lorg/mortbay/thread/QueuedThreadPool;)I
    .locals 0

    iget p0, p0, Lorg/mortbay/thread/QueuedThreadPool;->_nextJob:I

    return p0
.end method

.method public static synthetic access$602(Lorg/mortbay/thread/QueuedThreadPool;I)I
    .locals 0

    iput p1, p0, Lorg/mortbay/thread/QueuedThreadPool;->_nextJob:I

    return p1
.end method

.method public static synthetic access$608(Lorg/mortbay/thread/QueuedThreadPool;)I
    .locals 2

    iget v0, p0, Lorg/mortbay/thread/QueuedThreadPool;->_nextJob:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/mortbay/thread/QueuedThreadPool;->_nextJob:I

    return v0
.end method

.method public static synthetic access$700(Lorg/mortbay/thread/QueuedThreadPool;)Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/thread/QueuedThreadPool;->_threads:Ljava/util/Set;

    return-object p0
.end method

.method public static synthetic access$800(Lorg/mortbay/thread/QueuedThreadPool;)I
    .locals 0

    iget p0, p0, Lorg/mortbay/thread/QueuedThreadPool;->_minThreads:I

    return p0
.end method

.method public static synthetic access$900(Lorg/mortbay/thread/QueuedThreadPool;)I
    .locals 0

    iget p0, p0, Lorg/mortbay/thread/QueuedThreadPool;->_maxThreads:I

    return p0
.end method


# virtual methods
.method public dispatch(Ljava/lang/Runnable;)Z
    .locals 7

    invoke-virtual {p0}, Lorg/mortbay/component/AbstractLifeCycle;->isRunning()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    if-nez p1, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object v0, p0, Lorg/mortbay/thread/QueuedThreadPool;->_lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v2, p0, Lorg/mortbay/thread/QueuedThreadPool;->_idle:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-lez v2, :cond_1

    iget-object v4, p0, Lorg/mortbay/thread/QueuedThreadPool;->_idle:Ljava/util/List;

    sub-int/2addr v2, v3

    invoke-interface {v4, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/mortbay/thread/QueuedThreadPool$PoolThread;

    goto :goto_0

    :cond_1
    iget v2, p0, Lorg/mortbay/thread/QueuedThreadPool;->_queued:I

    add-int/2addr v2, v3

    iput v2, p0, Lorg/mortbay/thread/QueuedThreadPool;->_queued:I

    iget v4, p0, Lorg/mortbay/thread/QueuedThreadPool;->_maxQueued:I

    if-le v2, v4, :cond_2

    iput v2, p0, Lorg/mortbay/thread/QueuedThreadPool;->_maxQueued:I

    :cond_2
    iget-object v2, p0, Lorg/mortbay/thread/QueuedThreadPool;->_jobs:[Ljava/lang/Runnable;

    iget v4, p0, Lorg/mortbay/thread/QueuedThreadPool;->_nextJobSlot:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lorg/mortbay/thread/QueuedThreadPool;->_nextJobSlot:I

    aput-object p1, v2, v4

    array-length v4, v2

    if-ne v5, v4, :cond_3

    iput v1, p0, Lorg/mortbay/thread/QueuedThreadPool;->_nextJobSlot:I

    :cond_3
    iget v4, p0, Lorg/mortbay/thread/QueuedThreadPool;->_nextJobSlot:I

    iget v5, p0, Lorg/mortbay/thread/QueuedThreadPool;->_nextJob:I

    if-ne v4, v5, :cond_6

    array-length v4, v2

    iget v6, p0, Lorg/mortbay/thread/QueuedThreadPool;->_maxThreads:I

    add-int/2addr v4, v6

    new-array v4, v4, [Ljava/lang/Runnable;

    array-length v6, v2

    sub-int/2addr v6, v5

    if-lez v6, :cond_4

    invoke-static {v2, v5, v4, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_4
    iget v2, p0, Lorg/mortbay/thread/QueuedThreadPool;->_nextJob:I

    if-eqz v2, :cond_5

    iget-object v2, p0, Lorg/mortbay/thread/QueuedThreadPool;->_jobs:[Ljava/lang/Runnable;

    iget v5, p0, Lorg/mortbay/thread/QueuedThreadPool;->_nextJobSlot:I

    invoke-static {v2, v1, v4, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_5
    iput-object v4, p0, Lorg/mortbay/thread/QueuedThreadPool;->_jobs:[Ljava/lang/Runnable;

    iput v1, p0, Lorg/mortbay/thread/QueuedThreadPool;->_nextJob:I

    iget v2, p0, Lorg/mortbay/thread/QueuedThreadPool;->_queued:I

    iput v2, p0, Lorg/mortbay/thread/QueuedThreadPool;->_nextJobSlot:I

    :cond_6
    iget v2, p0, Lorg/mortbay/thread/QueuedThreadPool;->_queued:I

    iget v4, p0, Lorg/mortbay/thread/QueuedThreadPool;->_spawnOrShrinkAt:I

    if-le v2, v4, :cond_7

    move v1, v3

    :cond_7
    const/4 v2, 0x0

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_8

    invoke-virtual {v2, p1}, Lorg/mortbay/thread/QueuedThreadPool$PoolThread;->a(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_8
    if-eqz v1, :cond_9

    invoke-virtual {p0}, Lorg/mortbay/thread/QueuedThreadPool;->newThread()V

    :cond_9
    :goto_1
    return v3

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_a
    :goto_2
    return v1
.end method

.method public doStart()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget v0, p0, Lorg/mortbay/thread/QueuedThreadPool;->_maxThreads:I

    iget v1, p0, Lorg/mortbay/thread/QueuedThreadPool;->_minThreads:I

    if-lt v0, v1, :cond_1

    if-lez v1, :cond_1

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/mortbay/thread/QueuedThreadPool;->_threads:Ljava/util/Set;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/mortbay/thread/QueuedThreadPool;->_idle:Ljava/util/List;

    iget v0, p0, Lorg/mortbay/thread/QueuedThreadPool;->_maxThreads:I

    new-array v0, v0, [Ljava/lang/Runnable;

    iput-object v0, p0, Lorg/mortbay/thread/QueuedThreadPool;->_jobs:[Ljava/lang/Runnable;

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lorg/mortbay/thread/QueuedThreadPool;->_minThreads:I

    if-ge v0, v1, :cond_0

    invoke-virtual {p0}, Lorg/mortbay/thread/QueuedThreadPool;->newThread()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "!0<minThreads<maxThreads"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public doStop()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-super {p0}, Lorg/mortbay/component/AbstractLifeCycle;->doStop()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x64

    if-ge v2, v3, :cond_2

    iget-object v3, p0, Lorg/mortbay/thread/QueuedThreadPool;->_threadsLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v4, p0, Lorg/mortbay/thread/QueuedThreadPool;->_threads:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Thread;

    invoke-virtual {v5}, Ljava/lang/Thread;->interrupt()V

    goto :goto_1

    :cond_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Ljava/lang/Thread;->yield()V

    iget-object v3, p0, Lorg/mortbay/thread/QueuedThreadPool;->_threads:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    if-eqz v3, :cond_2

    iget v3, p0, Lorg/mortbay/thread/QueuedThreadPool;->_maxStopTimeMs:I

    if-lez v3, :cond_1

    int-to-long v3, v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v0

    cmp-long v3, v3, v5

    if-gez v3, :cond_1

    goto :goto_2

    :cond_1
    mul-int/lit8 v3, v2, 0x64

    int-to-long v3, v3

    :try_start_1
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :cond_2
    :goto_2
    iget-object v0, p0, Lorg/mortbay/thread/QueuedThreadPool;->_threads:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_3

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Lorg/mortbay/thread/QueuedThreadPool;->_threads:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, " threads could not be stopped"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/mortbay/log/Log;->warn(Ljava/lang/String;)V

    :cond_3
    iget-object v0, p0, Lorg/mortbay/thread/QueuedThreadPool;->_joinLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object p0, p0, Lorg/mortbay/thread/QueuedThreadPool;->_joinLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0

    return-void

    :catchall_1
    move-exception p0

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0
.end method

.method public dump()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Lorg/mortbay/thread/QueuedThreadPool;->_threadsLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object p0, p0, Lorg/mortbay/thread/QueuedThreadPool;->_threads:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/Thread;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public getIdleThreads()I
    .locals 0

    iget-object p0, p0, Lorg/mortbay/thread/QueuedThreadPool;->_idle:Ljava/util/List;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    :goto_0
    return p0
.end method

.method public getLowThreads()I
    .locals 0

    iget p0, p0, Lorg/mortbay/thread/QueuedThreadPool;->_lowThreads:I

    return p0
.end method

.method public getMaxIdleTimeMs()I
    .locals 0

    iget p0, p0, Lorg/mortbay/thread/QueuedThreadPool;->_maxIdleTimeMs:I

    return p0
.end method

.method public getMaxQueued()I
    .locals 0

    iget p0, p0, Lorg/mortbay/thread/QueuedThreadPool;->_maxQueued:I

    return p0
.end method

.method public getMaxStopTimeMs()I
    .locals 0

    iget p0, p0, Lorg/mortbay/thread/QueuedThreadPool;->_maxStopTimeMs:I

    return p0
.end method

.method public getMaxThreads()I
    .locals 0

    iget p0, p0, Lorg/mortbay/thread/QueuedThreadPool;->_maxThreads:I

    return p0
.end method

.method public getMinThreads()I
    .locals 0

    iget p0, p0, Lorg/mortbay/thread/QueuedThreadPool;->_minThreads:I

    return p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/thread/QueuedThreadPool;->_name:Ljava/lang/String;

    return-object p0
.end method

.method public getQueueSize()I
    .locals 0

    iget p0, p0, Lorg/mortbay/thread/QueuedThreadPool;->_queued:I

    return p0
.end method

.method public getSpawnOrShrinkAt()I
    .locals 0

    iget p0, p0, Lorg/mortbay/thread/QueuedThreadPool;->_spawnOrShrinkAt:I

    return p0
.end method

.method public getThreads()I
    .locals 0

    iget-object p0, p0, Lorg/mortbay/thread/QueuedThreadPool;->_threads:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result p0

    return p0
.end method

.method public getThreadsPriority()I
    .locals 0

    iget p0, p0, Lorg/mortbay/thread/QueuedThreadPool;->_priority:I

    return p0
.end method

.method public interruptThread(Ljava/lang/String;)Z
    .locals 3

    iget-object v0, p0, Lorg/mortbay/thread/QueuedThreadPool;->_threadsLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lorg/mortbay/thread/QueuedThreadPool;->_threads:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    monitor-exit v0

    const/4 p0, 0x1

    return p0

    :cond_1
    monitor-exit v0

    const/4 p0, 0x0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public isDaemon()Z
    .locals 0

    iget-boolean p0, p0, Lorg/mortbay/thread/QueuedThreadPool;->_daemon:Z

    return p0
.end method

.method public isLowOnThreads()Z
    .locals 1

    iget v0, p0, Lorg/mortbay/thread/QueuedThreadPool;->_queued:I

    iget p0, p0, Lorg/mortbay/thread/QueuedThreadPool;->_lowThreads:I

    if-le v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public join()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    iget-object v0, p0, Lorg/mortbay/thread/QueuedThreadPool;->_joinLock:Ljava/lang/Object;

    monitor-enter v0

    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lorg/mortbay/component/AbstractLifeCycle;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/mortbay/thread/QueuedThreadPool;->_joinLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    goto :goto_0

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    invoke-virtual {p0}, Lorg/mortbay/component/AbstractLifeCycle;->isStopping()Z

    move-result v0

    if-eqz v0, :cond_1

    const-wide/16 v0, 0x64

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_1

    :cond_1
    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public newThread()V
    .locals 5

    iget-object v0, p0, Lorg/mortbay/thread/QueuedThreadPool;->_threadsLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/mortbay/thread/QueuedThreadPool;->_threads:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    iget v2, p0, Lorg/mortbay/thread/QueuedThreadPool;->_maxThreads:I

    if-ge v1, v2, :cond_0

    new-instance v1, Lorg/mortbay/thread/QueuedThreadPool$PoolThread;

    invoke-direct {v1, p0}, Lorg/mortbay/thread/QueuedThreadPool$PoolThread;-><init>(Lorg/mortbay/thread/QueuedThreadPool;)V

    iget-object v2, p0, Lorg/mortbay/thread/QueuedThreadPool;->_threads:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v3, "@"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v3, p0, Lorg/mortbay/thread/QueuedThreadPool;->_name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v3, p0, Lorg/mortbay/thread/QueuedThreadPool;->_id:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/mortbay/thread/QueuedThreadPool;->_id:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0

    :cond_0
    iget-boolean v1, p0, Lorg/mortbay/thread/QueuedThreadPool;->_warned:Z

    if-nez v1, :cond_1

    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/mortbay/thread/QueuedThreadPool;->_warned:Z

    const-string v1, "Max threads for {}"

    invoke-static {v1, p0}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setDaemon(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/mortbay/thread/QueuedThreadPool;->_daemon:Z

    return-void
.end method

.method public setLowThreads(I)V
    .locals 0

    iput p1, p0, Lorg/mortbay/thread/QueuedThreadPool;->_lowThreads:I

    return-void
.end method

.method public setMaxIdleTimeMs(I)V
    .locals 0

    iput p1, p0, Lorg/mortbay/thread/QueuedThreadPool;->_maxIdleTimeMs:I

    return-void
.end method

.method public setMaxStopTimeMs(I)V
    .locals 0

    iput p1, p0, Lorg/mortbay/thread/QueuedThreadPool;->_maxStopTimeMs:I

    return-void
.end method

.method public setMaxThreads(I)V
    .locals 1

    invoke-virtual {p0}, Lorg/mortbay/component/AbstractLifeCycle;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lorg/mortbay/thread/QueuedThreadPool;->_minThreads:I

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "!minThreads<maxThreads"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    iput p1, p0, Lorg/mortbay/thread/QueuedThreadPool;->_maxThreads:I

    return-void
.end method

.method public setMinThreads(I)V
    .locals 2

    invoke-virtual {p0}, Lorg/mortbay/component/AbstractLifeCycle;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_1

    if-lez p1, :cond_0

    iget v0, p0, Lorg/mortbay/thread/QueuedThreadPool;->_maxThreads:I

    if-gt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "!0<=minThreads<maxThreads"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    iput p1, p0, Lorg/mortbay/thread/QueuedThreadPool;->_minThreads:I

    iget-object p1, p0, Lorg/mortbay/thread/QueuedThreadPool;->_threadsLock:Ljava/lang/Object;

    monitor-enter p1

    :goto_1
    :try_start_0
    invoke-virtual {p0}, Lorg/mortbay/component/AbstractLifeCycle;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/mortbay/thread/QueuedThreadPool;->_threads:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    iget v1, p0, Lorg/mortbay/thread/QueuedThreadPool;->_minThreads:I

    if-ge v0, v1, :cond_2

    invoke-virtual {p0}, Lorg/mortbay/thread/QueuedThreadPool;->newThread()V

    goto :goto_1

    :cond_2
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/mortbay/thread/QueuedThreadPool;->_name:Ljava/lang/String;

    return-void
.end method

.method public setSpawnOrShrinkAt(I)V
    .locals 0

    iput p1, p0, Lorg/mortbay/thread/QueuedThreadPool;->_spawnOrShrinkAt:I

    return-void
.end method

.method public setThreadsPriority(I)V
    .locals 0

    iput p1, p0, Lorg/mortbay/thread/QueuedThreadPool;->_priority:I

    return-void
.end method

.method public stopJob(Ljava/lang/Thread;Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    return-void
.end method

.method public stopThread(Ljava/lang/String;)Z
    .locals 3

    iget-object v0, p0, Lorg/mortbay/thread/QueuedThreadPool;->_threadsLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lorg/mortbay/thread/QueuedThreadPool;->_threads:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/lang/Thread;->stop()V

    monitor-exit v0

    const/4 p0, 0x1

    return p0

    :cond_1
    monitor-exit v0

    const/4 p0, 0x0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
