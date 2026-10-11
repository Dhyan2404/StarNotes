.class public Lcom/tencent/qcloud/core/task/RetryStrategy;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/qcloud/core/task/RetryStrategy$WeightAndReliableAddition;
    }
.end annotation


# static fields
.field protected static final BACKOFF_MULTIPLIER:I = 0x2

.field public static DEFAULT:Lcom/tencent/qcloud/core/task/RetryStrategy; = null

.field private static final DEFAULT_ATTEMPTS:I = 0x3

.field private static final DEFAULT_INIT_BACKOFF:I = 0x3e8

.field private static final DEFAULT_MAX_BACKOFF:I = 0x7d0

.field public static FAIL_FAST:Lcom/tencent/qcloud/core/task/RetryStrategy;


# instance fields
.field protected final baseAttempts:I

.field protected final initBackoff:I

.field protected final maxBackoff:I

.field private qCloudHttpRetryHandler:Lcom/tencent/qcloud/core/http/QCloudHttpRetryHandler;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/tencent/qcloud/core/task/RetryStrategy;

    const/16 v1, 0x3e8

    const/16 v2, 0x7d0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/tencent/qcloud/core/task/RetryStrategy;-><init>(III)V

    sput-object v0, Lcom/tencent/qcloud/core/task/RetryStrategy;->DEFAULT:Lcom/tencent/qcloud/core/task/RetryStrategy;

    new-instance v0, Lcom/tencent/qcloud/core/task/RetryStrategy;

    const/high16 v1, -0x80000000

    invoke-direct {v0, v3, v3, v1}, Lcom/tencent/qcloud/core/task/RetryStrategy;-><init>(III)V

    sput-object v0, Lcom/tencent/qcloud/core/task/RetryStrategy;->FAIL_FAST:Lcom/tencent/qcloud/core/task/RetryStrategy;

    return-void
.end method

.method public constructor <init>(III)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/tencent/qcloud/core/http/QCloudHttpRetryHandler;->DEFAULT:Lcom/tencent/qcloud/core/http/QCloudHttpRetryHandler;

    iput-object v0, p0, Lcom/tencent/qcloud/core/task/RetryStrategy;->qCloudHttpRetryHandler:Lcom/tencent/qcloud/core/http/QCloudHttpRetryHandler;

    iput p1, p0, Lcom/tencent/qcloud/core/task/RetryStrategy;->initBackoff:I

    iput p2, p0, Lcom/tencent/qcloud/core/task/RetryStrategy;->maxBackoff:I

    iput p3, p0, Lcom/tencent/qcloud/core/task/RetryStrategy;->baseAttempts:I

    return-void
.end method


# virtual methods
.method public getNextDelay(I)J
    .locals 6

    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    const-wide/16 p0, 0x0

    return-wide p0

    :cond_0
    iget v1, p0, Lcom/tencent/qcloud/core/task/RetryStrategy;->maxBackoff:I

    iget p0, p0, Lcom/tencent/qcloud/core/task/RetryStrategy;->initBackoff:I

    sub-int/2addr p1, v0

    int-to-double v2, p1

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-int p1, v2

    mul-int/2addr p0, p1

    invoke-static {v1, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    int-to-long p0, p0

    return-wide p0
.end method

.method public getQCloudHttpRetryHandler()Lcom/tencent/qcloud/core/http/QCloudHttpRetryHandler;
    .locals 0

    iget-object p0, p0, Lcom/tencent/qcloud/core/task/RetryStrategy;->qCloudHttpRetryHandler:Lcom/tencent/qcloud/core/http/QCloudHttpRetryHandler;

    return-object p0
.end method

.method public onTaskEnd(ZLjava/lang/Exception;)V
    .locals 0

    return-void
.end method

.method public setRetryHandler(Lcom/tencent/qcloud/core/http/QCloudHttpRetryHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qcloud/core/task/RetryStrategy;->qCloudHttpRetryHandler:Lcom/tencent/qcloud/core/http/QCloudHttpRetryHandler;

    return-void
.end method

.method public shouldRetry(IJI)Z
    .locals 0

    iget p0, p0, Lcom/tencent/qcloud/core/task/RetryStrategy;->baseAttempts:I

    add-int/2addr p0, p4

    if-ge p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
