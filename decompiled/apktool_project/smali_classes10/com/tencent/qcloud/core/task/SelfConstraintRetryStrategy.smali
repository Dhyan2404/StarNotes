.class public abstract Lcom/tencent/qcloud/core/task/SelfConstraintRetryStrategy;
.super Lcom/tencent/qcloud/core/task/RetryStrategy;
.source "SourceFile"


# instance fields
.field private nextDelay:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method public constructor <init>(III)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/qcloud/core/task/RetryStrategy;-><init>(III)V

    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 p2, 0x0

    invoke-direct {p1, p2, p3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object p1, p0, Lcom/tencent/qcloud/core/task/SelfConstraintRetryStrategy;->nextDelay:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method


# virtual methods
.method public getNextDelay(I)J
    .locals 0

    iget-object p0, p0, Lcom/tencent/qcloud/core/task/SelfConstraintRetryStrategy;->nextDelay:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide p0

    return-wide p0
.end method

.method public onTaskEnd(ZLjava/lang/Exception;)V
    .locals 6

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/tencent/qcloud/core/task/SelfConstraintRetryStrategy;->nextDelay:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 p1, 0x0

    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p2}, Lcom/tencent/qcloud/core/task/SelfConstraintRetryStrategy;->shouldIncreaseDelay(Ljava/lang/Exception;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/tencent/qcloud/core/task/SelfConstraintRetryStrategy;->nextDelay:Ljava/util/concurrent/atomic/AtomicLong;

    iget p2, p0, Lcom/tencent/qcloud/core/task/RetryStrategy;->maxBackoff:I

    int-to-long v0, p2

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    const-wide/16 v4, 0x2

    mul-long/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    iget p0, p0, Lcom/tencent/qcloud/core/task/RetryStrategy;->initBackoff:I

    int-to-long v2, p0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    :cond_1
    :goto_0
    return-void
.end method

.method public abstract shouldIncreaseDelay(Ljava/lang/Exception;)Z
.end method
