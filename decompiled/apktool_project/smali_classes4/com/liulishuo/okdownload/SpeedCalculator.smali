.class public Lcom/liulishuo/okdownload/SpeedCalculator;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:J

.field public b:J

.field public c:J

.field public d:J

.field public e:J

.field public f:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(JZ)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0, p1, p2}, Lcom/liulishuo/okdownload/core/Util;->humanReadableBytes(JZ)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/s"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public averageSpeed()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lcom/liulishuo/okdownload/SpeedCalculator;->speedFromBegin()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public b()J
    .locals 2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public declared-synchronized downloading(J)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/liulishuo/okdownload/SpeedCalculator;->a:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/liulishuo/okdownload/SpeedCalculator;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/liulishuo/okdownload/SpeedCalculator;->a:J

    iput-wide v0, p0, Lcom/liulishuo/okdownload/SpeedCalculator;->d:J

    :cond_0
    iget-wide v0, p0, Lcom/liulishuo/okdownload/SpeedCalculator;->b:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/liulishuo/okdownload/SpeedCalculator;->b:J

    iget-wide v0, p0, Lcom/liulishuo/okdownload/SpeedCalculator;->f:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/liulishuo/okdownload/SpeedCalculator;->f:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized endTask()V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/liulishuo/okdownload/SpeedCalculator;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/liulishuo/okdownload/SpeedCalculator;->e:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized flush()V
    .locals 8

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/liulishuo/okdownload/SpeedCalculator;->b()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/liulishuo/okdownload/SpeedCalculator;->b:J

    iget-wide v4, p0, Lcom/liulishuo/okdownload/SpeedCalculator;->a:J

    sub-long v4, v0, v4

    const-wide/16 v6, 0x1

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    iput-wide v6, p0, Lcom/liulishuo/okdownload/SpeedCalculator;->b:J

    iput-wide v0, p0, Lcom/liulishuo/okdownload/SpeedCalculator;->a:J

    long-to-float v0, v2

    long-to-float v1, v4

    div-float/2addr v0, v1

    const/high16 v1, 0x447a0000    # 1000.0f

    mul-float/2addr v0, v1

    float-to-long v0, v0

    iput-wide v0, p0, Lcom/liulishuo/okdownload/SpeedCalculator;->c:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getBytesPerSecondAndFlush()J
    .locals 7

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/liulishuo/okdownload/SpeedCalculator;->b()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/liulishuo/okdownload/SpeedCalculator;->a:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    cmp-long v2, v0, v2

    const-wide/16 v3, 0x0

    if-gez v2, :cond_0

    iget-wide v5, p0, Lcom/liulishuo/okdownload/SpeedCalculator;->c:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v2, v5, v3

    if-eqz v2, :cond_0

    monitor-exit p0

    return-wide v5

    :cond_0
    :try_start_1
    iget-wide v5, p0, Lcom/liulishuo/okdownload/SpeedCalculator;->c:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    cmp-long v2, v5, v3

    if-nez v2, :cond_1

    const-wide/16 v5, 0x1f4

    cmp-long v0, v0, v5

    if-gez v0, :cond_1

    monitor-exit p0

    return-wide v3

    :cond_1
    :try_start_2
    invoke-virtual {p0}, Lcom/liulishuo/okdownload/SpeedCalculator;->getInstantBytesPerSecondAndFlush()J

    move-result-wide v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getBytesPerSecondFromBegin()J
    .locals 6

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/liulishuo/okdownload/SpeedCalculator;->e:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/liulishuo/okdownload/SpeedCalculator;->b()J

    move-result-wide v0

    :cond_0
    iget-wide v2, p0, Lcom/liulishuo/okdownload/SpeedCalculator;->f:J

    iget-wide v4, p0, Lcom/liulishuo/okdownload/SpeedCalculator;->d:J

    sub-long/2addr v0, v4

    const-wide/16 v4, 0x1

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    long-to-float v2, v2

    long-to-float v0, v0

    div-float/2addr v2, v0

    const/high16 v0, 0x447a0000    # 1000.0f

    mul-float/2addr v2, v0

    float-to-long v0, v2

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getInstantBytesPerSecondAndFlush()J
    .locals 2

    invoke-virtual {p0}, Lcom/liulishuo/okdownload/SpeedCalculator;->flush()V

    iget-wide v0, p0, Lcom/liulishuo/okdownload/SpeedCalculator;->c:J

    return-wide v0
.end method

.method public declared-synchronized getInstantSpeedDurationMillis()J
    .locals 4

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/liulishuo/okdownload/SpeedCalculator;->b()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/liulishuo/okdownload/SpeedCalculator;->a:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-long/2addr v0, v2

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getSpeedWithBinaryAndFlush()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/liulishuo/okdownload/SpeedCalculator;->getInstantBytesPerSecondAndFlush()J

    move-result-wide v0

    const/4 p0, 0x0

    invoke-static {v0, v1, p0}, Lcom/liulishuo/okdownload/SpeedCalculator;->a(JZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSpeedWithSIAndFlush()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/liulishuo/okdownload/SpeedCalculator;->getInstantBytesPerSecondAndFlush()J

    move-result-wide v0

    const/4 p0, 0x1

    invoke-static {v0, v1, p0}, Lcom/liulishuo/okdownload/SpeedCalculator;->a(JZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public instantSpeed()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lcom/liulishuo/okdownload/SpeedCalculator;->getSpeedWithSIAndFlush()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public lastSpeed()Ljava/lang/String;
    .locals 2

    iget-wide v0, p0, Lcom/liulishuo/okdownload/SpeedCalculator;->c:J

    const/4 p0, 0x1

    invoke-static {v0, v1, p0}, Lcom/liulishuo/okdownload/SpeedCalculator;->a(JZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public declared-synchronized reset()V
    .locals 2

    monitor-enter p0

    const-wide/16 v0, 0x0

    :try_start_0
    iput-wide v0, p0, Lcom/liulishuo/okdownload/SpeedCalculator;->a:J

    iput-wide v0, p0, Lcom/liulishuo/okdownload/SpeedCalculator;->b:J

    iput-wide v0, p0, Lcom/liulishuo/okdownload/SpeedCalculator;->c:J

    iput-wide v0, p0, Lcom/liulishuo/okdownload/SpeedCalculator;->d:J

    iput-wide v0, p0, Lcom/liulishuo/okdownload/SpeedCalculator;->e:J

    iput-wide v0, p0, Lcom/liulishuo/okdownload/SpeedCalculator;->f:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public speed()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/liulishuo/okdownload/SpeedCalculator;->getBytesPerSecondAndFlush()J

    move-result-wide v0

    const/4 p0, 0x1

    invoke-static {v0, v1, p0}, Lcom/liulishuo/okdownload/SpeedCalculator;->a(JZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public speedFromBegin()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/liulishuo/okdownload/SpeedCalculator;->getBytesPerSecondFromBegin()J

    move-result-wide v0

    const/4 p0, 0x1

    invoke-static {v0, v1, p0}, Lcom/liulishuo/okdownload/SpeedCalculator;->a(JZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
