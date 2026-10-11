.class Lcom/tencent/qcloud/core/task/QCloudTask$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/qcloud/core/task/QCloudTask;->onStateChanged(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/qcloud/core/task/QCloudTask;


# direct methods
.method public constructor <init>(Lcom/tencent/qcloud/core/task/QCloudTask;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qcloud/core/task/QCloudTask$3;->this$0:Lcom/tencent/qcloud/core/task/QCloudTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/tencent/qcloud/core/task/QCloudTask$3;->this$0:Lcom/tencent/qcloud/core/task/QCloudTask;

    invoke-static {v1}, Lcom/tencent/qcloud/core/task/QCloudTask;->access$200(Lcom/tencent/qcloud/core/task/QCloudTask;)Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/qcloud/core/common/QCloudTaskStateListener;

    iget-object v2, p0, Lcom/tencent/qcloud/core/task/QCloudTask$3;->this$0:Lcom/tencent/qcloud/core/task/QCloudTask;

    invoke-static {v2}, Lcom/tencent/qcloud/core/task/QCloudTask;->access$300(Lcom/tencent/qcloud/core/task/QCloudTask;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/qcloud/core/task/QCloudTask$3;->this$0:Lcom/tencent/qcloud/core/task/QCloudTask;

    invoke-static {v3}, Lcom/tencent/qcloud/core/task/QCloudTask;->access$400(Lcom/tencent/qcloud/core/task/QCloudTask;)I

    move-result v3

    invoke-interface {v1, v2, v3}, Lcom/tencent/qcloud/core/common/QCloudTaskStateListener;->onStateChanged(Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    return-void
.end method
