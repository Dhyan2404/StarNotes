.class public Lorg/mortbay/thread/BoundedThreadPool$PoolThread;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mortbay/thread/BoundedThreadPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PoolThread"
.end annotation


# instance fields
.field public e:Ljava/lang/Runnable;

.field public final synthetic f:Lorg/mortbay/thread/BoundedThreadPool;


# direct methods
.method public constructor <init>(Lorg/mortbay/thread/BoundedThreadPool;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lorg/mortbay/thread/BoundedThreadPool$PoolThread;->f:Lorg/mortbay/thread/BoundedThreadPool;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lorg/mortbay/thread/BoundedThreadPool$PoolThread;->e:Ljava/lang/Runnable;

    .line 3
    invoke-static {p1}, Lorg/mortbay/thread/BoundedThreadPool;->access$000(Lorg/mortbay/thread/BoundedThreadPool;)Z

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 4
    iget p1, p1, Lorg/mortbay/thread/BoundedThreadPool;->_priority:I

    invoke-virtual {p0, p1}, Ljava/lang/Thread;->setPriority(I)V

    return-void
.end method

.method public constructor <init>(Lorg/mortbay/thread/BoundedThreadPool;Ljava/lang/Runnable;)V
    .locals 1

    .line 5
    iput-object p1, p0, Lorg/mortbay/thread/BoundedThreadPool$PoolThread;->f:Lorg/mortbay/thread/BoundedThreadPool;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lorg/mortbay/thread/BoundedThreadPool$PoolThread;->e:Ljava/lang/Runnable;

    .line 7
    invoke-static {p1}, Lorg/mortbay/thread/BoundedThreadPool;->access$000(Lorg/mortbay/thread/BoundedThreadPool;)Z

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 8
    iget p1, p1, Lorg/mortbay/thread/BoundedThreadPool;->_priority:I

    invoke-virtual {p0, p1}, Ljava/lang/Thread;->setPriority(I)V

    .line 9
    iput-object p2, p0, Lorg/mortbay/thread/BoundedThreadPool$PoolThread;->e:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Runnable;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/mortbay/thread/BoundedThreadPool$PoolThread;->e:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lorg/mortbay/thread/BoundedThreadPool$PoolThread;->e:Ljava/lang/Runnable;

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    monitor-exit p0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public run()V
    .locals 9

    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_b

    :try_start_1
    iget-object v0, p0, Lorg/mortbay/thread/BoundedThreadPool$PoolThread;->e:Ljava/lang/Runnable;

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/mortbay/thread/BoundedThreadPool$PoolThread;->e:Ljava/lang/Runnable;

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_a

    :goto_0
    :try_start_2
    iget-object v2, p0, Lorg/mortbay/thread/BoundedThreadPool$PoolThread;->f:Lorg/mortbay/thread/BoundedThreadPool;

    invoke-virtual {v2}, Lorg/mortbay/component/AbstractLifeCycle;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_6

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    move-object v0, v1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lorg/mortbay/thread/BoundedThreadPool$PoolThread;->f:Lorg/mortbay/thread/BoundedThreadPool;

    invoke-static {v2}, Lorg/mortbay/thread/BoundedThreadPool;->access$100(Lorg/mortbay/thread/BoundedThreadPool;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_b

    :try_start_3
    iget-object v3, p0, Lorg/mortbay/thread/BoundedThreadPool$PoolThread;->f:Lorg/mortbay/thread/BoundedThreadPool;

    invoke-static {v3}, Lorg/mortbay/thread/BoundedThreadPool;->access$200(Lorg/mortbay/thread/BoundedThreadPool;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    if-lez v3, :cond_1

    iget-object v0, p0, Lorg/mortbay/thread/BoundedThreadPool$PoolThread;->f:Lorg/mortbay/thread/BoundedThreadPool;

    invoke-static {v0}, Lorg/mortbay/thread/BoundedThreadPool;->access$200(Lorg/mortbay/thread/BoundedThreadPool;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    monitor-exit v2

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lorg/mortbay/thread/BoundedThreadPool$PoolThread;->f:Lorg/mortbay/thread/BoundedThreadPool;

    invoke-static {v3, v4}, Lorg/mortbay/thread/BoundedThreadPool;->access$302(Lorg/mortbay/thread/BoundedThreadPool;Z)Z

    iget-object v3, p0, Lorg/mortbay/thread/BoundedThreadPool$PoolThread;->f:Lorg/mortbay/thread/BoundedThreadPool;

    invoke-static {v3}, Lorg/mortbay/thread/BoundedThreadPool;->access$400(Lorg/mortbay/thread/BoundedThreadPool;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    iget-object v4, p0, Lorg/mortbay/thread/BoundedThreadPool$PoolThread;->f:Lorg/mortbay/thread/BoundedThreadPool;

    invoke-static {v4}, Lorg/mortbay/thread/BoundedThreadPool;->access$500(Lorg/mortbay/thread/BoundedThreadPool;)I

    move-result v4

    if-gt v3, v4, :cond_2

    iget-object v3, p0, Lorg/mortbay/thread/BoundedThreadPool$PoolThread;->f:Lorg/mortbay/thread/BoundedThreadPool;

    invoke-static {v3}, Lorg/mortbay/thread/BoundedThreadPool;->access$600(Lorg/mortbay/thread/BoundedThreadPool;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_4

    iget-object v3, p0, Lorg/mortbay/thread/BoundedThreadPool$PoolThread;->f:Lorg/mortbay/thread/BoundedThreadPool;

    invoke-static {v3}, Lorg/mortbay/thread/BoundedThreadPool;->access$400(Lorg/mortbay/thread/BoundedThreadPool;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    iget-object v4, p0, Lorg/mortbay/thread/BoundedThreadPool$PoolThread;->f:Lorg/mortbay/thread/BoundedThreadPool;

    invoke-static {v4}, Lorg/mortbay/thread/BoundedThreadPool;->access$700(Lorg/mortbay/thread/BoundedThreadPool;)I

    move-result v4

    if-le v3, v4, :cond_4

    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-object v5, p0, Lorg/mortbay/thread/BoundedThreadPool$PoolThread;->f:Lorg/mortbay/thread/BoundedThreadPool;

    invoke-static {v5}, Lorg/mortbay/thread/BoundedThreadPool;->access$800(Lorg/mortbay/thread/BoundedThreadPool;)J

    move-result-wide v5

    sub-long v5, v3, v5

    iget-object v7, p0, Lorg/mortbay/thread/BoundedThreadPool$PoolThread;->f:Lorg/mortbay/thread/BoundedThreadPool;

    invoke-virtual {v7}, Lorg/mortbay/thread/BoundedThreadPool;->getMaxIdleTimeMs()I

    move-result v7

    int-to-long v7, v7

    cmp-long v5, v5, v7

    if-lez v5, :cond_4

    iget-object v0, p0, Lorg/mortbay/thread/BoundedThreadPool$PoolThread;->f:Lorg/mortbay/thread/BoundedThreadPool;

    invoke-static {v0, v3, v4}, Lorg/mortbay/thread/BoundedThreadPool;->access$802(Lorg/mortbay/thread/BoundedThreadPool;J)J

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_7

    iget-object v0, p0, Lorg/mortbay/thread/BoundedThreadPool$PoolThread;->f:Lorg/mortbay/thread/BoundedThreadPool;

    invoke-static {v0}, Lorg/mortbay/thread/BoundedThreadPool;->access$100(Lorg/mortbay/thread/BoundedThreadPool;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_4
    iget-object v1, p0, Lorg/mortbay/thread/BoundedThreadPool$PoolThread;->f:Lorg/mortbay/thread/BoundedThreadPool;

    invoke-static {v1}, Lorg/mortbay/thread/BoundedThreadPool;->access$400(Lorg/mortbay/thread/BoundedThreadPool;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    monitor-enter p0

    :try_start_5
    iget-object v0, p0, Lorg/mortbay/thread/BoundedThreadPool$PoolThread;->e:Ljava/lang/Runnable;

    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v0, :cond_3

    iget-object v1, p0, Lorg/mortbay/thread/BoundedThreadPool$PoolThread;->f:Lorg/mortbay/thread/BoundedThreadPool;

    invoke-virtual {v1}, Lorg/mortbay/component/AbstractLifeCycle;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object p0, p0, Lorg/mortbay/thread/BoundedThreadPool$PoolThread;->f:Lorg/mortbay/thread/BoundedThreadPool;

    invoke-virtual {p0, v0}, Lorg/mortbay/thread/BoundedThreadPool;->dispatch(Ljava/lang/Runnable;)Z

    :cond_3
    return-void

    :catchall_0
    move-exception v0

    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v0

    :catchall_1
    move-exception p0

    :try_start_7
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw p0

    :cond_4
    :try_start_8
    iget-object v3, p0, Lorg/mortbay/thread/BoundedThreadPool$PoolThread;->f:Lorg/mortbay/thread/BoundedThreadPool;

    invoke-static {v3}, Lorg/mortbay/thread/BoundedThreadPool;->access$600(Lorg/mortbay/thread/BoundedThreadPool;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_7

    :try_start_9
    monitor-enter p0
    :try_end_9
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    :try_start_a
    iget-object v2, p0, Lorg/mortbay/thread/BoundedThreadPool$PoolThread;->e:Ljava/lang/Runnable;

    if-nez v2, :cond_5

    iget-object v2, p0, Lorg/mortbay/thread/BoundedThreadPool$PoolThread;->f:Lorg/mortbay/thread/BoundedThreadPool;

    invoke-virtual {v2}, Lorg/mortbay/thread/BoundedThreadPool;->getMaxIdleTimeMs()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {p0, v2, v3}, Ljava/lang/Object;->wait(J)V

    :cond_5
    iget-object v0, p0, Lorg/mortbay/thread/BoundedThreadPool$PoolThread;->e:Ljava/lang/Runnable;

    iput-object v1, p0, Lorg/mortbay/thread/BoundedThreadPool$PoolThread;->e:Ljava/lang/Runnable;

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    :try_start_b
    iget-object v2, p0, Lorg/mortbay/thread/BoundedThreadPool$PoolThread;->f:Lorg/mortbay/thread/BoundedThreadPool;

    invoke-static {v2}, Lorg/mortbay/thread/BoundedThreadPool;->access$100(Lorg/mortbay/thread/BoundedThreadPool;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_b

    :try_start_c
    iget-object v3, p0, Lorg/mortbay/thread/BoundedThreadPool$PoolThread;->f:Lorg/mortbay/thread/BoundedThreadPool;

    invoke-static {v3}, Lorg/mortbay/thread/BoundedThreadPool;->access$600(Lorg/mortbay/thread/BoundedThreadPool;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    monitor-exit v2

    goto/16 :goto_0

    :catchall_2
    move-exception v0

    monitor-exit v2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    :try_start_d
    throw v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_b

    :catchall_3
    move-exception v2

    :try_start_e
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    :try_start_f
    throw v2
    :try_end_f
    .catch Ljava/lang/InterruptedException; {:try_start_f .. :try_end_f} :catch_0
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    :catchall_4
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v2

    :try_start_10
    invoke-static {v2}, Lorg/mortbay/log/Log;->ignore(Ljava/lang/Throwable;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    :try_start_11
    iget-object v2, p0, Lorg/mortbay/thread/BoundedThreadPool$PoolThread;->f:Lorg/mortbay/thread/BoundedThreadPool;

    invoke-static {v2}, Lorg/mortbay/thread/BoundedThreadPool;->access$100(Lorg/mortbay/thread/BoundedThreadPool;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_b

    :try_start_12
    iget-object v3, p0, Lorg/mortbay/thread/BoundedThreadPool$PoolThread;->f:Lorg/mortbay/thread/BoundedThreadPool;

    invoke-static {v3}, Lorg/mortbay/thread/BoundedThreadPool;->access$600(Lorg/mortbay/thread/BoundedThreadPool;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    monitor-exit v2

    goto/16 :goto_0

    :catchall_5
    move-exception v0

    monitor-exit v2
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_5

    :try_start_13
    throw v0

    :goto_1
    iget-object v1, p0, Lorg/mortbay/thread/BoundedThreadPool$PoolThread;->f:Lorg/mortbay/thread/BoundedThreadPool;

    invoke-static {v1}, Lorg/mortbay/thread/BoundedThreadPool;->access$100(Lorg/mortbay/thread/BoundedThreadPool;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_b

    :try_start_14
    iget-object v2, p0, Lorg/mortbay/thread/BoundedThreadPool$PoolThread;->f:Lorg/mortbay/thread/BoundedThreadPool;

    invoke-static {v2}, Lorg/mortbay/thread/BoundedThreadPool;->access$600(Lorg/mortbay/thread/BoundedThreadPool;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_6

    :try_start_15
    throw v0
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_b

    :catchall_6
    move-exception v0

    :try_start_16
    monitor-exit v1
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_6

    :try_start_17
    throw v0
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_b

    :catchall_7
    move-exception v0

    :try_start_18
    monitor-exit v2
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_7

    :try_start_19
    throw v0
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_b

    :cond_6
    iget-object v0, p0, Lorg/mortbay/thread/BoundedThreadPool$PoolThread;->f:Lorg/mortbay/thread/BoundedThreadPool;

    invoke-static {v0}, Lorg/mortbay/thread/BoundedThreadPool;->access$100(Lorg/mortbay/thread/BoundedThreadPool;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_1a
    iget-object v1, p0, Lorg/mortbay/thread/BoundedThreadPool$PoolThread;->f:Lorg/mortbay/thread/BoundedThreadPool;

    invoke-static {v1}, Lorg/mortbay/thread/BoundedThreadPool;->access$400(Lorg/mortbay/thread/BoundedThreadPool;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_9

    monitor-enter p0

    :try_start_1b
    iget-object v0, p0, Lorg/mortbay/thread/BoundedThreadPool$PoolThread;->e:Ljava/lang/Runnable;

    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_8

    if-eqz v0, :cond_7

    iget-object v1, p0, Lorg/mortbay/thread/BoundedThreadPool$PoolThread;->f:Lorg/mortbay/thread/BoundedThreadPool;

    invoke-virtual {v1}, Lorg/mortbay/component/AbstractLifeCycle;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object p0, p0, Lorg/mortbay/thread/BoundedThreadPool$PoolThread;->f:Lorg/mortbay/thread/BoundedThreadPool;

    invoke-virtual {p0, v0}, Lorg/mortbay/thread/BoundedThreadPool;->dispatch(Ljava/lang/Runnable;)Z

    :cond_7
    return-void

    :catchall_8
    move-exception v0

    :try_start_1c
    monitor-exit p0
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_8

    throw v0

    :catchall_9
    move-exception p0

    :try_start_1d
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_9

    throw p0

    :catchall_a
    move-exception v0

    :try_start_1e
    monitor-exit p0
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_a

    :try_start_1f
    throw v0
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_b

    :catchall_b
    move-exception v0

    iget-object v1, p0, Lorg/mortbay/thread/BoundedThreadPool$PoolThread;->f:Lorg/mortbay/thread/BoundedThreadPool;

    invoke-static {v1}, Lorg/mortbay/thread/BoundedThreadPool;->access$100(Lorg/mortbay/thread/BoundedThreadPool;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_20
    iget-object v2, p0, Lorg/mortbay/thread/BoundedThreadPool$PoolThread;->f:Lorg/mortbay/thread/BoundedThreadPool;

    invoke-static {v2}, Lorg/mortbay/thread/BoundedThreadPool;->access$400(Lorg/mortbay/thread/BoundedThreadPool;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_d

    monitor-enter p0

    :try_start_21
    iget-object v1, p0, Lorg/mortbay/thread/BoundedThreadPool$PoolThread;->e:Ljava/lang/Runnable;

    monitor-exit p0
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_c

    if-eqz v1, :cond_8

    iget-object v2, p0, Lorg/mortbay/thread/BoundedThreadPool$PoolThread;->f:Lorg/mortbay/thread/BoundedThreadPool;

    invoke-virtual {v2}, Lorg/mortbay/component/AbstractLifeCycle;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object p0, p0, Lorg/mortbay/thread/BoundedThreadPool$PoolThread;->f:Lorg/mortbay/thread/BoundedThreadPool;

    invoke-virtual {p0, v1}, Lorg/mortbay/thread/BoundedThreadPool;->dispatch(Ljava/lang/Runnable;)Z

    :cond_8
    throw v0

    :catchall_c
    move-exception v0

    :try_start_22
    monitor-exit p0
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_c

    throw v0

    :catchall_d
    move-exception p0

    :try_start_23
    monitor-exit v1
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_d

    throw p0
.end method
