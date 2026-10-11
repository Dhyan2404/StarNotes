.class public Lcom/tencent/qcloud/core/http/HttpLogger;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/qcloud/core/http/HttpLoggingInterceptor$Logger;


# instance fields
.field private debuggable:Z

.field private fileLogAdapter:Lcom/tencent/qcloud/core/logger/FileLogAdapter;

.field private mRequestBufferLogs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private tag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Z)V
    .locals 1

    const-string v0, "QCloudHttp"

    .line 5
    invoke-direct {p0, p1, v0}, Lcom/tencent/qcloud/core/http/HttpLogger;-><init>(ZLjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean p1, p0, Lcom/tencent/qcloud/core/http/HttpLogger;->debuggable:Z

    .line 3
    iput-object p2, p0, Lcom/tencent/qcloud/core/http/HttpLogger;->tag:Ljava/lang/String;

    .line 4
    new-instance p1, Ljava/util/ArrayList;

    const/16 p2, 0xa

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lcom/tencent/qcloud/core/http/HttpLogger;->mRequestBufferLogs:Ljava/util/List;

    return-void
.end method

.method private declared-synchronized flushRequestBufferLogs()V
    .locals 7

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tencent/qcloud/core/http/HttpLogger;->mRequestBufferLogs:Ljava/util/List;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v1, p0, Lcom/tencent/qcloud/core/http/HttpLogger;->fileLogAdapter:Lcom/tencent/qcloud/core/logger/FileLogAdapter;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/tencent/qcloud/core/http/HttpLogger;->mRequestBufferLogs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/tencent/qcloud/core/http/HttpLogger;->mRequestBufferLogs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/tencent/qcloud/core/http/HttpLogger;->fileLogAdapter:Lcom/tencent/qcloud/core/logger/FileLogAdapter;

    iget-object v4, p0, Lcom/tencent/qcloud/core/http/HttpLogger;->tag:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x4

    invoke-virtual {v3, v6, v4, v2, v5}, Lcom/tencent/qcloud/core/logger/FileLogAdapter;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/tencent/qcloud/core/http/HttpLogger;->mRequestBufferLogs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    :cond_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public logException(Ljava/lang/Exception;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/tencent/qcloud/core/http/HttpLogger;->tag:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, p2, v1}, Lcom/tencent/qcloud/core/logger/QCloudLogger;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/tencent/qcloud/core/http/HttpLogger;->fileLogAdapter:Lcom/tencent/qcloud/core/logger/FileLogAdapter;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/tencent/qcloud/core/http/HttpLogger;->flushRequestBufferLogs()V

    iget-object v0, p0, Lcom/tencent/qcloud/core/http/HttpLogger;->fileLogAdapter:Lcom/tencent/qcloud/core/logger/FileLogAdapter;

    const/4 v1, 0x4

    iget-object p0, p0, Lcom/tencent/qcloud/core/http/HttpLogger;->tag:Ljava/lang/String;

    invoke-virtual {v0, v1, p0, p2, p1}, Lcom/tencent/qcloud/core/logger/FileLogAdapter;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/tencent/qcloud/core/http/HttpLogger;->mRequestBufferLogs:Ljava/util/List;

    monitor-enter p1

    :try_start_0
    iget-object p0, p0, Lcom/tencent/qcloud/core/http/HttpLogger;->mRequestBufferLogs:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    monitor-exit p1

    :goto_0
    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public logRequest(Ljava/lang/String;)V
    .locals 2

    iget-boolean v0, p0, Lcom/tencent/qcloud/core/http/HttpLogger;->debuggable:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qcloud/core/http/HttpLogger;->tag:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, p1, v1}, Lcom/tencent/qcloud/core/logger/QCloudLogger;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    const-class v0, Lcom/tencent/qcloud/core/logger/FileLogAdapter;

    invoke-static {v0}, Lcom/tencent/qcloud/core/logger/QCloudLogger;->getAdapter(Ljava/lang/Class;)Lcom/tencent/qcloud/core/logger/LogAdapter;

    move-result-object v0

    check-cast v0, Lcom/tencent/qcloud/core/logger/FileLogAdapter;

    iput-object v0, p0, Lcom/tencent/qcloud/core/http/HttpLogger;->fileLogAdapter:Lcom/tencent/qcloud/core/logger/FileLogAdapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/qcloud/core/http/HttpLogger;->mRequestBufferLogs:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/tencent/qcloud/core/http/HttpLogger;->mRequestBufferLogs:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method public logResponse(Lokhttp3/Response;Ljava/lang/String;)V
    .locals 2

    iget-boolean v0, p0, Lcom/tencent/qcloud/core/http/HttpLogger;->debuggable:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qcloud/core/http/HttpLogger;->tag:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, p2, v1}, Lcom/tencent/qcloud/core/logger/QCloudLogger;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/tencent/qcloud/core/http/HttpLogger;->fileLogAdapter:Lcom/tencent/qcloud/core/logger/FileLogAdapter;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lokhttp3/Response;->isSuccessful()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-direct {p0}, Lcom/tencent/qcloud/core/http/HttpLogger;->flushRequestBufferLogs()V

    iget-object p1, p0, Lcom/tencent/qcloud/core/http/HttpLogger;->fileLogAdapter:Lcom/tencent/qcloud/core/logger/FileLogAdapter;

    iget-object p0, p0, Lcom/tencent/qcloud/core/http/HttpLogger;->tag:Ljava/lang/String;

    const/4 v0, 0x0

    const/4 v1, 0x4

    invoke-virtual {p1, v1, p0, p2, v0}, Lcom/tencent/qcloud/core/logger/FileLogAdapter;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/tencent/qcloud/core/http/HttpLogger;->mRequestBufferLogs:Ljava/util/List;

    monitor-enter p1

    :try_start_0
    iget-object p0, p0, Lcom/tencent/qcloud/core/http/HttpLogger;->mRequestBufferLogs:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    monitor-exit p1

    :goto_0
    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setDebug(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/tencent/qcloud/core/http/HttpLogger;->debuggable:Z

    return-void
.end method

.method public setTag(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qcloud/core/http/HttpLogger;->tag:Ljava/lang/String;

    return-void
.end method
