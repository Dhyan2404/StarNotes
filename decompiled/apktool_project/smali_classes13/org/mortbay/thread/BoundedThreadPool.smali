.class public Lorg/mortbay/thread/BoundedThreadPool;
.super Lorg/mortbay/component/AbstractLifeCycle;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;
.implements Lorg/mortbay/thread/ThreadPool;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mortbay/thread/BoundedThreadPool$PoolThread;
    }
.end annotation


# static fields
.field private static __id:I


# instance fields
.field private _daemon:Z

.field private _id:I

.field private _idle:Ljava/util/List;

.field private final _joinLock:Ljava/lang/Object;

.field private _lastShrink:J

.field private final _lock:Ljava/lang/Object;

.field _lowThreads:I

.field private _maxIdleTimeMs:I

.field private _maxThreads:I

.field private _minThreads:I

.field private _name:Ljava/lang/String;

.field _priority:I

.field private _queue:Ljava/util/List;

.field private _threads:Ljava/util/Set;

.field private _warned:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lorg/mortbay/component/AbstractLifeCycle;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/mortbay/thread/BoundedThreadPool;->_lock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/mortbay/thread/BoundedThreadPool;->_joinLock:Ljava/lang/Object;

    const v0, 0xea60

    iput v0, p0, Lorg/mortbay/thread/BoundedThreadPool;->_maxIdleTimeMs:I

    const/16 v0, 0xff

    iput v0, p0, Lorg/mortbay/thread/BoundedThreadPool;->_maxThreads:I

    const/4 v0, 0x1

    iput v0, p0, Lorg/mortbay/thread/BoundedThreadPool;->_minThreads:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/mortbay/thread/BoundedThreadPool;->_warned:Z

    iput v0, p0, Lorg/mortbay/thread/BoundedThreadPool;->_lowThreads:I

    const/4 v0, 0x5

    iput v0, p0, Lorg/mortbay/thread/BoundedThreadPool;->_priority:I

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "btpool"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget v1, Lorg/mortbay/thread/BoundedThreadPool;->__id:I

    add-int/lit8 v2, v1, 0x1

    sput v2, Lorg/mortbay/thread/BoundedThreadPool;->__id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/thread/BoundedThreadPool;->_name:Ljava/lang/String;

    return-void
.end method

.method public static synthetic access$000(Lorg/mortbay/thread/BoundedThreadPool;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/mortbay/thread/BoundedThreadPool;->_daemon:Z

    return p0
.end method

.method public static synthetic access$100(Lorg/mortbay/thread/BoundedThreadPool;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/thread/BoundedThreadPool;->_lock:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$200(Lorg/mortbay/thread/BoundedThreadPool;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/thread/BoundedThreadPool;->_queue:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic access$302(Lorg/mortbay/thread/BoundedThreadPool;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/mortbay/thread/BoundedThreadPool;->_warned:Z

    return p1
.end method

.method public static synthetic access$400(Lorg/mortbay/thread/BoundedThreadPool;)Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/thread/BoundedThreadPool;->_threads:Ljava/util/Set;

    return-object p0
.end method

.method public static synthetic access$500(Lorg/mortbay/thread/BoundedThreadPool;)I
    .locals 0

    iget p0, p0, Lorg/mortbay/thread/BoundedThreadPool;->_maxThreads:I

    return p0
.end method

.method public static synthetic access$600(Lorg/mortbay/thread/BoundedThreadPool;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/thread/BoundedThreadPool;->_idle:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic access$700(Lorg/mortbay/thread/BoundedThreadPool;)I
    .locals 0

    iget p0, p0, Lorg/mortbay/thread/BoundedThreadPool;->_minThreads:I

    return p0
.end method

.method public static synthetic access$800(Lorg/mortbay/thread/BoundedThreadPool;)J
    .locals 2

    iget-wide v0, p0, Lorg/mortbay/thread/BoundedThreadPool;->_lastShrink:J

    return-wide v0
.end method

.method public static synthetic access$802(Lorg/mortbay/thread/BoundedThreadPool;J)J
    .locals 0

    iput-wide p1, p0, Lorg/mortbay/thread/BoundedThreadPool;->_lastShrink:J

    return-wide p1
.end method


# virtual methods
.method public dispatch(Ljava/lang/Runnable;)Z
    .locals 4

    iget-object v0, p0, Lorg/mortbay/thread/BoundedThreadPool;->_lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/mortbay/component/AbstractLifeCycle;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_4

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lorg/mortbay/thread/BoundedThreadPool;->_idle:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-lez v1, :cond_1

    iget-object p0, p0, Lorg/mortbay/thread/BoundedThreadPool;->_idle:Ljava/util/List;

    sub-int/2addr v1, v2

    invoke-interface {p0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/mortbay/thread/BoundedThreadPool$PoolThread;

    invoke-virtual {p0, p1}, Lorg/mortbay/thread/BoundedThreadPool$PoolThread;->a(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lorg/mortbay/thread/BoundedThreadPool;->_threads:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    iget v3, p0, Lorg/mortbay/thread/BoundedThreadPool;->_maxThreads:I

    if-ge v1, v3, :cond_2

    invoke-virtual {p0, p1}, Lorg/mortbay/thread/BoundedThreadPool;->newThread(Ljava/lang/Runnable;)Lorg/mortbay/thread/BoundedThreadPool$PoolThread;

    goto :goto_0

    :cond_2
    iget-boolean v1, p0, Lorg/mortbay/thread/BoundedThreadPool;->_warned:Z

    if-nez v1, :cond_3

    iput-boolean v2, p0, Lorg/mortbay/thread/BoundedThreadPool;->_warned:Z

    const-string v1, "Out of threads for {}"

    invoke-static {v1, p0}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_3
    iget-object p0, p0, Lorg/mortbay/thread/BoundedThreadPool;->_queue:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    monitor-exit v0

    return v2

    :cond_4
    :goto_1
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

.method public doStart()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget v0, p0, Lorg/mortbay/thread/BoundedThreadPool;->_maxThreads:I

    iget v1, p0, Lorg/mortbay/thread/BoundedThreadPool;->_minThreads:I

    if-lt v0, v1, :cond_1

    if-lez v1, :cond_1

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/mortbay/thread/BoundedThreadPool;->_threads:Ljava/util/Set;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/mortbay/thread/BoundedThreadPool;->_idle:Ljava/util/List;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/mortbay/thread/BoundedThreadPool;->_queue:Ljava/util/List;

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lorg/mortbay/thread/BoundedThreadPool;->_minThreads:I

    if-ge v0, v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lorg/mortbay/thread/BoundedThreadPool;->newThread(Ljava/lang/Runnable;)Lorg/mortbay/thread/BoundedThreadPool$PoolThread;

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
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-super {p0}, Lorg/mortbay/component/AbstractLifeCycle;->doStop()V

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x64

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lorg/mortbay/thread/BoundedThreadPool;->_lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lorg/mortbay/thread/BoundedThreadPool;->_threads:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Thread;

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    goto :goto_1

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Ljava/lang/Thread;->yield()V

    iget-object v1, p0, Lorg/mortbay/thread/BoundedThreadPool;->_threads:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_2

    :cond_1
    mul-int/lit8 v1, v0, 0x64

    int-to-long v1, v1

    :try_start_1
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :cond_2
    :goto_2
    iget-object v0, p0, Lorg/mortbay/thread/BoundedThreadPool;->_threads:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_3

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Lorg/mortbay/thread/BoundedThreadPool;->_threads:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, " threads could not be stopped"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/mortbay/log/Log;->warn(Ljava/lang/String;)V

    :cond_3
    iget-object v0, p0, Lorg/mortbay/thread/BoundedThreadPool;->_joinLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object p0, p0, Lorg/mortbay/thread/BoundedThreadPool;->_joinLock:Ljava/lang/Object;

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

.method public getIdleThreads()I
    .locals 0

    iget-object p0, p0, Lorg/mortbay/thread/BoundedThreadPool;->_idle:Ljava/util/List;

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

    iget p0, p0, Lorg/mortbay/thread/BoundedThreadPool;->_lowThreads:I

    return p0
.end method

.method public getMaxIdleTimeMs()I
    .locals 0

    iget p0, p0, Lorg/mortbay/thread/BoundedThreadPool;->_maxIdleTimeMs:I

    return p0
.end method

.method public getMaxThreads()I
    .locals 0

    iget p0, p0, Lorg/mortbay/thread/BoundedThreadPool;->_maxThreads:I

    return p0
.end method

.method public getMinThreads()I
    .locals 0

    iget p0, p0, Lorg/mortbay/thread/BoundedThreadPool;->_minThreads:I

    return p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/thread/BoundedThreadPool;->_name:Ljava/lang/String;

    return-object p0
.end method

.method public getQueueSize()I
    .locals 1

    iget-object v0, p0, Lorg/mortbay/thread/BoundedThreadPool;->_lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lorg/mortbay/thread/BoundedThreadPool;->_queue:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getThreads()I
    .locals 0

    iget-object p0, p0, Lorg/mortbay/thread/BoundedThreadPool;->_threads:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result p0

    return p0
.end method

.method public getThreadsPriority()I
    .locals 0

    iget p0, p0, Lorg/mortbay/thread/BoundedThreadPool;->_priority:I

    return p0
.end method

.method public isDaemon()Z
    .locals 0

    iget-boolean p0, p0, Lorg/mortbay/thread/BoundedThreadPool;->_daemon:Z

    return p0
.end method

.method public isLowOnThreads()Z
    .locals 2

    iget-object v0, p0, Lorg/mortbay/thread/BoundedThreadPool;->_lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/mortbay/thread/BoundedThreadPool;->_queue:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget p0, p0, Lorg/mortbay/thread/BoundedThreadPool;->_lowThreads:I

    if-le v1, p0, :cond_0

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

.method public join()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    iget-object v0, p0, Lorg/mortbay/thread/BoundedThreadPool;->_joinLock:Ljava/lang/Object;

    monitor-enter v0

    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lorg/mortbay/component/AbstractLifeCycle;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/mortbay/thread/BoundedThreadPool;->_joinLock:Ljava/lang/Object;

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

    const-wide/16 v0, 0xa

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

.method public newThread(Ljava/lang/Runnable;)Lorg/mortbay/thread/BoundedThreadPool$PoolThread;
    .locals 4

    iget-object v0, p0, Lorg/mortbay/thread/BoundedThreadPool;->_lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    new-instance v1, Lorg/mortbay/thread/BoundedThreadPool$PoolThread;

    invoke-direct {v1, p0, p1}, Lorg/mortbay/thread/BoundedThreadPool$PoolThread;-><init>(Lorg/mortbay/thread/BoundedThreadPool;Ljava/lang/Runnable;)V

    iget-object p1, p0, Lorg/mortbay/thread/BoundedThreadPool;->_threads:Ljava/util/Set;

    invoke-interface {p1, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Lorg/mortbay/thread/BoundedThreadPool;->_name:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "-"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v2, p0, Lorg/mortbay/thread/BoundedThreadPool;->_id:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/mortbay/thread/BoundedThreadPool;->_id:I

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setDaemon(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/mortbay/thread/BoundedThreadPool;->_daemon:Z

    return-void
.end method

.method public setLowThreads(I)V
    .locals 0

    iput p1, p0, Lorg/mortbay/thread/BoundedThreadPool;->_lowThreads:I

    return-void
.end method

.method public setMaxIdleTimeMs(I)V
    .locals 0

    iput p1, p0, Lorg/mortbay/thread/BoundedThreadPool;->_maxIdleTimeMs:I

    return-void
.end method

.method public setMaxThreads(I)V
    .locals 1

    invoke-virtual {p0}, Lorg/mortbay/component/AbstractLifeCycle;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lorg/mortbay/thread/BoundedThreadPool;->_minThreads:I

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "!minThreads<maxThreads"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    iput p1, p0, Lorg/mortbay/thread/BoundedThreadPool;->_maxThreads:I

    return-void
.end method

.method public setMinThreads(I)V
    .locals 2

    invoke-virtual {p0}, Lorg/mortbay/component/AbstractLifeCycle;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_1

    if-lez p1, :cond_0

    iget v0, p0, Lorg/mortbay/thread/BoundedThreadPool;->_maxThreads:I

    if-gt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "!0<=minThreads<maxThreads"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    iput p1, p0, Lorg/mortbay/thread/BoundedThreadPool;->_minThreads:I

    iget-object p1, p0, Lorg/mortbay/thread/BoundedThreadPool;->_lock:Ljava/lang/Object;

    monitor-enter p1

    :goto_1
    :try_start_0
    invoke-virtual {p0}, Lorg/mortbay/component/AbstractLifeCycle;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/mortbay/thread/BoundedThreadPool;->_threads:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    iget v1, p0, Lorg/mortbay/thread/BoundedThreadPool;->_minThreads:I

    if-ge v0, v1, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/mortbay/thread/BoundedThreadPool;->newThread(Ljava/lang/Runnable;)Lorg/mortbay/thread/BoundedThreadPool$PoolThread;

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

    iput-object p1, p0, Lorg/mortbay/thread/BoundedThreadPool;->_name:Ljava/lang/String;

    return-void
.end method

.method public setThreadsPriority(I)V
    .locals 0

    iput p1, p0, Lorg/mortbay/thread/BoundedThreadPool;->_priority:I

    return-void
.end method

.method public stopJob(Ljava/lang/Thread;Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    return-void
.end method
