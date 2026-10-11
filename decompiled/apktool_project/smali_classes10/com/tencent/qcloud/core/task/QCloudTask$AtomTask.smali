.class Lcom/tencent/qcloud/core/task/QCloudTask$AtomTask;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qcloud/core/task/QCloudTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AtomTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TResult:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;",
        "Ljava/lang/Comparable<",
        "Ljava/lang/Runnable;",
        ">;"
    }
.end annotation


# static fields
.field private static increment:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private callable:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "TTResult;>;"
        }
    .end annotation
.end field

.field private ct:Lbolts/CancellationToken;

.field private priority:I

.field private taskIdentifier:I

.field private tcs:Lbolts/TaskCompletionSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbolts/TaskCompletionSource<",
            "TTResult;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/tencent/qcloud/core/task/QCloudTask$AtomTask;->increment:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>(Lbolts/TaskCompletionSource;Lbolts/CancellationToken;Ljava/util/concurrent/Callable;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbolts/TaskCompletionSource<",
            "TTResult;>;",
            "Lbolts/CancellationToken;",
            "Ljava/util/concurrent/Callable<",
            "TTResult;>;I)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/qcloud/core/task/QCloudTask$AtomTask;->tcs:Lbolts/TaskCompletionSource;

    iput-object p2, p0, Lcom/tencent/qcloud/core/task/QCloudTask$AtomTask;->ct:Lbolts/CancellationToken;

    iput-object p3, p0, Lcom/tencent/qcloud/core/task/QCloudTask$AtomTask;->callable:Ljava/util/concurrent/Callable;

    iput p4, p0, Lcom/tencent/qcloud/core/task/QCloudTask$AtomTask;->priority:I

    sget-object p1, Lcom/tencent/qcloud/core/task/QCloudTask$AtomTask;->increment:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result p1

    iput p1, p0, Lcom/tencent/qcloud/core/task/QCloudTask$AtomTask;->taskIdentifier:I

    return-void
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    check-cast p1, Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Lcom/tencent/qcloud/core/task/QCloudTask$AtomTask;->compareTo(Ljava/lang/Runnable;)I

    move-result p0

    return p0
.end method

.method public compareTo(Ljava/lang/Runnable;)I
    .locals 2
    .param p1    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    instance-of v0, p1, Lcom/tencent/qcloud/core/task/QCloudTask$AtomTask;

    if-eqz v0, :cond_1

    .line 3
    check-cast p1, Lcom/tencent/qcloud/core/task/QCloudTask$AtomTask;

    iget v0, p1, Lcom/tencent/qcloud/core/task/QCloudTask$AtomTask;->priority:I

    iget v1, p0, Lcom/tencent/qcloud/core/task/QCloudTask$AtomTask;->priority:I

    sub-int/2addr v0, v1

    if-eqz v0, :cond_0

    return v0

    .line 4
    :cond_0
    iget p0, p0, Lcom/tencent/qcloud/core/task/QCloudTask$AtomTask;->taskIdentifier:I

    iget p1, p1, Lcom/tencent/qcloud/core/task/QCloudTask$AtomTask;->taskIdentifier:I

    sub-int/2addr p0, p1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/qcloud/core/task/QCloudTask$AtomTask;->ct:Lbolts/CancellationToken;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lbolts/CancellationToken;->isCancellationRequested()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/tencent/qcloud/core/task/QCloudTask$AtomTask;->tcs:Lbolts/TaskCompletionSource;

    invoke-virtual {p0}, Lbolts/TaskCompletionSource;->setCancelled()V

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/tencent/qcloud/core/task/QCloudTask$AtomTask;->tcs:Lbolts/TaskCompletionSource;

    iget-object v1, p0, Lcom/tencent/qcloud/core/task/QCloudTask$AtomTask;->callable:Ljava/util/concurrent/Callable;

    invoke-interface {v1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbolts/TaskCompletionSource;->setResult(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object p0, p0, Lcom/tencent/qcloud/core/task/QCloudTask$AtomTask;->tcs:Lbolts/TaskCompletionSource;

    invoke-virtual {p0, v0}, Lbolts/TaskCompletionSource;->setError(Ljava/lang/Exception;)V

    goto :goto_0

    :catch_1
    iget-object p0, p0, Lcom/tencent/qcloud/core/task/QCloudTask$AtomTask;->tcs:Lbolts/TaskCompletionSource;

    invoke-virtual {p0}, Lbolts/TaskCompletionSource;->setCancelled()V

    :goto_0
    return-void
.end method
