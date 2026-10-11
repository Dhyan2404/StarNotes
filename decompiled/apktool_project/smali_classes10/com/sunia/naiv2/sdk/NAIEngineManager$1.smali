.class Lcom/sunia/naiv2/sdk/NAIEngineManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sunia/naiv2/sdk/NAIEngineManager;->start(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/sunia/naiv2/sdk/NAICallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sunia/naiv2/sdk/NAIEngineManager;

.field final synthetic val$callback:Lcom/sunia/naiv2/sdk/NAICallback;

.field final synthetic val$certifyFilePath:Ljava/lang/String;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$fontInputStreamList:Ljava/util/List;

.field final synthetic val$modelDir:Ljava/lang/String;

.field final synthetic val$modelName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/sunia/naiv2/sdk/NAIEngineManager;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/sunia/naiv2/sdk/NAICallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sunia/naiv2/sdk/NAIEngineManager$1;->this$0:Lcom/sunia/naiv2/sdk/NAIEngineManager;

    iput-object p2, p0, Lcom/sunia/naiv2/sdk/NAIEngineManager$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/sunia/naiv2/sdk/NAIEngineManager$1;->val$certifyFilePath:Ljava/lang/String;

    iput-object p4, p0, Lcom/sunia/naiv2/sdk/NAIEngineManager$1;->val$modelDir:Ljava/lang/String;

    iput-object p5, p0, Lcom/sunia/naiv2/sdk/NAIEngineManager$1;->val$modelName:Ljava/lang/String;

    iput-object p6, p0, Lcom/sunia/naiv2/sdk/NAIEngineManager$1;->val$fontInputStreamList:Ljava/util/List;

    iput-object p7, p0, Lcom/sunia/naiv2/sdk/NAIEngineManager$1;->val$callback:Lcom/sunia/naiv2/sdk/NAICallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    const-string v0, "NAIEngineManager"

    :try_start_0
    iget-object v1, p0, Lcom/sunia/naiv2/sdk/NAIEngineManager$1;->this$0:Lcom/sunia/naiv2/sdk/NAIEngineManager;

    invoke-static {v1}, Lcom/sunia/naiv2/sdk/NAIEngineManager;->access$000(Lcom/sunia/naiv2/sdk/NAIEngineManager;)Lcom/sunia/naiv2/sdk/NAIEngine;

    move-result-object v2

    iget-object v3, p0, Lcom/sunia/naiv2/sdk/NAIEngineManager$1;->val$context:Landroid/content/Context;

    iget-object v4, p0, Lcom/sunia/naiv2/sdk/NAIEngineManager$1;->val$certifyFilePath:Ljava/lang/String;

    iget-object v5, p0, Lcom/sunia/naiv2/sdk/NAIEngineManager$1;->val$modelDir:Ljava/lang/String;

    iget-object v6, p0, Lcom/sunia/naiv2/sdk/NAIEngineManager$1;->val$modelName:Ljava/lang/String;

    iget-object v7, p0, Lcom/sunia/naiv2/sdk/NAIEngineManager$1;->val$fontInputStreamList:Ljava/util/List;

    const/4 v8, 0x0

    invoke-virtual/range {v2 .. v8}, Lcom/sunia/naiv2/sdk/NAIEngine;->start(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sunia/naiv2/sdk/NAIEngineManager$1;->val$callback:Lcom/sunia/naiv2/sdk/NAICallback;

    invoke-static {v1}, Lcom/sunia/commonv2/util/HWRUtil;->isNotEmpty(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "nai start success,callback onLoad"

    invoke-static {v0, v1}, Lcom/sunia/HTREnginev2/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sunia/naiv2/sdk/NAIEngineManager$1;->val$callback:Lcom/sunia/naiv2/sdk/NAICallback;

    invoke-interface {v1}, Lcom/sunia/naiv2/sdk/NAICallback;->onLoad()V

    goto :goto_0

    :cond_0
    const-string v1, "callback is empty\uff0conLoad callback failed"

    invoke-static {v0, v1}, Lcom/sunia/HTREnginev2/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/Exception;

    iget-object v2, p0, Lcom/sunia/naiv2/sdk/NAIEngineManager$1;->this$0:Lcom/sunia/naiv2/sdk/NAIEngineManager;

    invoke-static {v2}, Lcom/sunia/naiv2/sdk/NAIEngineManager;->access$000(Lcom/sunia/naiv2/sdk/NAIEngineManager;)Lcom/sunia/naiv2/sdk/NAIEngine;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sunia/naiv2/sdk/NAIEngine;->getErrorInfo()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v1

    invoke-static {v0, v1}, Lcom/sunia/HTREnginev2/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v2, p0, Lcom/sunia/naiv2/sdk/NAIEngineManager$1;->val$callback:Lcom/sunia/naiv2/sdk/NAICallback;

    invoke-static {v2}, Lcom/sunia/commonv2/util/HWRUtil;->isNotEmpty(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "nai start failed,callback onError"

    invoke-static {v0, v2}, Lcom/sunia/HTREnginev2/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sunia/naiv2/sdk/NAIEngineManager$1;->val$callback:Lcom/sunia/naiv2/sdk/NAICallback;

    invoke-interface {p0, v1}, Lcom/sunia/naiv2/sdk/NAICallback;->onError(Ljava/lang/Exception;)V

    goto :goto_0

    :cond_2
    const-string p0, "callback is empty\uff0conError callback failed"

    invoke-static {v0, p0}, Lcom/sunia/HTREnginev2/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
