.class Lcom/sunia/commonv2/hwr/v2/AuthHelperV2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sunia/authlib/interfaces/OnAuthorResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sunia/commonv2/hwr/v2/AuthHelperV2;->authorize(Lcom/sunia/commonv2/callback/IHWRAuthorResultCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic val$hasCallbackList:Ljava/util/List;

.field final synthetic val$hwrAuthorResultCallback:Lcom/sunia/commonv2/callback/IHWRAuthorResultCallback;

.field final synthetic val$waitForAuth:Z


# direct methods
.method public constructor <init>(Ljava/util/List;ZLcom/sunia/commonv2/callback/IHWRAuthorResultCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sunia/commonv2/hwr/v2/AuthHelperV2$1;->val$hasCallbackList:Ljava/util/List;

    iput-boolean p2, p0, Lcom/sunia/commonv2/hwr/v2/AuthHelperV2$1;->val$waitForAuth:Z

    iput-object p3, p0, Lcom/sunia/commonv2/hwr/v2/AuthHelperV2$1;->val$hwrAuthorResultCallback:Lcom/sunia/commonv2/callback/IHWRAuthorResultCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallback(ILjava/lang/String;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u6388\u6743\u7ed3\u679ci="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",s="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",s1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AuthHelperV2"

    invoke-static {v1, v0}, Lcom/sunia/HTREnginev2/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sunia/commonv2/hwr/v2/AuthHelperV2$1;->val$hasCallbackList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "\u6536\u5230\u6388\u6743\u7b2c\u4e8c\u6b21\u56de\u8c03\uff0c\u5ffd\u7565"

    invoke-static {v1, p0}, Lcom/sunia/HTREnginev2/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sunia/commonv2/hwr/v2/AuthHelperV2$1;->val$hasCallbackList:Ljava/util/List;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-boolean v0, p0, Lcom/sunia/commonv2/hwr/v2/AuthHelperV2$1;->val$waitForAuth:Z

    if-eqz v0, :cond_1

    new-instance v0, Lcom/sunia/commonv2/hwr/v2/AuthHelperV2$1$1;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/sunia/commonv2/hwr/v2/AuthHelperV2$1$1;-><init>(Lcom/sunia/commonv2/hwr/v2/AuthHelperV2$1;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sunia/commonv2/hwr/v2/AuthHelperV2$1;->val$hwrAuthorResultCallback:Lcom/sunia/commonv2/callback/IHWRAuthorResultCallback;

    invoke-static {v0}, Lcom/sunia/commonv2/util/HWRUtil;->isNotEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/sunia/commonv2/hwr/v2/AuthHelperV2$1;->val$hwrAuthorResultCallback:Lcom/sunia/commonv2/callback/IHWRAuthorResultCallback;

    invoke-interface {p0, p1, p2, p3}, Lcom/sunia/commonv2/callback/IHWRAuthorResultCallback;->onCallback(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string p0, "hwrAuthorResultCallback is null"

    invoke-static {v1, p0}, Lcom/sunia/HTREnginev2/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
