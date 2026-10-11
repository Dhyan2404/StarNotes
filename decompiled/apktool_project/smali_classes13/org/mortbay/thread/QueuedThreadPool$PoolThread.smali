.class public Lorg/mortbay/thread/QueuedThreadPool$PoolThread;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mortbay/thread/QueuedThreadPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PoolThread"
.end annotation


# instance fields
.field public e:Ljava/lang/Runnable;

.field public final synthetic f:Lorg/mortbay/thread/QueuedThreadPool;


# direct methods
.method public constructor <init>(Lorg/mortbay/thread/QueuedThreadPool;)V
    .locals 1

    iput-object p1, p0, Lorg/mortbay/thread/QueuedThreadPool$PoolThread;->f:Lorg/mortbay/thread/QueuedThreadPool;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/mortbay/thread/QueuedThreadPool$PoolThread;->e:Ljava/lang/Runnable;

    invoke-static {p1}, Lorg/mortbay/thread/QueuedThreadPool;->access$100(Lorg/mortbay/thread/QueuedThreadPool;)Z

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/Thread;->setDaemon(Z)V

    invoke-static {p1}, Lorg/mortbay/thread/QueuedThreadPool;->access$200(Lorg/mortbay/thread/QueuedThreadPool;)I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/Thread;->setPriority(I)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Runnable;)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lorg/mortbay/thread/QueuedThreadPool$PoolThread;->e:Ljava/lang/Runnable;

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public run()V
    .locals 10

    const/4 v0, 0x0

    const/4 v1, 0x0

    move v3, v0

    move-object v2, v1

    :goto_0
    :try_start_0
    iget-object v4, p0, Lorg/mortbay/thread/QueuedThreadPool$PoolThread;->f:Lorg/mortbay/thread/QueuedThreadPool;

    invoke-virtual {v4}, Lorg/mortbay/component/AbstractLifeCycle;->isRunning()Z

    move-result v4

    if-eqz v4, :cond_8

    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    move v3, v0

    :cond_0
    iget-object v2, p0, Lorg/mortbay/thread/QueuedThreadPool$PoolThread;->f:Lorg/mortbay/thread/QueuedThreadPool;

    invoke-static {v2}, Lorg/mortbay/thread/QueuedThreadPool;->access$300(Lorg/mortbay/thread/QueuedThreadPool;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_8

    :try_start_1
    iget-object v4, p0, Lorg/mortbay/thread/QueuedThreadPool$PoolThread;->f:Lorg/mortbay/thread/QueuedThreadPool;

    invoke-static {v4}, Lorg/mortbay/thread/QueuedThreadPool;->access$400(Lorg/mortbay/thread/QueuedThreadPool;)I

    move-result v4

    if-lez v4, :cond_2

    iget-object v4, p0, Lorg/mortbay/thread/QueuedThreadPool$PoolThread;->f:Lorg/mortbay/thread/QueuedThreadPool;

    invoke-static {v4}, Lorg/mortbay/thread/QueuedThreadPool;->access$410(Lorg/mortbay/thread/QueuedThreadPool;)I

    iget-object v4, p0, Lorg/mortbay/thread/QueuedThreadPool$PoolThread;->f:Lorg/mortbay/thread/QueuedThreadPool;

    invoke-static {v4}, Lorg/mortbay/thread/QueuedThreadPool;->access$500(Lorg/mortbay/thread/QueuedThreadPool;)[Ljava/lang/Runnable;

    move-result-object v4

    iget-object v5, p0, Lorg/mortbay/thread/QueuedThreadPool$PoolThread;->f:Lorg/mortbay/thread/QueuedThreadPool;

    invoke-static {v5}, Lorg/mortbay/thread/QueuedThreadPool;->access$600(Lorg/mortbay/thread/QueuedThreadPool;)I

    move-result v5

    aget-object v4, v4, v5

    iget-object v5, p0, Lorg/mortbay/thread/QueuedThreadPool$PoolThread;->f:Lorg/mortbay/thread/QueuedThreadPool;

    invoke-static {v5}, Lorg/mortbay/thread/QueuedThreadPool;->access$500(Lorg/mortbay/thread/QueuedThreadPool;)[Ljava/lang/Runnable;

    move-result-object v5

    iget-object v6, p0, Lorg/mortbay/thread/QueuedThreadPool$PoolThread;->f:Lorg/mortbay/thread/QueuedThreadPool;

    invoke-static {v6}, Lorg/mortbay/thread/QueuedThreadPool;->access$608(Lorg/mortbay/thread/QueuedThreadPool;)I

    move-result v6

    aput-object v1, v5, v6

    iget-object v5, p0, Lorg/mortbay/thread/QueuedThreadPool$PoolThread;->f:Lorg/mortbay/thread/QueuedThreadPool;

    invoke-static {v5}, Lorg/mortbay/thread/QueuedThreadPool;->access$600(Lorg/mortbay/thread/QueuedThreadPool;)I

    move-result v5

    iget-object v6, p0, Lorg/mortbay/thread/QueuedThreadPool$PoolThread;->f:Lorg/mortbay/thread/QueuedThreadPool;

    invoke-static {v6}, Lorg/mortbay/thread/QueuedThreadPool;->access$500(Lorg/mortbay/thread/QueuedThreadPool;)[Ljava/lang/Runnable;

    move-result-object v6

    array-length v6, v6

    if-ne v5, v6, :cond_1

    iget-object v5, p0, Lorg/mortbay/thread/QueuedThreadPool$PoolThread;->f:Lorg/mortbay/thread/QueuedThreadPool;

    invoke-static {v5, v0}, Lorg/mortbay/thread/QueuedThreadPool;->access$602(Lorg/mortbay/thread/QueuedThreadPool;I)I

    :cond_1
    monitor-exit v2

    move-object v2, v4

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lorg/mortbay/thread/QueuedThreadPool$PoolThread;->f:Lorg/mortbay/thread/QueuedThreadPool;

    invoke-static {v4}, Lorg/mortbay/thread/QueuedThreadPool;->access$700(Lorg/mortbay/thread/QueuedThreadPool;)Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v4

    iget-object v5, p0, Lorg/mortbay/thread/QueuedThreadPool$PoolThread;->f:Lorg/mortbay/thread/QueuedThreadPool;

    invoke-static {v5}, Lorg/mortbay/thread/QueuedThreadPool;->access$800(Lorg/mortbay/thread/QueuedThreadPool;)I

    move-result v5

    if-le v4, v5, :cond_5

    iget-object v5, p0, Lorg/mortbay/thread/QueuedThreadPool$PoolThread;->f:Lorg/mortbay/thread/QueuedThreadPool;

    invoke-static {v5}, Lorg/mortbay/thread/QueuedThreadPool;->access$900(Lorg/mortbay/thread/QueuedThreadPool;)I

    move-result v5

    if-gt v4, v5, :cond_3

    iget-object v4, p0, Lorg/mortbay/thread/QueuedThreadPool$PoolThread;->f:Lorg/mortbay/thread/QueuedThreadPool;

    invoke-static {v4}, Lorg/mortbay/thread/QueuedThreadPool;->access$1000(Lorg/mortbay/thread/QueuedThreadPool;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    iget-object v5, p0, Lorg/mortbay/thread/QueuedThreadPool$PoolThread;->f:Lorg/mortbay/thread/QueuedThreadPool;

    invoke-static {v5}, Lorg/mortbay/thread/QueuedThreadPool;->access$1100(Lorg/mortbay/thread/QueuedThreadPool;)I

    move-result v5

    if-le v4, v5, :cond_5

    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v6, p0, Lorg/mortbay/thread/QueuedThreadPool$PoolThread;->f:Lorg/mortbay/thread/QueuedThreadPool;

    invoke-static {v6}, Lorg/mortbay/thread/QueuedThreadPool;->access$1200(Lorg/mortbay/thread/QueuedThreadPool;)J

    move-result-wide v6

    sub-long v6, v4, v6

    iget-object v8, p0, Lorg/mortbay/thread/QueuedThreadPool$PoolThread;->f:Lorg/mortbay/thread/QueuedThreadPool;

    invoke-virtual {v8}, Lorg/mortbay/thread/QueuedThreadPool;->getMaxIdleTimeMs()I

    move-result v8

    int-to-long v8, v8

    cmp-long v6, v6, v8

    if-lez v6, :cond_5

    iget-object v0, p0, Lorg/mortbay/thread/QueuedThreadPool$PoolThread;->f:Lorg/mortbay/thread/QueuedThreadPool;

    invoke-static {v0, v4, v5}, Lorg/mortbay/thread/QueuedThreadPool;->access$1202(Lorg/mortbay/thread/QueuedThreadPool;J)J

    iget-object v0, p0, Lorg/mortbay/thread/QueuedThreadPool$PoolThread;->f:Lorg/mortbay/thread/QueuedThreadPool;

    invoke-static {v0}, Lorg/mortbay/thread/QueuedThreadPool;->access$1000(Lorg/mortbay/thread/QueuedThreadPool;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    iget-object v0, p0, Lorg/mortbay/thread/QueuedThreadPool$PoolThread;->f:Lorg/mortbay/thread/QueuedThreadPool;

    invoke-static {v0}, Lorg/mortbay/thread/QueuedThreadPool;->access$300(Lorg/mortbay/thread/QueuedThreadPool;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_2
    iget-object v1, p0, Lorg/mortbay/thread/QueuedThreadPool$PoolThread;->f:Lorg/mortbay/thread/QueuedThreadPool;

    invoke-static {v1}, Lorg/mortbay/thread/QueuedThreadPool;->access$1000(Lorg/mortbay/thread/QueuedThreadPool;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    iget-object v0, p0, Lorg/mortbay/thread/QueuedThreadPool$PoolThread;->f:Lorg/mortbay/thread/QueuedThreadPool;

    invoke-static {v0}, Lorg/mortbay/thread/QueuedThreadPool;->access$1300(Lorg/mortbay/thread/QueuedThreadPool;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lorg/mortbay/thread/QueuedThreadPool$PoolThread;->f:Lorg/mortbay/thread/QueuedThreadPool;

    invoke-static {v0}, Lorg/mortbay/thread/QueuedThreadPool;->access$700(Lorg/mortbay/thread/QueuedThreadPool;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-enter p0

    :try_start_4
    iget-object v0, p0, Lorg/mortbay/thread/QueuedThreadPool$PoolThread;->e:Ljava/lang/Runnable;

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v0, :cond_4

    iget-object p0, p0, Lorg/mortbay/thread/QueuedThreadPool$PoolThread;->f:Lorg/mortbay/thread/QueuedThreadPool;

    invoke-virtual {p0, v0}, Lorg/mortbay/thread/QueuedThreadPool;->dispatch(Ljava/lang/Runnable;)Z

    :cond_4
    return-void

    :catchall_0
    move-exception v0

    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v0

    :catchall_1
    move-exception p0

    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw p0

    :catchall_2
    move-exception p0

    :try_start_7
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    throw p0

    :cond_5
    if-nez v3, :cond_6

    :try_start_8
    iget-object v3, p0, Lorg/mortbay/thread/QueuedThreadPool$PoolThread;->f:Lorg/mortbay/thread/QueuedThreadPool;

    invoke-static {v3}, Lorg/mortbay/thread/QueuedThreadPool;->access$1000(Lorg/mortbay/thread/QueuedThreadPool;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x1

    :cond_6
    monitor-exit v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    :try_start_9
    monitor-enter p0
    :try_end_9
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_8

    :try_start_a
    iget-object v2, p0, Lorg/mortbay/thread/QueuedThreadPool$PoolThread;->e:Ljava/lang/Runnable;

    if-nez v2, :cond_7

    iget-object v2, p0, Lorg/mortbay/thread/QueuedThreadPool$PoolThread;->f:Lorg/mortbay/thread/QueuedThreadPool;

    invoke-virtual {v2}, Lorg/mortbay/thread/QueuedThreadPool;->getMaxIdleTimeMs()I

    move-result v2

    int-to-long v4, v2

    invoke-virtual {p0, v4, v5}, Ljava/lang/Object;->wait(J)V

    :cond_7
    iget-object v2, p0, Lorg/mortbay/thread/QueuedThreadPool$PoolThread;->e:Ljava/lang/Runnable;

    iput-object v1, p0, Lorg/mortbay/thread/QueuedThreadPool$PoolThread;->e:Ljava/lang/Runnable;

    monitor-exit p0

    goto/16 :goto_0

    :catchall_3
    move-exception v0

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    :try_start_b
    throw v0
    :try_end_b
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_8

    :catchall_4
    move-exception v0

    :try_start_c
    monitor-exit v2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    :try_start_d
    throw v0
    :try_end_d
    .catch Ljava/lang/InterruptedException; {:try_start_d .. :try_end_d} :catch_0
    .catchall {:try_start_d .. :try_end_d} :catchall_8

    :cond_8
    iget-object v0, p0, Lorg/mortbay/thread/QueuedThreadPool$PoolThread;->f:Lorg/mortbay/thread/QueuedThreadPool;

    invoke-static {v0}, Lorg/mortbay/thread/QueuedThreadPool;->access$300(Lorg/mortbay/thread/QueuedThreadPool;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_e
    iget-object v1, p0, Lorg/mortbay/thread/QueuedThreadPool$PoolThread;->f:Lorg/mortbay/thread/QueuedThreadPool;

    invoke-static {v1}, Lorg/mortbay/thread/QueuedThreadPool;->access$1000(Lorg/mortbay/thread/QueuedThreadPool;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_7

    iget-object v0, p0, Lorg/mortbay/thread/QueuedThreadPool$PoolThread;->f:Lorg/mortbay/thread/QueuedThreadPool;

    invoke-static {v0}, Lorg/mortbay/thread/QueuedThreadPool;->access$1300(Lorg/mortbay/thread/QueuedThreadPool;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_f
    iget-object v0, p0, Lorg/mortbay/thread/QueuedThreadPool$PoolThread;->f:Lorg/mortbay/thread/QueuedThreadPool;

    invoke-static {v0}, Lorg/mortbay/thread/QueuedThreadPool;->access$700(Lorg/mortbay/thread/QueuedThreadPool;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_6

    monitor-enter p0

    :try_start_10
    iget-object v0, p0, Lorg/mortbay/thread/QueuedThreadPool$PoolThread;->e:Ljava/lang/Runnable;

    monitor-exit p0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_5

    if-eqz v0, :cond_9

    :goto_1
    iget-object p0, p0, Lorg/mortbay/thread/QueuedThreadPool$PoolThread;->f:Lorg/mortbay/thread/QueuedThreadPool;

    invoke-virtual {p0, v0}, Lorg/mortbay/thread/QueuedThreadPool;->dispatch(Ljava/lang/Runnable;)Z

    goto :goto_2

    :catchall_5
    move-exception v0

    :try_start_11
    monitor-exit p0
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_5

    throw v0

    :catchall_6
    move-exception p0

    :try_start_12
    monitor-exit v1
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_6

    throw p0

    :catchall_7
    move-exception p0

    :try_start_13
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_7

    throw p0

    :catchall_8
    move-exception v0

    goto :goto_3

    :catch_0
    move-exception v0

    :try_start_14
    invoke-static {v0}, Lorg/mortbay/log/Log;->ignore(Ljava/lang/Throwable;)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_8

    iget-object v0, p0, Lorg/mortbay/thread/QueuedThreadPool$PoolThread;->f:Lorg/mortbay/thread/QueuedThreadPool;

    invoke-static {v0}, Lorg/mortbay/thread/QueuedThreadPool;->access$300(Lorg/mortbay/thread/QueuedThreadPool;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_15
    iget-object v1, p0, Lorg/mortbay/thread/QueuedThreadPool$PoolThread;->f:Lorg/mortbay/thread/QueuedThreadPool;

    invoke-static {v1}, Lorg/mortbay/thread/QueuedThreadPool;->access$1000(Lorg/mortbay/thread/QueuedThreadPool;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_b

    iget-object v0, p0, Lorg/mortbay/thread/QueuedThreadPool$PoolThread;->f:Lorg/mortbay/thread/QueuedThreadPool;

    invoke-static {v0}, Lorg/mortbay/thread/QueuedThreadPool;->access$1300(Lorg/mortbay/thread/QueuedThreadPool;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_16
    iget-object v0, p0, Lorg/mortbay/thread/QueuedThreadPool$PoolThread;->f:Lorg/mortbay/thread/QueuedThreadPool;

    invoke-static {v0}, Lorg/mortbay/thread/QueuedThreadPool;->access$700(Lorg/mortbay/thread/QueuedThreadPool;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_a

    monitor-enter p0

    :try_start_17
    iget-object v0, p0, Lorg/mortbay/thread/QueuedThreadPool$PoolThread;->e:Ljava/lang/Runnable;

    monitor-exit p0

    if-eqz v0, :cond_9

    goto :goto_1

    :cond_9
    :goto_2
    return-void

    :catchall_9
    move-exception v0

    monitor-exit p0
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_9

    throw v0

    :catchall_a
    move-exception p0

    :try_start_18
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_a

    throw p0

    :catchall_b
    move-exception p0

    :try_start_19
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_b

    throw p0

    :goto_3
    iget-object v1, p0, Lorg/mortbay/thread/QueuedThreadPool$PoolThread;->f:Lorg/mortbay/thread/QueuedThreadPool;

    invoke-static {v1}, Lorg/mortbay/thread/QueuedThreadPool;->access$300(Lorg/mortbay/thread/QueuedThreadPool;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_1a
    iget-object v2, p0, Lorg/mortbay/thread/QueuedThreadPool$PoolThread;->f:Lorg/mortbay/thread/QueuedThreadPool;

    invoke-static {v2}, Lorg/mortbay/thread/QueuedThreadPool;->access$1000(Lorg/mortbay/thread/QueuedThreadPool;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_e

    iget-object v1, p0, Lorg/mortbay/thread/QueuedThreadPool$PoolThread;->f:Lorg/mortbay/thread/QueuedThreadPool;

    invoke-static {v1}, Lorg/mortbay/thread/QueuedThreadPool;->access$1300(Lorg/mortbay/thread/QueuedThreadPool;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    :try_start_1b
    iget-object v1, p0, Lorg/mortbay/thread/QueuedThreadPool$PoolThread;->f:Lorg/mortbay/thread/QueuedThreadPool;

    invoke-static {v1}, Lorg/mortbay/thread/QueuedThreadPool;->access$700(Lorg/mortbay/thread/QueuedThreadPool;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    monitor-exit v2
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_d

    monitor-enter p0

    :try_start_1c
    iget-object v1, p0, Lorg/mortbay/thread/QueuedThreadPool$PoolThread;->e:Ljava/lang/Runnable;

    monitor-exit p0
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_c

    if-eqz v1, :cond_a

    iget-object p0, p0, Lorg/mortbay/thread/QueuedThreadPool$PoolThread;->f:Lorg/mortbay/thread/QueuedThreadPool;

    invoke-virtual {p0, v1}, Lorg/mortbay/thread/QueuedThreadPool;->dispatch(Ljava/lang/Runnable;)Z

    :cond_a
    throw v0

    :catchall_c
    move-exception v0

    :try_start_1d
    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_c

    throw v0

    :catchall_d
    move-exception p0

    :try_start_1e
    monitor-exit v2
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_d

    throw p0

    :catchall_e
    move-exception p0

    :try_start_1f
    monitor-exit v1
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_e

    throw p0
.end method
