.class Lcom/tencent/qcloud/core/task/QCloudTask$1$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/qcloud/core/task/QCloudTask$1;->then(Lbolts/Task;)Lbolts/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tencent/qcloud/core/task/QCloudTask$1;


# direct methods
.method public constructor <init>(Lcom/tencent/qcloud/core/task/QCloudTask$1;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qcloud/core/task/QCloudTask$1$2;->this$1:Lcom/tencent/qcloud/core/task/QCloudTask$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/tencent/qcloud/core/task/QCloudTask$1$2;->call()Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method public call()Ljava/lang/Void;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2
    :try_start_0
    iget-object p0, p0, Lcom/tencent/qcloud/core/task/QCloudTask$1$2;->this$1:Lcom/tencent/qcloud/core/task/QCloudTask$1;

    iget-object p0, p0, Lcom/tencent/qcloud/core/task/QCloudTask$1;->this$0:Lcom/tencent/qcloud/core/task/QCloudTask;

    invoke-virtual {p0}, Lcom/tencent/qcloud/core/task/QCloudTask;->onSuccess()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x0

    return-object p0

    :catch_0
    move-exception p0

    .line 3
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 4
    new-instance v0, Ljava/lang/Error;

    invoke-direct {v0, p0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
