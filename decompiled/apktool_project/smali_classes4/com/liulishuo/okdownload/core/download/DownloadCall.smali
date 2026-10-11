.class public Lcom/liulishuo/okdownload/core/download/DownloadCall;
.super Lcom/liulishuo/okdownload/core/NamedRunnable;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/liulishuo/okdownload/core/NamedRunnable;",
        "Ljava/lang/Comparable<",
        "Lcom/liulishuo/okdownload/core/download/DownloadCall;",
        ">;"
    }
.end annotation


# static fields
.field public static final k:Ljava/util/concurrent/ExecutorService;

.field public static final l:Ljava/lang/String; = "DownloadCall"

.field public static final m:I = 0x1


# instance fields
.field public final asyncExecuted:Z

.field public final e:Ljava/util/ArrayList;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/liulishuo/okdownload/core/download/DownloadChain;",
            ">;"
        }
    .end annotation
.end field

.field public volatile f:Lcom/liulishuo/okdownload/core/download/DownloadCache;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public volatile g:Z

.field public volatile h:Z

.field public volatile i:Ljava/lang/Thread;

.field public final j:Lcom/liulishuo/okdownload/core/breakpoint/DownloadStore;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final task:Lcom/liulishuo/okdownload/DownloadTask;


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    new-instance v8, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v1, 0x0

    const v2, 0x7fffffff

    const-wide/16 v3, 0x3c

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v6}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    const-string v0, "OkDownload Block"

    const/4 v7, 0x0

    invoke-static {v0, v7}, Lcom/liulishuo/okdownload/core/Util;->threadFactory(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;

    move-result-object v7

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v8, Lcom/liulishuo/okdownload/core/download/DownloadCall;->k:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public constructor <init>(Lcom/liulishuo/okdownload/DownloadTask;ZLcom/liulishuo/okdownload/core/breakpoint/DownloadStore;)V
    .locals 1
    .param p3    # Lcom/liulishuo/okdownload/core/breakpoint/DownloadStore;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/liulishuo/okdownload/core/download/DownloadCall;-><init>(Lcom/liulishuo/okdownload/DownloadTask;ZLjava/util/ArrayList;Lcom/liulishuo/okdownload/core/breakpoint/DownloadStore;)V

    return-void
.end method

.method public constructor <init>(Lcom/liulishuo/okdownload/DownloadTask;ZLjava/util/ArrayList;Lcom/liulishuo/okdownload/core/breakpoint/DownloadStore;)V
    .locals 2
    .param p3    # Ljava/util/ArrayList;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/liulishuo/okdownload/core/breakpoint/DownloadStore;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/liulishuo/okdownload/DownloadTask;",
            "Z",
            "Ljava/util/ArrayList<",
            "Lcom/liulishuo/okdownload/core/download/DownloadChain;",
            ">;",
            "Lcom/liulishuo/okdownload/core/breakpoint/DownloadStore;",
            ")V"
        }
    .end annotation

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "download call: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/liulishuo/okdownload/DownloadTask;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/liulishuo/okdownload/core/NamedRunnable;-><init>(Ljava/lang/String;)V

    .line 3
    iput-object p1, p0, Lcom/liulishuo/okdownload/core/download/DownloadCall;->task:Lcom/liulishuo/okdownload/DownloadTask;

    .line 4
    iput-boolean p2, p0, Lcom/liulishuo/okdownload/core/download/DownloadCall;->asyncExecuted:Z

    .line 5
    iput-object p3, p0, Lcom/liulishuo/okdownload/core/download/DownloadCall;->e:Ljava/util/ArrayList;

    .line 6
    iput-object p4, p0, Lcom/liulishuo/okdownload/core/download/DownloadCall;->j:Lcom/liulishuo/okdownload/core/breakpoint/DownloadStore;

    return-void
.end method

.method public static create(Lcom/liulishuo/okdownload/DownloadTask;ZLcom/liulishuo/okdownload/core/breakpoint/DownloadStore;)Lcom/liulishuo/okdownload/core/download/DownloadCall;
    .locals 1
    .param p2    # Lcom/liulishuo/okdownload/core/breakpoint/DownloadStore;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Lcom/liulishuo/okdownload/core/download/DownloadCall;

    invoke-direct {v0, p0, p1, p2}, Lcom/liulishuo/okdownload/core/download/DownloadCall;-><init>(Lcom/liulishuo/okdownload/DownloadTask;ZLcom/liulishuo/okdownload/core/breakpoint/DownloadStore;)V

    return-object v0
.end method


# virtual methods
.method public a(Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;Lcom/liulishuo/okdownload/core/download/BreakpointRemoteCheck;Lcom/liulishuo/okdownload/core/cause/ResumeFailedCause;)V
    .locals 3
    .param p1    # Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/liulishuo/okdownload/core/download/BreakpointRemoteCheck;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/liulishuo/okdownload/core/cause/ResumeFailedCause;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/liulishuo/okdownload/core/download/DownloadCall;->task:Lcom/liulishuo/okdownload/DownloadTask;

    invoke-virtual {p2}, Lcom/liulishuo/okdownload/core/download/BreakpointRemoteCheck;->getInstanceLength()J

    move-result-wide v1

    invoke-virtual {p2}, Lcom/liulishuo/okdownload/core/download/BreakpointRemoteCheck;->isAcceptRange()Z

    move-result p2

    invoke-static {v0, p1, v1, v2, p2}, Lcom/liulishuo/okdownload/core/Util;->assembleBlock(Lcom/liulishuo/okdownload/DownloadTask;Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;JZ)V

    invoke-static {}, Lcom/liulishuo/okdownload/OkDownload;->with()Lcom/liulishuo/okdownload/OkDownload;

    move-result-object p2

    invoke-virtual {p2}, Lcom/liulishuo/okdownload/OkDownload;->callbackDispatcher()Lcom/liulishuo/okdownload/core/dispatcher/CallbackDispatcher;

    move-result-object p2

    invoke-virtual {p2}, Lcom/liulishuo/okdownload/core/dispatcher/CallbackDispatcher;->dispatch()Lcom/liulishuo/okdownload/DownloadListener;

    move-result-object p2

    iget-object p0, p0, Lcom/liulishuo/okdownload/core/download/DownloadCall;->task:Lcom/liulishuo/okdownload/DownloadTask;

    invoke-interface {p2, p0, p1, p3}, Lcom/liulishuo/okdownload/DownloadListener;->downloadFromBeginning(Lcom/liulishuo/okdownload/DownloadTask;Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;Lcom/liulishuo/okdownload/core/cause/ResumeFailedCause;)V

    return-void
.end method

.method public b(Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;)Lcom/liulishuo/okdownload/core/download/DownloadCache;
    .locals 2
    .param p1    # Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {}, Lcom/liulishuo/okdownload/OkDownload;->with()Lcom/liulishuo/okdownload/OkDownload;

    move-result-object v0

    invoke-virtual {v0}, Lcom/liulishuo/okdownload/OkDownload;->processFileStrategy()Lcom/liulishuo/okdownload/core/file/ProcessFileStrategy;

    move-result-object v0

    iget-object v1, p0, Lcom/liulishuo/okdownload/core/download/DownloadCall;->task:Lcom/liulishuo/okdownload/DownloadTask;

    iget-object p0, p0, Lcom/liulishuo/okdownload/core/download/DownloadCall;->j:Lcom/liulishuo/okdownload/core/breakpoint/DownloadStore;

    invoke-virtual {v0, v1, p1, p0}, Lcom/liulishuo/okdownload/core/file/ProcessFileStrategy;->createProcessStream(Lcom/liulishuo/okdownload/DownloadTask;Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;Lcom/liulishuo/okdownload/core/breakpoint/DownloadStore;)Lcom/liulishuo/okdownload/core/file/MultiPointOutputStream;

    move-result-object p0

    new-instance p1, Lcom/liulishuo/okdownload/core/download/DownloadCache;

    invoke-direct {p1, p0}, Lcom/liulishuo/okdownload/core/download/DownloadCache;-><init>(Lcom/liulishuo/okdownload/core/file/MultiPointOutputStream;)V

    return-object p1
.end method

.method public c(Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;J)Lcom/liulishuo/okdownload/core/download/BreakpointLocalCheck;
    .locals 1
    .param p1    # Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/liulishuo/okdownload/core/download/BreakpointLocalCheck;

    iget-object p0, p0, Lcom/liulishuo/okdownload/core/download/DownloadCall;->task:Lcom/liulishuo/okdownload/DownloadTask;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/liulishuo/okdownload/core/download/BreakpointLocalCheck;-><init>(Lcom/liulishuo/okdownload/DownloadTask;Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;J)V

    return-object v0
.end method

.method public cancel()Z
    .locals 9

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/liulishuo/okdownload/core/download/DownloadCall;->g:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    monitor-exit p0

    return v1

    :cond_0
    iget-boolean v0, p0, Lcom/liulishuo/okdownload/core/download/DownloadCall;->h:Z

    if-eqz v0, :cond_1

    monitor-exit p0

    return v1

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/liulishuo/okdownload/core/download/DownloadCall;->g:Z

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-static {}, Lcom/liulishuo/okdownload/OkDownload;->with()Lcom/liulishuo/okdownload/OkDownload;

    move-result-object v4

    invoke-virtual {v4}, Lcom/liulishuo/okdownload/OkDownload;->downloadDispatcher()Lcom/liulishuo/okdownload/core/dispatcher/DownloadDispatcher;

    move-result-object v4

    invoke-virtual {v4, p0}, Lcom/liulishuo/okdownload/core/dispatcher/DownloadDispatcher;->flyingCanceled(Lcom/liulishuo/okdownload/core/download/DownloadCall;)V

    iget-object v4, p0, Lcom/liulishuo/okdownload/core/download/DownloadCall;->f:Lcom/liulishuo/okdownload/core/download/DownloadCache;

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lcom/liulishuo/okdownload/core/download/DownloadCache;->j()V

    :cond_2
    iget-object v5, p0, Lcom/liulishuo/okdownload/core/download/DownloadCall;->e:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_5

    array-length v6, v5

    if-nez v6, :cond_3

    goto :goto_1

    :cond_3
    array-length v6, v5

    :goto_0
    if-ge v1, v6, :cond_6

    aget-object v7, v5, v1

    instance-of v8, v7, Lcom/liulishuo/okdownload/core/download/DownloadChain;

    if-eqz v8, :cond_4

    check-cast v7, Lcom/liulishuo/okdownload/core/download/DownloadChain;

    invoke-virtual {v7}, Lcom/liulishuo/okdownload/core/download/DownloadChain;->cancel()V

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    :goto_1
    iget-object v1, p0, Lcom/liulishuo/okdownload/core/download/DownloadCall;->i:Ljava/lang/Thread;

    if-eqz v1, :cond_6

    const-string v1, "DownloadCall"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "interrupt thread with cancel operation because of chains are not running "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/liulishuo/okdownload/core/download/DownloadCall;->task:Lcom/liulishuo/okdownload/DownloadTask;

    invoke-virtual {v6}, Lcom/liulishuo/okdownload/DownloadTask;->getId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/liulishuo/okdownload/core/Util;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/liulishuo/okdownload/core/download/DownloadCall;->i:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    :cond_6
    if-eqz v4, :cond_7

    invoke-virtual {v4}, Lcom/liulishuo/okdownload/core/download/DownloadCache;->a()Lcom/liulishuo/okdownload/core/file/MultiPointOutputStream;

    move-result-object v1

    invoke-virtual {v1}, Lcom/liulishuo/okdownload/core/file/MultiPointOutputStream;->cancelAsync()V

    :cond_7
    const-string v1, "DownloadCall"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cancel task "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/liulishuo/okdownload/core/download/DownloadCall;->task:Lcom/liulishuo/okdownload/DownloadTask;

    invoke-virtual {p0}, Lcom/liulishuo/okdownload/DownloadTask;->getId()I

    move-result p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " consume: "

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v2

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, "ms"

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/liulishuo/okdownload/core/Util;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public compareTo(Lcom/liulishuo/okdownload/core/download/DownloadCall;)I
    .locals 0
    .param p1    # Lcom/liulishuo/okdownload/core/download/DownloadCall;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Ledu/umd/cs/findbugs/annotations/SuppressFBWarnings;
        justification = "This special case is just for task priority"
        value = {
            "Eq"
        }
    .end annotation

    .line 2
    invoke-virtual {p1}, Lcom/liulishuo/okdownload/core/download/DownloadCall;->e()I

    move-result p1

    invoke-virtual {p0}, Lcom/liulishuo/okdownload/core/download/DownloadCall;->e()I

    move-result p0

    sub-int/2addr p1, p0

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Ledu/umd/cs/findbugs/annotations/SuppressFBWarnings;
        justification = "This special case is just for task priority"
        value = {
            "Eq"
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/liulishuo/okdownload/core/download/DownloadCall;

    invoke-virtual {p0, p1}, Lcom/liulishuo/okdownload/core/download/DownloadCall;->compareTo(Lcom/liulishuo/okdownload/core/download/DownloadCall;)I

    move-result p0

    return p0
.end method

.method public d(Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;)Lcom/liulishuo/okdownload/core/download/BreakpointRemoteCheck;
    .locals 1
    .param p1    # Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/liulishuo/okdownload/core/download/BreakpointRemoteCheck;

    iget-object p0, p0, Lcom/liulishuo/okdownload/core/download/DownloadCall;->task:Lcom/liulishuo/okdownload/DownloadTask;

    invoke-direct {v0, p0, p1}, Lcom/liulishuo/okdownload/core/download/BreakpointRemoteCheck;-><init>(Lcom/liulishuo/okdownload/DownloadTask;Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;)V

    return-object v0
.end method

.method public e()I
    .locals 0

    iget-object p0, p0, Lcom/liulishuo/okdownload/core/download/DownloadCall;->task:Lcom/liulishuo/okdownload/DownloadTask;

    invoke-virtual {p0}, Lcom/liulishuo/okdownload/DownloadTask;->getPriority()I

    move-result p0

    return p0
.end method

.method public equalsTask(Lcom/liulishuo/okdownload/DownloadTask;)Z
    .locals 0
    .param p1    # Lcom/liulishuo/okdownload/DownloadTask;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/liulishuo/okdownload/core/download/DownloadCall;->task:Lcom/liulishuo/okdownload/DownloadTask;

    invoke-virtual {p0, p1}, Lcom/liulishuo/okdownload/DownloadTask;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public execute()V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lcom/liulishuo/okdownload/core/download/DownloadCall;->i:Ljava/lang/Thread;

    invoke-static {}, Lcom/liulishuo/okdownload/OkDownload;->with()Lcom/liulishuo/okdownload/OkDownload;

    move-result-object v0

    invoke-virtual {v0}, Lcom/liulishuo/okdownload/OkDownload;->processFileStrategy()Lcom/liulishuo/okdownload/core/file/ProcessFileStrategy;

    move-result-object v1

    invoke-virtual {p0}, Lcom/liulishuo/okdownload/core/download/DownloadCall;->g()V

    const/4 v2, 0x0

    move v3, v2

    :cond_0
    iget-object v4, p0, Lcom/liulishuo/okdownload/core/download/DownloadCall;->task:Lcom/liulishuo/okdownload/DownloadTask;

    invoke-virtual {v4}, Lcom/liulishuo/okdownload/DownloadTask;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    if-gtz v4, :cond_1

    new-instance v0, Lcom/liulishuo/okdownload/core/download/DownloadCache$a;

    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unexpected url: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/liulishuo/okdownload/core/download/DownloadCall;->task:Lcom/liulishuo/okdownload/DownloadTask;

    invoke-virtual {v3}, Lcom/liulishuo/okdownload/DownloadTask;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/liulishuo/okdownload/core/download/DownloadCache$a;-><init>(Ljava/io/IOException;)V

    iput-object v0, p0, Lcom/liulishuo/okdownload/core/download/DownloadCall;->f:Lcom/liulishuo/okdownload/core/download/DownloadCache;

    goto/16 :goto_2

    :cond_1
    iget-boolean v4, p0, Lcom/liulishuo/okdownload/core/download/DownloadCall;->g:Z

    if-eqz v4, :cond_2

    goto/16 :goto_2

    :cond_2
    :try_start_0
    iget-object v4, p0, Lcom/liulishuo/okdownload/core/download/DownloadCall;->j:Lcom/liulishuo/okdownload/core/breakpoint/DownloadStore;

    iget-object v6, p0, Lcom/liulishuo/okdownload/core/download/DownloadCall;->task:Lcom/liulishuo/okdownload/DownloadTask;

    invoke-virtual {v6}, Lcom/liulishuo/okdownload/DownloadTask;->getId()I

    move-result v6

    invoke-interface {v4, v6}, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointStore;->get(I)Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;

    move-result-object v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/liulishuo/okdownload/core/download/DownloadCall;->j:Lcom/liulishuo/okdownload/core/breakpoint/DownloadStore;

    iget-object v6, p0, Lcom/liulishuo/okdownload/core/download/DownloadCall;->task:Lcom/liulishuo/okdownload/DownloadTask;

    invoke-interface {v4, v6}, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointStore;->createAndInsert(Lcom/liulishuo/okdownload/DownloadTask;)Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;

    move-result-object v4

    :cond_3
    invoke-virtual {p0, v4}, Lcom/liulishuo/okdownload/core/download/DownloadCall;->h(Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    iget-boolean v6, p0, Lcom/liulishuo/okdownload/core/download/DownloadCall;->g:Z

    if-eqz v6, :cond_4

    goto/16 :goto_2

    :cond_4
    invoke-virtual {p0, v4}, Lcom/liulishuo/okdownload/core/download/DownloadCall;->b(Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;)Lcom/liulishuo/okdownload/core/download/DownloadCache;

    move-result-object v6

    iput-object v6, p0, Lcom/liulishuo/okdownload/core/download/DownloadCall;->f:Lcom/liulishuo/okdownload/core/download/DownloadCache;

    invoke-virtual {p0, v4}, Lcom/liulishuo/okdownload/core/download/DownloadCall;->d(Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;)Lcom/liulishuo/okdownload/core/download/BreakpointRemoteCheck;

    move-result-object v7

    :try_start_1
    invoke-virtual {v7}, Lcom/liulishuo/okdownload/core/download/BreakpointRemoteCheck;->check()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    iget-object v8, p0, Lcom/liulishuo/okdownload/core/download/DownloadCall;->task:Lcom/liulishuo/okdownload/DownloadTask;

    invoke-virtual {v8}, Lcom/liulishuo/okdownload/DownloadTask;->getRedirectLocation()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/liulishuo/okdownload/core/download/DownloadCache;->i(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/liulishuo/okdownload/core/file/ProcessFileStrategy;->getFileLock()Lcom/liulishuo/okdownload/core/file/FileLock;

    move-result-object v8

    iget-object v9, p0, Lcom/liulishuo/okdownload/core/download/DownloadCall;->task:Lcom/liulishuo/okdownload/DownloadTask;

    invoke-virtual {v9}, Lcom/liulishuo/okdownload/DownloadTask;->getFile()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/liulishuo/okdownload/core/file/FileLock;->waitForRelease(Ljava/lang/String;)V

    invoke-static {}, Lcom/liulishuo/okdownload/OkDownload;->with()Lcom/liulishuo/okdownload/OkDownload;

    move-result-object v8

    invoke-virtual {v8}, Lcom/liulishuo/okdownload/OkDownload;->downloadStrategy()Lcom/liulishuo/okdownload/core/download/DownloadStrategy;

    move-result-object v8

    iget-object v9, p0, Lcom/liulishuo/okdownload/core/download/DownloadCall;->task:Lcom/liulishuo/okdownload/DownloadTask;

    invoke-virtual {v7}, Lcom/liulishuo/okdownload/core/download/BreakpointRemoteCheck;->getInstanceLength()J

    move-result-wide v10

    invoke-virtual {v8, v9, v4, v10, v11}, Lcom/liulishuo/okdownload/core/download/DownloadStrategy;->inspectAnotherSameInfo(Lcom/liulishuo/okdownload/DownloadTask;Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;J)Z

    :try_start_2
    invoke-virtual {v7}, Lcom/liulishuo/okdownload/core/download/BreakpointRemoteCheck;->isResumable()Z

    move-result v8
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    const-string v9, " "

    const-string v10, "DownloadCall"

    if-eqz v8, :cond_6

    :try_start_3
    invoke-virtual {v7}, Lcom/liulishuo/okdownload/core/download/BreakpointRemoteCheck;->getInstanceLength()J

    move-result-wide v11

    invoke-virtual {p0, v4, v11, v12}, Lcom/liulishuo/okdownload/core/download/DownloadCall;->c(Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;J)Lcom/liulishuo/okdownload/core/download/BreakpointLocalCheck;

    move-result-object v8

    invoke-virtual {v8}, Lcom/liulishuo/okdownload/core/download/BreakpointLocalCheck;->check()V

    invoke-virtual {v8}, Lcom/liulishuo/okdownload/core/download/BreakpointLocalCheck;->isDirty()Z

    move-result v11

    if-eqz v11, :cond_5

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "breakpoint invalid: download from beginning because of local check is dirty "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, p0, Lcom/liulishuo/okdownload/core/download/DownloadCall;->task:Lcom/liulishuo/okdownload/DownloadTask;

    invoke-virtual {v12}, Lcom/liulishuo/okdownload/DownloadTask;->getId()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v10, v9}, Lcom/liulishuo/okdownload/core/Util;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v9, p0, Lcom/liulishuo/okdownload/core/download/DownloadCall;->task:Lcom/liulishuo/okdownload/DownloadTask;

    invoke-virtual {v1, v9}, Lcom/liulishuo/okdownload/core/file/ProcessFileStrategy;->discardProcess(Lcom/liulishuo/okdownload/DownloadTask;)V

    invoke-virtual {v8}, Lcom/liulishuo/okdownload/core/download/BreakpointLocalCheck;->getCauseOrThrow()Lcom/liulishuo/okdownload/core/cause/ResumeFailedCause;

    move-result-object v8

    invoke-virtual {p0, v4, v7, v8}, Lcom/liulishuo/okdownload/core/download/DownloadCall;->a(Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;Lcom/liulishuo/okdownload/core/download/BreakpointRemoteCheck;Lcom/liulishuo/okdownload/core/cause/ResumeFailedCause;)V

    goto :goto_0

    :cond_5
    invoke-virtual {v0}, Lcom/liulishuo/okdownload/OkDownload;->callbackDispatcher()Lcom/liulishuo/okdownload/core/dispatcher/CallbackDispatcher;

    move-result-object v7

    invoke-virtual {v7}, Lcom/liulishuo/okdownload/core/dispatcher/CallbackDispatcher;->dispatch()Lcom/liulishuo/okdownload/DownloadListener;

    move-result-object v7

    iget-object v8, p0, Lcom/liulishuo/okdownload/core/download/DownloadCall;->task:Lcom/liulishuo/okdownload/DownloadTask;

    invoke-interface {v7, v8, v4}, Lcom/liulishuo/okdownload/DownloadListener;->downloadFromBreakpoint(Lcom/liulishuo/okdownload/DownloadTask;Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;)V

    goto :goto_0

    :cond_6
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "breakpoint invalid: download from beginning because of remote check not resumable "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, p0, Lcom/liulishuo/okdownload/core/download/DownloadCall;->task:Lcom/liulishuo/okdownload/DownloadTask;

    invoke-virtual {v11}, Lcom/liulishuo/okdownload/DownloadTask;->getId()I

    move-result v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v10, v8}, Lcom/liulishuo/okdownload/core/Util;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v8, p0, Lcom/liulishuo/okdownload/core/download/DownloadCall;->task:Lcom/liulishuo/okdownload/DownloadTask;

    invoke-virtual {v1, v8}, Lcom/liulishuo/okdownload/core/file/ProcessFileStrategy;->discardProcess(Lcom/liulishuo/okdownload/DownloadTask;)V

    invoke-virtual {v7}, Lcom/liulishuo/okdownload/core/download/BreakpointRemoteCheck;->getCauseOrThrow()Lcom/liulishuo/okdownload/core/cause/ResumeFailedCause;

    move-result-object v8

    invoke-virtual {p0, v4, v7, v8}, Lcom/liulishuo/okdownload/core/download/DownloadCall;->a(Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;Lcom/liulishuo/okdownload/core/download/BreakpointRemoteCheck;Lcom/liulishuo/okdownload/core/cause/ResumeFailedCause;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :goto_0
    invoke-virtual {p0, v6, v4}, Lcom/liulishuo/okdownload/core/download/DownloadCall;->i(Lcom/liulishuo/okdownload/core/download/DownloadCache;Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;)V

    iget-boolean v4, p0, Lcom/liulishuo/okdownload/core/download/DownloadCall;->g:Z

    if-eqz v4, :cond_7

    goto :goto_2

    :cond_7
    invoke-virtual {v6}, Lcom/liulishuo/okdownload/core/download/DownloadCache;->f()Z

    move-result v4

    if-eqz v4, :cond_9

    add-int/lit8 v4, v3, 0x1

    if-ge v3, v5, :cond_8

    iget-object v3, p0, Lcom/liulishuo/okdownload/core/download/DownloadCall;->j:Lcom/liulishuo/okdownload/core/breakpoint/DownloadStore;

    iget-object v6, p0, Lcom/liulishuo/okdownload/core/download/DownloadCall;->task:Lcom/liulishuo/okdownload/DownloadTask;

    invoke-virtual {v6}, Lcom/liulishuo/okdownload/DownloadTask;->getId()I

    move-result v6

    invoke-interface {v3, v6}, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointStore;->remove(I)V

    move v3, v4

    move v4, v5

    goto :goto_1

    :cond_8
    move v3, v4

    :cond_9
    move v4, v2

    :goto_1
    if-nez v4, :cond_0

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-virtual {v6, v0}, Lcom/liulishuo/okdownload/core/download/DownloadCache;->setUnknownError(Ljava/io/IOException;)V

    goto :goto_2

    :catch_1
    move-exception v0

    invoke-virtual {v6, v0}, Lcom/liulishuo/okdownload/core/download/DownloadCache;->catchException(Ljava/io/IOException;)V

    goto :goto_2

    :catch_2
    move-exception v0

    new-instance v1, Lcom/liulishuo/okdownload/core/download/DownloadCache$a;

    invoke-direct {v1, v0}, Lcom/liulishuo/okdownload/core/download/DownloadCache$a;-><init>(Ljava/io/IOException;)V

    iput-object v1, p0, Lcom/liulishuo/okdownload/core/download/DownloadCall;->f:Lcom/liulishuo/okdownload/core/download/DownloadCache;

    :goto_2
    iput-boolean v5, p0, Lcom/liulishuo/okdownload/core/download/DownloadCall;->h:Z

    iget-object v0, p0, Lcom/liulishuo/okdownload/core/download/DownloadCall;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/liulishuo/okdownload/core/download/DownloadCall;->f:Lcom/liulishuo/okdownload/core/download/DownloadCache;

    iget-boolean v1, p0, Lcom/liulishuo/okdownload/core/download/DownloadCall;->g:Z

    if-nez v1, :cond_f

    if-nez v0, :cond_a

    goto :goto_5

    :cond_a
    invoke-virtual {v0}, Lcom/liulishuo/okdownload/core/download/DownloadCache;->g()Z

    move-result v1

    if-nez v1, :cond_e

    invoke-virtual {v0}, Lcom/liulishuo/okdownload/core/download/DownloadCache;->h()Z

    move-result v1

    if-nez v1, :cond_e

    invoke-virtual {v0}, Lcom/liulishuo/okdownload/core/download/DownloadCache;->f()Z

    move-result v1

    if-eqz v1, :cond_b

    goto :goto_3

    :cond_b
    invoke-virtual {v0}, Lcom/liulishuo/okdownload/core/download/DownloadCache;->e()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_c

    sget-object v1, Lcom/liulishuo/okdownload/core/cause/EndCause;->FILE_BUSY:Lcom/liulishuo/okdownload/core/cause/EndCause;

    goto :goto_4

    :cond_c
    invoke-virtual {v0}, Lcom/liulishuo/okdownload/core/download/DownloadCache;->isPreAllocateFailed()Z

    move-result v1

    if-eqz v1, :cond_d

    sget-object v1, Lcom/liulishuo/okdownload/core/cause/EndCause;->PRE_ALLOCATE_FAILED:Lcom/liulishuo/okdownload/core/cause/EndCause;

    invoke-virtual {v0}, Lcom/liulishuo/okdownload/core/download/DownloadCache;->b()Ljava/io/IOException;

    move-result-object v2

    goto :goto_4

    :cond_d
    sget-object v1, Lcom/liulishuo/okdownload/core/cause/EndCause;->COMPLETED:Lcom/liulishuo/okdownload/core/cause/EndCause;

    goto :goto_4

    :cond_e
    :goto_3
    sget-object v1, Lcom/liulishuo/okdownload/core/cause/EndCause;->ERROR:Lcom/liulishuo/okdownload/core/cause/EndCause;

    invoke-virtual {v0}, Lcom/liulishuo/okdownload/core/download/DownloadCache;->b()Ljava/io/IOException;

    move-result-object v2

    :goto_4
    invoke-virtual {p0, v0, v1, v2}, Lcom/liulishuo/okdownload/core/download/DownloadCall;->f(Lcom/liulishuo/okdownload/core/download/DownloadCache;Lcom/liulishuo/okdownload/core/cause/EndCause;Ljava/lang/Exception;)V

    :cond_f
    :goto_5
    return-void
.end method

.method public final f(Lcom/liulishuo/okdownload/core/download/DownloadCache;Lcom/liulishuo/okdownload/core/cause/EndCause;Ljava/lang/Exception;)V
    .locals 2
    .param p2    # Lcom/liulishuo/okdownload/core/cause/EndCause;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Exception;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    sget-object v0, Lcom/liulishuo/okdownload/core/cause/EndCause;->CANCELED:Lcom/liulishuo/okdownload/core/cause/EndCause;

    if-eq p2, v0, :cond_2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/liulishuo/okdownload/core/download/DownloadCall;->g:Z

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/liulishuo/okdownload/core/download/DownloadCall;->h:Z

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/liulishuo/okdownload/core/download/DownloadCall;->j:Lcom/liulishuo/okdownload/core/breakpoint/DownloadStore;

    iget-object v1, p0, Lcom/liulishuo/okdownload/core/download/DownloadCall;->task:Lcom/liulishuo/okdownload/DownloadTask;

    invoke-virtual {v1}, Lcom/liulishuo/okdownload/DownloadTask;->getId()I

    move-result v1

    invoke-interface {v0, v1, p2, p3}, Lcom/liulishuo/okdownload/core/breakpoint/DownloadStore;->onTaskEnd(ILcom/liulishuo/okdownload/core/cause/EndCause;Ljava/lang/Exception;)V

    sget-object v0, Lcom/liulishuo/okdownload/core/cause/EndCause;->COMPLETED:Lcom/liulishuo/okdownload/core/cause/EndCause;

    if-ne p2, v0, :cond_1

    iget-object v0, p0, Lcom/liulishuo/okdownload/core/download/DownloadCall;->j:Lcom/liulishuo/okdownload/core/breakpoint/DownloadStore;

    iget-object v1, p0, Lcom/liulishuo/okdownload/core/download/DownloadCall;->task:Lcom/liulishuo/okdownload/DownloadTask;

    invoke-virtual {v1}, Lcom/liulishuo/okdownload/DownloadTask;->getId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/liulishuo/okdownload/core/breakpoint/DownloadStore;->markFileClear(I)Z

    invoke-static {}, Lcom/liulishuo/okdownload/OkDownload;->with()Lcom/liulishuo/okdownload/OkDownload;

    move-result-object v0

    invoke-virtual {v0}, Lcom/liulishuo/okdownload/OkDownload;->processFileStrategy()Lcom/liulishuo/okdownload/core/file/ProcessFileStrategy;

    move-result-object v0

    invoke-virtual {p1}, Lcom/liulishuo/okdownload/core/download/DownloadCache;->a()Lcom/liulishuo/okdownload/core/file/MultiPointOutputStream;

    move-result-object p1

    iget-object v1, p0, Lcom/liulishuo/okdownload/core/download/DownloadCall;->task:Lcom/liulishuo/okdownload/DownloadTask;

    invoke-virtual {v0, p1, v1}, Lcom/liulishuo/okdownload/core/file/ProcessFileStrategy;->completeProcessStream(Lcom/liulishuo/okdownload/core/file/MultiPointOutputStream;Lcom/liulishuo/okdownload/DownloadTask;)V

    :cond_1
    invoke-static {}, Lcom/liulishuo/okdownload/OkDownload;->with()Lcom/liulishuo/okdownload/OkDownload;

    move-result-object p1

    invoke-virtual {p1}, Lcom/liulishuo/okdownload/OkDownload;->callbackDispatcher()Lcom/liulishuo/okdownload/core/dispatcher/CallbackDispatcher;

    move-result-object p1

    invoke-virtual {p1}, Lcom/liulishuo/okdownload/core/dispatcher/CallbackDispatcher;->dispatch()Lcom/liulishuo/okdownload/DownloadListener;

    move-result-object p1

    iget-object p0, p0, Lcom/liulishuo/okdownload/core/download/DownloadCall;->task:Lcom/liulishuo/okdownload/DownloadTask;

    invoke-interface {p1, p0, p2, p3}, Lcom/liulishuo/okdownload/DownloadListener;->taskEnd(Lcom/liulishuo/okdownload/DownloadTask;Lcom/liulishuo/okdownload/core/cause/EndCause;Ljava/lang/Exception;)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_2
    new-instance p0, Ljava/lang/IllegalAccessError;

    const-string p1, "can\'t recognize cancelled on here"

    invoke-direct {p0, p1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public finished()V
    .locals 2

    invoke-static {}, Lcom/liulishuo/okdownload/OkDownload;->with()Lcom/liulishuo/okdownload/OkDownload;

    move-result-object v0

    invoke-virtual {v0}, Lcom/liulishuo/okdownload/OkDownload;->downloadDispatcher()Lcom/liulishuo/okdownload/core/dispatcher/DownloadDispatcher;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/liulishuo/okdownload/core/dispatcher/DownloadDispatcher;->finish(Lcom/liulishuo/okdownload/core/download/DownloadCall;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "call is finished "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/liulishuo/okdownload/core/download/DownloadCall;->task:Lcom/liulishuo/okdownload/DownloadTask;

    invoke-virtual {p0}, Lcom/liulishuo/okdownload/DownloadTask;->getId()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "DownloadCall"

    invoke-static {v0, p0}, Lcom/liulishuo/okdownload/core/Util;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final g()V
    .locals 2

    iget-object v0, p0, Lcom/liulishuo/okdownload/core/download/DownloadCall;->j:Lcom/liulishuo/okdownload/core/breakpoint/DownloadStore;

    iget-object v1, p0, Lcom/liulishuo/okdownload/core/download/DownloadCall;->task:Lcom/liulishuo/okdownload/DownloadTask;

    invoke-virtual {v1}, Lcom/liulishuo/okdownload/DownloadTask;->getId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/liulishuo/okdownload/core/breakpoint/DownloadStore;->onTaskStart(I)V

    invoke-static {}, Lcom/liulishuo/okdownload/OkDownload;->with()Lcom/liulishuo/okdownload/OkDownload;

    move-result-object v0

    invoke-virtual {v0}, Lcom/liulishuo/okdownload/OkDownload;->callbackDispatcher()Lcom/liulishuo/okdownload/core/dispatcher/CallbackDispatcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/liulishuo/okdownload/core/dispatcher/CallbackDispatcher;->dispatch()Lcom/liulishuo/okdownload/DownloadListener;

    move-result-object v0

    iget-object p0, p0, Lcom/liulishuo/okdownload/core/download/DownloadCall;->task:Lcom/liulishuo/okdownload/DownloadTask;

    invoke-interface {v0, p0}, Lcom/liulishuo/okdownload/DownloadListener;->taskStart(Lcom/liulishuo/okdownload/DownloadTask;)V

    return-void
.end method

.method public getFile()Ljava/io/File;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/liulishuo/okdownload/core/download/DownloadCall;->task:Lcom/liulishuo/okdownload/DownloadTask;

    invoke-virtual {p0}, Lcom/liulishuo/okdownload/DownloadTask;->getFile()Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public h(Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;)V
    .locals 0
    .param p1    # Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/liulishuo/okdownload/core/download/DownloadCall;->task:Lcom/liulishuo/okdownload/DownloadTask;

    invoke-static {p0, p1}, Lcom/liulishuo/okdownload/DownloadTask$TaskHideWrapper;->setBreakpointInfo(Lcom/liulishuo/okdownload/DownloadTask;Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;)V

    return-void
.end method

.method public i(Lcom/liulishuo/okdownload/core/download/DownloadCache;Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    invoke-virtual {p2}, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;->getBlockCount()I

    move-result v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {p2}, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;->getBlockCount()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_1

    invoke-virtual {p2, v3}, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;->getBlock(I)Lcom/liulishuo/okdownload/core/breakpoint/BlockInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/liulishuo/okdownload/core/breakpoint/BlockInfo;->getCurrentOffset()J

    move-result-wide v5

    invoke-virtual {v4}, Lcom/liulishuo/okdownload/core/breakpoint/BlockInfo;->getContentLength()J

    move-result-wide v7

    invoke-static {v5, v6, v7, v8}, Lcom/liulishuo/okdownload/core/Util;->isCorrectFull(JJ)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {v4}, Lcom/liulishuo/okdownload/core/Util;->resetBlockIfDirty(Lcom/liulishuo/okdownload/core/breakpoint/BlockInfo;)V

    iget-object v4, p0, Lcom/liulishuo/okdownload/core/download/DownloadCall;->task:Lcom/liulishuo/okdownload/DownloadTask;

    iget-object v5, p0, Lcom/liulishuo/okdownload/core/download/DownloadCall;->j:Lcom/liulishuo/okdownload/core/breakpoint/DownloadStore;

    invoke-static {v3, v4, p2, p1, v5}, Lcom/liulishuo/okdownload/core/download/DownloadChain;->a(ILcom/liulishuo/okdownload/DownloadTask;Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;Lcom/liulishuo/okdownload/core/download/DownloadCache;Lcom/liulishuo/okdownload/core/breakpoint/DownloadStore;)Lcom/liulishuo/okdownload/core/download/DownloadChain;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4}, Lcom/liulishuo/okdownload/core/download/DownloadChain;->getBlockIndex()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iget-boolean p2, p0, Lcom/liulishuo/okdownload/core/download/DownloadCall;->g:Z

    if-eqz p2, :cond_2

    return-void

    :cond_2
    invoke-virtual {p1}, Lcom/liulishuo/okdownload/core/download/DownloadCache;->a()Lcom/liulishuo/okdownload/core/file/MultiPointOutputStream;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/liulishuo/okdownload/core/file/MultiPointOutputStream;->setRequireStreamBlocks(Ljava/util/List;)V

    invoke-virtual {p0, v1}, Lcom/liulishuo/okdownload/core/download/DownloadCall;->j(Ljava/util/List;)V

    return-void
.end method

.method public interrupted(Ljava/lang/InterruptedException;)V
    .locals 0

    return-void
.end method

.method public isCanceled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/liulishuo/okdownload/core/download/DownloadCall;->g:Z

    return p0
.end method

.method public isFinishing()Z
    .locals 0

    iget-boolean p0, p0, Lcom/liulishuo/okdownload/core/download/DownloadCall;->h:Z

    return p0
.end method

.method public j(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/liulishuo/okdownload/core/download/DownloadChain;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/liulishuo/okdownload/core/download/DownloadChain;

    invoke-virtual {p0, v2}, Lcom/liulishuo/okdownload/core/download/DownloadCall;->k(Lcom/liulishuo/okdownload/core/download/DownloadChain;)Ljava/util/concurrent/Future;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/liulishuo/okdownload/core/download/DownloadCall;->e:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :catch_0
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/Future;

    invoke-interface {v2}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_1

    :try_start_1
    invoke-interface {v2}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :cond_2
    iget-object p0, p0, Lcom/liulishuo/okdownload/core/download/DownloadCall;->e:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    return-void

    :catchall_0
    move-exception v1

    :try_start_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/Future;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_2

    :cond_3
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v0

    iget-object p0, p0, Lcom/liulishuo/okdownload/core/download/DownloadCall;->e:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    throw v0
.end method

.method public k(Lcom/liulishuo/okdownload/core/download/DownloadChain;)Ljava/util/concurrent/Future;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/liulishuo/okdownload/core/download/DownloadChain;",
            ")",
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation

    sget-object p0, Lcom/liulishuo/okdownload/core/download/DownloadCall;->k:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p0, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p0

    return-object p0
.end method
