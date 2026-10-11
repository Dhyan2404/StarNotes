.class Lcom/sunia/commonv2/hwr/HWRHelper$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sunia/HTREnginev2/sdk/EngineAuthenticateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sunia/commonv2/hwr/HWRHelper;->createEngine(Lcom/sunia/HTREnginev2/sdk/EngineAuthenticateCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic val$engineAuthenticateCallback:Lcom/sunia/HTREnginev2/sdk/EngineAuthenticateCallback;


# direct methods
.method public constructor <init>(Lcom/sunia/HTREnginev2/sdk/EngineAuthenticateCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sunia/commonv2/hwr/HWRHelper$2;->val$engineAuthenticateCallback:Lcom/sunia/HTREnginev2/sdk/EngineAuthenticateCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Exception;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u8bc6\u522b\u5f15\u64ce\u521d\u59cb\u5316\u5931\u8d25\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HWRHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sunia/commonv2/hwr/HWRHelper$2;->val$engineAuthenticateCallback:Lcom/sunia/HTREnginev2/sdk/EngineAuthenticateCallback;

    invoke-interface {p0, p1, p2}, Lcom/sunia/HTREnginev2/sdk/EngineAuthenticateCallback;->onError(Ljava/lang/Exception;Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Lcom/sunia/HTREnginev2/sdk/Engine;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/sunia/commonv2/hwr/HWRHelper$2;->val$engineAuthenticateCallback:Lcom/sunia/HTREnginev2/sdk/EngineAuthenticateCallback;

    invoke-interface {p0, p1, p2, p3}, Lcom/sunia/HTREnginev2/sdk/EngineAuthenticateCallback;->onSuccess(Lcom/sunia/HTREnginev2/sdk/Engine;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
