.class public Lorg/mortbay/io/nio/SelectorManager$SelectSet;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mortbay/io/nio/SelectorManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SelectSet"
.end annotation


# instance fields
.field public transient a:I

.field public transient b:[Ljava/util/List;

.field public transient c:Lorg/mortbay/thread/Timeout;

.field public transient d:I

.field public transient e:Lorg/mortbay/thread/Timeout;

.field public transient f:Ljava/nio/channels/Selector;

.field public transient g:I

.field public volatile h:Z

.field public transient i:I

.field public j:I

.field public k:J

.field public l:J

.field public m:Z

.field public n:Ljava/nio/channels/SelectionKey;

.field public o:I

.field public p:J

.field public q:I

.field public r:I

.field public s:I

.field public t:I

.field public final synthetic u:Lorg/mortbay/io/nio/SelectorManager;


# direct methods
.method public constructor <init>(Lorg/mortbay/io/nio/SelectorManager;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iput-object p1, p0, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->u:Lorg/mortbay/io/nio/SelectorManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->g:I

    new-instance p2, Lorg/mortbay/thread/Timeout;

    invoke-direct {p2, p0}, Lorg/mortbay/thread/Timeout;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->c:Lorg/mortbay/thread/Timeout;

    invoke-virtual {p1}, Lorg/mortbay/io/nio/SelectorManager;->getMaxIdleTime()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lorg/mortbay/thread/Timeout;->setDuration(J)V

    new-instance p1, Lorg/mortbay/thread/Timeout;

    invoke-direct {p1, p0}, Lorg/mortbay/thread/Timeout;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->e:Lorg/mortbay/thread/Timeout;

    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/mortbay/thread/Timeout;->setDuration(J)V

    invoke-static {}, Ljava/nio/channels/Selector;->open()Ljava/nio/channels/Selector;

    move-result-object p1

    iput-object p1, p0, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->f:Ljava/nio/channels/Selector;

    const/4 p1, 0x2

    new-array p1, p1, [Ljava/util/ArrayList;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    aput-object p2, p1, v0

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x1

    aput-object p2, p1, v1

    iput-object p1, p0, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->b:[Ljava/util/List;

    iput v0, p0, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->a:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->k:J

    invoke-static {}, Lorg/mortbay/io/nio/SelectorManager;->f()I

    move-result v0

    int-to-long v0, v0

    add-long/2addr p1, v0

    iput-wide p1, p0, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->l:J

    iget-wide p1, p0, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->k:J

    const-wide/32 v0, 0xea60

    add-long/2addr p1, v0

    iput-wide p1, p0, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->p:J

    return-void
.end method


# virtual methods
.method public a()Ljava/nio/channels/Selector;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->f:Ljava/nio/channels/Selector;

    return-object p0
.end method

.method public addChange(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->b:[Ljava/util/List;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->b:[Ljava/util/List;

    iget p0, p0, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->a:I

    aget-object p0, v1, p0

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public addChange(Ljava/nio/channels/SelectableChannel;Ljava/lang/Object;)V
    .locals 1

    if-nez p2, :cond_0

    .line 4
    invoke-virtual {p0, p1}, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->addChange(Ljava/lang/Object;)V

    goto :goto_0

    .line 5
    :cond_0
    instance-of v0, p2, Lorg/mortbay/io/EndPoint;

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {p0, p2}, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->addChange(Ljava/lang/Object;)V

    goto :goto_0

    .line 7
    :cond_1
    new-instance v0, Lorg/mortbay/io/nio/SelectorManager$a;

    invoke-direct {v0, p1, p2}, Lorg/mortbay/io/nio/SelectorManager$a;-><init>(Ljava/nio/channels/SelectableChannel;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->addChange(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public b()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->wakeup()V

    iget-boolean v0, p0, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->h:Z

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->f:Ljava/nio/channels/Selector;

    invoke-virtual {v1}, Ljava/nio/channels/Selector;->keys()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/channels/SelectionKey;

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Ljava/nio/channels/SelectionKey;->attachment()Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Lorg/mortbay/io/EndPoint;

    if-eqz v2, :cond_1

    check-cast v1, Lorg/mortbay/io/EndPoint;

    :try_start_0
    invoke-interface {v1}, Lorg/mortbay/io/EndPoint;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    invoke-static {v1}, Lorg/mortbay/log/Log;->ignore(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_3
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->h:Z

    :goto_2
    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->wakeup()V

    iget-boolean v0, p0, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->h:Z

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->c:Lorg/mortbay/thread/Timeout;

    invoke-virtual {v0}, Lorg/mortbay/thread/Timeout;->cancelAll()V

    iget-object v0, p0, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->e:Lorg/mortbay/thread/Timeout;

    invoke-virtual {v0}, Lorg/mortbay/thread/Timeout;->cancelAll()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v0, p0, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->f:Ljava/nio/channels/Selector;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    :catch_1
    move-exception v0

    :try_start_3
    invoke-static {v0}, Lorg/mortbay/log/Log;->ignore(Ljava/lang/Throwable;)V

    :cond_5
    :goto_3
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->f:Ljava/nio/channels/Selector;

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method public cancelIdle(Lorg/mortbay/thread/Timeout$Task;)V
    .locals 0

    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lorg/mortbay/thread/Timeout$Task;->cancel()V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public doSelect()V
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    :try_start_0
    iget-object v3, v1, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->b:[Ljava/util/List;
    :try_end_0
    .catch Ljava/nio/channels/ClosedSelectorException; {:try_start_0 .. :try_end_0} :catch_a
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_0 .. :try_end_0} :catch_9
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    :try_start_1
    monitor-enter v3
    :try_end_1
    .catch Ljava/nio/channels/ClosedSelectorException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_1 .. :try_end_1} :catch_9
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    :try_start_2
    iget-object v4, v1, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->b:[Ljava/util/List;

    iget v5, v1, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->a:I

    aget-object v4, v4, v5

    const/4 v6, 0x1

    if-nez v5, :cond_0

    move v5, v6

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    iput v5, v1, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->a:I

    iput-boolean v6, v1, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->h:Z

    iget-object v5, v1, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->f:Ljava/nio/channels/Selector;

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    const/4 v3, 0x0

    :goto_1
    :try_start_3
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    if-ge v3, v7, :cond_c

    :try_start_4
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    instance-of v8, v7, Lorg/mortbay/io/EndPoint;

    if-eqz v8, :cond_1

    check-cast v7, Lorg/mortbay/io/nio/SelectChannelEndPoint;

    invoke-virtual {v7}, Lorg/mortbay/io/nio/SelectChannelEndPoint;->b()V

    goto/16 :goto_2

    :cond_1
    instance-of v8, v7, Ljava/lang/Runnable;

    if-eqz v8, :cond_2

    iget-object v8, v1, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->u:Lorg/mortbay/io/nio/SelectorManager;

    check-cast v7, Ljava/lang/Runnable;

    invoke-virtual {v8, v7}, Lorg/mortbay/io/nio/SelectorManager;->dispatch(Ljava/lang/Runnable;)Z

    goto/16 :goto_2

    :cond_2
    instance-of v8, v7, Lorg/mortbay/io/nio/SelectorManager$a;

    const/16 v9, 0x8

    if-eqz v8, :cond_4

    check-cast v7, Lorg/mortbay/io/nio/SelectorManager$a;

    iget-object v8, v7, Lorg/mortbay/io/nio/SelectorManager$a;->a:Ljava/nio/channels/SelectableChannel;

    iget-object v7, v7, Lorg/mortbay/io/nio/SelectorManager$a;->b:Ljava/lang/Object;

    instance-of v10, v8, Ljava/nio/channels/SocketChannel;

    if-eqz v10, :cond_3

    move-object v10, v8

    check-cast v10, Ljava/nio/channels/SocketChannel;

    invoke-virtual {v10}, Ljava/nio/channels/SocketChannel;->isConnected()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-virtual {v8, v5, v6, v7}, Ljava/nio/channels/SelectableChannel;->register(Ljava/nio/channels/Selector;ILjava/lang/Object;)Ljava/nio/channels/SelectionKey;

    move-result-object v7

    iget-object v9, v1, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->u:Lorg/mortbay/io/nio/SelectorManager;

    check-cast v8, Ljava/nio/channels/SocketChannel;

    invoke-virtual {v9, v8, v1, v7}, Lorg/mortbay/io/nio/SelectorManager;->newEndPoint(Ljava/nio/channels/SocketChannel;Lorg/mortbay/io/nio/SelectorManager$SelectSet;Ljava/nio/channels/SelectionKey;)Lorg/mortbay/io/nio/SelectChannelEndPoint;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/nio/channels/SelectionKey;->attach(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v8}, Lorg/mortbay/io/nio/SelectChannelEndPoint;->a()V

    goto/16 :goto_2

    :cond_3
    invoke-virtual {v8}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->isOpen()Z

    move-result v10

    if-eqz v10, :cond_b

    invoke-virtual {v8, v5, v9, v7}, Ljava/nio/channels/SelectableChannel;->register(Ljava/nio/channels/Selector;ILjava/lang/Object;)Ljava/nio/channels/SelectionKey;

    goto/16 :goto_2

    :cond_4
    instance-of v8, v7, Ljava/nio/channels/SocketChannel;

    if-eqz v8, :cond_6

    check-cast v7, Ljava/nio/channels/SocketChannel;

    invoke-virtual {v7}, Ljava/nio/channels/SocketChannel;->isConnected()Z

    move-result v8

    const/4 v10, 0x0

    if-eqz v8, :cond_5

    invoke-virtual {v7, v5, v6, v10}, Ljava/nio/channels/SelectableChannel;->register(Ljava/nio/channels/Selector;ILjava/lang/Object;)Ljava/nio/channels/SelectionKey;

    move-result-object v8

    iget-object v9, v1, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->u:Lorg/mortbay/io/nio/SelectorManager;

    invoke-virtual {v9, v7, v1, v8}, Lorg/mortbay/io/nio/SelectorManager;->newEndPoint(Ljava/nio/channels/SocketChannel;Lorg/mortbay/io/nio/SelectorManager$SelectSet;Ljava/nio/channels/SelectionKey;)Lorg/mortbay/io/nio/SelectChannelEndPoint;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/nio/channels/SelectionKey;->attach(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v7}, Lorg/mortbay/io/nio/SelectChannelEndPoint;->a()V

    goto :goto_2

    :cond_5
    invoke-virtual {v7}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->isOpen()Z

    move-result v8

    if-eqz v8, :cond_b

    invoke-virtual {v7, v5, v9, v10}, Ljava/nio/channels/SelectableChannel;->register(Ljava/nio/channels/Selector;ILjava/lang/Object;)Ljava/nio/channels/SelectionKey;

    goto :goto_2

    :cond_6
    instance-of v8, v7, Ljava/nio/channels/ServerSocketChannel;

    if-eqz v8, :cond_7

    check-cast v7, Ljava/nio/channels/ServerSocketChannel;

    invoke-virtual/range {p0 .. p0}, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->a()Ljava/nio/channels/Selector;

    move-result-object v8

    const/16 v9, 0x10

    invoke-virtual {v7, v8, v9}, Ljava/nio/channels/SelectableChannel;->register(Ljava/nio/channels/Selector;I)Ljava/nio/channels/SelectionKey;

    goto :goto_2

    :cond_7
    instance-of v8, v7, Lorg/mortbay/io/nio/SelectorManager$b;

    if-eqz v8, :cond_8

    check-cast v7, Lorg/mortbay/io/nio/SelectorManager$b;

    invoke-interface {v7}, Lorg/mortbay/io/nio/SelectorManager$b;->run()V

    goto :goto_2

    :cond_8
    new-instance v8, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v8, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Error; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :catch_0
    move-exception v0

    move-object v7, v0

    :try_start_5
    iget-object v8, v1, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->u:Lorg/mortbay/io/nio/SelectorManager;

    invoke-virtual {v8}, Lorg/mortbay/component/AbstractLifeCycle;->isRunning()Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-static {v7}, Lorg/mortbay/log/Log;->warn(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_9
    invoke-static {v7}, Lorg/mortbay/log/Log;->debug(Ljava/lang/Throwable;)V

    goto :goto_2

    :catch_1
    move-exception v0

    move-object v7, v0

    iget-object v8, v1, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->u:Lorg/mortbay/io/nio/SelectorManager;

    invoke-virtual {v8}, Lorg/mortbay/component/AbstractLifeCycle;->isRunning()Z

    move-result v8

    if-eqz v8, :cond_a

    invoke-static {v7}, Lorg/mortbay/log/Log;->warn(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_a
    invoke-static {v7}, Lorg/mortbay/log/Log;->debug(Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :cond_b
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    :cond_c
    :try_start_6
    invoke-interface {v4}, Ljava/util/List;->clear()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    monitor-enter p0
    :try_end_6
    .catch Ljava/nio/channels/ClosedSelectorException; {:try_start_6 .. :try_end_6} :catch_8
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_6 .. :try_end_6} :catch_9
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    :try_start_7
    iget-object v7, v1, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->c:Lorg/mortbay/thread/Timeout;

    invoke-virtual {v7, v3, v4}, Lorg/mortbay/thread/Timeout;->setNow(J)V

    iget-object v7, v1, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->e:Lorg/mortbay/thread/Timeout;

    invoke-virtual {v7, v3, v4}, Lorg/mortbay/thread/Timeout;->setNow(J)V

    iget-object v7, v1, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->u:Lorg/mortbay/io/nio/SelectorManager;

    invoke-static {v7}, Lorg/mortbay/io/nio/SelectorManager;->g(Lorg/mortbay/io/nio/SelectorManager;)J

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-lez v7, :cond_d

    invoke-virtual {v5}, Ljava/nio/channels/Selector;->keys()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->size()I

    move-result v7

    int-to-long v7, v7

    iget-object v11, v1, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->u:Lorg/mortbay/io/nio/SelectorManager;

    invoke-static {v11}, Lorg/mortbay/io/nio/SelectorManager;->g(Lorg/mortbay/io/nio/SelectorManager;)J

    move-result-wide v11

    cmp-long v7, v7, v11

    if-lez v7, :cond_d

    iget-object v7, v1, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->c:Lorg/mortbay/thread/Timeout;

    iget-object v8, v1, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->u:Lorg/mortbay/io/nio/SelectorManager;

    invoke-static {v8}, Lorg/mortbay/io/nio/SelectorManager;->h(Lorg/mortbay/io/nio/SelectorManager;)J

    move-result-wide v11

    invoke-virtual {v7, v11, v12}, Lorg/mortbay/thread/Timeout;->setDuration(J)V

    goto :goto_3

    :cond_d
    iget-object v7, v1, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->c:Lorg/mortbay/thread/Timeout;

    iget-object v8, v1, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->u:Lorg/mortbay/io/nio/SelectorManager;

    invoke-static {v8}, Lorg/mortbay/io/nio/SelectorManager;->i(Lorg/mortbay/io/nio/SelectorManager;)J

    move-result-wide v11

    invoke-virtual {v7, v11, v12}, Lorg/mortbay/thread/Timeout;->setDuration(J)V

    :goto_3
    iget-object v7, v1, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->c:Lorg/mortbay/thread/Timeout;

    invoke-virtual {v7}, Lorg/mortbay/thread/Timeout;->getTimeToNext()J

    move-result-wide v7

    iget-object v11, v1, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->e:Lorg/mortbay/thread/Timeout;

    invoke-virtual {v11}, Lorg/mortbay/thread/Timeout;->getTimeToNext()J

    move-result-wide v11

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    cmp-long v13, v7, v9

    const-wide/16 v14, 0x3e8

    if-ltz v13, :cond_e

    cmp-long v13, v14, v7

    if-lez v13, :cond_e

    goto :goto_4

    :cond_e
    move-wide v7, v14

    :goto_4
    cmp-long v13, v7, v9

    if-lez v13, :cond_f

    cmp-long v9, v11, v9

    if-ltz v9, :cond_f

    cmp-long v9, v7, v11

    if-lez v9, :cond_f

    goto :goto_5

    :cond_f
    move-wide v11, v7

    :goto_5
    const-wide/16 v7, 0x2

    cmp-long v9, v11, v7

    if-lez v9, :cond_27

    :try_start_8
    iget-boolean v9, v1, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->m:Z
    :try_end_8
    .catch Ljava/nio/channels/ClosedSelectorException; {:try_start_8 .. :try_end_8} :catch_8
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_8 .. :try_end_8} :catch_9
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    if-eqz v9, :cond_10

    :try_start_9
    invoke-static {}, Lorg/mortbay/io/nio/SelectorManager;->j()I

    move-result v9

    int-to-long v9, v9

    invoke-static {v9, v10}, Ljava/lang/Thread;->sleep(J)V
    :try_end_9
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/nio/channels/ClosedSelectorException; {:try_start_9 .. :try_end_9} :catch_8
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_9 .. :try_end_9} :catch_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    goto :goto_6

    :catch_2
    move-exception v0

    move-object v9, v0

    :try_start_a
    invoke-static {v9}, Lorg/mortbay/log/Log;->ignore(Ljava/lang/Throwable;)V

    :cond_10
    :goto_6
    invoke-virtual {v5, v11, v12}, Ljava/nio/channels/Selector;->select(J)I

    move-result v9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    iget-object v10, v1, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->c:Lorg/mortbay/thread/Timeout;

    invoke-virtual {v10, v13, v14}, Lorg/mortbay/thread/Timeout;->setNow(J)V

    iget-object v10, v1, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->e:Lorg/mortbay/thread/Timeout;

    invoke-virtual {v10, v13, v14}, Lorg/mortbay/thread/Timeout;->setNow(J)V

    iget v10, v1, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->j:I

    add-int/2addr v10, v6

    iput v10, v1, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->j:I

    iget-wide v7, v1, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->l:J

    cmp-long v7, v13, v7

    if-lez v7, :cond_13

    invoke-static {}, Lorg/mortbay/io/nio/SelectorManager;->f()I

    move-result v7

    mul-int/2addr v10, v7

    int-to-long v7, v10

    move-wide/from16 v16, v3

    iget-wide v2, v1, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->k:J

    sub-long v2, v13, v2

    div-long/2addr v7, v2

    long-to-int v2, v7

    iput v2, v1, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->j:I

    invoke-static {}, Lorg/mortbay/io/nio/SelectorManager;->k()I

    move-result v3

    if-le v2, v3, :cond_11

    move v2, v6

    goto :goto_7

    :cond_11
    const/4 v2, 0x0

    :goto_7
    iput-boolean v2, v1, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->m:Z

    if-eqz v2, :cond_12

    iget v2, v1, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->q:I

    add-int/2addr v2, v6

    iput v2, v1, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->q:I

    :cond_12
    const/4 v2, 0x0

    iput v2, v1, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->j:I

    iput v2, v1, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->i:I

    iput-wide v13, v1, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->k:J

    invoke-static {}, Lorg/mortbay/io/nio/SelectorManager;->f()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v2, v13

    iput-wide v2, v1, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->l:J

    goto :goto_8

    :cond_13
    move-wide/from16 v16, v3

    :goto_8
    iget-wide v2, v1, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->p:J

    cmp-long v2, v13, v2

    if-lez v2, :cond_18

    iget v2, v1, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->q:I

    if-lez v2, :cond_14

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v3, " Busy selector - injecting delay "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v3, v1, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->q:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v3, " times"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/mortbay/log/Log;->info(Ljava/lang/String;)V

    :cond_14
    iget v2, v1, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->t:I

    if-lez v2, :cond_15

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v3, " JVM BUG(s) - injecting delay"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v3, v1, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->t:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v3, " times"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/mortbay/log/Log;->info(Ljava/lang/String;)V

    :cond_15
    iget v2, v1, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->s:I

    if-lez v2, :cond_16

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v3, " JVM BUG(s) - recreating selector "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v3, v1, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->s:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v3, " times, canceled keys "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v3, v1, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->r:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v3, " times"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/mortbay/log/Log;->info(Ljava/lang/String;)V

    goto :goto_9

    :cond_16
    invoke-static {}, Lorg/mortbay/log/Log;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_17

    iget v2, v1, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->r:I

    if-lez v2, :cond_17

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v3, " JVM BUG(s) - canceled keys "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v3, v1, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->r:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v3, " times"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/mortbay/log/Log;->info(Ljava/lang/String;)V

    :cond_17
    :goto_9
    const/4 v2, 0x0

    iput v2, v1, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->q:I

    iput v2, v1, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->t:I

    iput v2, v1, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->s:I

    iput v2, v1, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->r:I

    const-wide/32 v2, 0xea60

    add-long/2addr v2, v13

    iput-wide v2, v1, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->p:J

    :cond_18
    if-nez v9, :cond_23

    const-wide/16 v2, 0xa

    cmp-long v2, v11, v2

    if-lez v2, :cond_23

    sub-long v2, v13, v16

    const-wide/16 v7, 0x2

    div-long/2addr v11, v7

    cmp-long v2, v2, v11

    if-gez v2, :cond_23

    iget v2, v1, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->i:I

    add-int/2addr v2, v6

    iput v2, v1, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->i:I

    invoke-static {}, Lorg/mortbay/io/nio/SelectorManager;->l()I

    move-result v3
    :try_end_a
    .catch Ljava/nio/channels/ClosedSelectorException; {:try_start_a .. :try_end_a} :catch_8
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_a .. :try_end_a} :catch_9
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    if-le v2, v3, :cond_1a

    :try_start_b
    iget v2, v1, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->i:I

    invoke-static {}, Lorg/mortbay/io/nio/SelectorManager;->l()I

    move-result v3

    add-int/2addr v3, v6

    if-ne v2, v3, :cond_19

    iget v2, v1, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->t:I

    add-int/2addr v2, v6

    iput v2, v1, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->t:I

    :cond_19
    invoke-static {}, Lorg/mortbay/io/nio/SelectorManager;->j()I

    move-result v2

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_b
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_b} :catch_3
    .catch Ljava/nio/channels/ClosedSelectorException; {:try_start_b .. :try_end_b} :catch_8
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_b .. :try_end_b} :catch_9
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    goto/16 :goto_e

    :catch_3
    move-exception v0

    move-object v2, v0

    :try_start_c
    invoke-static {v2}, Lorg/mortbay/log/Log;->ignore(Ljava/lang/Throwable;)V

    goto/16 :goto_e

    :cond_1a
    iget v2, v1, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->i:I

    invoke-static {}, Lorg/mortbay/io/nio/SelectorManager;->l()I

    move-result v3

    if-ne v2, v3, :cond_1f

    monitor-enter p0
    :try_end_c
    .catch Ljava/nio/channels/ClosedSelectorException; {:try_start_c .. :try_end_c} :catch_8
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_c .. :try_end_c} :catch_9
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    :try_start_d
    iget v2, v1, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->s:I

    add-int/2addr v2, v6

    iput v2, v1, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->s:I

    invoke-static {}, Ljava/nio/channels/Selector;->open()Ljava/nio/channels/Selector;

    move-result-object v2

    iget-object v3, v1, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->f:Ljava/nio/channels/Selector;

    invoke-virtual {v3}, Ljava/nio/channels/Selector;->keys()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1b
    :goto_a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/nio/channels/SelectionKey;

    invoke-virtual {v4}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v5

    if-eqz v5, :cond_1b

    invoke-virtual {v4}, Ljava/nio/channels/SelectionKey;->interestOps()I

    move-result v5

    if-nez v5, :cond_1c

    goto :goto_a

    :cond_1c
    invoke-virtual {v4}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object v5

    invoke-virtual {v4}, Ljava/nio/channels/SelectionKey;->attachment()Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_1d

    invoke-virtual {v1, v5}, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->addChange(Ljava/lang/Object;)V

    goto :goto_a

    :cond_1d
    invoke-virtual {v1, v5, v4}, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->addChange(Ljava/nio/channels/SelectableChannel;Ljava/lang/Object;)V

    goto :goto_a

    :cond_1e
    iget-object v3, v1, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->f:Ljava/nio/channels/Selector;

    iput-object v2, v1, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->f:Ljava/nio/channels/Selector;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    :try_start_e
    invoke-virtual {v3}, Ljava/nio/channels/Selector;->close()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_4
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    goto :goto_b

    :catch_4
    move-exception v0

    move-object v2, v0

    :try_start_f
    invoke-static {v2}, Lorg/mortbay/log/Log;->warn(Ljava/lang/Throwable;)V

    :goto_b
    monitor-exit p0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->h:Z

    return-void

    :catchall_0
    move-exception v0

    move-object v2, v0

    :try_start_10
    monitor-exit p0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    :try_start_11
    throw v2

    :cond_1f
    iget v2, v1, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->i:I

    rem-int/lit8 v2, v2, 0x20

    const/16 v3, 0x1f

    if-ne v2, v3, :cond_26

    invoke-virtual {v5}, Ljava/nio/channels/Selector;->keys()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    :cond_20
    :goto_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_21

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/nio/channels/SelectionKey;

    invoke-virtual {v4}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v5

    if-eqz v5, :cond_20

    invoke-virtual {v4}, Ljava/nio/channels/SelectionKey;->interestOps()I

    move-result v5

    if-nez v5, :cond_20

    invoke-virtual {v4}, Ljava/nio/channels/SelectionKey;->cancel()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    :cond_21
    if-lez v3, :cond_22

    iget v2, v1, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->r:I

    add-int/2addr v2, v6

    iput v2, v1, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->r:I
    :try_end_11
    .catch Ljava/nio/channels/ClosedSelectorException; {:try_start_11 .. :try_end_11} :catch_8
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_11 .. :try_end_11} :catch_9
    .catchall {:try_start_11 .. :try_end_11} :catchall_5

    :cond_22
    const/4 v2, 0x0

    iput-boolean v2, v1, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->h:Z

    return-void

    :cond_23
    :try_start_12
    invoke-static {}, Lorg/mortbay/io/nio/SelectorManager;->m()I

    move-result v2

    if-lez v2, :cond_26

    if-ne v9, v6, :cond_26

    iget v2, v1, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->j:I

    invoke-static {}, Lorg/mortbay/io/nio/SelectorManager;->k()I

    move-result v3

    if-le v2, v3, :cond_26

    invoke-virtual {v5}, Ljava/nio/channels/Selector;->selectedKeys()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/nio/channels/SelectionKey;

    iget-object v3, v1, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->n:Ljava/nio/channels/SelectionKey;

    if-ne v2, v3, :cond_24

    iget v3, v1, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->o:I

    add-int/2addr v3, v6

    iput v3, v1, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->o:I

    invoke-static {}, Lorg/mortbay/io/nio/SelectorManager;->m()I

    move-result v4

    if-le v3, v4, :cond_25

    invoke-virtual {v2}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object v3

    instance-of v3, v3, Ljava/nio/channels/ServerSocketChannel;

    if-nez v3, :cond_25

    invoke-virtual {v2}, Ljava/nio/channels/SelectionKey;->attachment()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/mortbay/io/nio/SelectChannelEndPoint;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "Busy Key "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v7, " "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/mortbay/log/Log;->warn(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/nio/channels/SelectionKey;->cancel()V

    if-eqz v3, :cond_25

    iget-object v4, v1, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->u:Lorg/mortbay/io/nio/SelectorManager;

    new-instance v7, Lorg/mortbay/io/nio/a;

    invoke-direct {v7, v1, v3}, Lorg/mortbay/io/nio/a;-><init>(Lorg/mortbay/io/nio/SelectorManager$SelectSet;Lorg/mortbay/io/nio/SelectChannelEndPoint;)V

    invoke-virtual {v4, v7}, Lorg/mortbay/io/nio/SelectorManager;->dispatch(Ljava/lang/Runnable;)Z

    goto :goto_d

    :cond_24
    const/4 v3, 0x0

    iput v3, v1, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->o:I

    :cond_25
    :goto_d
    iput-object v2, v1, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->n:Ljava/nio/channels/SelectionKey;

    :cond_26
    :goto_e
    move-wide v3, v13

    goto :goto_f

    :cond_27
    move-wide/from16 v16, v3

    invoke-virtual {v5}, Ljava/nio/channels/Selector;->selectNow()I

    iget v2, v1, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->j:I

    add-int/2addr v2, v6

    iput v2, v1, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->j:I

    move-wide/from16 v3, v16

    :goto_f
    iget-object v2, v1, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->f:Ljava/nio/channels/Selector;

    if-eqz v2, :cond_33

    invoke-virtual {v5}, Ljava/nio/channels/Selector;->isOpen()Z

    move-result v2

    if-nez v2, :cond_28

    goto/16 :goto_14

    :cond_28
    invoke-virtual {v5}, Ljava/nio/channels/Selector;->selectedKeys()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_29
    :goto_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_32

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/nio/channels/SelectionKey;
    :try_end_12
    .catch Ljava/nio/channels/ClosedSelectorException; {:try_start_12 .. :try_end_12} :catch_8
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_12 .. :try_end_12} :catch_9
    .catchall {:try_start_12 .. :try_end_12} :catchall_5

    :try_start_13
    invoke-virtual {v7}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v8

    if-nez v8, :cond_2a

    invoke-virtual {v7}, Ljava/nio/channels/SelectionKey;->cancel()V

    invoke-virtual {v7}, Ljava/nio/channels/SelectionKey;->attachment()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/mortbay/io/nio/SelectChannelEndPoint;

    if-eqz v8, :cond_29

    invoke-virtual {v8}, Lorg/mortbay/io/nio/SelectChannelEndPoint;->b()V

    goto :goto_10

    :cond_2a
    invoke-virtual {v7}, Ljava/nio/channels/SelectionKey;->attachment()Ljava/lang/Object;

    move-result-object v8

    instance-of v9, v8, Lorg/mortbay/io/nio/SelectChannelEndPoint;

    if-eqz v9, :cond_2b

    check-cast v8, Lorg/mortbay/io/nio/SelectChannelEndPoint;

    invoke-virtual {v8}, Lorg/mortbay/io/nio/SelectChannelEndPoint;->a()V

    goto :goto_10

    :cond_2b
    invoke-virtual {v7}, Ljava/nio/channels/SelectionKey;->isAcceptable()Z

    move-result v9

    if-eqz v9, :cond_2e

    iget-object v8, v1, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->u:Lorg/mortbay/io/nio/SelectorManager;

    invoke-virtual {v8, v7}, Lorg/mortbay/io/nio/SelectorManager;->acceptChannel(Ljava/nio/channels/SelectionKey;)Ljava/nio/channels/SocketChannel;

    move-result-object v8

    if-nez v8, :cond_2c

    goto :goto_10

    :cond_2c
    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/nio/channels/SelectableChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;

    iget v9, v1, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->d:I

    add-int/2addr v9, v6

    iput v9, v1, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->d:I

    iget-object v11, v1, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->u:Lorg/mortbay/io/nio/SelectorManager;

    invoke-static {v11}, Lorg/mortbay/io/nio/SelectorManager;->n(Lorg/mortbay/io/nio/SelectorManager;)[Lorg/mortbay/io/nio/SelectorManager$SelectSet;

    move-result-object v11

    array-length v11, v11

    rem-int/2addr v9, v11

    iput v9, v1, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->d:I

    iget v11, v1, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->g:I

    if-ne v9, v11, :cond_2d

    iget-object v9, v1, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->u:Lorg/mortbay/io/nio/SelectorManager;

    invoke-static {v9}, Lorg/mortbay/io/nio/SelectorManager;->n(Lorg/mortbay/io/nio/SelectorManager;)[Lorg/mortbay/io/nio/SelectorManager$SelectSet;

    move-result-object v9

    iget v11, v1, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->d:I

    aget-object v9, v9, v11

    invoke-virtual {v9}, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->a()Ljava/nio/channels/Selector;

    move-result-object v9

    invoke-virtual {v8, v9, v6}, Ljava/nio/channels/SelectableChannel;->register(Ljava/nio/channels/Selector;I)Ljava/nio/channels/SelectionKey;

    move-result-object v9

    iget-object v11, v1, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->u:Lorg/mortbay/io/nio/SelectorManager;

    invoke-static {v11}, Lorg/mortbay/io/nio/SelectorManager;->n(Lorg/mortbay/io/nio/SelectorManager;)[Lorg/mortbay/io/nio/SelectorManager$SelectSet;

    move-result-object v12

    iget v13, v1, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->d:I

    aget-object v12, v12, v13

    invoke-virtual {v11, v8, v12, v9}, Lorg/mortbay/io/nio/SelectorManager;->newEndPoint(Ljava/nio/channels/SocketChannel;Lorg/mortbay/io/nio/SelectorManager$SelectSet;Ljava/nio/channels/SelectionKey;)Lorg/mortbay/io/nio/SelectChannelEndPoint;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/nio/channels/SelectionKey;->attach(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v8, :cond_29

    invoke-virtual {v8}, Lorg/mortbay/io/nio/SelectChannelEndPoint;->a()V

    goto :goto_10

    :cond_2d
    iget-object v9, v1, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->u:Lorg/mortbay/io/nio/SelectorManager;

    invoke-static {v9}, Lorg/mortbay/io/nio/SelectorManager;->n(Lorg/mortbay/io/nio/SelectorManager;)[Lorg/mortbay/io/nio/SelectorManager$SelectSet;

    move-result-object v9

    iget v11, v1, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->d:I

    aget-object v9, v9, v11

    invoke-virtual {v9, v8}, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->addChange(Ljava/lang/Object;)V

    iget-object v8, v1, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->u:Lorg/mortbay/io/nio/SelectorManager;

    invoke-static {v8}, Lorg/mortbay/io/nio/SelectorManager;->n(Lorg/mortbay/io/nio/SelectorManager;)[Lorg/mortbay/io/nio/SelectorManager$SelectSet;

    move-result-object v8

    iget v9, v1, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->d:I

    aget-object v8, v8, v9

    invoke-virtual {v8}, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->wakeup()V

    goto/16 :goto_10

    :cond_2e
    invoke-virtual {v7}, Ljava/nio/channels/SelectionKey;->isConnectable()Z

    move-result v9

    if-eqz v9, :cond_30

    invoke-virtual {v7}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object v9

    check-cast v9, Ljava/nio/channels/SocketChannel;
    :try_end_13
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_13 .. :try_end_13} :catch_7
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_6
    .catchall {:try_start_13 .. :try_end_13} :catchall_5

    :try_start_14
    invoke-virtual {v9}, Ljava/nio/channels/SocketChannel;->finishConnect()Z

    move-result v8
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_5
    .catchall {:try_start_14 .. :try_end_14} :catchall_1

    if-eqz v8, :cond_2f

    :try_start_15
    invoke-virtual {v7, v6}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;

    iget-object v8, v1, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->u:Lorg/mortbay/io/nio/SelectorManager;

    invoke-virtual {v8, v9, v1, v7}, Lorg/mortbay/io/nio/SelectorManager;->newEndPoint(Ljava/nio/channels/SocketChannel;Lorg/mortbay/io/nio/SelectorManager$SelectSet;Ljava/nio/channels/SelectionKey;)Lorg/mortbay/io/nio/SelectChannelEndPoint;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/nio/channels/SelectionKey;->attach(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v8}, Lorg/mortbay/io/nio/SelectChannelEndPoint;->a()V

    goto/16 :goto_10

    :cond_2f
    :goto_11
    invoke-virtual {v7}, Ljava/nio/channels/SelectionKey;->cancel()V
    :try_end_15
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_15 .. :try_end_15} :catch_7
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_6
    .catchall {:try_start_15 .. :try_end_15} :catchall_5

    goto/16 :goto_10

    :catchall_1
    move-exception v0

    move-object v8, v0

    goto :goto_12

    :catch_5
    move-exception v0

    move-object v11, v0

    :try_start_16
    iget-object v12, v1, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->u:Lorg/mortbay/io/nio/SelectorManager;

    invoke-virtual {v12, v9, v11, v8}, Lorg/mortbay/io/nio/SelectorManager;->connectionFailed(Ljava/nio/channels/SocketChannel;Ljava/lang/Throwable;Ljava/lang/Object;)V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_1

    goto :goto_11

    :goto_12
    :try_start_17
    invoke-virtual {v7}, Ljava/nio/channels/SelectionKey;->cancel()V

    throw v8

    :cond_30
    invoke-virtual {v7}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object v8

    check-cast v8, Ljava/nio/channels/SocketChannel;

    iget-object v9, v1, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->u:Lorg/mortbay/io/nio/SelectorManager;

    invoke-virtual {v9, v8, v1, v7}, Lorg/mortbay/io/nio/SelectorManager;->newEndPoint(Ljava/nio/channels/SocketChannel;Lorg/mortbay/io/nio/SelectorManager$SelectSet;Ljava/nio/channels/SelectionKey;)Lorg/mortbay/io/nio/SelectChannelEndPoint;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/nio/channels/SelectionKey;->attach(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v7}, Ljava/nio/channels/SelectionKey;->isReadable()Z

    move-result v9

    if-eqz v9, :cond_29

    invoke-virtual {v8}, Lorg/mortbay/io/nio/SelectChannelEndPoint;->a()V
    :try_end_17
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_17 .. :try_end_17} :catch_7
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_6
    .catchall {:try_start_17 .. :try_end_17} :catchall_5

    goto/16 :goto_10

    :catch_6
    move-exception v0

    move-object v8, v0

    :try_start_18
    iget-object v9, v1, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->u:Lorg/mortbay/io/nio/SelectorManager;

    invoke-virtual {v9}, Lorg/mortbay/component/AbstractLifeCycle;->isRunning()Z

    move-result v9

    if-eqz v9, :cond_31

    invoke-static {v8}, Lorg/mortbay/log/Log;->warn(Ljava/lang/Throwable;)V

    goto :goto_13

    :cond_31
    invoke-static {v8}, Lorg/mortbay/log/Log;->ignore(Ljava/lang/Throwable;)V

    :goto_13
    if-eqz v7, :cond_29

    invoke-virtual {v7}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object v8

    instance-of v8, v8, Ljava/nio/channels/ServerSocketChannel;

    if-nez v8, :cond_29

    invoke-virtual {v7}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v8

    if-eqz v8, :cond_29

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;

    invoke-virtual {v7}, Ljava/nio/channels/SelectionKey;->cancel()V

    goto/16 :goto_10

    :catch_7
    move-exception v0

    move-object v7, v0

    invoke-static {v7}, Lorg/mortbay/log/Log;->ignore(Ljava/lang/Throwable;)V

    goto/16 :goto_10

    :cond_32
    invoke-virtual {v5}, Ljava/nio/channels/Selector;->selectedKeys()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    iget-object v2, v1, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->c:Lorg/mortbay/thread/Timeout;

    invoke-virtual {v2, v3, v4}, Lorg/mortbay/thread/Timeout;->tick(J)V

    iget-object v2, v1, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->e:Lorg/mortbay/thread/Timeout;

    invoke-virtual {v2, v3, v4}, Lorg/mortbay/thread/Timeout;->tick(J)V
    :try_end_18
    .catch Ljava/nio/channels/ClosedSelectorException; {:try_start_18 .. :try_end_18} :catch_8
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_18 .. :try_end_18} :catch_9
    .catchall {:try_start_18 .. :try_end_18} :catchall_5

    const/4 v2, 0x0

    goto :goto_16

    :cond_33
    :goto_14
    const/4 v2, 0x0

    iput-boolean v2, v1, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->h:Z

    return-void

    :catchall_2
    move-exception v0

    move-object v2, v0

    :try_start_19
    monitor-exit p0
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_2

    :try_start_1a
    throw v2

    :catchall_3
    move-exception v0

    move-object v2, v0

    invoke-interface {v4}, Ljava/util/List;->clear()V

    throw v2
    :try_end_1a
    .catch Ljava/nio/channels/ClosedSelectorException; {:try_start_1a .. :try_end_1a} :catch_8
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_1a .. :try_end_1a} :catch_9
    .catchall {:try_start_1a .. :try_end_1a} :catchall_5

    :catchall_4
    move-exception v0

    move-object v2, v0

    :try_start_1b
    monitor-exit v3
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_4

    :try_start_1c
    throw v2
    :try_end_1c
    .catch Ljava/nio/channels/ClosedSelectorException; {:try_start_1c .. :try_end_1c} :catch_8
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_1c .. :try_end_1c} :catch_9
    .catchall {:try_start_1c .. :try_end_1c} :catchall_5

    :catch_8
    move-exception v0

    move-object v3, v0

    const/4 v2, 0x0

    goto :goto_15

    :catchall_5
    move-exception v0

    move-object v3, v0

    const/4 v2, 0x0

    goto :goto_18

    :catch_9
    move-exception v0

    move-object v2, v0

    :try_start_1d
    invoke-static {v2}, Lorg/mortbay/log/Log;->ignore(Ljava/lang/Throwable;)V
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_6

    const/4 v2, 0x0

    goto :goto_16

    :catchall_6
    move-exception v0

    const/4 v2, 0x0

    goto :goto_17

    :catch_a
    move-exception v0

    const/4 v2, 0x0

    move-object v3, v0

    :goto_15
    :try_start_1e
    invoke-static {v3}, Lorg/mortbay/log/Log;->warn(Ljava/lang/Throwable;)V
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_7

    :goto_16
    iput-boolean v2, v1, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->h:Z

    return-void

    :catchall_7
    move-exception v0

    :goto_17
    move-object v3, v0

    :goto_18
    iput-boolean v2, v1, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->h:Z

    throw v3
.end method

.method public getManager()Lorg/mortbay/io/nio/SelectorManager;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->u:Lorg/mortbay/io/nio/SelectorManager;

    return-object p0
.end method

.method public getNow()J
    .locals 2

    iget-object p0, p0, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->c:Lorg/mortbay/thread/Timeout;

    invoke-virtual {p0}, Lorg/mortbay/thread/Timeout;->getNow()J

    move-result-wide v0

    return-wide v0
.end method

.method public scheduleIdle(Lorg/mortbay/thread/Timeout$Task;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->c:Lorg/mortbay/thread/Timeout;

    invoke-virtual {v0}, Lorg/mortbay/thread/Timeout;->getDuration()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->c:Lorg/mortbay/thread/Timeout;

    invoke-virtual {p1, v0}, Lorg/mortbay/thread/Timeout$Task;->schedule(Lorg/mortbay/thread/Timeout;)V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public scheduleTimeout(Lorg/mortbay/thread/Timeout$Task;J)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->e:Lorg/mortbay/thread/Timeout;

    invoke-virtual {v0, p1, p2, p3}, Lorg/mortbay/thread/Timeout;->schedule(Lorg/mortbay/thread/Timeout$Task;J)V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public wakeup()V
    .locals 0

    iget-object p0, p0, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->f:Ljava/nio/channels/Selector;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/nio/channels/Selector;->wakeup()Ljava/nio/channels/Selector;

    :cond_0
    return-void
.end method
