.class public abstract Lcom/blankj/utilcode/util/ThreadUtils$Task;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/blankj/utilcode/util/ThreadUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Task"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/blankj/utilcode/util/ThreadUtils$Task$OnTimeoutListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# static fields
.field public static final l:I = 0x0

.field public static final m:I = 0x1

.field public static final n:I = 0x2

.field public static final o:I = 0x3

.field public static final p:I = 0x4

.field public static final q:I = 0x5

.field public static final r:I = 0x6


# instance fields
.field public final e:Ljava/util/concurrent/atomic/AtomicInteger;

.field public volatile f:Z

.field public volatile g:Ljava/lang/Thread;

.field public h:Ljava/util/Timer;

.field public i:J

.field public j:Lcom/blankj/utilcode/util/ThreadUtils$Task$OnTimeoutListener;

.field public k:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/blankj/utilcode/util/ThreadUtils$Task;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public static synthetic a(Lcom/blankj/utilcode/util/ThreadUtils$Task;Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/blankj/utilcode/util/ThreadUtils$Task;->e(Z)V

    return-void
.end method

.method public static synthetic b(Lcom/blankj/utilcode/util/ThreadUtils$Task;)Lcom/blankj/utilcode/util/ThreadUtils$Task$OnTimeoutListener;
    .locals 0

    iget-object p0, p0, Lcom/blankj/utilcode/util/ThreadUtils$Task;->j:Lcom/blankj/utilcode/util/ThreadUtils$Task$OnTimeoutListener;

    return-object p0
.end method

.method public static synthetic c(Lcom/blankj/utilcode/util/ThreadUtils$Task;)V
    .locals 0

    invoke-virtual {p0}, Lcom/blankj/utilcode/util/ThreadUtils$Task;->f()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lcom/blankj/utilcode/util/ThreadUtils$Task;->cancel(Z)V

    return-void
.end method

.method public cancel(Z)V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/blankj/utilcode/util/ThreadUtils$Task;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/blankj/utilcode/util/ThreadUtils$Task;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    monitor-exit v0

    return-void

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/blankj/utilcode/util/ThreadUtils$Task;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_1

    .line 6
    iget-object p1, p0, Lcom/blankj/utilcode/util/ThreadUtils$Task;->g:Ljava/lang/Thread;

    if-eqz p1, :cond_1

    .line 7
    iget-object p1, p0, Lcom/blankj/utilcode/util/ThreadUtils$Task;->g:Ljava/lang/Thread;

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    .line 8
    :cond_1
    invoke-virtual {p0}, Lcom/blankj/utilcode/util/ThreadUtils$Task;->d()Ljava/util/concurrent/Executor;

    move-result-object p1

    new-instance v0, Lcom/blankj/utilcode/util/ThreadUtils$Task$e;

    invoke-direct {v0, p0}, Lcom/blankj/utilcode/util/ThreadUtils$Task$e;-><init>(Lcom/blankj/utilcode/util/ThreadUtils$Task;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :catchall_0
    move-exception p0

    .line 9
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final d()Ljava/util/concurrent/Executor;
    .locals 0

    iget-object p0, p0, Lcom/blankj/utilcode/util/ThreadUtils$Task;->k:Ljava/util/concurrent/Executor;

    if-nez p0, :cond_0

    invoke-static {}, Lcom/blankj/utilcode/util/ThreadUtils;->b()Ljava/util/concurrent/Executor;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public abstract doInBackground()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method

.method public final e(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/blankj/utilcode/util/ThreadUtils$Task;->f:Z

    return-void
.end method

.method public final f()V
    .locals 3

    iget-object v0, p0, Lcom/blankj/utilcode/util/ThreadUtils$Task;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/blankj/utilcode/util/ThreadUtils$Task;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/blankj/utilcode/util/ThreadUtils$Task;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/blankj/utilcode/util/ThreadUtils$Task;->g:Ljava/lang/Thread;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/blankj/utilcode/util/ThreadUtils$Task;->g:Ljava/lang/Thread;

    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

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

.method public isCanceled()Z
    .locals 1

    iget-object p0, p0, Lcom/blankj/utilcode/util/ThreadUtils$Task;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    const/4 v0, 0x4

    if-lt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isDone()Z
    .locals 1

    iget-object p0, p0, Lcom/blankj/utilcode/util/ThreadUtils$Task;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    const/4 v0, 0x1

    if-le p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public abstract onCancel()V
.end method

.method public onDone()V
    .locals 1
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    invoke-static {}, Lcom/blankj/utilcode/util/ThreadUtils;->c()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/blankj/utilcode/util/ThreadUtils$Task;->h:Ljava/util/Timer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/blankj/utilcode/util/ThreadUtils$Task;->h:Ljava/util/Timer;

    iput-object v0, p0, Lcom/blankj/utilcode/util/ThreadUtils$Task;->j:Lcom/blankj/utilcode/util/ThreadUtils$Task$OnTimeoutListener;

    :cond_0
    return-void
.end method

.method public abstract onFail(Ljava/lang/Throwable;)V
.end method

.method public abstract onSuccess(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public run()V
    .locals 5

    iget-boolean v0, p0, Lcom/blankj/utilcode/util/ThreadUtils$Task;->f:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/blankj/utilcode/util/ThreadUtils$Task;->g:Ljava/lang/Thread;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/blankj/utilcode/util/ThreadUtils$Task;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lcom/blankj/utilcode/util/ThreadUtils$Task;->g:Ljava/lang/Thread;

    iget-object v0, p0, Lcom/blankj/utilcode/util/ThreadUtils$Task;->j:Lcom/blankj/utilcode/util/ThreadUtils$Task$OnTimeoutListener;

    if-eqz v0, :cond_4

    const-string v0, "ThreadUtils"

    const-string v1, "Scheduled task doesn\'t support timeout."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/blankj/utilcode/util/ThreadUtils$Task;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-eq v0, v2, :cond_4

    return-void

    :cond_2
    iget-object v0, p0, Lcom/blankj/utilcode/util/ThreadUtils$Task;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    if-nez v0, :cond_3

    return-void

    :cond_3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lcom/blankj/utilcode/util/ThreadUtils$Task;->g:Ljava/lang/Thread;

    iget-object v0, p0, Lcom/blankj/utilcode/util/ThreadUtils$Task;->j:Lcom/blankj/utilcode/util/ThreadUtils$Task$OnTimeoutListener;

    if-eqz v0, :cond_4

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/blankj/utilcode/util/ThreadUtils$Task;->h:Ljava/util/Timer;

    new-instance v1, Lcom/blankj/utilcode/util/ThreadUtils$Task$a;

    invoke-direct {v1, p0}, Lcom/blankj/utilcode/util/ThreadUtils$Task$a;-><init>(Lcom/blankj/utilcode/util/ThreadUtils$Task;)V

    iget-wide v3, p0, Lcom/blankj/utilcode/util/ThreadUtils$Task;->i:J

    invoke-virtual {v0, v1, v3, v4}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    :cond_4
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lcom/blankj/utilcode/util/ThreadUtils$Task;->doInBackground()Ljava/lang/Object;

    move-result-object v0

    iget-boolean v1, p0, Lcom/blankj/utilcode/util/ThreadUtils$Task;->f:Z

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/blankj/utilcode/util/ThreadUtils$Task;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-eq v1, v2, :cond_5

    return-void

    :cond_5
    invoke-virtual {p0}, Lcom/blankj/utilcode/util/ThreadUtils$Task;->d()Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v3, Lcom/blankj/utilcode/util/ThreadUtils$Task$b;

    invoke-direct {v3, p0, v0}, Lcom/blankj/utilcode/util/ThreadUtils$Task$b;-><init>(Lcom/blankj/utilcode/util/ThreadUtils$Task;Ljava/lang/Object;)V

    invoke-interface {v1, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_6
    iget-object v1, p0, Lcom/blankj/utilcode/util/ThreadUtils$Task;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v1

    if-nez v1, :cond_7

    return-void

    :cond_7
    invoke-virtual {p0}, Lcom/blankj/utilcode/util/ThreadUtils$Task;->d()Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v3, Lcom/blankj/utilcode/util/ThreadUtils$Task$c;

    invoke-direct {v3, p0, v0}, Lcom/blankj/utilcode/util/ThreadUtils$Task$c;-><init>(Lcom/blankj/utilcode/util/ThreadUtils$Task;Ljava/lang/Object;)V

    invoke-interface {v1, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/blankj/utilcode/util/ThreadUtils$Task;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v1

    if-nez v1, :cond_8

    return-void

    :cond_8
    invoke-virtual {p0}, Lcom/blankj/utilcode/util/ThreadUtils$Task;->d()Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Lcom/blankj/utilcode/util/ThreadUtils$Task$d;

    invoke-direct {v2, p0, v0}, Lcom/blankj/utilcode/util/ThreadUtils$Task$d;-><init>(Lcom/blankj/utilcode/util/ThreadUtils$Task;Ljava/lang/Throwable;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_1

    :catch_0
    iget-object p0, p0, Lcom/blankj/utilcode/util/ThreadUtils$Task;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, 0x4

    const/4 v1, 0x5

    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    :goto_1
    return-void
.end method

.method public setDeliver(Ljava/util/concurrent/Executor;)Lcom/blankj/utilcode/util/ThreadUtils$Task;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/blankj/utilcode/util/ThreadUtils$Task<",
            "TT;>;"
        }
    .end annotation

    iput-object p1, p0, Lcom/blankj/utilcode/util/ThreadUtils$Task;->k:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method public setTimeout(JLcom/blankj/utilcode/util/ThreadUtils$Task$OnTimeoutListener;)Lcom/blankj/utilcode/util/ThreadUtils$Task;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/blankj/utilcode/util/ThreadUtils$Task$OnTimeoutListener;",
            ")",
            "Lcom/blankj/utilcode/util/ThreadUtils$Task<",
            "TT;>;"
        }
    .end annotation

    iput-wide p1, p0, Lcom/blankj/utilcode/util/ThreadUtils$Task;->i:J

    iput-object p3, p0, Lcom/blankj/utilcode/util/ThreadUtils$Task;->j:Lcom/blankj/utilcode/util/ThreadUtils$Task$OnTimeoutListener;

    return-object p0
.end method
