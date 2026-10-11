.class public Lorg/mortbay/jetty/handler/StatisticsHandler;
.super Lorg/mortbay/jetty/handler/AbstractStatisticsHandler;
.source "SourceFile"


# instance fields
.field public transient g:J

.field public transient h:I

.field public transient i:J

.field public transient j:J

.field public transient k:J

.field public transient l:I

.field public transient m:I

.field public transient n:I

.field public transient o:I

.field public transient p:I

.field public transient q:I

.field public transient r:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/mortbay/jetty/handler/AbstractStatisticsHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public getRequestTimeAverage()J
    .locals 5

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lorg/mortbay/jetty/handler/StatisticsHandler;->h:I

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    iget-wide v1, p0, Lorg/mortbay/jetty/handler/StatisticsHandler;->k:J

    int-to-long v3, v0

    div-long v0, v1, v3

    :goto_0
    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getRequestTimeMax()J
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/mortbay/jetty/handler/StatisticsHandler;->j:J

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getRequestTimeMin()J
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/mortbay/jetty/handler/StatisticsHandler;->i:J

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getRequestTimeTotal()J
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/mortbay/jetty/handler/StatisticsHandler;->k:J

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getRequests()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lorg/mortbay/jetty/handler/StatisticsHandler;->h:I

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getRequestsActive()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lorg/mortbay/jetty/handler/StatisticsHandler;->l:I

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getRequestsActiveMax()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lorg/mortbay/jetty/handler/StatisticsHandler;->m:I

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getResponses1xx()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lorg/mortbay/jetty/handler/StatisticsHandler;->n:I

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getResponses2xx()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lorg/mortbay/jetty/handler/StatisticsHandler;->o:I

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getResponses3xx()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lorg/mortbay/jetty/handler/StatisticsHandler;->p:I

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getResponses4xx()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lorg/mortbay/jetty/handler/StatisticsHandler;->q:I

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getResponses5xx()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lorg/mortbay/jetty/handler/StatisticsHandler;->r:I

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getStatsOnMs()J
    .locals 4

    monitor-enter p0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/mortbay/jetty/handler/StatisticsHandler;->g:J

    sub-long/2addr v0, v2

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public handle(Ljava/lang/String;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;I)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/servlet/ServletException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    monitor-enter p0

    :try_start_0
    iget v0, v1, Lorg/mortbay/jetty/handler/StatisticsHandler;->h:I

    const/4 v3, 0x1

    add-int/2addr v0, v3

    iput v0, v1, Lorg/mortbay/jetty/handler/StatisticsHandler;->h:I

    iget v0, v1, Lorg/mortbay/jetty/handler/StatisticsHandler;->l:I

    add-int/2addr v0, v3

    iput v0, v1, Lorg/mortbay/jetty/handler/StatisticsHandler;->l:I

    iget v4, v1, Lorg/mortbay/jetty/handler/StatisticsHandler;->m:I

    if-le v0, v4, :cond_0

    iput v0, v1, Lorg/mortbay/jetty/handler/StatisticsHandler;->m:I

    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const/4 v6, 0x5

    const/4 v7, 0x4

    const/4 v8, 0x3

    const/4 v9, 0x2

    const-wide/16 v10, 0x0

    const/4 v12, 0x0

    :try_start_1
    invoke-super/range {p0 .. p4}, Lorg/mortbay/jetty/handler/HandlerWrapper;->handle(Ljava/lang/String;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    sub-long/2addr v13, v4

    monitor-enter p0

    :try_start_2
    iget v0, v1, Lorg/mortbay/jetty/handler/StatisticsHandler;->l:I

    sub-int/2addr v0, v3

    iput v0, v1, Lorg/mortbay/jetty/handler/StatisticsHandler;->l:I

    if-gez v0, :cond_1

    iput v12, v1, Lorg/mortbay/jetty/handler/StatisticsHandler;->l:I

    :cond_1
    iget-wide v4, v1, Lorg/mortbay/jetty/handler/StatisticsHandler;->k:J

    add-long/2addr v4, v13

    iput-wide v4, v1, Lorg/mortbay/jetty/handler/StatisticsHandler;->k:J

    iget-wide v4, v1, Lorg/mortbay/jetty/handler/StatisticsHandler;->i:J

    cmp-long v0, v13, v4

    if-ltz v0, :cond_2

    cmp-long v0, v4, v10

    if-nez v0, :cond_3

    :cond_2
    iput-wide v13, v1, Lorg/mortbay/jetty/handler/StatisticsHandler;->i:J

    :cond_3
    iget-wide v4, v1, Lorg/mortbay/jetty/handler/StatisticsHandler;->j:J

    cmp-long v0, v13, v4

    if-lez v0, :cond_4

    iput-wide v13, v1, Lorg/mortbay/jetty/handler/StatisticsHandler;->j:J

    :cond_4
    instance-of v0, v2, Lorg/mortbay/jetty/Response;

    if-eqz v0, :cond_5

    move-object v0, v2

    check-cast v0, Lorg/mortbay/jetty/Response;

    goto :goto_0

    :cond_5
    invoke-static {}, Lorg/mortbay/jetty/HttpConnection;->getCurrentConnection()Lorg/mortbay/jetty/HttpConnection;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mortbay/jetty/HttpConnection;->getResponse()Lorg/mortbay/jetty/Response;

    move-result-object v0

    :goto_0
    invoke-virtual {v0}, Lorg/mortbay/jetty/Response;->getStatus()I

    move-result v0

    div-int/lit8 v0, v0, 0x64

    if-eq v0, v3, :cond_a

    if-eq v0, v9, :cond_9

    if-eq v0, v8, :cond_8

    if-eq v0, v7, :cond_7

    if-eq v0, v6, :cond_6

    goto :goto_1

    :cond_6
    iget v0, v1, Lorg/mortbay/jetty/handler/StatisticsHandler;->r:I

    add-int/2addr v0, v3

    iput v0, v1, Lorg/mortbay/jetty/handler/StatisticsHandler;->r:I

    goto :goto_1

    :cond_7
    iget v0, v1, Lorg/mortbay/jetty/handler/StatisticsHandler;->q:I

    add-int/2addr v0, v3

    iput v0, v1, Lorg/mortbay/jetty/handler/StatisticsHandler;->q:I

    goto :goto_1

    :cond_8
    iget v0, v1, Lorg/mortbay/jetty/handler/StatisticsHandler;->p:I

    add-int/2addr v0, v3

    iput v0, v1, Lorg/mortbay/jetty/handler/StatisticsHandler;->p:I

    goto :goto_1

    :cond_9
    iget v0, v1, Lorg/mortbay/jetty/handler/StatisticsHandler;->o:I

    add-int/2addr v0, v3

    iput v0, v1, Lorg/mortbay/jetty/handler/StatisticsHandler;->o:I

    goto :goto_1

    :cond_a
    iget v0, v1, Lorg/mortbay/jetty/handler/StatisticsHandler;->n:I

    add-int/2addr v0, v3

    iput v0, v1, Lorg/mortbay/jetty/handler/StatisticsHandler;->n:I

    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    move-object v13, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    sub-long/2addr v14, v4

    monitor-enter p0

    :try_start_3
    iget v0, v1, Lorg/mortbay/jetty/handler/StatisticsHandler;->l:I

    sub-int/2addr v0, v3

    iput v0, v1, Lorg/mortbay/jetty/handler/StatisticsHandler;->l:I

    iget v0, v1, Lorg/mortbay/jetty/handler/StatisticsHandler;->l:I

    if-gez v0, :cond_b

    iput v12, v1, Lorg/mortbay/jetty/handler/StatisticsHandler;->l:I

    :cond_b
    iget-wide v4, v1, Lorg/mortbay/jetty/handler/StatisticsHandler;->k:J

    add-long/2addr v4, v14

    iput-wide v4, v1, Lorg/mortbay/jetty/handler/StatisticsHandler;->k:J

    iget-wide v4, v1, Lorg/mortbay/jetty/handler/StatisticsHandler;->i:J

    cmp-long v0, v14, v4

    if-ltz v0, :cond_c

    cmp-long v0, v4, v10

    if-nez v0, :cond_d

    :cond_c
    iput-wide v14, v1, Lorg/mortbay/jetty/handler/StatisticsHandler;->i:J

    :cond_d
    iget-wide v4, v1, Lorg/mortbay/jetty/handler/StatisticsHandler;->j:J

    cmp-long v0, v14, v4

    if-lez v0, :cond_e

    iput-wide v14, v1, Lorg/mortbay/jetty/handler/StatisticsHandler;->j:J

    :cond_e
    instance-of v0, v2, Lorg/mortbay/jetty/Response;

    if-eqz v0, :cond_f

    move-object v0, v2

    check-cast v0, Lorg/mortbay/jetty/Response;

    goto :goto_2

    :cond_f
    invoke-static {}, Lorg/mortbay/jetty/HttpConnection;->getCurrentConnection()Lorg/mortbay/jetty/HttpConnection;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mortbay/jetty/HttpConnection;->getResponse()Lorg/mortbay/jetty/Response;

    move-result-object v0

    :goto_2
    invoke-virtual {v0}, Lorg/mortbay/jetty/Response;->getStatus()I

    move-result v0

    div-int/lit8 v0, v0, 0x64

    if-eq v0, v3, :cond_14

    if-eq v0, v9, :cond_13

    if-eq v0, v8, :cond_12

    if-eq v0, v7, :cond_11

    if-eq v0, v6, :cond_10

    goto :goto_3

    :cond_10
    iget v0, v1, Lorg/mortbay/jetty/handler/StatisticsHandler;->r:I

    add-int/2addr v0, v3

    iput v0, v1, Lorg/mortbay/jetty/handler/StatisticsHandler;->r:I

    goto :goto_3

    :cond_11
    iget v0, v1, Lorg/mortbay/jetty/handler/StatisticsHandler;->q:I

    add-int/2addr v0, v3

    iput v0, v1, Lorg/mortbay/jetty/handler/StatisticsHandler;->q:I

    goto :goto_3

    :cond_12
    iget v0, v1, Lorg/mortbay/jetty/handler/StatisticsHandler;->p:I

    add-int/2addr v0, v3

    iput v0, v1, Lorg/mortbay/jetty/handler/StatisticsHandler;->p:I

    goto :goto_3

    :cond_13
    iget v0, v1, Lorg/mortbay/jetty/handler/StatisticsHandler;->o:I

    add-int/2addr v0, v3

    iput v0, v1, Lorg/mortbay/jetty/handler/StatisticsHandler;->o:I

    goto :goto_3

    :cond_14
    iget v0, v1, Lorg/mortbay/jetty/handler/StatisticsHandler;->n:I

    add-int/2addr v0, v3

    iput v0, v1, Lorg/mortbay/jetty/handler/StatisticsHandler;->n:I

    :goto_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v13

    :catchall_2
    move-exception v0

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v0

    :catchall_3
    move-exception v0

    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    throw v0
.end method

.method public statsReset()V
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/mortbay/jetty/handler/StatisticsHandler;->g:J

    const/4 v0, 0x0

    iput v0, p0, Lorg/mortbay/jetty/handler/StatisticsHandler;->h:I

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lorg/mortbay/jetty/handler/StatisticsHandler;->i:J

    iput-wide v1, p0, Lorg/mortbay/jetty/handler/StatisticsHandler;->j:J

    iput-wide v1, p0, Lorg/mortbay/jetty/handler/StatisticsHandler;->k:J

    iget v1, p0, Lorg/mortbay/jetty/handler/StatisticsHandler;->l:I

    iput v1, p0, Lorg/mortbay/jetty/handler/StatisticsHandler;->m:I

    iput v0, p0, Lorg/mortbay/jetty/handler/StatisticsHandler;->l:I

    iput v0, p0, Lorg/mortbay/jetty/handler/StatisticsHandler;->n:I

    iput v0, p0, Lorg/mortbay/jetty/handler/StatisticsHandler;->o:I

    iput v0, p0, Lorg/mortbay/jetty/handler/StatisticsHandler;->p:I

    iput v0, p0, Lorg/mortbay/jetty/handler/StatisticsHandler;->q:I

    iput v0, p0, Lorg/mortbay/jetty/handler/StatisticsHandler;->r:I

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
