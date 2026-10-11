.class Lcom/sunia/commonv2/hwr/SDKHelper$1;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sunia/commonv2/hwr/SDKHelper;->test()V
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

    iput-object p1, p0, Lcom/sunia/commonv2/hwr/SDKHelper$1;->this$0:Lcom/sunia/commonv2/hwr/SDKHelper;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-string p0, "SDKHelper"

    :try_start_0
    sget-boolean v0, Lcom/sunia/commonv2/global/HWREngineVariable;->sReleaseMode:Z

    if-eqz v0, :cond_0

    const-string v0, "current is release mode,can\'t test"

    invoke-static {p0, v0}, Lcom/sunia/HTREnginev2/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-wide/16 v0, 0x1770

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "test error"

    invoke-static {p0, v1}, Lcom/sunia/HTREnginev2/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/sunia/HTREnginev2/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
