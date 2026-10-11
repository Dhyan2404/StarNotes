.class public final Lcom/tencent/qcloud/core/task/TaskManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final TASK_LOG_TAG:Ljava/lang/String; = "QCloudTask"

.field private static volatile instance:Lcom/tencent/qcloud/core/task/TaskManager;


# instance fields
.field private taskPool:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/tencent/qcloud/core/task/QCloudTask;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x1e

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object v0, p0, Lcom/tencent/qcloud/core/task/TaskManager;->taskPool:Ljava/util/Map;

    return-void
.end method

.method public static getInstance()Lcom/tencent/qcloud/core/task/TaskManager;
    .locals 2

    sget-object v0, Lcom/tencent/qcloud/core/task/TaskManager;->instance:Lcom/tencent/qcloud/core/task/TaskManager;

    if-nez v0, :cond_1

    const-class v0, Lcom/tencent/qcloud/core/task/TaskManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/tencent/qcloud/core/task/TaskManager;->instance:Lcom/tencent/qcloud/core/task/TaskManager;

    if-nez v1, :cond_0

    new-instance v1, Lcom/tencent/qcloud/core/task/TaskManager;

    invoke-direct {v1}, Lcom/tencent/qcloud/core/task/TaskManager;-><init>()V

    sput-object v1, Lcom/tencent/qcloud/core/task/TaskManager;->instance:Lcom/tencent/qcloud/core/task/TaskManager;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lcom/tencent/qcloud/core/task/TaskManager;->instance:Lcom/tencent/qcloud/core/task/TaskManager;

    return-object v0
.end method


# virtual methods
.method public add(Lcom/tencent/qcloud/core/task/QCloudTask;)V
    .locals 2

    iget-object v0, p0, Lcom/tencent/qcloud/core/task/TaskManager;->taskPool:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/tencent/qcloud/core/task/QCloudTask;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/tencent/qcloud/core/task/QCloudTask;->getIdentifier()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/tencent/qcloud/core/task/TaskManager;->taskPool:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p1, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "QCloudTask"

    const-string v0, "[Pool] ADD %s, %d cached"

    invoke-static {p1, v0, p0}, Lcom/tencent/qcloud/core/logger/QCloudLogger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public evict()V
    .locals 3

    iget-object v0, p0, Lcom/tencent/qcloud/core/task/TaskManager;->taskPool:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "QCloudTask"

    const-string v2, "[Pool] CLEAR %d"

    invoke-static {v1, v2, v0}, Lcom/tencent/qcloud/core/logger/QCloudLogger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/tencent/qcloud/core/task/TaskManager;->taskPool:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public get(Ljava/lang/String;)Lcom/tencent/qcloud/core/task/QCloudTask;
    .locals 0

    iget-object p0, p0, Lcom/tencent/qcloud/core/task/TaskManager;->taskPool:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/tencent/qcloud/core/task/QCloudTask;

    return-object p0
.end method

.method public getPoolCount()I
    .locals 0

    iget-object p0, p0, Lcom/tencent/qcloud/core/task/TaskManager;->taskPool:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result p0

    return p0
.end method

.method public remove(Lcom/tencent/qcloud/core/task/QCloudTask;)V
    .locals 2

    iget-object v0, p0, Lcom/tencent/qcloud/core/task/TaskManager;->taskPool:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/tencent/qcloud/core/task/QCloudTask;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/tencent/qcloud/core/task/QCloudTask;->getIdentifier()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/tencent/qcloud/core/task/TaskManager;->taskPool:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p1, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "QCloudTask"

    const-string v0, "[Pool] REMOVE %s, %d cached"

    invoke-static {p1, v0, p0}, Lcom/tencent/qcloud/core/logger/QCloudLogger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public snapshot()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/tencent/qcloud/core/task/QCloudTask;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/tencent/qcloud/core/task/TaskManager;->taskPool:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method
