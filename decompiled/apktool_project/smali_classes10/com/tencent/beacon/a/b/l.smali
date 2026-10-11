.class public Lcom/tencent/beacon/a/b/l;
.super Lcom/tencent/beacon/a/b/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/beacon/a/b/l$a;
    }
.end annotation


# static fields
.field private static final d:I

.field private static final e:I

.field private static final f:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private final g:Ljava/util/concurrent/ScheduledExecutorService;

.field private final h:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/tencent/beacon/a/b/l$a;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field private final j:Lcom/tencent/beacon/a/b/m;

.field private k:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    sput v0, Lcom/tencent/beacon/a/b/l;->d:I

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x3

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    sput v0, Lcom/tencent/beacon/a/b/l;->e:I

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/tencent/beacon/a/b/l;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/tencent/beacon/a/b/l;-><init>(Ljava/util/concurrent/ScheduledExecutorService;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Lcom/tencent/beacon/a/b/b;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/tencent/beacon/a/b/l;->k:Z

    .line 4
    new-instance v0, Lcom/tencent/beacon/a/b/m;

    invoke-direct {v0}, Lcom/tencent/beacon/a/b/m;-><init>()V

    iput-object v0, p0, Lcom/tencent/beacon/a/b/l;->j:Lcom/tencent/beacon/a/b/m;

    if-nez p1, :cond_0

    .line 5
    sget p1, Lcom/tencent/beacon/a/b/l;->e:I

    invoke-static {p1, v0}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p1

    :cond_0
    iput-object p1, p0, Lcom/tencent/beacon/a/b/l;->g:Ljava/util/concurrent/ScheduledExecutorService;

    .line 6
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/tencent/beacon/a/b/l;->h:Landroid/util/SparseArray;

    .line 7
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/tencent/beacon/a/b/l;->i:Landroid/util/SparseArray;

    return-void
.end method

.method private b(Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/tencent/beacon/a/b/k;

    invoke-direct {v0, p0, p1}, Lcom/tencent/beacon/a/b/k;-><init>(Lcom/tencent/beacon/a/b/l;Ljava/lang/Runnable;)V

    return-object v0
.end method

.method public static synthetic c()Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    sget-object v0, Lcom/tencent/beacon/a/b/l;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method private d()Z
    .locals 1

    iget-boolean p0, p0, Lcom/tencent/beacon/a/b/l;->k:Z

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    new-array p0, v0, [Ljava/lang/Object;

    const-string v0, "[task] was closed , should all stopped!"

    invoke-static {v0, p0}, Lcom/tencent/beacon/base/util/c;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    return v0
.end method


# virtual methods
.method public declared-synchronized a(I)Landroid/os/Handler;
    .locals 2

    monitor-enter p0

    .line 36
    :try_start_0
    iget-object v0, p0, Lcom/tencent/beacon/a/b/l;->i:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 37
    new-instance v0, Landroid/os/HandlerThread;

    iget-object v1, p0, Lcom/tencent/beacon/a/b/l;->j:Lcom/tencent/beacon/a/b/m;

    invoke-virtual {v1}, Lcom/tencent/beacon/a/b/m;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 38
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 39
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    move-object v0, v1

    .line 40
    :cond_0
    iget-object v1, p0, Lcom/tencent/beacon/a/b/l;->i:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(IJI)V
    .locals 7

    monitor-enter p0

    .line 29
    :try_start_0
    iget v0, p0, Lcom/tencent/beacon/a/b/b;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ge p4, v0, :cond_0

    monitor-exit p0

    return-void

    .line 30
    :cond_0
    :try_start_1
    iget-object p4, p0, Lcom/tencent/beacon/a/b/l;->h:Landroid/util/SparseArray;

    invoke-virtual {p4, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tencent/beacon/a/b/l$a;

    if-eqz p1, :cond_2

    .line 31
    invoke-virtual {p1}, Lcom/tencent/beacon/a/b/l$a;->a()Z

    move-result p4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p4, :cond_1

    monitor-exit p0

    return-void

    .line 32
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/tencent/beacon/a/b/l;->g:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-static {p1}, Lcom/tencent/beacon/a/b/l$a;->a(Lcom/tencent/beacon/a/b/l$a;)Ljava/lang/Runnable;

    move-result-object v1

    .line 33
    invoke-static {p1}, Lcom/tencent/beacon/a/b/l$a;->b(Lcom/tencent/beacon/a/b/l$a;)J

    move-result-wide v4

    invoke-static {p1}, Lcom/tencent/beacon/a/b/l$a;->c(Lcom/tencent/beacon/a/b/l$a;)Ljava/util/concurrent/TimeUnit;

    move-result-object v6

    move-wide v2, p2

    .line 34
    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/tencent/beacon/a/b/l$a;->a(Lcom/tencent/beacon/a/b/l$a;Ljava/util/concurrent/Future;)Ljava/util/concurrent/Future;

    :cond_2
    const/4 p1, 0x0

    .line 35
    iput p1, p0, Lcom/tencent/beacon/a/b/b;->b:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(IJJLjava/lang/Runnable;)V
    .locals 9
    .param p6    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    monitor-enter p0

    .line 7
    :try_start_0
    invoke-direct {p0}, Lcom/tencent/beacon/a/b/l;->d()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    .line 8
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/tencent/beacon/a/b/l;->h:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/beacon/a/b/l$a;

    if-eqz v0, :cond_1

    .line 9
    invoke-virtual {v0}, Lcom/tencent/beacon/a/b/l$a;->a()Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_1

    monitor-exit p0

    return-void

    .line 10
    :cond_1
    :try_start_2
    invoke-direct {p0, p6}, Lcom/tencent/beacon/a/b/l;->b(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object p6

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-lez v2, :cond_2

    goto :goto_0

    :cond_2
    move-wide p2, v0

    :goto_0
    const-wide/16 v0, 0x64

    cmp-long v2, p4, v0

    if-ltz v2, :cond_3

    goto :goto_1

    :cond_3
    move-wide p4, v0

    .line 11
    :goto_1
    iget-object v0, p0, Lcom/tencent/beacon/a/b/l;->g:Ljava/util/concurrent/ScheduledExecutorService;

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-object v1, p6

    move-wide v2, p2

    move-wide v4, p4

    move-object v6, v7

    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v1

    .line 12
    new-instance v8, Lcom/tencent/beacon/a/b/l$a;

    move-object v0, v8

    move-object v2, p6

    move-wide v3, p2

    move-wide v5, p4

    invoke-direct/range {v0 .. v7}, Lcom/tencent/beacon/a/b/l$a;-><init>(Ljava/util/concurrent/Future;Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)V

    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/Object;

    .line 13
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 p6, 0x0

    aput-object p3, p2, p6

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    const/4 p4, 0x1

    aput-object p3, p2, p4

    const-string p3, "[task] add a new polling task! taskId: %d , periodTime: %d"

    invoke-static {p3, p2}, Lcom/tencent/beacon/base/util/c;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 14
    iget-object p2, p0, Lcom/tencent/beacon/a/b/l;->h:Landroid/util/SparseArray;

    invoke-virtual {p2, p1, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public a(IZI)V
    .locals 2

    .line 15
    iget-object v0, p0, Lcom/tencent/beacon/a/b/l;->h:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tencent/beacon/a/b/l$a;

    if-eqz p1, :cond_0

    .line 16
    invoke-virtual {p1}, Lcom/tencent/beacon/a/b/l$a;->a()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "[task] cancel a old pollingTaskWrapper!"

    .line 17
    invoke-static {v1, v0}, Lcom/tencent/beacon/base/util/c;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 18
    invoke-virtual {p1, p2}, Lcom/tencent/beacon/a/b/l$a;->a(Z)Z

    .line 19
    :cond_0
    iput p3, p0, Lcom/tencent/beacon/a/b/b;->b:I

    return-void
.end method

.method public declared-synchronized a(JI)V
    .locals 3

    monitor-enter p0

    .line 24
    :try_start_0
    iget v0, p0, Lcom/tencent/beacon/a/b/b;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ge p3, v0, :cond_0

    monitor-exit p0

    return-void

    .line 25
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/tencent/beacon/a/b/l;->d()Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    monitor-exit p0

    return-void

    :cond_1
    const/4 v0, 0x0

    move v1, v0

    .line 26
    :goto_0
    :try_start_2
    iget-object v2, p0, Lcom/tencent/beacon/a/b/l;->h:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 27
    iget-object v2, p0, Lcom/tencent/beacon/a/b/l;->h:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-virtual {p0, v2, p1, p2, p3}, Lcom/tencent/beacon/a/b/l;->a(IJI)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    new-array p1, v0, [Ljava/lang/Object;

    const-string p2, "[task] Resumed all schedule task"

    .line 28
    invoke-static {p2, p1}, Lcom/tencent/beacon/base/util/c;->a(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(JLjava/lang/Runnable;)V
    .locals 3
    .param p3    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    monitor-enter p0

    .line 4
    :try_start_0
    invoke-direct {p0}, Lcom/tencent/beacon/a/b/l;->d()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    .line 5
    :cond_0
    :try_start_1
    invoke-direct {p0, p3}, Lcom/tencent/beacon/a/b/l;->b(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object p3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_1

    goto :goto_0

    :cond_1
    move-wide p1, v0

    .line 6
    :goto_0
    iget-object v0, p0, Lcom/tencent/beacon/a/b/l;->g:Ljava/util/concurrent/ScheduledExecutorService;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, p3, p1, p2, v1}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(Ljava/lang/Runnable;)V
    .locals 1
    .param p1    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/tencent/beacon/a/b/l;->d()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    .line 2
    :cond_0
    :try_start_1
    invoke-direct {p0, p1}, Lcom/tencent/beacon/a/b/l;->b(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object p1

    .line 3
    iget-object v0, p0, Lcom/tencent/beacon/a/b/l;->g:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(ZI)V
    .locals 3

    monitor-enter p0

    .line 20
    :try_start_0
    invoke-direct {p0}, Lcom/tencent/beacon/a/b/l;->d()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    .line 21
    :goto_0
    :try_start_1
    iget-object v2, p0, Lcom/tencent/beacon/a/b/l;->h:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 22
    iget-object v2, p0, Lcom/tencent/beacon/a/b/l;->h:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-virtual {p0, v2, p1, p2}, Lcom/tencent/beacon/a/b/l;->a(IZI)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-array p1, v0, [Ljava/lang/Object;

    const-string p2, "[task] All schedule tasks stop"

    .line 23
    invoke-static {p2, p1}, Lcom/tencent/beacon/base/util/c;->a(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
