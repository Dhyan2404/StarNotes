.class public Lcom/liulishuo/okdownload/DownloadSerialQueue;
.super Lcom/liulishuo/okdownload/core/listener/DownloadListener2;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final k:Ljava/util/concurrent/Executor;

.field public static final l:I = 0x0

.field public static final m:Ljava/lang/String; = "DownloadSerialQueue"


# instance fields
.field public volatile e:Z

.field public volatile f:Z

.field public volatile g:Z

.field public volatile h:Lcom/liulishuo/okdownload/DownloadTask;

.field public final i:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/liulishuo/okdownload/DownloadTask;",
            ">;"
        }
    .end annotation
.end field

.field public j:Lcom/liulishuo/okdownload/core/listener/DownloadListenerBunch;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    new-instance v8, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v1, 0x0

    const v2, 0x7fffffff

    const-wide/16 v3, 0x1e

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v6}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    const-string v0, "OkDownload DynamicSerial"

    const/4 v7, 0x0

    invoke-static {v0, v7}, Lcom/liulishuo/okdownload/core/Util;->threadFactory(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;

    move-result-object v7

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v8, Lcom/liulishuo/okdownload/DownloadSerialQueue;->k:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/liulishuo/okdownload/DownloadSerialQueue;-><init>(Lcom/liulishuo/okdownload/DownloadListener;)V

    return-void
.end method

.method public constructor <init>(Lcom/liulishuo/okdownload/DownloadListener;)V
    .locals 1

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/liulishuo/okdownload/DownloadSerialQueue;-><init>(Lcom/liulishuo/okdownload/DownloadListener;Ljava/util/ArrayList;)V

    return-void
.end method

.method public constructor <init>(Lcom/liulishuo/okdownload/DownloadListener;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/liulishuo/okdownload/DownloadListener;",
            "Ljava/util/ArrayList<",
            "Lcom/liulishuo/okdownload/DownloadTask;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Lcom/liulishuo/okdownload/core/listener/DownloadListener2;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/liulishuo/okdownload/DownloadSerialQueue;->e:Z

    .line 4
    iput-boolean v0, p0, Lcom/liulishuo/okdownload/DownloadSerialQueue;->f:Z

    .line 5
    iput-boolean v0, p0, Lcom/liulishuo/okdownload/DownloadSerialQueue;->g:Z

    .line 6
    new-instance v0, Lcom/liulishuo/okdownload/core/listener/DownloadListenerBunch$Builder;

    invoke-direct {v0}, Lcom/liulishuo/okdownload/core/listener/DownloadListenerBunch$Builder;-><init>()V

    .line 7
    invoke-virtual {v0, p0}, Lcom/liulishuo/okdownload/core/listener/DownloadListenerBunch$Builder;->append(Lcom/liulishuo/okdownload/DownloadListener;)Lcom/liulishuo/okdownload/core/listener/DownloadListenerBunch$Builder;

    move-result-object v0

    .line 8
    invoke-virtual {v0, p1}, Lcom/liulishuo/okdownload/core/listener/DownloadListenerBunch$Builder;->append(Lcom/liulishuo/okdownload/DownloadListener;)Lcom/liulishuo/okdownload/core/listener/DownloadListenerBunch$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/liulishuo/okdownload/core/listener/DownloadListenerBunch$Builder;->build()Lcom/liulishuo/okdownload/core/listener/DownloadListenerBunch;

    move-result-object p1

    iput-object p1, p0, Lcom/liulishuo/okdownload/DownloadSerialQueue;->j:Lcom/liulishuo/okdownload/core/listener/DownloadListenerBunch;

    .line 9
    iput-object p2, p0, Lcom/liulishuo/okdownload/DownloadSerialQueue;->i:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    sget-object v0, Lcom/liulishuo/okdownload/DownloadSerialQueue;->k:Ljava/util/concurrent/Executor;

    invoke-interface {v0, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public declared-synchronized enqueue(Lcom/liulishuo/okdownload/DownloadTask;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/liulishuo/okdownload/DownloadSerialQueue;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/liulishuo/okdownload/DownloadSerialQueue;->i:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    iget-boolean p1, p0, Lcom/liulishuo/okdownload/DownloadSerialQueue;->g:Z

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcom/liulishuo/okdownload/DownloadSerialQueue;->f:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/liulishuo/okdownload/DownloadSerialQueue;->f:Z

    invoke-virtual {p0}, Lcom/liulishuo/okdownload/DownloadSerialQueue;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getWaitingTaskCount()I
    .locals 0

    iget-object p0, p0, Lcom/liulishuo/okdownload/DownloadSerialQueue;->i:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method public getWorkingTaskId()I
    .locals 1

    iget-object v0, p0, Lcom/liulishuo/okdownload/DownloadSerialQueue;->h:Lcom/liulishuo/okdownload/DownloadTask;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/liulishuo/okdownload/DownloadSerialQueue;->h:Lcom/liulishuo/okdownload/DownloadTask;

    invoke-virtual {p0}, Lcom/liulishuo/okdownload/DownloadTask;->getId()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public declared-synchronized pause()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/liulishuo/okdownload/DownloadSerialQueue;->g:Z

    if-eqz v0, :cond_0

    const-string v0, "DownloadSerialQueue"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "require pause this queue(remain "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/liulishuo/okdownload/DownloadSerialQueue;->i:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "), butit has already been paused"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/liulishuo/okdownload/core/Util;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/liulishuo/okdownload/DownloadSerialQueue;->g:Z

    iget-object v0, p0, Lcom/liulishuo/okdownload/DownloadSerialQueue;->h:Lcom/liulishuo/okdownload/DownloadTask;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/liulishuo/okdownload/DownloadSerialQueue;->h:Lcom/liulishuo/okdownload/DownloadTask;

    invoke-virtual {v0}, Lcom/liulishuo/okdownload/DownloadTask;->cancel()V

    iget-object v0, p0, Lcom/liulishuo/okdownload/DownloadSerialQueue;->i:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/liulishuo/okdownload/DownloadSerialQueue;->h:Lcom/liulishuo/okdownload/DownloadTask;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/liulishuo/okdownload/DownloadSerialQueue;->h:Lcom/liulishuo/okdownload/DownloadTask;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized resume()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/liulishuo/okdownload/DownloadSerialQueue;->g:Z

    if-nez v0, :cond_0

    const-string v0, "DownloadSerialQueue"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "require resume this queue(remain "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/liulishuo/okdownload/DownloadSerialQueue;->i:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "), but it is still running"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/liulishuo/okdownload/core/Util;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, p0, Lcom/liulishuo/okdownload/DownloadSerialQueue;->g:Z

    iget-object v0, p0, Lcom/liulishuo/okdownload/DownloadSerialQueue;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/liulishuo/okdownload/DownloadSerialQueue;->f:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/liulishuo/okdownload/DownloadSerialQueue;->f:Z

    invoke-virtual {p0}, Lcom/liulishuo/okdownload/DownloadSerialQueue;->a()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public run()V
    .locals 2

    :goto_0
    iget-boolean v0, p0, Lcom/liulishuo/okdownload/DownloadSerialQueue;->e:Z

    if-nez v0, :cond_2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/liulishuo/okdownload/DownloadSerialQueue;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/liulishuo/okdownload/DownloadSerialQueue;->g:Z

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/liulishuo/okdownload/DownloadSerialQueue;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liulishuo/okdownload/DownloadTask;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/liulishuo/okdownload/DownloadSerialQueue;->j:Lcom/liulishuo/okdownload/core/listener/DownloadListenerBunch;

    invoke-virtual {v0, v1}, Lcom/liulishuo/okdownload/DownloadTask;->execute(Lcom/liulishuo/okdownload/DownloadListener;)V

    goto :goto_0

    :cond_1
    :goto_1
    const/4 v0, 0x0

    :try_start_1
    iput-object v0, p0, Lcom/liulishuo/okdownload/DownloadSerialQueue;->h:Lcom/liulishuo/okdownload/DownloadTask;

    iput-boolean v1, p0, Lcom/liulishuo/okdownload/DownloadSerialQueue;->f:Z

    monitor-exit p0

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_2
    :goto_2
    return-void
.end method

.method public setListener(Lcom/liulishuo/okdownload/DownloadListener;)V
    .locals 1

    new-instance v0, Lcom/liulishuo/okdownload/core/listener/DownloadListenerBunch$Builder;

    invoke-direct {v0}, Lcom/liulishuo/okdownload/core/listener/DownloadListenerBunch$Builder;-><init>()V

    invoke-virtual {v0, p0}, Lcom/liulishuo/okdownload/core/listener/DownloadListenerBunch$Builder;->append(Lcom/liulishuo/okdownload/DownloadListener;)Lcom/liulishuo/okdownload/core/listener/DownloadListenerBunch$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/liulishuo/okdownload/core/listener/DownloadListenerBunch$Builder;->append(Lcom/liulishuo/okdownload/DownloadListener;)Lcom/liulishuo/okdownload/core/listener/DownloadListenerBunch$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/liulishuo/okdownload/core/listener/DownloadListenerBunch$Builder;->build()Lcom/liulishuo/okdownload/core/listener/DownloadListenerBunch;

    move-result-object p1

    iput-object p1, p0, Lcom/liulishuo/okdownload/DownloadSerialQueue;->j:Lcom/liulishuo/okdownload/core/listener/DownloadListenerBunch;

    return-void
.end method

.method public declared-synchronized shutdown()[Lcom/liulishuo/okdownload/DownloadTask;
    .locals 2

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/liulishuo/okdownload/DownloadSerialQueue;->e:Z

    iget-object v0, p0, Lcom/liulishuo/okdownload/DownloadSerialQueue;->h:Lcom/liulishuo/okdownload/DownloadTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/liulishuo/okdownload/DownloadSerialQueue;->h:Lcom/liulishuo/okdownload/DownloadTask;

    invoke-virtual {v0}, Lcom/liulishuo/okdownload/DownloadTask;->cancel()V

    :cond_0
    iget-object v0, p0, Lcom/liulishuo/okdownload/DownloadSerialQueue;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lcom/liulishuo/okdownload/DownloadTask;

    iget-object v1, p0, Lcom/liulishuo/okdownload/DownloadSerialQueue;->i:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    iget-object v1, p0, Lcom/liulishuo/okdownload/DownloadSerialQueue;->i:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized taskEnd(Lcom/liulishuo/okdownload/DownloadTask;Lcom/liulishuo/okdownload/core/cause/EndCause;Ljava/lang/Exception;)V
    .locals 0
    .param p1    # Lcom/liulishuo/okdownload/DownloadTask;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/liulishuo/okdownload/core/cause/EndCause;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Exception;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    monitor-enter p0

    :try_start_0
    sget-object p3, Lcom/liulishuo/okdownload/core/cause/EndCause;->CANCELED:Lcom/liulishuo/okdownload/core/cause/EndCause;

    if-eq p2, p3, :cond_0

    iget-object p2, p0, Lcom/liulishuo/okdownload/DownloadSerialQueue;->h:Lcom/liulishuo/okdownload/DownloadTask;

    if-ne p1, p2, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/liulishuo/okdownload/DownloadSerialQueue;->h:Lcom/liulishuo/okdownload/DownloadTask;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public taskStart(Lcom/liulishuo/okdownload/DownloadTask;)V
    .locals 0
    .param p1    # Lcom/liulishuo/okdownload/DownloadTask;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/liulishuo/okdownload/DownloadSerialQueue;->h:Lcom/liulishuo/okdownload/DownloadTask;

    return-void
.end method
