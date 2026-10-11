.class Lcom/sunia/commonv2/hwr/HWRSimpleRecognize$2;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sunia/commonv2/hwr/HWRSimpleRecognize;->initEditor(Lcom/sunia/commonv2/bean/ConfigBean;Lcom/sunia/commonv2/callback/CoreCommonCallback;I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic val$configBean:Lcom/sunia/commonv2/bean/ConfigBean;

.field final synthetic val$isWait:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/sunia/commonv2/bean/ConfigBean;)V
    .locals 0

    iput-object p1, p0, Lcom/sunia/commonv2/hwr/HWRSimpleRecognize$2;->val$isWait:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p2, p0, Lcom/sunia/commonv2/hwr/HWRSimpleRecognize$2;->val$configBean:Lcom/sunia/commonv2/bean/ConfigBean;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/sunia/commonv2/hwr/HWRSimpleRecognize$2;->val$isWait:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "HWRSimpleRecognize"

    const-string v1, "\u7ebf\u7a0b\u7b49\u5f85"

    invoke-static {v0, v1}, Lcom/sunia/HTREnginev2/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const-wide/16 v0, 0xa

    :try_start_1
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    const-string v1, "HWRSimpleRecognize"

    invoke-static {v1, v0}, Lcom/sunia/HTREnginev2/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/sunia/commonv2/hwr/HWRSimpleRecognize;->access$000()Lcom/sunia/HTREnginev2/sdk/editor/Editor;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/sunia/commonv2/hwr/HWRSimpleRecognize$2;->val$configBean:Lcom/sunia/commonv2/bean/ConfigBean;

    invoke-static {p0}, Lcom/sunia/commonv2/hwr/HWRSimpleRecognize;->access$300(Lcom/sunia/commonv2/bean/ConfigBean;)V

    goto :goto_1

    :cond_1
    iget-object p0, p0, Lcom/sunia/commonv2/hwr/HWRSimpleRecognize$2;->val$configBean:Lcom/sunia/commonv2/bean/ConfigBean;

    invoke-static {p0}, Lcom/sunia/commonv2/hwr/HWRSimpleRecognize;->access$400(Lcom/sunia/commonv2/bean/ConfigBean;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    const-string v0, "HWRSimpleRecognize"

    invoke-static {v0, p0}, Lcom/sunia/HTREnginev2/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {p0}, Lcom/sunia/commonv2/hwr/HWRSimpleRecognize;->access$202(Ljava/lang/Exception;)Ljava/lang/Exception;

    const-string p0, "HWRSimpleRecognize"

    monitor-enter p0

    :try_start_3
    const-string v0, "HWRSimpleRecognize"

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0

    :goto_1
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method
