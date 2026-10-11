.class Lcom/sunia/commonv2/hwr/SDKHelper$10;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sunia/commonv2/hwr/SDKHelper;->test4(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sunia/commonv2/hwr/SDKHelper;


# direct methods
.method public constructor <init>(Lcom/sunia/commonv2/hwr/SDKHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/sunia/commonv2/hwr/SDKHelper$10;->this$0:Lcom/sunia/commonv2/hwr/SDKHelper;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const-string v0, "SDKHelper"

    const-wide/16 v1, 0x1388

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-static {v0, v1}, Lcom/sunia/HTREnginev2/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    const/4 v1, 0x1

    new-array v1, v1, [Z

    const/4 v2, 0x0

    aput-boolean v2, v1, v2

    iget-object v3, p0, Lcom/sunia/commonv2/hwr/SDKHelper$10;->this$0:Lcom/sunia/commonv2/hwr/SDKHelper;

    invoke-static {v3, v2}, Lcom/sunia/commonv2/hwr/SDKHelper;->access$102(Lcom/sunia/commonv2/hwr/SDKHelper;I)I

    new-instance v2, Lcom/sunia/commonv2/bean/ConfigBean;

    const-string v3, "recognize/conf/zh_CN"

    const-string v4, "zh_CN.conf"

    invoke-direct {v2, v3, v4}, Lcom/sunia/commonv2/bean/ConfigBean;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lcom/sunia/HTREnginev2/sdk/ERecognitionMode;->MODE_ECR:Lcom/sunia/HTREnginev2/sdk/ERecognitionMode;

    new-instance v4, Lcom/sunia/commonv2/hwr/SDKHelper$10$1;

    invoke-direct {v4, p0, v1}, Lcom/sunia/commonv2/hwr/SDKHelper$10$1;-><init>(Lcom/sunia/commonv2/hwr/SDKHelper$10;[Z)V

    invoke-static {v0, v3, v2, v4}, Lcom/sunia/commonv2/hwr/HWRHelper;->createEditor(Ljava/lang/String;Lcom/sunia/HTREnginev2/sdk/ERecognitionMode;Lcom/sunia/commonv2/bean/ConfigBean;Lcom/sunia/HTREnginev2/sdk/RecognizeListener;)V

    return-void
.end method
