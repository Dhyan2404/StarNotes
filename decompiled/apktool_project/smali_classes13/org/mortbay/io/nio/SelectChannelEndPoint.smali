.class public Lorg/mortbay/io/nio/SelectChannelEndPoint;
.super Lorg/mortbay/io/nio/ChannelEndPoint;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mortbay/io/nio/SelectChannelEndPoint$IdleTask;
    }
.end annotation


# instance fields
.field protected _connection:Lorg/mortbay/io/Connection;

.field protected _dispatched:Z

.field protected _interestOps:I

.field protected _key:Ljava/nio/channels/SelectionKey;

.field protected _manager:Lorg/mortbay/io/nio/SelectorManager;

.field protected _readBlocked:Z

.field protected _selectSet:Lorg/mortbay/io/nio/SelectorManager$SelectSet;

.field protected _writable:Z

.field protected _writeBlocked:Z

.field public e:Lorg/mortbay/thread/Timeout$Task;


# direct methods
.method public constructor <init>(Ljava/nio/channels/SocketChannel;Lorg/mortbay/io/nio/SelectorManager$SelectSet;Ljava/nio/channels/SelectionKey;)V
    .locals 1

    invoke-direct {p0, p1}, Lorg/mortbay/io/nio/ChannelEndPoint;-><init>(Ljava/nio/channels/ByteChannel;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/mortbay/io/nio/SelectChannelEndPoint;->_dispatched:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/mortbay/io/nio/SelectChannelEndPoint;->_writable:Z

    new-instance v0, Lorg/mortbay/io/nio/SelectChannelEndPoint$IdleTask;

    invoke-direct {v0, p0}, Lorg/mortbay/io/nio/SelectChannelEndPoint$IdleTask;-><init>(Lorg/mortbay/io/nio/SelectChannelEndPoint;)V

    iput-object v0, p0, Lorg/mortbay/io/nio/SelectChannelEndPoint;->e:Lorg/mortbay/thread/Timeout$Task;

    invoke-virtual {p2}, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->getManager()Lorg/mortbay/io/nio/SelectorManager;

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/io/nio/SelectChannelEndPoint;->_manager:Lorg/mortbay/io/nio/SelectorManager;

    iput-object p2, p0, Lorg/mortbay/io/nio/SelectChannelEndPoint;->_selectSet:Lorg/mortbay/io/nio/SelectorManager$SelectSet;

    invoke-virtual {v0, p1, p0}, Lorg/mortbay/io/nio/SelectorManager;->newConnection(Ljava/nio/channels/SocketChannel;Lorg/mortbay/io/nio/SelectChannelEndPoint;)Lorg/mortbay/io/Connection;

    move-result-object p1

    iput-object p1, p0, Lorg/mortbay/io/nio/SelectChannelEndPoint;->_connection:Lorg/mortbay/io/Connection;

    iget-object p1, p0, Lorg/mortbay/io/nio/SelectChannelEndPoint;->_manager:Lorg/mortbay/io/nio/SelectorManager;

    invoke-virtual {p1, p0}, Lorg/mortbay/io/nio/SelectorManager;->endPointOpened(Lorg/mortbay/io/nio/SelectChannelEndPoint;)V

    iput-object p3, p0, Lorg/mortbay/io/nio/SelectChannelEndPoint;->_key:Ljava/nio/channels/SelectionKey;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "dispatch failed!"

    const/4 v1, 0x1

    :try_start_0
    iget-object v2, p0, Lorg/mortbay/io/nio/SelectChannelEndPoint;->_manager:Lorg/mortbay/io/nio/SelectorManager;

    invoke-virtual {v2}, Lorg/mortbay/io/nio/SelectorManager;->isDelaySelectKeyUpdate()Z

    move-result v2

    invoke-virtual {p0, v2}, Lorg/mortbay/io/nio/SelectChannelEndPoint;->dispatch(Z)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/mortbay/io/nio/SelectChannelEndPoint;->_manager:Lorg/mortbay/io/nio/SelectorManager;

    invoke-virtual {v2, p0}, Lorg/mortbay/io/nio/SelectorManager;->dispatch(Ljava/lang/Runnable;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    if-nez v1, :cond_1

    invoke-static {v0}, Lorg/mortbay/log/Log;->warn(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/mortbay/io/nio/SelectChannelEndPoint;->undispatch()V

    :cond_1
    return-void

    :catchall_0
    move-exception v2

    if-nez v1, :cond_2

    invoke-static {v0}, Lorg/mortbay/log/Log;->warn(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/mortbay/io/nio/SelectChannelEndPoint;->undispatch()V

    :cond_2
    throw v2
.end method

.method public b()V
    .locals 4

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/mortbay/io/nio/ChannelEndPoint;->getChannel()Ljava/nio/channels/ByteChannel;

    move-result-object v0

    invoke-interface {v0}, Ljava/nio/channels/Channel;->isOpen()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_6

    iget v0, p0, Lorg/mortbay/io/nio/SelectChannelEndPoint;->_interestOps:I

    if-lez v0, :cond_4

    iget-object v0, p0, Lorg/mortbay/io/nio/SelectChannelEndPoint;->_key:Ljava/nio/channels/SelectionKey;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/mortbay/io/nio/SelectChannelEndPoint;->_key:Ljava/nio/channels/SelectionKey;

    iget v1, p0, Lorg/mortbay/io/nio/SelectChannelEndPoint;->_interestOps:I

    invoke-virtual {v0, v1}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;

    goto/16 :goto_1

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lorg/mortbay/io/nio/ChannelEndPoint;->getChannel()Ljava/nio/channels/ByteChannel;

    move-result-object v0

    check-cast v0, Ljava/nio/channels/SelectableChannel;

    invoke-virtual {v0}, Ljava/nio/channels/SelectableChannel;->isRegistered()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lorg/mortbay/io/nio/SelectChannelEndPoint;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_2
    :try_start_1
    invoke-virtual {p0}, Lorg/mortbay/io/nio/ChannelEndPoint;->getChannel()Ljava/nio/channels/ByteChannel;

    move-result-object v0

    check-cast v0, Ljava/nio/channels/SelectableChannel;

    iget-object v1, p0, Lorg/mortbay/io/nio/SelectChannelEndPoint;->_selectSet:Lorg/mortbay/io/nio/SelectorManager$SelectSet;

    invoke-virtual {v1}, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->a()Ljava/nio/channels/Selector;

    move-result-object v1

    iget v3, p0, Lorg/mortbay/io/nio/SelectChannelEndPoint;->_interestOps:I

    invoke-virtual {v0, v1, v3, p0}, Ljava/nio/channels/SelectableChannel;->register(Ljava/nio/channels/Selector;ILjava/lang/Object;)Ljava/nio/channels/SelectionKey;

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/io/nio/SelectChannelEndPoint;->_key:Ljava/nio/channels/SelectionKey;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_2
    invoke-static {v0}, Lorg/mortbay/log/Log;->ignore(Ljava/lang/Throwable;)V

    iget-object v0, p0, Lorg/mortbay/io/nio/SelectChannelEndPoint;->_key:Ljava/nio/channels/SelectionKey;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/mortbay/io/nio/SelectChannelEndPoint;->_key:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->cancel()V

    :cond_3
    invoke-virtual {p0}, Lorg/mortbay/io/nio/SelectChannelEndPoint;->cancelIdle()V

    iget-object v0, p0, Lorg/mortbay/io/nio/SelectChannelEndPoint;->_manager:Lorg/mortbay/io/nio/SelectorManager;

    invoke-virtual {v0, p0}, Lorg/mortbay/io/nio/SelectorManager;->endPointClosed(Lorg/mortbay/io/nio/SelectChannelEndPoint;)V

    iput-object v2, p0, Lorg/mortbay/io/nio/SelectChannelEndPoint;->_key:Ljava/nio/channels/SelectionKey;

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lorg/mortbay/io/nio/SelectChannelEndPoint;->_key:Ljava/nio/channels/SelectionKey;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/mortbay/io/nio/SelectChannelEndPoint;->_key:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v0, v1}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;

    goto :goto_1

    :cond_5
    iput-object v2, p0, Lorg/mortbay/io/nio/SelectChannelEndPoint;->_key:Ljava/nio/channels/SelectionKey;

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lorg/mortbay/io/nio/SelectChannelEndPoint;->_key:Ljava/nio/channels/SelectionKey;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lorg/mortbay/io/nio/SelectChannelEndPoint;->_key:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v0, v1}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;

    iget-object v0, p0, Lorg/mortbay/io/nio/SelectChannelEndPoint;->_key:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->cancel()V

    :cond_7
    invoke-virtual {p0}, Lorg/mortbay/io/nio/SelectChannelEndPoint;->cancelIdle()V

    iget-object v0, p0, Lorg/mortbay/io/nio/SelectChannelEndPoint;->_manager:Lorg/mortbay/io/nio/SelectorManager;

    invoke-virtual {v0, p0}, Lorg/mortbay/io/nio/SelectorManager;->endPointClosed(Lorg/mortbay/io/nio/SelectChannelEndPoint;)V

    iput-object v2, p0, Lorg/mortbay/io/nio/SelectChannelEndPoint;->_key:Ljava/nio/channels/SelectionKey;

    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public blockReadable(J)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/mortbay/io/nio/SelectChannelEndPoint;->_selectSet:Lorg/mortbay/io/nio/SelectorManager$SelectSet;

    invoke-virtual {v0}, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->getNow()J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v2, 0x1

    const/4 v3, 0x0

    :try_start_1
    iput-boolean v2, p0, Lorg/mortbay/io/nio/SelectChannelEndPoint;->_readBlocked:Z

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lorg/mortbay/io/nio/ChannelEndPoint;->isOpen()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-boolean v4, p0, Lorg/mortbay/io/nio/SelectChannelEndPoint;->_readBlocked:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v4, :cond_1

    :try_start_2
    invoke-virtual {p0}, Lorg/mortbay/io/nio/SelectChannelEndPoint;->c()V

    invoke-virtual {p0, p1, p2}, Ljava/lang/Object;->wait(J)V

    iget-boolean v4, p0, Lorg/mortbay/io/nio/SelectChannelEndPoint;->_readBlocked:Z

    if-eqz v4, :cond_0

    iget-object v4, p0, Lorg/mortbay/io/nio/SelectChannelEndPoint;->_selectSet:Lorg/mortbay/io/nio/SelectorManager$SelectSet;

    invoke-virtual {v4}, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->getNow()J

    move-result-wide v4
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    sub-long/2addr v4, v0

    cmp-long v4, p1, v4

    if-gez v4, :cond_0

    :try_start_3
    iput-boolean v3, p0, Lorg/mortbay/io/nio/SelectChannelEndPoint;->_readBlocked:Z

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    return v3

    :catch_0
    move-exception v4

    :try_start_4
    invoke-static {v4}, Lorg/mortbay/log/Log;->warn(Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :cond_1
    :try_start_5
    iput-boolean v3, p0, Lorg/mortbay/io/nio/SelectChannelEndPoint;->_readBlocked:Z

    monitor-exit p0

    return v2

    :catchall_0
    move-exception p1

    iput-boolean v3, p0, Lorg/mortbay/io/nio/SelectChannelEndPoint;->_readBlocked:Z

    throw p1

    :catchall_1
    move-exception p1

    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw p1
.end method

.method public blockWritable(J)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/mortbay/io/nio/SelectChannelEndPoint;->_selectSet:Lorg/mortbay/io/nio/SelectorManager$SelectSet;

    invoke-virtual {v0}, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->getNow()J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v2, 0x1

    const/4 v3, 0x0

    :try_start_1
    iput-boolean v2, p0, Lorg/mortbay/io/nio/SelectChannelEndPoint;->_writeBlocked:Z

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lorg/mortbay/io/nio/ChannelEndPoint;->isOpen()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-boolean v4, p0, Lorg/mortbay/io/nio/SelectChannelEndPoint;->_writeBlocked:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v4, :cond_1

    :try_start_2
    invoke-virtual {p0}, Lorg/mortbay/io/nio/SelectChannelEndPoint;->c()V

    invoke-virtual {p0, p1, p2}, Ljava/lang/Object;->wait(J)V

    iget-boolean v4, p0, Lorg/mortbay/io/nio/SelectChannelEndPoint;->_writeBlocked:Z

    if-eqz v4, :cond_0

    iget-object v4, p0, Lorg/mortbay/io/nio/SelectChannelEndPoint;->_selectSet:Lorg/mortbay/io/nio/SelectorManager$SelectSet;

    invoke-virtual {v4}, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->getNow()J

    move-result-wide v4
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    sub-long/2addr v4, v0

    cmp-long v4, p1, v4

    if-gez v4, :cond_0

    :try_start_3
    iput-boolean v3, p0, Lorg/mortbay/io/nio/SelectChannelEndPoint;->_writeBlocked:Z

    invoke-virtual {p0}, Lorg/mortbay/io/nio/SelectChannelEndPoint;->scheduleIdle()V

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    return v3

    :catch_0
    move-exception v4

    :try_start_4
    invoke-static {v4}, Lorg/mortbay/log/Log;->warn(Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :cond_1
    :try_start_5
    iput-boolean v3, p0, Lorg/mortbay/io/nio/SelectChannelEndPoint;->_writeBlocked:Z

    invoke-virtual {p0}, Lorg/mortbay/io/nio/SelectChannelEndPoint;->scheduleIdle()V

    monitor-exit p0

    return v2

    :catchall_0
    move-exception p1

    iput-boolean v3, p0, Lorg/mortbay/io/nio/SelectChannelEndPoint;->_writeBlocked:Z

    invoke-virtual {p0}, Lorg/mortbay/io/nio/SelectChannelEndPoint;->scheduleIdle()V

    throw p1

    :catchall_1
    move-exception p1

    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw p1
.end method

.method public final c()V
    .locals 4

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/mortbay/io/nio/ChannelEndPoint;->getChannel()Ljava/nio/channels/ByteChannel;

    move-result-object v0

    invoke-interface {v0}, Ljava/nio/channels/Channel;->isOpen()Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/mortbay/io/nio/SelectChannelEndPoint;->_key:Ljava/nio/channels/SelectionKey;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/mortbay/io/nio/SelectChannelEndPoint;->_key:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->interestOps()I

    move-result v0

    move v1, v0

    :cond_0
    iget-boolean v0, p0, Lorg/mortbay/io/nio/SelectChannelEndPoint;->_dispatched:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lorg/mortbay/io/nio/SelectChannelEndPoint;->_readBlocked:Z

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    iget-boolean v3, p0, Lorg/mortbay/io/nio/SelectChannelEndPoint;->_writable:Z

    if-eqz v3, :cond_3

    iget-boolean v3, p0, Lorg/mortbay/io/nio/SelectChannelEndPoint;->_writeBlocked:Z

    if-eqz v3, :cond_4

    :cond_3
    const/4 v2, 0x4

    :cond_4
    or-int/2addr v0, v2

    iput v0, p0, Lorg/mortbay/io/nio/SelectChannelEndPoint;->_interestOps:I

    :cond_5
    iget v0, p0, Lorg/mortbay/io/nio/SelectChannelEndPoint;->_interestOps:I

    if-ne v0, v1, :cond_6

    invoke-virtual {p0}, Lorg/mortbay/io/nio/ChannelEndPoint;->getChannel()Ljava/nio/channels/ByteChannel;

    move-result-object v0

    invoke-interface {v0}, Ljava/nio/channels/Channel;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_6

    monitor-exit p0

    return-void

    :cond_6
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lorg/mortbay/io/nio/SelectChannelEndPoint;->_selectSet:Lorg/mortbay/io/nio/SelectorManager$SelectSet;

    invoke-virtual {v0, p0}, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->addChange(Ljava/lang/Object;)V

    iget-object p0, p0, Lorg/mortbay/io/nio/SelectChannelEndPoint;->_selectSet:Lorg/mortbay/io/nio/SelectorManager$SelectSet;

    invoke-virtual {p0}, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->wakeup()V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public cancelIdle()V
    .locals 1

    iget-object v0, p0, Lorg/mortbay/io/nio/SelectChannelEndPoint;->_selectSet:Lorg/mortbay/io/nio/SelectorManager$SelectSet;

    iget-object p0, p0, Lorg/mortbay/io/nio/SelectChannelEndPoint;->e:Lorg/mortbay/thread/Timeout$Task;

    invoke-virtual {v0, p0}, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->cancelIdle(Lorg/mortbay/thread/Timeout$Task;)V

    return-void
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    invoke-super {p0}, Lorg/mortbay/io/nio/ChannelEndPoint;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-virtual {p0}, Lorg/mortbay/io/nio/SelectChannelEndPoint;->c()V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    :try_start_1
    invoke-static {v0}, Lorg/mortbay/log/Log;->ignore(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    return-void

    :goto_2
    invoke-virtual {p0}, Lorg/mortbay/io/nio/SelectChannelEndPoint;->c()V

    throw v0
.end method

.method public dispatch(Z)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/mortbay/io/nio/SelectChannelEndPoint;->_key:Ljava/nio/channels/SelectionKey;

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-boolean v0, p0, Lorg/mortbay/io/nio/SelectChannelEndPoint;->_readBlocked:Z

    if-nez v0, :cond_5

    iget-boolean v2, p0, Lorg/mortbay/io/nio/SelectChannelEndPoint;->_writeBlocked:Z

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    if-nez p1, :cond_2

    iget-object p1, p0, Lorg/mortbay/io/nio/SelectChannelEndPoint;->_key:Ljava/nio/channels/SelectionKey;

    invoke-virtual {p1, v1}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;

    :cond_2
    iget-boolean p1, p0, Lorg/mortbay/io/nio/SelectChannelEndPoint;->_dispatched:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Lorg/mortbay/io/nio/SelectChannelEndPoint;->_key:Ljava/nio/channels/SelectionKey;

    invoke-virtual {p1, v1}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;

    monitor-exit p0

    return v1

    :cond_3
    iget-object p1, p0, Lorg/mortbay/io/nio/SelectChannelEndPoint;->_key:Ljava/nio/channels/SelectionKey;

    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->readyOps()I

    move-result p1

    const/4 v0, 0x4

    and-int/2addr p1, v0

    const/4 v1, 0x1

    if-ne p1, v0, :cond_4

    iget-object p1, p0, Lorg/mortbay/io/nio/SelectChannelEndPoint;->_key:Ljava/nio/channels/SelectionKey;

    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->interestOps()I

    move-result p1

    and-int/2addr p1, v0

    if-ne p1, v0, :cond_4

    iget-object p1, p0, Lorg/mortbay/io/nio/SelectChannelEndPoint;->_key:Ljava/nio/channels/SelectionKey;

    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->interestOps()I

    move-result p1

    and-int/lit8 p1, p1, -0x5

    iput p1, p0, Lorg/mortbay/io/nio/SelectChannelEndPoint;->_interestOps:I

    iget-object v0, p0, Lorg/mortbay/io/nio/SelectChannelEndPoint;->_key:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v0, p1}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;

    iput-boolean v1, p0, Lorg/mortbay/io/nio/SelectChannelEndPoint;->_writable:Z

    :cond_4
    iput-boolean v1, p0, Lorg/mortbay/io/nio/SelectChannelEndPoint;->_dispatched:Z

    monitor-exit p0

    return v1

    :cond_5
    :goto_0
    if-eqz v0, :cond_6

    iget-object p1, p0, Lorg/mortbay/io/nio/SelectChannelEndPoint;->_key:Ljava/nio/channels/SelectionKey;

    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->isReadable()Z

    move-result p1

    if-eqz p1, :cond_6

    iput-boolean v1, p0, Lorg/mortbay/io/nio/SelectChannelEndPoint;->_readBlocked:Z

    :cond_6
    iget-boolean p1, p0, Lorg/mortbay/io/nio/SelectChannelEndPoint;->_writeBlocked:Z

    if-eqz p1, :cond_7

    iget-object p1, p0, Lorg/mortbay/io/nio/SelectChannelEndPoint;->_key:Ljava/nio/channels/SelectionKey;

    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->isWritable()Z

    move-result p1

    if-eqz p1, :cond_7

    iput-boolean v1, p0, Lorg/mortbay/io/nio/SelectChannelEndPoint;->_writeBlocked:Z

    :cond_7
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    iget-object p1, p0, Lorg/mortbay/io/nio/SelectChannelEndPoint;->_key:Ljava/nio/channels/SelectionKey;

    invoke-virtual {p1, v1}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;

    monitor-exit p0

    return v1

    :cond_8
    :goto_1
    iput-boolean v1, p0, Lorg/mortbay/io/nio/SelectChannelEndPoint;->_readBlocked:Z

    iput-boolean v1, p0, Lorg/mortbay/io/nio/SelectChannelEndPoint;->_writeBlocked:Z

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public flush(Lorg/mortbay/io/Buffer;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    invoke-super {p0, p1}, Lorg/mortbay/io/nio/ChannelEndPoint;->flush(Lorg/mortbay/io/Buffer;)I

    move-result p1

    if-lez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 4
    :goto_0
    iput-boolean v0, p0, Lorg/mortbay/io/nio/SelectChannelEndPoint;->_writable:Z

    return p1
.end method

.method public flush(Lorg/mortbay/io/Buffer;Lorg/mortbay/io/Buffer;Lorg/mortbay/io/Buffer;)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2, p3}, Lorg/mortbay/io/nio/ChannelEndPoint;->flush(Lorg/mortbay/io/Buffer;Lorg/mortbay/io/Buffer;Lorg/mortbay/io/Buffer;)I

    move-result p1

    if-lez p1, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 2
    :goto_0
    iput-boolean p2, p0, Lorg/mortbay/io/nio/SelectChannelEndPoint;->_writable:Z

    return p1
.end method

.method public getConnection()Lorg/mortbay/io/Connection;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/io/nio/SelectChannelEndPoint;->_connection:Lorg/mortbay/io/Connection;

    return-object p0
.end method

.method public getSelectSet()Lorg/mortbay/io/nio/SelectorManager$SelectSet;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/io/nio/SelectChannelEndPoint;->_selectSet:Lorg/mortbay/io/nio/SelectorManager$SelectSet;

    return-object p0
.end method

.method public getTimeoutTask()Lorg/mortbay/thread/Timeout$Task;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/io/nio/SelectChannelEndPoint;->e:Lorg/mortbay/thread/Timeout$Task;

    return-object p0
.end method

.method public idleExpired()V
    .locals 0

    :try_start_0
    invoke-virtual {p0}, Lorg/mortbay/io/nio/SelectChannelEndPoint;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lorg/mortbay/log/Log;->ignore(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lorg/mortbay/io/nio/SelectChannelEndPoint;->_connection:Lorg/mortbay/io/Connection;

    invoke-interface {v0}, Lorg/mortbay/io/Connection;->handle()V
    :try_end_0
    .catch Ljava/nio/channels/ClosedChannelException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Lorg/mortbay/jetty/EofException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lorg/mortbay/jetty/HttpException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-virtual {p0}, Lorg/mortbay/io/nio/SelectChannelEndPoint;->undispatch()V

    goto :goto_1

    :catchall_0
    move-exception v0

    :try_start_1
    const-string v1, "handle failed"

    invoke-static {v1, v0}, Lorg/mortbay/log/Log;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {p0}, Lorg/mortbay/io/nio/SelectChannelEndPoint;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_3
    invoke-static {v0}, Lorg/mortbay/log/Log;->ignore(Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "BAD"

    invoke-static {v1, v0}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-virtual {p0}, Lorg/mortbay/io/nio/SelectChannelEndPoint;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0

    :catch_2
    move-exception v0

    :try_start_5
    invoke-static {v0}, Lorg/mortbay/log/Log;->ignore(Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_3
    move-exception v0

    const-string v1, "EOF"

    invoke-static {v1, v0}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    invoke-virtual {p0}, Lorg/mortbay/io/nio/SelectChannelEndPoint;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_0

    :catch_4
    move-exception v0

    :try_start_7
    invoke-static {v0}, Lorg/mortbay/log/Log;->ignore(Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_5
    move-exception v0

    invoke-static {v0}, Lorg/mortbay/log/Log;->ignore(Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_0

    :goto_1
    return-void

    :catchall_1
    move-exception v0

    invoke-virtual {p0}, Lorg/mortbay/io/nio/SelectChannelEndPoint;->undispatch()V

    throw v0
.end method

.method public scheduleIdle()V
    .locals 1

    iget-object v0, p0, Lorg/mortbay/io/nio/SelectChannelEndPoint;->_selectSet:Lorg/mortbay/io/nio/SelectorManager$SelectSet;

    iget-object p0, p0, Lorg/mortbay/io/nio/SelectChannelEndPoint;->e:Lorg/mortbay/thread/Timeout$Task;

    invoke-virtual {v0, p0}, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->scheduleIdle(Lorg/mortbay/thread/Timeout$Task;)V

    return-void
.end method

.method public scheduleWrite()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/mortbay/io/nio/SelectChannelEndPoint;->_writable:Z

    invoke-virtual {p0}, Lorg/mortbay/io/nio/SelectChannelEndPoint;->c()V

    return-void
.end method

.method public setWritable(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/mortbay/io/nio/SelectChannelEndPoint;->_writable:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "SCEP@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, "[d="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-boolean v1, p0, Lorg/mortbay/io/nio/SelectChannelEndPoint;->_dispatched:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    const-string v1, ",io="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lorg/mortbay/io/nio/SelectChannelEndPoint;->_interestOps:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, ",w="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-boolean v1, p0, Lorg/mortbay/io/nio/SelectChannelEndPoint;->_writable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    const-string v1, ",b="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-boolean v1, p0, Lorg/mortbay/io/nio/SelectChannelEndPoint;->_readBlocked:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-boolean p0, p0, Lorg/mortbay/io/nio/SelectChannelEndPoint;->_writeBlocked:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public undispatch()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lorg/mortbay/io/nio/SelectChannelEndPoint;->_dispatched:Z

    invoke-virtual {p0}, Lorg/mortbay/io/nio/SelectChannelEndPoint;->c()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_1
    invoke-static {v0}, Lorg/mortbay/log/Log;->ignore(Ljava/lang/Throwable;)V

    const/4 v0, -0x1

    iput v0, p0, Lorg/mortbay/io/nio/SelectChannelEndPoint;->_interestOps:I

    iget-object v0, p0, Lorg/mortbay/io/nio/SelectChannelEndPoint;->_selectSet:Lorg/mortbay/io/nio/SelectorManager$SelectSet;

    invoke-virtual {v0, p0}, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->addChange(Ljava/lang/Object;)V

    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
