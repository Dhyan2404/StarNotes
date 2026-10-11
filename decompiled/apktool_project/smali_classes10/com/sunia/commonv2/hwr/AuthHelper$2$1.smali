.class Lcom/sunia/commonv2/hwr/AuthHelper$2$1;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sunia/commonv2/hwr/AuthHelper$2;->onCallback(ILjava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sunia/commonv2/hwr/AuthHelper$2;

.field final synthetic val$i:I

.field final synthetic val$s:Ljava/lang/String;

.field final synthetic val$s1:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/sunia/commonv2/hwr/AuthHelper$2;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sunia/commonv2/hwr/AuthHelper$2$1;->this$0:Lcom/sunia/commonv2/hwr/AuthHelper$2;

    iput p2, p0, Lcom/sunia/commonv2/hwr/AuthHelper$2$1;->val$i:I

    iput-object p3, p0, Lcom/sunia/commonv2/hwr/AuthHelper$2$1;->val$s:Ljava/lang/String;

    iput-object p4, p0, Lcom/sunia/commonv2/hwr/AuthHelper$2$1;->val$s1:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const-string v0, "AuthHelper"

    const-wide/16 v1, 0xbb8

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-static {v0, v1}, Lcom/sunia/HTREnginev2/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    iget-object v1, p0, Lcom/sunia/commonv2/hwr/AuthHelper$2$1;->this$0:Lcom/sunia/commonv2/hwr/AuthHelper$2;

    iget-object v1, v1, Lcom/sunia/commonv2/hwr/AuthHelper$2;->val$hwrAuthorResultCallback:Lcom/sunia/commonv2/callback/IHWRAuthorResultCallback;

    invoke-static {v1}, Lcom/sunia/commonv2/util/HWRUtil;->isNotEmpty(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/sunia/commonv2/hwr/AuthHelper$2$1;->this$0:Lcom/sunia/commonv2/hwr/AuthHelper$2;

    iget-object v0, v0, Lcom/sunia/commonv2/hwr/AuthHelper$2;->val$hwrAuthorResultCallback:Lcom/sunia/commonv2/callback/IHWRAuthorResultCallback;

    iget v1, p0, Lcom/sunia/commonv2/hwr/AuthHelper$2$1;->val$i:I

    iget-object v2, p0, Lcom/sunia/commonv2/hwr/AuthHelper$2$1;->val$s:Ljava/lang/String;

    iget-object p0, p0, Lcom/sunia/commonv2/hwr/AuthHelper$2$1;->val$s1:Ljava/lang/String;

    invoke-interface {v0, v1, v2, p0}, Lcom/sunia/commonv2/callback/IHWRAuthorResultCallback;->onCallback(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    const-string p0, "hwrAuthorResultCallback is null"

    invoke-static {v0, p0}, Lcom/sunia/HTREnginev2/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method
