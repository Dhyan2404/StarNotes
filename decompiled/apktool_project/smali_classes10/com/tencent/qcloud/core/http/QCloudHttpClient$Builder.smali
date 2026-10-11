.class public final Lcom/tencent/qcloud/core/http/QCloudHttpClient$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qcloud/core/http/QCloudHttpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field connectionTimeout:I

.field dnsCache:Z

.field enableDebugLog:Z

.field mBuilder:Lokhttp3/OkHttpClient$Builder;

.field networkClient:Lcom/tencent/qcloud/core/http/NetworkClient;

.field prefetchHost:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field qCloudHttpRetryHandler:Lcom/tencent/qcloud/core/http/QCloudHttpRetryHandler;

.field retryStrategy:Lcom/tencent/qcloud/core/task/RetryStrategy;

.field socketTimeout:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x3a98

    iput v0, p0, Lcom/tencent/qcloud/core/http/QCloudHttpClient$Builder;->connectionTimeout:I

    const/16 v0, 0x7530

    iput v0, p0, Lcom/tencent/qcloud/core/http/QCloudHttpClient$Builder;->socketTimeout:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/qcloud/core/http/QCloudHttpClient$Builder;->enableDebugLog:Z

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/tencent/qcloud/core/http/QCloudHttpClient$Builder;->prefetchHost:Ljava/util/List;

    iput-boolean v0, p0, Lcom/tencent/qcloud/core/http/QCloudHttpClient$Builder;->dnsCache:Z

    return-void
.end method


# virtual methods
.method public addPrefetchHost(Ljava/lang/String;)Lcom/tencent/qcloud/core/http/QCloudHttpClient$Builder;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qcloud/core/http/QCloudHttpClient$Builder;->prefetchHost:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public build()Lcom/tencent/qcloud/core/http/QCloudHttpClient;
    .locals 2

    iget-object v0, p0, Lcom/tencent/qcloud/core/http/QCloudHttpClient$Builder;->retryStrategy:Lcom/tencent/qcloud/core/task/RetryStrategy;

    if-nez v0, :cond_0

    sget-object v0, Lcom/tencent/qcloud/core/task/RetryStrategy;->DEFAULT:Lcom/tencent/qcloud/core/task/RetryStrategy;

    iput-object v0, p0, Lcom/tencent/qcloud/core/http/QCloudHttpClient$Builder;->retryStrategy:Lcom/tencent/qcloud/core/task/RetryStrategy;

    :cond_0
    iget-object v0, p0, Lcom/tencent/qcloud/core/http/QCloudHttpClient$Builder;->qCloudHttpRetryHandler:Lcom/tencent/qcloud/core/http/QCloudHttpRetryHandler;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/tencent/qcloud/core/http/QCloudHttpClient$Builder;->retryStrategy:Lcom/tencent/qcloud/core/task/RetryStrategy;

    invoke-virtual {v1, v0}, Lcom/tencent/qcloud/core/task/RetryStrategy;->setRetryHandler(Lcom/tencent/qcloud/core/http/QCloudHttpRetryHandler;)V

    :cond_1
    iget-object v0, p0, Lcom/tencent/qcloud/core/http/QCloudHttpClient$Builder;->mBuilder:Lokhttp3/OkHttpClient$Builder;

    if-nez v0, :cond_3

    invoke-static {}, Lcom/tencent/qcloud/core/http/QCloudHttpClient;->access$500()Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    if-nez v0, :cond_2

    new-instance v0, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    invoke-static {v0}, Lcom/tencent/qcloud/core/http/QCloudHttpClient;->access$502(Lokhttp3/OkHttpClient$Builder;)Lokhttp3/OkHttpClient$Builder;

    :cond_2
    invoke-static {}, Lcom/tencent/qcloud/core/http/QCloudHttpClient;->access$500()Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qcloud/core/http/QCloudHttpClient$Builder;->mBuilder:Lokhttp3/OkHttpClient$Builder;

    :cond_3
    new-instance v0, Lcom/tencent/qcloud/core/http/QCloudHttpClient;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/tencent/qcloud/core/http/QCloudHttpClient;-><init>(Lcom/tencent/qcloud/core/http/QCloudHttpClient$Builder;Lcom/tencent/qcloud/core/http/QCloudHttpClient$1;)V

    return-object v0
.end method

.method public dnsCache(Z)Lcom/tencent/qcloud/core/http/QCloudHttpClient$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/tencent/qcloud/core/http/QCloudHttpClient$Builder;->dnsCache:Z

    return-object p0
.end method

.method public enableDebugLog(Z)Lcom/tencent/qcloud/core/http/QCloudHttpClient$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/tencent/qcloud/core/http/QCloudHttpClient$Builder;->enableDebugLog:Z

    return-object p0
.end method

.method public setConnectionTimeout(I)Lcom/tencent/qcloud/core/http/QCloudHttpClient$Builder;
    .locals 1

    const/16 v0, 0xbb8

    if-lt p1, v0, :cond_0

    iput p1, p0, Lcom/tencent/qcloud/core/http/QCloudHttpClient$Builder;->connectionTimeout:I

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "connection timeout must be larger than 3 seconds."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setInheritBuilder(Lokhttp3/OkHttpClient$Builder;)Lcom/tencent/qcloud/core/http/QCloudHttpClient$Builder;
    .locals 0

    iput-object p1, p0, Lcom/tencent/qcloud/core/http/QCloudHttpClient$Builder;->mBuilder:Lokhttp3/OkHttpClient$Builder;

    return-object p0
.end method

.method public setNetworkClient(Lcom/tencent/qcloud/core/http/NetworkClient;)Lcom/tencent/qcloud/core/http/QCloudHttpClient$Builder;
    .locals 0

    iput-object p1, p0, Lcom/tencent/qcloud/core/http/QCloudHttpClient$Builder;->networkClient:Lcom/tencent/qcloud/core/http/NetworkClient;

    return-object p0
.end method

.method public setQCloudHttpRetryHandler(Lcom/tencent/qcloud/core/http/QCloudHttpRetryHandler;)Lcom/tencent/qcloud/core/http/QCloudHttpClient$Builder;
    .locals 0

    iput-object p1, p0, Lcom/tencent/qcloud/core/http/QCloudHttpClient$Builder;->qCloudHttpRetryHandler:Lcom/tencent/qcloud/core/http/QCloudHttpRetryHandler;

    return-object p0
.end method

.method public setRetryStrategy(Lcom/tencent/qcloud/core/task/RetryStrategy;)Lcom/tencent/qcloud/core/http/QCloudHttpClient$Builder;
    .locals 0

    iput-object p1, p0, Lcom/tencent/qcloud/core/http/QCloudHttpClient$Builder;->retryStrategy:Lcom/tencent/qcloud/core/task/RetryStrategy;

    return-object p0
.end method

.method public setSocketTimeout(I)Lcom/tencent/qcloud/core/http/QCloudHttpClient$Builder;
    .locals 1

    const/16 v0, 0xbb8

    if-lt p1, v0, :cond_0

    iput p1, p0, Lcom/tencent/qcloud/core/http/QCloudHttpClient$Builder;->socketTimeout:I

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "socket timeout must be larger than 3 seconds."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
