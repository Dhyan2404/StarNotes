.class public Lcom/tencent/qcloud/core/task/TaskExecutors;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/qcloud/core/task/TaskExecutors$TaskThreadFactory;
    }
.end annotation


# static fields
.field public static final COMMAND_EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;

.field public static DOWNLOAD_EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor; = null

.field public static DOWNLOAD_THREAD_COUNT:I = 0x6

.field public static final UI_THREAD_EXECUTOR:Lcom/tencent/qcloud/core/task/UIThreadExecutor;

.field public static UPLOAD_EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor; = null

.field public static UPLOAD_THREAD_COUNT:I = 0x4


# direct methods
.method public static constructor <clinit>()V
    .locals 18

    new-instance v8, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v1, 0x5

    const/4 v2, 0x5

    const-wide/16 v3, 0x5

    sget-object v17, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    const v15, 0x7fffffff

    invoke-direct {v6, v15}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    new-instance v7, Lcom/tencent/qcloud/core/task/TaskExecutors$TaskThreadFactory;

    const-string v0, "Command-"

    const/16 v5, 0x8

    invoke-direct {v7, v0, v5}, Lcom/tencent/qcloud/core/task/TaskExecutors$TaskThreadFactory;-><init>(Ljava/lang/String;I)V

    move-object v0, v8

    move-object/from16 v5, v17

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v8, Lcom/tencent/qcloud/core/task/TaskExecutors;->COMMAND_EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget v11, Lcom/tencent/qcloud/core/task/TaskExecutors;->UPLOAD_THREAD_COUNT:I

    const-wide/16 v12, 0x5

    new-instance v1, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {v1}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    new-instance v2, Lcom/tencent/qcloud/core/task/TaskExecutors$TaskThreadFactory;

    const-string v3, "Upload-"

    const/4 v4, 0x3

    invoke-direct {v2, v3, v4}, Lcom/tencent/qcloud/core/task/TaskExecutors$TaskThreadFactory;-><init>(Ljava/lang/String;I)V

    move-object v9, v0

    move v10, v11

    move-object/from16 v14, v17

    move v3, v15

    move-object v15, v1

    move-object/from16 v16, v2

    invoke-direct/range {v9 .. v16}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v0, Lcom/tencent/qcloud/core/task/TaskExecutors;->UPLOAD_EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget v11, Lcom/tencent/qcloud/core/task/TaskExecutors;->DOWNLOAD_THREAD_COUNT:I

    new-instance v15, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v15, v3}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    new-instance v1, Lcom/tencent/qcloud/core/task/TaskExecutors$TaskThreadFactory;

    const-string v2, "Download-"

    invoke-direct {v1, v2, v4}, Lcom/tencent/qcloud/core/task/TaskExecutors$TaskThreadFactory;-><init>(Ljava/lang/String;I)V

    move-object v9, v0

    move v10, v11

    move-object/from16 v16, v1

    invoke-direct/range {v9 .. v16}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v0, Lcom/tencent/qcloud/core/task/TaskExecutors;->DOWNLOAD_EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v0, Lcom/tencent/qcloud/core/task/UIThreadExecutor;

    invoke-direct {v0}, Lcom/tencent/qcloud/core/task/UIThreadExecutor;-><init>()V

    sput-object v0, Lcom/tencent/qcloud/core/task/TaskExecutors;->UI_THREAD_EXECUTOR:Lcom/tencent/qcloud/core/task/UIThreadExecutor;

    sget-object v0, Lcom/tencent/qcloud/core/task/TaskExecutors;->UPLOAD_EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    invoke-virtual {v8, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    sget-object v0, Lcom/tencent/qcloud/core/task/TaskExecutors;->DOWNLOAD_EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static initExecutor(II)V
    .locals 0

    sput p0, Lcom/tencent/qcloud/core/task/TaskExecutors;->UPLOAD_THREAD_COUNT:I

    sput p1, Lcom/tencent/qcloud/core/task/TaskExecutors;->DOWNLOAD_THREAD_COUNT:I

    sget-object p1, Lcom/tencent/qcloud/core/task/TaskExecutors;->UPLOAD_EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {p1, p0}, Ljava/util/concurrent/ThreadPoolExecutor;->setCorePoolSize(I)V

    sget-object p0, Lcom/tencent/qcloud/core/task/TaskExecutors;->UPLOAD_EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;

    sget p1, Lcom/tencent/qcloud/core/task/TaskExecutors;->UPLOAD_THREAD_COUNT:I

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->setMaximumPoolSize(I)V

    sget-object p0, Lcom/tencent/qcloud/core/task/TaskExecutors;->DOWNLOAD_EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;

    sget p1, Lcom/tencent/qcloud/core/task/TaskExecutors;->DOWNLOAD_THREAD_COUNT:I

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->setCorePoolSize(I)V

    sget-object p0, Lcom/tencent/qcloud/core/task/TaskExecutors;->DOWNLOAD_EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;

    sget p1, Lcom/tencent/qcloud/core/task/TaskExecutors;->DOWNLOAD_THREAD_COUNT:I

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->setMaximumPoolSize(I)V

    return-void
.end method
