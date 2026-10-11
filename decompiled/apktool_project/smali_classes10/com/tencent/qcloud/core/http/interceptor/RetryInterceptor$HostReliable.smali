.class Lcom/tencent/qcloud/core/http/interceptor/RetryInterceptor$HostReliable;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qcloud/core/http/interceptor/RetryInterceptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HostReliable"
.end annotation


# static fields
.field private static final defaultReliable:I = 0x2


# instance fields
.field private final host:Ljava/lang/String;

.field private final maxReliable:I

.field private final minReliable:I

.field private reliable:I

.field private final resetPeriod:J


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 7

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    .line 3
    iput v0, p0, Lcom/tencent/qcloud/core/http/interceptor/RetryInterceptor$HostReliable;->maxReliable:I

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lcom/tencent/qcloud/core/http/interceptor/RetryInterceptor$HostReliable;->minReliable:I

    const-wide/32 v0, 0x493e0

    .line 5
    iput-wide v0, p0, Lcom/tencent/qcloud/core/http/interceptor/RetryInterceptor$HostReliable;->resetPeriod:J

    .line 6
    iput-object p1, p0, Lcom/tencent/qcloud/core/http/interceptor/RetryInterceptor$HostReliable;->host:Ljava/lang/String;

    const/4 v0, 0x2

    .line 7
    iput v0, p0, Lcom/tencent/qcloud/core/http/interceptor/RetryInterceptor$HostReliable;->reliable:I

    .line 8
    new-instance v2, Lcom/tencent/qcloud/core/http/interceptor/RetryInterceptor$HostReliable$1;

    invoke-direct {v2, p0}, Lcom/tencent/qcloud/core/http/interceptor/RetryInterceptor$HostReliable$1;-><init>(Lcom/tencent/qcloud/core/http/interceptor/RetryInterceptor$HostReliable;)V

    .line 9
    new-instance v1, Ljava/util/Timer;

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "reliable"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/util/Timer;-><init>(Ljava/lang/String;)V

    const-wide/32 v3, 0x493e0

    const-wide/32 v5, 0x493e0

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lcom/tencent/qcloud/core/http/interceptor/RetryInterceptor$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/tencent/qcloud/core/http/interceptor/RetryInterceptor$HostReliable;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/tencent/qcloud/core/http/interceptor/RetryInterceptor$HostReliable;)V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/qcloud/core/http/interceptor/RetryInterceptor$HostReliable;->increaseReliable()V

    return-void
.end method

.method public static synthetic access$200(Lcom/tencent/qcloud/core/http/interceptor/RetryInterceptor$HostReliable;)V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/qcloud/core/http/interceptor/RetryInterceptor$HostReliable;->decreaseReliable()V

    return-void
.end method

.method public static synthetic access$300(Lcom/tencent/qcloud/core/http/interceptor/RetryInterceptor$HostReliable;)I
    .locals 0

    invoke-direct {p0}, Lcom/tencent/qcloud/core/http/interceptor/RetryInterceptor$HostReliable;->getReliable()I

    move-result p0

    return p0
.end method

.method private declared-synchronized decreaseReliable()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/tencent/qcloud/core/http/interceptor/RetryInterceptor$HostReliable;->reliable:I

    if-lez v0, :cond_0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/tencent/qcloud/core/http/interceptor/RetryInterceptor$HostReliable;->reliable:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized getReliable()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/tencent/qcloud/core/http/interceptor/RetryInterceptor$HostReliable;->reliable:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized increaseReliable()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/tencent/qcloud/core/http/interceptor/RetryInterceptor$HostReliable;->reliable:I

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tencent/qcloud/core/http/interceptor/RetryInterceptor$HostReliable;->reliable:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized resetReliable()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x2

    :try_start_0
    iput v0, p0, Lcom/tencent/qcloud/core/http/interceptor/RetryInterceptor$HostReliable;->reliable:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized zeroReliable()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, Lcom/tencent/qcloud/core/http/interceptor/RetryInterceptor$HostReliable;->reliable:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
