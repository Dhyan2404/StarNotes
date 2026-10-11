.class public Lcom/tencent/qcloud/core/http/interceptor/CircuitBreakerInterceptor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lokhttp3/Interceptor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/qcloud/core/http/interceptor/CircuitBreakerInterceptor$FootprintWriter;,
        Lcom/tencent/qcloud/core/http/interceptor/CircuitBreakerInterceptor$State;
    }
.end annotation


# static fields
.field private static final THRESHOLD_STATE_SWITCH_FOR_CONTINUOUS_FAIL:I = 0x5

.field private static final THRESHOLD_STATE_SWITCH_FOR_CONTINUOUS_SUCCESS:I = 0x2

.field private static final TIMEOUT_FOR_OPEN_STATE:J = 0x2710L

.field private static final TIMEOUT_FOR_RESET_ALL:J = 0xea60L


# instance fields
.field private entryOpenStateTimestamp:J

.field private failedCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private footprintWriter:Lcom/tencent/qcloud/core/http/interceptor/CircuitBreakerInterceptor$FootprintWriter;

.field private recentErrorTimestamp:J

.field private state:Lcom/tencent/qcloud/core/http/interceptor/CircuitBreakerInterceptor$State;

.field private successCount:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/tencent/qcloud/core/http/interceptor/CircuitBreakerInterceptor;->failedCount:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/tencent/qcloud/core/http/interceptor/CircuitBreakerInterceptor;->successCount:Ljava/util/concurrent/atomic/AtomicInteger;

    sget-object v0, Lcom/tencent/qcloud/core/http/interceptor/CircuitBreakerInterceptor$State;->CLOSED:Lcom/tencent/qcloud/core/http/interceptor/CircuitBreakerInterceptor$State;

    iput-object v0, p0, Lcom/tencent/qcloud/core/http/interceptor/CircuitBreakerInterceptor;->state:Lcom/tencent/qcloud/core/http/interceptor/CircuitBreakerInterceptor$State;

    new-instance v0, Lcom/tencent/qcloud/core/http/interceptor/CircuitBreakerInterceptor$FootprintWriter;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/tencent/qcloud/core/http/interceptor/CircuitBreakerInterceptor$FootprintWriter;-><init>(Lcom/tencent/qcloud/core/http/interceptor/CircuitBreakerInterceptor$1;)V

    iput-object v0, p0, Lcom/tencent/qcloud/core/http/interceptor/CircuitBreakerInterceptor;->footprintWriter:Lcom/tencent/qcloud/core/http/interceptor/CircuitBreakerInterceptor$FootprintWriter;

    return-void
.end method


# virtual methods
.method public intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    move-result-object v0

    invoke-static {}, Lcom/tencent/qcloud/core/task/TaskManager;->getInstance()Lcom/tencent/qcloud/core/task/TaskManager;

    move-result-object v1

    invoke-virtual {v0}, Lokhttp3/Request;->tag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/tencent/qcloud/core/task/TaskManager;->get(Ljava/lang/String;)Lcom/tencent/qcloud/core/task/QCloudTask;

    move-result-object v1

    check-cast v1, Lcom/tencent/qcloud/core/http/HttpTask;

    if-eqz v1, :cond_d

    invoke-virtual {v1}, Lcom/tencent/qcloud/core/task/QCloudTask;->isCanceled()Z

    move-result v2

    if-nez v2, :cond_d

    const-class v2, Lcom/tencent/qcloud/core/http/interceptor/CircuitBreakerInterceptor;

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Lcom/tencent/qcloud/core/http/interceptor/CircuitBreakerInterceptor;->state:Lcom/tencent/qcloud/core/http/interceptor/CircuitBreakerInterceptor$State;

    sget-object v4, Lcom/tencent/qcloud/core/http/interceptor/CircuitBreakerInterceptor$State;->OPEN:Lcom/tencent/qcloud/core/http/interceptor/CircuitBreakerInterceptor$State;

    if-ne v3, v4, :cond_0

    sget-object v3, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    iget-wide v7, p0, Lcom/tencent/qcloud/core/http/interceptor/CircuitBreakerInterceptor;->entryOpenStateTimestamp:J

    sub-long/2addr v5, v7

    invoke-virtual {v3, v5, v6}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v5

    const-wide/16 v7, 0x2710

    cmp-long v3, v5, v7

    if-lez v3, :cond_0

    sget-object v3, Lcom/tencent/qcloud/core/http/interceptor/CircuitBreakerInterceptor$State;->HALF_OPENED:Lcom/tencent/qcloud/core/http/interceptor/CircuitBreakerInterceptor$State;

    iput-object v3, p0, Lcom/tencent/qcloud/core/http/interceptor/CircuitBreakerInterceptor;->state:Lcom/tencent/qcloud/core/http/interceptor/CircuitBreakerInterceptor$State;

    :cond_0
    iget-wide v5, p0, Lcom/tencent/qcloud/core/http/interceptor/CircuitBreakerInterceptor;->recentErrorTimestamp:J

    const-wide/16 v7, 0x0

    cmp-long v3, v5, v7

    const/4 v5, 0x0

    if-lez v3, :cond_1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v9

    iget-wide v11, p0, Lcom/tencent/qcloud/core/http/interceptor/CircuitBreakerInterceptor;->recentErrorTimestamp:J

    sub-long/2addr v9, v11

    invoke-virtual {v3, v9, v10}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v9

    const-wide/32 v11, 0xea60

    cmp-long v3, v9, v11

    if-lez v3, :cond_1

    sget-object v3, Lcom/tencent/qcloud/core/http/interceptor/CircuitBreakerInterceptor$State;->CLOSED:Lcom/tencent/qcloud/core/http/interceptor/CircuitBreakerInterceptor$State;

    iput-object v3, p0, Lcom/tencent/qcloud/core/http/interceptor/CircuitBreakerInterceptor;->state:Lcom/tencent/qcloud/core/http/interceptor/CircuitBreakerInterceptor$State;

    iget-object v3, p0, Lcom/tencent/qcloud/core/http/interceptor/CircuitBreakerInterceptor;->successCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3, v5}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iget-object v3, p0, Lcom/tencent/qcloud/core/http/interceptor/CircuitBreakerInterceptor;->failedCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3, v5}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iput-wide v7, p0, Lcom/tencent/qcloud/core/http/interceptor/CircuitBreakerInterceptor;->recentErrorTimestamp:J

    :cond_1
    iget-object v3, p0, Lcom/tencent/qcloud/core/http/interceptor/CircuitBreakerInterceptor;->footprintWriter:Lcom/tencent/qcloud/core/http/interceptor/CircuitBreakerInterceptor$FootprintWriter;

    invoke-virtual {v3, v1}, Lcom/tencent/qcloud/core/http/interceptor/CircuitBreakerInterceptor$FootprintWriter;->noRecords(Lcom/tencent/qcloud/core/http/HttpTask;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v6, p0, Lcom/tencent/qcloud/core/http/interceptor/CircuitBreakerInterceptor;->footprintWriter:Lcom/tencent/qcloud/core/http/interceptor/CircuitBreakerInterceptor$FootprintWriter;

    invoke-virtual {v6, v1}, Lcom/tencent/qcloud/core/http/interceptor/CircuitBreakerInterceptor$FootprintWriter;->remember(Lcom/tencent/qcloud/core/http/HttpTask;)V

    :cond_2
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    iget-object v2, p0, Lcom/tencent/qcloud/core/http/interceptor/CircuitBreakerInterceptor;->state:Lcom/tencent/qcloud/core/http/interceptor/CircuitBreakerInterceptor$State;

    if-ne v2, v4, :cond_5

    invoke-virtual {v1}, Lcom/tencent/qcloud/core/http/HttpTask;->isDownloadTask()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v1}, Lcom/tencent/qcloud/core/http/HttpTask;->isUploadTask()Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_3
    if-eqz v3, :cond_4

    goto :goto_0

    :cond_4
    const-string p0, "QCloudHttp"

    const-string p1, "CircuitBreaker deny %s"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/tencent/qcloud/core/logger/QCloudLogger;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance p0, Lcom/tencent/qcloud/core/http/interceptor/CircuitBreakerDeniedException;

    const-string p1, "too many continuous errors."

    invoke-direct {p0, p1}, Lcom/tencent/qcloud/core/http/interceptor/CircuitBreakerDeniedException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    :goto_0
    const/4 v1, 0x1

    :try_start_1
    invoke-interface {p1, v0}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object p1

    const-class v0, Lcom/tencent/qcloud/core/http/interceptor/CircuitBreakerInterceptor;

    monitor-enter v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    iget-object v2, p0, Lcom/tencent/qcloud/core/http/interceptor/CircuitBreakerInterceptor;->state:Lcom/tencent/qcloud/core/http/interceptor/CircuitBreakerInterceptor$State;

    sget-object v3, Lcom/tencent/qcloud/core/http/interceptor/CircuitBreakerInterceptor$State;->HALF_OPENED:Lcom/tencent/qcloud/core/http/interceptor/CircuitBreakerInterceptor$State;

    const/4 v6, 0x2

    if-ne v2, v3, :cond_6

    iget-object v2, p0, Lcom/tencent/qcloud/core/http/interceptor/CircuitBreakerInterceptor;->successCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v2

    if-lt v2, v6, :cond_6

    const-string v2, "QCloudHttp"

    const-string v3, "CircuitBreaker is CLOSED."

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/tencent/qcloud/core/logger/QCloudLogger;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v2, Lcom/tencent/qcloud/core/http/interceptor/CircuitBreakerInterceptor$State;->CLOSED:Lcom/tencent/qcloud/core/http/interceptor/CircuitBreakerInterceptor$State;

    iput-object v2, p0, Lcom/tencent/qcloud/core/http/interceptor/CircuitBreakerInterceptor;->state:Lcom/tencent/qcloud/core/http/interceptor/CircuitBreakerInterceptor$State;

    iget-object v2, p0, Lcom/tencent/qcloud/core/http/interceptor/CircuitBreakerInterceptor;->failedCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2, v5}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    goto :goto_1

    :cond_6
    iget-object v2, p0, Lcom/tencent/qcloud/core/http/interceptor/CircuitBreakerInterceptor;->state:Lcom/tencent/qcloud/core/http/interceptor/CircuitBreakerInterceptor$State;

    if-ne v2, v4, :cond_7

    const-string v2, "QCloudHttp"

    const-string v4, "CircuitBreaker is HALF_OPENED."

    new-array v6, v5, [Ljava/lang/Object;

    invoke-static {v2, v4, v6}, Lcom/tencent/qcloud/core/logger/QCloudLogger;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iput-object v3, p0, Lcom/tencent/qcloud/core/http/interceptor/CircuitBreakerInterceptor;->state:Lcom/tencent/qcloud/core/http/interceptor/CircuitBreakerInterceptor$State;

    iget-object v2, p0, Lcom/tencent/qcloud/core/http/interceptor/CircuitBreakerInterceptor;->successCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    goto :goto_1

    :cond_7
    sget-object v3, Lcom/tencent/qcloud/core/http/interceptor/CircuitBreakerInterceptor$State;->CLOSED:Lcom/tencent/qcloud/core/http/interceptor/CircuitBreakerInterceptor$State;

    if-ne v2, v3, :cond_9

    iget-object v2, p0, Lcom/tencent/qcloud/core/http/interceptor/CircuitBreakerInterceptor;->failedCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    if-lez v2, :cond_8

    iget-object v3, p0, Lcom/tencent/qcloud/core/http/interceptor/CircuitBreakerInterceptor;->failedCount:Ljava/util/concurrent/atomic/AtomicInteger;

    sub-int/2addr v2, v6

    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    :cond_8
    const-string v2, "QCloudHttp"

    const-string v3, "CircuitBreaker get success"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/tencent/qcloud/core/logger/QCloudLogger;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_9
    :goto_1
    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw p1
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    move-exception p1

    const-class v0, Lcom/tencent/qcloud/core/http/interceptor/CircuitBreakerInterceptor;

    monitor-enter v0

    :try_start_4
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/tencent/qcloud/core/http/interceptor/CircuitBreakerInterceptor;->recentErrorTimestamp:J

    iget-object v2, p0, Lcom/tencent/qcloud/core/http/interceptor/CircuitBreakerInterceptor;->state:Lcom/tencent/qcloud/core/http/interceptor/CircuitBreakerInterceptor$State;

    sget-object v3, Lcom/tencent/qcloud/core/http/interceptor/CircuitBreakerInterceptor$State;->CLOSED:Lcom/tencent/qcloud/core/http/interceptor/CircuitBreakerInterceptor$State;

    if-ne v2, v3, :cond_b

    iget-object v2, p0, Lcom/tencent/qcloud/core/http/interceptor/CircuitBreakerInterceptor;->failedCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v2

    const/4 v3, 0x5

    if-ge v2, v3, :cond_a

    goto :goto_2

    :cond_a
    const-string v1, "QCloudHttp"

    const-string v2, "CircuitBreaker is OPEN."

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/tencent/qcloud/core/logger/QCloudLogger;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v1, Lcom/tencent/qcloud/core/http/interceptor/CircuitBreakerInterceptor$State;->OPEN:Lcom/tencent/qcloud/core/http/interceptor/CircuitBreakerInterceptor$State;

    iput-object v1, p0, Lcom/tencent/qcloud/core/http/interceptor/CircuitBreakerInterceptor;->state:Lcom/tencent/qcloud/core/http/interceptor/CircuitBreakerInterceptor$State;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/tencent/qcloud/core/http/interceptor/CircuitBreakerInterceptor;->entryOpenStateTimestamp:J

    goto :goto_3

    :cond_b
    :goto_2
    iget-object v2, p0, Lcom/tencent/qcloud/core/http/interceptor/CircuitBreakerInterceptor;->state:Lcom/tencent/qcloud/core/http/interceptor/CircuitBreakerInterceptor$State;

    sget-object v3, Lcom/tencent/qcloud/core/http/interceptor/CircuitBreakerInterceptor$State;->HALF_OPENED:Lcom/tencent/qcloud/core/http/interceptor/CircuitBreakerInterceptor$State;

    if-ne v2, v3, :cond_c

    const-string v1, "QCloudHttp"

    const-string v2, "CircuitBreaker is OPEN."

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/tencent/qcloud/core/logger/QCloudLogger;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v1, Lcom/tencent/qcloud/core/http/interceptor/CircuitBreakerInterceptor$State;->OPEN:Lcom/tencent/qcloud/core/http/interceptor/CircuitBreakerInterceptor$State;

    iput-object v1, p0, Lcom/tencent/qcloud/core/http/interceptor/CircuitBreakerInterceptor;->state:Lcom/tencent/qcloud/core/http/interceptor/CircuitBreakerInterceptor$State;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/tencent/qcloud/core/http/interceptor/CircuitBreakerInterceptor;->entryOpenStateTimestamp:J

    goto :goto_3

    :cond_c
    const-string v2, "QCloudHttp"

    const-string v3, "CircuitBreaker get fail: %d"

    new-array v1, v1, [Ljava/lang/Object;

    iget-object p0, p0, Lcom/tencent/qcloud/core/http/interceptor/CircuitBreakerInterceptor;->failedCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v1, v5

    invoke-static {v2, v3, v1}, Lcom/tencent/qcloud/core/logger/QCloudLogger;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_3
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p1

    :catchall_1
    move-exception p0

    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw p0

    :catchall_2
    move-exception p0

    :try_start_6
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw p0

    :cond_d
    new-instance p0, Ljava/io/IOException;

    const-string p1, "CANCELED"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
