.class Lcom/sunia/nbiv2/sdk/NBIEngineManagerV2$1;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sunia/nbiv2/sdk/NBIEngineManagerV2;->start(Landroid/content/Context;Ljava/lang/String;ILcom/sunia/nbiv2/sdk/NBIParameter;Lcom/sunia/nbiv2/sdk/NBICallbackV2;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sunia/nbiv2/sdk/NBIEngineManagerV2;

.field final synthetic val$callback:Lcom/sunia/nbiv2/sdk/NBICallbackV2;

.field final synthetic val$certifyFilePath:Ljava/lang/String;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$nbiParameter:Lcom/sunia/nbiv2/sdk/NBIParameter;

.field final synthetic val$selectedIntensity:I


# direct methods
.method public constructor <init>(Lcom/sunia/nbiv2/sdk/NBIEngineManagerV2;Landroid/content/Context;Ljava/lang/String;ILcom/sunia/nbiv2/sdk/NBIParameter;Lcom/sunia/nbiv2/sdk/NBICallbackV2;)V
    .locals 0

    iput-object p1, p0, Lcom/sunia/nbiv2/sdk/NBIEngineManagerV2$1;->this$0:Lcom/sunia/nbiv2/sdk/NBIEngineManagerV2;

    iput-object p2, p0, Lcom/sunia/nbiv2/sdk/NBIEngineManagerV2$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/sunia/nbiv2/sdk/NBIEngineManagerV2$1;->val$certifyFilePath:Ljava/lang/String;

    iput p4, p0, Lcom/sunia/nbiv2/sdk/NBIEngineManagerV2$1;->val$selectedIntensity:I

    iput-object p5, p0, Lcom/sunia/nbiv2/sdk/NBIEngineManagerV2$1;->val$nbiParameter:Lcom/sunia/nbiv2/sdk/NBIParameter;

    iput-object p6, p0, Lcom/sunia/nbiv2/sdk/NBIEngineManagerV2$1;->val$callback:Lcom/sunia/nbiv2/sdk/NBICallbackV2;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const-string v0, "NBIEngineManagerV2"

    :try_start_0
    iget-object v1, p0, Lcom/sunia/nbiv2/sdk/NBIEngineManagerV2$1;->this$0:Lcom/sunia/nbiv2/sdk/NBIEngineManagerV2;

    invoke-static {v1}, Lcom/sunia/nbiv2/sdk/NBIEngineManagerV2;->access$000(Lcom/sunia/nbiv2/sdk/NBIEngineManagerV2;)Lcom/sunia/nbiv2/sdk/NBIEngine;

    move-result-object v1

    iget-object v2, p0, Lcom/sunia/nbiv2/sdk/NBIEngineManagerV2$1;->val$context:Landroid/content/Context;

    iget-object v3, p0, Lcom/sunia/nbiv2/sdk/NBIEngineManagerV2$1;->val$certifyFilePath:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/sunia/nbiv2/sdk/NBIEngine;->start(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sunia/nbiv2/sdk/NBIEngineManagerV2$1;->this$0:Lcom/sunia/nbiv2/sdk/NBIEngineManagerV2;

    invoke-static {v1}, Lcom/sunia/nbiv2/sdk/NBIEngineManagerV2;->access$000(Lcom/sunia/nbiv2/sdk/NBIEngineManagerV2;)Lcom/sunia/nbiv2/sdk/NBIEngine;

    move-result-object v1

    iget-object v2, p0, Lcom/sunia/nbiv2/sdk/NBIEngineManagerV2$1;->this$0:Lcom/sunia/nbiv2/sdk/NBIEngineManagerV2;

    invoke-virtual {v1, v2}, Lcom/sunia/nbiv2/sdk/NBIEngine;->setCallback(Lcom/sunia/nbiv2/local/LocalNBIListener;)Z

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setCallback result: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/sunia/HTREnginev2/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sunia/nbiv2/sdk/NBIEngineManagerV2$1;->this$0:Lcom/sunia/nbiv2/sdk/NBIEngineManagerV2;

    iget v2, p0, Lcom/sunia/nbiv2/sdk/NBIEngineManagerV2$1;->val$selectedIntensity:I

    iget-object v3, p0, Lcom/sunia/nbiv2/sdk/NBIEngineManagerV2$1;->val$nbiParameter:Lcom/sunia/nbiv2/sdk/NBIParameter;

    invoke-virtual {v1, v2, v3}, Lcom/sunia/nbiv2/sdk/NBIEngineManagerV2;->setParameters(ILcom/sunia/nbiv2/sdk/NBIParameter;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sunia/nbiv2/sdk/NBIEngineManagerV2$1;->this$0:Lcom/sunia/nbiv2/sdk/NBIEngineManagerV2;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sunia/nbiv2/sdk/NBIEngineManagerV2;->nbiSetOutlineOutput(Z)Z

    iget-object v1, p0, Lcom/sunia/nbiv2/sdk/NBIEngineManagerV2$1;->val$callback:Lcom/sunia/nbiv2/sdk/NBICallbackV2;

    invoke-interface {v1}, Lcom/sunia/nbiv2/sdk/NBICallbackV2;->onLoad()V

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/Exception;

    iget-object v2, p0, Lcom/sunia/nbiv2/sdk/NBIEngineManagerV2$1;->this$0:Lcom/sunia/nbiv2/sdk/NBIEngineManagerV2;

    invoke-static {v2}, Lcom/sunia/nbiv2/sdk/NBIEngineManagerV2;->access$000(Lcom/sunia/nbiv2/sdk/NBIEngineManagerV2;)Lcom/sunia/nbiv2/sdk/NBIEngine;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sunia/nbiv2/sdk/NBIEngine;->getErrorInfo()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    new-instance v1, Ljava/lang/Exception;

    iget-object v2, p0, Lcom/sunia/nbiv2/sdk/NBIEngineManagerV2$1;->this$0:Lcom/sunia/nbiv2/sdk/NBIEngineManagerV2;

    invoke-static {v2}, Lcom/sunia/nbiv2/sdk/NBIEngineManagerV2;->access$000(Lcom/sunia/nbiv2/sdk/NBIEngineManagerV2;)Lcom/sunia/nbiv2/sdk/NBIEngine;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sunia/nbiv2/sdk/NBIEngine;->getErrorInfo()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    new-instance v1, Ljava/lang/Exception;

    iget-object v2, p0, Lcom/sunia/nbiv2/sdk/NBIEngineManagerV2$1;->this$0:Lcom/sunia/nbiv2/sdk/NBIEngineManagerV2;

    invoke-static {v2}, Lcom/sunia/nbiv2/sdk/NBIEngineManagerV2;->access$000(Lcom/sunia/nbiv2/sdk/NBIEngineManagerV2;)Lcom/sunia/nbiv2/sdk/NBIEngine;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sunia/nbiv2/sdk/NBIEngine;->getErrorInfo()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v1

    invoke-static {v0, v1}, Lcom/sunia/HTREnginev2/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/sunia/nbiv2/sdk/NBIEngineManagerV2$1;->this$0:Lcom/sunia/nbiv2/sdk/NBIEngineManagerV2;

    invoke-static {v0}, Lcom/sunia/nbiv2/sdk/NBIEngineManagerV2;->access$100(Lcom/sunia/nbiv2/sdk/NBIEngineManagerV2;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-static {v0}, Lcom/sunia/commonv2/util/HWRUtil;->isNotEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sunia/nbiv2/sdk/NBIEngineManagerV2$1;->this$0:Lcom/sunia/nbiv2/sdk/NBIEngineManagerV2;

    invoke-static {v0}, Lcom/sunia/nbiv2/sdk/NBIEngineManagerV2;->access$100(Lcom/sunia/nbiv2/sdk/NBIEngineManagerV2;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/sunia/commonv2/util/HWRUtil;->isNotEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/sunia/nbiv2/sdk/NBIEngineManagerV2$1;->this$0:Lcom/sunia/nbiv2/sdk/NBIEngineManagerV2;

    invoke-static {p0}, Lcom/sunia/nbiv2/sdk/NBIEngineManagerV2;->access$100(Lcom/sunia/nbiv2/sdk/NBIEngineManagerV2;)Ljava/lang/ref/WeakReference;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sunia/nbiv2/sdk/NBICallbackV2;

    invoke-interface {p0, v1}, Lcom/sunia/nbiv2/sdk/NBICallbackV2;->onError(Ljava/lang/Exception;)V

    :cond_3
    :goto_0
    return-void
.end method
