.class public Lcom/couchbase/lite/internal/exec/ClientTask;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final EXECUTOR:Lcom/couchbase/lite/internal/exec/CBLExecutor;

.field public static final MAX_POOL_SIZE:I


# instance fields
.field private err:Ljava/lang/Exception;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private result:Ljava/lang/Object;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final task:Ljava/util/concurrent/Callable;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    sget v0, Lcom/couchbase/lite/internal/exec/CBLExecutor;->CPU_COUNT:I

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/couchbase/lite/internal/exec/ClientTask;->MAX_POOL_SIZE:I

    new-instance v1, Lcom/couchbase/lite/internal/exec/CBLExecutor;

    new-instance v2, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v2}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    const-string v3, "Client worker"

    const/4 v4, 0x0

    invoke-direct {v1, v3, v4, v0, v2}, Lcom/couchbase/lite/internal/exec/CBLExecutor;-><init>(Ljava/lang/String;IILjava/util/concurrent/BlockingQueue;)V

    sput-object v1, Lcom/couchbase/lite/internal/exec/ClientTask;->EXECUTOR:Lcom/couchbase/lite/internal/exec/CBLExecutor;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Callable;)V
    .locals 0
    .param p1    # Ljava/util/concurrent/Callable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/couchbase/lite/internal/exec/ClientTask;->task:Ljava/util/concurrent/Callable;

    return-void
.end method

.method private setFailure(Ljava/lang/Throwable;)V
    .locals 1
    .param p1    # Ljava/lang/Throwable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    instance-of v0, p1, Ljava/lang/Error;

    if-nez v0, :cond_2

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/couchbase/lite/internal/exec/ClientTask;->err:Ljava/lang/Exception;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    check-cast p1, Ljava/lang/Exception;

    iput-object p1, p0, Lcom/couchbase/lite/internal/exec/ClientTask;->err:Ljava/lang/Exception;

    :cond_1
    :goto_0
    return-void

    :cond_2
    check-cast p1, Ljava/lang/Error;

    throw p1
.end method


# virtual methods
.method public execute()V
    .locals 3

    const-wide/16 v0, 0x1e

    .line 1
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v0, v1, v2}, Lcom/couchbase/lite/internal/exec/ClientTask;->execute(JLjava/util/concurrent/TimeUnit;)V

    return-void
.end method

.method public execute(JLjava/util/concurrent/TimeUnit;)V
    .locals 4
    .param p3    # Ljava/util/concurrent/TimeUnit;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    new-instance v0, Ljava/util/concurrent/FutureTask;

    iget-object v1, p0, Lcom/couchbase/lite/internal/exec/ClientTask;->task:Ljava/util/concurrent/Callable;

    invoke-direct {v0, v1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 3
    :try_start_0
    sget-object v1, Lcom/couchbase/lite/internal/exec/ClientTask;->EXECUTOR:Lcom/couchbase/lite/internal/exec/CBLExecutor;

    new-instance v2, Lcom/couchbase/lite/internal/exec/InstrumentedTask;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Lcom/couchbase/lite/internal/exec/InstrumentedTask;-><init>(Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    invoke-virtual {v1, v2}, Lcom/couchbase/lite/internal/exec/CBLExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4
    :try_start_1
    invoke-virtual {v0, p1, p2, p3}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/couchbase/lite/internal/exec/ClientTask;->result:Ljava/lang/Object;
    :try_end_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 5
    invoke-direct {p0, p1}, Lcom/couchbase/lite/internal/exec/ClientTask;->setFailure(Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_0
    move-exception p1

    .line 6
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/couchbase/lite/internal/exec/ClientTask;->setFailure(Ljava/lang/Throwable;)V

    :goto_0
    return-void

    :catchall_1
    move-exception p1

    .line 7
    invoke-static {}, Lcom/couchbase/lite/internal/CouchbaseLiteInternal;->debugging()Z

    move-result p2

    if-eqz p2, :cond_0

    sget-object p2, Lcom/couchbase/lite/internal/exec/ClientTask;->EXECUTOR:Lcom/couchbase/lite/internal/exec/CBLExecutor;

    invoke-virtual {p2}, Lcom/couchbase/lite/internal/exec/CBLExecutor;->dumpState()V

    .line 8
    :cond_0
    invoke-direct {p0, p1}, Lcom/couchbase/lite/internal/exec/ClientTask;->setFailure(Ljava/lang/Throwable;)V

    return-void
.end method

.method public getFailure()Ljava/lang/Exception;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/couchbase/lite/internal/exec/ClientTask;->err:Ljava/lang/Exception;

    return-object p0
.end method

.method public getResult()Ljava/lang/Object;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object p0, p0, Lcom/couchbase/lite/internal/exec/ClientTask;->result:Ljava/lang/Object;

    return-object p0
.end method
