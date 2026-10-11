.class public Lcom/tencent/qcloud/track/service/ClsTrackService;
.super Lcom/tencent/qcloud/track/service/ATrackService;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "ClsTrackService"


# instance fields
.field private clsClient:Lcom/tencentcloudapi/cls/android/producer/AsyncProducerClient;

.field private clsLifecycleCredentialProvider:Lcom/tencent/qcloud/track/cls/ClsLifecycleCredentialProvider;

.field private singleThreadExecutor:Ljava/util/concurrent/ExecutorService;

.field private topicId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/tencent/qcloud/track/service/ATrackService;-><init>()V

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qcloud/track/service/ClsTrackService;->singleThreadExecutor:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public static synthetic a(Lcom/tencent/qcloud/track/service/ClsTrackService;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/tencent/qcloud/track/service/ClsTrackService;->lambda$report$0(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static synthetic b(Lcom/tencent/qcloud/track/service/ClsTrackService;Ljava/util/Map;Ljava/lang/String;Lcom/tencentcloudapi/cls/android/producer/Result;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/qcloud/track/service/ClsTrackService;->lambda$putLogs$1(Ljava/util/Map;Ljava/lang/String;Lcom/tencentcloudapi/cls/android/producer/Result;)V

    return-void
.end method

.method public static isInclude()Z
    .locals 1

    :try_start_0
    const-string v0, "com.tencentcloudapi.cls.android.producer.AsyncProducerClient"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    const/4 v0, 0x0

    return v0
.end method

.method private synthetic lambda$putLogs$1(Ljava/util/Map;Ljava/lang/String;Lcom/tencentcloudapi/cls/android/producer/Result;)V
    .locals 4

    invoke-virtual {p0}, Lcom/tencent/qcloud/track/service/ATrackService;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    add-int/lit8 p1, p1, -0x2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "}"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/tencent/qcloud/track/service/ClsTrackService;->topicId:Ljava/lang/String;

    invoke-virtual {p3}, Lcom/tencentcloudapi/cls/android/producer/Result;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p2, p0, v0, p1}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "eventCode: %s, topicId: %s, params: %s => result: %s"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "ClsTrackService"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method private synthetic lambda$report$0(Ljava/lang/String;Ljava/util/Map;)V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/tencent/qcloud/track/service/ClsTrackService;->clsLifecycleCredentialProvider:Lcom/tencent/qcloud/track/cls/ClsLifecycleCredentialProvider;

    invoke-virtual {v0}, Lcom/tencent/qcloud/track/cls/ClsLifecycleCredentialProvider;->getCredentials()Lcom/tencent/qcloud/track/cls/ClsSessionCredentials;

    move-result-object v0
    :try_end_0
    .catch Lcom/tencent/qcloud/track/cls/ClsAuthenticationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/tencent/qcloud/track/service/ClsTrackService;->clsClient:Lcom/tencentcloudapi/cls/android/producer/AsyncProducerClient;

    invoke-virtual {v1}, Lcom/tencentcloudapi/cls/android/producer/AsyncProducerClient;->getProducerConfig()Lcom/tencentcloudapi/cls/android/producer/AsyncProducerConfig;

    move-result-object v1

    invoke-virtual {v0}, Lcom/tencent/qcloud/track/cls/ClsSessionCredentials;->getSecretId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/tencent/qcloud/track/cls/ClsSessionCredentials;->getSecretKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/tencent/qcloud/track/cls/ClsSessionCredentials;->getToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v3, v0}, Lcom/tencentcloudapi/cls/android/producer/AsyncProducerConfig;->resetSecurityToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/tencent/qcloud/track/service/ClsTrackService;->putLogs(Ljava/lang/String;Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method private putLogs(Ljava/lang/String;Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/tencentcloudapi/cls/android/producer/common/LogItem;

    invoke-direct {v1}, Lcom/tencentcloudapi/cls/android/producer/common/LogItem;-><init>()V

    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lcom/tencentcloudapi/cls/android/producer/common/LogItem;->PushBack(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :try_start_0
    iget-object v1, p0, Lcom/tencent/qcloud/track/service/ClsTrackService;->clsClient:Lcom/tencentcloudapi/cls/android/producer/AsyncProducerClient;

    iget-object v2, p0, Lcom/tencent/qcloud/track/service/ClsTrackService;->topicId:Ljava/lang/String;

    new-instance v3, Lcom/sunia/HTREnginev2/hwd;

    invoke-direct {v3, p0, p2, p1}, Lcom/sunia/HTREnginev2/hwd;-><init>(Lcom/tencent/qcloud/track/service/ClsTrackService;Ljava/util/Map;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v0, v3}, Lcom/tencentcloudapi/cls/android/producer/AsyncProducerClient;->putLogs(Ljava/lang/String;Ljava/util/List;Lcom/tencentcloudapi/cls/android/producer/Callback;)Lcom/google/common/util/concurrent/ListenableFuture;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/tencentcloudapi/cls/android/producer/errors/ProducerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    return-void
.end method


# virtual methods
.method public init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/qcloud/track/service/ATrackService;->isInit:Z

    iput-object p2, p0, Lcom/tencent/qcloud/track/service/ClsTrackService;->topicId:Ljava/lang/String;

    new-instance p2, Lcom/tencentcloudapi/cls/android/producer/AsyncProducerConfig;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v4, "secretId"

    const-string v5, "secretKey"

    const-string v6, ""

    const/4 v7, 0x0

    move-object v1, p2

    move-object v3, p3

    invoke-direct/range {v1 .. v7}, Lcom/tencentcloudapi/cls/android/producer/AsyncProducerConfig;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/tencentcloudapi/cls/android/producer/AsyncProducerClient;

    invoke-direct {p1, p2}, Lcom/tencentcloudapi/cls/android/producer/AsyncProducerClient;-><init>(Lcom/tencentcloudapi/cls/android/producer/AsyncProducerConfig;)V

    iput-object p1, p0, Lcom/tencent/qcloud/track/service/ClsTrackService;->clsClient:Lcom/tencentcloudapi/cls/android/producer/AsyncProducerClient;

    return-void
.end method

.method public report(Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/tencent/qcloud/track/service/ATrackService;->isCloseReport()Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/tencent/qcloud/track/service/ATrackService;->isInit:Z

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/tencent/qcloud/track/service/ClsTrackService;->isInclude()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/tencent/qcloud/track/service/ClsTrackService;->clsLifecycleCredentialProvider:Lcom/tencent/qcloud/track/cls/ClsLifecycleCredentialProvider;

    if-nez v0, :cond_1

    invoke-direct {p0, p1, p2}, Lcom/tencent/qcloud/track/service/ClsTrackService;->putLogs(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/tencent/qcloud/track/service/ClsTrackService;->singleThreadExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/sunia/HTREnginev2/gwd;

    invoke-direct {v1, p0, p1, p2}, Lcom/sunia/HTREnginev2/gwd;-><init>(Lcom/tencent/qcloud/track/service/ClsTrackService;Ljava/lang/String;Ljava/util/Map;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    :cond_2
    :goto_0
    return-void
.end method

.method public setCredentialProvider(Lcom/tencent/qcloud/track/cls/ClsLifecycleCredentialProvider;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qcloud/track/service/ClsTrackService;->clsLifecycleCredentialProvider:Lcom/tencent/qcloud/track/cls/ClsLifecycleCredentialProvider;

    return-void
.end method

.method public setSecurityCredential(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object p0, p0, Lcom/tencent/qcloud/track/service/ClsTrackService;->clsClient:Lcom/tencentcloudapi/cls/android/producer/AsyncProducerClient;

    invoke-virtual {p0}, Lcom/tencentcloudapi/cls/android/producer/AsyncProducerClient;->getProducerConfig()Lcom/tencentcloudapi/cls/android/producer/AsyncProducerConfig;

    move-result-object p0

    const-string v0, ""

    invoke-virtual {p0, p1, p2, v0}, Lcom/tencentcloudapi/cls/android/producer/AsyncProducerConfig;->resetSecurityToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
